Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B1CD184385
	for <lists+linux-riscv@lfdr.de>; Fri, 13 Mar 2020 10:16:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pWOr8zYTHRwuGiy82I5SdNQe2GbIKEdc3zTf47LaNTo=; b=FAUXjUPXFwVcSZ
	fEI2p0ETR739+PbzKat1AvDCLGdAQJ9gxi+n9VAdM2P3cwzhVFd82bSZFTwvs6yi+lbAFxyfiAXnf
	pqWBf/gASM0R4bnbbEGEo+WMnmSYjh12coCUTLkOP3+H1/GlZoqt179YpD5pidGJYHKZ8ajEP7cL+
	tdb8QGaJ8nfVBWhtIqhrVii/mPDp8Pjz0sgVpnn6z8/ulNoMVa8RwA7n1Np+Kl/W5TLqTaJ1QU3ge
	lVKpb4ru/JaJjNcdMN5a4Jn7QFelj/3DJWGGWHltGtHm7usWqQd3QUGYQ8IIZ6myPaPyXbZFktTTa
	dJZIwQlEFMwXaAexCpsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCgQy-0006Jw-Ag; Fri, 13 Mar 2020 09:16:48 +0000
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCgQs-0006IT-R4
 for linux-riscv@lists.infradead.org; Fri, 13 Mar 2020 09:16:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1584091002; x=1615627002;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=UNcCTs7UdI7oQb6HxoudHrB64qXIH8L6h7rB46pbfX0=;
 b=oRg7BtuHrTU+zboScfF6uHLlAiZBnw0G+soajxVTPyQR5btHfSaf0Aiv
 Qy3/cTsqkxmSSMh0AaSF+6LXRP2E18Rbu4iVN+J58HaqJ+bgfgKuKTICs
 RAnD6h2si942RiGVY58rDKsCGz02vjB+se0w41uB/xQOQrHEvaghWcUmn
 xgGqVmfdUiTwkiTwHNLpgPdtv4R9gWA0LEtxkO6pT77NT94O3Yqe/3Q9e
 KOKZTBZffRyj5HzEUGGCvO/yKaYUKwaxA6Uwlsaoca7VwfxzuuWnEujjm
 OWm8od13DtA+2d8aVDI8MNwCcuwtBzWlfPpDEMKm3ncSGyxWQW6IR3zp7 Q==;
IronPort-SDR: oDbmBvb/7qoW4ZZ9iMbM6Lq8qawWty5yGlshrSWrkzPm7eYv1gETir1vxlaEerB1xZ1P59odIt
 0WlVN0UaMz1VXvzwDrUCHSIzoYlIB/xQXin0p3pfz+6lj0o53079pIN8CQZLcnx4GmD+6xD6fT
 3V24xgRXJCgN+la2Wfb6jDPwFgCM1mRoBDtvjYhAV65G1r85cUwQEAyAePyIlz/CQMPN0s7Bfr
 EyN4UeZpVD2APyg02cSwH/PWecgiLjoa8Wsj7bVwDz+ADALNVjWVBYqZmh7k78AWVA3VdmL1uG
 cx0=
X-IronPort-AV: E=Sophos;i="5.70,548,1574092800"; d="scan'208";a="240669772"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 13 Mar 2020 17:16:40 +0800
IronPort-SDR: z3El6KivD4Dl6ogbWMr7k5it8FjClaZsAO1O+g0Ah4fPIKD65U1IBCJFVssQY/mqJA8Ad8CjX1
 KjQlQV05BQpd5F8iPpa2EojjepqoPUEm3Mhw39km15HHfZAEXUPnMABiSCf43CTtwcDOJFonlU
 c9KDWG/b32Vq5J0Hdy/IQZ0VnXdWUVzeHh9k5oLrqiMfO8jkZzd+rLtmUMKeQI1OH1r+Oq8azE
 MVUmAd4vthFY03aULq1d99BwAY2Wq4TxozqsLf9bdRLuEqB6dByiHpDHWAqTHUgCUiFsW4VJvv
 rdsc6fcgVRidf/vurLcNb7vV
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2020 02:08:39 -0700
IronPort-SDR: iyHEj56ZmKr9Nwx++2r7nLuelH8RdTSLfjxCyRHSBDZA+2fHimp5ogG9Iivmxcgf9/IdVvDhwa
 UjUH7VishpnMJJfmle428OE6zAS8U37Xg62UbHtRQ4WslT2zDeiFT9NgytBLJaevG7tLQKBTtj
 vWFEzkSPk2RJh9/RIAGumZKGMbV2nGL9YOpRXj92KgIld/hQYmrdsrk3lpkSNahxRsaO3+F5dr
 HQgCIFOKlYCvXk1slnwU965k++GxhLSn6Lu7SpmiCoJBsuJJyqe83bteQHWJdfAC4IyfdISKCq
 j1A=
