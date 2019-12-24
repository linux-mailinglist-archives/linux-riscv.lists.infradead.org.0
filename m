Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5018E12A0D4
	for <lists+linux-riscv@lfdr.de>; Tue, 24 Dec 2019 12:45:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=O2A+jytmQtdRl5GWvKCNixqLctCErGg5OSi0+wUYw3c=; b=eEo/J/+tMus0GrJ2qUyowYvGF
	/kveUCu/fweaGqEfH7jlneHpKK1Ai9o/Zq6XneVWrzd1cc+0n2VrBWTcjTID0B0o+RA7wqwiubEZh
	e2nKcs+tWft5KXavLeUQ8FJWyI9lfuQdVaw8bhns454NBk0Vpd7WGcQD20LG5vODRHp0fa3HwukgC
	uBAgs8MVXBKtbv/onOR6zXYaCsk0faQK9hwVrawpJ45Y2iuqqpyc0mBihiJuusAzKtjYKOnMPw1My
	uTBm6GyziKk+jie0Gx0SWKxS1Cl+ZN/j8GP0yuuAy9WoOfYO7Aqpg/l928+kRCXFC2+SKVSjxDVfP
	R4ihb394w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijicf-000811-Vs; Tue, 24 Dec 2019 11:45:09 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijicb-0007H6-GA
 for linux-riscv@lists.infradead.org; Tue, 24 Dec 2019 11:45:07 +0000
Received: by mail-wr1-x441.google.com with SMTP id j42so19568975wrj.12
 for <linux-riscv@lists.infradead.org>; Tue, 24 Dec 2019 03:45:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=O2A+jytmQtdRl5GWvKCNixqLctCErGg5OSi0+wUYw3c=;
 b=TSAWbKG7l1Mx31P9nWN9bN+h45z+8h1n9g0CGmfExqPzKwlrZMMhVOEGsSfGKk9YYh
 PehRIq05XUTWtcpJeI/4U54dWkcMv9ZbmzzW6VPrBypuOPtfJ1CRN2n3CYS4fFdJmyO9
 ydYzOG+P8bF1JTAV3WOJNNzyfJSCQwTxWB83ra39KnUQ41dxUtciVpkGDuHoRDaxGZoQ
 5yyig7BLl2q+7ySuUPj9QDGLimwWShIm07mdZ4xjju8QKXFevJ7LH88F7FIKVHYGaYOX
 1MTvqJCpM2Xo0qCZtBftdS45xRrv2vKg4rT6NvpTXKNpd5hk0lM9EZSwiRHpM05H4LTK
 zvWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=O2A+jytmQtdRl5GWvKCNixqLctCErGg5OSi0+wUYw3c=;
 b=EnFO7+bADmmywgpApEdS9kqp+L3yX0MxMxdKiQZmwyQW52Io96Jbi3KRbyCU+er9kf
 5/Ncq8S4Ul2omeYxVazUKPiE2cwgbh26HuT+wCUuP1qK1reN/mPkZLnmFURs7BzyNcfm
 JXxv3c+fc7/atcBh0XSPJVQ08f9Kn3JKN1pF2PM4Gy7GltDOnAdCC+hwT8k54fc1UplQ
 FTtXpkc6b/1VufeErEGbHLjaUCs1PwWLbKGBypCwWOwTfyeUgIC9lEYiinoFJBEAIzYC
 iWHRZWYOnhX1X5L1tTMTS8fcBtkveSEu+wsDkcrHoyWq7JadlgHPydJpkqFigHrREBAa
 EouQ==
X-Gm-Message-State: APjAAAWlZ+fLFwTRyb2mBSA+lKcDZOlgE+wCdAd74pbBhNQeLhKIxXaI
 nq0YUXqzYcmFe8as2nACY1PqKHj8fbEZKjms373i1A==
