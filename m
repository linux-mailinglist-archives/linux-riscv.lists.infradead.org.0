Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D211182815
	for <lists+linux-riscv@lfdr.de>; Thu, 12 Mar 2020 06:11:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=plnrIBWOzcYn+vge5dhjeRCjcobIdGCNPbwhUn5HOGI=; b=QWKwoJBuKrTzB2
	P6MY+HvkSe8KDF+Z2RIxxwqRXDd1gJ5VvWix8W1KL7ukuzuJaFXQjJ5YR42ClY5Z78j1WoJNTVvmf
	1ZphOaLRdnoOSpj3KR72aufTD7/lEymQS6sNSi1Jsa8ywsL0rqT843UJF/XRZo1VaH7If5eMhCQXT
	ldUTa8ECTIW1RgU87JFfT4sWHzIVRMYt2n+hed+QG5CxOpHfUzI96hChIBn10mxIi6I7wQBoWNYjK
	XbsEVKFOXMGMvx17NDGm1zdQ3CJVtlsRuXNiim6QXK6gslj5sLmNCtyjXP0pNUuE1nYMcHAW/p9o4
	hdt0mQYGjjMIb7AQoGig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCG7q-00007m-Lf; Thu, 12 Mar 2020 05:11:18 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCG7j-0008VZ-Pl
 for linux-riscv@lists.infradead.org; Thu, 12 Mar 2020 05:11:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1583989872; x=1615525872;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=D/5bemGaUGNMaM/eyYlokW2U05Iw4NaCiPFbKLaovWQ=;
 b=eXrc3BGdAz6lnn1MHYSxsJcCj/DS6wt6KaRO8zITLFpzZ+ISf2IzcGff
 60f45IAOw0SF73H42EZU1Ks5PbGMCWugh6AJxinGlWxKsdy0jI0znGlW5
 zpstI1Vv9BZIcdNAdArDRJz+J43ao27jEX9mibTz7QZzamBxxQrGGriIC
 OgocleF1X9Hh2hNlwyD3uTdLk7GwRrE+4zZuMnL48VJSwetdvMbP5I0O2
 hfvxsmfZM8qJO3tjyYoTYNjNfrGXawl24SvZRnFyjLZeUslh+nanD39bX
 vYr7tOviz6bpDpkhVfYRXNzNPLvaZwwVPVW4eR+YM0/R/PlQ5D4YhshAq w==;
IronPort-SDR: rRmQa6lHfDSEJZbPn2yq4y81tlTTrbFu+UDOzCwx0qtN9av6DVgkxBkvNmuisgQJDXt0T1Q4ps
 w/R7ihzaSjSZ2/l8aetE9U9jLBJt6OHf7Hyx3KwXi5/zyTHff25Ieci54i7vjT/r9R4wkOITEI
 jKFIheH2SIKpAB1qHTcBFdxNHAYHfuUVeFAGyBbNRHrVktp7tRC7Mc6M4LVUAT8RyjvUfBvUdd
 QkgCpvatT65mbowvHm47YAyjYTWZBR1xbXxdAx4IQH6Oa5sKDpEufl8myYZSCvPSeIzZStVGcG
 ZV0=
X-IronPort-AV: E=Sophos;i="5.70,543,1574092800"; d="scan'208";a="133718966"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 12 Mar 2020 13:11:09 +0800
IronPort-SDR: 7uITOzoCQeFh12tjXVEcAEQK9+6RkQyka8XswbnrhshNg+4goGY5UX7afei39bZeJZQwhGIbGo
 sb5v0+SG3EcaJTBw5vXRLbmo4EsFDf7hgLiqFXaA6T4/5hLQfQHRKe2aj6ZDU3GmEATIgqJdIv
 kSOajTL0ljRAaSpUwe474CSj+4eq51a4w4HG/mQWf4CNKwLpcj3BO4EGIGHRIMeYCLDGtCJdR7
 A/xc7I6+Jb7OtCiXIHPxi+04NQ7Un+B9BlIaP0zLKQPYgDDbw2jUsdZtzT5ZZHGy+DMWx2M5KA
 LnkV+UTWrTK9ymiVnaeZz1zG
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2020 22:03:09 -0700
IronPort-SDR: pP1uego7/saL1HJMSfsWlWr6qGgk2V6v1NtJJUZAA1cM44bHQZX7oEzRzIaxVs6GmvEo4hAOPT
 gyvOLRyymmjiL+4K6qrZ+aqRrXQbpmzaxwrFkO9Gp5iTkd4SMCvSmq2KXJlpsm2uMw7jNYoI1d
 kRIX20Aa2kaXoFi9LgPO94IgQJ2xwlFRXSOd+4XORE8ax5OqXL4Zup+k8m1KAxLVCZ5fJ4glcR
 P1kXnCXWOhkXkkNANXznFxCUwVt1+/uKgw/2IFp78jSk0+MGoOt8qLVDdzhcLHQwlSlAXCb/bd
 TOc=