WDCIronportException: Internal
Received: from washi.fujisawa.hgst.com ([10.149.53.254])
 by uls-op-cesaip02.wdc.com with ESMTP; 13 Mar 2020 02:16:40 -0700
From: Damien Le Moal <damien.lemoal@wdc.com>
To: linux-riscv@lists.infradead.org,
	Palmer Dabbelt <palmer@dabbelt.com>
Subject: [PATCH v3 0/9] Kendryte k210 SoC boards support
Date: Fri, 13 Mar 2020 18:16:30 +0900
Message-Id: <20200313091639.87862-1-damien.lemoal@wdc.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_021642_923268_669DAD9D 
X-CRM114-Status: GOOD (  18.92  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.141.245 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

[    0.000000] Linux version 5.6.0-rc5-01441-g2ce6fd76ca8c (damien@washi) (gcc version 9.2.0 (Buildroot 2020.02-git-01364-gb1878ad3e1)) #669 SMP Fri Mar 13 18:09:12 JST 2020
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
[    0.000000] Memory: 6336K/8192K available (918K kernel code, 106K rwdata, 166K rodata, 321K init, 91K bss, 1856K reserved, 0K cma-reserved)
[    0.000000] rcu: Hierarchical RCU implementation.
[    0.000000] rcu: RCU calculated value of scheduler-enlistment delay is 25 jiffies.
[    0.000000] NR_IRQS: 0, nr_irqs: 0, preallocated irqs: 0
[    0.000000] plic: mapped 65 interrupts with 2 handlers for 4 contexts.
[    0.000000] riscv_timer_init_dt: Registering clocksource cpuid [0] hartid [0]
[    0.000000] clocksource: riscv_clocksource: mask: 0xffffffffffffffff max_cycles: 0x3990be68b, max_idle_ns: 881590404272 ns
[    0.000014] sched_clock: 64 bits at 7MHz, resolution 128ns, wraps every 4398046511054ns
[    0.008238] Console: colour dummy device 80x25
[    0.012474] Calibrating delay loop (skipped), value calculated using timer frequency.. 15.60 BogoMIPS (lpj=31200)
[    0.022678] pid_max: default: 4096 minimum: 301
[    0.027293] Mount-cache hash table entries: 512 (order: 0, 4096 bytes, linear)
[    0.034414] Mountpoint-cache hash table entries: 512 (order: 0, 4096 bytes, linear)
[    0.044802] rcu: Hierarchical SRCU implementation.
[    0.049597] smp: Bringing up secondary CPUs ...
[    0.054742] smp: Brought up 1 node, 2 CPUs
[    0.059124] devtmpfs: initialized
[    0.065550] clocksource: jiffies: mask: 0xffffffff max_cycles: 0xffffffff, max_idle_ns: 7645041785100000 ns
[    0.074568] futex hash table entries: 16 (order: -2, 1024 bytes, linear)
[    0.082473] Kendryte K210 SoC sysctl
[    0.095497] clocksource: Switched to clocksource riscv_clocksource
[    0.182617] workingset: timestamp_bits=62 max_order=11 bucket_order=0
[    0.189913] 38000000.serial: ttySIF0 at MMIO 0x38000000 (irq = 1, base_baud = 0) is a SiFive UART v0
[    0.198406] printk: console [ttySIF0] enabled
[    0.198406] printk: console [ttySIF0] enabled
[    0.206996] printk: bootconsole [sifive0] disabled
[    0.206996] printk: bootconsole [sifive0] disabled
[    0.218801] random: get_random_bytes called from 0x0000000080055128 with crng_init=0
[    0.227767] devtmpfs: mounted
[    0.230969] Freeing unused kernel memory: 320K
[    0.234682] This architecture does not have kernel memory protection.
[    0.241095] Run /sbin/init as init process
[    0.245279] Run /etc/init as init process
[    0.249267] Run /bin/init as init process

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

CHanges from v2:
* Fixed and added comments in device treee
* Use bitfield ops in drivers/soc/kendryte/k210-sysctl.c
* Added reviewed-by tags

Changes from v1:
* Rebased on rc5 kernel
* Fixed misaligned trap handling (removed static dependency on
  __riscv_compressed)
* Cleanup device tree:
  - Single memory node for all memory banks
  - Added clock IDs
  - More commonality with Sean latest v7 U-Boot device tree
* Added last patch to avoid board crash on boot due to out-of-spec PMP
  on K210 SoC.


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
 arch/riscv/boot/dts/kendryte/k210.dtsi  | 123 ++++++++
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
 drivers/soc/kendryte/k210-sysctl.c      | 248 ++++++++++++++++
 include/dt-bindings/clock/k210-clk.h    |  20 ++
 25 files changed, 1015 insertions(+), 8 deletions(-)
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


