Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 489C114AEAB
	for <lists+linux-riscv@lfdr.de>; Tue, 28 Jan 2020 05:31:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=fRsUnXBUE4PZHTWQPpeYq1ZjUN3os/yERYKuiBu0EAk=; b=dTa2J5pW7aJIjRdWW9RkfC7mR
	UUCIIcj2G7EhQvEpsvQafpQkILwnrEQVbhvwPzJPUOo90bu3cnrw4d9XcXKeClheM9qN2IRBP+iOo
	2cpD+QsPkFSzoUPbxr+A+b5hndo8mbA2r/D2nll8PQ2rIuBTSpYm5sqgwwb0/unEoIDZTRL49GCJ6
	0pA8GdUo973EsXu8ILwn+X9vzeIf6TvpQoJZYblJ2T5YHBx72ajMUOWlqQZYQXMsNtymX7m0LomeT
	YvLmik8HyFwg/cBUMmFk84ih/PQQtYw/qyHB5bhuR0MgLoi7hY4zhXhH5XeTKHv0yYvA1gp1iGGqC
	eCsBKIE4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwIX6-00024A-Dv; Tue, 28 Jan 2020 04:31:24 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwIX2-00023j-V4
 for linux-riscv@lists.infradead.org; Tue, 28 Jan 2020 04:31:22 +0000
Received: by mail-wm1-x341.google.com with SMTP id g1so998023wmh.4
 for <linux-riscv@lists.infradead.org>; Mon, 27 Jan 2020 20:31:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=fRsUnXBUE4PZHTWQPpeYq1ZjUN3os/yERYKuiBu0EAk=;
 b=l/+3rQ6l256sMBhkUCGKUq3xBEevdA/KmXxwfTKI+qErQKWSwCbKB/2sd9G1fgzhV5
 8L/g5Q3ZxFyNzk/T6GncfI64bWz+G0TRU7LVYo89pKoSOnUHhkM7JFsINVDAQrkfhVSj
 f1HEya4cQMGok6ObDv/jUtoIp3tymidVJm0aS4oyL3tJcf0SJmVTFumLYB0Ws6RuueyJ
 B78rJ8epmu6mlocV4g0OUZfQ9GnIp0ZlLv/Y8R/hdJ4yBPkmehKx1JYSu50cogXvJaiR
 8YQpoPiCaJTVFZ8XkUb/NVOVJTfW9aODzRA4UskganRqbistb8P80MQiTbvQwaVLQD1g
 /iOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=fRsUnXBUE4PZHTWQPpeYq1ZjUN3os/yERYKuiBu0EAk=;
 b=n/5oVzPntC4Z44LiQw3GN+voQugNlvXuLj5lAmQwTEa8b3+9upJ2RJnB8ow5Er1T/0
 j6wkQORqjqVjqHrVc59UEPhyUDKLCEb60RapVvVa5jr6MHfqtVqKBi9I6wWFpvBx6vy+
 hSvqwbwioJp6vf3Z5c8vgLhJUzWee+2WiUTRVDZlv+nBt/16+FVUZ9iFna7MeiV07syz
 u9NlUixv0pm5MihMzW72bV7f151cfpsZI+yVMB2nyj8ygm5zbahjN9X+6uCgQgLIeW1j
 NWc9qjD/2FeobyXmCrPfAbICy9L7nqYsfWTmN8VVukp0Cfy4Xb5wxl3itYSWmlRhTyGJ
 9oBA==
X-Gm-Message-State: APjAAAV0fSeo4iRyYj8MUY24kHOU9zXmrhXxP3EKOaRRQxXnjOhZxLOW
 iAPLbfSyxtHy+yEZUAE74F1f16ED0MCYhxGwUvu+OQ==
X-Google-Smtp-Source: APXvYqzOxpasv/CFJ6oKkot/L6ks7/kh+ytnkcxTtueG43hwPwMbkz6Nra7XqSgI0BBpniO3V3nB1EobQzAX7UefMJo=
X-Received: by 2002:a1c:9c87:: with SMTP id f129mr2461194wme.26.1580185878641; 
 Mon, 27 Jan 2020 20:31:18 -0800 (PST)
MIME-Version: 1.0
References: <20200128022737.15371-1-atish.patra@wdc.com>
 <20200128022737.15371-7-atish.patra@wdc.com>
