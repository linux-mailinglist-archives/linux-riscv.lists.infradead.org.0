Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25CA91F0986
	for <lists+linux-riscv@lfdr.de>; Sun,  7 Jun 2020 06:14:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=XVc4yhBjX64RmWB7JPsVL5b7vYsNR1j+6MV6XcBMtDw=; b=ljCrMHAgmd0Am8cUspRHVvMev
	AlBNTMVFeOKKTFhMjMbSdyUZevIhT3kkUJnVNZa8pMDg6ytpxxei/ZCM3UGNo/gYYwaWF50amKsaA
	jkweC4SBZh9+AvLZylMnrWhocjYDqkOSv/R191ne6MduCLLx+IYHaIox0UuW/UoClz9x0paSNoUVc
	OBzm2O05mg13t3ShObjgodzOJTqzZ7NCWMT8ovOoiFNXGrRwgTso2tUAPBZnn2EIEZdV/5q1orFUQ
	lO6FsaR+ATlEgngg/Ei3kUuiiuSixwRhMVwZRo12Sm9E2xuk/NjzOt1fifOL9TyLYz7qp3BrQ1Sov
	OWdD+DsxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhmhN-0005vu-3a; Sun, 07 Jun 2020 04:14:17 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhmhK-0005vI-H6
 for linux-riscv@lists.infradead.org; Sun, 07 Jun 2020 04:14:16 +0000
Received: by mail-wm1-x344.google.com with SMTP id k26so13129286wmi.4
 for <linux-riscv@lists.infradead.org>; Sat, 06 Jun 2020 21:14:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=XVc4yhBjX64RmWB7JPsVL5b7vYsNR1j+6MV6XcBMtDw=;
 b=CtfasOdaLXASDTrfjslQSlb2cqhb29HcfYBxMM5gwUNZwgYhjFVOJJt3EsqsRRj8Mq
 MPsUtDcpnNJR0Lf2iFnRRD0haPlkB0y2BDkNmMA3zxG+nHPLIiLLMsosbxi8SYy3mOjQ
 SINXa/N2/2XmgVa8M1cuIZqX1q9TQ+1hdr+Qxoyl+O7U2sM9PfYNmbnk5KUhIXG1wRm9
 N6HVew6cfN66BUbc6+MqB98EHNkB1KPb8G7BhL7d4jaq251q+IX1fMMosOyuy5PA1O6a
 /D6k6s+0y7JYtMzhpsDI8BvoHN3LKwNA8abau/aFJaUjfYMHtWhFZWMwFUmOp/7xhWS9
 Xqeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=XVc4yhBjX64RmWB7JPsVL5b7vYsNR1j+6MV6XcBMtDw=;
 b=s5mwMK+pADdQQITNxQaz5NhFwNu5k77NkUJZ4UIqdfAHKoddGpTk0jTG9Bfg2x430Z
 1tmm0B501/okkoElHkHFrkOFwVXq7YAMcZIJ+C/pSARhDUAil8SSZL+yNJX1aloBFWj1
 JkrESQwnEWkdbE4t6l27kCgBlPjjkQZVgAXULODYgnVJV4OBVqjbhEQXCyOzJEGRc3Tq
 s3h6O0nOWWpqg4THFJKNU3EsbCWIw+ZJOcIk2/ghzvn3CDxfjhwiiDW8uB4GbUnw6+qi
 Pf2yZUrK6n16KqPTuD0OpIfPwZBaNUKNcTHbtVfqmEdwbttDI9NZT6MN5EaLj3uBSgrv
 YTzA==
X-Gm-Message-State: AOAM533RT/Fi30Ymuha6wYbkN4PaWPb0hjO99MErAp2TJCQ28WDI+eXw
 MQqSMSn/AOcZGEMKaO6L8YJyBdMjPDy/1mgUZvjNfg==
X-Google-Smtp-Source: ABdhPJychvNagwd9pRSBrMuYZSEdRL4y5AjtJjKM/sVc4PCGcM28zvbKJvFO+RX1RbUql0gkNv/GYaFg/b988AIlbrY=
X-Received: by 2002:a1c:1b17:: with SMTP id b23mr9875982wmb.3.1591503251213;
 Sat, 06 Jun 2020 21:14:11 -0700 (PDT)
MIME-Version: 1.0
References: <20200521134544.816918-3-anup.patel@wdc.com>
 <mhng-f2e4aecb-a19b-4d20-9a48-9640bd9d264d@palmerdabbelt-glaptop1>
