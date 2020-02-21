Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4835D16793C
	for <lists+linux-riscv@lfdr.de>; Fri, 21 Feb 2020 10:20:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=VmuyVpcSR865JyPo0oVfgzMcmXUB4YPWqRffdg846F0=; b=dNubAXFfsDZ+DrttNZI+AcJGD
	NFEc3S6vAu7xa64Ftc+MS4/1joHs+JdhRcQSObF6jFgF2UHCkvA+X0aoUNGtlV65ifAcViqkyJJem
	diG2RGMPeDwCckn+psLrjd9vw9wAPMtBbATM3O/M13HAyA7623oRFNlwufS8HhL/MRwz9Y50mFNEO
	CIuOXb2AH7h3un16xAOt5wPoBHxZ9+K7cIphsCPkAoLprNzbPD02ivgyXzN/EBoBjau8jKRitVU/W
	Sby2xG5R+2e882VP1CM33gLau7jkWjqmoK2JxIoR7mEuAg3GxqcKbnDQH8G7P7Q35R/NSIZOPEVPL
	atuGj2ILw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j54Tq-0006bg-8K; Fri, 21 Feb 2020 09:20:18 +0000
Received: from conssluserg-04.nifty.com ([210.131.2.83])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j54Tb-0005Eo-3E; Fri, 21 Feb 2020 09:20:05 +0000
Received: from mail-vk1-f174.google.com (mail-vk1-f174.google.com
 [209.85.221.174]) (authenticated)
 by conssluserg-04.nifty.com with ESMTP id 01L9JRK8023932;
 Fri, 21 Feb 2020 18:19:27 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-04.nifty.com 01L9JRK8023932
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1582276768;
 bh=VmuyVpcSR865JyPo0oVfgzMcmXUB4YPWqRffdg846F0=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=k6u9vPdhI6KhWgKFa+85uXqNS1YYMM3fPKwoQ0+mXFsCqC7Qtlm+j6wX6feBp9XGB
 1BUxPU3PkoHO0BiRd2yZ2GByfUpx2+NP2NrIFgVObece6IUxFK2PRcUi6twQPO1gfY
 JBNqel9zTN4MB38yKaZgPGo43xybEJenJCh0+WTcb2kMMpi9ShcEqSpv/q8kJpQ6pE
 wlvStdWh0o5oQLZD9jkzu7XGI0oUs1yDNxY9A1jlyDo2S3apE1l/wh2hRBM5LlrFYN
 ElbrhVjxY+Edkw76jlulz1LngNsLOKencNnkq1Bf51eNsfukbttbhAgvjQTyVvfFPY
 nahV40hzNGuiw==
X-Nifty-SrcIP: [209.85.221.174]
Received: by mail-vk1-f174.google.com with SMTP id g7so368429vkl.12;
 Fri, 21 Feb 2020 01:19:27 -0800 (PST)
X-Gm-Message-State: APjAAAWy9sTKuYnEvS8CmJyeKKSdIF1Bt+BwDBnqdJx3iumG5f1rqDDw
 /BzKcPdU3zL045nj9T2LsKOzL5dbqp3Qml6O/hQ=
X-Google-Smtp-Source: APXvYqzaz0mPSZK/ntfmxfvFupJ42NyBQt0nUrM/n8cwK4Ehx6Qt0V2MsrTaIIELjQXW5ad1WZ9ao8dfI393Harrrkg=
X-Received: by 2002:a1f:72c3:: with SMTP id n186mr16153825vkc.12.1582276766520; 
 Fri, 21 Feb 2020 01:19:26 -0800 (PST)
MIME-Version: 1.0
References: <CGME20200221085039eucas1p2b439c37eb04870cc020f452b7ad31929@eucas1p2.samsung.com>
 <20200216154502.26478-1-masahiroy@kernel.org>
 <e0212512-bc44-fc3a-a647-47eff86983b7@samsung.com>
In-Reply-To: <e0212512-bc44-fc3a-a647-47eff86983b7@samsung.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Fri, 21 Feb 2020 18:18:50 +0900
X-Gmail-Original-Message-ID: <CAK7LNAQqsLnZc4h_XEMifS2hX+E39-vxD-BL5C59Aj+TaQo+eA@mail.gmail.com>
Message-ID: <CAK7LNAQqsLnZc4h_XEMifS2hX+E39-vxD-BL5C59Aj+TaQo+eA@mail.gmail.com>
Subject: Re: [PATCH] kbuild: use KBUILD_DEFCONFIG as the fallback for
 DEFCONFIG_LIST
