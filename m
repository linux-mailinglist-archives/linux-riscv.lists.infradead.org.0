Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 946EC21146
	for <lists+linux-riscv@lfdr.de>; Fri, 17 May 2019 02:27:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-ID:To:From:
	Subject:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=M12EL0IE+lG7RqwRHNYeI6NDoDE6XOfLaDMuBZuCBoA=; b=t/pfy+26NMXZT2
	/11Iupmra8F04raQlEo1lBgrrNZIa2DvEt3Cmh2Z+bcuxBPqGIvu+xyNmiKSbsLkxqqoUBDLwzfpR
	759BugOUKaFsb28uyhfDJYATxLOgnC16iha/aBFSUc8jZFp4VUGcKPTqChXDGXodwxABno0sKA6ts
	37w8mhBYxvHUvrqs95RhfVbGkE5wxlvwJbg0S/DatYu6Bnp6OM85TMNfaMw9bF5AzVN1lHdMBfvA0
	MSqxFkO00kr+cJ2ZlnnPKx08zL6SaqD+UjymXFVlvPUEMcNuNKR22YFN7Jsbtfuna28R30LLXTB51
	4z4Y12J9N1aQoiMP3FHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRQir-0000uR-3r; Fri, 17 May 2019 00:27:41 +0000
Received: from mail-pf1-f196.google.com ([209.85.210.196])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRQin-0000tn-Ir
 for linux-riscv@lists.infradead.org; Fri, 17 May 2019 00:27:39 +0000
Received: by mail-pf1-f196.google.com with SMTP id n19so2725379pfa.1
 for <linux-riscv@lists.infradead.org>; Thu, 16 May 2019 17:27:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:cc:from:to:message-id;
 bh=jUqvnYGakfbu3X+S19cL7CMuDFcJHkA4STcR5kbvbv4=;
 b=Ul/+4w+zdJj9RDOVdcL6TI0pIjsUVq8UMHwLt+Ukczb3Q5accbUIbvBkb5dmprukL0
 FSbHkgyEv1Y9GWXTciKnZ0PNkr8gUJ7OyDfahQjUKU9ExFRN1rG8ZLnKwgN8sxR3gN2n
 zWZMwj9ZMUwCixEnTykfw9vWDtf8fq3oM1BLM6iL3p5mtWQSlCQpiagU2EukMl3tzEW7
 m7KbVv1V52xvBSC5cLYWhdC2oEWcuGwVDGBIm0MTanWqKb4a+mDQCBtNBvEPD9g5tDlg
 R4iGAMGhrq5LLVM8/+OrEBx1tP2dLlsT6xtV6SPedf98VQsUS85SLhxqmqYHwFvBf9tl
 p0+w==
X-Gm-Message-State: APjAAAXGLdx5WKjcms7wYG6wl5d01ZPsU3Aj83KuWdd6PgSDWBZ+uAtF
 VX4P0IWWvggXFHS32JdXmdSN2nqTmgA=
X-Google-Smtp-Source: APXvYqyG6ulz31XFgTWJh+fLqRzGIQkJoz/n+WzyKDfgPA5o7NIjw00EuiNnwhVxsNUKAUABrSi0Cw==
X-Received: by 2002:a63:1354:: with SMTP id 20mr52472775pgt.356.1558052855801; 
 Thu, 16 May 2019 17:27:35 -0700 (PDT)
