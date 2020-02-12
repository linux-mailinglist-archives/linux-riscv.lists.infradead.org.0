Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9661215A024
	for <lists+linux-riscv@lfdr.de>; Wed, 12 Feb 2020 05:28:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=zpvQzt0G7nK1UhrxjyRbKFvhpJ/9qLsWzisYQqD9vVc=; b=Mak9YBvJh0XYqs/3blRbJ+UQB
	6x7PC8SF4//UmCWXDcmp29HUnJfT/7KluliQoBXIkWE0S/u2gI+r3mNfBUWXG0IsKwKKvTZJTYj4j
	5gP3KIhfPBhfHS3Ow5B0L8aH5f44qUOScHC7arJAKvIFAV+lVaer92OXMzfatY04iTrdZXt7KF/LO
	eHb5eoSk9qShWzal0wbOJmgJWaxkE9JaXAISajjqCPZqpAISMLqUYReoi4YIv+TdhdA6+9kvzcXFB
	RtU2APazHBq8x8NxR4JihQK0lD5fmM3lRXwJfvoRonIuSeeiZpALKF45OuRSxrpvQCnCC9tjcMLy/
	wRjCTIH0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1jdf-0001iU-Ue; Wed, 12 Feb 2020 04:28:39 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1jdc-0001iB-Qm
 for linux-riscv@lists.infradead.org; Wed, 12 Feb 2020 04:28:38 +0000
Received: by mail-wr1-x443.google.com with SMTP id u6so509681wrt.0
 for <linux-riscv@lists.infradead.org>; Tue, 11 Feb 2020 20:28:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=zpvQzt0G7nK1UhrxjyRbKFvhpJ/9qLsWzisYQqD9vVc=;
 b=y0xLYqyhHL5ZtMnaKkWtviV3QYoHHgsBKb6apqm2R90q4SV0ohcLbTRQz+mnlQsuGw
 QzrwDV4zMesr0MZ8RVQIx+vPy1DmiQfA1uvyRmq+tZUHTihRlwtu7XRm8nZXqKpMuGhZ
 fZxFvdnQkbRh0wDZ3uO3MpwNFV8X/TgmvkY3dtgWQB74BMPGOfHkaVn5AOJ5Qm5mwF7/
 XRneYPmVqgJkk3ZWGq9GOr2yvmCOHzFbAK5EME0x+2fCtcf8ksYo3RazGSzmDEf6IRS8
 fztn7yq9DhP+ftKygr/TQZ6GTXDUEUCRttD+ApFwNi9T8LvfoPy0zZEQqn21JnMJpss6
 LWLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=zpvQzt0G7nK1UhrxjyRbKFvhpJ/9qLsWzisYQqD9vVc=;
 b=iKAf90SO9PomzWuHLVYBM5t2ez0ECKuSQbn7irxaqv62q3dn2aAlWfIT6UGJs2/kDq
 7RrTAeivEhznm3Vk6mpT2M6hbbJLXrdUs986/6aB1VfI/xRK2rhfpCJ64TCpyjIG1/VX
 A2bqYyU+uoS509ANindNYlXc2xuZE7/+nMG3NJt2MT4yebkTC8oFadsv1+/Bn14vqctX
 BdPR4+FcZMyanmqvIA/cDg9+vYQ0PuOmygFPreiXDSLAP1HDRRs04TVIu0PrfmirlbR8
 9YznPN+BWJ2lsKJAhkXrlra0EjxegLoI3Ik3o2o/v+aJwylZfQbwav8JRVt6EoAcysb3
 +iWw==
X-Gm-Message-State: APjAAAW4S00xpE/8YBrUFCIgCHH2RsuGa33LZyvq8Lc6roeiR2q+zNWs
 RYDfXM67XYVTv9104wz4R4JiMghOmOyifciNnuvQWg==
X-Google-Smtp-Source: APXvYqzfV248s2Q0oR2x/I1/y2ryjxfZvXf11A+pGQon6zmy7Q2xGWNdTklL0rMevXvtZQ8oPovi5TR+y/Ie6tI0vTc=
X-Received: by 2002:adf:f28f:: with SMTP id k15mr12420066wro.230.1581481714584; 
 Tue, 11 Feb 2020 20:28:34 -0800 (PST)
