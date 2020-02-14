Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B609215DA4A
	for <lists+linux-riscv@lfdr.de>; Fri, 14 Feb 2020 16:06:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=CZLS0uJxpk4v6RuxVlwJJv4gJw4Umge55/ZYR7CK1Ao=; b=QPv1/e14B9rv+HECe5fmU2wpN
	QegLvjj2MK8SFph4/xdF1cblWdXSWw5XG4YbT2Zv0+21Jza5DCjMCqN/pb/4vLCLJ7Si+T+lqoI8u
	IEbMWsCgDJOiL5QiUfhTcBt9ZPeAZ9A9rzBMte5e36KknlzqQehTYrkOhahLep5BN4sPZxo83T2oZ
	lhVHIAO07mjdF4PN1Z0CZDmBEBKo40/DJNfvluY2VZOqLhk9dRfN6OIAGJP0xkdNAGsHsrpiysfev
	bx5e3KfKbSzTVvG8saFcotHtsIIKUjl6kIAQBn8Liq23NlEz8TVkAkHWQox8mkpvjs06EEeOhQyw8
	zBznOVAMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2cXl-00028k-5W; Fri, 14 Feb 2020 15:06:13 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2cXf-00026z-VZ
 for linux-riscv@lists.infradead.org; Fri, 14 Feb 2020 15:06:10 +0000
Received: by mail-ot1-x341.google.com with SMTP id h9so9384192otj.11
 for <linux-riscv@lists.infradead.org>; Fri, 14 Feb 2020 07:06:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=carlosedp-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=CZLS0uJxpk4v6RuxVlwJJv4gJw4Umge55/ZYR7CK1Ao=;
 b=i3nQemNiVc/Ij9n/cUjYtoCywPyPsDsRn84TUsbfESDxfVXnJFTOKI5veu1Ftfqv6F
 haacnfTlSBOe7hScNmiWJVKsE0vjx/79PHFFU9BqmpcE+W1Pj3Aw7gLg0WCFDYdeKu4c
 E8EoM19O61DlNV3dzooFnWoowcL/aCPiVN8jTpQnhk1GRTuS+bOsdM7CWh8v9pJHmxKp
 cW2fgeyaz/Zm0UpyZKKmwp1Rp0PJ4EK7RwJrTEkN6ff0q/Jj17W6IpYxcoRl4dTkL1L3
 V4S/XtOk3EdRDgaQKmfRANALrPsp9FOcSUggPqJcKlZpeZxITWcHHzfik1cmuJkKN8KJ
 wrAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=CZLS0uJxpk4v6RuxVlwJJv4gJw4Umge55/ZYR7CK1Ao=;
 b=OHIuQQ2CUWpuZdHYYeSnoqJPNNMvzcGzfKqOrCgjRstIFvOe6zFpSLXm/Y0l1BEJ18
 2hITy3YbXQCe0USSRrkqtZwLrAbbQf8F7dF4JaR7nunPmwRyCt/cUJuqIfCrgJBGYQxe
 fmEWB3BbQQf6fKgwpBgyAfhl1k40JTVu4JWHc6Dznpb9qfrEdGcuJjOg1YZ9XPg1b6CR
 U8M9S/yo5JAEeTcs9s+cyGpVzw8DuC1Z3pDZHIti7YFHVCtj/sgW22oxA2JoWGXgntZw
 2cLWnwlyd6S3wSFJDVtHnL+BTTxsxKf0IOEC66orCka2m4pfIhp1RAMkOjh/O7UjF5Gj
 qtmA==
X-Gm-Message-State: APjAAAVMfSOL8Zk978KGcqaI+epSOMtBwB8gIuOg6GsP9bUvshPJ72Jb
 kxWkoL9uoKnGDqDZldinr9yQniyoeRm0KA==
