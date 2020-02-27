Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47194172B17
	for <lists+linux-riscv@lfdr.de>; Thu, 27 Feb 2020 23:27:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QVXV/1PsW0mnTAM2mi8t6QiKOgbI7VVczSSSrC2+94o=; b=fS18RSnlC7D5iq
	/QW+V9Rxg7KM3H6oK9qprT99gGN9wFUNN4rUIYnyczeoDxNz412bm9v/JdDi6UawvM+qKPoajSAhU
	7m91pnZkRibmrpVcREBU7Kqpno/rT1Il5u3vT8I0RXogb+3FZNy+qUznMjkzPR8druvfm2T9+cADM
	nr/JIUDTmJrElzqeIXjkRTbn5Z2dDYVY1v5imeMmSB3QfUkfy5V3OrgdQieJ4AwqOOyGOmuivxnIw
	xFoe053z25hud1iwV6l3M1yu9qOGjS5OJEghjt++jmSD9vX7I36Bg5cOWLUVKyJlhces66ZuuuqVV
	9NdfB4ISuvY/nnt5d3hA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7RcS-0000Yl-7E; Thu, 27 Feb 2020 22:27:00 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7RcM-0000Wn-MR
 for linux-riscv@lists.infradead.org; Thu, 27 Feb 2020 22:26:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1582842415; x=1614378415;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=vsv6Nzup0wTExC47s/DpNvq8qqmjQ3ZR/b43j5z+eRY=;
 b=KZb5tK8Fa/JJDhfUOQW+IfzUAq6EBmqFcTctxrxMnEpFTG9mW4t4jL21
 1pi6lPHbyjc2ALdQWyuibt8HWWpWllifMZOpfxYpqCm8JAEceP/lAox/v
 vOGJ9Oi5t/gNwGtQ2oPj07pxhNhCE7KbYAYFObUm1AOv1wHsKJawxoZg2
 qMskKqJZFdBzVNRdf+/yxGcNo51ZIcO6E702IbzKv++Gx88ERodKvqaAS
 6rNvTLPCogeMLt+Z2aHa50mZVA9eLzoUGBUqzC1YkKRE+38XS5cXQuRFY
 uqKF/wNGKNBqq5LKDU2bSFWtjih8OX0EhDUdmosY3a0Gx7bbA86i9Y1tO A==;
IronPort-SDR: +swHPNjxAD53p/VTiLhKeSDEDlkOU/QUFp9UfguK9v8e88AKCZ8dEILjyui9td8nhGA6PIvTGs
 J/1PAleKLMG/MkxvamXuRum0SsI7u3nkObtyvt56DN0xm5IlVQ299QKIZhkOzS8p5XqNpPx7q6
 LMUpOAMALXo9Qfs4GI3Gryn0jO47uXWlSjpxK3OXpT8LMNBvXiLgHpB4qbn+fErOHe1qDS3sOn
 JbyJJdKDeIZrGc3LPni138redQPt9j3+9PfejjflIFl1rlTt5NIdUFtN3TH83xg0r/g168WCxO
 /dw=
X-IronPort-AV: E=Sophos;i="5.70,493,1574092800"; d="scan'208";a="132395337"
Received: from uls-op-cesaip02.wdc.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 28 Feb 2020 06:26:50 +0800
IronPort-SDR: FuklZj8GaYuNk09i+o1AnNEgUsTqX2Sw/55ZF1kenGxxob0x9fK5ziap/eXPqVtxk8z3xPsgw2
 J3EPnMi628i/D3JqG9YVmIiyRI3t+ZqJtorCg7OL0ZyMP1cvY5jG2FA6clTj8919NIod5vXwzo
 ykab6l4KQ0RLIFh+kLKi0uq4F3MUu1rXYDHHzr6+TTVI9Mk0oSRFtftFkXcwsf8MbS3t1CGOo7
 dUuaZ1+qWqbuG7gOsKNtcIjG58okb8pWiPvmHaT7SsLhDm5AMT70/s23JXlQSQrLDKHHg7bm7N
 4ab2dKVTs+KjMuKVR5CPqw93
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2020 14:18:49 -0800
IronPort-SDR: 08iBIQlSuRL6AN/VnM44NHtSuHGB9+QZK26r0PLkXReNle2DoJs8qMvKfgVpjfVUb029R6fk1K
 qA5Wzq2Eh5flfW63vt79Fa5mttJkidGxXWzyf9xIBBKb9FvIOWGEZnyfCHaiI6lOff8Wvs57SM
 uAhH7eOIESjeOzUmeVy7jhj6Wg92ju2a0yJKHNDQuDbdFdFloufq9sfPvim77leSBReSZ/jvxX
 CSTq0bWmDej1uxLsXAJ1Qpw7cJxZ2repEfv3rdynNSZJHdDwy/IO9BUQlMQcCsoCgLZ2acz1AZ
 TKI=
