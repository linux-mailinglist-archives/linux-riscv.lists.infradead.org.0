Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BCC772C161
	for <lists+linux-riscv@lfdr.de>; Tue, 28 May 2019 10:33:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pdzlPi3vKtKR/3S44Um1ek4lr/2OlcKZ6/NiqxzSR9o=; b=Dc1fHzCklg0u/u
	ts3MsJgrx0LIzUboO5z1261SsES8DVZBcayY0G4wJkWH2VskQhFpcu4kueL0IYgt688Ark9alM2tU
	dht9Xjxeo6tydGuWBvdzkvtytp5ymCAyRSTLVQh9BKg5EqAW3PTvHB99YezSOjLpIVOm/1iD2PIZt
	pE8Y1JoWYVpXFR+GwpxwqHLV/3I1p0R56tvBeUf7wB61vAXUV1ZW6GvIk/VxD0FxkfiZh4DMAv9w/
	Wiqz8+a2BAuYCqD0oGIp2NxVINDKUzmn9w/U5CAWBjyTgnaqk/RWHZiIFqkmNFdRRE/1Nw1GB0IQW
	gbclZafS92uJXZUYFnTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVXXW-0007S0-Uh; Tue, 28 May 2019 08:32:58 +0000
Received: from mail-pg1-x531.google.com ([2607:f8b0:4864:20::531])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVXXT-0007RX-He
 for linux-riscv@lists.infradead.org; Tue, 28 May 2019 08:32:57 +0000
Received: by mail-pg1-x531.google.com with SMTP id f25so10527441pgv.10
 for <linux-riscv@lists.infradead.org>; Tue, 28 May 2019 01:32:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=r7RtTX0GvNXmCocyF2J/4LAIgY3UxyXekfP4HELOf8A=;
 b=HVju5Bmc1pMd7q2Sd6k3DfcdwywXzZ7TW27/F2uLoBjTP/wOVlHfOYToq9uGQT9Ab3
 4h6hQ9DnWMqP4Ks9YYv5gFpqvJrZ03DRs5PZUL/ZrO3XKtqpguo4eHtWDgeAPAxVMAN3
 mQmQEP/Or6ZlNhLbxcKdcoAAoOBmQde5VO9yw6/R4sIDJTyQGlgzBnGN0rCpc1iR4qiY
 RfI8sFSvSTWgs238qFSq1Y6SsNbFk7NidZv3cViPIDEsaInGx4JklniYGs+AhJnqCmLo
 Xq3S4o5N+kGWl2uMsRSPGSCzn6RJpdkWcBGHRs13LJFHN2EB0UXEh7IJ/EOmG4mBO53s
 YpbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=r7RtTX0GvNXmCocyF2J/4LAIgY3UxyXekfP4HELOf8A=;
 b=PexlHIyQOFvA2vI9rcKxXfuIFdd0L6V1/ub9WouBfH9/zszGZGteHIdxdvlAJcts35
 2/Lk0HqYJ2W0QUGEu8L1X0ZQ0Rg1/6PkpjvtgPSeYeLHtnXX2vniR65SZ6icsvCcvBvs
 dEU/svZpPWeb2P/14muYzbsc1iGhTADbnlMVaZEN/8ZWvx8izo4gIZCN/gcc+Gs2XE5O
 3GMjkG86kIMwKw90U3bdesN20K5h20+qr9v6USxNcUreMK0de2thXVcn541ADec/M6Hp
 Co4MvMceJIN9glQX6Z4cwOiwniEvQP/wZcuGT+OX78CYclZIkIfHoys1J77sfjZN90Qd
 9XNA==
X-Gm-Message-State: APjAAAWrmkvCQznSWxcmiIDnBiTnT00D5IMrbsEJeldePfwwpHJNGivJ
 sg3UwnqrlbHk47+dhk/+x2yVAbGnAm8=
