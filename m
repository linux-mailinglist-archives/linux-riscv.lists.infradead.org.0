Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D7DD7B57C
	for <lists+linux-riscv@lfdr.de>; Wed, 31 Jul 2019 00:10:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NjVzr+2jdA3qtyVVp4rDi9NJ3kBXfvXCFrR8tsZMtNE=; b=ZXrFCqUoXakvJi
	Step48BLE/IEnYyDykpXNGghjDO5LNyLesOmSbszgCUSPP81DaKclb9HpRsWLGE942Mbc60ERle/B
	u5v17lgU0PLuCunTo6QvxwK51b+2w+STqN5zGCsIGYezPs8OjHeihorcWNko6teOchDA1GwdjxRPm
	LfnyfHpldPF0kCdZ/iPTJ9JgwIGLGQ0ul+xCww/SYbtxLCq/esneRvWoHA2cxDZ247fJjq6JMiu0H
	R3Aa4kBNdVRcglijLrick/CcqpB+xjqiECNz3SX4ROVTcOMhLRoQ5FE21qrKO20npJtVIo9fm0ud3
	O8PiORl0Ys9Gas/qYRAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsaJq-0000FL-RK; Tue, 30 Jul 2019 22:10:06 +0000
Received: from mail-oi1-x22d.google.com ([2607:f8b0:4864:20::22d])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsaJl-00081g-SX
 for linux-riscv@lists.infradead.org; Tue, 30 Jul 2019 22:10:03 +0000
Received: by mail-oi1-x22d.google.com with SMTP id u15so49136464oiv.0
 for <linux-riscv@lists.infradead.org>; Tue, 30 Jul 2019 15:09:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=zBTEy6jXh3ed5NRO5FDsZw+/vSDTfWF67mnJPp/BpHU=;
 b=LPQhI8x629dHyQLH6iKsaJTasvx7C6x0U/AyzSQu6/Ew1ClvM1GEliDO0CdQkl5dBb
 jJI3PpMbMAMLRDDJMD3A5EkzavziNEUwAWKy7BDP7GOI5Gn3rA1CKnsYlqEHBl9hzjM9
 qXZnuR4YZRqbB3Y/4hqyg/T4YPqZEQA6ICqau3a7x3b/VQIQE7KJCwU4wHsWED9HwQFC
 iGHDG50WwwfNxWJoREH4TyMvNnpB/1tzK0wwAGwEbr6DNOFv1wUVgkc43abK9Z6xvm0l
 /PsDqeLWl8q/vM0fDyNQH3NoPf0Xa77M+7xIkrLdMdo24mBQQcCB96KyyQsRIJhyFu9R
 zeAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=zBTEy6jXh3ed5NRO5FDsZw+/vSDTfWF67mnJPp/BpHU=;
 b=WXkzOaCmjayIGNUydwsP5+j2F9dwf8P/VvVXLJdEEV6D07gRJSm2JRwoL0VqD2lkoH
 5UxQYuiHPBP/02r1EoEGhqwm3mHvnysWZOlj1MLodKsOSOwozvw7P+ltMN8n/bTy6sxM
 Cy8+qLJsOS6X9S4P38leUtfWB4YeAehezdSYpQEIVx0tFuGp7RX8kknhD6ELyr6TXcJW
 iyJuWciUmuNVgfzBiyObeVGcbmul6cMnSQ43tgBvZxTf3dCAVBdKSQAX7Uq1plBARkAh
 S94KqF/AW3I4CxtYkZ5E3tqGkj3UZKQx8YyuMTjVBAjIAdZTPb8xF5j13ViHmXG8L+uQ
 LzVQ==
X-Gm-Message-State: APjAAAU0WPI2lRhlCtReuwvanYCLVwUpiO5RTKc2WJB6Lii6oiGbLGSp
 uflenpZH3loN7tdUAhNJaLWfwA==
X-Google-Smtp-Source: APXvYqyFAmLU4PZv7Rcz9xhHweT+C+VRAQVJpkxTOmYXI45GGKFnDeKNaT4XSlw5TrZ9bJ8u+axRQQ==
X-Received: by 2002:a05:6808:4d6:: with SMTP id
 a22mr55934621oie.55.1564524598565; 
 Tue, 30 Jul 2019 15:09:58 -0700 (PDT)
