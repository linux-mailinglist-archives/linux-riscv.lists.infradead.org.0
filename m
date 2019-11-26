Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A82310A5D3
	for <lists+linux-riscv@lfdr.de>; Tue, 26 Nov 2019 22:13:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=uwQAvZI2wtSVWU5b8R/NcsoWEm3dCDSNzZTd5FQ7IgM=; b=mf+z/ds4po1ANT
	ODpqPChKDNpbAAYp/YqQiNFdejR1MdCCUdZ3VJbDQt2CwUTphS56uqQA6eDlybDePoY5j/UMFVnad
	Ti7ffl4TefjgQoUVytzE4b2b8/dyJF1MiSm6U9qbvaFJ3hffiiY1rrQ5MgGXQbhAqNgtEkEMNsKlW
	9cq5bFnRKInumK4C2qWpoB/XF64+NGQcmv3qD9U+55JzhOKq3ovuWIHE5uOuNtdQwnPk+CdvRlEnV
	n7woXtYQQ75hLYQFiOL7mfFv/IZLgqZDSqwJj4z5tTs/OZ1x1Hz+L8kHgl5h3xqfgdJ+GDTQVF6Ut
	ibukDDdUPYfC/58RIpFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZi9M-0007Ei-Hk; Tue, 26 Nov 2019 21:13:32 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZi9I-0007E9-PW
 for linux-riscv@lists.infradead.org; Tue, 26 Nov 2019 21:13:30 +0000
Received: by mail-io1-xd44.google.com with SMTP id z26so18775991iot.8
 for <linux-riscv@lists.infradead.org>; Tue, 26 Nov 2019 13:13:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:message-id:user-agent:mime-version;
 bh=mpA+IuAnkJSmb7fL5XFR2xELtboFdJ5nrRIhIf/PCnI=;
 b=V2hscENoErbWip9hMb2EK7clIA048Q7sAAWAvtH6s2xMyuBtK6rN/j+qwubtjuERCQ
 OY9GC4UxqiyLn1PFnL1bfoAgVGoMMuNRfLHHl2+4RCHRyFxj+NXR17Kpkce2cwh/jcK4
 DMDBv56OKCa055DXikeNllVLStnIqClvuqw4AO3syHP7RKgQUe+Z6EsxtnVESoVtgbJE
 8yAOqJaE6AVo2e5vZyBFd6S3iT+Sskk20w6c83FPyA3ggZWZ9kUtjkOzKFeje9IYnlxH
 jfsDdL/Eox0/diJ1eQs0OdwKOPooz/UWWnChIR4dIeQQceLCUDwJJ+JM/rFFckarWQlK
 BEHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:user-agent
 :mime-version;
 bh=mpA+IuAnkJSmb7fL5XFR2xELtboFdJ5nrRIhIf/PCnI=;
 b=c1mUuphOLUO2q0ufVnzHMxVV65AVB5v/OLS0rKDzrC2RXNoaIJ5J+UkXg6EoABS3Wo
 QE9CJcGzbPoQ5OYSW8etpL49lTdole19nRz79W0NC+6aTO7jtXRzXWwqLBSma8KYYJGm
 VX2tbXc8YpZAyHfnoxz1Eyp25ZkbvN1Lz2xQbGgLB2xWAD6rn+pC4tEp4f2knULV4/6Z
 t0acN0wVF1RUj+26PNCfYYzQvxzpKpDXHJl2Cu3/RSKiPG89slTlvOfvPXqTtm+nz0iN
 osN+ZCASrU/5f6kZ9Ht817RwTpi6qaFI2UXP04ygJE8WjMZylCKrfrpLr/ykOfCcFrHT
 +4aQ==
X-Gm-Message-State: APjAAAXTHBu95OHHQbj3Rwj6y9c7n2bKrB1meKkiOQXKdAbd7sqzlvmG
 Zkv38IeZq7B2tkYsPBN/3FdpPw==
X-Google-Smtp-Source: APXvYqxSo9bBvUzQp+cD74S2AUMpLC+ZJjdqmUu+EwvHplkNqlV0982ky5d1zM1tY1fGQK3cbCL5kA==
X-Received: by 2002:a5e:8e4b:: with SMTP id r11mr25991166ioo.167.1574802807280; 
 Tue, 26 Nov 2019 13:13:27 -0800 (PST)
Received: from localhost ([64.62.168.194])
 by smtp.gmail.com with ESMTPSA id k6sm2953316iom.52.2019.11.26.13.13.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 26 Nov 2019 13:13:26 -0800 (PST)
