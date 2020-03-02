Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B562175276
	for <lists+linux-riscv@lfdr.de>; Mon,  2 Mar 2020 05:08:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=OUM7UGU78JctU9EdN5hn9aKvbIWg7NA522um0kV2Eus=; b=iSKXP7E/BZvLTg4lE949E62D3
	gVeA+05i9B9TBafkFR8xdOF4OEVdrkEn4V6a0snVjMUQufbwo0EZXB2aU/KPD1sofg01mTfiEa/d3
	qiLwt6j7wHVxKW513/YoO+PDJCpMYwwgWcaU5i3q99JO9WksTy+sI6NoO86xpnGTVe51XXayqczpa
	krs9Y88X4nJAPe7hWExhE/cYBGMorBzWSTULOIEK3LLuynHv66r9U4Ox7qz3oT0iQ62wbWQWIUFM2
	gCFATXvtHhkDQTHCfZk4WFgBcjHQUqw0yQdnZx8wQubAAQAQY7I0AymL/NyOmQaCxC2No9BeA/6tF
	9b0WLDzzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8cNO-0007bn-6v; Mon, 02 Mar 2020 04:08:18 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8cNK-0007bN-V8
 for linux-riscv@lists.infradead.org; Mon, 02 Mar 2020 04:08:16 +0000
Received: by mail-wm1-x341.google.com with SMTP id a141so9298643wme.2
 for <linux-riscv@lists.infradead.org>; Sun, 01 Mar 2020 20:08:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=OUM7UGU78JctU9EdN5hn9aKvbIWg7NA522um0kV2Eus=;
 b=O6lqCeTUneAsNCSaFzmy2Z0aAy+HIPqiLcIAqUAzDmzLFpzXxjh3ALRGM0d8KDo/vt
 1dfU/UYilC9y2uluQQi3KcNtuUuNSaIPUUCc9OvJK7SR4XBZNpkZnGpvY/uCtt2/3m17
 yktTqOKmtDPpTTOYXC1mkNR7+BnjCox9z5mTtRkhcIgju1B7QkGCKVqbwINnV0zqNtFU
 EbPAAiDvsWQj+eNUsAG99sGxdSqMr7AjY5qL/W+qw7SKfhmht9ZKaLaYqhHbfNB0qyW2
 i/nRsBSyJTAfCjxZgBMduDwIGH3MXwuYMNlr9VRcwLJPDQ6molEhVBHHdtVoUl90qsB2
 i2wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=OUM7UGU78JctU9EdN5hn9aKvbIWg7NA522um0kV2Eus=;
 b=BZI69scW3gXzPQQKPjF5W0s6rLEXCxmBwtFkpfoqq+DohjwZsCJKB3vwttyoOzk3Lw
 OS7Q1nVKT6a4XaVgEvCku8cZth+FVSKSZnYfTAZ0EvoWRz/Ht2dTG6hTU/y0lWXnuLTm
 cw3UaPYi+aIskkjcNkjpYxwU4NgfAx+VwoFy9B53yR1n8l3c+l9ZdYAZmYFHXw3me/QR
 18Q+JazvrM9P8SbbYPpeLWb+asTx4TruVqgHsL5XmaBay1GCyKgHvNOWmmkW+RWZrUV/
 z6X2lSq8b0iD0QaDGO/Y1mEy3gcokDvHaBdlg4eK9ou5navg/oYhD8tf9BWC2qa5FsdS
 RCjw==
X-Gm-Message-State: ANhLgQ1Vqe/qJ5ROGv2K1XdkLn6X5W8+Gc+aHEsCF6du+qaIy4ccZvHl
 FdkqtcVRfK6Fi1q8JA03NAo/YQ5xInEmodtebKo2RljMyKg=
X-Google-Smtp-Source: ADFU+vvvWMcbKiDlb9BmoUOI4eGNO/uCIMXBjjgxXTyZQfthlZ8CCTi660Lk7kxWpZMQ1adrbZp2m+od9qrCwDqwwFU=
X-Received: by 2002:a1c:a90e:: with SMTP id s14mr3572882wme.141.1583122091662; 
 Sun, 01 Mar 2020 20:08:11 -0800 (PST)
MIME-Version: 1.0
References: <20200212103432.660256-1-damien.lemoal@wdc.com>
 <20200212103432.660256-11-damien.lemoal@wdc.com>
In-Reply-To: <20200212103432.660256-11-damien.lemoal@wdc.com>
From: Anup Patel <anup@brainfault.org>
Date: Mon, 2 Mar 2020 09:38:00 +0530
Message-ID: <CAAhSdy2mssKL7c6mVD=y6u7A4rG4r+BrC=bbGkP9pT=h3wBwJg@mail.gmail.com>
Subject: Re: [PATCH 10/10] riscv: create a loader.bin for the kendryte
 kflash.py tool
To: Damien Le Moal <damien.lemoal@wdc.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200301_200815_005434_158673A6 
X-CRM114-Status: GOOD (  11.80  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-riscv <linux-riscv@lists.infradead.org>,
 Anup Patel <Anup.Patel@wdc.com>, Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, Feb 12, 2020 at 4:05 PM Damien Le Moal <damien.lemoal@wdc.com> wrote:
>
> From: Christoph Hellwig <hch@lst.de>
>
> This can be loaded into the Kendryte KD210 based boards using:
>
> kflash.py/kflash.py -t arch/riscv/boot/loader.bin
>
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> Signed-off-by: Damien Le Moal <damien.lemoal@wdc.com>

LGTM.

Reviewed-by: Anup Patel <anup@brainfault.org>

Regards,
Anup

> ---
>  arch/riscv/Makefile      | 4 ++--
>  arch/riscv/boot/Makefile | 3 +++
>  2 files changed, 5 insertions(+), 2 deletions(-)
>
> diff --git a/arch/riscv/Makefile b/arch/riscv/Makefile
> index b9009a2fbaf5..440969763e14 100644
> --- a/arch/riscv/Makefile
> +++ b/arch/riscv/Makefile
> @@ -84,11 +84,11 @@ vdso_install:
>         $(Q)$(MAKE) $(build)=arch/riscv/kernel/vdso $@
>
>  ifeq ($(CONFIG_RISCV_M_MODE),y)
> -KBUILD_IMAGE := $(boot)/loader
> +KBUILD_IMAGE := $(boot)/loader.bin
>  else
>  KBUILD_IMAGE := $(boot)/Image.gz
>  endif
> -BOOT_TARGETS := Image Image.gz loader
> +BOOT_TARGETS := Image Image.gz loader loader.bin
>
>  all:   $(notdir $(KBUILD_IMAGE))
>
> diff --git a/arch/riscv/boot/Makefile b/arch/riscv/boot/Makefile
> index 36db8145f9f4..3530c59b3ea7 100644
> --- a/arch/riscv/boot/Makefile
> +++ b/arch/riscv/boot/Makefile
> @@ -41,6 +41,9 @@ $(obj)/Image.lzma: $(obj)/Image FORCE
>  $(obj)/Image.lzo: $(obj)/Image FORCE
>         $(call if_changed,lzo)
>
> +$(obj)/loader.bin: $(obj)/loader FORCE
> +       $(call if_changed,objcopy)
> +
>  install:
>         $(CONFIG_SHELL) $(srctree)/$(src)/install.sh $(KERNELRELEASE) \
>         $(obj)/Image System.map "$(INSTALL_PATH)"
> --
> 2.24.1
>
>

