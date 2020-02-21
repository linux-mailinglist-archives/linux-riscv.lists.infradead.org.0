Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B70F2166F7D
	for <lists+linux-riscv@lfdr.de>; Fri, 21 Feb 2020 07:12:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=a/3xB0RkiB7baFHATBbKKo2gUoBKvTJVWGEf9JZU5rw=; b=Nog6D39L55J2TJ0SkU3ISwHhJ
	+Ymgnb1/Ye7UF10xh6BdwI35t1mXq8cP/c4tywnOdShcXxovcZ5OTu+qCnWvIbAXgtlSjgIbDtOe9
	gOgZRMtJ4Evpm+Rp0oTk0CqFXYG1U8z+AMN7F2v6FNRaxA40NUedLQs07EMHeNGzk/N6z23Zx5Nmg
	g+9TmH9uKppXMbKkFA7a7UqIEdWgfy6EFhSXf+K1Pesb93LLrDUupJc4GINqbqFFJjnDMHGWbgexc
	PAtHKFQxk2Hbqt1iH/EXdHyJ7ECKeAhczeebI4b2lw7hUvDfA3SWpuLEMZq6tLWZkIRO8T2J27ypn
	xJv3jlxpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j51Y8-0004DE-Rv; Fri, 21 Feb 2020 06:12:32 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j51Y4-0004CP-PK
 for linux-riscv@lists.infradead.org; Fri, 21 Feb 2020 06:12:30 +0000
Received: by mail-wr1-x442.google.com with SMTP id m16so614910wrx.11
 for <linux-riscv@lists.infradead.org>; Thu, 20 Feb 2020 22:12:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=a/3xB0RkiB7baFHATBbKKo2gUoBKvTJVWGEf9JZU5rw=;
 b=Yca2hIg1iMX8Pd051IhevFUW+RX44TIW1j7XPpjUNrCGQFD6zjcIqHAsmEsjv8BzEZ
 hHaSEh2FGkSYDe3A2YRFDIftCjQ4BjMzEzpg+OSZWNCK6OZBqf7IBrnUGK79fTBqL640
 MoC4CNVjBGwskQvM4Vg5aOnNtTgypKzpg2yAfrGDuWluUTFeUZqH+j4yAtbQ2pjQ5L4Z
 sa/NCmxLcNC59R9K/SIGcAbKpP6f0ynSK+BJUjFZ6P2HbcArT6nwKiotGm+dl2BeUsem
 YJQjEn2/HvOl4nj1jO1zijoe3QiGgoBzXX315TmTa5IN2NxxsynTS1l6rxR4laau6nX0
 uTlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=a/3xB0RkiB7baFHATBbKKo2gUoBKvTJVWGEf9JZU5rw=;
 b=f7DVO8qdj3T3Hs62QLEsD5KPJUhoJVbIHc+O6Is50By5WvKZfGQ02Lr5hsvDcv+rt4
 KKBrWWVhkHWISpIvFeuow2mjDGZhC0mShYClViZxOgO35ryjiK8i/Z1EDeQCY+XYh27l
 yzbC1Z+m/LzLO/9f8NDIR5i2GMQDyIOkedLDrELxXMo/l0F9+8vWxj+LNe8+TIDTCxN6
 hZOnpqxK2tP78YNkBdfbfRJOHDLKCfWTMvclF31a9vkAIf8ioVGU/9ilOfgzkhcwj0Cs
 oXVtp8oSjhBGYJ+4GrfiLBDwyJjdsCWezefW3lI8jIaP/meoy50vHjJ3bqwGjs5uzcK6
 sZlA==
X-Gm-Message-State: APjAAAXFNFLGpUKX98n5saMvM29ohFSUFYbrmaOC0z6niNmTsMDwKmCT
 NL8DavYQv8mHC1grwhHFAHMPx585r8jdF5XV2YRn+g==
X-Google-Smtp-Source: APXvYqw/wJV/aP71pHIx9ULj6Aq0vo1KUVXXwu51ia8m/F9FKNWcynrTp3OrNJr68GOOPhqd6bMlA62uOlc70XeUTLc=
X-Received: by 2002:a5d:538e:: with SMTP id d14mr48492068wrv.358.1582265544274; 
 Thu, 20 Feb 2020 22:12:24 -0800 (PST)
MIME-Version: 1.0
References: <20200221004413.12869-1-atish.patra@wdc.com>
 <20200221004413.12869-12-atish.patra@wdc.com>
In-Reply-To: <20200221004413.12869-12-atish.patra@wdc.com>
From: Anup Patel <anup@brainfault.org>
Date: Fri, 21 Feb 2020 11:42:12 +0530
Message-ID: <CAAhSdy2tHH8e5j9nBdjAc-WoNrmTZxr_S4rWBUFvBOnRTJ86Eg@mail.gmail.com>
Subject: Re: [PATCH v9 11/12] RISC-V: Support cpu hotplug
To: Atish Patra <atish.patra@wdc.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_221228_828533_4B197FC9 
X-CRM114-Status: GOOD (  27.93  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
 Nick Hu <nickhu@andestech.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Heiko Carstens <heiko.carstens@de.ibm.com>,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 Mike Rapoport <rppt@linux.ibm.com>,
 "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
 Vincent Chen <vincent.chen@sifive.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 "Eric W. Biederman" <ebiederm@xmission.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, Marc Zyngier <maz@kernel.org>,
 Palmer Dabbelt <palmer@dabbelt.com>,
 linux-riscv <linux-riscv@lists.infradead.org>, Borislav Petkov <bp@suse.de>,
 Thomas Gleixner <tglx@linutronix.de>, Mao Han <han_mao@c-sky.com>,
 Kees Cook <keescook@chromium.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, Feb 21, 2020 at 6:14 AM Atish Patra <atish.patra@wdc.com> wrote:
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
> index 8c0f5385fa30..27bfc7947e44 100644
> --- a/arch/riscv/Kconfig
> +++ b/arch/riscv/Kconfig
> @@ -20,7 +20,6 @@ config RISCV
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
> index daf29f70407d..efd6700d245d 100644
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

Use Copyright (C) 2020 here and all other patches.

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
> index 70d02dfe0ab8..8848c5b6e1c4 100644
> --- a/arch/riscv/kernel/cpu_ops_sbi.c
> +++ b/arch/riscv/kernel/cpu_ops_sbi.c
> @@ -74,8 +74,42 @@ static int sbi_cpu_prepare(unsigned int cpuid)
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
> index 582ecbed6442..b3f8986a3b25 100644
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
> @@ -43,6 +44,7 @@ struct screen_info screen_info = {
>  /* The lucky hart to first increment this variable will boot the other cores */
>  atomic_t hart_lottery;
>  unsigned long boot_cpu_hartid;
> +static DEFINE_PER_CPU(struct cpu, cpu_devices);
>
>  void __init parse_dtb(void)
>  {
> @@ -90,3 +92,18 @@ void __init setup_arch(char **cmdline_p)
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
> 2.25.0
>

Otherwise, looks good to me.

Reviewed-by: Anup Patel <anup@brainfault.org>

Regards,
Anup

