Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E1A419064A
	for <lists+linux-riscv@lfdr.de>; Tue, 24 Mar 2020 08:31:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aV00Aos6NfFPctBoXUWMRl1LHyRDZzOvQI99IlvbQVI=; b=SjNOZT43hqMbCE
	27JRYpovK+q40JkAZWzv+zlun7JvTUxqqPSktHerg9HgRVgVePiPMP8nMQ1nPk/mpXfGd1mBgCt4w
	b2gtNCewDXZWzOVGQqdNLXPElO8IkZMkVC5Jg9P9vcN2rguG1xcH8ooDTf20EcqC9UH6/PvM3qRUt
	NDuDiWJyDnUcGOaI/plCGhevGyAn9t0mf65a26DDmounHwbNReafneS3lIWSpzHHHEKnBJIVyiuy+
	++LXPkR6/cnWAPDHR712FylHZ+/CNSTCp/lvE3Eg9jLupuXezEqFFxvBJiXkOOiBAoVAqu7vivaoY
	FqvJJ3w6P5whEUzdZyEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGe1m-0003uj-7t; Tue, 24 Mar 2020 07:31:10 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGe1f-0003pc-Hb
 for linux-riscv@lists.infradead.org; Tue, 24 Mar 2020 07:31:05 +0000
Received: by mail-pf1-x443.google.com with SMTP id q3so4330209pff.13
 for <linux-riscv@lists.infradead.org>; Tue, 24 Mar 2020 00:31:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=aV00Aos6NfFPctBoXUWMRl1LHyRDZzOvQI99IlvbQVI=;
 b=fT0T3waWDmTJaCyblxvZqXAiyut9XsipmAA9zYYrRhahCx5Tuj7GnkLHgxS5uR+fcu
 oFtlRCXaTdfOYYdIOsufgKmLG9r0qEAGqwhSs70Ij/pbo4pk2FVOeBYxAKWQJAlt/OEH
 kKlEJ3dJJ0lJ3IdwIFj+ghtQoWNCbJm4dAFTEBDBMDnMoRgSFSamKtd2tFiwKFN2+HvJ
 XDxj+FGSVa4m8BbYzFaYAdnOHSRZHWQkJxQwRCXOfJNctC88YUwxaZFE05SkiH9EEFTc
 KT0go2um9CW3u8IgwqSTaaSj/7gjCT8PvwK6xkoA0J/W4V2jZJb6p3s7BIzy507NBH0t
 H4WA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=aV00Aos6NfFPctBoXUWMRl1LHyRDZzOvQI99IlvbQVI=;
 b=lIlOvj8X/MJd1Ic3q6NM67SYay2iSu38hEvqzbrwCBI5IKKqkYZ++mxhuCRJB+YYO2
 gR8UfhAdq9kbhgTHk3VRbr3APl7gxMwduig0X9OygsnVfR12vihxNG7vumxnQ3yk0r/2
 wtB6rvFxoJHo2DqF/H720K/OuWiGjOMz6SKGBDC7WDE8Mmw7Kva+Kp3CKWY4WIuHgOfJ
 aZex7cb+WyVHr21dNK4Qbpuvps4ceU4Y7vQfozpOYHTTCP628cehTzK8DqerxqKnEUZx
 lplsK2e23Fhs3c0rKhNksntIhJMCH/6XXzAOgBTfjFOg+FZKOiRQl2xnq5Qn8Xr+Aume
 4QGA==
X-Gm-Message-State: ANhLgQ1/J0Wdnkm8/Waxm/0oc4ITSOfSwuZYkI1CQwxOwanVk3tPewp2
 i59bjDVPAQLVQVZMgjUpHnwOkQ==
X-Google-Smtp-Source: ADFU+vub8hYsaP14B7TYJsABqmijrSWr1OBNZOXedSsNTIs8xznh1U4qgPc6eT95n5xiW0Nnyg9KdQ==
X-Received: by 2002:a63:312:: with SMTP id 18mr25374634pgd.377.1585035062381; 
 Tue, 24 Mar 2020 00:31:02 -0700 (PDT)
