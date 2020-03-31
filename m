Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF554199E1B
	for <lists+linux-riscv@lfdr.de>; Tue, 31 Mar 2020 20:35:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Mime-Version:Message-ID:To:From:
	In-Reply-To:Subject:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=yKm3QuElovNuOAdB1AlqOjnBdq3ajrD+IliidLbQDiQ=; b=PC9BafB33a9lS1
	j/+nfPtTtyYM8q1/LNMQiAxZP7LxdTaYmM7J+zmOBRobvCvrPuBecelE5o36NS1ql4sG4krTp4tIa
	JHfegeFiWXxTxzARu96YI0piROHuSpcbDzWSMflX44SSnzN/+Z7Ipv4UHNwCeDNr+59q+pMqkyLiS
	MI+TCqsO10hPwFC+sk242h5px++2VczzOjSzWM2gRmm0mXlm7tVagXDZvw482tjto+dcPxDkhJYUQ
	9BLvKOmiu8nUJBfM3ibzX5IGoNu2qNRDK8SWxn5HvhAMZZ3xvdFkLTVeNl0JV6pcULFx0cOlej1Ji
	RqjmSYqJGDn5fXkR0v3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJLjW-0006hA-8h; Tue, 31 Mar 2020 18:35:30 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJLjS-0006gf-1Q
 for linux-riscv@lists.infradead.org; Tue, 31 Mar 2020 18:35:28 +0000
Received: by mail-pj1-x1041.google.com with SMTP id v13so1444873pjb.0
 for <linux-riscv@lists.infradead.org>; Tue, 31 Mar 2020 11:35:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
 h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
 :content-transfer-encoding;
 bh=yKm3QuElovNuOAdB1AlqOjnBdq3ajrD+IliidLbQDiQ=;
 b=yfvcJOGv4I3AN0el/GOAB9eZVeGPuHwun5KOy0+dJTs1nImQdIxA1O1ltudQHl6iN9
 fnv9+C/APbO0OenYMSaTP1GhKxMptNvaIARh4TP1/hauK7hpRYbP/702H+j4Etx4EswH
 FuexHwZkosSCnYbxLm/aJwX36oI04bk2brNBKK5C1QxEOITJYlfJa/HXXZeii/vOzwKU
 HBo7bPMN3zX8EZ449+Fn4Pa3gKyvRJZNZ5HRnOTZRJUzA3/iwK5Suijaxirru7fdJUqG
 HkEvBARBXAKmHuTP22CIXj07pRLJThIOX4ZteHIhe84y351WLbIcZYfUlNqrOmZyCq/b
 SS5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=yKm3QuElovNuOAdB1AlqOjnBdq3ajrD+IliidLbQDiQ=;
 b=VR8+n02IhrM9yJEEe4rQWvOGCa+sAcjyID2B0K1KDOiuJ30dzduTsqkwLUmF+N1ZWQ
 H2SkwGlMG8+jZPY6v38860d0g4pAWyMuk685nQBUCf4erM7SU35MgxIY6it45iRTAWCQ
 B6TEO57nLjadIf44+k6+cNYP5l+890RZKZDOW1XFx77q5VOCowi8snc3XN1qfR6l3w0S
 xJWx+HBHDlymrNdyNrdEfAmgseehGR0Sd7DrY95aY2kFjV/qEg66ZozquLT97smZRZJw
 ywXyMZnPIjOdAz26B7aKUNRr/4pFvS1xkWdMWbRLL53ZvKSwsgo1IE9gJ752ZEqkRVyg
 tQOw==
X-Gm-Message-State: AGi0PubXEISvSqgXBlmRGraKES1z1ee2NC2ZEZPtMA6+H7T4iVMortQo
 Di5WjnendnqtYHCa+D0jnM5yog==
X-Google-Smtp-Source: APiQypJWty9jeuC6J0m7sudEE4XkeJrYCfEuWlWrRYKsX+wj9d7FuYQU0iArrIURv806y+GzF6ufZw==
X-Received: by 2002:a17:90b:24c:: with SMTP id
 fz12mr223055pjb.85.1585679724172; 
 Tue, 31 Mar 2020 11:35:24 -0700 (PDT)
Received: from localhost (c-67-161-15-180.hsd1.ca.comcast.net. [67.161.15.180])
 by smtp.gmail.com with ESMTPSA id y131sm12888666pfg.25.2020.03.31.11.35.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 31 Mar 2020 11:35:23 -0700 (PDT)
