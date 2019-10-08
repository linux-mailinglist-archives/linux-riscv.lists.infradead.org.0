Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D332BCF28A
	for <lists+linux-riscv@lfdr.de>; Tue,  8 Oct 2019 08:15:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PqwOhApJ497nw+IARIuOEocmMgafrDcX7yLCyScRBjM=; b=mw/bto563X9vCQ
	mZsCZPWQQBANN4ZVZrMbEM1KJb8X6vfHuOLQsYVRvLELCsemcd3iuUj+6BrnAQgGvMTZmOlZqTdRs
	Qb3fMXAJFx5JzZ7+5N24NjAdHcWegHcLHlpOXnCew7w6LOTKA4ACrn9MRxhnD9XSzjSx7Y/zV5f1t
	NHS/ceXDskeGHMIBGcHsCvPGP9VA0zCw4XtBfViinDNGbkh6g/BTzVBbtf3oRd/phU4tPmMAbmHoO
	XRZFv0MNGW7S0YlRauoasPkmyHJunNmPFnwMzjStVtiM2CDFlVpYv2fvWDpo419enRyTBdGVtziyk
	M3yOcHzRaN6RzRztX85Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHimA-0007Qo-Fk; Tue, 08 Oct 2019 06:15:14 +0000
Received: from mail-oi1-x241.google.com ([2607:f8b0:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHim7-0007QS-Ch
 for linux-riscv@lists.infradead.org; Tue, 08 Oct 2019 06:15:13 +0000
Received: by mail-oi1-x241.google.com with SMTP id m16so13854883oic.5
 for <linux-riscv@lists.infradead.org>; Mon, 07 Oct 2019 23:15:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=1iaDb85hBXdJv/JIheDIi8CQbzsYCxt4+o3+7mu17tw=;
 b=kN82Si8am9kHUcO7zHoTqY6ndnpPSVnBOx+jPdjlqZSkspOrq3aoByGwt7iKI4fn7L
 vsCfOILQpE2lfFYF315DeoJcRxqzlSWfN6hV9B/C8gd8Ig+HWG7gKfFbM00bsdFQJyDQ
 vmJkYTA0G98cICuuDyGN5yD9Yvzw1tyaFFDiyIv2GodIOXwstg80v4zOpc7Po7kKUK8r
 CSZCg8fCRNqaMYNjfSOh84FH2mM66+OoRd3F7oGT69Sd9dNMLYi0V1OtCtedYbXJbjDg
 66pyPstLsyWJwiRh3pLuyHNCvucyFKNQIqaJqFiJc2lpURKaQUcaIxaBxkBT5bT+1/kv
 jyBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=1iaDb85hBXdJv/JIheDIi8CQbzsYCxt4+o3+7mu17tw=;
 b=GOtZROPzQNfgO77eyvzWZ14HIHNWaZlW+zh0o6Ll93EVl81jjpHhSW5bV38ccTr1d6
 Dln8gc8NAwIB8S0RdJmXkWwRjkiGIT/dwHj+u6reYBAcfBJdOZinYxAtusZXN3QQv7ei
 e7YGgQC6Mt5AfODKUKwEb/RaNrbyt/0DYoenaOVXSe67Ama34kVSfy++PD5UJHAtB5+h
 SS2wcN/OTAX/XkUkglK5WKL9bZ0OSA9KTCJtWZBXHRM62jhW0N4iL69STZJa3CJ+UEMa
 ereW2mYdHycg8nX0bZl+cHCH976cBSTRRuczIzWahiRCzp8X7Nhbunhp4ezZdFEo16ui
 QlRw==
X-Gm-Message-State: APjAAAU1R525sFzSuNgYKpAWifmRWZw11BXdKpl0leuk2mnyXs1hamAq
 N/cZ4ZEBPjDYpOVh9cAc+E2N9JGtv0cqoHjeMqF7xw==
X-Google-Smtp-Source: APXvYqz96lIRym5OF89evttpyh64dBujrDBm9hjmqRS9jSq7Mn54kr7zdJ882ZsUDT8xk1tbZZ6Ig/5rLxqmuvzSRL8=
X-Received: by 2002:a05:6808:b31:: with SMTP id
 t17mr2462350oij.52.1570515309818; 
 Mon, 07 Oct 2019 23:15:09 -0700 (PDT)
MIME-Version: 1.0
References: <20191003200735.GA26760@aurel32.net>
 <73a9ba9fd6c29075209a61660137fb4b899f7ff2.camel@wdc.com>
 <20191005102541.GA22188@aurel32.net> <20191006122850.GA31831@aurel32.net>
 <71c93a62192eb4259ba7e868f7f9aa8ae066c6ad.camel@wdc.com>
 <20191008043014.GA23380@aurel32.net>
In-Reply-To: <20191008043014.GA23380@aurel32.net>
From: David Abdurachmanov <david.abdurachmanov@sifive.com>
Date: Tue, 8 Oct 2019 09:14:58 +0300
Message-ID: <CAPSAq_znsoOrLsA_rPbmq=e2syZA9MA=-oaZbda5KRiZGG9yyg@mail.gmail.com>
Subject: Re: Fail to bring hart online on HiFive Unleashed
To: Aurelien Jarno <aurelien@aurel32.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_231511_465334_A90EA348 
X-CRM114-Status: GOOD (  20.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Atish Patra <Atish.Patra@wdc.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, Oct 8, 2019 at 7:30 AM Aurelien Jarno <aurelien@aurel32.net> wrote:
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

I think, that's the same issue I had (or still have) a week ago.
Just reminder that kernel 5.3 introduced a 64-byte header (thus no
need to wrap kernel) at least for Image target. Thus it's booti that
boots the kernel on U-Boot side.
Thus the 1st instruction of that header is "j 0x40" (to the beginning
of the actual kernel).  And 88000004 would definitely hold an illegal
instruction.

0000000000000000 <.data>:
0:       81a0                    j       0x40
2:       0000                    unimp
4:       0000                    unimp
6:       0100                    nop
[..]

In the last week and more I am only booting manually to tweak U-Boot /
kernel config / extlinux.conf for Fedora. I will try again without
interrupting extlinux with my current tweaks.

Here is the logic of booting in PXE/EXT code:
https://github.com/u-boot/u-boot/blob/master/cmd/pxe.c#L818

I should end up calling booti and not bootm, but even bootm should be
fine as the 1st instruction is to jump over the header.

I am still confused about this illegal instruction as it shouldn't
happen to my current understanding.

david

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

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
