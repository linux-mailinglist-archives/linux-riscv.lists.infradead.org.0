Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFD8CCF334
	for <lists+linux-riscv@lfdr.de>; Tue,  8 Oct 2019 09:06:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z7L8oKdsqheK4Q8fUdmLRzxUh7rV2KmQzeoCaXkCmbY=; b=h+JyVO1KE40y7V
	Ds0YuEkGAwLEfs4XLEnTjLMBRQ/+TFJWmR6Lk/xgzaTsdMqRh1Pd3n/tfQ4P8fu20wOIwGFaLkrH3
	I8EOh+hg0VmndSXWmKBlLIIZgMALYB/6aQW5Q6J1hX7A9gJqsFNSfVKXm+FNucwrNuUSIlNUMgEdW
	0RtZv63re04u0l/pD6LyZcjK6CtIMeVVqSlBXEjIoCFIPs1n43VAhy65IIri+poaFCvJx4AeX4q/K
	uQBB3sFdW7vuSm1zqOee0xlAuQusjBienzadWjijFOBaO6b4Kf1ZD6shKamLVYqAl4pOgHpXUEM3l
	eH4odr6U6xZLOPSmZJXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHjZg-0000Dg-Os; Tue, 08 Oct 2019 07:06:24 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHjZc-0000Ca-BO
 for linux-riscv@lists.infradead.org; Tue, 08 Oct 2019 07:06:22 +0000
Received: by mail-wr1-x442.google.com with SMTP id h4so9265879wrv.7
 for <linux-riscv@lists.infradead.org>; Tue, 08 Oct 2019 00:06:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=E3pc3V04bde4+XCXn6UT/b+v62RkMQBpBYTi5qTBXLQ=;
 b=cjLMEKEphKIbJf6D5XUDrRTx+S7sYPtvAUGTc1y8fC6cbkB25c3ej6p0Kb8uJprZ9E
 QS/g7tE0RNV/5hJOmXwGCIUgoYb+8wVpqmhbeEWMtc99FQ3Vce5eBGJtZMqjJi0IWn8O
 /OO16QnYvhSaSFtLM/MmKDK/NpgBvm93wkEg51slbEpWrOD2rTMnk5U7m+hjK0wS0TFP
 bGyq3Dlbb+1mOfb1fTFdWKftN9putLG+S7YHNiEkgF+fYa5VVAtdx3/JGyDoD6YL1OGG
 GKwAKfWS2A6cU5XiLTn/UY/MSVilmP/UY/H+DIu56Ib58gIfQuQZ/PtbTPdL/mG5KySI
 Ziiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=E3pc3V04bde4+XCXn6UT/b+v62RkMQBpBYTi5qTBXLQ=;
 b=ZZmz2ePnBxiVXgLThunuK/YFVuEPzKzOJ2eOoVQ9ZAev/+DDk7nsV5DFnqTxC/cLzs
 V0+XrHsPISVgDIWDCuEI60lYKvSgRr4HYYTkXRD/TMeSsfrhkjtZDo1K04hV3AMDiQSM
 +Adiwee55cftaocJwiz4hiXPckUuZOASKQ9eo0Mt89GwPN/wYJqzRY1LmhQX8VS0M49s
 SfJrmHpRE30KhGhxHgv1BqL7agTL5I1YzrzMo5/77Bf75nQhxtR8S6F+zi205JCgHIhH
 aaaWp1M+8YYQBeaGQZnrJkeKIfMeW3NSxhtI1wDBNlJ77GWIV5MqQmSge63/1HsmoesL
 O0NA==
X-Gm-Message-State: APjAAAU1YBKFdXay68FYmJkL+NwBu+CdJKNcA0cZmKSzxkBdsz2KeFiP
 pLdGuoTpzPU02ISNXfwGNUDVxtb7AokfFs0hEklwYQ==
X-Google-Smtp-Source: APXvYqw5slXQRP7N0TV29P2IBAeRxNQEocu+IGOM0Yk/QOIPGrzVPcXMleDVjbjBclDbaZcWH63Z6EPLPAO+HavBp2Q=
X-Received: by 2002:adf:f1d1:: with SMTP id z17mr19566215wro.330.1570518377230; 
 Tue, 08 Oct 2019 00:06:17 -0700 (PDT)
MIME-Version: 1.0
References: <20191003200735.GA26760@aurel32.net>
 <73a9ba9fd6c29075209a61660137fb4b899f7ff2.camel@wdc.com>
 <20191005102541.GA22188@aurel32.net> <20191006122850.GA31831@aurel32.net>
 <71c93a62192eb4259ba7e868f7f9aa8ae066c6ad.camel@wdc.com>
 <20191008043014.GA23380@aurel32.net>
