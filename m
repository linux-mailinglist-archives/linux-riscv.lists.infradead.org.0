Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 974F384D08
	for <lists+linux-riscv@lfdr.de>; Wed,  7 Aug 2019 15:31:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=1CqDer4WNRV9NifasB2h4fGtqn4CEkVoxqVOhznk9gE=; b=B3tCRe8yH09O5whAErdJkt1qf/
	BjDUOFsqDXZBeCw7W+KZ0sqB6pSdcZkC1C9jXZBZhKpB/TtyUZ87Jg732qL+MgHl+1hBJtIOBFLf2
	Qj317NpWv7t2QPG+l2e1sY6TQJu1vsDj2VWTVmZsAXjBHirmOlt0CIxaChL20aLkEvprrXwf/h+Lh
	Db2NIHJx6RU1NDd7wRE3aXmSY48iXSAuD6N8h9YJGCl4CkRk3UPa3nyZ271tR3iZBLx7NaOC0SJvE
	gRyPaHMTY9t6sYE9UYcQ8DtexbgD1FH1gdpELWwRYCiuzaGeclAz5TaGqCkyaS6NYOIi8P51OGcef
	WFwoBQOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvM21-00081X-7G; Wed, 07 Aug 2019 13:31:09 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvM1x-00080b-Lb
 for linux-riscv@lists.infradead.org; Wed, 07 Aug 2019 13:31:07 +0000
Received: by mail-pl1-x644.google.com with SMTP id a93so40793368pla.7
 for <linux-riscv@lists.infradead.org>; Wed, 07 Aug 2019 06:31:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=e1qgTbhZ3ilsUFJdPMIsnkWUy0Sq5muknSgMZN/FEUs=;
 b=n0NkoRumuiNGa89NyRsLYLINlG24HJgySkd6Jq0w/YYGjFBPtrepN1XIih5CYhpOiJ
 lckztJkDgtNQROigUO0sDRt1/BoW2ZTizewLDeO4XwkZTJc92mMLcrXMwqB9BeNbElpR
 6I5MmjFwLXhcSr32dLkmep5Wy1qRw55yQEq96UcgkLFKkxXCVqjO2Lx3ZEPMLfjmAhkF
 QYle0rXftZyEKRl0S4zZI+x5faFbO3/vpzvRPzAPmK7M+XY+beqO5+D2dirqJ6gkvXyf
 QKWE+k399+XYkAdjdmseQrCFbqSX8VYP4NAYMRrEDqhB/uE2Ue9SZAUicZy0II8G3Sgb
 2iMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=e1qgTbhZ3ilsUFJdPMIsnkWUy0Sq5muknSgMZN/FEUs=;
 b=dWt9sq2Vmg/LrKPSJdZ8ZuH7XE3IqyuIY5bXJGWi2XcxHAdBOrUcBGUI8so1Oc7zlW
 lW4RQSbyYn1d612KyFKUfgpe9g/3bCUv01dZq1LEB2xCSJVGCmjM55TNGpbXoUPV7Vdw
 YLaJyq72DqcfTJPr+VeXyXCK/jIxslnTZU2+mswYYKYw24SlIzcj0uiOwPgG/pO6/O13
 8qMKL1ram1nOwtKdUnrmABA/p5+C87GEehBA7N0C4O70L6/kuYTU6Uv5GzyyVjVpH4Cl
 CvJfDXQU6x5W0tFv4ivwILOgADj6IitCdxA/ognpKipV9rhDbgmjtpKTauH1DnuAre25
 Jltw==
X-Gm-Message-State: APjAAAWRftA176s2TTKREYMnfKFVQyYWEr0QNj5XarOYStFiRlV1pCJ/
 NRmZimhgQ2YYonus5LQjyOfh6enq
X-Google-Smtp-Source: APXvYqzRcSxU7bCc8aTKDsA9pItoBJnbVvlv6UoQ9Jcu5JZx/glDXhTuzwbYvv/lBWzlf4P3tuKiEQ==
X-Received: by 2002:aa7:8108:: with SMTP id b8mr9501158pfi.197.1565184665086; 
 Wed, 07 Aug 2019 06:31:05 -0700 (PDT)
Received: from localhost.localdomain (unknown-224-80.windriver.com.
 [147.11.224.80])
 by smtp.gmail.com with ESMTPSA id f7sm88423063pfd.43.2019.08.07.06.31.03
 (version=TLS1 cipher=AES128-SHA bits=128/128);
 Wed, 07 Aug 2019 06:31:04 -0700 (PDT)
From: Bin Meng <bmeng.cn@gmail.com>
To: Albert Ou <aou@eecs.berkeley.edu>, Anup Patel <Anup.Patel@wdc.com>,
 Palmer Dabbelt <palmer@sifive.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, linux-kernel@vger.kernel.org,
 linux-riscv@lists.infradead.org