In-Reply-To: <20200128022737.15371-7-atish.patra@wdc.com>
From: Anup Patel <anup@brainfault.org>
Date: Tue, 28 Jan 2020 10:01:07 +0530
Message-ID: <CAAhSdy3BcVCKnWb3RcbyaQHfmCHZycajLJvZ-hmn6v8_g0i_BA@mail.gmail.com>
Subject: Re: [PATCH v7 06/10] RISC-V: Add cpu_ops and modify default booting
 method
To: Atish Patra <atish.patra@wdc.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_203121_009266_D7F0AFEF 
X-CRM114-Status: GOOD (  27.39  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Thomas Gleixner <tglx@linutronix.de>,
 Kees Cook <keescook@chromium.org>, Abner Chang <abner.chang@hpe.com>,
 nickhu@andestech.com, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Palmer Dabbelt <palmerdabbelt@google.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 Mike Rapoport <rppt@linux.ibm.com>, Chester Lin <clin@suse.com>,
 Vincent Chen <vincent.chen@sifive.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 "Eric W. Biederman" <ebiederm@xmission.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Greentime Hu <greentime.hu@sifive.com>,
 linux-riscv <linux-riscv@lists.infradead.org>, Borislav Petkov <bp@suse.de>,
 Palmer Dabbelt <palmer@dabbelt.com>, Mao Han <han_mao@c-sky.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, Jan 28, 2020 at 7:58 AM Atish Patra <atish.patra@wdc.com> wrote:
>
> Currently, all non-booting harts start booting after the booting hart
> updates the per-hart stack pointer. This is done in a way that, it's
> difficult to implement any other booting method without breaking the
> backward compatibility.
>
> Define a cpu_ops method that allows to introduce other booting methods
> in future. Modify the current booting method to be compatible with
> cpu_ops.
>
> Signed-off-by: Atish Patra <atish.patra@wdc.com>
> ---
>  arch/riscv/include/asm/cpu_ops.h | 31 ++++++++++++++++
>  arch/riscv/kernel/Makefile       |  1 +
>  arch/riscv/kernel/cpu_ops.c      | 61 ++++++++++++++++++++++++++++++++
>  arch/riscv/kernel/setup.c        |  4 ++-
>  arch/riscv/kernel/smpboot.c      | 52 ++++++++++++++++-----------
>  5 files changed, 127 insertions(+), 22 deletions(-)
>  create mode 100644 arch/riscv/include/asm/cpu_ops.h
>  create mode 100644 arch/riscv/kernel/cpu_ops.c

This has to be more modular considering the fact that CONFIG_RISCV_SBI
can be disabled.

I have few suggestions on how to break cpu_ops.c

>
> diff --git a/arch/riscv/include/asm/cpu_ops.h b/arch/riscv/include/asm/cpu_ops.h
> new file mode 100644
> index 000000000000..27e9dfee5460
> --- /dev/null
> +++ b/arch/riscv/include/asm/cpu_ops.h
> @@ -0,0 +1,31 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
> +/*
> + * Copyright (c) 2019 Western Digital Corporation or its affiliates.
> + * Based on arch/arm64/include/asm/cpu_ops.h
> + */
> +#ifndef __ASM_CPU_OPS_H
> +#define __ASM_CPU_OPS_H
> +
> +#include <linux/init.h>
> +#include <linux/threads.h>
> +
> +/**
> + * struct cpu_operations - Callback operations for hotplugging CPUs.
> + *
> + * @name:              Name of the boot protocol.
> + * @cpu_prepare:       Early one-time preparation step for a cpu. If there
> + *                     is a mechanism for doing so, tests whether it is
> + *                     possible to boot the given HART.
> + * @cpu_start:         Boots a cpu into the kernel.
> + */
> +struct cpu_operations {
> +       const char      *name;
> +       int             (*cpu_prepare)(unsigned int cpu);
> +       int             (*cpu_start)(unsigned int cpu,
> +                                    struct task_struct *tidle);
> +};
> +
> +extern const struct cpu_operations *cpu_ops[NR_CPUS];

Add following here:
extern void *__cpu_up_stack_pointer[NR_CPUS];
extern void *__cpu_up_task_pointer[NR_CPUS];

> +int __init cpu_set_ops(int cpu);
> +
> +#endif /* ifndef __ASM_CPU_OPS_H */
> diff --git a/arch/riscv/kernel/Makefile b/arch/riscv/kernel/Makefile
> index f40205cb9a22..d77def5b4e87 100644
> --- a/arch/riscv/kernel/Makefile
> +++ b/arch/riscv/kernel/Makefile
> @@ -32,6 +32,7 @@ obj-$(CONFIG_RISCV_M_MODE)    += clint.o
>  obj-$(CONFIG_FPU)              += fpu.o
>  obj-$(CONFIG_SMP)              += smpboot.o
>  obj-$(CONFIG_SMP)              += smp.o
> +obj-$(CONFIG_SMP)              += cpu_ops.o
>  obj-$(CONFIG_MODULES)          += module.o
>  obj-$(CONFIG_MODULE_SECTIONS)  += module-sections.o
>
> diff --git a/arch/riscv/kernel/cpu_ops.c b/arch/riscv/kernel/cpu_ops.c
> new file mode 100644
> index 000000000000..099dbb6ff9f0
> --- /dev/null
> +++ b/arch/riscv/kernel/cpu_ops.c
> @@ -0,0 +1,61 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * Copyright (c) 2019 Western Digital Corporation or its affiliates.
> + *
> + */
> +
> +#include <linux/errno.h>
> +#include <linux/mm.h>
> +#include <linux/of.h>
> +#include <linux/string.h>
> +#include <linux/sched/task_stack.h>
> +#include <asm/cpu_ops.h>
> +#include <asm/sbi.h>
> +#include <asm/smp.h>
> +
> +const struct cpu_operations *cpu_ops[NR_CPUS] __ro_after_init;
> +
> +void *__cpu_up_stack_pointer[NR_CPUS];
> +void *__cpu_up_task_pointer[NR_CPUS];
> +
> +const struct cpu_operations cpu_spinwait_ops;
> +
> +static int spinwait_cpu_prepare(unsigned int cpuid)
> +{
> +       if (!cpu_spinwait_ops.cpu_start) {
> +               pr_err("cpu start method not defined for CPU [%d]\n", cpuid);
> +               return -ENODEV;
> +       }
> +       return 0;
> +}
> +
> +static int spinwait_cpu_start(unsigned int cpuid, struct task_struct *tidle)
> +{
> +       int hartid = cpuid_to_hartid_map(cpuid);
> +
> +       /*
> +        * In this protocol, all cpus boot on their own accord.  _start
> +        * selects the first cpu to boot the kernel and causes the remainder
> +        * of the cpus to spin in a loop waiting for their stack pointer to be
> +        * setup by that main cpu.  Writing __cpu_up_stack_pointer signals to
> +        * the spinning cpus that they can continue the boot process.
> +        */
> +       smp_mb();
> +       WRITE_ONCE(__cpu_up_stack_pointer[hartid],
> +                 task_stack_page(tidle) + THREAD_SIZE);
> +       WRITE_ONCE(__cpu_up_task_pointer[hartid], tidle);
> +
> +       return 0;
> +}
> +
> +const struct cpu_operations cpu_spinwait_ops = {
> +       .name           = "spinwait",
> +       .cpu_prepare    = spinwait_cpu_prepare,
> +       .cpu_start      = spinwait_cpu_start,
> +};

Move cpu_spinwait_ops, spinwait_cpu_start, and spinwait_cpu_prepare
to arch/riscv/kernel/cpu_ops_spinwait.c

Have "extern const struct cpu_operations cpu_spinwait_ops;" here.

> +
> +int __init cpu_set_ops(int cpuid)
> +{
> +       cpu_ops[cpuid] = &cpu_spinwait_ops;
> +       return 0;
> +}
> diff --git a/arch/riscv/kernel/setup.c b/arch/riscv/kernel/setup.c
> index de3e65dae83a..8208d1109ddb 100644
> --- a/arch/riscv/kernel/setup.c
> +++ b/arch/riscv/kernel/setup.c
> @@ -16,12 +16,13 @@
>  #include <linux/of_platform.h>
>  #include <linux/sched/task.h>
>  #include <linux/swiotlb.h>
> +#include <linux/smp.h>
>
>  #include <asm/clint.h>
> +#include <asm/cpu_ops.h>
>  #include <asm/setup.h>
>  #include <asm/sections.h>
>  #include <asm/pgtable.h>
> -#include <asm/smp.h>
>  #include <asm/sbi.h>
>  #include <asm/tlbflush.h>
>  #include <asm/thread_info.h>
> @@ -79,6 +80,7 @@ void __init setup_arch(char **cmdline_p)
>                 sbi_init();
>
>  #ifdef CONFIG_SMP
> +       cpu_set_ops(0);
>         setup_smp();
>  #endif
>
> diff --git a/arch/riscv/kernel/smpboot.c b/arch/riscv/kernel/smpboot.c
> index 8bc01f0ca73b..f2cf541bc895 100644
> --- a/arch/riscv/kernel/smpboot.c
> +++ b/arch/riscv/kernel/smpboot.c
> @@ -25,6 +25,7 @@
>  #include <linux/sched/task_stack.h>
>  #include <linux/sched/mm.h>
>  #include <asm/clint.h>
> +#include <asm/cpu_ops.h>
>  #include <asm/irq.h>
>  #include <asm/mmu_context.h>
>  #include <asm/tlbflush.h>
> @@ -34,8 +35,6 @@
>
>  #include "head.h"
>
> -void *__cpu_up_stack_pointer[NR_CPUS];
> -void *__cpu_up_task_pointer[NR_CPUS];
>  static DECLARE_COMPLETION(cpu_running);
>
>  void __init smp_prepare_boot_cpu(void)
> @@ -46,6 +45,7 @@ void __init smp_prepare_boot_cpu(void)
>  void __init smp_prepare_cpus(unsigned int max_cpus)
>  {
>         int cpuid;
> +       int ret;
>
>         /* This covers non-smp usecase mandated by "nosmp" option */
>         if (max_cpus == 0)
> @@ -54,6 +54,11 @@ void __init smp_prepare_cpus(unsigned int max_cpus)
>         for_each_possible_cpu(cpuid) {
>                 if (cpuid == smp_processor_id())
>                         continue;
> +               if (cpu_ops[cpuid]->cpu_prepare) {
> +                       ret = cpu_ops[cpuid]->cpu_prepare(cpuid);
> +                       if (ret)
> +                               continue;
> +               }
>                 set_cpu_present(cpuid, true);
>         }
>  }
> @@ -92,36 +97,41 @@ void __init setup_smp(void)
>                         cpuid, nr_cpu_ids);
>
>         for (cpuid = 1; cpuid < nr_cpu_ids; cpuid++) {
> -               if (cpuid_to_hartid_map(cpuid) != INVALID_HARTID)
> +               if (cpuid_to_hartid_map(cpuid) != INVALID_HARTID) {
> +                       if (cpu_set_ops(cpuid)) {
> +                               cpuid_to_hartid_map(cpuid) = INVALID_HARTID;
> +                               continue;
> +                       }
>                         set_cpu_possible(cpuid, true);
> +               }
>         }
>  }
>
> +int start_secondary_cpu(int cpu, struct task_struct *tidle)
> +{
> +       if (cpu_ops[cpu]->cpu_start)
> +               return cpu_ops[cpu]->cpu_start(cpu, tidle);
> +
> +       return -EOPNOTSUPP;
> +}
> +
>  int __cpu_up(unsigned int cpu, struct task_struct *tidle)
>  {
>         int ret = 0;
> -       int hartid = cpuid_to_hartid_map(cpu);
>         tidle->thread_info.cpu = cpu;
>
> -       /*
> -        * On RISC-V systems, all harts boot on their own accord.  Our _start
> -        * selects the first hart to boot the kernel and causes the remainder
> -        * of the harts to spin in a loop waiting for their stack pointer to be
> -        * setup by that main hart.  Writing __cpu_up_stack_pointer signals to
> -        * the spinning harts that they can continue the boot process.
> -        */
> -       smp_mb();
> -       WRITE_ONCE(__cpu_up_stack_pointer[hartid],
> -                 task_stack_page(tidle) + THREAD_SIZE);
> -       WRITE_ONCE(__cpu_up_task_pointer[hartid], tidle);
> -
> -       lockdep_assert_held(&cpu_running);
> -       wait_for_completion_timeout(&cpu_running,
> +       ret = start_secondary_cpu(cpu, tidle);
> +       if (!ret) {
> +               lockdep_assert_held(&cpu_running);
> +               wait_for_completion_timeout(&cpu_running,
>                                             msecs_to_jiffies(1000));
>
> -       if (!cpu_online(cpu)) {
> -               pr_crit("CPU%u: failed to come online\n", cpu);
> -               ret = -EIO;
> +               if (!cpu_online(cpu)) {
> +                       pr_crit("CPU%u: failed to come online\n", cpu);
> +                       ret = -EIO;
> +               }
> +       } else {
> +               pr_crit("CPU%u: failed to start\n", cpu);
>         }
>
>         return ret;
> --
> 2.24.0
>

Regards,
Anup