In-Reply-To: <mhng-f2e4aecb-a19b-4d20-9a48-9640bd9d264d@palmerdabbelt-glaptop1>
From: Anup Patel <anup@brainfault.org>
Date: Sun, 7 Jun 2020 09:43:59 +0530
Message-ID: <CAAhSdy1yUWoQ_YYi=XdAO79EVQxvTHR87FuBmq477opaaTveuw@mail.gmail.com>
Subject: Re: [PATCH 2/5] RISC-V: Remove CLINT related code
To: Palmer Dabbelt <palmer@dabbelt.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200606_211414_636629_657D1D5F 
X-CRM114-Status: GOOD (  16.76  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, Damien Le Moal <Damien.LeMoal@wdc.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Anup Patel <Anup.Patel@wdc.com>,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 Atish Patra <Atish.Patra@wdc.com>, Rob Herring <robh+dt@kernel.org>,
 Alistair Francis <Alistair.Francis@wdc.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, Thomas Gleixner <tglx@linutronix.de>,
 linux-riscv <linux-riscv@lists.infradead.org>,
 Albert Ou <aou@eecs.berkeley.edu>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, Jun 5, 2020 at 2:10 AM Palmer Dabbelt <palmer@dabbelt.com> wrote:
>
> On Thu, 21 May 2020 06:45:41 PDT (-0700), Anup Patel wrote:
> > We will be having separate CLINT timer driver which will also
> > provide CLINT based IPI operations so let's remove CLINT related
> > code from arch/riscv directory.
>
> This will leave the system unbootable, which breaks bisecting.

This only affects the NoMMU kernel where userspace FPDPIC work
is still in-progress so NoMMU kernel is anyway not 100% complete
without upstreamed userspace support.

Are you suggesting to squash PATCH2, PATCH3, and PATCH4 for
preserving bistability ?

Regards,
Anup


>
> >
> > Signed-off-by: Anup Patel <anup.patel@wdc.com>
> > ---
> >  arch/riscv/include/asm/clint.h | 39 ------------------------------
> >  arch/riscv/kernel/Makefile     |  2 +-
> >  arch/riscv/kernel/clint.c      | 44 ----------------------------------
> >  arch/riscv/kernel/setup.c      |  2 --
> >  arch/riscv/kernel/smp.c        |  1 -
> >  arch/riscv/kernel/smpboot.c    |  1 -
> >  6 files changed, 1 insertion(+), 88 deletions(-)
> >  delete mode 100644 arch/riscv/include/asm/clint.h
> >  delete mode 100644 arch/riscv/kernel/clint.c
> >
> > diff --git a/arch/riscv/include/asm/clint.h b/arch/riscv/include/asm/clint.h
> > deleted file mode 100644
> > index a279b17a6aad..000000000000
> > --- a/arch/riscv/include/asm/clint.h
> > +++ /dev/null
> > @@ -1,39 +0,0 @@
> > -/* SPDX-License-Identifier: GPL-2.0 */
> > -#ifndef _ASM_RISCV_CLINT_H
> > -#define _ASM_RISCV_CLINT_H 1
> > -
> > -#include <linux/io.h>
> > -#include <linux/smp.h>
> > -
> > -#ifdef CONFIG_RISCV_M_MODE
> > -extern u32 __iomem *clint_ipi_base;
> > -
> > -void clint_init_boot_cpu(void);
> > -
> > -static inline void clint_send_ipi_single(unsigned long hartid)
> > -{
> > -     writel(1, clint_ipi_base + hartid);
> > -}
> > -
> > -static inline void clint_send_ipi_mask(const struct cpumask *mask)
> > -{
> > -     int cpu;
> > -
> > -     for_each_cpu(cpu, mask)
> > -             clint_send_ipi_single(cpuid_to_hartid_map(cpu));
> > -}
> > -
> > -static inline void clint_clear_ipi(unsigned long hartid)
> > -{
> > -     writel(0, clint_ipi_base + hartid);
> > -}
> > -#else /* CONFIG_RISCV_M_MODE */
> > -#define clint_init_boot_cpu()        do { } while (0)
> > -
> > -/* stubs to for code is only reachable under IS_ENABLED(CONFIG_RISCV_M_MODE): */
> > -void clint_send_ipi_single(unsigned long hartid);
> > -void clint_send_ipi_mask(const struct cpumask *hartid_mask);
> > -void clint_clear_ipi(unsigned long hartid);
> > -#endif /* CONFIG_RISCV_M_MODE */
> > -
> > -#endif /* _ASM_RISCV_CLINT_H */
> > diff --git a/arch/riscv/kernel/Makefile b/arch/riscv/kernel/Makefile
> > index d8bbd3207100..529cda705cfe 100644
> > --- a/arch/riscv/kernel/Makefile
> > +++ b/arch/riscv/kernel/Makefile
> > @@ -31,7 +31,7 @@ obj-y       += cacheinfo.o
> >  obj-y        += patch.o
> >  obj-$(CONFIG_MMU) += vdso.o vdso/
> >
> > -obj-$(CONFIG_RISCV_M_MODE)   += clint.o traps_misaligned.o
> > +obj-$(CONFIG_RISCV_M_MODE)   += traps_misaligned.o
> >  obj-$(CONFIG_FPU)            += fpu.o
> >  obj-$(CONFIG_SMP)            += smpboot.o
> >  obj-$(CONFIG_SMP)            += smp.o
> > diff --git a/arch/riscv/kernel/clint.c b/arch/riscv/kernel/clint.c
> > deleted file mode 100644
> > index 3647980d14c3..000000000000
> > --- a/arch/riscv/kernel/clint.c
> > +++ /dev/null
> > @@ -1,44 +0,0 @@
> > -// SPDX-License-Identifier: GPL-2.0
> > -/*
> > - * Copyright (c) 2019 Christoph Hellwig.
> > - */
> > -
> > -#include <linux/io.h>
> > -#include <linux/of_address.h>
> > -#include <linux/types.h>
> > -#include <asm/clint.h>
> > -#include <asm/csr.h>
> > -#include <asm/timex.h>
> > -#include <asm/smp.h>
> > -
> > -/*
> > - * This is the layout used by the SiFive clint, which is also shared by the qemu
> > - * virt platform, and the Kendryte KD210 at least.
> > - */
> > -#define CLINT_IPI_OFF                0
> > -#define CLINT_TIME_CMP_OFF   0x4000
> > -#define CLINT_TIME_VAL_OFF   0xbff8
> > -
> > -u32 __iomem *clint_ipi_base;
> > -
> > -void clint_init_boot_cpu(void)
> > -{
> > -     struct device_node *np;
> > -     void __iomem *base;
> > -
> > -     np = of_find_compatible_node(NULL, NULL, "riscv,clint0");
> > -     if (!np) {
> > -             panic("clint not found");
> > -             return;
> > -     }
> > -
> > -     base = of_iomap(np, 0);
> > -     if (!base)
> > -             panic("could not map CLINT");
> > -
> > -     clint_ipi_base = base + CLINT_IPI_OFF;
> > -     riscv_time_cmp = base + CLINT_TIME_CMP_OFF;
> > -     riscv_time_val = base + CLINT_TIME_VAL_OFF;
> > -
> > -     clint_clear_ipi(boot_cpu_hartid);
> > -}
> > diff --git a/arch/riscv/kernel/setup.c b/arch/riscv/kernel/setup.c
> > index 145128a7e560..b07a583bf53b 100644
> > --- a/arch/riscv/kernel/setup.c
> > +++ b/arch/riscv/kernel/setup.c
> > @@ -18,7 +18,6 @@
> >  #include <linux/swiotlb.h>
> >  #include <linux/smp.h>
> >
> > -#include <asm/clint.h>
> >  #include <asm/cpu_ops.h>
> >  #include <asm/setup.h>
> >  #include <asm/sections.h>
> > @@ -76,7 +75,6 @@ void __init setup_arch(char **cmdline_p)
> >       setup_bootmem();
> >       paging_init();
> >       unflatten_device_tree();
> > -     clint_init_boot_cpu();
> >
> >  #ifdef CONFIG_SWIOTLB
> >       swiotlb_init(1);
> > diff --git a/arch/riscv/kernel/smp.c b/arch/riscv/kernel/smp.c
> > index 8375cc5970f6..8a23f1eb5400 100644
> > --- a/arch/riscv/kernel/smp.c
> > +++ b/arch/riscv/kernel/smp.c
> > @@ -17,7 +17,6 @@
> >  #include <linux/seq_file.h>
> >  #include <linux/delay.h>
> >
> > -#include <asm/clint.h>
> >  #include <asm/sbi.h>
> >  #include <asm/tlbflush.h>
> >  #include <asm/cacheflush.h>
> > diff --git a/arch/riscv/kernel/smpboot.c b/arch/riscv/kernel/smpboot.c
> > index 5fe849791bf0..a6cfa9842d4b 100644
> > --- a/arch/riscv/kernel/smpboot.c
> > +++ b/arch/riscv/kernel/smpboot.c
> > @@ -24,7 +24,6 @@
> >  #include <linux/of.h>
> >  #include <linux/sched/task_stack.h>
> >  #include <linux/sched/mm.h>
> > -#include <asm/clint.h>
> >  #include <asm/cpu_ops.h>
> >  #include <asm/irq.h>
> >  #include <asm/mmu_context.h>

