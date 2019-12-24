Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C445712A01D
	for <lists+linux-riscv@lfdr.de>; Tue, 24 Dec 2019 11:28:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vsmcA20nkEWbaKdMcBU028AF1wwdjdd2d7LCq+lz5fI=; b=AtfxxumwyTizfig/gKX+0d6y3
	42f+YCR5Bf5wOX7JAYXglsBEcP4HXCmS921t0tCNzFk4QvfwuAAEjNuqgy34TAWySxwjinw9oAXQ0
	+nx2nODCs5boIeihz6SpOvwBMogLHatW9wT1y2uxU3RC1zWaIlJX+cWotsWYbcG2+XHUIBRfU2hC3
	C3LYEebjeEg5m5kFyYxeZ88/QADUadrrIADSIxX8mhrs82ZdpgHlhYcTHqBVmRrtJXMULNWOZ62aE
	fBPiyltgdliaxj9srJb4jfhjzO3LJRO0BYhgjbMvudwMtIXhsm/FREJpxvAtWh3b2h0Ns0C86McTe
	xRlhzlNpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijhQT-0007jo-WE; Tue, 24 Dec 2019 10:28:30 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijhQP-0007j3-16
 for linux-riscv@lists.infradead.org; Tue, 24 Dec 2019 10:28:27 +0000
Received: by mail-wm1-x344.google.com with SMTP id p9so2052591wmc.2
 for <linux-riscv@lists.infradead.org>; Tue, 24 Dec 2019 02:28:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=vsmcA20nkEWbaKdMcBU028AF1wwdjdd2d7LCq+lz5fI=;
 b=qkCGbgqqC5A6sWZuAg7LmVgCDlllEIMBvhkY220Nuz04ewhIerPSD4uf1WwrlvYaIr
 4H1nd2uT6LZ5M5k4PfTMmDUuLPZaw+qS+ftLGsdKf3V0ua456SPD0AuuW2FGPoYPIuYI
 5miXWHDrTNFU1/yhaz2HyiahJh6HlUmMGi7KzcmWACDgmyun+TpFdpIrJXLukKPBIvmG
 20nPHUvg/lV1xmalO3EaLd4v1t4S037CUU6RQug71kkW9u4m5z4ZnZcyn2XQTiUjgIc2
 hduPs4uDdEQhkgRp6fdDWbjArtNG7SNsNzm7NDkB+OdbI/PPGkRm5E0CGwl92INHoEPU
 Qmlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=vsmcA20nkEWbaKdMcBU028AF1wwdjdd2d7LCq+lz5fI=;
 b=TvQQObcLvAEjx1YhDyO3j9WRDIKSDuNQ2PgNx7HNhTqD3Eor6DsQrwETv34x9Hk6yk
 sDiOVb6w0adt2eT+V1aJv41fp5JOTEZh7OSeL6F+HN7MvgtkJTHjHHf6M+LDk51z9Ea8
 WN5fmMOvRXeowg2zfXcYkdvMg/X/GqJ8K5/LQJDXCGpIHH2z7+e79DnDMVxGsv3/6yke
 duCRHMas2ZjADM71lpDg4bMTE/wLBBUnWosBA+RUqDv8QO8sXW5SEAz/6BgXc8o50Mk6
 J7z1fqZdAXaPh+yPWvLh8D82rsf7rvxQ3Dj9Sbe1JrflHmvJk3fVB3W4jU0BOcKseHfz
 rAdw==
X-Gm-Message-State: APjAAAWhFDAmX928syp65M7+f2/lnEUxYziyJ7AUiPnF2ZA9oEbwzip/
 kR0QRjoCFwAAZYag8N5IrwGxUBaNIW2WVD2NJfdPfw==
X-Google-Smtp-Source: APXvYqy2a6aOoUBuloQqZWXrQtkPTqz9mrWRnYzK8rDXd+bBkUG5toVnqIp/N0T4jYahg6vVNe0GvweQK2NHBcC3Qa8=
X-Received: by 2002:a1c:66d5:: with SMTP id a204mr3375360wmc.64.1577183302010; 
 Tue, 24 Dec 2019 02:28:22 -0800 (PST)
