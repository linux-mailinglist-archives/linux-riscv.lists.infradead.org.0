Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BEAB21C7CE9
	for <lists+linux-riscv@lfdr.de>; Wed,  6 May 2020 23:59:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	MIME-Version:Message-ID:In-Reply-To:Date:References:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/Aa/ssbCkCKQVIHUibW8VTb7WJkQ7GaL4pvQ/Dca+6w=; b=LybVs4kpNp1foAyIKCwCALTRj
	wqBCP/lH4toneqxhpBxMC4ecYE0YP0l/dslOJwh+wSIorU8kC3/H8I+tKC/DlvMACIRJD3FbDl/Z8
	nhS/b6cEVIYavH0Wxkrw1Z2NF/aZBv3L8t02FnBAQtcbpHO9rYhXa8Ii2hj49YtU4WgAWmZGEn8VT
	CQfopFIZ+ba36HbQg4ZBD+Fiv18/iGPwoVUTTDSidzOuLw3eSArleRXg35k5fGdV8HD2JZbCmg3g7
	H8tUk0yupq54jdhlkIQHykB5ONgqAUhw59EPTHj0YW+/Yq0lS25o3ugFAifWFb1zm1WjfV4MqKRxt
	MMwvle0hg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWS4b-0007rD-HZ; Wed, 06 May 2020 21:59:25 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWS4X-0007qf-G0
 for linux-riscv@lists.infradead.org; Wed, 06 May 2020 21:59:23 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id B93AEABCF;
 Wed,  6 May 2020 21:59:16 +0000 (UTC)
From: Andreas Schwab <schwab@suse.de>
To: Palmer Dabbelt <palmer@dabbelt.com>
Subject: Re: Crashes with CONFIG_SLAB_FREELIST_RANDOM
References: <CAEn-LTp1e0oggUkDaDH6KrdrpHhPzEHv60inE4jRusKA4CTB6Q@mail.gmail.com>
 <mhng-7c460fc5-c60d-4260-9b2c-ce513c6466e5@palmerdabbelt-glaptop1>