Date: Tue, 31 Mar 2020 11:35:23 -0700 (PDT)
X-Google-Original-Date: Tue, 31 Mar 2020 11:33:02 PDT (-0700)
Subject: Re: [PATCH v11 11/11] RISC-V: Support cpu hotplug
In-Reply-To: <20200318011144.91532-12-atish.patra@wdc.com>
From: Palmer Dabbelt <palmer@dabbelt.com>
To: Atish Patra <Atish.Patra@wdc.com>
Message-ID: <mhng-ee543c6f-129c-4ce0-9c1f-ae456b7443be@palmerdabbelt-glaptop1>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_113526_110838_81D83593 
X-CRM114-Status: GOOD (  29.97  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1041 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: aou@eecs.berkeley.edu, zong.li@sifive.com, nickhu@andestech.com,
 vincent.chen@sifive.com, anup@brainfault.org, linux-kernel@vger.kernel.org,
 rppt@linux.ibm.com, Atish Patra <Atish.Patra@wdc.com>, gary@garyguo.net,
 Paul Walmsley <paul.walmsley@sifive.com>, greentime.hu@sifive.com,
 linux-riscv@lists.infradead.org, bmeng.cn@gmail.com, tglx@linutronix.de,
 han_mao@c-sky.com
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, 17 Mar 2020 18:11:44 PDT (-0700), Atish Patra wrote:
> This patch enable support for cpu hotplug in RISC-V. It uses SBI HSM
> extension to online/offline any hart. As a result, the harts are
> returned to firmware once they are offline. If the harts are brought
> online afterwards, they re-enter Linux kernel as if a secondary hart
> booted for the first time. All booting requirements are honored during
> this process.
>
> Tested both on QEMU and HighFive Unleashed board with. Test result follows.

I had to jump through some hoops to apply this one on for-next.  It should be
f1e58583b9c7 ("RISC-V: Support cpu hotplug") now, LMK if something went wrong.

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
> Reviewed-by: Anup Patel <anup@brainfault.org>
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
> index 20c6191399ea..b3daadd116ec 100644
> --- a/arch/riscv/Kconfig
> +++ b/arch/riscv/Kconfig
> @@ -20,7 +20,6 @@ config RISCV
>  	select CLONE_BACKWARDS
>  	select COMMON_CLK
>  	select GENERIC_CLOCKEVENTS
> -	select GENERIC_CPU_DEVICES
>  	select GENERIC_IRQ_SHOW
>  	select GENERIC_PCI_IOMAP
>  	select GENERIC_SCHED_CLOCK
> @@ -248,6 +247,17 @@ config NR_CPUS
>  	depends on SMP
>  	default "8"
>
> +config HOTPLUG_CPU
> +	bool "Support for hot-pluggable CPUs"
> +	depends on SMP
> +	select GENERIC_IRQ_MIGRATION
> +	help
> +
> +	  Say Y here to experiment with turning CPUs off and on.  CPUs
> +	  can be controlled through /sys/devices/system/cpu.
> +
> +	  Say N if you want to disable CPU hotplug.
> +
>  choice
>  	prompt "CPU Tuning"
>  	default TUNE_GENERIC
> diff --git a/arch/riscv/include/asm/cpu_ops.h b/arch/riscv/include/asm/cpu_ops.h
> index 5ce81a28e1d9..a8ec3c5c1bd2 100644
> --- a/arch/riscv/include/asm/cpu_ops.h
> +++ b/arch/riscv/include/asm/cpu_ops.h
> @@ -18,12 +18,24 @@
>   *			is a mechanism for doing so, tests whether it is
>   *			possible to boot the given HART.
>   * @cpu_start:		Boots a cpu into the kernel.
> + * @cpu_disable:	Prepares a cpu to die. May fail for some
> + *			mechanism-specific reason, which will cause the hot
> + *			unplug to be aborted. Called from the cpu to be killed.
> + * @cpu_stop:		Makes a cpu leave the kernel. Must not fail. Called from
> + *			the cpu being stopped.
> + * @cpu_is_stopped:	Ensures a cpu has left the kernel. Called from another
> + *			cpu.
>   */
>  struct cpu_operations {
>  	const char	*name;
>  	int		(*cpu_prepare)(unsigned int cpu);
>  	int		(*cpu_start)(unsigned int cpu,
>  				     struct task_struct *tidle);
> +#ifdef CONFIG_HOTPLUG_CPU
> +	int		(*cpu_disable)(unsigned int cpu);
> +	void		(*cpu_stop)(void);
> +	int		(*cpu_is_stopped)(unsigned int cpu);
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
> +	return false;
> +}
> +#endif
> +
>  #endif /* _ASM_RISCV_SMP_H */
> diff --git a/arch/riscv/kernel/Makefile b/arch/riscv/kernel/Makefile
> index a0be34b96846..9601ac907f70 100644
> --- a/arch/riscv/kernel/Makefile
> +++ b/arch/riscv/kernel/Makefile
> @@ -47,5 +47,6 @@ obj-$(CONFIG_RISCV_SBI)		+= sbi.o
>  ifeq ($(CONFIG_RISCV_SBI), y)
>  obj-$(CONFIG_SMP) += cpu_ops_sbi.o
>  endif
> +obj-$(CONFIG_HOTPLUG_CPU)	+= cpu-hotplug.o
>
>  clean:
> diff --git a/arch/riscv/kernel/cpu-hotplug.c b/arch/riscv/kernel/cpu-hotplug.c
> new file mode 100644
> index 000000000000..df84e0c13db1
> --- /dev/null
> +++ b/arch/riscv/kernel/cpu-hotplug.c
> @@ -0,0 +1,87 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright (C) 2020 Western Digital Corporation or its affiliates.
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
> +	cpu_stop();
> +}
> +
> +bool cpu_has_hotplug(unsigned int cpu)
> +{
> +	if (cpu_ops[cpu]->cpu_stop)
> +		return true;
> +
> +	return false;
> +}
> +
> +/*
> + * __cpu_disable runs on the processor to be shutdown.
> + */
> +int __cpu_disable(void)
> +{
> +	int ret = 0;
> +	unsigned int cpu = smp_processor_id();
> +
> +	if (!cpu_ops[cpu] || !cpu_ops[cpu]->cpu_stop)
> +		return -EOPNOTSUPP;
> +
> +	if (cpu_ops[cpu]->cpu_disable)
> +		ret = cpu_ops[cpu]->cpu_disable(cpu);
> +
> +	if (ret)
> +		return ret;
> +
> +	remove_cpu_topology(cpu);
> +	set_cpu_online(cpu, false);
> +	irq_migrate_all_off_this_cpu();
> +
> +	return ret;
> +}
> +
> +/*
> + * Called on the thread which is asking for a CPU to be shutdown.
> + */
> +void __cpu_die(unsigned int cpu)
> +{
> +	int ret = 0;
> +
> +	if (!cpu_wait_death(cpu, 5)) {
> +		pr_err("CPU %u: didn't die\n", cpu);
> +		return;
> +	}
> +	pr_notice("CPU%u: off\n", cpu);
> +
> +	/* Verify from the firmware if the cpu is really stopped*/
> +	if (cpu_ops[cpu]->cpu_is_stopped)
> +		ret = cpu_ops[cpu]->cpu_is_stopped(cpu);
> +	if (ret)
> +		pr_warn("CPU%d may not have stopped: %d\n", cpu, ret);
> +}
> +
> +/*
> + * Called from the idle thread for the CPU which has been shutdown.
> + */
> +void cpu_stop(void)
> +{
> +	idle_task_exit();
> +
> +	(void)cpu_report_death();
> +
> +	cpu_ops[smp_processor_id()]->cpu_stop();
> +	/* It should never reach here */
> +	BUG();
> +}
> diff --git a/arch/riscv/kernel/cpu_ops_sbi.c b/arch/riscv/kernel/cpu_ops_sbi.c
> index 66f3cded91f5..685fae72b7f5 100644
> --- a/arch/riscv/kernel/cpu_ops_sbi.c
> +++ b/arch/riscv/kernel/cpu_ops_sbi.c
> @@ -74,8 +74,42 @@ static int sbi_cpu_prepare(unsigned int cpuid)
>  	return 0;
>  }
>
> +#ifdef CONFIG_HOTPLUG_CPU
> +static int sbi_cpu_disable(unsigned int cpuid)
> +{
> +	if (!cpu_ops_sbi.cpu_stop)
> +		return -EOPNOTSUPP;
> +	return 0;
> +}
> +
> +static void sbi_cpu_stop(void)
> +{
> +	int ret;
> +
> +	ret = sbi_hsm_hart_stop();
> +	pr_crit("Unable to stop the cpu %u (%d)\n", smp_processor_id(), ret);
> +}
> +
> +static int sbi_cpu_is_stopped(unsigned int cpuid)
> +{
> +	int rc;
> +	int hartid = cpuid_to_hartid_map(cpuid);
> +
> +	rc = sbi_hsm_hart_get_status(hartid);
> +
> +	if (rc == SBI_HSM_HART_STATUS_STOPPED)
> +		return 0;
> +	return rc;
> +}
> +#endif
> +
>  const struct cpu_operations cpu_ops_sbi = {
>  	.name		= "sbi",
>  	.cpu_prepare	= sbi_cpu_prepare,
>  	.cpu_start	= sbi_cpu_start,
> +#ifdef CONFIG_HOTPLUG_CPU
> +	.cpu_disable	= sbi_cpu_disable,
> +	.cpu_stop	= sbi_cpu_stop,
> +	.cpu_is_stopped	= sbi_cpu_is_stopped,
> +#endif
>  };
> diff --git a/arch/riscv/kernel/setup.c b/arch/riscv/kernel/setup.c
> index 44ac4ddf60ab..1d2f66579b94 100644
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
>  	riscv_fill_hwcap();
>  }
> +
> +static int __init topology_init(void)
> +{
> +	int i;
> +
> +	for_each_possible_cpu(i) {
> +		struct cpu *cpu = &per_cpu(cpu_devices, i);
> +
> +		cpu->hotpluggable = cpu_has_hotplug(i);
> +		register_cpu(cpu, i);
> +	}
> +
> +	return 0;
> +}
> +subsys_initcall(topology_init);