In-Reply-To: <20191008043014.GA23380@aurel32.net>
From: Anup Patel <anup@brainfault.org>
Date: Tue, 8 Oct 2019 12:36:05 +0530
Message-ID: <CAAhSdy0R6g9RKqqi3-0vvx=Ks40R_y=1=9-iOQKpHqmX77-79g@mail.gmail.com>
Subject: Re: Fail to bring hart online on HiFive Unleashed
To: Aurelien Jarno <aurelien@aurel32.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_000620_531837_E741C70E 
X-CRM114-Status: GOOD (  18.43  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: "david.abdurachmanov@sifive.com" <david.abdurachmanov@sifive.com>,
 Atish Patra <Atish.Patra@wdc.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 Bin Meng <bmeng.cn@gmail.com>, Lukas Auer <lukas.auer@aisec.fraunhofer.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

+Bin and _Lukas for U-Boot insights.

On Tue, Oct 8, 2019 at 10:00 AM Aurelien Jarno <aurelien@aurel32.net> wrote:
>
> On 2019-10-07 22:19, Atish Patra wrote:
> > Thanks for the detailed analysis. Can you please keep me and david in
> > cc when you report the issue to U-boot ?
>
> Yep. I have progressed a bit on that, and now I am not convinced it's an
> U-boot issue, it can be a GCC issue.
>
> Here are the conditions to reproduce the bug:
> - U-boot runs on hart 1, 2 or 3
> - the autoboot process is not interrupted
> - extlinux is used to boot the kernel
> - arch/riscv/lib/bootm.c is compiled with GCC 9 (works fine with GCC 8)
>
> When the problem happens, the missing hart actually ends its execution
> in an illegal instruction trap trying to execute the FDT (I only noticed
> that recently as the message was hidden by the use of earlycon=sbi):
>
> | SiFive FSBL:       2018-03-20
> | HiFive-U serial #: 00000246
> |
> | OpenSBI v0.4-50-g30f09fb (Oct  6 2019 21:58:05)
> |    ____                    _____ ____ _____
> |   / __ \                  / ____|  _ \_   _|
> |  | |  | |_ __   ___ _ __ | (___ | |_) || |
> |  | |  | | '_ \ / _ \ '_ \ \___ \|  _ < | |
> |  | |__| | |_) |  __/ | | |____) | |_) || |_
> |   \____/| .__/ \___|_| |_|_____/|____/_____|
> |         | |
> |         |_|
> |
> | Platform Name          : SiFive Freedom U540
> | Platform HART Features : RV64ACDFIMSU
> | Platform Max HARTs     : 5
> | Current Hart           : 2
> | Firmware Base          : 0x80000000
> | Firmware Size          : 104 KB
> | Runtime SBI Version    : 0.2
> |
> | PMP0: 0x0000000080000000-0x000000008001ffff (A)
> | PMP1: 0x0000000000000000-0x0000007fffffffff (A,R,W,X)
> |
> |
> | U-Boot 2019.10-rc4-00037-gdac51e9aaf-dirty (Oct 06 2019 - 21:56:51 +0000)
> |
> | CPU:   rv64imafdc
> | Model: SiFive HiFive Unleashed A00
> | DRAM:  8 GiB
> |
> | MMC:   spi@10050000:mmc@0: 0
> | In:    serial@10010000
> | Out:   serial@10010000
> | Err:   serial@10010000
> | Net:   eth0: ethernet@10090000
> | Hit any key to stop autoboot:  0
> | switch to partitions #0, OK
> | mmc0 is current device
> | Scanning mmc 0:2...
> | Found /boot/extlinux/extlinux.conf
> | Retrieving file: /boot/extlinux/extlinux.conf
> | 510 bytes read in 5 ms (99.6 KiB/s)
> | U-Boot menu
> | 1:      kernel 5.3.4
> | 2:      Debian GNU/Linux kernel 5.3.0-trunk-riscv64
> | Enter choice: 1
> | 1:      kernel 5.3.4
> | Retrieving file: /boot/vmlinux-5.3.4
> | 9486076 bytes read in 4813 ms (1.9 MiB/s)
> | append: root=/dev/mmcblk0p2 rw console=ttySIF0 rootwait
> | Retrieving file: /boot/hifive-unleashed-a00.dtb
> | 6088 bytes read in 7 ms (848.6 KiB/s)
> | ## Flattened Device Tree blob at 88000000
> |    Booting using the fdt blob at 0x88000000
> |    Using Device Tree in place at 0000000088000000, end 00000000880047c7
> |
> | Starting kernel ...
> |
> | exception code: 2 , Illegal instruction , epc 88000004 , ra 88000000
> | ### ERROR ### Please RESET the board ###
> | [    0.000000] OF: fdt: Ignoring memory range 0x80000000 - 0x80200000
> | [    0.000000] Linux version 5.3.4+ (aurel32@ohm) (gcc version 9.2.1 20190821 (Debian 9.2.1-4)) #1 SMP Sun Oct 6 11:35:09 UTC 2019
> | [    0.000000] initrd not found or empty - disabling initrd
> | [    0.000000] Zone ranges:
> | [    0.000000]   DMA32    [mem 0x0000000080200000-0x00000000ffffffff]
> | [    0.000000]   Normal   [mem 0x0000000100000000-0x000000027fffffff]
> | [    0.000000] Movable zone start for each node
> | [    0.000000] Early memory node ranges
> | [    0.000000]   node   0: [mem 0x0000000080200000-0x000000027fffffff]
> | [    0.000000] Initmem setup node 0 [mem 0x0000000080200000-0x000000027fffffff]
> | [    0.000000] software IO TLB: mapped [mem 0xfbfff000-0xfffff000] (64MB)
> | [    0.000000] CPU with hartid=0 is not available
> | [    0.000000] CPU with hartid=0 is not available
> | [    0.000000] elf_hwcap is 0x112d
> | [    0.000000] percpu: Embedded 18 pages/cpu s36120 r8192 d29416 u73728
> | [    0.000000] Built 1 zonelists, mobility grouping on.  Total pages: 2067975
> | [    0.000000] Kernel command line: root=/dev/mmcblk0p2 rw console=ttySIF0 rootwait
> | [    0.000000] Dentry cache hash table entries: 1048576 (order: 11, 8388608 bytes, linear)
> | [    0.000000] Inode-cache hash table entries: 524288 (order: 10, 4194304 bytes, linear)
> | [    0.000000] Sorting __ex_table...
> | [    0.000000] mem auto-init: stack:off, heap alloc:off, heap free:off
> | [    0.000000] Memory: 8184044K/8386560K available (6310K kernel code, 395K rwdata, 1985K rodata, 239K init, 317K bss, 202516K reserved, 0K cma-reserved)
> | [    0.000000] SLUB: HWalign=64, Order=0-3, MinObjects=0, CPUs=4, Nodes=1
> | [    0.000000] rcu: Hierarchical RCU implementation.
> | [    0.000000] rcu:     RCU restricting CPUs from NR_CPUS=8 to nr_cpu_ids=4.
> | [    0.000000] rcu: RCU calculated value of scheduler-enlistment delay is 25 jiffies.
> | [    0.000000] rcu: Adjusting geometry for rcu_fanout_leaf=16, nr_cpu_ids=4
> | [    0.000000] NR_IRQS: 0, nr_irqs: 0, preallocated irqs: 0
> | [    0.000000] plic: mapped 53 interrupts with 4 handlers for 9 contexts.
> | [    0.000000] riscv_timer_init_dt: Registering clocksource cpuid [0] hartid [1]
> | [    0.000000] clocksource: riscv_clocksource: mask: 0xffffffffffffffff max_cycles: 0x1d854df40, max_idle_ns: 3526361616960 ns
> | [    0.000006] sched_clock: 64 bits at 1000kHz, resolution 1000ns, wraps every 2199023255500ns
> | [    0.000147] Console: colour dummy device 80x25
> | [    0.000184] Calibrating delay loop (skipped), value calculated using timer frequency.. 2.00 BogoMIPS (lpj=4000)
> | [    0.000198] pid_max: default: 32768 minimum: 301
> | [    0.000685] Mount-cache hash table entries: 16384 (order: 5, 131072 bytes, linear)
> | [    0.001026] Mountpoint-cache hash table entries: 16384 (order: 5, 131072 bytes, linear)
> | [    0.002814] rcu: Hierarchical SRCU implementation.
> | [    0.003280] smp: Bringing up secondary CPUs ...
> | [    5.090625] CPU1: failed to come online
> | [    5.091815] smp: Brought up 1 node, 3 CPUs
>
> --
> Aurelien Jarno                          GPG: 4096R/1DDD8C9B
> aurelien@aurel32.net                 http://www.aurel32.net
>
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
