Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 172ACDB365
	for <lists+linux-riscv@lfdr.de>; Thu, 17 Oct 2019 19:38:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bkND3XOpcJboK2qKzOlPLQHnpMg30L7nHW1CbioOcoc=; b=sAzg1nh44lf4PR
	+h7acgXI4lhEXLbpIXIQjGU6IiRsQuCgutDzdqLtRsTZFqrQZldeZB4FTyQ62DwRn84Ip7Wfr3eqL
	I2xuvCNnpwrLModCkoWG4kR9Zh/lrn6bOpn0jsdYHG+n0diV6LTYahC9xQBHMjPgJCY2eDoHCBPNl
	yfyN3O3Y3VydIvFXRJf0PQhlxk6k5V2dxg1rIZEA4rqCSoWh1KeqW1rjrPm3wtXFcuvjzS1dPWgxZ
	3AFiVKPO5dTi3a95xm9dXeFa7RW/TvTpxhdOveNP3u9lNci8ObLBCcMl3tZ3OMB0u/ObEBIJEHfaH
	LuRrSO5eCOlv9Si29jAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL9ij-0007LH-MF; Thu, 17 Oct 2019 17:37:53 +0000
Received: from [2001:4bb8:18c:d7b:c70:4a89:bc61:3] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL9ig-0007Gy-I7; Thu, 17 Oct 2019 17:37:50 +0000
From: Christoph Hellwig <hch@lst.de>
To: Palmer Dabbelt <palmer@sifive.com>,
 Paul Walmsley <paul.walmsley@sifive.com>
Subject: [PATCH 02/15] riscv: cleanup do_trap_break
Date: Thu, 17 Oct 2019 19:37:30 +0200
Message-Id: <20191017173743.5430-3-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191017173743.5430-1-hch@lst.de>
References: <20191017173743.5430-1-hch@lst.de>
MIME-Version: 1.0
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
Cc: Damien Le Moal <damien.lemoal@wdc.com>, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

If we always compile the get_break_insn_length inline function we can
remove the ifdefs and let dead code elimination take care of the warn
branch that is now unreadable because the report_bug stub always
returns BUG_TRAP_TYPE_BUG.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 arch/riscv/kernel/traps.c | 26 ++++++--------------------
 1 file changed, 6 insertions(+), 20 deletions(-)

diff --git a/arch/riscv/kernel/traps.c b/arch/riscv/kernel/traps.c
index 1ac75f7d0bff..10a17e545f43 100644
--- a/arch/riscv/kernel/traps.c
+++ b/arch/riscv/kernel/traps.c
@@ -111,7 +111,6 @@ DO_ERROR_INFO(do_trap_ecall_s,
 DO_ERROR_INFO(do_trap_ecall_m,
 	SIGILL, ILL_ILLTRP, "environment call from M-mode");
 
-#ifdef CONFIG_GENERIC_BUG
 static inline unsigned long get_break_insn_length(unsigned long pc)
 {
 	bug_insn_t insn;
@@ -120,28 +119,15 @@ static inline unsigned long get_break_insn_length(unsigned long pc)
 		return 0;
 	return (((insn & __INSN_LENGTH_MASK) == __INSN_LENGTH_32) ? 4UL : 2UL);
 }
-#endif /* CONFIG_GENERIC_BUG */
 
 asmlinkage void do_trap_break(struct pt_regs *regs)
 {
-	if (user_mode(regs)) {
-		force_sig_fault(SIGTRAP, TRAP_BRKPT,
-				(void __user *)(regs->sepc));
-		return;
-	}
-#ifdef CONFIG_GENERIC_BUG
-	{
-		enum bug_trap_type type;
-
-		type = report_bug(regs->sepc, regs);
-		if (type == BUG_TRAP_TYPE_WARN) {
-			regs->sepc += get_break_insn_length(regs->sepc);
-			return;
-		}
-	}
-#endif /* CONFIG_GENERIC_BUG */
-
-	die(regs, "Kernel BUG");
+	if (user_mode(regs))
+		force_sig_fault(SIGTRAP, TRAP_BRKPT, (void __user *)regs->sepc);
+	else if (report_bug(regs->sepc, regs) == BUG_TRAP_TYPE_WARN)
+		regs->sepc += get_break_insn_length(regs->sepc);
+	else
+		die(regs, "Kernel BUG");
 }
 
 #ifdef CONFIG_GENERIC_BUG
-- 
2.20.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