Received: from hsinchu02.internal.sifive.com
 (220-132-236-182.HINET-IP.hinet.net. [220.132.236.182])
 by smtp.gmail.com with ESMTPSA id i187sm15124648pfg.33.2020.03.24.00.31.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 24 Mar 2020 00:31:01 -0700 (PDT)
From: Zong Li <zong.li@sifive.com>
To: palmer@dabbelt.com, paul.walmsley@sifive.com, alex@ghiti.fr,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH RFC 3/8] riscv/kaslr: support KASLR infrastructure
Date: Tue, 24 Mar 2020 15:30:48 +0800
Message-Id: <fe97f88c69a9f752a96623afa398c4125aab930f.1584352425.git.zong.li@sifive.com>
X-Mailer: git-send-email 2.25.2
In-Reply-To: <cover.1584352425.git.zong.li@sifive.com>
References: <cover.1584352425.git.zong.li@sifive.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_003103_591625_D0EA3777 
X-CRM114-Status: GOOD (  18.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Zong Li <zong.li@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

This patch support KASLR implementation. It copies kernel image to a
proper and random place, and make all harts go to the new destination.

After KASLR initialization, secondary harts go to the new destination
to wait their stack pointer to be setup by main hart, main hart goes to
re-create the early page table and doing relocation by going back to
setup_vm again.

We separate the randomization process from this patch, so the kernel
offset was not randomized yet, it just hardcode a meanless number here.

Signed-off-by: Zong Li <zong.li@sifive.com>
---
 arch/riscv/Kconfig         | 15 +++++++++++
 arch/riscv/kernel/Makefile |  2 ++
 arch/riscv/kernel/head.S   | 39 +++++++++++++++++++++++++++
 arch/riscv/kernel/kaslr.c  | 55 ++++++++++++++++++++++++++++++++++++++
 arch/riscv/mm/init.c       | 53 +++++++++++++++++++++++++++++++++++-
 5 files changed, 163 insertions(+), 1 deletion(-)
 create mode 100644 arch/riscv/kernel/kaslr.c

diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index aea03ac470c8..8f566b40ea1e 100644
--- a/arch/riscv/Kconfig
+++ b/arch/riscv/Kconfig
@@ -183,6 +183,21 @@ config RELOCATABLE
           relocation pass at runtime even if the kernel is loaded at the
           same address it was linked at.
 
+config RANDOMIZE_BASE
+	bool "Randomize the address of the kernel image"
+	depends on MMU
+	select MODULE_SECTIONS if MODULES
+	select RELOCATABLE
+	help
+	  Randomizes the virtual address at which the kernel image is
+	  loaded, as a security feature that deters exploit attempts
+	  relying on knowledge of the location of kernel internals.
+
+	  It is the job of previous stage to provide entropy, by passing a
+	  random u64 value in /chosen/kaslr-seed at kernel entry.
+
+	  If unsure, say N.
+
 source "arch/riscv/Kconfig.socs"
 
 menu "Platform type"
diff --git a/arch/riscv/kernel/Makefile b/arch/riscv/kernel/Makefile
index d189bd3d8501..8f62732b1135 100644
--- a/arch/riscv/kernel/Makefile
+++ b/arch/riscv/kernel/Makefile
@@ -45,4 +45,6 @@ obj-$(CONFIG_PERF_EVENTS)	+= perf_callchain.o
 obj-$(CONFIG_HAVE_PERF_REGS)	+= perf_regs.o
 obj-$(CONFIG_RISCV_SBI)		+= sbi.o
 
+obj-$(CONFIG_RANDOMIZE_BASE)	+= kaslr.o
+
 clean:
diff --git a/arch/riscv/kernel/head.S b/arch/riscv/kernel/head.S
index cb4a6e2d3793..5191e528d813 100644
--- a/arch/riscv/kernel/head.S
+++ b/arch/riscv/kernel/head.S
@@ -113,9 +113,12 @@ clear_bss_done:
 	la a2, boot_cpu_hartid
 	REG_S a0, (a2)
 
+.align 2
+early_page_table:
 	/* Initialize page tables and relocate to virtual addresses */
 	la sp, init_thread_union + THREAD_SIZE
 	mv a0, s1
+
 	call setup_vm
 #ifdef CONFIG_MMU
 	la a0, early_pg_dir
@@ -127,6 +130,29 @@ clear_bss_done:
 	sw zero, TASK_TI_CPU(tp)
 	la sp, init_thread_union + THREAD_SIZE
 
+#ifdef CONFIG_RANDOMIZE_BASE
+	/* KASRL initialization. Try to get a random kernel offset. */
+	call kaslr_early_init
+
+	/* If return value equals to zero, we don't need to randomize kernel */
+	beqz a0, 1f
+
+	la a1, early_page_table
+	add a1, a1, a0
+	la a0, va_pa_offset
+	REG_L a0, 0(a0)
+	sub a1, a1, a0
+	mv a0, s1
+
+	/*
+	 * Go to new kernel image destination, and disable MMU to re-create
+	 * early page table and do relocation.
+	 */
+	csrw CSR_TVEC, a1
+	csrw CSR_SATP, x0
+1:
+#endif
+
 #ifdef CONFIG_KASAN
 	call kasan_early_init
 #endif
@@ -194,6 +220,19 @@ relocate:
 	la a3, .Lsecondary_park
 	csrw CSR_TVEC, a3
 
+#ifdef CONFIG_RANDOMIZE_BASE
+	/*
+	 * Wait winning hart to tell secondary harts where is the new
+	 * destination to go.
+	 */
+.Lwait_for_next_target:
+	la a3, secondary_next_target
+	REG_L a3, 0(a3)
+	beqz a3, .Lwait_for_next_target
+	jr a3
+.global secondary_random_target
+secondary_random_target:
+#endif
 	slli a3, a0, LGREG
 	la a1, __cpu_up_stack_pointer
 	la a2, __cpu_up_task_pointer
diff --git a/arch/riscv/kernel/kaslr.c b/arch/riscv/kernel/kaslr.c
new file mode 100644
index 000000000000..281b5fcca5c8
--- /dev/null
+++ b/arch/riscv/kernel/kaslr.c
@@ -0,0 +1,55 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (C) 2020 SiFive
+ * Copyright (C) 2020 Zong Li <zong.li@sifive.com>
+ */
+
+#include <linux/libfdt.h>
+#include <linux/timex.h>
+#include <linux/random.h>
+#include <linux/set_memory.h>
+#include <asm/cacheflush.h>
+
+extern char _start[], _end[];
+extern void secondary_random_target(void);
+extern void kaslr_create_page_table(uintptr_t start, uintptr_t end);
+
+uintptr_t secondary_next_target __initdata;
+static uintptr_t kaslr_offset __initdata;
+
+uintptr_t __init kaslr_early_init(void)
+{
+	uintptr_t dest_start, dest_end;
+	uintptr_t kernel_size = (uintptr_t) _end - (uintptr_t) _start;
+
+	/* Get zero value at second time to avoid doing randomization again. */
+	if (kaslr_offset)
+		return 0;
+
+	/* Get the random number for kaslr offset. */
+	kaslr_offset = 0x10000000;
+
+	/* Update kernel_virt_addr for get_kaslr_offset. */
+	kernel_virt_addr += kaslr_offset;
+
+	if (kaslr_offset) {
+		dest_start = (uintptr_t) (PAGE_OFFSET + kaslr_offset);
+		dest_end = dest_start + kernel_size;
+
+		/* Create the new destination mapping for kernel image. */
+		kaslr_create_page_table(dest_start, dest_end);
+
+		/* Copy kernel image from orignial location. */
+		memcpy((void *)dest_start, (void *)_start, kernel_size);
+		flush_icache_range(dest_start, dest_end);
+
+		/* Make secondary harts jump to new kernel image destination. */
+		WRITE_ONCE(secondary_next_target,
+			   __pa_symbol(secondary_random_target) + kaslr_offset);
+	} else {
+		WRITE_ONCE(secondary_next_target,
+			   __pa_symbol(secondary_random_target));
+	}
+
+	return kaslr_offset;
+}
diff --git a/arch/riscv/mm/init.c b/arch/riscv/mm/init.c
index 51e263c04fa2..2f5b25f02b6c 100644
--- a/arch/riscv/mm/init.c
+++ b/arch/riscv/mm/init.c
@@ -413,6 +413,41 @@ static void __init clear_pgd(pgd_t *pgdp)
 			}
 		}
 }