WDCIronportException: Internal
Received: from washi.fujisawa.hgst.com ([10.149.53.254])
 by uls-op-cesaip02.wdc.com with ESMTP; 11 Mar 2020 22:11:08 -0700
From: Damien Le Moal <damien.lemoal@wdc.com>
To: linux-riscv@lists.infradead.org,
	Palmer Dabbelt <palmer@dabbelt.com>
Subject: [PATCH v2 0/9] Kendryte k210 SoC boards support
Date: Thu, 12 Mar 2020 14:10:58 +0900
Message-Id: <20200312051107.1454880-1-damien.lemoal@wdc.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_221111_879002_62B2F6FC 
X-CRM114-Status: GOOD (  20.15  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.45 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Anup Patel <Anup.Patel@wdc.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

This series adds support to boot nommu Linux on Kendryte K210 SoC based
boards. This is all based on initial work done by Christoph Hellwig.

Patch 1 adds unaligned load/store trap handlers for M-mode.

Patch 2 enables a builtin DTB to allow passing a device tree to the
kernel when the board bootchain is not able to pass one. This option
can be used only for NOMMU kernels for now

Patch 3 introduces an early SoC initialization enabling very early
hardware initialization not possible with device tree entries pointing
to drivers. This is used in patch 6 which introduces a sysctl driver for
the K210 SoC. The early SoC initialization is used to enable the
additional 2MB of SRAM normally reserved to the SoC AI chip.

Patch 4 to 9 add necessary Kconfig changes, a defconfig, a generic
device tree suitable for many K210 boards and compilation of a bootable
image file (bin file) that can be used to flash on K210 board ROM.

Finally, patch 9 disables PMP initialization for K210 SoCs.

This series was tested on the Kendryte KD233 development board, the
Sipeed MAIX dan dock board and the Sipeed MAIXDUINO board. The userspace
used was built using a modified buildroot tree for the toolchain part
and an unmodified busybox tree for the initramfs image (embedded in the
kernel as a cpio file). The folowwing github project contains the
modified buildroot tree:

https://github.com/damien-lemoal/riscv64-nommu-buildroot

This is based on work from Christoph Hellwig, with additional changes
and updates to the latest upstream versions for buildroot and uClibc.

Precompiled versions of the toolchain (gcc 9.2) and initramfs file tree
and cpio file can be found in this project under the directory:

buildroot/riscv64-uclibc-nommu/

Flashing the file arch/riscv/boot/loader.bin to a board can be done
using the Sipeed kflash.py tool with the command:

kflash.py/kflash.py -p /dev/ttyUSB0 -b 1500000 -t loader.bin

The kflash.py tool can be found here:

https://github.com/sipeed/kflash.py

For reference, using the Sipeed MAIXDUINO board, here is the boot
output:

[INFO] Rebooting... 
--- forcing DTR inactive
--- forcing RTS inactive
--- Miniterm on /dev/ttyUSB0  115200,8,N,1 ---
--- Quit: Ctrl+] | Menu: Ctrl+T | Help: Ctrl+T followed by Ctrl+H ---
[    0.000000] Linux version 5.6.0-rc1-00011-ga2b5be1c4374 (damien@yyy) (gcc version 8.2.0 (Buildroot 2018.11-rc2-00003-ga0787e9)) #610 SMP Wed Feb 12 18:53:50 JST 2020
[    0.000000] earlycon: sifive0 at MMIO 0x0000000038000000 (options '')
[    0.000000] printk: bootconsole [sifive0] enabled
[    0.000000] initrd not found or empty - disabling initrd
[    0.000000] Zone ranges:
[    0.000000]   DMA32    [mem 0x0000000080000000-0x00000000807fffff]
[    0.000000]   Normal   empty
[    0.000000] Movable zone start for each node
[    0.000000] Early memory node ranges
[    0.000000]   node   0: [mem 0x0000000080000000-0x00000000807fffff]
[    0.000000] Initmem setup node 0 [mem 0x0000000080000000-0x00000000807fffff]
[    0.000000] elf_hwcap is 0x112d
[    0.000000] percpu: max_distance=0x18000 too large for vmalloc space 0x0
[    0.000000] percpu: Embedded 12 pages/cpu s18272 r0 d30880 u49152
[    0.000000] Built 1 zonelists, mobility grouping off.  Total pages: 2020
[    0.000000] Kernel command line: earlycon console=ttySIF0
[    0.000000] Dentry cache hash table entries: 1024 (order: 1, 8192 bytes, linear)
[    0.000000] Inode-cache hash table entries: 512 (order: 0, 4096 bytes, linear)
[    0.000000] Sorting __ex_table...
[    0.000000] mem auto-init: stack:off, heap alloc:off, heap free:off
[    0.000000] Memory: 6328K/8192K available (924K kernel code, 110K rwdata, 164K rodata, 321K init, 91K bss, 1864K reserved, 0K cma-reserved)
[    0.000000] rcu: Hierarchical RCU implementation.
[    0.000000] rcu: RCU calculated value of scheduler-enlistment delay is 25 jiffies.
[    0.000000] NR_IRQS: 0, nr_irqs: 0, preallocated irqs: 0
[    0.000000] plic: mapped 65 interrupts with 2 handlers for 4 contexts.
[    0.000000] riscv_timer_init_dt: Registering clocksource cpuid [0] hartid [0]
[    0.000000] clocksource: riscv_clocksource: mask: 0xffffffffffffffff max_cycles: 0x3990be68b, max_idle_ns: 881590404272 ns
[    0.000014] sched_clock: 64 bits at 7MHz, resolution 128ns, wraps every 4398046511054ns
[    0.008232] Console: colour dummy device 80x25
[    0.012474] Calibrating delay loop (skipped), value calculated using timer frequency.. 15.60 BogoMIPS (lpj=31200)
[    0.022678] pid_max: default: 4096 minimum: 301
[    0.027288] Mount-cache hash table entries: 512 (order: 0, 4096 bytes, linear)
[    0.034414] Mountpoint-cache hash table entries: 512 (order: 0, 4096 bytes, linear)
[    0.044796] rcu: Hierarchical SRCU implementation.
[    0.049602] smp: Bringing up secondary CPUs ...
[    0.054746] smp: Brought up 1 node, 2 CPUs
[    0.059093] devtmpfs: initialized
[    0.065523] clocksource: jiffies: mask: 0xffffffff max_cycles: 0xffffffff, max_idle_ns: 7645041785100000 ns
[    0.074544] futex hash table entries: 16 (order: -2, 1024 bytes, linear)
[    0.082512] Kendryte K210 SoC sysctl
[    0.096010] clocksource: Switched to clocksource riscv_clocksource
[    0.178581] workingset: timestamp_bits=62 max_order=11 bucket_order=0
[    0.185846] 38000000.serial: ttySIF0 at MMIO 0x38000000 (irq = 1, base_baud = 0) is a SiFive UART v0
[    0.194344] printk: console [ttySIF0] enabled
[    0.194344] printk: console [ttySIF0] enabled
[    0.202929] printk: bootconsole [sifive0] disabled
[    0.202929] printk: bootconsole [sifive0] disabled
[    0.214853] random: get_random_bytes called from 0x0000000080055178 with crng_init=0
[    0.223606] devtmpfs: mounted
[    0.226861] Freeing unused kernel memory: 320K
[    0.230574] This architecture does not have kernel memory protection.
[    0.236987] Run /sbin/init as init process
[    0.241181] Run /etc/init as init process
[    0.245178] Run /bin/init as init process

