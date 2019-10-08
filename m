Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D945CF1BE
	for <lists+linux-riscv@lfdr.de>; Tue,  8 Oct 2019 06:30:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ag4Yozof6REU8nEPF30tgOtZ2rAqLPqo43pIQkRXios=; b=R4TSAK2AeV72Wn
	p0PVJbEmP45T6A5F4fzCOJF7h/v0I7+3aAm6WXC9/glk8FDVRMm9MmLqefNuQPxDO1YRaLuGLRPr0
	ZYpS8vUe4HcoWsJjtA9uSnn/GPVOLQ/9EX3/slkpxW6x0k0kOqIAjOo0QylMBshES+D3gylUCatEQ
	Qt5HdZakm7eeaC304AFbVZzJostpG1Pbl9EHcU3ka1D9n+Jb4dYYs3aAdDKWZdmpBkyFYakkPxTqG
	pixSgSoOanf/pHmBvkP/ZIA46RQ7HUrjlMQMg51gMoiTsQ0z+NJErK30CXIBQfoxvriUzgaGvZorH
	kMDx6djw2bC3Ap3FTXvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHh8p-0003Wv-Jx; Tue, 08 Oct 2019 04:30:31 +0000
Received: from hall.aurel32.net ([2001:bc8:30d7:100::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHh8l-0003R6-BE
 for linux-riscv@lists.infradead.org; Tue, 08 Oct 2019 04:30:29 +0000
Received: from [2a01:e35:2fdd:a4e1:fe91:fc89:bc43:b814] (helo=ohm.rr44.fr)
 by hall.aurel32.net with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <aurelien@aurel32.net>)
 id 1iHh8Z-0003Ho-SE; Tue, 08 Oct 2019 06:30:15 +0200
Received: from aurel32 by ohm.rr44.fr with local (Exim 4.92.2)
 (envelope-from <aurelien@aurel32.net>)
 id 1iHh8Y-0006QM-7Q; Tue, 08 Oct 2019 06:30:14 +0200
Date: Tue, 8 Oct 2019 06:30:14 +0200
From: Aurelien Jarno <aurelien@aurel32.net>
To: Atish Patra <Atish.Patra@wdc.com>
Subject: Re: Fail to bring hart online on HiFive Unleashed
Message-ID: <20191008043014.GA23380@aurel32.net>
References: <20191003200735.GA26760@aurel32.net>
 <73a9ba9fd6c29075209a61660137fb4b899f7ff2.camel@wdc.com>
 <20191005102541.GA22188@aurel32.net>
 <20191006122850.GA31831@aurel32.net>
 <71c93a62192eb4259ba7e868f7f9aa8ae066c6ad.camel@wdc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <71c93a62192eb4259ba7e868f7f9aa8ae066c6ad.camel@wdc.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_213027_383685_812D7722 
X-CRM114-Status: GOOD (  10.86  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2001:bc8:30d7:100:0:0:0:1 listed in] [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: "david.abdurachmanov@sifive.com" <david.abdurachmanov@sifive.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 2019-10-07 22:19, Atish Patra wrote:
> Thanks for the detailed analysis. Can you please keep me and david in
> cc when you report the issue to U-boot ?

Yep. I have progressed a bit on that, and now I am not convinced it's an
U-boot issue, it can be a GCC issue.

Here are the conditions to reproduce the bug:
- U-boot runs on hart 1, 2 or 3
- the autoboot process is not interrupted
- extlinux is used to boot the kernel
- arch/riscv/lib/bootm.c is compiled with GCC 9 (works fine with GCC 8)

When the problem happens, the missing hart actually ends its execution
in an illegal instruction trap trying to execute the FDT (I only noticed
that recently as the message was hidden by the use of earlycon=sbi):

| SiFive FSBL:       2018-03-20
| HiFive-U serial #: 00000246
| 
| OpenSBI v0.4-50-g30f09fb (Oct  6 2019 21:58:05)
|    ____                    _____ ____ _____
|   / __ \                  / ____|  _ \_   _|
|  | |  | |_ __   ___ _ __ | (___ | |_) || |
|  | |  | | '_ \ / _ \ '_ \ \___ \|  _ < | |
|  | |__| | |_) |  __/ | | |____) | |_) || |_
|   \____/| .__/ \___|_| |_|_____/|____/_____|
|         | |
|         |_|
| 
| Platform Name          : SiFive Freedom U540
| Platform HART Features : RV64ACDFIMSU
| Platform Max HARTs     : 5
| Current Hart           : 2
| Firmware Base          : 0x80000000
| Firmware Size          : 104 KB
| Runtime SBI Version    : 0.2
| 
| PMP0: 0x0000000080000000-0x000000008001ffff (A)
| PMP1: 0x0000000000000000-0x0000007fffffffff (A,R,W,X)
| 
| 
| U-Boot 2019.10-rc4-00037-gdac51e9aaf-dirty (Oct 06 2019 - 21:56:51 +0000)
| 
| CPU:   rv64imafdc
| Model: SiFive HiFive Unleashed A00
| DRAM:  8 GiB
| 
| MMC:   spi@10050000:mmc@0: 0
| In:    serial@10010000
| Out:   serial@10010000
| Err:   serial@10010000
| Net:   eth0: ethernet@10090000
| Hit any key to stop autoboot:  0
| switch to partitions #0, OK
| mmc0 is current device
| Scanning mmc 0:2...
| Found /boot/extlinux/extlinux.conf
| Retrieving file: /boot/extlinux/extlinux.conf
| 510 bytes read in 5 ms (99.6 KiB/s)
| U-Boot menu
| 1:      kernel 5.3.4
| 2:      Debian GNU/Linux kernel 5.3.0-trunk-riscv64
| Enter choice: 1
| 1:      kernel 5.3.4
| Retrieving file: /boot/vmlinux-5.3.4
| 9486076 bytes read in 4813 ms (1.9 MiB/s)
| append: root=/dev/mmcblk0p2 rw console=ttySIF0 rootwait
| Retrieving file: /boot/hifive-unleashed-a00.dtb
| 6088 bytes read in 7 ms (848.6 KiB/s)
| ## Flattened Device Tree blob at 88000000
|    Booting using the fdt blob at 0x88000000
|    Using Device Tree in place at 0000000088000000, end 00000000880047c7
| 
| Starting kernel ...
| 
| exception code: 2 , Illegal instruction , epc 88000004 , ra 88000000
| ### ERROR ### Please RESET the board ###
| [    0.000000] OF: fdt: Ignoring memory range 0x80000000 - 0x80200000
| [    0.000000] Linux version 5.3.4+ (aurel32@ohm) (gcc version 9.2.1 20190821 (Debian 9.2.1-4)) #1 SMP Sun Oct 6 11:35:09 UTC 2019
| [    0.000000] initrd not found or empty - disabling initrd
| [    0.000000] Zone ranges:
| [    0.000000]   DMA32    [mem 0x0000000080200000-0x00000000ffffffff]
| [    0.000000]   Normal   [mem 0x0000000100000000-0x000000027fffffff]
| [    0.000000] Movable zone start for each node
| [    0.000000] Early memory node ranges
| [    0.000000]   node   0: [mem 0x0000000080200000-0x000000027fffffff]
| [    0.000000] Initmem setup node 0 [mem 0x0000000080200000-0x000000027fffffff]
| [    0.000000] software IO TLB: mapped [mem 0xfbfff000-0xfffff000] (64MB)
| [    0.000000] CPU with hartid=0 is not available
| [    0.000000] CPU with hartid=0 is not available
| [    0.000000] elf_hwcap is 0x112d
| [    0.000000] percpu: Embedded 18 pages/cpu s36120 r8192 d29416 u73728
| [    0.000000] Built 1 zonelists, mobility grouping on.  Total pages: 2067975
| [    0.000000] Kernel command line: root=/dev/mmcblk0p2 rw console=ttySIF0 rootwait
| [    0.000000] Dentry cache hash table entries: 1048576 (order: 11, 8388608 bytes, linear)
| [    0.000000] Inode-cache hash table entries: 524288 (order: 10, 4194304 bytes, linear)
| [    0.000000] Sorting __ex_table...
| [    0.000000] mem auto-init: stack:off, heap alloc:off, heap free:off
| [    0.000000] Memory: 8184044K/8386560K available (6310K kernel code, 395K rwdata, 1985K rodata, 239K init, 317K bss, 202516K reserved, 0K cma-reserved)
| [    0.000000] SLUB: HWalign=64, Order=0-3, MinObjects=0, CPUs=4, Nodes=1
| [    0.000000] rcu: Hierarchical RCU implementation.
| [    0.000000] rcu:     RCU restricting CPUs from NR_CPUS=8 to nr_cpu_ids=4.
| [    0.000000] rcu: RCU calculated value of scheduler-enlistment delay is 25 jiffies.
| [    0.000000] rcu: Adjusting geometry for rcu_fanout_leaf=16, nr_cpu_ids=4
| [    0.000000] NR_IRQS: 0, nr_irqs: 0, preallocated irqs: 0
| [    0.000000] plic: mapped 53 interrupts with 4 handlers for 9 contexts.
| [    0.000000] riscv_timer_init_dt: Registering clocksource cpuid [0] hartid [1]
| [    0.000000] clocksource: riscv_clocksource: mask: 0xffffffffffffffff max_cycles: 0x1d854df40, max_idle_ns: 3526361616960 ns
| [    0.000006] sched_clock: 64 bits at 1000kHz, resolution 1000ns, wraps every 2199023255500ns
| [    0.000147] Console: colour dummy device 80x25
| [    0.000184] Calibrating delay loop (skipped), value calculated using timer frequency.. 2.00 BogoMIPS (lpj=4000)
| [    0.000198] pid_max: default: 32768 minimum: 301
| [    0.000685] Mount-cache hash table entries: 16384 (order: 5, 131072 bytes, linear)
| [    0.001026] Mountpoint-cache hash table entries: 16384 (order: 5, 131072 bytes, linear)
| [    0.002814] rcu: Hierarchical SRCU implementation.
| [    0.003280] smp: Bringing up secondary CPUs ...
| [    5.090625] CPU1: failed to come online
| [    5.091815] smp: Brought up 1 node, 3 CPUs

-- 
Aurelien Jarno                          GPG: 4096R/1DDD8C9B
aurelien@aurel32.net                 http://www.aurel32.net

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