WDCIronportException: Internal
Received: from jedi-01.sdcorp.global.sandisk.com (HELO
 jedi-01.int.fusionio.com) ([10.11.143.218])
 by uls-op-cesaip02.wdc.com with ESMTP; 27 Feb 2020 14:26:48 -0800
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org
Subject: [v1 PATCH 0/5] Add UEFI support for RISC-V 
Date: Thu, 27 Feb 2020 14:26:39 -0800
Message-Id: <20200227222644.9468-1-atish.patra@wdc.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_142654_825161_0C0BDF79 
X-CRM114-Status: GOOD (  20.12  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.45 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>, linux-efi@vger.kernel.org,
 Ard Biesheuvel <ardb@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>, Russell King <linux@armlinux.org.uk>,
 Atish Patra <atish.patra@wdc.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 linux-riscv@lists.infradead.org, Will Deacon <will@kernel.org>,
 Ingo Molnar <mingo@kernel.org>, "Chang,
 Abner \(HPS SW/FW Technologist\)" <abner.chang@hpe.com>,
 Michal Simek <michal.simek@xilinx.com>, Mike Rapoport <rppt@linux.ibm.com>,
 Greentime Hu <greentime.hu@sifive.com>, Borislav Petkov <bp@suse.de>,
 Mao Han <han_mao@c-sky.com>, daniel.schaefer@hpe.com,
 Albert Ou <aou@eecs.berkeley.edu>, Kees Cook <keescook@chromium.org>,
 Arnd Bergmann <arnd@arndb.de>, Alexios Zavras <alexios.zavras@intel.com>,
 Alexander Graf <agraf@csgraf.de>, Paul Walmsley <paul.walmsley@sifive.com>,
 Thomas Gleixner <tglx@linutronix.de>, Allison Randal <allison@lohutok.net>,
 "leif@nuviainc.com" <leif@nuviainc.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Anup Patel <Anup.Patel@wdc.com>, Palmer Dabbelt <palmer@dabbelt.com>,
 Paolo Bonzini <pbonzini@redhat.com>, Andrew Morton <akpm@linux-foundation.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

This series adds UEFI support for RISC-V. Currently, only boot time
services have been added. Runtime services will be added in a separate
series. This series depends on some core EFI patches
present in current in efi-next and following other patches.

U-Boot: Adds the boot hartid under chosen node.
https://lists.denx.de/pipermail/u-boot/2020-February/401563.html

Linux kernel: SBI v0.2 and HSM extension support. This series is a mandatory
pre-requisite for UEFI support as only single core can boot EFI stub and
Linux via UEFI. All other cores are brought up using SBI HSM extension.
http://lists.infradead.org/pipermail/linux-riscv/2020-February/008560.html

OpenSBI: master (commit: ge3f69fc1e934)

Patch 1 just moves arm-stub code to a generic code so that it can be used
across different architecture.

Patch 3 adds fixmap bindings so that CONFIG_EFI can be compiled and we do not
have create separate config to enable boot time services. 
As runtime services are not enabled at this time, full generic early ioremap
support is also not added in this series.

Patch 4 and 5 adds the PE/COFF header and EFI stub code support for RISC-V
respectively.

The patches can also be found in following git repo.

https://github.com/atishp04/linux/tree/wip_uefi_riscv

The patches have been verified on Qemu using bootefi command in U-Boot.
Here is the boot log.

OpenSBI v0.6-4-ge3f69fc1e934
   ____                    _____ ____ _____
  / __ \                  / ____|  _ \_   _|
 | |  | |_ __   ___ _ __ | (___ | |_) || |
 | |  | | '_ \ / _ \ '_ \ \___ \|  _ < | |
 | |__| | |_) |  __/ | | |____) | |_) || |_
  \____/| .__/ \___|_| |_|_____/|____/_____|
        | |
        |_|

Platform Name          : QEMU Virt Machine
Platform HART Features : RV64ACDFIMSU
Platform Max HARTs     : 8
Current Hart           : 0
Firmware Base          : 0x80000000
Firmware Size          : 124 KB
Runtime SBI Version    : 0.2

MIDELEG : 0x0000000000000222
MEDELEG : 0x000000000000b109
PMP0    : 0x0000000080000000-0x000000008001ffff (A)
PMP1    : 0x0000000000000000-0xffffffffffffffff (A,R,W,X)


U-Boot 2020.04-rc2-00059-ge5028497e1f9 (Feb 24 2020 - 17:03:04 -0800)

