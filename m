Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FED4652A5
	for <lists+linux-riscv@lfdr.de>; Thu, 11 Jul 2019 09:50:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8+7VgBkV9fT6meUncN1S0SETWCqHcCb5jq/4nvJscQU=; b=SfJUJZRRIViBJ3
	m1plcFzNvxKXbOHbSed0lWahIn/NJfMbjDe5IYQAAglf/euTokFhB0jiuSZHAHFOZLUKYH/l3Yp+I
	Ud9WUhNjUz7/jALrW/QQPfAN5emHAyJPbv+xzViGhA9nlZm2ESLyhJTh3NymAobU6e86cy4/LX3mo
	HOjVC+PMvh884CpWP0324k/EIySjrEYd21u5fxWsw1RZnvhkfbYCaduF14/2L8B66plUbuQL8Vove
	zJ5ffY9BYGnSfxxwiGdgEGRCePf1ZCzFKnjHToQk0qNkcpvzIv8M0v9Xv0UqMzDQnCPv351NAHWOA
	m71QeUeKRFrJqxuDctnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlTps-0004jb-11; Thu, 11 Jul 2019 07:49:48 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlTpn-0004jI-Tx
 for linux-riscv@lists.infradead.org; Thu, 11 Jul 2019 07:49:45 +0000
Received: by mail-pg1-x542.google.com with SMTP id f25so2513850pgv.10
 for <linux-riscv@lists.infradead.org>; Thu, 11 Jul 2019 00:49:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id;
 bh=LEekAmkbSlJe2V5UobBil1FdsPThWPPZGP0AluV12NM=;
 b=FGOM/RA6GwYUoibkM5UDYivcugSSDZXXSVrk86zC1drYvccfI7ycp1PwJUKak1tpML
 YXWn/RRBBKwc5R//XMl24oVJRsXPgQaledrS5z1MqOT3owLWeNwYw6TF+rwJY7IXE7e2
 4A3H97bfzCwX5DQqXDNcAgwfk8t3K6WGLeUNio/s3+LclnFf9T0dvf0ci81h6wWoHvru
 fIcBgp4lElO08unOPOl9OyQTqmUU5zVkhjiQ5KP3i/xUSw4R6Iz54GaXC4uUg78i9TgM
 ZWsffIJubj5dpHAYtIwLT9BsTG2jASdgKYiC8eJxy1L1Q4CD7C7R2WDWAfyHtyAtjful
 mxgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id;
 bh=LEekAmkbSlJe2V5UobBil1FdsPThWPPZGP0AluV12NM=;
 b=sUofI3wwfZTtt+wq7v6feFySSboGlbZNONwhoRbWm4queaTsB1bpnsI2mK/JzLiIa3
 KmIWjT5H9slaanvdbE/KHzpKf9OA7XQj1Esb16mdZSelPOtQrbhR8apPUXE4SzOG6Iuv
 VGhcDTCPum6EyL/7LXyGxuAWGs68DjHGybU4Y/SGksa6YCsi6TYD/S+a/YUsrttCaQfk
 PX7KAQykBpnrV8abM1rDvQLZmeuVSUB1mFq82Kpi1P0iNxq3hBFxfVdHRzKDoca6K93F
 HuAYJEE/TWavAathXiKgxzpvwHGsAuzs+yZpo8eubVUGXy5tJE2mf2rHMtGSef/xwlTo
 CoEA==
X-Gm-Message-State: APjAAAWK15ePqkNQKYbhT7w+ItHvtF0n3nH2FjV9b70CmVJRvJ/QwZZu
 Nk4vWeiyGI5vHjes8t3xb30oeDLx
X-Google-Smtp-Source: APXvYqzHBQPvbO+A0H//rCEsoxOmDWLkU0x2KqnbDdFGQJuTEJfcUw/7WqwWwbdhuOPgajGq6ALFyw==
X-Received: by 2002:a17:90a:a008:: with SMTP id
 q8mr3280008pjp.114.1562831381335; 
 Thu, 11 Jul 2019 00:49:41 -0700 (PDT)
Received: from localhost.localdomain (unknown-224-80.windriver.com.
 [147.11.224.80])
 by smtp.gmail.com with ESMTPSA id n98sm4351947pjc.26.2019.07.11.00.49.40
 (version=TLS1 cipher=AES128-SHA bits=128/128);
 Thu, 11 Jul 2019 00:49:40 -0700 (PDT)
From: Bin Meng <bmeng.cn@gmail.com>
To: linux-riscv <linux-riscv@lists.infradead.org>,
 Anup Patel <anup.patel@wdc.com>, Palmer Dabbelt <palmer@sifive.com>,
 Albert Ou <aou@eecs.berkeley.edu>
Subject: [PATCH] riscv: Using CSR numbers to access CSRs
Date: Thu, 11 Jul 2019 00:49:36 -0700
Message-Id: <1562831376-21255-1-git-send-email-bmeng.cn@gmail.com>
X-Mailer: git-send-email 1.7.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_004943_995963_6A85D18E 
X-CRM114-Status: GOOD (  10.16  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (bmeng.cn[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Since commit a3182c91ef4e ("RISC-V: Access CSRs using CSR numbers"),
we should prefer accessing CSRs using their CSR numbers, but there
are several leftovers like sstatus / sptbr we missed.

Signed-off-by: Bin Meng <bmeng.cn@gmail.com>
---

 arch/riscv/kernel/entry.S |  6 +++---
 arch/riscv/kernel/fpu.S   |  8 ++++----
 arch/riscv/kernel/head.S  |  2 +-
 arch/riscv/lib/uaccess.S  | 12 ++++++------
 arch/riscv/mm/context.c   |  7 +------
 5 files changed, 15 insertions(+), 20 deletions(-)

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
index 4e46f31..95010d7 100644
--- a/arch/riscv/kernel/head.S
+++ b/arch/riscv/kernel/head.S
@@ -29,7 +29,7 @@ ENTRY(_start)
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
-- 
2.7.4


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
