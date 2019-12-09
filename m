Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A2B7117828
	for <lists+linux-riscv@lfdr.de>; Mon,  9 Dec 2019 22:15:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LG/614BqKYeqqzAMuAmVs1XZZYF0k1xuurp2HXiCCmY=; b=kd9+6pQ5/jKFKU
	soqSD2JbTvV0MoZfaIgdr3RRSvPktgyp9cMWHrFlLFT1Ku1/OQiCT28P2gIunDHDvJ69dQqyv1nT1
	CQ2qDb1Ce8sss++1sZeY9nf8s3f6oKrUFoNUDZyp60+ap38Vt96Pz0cQ84gTq7O+DCIhJjWoQu38V
	uMgma/a4VrBYQR58e4wYNFAl8fakAeNiO+kzwYBnn+Rwl5iUeEqbVJNDoMmz/sgA2J8/jZbzO+t0s
	PNB6l89GtSmWB5uGykkyROLoyOX2Rmdj6GkU3A3iq57TlDRq8qSJvNddz0OVsu5NkhRieUcrMWshe
	wNDJCpsVRhvLeFez0xaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieQNb-0003UE-Oy; Mon, 09 Dec 2019 21:15:43 +0000
Received: from mail-il1-x143.google.com ([2607:f8b0:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieQNX-0003TR-QU
 for linux-riscv@lists.infradead.org; Mon, 09 Dec 2019 21:15:41 +0000
Received: by mail-il1-x143.google.com with SMTP id b15so14115373iln.3
 for <linux-riscv@lists.infradead.org>; Mon, 09 Dec 2019 13:15:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cs.washington.edu; s=goo201206;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=LG/614BqKYeqqzAMuAmVs1XZZYF0k1xuurp2HXiCCmY=;
 b=A9Stev5AqloQC1ZtkUVGdq1AP5/fTv2T3N7Xi4NHhqF1zHE7T4Q2XZfauwQ9I71iF6
 AwQBJiBS7lEI16cRnzmpgw6z5pgvGu7XV91StpMMLN4bDmn4u2nNc+1uF3CHYMA+0EYH
 pX5iK+1xGouBTNKH8TYrgYGx58J2PbWJqx0n8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=LG/614BqKYeqqzAMuAmVs1XZZYF0k1xuurp2HXiCCmY=;
 b=GLDk86IWooZiHBrapXrbIWOIZ92lYdC9v8+jf7XL5+4EcDWiYED12mglyPjTb7zKTr
 NQPUea2mkfzAJcwOoSYFc2jL8PClHNZ3tH3HTMb9P5FuUwiWdyc1ZS9C5BA82bK/eH68
 cHjT1AGZbfkTK2sNUt5ALEBmpytu2K7hfD9jreu0qUYmt/Y5xN35T46KtclkpTcUdoAx
 SerB8tHbYLh4/gdE/fn0DB49ozRQXa2kAkImzowQp+YH16A+6tPSpNNnKcnk8CaGrbPl
 p7Ox65hJ40MbJoGxi45lBY+mK0X53b0ZobH7fNmrLBsWnjPDPDu52GcoRCXyif5frNbr
 GrqQ==
X-Gm-Message-State: APjAAAXzkn3lxDVJYAoBsa0ugvtxdbOFc8aHx9Q4GNusorqHjfjdJliP
 mQmJmPNfpY7gn0FT13Gj11qQW7PCi55CaFu4WTq0YA==
X-Google-Smtp-Source: APXvYqzh3UZWMUWlmFjctjV2C7aY8p4vEvt7LDAOemPKOAaaoVKi0COose4couisqD9FDRyrjewRb57JFJeMDI0UDEs=
X-Received: by 2002:a92:1b41:: with SMTP id b62mr30148546ilb.251.1575926138783; 
 Mon, 09 Dec 2019 13:15:38 -0800 (PST)
MIME-Version: 1.0
References: <20191209173136.29615-1-bjorn.topel@gmail.com>
 <20191209173136.29615-4-bjorn.topel@gmail.com>
In-Reply-To: <20191209173136.29615-4-bjorn.topel@gmail.com>
From: Luke Nelson <lukenels@cs.washington.edu>
Date: Mon, 9 Dec 2019 13:15:16 -0800
Message-ID: <CADasFoA5iMv0Atakw_Jr7XP__K+--a735Qb2U-eNfJEzCXQRNQ@mail.gmail.com>
Subject: Re: [PATCH bpf-next 3/8] riscv,
 bpf: add support for far jumps and exits
To: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_131539_860345_3BCC18CC 
X-CRM114-Status: UNSURE (   5.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-riscv@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-riscv.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-riscv/>
List-Post: <mailto:linux-riscv@lists.infradead.org>
List-Help: <mailto:linux-riscv-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=subscribe>
Cc: Daniel Borkmann <daniel@iogearbox.net>, Netdev <netdev@vger.kernel.org>,
 Alexei Starovoitov <ast@kernel.org>, linux-riscv@lists.infradead.org,
 bpf <bpf@vger.kernel.org>, Xi Wang <xi.wang@gmail.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, Dec 9, 2019 at 9:32 AM Bj=C3=B6rn T=C3=B6pel <bjorn.topel@gmail.com=
> wrote:
>
> This commit add support for far (offset > 21b) jumps and exits.
>
> Signed-off-by: Bj=C3=B6rn T=C3=B6pel <bjorn.topel@gmail.com>

Similar to the other patch for far branching, we also used our tool
to formally verify this patch for far jumps:

https://github.com/uw-unsat/bpf-jit-verif/tree/far-jump-review


Reviewed-by: Luke Nelson <lukenels@cs.washington.edu>
Cc: Xi Wang <xi.wang@gmail.com>