X-Google-Smtp-Source: APXvYqxtxjhA32AA66zM5eguLg2/tKRAv4gLR3xMj5E8Tphp/ATm98h7JLEpemwi/xiVOmBnl7xXXA==
X-Received: by 2002:a9d:6418:: with SMTP id h24mr2649289otl.172.1581692765007; 
 Fri, 14 Feb 2020 07:06:05 -0800 (PST)
Received: from mail-oi1-f173.google.com (mail-oi1-f173.google.com.
 [209.85.167.173])
 by smtp.gmail.com with ESMTPSA id z21sm2033763oto.52.2020.02.14.07.06.03
 for <linux-riscv@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 14 Feb 2020 07:06:03 -0800 (PST)
Received: by mail-oi1-f173.google.com with SMTP id j132so9662986oih.9
 for <linux-riscv@lists.infradead.org>; Fri, 14 Feb 2020 07:06:03 -0800 (PST)
X-Received: by 2002:a05:6808:b39:: with SMTP id
 t25mr2154342oij.71.1581692762845; 
 Fri, 14 Feb 2020 07:06:02 -0800 (PST)
MIME-Version: 1.0
References: <20200212103432.660256-1-damien.lemoal@wdc.com>
In-Reply-To: <20200212103432.660256-1-damien.lemoal@wdc.com>
From: Carlos Eduardo de Paula <me@carlosedp.com>
Date: Fri, 14 Feb 2020 12:05:51 -0300
X-Gmail-Original-Message-ID: <CADnnUqcFbmspQ0fcggoyPTE4mckoGahHmaNdcJeC7GJD7C16uA@mail.gmail.com>
Message-ID: <CADnnUqcFbmspQ0fcggoyPTE4mckoGahHmaNdcJeC7GJD7C16uA@mail.gmail.com>
Subject: Re: [PATCH 00/10] Kendryte k210 SoC boards support
To: Damien Le Moal <damien.lemoal@wdc.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_070608_174361_B50A0A20 
X-CRM114-Status: GOOD (  27.46  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-riscv <linux-riscv@lists.infradead.org>,
 Anup Patel <Anup.Patel@wdc.com>, Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, Feb 12, 2020 at 7:34 AM Damien Le Moal <damien.lemoal@wdc.com> wrote:
>
> This series adds support to boot nommu Linux on Kendryte K210 SoC based
> boards. This is all based on initial work done by Christoph Hellwig.
>
> The first 2 patches fix riscv gitignore and a potential nommu
> compilation error. These patches are not specific to the Kendryte
> support.
>
> Patch 3 adds unaligned load/store trap handlers for M-mode.
>
> Patch 4 enables a builtin DTB to allow passing a device tree to the
> kernel when the board bootchain is enabled to pass one.
>
> Patch 5 introduces an early SoC initialization enabling very early
> hardware initialization not possible with device tree entries pointing
> to drivers. This is used in patch 6 which introduces a sysctl driver for
> the K210 SoC. The early SoC initialization is used to enable the
> additional 2MB of SRAM normally reserved to the SoC AI chip.
>
> Patch 7 to 9 add necessary Kconfig changes, a defconfig and a generic
> device tree suitable for many K210 boards.
>
> Finally, patch 10 adds compilation of a bootable image file (bin file)
> that can be used to flash the board ROM.
>
> This series was tested on the Kendryte KD233 development board, the
> Sipeed MAIX dan dock board and the Sipeed MAIXDUINO board. The userspace
> used was built using a modified buildroot tree for the toolchain part
> and an unmodified busybox tree for the initramfs image (embedded in the
> kernel as a cpio file). The folowwing github project contains the
> modified buildroot tree:
>
> https://github.com/damien-lemoal/riscv64-nommu-buildroot
>
> This is based on work from Christoph Hellwig, with additional changes
> and updates to the latest upstream versions for buildroot and uClibc.
>
> Precompiled versions of the toolchain (gcc 9.2) and initramfs file tree
> and cpio file can be found in this project under the directory:
>
> buildroot/riscv64-uclibc-nommu/
>
> Flashing the file arch/riscv/boot/loader.bin to a board can be done
> using the Sipeed kflash.py tool with the command:
>
> kflash.py/kflash.py -p /dev/ttyUSB0 -b 1500000 -t loader.bin
>
> The kflash.py tool can be found here:
>
> https://github.com/sipeed/kflash.py
>
> For reference, using the Sipeed MAIXDUINO board, here is the boot
> output:
>
> [INFO] Rebooting...
> --- forcing DTR inactive
> --- forcing RTS inactive
> --- Miniterm on /dev/ttyUSB0  115200,8,N,1 ---
> --- Quit: Ctrl+] | Menu: Ctrl+T | Help: Ctrl+T followed by Ctrl+H ---
> [    0.000000] Linux version 5.6.0-rc1-00011-ga2b5be1c4374 (damien@yyy) (gcc version 8.2.0 (Buildroot 2018.11-rc2-00003-ga0787e9)) #610 SMP Wed Feb 12 18:53:50 JST 2020
> [    0.000000] earlycon: sifive0 at MMIO 0x0000000038000000 (options '')
> [    0.000000] printk: bootconsole [sifive0] enabled
> [    0.000000] initrd not found or empty - disabling initrd
> [    0.000000] Zone ranges:
> [    0.000000]   DMA32    [mem 0x0000000080000000-0x00000000807fffff]
> [    0.000000]   Normal   empty
> [    0.000000] Movable zone start for each node
> [    0.000000] Early memory node ranges
> [    0.000000]   node   0: [mem 0x0000000080000000-0x00000000807fffff]
> [    0.000000] Initmem setup node 0 [mem 0x0000000080000000-0x00000000807fffff]
> [    0.000000] elf_hwcap is 0x112d
> [    0.000000] percpu: max_distance=0x18000 too large for vmalloc space 0x0
> [    0.000000] percpu: Embedded 12 pages/cpu s18272 r0 d30880 u49152
> [    0.000000] Built 1 zonelists, mobility grouping off.  Total pages: 2020
> [    0.000000] Kernel command line: earlycon console=ttySIF0
> [    0.000000] Dentry cache hash table entries: 1024 (order: 1, 8192 bytes, linear)
> [    0.000000] Inode-cache hash table entries: 512 (order: 0, 4096 bytes, linear)
> [    0.000000] Sorting __ex_table...
> [    0.000000] mem auto-init: stack:off, heap alloc:off, heap free:off
> [    0.000000] Memory: 6328K/8192K available (924K kernel code, 110K rwdata, 164K rodata, 321K init, 91K bss, 1864K reserved, 0K cma-reserved)
> [    0.000000] rcu: Hierarchical RCU implementation.
> [    0.000000] rcu: RCU calculated value of scheduler-enlistment delay is 25 jiffies.
> [    0.000000] NR_IRQS: 0, nr_irqs: 0, preallocated irqs: 0
> [    0.000000] plic: mapped 65 interrupts with 2 handlers for 4 contexts.
> [    0.000000] riscv_timer_init_dt: Registering clocksource cpuid [0] hartid [0]
> [    0.000000] clocksource: riscv_clocksource: mask: 0xffffffffffffffff max_cycles: 0x3990be68b, max_idle_ns: 881590404272 ns
> [    0.000014] sched_clock: 64 bits at 7MHz, resolution 128ns, wraps every 4398046511054ns
> [    0.008232] Console: colour dummy device 80x25
> [    0.012474] Calibrating delay loop (skipped), value calculated using timer frequency.. 15.60 BogoMIPS (lpj=31200)
> [    0.022678] pid_max: default: 4096 minimum: 301
> [    0.027288] Mount-cache hash table entries: 512 (order: 0, 4096 bytes, linear)
> [    0.034414] Mountpoint-cache hash table entries: 512 (order: 0, 4096 bytes, linear)
> [    0.044796] rcu: Hierarchical SRCU implementation.
> [    0.049602] smp: Bringing up secondary CPUs ...
> [    0.054746] smp: Brought up 1 node, 2 CPUs
> [    0.059093] devtmpfs: initialized
> [    0.065523] clocksource: jiffies: mask: 0xffffffff max_cycles: 0xffffffff, max_idle_ns: 7645041785100000 ns
> [    0.074544] futex hash table entries: 16 (order: -2, 1024 bytes, linear)
> [    0.082512] Kendryte K210 SoC sysctl
> [    0.096010] clocksource: Switched to clocksource riscv_clocksource
> [    0.178581] workingset: timestamp_bits=62 max_order=11 bucket_order=0
> [    0.185846] 38000000.serial: ttySIF0 at MMIO 0x38000000 (irq = 1, base_baud = 0) is a SiFive UART v0
> [    0.194344] printk: console [ttySIF0] enabled
> [    0.194344] printk: console [ttySIF0] enabled
> [    0.202929] printk: bootconsole [sifive0] disabled
> [    0.202929] printk: bootconsole [sifive0] disabled
> [    0.214853] random: get_random_bytes called from 0x0000000080055178 with crng_init=0
> [    0.223606] devtmpfs: mounted
> [    0.226861] Freeing unused kernel memory: 320K
> [    0.230574] This architecture does not have kernel memory protection.
> [    0.236987] Run /sbin/init as init process
> [    0.241181] Run /etc/init as init process
> [    0.245178] Run /bin/init as init process
>
> -----------------------------
> | Kendryte K210 NOMMU Linux |
> -----------------------------
> Mounting /proc
> Starting shell
>
>
> BusyBox v1.32.0.git (2020-02-12 17:51:45 JST) hush - the humble shell
> Enter 'help' for a list of built-in commands.
>
> / # cat /proc/cpuinfo
> processor       : 0
> hart            : 0
> isa             : rv64imafdc
>
> processor       : 1
> hart            : 1
> isa             : rv64imafdc
>
> / #
> / # ls -l /
> drwxrwxr-x    2 1000     1000             0 Feb 12  2020 bin
> drwxr-xr-x    2 0        0                0 Jan  1 00:00 dev
> drwxrwxr-x    2 1000     1000             0 Feb 12  2020 etc
> dr-xr-xr-x   58 0        0                0 Jan  1 00:00 proc
> drwxrwxr-x    2 1000     1000             0 Feb 12  2020 root
> drwxrwxr-x    2 1000     1000             0 Feb 12  2020 sbin
> drwxrwxr-x    2 1000     1000             0 Feb 12  2020 sys
> drwxrwxr-x    2 1000     1000             0 Feb 12  2020 tmp
> drwxrwxr-x    4 1000     1000             0 Feb 12  2020 usr
> / #
> / # cat /proc/vmstat
> nr_free_pages 1148
> ...
> / #
>
> The K210 SoC has more devices (GPIO, SD-card, LCD, etc) that likely can
> be enabled and used. For this, the sysctl driver will need further
> improvements as each device uses a different clock. To share the fun,
> supporting these is left as an exercise for the hobbyist and hackers
> interested in this SoC/boards :)
>
> Christoph Hellwig (2):
>   riscv: Add Kendryte K210 SoC support
>   riscv: create a loader.bin for the kendryte kflash.py tool
>
> Damien Le Moal (8):
>   riscv: Fix gitignore
>   riscv: Force flat memory model with no-mmu
>   riscv: Unaligned load/store handling for M_MODE
>   riscv: Add BUILTIN_DTB support
>   riscv: Add SOC early init support
>   riscv: Select required drivers for Kendryte SOC
>   riscv: Add Kendryte K210 device tree
>   riscv: Kendryte K210 default config
>
>  arch/riscv/Kbuild                       |   1 +
>  arch/riscv/Kconfig                      |  19 ++
>  arch/riscv/Kconfig.socs                 |  10 +
>  arch/riscv/Makefile                     |   4 +-
>  arch/riscv/boot/.gitignore              |   2 +
>  arch/riscv/boot/Makefile                |   3 +
>  arch/riscv/boot/dts/Makefile            |   5 +
>  arch/riscv/boot/dts/kendryte/Makefile   |   2 +
>  arch/riscv/boot/dts/kendryte/k210.dts   |  23 ++
>  arch/riscv/boot/dts/kendryte/k210.dtsi  | 123 ++++++++
>  arch/riscv/configs/nommu_k210_defconfig |  68 +++++
>  arch/riscv/include/asm/soc.h            |  23 ++
>  arch/riscv/kernel/Makefile              |   3 +-
>  arch/riscv/kernel/head.S                |   1 +
>  arch/riscv/kernel/setup.c               |   6 +
>  arch/riscv/kernel/soc.c                 |  28 ++
>  arch/riscv/kernel/traps.c               |  27 +-
>  arch/riscv/kernel/traps_misaligned.c    | 371 ++++++++++++++++++++++++
>  arch/riscv/kernel/vmlinux.lds.S         |   6 +
>  arch/riscv/mm/init.c                    |   4 +
>  drivers/soc/Kconfig                     |   1 +
>  drivers/soc/Makefile                    |   1 +
>  drivers/soc/kendryte/Kconfig            |  14 +
>  drivers/soc/kendryte/Makefile           |   3 +
>  drivers/soc/kendryte/k210-sysctl.c      | 245 ++++++++++++++++
>  25 files changed, 987 insertions(+), 6 deletions(-)
>  create mode 100644 arch/riscv/boot/dts/kendryte/Makefile
>  create mode 100644 arch/riscv/boot/dts/kendryte/k210.dts
>  create mode 100644 arch/riscv/boot/dts/kendryte/k210.dtsi
>  create mode 100644 arch/riscv/configs/nommu_k210_defconfig
>  create mode 100644 arch/riscv/include/asm/soc.h
>  create mode 100644 arch/riscv/kernel/soc.c
>  create mode 100644 arch/riscv/kernel/traps_misaligned.c
>  create mode 100644 drivers/soc/kendryte/Kconfig
>  create mode 100644 drivers/soc/kendryte/Makefile
>  create mode 100644 drivers/soc/kendryte/k210-sysctl.c
>
> --
> 2.24.1
>
>