MIME-Version: 1.0
References: <20200212014822.28684-1-atish.patra@wdc.com>
 <20200212014822.28684-8-atish.patra@wdc.com>
In-Reply-To: <20200212014822.28684-8-atish.patra@wdc.com>
From: Anup Patel <anup@brainfault.org>
Date: Wed, 12 Feb 2020 09:58:23 +0530
Message-ID: <CAAhSdy3RVpbum-O_ercZJkiEjDYPT-zrEHvYvMUQqE8+P82ihA@mail.gmail.com>
Subject: Re: [PATCH v8 07/11] RISC-V: Add cpu_ops and modify default booting
 method
To: Atish Patra <atish.patra@wdc.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_202836_872198_F5CF4CE8 
X-CRM114-Status: GOOD (  27.90  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Jason Cooper <jason@lakedaemon.net>,
 Marc Zyngier <maz@kernel.org>, Daniel Lezcano <daniel.lezcano@linaro.org>,
 Heiko Carstens <heiko.carstens@de.ibm.com>,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 Mike Rapoport <rppt@linux.ibm.com>, Vincent Chen <vincent.chen@sifive.com>,
 Mao Han <han_mao@c-sky.com>, Geert Uytterhoeven <geert@linux-m68k.org>,
 "Eric W. Biederman" <ebiederm@xmission.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Michael Ellerman <mpe@ellerman.id.au>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Palmer Dabbelt <palmer@dabbelt.com>,
 linux-riscv <linux-riscv@lists.infradead.org>, Borislav Petkov <bp@suse.de>,
 Thomas Gleixner <tglx@linutronix.de>, Allison Randal <allison@lohutok.net>,
 Kees Cook <keescook@chromium.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, Feb 12, 2020 at 7:21 AM Atish Patra <atish.patra@wdc.com> wrote:
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
>  arch/riscv/include/asm/cpu_ops.h     | 34 ++++++++++++++++++
>  arch/riscv/kernel/Makefile           |  2 ++
>  arch/riscv/kernel/cpu_ops.c          | 40 +++++++++++++++++++++
>  arch/riscv/kernel/cpu_ops_spinwait.c | 42 ++++++++++++++++++++++
>  arch/riscv/kernel/smpboot.c          | 54 +++++++++++++++++-----------
>  5 files changed, 151 insertions(+), 21 deletions(-)
>  create mode 100644 arch/riscv/include/asm/cpu_ops.h
>  create mode 100644 arch/riscv/kernel/cpu_ops.c
>  create mode 100644 arch/riscv/kernel/cpu_ops_spinwait.c
>
> diff --git a/arch/riscv/include/asm/cpu_ops.h b/arch/riscv/include/asm/cpu_ops.h
> new file mode 100644
> index 000000000000..7db276284009
> --- /dev/null
> +++ b/arch/riscv/include/asm/cpu_ops.h
> @@ -0,0 +1,34 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
> +/*
> + * Copyright (c) 2019 Western Digital Corporation or its affiliates.
> + * Based on arch/arm64/include/asm/cpu_ops.h
> + */
> +#ifndef __ASM_CPU_OPS_H
> +#define __ASM_CPU_OPS_H
> +
> +#include <linux/init.h>
> +#include <linux/sched.h>
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
> +int __init cpu_set_ops(int cpu);

This function is more like probing for appropriate cpu_ops. Also,
I think we don't need to return anything from cpu_set_ops().

Maybe rename it to "void cpu_probe_ops(int cpu)" ?

> +void cpu_update_secondary_bootdata(unsigned int cpuid,
> +                                  struct task_struct *tidle);
> +
> +#endif /* ifndef __ASM_CPU_OPS_H */
> diff --git a/arch/riscv/kernel/Makefile b/arch/riscv/kernel/Makefile
> index f40205cb9a22..f81a6ff88005 100644
> --- a/arch/riscv/kernel/Makefile
> +++ b/arch/riscv/kernel/Makefile
> @@ -32,6 +32,8 @@ obj-$(CONFIG_RISCV_M_MODE)    += clint.o
>  obj-$(CONFIG_FPU)              += fpu.o
>  obj-$(CONFIG_SMP)              += smpboot.o
>  obj-$(CONFIG_SMP)              += smp.o
> +obj-$(CONFIG_SMP)              += cpu_ops.o
> +obj-$(CONFIG_SMP)              += cpu_ops_spinwait.o
>  obj-$(CONFIG_MODULES)          += module.o
>  obj-$(CONFIG_MODULE_SECTIONS)  += module-sections.o
>
> diff --git a/arch/riscv/kernel/cpu_ops.c b/arch/riscv/kernel/cpu_ops.c
> new file mode 100644
> index 000000000000..1085def3735a
> --- /dev/null
> +++ b/arch/riscv/kernel/cpu_ops.c
> @@ -0,0 +1,40 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * Copyright (c) 2020 Western Digital Corporation or its affiliates.
> + */
> +
> +#include <linux/errno.h>
> +#include <linux/mm.h>
> +#include <linux/of.h>
> +#include <linux/string.h>
> +#include <linux/sched.h>
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
> +extern const struct cpu_operations cpu_ops_spinwait;
> +
> +void cpu_update_secondary_bootdata(unsigned int cpuid,
> +                                  struct task_struct *tidle)
> +{
> +       int hartid = cpuid_to_hartid_map(cpuid);
> +
> +       /* Make sure tidle is updated */
> +       smp_mb();
> +       WRITE_ONCE(__cpu_up_stack_pointer[hartid],
> +                 task_stack_page(tidle) + THREAD_SIZE);
> +       WRITE_ONCE(__cpu_up_task_pointer[hartid], tidle);
> +}
> +
> +int __init cpu_set_ops(int cpuid)

Maybe rename it to "void cpu_probe_ops(int cpu)" ?

> +{
> +       cpu_ops[cpuid] = &cpu_ops_spinwait;
> +
> +       return 0;
> +}
> diff --git a/arch/riscv/kernel/cpu_ops_spinwait.c b/arch/riscv/kernel/cpu_ops_spinwait.c
> new file mode 100644
> index 000000000000..f828e660294e
> --- /dev/null
> +++ b/arch/riscv/kernel/cpu_ops_spinwait.c
> @@ -0,0 +1,42 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * Copyright (c) 2020 Western Digital Corporation or its affiliates.
> + */
> +
> +#include <linux/errno.h>
> +#include <linux/of.h>
> +#include <linux/string.h>
> +#include <asm/cpu_ops.h>
> +#include <asm/sbi.h>
> +#include <asm/smp.h>
> +
> +const struct cpu_operations cpu_ops_spinwait;
> +
> +static int spinwait_cpu_prepare(unsigned int cpuid)
> +{
> +       if (!cpu_ops_spinwait.cpu_start) {
> +               pr_err("cpu start method not defined for CPU [%d]\n", cpuid);
> +               return -ENODEV;
> +       }
> +       return 0;
> +}
> +
> +static int spinwait_cpu_start(unsigned int cpuid, struct task_struct *tidle)
> +{
> +       /*
> +        * In this protocol, all cpus boot on their own accord.  _start
> +        * selects the first cpu to boot the kernel and causes the remainder
> +        * of the cpus to spin in a loop waiting for their stack pointer to be
> +        * setup by that main cpu.  Writing to bootdata (i.e __cpu_up_stack_pointer) signals to
> +        * the spinning cpus that they can continue the boot process.
> +        */
> +       cpu_update_secondary_bootdata(cpuid, tidle);
> +
> +       return 0;
> +}
> +
> +const struct cpu_operations cpu_ops_spinwait = {
> +       .name           = "spinwait",
> +       .cpu_prepare    = spinwait_cpu_prepare,
> +       .cpu_start      = spinwait_cpu_start,
> +};
> diff --git a/arch/riscv/kernel/smpboot.c b/arch/riscv/kernel/smpboot.c
> index 8bc01f0ca73b..2ee41c779a16 100644
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
> @@ -65,6 +70,8 @@ void __init setup_smp(void)
>         bool found_boot_cpu = false;
>         int cpuid = 1;
>
> +       cpu_set_ops(0);
> +
>         for_each_of_cpu_node(dn) {
>                 hart = riscv_of_processor_hartid(dn);
>                 if (hart < 0)
> @@ -92,36 +99,41 @@ void __init setup_smp(void)
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

Make this function static.

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

Apart from minor comments above, looks good to me.

Reviewed-by: Anup Patel <anup@brainfault.org>

Regards,
Anup