-----------------------------
| Kendryte K210 NOMMU Linux |
-----------------------------
Mounting /proc
Starting shell


BusyBox v1.32.0.git (2020-02-12 17:51:45 JST) hush - the humble shell
Enter 'help' for a list of built-in commands.

/ # cat /proc/cpuinfo 
processor	: 0
hart		: 0
isa		: rv64imafdc

processor	: 1
hart		: 1
isa		: rv64imafdc

/ # 
/ # ls -l /
drwxrwxr-x    2 1000     1000             0 Feb 12  2020 bin
drwxr-xr-x    2 0        0                0 Jan  1 00:00 dev
drwxrwxr-x    2 1000     1000             0 Feb 12  2020 etc
dr-xr-xr-x   58 0        0                0 Jan  1 00:00 proc
drwxrwxr-x    2 1000     1000             0 Feb 12  2020 root
drwxrwxr-x    2 1000     1000             0 Feb 12  2020 sbin
drwxrwxr-x    2 1000     1000             0 Feb 12  2020 sys
drwxrwxr-x    2 1000     1000             0 Feb 12  2020 tmp
drwxrwxr-x    4 1000     1000             0 Feb 12  2020 usr
/ # 
/ # cat /proc/vmstat 
nr_free_pages 1148
...
/ #

