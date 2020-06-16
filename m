Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA3E71FB8CE
	for <lists+linux-riscv@lfdr.de>; Tue, 16 Jun 2020 17:59:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:MIME-Version:
	Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SaPn7nuDqTvwxkz2SjI6g3CX9gIEd3peSODmY0kYyo0=; b=qIcvbCD08p646M
	1RQmNv9Z+GwJQY635rQarjwcsaJOJfoz1LiQCMwCLgEHiLl7UhizJQCyIP9B+Ha5DK7lznlboFe2d
	hUOetqTBdNeHa/xO95KYhC5Uu0e+TFbR1WVnRmtjGGg+zcUFFFJfKYzZFnHshJokAoLaVjPKwzsAA
	ScCx5YRHG4AquqCn1Eb4+3BkJWKzMl82Jd6VnjfNApU50mcOxuML5Cv3ea3Z/pxUWEIAmwDLkfadZ
	EvEpztuvU8mJs6ma8n/1IL3CC5s/vUcQI0GKv1qbcloBKsMQKKCIZynkjQn3JRq2oDfjG0H7ozu2p
	p7pfKMNRop6xOFGmktPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlE09-0004ak-L9; Tue, 16 Jun 2020 15:59:53 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlDzF-0003qp-OV
 for linux-riscv@lists.infradead.org; Tue, 16 Jun 2020 15:58:59 +0000
Received: from localhost.localdomain (unknown [42.120.72.72])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1B86721556;
 Tue, 16 Jun 2020 15:58:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592323137;
 bh=4nwhGh0JwW2X8vMqWBQ8XqkThbE4b7XZj/mOqH0gNC4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=kEqW0ZrDGOb8FQ9a3K5CD/GhugJaZnj88q/MLcIfLlfDpgBeFtZc2dTIzqyQW7pcH
 jKK+BkuT6zrrERJsfRGDMAusaDgUubGuWwc0q1albZ3WsmsQuDsj76ku6RwCUF4WmJ
 lv1FExtgYreRLEHt6S7CHkGYyu0wctAG0X+tgwf0=
From: guoren@kernel.org
To: palmerdabbelt@google.com, paul.walmsley@sifive.com, anup@brainfault.org,
 zong.li@sifive.com, aou@eecs.berkeley.edu, tglx@linutronix.de,
 tycho@tycho.ws, nickhu@andestech.com
Subject: [PATCH 3/3] riscv: Enable LOCKDEP_SUPPORT & fixup
 TRACE_IRQFLAGS_SUPPORT
Date: Tue, 16 Jun 2020 15:57:01 +0000
Message-Id: <1592323021-98541-4-git-send-email-guoren@kernel.org>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1592323021-98541-1-git-send-email-guoren@kernel.org>
References: <1592323021-98541-1-git-send-email-guoren@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_085857_871837_6E21FF8F 
X-CRM114-Status: UNSURE (   8.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-riscv@lists.infradead.org, Guo Ren <guoren@linux.alibaba.com>,
 linux-kernel@vger.kernel.org, linux-csky@vger.kernel.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

From: Guo Ren <guoren@linux.alibaba.com>

Lockdep is needed by proving the spinlocks and rwlocks. To suupport
it, we need fixup TRACE_IRQFLAGS_SUPPORT in kernel/entry.S. This
patch follow Documentation/irqflags-tracing.txt.

Signed-off-by: Guo Ren <guoren@linux.alibaba.com>
---
 arch/riscv/Kconfig        |  3 +++
 arch/riscv/kernel/entry.S | 41 ++++++++++++++++++++++++++++++++++++++++-
 2 files changed, 43 insertions(+), 1 deletion(-)

diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index a31e1a4..550e0ec 100644
--- a/arch/riscv/Kconfig
+++ b/arch/riscv/Kconfig
@@ -170,6 +170,9 @@ config PGTABLE_LEVELS
 	default 3 if 64BIT
 	default 2
 
+config LOCKDEP_SUPPORT
+	def_bool y
+
 source "arch/riscv/Kconfig.socs"
 
 menu "Platform type"
diff --git a/arch/riscv/kernel/entry.S b/arch/riscv/kernel/entry.S
index 56d071b..02c5b8e 100644
--- a/arch/riscv/kernel/entry.S
+++ b/arch/riscv/kernel/entry.S
@@ -97,17 +97,25 @@ _save_context:
 	la gp, __global_pointer$
 .option pop
 
-	la ra, ret_from_exception
+#ifdef CONFIG_TRACE_IRQFLAGS
+	call trace_hardirqs_off
+#endif
 	/*
 	 * MSB of cause differentiates between
 	 * interrupts and exceptions
 	 */
 	bge s4, zero, 1f
 
+	la ra, ret_from_exception
+
 	/* Handle interrupts */
 	move a0, sp /* pt_regs */
 	tail do_IRQ
 1:
+#ifdef CONFIG_TRACE_IRQFLAGS
+	call trace_hardirqs_on
+	REG_L s1, PT_STATUS(sp)
+#endif
 	/*
 	 * Exceptions run with interrupts enabled or disabled depending on the
 	 * state of SR_PIE in m/sstatus.
@@ -117,8 +125,23 @@ _save_context:
 	csrs CSR_STATUS, SR_IE
 
 1:
+#ifdef CONFIG_TRACE_IRQFLAGS
+	REG_L a0, PT_A0(sp)
+	REG_L a1, PT_A1(sp)
+	REG_L a2, PT_A2(sp)
+	REG_L a3, PT_A3(sp)
+	REG_L a4, PT_A4(sp)
+	REG_L a5, PT_A5(sp)
+	REG_L a6, PT_A6(sp)
+	REG_L a7, PT_A7(sp)
+#endif
+	la ra, ret_from_exception
 	/* Handle syscalls */
 	li t0, EXC_SYSCALL
+
+#ifdef CONFIG_TRACE_IRQFLAGS
+	REG_L s4, PT_CAUSE(sp)
+#endif
 	beq s4, t0, handle_syscall
 
 	/* Handle other exceptions */
@@ -141,6 +164,9 @@ handle_syscall:
 	 * Advance SEPC to avoid executing the original
 	 * scall instruction on sret
 	 */
+#ifdef CONFIG_TRACE_IRQFLAGS
+	REG_L s2, PT_EPC(sp)
+#endif
 	addi s2, s2, 0x4
 	REG_S s2, PT_EPC(sp)
 	/* Trace syscalls, but only if requested by the user. */
@@ -188,6 +214,9 @@ ret_from_syscall_rejected:
 ret_from_exception:
 	REG_L s0, PT_STATUS(sp)
 	csrc CSR_STATUS, SR_IE
+#ifdef CONFIG_TRACE_IRQFLAGS
+	call trace_hardirqs_off
+#endif
 #ifdef CONFIG_RISCV_M_MODE
 	/* the MPP value is too large to be used as an immediate arg for addi */
 	li t0, SR_MPP
@@ -214,6 +243,16 @@ resume_userspace:
 	csrw CSR_SCRATCH, tp
 
 restore_all:
+#ifdef CONFIG_TRACE_IRQFLAGS
+	REG_L s1, PT_STATUS(sp)
+	andi t0, s1, SR_PIE
+	beqz t0, 1f
+	call trace_hardirqs_on
+	j 2f
+1:
+	call trace_hardirqs_off
+2:
+#endif
 	REG_L a0, PT_STATUS(sp)
 	/*
 	 * The current load reservation is effectively part of the processor's
-- 
2.7.4


