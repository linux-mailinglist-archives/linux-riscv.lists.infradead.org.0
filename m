Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46AE815A068
	for <lists+linux-riscv@lfdr.de>; Wed, 12 Feb 2020 06:14:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Y3fzHt3qCYzwFUp+l6a3Bc8fRcXaZgeptW6UnJv0XZM=; b=USb26DquzFiUGansURQczeoY5
	nPdumt0VVFyAfrOZj4pZ+QS+HzxQMDBBt1SFnxtvp2eFXItGpS8tV7EkCNJzBMKCGq6sRXMSVAp4K
	9UDjhkjx6a8aeumDDjqgHcN74TqT19RtsCy6G7K+5tApcM5MuYUgkICVUUD7FVO2dFQ1pIx95R1c1
	h/+gszxSuSnGU1ZMLNMc4hWMJZnWw4BF6aQ4+nXcFqu/hFb3XfnOzSEFAH25fykTOaiJTI+RDWaAo
	FZwXCP0uWkVnIGz+rIx5tRDghqVnHxYo+bp26lzyiCm/5HAHkuKUb+rRWoQXBlaMAGLz7XB4qjdsy
	0gDWqA7Qw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1kLU-0007ea-N3; Wed, 12 Feb 2020 05:13:56 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1kLQ-0007eB-Kl
 for linux-riscv@lists.infradead.org; Wed, 12 Feb 2020 05:13:54 +0000
Received: by mail-wr1-x442.google.com with SMTP id g3so544610wrs.12
 for <linux-riscv@lists.infradead.org>; Tue, 11 Feb 2020 21:13:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Y3fzHt3qCYzwFUp+l6a3Bc8fRcXaZgeptW6UnJv0XZM=;
 b=zd0M/IZaBOrfMRA0OhthGXYrJ9/h+Hb7RH3qpRhGmqoAfBk7iQNKKXgrIytQAN6jtA
 qhb/SdOEng3k9Mk1+tBUW9klmQimzuHxmm8ORoAL30V3ebfgUVdmUwTOhZyKa6/ZUuVj
 FVzWtNunADcTqarjNRqlLOC6DjRjqumAUQzdQ4jYVuI87md+ww+e4s9Fdlr8E1H/iEUR
 8e1jWSp/zOwtz67TpvIVY/YosO7P2EbnFm59b/z8Of50H4L5/beTTJTlZmls0u2qrqBv
 7cDVo9zdhlPFt9HlpwflncTCoHo4igCbQLDJ5/v4E08zRLT3h4UqygMK8msgW61de5TN
 1rNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Y3fzHt3qCYzwFUp+l6a3Bc8fRcXaZgeptW6UnJv0XZM=;
 b=lWSKKI0myJF5h2uoqwZux1E9OLfemcS5j3OEiTYxFKF7BEyumm7Z56SmOodtmivqgY
 2ZkWKBIOIByFVr9lhCQCAVZOOn7gQHTB+t8OPjG3Svyok6AEiBxjonELr9gQeJoeL+G+
 3W/D9JgjCvCzDQ+i53kzxTO9WGzSFdfv/pnztElSw2LLKFgsTaeyi+HQKQyWTw/yaT4R
 A+E19Z4tSW6bDl+2p8SKQVTfPF3fWBT68daVxSc0oltCvo916M/55OST1MdQD1T2x4bh
 tD5aAkAaDKy+4KTzDNQ9Eb3RqY2xGeSpWVzqTc3mN3r/5Io/oKp6yeYO6oskpdED5/xo
 NcNQ==
X-Gm-Message-State: APjAAAWqwO5LP2Hklg5UGocM4KNoJO51sg1GXwllvLGduTp0+zdH0UXq
 2RPcLzTFNsbybMJW+u82CAl3DJTQwhONsz+8TZvdfw==
X-Google-Smtp-Source: APXvYqyx4mpTsPKzZH6DOBzH0VcHgEtFD/Lw3FulkiYBmpKYp4ANHGoknCZ3GaVfbIuvWt9B0BboN1rAumY/QNFjLso=
X-Received: by 2002:a5d:5345:: with SMTP id t5mr13921853wrv.0.1581484430702;
 Tue, 11 Feb 2020 21:13:50 -0800 (PST)
MIME-Version: 1.0
References: <20200212014822.28684-1-atish.patra@wdc.com>
 <20200212014822.28684-12-atish.patra@wdc.com>
