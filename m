Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BEE717291E
	for <lists+linux-riscv@lfdr.de>; Thu, 27 Feb 2020 21:01:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Z4KWmiqNVRxnEByLvvCd/G8SEN+IO5s9A6dC+iMy+FE=; b=qj4HjlBETUEQSo6uIOi7Zg1zI
	F1ELz24/Wrjbm0L8q52DY5hQNfAJU3l3K2dgMBFMGCNunZ+iytzLkpfADiOnDPG3qEwHm4GjNPhze
	yH7siHg6rw4+1vNSmYp0xZV0DOXv/R2B6zKmhP4TLBl3vKFgremgTONCjI+5AUYJBu6CxifbUt9MY
	/r1+suGg/iHvMr8AW7DYwYNCcR4QePZDGQr633m1E4JGBYnYrpNgpF6SIiEyrpe5SoUifwdnh8Fjo
	NCa8bzQnFyl+2n4BFam3XFnk+GuNVTzJeYhKkqCU9vLPBbUEvs1wwKDFdB0PlI3N37+vS2vCaz7mR
	F8ZaPfGXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7PLK-0005qL-7m; Thu, 27 Feb 2020 20:01:10 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7PLH-0005pV-4w
 for linux-riscv@lists.infradead.org; Thu, 27 Feb 2020 20:01:08 +0000
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com
 [209.85.221.44])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8B761246A5
 for <linux-riscv@lists.infradead.org>; Thu, 27 Feb 2020 20:01:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582833666;
 bh=i92tSJsBqBk3CzP62C3QM9Ge7+B8VLDLy8QK6K05kzY=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=Af4+Ycw0mp762ZvtUz3b1inyyPqDhnONpKiGtbRNgUnGODZiiRX+jKpuvneJqCMK2
 yt0KHWD/L0+VcRVkZmE8NyS9VNtXCJ7+ABqNAkVHWpqpVBZlB5Tqz2KB4ffrbqgbkG
 Rei/ImwXN38VutUjRo2TSMXYrUSmbEnjBMpMScyM=
Received: by mail-wr1-f44.google.com with SMTP id l5so321791wrx.4
 for <linux-riscv@lists.infradead.org>; Thu, 27 Feb 2020 12:01:06 -0800 (PST)
X-Gm-Message-State: APjAAAXX8qA60NQGVt1jFoNiPqLvXSXeNuBu0g/6rjGcveI7QNPj+nQA
 pWetF5Se81NlKgfpJ/MfrwtcHff2eC6uu0XuA4/ECQ==
X-Google-Smtp-Source: APXvYqwNfGcYXWESaIhXXtct1v7f5gXKx5rzPZ8W7+pk2wS+P5lHRdVGAWs4Aafi3JACnyUrHs0Dsd9MpMVFbVYKcC4=
X-Received: by 2002:adf:f84a:: with SMTP id d10mr551741wrq.208.1582833665009; 
 Thu, 27 Feb 2020 12:01:05 -0800 (PST)
MIME-Version: 1.0
References: <20200226011037.7179-1-atish.patra@wdc.com>
 <20200226011037.7179-4-atish.patra@wdc.com>
 <CAKv+Gu8HdRa5k=h1XF2fm80VEgvuxa_tX_P0qFSdkk=CVc6ffA@mail.gmail.com>
 <08322b0eeb26b564954a14273baf18db72e2f1e9.camel@wdc.com>
In-Reply-To: <08322b0eeb26b564954a14273baf18db72e2f1e9.camel@wdc.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Thu, 27 Feb 2020 21:00:54 +0100
X-Gmail-Original-Message-ID: <CAKv+Gu_OMs12qBxvZGnrUnMD782yYPpcvBDqRGug2YDhhvcfSw@mail.gmail.com>
Message-ID: <CAKv+Gu_OMs12qBxvZGnrUnMD782yYPpcvBDqRGug2YDhhvcfSw@mail.gmail.com>
Subject: Re: [RFC PATCH 3/5] RISC-V: Define fixmap bindings for generic early
 ioremap support
