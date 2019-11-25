Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EB1D108690
	for <lists+linux-riscv@lfdr.de>; Mon, 25 Nov 2019 03:46:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qRCb9kHm3YhKYk2njpABZO2VukFxW2S8kRpWOoWYNDQ=; b=Pff69O+U5YnHhD
	+pF1J3qKxtIdoyB9/lqtn9/ormbmThk/QwJKnnSxljePgArD9cH9B/WBh6mIi/QXuVghAUleFLHd7
	ya0pXMEWfgHIssZTBiOPzyRTlnkQzSQ/rzqKm/V5/VeYHEoViPDrPhM8dw44U0udgamfc6nBHWWKL
	EBqRB2XnseZFZ2t2FEs8zVMKpviboqdILop+H9mNqQdBaiCNU48mVB7wmNQBCJc3ssvljv4VZZ2wb
	yFGy2cE7EAgkHpjkOYLTdDxvaghnwchpHZ5tqb5rgxFwnHCsBNBMUVW1qBRWwucOYuBVKoQ96Ei8q
	hWvaQ6LfTip3HKS1p12Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZ4Nt-0007sK-VW; Mon, 25 Nov 2019 02:45:53 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZ4Nq-0007ru-He
 for linux-riscv@lists.infradead.org; Mon, 25 Nov 2019 02:45:51 +0000
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com
 [209.85.167.51])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2B08420815
 for <linux-riscv@lists.infradead.org>; Mon, 25 Nov 2019 02:45:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1574649949;
 bh=rRksThIk3ANMx0k3KKiqT1coowGHHsm3yp6vHSO/yJY=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=OaV4TRIHyzlBynR9Odd2LazsvhxtgKgqcmg3sGJSaNVbTMVFUYZdIfZf2LTtX0Mx1
 CAK/p4/4sM7e58ITMAq+Iw9KK01SDr0qXBw2dpKUj++9Shy1PzlbNtH5znT7CAUrFi
 25mQVm+hZljRpj5y3LVO0lnt0qSa+RaztDefU2os=
Received: by mail-lf1-f51.google.com with SMTP id l14so9710824lfh.10
 for <linux-riscv@lists.infradead.org>; Sun, 24 Nov 2019 18:45:49 -0800 (PST)
X-Gm-Message-State: APjAAAUTI0EMgB31PYjWf/bL1ujgoRG7DxPhK9TFqACBFJ32ZQYMXMWU
 2Zc1bVLqn81cpzaqmfEurW+BRwtPPGBNPQVmBN4=
X-Google-Smtp-Source: APXvYqzebOUmdYdPzb72IJa+IGOWUcBhHCWcr75z1vCyIu5oO1Yvgn7kdusnuRFHuVlapdjfV/P1A0LFVthYvYj8z2w=
X-Received: by 2002:ac2:51b5:: with SMTP id f21mr18634983lfk.159.1574649947280; 
 Sun, 24 Nov 2019 18:45:47 -0800 (PST)
MIME-Version: 1.0
References: <1574306457-6251-1-git-send-email-krzk@kernel.org>
 <alpine.DEB.2.21.9999.1911221853330.14532@viisi.sifive.com>
In-Reply-To: <alpine.DEB.2.21.9999.1911221853330.14532@viisi.sifive.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Mon, 25 Nov 2019 10:45:35 +0800
X-Gmail-Original-Message-ID: <CAJKOXPdHgXwt-E-DaKQdeD_jSkhYP5n2NWCZcSWr7Ny-cYxZKQ@mail.gmail.com>
Message-ID: <CAJKOXPdHgXwt-E-DaKQdeD_jSkhYP5n2NWCZcSWr7Ny-cYxZKQ@mail.gmail.com>
Subject: Re: [PATCH v2] riscv: Fix Kconfig indentation
To: Paul Walmsley <paul.walmsley@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191124_184550_606093_18267256 
X-CRM114-Status: UNSURE (   9.19  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-riscv@lists.infradead.org, Albert Ou <aou@eecs.berkeley.edu>,
 Palmer Dabbelt <palmer@dabbelt.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Sat, 23 Nov 2019 at 10:54, Paul Walmsley <paul.walmsley@sifive.com> wrote:
>
> On Thu, 21 Nov 2019, Krzysztof Kozlowski wrote:
>
> > Adjust indentation from spaces to tab (+optional two spaces) as in
> > coding style with command like:
> >       $ sed -e 's/^        /\t/' -i */Kconfig
> >
> > Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
>
> Thanks, queued with Palmer's Reviewed-by: (which I believe would apply
> equally to this version)

Thanks, I forgot to add it.

Best regards,
Krzysztof

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