+
+static void __init clear_page_tables(void)
+{
+	clear_pgd(early_pg_dir);
+	clear_pgd(trampoline_pg_dir);
+}
+
+void __init kaslr_create_page_table(uintptr_t start, uintptr_t end)
+{
+	pgd_next_t *nextp;
+	phys_addr_t next_phys;
+	uintptr_t pgd_index, va;
+	phys_addr_t pa = __pa(PAGE_OFFSET) + get_kaslr_offset();
+	uintptr_t map_size =
+		best_map_size(__pa(PAGE_OFFSET), MAX_EARLY_MAPPING_SIZE);
+
+	/* Expolit early_pg_dir and early_pmd during using early page table. */
+	for (va = start; va < end; va += map_size, pa += map_size) {
+		pgd_index = pgd_index(va);
+
+		if (pgd_val(early_pg_dir[pgd_index]) == 0) {
+			next_phys = alloc_pgd_next(va);
+			early_pg_dir[pgd_index] =
+				pfn_pgd(PFN_DOWN(next_phys), PAGE_TABLE);
+			nextp = (pgd_next_t *)(__va(next_phys));
+			memset(nextp, 0, PAGE_SIZE);
+		} else {
+			next_phys = PFN_PHYS(_pgd_pfn(early_pg_dir[pgd_index]));
+			nextp = (pgd_next_t *)(__va(next_phys));
+		}
+
+		create_pgd_next_mapping(nextp, va, pa, map_size,
+					PAGE_KERNEL_EXEC);
+	}
+}
 #endif
 
 /*
@@ -489,7 +524,13 @@ asmlinkage void __init setup_vm(uintptr_t dtb_pa)
 	uintptr_t map_size = best_map_size(load_pa, MAX_EARLY_MAPPING_SIZE);
 
 	va_pa_offset = kernel_virt_addr - load_pa;
-	pfn_base = PFN_DOWN(load_pa);
+
+	/*
+	 * Update pfn_base only if pfn_base is empty. It's avoid to mess up it
+	 * when re-enter this function by KASLR.
+	 */
+	if (!pfn_base)
+		pfn_base = PFN_DOWN(load_pa);
 
 #ifdef CONFIG_RELOCATABLE
 	/*
@@ -513,6 +554,16 @@ asmlinkage void __init setup_vm(uintptr_t dtb_pa)
 	BUG_ON((load_pa % map_size) != 0);
 	BUG_ON(load_sz > MAX_EARLY_MAPPING_SIZE);
 
+#ifdef CONFIG_RANDOMIZE_BASE
+	/*
+	 * Enter setup_vm twice if there is a legal random destination in KASLR,
+	 * Reach here at second time, Clear page table because PTE entris allow
+	 * writing when it's empty.
+	 */
+	if (get_kaslr_offset())
+		clear_page_tables();
+#endif
+
 	/* Setup early PGD for fixmap */
 	create_pgd_mapping(early_pg_dir, FIXADDR_START,
 			   (uintptr_t)fixmap_pgd_next, PGDIR_SIZE, PAGE_TABLE);
-- 
2.25.1