Received: from localhost ([2600:100e:b005:6ca0:a8bb:e820:e6d3:8809])
 by smtp.gmail.com with ESMTPSA id u17sm21593819oif.11.2019.07.30.15.09.57
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 30 Jul 2019 15:09:57 -0700 (PDT)
Date: Tue, 30 Jul 2019 15:09:56 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Andreas Schwab <schwab@suse.de>
Subject: Re: 5.3-rc2: Found incompatible CPU
In-Reply-To: <mvm4l33adof.fsf@suse.de>
Message-ID: <alpine.DEB.2.21.9999.1907301502240.4874@viisi.sifive.com>
References: <mvm4l33adof.fsf@suse.de>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_151001_970481_B6F2C92A 
X-CRM114-Status: GOOD (  13.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:22d listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, 30 Jul 2019, Andreas Schwab wrote:

> Trying to boot 5.3-rc2 on the HiFive I'm getting "Found incompatible
> CPU" for each cpu, which means that of_device_is_compatible(node,
> "riscv") is failing.  Any idea?

Here, v5.3-rc2 boots cleanly with upstream DT data, using BBL.

I've noticed problems in the past with some bootloader configurations when 
the DT data is loaded too close to the kernel.  When the kernel is 
uncompressed, some or all of the DT data can be overwritten, which can 
cause mysterious DT parsing problems.


- Paul