MIME-Version: 1.0
References: <20191224085544.24960-1-greentime.hu@sifive.com>
In-Reply-To: <20191224085544.24960-1-greentime.hu@sifive.com>
From: Anup Patel <anup@brainfault.org>
Date: Tue, 24 Dec 2019 15:58:10 +0530
Message-ID: <CAAhSdy0Ot4m7feJa94WJ6h+o_5-fPbdU6Dzs1az2YcH2qq33Mg@mail.gmail.com>
Subject: Re: [RFC PATCH] riscv: Add numa support for riscv64 platform
To: Greentime Hu <greentime.hu@sifive.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191224_022825_141779_A3083C16 
X-CRM114-Status: GOOD (  29.04  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
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
Cc: Ganapatrao Prabhakerrao Kulkarni <gkulkarni@marvell.com>,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 Mike Rapoport <rppt@linux.ibm.com>, Palmer Dabbelt <palmer@dabbelt.com>,
 Greentime Hu <green.hu@gmail.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 greentime@kernel.org, linux-riscv <linux-riscv@lists.infradead.org>,
 Christoph Hellwig <hch@lst.de>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

+Christoph, +Mike, +Ganpatro

On Tue, Dec 24, 2019 at 2:25 PM Greentime Hu <greentime.hu@sifive.com> wrote:
>
> This implementation is based on arm64 porting. It is tested with
> qemu-system-riscv64, unleashed board and OmniXtend FPGA platform.
>
> There will be 2 nodes in /sys/devices/system/node if it is described in dts and
> CONFIG_NUMA is enabled. We can use numastat/numactl/numademo to see its status.

This patch can be broken down into separate (more granular) patches.
For example:
1. asm/pgtable.h change can be separate patch
2. Movement of unflatten_device_tree() from setup_arch() to paging_init()
3. changes in kernel/smpboot.c can also be separate patch

Also, since this is ported from arm64 implementation, I strongly
suggest having a generic NUMA support which can be shared
between arm64 and riscv. I think Ganpat (CC'ed) here could be
the best person to maintain the generic NUMA support since he
originally added it for arm64.

>
> Signed-off-by: Greentime Hu <greentime.hu@sifive.com>
> ---
>  arch/riscv/Kconfig               |  30 ++-
>  arch/riscv/include/asm/mmzone.h  |  13 ++
>  arch/riscv/include/asm/numa.h    |  46 ++++
>  arch/riscv/include/asm/pci.h     |  10 +
>  arch/riscv/include/asm/pgtable.h |  20 ++
>  arch/riscv/kernel/setup.c        |  26 ++-
>  arch/riscv/kernel/smpboot.c      |  20 +-
>  arch/riscv/mm/Makefile           |   1 +
>  arch/riscv/mm/init.c             |   3 +
>  arch/riscv/mm/numa.c             | 372 +++++++++++++++++++++++++++++++
>  10 files changed, 536 insertions(+), 5 deletions(-)
>  create mode 100644 arch/riscv/include/asm/mmzone.h
>  create mode 100644 arch/riscv/include/asm/numa.h
>  create mode 100644 arch/riscv/mm/numa.c
>
> diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
> index bc7598fc5f00..53ae1816df50 100644
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
> @@ -234,6 +233,35 @@ config TUNE_GENERIC
>         bool "generic"
>
>  endchoice
> +# Common NUMA Features
> +config NUMA
> +       bool "Numa Memory Allocation and Scheduler Support"
> +       select OF_NUMA
> +       select ARCH_SUPPORTS_NUMA_BALANCING
> +       depends on SPARSEMEM
> +       help
> +         Enable NUMA (Non Uniform Memory Access) support.
> +
> +         The kernel will try to allocate memory used by a CPU on the
> +         local memory of the CPU and add some more
> +         NUMA awareness to the kernel.
> +
> +config NODES_SHIFT
> +       int "Maximum NUMA Nodes (as a power of 2)"
> +       range 1 10
> +       default "2"
> +       depends on NEED_MULTIPLE_NODES
> +       help
> +         Specify the maximum number of NUMA Nodes available on the target
> +         system.  Increases memory reserved to accommodate various tables.
> +
> +config USE_PERCPU_NUMA_NODE_ID
> +       def_bool y
> +       depends on NUMA
> +
> +config NEED_PER_CPU_EMBED_FIRST_CHUNK
> +       def_bool y
> +       depends on NUMA
>
>  config RISCV_ISA_C
>         bool "Emit compressed instructions when building Linux"
> diff --git a/arch/riscv/include/asm/mmzone.h b/arch/riscv/include/asm/mmzone.h
> new file mode 100644
> index 000000000000..fa17e01d9ab2
> --- /dev/null
> +++ b/arch/riscv/include/asm/mmzone.h
> @@ -0,0 +1,13 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +#ifndef __ASM_MMZONE_H
> +#define __ASM_MMZONE_H
> +
> +#ifdef CONFIG_NUMA
> +
> +#include <asm/numa.h>
> +
> +extern struct pglist_data *node_data[];
> +#define NODE_DATA(nid)         (node_data[(nid)])
> +
> +#endif /* CONFIG_NUMA */
> +#endif /* __ASM_MMZONE_H */
> diff --git a/arch/riscv/include/asm/numa.h b/arch/riscv/include/asm/numa.h
> new file mode 100644
> index 000000000000..10a4513d078b
> --- /dev/null
> +++ b/arch/riscv/include/asm/numa.h
> @@ -0,0 +1,46 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +#ifndef __ASM_NUMA_H
> +#define __ASM_NUMA_H
> +
> +#include <asm/topology.h>
> +
> +#ifdef CONFIG_NUMA
> +
> +extern nodemask_t numa_nodes_parsed __initdata;
> +
> +extern bool numa_off;
> +
> +/* Mappings between node number and cpus on that node. */
> +extern cpumask_var_t node_to_cpumask_map[MAX_NUMNODES];
> +void numa_clear_node(unsigned int cpu);
> +
> +#ifdef CONFIG_DEBUG_PER_CPU_MAPS
> +const struct cpumask *cpumask_of_node(int node);
> +#else
> +/* Returns a pointer to the cpumask of CPUs on Node 'node'. */
> +static inline const struct cpumask *cpumask_of_node(int node)
> +{
> +       return node_to_cpumask_map[node];
> +}
> +#endif
> +
> +void __init riscv_numa_init(void);
> +int __init numa_add_memblk(int nodeid, u64 start, u64 end);
> +void __init numa_set_distance(int from, int to, int distance);
> +void __init numa_free_distance(void);
> +void __init early_map_cpu_to_node(unsigned int cpu, int nid);
> +void numa_store_cpu_info(unsigned int cpu);
> +void numa_add_cpu(unsigned int cpu);
> +void numa_remove_cpu(unsigned int cpu);
> +
> +#else  /* CONFIG_NUMA */
> +
> +static inline void numa_store_cpu_info(unsigned int cpu) { }
> +static inline void numa_add_cpu(unsigned int cpu) { }
> +static inline void numa_remove_cpu(unsigned int cpu) { }
> +static inline void riscv_numa_init(void) { }
> +static inline void early_map_cpu_to_node(unsigned int cpu, int nid) { }
> +
> +#endif /* CONFIG_NUMA */
> +
> +#endif /* __ASM_NUMA_H */
> diff --git a/arch/riscv/include/asm/pci.h b/arch/riscv/include/asm/pci.h
> index 5ac8daa1cc36..781aa8b6dcd3 100644
> --- a/arch/riscv/include/asm/pci.h
> +++ b/arch/riscv/include/asm/pci.h
> @@ -32,6 +32,16 @@ static inline int pci_proc_domain(struct pci_bus *bus)
>         /* always show the domain in /proc */
>         return 1;
>  }
> +
> +#ifdef CONFIG_NUMA
> +int pcibus_to_node(struct pci_bus *bus);
> +#ifndef cpumask_of_pcibus
> +#define cpumask_of_pcibus(bus) (pcibus_to_node(bus) == -1 ?            \
> +                                cpu_all_mask :                         \
> +                                cpumask_of_node(pcibus_to_node(bus)))
> +#endif
> +#endif /* CONFIG_NUMA */
> +
>  #endif  /* CONFIG_PCI */
>
>  #endif  /* __ASM_PCI_H */
> diff --git a/arch/riscv/include/asm/pgtable.h b/arch/riscv/include/asm/pgtable.h
> index d3221017194d..04b7c38870f7 100644
> --- a/arch/riscv/include/asm/pgtable.h
> +++ b/arch/riscv/include/asm/pgtable.h
> @@ -175,6 +175,11 @@ static inline unsigned long pmd_page_vaddr(pmd_t pmd)
>         return (unsigned long)pfn_to_virt(pmd_val(pmd) >> _PAGE_PFN_SHIFT);
>  }
>
> +static inline pte_t pmd_pte(pmd_t pmd)
> +{
> +       return __pte(pmd_val(pmd));
> +}
> +
>  /* Yields the page frame number (PFN) of a page table entry */
>  static inline unsigned long pte_pfn(pte_t pte)
>  {
> @@ -288,6 +293,21 @@ static inline pte_t pte_mkhuge(pte_t pte)
>         return pte;
>  }
>
> +#ifdef CONFIG_NUMA_BALANCING
> +/*
> + * See the comment in include/asm-generic/pgtable.h
> + */
> +static inline int pte_protnone(pte_t pte)
> +{
> +       return (pte_val(pte) & (_PAGE_PRESENT | _PAGE_PROT_NONE)) == _PAGE_PROT_NONE;
> +}
> +
> +static inline int pmd_protnone(pmd_t pmd)
> +{
> +       return pte_protnone(pmd_pte(pmd));
> +}
> +#endif
> +
>  /* Modify page protection bits */
>  static inline pte_t pte_modify(pte_t pte, pgprot_t newprot)
>  {
> diff --git a/arch/riscv/kernel/setup.c b/arch/riscv/kernel/setup.c
> index 845ae0e12115..f6f2354036a0 100644
> --- a/arch/riscv/kernel/setup.c
> +++ b/arch/riscv/kernel/setup.c
> @@ -53,6 +53,31 @@ void __init parse_dtb(void)
>  #endif
>  }
>
> +static DEFINE_PER_CPU(struct cpu, cpu_devices);
> +
> +static int __init topology_init(void)
> +{
> +       int i, ret;
> +
> +#ifdef CONFIG_NEED_MULTIPLE_NODES
> +       for_each_online_node(i)
> +               register_one_node(i);
> +#endif
> +
> +       for_each_possible_cpu(i) {
> +               struct cpu *cpu = &per_cpu(cpu_devices, i);
> +
> +               cpu->hotpluggable = 1;

Strange !!!

We cannot claim CPUs are hotpluggable until Atish's
Linux SBI v0.2 HSM patches are available.

If required then Linux RISC-V NUMA patches should
be based upon Atish's Linux SBI v0.2 HSM support.

> +               ret = register_cpu(cpu, i);
> +               if (unlikely(ret))
> +                       pr_warn("Warning: %s: register_cpu %d failed (%d)\n",
> +                              __func__, i, ret);
> +       }
> +
> +       return 0;
> +}
> +subsys_initcall(topology_init);
> +
>  void __init setup_arch(char **cmdline_p)
>  {
>         init_mm.start_code = (unsigned long) _stext;
> @@ -66,7 +91,6 @@ void __init setup_arch(char **cmdline_p)
>
>         setup_bootmem();
>         paging_init();
> -       unflatten_device_tree();

Movement of unflatten_device_tree() call from here to
paging_init() needs explanation.

>
>  #ifdef CONFIG_SWIOTLB
>         swiotlb_init(1);
> diff --git a/arch/riscv/kernel/smpboot.c b/arch/riscv/kernel/smpboot.c
> index 261f4087cc39..bcb67ac403e4 100644
> --- a/arch/riscv/kernel/smpboot.c
> +++ b/arch/riscv/kernel/smpboot.c
> @@ -26,6 +26,7 @@
>  #include <linux/sched/mm.h>
>  #include <asm/irq.h>
>  #include <asm/mmu_context.h>
> +#include <asm/numa.h>
>  #include <asm/tlbflush.h>
>  #include <asm/sections.h>
>  #include <asm/sbi.h>
> @@ -45,6 +46,11 @@ void __init smp_prepare_boot_cpu(void)
>  void __init smp_prepare_cpus(unsigned int max_cpus)
>  {
>         int cpuid;
> +       unsigned int this_cpu;
> +
> +       this_cpu = smp_processor_id();
> +       numa_store_cpu_info(this_cpu);
> +       numa_add_cpu(this_cpu);
>
>         /* This covers non-smp usecase mandated by "nosmp" option */
>         if (max_cpus == 0)
> @@ -54,6 +60,7 @@ void __init smp_prepare_cpus(unsigned int max_cpus)
>                 if (cpuid == smp_processor_id())
>                         continue;
>                 set_cpu_present(cpuid, true);
> +               numa_store_cpu_info(cpuid);
>         }
>  }
>
> @@ -72,6 +79,7 @@ void __init setup_smp(void)
>                 if (hart == cpuid_to_hartid_map(0)) {
>                         BUG_ON(found_boot_cpu);
>                         found_boot_cpu = 1;
> +                       early_map_cpu_to_node(0, of_node_to_nid(dn));
>                         continue;
>                 }
>                 if (cpuid >= NR_CPUS) {
> @@ -81,6 +89,7 @@ void __init setup_smp(void)
>                 }
>
>                 cpuid_to_hartid_map(cpuid) = hart;
> +               early_map_cpu_to_node(cpuid, of_node_to_nid(dn));
>                 cpuid++;
>         }
>
> @@ -136,15 +145,20 @@ void __init smp_cpus_done(unsigned int max_cpus)
>  asmlinkage __visible void __init smp_callin(void)
>  {
>         struct mm_struct *mm = &init_mm;
> +       unsigned int this_cpu;
> +
> +       this_cpu = smp_processor_id();
>
>         /* All kernel threads share the same mm context.  */
>         mmgrab(mm);
>         current->active_mm = mm;
>
>         trap_init();
> -       notify_cpu_starting(smp_processor_id());
> -       update_siblings_masks(smp_processor_id());
> -       set_cpu_online(smp_processor_id(), 1);
> +       notify_cpu_starting(this_cpu);
> +       numa_store_cpu_info(this_cpu);
> +       numa_add_cpu(this_cpu);
> +       update_siblings_masks(this_cpu);
> +       set_cpu_online(this_cpu, true);
>         /*
>          * Remote TLB flushes are ignored while the CPU is offline, so emit
>          * a local TLB flush right now just in case.
> diff --git a/arch/riscv/mm/Makefile b/arch/riscv/mm/Makefile
> index 9d9a17335686..59c956c0b0d0 100644
> --- a/arch/riscv/mm/Makefile
> +++ b/arch/riscv/mm/Makefile
> @@ -17,3 +17,4 @@ ifeq ($(CONFIG_MMU),y)
>  obj-$(CONFIG_SMP) += tlbflush.o
>  endif
>  obj-$(CONFIG_HUGETLB_PAGE) += hugetlbpage.o
> +obj-$(CONFIG_NUMA)         += numa.o
> diff --git a/arch/riscv/mm/init.c b/arch/riscv/mm/init.c
> index 573463d1c799..17c749744e05 100644
> --- a/arch/riscv/mm/init.c
> +++ b/arch/riscv/mm/init.c
> @@ -18,6 +18,7 @@
>  #include <asm/sections.h>
>  #include <asm/pgtable.h>
>  #include <asm/io.h>
> +#include <asm/numa.h>
>
>  #include "../kernel/head.h"
>
> @@ -453,6 +454,8 @@ static void __init setup_vm_final(void)
>  void __init paging_init(void)
>  {
>         setup_vm_final();
> +       unflatten_device_tree();
> +       riscv_numa_init();
>         memblocks_present();
>         sparse_init();
>         setup_zero_page();
> diff --git a/arch/riscv/mm/numa.c b/arch/riscv/mm/numa.c
> new file mode 100644
> index 000000000000..b679b2831990
> --- /dev/null
> +++ b/arch/riscv/mm/numa.c
> @@ -0,0 +1,372 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * NUMA support, based on the arm64 implementation.
> + *
> + * Copyright (C) 2015 Cavium Inc.
> + * Author: Ganapatrao Kulkarni <gkulkarni@cavium.com>
> + * Copyright (C) 2019 SiFive, Inc
> + */
> +
> +#define pr_fmt(fmt) "NUMA: " fmt
> +
> +#include <linux/memblock.h>
> +#include <linux/module.h>
> +#include <linux/of.h>
> +#include <linux/device.h>
> +#include <linux/pci.h>
> +
> +struct pglist_data *node_data[MAX_NUMNODES] __read_mostly;
> +EXPORT_SYMBOL(node_data);
> +nodemask_t numa_nodes_parsed __initdata;
> +static int cpu_to_node_map[NR_CPUS] = { [0 ... NR_CPUS-1] = NUMA_NO_NODE };
> +
> +static u8 *numa_distance;
> +static int numa_distance_cnt;
> +bool numa_off;
> +
> +static __init int numa_parse_early_param(char *opt)
> +{
> +       if (!opt)
> +               return -EINVAL;
> +       if (str_has_prefix(opt, "off"))
> +               numa_off = true;
> +
> +       return 0;
> +}
> +early_param("numa", numa_parse_early_param);
> +
> +cpumask_var_t node_to_cpumask_map[MAX_NUMNODES];
> +EXPORT_SYMBOL(node_to_cpumask_map);
> +
> +#ifdef CONFIG_DEBUG_PER_CPU_MAPS
> +
> +/*
> + * Returns a pointer to the bitmask of CPUs on Node 'node'.
> + */
> +const struct cpumask *cpumask_of_node(int node)
> +{
> +       if (WARN_ON(node >= nr_node_ids))
> +               return cpu_none_mask;
> +
> +       if (WARN_ON(node_to_cpumask_map[node] == NULL))
> +               return cpu_online_mask;
> +
> +       return node_to_cpumask_map[node];
> +}
> +EXPORT_SYMBOL(cpumask_of_node);
> +
> +#endif
> +
> +int pcibus_to_node(struct pci_bus *bus)
> +{
> +       return dev_to_node(&bus->dev);
> +}
> +EXPORT_SYMBOL(pcibus_to_node);
> +
> +static void numa_update_cpu(unsigned int cpu, bool remove)
> +{
> +       int nid = cpu_to_node(cpu);
> +
> +       if (nid == NUMA_NO_NODE)
> +               return;
> +
> +       if (remove)
> +               cpumask_clear_cpu(cpu, node_to_cpumask_map[nid]);
> +       else
> +               cpumask_set_cpu(cpu, node_to_cpumask_map[nid]);
> +}
> +
> +void numa_add_cpu(unsigned int cpu)
> +{
> +       numa_update_cpu(cpu, false);
> +}
> +
> +/*
> + * Set the cpu to node and mem mapping
> + */
> +void numa_store_cpu_info(unsigned int cpu)
> +{
> +       set_cpu_numa_node(cpu, cpu_to_node_map[cpu]);
> +}
> +
> +void __init early_map_cpu_to_node(unsigned int cpu, int nid)
> +{
> +       /* fallback to node 0 */
> +       if (nid < 0 || nid >= MAX_NUMNODES || numa_off)
> +               nid = 0;
> +
> +       cpu_to_node_map[cpu] = nid;
> +
> +       /*
> +        * We should set the numa node of cpu0 as soon as possible, because it
> +        * has already been set up online before. cpu_to_node(0) will soon be
> +        * called.
> +        */
> +       if (!cpu)
> +               set_cpu_numa_node(cpu, nid);
> +}
> +
> +static int __init numa_alloc_distance(void)
> +{
> +       size_t size;
> +       u64 phys;
> +       int i, j;
> +
> +       size = nr_node_ids * nr_node_ids * sizeof(numa_distance[0]);
> +       phys = memblock_find_in_range(0, PFN_PHYS(max_pfn),
> +                                     size, PAGE_SIZE);
> +       if (WARN_ON(!phys))
> +               return -ENOMEM;
> +
> +       memblock_reserve(phys, size);
> +
> +       numa_distance = __va(phys);
> +       numa_distance_cnt = nr_node_ids;
> +
> +       /* fill with the default distances */
> +       for (i = 0; i < numa_distance_cnt; i++)
> +               for (j = 0; j < numa_distance_cnt; j++)
> +                       numa_distance[i * numa_distance_cnt + j] = i == j ?
> +                               LOCAL_DISTANCE : REMOTE_DISTANCE;
> +
> +       pr_debug("Initialized distance table, cnt=%d\n", numa_distance_cnt);
> +
> +       return 0;
> +}
> +
> +/**
> + * numa_add_memblk() - Set node id to memblk
> + * @nid: NUMA node ID of the new memblk
> + * @start: Start address of the new memblk
> + * @end:  End address of the new memblk
> + *
> + * RETURNS:
> + * 0 on success, -errno on failure.
> + */
> +int __init numa_add_memblk(int nid, u64 start, u64 end)
> +{
> +       int ret;
> +
> +       ret = memblock_set_node(start, (end - start), &memblock.memory, nid);
> +       if (ret < 0) {
> +               pr_err("memblock [0x%llx - 0x%llx] failed to add on node %d\n",
> +                       start, (end - 1), nid);
> +               return ret;
> +       }
> +
> +       node_set(nid, numa_nodes_parsed);
> +       return ret;
> +}
> +
> +/*
> + * Initialize NODE_DATA for a node on the local memory
> + */
> +static void __init setup_node_data(int nid, u64 start_pfn, u64 end_pfn)
> +{
> +       const size_t nd_size = roundup(sizeof(pg_data_t), SMP_CACHE_BYTES);
> +       u64 nd_pa;
> +       void *nd;
> +       int tnid;
> +
> +       if (start_pfn >= end_pfn)
> +               pr_info("Initmem setup node %d [<memory-less node>]\n", nid);
> +
> +       nd_pa = memblock_phys_alloc_try_nid(nd_size, SMP_CACHE_BYTES, nid);
> +       if (!nd_pa)
> +               panic("Cannot allocate %zu bytes for node %d data\n",
> +                     nd_size, nid);
> +
> +       nd = __va(nd_pa);
> +
> +       /* report and initialize */
> +       pr_info("NODE_DATA [mem %#010Lx-%#010Lx]\n",
> +               nd_pa, nd_pa + nd_size - 1);
> +       tnid = early_pfn_to_nid(nd_pa >> PAGE_SHIFT);
> +       if (tnid != nid)
> +               pr_info("NODE_DATA(%d) on node %d\n", nid, tnid);
> +
> +       node_data[nid] = nd;
> +       memset(NODE_DATA(nid), 0, sizeof(pg_data_t));
> +       NODE_DATA(nid)->node_id = nid;
> +       NODE_DATA(nid)->node_start_pfn = start_pfn;
> +       NODE_DATA(nid)->node_spanned_pages = end_pfn - start_pfn;
> +}
> +
> +void __init numa_set_distance(int from, int to, int distance)
> +{
> +       if (!numa_distance) {
> +               pr_warn_once("Warning: distance table not allocated yet\n");
> +               return;
> +       }
> +
> +       if (from >= numa_distance_cnt || to >= numa_distance_cnt ||
> +                       from < 0 || to < 0) {
> +               pr_warn_once("Warning: node ids are out of bound, from=%d to=%d distance=%d\n",
> +                           from, to, distance);
> +               return;
> +       }
> +
> +       if ((u8)distance != distance ||
> +           (from == to && distance != LOCAL_DISTANCE)) {
> +               pr_warn_once("Warning: invalid distance parameter, from=%d to=%d distance=%d\n",
> +                            from, to, distance);
> +               return;
> +       }
> +
> +       numa_distance[from * numa_distance_cnt + to] = distance;
> +}
> +
> +/*
> + * Return NUMA distance @from to @to
> + */
> +int __node_distance(int from, int to)
> +{
> +       if (from >= numa_distance_cnt || to >= numa_distance_cnt)
> +               return from == to ? LOCAL_DISTANCE : REMOTE_DISTANCE;
> +       return numa_distance[from * numa_distance_cnt + to];
> +}
> +EXPORT_SYMBOL(__node_distance);
> +
> +static int __init numa_register_nodes(void)
> +{
> +       int nid;
> +       struct memblock_region *mblk;
> +
> +       /* Check that valid nid is set to memblks */
> +       for_each_memblock(memory, mblk)
> +               if (mblk->nid == NUMA_NO_NODE || mblk->nid >= MAX_NUMNODES) {
> +                       pr_warn("Warning: invalid memblk node %d [mem %#010Lx-%#010Lx]\n",
> +                               mblk->nid, mblk->base,
> +                               mblk->base + mblk->size - 1);
> +                       return -EINVAL;
> +               }
> +
> +       /* Finally register nodes. */
> +       for_each_node_mask(nid, numa_nodes_parsed) {
> +               unsigned long start_pfn, end_pfn;
> +
> +               get_pfn_range_for_nid(nid, &start_pfn, &end_pfn);
> +               setup_node_data(nid, start_pfn, end_pfn);
> +               node_set_online(nid);
> +       }
> +
> +       /* Setup online nodes to actual nodes*/
> +       node_possible_map = numa_nodes_parsed;
> +
> +       return 0;
> +}
> +static void __init setup_node_to_cpumask_map(void)
> +{
> +       int node;
> +
> +       /* setup nr_node_ids if not done yet */
> +       if (nr_node_ids == MAX_NUMNODES)
> +               setup_nr_node_ids();
> +
> +       /* allocate and clear the mapping */
> +       for (node = 0; node < nr_node_ids; node++) {
> +               alloc_bootmem_cpumask_var(&node_to_cpumask_map[node]);
> +               cpumask_clear(node_to_cpumask_map[node]);
> +       }
> +
> +       /* cpumask_of_node() will now work */
> +       pr_debug("Node to cpumask map for %u nodes\n", nr_node_ids);
> +}
> +
> +void __init numa_free_distance(void)
> +{
> +       size_t size;
> +
> +       if (!numa_distance)
> +               return;
> +
> +       size = numa_distance_cnt * numa_distance_cnt *
> +               sizeof(numa_distance[0]);
> +
> +       memblock_free(__pa(numa_distance), size);
> +       numa_distance_cnt = 0;
> +       numa_distance = NULL;
> +}
> +static int __init numa_init(int (*init_func)(void))
> +{
> +       int ret;
> +
> +       nodes_clear(numa_nodes_parsed);
> +       nodes_clear(node_possible_map);
> +       nodes_clear(node_online_map);
> +
> +       ret = numa_alloc_distance();
> +       if (ret < 0)
> +               return ret;
> +
> +       ret = init_func();
> +       if (ret < 0)
> +               goto out_free_distance;
> +
> +       if (nodes_empty(numa_nodes_parsed)) {
> +               pr_info("No NUMA configuration found\n");
> +               ret = -EINVAL;
> +               goto out_free_distance;
> +       }
> +
> +       ret = numa_register_nodes();
> +       if (ret < 0)
> +               goto out_free_distance;
> +
> +       setup_node_to_cpumask_map();
> +
> +       return 0;
> +out_free_distance:
> +       numa_free_distance();
> +       return ret;
> +}
> +
> +/**
> + * dummy_numa_init() - Fallback dummy NUMA init
> + *
> + * Used if there's no underlying NUMA architecture, NUMA initialization
> + * fails, or NUMA is disabled on the command line.
> + *
> + * Must online at least one node (node 0) and add memory blocks that cover all
> + * allowed memory. It is unlikely that this function fails.
> + *
> + * Return: 0 on success, -errno on failure.
> + */
> +static int __init dummy_numa_init(void)
> +{
> +       int ret;
> +       struct memblock_region *mblk;
> +
> +       if (numa_off)
> +               pr_info("NUMA disabled\n"); /* Forced off on command line. */
> +       pr_info("Faking a node at [mem %#018Lx-%#018Lx]\n",
> +               memblock_start_of_DRAM(), memblock_end_of_DRAM() - 1);
> +
> +       for_each_memblock(memory, mblk) {
> +               ret = numa_add_memblk(0, mblk->base, mblk->base + mblk->size);
> +               if (!ret)
> +                       continue;
> +
> +               pr_err("NUMA init failed\n");
> +               return ret;
> +       }
> +
> +       numa_off = true;
> +       return 0;
> +}
> +
> +/**
> + * riscv_numa_init() - Initialize NUMA
> + *
> + * Try each configured NUMA initialization method until one succeeds. The
> + * last fallback is dummy single node config encomapssing whole memory.
> + */
> +void __init riscv_numa_init(void)
> +{
> +       if (!numa_off) {
> +               if (!numa_init(of_numa_init))
> +                       return;
> +       }
> +
> +       numa_init(dummy_numa_init);
> +}
> --
> 2.17.1
>

Regards,
Anup

