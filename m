Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C893F16B9E4
	for <lists+linux-riscv@lfdr.de>; Tue, 25 Feb 2020 07:42:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=CjACLIW/ztf9uXbrc9lIWhWHMhhHprWeuEL61GFpnss=; b=Ou+Y1/a9ABeix0jdIdJ1Vr2K4
	QBR1jNcirpvkgsyyc+/LK2pJnG074aISkYwmDlejynxQI+qxI4gNhpC9raF6f5yTGwn/b1E8wsjrL
	j3Cq4QQ9xc5UZv1MrQGs83CHWM6HcEgLuIfzaGymrjPRxMKEd8+vQ+TTir4pOTH6n0f5MLXQzgPZr
	61MER+2B5fK86eJt4EWHi/5NAVFCVVMvxZKIFm3qM1k+PCknfFqj4QgrUeSQXYt90KVST9z2pqmzu
	nAm+WTS1TnS8zlaCxAwHxo/jyZ2WBEM0hX3MDQM1ufC9LixxmxKvBSg8OGUPi1D8r2/xyAMaFTi3Q
	0cDQgem4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6Tuz-0004L9-Ql; Tue, 25 Feb 2020 06:42:09 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6Tuw-0004KL-Ec
 for linux-riscv@lists.infradead.org; Tue, 25 Feb 2020 06:42:07 +0000
Received: by mail-qt1-x841.google.com with SMTP id g21so8341781qtq.10
 for <linux-riscv@lists.infradead.org>; Mon, 24 Feb 2020 22:42:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=CjACLIW/ztf9uXbrc9lIWhWHMhhHprWeuEL61GFpnss=;
 b=pWo/lJ0ohpndxU57k182UbHL/4Q+95c1oCthXKhX5P5SC3ugrhMElve0Xdic/dEY6J
 kN/HJW3c7OpdxFS/D86Kle+HorN5J/n2AIp/9N6w47snqw8Nd/J8Cm3tWmsmiSYgzB/O
 CgPR+KAzDhanZOnjUJ8BqT9xNDqaNxmZ8ATbztpnWvPGMLvJXESAfTZME3hQ0sYAMvqL
 eVS0DhPOdT7oj1zy+/J6K/hHwVRxG6qzKHzEx75MDGmgw6N9VkzmJHDUhxUZx3tJXxtZ
 2/paeYlw8pXuV0mb8qfh6xtCdmt9KiYv2um7Smi3nz125AJWrBAXlxbgoPXSyP/oNGuA
 SPIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=CjACLIW/ztf9uXbrc9lIWhWHMhhHprWeuEL61GFpnss=;
 b=Q8TDkr+OgG8AD6nNuBpGIQ0mSG11sR5j/uUPTUVXv7BJ5n3Kr5Iug7gVR+szF30pf8
 WDVjvt/0N9kVelEVI7E6v/QlrVU3fMYzt9j99JawnJdV9AbULr5L7enxsBiR9YCsCUYP
 MA98mQQFXf8El07kCYB5oKqsEuRJjFJ5rez1izxnRLTb+P9go8fTQ0XDvGbX1MTA67+H
 m7AN+Bxpif07Y3A3Vbocc2QOkEZdEjiZa7ABmiaU86u9Chb55GFtShgmqTlKSfzBAdBd
 Yws5GqpXcq6jLycJiygUUJ6yboqKqsZHK0X1mH485Gl3S5MRzMsuJCVVY4d9W4jz3bC8
 zO6A==
X-Gm-Message-State: APjAAAUzGAd5kzpiHrOaQ0+CEcF+i05sOJDZ/+bMX6SKXH7fe4pmoJdB
 yp7i5jjrVx6lVdjc+gEap1FZWjdPb6b7jIfCnJY=
X-Google-Smtp-Source: APXvYqzuUu3LTqLatCxP+WEwHX/BTN2Ky4+aNnyZqZkcKIwMIrRJ2BJWdFX7dCsHLrz8l6iFMJJmAwuJb/4d420P/eI=
X-Received: by 2002:ac8:9e:: with SMTP id c30mr53592557qtg.359.1582612924150; 
 Mon, 24 Feb 2020 22:42:04 -0800 (PST)
MIME-Version: 1.0
References: <20200220041608.30289-1-lukenels@cs.washington.edu>
 <CAADnVQJTtNu5a2oM=8poe6FHXeQttG44S+7XvuqQtv1Cgui8tg@mail.gmail.com>
In-Reply-To: <CAADnVQJTtNu5a2oM=8poe6FHXeQttG44S+7XvuqQtv1Cgui8tg@mail.gmail.com>
From: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@gmail.com>
Date: Tue, 25 Feb 2020 07:41:52 +0100
Message-ID: <CAJ+HfNgBNHQ=sOgjZy1NZ+VnG2hYNCqJvueS9Xjgm0DswLPp9g@mail.gmail.com>
Subject: Re: [PATCH v3 bpf-next] RV32G eBPF JIT
To: Alexei Starovoitov <alexei.starovoitov@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_224206_491152_4A8CF023 
X-CRM114-Status: UNSURE (   6.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [bjorn.topel[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Song Liu <songliubraving@fb.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Daniel Borkmann <daniel@iogearbox.net>, Jiong Wang <jiong.wang@netronome.com>,
 Network Development <netdev@vger.kernel.org>,
 Alexei Starovoitov <ast@kernel.org>, linux-riscv@lists.infradead.org,
 LKML <linux-kernel@vger.kernel.org>, Luke Nelson <lukenels@cs.washington.edu>,
 Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 Yonghong Song <yhs@fb.com>, bpf <bpf@vger.kernel.org>,
 Andrii Nakryiko <andriin@fb.com>, Martin KaFai Lau <kafai@fb.com>,
 Xi Wang <xi.wang@gmail.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, 25 Feb 2020 at 01:42, Alexei Starovoitov
<alexei.starovoitov@gmail.com> wrote:
>
[...]
> > Co-developed-by: Xi Wang <xi.wang@gmail.com>
> > Signed-off-by: Xi Wang <xi.wang@gmail.com>
> > Signed-off-by: Luke Nelson <lukenels@cs.washington.edu>
>
> Bjorn,
>
> please review.

Alexei/Luke/Xi -- Sorry for the late reply. I'll do a review ASAP.