CPU:   rv64imafdcsu
Model: riscv-virtio,qemu
DRAM:  4 GiB
In:    uart@10000000
Out:   uart@10000000
Err:   uart@10000000
Net:
Warning: virtio-net#1 using MAC address from ROM
eth0: virtio-net#1
Hit any key to stop autoboot:  0 
=> setenv bootargs "root=/dev/vda rw console=ttyS0 earlycon=sbi early_ioremap_debug"
=> setenv filesize 0x900000
=> cp.l $fdtcontroladdr $fdt_addr_r 0x10000
=> bootefi $kernel_addr_r $fdt_addr_r
Found 0 disks                                                                                                                                                                                                      
EFI stub: Booting Linux Kernel...                                                                                                                                                                                  
EFI stub: Using DTB from configuration table                                                                                                                                                                       
EFI stub: Loaded initrd from command line option                                                                                                                                                                   
EFI stub: Exiting boot services and installing virtual address map...                                                                                                                                              
[    0.000000] OF: fdt: Ignoring memory range 0x80000000 - 0x80200000
[    0.000000] Linux version 5.6.0-rc1-00017-g5eadec0fc196 (atish@jedi-01) (gcc version 8.2.0 (Buildroot 2018.11-rc2-00003-ga0787e9)) #289 SMP Tue Feb 25 15:53:03 PST 2020
[    0.000000] earlycon: sbi0 at I/O port 0x0 (options '')
[    0.000000] printk: bootconsole [sbi0] enabled
[    0.000000] Initial ramdisk at: 0x(____ptrval____) (28214784 bytes)
[    0.000000] Zone ranges:
[    0.000000]   DMA32    [mem 0x0000000080200000-0x00000000ffffffff]
[    0.000000]   Normal   [mem 0x0000000100000000-0x000000017fffffff]
[    0.000000] Movable zone start for each node
[    0.000000] Early memory node ranges
[    0.000000]   node   0: [mem 0x0000000080200000-0x000000017fffffff]
[    0.000000] Initmem setup node 0 [mem 0x0000000080200000-0x000000017fffffff]
[    0.000000] software IO TLB: mapped [mem 0xf9bd0000-0xfdbd0000] (64MB)
[    0.000000] SBI specification v0.2 detected
[    0.000000] SBI implementation ID=0x1 Version=0x6
[    0.000000] SBI v0.2 TIME extension detected
[    0.000000] SBI v0.2 IPI extension detected
[    0.000000] SBI v0.2 RFENCE extension detected
[    0.000000] SBI v0.2 HSM extension detected
[    0.000000] elf_hwcap is 0x112d
[    0.000000] percpu: Embedded 17 pages/cpu s31784 r8192 d29656 u69632
[    0.000000] Built 1 zonelists, mobility grouping on.  Total pages: 1033735
[    0.000000] Kernel command line: root=/dev/vda rw console=ttyS0 earlycon=sbi early_ioremap_debug
[    0.000000] Dentry cache hash table entries: 524288 (order: 10, 4194304 bytes, linear)
[    0.000000] Inode-cache hash table entries: 262144 (order: 9, 2097152 bytes, linear)
[    0.000000] Sorting __ex_table...
[    0.000000] mem auto-init: stack:off, heap alloc:off, heap free:off
[    0.000000] Memory: 4025172K/4192256K available (6312K kernel code, 467K rwdata, 2119K rodata, 287K init, 311K bss, 167084K reserved, 0K cma-reserved)
[    0.000000] Virtual kernel memory layout:
[    0.000000]       fixmap : 0xffffffcefee00000 - 0xffffffceff000000   (2048 kB)
[    0.000000]       pci io : 0xffffffceff000000 - 0xffffffcf00000000   (  16 MB)
[    0.000000]      vmemmap : 0xffffffcf00000000 - 0xffffffcfffffffff   (4095 MB)
[    0.000000]      vmalloc : 0xffffffd000000000 - 0xffffffdfffffffff   (65535 MB)
[    0.000000]       lowmem : 0xffffffe000000000 - 0xffffffe0ffe00000   (4094 MB)
[    0.000000] SLUB: HWalign=64, Order=0-3, MinObjects=0, CPUs=8, Nodes=1
[    0.000000] rcu: Hierarchical RCU implementation.
[    0.000000] rcu:     RCU debug extended QS entry/exit.
[    0.000000] rcu: RCU calculated value of scheduler-enlistment delay is 25 jiffies.
[    0.000000] NR_IRQS: 0, nr_irqs: 0, preallocated irqs: 0
[    0.000000] plic: mapped 53 interrupts with 8 handlers for 16 contexts.
[    0.000000] riscv_timer_init_dt: Registering clocksource cpuid [0] hartid [2]
[    0.000000] clocksource: riscv_clocksource: mask: 0xffffffffffffffff max_cycles: 0x24e6a1710, max_idle_ns: 440795202120 ns
[    0.000354] sched_clock: 64 bits at 10MHz, resolution 100ns, wraps every 4398046511100ns
[    0.024642] Console: colour dummy device 80x25
[    0.029641] Calibrating delay loop (skipped), value calculated using timer frequency.. 20.00 BogoMIPS (lpj=40000)
[    0.038813] pid_max: default: 32768 minimum: 301
[    0.043401] Mount-cache hash table entries: 8192 (order: 4, 65536 bytes, linear)
[    0.052641] Mountpoint-cache hash table entries: 8192 (order: 4, 65536 bytes, linear)
[    0.113037] rcu: Hierarchical SRCU implementation.
[    0.128662] smp: Bringing up secondary CPUs ...
[    0.196884] smp: Brought up 1 node, 8 CPUs
[    0.227397] devtmpfs: initialized
[    0.243392] random: get_random_u32 called from bucket_table_alloc.isra.25+0x4e/0x160 with crng_init=0
[    0.260148] clocksource: jiffies: mask: 0xffffffff max_cycles: 0xffffffff, max_idle_ns: 7645041785100000 ns
[    0.273062] futex hash table entries: 2048 (order: 5, 131072 bytes, linear)
[    0.296694] NET: Registered protocol family 16
[    0.411010] vgaarb: loaded
[    0.417550] SCSI subsystem initialized
[    0.428103] usbcore: registered new interface driver usbfs
[    0.435392] usbcore: registered new interface driver hub
[    0.444026] usbcore: registered new device driver usb
[    0.470256] clocksource: Switched to clocksource riscv_clocksource
[    0.570385] NET: Registered protocol family 2
.....
.....
[    2.468252] Freeing unused kernel memory: 284K
[    2.470508] This architecture does not have kernel memory protection.
[    2.473123] Run /init as init process
Starting syslogd: OK
Starting klogd: OK
Running sysctl: OK
Saving random seed: OK
Starting network: OK
Starting dhcpcd...
no interfaces have a carrier
forked to background, child pid 142
ssh-keygen: generating new host keys: RSA DSA ECDSA ED25519
Starting sshd: Privilege separation user sshd does not exist
OK