Hi Damien, I've tested the patches on v5.5.0 and it boots perfectly on
my MaixGo board. I used the provided initramfs.cpio as the payload and
got to the busybox prompt.

While trying to build my own busybox, I got a few problems. I've
checked-out your tree and copied the toolchain. Then when building
busybox with your minimal config, I got this error:

  LINK    busybox_unstripped
Your linker does not support --sort-section,alignment
Your linker does not support --sort-common
Your linker does not support -Wl,--gc-sections
Trying libraries: m rt
Failed: -Wl,--start-group  -lm -lrt  -Wl,--end-group
Output of:
/opt/riscv64-uclibc/bin/riscv64-linux-gcc -Wall -Wshadow
-Wwrite-strings -Wundef -Wstrict-prototypes -Wunused
-Wunused-parameter -Wunused-function -Wunused-value
-Wmissing-prototypes -Wmissing-declarations -Wno-format-security
-Wdeclaration-after-statement -Wold-style-definition -finline-limit=0
-fno-builtin-strlen -fomit-frame-pointer -ffunction-sections
-fdata-sections -fno-guess-branch-probability -funsigned-char
-static-libgcc -falign-functions=1 -falign-jumps=1 -falign-labels=1
-falign-loops=1 -fno-unwind-tables -fno-asynchronous-unwind-tables
-fno-builtin-printf -Wno-string-plus-int -Wno-constant-logical-operand
-Os -Os -fPIC --sysroot=/opt/riscv64-uclibc/riscv64-buildroot-linux-uclibc/sysroot/
-static -Os -static -Wl,-elf2flt=-r -o busybox_unstripped
-Wl,--start-group applets/built-in.o archival/lib.a
archival/libarchive/lib.a console-tools/lib.a coreutils/lib.a
coreutils/libcoreutils/lib.a debianutils/lib.a klibc-utils/lib.a
e2fsprogs/lib.a editors/lib.a findutils/lib.a init/lib.a libbb/lib.a
libpwdgrp/lib.a loginutils/lib.a mailutils/lib.a miscutils/lib.a
modutils/lib.a networking/lib.a networking/libiproute/lib.a
networking/udhcp/lib.a printutils/lib.a procps/lib.a runit/lib.a
selinux/lib.a shell/lib.a sysklogd/lib.a util-linux/lib.a
util-linux/volume_id/lib.a archival/built-in.o
archival/libarchive/built-in.o console-tools/built-in.o
coreutils/built-in.o coreutils/libcoreutils/built-in.o
debianutils/built-in.o klibc-utils/built-in.o e2fsprogs/built-in.o
editors/built-in.o findutils/built-in.o init/built-in.o
libbb/built-in.o libpwdgrp/built-in.o loginutils/built-in.o
mailutils/built-in.o miscutils/built-in.o modutils/built-in.o
networking/built-in.o networking/libiproute/built-in.o
networking/udhcp/built-in.o printutils/built-in.o procps/built-in.o
runit/built-in.o selinux/built-in.o shell/built-in.o
sysklogd/built-in.o util-linux/built-in.o
util-linux/volume_id/built-in.o -Wl,--end-group -Wl,--start-group -lm
-lrt -Wl,--end-group
==========
/opt/riscv64-uclibc/riscv64-buildroot-linux-uclibc/bin/ld.real: cannot
find crt1.o: No such file or directory
/opt/riscv64-uclibc/riscv64-buildroot-linux-uclibc/bin/ld.real: cannot
find crti.o: No such file or directory
/opt/riscv64-uclibc/riscv64-buildroot-linux-uclibc/bin/ld.real: cannot
find crtbeginT.o: No such file or directory
collect2: error: ld returned 1 exit status
Note: if build needs additional libraries, put them in CONFIG_EXTRA_LDLIBS.
Example: CONFIG_EXTRA_LDLIBS="pthread dl tirpc audit pam"
make: *** [Makefile:718: busybox_unstripped] Error 1

