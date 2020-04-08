Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A24B61A277F
	for <lists+linux-riscv@lfdr.de>; Wed,  8 Apr 2020 18:50:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-ID:To:From:
	Subject:Date:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=QQYZPZuaD3gvAt8XvbfkSFn8KkJ/ebEVEHLVG8rqDb8=; b=r7mqoqOvQxiJPu/2p2x+MokoKU
	nTPbcxUznXCmvSPZipjixTU8lPWWfUGNS6as7adCesBrx0R9ea/Ab+FcIoKadd11d9fBkTDdeilAr
	mExYT/7DqmH3rbyLMNwq6RpUBQvXuxNibwVCQz3QzSVvq21ttxD1L74I8Qqcg6CfJmmrWcVr209Qw
	CjajM9Zgy+eISPaBMVOVfjiP8MpJRq8A3q7gq0yCKEHKT2h5xye0i5s9NEFZX4c3G6wUQ6UIQF+a3
	43ATe5wMOe/8X2Afm7gpDCxDiSCK9HiOzszV02sN2UjXdLvPZBR57JPeFs1Lm4WoRvheJxiZUbCNQ
	QmXA8S4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMDu8-0008Gb-Kz; Wed, 08 Apr 2020 16:50:20 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMDtz-0006nJ-8O
 for linux-riscv@lists.infradead.org; Wed, 08 Apr 2020 16:50:14 +0000
Received: by mail-pl1-x642.google.com with SMTP id ay1so2730516plb.0
 for <linux-riscv@lists.infradead.org>; Wed, 08 Apr 2020 09:50:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
 h=date:subject:cc:from:to:message-id;
 bh=QQYZPZuaD3gvAt8XvbfkSFn8KkJ/ebEVEHLVG8rqDb8=;
 b=JBeN7IqThBYCjzPGqKVTDAG2xe3PHO4U03Mm4mB5xCFqyu5yAqK1gT1Vo1GwI+BgBr
 lmHg0ljh4tCR/rt9y9ZMz5IbXesWdJxVKjasZ1/ICu1QsAxZCZzVwKUmZApNZnk2Q3Q5
 ZcOs09nnR3yHWJNM9FKVrln0fu6n4JbC4Ql/bkE+s06HVsZVdYpZF9Uoo+2IC0EMbXhY
 WBiExf70ZFS7690mXP1JWJ/vzKJrlU/7ushbNdtepGsgpe5HJ+aIdqYrwP1m4EyBOW/q
 KK/57fnO//dTwIEKWEsNb2vLnOABOvFjoIix54U5C2Xs6urKKEZCCZwgmpR6Kqx1z6iT
 cp1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:cc:from:to:message-id;
 bh=QQYZPZuaD3gvAt8XvbfkSFn8KkJ/ebEVEHLVG8rqDb8=;
 b=NqPobd+sy5KG09J5LpcYUoDljxTA6LC1O+0Kz7RneZ9ZGzxF0eLvUDNYoPRje7eWbf
 H6FJJcL/N4ZkOw8oVRrdipsgWMtaqOxKxaunCbow47jWePMQ7FrXTdD1qnkG8wM6yIVO
 zXs5VLFaC/Fv+N6LIt59Spum9wQDNEbGtoAIaPgLnd9mt5NLf1o4B1rApmYo20hzo8+p
 P3D2dBlJfZ31CO/7pxyHV3h0AvIopPGvEE96MzNyqGXWTE1Ej49Blti4Mu3xOk4xGKPn
 AGSkYIrRQYZQjaDZ9huUYJG3hBsBRYMiwZpmRUwpWTHxZfKTkfrDvpG2t6oPgaFi7Tw+
 X4dA==
X-Gm-Message-State: AGi0PuZC8MyDoa+0Yq3bhsf15mrV2rcnkMDWEx6qH1SwLOrRoxOochhi
 p9OaMiP+HtiriEO1z5I9X3EcF2Pv82h2XQ==
X-Google-Smtp-Source: APiQypJS11tt0zxW9CXPj84MqIyJl1W+42dBt+SIznUYnT+NWvjD/TCjU0w0toKvVMos7dVstsi/cQ==
X-Received: by 2002:a17:90b:14cf:: with SMTP id
 jz15mr6569330pjb.36.1586364606596; 
 Wed, 08 Apr 2020 09:50:06 -0700 (PDT)
Received: from localhost (76-210-143-223.lightspeed.sntcca.sbcglobal.net.
 [76.210.143.223])
 by smtp.gmail.com with ESMTPSA id t27sm8071069pgn.53.2020.04.08.09.50.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Apr 2020 09:50:05 -0700 (PDT)