Received: from localhost ([12.206.222.5])
 by smtp.gmail.com with ESMTPSA id z125sm10673250pfb.75.2019.05.16.17.27.34
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 16 May 2019 17:27:35 -0700 (PDT)
Date: Thu, 16 May 2019 17:27:35 -0700 (PDT)
X-Google-Original-Date: Thu, 16 May 2019 17:23:56 PDT (-0700)
Subject: [GIT PULL] RISC-V Patches for the 5.2 Merge Window, Part 1 v2
From: Palmer Dabbelt <palmer@sifive.com>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <mhng-5ac66c65-9c46-409c-a5fb-a6551bb206c5@palmer-si-x1e>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_172737_624255_5E30849D 
X-CRM114-Status: GOOD (  17.87  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.196 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.196 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

The following changes since commit 085b7755808aa11f78ab9377257e1dad2e6fa4bb:

  Linux 5.1-rc6 (2019-04-21 10:45:57 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/palmer/riscv-linux.git tags/riscv-for-linus-5.2-mw1

for you to fetch changes up to 81eba518d95f43d9f81ed5eb6dd9edb4179687aa:

  RISC-V: sifive_l2_cache: Add L2 cache controller driver for SiFive SoCs (2019-05-15 18:40:14 -0700)

----------------------------------------------------------------
RISC-V Patches for the 5.2 Merge Window, Part 1 v2

This patch set contains an assortment of RISC-V related patches that I'd
like to target for the 5.2 merge window.  Most of the patches are
cleanups, but there are a handful of user-visible changes:

* The nosmp and nr_cpus command-line arguments are now supported, which
  work like normal.
* The SBI console no longer installs itself as a preferred console, we
  rely on standard mechanisms (/chosen, command-line, hueristics)
  instead.
* sfence_remove_sfence_vma{,_asid} now pass their arguments along to the
  SBI call.
* Modules now support BUG().
* A missing sfence.vma during boot has been added.  This bug only
  manifests during boot.
* The arch/riscv support for SiFive's L2 cache controller has been
  merged, which should un-block the EDAC framework work.

I've only tested this on QEMU again, as I didn't have time to get things
running on the Unleashed.  The latest master from this morning merges in
cleanly and passes the tests as well.

This patch set rebased my "5.2 MW, Part 1" patch set which includes an
erronous empty file.  That patch set has not been merged.

----------------------------------------------------------------
Anup Patel (4):
      RISC-V: Use tabs to align macro values in asm/csr.h
      RISC-V: Add interrupt related SCAUSE defines in asm/csr.h
      RISC-V: Access CSRs using CSR numbers
      tty: Don't force RISCV SBI console as preferred console

Atish Patra (4):
      RISC-V: Add RISC-V specific arch_match_cpu_phys_id
      RISC-V: Implement nosmp commandline option.
      RISC-V: Support nr_cpus command line option.
      RISC-V: Fix minor checkpatch issues.

Christoph Hellwig (11):
      riscv: use asm-generic/extable.h
      riscv: turn mm_segment_t into a struct
      riscv: remove unreachable big endian code
      riscv: remove CONFIG_RISCV_ISA_A
      riscv: clear all pending interrupts when booting
      riscv: simplify the stack pointer setup in head.S
      riscv: cleanup the parse_dtb calling conventions
      riscv: remove unreachable !HAVE_FUNCTION_GRAPH_RET_ADDR_PTR code
      riscv: remove duplicate macros from ptrace.h
      riscv: print the unexpected interrupt cause
      riscv: call pm_power_off from machine_halt / machine_power_off

Gary Guo (3):
      riscv: move flush_icache_{all,mm} to cacheflush.c
      riscv: move switch_mm to its own file
      riscv: fix sbi_remote_sfence_vma{,_asid}.

Guo Ren (1):
      riscv/signal: Fixup additional syscall restarting

Nick Desaulniers (1):
      riscv: vdso: drop unnecessary cc-ldoption

Palmer Dabbelt (1):
      RISC-V: Avoid using invalid intermediate translations

Vincent Chen (3):
      riscv: support trap-based WARN()
      riscv: Add the support for c.ebreak check in is_valid_bugaddr()
      riscv: Support BUG() in kernel module

Yash Shah (2):
      RISC-V: Add DT documentation for SiFive L2 Cache Controller
      RISC-V: sifive_l2_cache: Add L2 cache controller driver for SiFive SoCs

 .../devicetree/bindings/riscv/sifive-l2-cache.txt  |  51 ++++++
 arch/riscv/Kconfig                                 |   6 +-
 arch/riscv/Makefile                                |   5 +-
 arch/riscv/include/asm/Kbuild                      |   1 +
 arch/riscv/include/asm/bug.h                       |  35 +++--
 arch/riscv/include/asm/cacheflush.h                |   2 +-
 arch/riscv/include/asm/csr.h                       | 123 +++++++++------
 arch/riscv/include/asm/elf.h                       |   6 -
 arch/riscv/include/asm/futex.h                     |  13 --
 arch/riscv/include/asm/irqflags.h                  |  10 +-
 arch/riscv/include/asm/mmu_context.h               |  59 +------
 arch/riscv/include/asm/ptrace.h                    |  21 +--
 arch/riscv/include/asm/sbi.h                       |  19 ++-
 arch/riscv/include/asm/sifive_l2_cache.h           |  16 ++
 arch/riscv/include/asm/thread_info.h               |   4 +-
 arch/riscv/include/asm/uaccess.h                   |  28 ++--
 arch/riscv/kernel/asm-offsets.c                    |   3 -
 arch/riscv/kernel/cpu.c                            |   3 +-
 arch/riscv/kernel/entry.S                          |  22 +--
 arch/riscv/kernel/head.S                           |  33 ++--
 arch/riscv/kernel/irq.c                            |  19 +--
 arch/riscv/kernel/perf_event.c                     |   4 +-
 arch/riscv/kernel/reset.c                          |  15 +-
 arch/riscv/kernel/setup.c                          |   6 +-
 arch/riscv/kernel/signal.c                         |   6 +
 arch/riscv/kernel/smp.c                            |  61 ++-----
 arch/riscv/kernel/smpboot.c                        |  22 ++-
 arch/riscv/kernel/stacktrace.c                     |  14 +-
 arch/riscv/kernel/traps.c                          |  30 +++-
 arch/riscv/kernel/vdso/Makefile                    |   2 +-
 arch/riscv/mm/Makefile                             |   2 +
 arch/riscv/mm/cacheflush.c                         |  61 +++++++
 arch/riscv/mm/context.c                            |  69 ++++++++
 arch/riscv/mm/fault.c                              |   6 +-
 arch/riscv/mm/sifive_l2_cache.c                    | 175 +++++++++++++++++++++
 drivers/tty/hvc/hvc_riscv_sbi.c                    |   1 -
 modules.builtin.modinfo                            | Bin 0 -> 46064 bytes
 37 files changed, 633 insertions(+), 320 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/riscv/sifive-l2-cache.txt
 create mode 100644 arch/riscv/include/asm/sifive_l2_cache.h
 create mode 100644 arch/riscv/mm/context.c
 create mode 100644 arch/riscv/mm/sifive_l2_cache.c
 create mode 100644 modules.builtin.modinfo

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