The K210 SoC has more devices (GPIO, SD-card, LCD, etc) that likely can
be enabled and used. For this, the sysctl driver will need further
improvements as each device uses a different clock. To share the fun,
supporting these is left as an exercise for the hobbyist and hackers
interested in this SoC/boards :)

Christoph Hellwig (2):
  riscv: Add Kendryte K210 SoC support
  riscv: create a loader.bin boot image for Kendryte SoC

Damien Le Moal (7):
  riscv: Unaligned load/store handling for M_MODE
  riscv: Add BUILTIN_DTB support
  riscv: Add SOC early init support
  riscv: Select required drivers for Kendryte SOC
  riscv: Add Kendryte K210 device tree
  riscv: Kendryte K210 default config
  riscv: Do not initialize PMP on Kendryte SoC

 arch/riscv/Kbuild                       |   1 +
 arch/riscv/Kconfig                      |  19 ++
 arch/riscv/Kconfig.socs                 |  10 +
 arch/riscv/Makefile                     |   6 +-
 arch/riscv/boot/Makefile                |   3 +
 arch/riscv/boot/dts/Makefile            |   5 +
 arch/riscv/boot/dts/kendryte/Makefile   |   2 +
 arch/riscv/boot/dts/kendryte/k210.dts   |  23 ++
 arch/riscv/boot/dts/kendryte/k210.dtsi  | 117 ++++++++
 arch/riscv/configs/nommu_k210_defconfig |  68 +++++
 arch/riscv/include/asm/soc.h            |  23 ++
 arch/riscv/kernel/Makefile              |   3 +-
 arch/riscv/kernel/head.S                |   9 +-
 arch/riscv/kernel/setup.c               |   6 +
 arch/riscv/kernel/soc.c                 |  28 ++
 arch/riscv/kernel/traps.c               |  27 +-
 arch/riscv/kernel/traps_misaligned.c    | 370 ++++++++++++++++++++++++
 arch/riscv/kernel/vmlinux.lds.S         |   6 +
 arch/riscv/mm/init.c                    |   4 +
 drivers/soc/Kconfig                     |   1 +
 drivers/soc/Makefile                    |   1 +
 drivers/soc/kendryte/Kconfig            |  14 +
 drivers/soc/kendryte/Makefile           |   3 +
 drivers/soc/kendryte/k210-sysctl.c      | 245 ++++++++++++++++
 include/dt-bindings/clock/k210-clk.h    |  20 ++
 25 files changed, 1006 insertions(+), 8 deletions(-)
 create mode 100644 arch/riscv/boot/dts/kendryte/Makefile
 create mode 100644 arch/riscv/boot/dts/kendryte/k210.dts
 create mode 100644 arch/riscv/boot/dts/kendryte/k210.dtsi
 create mode 100644 arch/riscv/configs/nommu_k210_defconfig
 create mode 100644 arch/riscv/include/asm/soc.h
 create mode 100644 arch/riscv/kernel/soc.c
 create mode 100644 arch/riscv/kernel/traps_misaligned.c
 create mode 100644 drivers/soc/kendryte/Kconfig
 create mode 100644 drivers/soc/kendryte/Makefile
 create mode 100644 drivers/soc/kendryte/k210-sysctl.c
 create mode 100644 include/dt-bindings/clock/k210-clk.h

-- 
2.24.1