To: Atish Patra <Atish.Patra@wdc.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_120107_232711_3CD62583 
X-CRM114-Status: GOOD (  21.55  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "kstewart@linuxfoundation.org" <kstewart@linuxfoundation.org>,
 "linux-efi@vger.kernel.org" <linux-efi@vger.kernel.org>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "linus.walleij@linaro.org" <linus.walleij@linaro.org>,
 "linux@armlinux.org.uk" <linux@armlinux.org.uk>,
 "mchehab+samsung@kernel.org" <mchehab+samsung@kernel.org>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "will@kernel.org" <will@kernel.org>, "mingo@kernel.org" <mingo@kernel.org>,
 "abner.chang@hpe.com" <abner.chang@hpe.com>,
 "michal.simek@xilinx.com" <michal.simek@xilinx.com>,
 "rppt@linux.ibm.com" <rppt@linux.ibm.com>,
 "greentime.hu@sifive.com" <greentime.hu@sifive.com>, "bp@suse.de" <bp@suse.de>,
 "daniel.schaefer@hpe.com" <daniel.schaefer@hpe.com>,
 "aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>,
 "keescook@chromium.org" <keescook@chromium.org>,
 "arnd@arndb.de" <arnd@arndb.de>,
 "alexios.zavras@intel.com" <alexios.zavras@intel.com>,
 "agraf@csgraf.de" <agraf@csgraf.de>,
 "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 "allison@lohutok.net" <allison@lohutok.net>,
 "leif@nuviainc.com" <leif@nuviainc.com>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 Anup Patel <Anup.Patel@wdc.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "palmer@dabbelt.com" <palmer@dabbelt.com>,
 "pbonzini@redhat.com" <pbonzini@redhat.com>,
 "akpm@linux-foundation.org" <akpm@linux-foundation.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, 27 Feb 2020 at 20:58, Atish Patra <Atish.Patra@wdc.com> wrote:
>
> On Wed, 2020-02-26 at 08:08 +0100, Ard Biesheuvel wrote:
> > On Wed, 26 Feb 2020 at 02:10, Atish Patra <atish.patra@wdc.com>
> > wrote:
> > > UEFI uses early IO or memory mappings for runtime services before
> > > normal ioremap() is usable. This patch only adds minimum necessary
> > > fixmap bindings and headers for generic ioremap support to work.
> > >
> > > Signed-off-by: Atish Patra <atish.patra@wdc.com>
> >
> > Looks reasonable to me,
> >
> > Acked-by: Ard Biesheuvel <ardb@kernel.org>
> >
> > although I wonder why it is part of this series?
> >
>
> because of CONFIG_EFI. With CONFIG_EFI enabled, all the run time
> service memory mapping code is compiled for RISC-V. I could have
> createa a separate config for only boot time services or used EFI_STUB
> at places where CONFI_EFI. But it seems redundant as we will support
> runtime services soon. Let me know if that's a wrong approach.
>

No that's fine



> > > ---
> > >  arch/riscv/Kconfig              |  1 +
> > >  arch/riscv/include/asm/Kbuild   |  1 +
> > >  arch/riscv/include/asm/fixmap.h | 21 ++++++++++++++++++++-
> > >  arch/riscv/include/asm/io.h     |  1 +
> > >  4 files changed, 23 insertions(+), 1 deletion(-)
> > >
> > > diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
> > > index 27bfc7947e44..42c122170cfd 100644
> > > --- a/arch/riscv/Kconfig
> > > +++ b/arch/riscv/Kconfig
> > > @@ -65,6 +65,7 @@ config RISCV
> > >         select ARCH_HAS_GCOV_PROFILE_ALL
> > >         select HAVE_COPY_THREAD_TLS
> > >         select HAVE_ARCH_KASAN if MMU && 64BIT
> > > +       select GENERIC_EARLY_IOREMAP
> > >
> > >  config ARCH_MMAP_RND_BITS_MIN
> > >         default 18 if 64BIT
> > > diff --git a/arch/riscv/include/asm/Kbuild
> > > b/arch/riscv/include/asm/Kbuild
> > > index ec0ca8c6ab64..517394390106 100644
> > > --- a/arch/riscv/include/asm/Kbuild
> > > +++ b/arch/riscv/include/asm/Kbuild
> > > @@ -4,6 +4,7 @@ generic-y += checksum.h
> > >  generic-y += compat.h
> > >  generic-y += device.h
> > >  generic-y += div64.h
> > > +generic-y += early_ioremap.h
> > >  generic-y += extable.h
> > >  generic-y += flat.h
> > >  generic-y += dma.h
> > > diff --git a/arch/riscv/include/asm/fixmap.h
> > > b/arch/riscv/include/asm/fixmap.h
> > > index 42d2c42f3cc9..7a4beb7e29a3 100644
> > > --- a/arch/riscv/include/asm/fixmap.h
> > > +++ b/arch/riscv/include/asm/fixmap.h
> > > @@ -25,9 +25,28 @@ enum fixed_addresses {
> > >  #define FIX_FDT_SIZE   SZ_1M
> > >         FIX_FDT_END,
> > >         FIX_FDT = FIX_FDT_END + FIX_FDT_SIZE / PAGE_SIZE - 1,
> > > +       FIX_EARLYCON_MEM_BASE,
> > > +
> > >         FIX_PTE,
> > >         FIX_PMD,
> > > -       FIX_EARLYCON_MEM_BASE,
> > > +       /*
> > > +        * Make sure that it is 2MB aligned.
> > > +        */
> > > +#define NR_FIX_SZ_2M   (SZ_2M / PAGE_SIZE)
> > > +       FIX_THOLE = NR_FIX_SZ_2M - FIX_PMD - 1,
> > > +
> > > +       __end_of_permanent_fixed_addresses,
> > > +       /*
> > > +        * Temporary boot-time mappings, used by early_ioremap(),
> > > +        * before ioremap() is functional.
> > > +        */
> > > +#define NR_FIX_BTMAPS          (SZ_256K / PAGE_SIZE)
> > > +#define FIX_BTMAPS_SLOTS       7
> > > +#define TOTAL_FIX_BTMAPS       (NR_FIX_BTMAPS * FIX_BTMAPS_SLOTS)
> > > +
> > > +       FIX_BTMAP_END = __end_of_permanent_fixed_addresses,
> > > +       FIX_BTMAP_BEGIN = FIX_BTMAP_END + TOTAL_FIX_BTMAPS - 1,
> > > +
> > >         __end_of_fixed_addresses
> > >  };
> > >
> > > diff --git a/arch/riscv/include/asm/io.h
> > > b/arch/riscv/include/asm/io.h
> > > index 0f477206a4ed..047f414b6948 100644
> > > --- a/arch/riscv/include/asm/io.h
> > > +++ b/arch/riscv/include/asm/io.h
> > > @@ -14,6 +14,7 @@
> > >  #include <linux/types.h>
> > >  #include <asm/mmiowb.h>
> > >  #include <asm/pgtable.h>
> > > +#include <asm/early_ioremap.h>
> > >
> > >  /*
> > >   * MMIO access functions are separated out to break dependency
> > > cycles
> > > --
> > > 2.24.0
> > >
>
> --
> Regards,
> Atish