X-Google-Smtp-Source: APXvYqwRh/KSiwM5T+71pwzpL2M/9YEGsoP2Z3iVu3tI9znq3viSZjOlbFFFN2d/aWJuV8VcE7oAj5LmoYZU22I0gYM=
X-Received: by 2002:adf:dfc2:: with SMTP id q2mr33755276wrn.251.1577187903578; 
 Tue, 24 Dec 2019 03:45:03 -0800 (PST)
MIME-Version: 1.0
References: <20191224085544.24960-1-greentime.hu@sifive.com>
 <CAAhSdy0Ot4m7feJa94WJ6h+o_5-fPbdU6Dzs1az2YcH2qq33Mg@mail.gmail.com>
 <CAHCEehJKkgxMd3i-K4N6uzQmJ2nYEtB0w7nBVr1-Lh7xYSi6+A@mail.gmail.com>
In-Reply-To: <CAHCEehJKkgxMd3i-K4N6uzQmJ2nYEtB0w7nBVr1-Lh7xYSi6+A@mail.gmail.com>
From: Anup Patel <anup@brainfault.org>
Date: Tue, 24 Dec 2019 17:14:52 +0530
Message-ID: <CAAhSdy2SV7WPKJGGXAaX8xN3rOSg-r0itDw4fHjoThgOuC5t2Q@mail.gmail.com>
Subject: Re: [RFC PATCH] riscv: Add numa support for riscv64 platform
To: Greentime Hu <greentime.hu@sifive.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191224_034505_611335_C503B7B1 
X-CRM114-Status: GOOD (  33.18  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Ganapatrao Prabhakerrao Kulkarni <gkulkarni@marvell.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 Mike Rapoport <rppt@linux.ibm.com>, Palmer Dabbelt <palmer@dabbelt.com>,
 Greentime Hu <green.hu@gmail.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 greentime@kernel.org, linux-riscv <linux-riscv@lists.infradead.org>,
 Will Deacon <will@kernel.org>, Christoph Hellwig <hch@lst.de>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, Dec 24, 2019 at 5:03 PM Greentime Hu <greentime.hu@sifive.com> wrote:
>
> Hi Anup,
>
> On Tue, Dec 24, 2019 at 6:28 PM Anup Patel <anup@brainfault.org> wrote:
> >
> > +Christoph, +Mike, +Ganpatro
> >
> > On Tue, Dec 24, 2019 at 2:25 PM Greentime Hu <greentime.hu@sifive.com> wrote:
> > >
> > > This implementation is based on arm64 porting. It is tested with
> > > qemu-system-riscv64, unleashed board and OmniXtend FPGA platform.
> > >
> > > There will be 2 nodes in /sys/devices/system/node if it is described in dts and
> > > CONFIG_NUMA is enabled. We can use numastat/numactl/numademo to see its status.
> >
> > This patch can be broken down into separate (more granular) patches.
> > For example:
> > 1. asm/pgtable.h change can be separate patch
> > 2. Movement of unflatten_device_tree() from setup_arch() to paging_init()
> > 3. changes in kernel/smpboot.c can also be separate patch
> >
> > Also, since this is ported from arm64 implementation, I strongly
> > suggest having a generic NUMA support which can be shared
> > between arm64 and riscv. I think Ganpat (CC'ed) here could be
> > the best person to maintain the generic NUMA support since he
> > originally added it for arm64.
> >
> > >
> > > Signed-off-by: Greentime Hu <greentime.hu@sifive.com>
> > > ---
> > >  arch/riscv/Kconfig               |  30 ++-
> > >  arch/riscv/include/asm/mmzone.h  |  13 ++
> > >  arch/riscv/include/asm/numa.h    |  46 ++++
> > >  arch/riscv/include/asm/pci.h     |  10 +
> > >  arch/riscv/include/asm/pgtable.h |  20 ++
> > >  arch/riscv/kernel/setup.c        |  26 ++-
> > >  arch/riscv/kernel/smpboot.c      |  20 +-
> > >  arch/riscv/mm/Makefile           |   1 +
> > >  arch/riscv/mm/init.c             |   3 +
> > >  arch/riscv/mm/numa.c             | 372 +++++++++++++++++++++++++++++++
> > >  10 files changed, 536 insertions(+), 5 deletions(-)
> > >  create mode 100644 arch/riscv/include/asm/mmzone.h
> > >  create mode 100644 arch/riscv/include/asm/numa.h
> > >  create mode 100644 arch/riscv/mm/numa.c
> > >
> > > diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
> > > index bc7598fc5f00..53ae1816df50 100644
> > > --- a/arch/riscv/Kconfig
> > > +++ b/arch/riscv/Kconfig
> > > @@ -22,7 +22,6 @@ config RISCV
> > >         select CLONE_BACKWARDS
> > >         select COMMON_CLK
> > >         select GENERIC_CLOCKEVENTS
> > > -       select GENERIC_CPU_DEVICES
> > >         select GENERIC_IRQ_SHOW
> > >         select GENERIC_PCI_IOMAP
> > >         select GENERIC_SCHED_CLOCK
> > > @@ -234,6 +233,35 @@ config TUNE_GENERIC
> > >         bool "generic"
> > >
> > >  endchoice
> > > +# Common NUMA Features
> > > +config NUMA
> > > +       bool "Numa Memory Allocation and Scheduler Support"
> > > +       select OF_NUMA
> > > +       select ARCH_SUPPORTS_NUMA_BALANCING
> > > +       depends on SPARSEMEM
> > > +       help
> > > +         Enable NUMA (Non Uniform Memory Access) support.
> > > +
> > > +         The kernel will try to allocate memory used by a CPU on the
> > > +         local memory of the CPU and add some more
> > > +         NUMA awareness to the kernel.
> > > +
> > > +config NODES_SHIFT
> > > +       int "Maximum NUMA Nodes (as a power of 2)"
> > > +       range 1 10
> > > +       default "2"
> > > +       depends on NEED_MULTIPLE_NODES
> > > +       help
> > > +         Specify the maximum number of NUMA Nodes available on the target
> > > +         system.  Increases memory reserved to accommodate various tables.
> > > +
> > > +config USE_PERCPU_NUMA_NODE_ID
> > > +       def_bool y
> > > +       depends on NUMA
> > > +
> > > +config NEED_PER_CPU_EMBED_FIRST_CHUNK
> > > +       def_bool y
> > > +       depends on NUMA
> > >
> > >  config RISCV_ISA_C
> > >         bool "Emit compressed instructions when building Linux"
> > > diff --git a/arch/riscv/include/asm/mmzone.h b/arch/riscv/include/asm/mmzone.h
> > > new file mode 100644
> > > index 000000000000..fa17e01d9ab2
> > > --- /dev/null
> > > +++ b/arch/riscv/include/asm/mmzone.h
> > > @@ -0,0 +1,13 @@
> > > +/* SPDX-License-Identifier: GPL-2.0 */
> > > +#ifndef __ASM_MMZONE_H
> > > +#define __ASM_MMZONE_H
> > > +
> > > +#ifdef CONFIG_NUMA
> > > +
> > > +#include <asm/numa.h>
> > > +
> > > +extern struct pglist_data *node_data[];
> > > +#define NODE_DATA(nid)         (node_data[(nid)])
> > > +
> > > +#endif /* CONFIG_NUMA */
> > > +#endif /* __ASM_MMZONE_H */
> > > diff --git a/arch/riscv/include/asm/numa.h b/arch/riscv/include/asm/numa.h
> > > new file mode 100644
> > > index 000000000000..10a4513d078b
> > > --- /dev/null
> > > +++ b/arch/riscv/include/asm/numa.h
> > > @@ -0,0 +1,46 @@
> > > +/* SPDX-License-Identifier: GPL-2.0 */
> > > +#ifndef __ASM_NUMA_H
> > > +#define __ASM_NUMA_H
> > > +
> > > +#include <asm/topology.h>
> > > +
> > > +#ifdef CONFIG_NUMA
> > > +
> > > +extern nodemask_t numa_nodes_parsed __initdata;
> > > +
> > > +extern bool numa_off;
> > > +
> > > +/* Mappings between node number and cpus on that node. */
> > > +extern cpumask_var_t node_to_cpumask_map[MAX_NUMNODES];
> > > +void numa_clear_node(unsigned int cpu);
> > > +
> > > +#ifdef CONFIG_DEBUG_PER_CPU_MAPS
> > > +const struct cpumask *cpumask_of_node(int node);
> > > +#else
> > > +/* Returns a pointer to the cpumask of CPUs on Node 'node'. */
> > > +static inline const struct cpumask *cpumask_of_node(int node)
> > > +{
> > > +       return node_to_cpumask_map[node];
> > > +}
> > > +#endif
> > > +
> > > +void __init riscv_numa_init(void);
> > > +int __init numa_add_memblk(int nodeid, u64 start, u64 end);
> > > +void __init numa_set_distance(int from, int to, int distance);
> > > +void __init numa_free_distance(void);
> > > +void __init early_map_cpu_to_node(unsigned int cpu, int nid);
> > > +void numa_store_cpu_info(unsigned int cpu);
> > > +void numa_add_cpu(unsigned int cpu);
> > > +void numa_remove_cpu(unsigned int cpu);
> > > +
> > > +#else  /* CONFIG_NUMA */
> > > +
> > > +static inline void numa_store_cpu_info(unsigned int cpu) { }
> > > +static inline void numa_add_cpu(unsigned int cpu) { }
> > > +static inline void numa_remove_cpu(unsigned int cpu) { }
> > > +static inline void riscv_numa_init(void) { }
> > > +static inline void early_map_cpu_to_node(unsigned int cpu, int nid) { }
> > > +
> > > +#endif /* CONFIG_NUMA */
> > > +
> > > +#endif /* __ASM_NUMA_H */
> > > diff --git a/arch/riscv/include/asm/pci.h b/arch/riscv/include/asm/pci.h
> > > index 5ac8daa1cc36..781aa8b6dcd3 100644
> > > --- a/arch/riscv/include/asm/pci.h
> > > +++ b/arch/riscv/include/asm/pci.h
> > > @@ -32,6 +32,16 @@ static inline int pci_proc_domain(struct pci_bus *bus)
> > >         /* always show the domain in /proc */
> > >         return 1;
> > >  }
> > > +
> > > +#ifdef CONFIG_NUMA
> > > +int pcibus_to_node(struct pci_bus *bus);
> > > +#ifndef cpumask_of_pcibus
> > > +#define cpumask_of_pcibus(bus) (pcibus_to_node(bus) == -1 ?            \
> > > +                                cpu_all_mask :                         \
> > > +                                cpumask_of_node(pcibus_to_node(bus)))
> > > +#endif
> > > +#endif /* CONFIG_NUMA */
> > > +
> > >  #endif  /* CONFIG_PCI */
> > >
> > >  #endif  /* __ASM_PCI_H */
> > > diff --git a/arch/riscv/include/asm/pgtable.h b/arch/riscv/include/asm/pgtable.h
> > > index d3221017194d..04b7c38870f7 100644
> > > --- a/arch/riscv/include/asm/pgtable.h
> > > +++ b/arch/riscv/include/asm/pgtable.h
> > > @@ -175,6 +175,11 @@ static inline unsigned long pmd_page_vaddr(pmd_t pmd)
> > >         return (unsigned long)pfn_to_virt(pmd_val(pmd) >> _PAGE_PFN_SHIFT);
> > >  }
> > >
> > > +static inline pte_t pmd_pte(pmd_t pmd)
> > > +{
> > > +       return __pte(pmd_val(pmd));
> > > +}
> > > +
> > >  /* Yields the page frame number (PFN) of a page table entry */
> > >  static inline unsigned long pte_pfn(pte_t pte)
> > >  {
> > > @@ -288,6 +293,21 @@ static inline pte_t pte_mkhuge(pte_t pte)
> > >         return pte;
> > >  }
> > >
> > > +#ifdef CONFIG_NUMA_BALANCING
> > > +/*
> > > + * See the comment in include/asm-generic/pgtable.h
> > > + */
> > > +static inline int pte_protnone(pte_t pte)
> > > +{
> > > +       return (pte_val(pte) & (_PAGE_PRESENT | _PAGE_PROT_NONE)) == _PAGE_PROT_NONE;
> > > +}
> > > +
> > > +static inline int pmd_protnone(pmd_t pmd)
> > > +{
> > > +       return pte_protnone(pmd_pte(pmd));
> > > +}
> > > +#endif
> > > +
> > >  /* Modify page protection bits */
> > >  static inline pte_t pte_modify(pte_t pte, pgprot_t newprot)
> > >  {
> > > diff --git a/arch/riscv/kernel/setup.c b/arch/riscv/kernel/setup.c
> > > index 845ae0e12115..f6f2354036a0 100644
> > > --- a/arch/riscv/kernel/setup.c
> > > +++ b/arch/riscv/kernel/setup.c
> > > @@ -53,6 +53,31 @@ void __init parse_dtb(void)
> > >  #endif
> > >  }
> > >
> > > +static DEFINE_PER_CPU(struct cpu, cpu_devices);
> > > +
> > > +static int __init topology_init(void)
> > > +{
> > > +       int i, ret;
> > > +
> > > +#ifdef CONFIG_NEED_MULTIPLE_NODES
> > > +       for_each_online_node(i)
> > > +               register_one_node(i);
> > > +#endif
> > > +
> > > +       for_each_possible_cpu(i) {
> > > +               struct cpu *cpu = &per_cpu(cpu_devices, i);
> > > +
> > > +               cpu->hotpluggable = 1;
> >
> > Strange !!!
> >
> > We cannot claim CPUs are hotpluggable until Atish's
> > Linux SBI v0.2 HSM patches are available.
>
> Thanks. It should be set to 0 for now.
> cpu->hotpluggable = 0;
>
> > If required then Linux RISC-V NUMA patches should
> > be based upon Atish's Linux SBI v0.2 HSM support.
> >
> > > +               ret = register_cpu(cpu, i);
> > > +               if (unlikely(ret))
> > > +                       pr_warn("Warning: %s: register_cpu %d failed (%d)\n",
> > > +                              __func__, i, ret);
> > > +       }
> > > +
> > > +       return 0;
> > > +}
> > > +subsys_initcall(topology_init);
> > > +
> > >  void __init setup_arch(char **cmdline_p)
> > >  {
> > >         init_mm.start_code = (unsigned long) _stext;
> > > @@ -66,7 +91,6 @@ void __init setup_arch(char **cmdline_p)
> > >
> > >         setup_bootmem();
> > >         paging_init();
> > > -       unflatten_device_tree();
> >
> > Movement of unflatten_device_tree() call from here to
> > paging_init() needs explanation.
> >
>
> It is moved to paging_init() is because that of_numa_init() will use
> of_numa_parse_cpu_nodes() and of_numa_parse_memory_nodes().
> We have to unflatten_device_tree() first then we can call
> riscv_numa_init(), but riscv_numa_init() shall be called before
> memblocks_present() because the node information will be used in
> memblocks_present().
> So the order will be like this.
>
> unflatten_device_tree(); //To get dt information for memory and nodes
> riscv_numa_init(); //It can use of_numa_parse_* and set the nodes information
> memblocks_present(); //The node information can be used now

The reasoning is fine. Please split your patch into smaller patches
with detailed commit description in each patch.

Regards,
Anup