Date: Tue, 26 Nov 2019 13:13:24 -0800 (PST)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: torvalds@linux-foundation.org
Subject: [GIT PULL] First set of RISC-V updates for v5.5-rc1
Message-ID: <alpine.DEB.2.21.9999.1911261311520.23039@viisi.sifive.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191126_131329_042409_DFFAA95F 
X-CRM114-Status: GOOD (  15.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Linus,

The following changes since commit a99d8080aaf358d5d23581244e5da23b35e340b9:

  Linux 5.4-rc6 (2019-11-03 14:07:26 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/riscv/linux.git tags/riscv/for-v5.5-rc1

for you to fetch changes up to 5ba9aa56e6d3e8fddb954c2f818d1ce0525235bb:

  Merge branch 'next/nommu' into for-next (2019-11-22 18:59:09 -0800)

----------------------------------------------------------------
First set of RISC-V updates for v5.5-rc1

New features:

- SECCOMP support

- nommu support

- SBI-less system support

- M-Mode support

- TLB flush optimizations

Other improvements:

- Pass the complete RISC-V ISA string supported by the CPU cores to
  userspace, rather than redacting parts of it in the kernel

- Add platform DMA IP block data to the HiFive Unleashed board DT file

- Add Makefile support for BZ2, LZ4, LZMA, LZO kernel image
  compression formats, in line with other architectures

Cleanups:

- Remove unnecessary PTE_PARENT_SIZE macro

- Standardize include guard naming across arch/riscv

----------------------------------------------------------------
Atish Patra (5):
      RISC-V: Remove unsupported isa string info print
      RISC-V: Do not invoke SBI call if cpumask is empty
      RISC-V: Issue a local tlbflush if possible.
      RISC-V: Issue a tlb page flush if possible
      RISC-V: Add multiple compression image format.

Christoph Hellwig (10):
      riscv: enter WFI in default_power_off() if SBI does not shutdown
      riscv: abstract out CSR names for supervisor vs machine mode
      riscv: poison SBI calls for M-mode
      riscv: cleanup the default power off implementation
      riscv: implement remote sfence.i using IPIs
      riscv: add support for MMIO access to the timer registers
      riscv: provide native clint access for M-mode
      riscv: clear the instruction cache and all registers when booting
      riscv: add nommu support
      riscv: provide a flat image loader

Damien Le Moal (2):
      riscv: don't allow selecting SBI based drivers for M-mode
      riscv: read the hart ID from mhartid on boot

David Abdurachmanov (1):
      riscv: add support for SECCOMP and SECCOMP_FILTER

Green Wan (1):
      riscv: dts: add support for PDMA device of HiFive Unleashed Rev A00

Paul Walmsley (6):
      riscv: separate MMIO functions into their own header file
      Merge branch 'next/seccomp' into for-next
      Merge branch 'next/isa-string' into for-next
      Merge branch 'next/tlb-opt' into for-next
      Merge branch 'next/misc' into for-next
      Merge branch 'next/nommu' into for-next

Zong Li (2):
      riscv: Use PMD_SIZE to replace PTE_PARENT_SIZE
      riscv: clean up the macro format in each header file

 arch/riscv/Kconfig                            |  50 ++++++--
 arch/riscv/Makefile                           |  13 +-
 arch/riscv/boot/Makefile                      |  19 ++-
 arch/riscv/boot/dts/sifive/fu540-c000.dtsi    |   7 ++
 arch/riscv/boot/loader.S                      |   8 ++
 arch/riscv/boot/loader.lds.S                  |  16 +++
 arch/riscv/configs/nommu_virt_defconfig       |  78 ++++++++++++
 arch/riscv/include/asm/asm-prototypes.h       |   1 +
 arch/riscv/include/asm/cache.h                |   8 ++
 arch/riscv/include/asm/clint.h                |  39 ++++++
 arch/riscv/include/asm/csr.h                  |  74 ++++++++++--
 arch/riscv/include/asm/current.h              |   6 +-
 arch/riscv/include/asm/elf.h                  |   4 +-
 arch/riscv/include/asm/fixmap.h               |   2 +
 arch/riscv/include/asm/ftrace.h               |   5 +
 arch/riscv/include/asm/futex.h                |  12 +-
 arch/riscv/include/asm/hwcap.h                |   7 +-
 arch/riscv/include/asm/image.h                |   6 +-
 arch/riscv/include/asm/io.h                   | 149 +----------------------
 arch/riscv/include/asm/irqflags.h             |  12 +-
 arch/riscv/include/asm/kprobes.h              |   6 +-
 arch/riscv/include/asm/mmio.h                 | 168 ++++++++++++++++++++++++++
 arch/riscv/include/asm/mmiowb.h               |   2 +-
 arch/riscv/include/asm/mmu.h                  |   3 +
 arch/riscv/include/asm/page.h                 |  10 +-
 arch/riscv/include/asm/pci.h                  |   6 +-
 arch/riscv/include/asm/pgalloc.h              |   2 +
 arch/riscv/include/asm/pgtable.h              |  94 +++++++-------
 arch/riscv/include/asm/processor.h            |   2 +-
 arch/riscv/include/asm/ptrace.h               |  16 +--
 arch/riscv/include/asm/sbi.h                  |  11 +-
 arch/riscv/include/asm/seccomp.h              |  10 ++
 arch/riscv/include/asm/sparsemem.h            |   6 +-
 arch/riscv/include/asm/spinlock_types.h       |   2 +-
 arch/riscv/include/asm/switch_to.h            |  10 +-
 arch/riscv/include/asm/thread_info.h          |   5 +-
 arch/riscv/include/asm/timex.h                |  19 ++-
 arch/riscv/include/asm/tlbflush.h             |  12 +-
 arch/riscv/include/asm/uaccess.h              |   4 +
 arch/riscv/include/uapi/asm/elf.h             |   6 +-
 arch/riscv/include/uapi/asm/hwcap.h           |   6 +-
 arch/riscv/include/uapi/asm/ucontext.h        |   6 +-
 arch/riscv/kernel/Makefile                    |   5 +-
 arch/riscv/kernel/asm-offsets.c               |   8 +-
 arch/riscv/kernel/clint.c                     |  44 +++++++
 arch/riscv/kernel/cpu.c                       |  45 +------
 arch/riscv/kernel/entry.S                     | 112 ++++++++++++-----
 arch/riscv/kernel/fpu.S                       |   8 +-
 arch/riscv/kernel/head.S                      | 112 ++++++++++++++++-
 arch/riscv/kernel/irq.c                       |  17 +--
 arch/riscv/kernel/perf_callchain.c            |   2 +-
 arch/riscv/kernel/process.c                   |  17 +--
 arch/riscv/kernel/ptrace.c                    |  10 ++
 arch/riscv/kernel/reset.c                     |   5 +-
 arch/riscv/kernel/sbi.c                       |  17 +++
 arch/riscv/kernel/setup.c                     |   2 +
 arch/riscv/kernel/signal.c                    |  38 ++++--
 arch/riscv/kernel/smp.c                       |  16 ++-
 arch/riscv/kernel/smpboot.c                   |   4 +
 arch/riscv/kernel/traps.c                     |  16 +--
 arch/riscv/lib/Makefile                       |  11 +-
 arch/riscv/lib/uaccess.S                      |  12 +-
 arch/riscv/mm/Makefile                        |   3 +-
 arch/riscv/mm/cacheflush.c                    |  26 +++-
 arch/riscv/mm/context.c                       |   2 +
 arch/riscv/mm/extable.c                       |   4 +-
 arch/riscv/mm/fault.c                         |   6 +-
 arch/riscv/mm/init.c                          |  28 +++--
 arch/riscv/mm/tlbflush.c                      |  25 +++-
 drivers/clocksource/timer-riscv.c             |  31 +++--
 drivers/irqchip/irq-sifive-plic.c             |  11 +-
 drivers/tty/hvc/Kconfig                       |   2 +-
 drivers/tty/serial/Kconfig                    |   2 +-
 tools/testing/selftests/seccomp/seccomp_bpf.c |   8 +-
 74 files changed, 1106 insertions(+), 465 deletions(-)
 create mode 100644 arch/riscv/boot/loader.S
 create mode 100644 arch/riscv/boot/loader.lds.S
 create mode 100644 arch/riscv/configs/nommu_virt_defconfig
 create mode 100644 arch/riscv/include/asm/clint.h
 create mode 100644 arch/riscv/include/asm/mmio.h
 create mode 100644 arch/riscv/include/asm/seccomp.h
 create mode 100644 arch/riscv/kernel/clint.c
 create mode 100644 arch/riscv/kernel/sbi.c

Kernel object size difference (from v5.4-rc6):
   text	   data	    bss	    dec	    hex	filename
6665154	2132584	 312608	9110346	 8b034a	vmlinux.rv64.orig
6665098	2132768	 312608	9110474	 8b03ca	vmlinux.rv64.patched
6445414	1797616	 255248	8498278	 81ac66	vmlinux.rv32.orig
6445448	1797776	 255248	8498472	 81ad28	vmlinux.rv32.patched

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