X-Google-Smtp-Source: APXvYqxTh8XLKukgj/UVjOwbqueD7BSfmJKsHnytZ+syTMYapV/s5WDqwOCxL7utcmhI//fSDu9B2g==
X-Received: by 2002:a17:90a:5d15:: with SMTP id
 s21mr3992710pji.125.1559032373900; 
 Tue, 28 May 2019 01:32:53 -0700 (PDT)
Received: from localhost ([76.14.6.29])
 by smtp.gmail.com with ESMTPSA id a12sm11926252pgq.0.2019.05.28.01.32.52
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 28 May 2019 01:32:52 -0700 (PDT)
Date: Tue, 28 May 2019 01:32:51 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: Testing the recent RISC-V DT patchsets
In-Reply-To: <alpine.DEB.2.21.9999.1904221705170.18377@viisi.sifive.com>
Message-ID: <alpine.DEB.2.21.9999.1905280105110.20842@viisi.sifive.com>
References: <alpine.DEB.2.21.9999.1904221705170.18377@viisi.sifive.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_013255_728765_19AB53FF 
X-CRM114-Status: GOOD (  14.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:531 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-riscv@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-riscv.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-riscv/>
List-Post: <mailto:linux-riscv@lists.infradead.org>
List-Help: <mailto:linux-riscv-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=subscribe>
Cc: lollivier@baylibre.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org


An update for those testing RISC-V patches: here's a new branch of 
riscv-pk/bbl that doesn't try to read or modify the DT data at all, which 
should be useful until U-Boot settles down.  This new riscv-pk version 
should be easier to use than the previous version for those testing 
upstream-bound kernel DT data on SiFive hardware:

   https://github.com/sifive/riscv-pk/tree/dev/paulw/configurable-machine-data-methods-v1

To build a BBL that doesn't touch the DT data, use the 
"--with-config-method=hifive_unleashed" switch for the "configure" script.  
As before, this version of riscv-pk can take a DTB that can be passed 
along to the kernel.  But this time the path to the DTB can be specified 
on the "configure" script command line.

Below is an example of how to configure it.  (The directory structure 
should be familiar to those using the v1_0 tag of freedom-u-sdk, with the 
kernel source in ./linux, riscv-pk source in ./riscv-pk, and build trees 
in work/{linux,riscv-pk}.)

   cd work/riscv-pk
   CC=/opt/rv64gc-mmu-linux-8.2.0/bin/riscv64-unknown-linux-gnu-gcc ../../riscv-pk/configure \
                --host=riscv64-unknown-linux-gnu \
                --with-payload=../../work/linux/vmlinux-stripped \
                --with-config-method=hifive_unleashed \
                --enable-dtb \
                --with-dtb-path=../../work/linux/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dtb
  

Here is an Linux kernel branch with updated DT data that can be booted 
with the above bootloader:

   https://github.com/sifive/riscv-linux/tree/dev/paulw/dts-v5.2-rc1-experimental

A sample boot log follows, using a 'defconfig' build from that branch.  


- Paul


iFive FSBL:       2019-04-22-1081db9
Using FSBL DTB
HiFive-U serial #: 0000002d
Loading boot payload................................

bbl loader
Relocated DTB from 0000000080007040 to 0000000083200000

[    0.000000] OF: fdt: Ignoring memory range 0x80000000 - 0x80200000
[    0.000000] Linux version 5.2.0-rc1-00006-ge4a86563f655 (paulw@viisi) (gcc version 8.2.0 (GCC)) #65 SMP Mon May 27 23:36:33 PDT 2019
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
[    0.000000] percpu: Embedded 17 pages/cpu s30184 r8192 d31256 u69632
[    0.000000] pcpu-alloc: s30184 r8192 d31256 u69632 alloc=17*4096
[    0.000000] pcpu-alloc: [0] 0 [0] 1 [0] 2 [0] 3 
[    0.000000] Built 1 zonelists, mobility grouping on.  Total pages: 2067975
[    0.000000] Kernel command line: earlycon=sifive,0x10010000 console=ttySIF0,115200 ignore_loglevel debug root=/dev/ram0
[    0.000000] Dentry cache hash table entries: 1048576 (order: 11, 8388608 bytes)
[    0.000000] Inode-cache hash table entries: 524288 (order: 10, 4194304 bytes)
[    0.000000] Sorting __ex_table...
[    0.000000] Memory: 8178620K/8386560K available (5806K kernel code, 395K rwdata, 1851K rodata, 5853K init, 806K bss, 207940K reserved, 0K cma-reserved)
[    0.000000] SLUB: HWalign=64, Order=0-3, MinObjects=0, CPUs=4, Nodes=1
[    0.000000] rcu: Hierarchical RCU implementation.
[    0.000000] rcu:     RCU restricting CPUs from NR_CPUS=8 to nr_cpu_ids=4.
[    0.000000] rcu: RCU calculated value of scheduler-enlistment delay is 25 jiffies.
[    0.000000] rcu: Adjusting geometry for rcu_fanout_leaf=16, nr_cpu_ids=4
[    0.000000] NR_IRQS: 0, nr_irqs: 0, preallocated irqs: 0
[    0.000000] plic: mapped 53 interrupts with 4 handlers for 9 contexts.
[    0.000000] riscv_timer_init_dt: Registering clocksource cpuid [0] hartid [3]
[    0.000000] clocksource: riscv_clocksource: mask: 0xffffffffffffffff max_cycles: 0x1d854df40, max_idle_ns: 3526361616960 ns
[    0.000006] sched_clock: 64 bits at 1000kHz, resolution 1000ns, wraps every 2199023255500ns
[    0.008456] Console: colour dummy device 80x25
[    0.012813] Calibrating delay loop (skipped), value calculated using timer frequency.. 2.00 BogoMIPS (lpj=4000)
[    0.022841] pid_max: default: 32768 minimum: 301
[    0.027939] Mount-cache hash table entries: 16384 (order: 5, 131072 bytes)
[    0.034634] Mountpoint-cache hash table entries: 16384 (order: 5, 131072 bytes)
[    0.042315] *** VALIDATE proc ***
[    0.045010] *** VALIDATE cgroup1 ***
[    0.048462] *** VALIDATE cgroup2 ***
[    0.053000] rcu: Hierarchical SRCU implementation.
[    0.057473] smp: Bringing up secondary CPUs ...
[    0.063256] smp: Brought up 1 node, 4 CPUs
[    0.068186] devtmpfs: initialized
[    0.072404] random: get_random_u32 called from bucket_table_alloc.isra.10+0x4e/0x15e with crng_init=0
[    0.081020] random: get_random_bytes called from setup_net+0x3a/0x1b8 with crng_init=0
[    0.088974] clocksource: jiffies: mask: 0xffffffff max_cycles: 0xffffffff, max_idle_ns: 7645041785100000 ns
[    0.098480] futex hash table entries: 1024 (order: 4, 65536 bytes)
[    0.105299] NET: Registered protocol family 16
[    0.109683] random: get_random_bytes called from kcmp_cookies_init+0x1c/0x4a with crng_init=0
[    0.129984] vgaarb: loaded
[    0.132159] SCSI subsystem initialized
[    0.135927] libata version 3.00 loaded.
[    0.139630] usbcore: registered new interface driver usbfs
[    0.144998] usbcore: registered new interface driver hub
[    0.150360] usbcore: registered new device driver usb
[    0.156037] clocksource: Switched to clocksource riscv_clocksource
[    0.167530] NET: Registered protocol family 2
[    0.171747] tcp_listen_portaddr_hash hash table entries: 4096 (order: 5, 163840 bytes)
[    0.179576] TCP established hash table entries: 65536 (order: 7, 524288 bytes)
[    0.188249] TCP bind hash table entries: 65536 (order: 9, 2097152 bytes)
[    0.201277] TCP: Hash tables configured (established 65536 bind 65536)
[    0.207506] UDP hash table entries: 4096 (order: 6, 393216 bytes)
[    0.214439] UDP-Lite hash table entries: 4096 (order: 6, 393216 bytes)
[    0.221731] NET: Registered protocol family 1
[    0.225830] RPC: Registered named UNIX socket transport module.
[    0.231226] RPC: Registered udp transport module.
[    0.235906] RPC: Registered tcp transport module.
[    0.240593] RPC: Registered tcp NFSv4.1 backchannel transport module.
[    0.247018] PCI: CLS 0 bytes, default 64
[    0.665279] workingset: timestamp_bits=62 max_order=21 bucket_order=0
[    0.680212] NFS: Registering the id_resolver key type
[    0.684561] Key type id_resolver registered
[    0.688653] Key type id_legacy registered
[    0.692654] nfs4filelayout_init: NFSv4 File Layout Driver Registering...
[    0.699720] NET: Registered protocol family 38
[    0.703819] Block layer SCSI generic (bsg) driver version 0.4 loaded (major 254)
[    0.711145] io scheduler mq-deadline registered
[    0.715653] io scheduler kyber registered
[    0.757094] Serial: 8250/16550 driver, 4 ports, IRQ sharing disabled
[    0.763685] 10010000.serial: ttySIF0 at MMIO 0x10010000 (irq = 4, base_baud = 0) is a SiFive UART v0
[    0.772072] printk: console [ttySIF0] enabled
[    0.772072] printk: console [ttySIF0] enabled
[    0.780723] printk: bootconsole [sifive0] disabled
[    0.780723] printk: bootconsole [sifive0] disabled
[    0.790539] 10011000.serial: ttySIF1 at MMIO 0x10011000 (irq = 1, base_baud = 0) is a SiFive UART v0
[    0.799641] [drm] radeon kernel modesetting enabled.
[    0.813383] loop: module loaded
[    0.816227] libphy: Fixed MDIO Bus: probed
[    0.820345] e1000e: Intel(R) PRO/1000 Network Driver - 3.2.6-k
[    0.825645] e1000e: Copyright(c) 1999 - 2015 Intel Corporation.
[    0.831647] ehci_hcd: USB 2.0 'Enhanced' Host Controller (EHCI) Driver
[    0.838065] ehci-pci: EHCI PCI platform driver
[    0.842520] ehci-platform: EHCI generic platform driver
[    0.847757] ohci_hcd: USB 1.1 'Open' Host Controller (OHCI) Driver
[    0.853865] ohci-pci: OHCI PCI platform driver
[    0.858329] ohci-platform: OHCI generic platform driver
[    0.863771] usbcore: registered new interface driver uas
[    0.868853] usbcore: registered new interface driver usb-storage
[    0.874961] mousedev: PS/2 mouse device common for all mice
[    0.880734] usbcore: registered new interface driver usbhid
[    0.885901] usbhid: USB HID core driver
[    0.890586] NET: Registered protocol family 10
[    0.895181] Segment Routing with IPv6
[    0.898160] sit: IPv6, IPv4 and MPLS over IPv4 tunneling driver
[    0.904576] NET: Registered protocol family 17
[    0.908487] Key type dns_resolver registered
[    0.913352] Warning: unable to open an initial console.
[    0.933780] Freeing unused kernel memory: 5852K
[    0.937543] This architecture does not have kernel memory protection.
[    0.943960] Run /init as init process
[    1.531025] random: dd: uninitialized urandom read (512 bytes read)
[   16.657284] random: dropbear: uninitialized urandom read (32 bytes read)
[   16.669210] _warn_unseeded_randomness: 11 callbacks suppressed
[   16.669230] random: get_random_bytes called from tcp_fastopen_init_key_once+0x40/0x58 with crng_init=0
[   16.686212] random: get_random_bytes called from load_elf_binary+0x7c0/0xca4 with crng_init=0

Welcome to Buildroot
buildroot login: 


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
