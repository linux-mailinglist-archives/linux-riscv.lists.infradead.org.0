Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16435AE765
	for <lists+linux-riscv@lfdr.de>; Tue, 10 Sep 2019 11:57:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wKG421URa0u/PKolhUHkCDwUMB6BGeSvXj+KnqlonYw=; b=iWfpkpcxSakY6v
	lGWjObAg5qKPtEk+WzL8nagPawVN2gMfr7sbyzeDkLNxKbUlO+5ntdyAfs6UjKZCE8RWuS7k50iKd
	VXluWeV/JMkAwPiFJNY9Lc44WujuRIJQ3WDC9w8cXUiawpiZVYLAAWTVwYAjCt74kdd5Zp/VBinhB
	yaPmsMY5pHMh0XZIIWgbiedjHEG0/yBGDqhzMZRVxgkTxKf/hWZ1ZKoIzWbEaPq/wHbOtDugc2wmL
	7Vfm4XgqRoY5wfZPkdFoUsGTT8DAm7OgWANY8W57HfK6LoA8S05N+XYesEhqsciCdgauEHlAB3PpF
	jtfrjWvG07Vu7IIBR2tg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7ctL-0006Hc-6h; Tue, 10 Sep 2019 09:56:55 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7ctH-0006HH-Fl
 for linux-riscv@lists.infradead.org; Tue, 10 Sep 2019 09:56:52 +0000
Received: by mail-wr1-x441.google.com with SMTP id t16so18859716wra.6
 for <linux-riscv@lists.infradead.org>; Tue, 10 Sep 2019 02:56:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=3mnueqhN7Kkwa8MkKe0Ckxy5QE6yv9lhd/uQxARTM74=;
 b=CZSjIHEGio5Scyxy58ejHSD/34oFT3vJzyxbfFG0kjwe/cmnHTIzWUhhCbpjiKyvfm
 rc2BXgizDrNN5aKGj6aSjNdt7DGdPdbd+k+KErsQwst2FYGWk3gwJh7abEZl2CosOA8u
 /DN2IHkIbVx7rlKZNKX+QceItJrOmv21RsJE7o3/iXrqKF/kejtx5kKl4++0M7QBLuus
 gor9HR1IzHLkdjvHZZbV8KFEFmxx4bDtIk6x5QnO+BDiw7t3MUzoy8WMwlnBB79M6F9Y
 0sSTsIyKUvx5zuThviGyd1U1mZQMZAjiIeqsXQoIJsWi854CL70C/t7fctYucbhg9nsb
 ZlUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3mnueqhN7Kkwa8MkKe0Ckxy5QE6yv9lhd/uQxARTM74=;
 b=OjgZBUr1ANyf5KWdzKwi4eK/Usd9tJ94aH+AtQ7RcGNgmFO4QNXXAQtzW/mxUBoLTy
 AxE/KRAyb26UvmhcGFdod504391MEcLt6BlEJp5mvuN8soAz/f3cS1tutSTBmHZxShvO
 53qFHO5dkrgvUTgIsXhgRzG0NzE0na5ZnGNmLUv7jHDWRKwTvx3HmS7a2++B5sHp7H3C
 erWijWNeqnl7ujyALw3gixeyNGnpSGcafumePU2Hr/P5SPby+axwlpNvHx/fZr8FxLXU
 ueaNVrijUnX2pH2mf+rEDFuvw/iDrhbfkcubb+trNoplUdopLGPP1Pl9Lw84KcSTtviM
 OhXQ==
X-Gm-Message-State: APjAAAWULG6mEveNVSFL8z0D8HjdTBDci6UfIxqAf8/eRNVcbPUN5mJj
 /Jc6ovQ9KQGsk1ExNmD2G0xm2knLj31QXe6EDwJMDQ==
X-Google-Smtp-Source: APXvYqx9yPh5gbReKColNTXHf9o3yyTP4EAP2yUT7FN5pvrE74RBOKHXxfOwxZKyUImtWNVOP7dfee+/5zxSK/eFOtc=
X-Received: by 2002:a5d:4ac5:: with SMTP id y5mr19528470wrs.179.1568109409582; 
 Tue, 10 Sep 2019 02:56:49 -0700 (PDT)
MIME-Version: 1.0
References: <AMJe39pHTcb4gsI-_Dv-wmR8_x9EbCCN9LKI47j34_8vBKRqzFxPrjmZvBtwV5OU_HcOiRkKUG66xVaNQ8VAXw7Ws0CCK74gpA8pKaYN5wM=@hardenedlinux.org>
In-Reply-To: <AMJe39pHTcb4gsI-_Dv-wmR8_x9EbCCN9LKI47j34_8vBKRqzFxPrjmZvBtwV5OU_HcOiRkKUG66xVaNQ8VAXw7Ws0CCK74gpA8pKaYN5wM=@hardenedlinux.org>
From: Anup Patel <anup@brainfault.org>
Date: Tue, 10 Sep 2019 15:26:39 +0530
Message-ID: <CAAhSdy2kowbo-kULxvAE9M=69wwOE4jJ8wkgoLxOqC2R92eiXw@mail.gmail.com>
Subject: Re: [PATCH] arch/riscv: disable too many harts before pick main boot
 hart
To: Xiang Wang <merle@hardenedlinux.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_025651_666785_D10C42DA 
X-CRM114-Status: GOOD (  13.21  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>,
 "palmer@sifive.com" <palmer@sifive.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "citypw@hardenedlinux.org" <citypw@hardenedlinux.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, Sep 6, 2019 at 12:26 PM Xiang Wang <merle@hardenedlinux.org> wrote:
>
> From 12300865d1103618c9d4c375f7d7fbe601b6618c Mon Sep 17 00:00:00 2001
> From: Xiang Wang <merle@hardenedlinux.org>
> Date: Fri, 6 Sep 2019 11:56:09 +0800
> Subject: [PATCH] arch/riscv: disable too many harts before pick main boot hart
>
> These harts with id greater than or equal to CONFIG_NR_CPUS need to be disabled.
> But pick the main Hart can choose any one. So, before pick the main hart, you
> need to disable the hart with id greater than or equal to CONFIG_NR_CPUS.
>
> Signed-off-by: Xiang Wang <merle@hardenedlinux.org>
> ---
>  arch/riscv/kernel/head.S | 8 +++++---
>  1 file changed, 5 insertions(+), 3 deletions(-)
>
> diff --git a/arch/riscv/kernel/head.S b/arch/riscv/kernel/head.S
> index 0f1ba17e476f..cfffea38eb17 100644
> --- a/arch/riscv/kernel/head.S
> +++ b/arch/riscv/kernel/head.S
> @@ -63,6 +63,11 @@ _start_kernel:
>         li t0, SR_FS
>         csrc sstatus, t0
>
> +#ifdef CONFIG_SMP
> +       li t0, CONFIG_NR_CPUS
> +       bgeu a0, t0, .Lsecondary_park
> +#endif
> +
>         /* Pick one hart to run the main boot sequence */
>         la a3, hart_lottery
>         li a2, 1
> @@ -154,9 +159,6 @@ relocate:
>
>  .Lsecondary_start:
>  #ifdef CONFIG_SMP
> -       li a1, CONFIG_NR_CPUS
> -       bgeu a0, a1, .Lsecondary_park
> -
>         /* Set trap vector to spin forever to help debug */
>         la a3, .Lsecondary_park
>         csrw CSR_STVEC, a3
> --
> 2.20.1
>
>
>
>
>
>
>

Looks good to me.

Reviewed-by: Anup Patel <anup@brainfault.org>

Regards,
Anup

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