Subject: [PATCH v2] riscv: Using CSR numbers to access CSRs
Date: Wed,  7 Aug 2019 06:30:56 -0700
Message-Id: <1565184656-4282-1-git-send-email-bmeng.cn@gmail.com>
X-Mailer: git-send-email 1.7.1
In-Reply-To: <1562831376-21255-1-git-send-email-bmeng.cn@gmail.com>
References: <1562831376-21255-1-git-send-email-bmeng.cn@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_063105_738438_92E2658F 
X-CRM114-Status: GOOD (  13.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (bmeng.cn[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Andreas Schwab <schwab@suse.de>, Christoph Hellwig <hch@lst.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Since commit a3182c91ef4e ("RISC-V: Access CSRs using CSR numbers"),
we should prefer accessing CSRs using their CSR numbers, but there
are several leftovers like sstatus / sptbr we missed.

Signed-off-by: Bin Meng <bmeng.cn@gmail.com>
Signed-off-by: Christoph Hellwig <hch@lst.de>
Signed-off-by: Andreas Schwab <schwab@suse.de>
Reviewed-by: Anup Patel <anup@brainfault.org>

---

Changes in v2:
- add SoB tag of Christoph Hellwig and Andreas Schwab
- change CSR_SATP in mm/init.c that was recently changed after v1 patch

 arch/riscv/kernel/entry.S |  6 +++---
 arch/riscv/kernel/fpu.S   |  8 ++++----
 arch/riscv/kernel/head.S  |  2 +-
 arch/riscv/lib/uaccess.S  | 12 ++++++------
 arch/riscv/mm/context.c   |  7 +------
 arch/riscv/mm/init.c      |  2 +-
 6 files changed, 16 insertions(+), 21 deletions(-)

diff --git a/arch/riscv/kernel/entry.S b/arch/riscv/kernel/entry.S
index bc7a56e..74ccfd4 100644
--- a/arch/riscv/kernel/entry.S
+++ b/arch/riscv/kernel/entry.S
@@ -167,7 +167,7 @@ ENTRY(handle_exception)
 	tail do_IRQ
 1:
 	/* Exceptions run with interrupts enabled */
-	csrs sstatus, SR_SIE
+	csrs CSR_SSTATUS, SR_SIE
 
 	/* Handle syscalls */
 	li t0, EXC_SYSCALL
@@ -222,7 +222,7 @@ ret_from_syscall:
 
 ret_from_exception:
 	REG_L s0, PT_SSTATUS(sp)
-	csrc sstatus, SR_SIE
+	csrc CSR_SSTATUS, SR_SIE
 	andi s0, s0, SR_SPP
 	bnez s0, resume_kernel
 
@@ -265,7 +265,7 @@ work_pending:
 	bnez s1, work_resched
 work_notifysig:
 	/* Handle pending signals and notify-resume requests */
-	csrs sstatus, SR_SIE /* Enable interrupts for do_notify_resume() */
+	csrs CSR_SSTATUS, SR_SIE /* Enable interrupts for do_notify_resume() */
 	move a0, sp /* pt_regs */
 	move a1, s0 /* current_thread_info->flags */
 	tail do_notify_resume
diff --git a/arch/riscv/kernel/fpu.S b/arch/riscv/kernel/fpu.S
index 1defb06..631d315 100644
--- a/arch/riscv/kernel/fpu.S
+++ b/arch/riscv/kernel/fpu.S
@@ -23,7 +23,7 @@ ENTRY(__fstate_save)
 	li  a2,  TASK_THREAD_F0
 	add a0, a0, a2
 	li t1, SR_FS
-	csrs sstatus, t1
+	csrs CSR_SSTATUS, t1
 	frcsr t0
 	fsd f0,  TASK_THREAD_F0_F0(a0)
 	fsd f1,  TASK_THREAD_F1_F0(a0)
@@ -58,7 +58,7 @@ ENTRY(__fstate_save)
 	fsd f30, TASK_THREAD_F30_F0(a0)
 	fsd f31, TASK_THREAD_F31_F0(a0)
 	sw t0, TASK_THREAD_FCSR_F0(a0)
-	csrc sstatus, t1
+	csrc CSR_SSTATUS, t1
 	ret
 ENDPROC(__fstate_save)
 
@@ -67,7 +67,7 @@ ENTRY(__fstate_restore)
 	add a0, a0, a2
 	li t1, SR_FS
 	lw t0, TASK_THREAD_FCSR_F0(a0)
-	csrs sstatus, t1
+	csrs CSR_SSTATUS, t1
 	fld f0,  TASK_THREAD_F0_F0(a0)
 	fld f1,  TASK_THREAD_F1_F0(a0)
 	fld f2,  TASK_THREAD_F2_F0(a0)
@@ -101,6 +101,6 @@ ENTRY(__fstate_restore)
 	fld f30, TASK_THREAD_F30_F0(a0)
 	fld f31, TASK_THREAD_F31_F0(a0)
 	fscsr t0
-	csrc sstatus, t1
+	csrc CSR_SSTATUS, t1
 	ret
 ENDPROC(__fstate_restore)
diff --git a/arch/riscv/kernel/head.S b/arch/riscv/kernel/head.S
index 0f1ba17..86049ae 100644
--- a/arch/riscv/kernel/head.S
+++ b/arch/riscv/kernel/head.S
@@ -61,7 +61,7 @@ _start_kernel:
 	 * floating point in kernel space
 	 */
 	li t0, SR_FS
-	csrc sstatus, t0
+	csrc CSR_SSTATUS, t0
 
 	/* Pick one hart to run the main boot sequence */
 	la a3, hart_lottery
diff --git a/arch/riscv/lib/uaccess.S b/arch/riscv/lib/uaccess.S
index 399e6f0..ed2696c 100644
--- a/arch/riscv/lib/uaccess.S
+++ b/arch/riscv/lib/uaccess.S
@@ -18,7 +18,7 @@ ENTRY(__asm_copy_from_user)
 
 	/* Enable access to user memory */
 	li t6, SR_SUM
-	csrs sstatus, t6
+	csrs CSR_SSTATUS, t6
 
 	add a3, a1, a2
 	/* Use word-oriented copy only if low-order bits match */
@@ -47,7 +47,7 @@ ENTRY(__asm_copy_from_user)
 
 3:
 	/* Disable access to user memory */
-	csrc sstatus, t6
+	csrc CSR_SSTATUS, t6
 	li a0, 0
 	ret
 4: /* Edge case: unalignment */
@@ -72,7 +72,7 @@ ENTRY(__clear_user)
 
 	/* Enable access to user memory */
 	li t6, SR_SUM
-	csrs sstatus, t6
+	csrs CSR_SSTATUS, t6
 
 	add a3, a0, a1
 	addi t0, a0, SZREG-1
@@ -94,7 +94,7 @@ ENTRY(__clear_user)
 
 3:
 	/* Disable access to user memory */
-	csrc sstatus, t6
+	csrc CSR_SSTATUS, t6
 	li a0, 0
 	ret
 4: /* Edge case: unalignment */
@@ -114,11 +114,11 @@ ENDPROC(__clear_user)
 	/* Fixup code for __copy_user(10) and __clear_user(11) */
 10:
 	/* Disable access to user memory */
-	csrs sstatus, t6
+	csrs CSR_SSTATUS, t6
 	mv a0, a2
 	ret
 11:
-	csrs sstatus, t6
+	csrs CSR_SSTATUS, t6
 	mv a0, a1
 	ret
 	.previous
diff --git a/arch/riscv/mm/context.c b/arch/riscv/mm/context.c
index 89ceb3c..beeb5d7 100644
--- a/arch/riscv/mm/context.c
+++ b/arch/riscv/mm/context.c
@@ -57,12 +57,7 @@ void switch_mm(struct mm_struct *prev, struct mm_struct *next,
 	cpumask_clear_cpu(cpu, mm_cpumask(prev));
 	cpumask_set_cpu(cpu, mm_cpumask(next));
 
-	/*
-	 * Use the old spbtr name instead of using the current satp
-	 * name to support binutils 2.29 which doesn't know about the
-	 * privileged ISA 1.10 yet.
-	 */
-	csr_write(sptbr, virt_to_pfn(next->pgd) | SATP_MODE);
+	csr_write(CSR_SATP, virt_to_pfn(next->pgd) | SATP_MODE);
 	local_flush_tlb_all();
 
 	flush_icache_deferred(next);
diff --git a/arch/riscv/mm/init.c b/arch/riscv/mm/init.c
index 42bf939..238fc41 100644
--- a/arch/riscv/mm/init.c
+++ b/arch/riscv/mm/init.c
@@ -435,7 +435,7 @@ static void __init setup_vm_final(void)
 	clear_fixmap(FIX_PMD);
 
 	/* Move to swapper page table */
-	csr_write(sptbr, PFN_DOWN(__pa(swapper_pg_dir)) | SATP_MODE);
+	csr_write(CSR_SATP, PFN_DOWN(__pa(swapper_pg_dir)) | SATP_MODE);
 	local_flush_tlb_all();
 }
 
-- 
2.7.4


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