Date: Wed, 08 Apr 2020 09:50:05 -0700 (PDT)
X-Google-Original-Date: Wed, 08 Apr 2020 09:50:01 PDT (-0700)
Subject: [GIT PULL] RISC-V Patches for the 5.7 Merge Window, Part 1
From: Palmer Dabbelt <palmer@dabbelt.com>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <mhng-e58ec1f9-86f2-451e-ac9f-9add83693752@palmerdabbelt-glaptop1>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_095011_528136_CEB1F292 
X-CRM114-Status: GOOD (  19.38  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

The following changes since commit 98d54f81e36ba3bf92172791eba5ca5bd813989b:

  Linux 5.6-rc4 (2020-03-01 16:38:46 -0600)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/riscv/linux.git tags/riscv-for-linus-5.7

for you to fetch changes up to 37809df4b1c88927fe944eb766e0553811c51f64:

  riscv: create a loader.bin boot image for Kendryte SoC (2020-04-03 10:50:17 -0700)

----------------------------------------------------------------
RISC-V Patches for the 5.7 Merge Window, Part 1

This tag contains the patches I'd like to target for 5.7.  It has a handful of
new features:

* Partial support for the Kendryte K210.  There are still a few outstanding
  issues that I have patches for, but I don't actually have a board to test
  them so they're not included yet.
* SBI v0.2 support.
* Fixes to support for building with LLVM-based toolchains.  The resulting
  images are known not to boot yet.

This builds and boots for me.  There is one merge conflict, it's just a Kconfig
merge issue.  I can publish a resolved branch if you'd like.

I don't anticipate a part two, but I'll probably have something early in the
RCs to finish up the K210 support.

----------------------------------------------------------------
Alexandre Ghiti (1):
      riscv: Use p*d_leaf macros to define p*d_huge

Atish Patra (12):
      RISC-V: Move all address space definition macros to one place
      RISC-V: Mark existing SBI as 0.1 SBI.
      RISC-V: Add basic support for SBI v0.2
      RISC-V: Add SBI v0.2 extension definitions
      RISC-V: Introduce a new config for SBI v0.1
      RISC-V: Implement new SBI v0.2 extensions
      RISC-V: Move relocate and few other functions out of __init
      RISC-V: Add cpu_ops and modify default booting method
      RISC-V: Export SBI error to linux error mapping function
      RISC-V: Add SBI HSM extension definitions
      RISC-V: Add supported for ordered booting method using HSM
      RISC-V: Support cpu hotplug

Christoph Hellwig (2):
      riscv: Add Kendryte K210 SoC support
      riscv: create a loader.bin boot image for Kendryte SoC

Damien Le Moal (5):
      riscv: Unaligned load/store handling for M_MODE
      riscv: Add SOC early init support
      riscv: Select required drivers for Kendryte SOC
      riscv: Add Kendryte K210 device tree
      riscv: Kendryte K210 default config

Deepa Dinamani (1):
      riscv: Delete CONFIG_SYSFS_SYSCALL from defconfigs

Guo Ren (1):
      riscv: Use flush_icache_mm for flush_icache_user_range

Palmer Dabbelt (4):
      RISC-V: Stop putting .sbss in .sdata
      RISC-V: Stop relying on GCC's register allocator's hueristics
      RISC-V: Inline the assembly register save/restore macros
      RISC-V: Stop using LOCAL for the uaccess fixups

Zong Li (12):
      riscv: force hart_lottery to put in .sdata section
      riscv: add ARCH_HAS_SET_MEMORY support
      riscv: add ARCH_HAS_SET_DIRECT_MAP support
      riscv: add ARCH_SUPPORTS_DEBUG_PAGEALLOC support
      riscv: move exception table immediately after RO_DATA
      riscv: add alignment for text, rodata and data sections
      riscv: add STRICT_KERNEL_RWX support
      riscv: add macro to get instruction length
      riscv: introduce interfaces to patch kernel code
      riscv: patch code by fixmap mapping
      riscv: Add support to dump the kernel page tables
      riscv: Use macro definition instead of magic number

 arch/riscv/Kconfig                      |  26 +-
 arch/riscv/Kconfig.socs                 |  34 ++
 arch/riscv/Makefile                     |   6 +-
 arch/riscv/boot/Makefile                |   3 +
 arch/riscv/boot/dts/Makefile            |   1 +
 arch/riscv/boot/dts/kendryte/Makefile   |   2 +
 arch/riscv/boot/dts/kendryte/k210.dts   |  23 ++
 arch/riscv/boot/dts/kendryte/k210.dtsi  | 123 +++++++
 arch/riscv/configs/defconfig            |   1 +
 arch/riscv/configs/nommu_k210_defconfig |  68 ++++
 arch/riscv/configs/rv32_defconfig       |   1 +
 arch/riscv/include/asm/bug.h            |   8 +
 arch/riscv/include/asm/cacheflush.h     |   2 +-
 arch/riscv/include/asm/cpu_ops.h        |  46 +++
 arch/riscv/include/asm/current.h        |   5 +-
 arch/riscv/include/asm/fixmap.h         |   2 +
 arch/riscv/include/asm/kasan.h          |   2 +-
 arch/riscv/include/asm/patch.h          |  12 +
 arch/riscv/include/asm/pgtable.h        |  80 +++--
 arch/riscv/include/asm/ptdump.h         |  11 +
 arch/riscv/include/asm/sbi.h            | 195 +++++++----
 arch/riscv/include/asm/set_memory.h     |  48 +++
 arch/riscv/include/asm/smp.h            |  24 ++
 arch/riscv/include/asm/soc.h            |  23 ++
 arch/riscv/kernel/Makefile              |  13 +-
 arch/riscv/kernel/cpu-hotplug.c         |  87 +++++
 arch/riscv/kernel/cpu_ops.c             |  46 +++
 arch/riscv/kernel/cpu_ops_sbi.c         | 115 +++++++
 arch/riscv/kernel/cpu_ops_spinwait.c    |  43 +++
 arch/riscv/kernel/entry.S               | 143 ++++----
 arch/riscv/kernel/ftrace.c              |  13 +-
 arch/riscv/kernel/head.S                | 180 ++++++----
 arch/riscv/kernel/patch.c               | 120 +++++++
 arch/riscv/kernel/process.c             |   5 +-
 arch/riscv/kernel/sbi.c                 | 575 +++++++++++++++++++++++++++++++-
 arch/riscv/kernel/setup.c               |  32 +-
 arch/riscv/kernel/smpboot.c             |  53 +--
 arch/riscv/kernel/soc.c                 |  28 ++
 arch/riscv/kernel/stacktrace.c          |   7 +-
 arch/riscv/kernel/traps.c               |  32 +-
 arch/riscv/kernel/traps_misaligned.c    | 370 ++++++++++++++++++++
 arch/riscv/kernel/vmlinux.lds.S         |  23 +-
 arch/riscv/lib/uaccess.S                |   6 +-
 arch/riscv/mm/Makefile                  |   3 +-
 arch/riscv/mm/hugetlbpage.c             |   6 +-
 arch/riscv/mm/init.c                    |  44 +++
 arch/riscv/mm/pageattr.c                | 187 +++++++++++
 arch/riscv/mm/ptdump.c                  | 317 ++++++++++++++++++
 drivers/soc/Kconfig                     |   1 +
 drivers/soc/Makefile                    |   1 +
 drivers/soc/kendryte/Kconfig            |  14 +
 drivers/soc/kendryte/Makefile           |   3 +
 drivers/soc/kendryte/k210-sysctl.c      | 248 ++++++++++++++
 include/dt-bindings/clock/k210-clk.h    |  20 ++
 54 files changed, 3154 insertions(+), 327 deletions(-)
 create mode 100644 arch/riscv/boot/dts/kendryte/Makefile
 create mode 100644 arch/riscv/boot/dts/kendryte/k210.dts
 create mode 100644 arch/riscv/boot/dts/kendryte/k210.dtsi
 create mode 100644 arch/riscv/configs/nommu_k210_defconfig
 create mode 100644 arch/riscv/include/asm/cpu_ops.h
 create mode 100644 arch/riscv/include/asm/patch.h
 create mode 100644 arch/riscv/include/asm/ptdump.h
 create mode 100644 arch/riscv/include/asm/set_memory.h
 create mode 100644 arch/riscv/include/asm/soc.h
 create mode 100644 arch/riscv/kernel/cpu-hotplug.c
 create mode 100644 arch/riscv/kernel/cpu_ops.c
 create mode 100644 arch/riscv/kernel/cpu_ops_sbi.c
 create mode 100644 arch/riscv/kernel/cpu_ops_spinwait.c
 create mode 100644 arch/riscv/kernel/patch.c
 create mode 100644 arch/riscv/kernel/soc.c
 create mode 100644 arch/riscv/kernel/traps_misaligned.c
 create mode 100644 arch/riscv/mm/pageattr.c
 create mode 100644 arch/riscv/mm/ptdump.c
 create mode 100644 drivers/soc/kendryte/Kconfig
 create mode 100644 drivers/soc/kendryte/Makefile
 create mode 100644 drivers/soc/kendryte/k210-sysctl.c
 create mode 100644 include/dt-bindings/clock/k210-clk.h