Then I've built the complete buildroot toolchain and replaced it on /opt.

Then I've proceeded to "make SKIP_STRIP=y" and "make install" and it
built fine. I got into _install dir and ran: "find . | sudo cpio -H
newc --create --verbose > ../k210.cpio" to generate the cpio. All this
with the

Rebuilt the kernel with it but when booting, I got this error:

[    0.259289] Run /sbin/init as init process
[    0.263480] Run /etc/init as init process
[    0.267453] Run /bin/init as init process
[    0.286973] Kernel panic - not syncing: Attempted to kill init!
exitcode=0x00000000
[    0.293869] CPU: 1 PID: 1 Comm: sh Not tainted 5.5.0-dirty #19
[    0.299673] Call Trace:
[    0.302109] [<00000000800401f6>] 0x00000000800401f6
[    0.306969] [<000000008004033a>] 0x000000008004033a
[    0.311831] [<0000000080111abe>] 0x0000000080111abe
[    0.316693] [<000000008004340e>] 0x000000008004340e
[    0.321556] [<0000000080045402>] 0x0000000080045402
[    0.326417] [<0000000080045898>] 0x0000000080045898
[    0.331279] [<000000008003f1d2>] 0x000000008003f1d2
[    0.336142] SMP: stopping secondary CPUs
[    0.340065] ---[ end Kernel panic - not syncing: Attempted to kill
init! exitcode=0x00000000 ]---

I also tried with a gzipped cpio but got the "Kernel panic - not
syncing: no cpio magic" error.

What's the right way to create the cpio initramfs? I want to customize
it a little.

Thanks.

-- 
________________________________________
Carlos Eduardo de Paula
me@carlosedp.com
http://carlosedp.com
http://twitter.com/carlosedp
Linkedin
________________________________________