In-Reply-To: <20200212014822.28684-12-atish.patra@wdc.com>
From: Anup Patel <anup@brainfault.org>
Date: Wed, 12 Feb 2020 10:43:39 +0530
Message-ID: <CAAhSdy1CDu9qf5E9LVoxq8zCyKLnc8_W1vhTX5nUf6qY9hd3cA@mail.gmail.com>
Subject: Re: [PATCH v8 11/11] RISC-V: Support cpu hotplug
To: Atish Patra <atish.patra@wdc.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_211352_687391_AF122929 
X-CRM114-Status: GOOD (  28.08  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
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
> This patch enable support for cpu hotplug in RISC-V. It uses SBI HSM
> extension to online/offline any hart. As a result, the harts are
> returned to firmware once they are offline. If the harts are brought
> online afterwards, they re-enter Linux kernel as if a secondary hart
> booted for the first time. All booting requirements are honored during
> this process.
>
> Tested both on QEMU and HighFive Unleashed board with. Test result follows.
>
> ---------------------------------------------------
> Offline cpu 2
> ---------------------------------------------------
> $ echo 0 > /sys/devices/system/cpu/cpu2/online
> [   32.828684] CPU2: off
> $ cat /proc/cpuinfo
> processor       : 0
> hart            : 0
> isa             : rv64imafdcsu
> mmu             : sv48
>
> processor       : 1
> hart            : 1
> isa             : rv64imafdcsu
> mmu             : sv48
>
> processor       : 3
> hart            : 3
> isa             : rv64imafdcsu
> mmu             : sv48
>
> processor       : 4
> hart            : 4
> isa             : rv64imafdcsu
> mmu             : sv48
>
> processor       : 5
> hart            : 5
> isa             : rv64imafdcsu
> mmu             : sv48
>
> processor       : 6
> hart            : 6
> isa             : rv64imafdcsu
> mmu             : sv48
>
> processor       : 7
> hart            : 7
> isa             : rv64imafdcsu
> mmu             : sv48
>
> ---------------------------------------------------
> online cpu 2
> ---------------------------------------------------
> $ echo 1 > /sys/devices/system/cpu/cpu2/online
> $ cat /proc/cpuinfo
> processor       : 0
> hart            : 0
> isa             : rv64imafdcsu
> mmu             : sv48
>
> processor       : 1
> hart            : 1
> isa             : rv64imafdcsu
> mmu             : sv48
>
> processor       : 2
> hart            : 2
> isa             : rv64imafdcsu
> mmu             : sv48
>
> processor       : 3
> hart            : 3
> isa             : rv64imafdcsu
> mmu             : sv48
>
> processor       : 4
> hart            : 4
> isa             : rv64imafdcsu
> mmu             : sv48
>
> processor       : 5
> hart            : 5
> isa             : rv64imafdcsu
> mmu             : sv48
>
> processor       : 6
> hart            : 6
> isa             : rv64imafdcsu
> mmu             : sv48
>
> processor       : 7
> hart            : 7
> isa             : rv64imafdcsu
> mmu             : sv48
>
> Signed-off-by: Atish Patra <atish.patra@wdc.com>
> ---
>  arch/riscv/Kconfig               | 12 ++++-
>  arch/riscv/include/asm/cpu_ops.h | 12 +++++
>  arch/riscv/include/asm/smp.h     | 17 +++++++
>  arch/riscv/kernel/Makefile       |  1 +
>  arch/riscv/kernel/cpu-hotplug.c  | 87 ++++++++++++++++++++++++++++++++
>  arch/riscv/kernel/cpu_ops_sbi.c  | 34 +++++++++++++
>  arch/riscv/kernel/setup.c        | 19 ++++++-
>  7 files changed, 180 insertions(+), 2 deletions(-)
>  create mode 100644 arch/riscv/kernel/cpu-hotplug.c
>
> diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
> index 2afe1382dc36..ffd9f4dbd4fc 100644
> --- a/arch/riscv/Kconfig
> +++ b/arch/riscv/Kconfig
> @@ -22,7 +22,6 @@ config RISCV
>         select CLONE_BACKWARDS
>         select COMMON_CLK
>         select GENERIC_CLOCKEVENTS
> -       select GENERIC_CPU_DEVICES
>         select GENERIC_IRQ_SHOW
>         select GENERIC_PCI_IOMAP
>         select GENERIC_SCHED_CLOCK
> @@ -247,6 +246,17 @@ config NR_CPUS
>         depends on SMP
>         default "8"
>
> +config HOTPLUG_CPU
> +       bool "Support for hot-pluggable CPUs"
> +       depends on SMP
> +       select GENERIC_IRQ_MIGRATION
> +       help
> +
> +         Say Y here to experiment with turning CPUs off and on.  CPUs
> +         can be controlled through /sys/devices/system/cpu.
> +
> +         Say N if you want to disable CPU hotplug.
> +
>  choice
>         prompt "CPU Tuning"
>         default TUNE_GENERIC
> diff --git a/arch/riscv/include/asm/cpu_ops.h b/arch/riscv/include/asm/cpu_ops.h
> index 7db276284009..df92d20e3a50 100644
> --- a/arch/riscv/include/asm/cpu_ops.h
> +++ b/arch/riscv/include/asm/cpu_ops.h
> @@ -18,12 +18,24 @@
>   *                     is a mechanism for doing so, tests whether it is
>   *                     possible to boot the given HART.
>   * @cpu_start:         Boots a cpu into the kernel.
> + * @cpu_disable:       Prepares a cpu to die. May fail for some
> + *                     mechanism-specific reason, which will cause the hot
> + *                     unplug to be aborted. Called from the cpu to be killed.
> + * @cpu_stop:          Makes a cpu leave the kernel. Must not fail. Called from
> + *                     the cpu being stopped.
> + * @cpu_is_stopped:    Ensures a cpu has left the kernel. Called from another
> + *                     cpu.
>   */
>  struct cpu_operations {
>         const char      *name;
>         int             (*cpu_prepare)(unsigned int cpu);
>         int             (*cpu_start)(unsigned int cpu,
>                                      struct task_struct *tidle);
> +#ifdef CONFIG_HOTPLUG_CPU
> +       int             (*cpu_disable)(unsigned int cpu);
> +       void            (*cpu_stop)(void);
> +       int             (*cpu_is_stopped)(unsigned int cpu);
> +#endif
>  };
>
>  extern const struct cpu_operations *cpu_ops[NR_CPUS];
> diff --git a/arch/riscv/include/asm/smp.h b/arch/riscv/include/asm/smp.h
> index 023f74fb8b3b..f4c7cfda6b7f 100644
> --- a/arch/riscv/include/asm/smp.h
> +++ b/arch/riscv/include/asm/smp.h
> @@ -43,6 +43,13 @@ void riscv_cpuid_to_hartid_mask(const struct cpumask *in, struct cpumask *out);
>   */
>  #define raw_smp_processor_id() (current_thread_info()->cpu)
>
> +#if defined CONFIG_HOTPLUG_CPU
> +int __cpu_disable(void);
> +void __cpu_die(unsigned int cpu);
> +void cpu_stop(void);
> +#else
> +#endif /* CONFIG_HOTPLUG_CPU */
> +
>  #else
>
>  static inline void show_ipi_stats(struct seq_file *p, int prec)
> @@ -69,4 +76,14 @@ static inline void riscv_cpuid_to_hartid_mask(const struct cpumask *in,
>  }
>
>  #endif /* CONFIG_SMP */
> +
> +#if defined(CONFIG_HOTPLUG_CPU) && (CONFIG_SMP)
> +bool cpu_has_hotplug(unsigned int cpu);
> +#else
> +static inline bool cpu_has_hotplug(unsigned int cpu)
> +{
> +       return false;
> +}
> +#endif
> +
>  #endif /* _ASM_RISCV_SMP_H */
> diff --git a/arch/riscv/kernel/Makefile b/arch/riscv/kernel/Makefile
> index a0be34b96846..9601ac907f70 100644
> --- a/arch/riscv/kernel/Makefile
> +++ b/arch/riscv/kernel/Makefile
> @@ -47,5 +47,6 @@ obj-$(CONFIG_RISCV_SBI)               += sbi.o
>  ifeq ($(CONFIG_RISCV_SBI), y)
>  obj-$(CONFIG_SMP) += cpu_ops_sbi.o
>  endif
> +obj-$(CONFIG_HOTPLUG_CPU)      += cpu-hotplug.o
>
>  clean:
> diff --git a/arch/riscv/kernel/cpu-hotplug.c b/arch/riscv/kernel/cpu-hotplug.c
> new file mode 100644
> index 000000000000..2a37cfb6eb46
> --- /dev/null
> +++ b/arch/riscv/kernel/cpu-hotplug.c
> @@ -0,0 +1,87 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright (C) 2018 Western Digital Corporation or its affiliates.

Use Copyright (C) 2020

> + */
> +
> +#include <linux/kernel.h>
> +#include <linux/mm.h>
> +#include <linux/sched.h>
> +#include <linux/err.h>
> +#include <linux/irq.h>
> +#include <linux/cpu.h>
> +#include <linux/sched/hotplug.h>
> +#include <asm/irq.h>
> +#include <asm/cpu_ops.h>
> +#include <asm/sbi.h>
> +
> +void cpu_stop(void);
> +void arch_cpu_idle_dead(void)
> +{
> +       cpu_stop();
> +}
> +
> +bool cpu_has_hotplug(unsigned int cpu)
> +{
> +       if (cpu_ops[cpu]->cpu_stop)
> +               return true;
> +
> +       return false;
> +}
> +
> +/*
> + * __cpu_disable runs on the processor to be shutdown.
> + */
> +int __cpu_disable(void)
> +{
> +       int ret = 0;
> +       unsigned int cpu = smp_processor_id();
> +
> +       if (!cpu_ops[cpu] || !cpu_ops[cpu]->cpu_stop)
> +               return -EOPNOTSUPP;
> +
> +       if (cpu_ops[cpu]->cpu_disable)
> +               ret = cpu_ops[cpu]->cpu_disable(cpu);
> +
> +       if (ret)
> +               return ret;
> +
> +       remove_cpu_topology(cpu);
> +       set_cpu_online(cpu, false);
> +       irq_migrate_all_off_this_cpu();
> +
> +       return ret;
> +}
> +
> +/*
> + * Called on the thread which is asking for a CPU to be shutdown.
> + */
> +void __cpu_die(unsigned int cpu)
> +{
> +       int ret = 0;
> +
> +       if (!cpu_wait_death(cpu, 5)) {
> +               pr_err("CPU %u: didn't die\n", cpu);
> +               return;
> +       }
> +       pr_notice("CPU%u: off\n", cpu);
> +
> +       /* Verify from the firmware if the cpu is really stopped*/
> +       if (cpu_ops[cpu]->cpu_is_stopped)
> +               ret = cpu_ops[cpu]->cpu_is_stopped(cpu);
> +       if (ret)
> +               pr_warn("CPU%d may not have stopped: %d\n", cpu, ret);
> +}
> +
> +/*
> + * Called from the idle thread for the CPU which has been shutdown.
> + */
> +void cpu_stop(void)
> +{
> +       idle_task_exit();
> +
> +       (void)cpu_report_death();
> +
> +       cpu_ops[smp_processor_id()]->cpu_stop();
> +       /* It should never reach here */
> +       BUG();
> +}
> diff --git a/arch/riscv/kernel/cpu_ops_sbi.c b/arch/riscv/kernel/cpu_ops_sbi.c
> index 31487a80c3b8..3f77db8a256a 100644
> --- a/arch/riscv/kernel/cpu_ops_sbi.c
> +++ b/arch/riscv/kernel/cpu_ops_sbi.c
> @@ -72,8 +72,42 @@ static int sbi_cpu_prepare(unsigned int cpuid)
>         return 0;
>  }
>
> +#ifdef CONFIG_HOTPLUG_CPU
> +static int sbi_cpu_disable(unsigned int cpuid)
> +{
> +       if (!cpu_ops_sbi.cpu_stop)
> +               return -EOPNOTSUPP;
> +       return 0;
> +}
> +
> +static void sbi_cpu_stop(void)
> +{
> +       int ret;
> +
> +       ret = sbi_hsm_hart_stop();
> +       pr_crit("Unable to stop the cpu %u (%d)\n", smp_processor_id(), ret);
> +}
> +
> +static int sbi_cpu_is_stopped(unsigned int cpuid)
> +{
> +       int rc;
> +       int hartid = cpuid_to_hartid_map(cpuid);
> +
> +       rc = sbi_hsm_hart_get_status(hartid);
> +
> +       if (rc == SBI_HSM_HART_STATUS_NOT_AVAILABLE)
> +               return 0;
> +       return rc;
> +}
> +#endif
> +
>  const struct cpu_operations cpu_ops_sbi = {
>         .name           = "sbi",
>         .cpu_prepare    = sbi_cpu_prepare,
>         .cpu_start      = sbi_cpu_start,
> +#ifdef CONFIG_HOTPLUG_CPU
> +       .cpu_disable    = sbi_cpu_disable,
> +       .cpu_stop       = sbi_cpu_stop,
> +       .cpu_is_stopped = sbi_cpu_is_stopped,
> +#endif
>  };
> diff --git a/arch/riscv/kernel/setup.c b/arch/riscv/kernel/setup.c
> index 64d17cbae66b..21543a732a3d 100644
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
> @@ -42,6 +43,7 @@ struct screen_info screen_info = {
>  /* The lucky hart to first increment this variable will boot the other cores */
>  atomic_t hart_lottery;
>  unsigned long boot_cpu_hartid;
> +static DEFINE_PER_CPU(struct cpu, cpu_devices);
>
>  void __init parse_dtb(void)
>  {
> @@ -89,3 +91,18 @@ void __init setup_arch(char **cmdline_p)
>
>         riscv_fill_hwcap();
>  }
> +
> +static int __init topology_init(void)
> +{
> +       int i;
> +
> +       for_each_possible_cpu(i) {
> +               struct cpu *cpu = &per_cpu(cpu_devices, i);
> +
> +               cpu->hotpluggable = cpu_has_hotplug(i);
> +               register_cpu(cpu, i);
> +       }
> +
> +       return 0;
> +}
> +subsys_initcall(topology_init);
> --
> 2.24.0
>

Looks good to me.

Reviewed-by: Anup Patel <anup@brainfault.org>

Regards,
Anup