[    0.000000] OF: fdt: Ignoring memory range 0x80000000 - 0x80200000
[    0.000000] Linux version 5.3.0-rc2-00002-gb0459a0d29c1 (paulw@viisi) (gcc version 8.2.0 (GCC)) #104 SMP Tue Jul 30 14:46:53 PDT 2019
[    0.000000] earlycon: sifive0 at MMIO 0x0000000010010000 (options '')
[    0.000000] printk: bootconsole [sifive0] enabled
[    0.000000] printk: debug: ignoring loglevel setting.
[    0.000000] initrd not found or empty - disabling initrd
[    0.000000] Zone ranges:
[    0.000000]   DMA32    [mem 0x0000000080200000-0x00000000ffffffff]
[    0.000000]   Normal   [mem 0x0000000100000000-0x000000027fffffff]
[    0.000000] Movable zone start for each node
[    0.000000] Early memory node ranges
[    0.000000]   node   0: [mem 0x0000000080200000-0x000000027fffffff]
[    0.000000] Initmem setup node 0 [mem 0x0000000080200000-0x000000027fffffff]
[    0.000000] On node 0 totalpages: 2096640
[    0.000000]   DMA32 zone: 7161 pages used for memmap
[    0.000000]   DMA32 zone: 0 pages reserved
[    0.000000]   DMA32 zone: 523776 pages, LIFO batch:63
[    0.000000]   Normal zone: 21504 pages used for memmap
[    0.000000]   Normal zone: 1572864 pages, LIFO batch:63
[    0.000000] software IO TLB: mapped [mem 0xfbfff000-0xfffff000] (64MB)
[    0.000000] CPU with hartid=0 is not available
[    0.000000] CPU with hartid=0 is not available
[    0.000000] elf_hwcap is 0x112d
[    0.000000] percpu: Embedded 18 pages/cpu s35240 r8192 d30296 u73728
[    0.000000] pcpu-alloc: s35240 r8192 d30296 u73728 alloc=18*4096
[    0.000000] pcpu-alloc: [0] 0 [0] 1 [0] 2 [0] 3 
[    0.000000] Built 1 zonelists, mobility grouping on.  Total pages: 2067975
[    0.000000] Kernel command line: earlycon=sifive,0x10010000 console=ttySIF0,115200 ignore_loglevel debug root=/dev/ram0
[    0.000000] Dentry cache hash table entries: 1048576 (order: 11, 8388608 bytes, linear)
[    0.000000] Inode-cache hash table entries: 524288 (order: 10, 4194304 bytes, linear)
[    0.000000] Sorting __ex_table...
[    0.000000] mem auto-init: stack:off, heap alloc:off, heap free:off
[    0.000000] Memory: 8178992K/8386560K available (5884K kernel code, 398K rwdata, 1858K rodata, 5858K init, 302K bss, 207568K reserved, 0K cma-reserved)
[    0.000000] SLUB: HWalign=64, Order=0-3, MinObjects=0, CPUs=4, Nodes=1
[    0.000000] rcu: Hierarchical RCU implementation.
[    0.000000] rcu:     RCU restricting CPUs from NR_CPUS=8 to nr_cpu_ids=4.
[    0.000000] rcu: RCU calculated value of scheduler-enlistment delay is 25 jiffies.
[    0.000000] rcu: Adjusting geometry for rcu_fanout_leaf=16, nr_cpu_ids=4
[    0.000000] NR_IRQS: 0, nr_irqs: 0, preallocated irqs: 0
[    0.000000] plic: mapped 53 interrupts with 4 handlers for 9 contexts.
[    0.000000] riscv_timer_init_dt: Registering clocksource cpuid [0] hartid [2]
[    0.000000] clocksource: riscv_clocksource: mask: 0xffffffffffffffff max_cycles: 0x1d854df40, max_idle_ns: 3526361616960 ns
[    0.000005] sched_clock: 64 bits at 1000kHz, resolution 1000ns, wraps every 2199023255500ns
[    0.008466] Console: colour dummy device 80x25
[    0.012818] Calibrating delay loop (skipped), value calculated using timer frequency.. 2.00 BogoMIPS (lpj=4000)
[    0.022841] pid_max: default: 32768 minimum: 301
[    0.027937] Mount-cache hash table entries: 16384 (order: 5, 131072 bytes, linear)
[    0.035330] Mountpoint-cache hash table entries: 16384 (order: 5, 131072 bytes, linear)
[    0.044897] rcu: Hierarchical SRCU implementation.
[    0.049383] smp: Bringing up secondary CPUs ...
[    0.055177] smp: Brought up 1 node, 4 CPUs
[    0.059990] devtmpfs: initialized
[    0.064324] random: get_random_u32 called from bucket_table_alloc.isra.10+0x4e/0x15e with crng_init=0
[    0.072945] random: get_random_bytes called from setup_net+0x3e/0x1f8 with crng_init=0
[    0.080904] clocksource: jiffies: mask: 0xffffffff max_cycles: 0xffffffff, max_idle_ns: 7645041785100000 ns
[    0.090403] futex hash table entries: 1024 (order: 4, 65536 bytes, linear)
[    0.097914] NET: Registered protocol family 16
[    0.102307] random: get_random_bytes called from kcmp_cookies_init+0x1c/0x4a with crng_init=0
[    0.122934] vgaarb: loaded
[    0.125184] SCSI subsystem initialized
[    0.128803] libata version 3.00 loaded.
[    0.132573] usbcore: registered new interface driver usbfs
[    0.137940] usbcore: registered new interface driver hub
[    0.143306] usbcore: registered new device driver usb
[    0.149031] clocksource: Switched to clocksource riscv_clocksource
[    0.161053] NET: Registered protocol family 2
[    0.165275] tcp_listen_portaddr_hash hash table entries: 4096 (order: 5, 163840 bytes, linear)
[    0.173795] TCP established hash table entries: 65536 (order: 7, 524288 bytes, linear)
[    0.183147] TCP bind hash table entries: 65536 (order: 9, 2097152 bytes, linear)
[    0.196868] TCP: Hash tables configured (established 65536 bind 65536)
[    0.203114] UDP hash table entries: 4096 (order: 6, 393216 bytes, linear)
[    0.210724] UDP-Lite hash table entries: 4096 (order: 6, 393216 bytes, linear)
[    0.218710] NET: Registered protocol family 1
[    0.222834] RPC: Registered named UNIX socket transport module.
[    0.228210] RPC: Registered udp transport module.
[    0.232891] RPC: Registered tcp transport module.
[    0.237573] RPC: Registered tcp NFSv4.1 backchannel transport module.
[    0.243999] PCI: CLS 0 bytes, default 64
[    0.663738] workingset: timestamp_bits=62 max_order=21 bucket_order=0
[    0.678752] NFS: Registering the id_resolver key type
[    0.683070] Key type id_resolver registered
[    0.687220] Key type id_legacy registered
[    0.691197] nfs4filelayout_init: NFSv4 File Layout Driver Registering...
[    0.698287] NET: Registered protocol family 38
[    0.702349] Block layer SCSI generic (bsg) driver version 0.4 loaded (major 254)
[    0.709710] io scheduler mq-deadline registered
[    0.714198] io scheduler kyber registered
[    0.761056] Serial: 8250/16550 driver, 4 ports, IRQ sharing disabled
[    0.767691] 10010000.serial: ttySIF0 at MMIO 0x10010000 (irq = 4, base_baud = 0) is a SiFive UART v0
[    0.776077] printk: console [ttySIF0] enabled
[    0.776077] printk: console [ttySIF0] enabled
[    0.784732] printk: bootconsole [sifive0] disabled
[    0.784732] printk: bootconsole [sifive0] disabled
[    0.794555] 10011000.serial: ttySIF1 at MMIO 0x10011000 (irq = 1, base_baud = 0) is a SiFive UART v0
[    0.803659] [drm] radeon kernel modesetting enabled.
[    0.817700] loop: module loaded
[    0.820543] sifive_spi 10040000.spi: mapped; irq=3, cs=1
[    0.825917] sifive_spi 10050000.spi: mapped; irq=5, cs=1
[    0.831247] libphy: Fixed MDIO Bus: probed
[    0.835271] e1000e: Intel(R) PRO/1000 Network Driver - 3.2.6-k
[    0.840560] e1000e: Copyright(c) 1999 - 2015 Intel Corporation.
[    0.846557] ehci_hcd: USB 2.0 'Enhanced' Host Controller (EHCI) Driver
[    0.852975] ehci-pci: EHCI PCI platform driver
[    0.857434] ehci-platform: EHCI generic platform driver
[    0.862682] ohci_hcd: USB 1.1 'Open' Host Controller (OHCI) Driver
[    0.868776] ohci-pci: OHCI PCI platform driver
[    0.873234] ohci-platform: OHCI generic platform driver
[    0.878630] usbcore: registered new interface driver uas
[    0.883763] usbcore: registered new interface driver usb-storage
[    0.889894] mousedev: PS/2 mouse device common for all mice
[    0.920694] mmc_spi spi1.0: SD/MMC host mmc0, no DMA, no WP, no poweroff, cd polling
[    0.927847] usbcore: registered new interface driver usbhid
[    0.933221] usbhid: USB HID core driver
[    0.937909] NET: Registered protocol family 10
[    0.942525] Segment Routing with IPv6
[    0.945502] sit: IPv6, IPv4 and MPLS over IPv4 tunneling driver
[    0.951930] NET: Registered protocol family 17
[    0.955834] Key type dns_resolver registered
[    0.977265] Freeing unused kernel memory: 5856K
[    0.981027] This architecture does not have kernel memory protection.
[    0.987446] Run /init as init process
Starting logging[    1.019795] mmc0: host does not support reading 
read-only switch, assuming write-enable
[    1.027165] mmc0: new SDHC card on SPI
: OK
[    1.033887] mmcblk0: mmc0:0000 ACLCD 29.7 GiB 
Starting mdev...
/etc/init.d/S10mdev: line 21: can't create /proc/sys/kernel/hotplug: 
nonexistent directory
[    1.067663]  mmcblk0: p1 p2 p3
sort: /sys/devices/platform/Fixed: No such file or directory
modprobe: can't change directory to '/lib/modules': No such file or 
directory
Initializing random number generator... [    1.610150] random: dd: 
uninitialized urandom read (512 bytes read)
done.
Starting network...
Waiting for interface eth0 to appear............... timeout!
run-parts: /etc/network/if-pre-up.d/wait_iface: exit status 1
Starting dropbear sshd: [   16.714283] random: dropbear: uninitialized 
urandom read (32 bytes read)
[   16.726828] _warn_unseeded_randomness: 11 callbacks suppressed
[   16.726848] random: get_random_bytes called from 
tcp_fastopen_init_key_once+0x40/0x58 with crng_init=0
OK
[   16.743335] random: get_random_bytes called from 
load_elf_binary+0x7c0/0xca4 with crng_init=0

Welcome to Buildroot
buildroot login: [   42.009032] random: get_random_bytes called from 
__prandom_timer+0x12/0x6a with crng_init=0



_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
