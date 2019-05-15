Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B053B1F967
	for <lists+linux-riscv@lfdr.de>; Wed, 15 May 2019 19:40:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-ID:To:From:
	Subject:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7xlU5nB50M6tBEKfCCpXCSkDD8OpzTvg4sKOJxpFaqk=; b=cAKBpnE+OOlgUl
	L+OM8Bdi1VAKwh1qmjKbGs/d0ZvNipmmZkuZ/F3FVr8q6ReggtNz9/ozlrNgRGfOaC/8OSJPSVr45
	RHOOWGDFSQl4KMrepj2bXE58v5TgCy232fuMsu8bfK1eaIAVn57SqAfWQ0AWzrZFnlW8qB9JLBPdf
	2DNQr7suqTUZUSUGWNTpDqxYcuAkZrnjccj9A/lnY/MBS0sTHULDVSCjn6mZvwWSOOFZAJ6OhL9DQ
	Q/h/4ssR0VfmnoYpzxdP4m0NnjlobfMT65HQHTz6+JoCGGqNjNi5gAWJHyE3ech+LTXHkCEArKIdw
	XeX+e0B9m+6ThibJ8Caw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQxsj-00037U-M1; Wed, 15 May 2019 17:39:57 +0000
Received: from mail-pl1-f193.google.com ([209.85.214.193])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQxsf-00036p-VB
 for linux-riscv@lists.infradead.org; Wed, 15 May 2019 17:39:55 +0000
Received: by mail-pl1-f193.google.com with SMTP id a5so197029pls.12
 for <linux-riscv@lists.infradead.org>; Wed, 15 May 2019 10:39:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:cc:from:to:message-id;
 bh=OyqkAInMJ4afJyiF2nb2YB2wdpcRhAB6c/71WOYyPas=;
 b=QiunuEV3gLmyCIag2Gix1xUCsudvthFjtjSRuulSbIxo1T0aKHMoEst6SwsMh6fMjQ
 N/fx02+Xz5GNYIeKB8Og6wGwyappVrKZmugAUo058Ak/JJRhYvhFYehQW81I5/I4302D
 MRMuhfT7fXABKmupHXiLQ6GDPtN6kdZ5YCjtBGkSXM3BPVTcN0dn97FUvChoL82yB5CF
 6q0kDuRGWmFAP1gVJ8HZHMyKHi5Fgfgi5+Um1DuqA2MZCGPu62RYpSowMEPbW0j9TNBC
 jKfytcqd1wadqt5xAxLB1MkOK5fzKxjo19LSuvcDbzu8NSdZOliGn5vEVCOXmSmCznqK
 vKkA==
X-Gm-Message-State: APjAAAX5XWlI1p8QvPkOz8Xbf1vGaGZLuUAS5/BDM0cui/Yyob9UMmbu
 zwpQa65PBj2xK1nzMljfG387rw==
X-Google-Smtp-Source: APXvYqxw3U/LSU65RQOQnp/SYsPweUz6pC7uNamYkvPZJkQpsNN8ZvCjzx14hDJGNFqN+j/m23GEhg==
X-Received: by 2002:a17:902:bd95:: with SMTP id
 q21mr8947972pls.159.1557941990986; 
 Wed, 15 May 2019 10:39:50 -0700 (PDT)
Received: from localhost ([12.206.222.5])
 by smtp.gmail.com with ESMTPSA id m123sm5011080pfm.39.2019.05.15.10.39.50
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 15 May 2019 10:39:50 -0700 (PDT)
Date: Wed, 15 May 2019 10:39:50 -0700 (PDT)
X-Google-Original-Date: Wed, 15 May 2019 10:39:46 PDT (-0700)
Subject: [GIT PULL] RISC-V Patches for the 5.2 Merge Window, Part 1
From: Palmer Dabbelt <palmer@sifive.com>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <mhng-d6bbd5f4-7409-4d3e-94a0-7ff0c6a71c9e@palmer-si-x1e>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_103954_007013_0DD6F2E8 
X-CRM114-Status: GOOD (  17.07  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.193 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.193 listed in wl.mailspike.net]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

  git://git.kernel.org/pub/scm/linux/kernel/git/palmer/riscv-linux.git tags/riscv-for-linus-5.2-mw0

for you to fetch changes up to e23fc917f04ffac8c156fdb4ee8b56f3867fa50b:

  RISC-V: Avoid using invalid intermediate translations (2019-05-08 15:06:18 -0700)

----------------------------------------------------------------
RISC-V Patches for the 5.2 Merge Window, Part 1

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

I've only tested this on QEMU again, as I didn't have time to get things
running on the Unleashed.  The latest master from this morning merges in
cleanly and passes the tests as well.

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

 arch/riscv/Kconfig                   |   6 +-
 arch/riscv/Makefile                  |   5 +-
 arch/riscv/include/asm/Kbuild        |   1 +
 arch/riscv/include/asm/bug.h         |  35 ++++++----
 arch/riscv/include/asm/cacheflush.h  |   2 +-
 arch/riscv/include/asm/csr.h         | 123 ++++++++++++++++++++++-------------
 arch/riscv/include/asm/elf.h         |   6 --
 arch/riscv/include/asm/futex.h       |  13 ----
 arch/riscv/include/asm/irqflags.h    |  10 +--
 arch/riscv/include/asm/mmu_context.h |  59 +----------------
 arch/riscv/include/asm/ptrace.h      |  21 ++----
 arch/riscv/include/asm/sbi.h         |  19 ++++--
 arch/riscv/include/asm/thread_info.h |   4 +-
 arch/riscv/include/asm/uaccess.h     |  28 +++-----
 arch/riscv/kernel/asm-offsets.c      |   3 -
 arch/riscv/kernel/cpu.c              |   3 +-
 arch/riscv/kernel/entry.S            |  22 +++----
 arch/riscv/kernel/head.S             |  33 ++++++----
 arch/riscv/kernel/irq.c              |  19 ++----
 arch/riscv/kernel/perf_event.c       |   4 +-
 arch/riscv/kernel/reset.c            |  15 +++--
 arch/riscv/kernel/setup.c            |   6 +-
 arch/riscv/kernel/signal.c           |   6 ++
 arch/riscv/kernel/smp.c              |  61 +++--------------
 arch/riscv/kernel/smpboot.           |   0
 arch/riscv/kernel/smpboot.c          |  22 ++++++-
 arch/riscv/kernel/stacktrace.c       |  14 ++--
 arch/riscv/kernel/traps.c            |  30 ++++++---
 arch/riscv/kernel/vdso/Makefile      |   2 +-
 arch/riscv/mm/Makefile               |   1 +
 arch/riscv/mm/cacheflush.c           |  61 +++++++++++++++++
 arch/riscv/mm/context.c              |  69 ++++++++++++++++++++
 arch/riscv/mm/fault.c                |   6 +-
 drivers/tty/hvc/hvc_riscv_sbi.c      |   1 -
 34 files changed, 390 insertions(+), 320 deletions(-)
 create mode 100644 arch/riscv/kernel/smpboot.
 create mode 100644 arch/riscv/mm/context.c

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