To: Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_012003_378204_AAF7DE43 
X-CRM114-Status: GOOD (  28.97  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.83 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: Rich Felker <dalias@libc.org>, Linux-sh list <linux-sh@vger.kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Guo Ren <guoren@kernel.org>,
 "H. Peter Anvin" <hpa@zytor.com>, sparclinux <sparclinux@vger.kernel.org>,
 "open list:SIFIVE DRIVERS" <linux-riscv@lists.infradead.org>,
 Vincent Chen <deanbo422@gmail.com>, Will Deacon <will@kernel.org>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>,
 Yoshinori Sato <ysato@users.sourceforge.jp>,
 Richard Weinberger <richard@nod.at>, X86 ML <x86@kernel.org>,
 Ingo Molnar <mingo@redhat.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
 Jeff Dike <jdike@addtoit.com>, linux-um@lists.infradead.org,
 Borislav Petkov <bp@alien8.de>, Greentime Hu <green.hu@gmail.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, Thomas Gleixner <tglx@linutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Nick Hu <nickhu@andestech.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Palmer Dabbelt <palmer@dabbelt.com>, "David S. Miller" <davem@davemloft.net>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, Feb 21, 2020 at 5:50 PM Marek Szyprowski
<m.szyprowski@samsung.com> wrote:
>
> Dear All,
>
> On 16.02.2020 16:45, Masahiro Yamada wrote:
> > Most of the Kconfig commands (except defconfig and all*config) read the
> > .config file as a base set of CONFIG options.
> >
> > When it does not exist, the files in DEFCONFIG_LIST are searched in this
> > order and loaded if found.
> >
> > I do not see much sense in the last two entries in DEFCONFIG_LIST.
> >
> > [1] ARCH_DEFCONFIG
> >
> > The entry for DEFCONFIG_LIST is guarded by 'depends on !UML'. So, the
> > ARCH_DEFCONFIG definition in arch/x86/um/Kconfig is meaningless.
> >
> > arch/{sh,sparc,x86}/Kconfig define ARCH_DEFCONFIG depending on 32 or 64
> > bit variant symbols. This is a little bit strange; ARCH_DEFCONFIG should
> > be a fixed string because the base config file is loaded before the symbol
> > evaluation stage.
> >
> > Using KBUILD_DEFCONFIG is saner because it is fixed before Kconfig is
> > invoked. Fortunately, arch/{sh,sparc,x86}/Makefile define it in the
> > same way, and it works as expected. Hence, replace ARCH_DEFCONFIG with
> > "arch/$(SRCARCH)/configs/$(KBUILD_DEFCONFIG)".
> >
> > [2] arch/$(ARCH)/defconfig
> >
> > This file path is no longer valid. The defconfig files are always located
> > in the arch configs/ directories.
> >
> >    $ find arch -name defconfig | sort
> >    arch/alpha/configs/defconfig
> >    arch/arm64/configs/defconfig
> >    arch/csky/configs/defconfig
> >    arch/nds32/configs/defconfig
> >    arch/riscv/configs/defconfig
> >    arch/s390/configs/defconfig
> >    arch/unicore32/configs/defconfig
> >
> > The path arch/*/configs/defconfig is already covered by
> > "arch/$(SRCARCH)/configs/$(KBUILD_DEFCONFIG)". So, this file path is
> > not necessary.
> >
> > Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
>
> This patch landed in today's linux-next (next-20200221) and broke arm64
> builds:
>
> --->8---
>
> $ make ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- defconfig
> *** Default configuration is based on 'defconfig'
> #
> # configuration written to .config
> #
> $ make ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- Image.gz
> scripts/kconfig/conf  --syncconfig Kconfig
> scripts/kconfig/conf  --syncconfig Kconfig
> scripts/kconfig/conf  --syncconfig Kconfig
> scripts/kconfig/conf  --syncconfig Kconfig
> scripts/kconfig/conf  --syncconfig Kconfig
> ...
>
> (endless loop)
>
> --->8---
>
> Reverting it fixes the issue:



My bad.

This is because arch/arm64/Makefile does not define
KBUILD_DEFCONFIG.



I will drop it.

Sorry about that.





>
> --->8---
>
> $ git revert cdd5d1a207d6a3a06c9e627a0234d9a6af6ad347
> [detached HEAD 1080d6a13b6d] Revert "kbuild: use KBUILD_DEFCONFIG as the
> fallback for DEFCONFIG_LIST"
>   5 files changed, 22 insertions(+), 1 deletion(-)
> $ make ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- defconfig
> *** Default configuration is based on 'defconfig'
> #
> # No change to .config
> #
> $ make ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- Image.gz
> scripts/kconfig/conf  --syncconfig Kconfig
>    UPD     include/config/kernel.release
>    UPD     include/generated/utsrelease.h
>    CC      scripts/mod/empty.o
> ...
>
> $ aarch64-linux-gnu-gcc --version
> aarch64-linux-gnu-gcc (Ubuntu/Linaro 7.4.0-1ubuntu1~18.04.1) 7.4.0
> Copyright (C) 2017 Free Software Foundation, Inc.
> This is free software; see the source for copying conditions. There is NO
> warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
> --->8---
>
> It looks that the issue is similar to the one described here:
>
> https://patchwork.kernel.org/patch/10453685/
>
> I hope this report helps fixing the issue.
>
> > ---
> >
> >   arch/sh/Kconfig     | 5 -----
> >   arch/sparc/Kconfig  | 5 -----
> >   arch/x86/Kconfig    | 5 -----
> >   arch/x86/um/Kconfig | 5 -----
> >   init/Kconfig        | 3 +--
> >   5 files changed, 1 insertion(+), 22 deletions(-)
> >
> > diff --git a/arch/sh/Kconfig b/arch/sh/Kconfig
> > index 9ece111b0254..b4f0e37b83eb 100644
> > --- a/arch/sh/Kconfig
> > +++ b/arch/sh/Kconfig
> > @@ -87,11 +87,6 @@ config SUPERH64
> >       select HAVE_EXIT_THREAD
> >       select KALLSYMS
> >
> > -config ARCH_DEFCONFIG
> > -     string
> > -     default "arch/sh/configs/shx3_defconfig" if SUPERH32
> > -     default "arch/sh/configs/cayman_defconfig" if SUPERH64
> > -
> >   config GENERIC_BUG
> >       def_bool y
> >       depends on BUG && SUPERH32
> > diff --git a/arch/sparc/Kconfig b/arch/sparc/Kconfig
> > index c1dd6dd642f4..0de15380d1fc 100644
> > --- a/arch/sparc/Kconfig
> > +++ b/arch/sparc/Kconfig
> > @@ -95,11 +95,6 @@ config SPARC64
> >       select PCI_DOMAINS if PCI
> >       select ARCH_HAS_GIGANTIC_PAGE
> >
> > -config ARCH_DEFCONFIG
> > -     string
> > -     default "arch/sparc/configs/sparc32_defconfig" if SPARC32
> > -     default "arch/sparc/configs/sparc64_defconfig" if SPARC64
> > -
> >   config ARCH_PROC_KCORE_TEXT
> >       def_bool y
> >
> > diff --git a/arch/x86/Kconfig b/arch/x86/Kconfig
> > index beea77046f9b..98935f4387f9 100644
> > --- a/arch/x86/Kconfig
> > +++ b/arch/x86/Kconfig
> > @@ -240,11 +240,6 @@ config OUTPUT_FORMAT
> >       default "elf32-i386" if X86_32
> >       default "elf64-x86-64" if X86_64
> >
> > -config ARCH_DEFCONFIG
> > -     string
> > -     default "arch/x86/configs/i386_defconfig" if X86_32
> > -     default "arch/x86/configs/x86_64_defconfig" if X86_64
> > -
> >   config LOCKDEP_SUPPORT
> >       def_bool y
> >
> > diff --git a/arch/x86/um/Kconfig b/arch/x86/um/Kconfig
> > index a8985e1f7432..95d26a69088b 100644
> > --- a/arch/x86/um/Kconfig
> > +++ b/arch/x86/um/Kconfig
> > @@ -27,11 +27,6 @@ config X86_64
> >       def_bool 64BIT
> >       select MODULES_USE_ELF_RELA
> >
> > -config ARCH_DEFCONFIG
> > -     string
> > -     default "arch/um/configs/i386_defconfig" if X86_32
> > -     default "arch/um/configs/x86_64_defconfig" if X86_64
> > -
> >   config 3_LEVEL_PGTABLES
> >       bool "Three-level pagetables" if !64BIT
> >       default 64BIT
> > diff --git a/init/Kconfig b/init/Kconfig
> > index 452bc1835cd4..6ccdb168dee5 100644
> > --- a/init/Kconfig
> > +++ b/init/Kconfig
> > @@ -6,8 +6,7 @@ config DEFCONFIG_LIST
> >       default "/lib/modules/$(shell,uname -r)/.config"
> >       default "/etc/kernel-config"
> >       default "/boot/config-$(shell,uname -r)"
> > -     default ARCH_DEFCONFIG
> > -     default "arch/$(ARCH)/defconfig"
> > +     default "arch/$(SRCARCH)/configs/$(KBUILD_DEFCONFIG)"
> >
> >   config CC_IS_GCC
> >       def_bool $(success,$(CC) --version | head -n 1 | grep -q gcc)
>
> Best regards
> --
> Marek Szyprowski, PhD
> Samsung R&D Institute Poland
>


-- 
Best Regards
Masahiro Yamada