X-Yow: The LOGARITHM of an ISOSCELES TRIANGLE is TUESDAY WELD!!
Date: Wed, 06 May 2020 23:59:12 +0200
In-Reply-To: <mhng-7c460fc5-c60d-4260-9b2c-ce513c6466e5@palmerdabbelt-glaptop1>
 (Palmer Dabbelt's message of "Wed, 06 May 2020 14:21:14 -0700 (PDT)")
Message-ID: <878si47mj3.fsf@igel.home>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/27.0.91 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_145921_827016_E60FC16C 
X-CRM114-Status: GOOD (  10.24  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-riscv@lists.infradead.org, david.abdurachmanov@gmail.com
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Here is a full log:

[    0.000000] OF: fdt: Ignoring memory range 0x80000000 - 0x80200000
[    0.000000] Linux version 5.6.6-212-default (geeko@buildhost) (gcc version 9.3.1 20200406 [revision 6db837a5288ee3ca5ec504fbd5a765817e556ac2] (SUSE Linux)) #1 SMP Sat Apr 25 18:51:44 UTC 2020 (09cfe02)
[    0.000000] earlycon: sifive0 at MMIO 0x0000000010010000 (options '')
[    0.000000] printk: bootconsole [sifive0] enabled
[    0.000000] printk: debug: ignoring loglevel setting.
[    0.000000] Initial ramdisk at: 0x(____ptrval____) (16745124 bytes)
[    0.000000] Zone ranges:
[    0.000000]   DMA32    [mem 0x0000000080200000-0x00000000ffffffff]
[    0.000000]   Normal   [mem 0x0000000100000000-0x000000027fffffff]
[    0.000000] Movable zone start for each node
[    0.000000] Early memory node ranges
[    0.000000]   node   0: [mem 0x0000000080200000-0x000000027fffffff]
[    0.000000] Initmem setup node 0 [mem 0x0000000080200000-0x000000027fffffff]
[    0.000000] On node 0 totalpages: 2096640
[    0.000000]   DMA32 zone: 8184 pages used for memmap
[    0.000000]   DMA32 zone: 0 pages reserved
[    0.000000]   DMA32 zone: 523776 pages, LIFO batch:63
[    0.000000]   Normal zone: 24576 pages used for memmap
[    0.000000]   Normal zone: 1572864 pages, LIFO batch:63
[    0.000000] software IO TLB: mapped [mem 0xfbfff000-0xfffff000] (64MB)
[    0.000000] CPU with hartid=0 is not available
[    0.000000] CPU with hartid=0 is not available
[    0.000000] elf_hwcap is 0x112d
[    0.000000] percpu: Embedded 18 pages/cpu s34648 r8192 d30888 u73728
[    0.000000] pcpu-alloc: s34648 r8192 d30888 u73728 alloc=18*4096
[    0.000000] pcpu-alloc: [0] 0 [0] 1 [0] 2 [0] 3
[    0.000000] Built 1 zonelists, mobility grouping on.  Total pages: 2063880
[    0.000000] Kernel command line: earlycon=sifive,0x10010000 console=ttySIF0 ignore_loglevel root=10.160.4.0:/daten/root/hifive rw
[    0.000000] Dentry cache hash table entries: 1048576 (order: 11, 8388608 bytes, linear)
[    0.000000] Inode-cache hash table entries: 524288 (order: 10, 4194304 bytes, linear)
[    0.000000] Sorting __ex_table...
[    0.000000] mem auto-init: stack:off, heap alloc:off, heap free:off
[    0.000000] Memory: 8149964K/8386560K available (6274K kernel code, 508K rwdata, 2854K rodata, 277K init, 640K bss, 236596K reserved, 0K cma-reserved)
[    0.000000] random: get_random_u64 called from kmem_cache_open+0x28/0x370 with crng_init=0  
[    0.000000] SLUB: HWalign=64, Order=0-3, MinObjects=0, CPUs=4, Nodes=1
[    0.000000] rcu: Hierarchical RCU implementation.
[    0.000000] rcu:     RCU restricting CPUs from NR_CPUS=32 to nr_cpu_ids=4.
[    0.000000]  Tasks RCU enabled.
[    0.000000] rcu: RCU calculated value of scheduler-enlistment delay is 10 jiffies.
[    0.000000] rcu: Adjusting geometry for rcu_fanout_leaf=16, nr_cpu_ids=4
[    0.000000] NR_IRQS: 0, nr_irqs: 0, preallocated irqs: 0
[    0.000000] plic: mapped 53 interrupts with 4 handlers for 9 contexts.
[    0.000000] riscv_timer_init_dt: Registering clocksource cpuid [0] hartid [2]
[    0.000000] clocksource: riscv_clocksource: mask: 0xffffffffffffffff max_cycles: 0x1d854df40, max_idle_ns: 3526361616960 ns
[    0.000006] sched_clock: 64 bits at 1000kHz, resolution 1000ns, wraps every 2199023255500ns
[    0.008534] Console: colour dummy device 80x25
[    0.012819] Calibrating delay loop (skipped), value calculated using timer frequency.. 2.00 BogoMIPS (lpj=10000)
[    0.022946] pid_max: default: 32768 minimum: 301
[    0.027709] LSM: Security Framework initializing
[    0.032335] AppArmor: AppArmor initialized
[    0.036621] Mount-cache hash table entries: 16384 (order: 5, 131072 bytes, linear)
[    0.044087] Mountpoint-cache hash table entries: 16384 (order: 5, 131072 bytes, linear)
[    0.054341] rcu: Hierarchical SRCU implementation.
[    0.060322] smp: Bringing up secondary CPUs ...
[    0.066382] smp: Brought up 1 node, 4 CPUs
[    0.071881] devtmpfs: initialized
[    0.077627] clocksource: jiffies: mask: 0xffffffff max_cycles: 0xffffffff, max_idle_ns: 19112604462750000 ns
[    0.086713] futex hash table entries: 1024 (order: 4, 65536 bytes, linear)
[    0.093942] pinctrl core: initialized pinctrl subsystem
[    0.099272] thermal_sys: Registered thermal governor 'fair_share'
[    0.099278] thermal_sys: Registered thermal governor 'bang_bang'
[    0.104812] thermal_sys: Registered thermal governor 'step_wise'
[    0.110818] thermal_sys: Registered thermal governor 'user_space'
[    0.117641] NET: Registered protocol family 16
[    0.127561] audit: initializing netlink subsys (disabled)
[    0.132992] audit: type=2000 audit(0.090:1): state=initialized audit_enabled=0 res=1
[    0.144757] HugeTLB registered 2.00 MiB page size, pre-allocated 0 pages
[    0.165922] Unable to handle kernel paging request at virtual address 00000016e1694827
[    0.173081] Oops [#1]
[    0.175308] Modules linked in:
[    0.178353] CPU: 0 PID: 1 Comm: swapper/0 Not tainted 5.6.6-212-default #1 openSUSE Tumbleweed (unreleased)
[    0.188074] epc: ffffffe00016f40a ra : ffffffe00016f44c sp : ffffffe1f6ae9c90
[    0.195193]  gp : ffffffe0009ae600 tp : ffffffe1f6ae3480 t0 : ffffffe1f6c19c80
[    0.202398]  t1 : 0000000000000000 t2 : 000000000000f8b7 s0 : ffffffe1f6ae9cd0
[    0.209605]  s1 : ffffffe1f6a036c0 a0 : 0000000000000000 a1 : 00000000000002e1
[    0.216811]  a2 : ffffffe000a08c18 a3 : 7fda5816e1694827 a4 : 00000001f7d06000
[    0.224017]  a5 : 00000001f7d06000 a6 : ffffffe1f6c19c00 a7 : 0000000000ff0000
[    0.224017]  a5 : 00000001f7d06000 a6 : ffffffe1f6c19c00 a7 : 0000000000ff000[    0.231224]  s2 : 0000000000000cc0 s3 : ffffffe00043262a s4 : 7fda5816e1694827
[    0.238429]  s5 : ffffffe1f6a1a800 s6 : 0000000000000000 s7 : 0000000000000038
[    0.245636]  s8 : ffffffe00018a674 s9 : ffffffe00018ab60 s10: ffffffe1f6c19c00
[    0.252842]  s11: 000000000000000a t3 : ff633e17173e647f t4 : 000000f600000000
[    0.260047]  t5 : 000000ff00000000 t6 : ffffffe1f6c34258
[    0.265344] status: 0000000200000120 badaddr: 00000016e1694827 cause: 000000000000000d
[    0.273289] ---[ end trace 703a116d0e920a95 ]---
[    0.277896] Kernel panic - not syncing: Attempted to kill init! exitcode=0x0000000b
[    0.285488] SMP: stopping secondary CPUs
[    0.289404] Rebooting in 90 seconds..

The worst part here is that reboot-on-panic does not work.

Andreas.

-- 
Andreas Schwab, SUSE Labs, schwab@suse.de
GPG Key fingerprint = 0196 BAD8 1CE9 1970 F4BE  1748 E4D4 88E3 0EEA B9D7
"And now for something completely different."