Welcome to Buildroot
buildroot login:

Changes from previous version:
1. Renamed to the generic efi stub macro.
2. Address all redundant comments.
3. Supported EFI kernel image with normal booti command.
4. Removed runtime service related macro defines.

Atish Patra (5):
efi: Move arm-stub to a common file
include: pe.h: Add RISC-V related PE definition
RISC-V: Define fixmap bindings for generic early ioremap support
RISC-V: Add PE/COFF header for EFI stub
RISC-V: Add EFI stub support.

arch/arm/Kconfig                              |   2 +-
arch/arm64/Kconfig                            |   2 +-
arch/riscv/Kconfig                            |  21 +++
arch/riscv/Makefile                           |   1 +
arch/riscv/configs/defconfig                  |   1 +
arch/riscv/include/asm/Kbuild                 |   2 +-
arch/riscv/include/asm/efi.h                  |  59 ++++++++
arch/riscv/include/asm/fixmap.h               |  21 ++-
arch/riscv/include/asm/io.h                   |   1 +
arch/riscv/include/asm/sections.h             |  13 ++
arch/riscv/kernel/Makefile                    |   4 +
arch/riscv/kernel/efi-header.S                |  99 +++++++++++++
arch/riscv/kernel/head.S                      |  16 +++
arch/riscv/kernel/image-vars.h                |  53 +++++++
arch/riscv/kernel/vmlinux.lds.S               |  27 +++-
drivers/firmware/efi/Kconfig                  |   4 +-
drivers/firmware/efi/libstub/Makefile         |  20 ++-
.../efi/libstub/{arm-stub.c => efi-stub.c}    |   0
drivers/firmware/efi/libstub/riscv-stub.c     | 131 ++++++++++++++++++
include/linux/pe.h                            |   3 +
20 files changed, 462 insertions(+), 18 deletions(-)
create mode 100644 arch/riscv/include/asm/efi.h
create mode 100644 arch/riscv/include/asm/sections.h
create mode 100644 arch/riscv/kernel/efi-header.S
create mode 100644 arch/riscv/kernel/image-vars.h
rename drivers/firmware/efi/libstub/{arm-stub.c => efi-stub.c} (100%)
create mode 100644 drivers/firmware/efi/libstub/riscv-stub.c

--
2.24.0


