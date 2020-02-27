Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 364A1172A46
	for <lists+linux-riscv@lfdr.de>; Thu, 27 Feb 2020 22:35:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:From:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=AcocSUGKmr1hGuXmIYHI/PJN7pt2xJxuohE1KdhBYJU=; b=ktwEAIT1fqkl0pg1qwNY4YNes
	H9A7X0PwZqtj8F+DKpFdKBrfOPQ9fCi+W6ykzXbScbxDzqiZBsVmWhD1WUSBMpiZp0cOpkmNniW1Z
	f7zD5j0wHknRVWJDveJHKa82bXNifc2/MNpowCcpaZRir1M5siwv5FflQ2I24sjV78rYSeX1QmzLo
	A9BHfv12Gsp8FRZU6FKa9m7AHVlj8mGRriQaONY9kvzfOHHCT4HHk84gTMpu2RcFjobWHwvtRsG6H
	Dm/LFAIwwQqnQpNjAReu/VbN8dDUkWjDMsWtQ9L8nJ/U0X34rPCGFO7Jo0oGNJJMdw/Q8rnEYNtKc
	DUq+Z2EfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7Qox-0007i8-6r; Thu, 27 Feb 2020 21:35:51 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7Qos-0007fT-3V
 for linux-riscv@lists.infradead.org; Thu, 27 Feb 2020 21:35:48 +0000
Received: by mail-pj1-x1044.google.com with SMTP id r67so347566pjb.0
 for <linux-riscv@lists.infradead.org>; Thu, 27 Feb 2020 13:35:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
 h=subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding:cc:from:to;
 bh=AcocSUGKmr1hGuXmIYHI/PJN7pt2xJxuohE1KdhBYJU=;
 b=02iHtvHC/YXKtORtJx0po9jlRvhSKPjJItwMvsClrrrEtPAQtNhZXnEO3BM9iGkOq+
 IC/sLV5zmSl9X8af5/YbMvtz6iDCBcVP0vAw3ZgcwTe/Wz5szQxxF2lPVZwMGROtGR18
 1f0q3a5sgvzgneII3BP7vjLzo0z1jOUpyD90F8icIb58n+vNGUB0RHfXdm3DmqkM4aP8
 XpAadSZ1qt/vdnoWv5eWOujwuW/S+KlyKXZRtxqSuRgamdwRkaIhLCRTvNLcW1MPrGeX
 KvYkngqxlnspCbt09zwf6oFTquOx9AglO/pp1uAkAj4Z73tn5/IRpYjon0GOUMkn9596
 YjjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding:cc:from:to;
 bh=AcocSUGKmr1hGuXmIYHI/PJN7pt2xJxuohE1KdhBYJU=;
 b=B2OQaST/RfjRVZeUJxZE42U3yyvyro7kq4wD0ExFlu+vuSXojhSOdt8IOkLi4zMy06
 59gHM002awGLeOJbkhWMc9o7EyLbOPHj/RpUCmMNYnxS/MQiEemq3+X99aHtZb11aFZT
 Ox3damZptaNnma6KdsSxRm6L5OndStnpSf6uPwGBYQzGxz710qD4aG53i7E9aJkxTe+T
 6yfEtyl6kjFIw37Krfl9Ora0st+754tQeI1EbLtax7wUtzYrI5F+oAqfrPPH5BdSd1DF
 5XXhdMsmCaqEO5NASIbZWQKTK/1/Jxd4VeanSDpIYQfgBMtg/ebckaVx25yyqrbebafb
 fg7g==
X-Gm-Message-State: APjAAAVcQaOipw/3TYewuVQ1DcrYAVdyMgVRMQfJWEv4lQvFdXmaC2HX
 sXijzpqZevoymKi5zezmw7UxVQ==
X-Google-Smtp-Source: APXvYqzgsQV2UfdPsP4ccDri4Rwx1yutDxP11+BF7+wtZwGOEOBnQ4QOq2PwSH4DbO4CjVTitVaO3g==
X-Received: by 2002:a17:90a:c691:: with SMTP id
 n17mr1019733pjt.41.1582839344878; 
 Thu, 27 Feb 2020 13:35:44 -0800 (PST)
Received: from localhost ([2620:0:1000:2514:23a5:d584:6a92:3e3c])
 by smtp.gmail.com with ESMTPSA id u6sm7709711pgj.7.2020.02.27.13.35.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 27 Feb 2020 13:35:44 -0800 (PST)
Subject: [PATCH 2/3] RISC-V: Inline the assembly register save/restore macros
Date: Thu, 27 Feb 2020 13:34:49 -0800
Message-Id: <20200227213450.87194-3-palmer@dabbelt.com>
X-Mailer: git-send-email 2.25.1.481.gfbce0eb801-goog
In-Reply-To: <20200227213450.87194-1-palmer@dabbelt.com>
References: <20200227213450.87194-1-palmer@dabbelt.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: Palmer Dabbelt <palmer@dabbelt.com>
To: linux-riscv@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_133546_155620_016F1085 
X-CRM114-Status: GOOD (  14.63  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: clang-built-linux@googlegroups.com,
 Palmer Dabbelt <palmerdabbelt@google.com>, kernel-team@android.com
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

From: Palmer Dabbelt <palmerdabbelt@google.com>

These are only used once, and when reading the code I've always found them to
be more of a headache than a benefit.  While they were never worth removing
before, LLVM's integrated assembler doesn't support LOCAL so rather that trying
to figure out how to refactor the macros it seems saner to just inline them.

Signed-off-by: Palmer Dabbelt <palmerdabbelt@google.com>
---
 arch/riscv/kernel/entry.S | 143 ++++++++++++++++----------------------
 1 file changed, 61 insertions(+), 82 deletions(-)

diff --git a/arch/riscv/kernel/entry.S b/arch/riscv/kernel/entry.S
index bad4d85b5e91..f2e8e7c8089d 100644
--- a/arch/riscv/kernel/entry.S
+++ b/arch/riscv/kernel/entry.S
@@ -13,17 +13,11 @@
 #include <asm/thread_info.h>
 #include <asm/asm-offsets.h>
 
-	.text
-	.altmacro
-
-/*
- * Prepares to enter a system call or exception by saving all registers to the
- * stack.
- */
-	.macro SAVE_ALL
-	LOCAL _restore_kernel_tpsp
-	LOCAL _save_context
+#if !IS_ENABLED(CONFIG_PREEMPTION)
+.set resume_kernel, restore_all
+#endif
 
+ENTRY(handle_exception)
 	/*
 	 * If coming from userspace, preserve the user thread pointer and load
 	 * the kernel thread pointer.  If we came from the kernel, the scratch
@@ -90,77 +84,6 @@ _save_context:
 	REG_S s3, PT_BADADDR(sp)
 	REG_S s4, PT_CAUSE(sp)
 	REG_S s5, PT_TP(sp)
-	.endm
-
-/*
- * Prepares to return from a system call or exception by restoring all
- * registers from the stack.
- */
-	.macro RESTORE_ALL
-	REG_L a0, PT_STATUS(sp)
-	/*
-	 * The current load reservation is effectively part of the processor's
-	 * state, in the sense that load reservations cannot be shared between
-	 * different hart contexts.  We can't actually save and restore a load
-	 * reservation, so instead here we clear any existing reservation --
-	 * it's always legal for implementations to clear load reservations at
-	 * any point (as long as the forward progress guarantee is kept, but
-	 * we'll ignore that here).
-	 *
-	 * Dangling load reservations can be the result of taking a trap in the
-	 * middle of an LR/SC sequence, but can also be the result of a taken
-	 * forward branch around an SC -- which is how we implement CAS.  As a
-	 * result we need to clear reservations between the last CAS and the
-	 * jump back to the new context.  While it is unlikely the store
-	 * completes, implementations are allowed to expand reservations to be
-	 * arbitrarily large.
-	 */
-	REG_L  a2, PT_EPC(sp)
-	REG_SC x0, a2, PT_EPC(sp)
-
-	csrw CSR_STATUS, a0
-	csrw CSR_EPC, a2
-
-	REG_L x1,  PT_RA(sp)
-	REG_L x3,  PT_GP(sp)
-	REG_L x4,  PT_TP(sp)
-	REG_L x5,  PT_T0(sp)
-	REG_L x6,  PT_T1(sp)
-	REG_L x7,  PT_T2(sp)
-	REG_L x8,  PT_S0(sp)
-	REG_L x9,  PT_S1(sp)
-	REG_L x10, PT_A0(sp)
-	REG_L x11, PT_A1(sp)
-	REG_L x12, PT_A2(sp)
-	REG_L x13, PT_A3(sp)
-	REG_L x14, PT_A4(sp)
-	REG_L x15, PT_A5(sp)
-	REG_L x16, PT_A6(sp)
-	REG_L x17, PT_A7(sp)
-	REG_L x18, PT_S2(sp)
-	REG_L x19, PT_S3(sp)
-	REG_L x20, PT_S4(sp)
-	REG_L x21, PT_S5(sp)
-	REG_L x22, PT_S6(sp)
-	REG_L x23, PT_S7(sp)
-	REG_L x24, PT_S8(sp)
-	REG_L x25, PT_S9(sp)
-	REG_L x26, PT_S10(sp)
-	REG_L x27, PT_S11(sp)
-	REG_L x28, PT_T3(sp)
-	REG_L x29, PT_T4(sp)
-	REG_L x30, PT_T5(sp)
-	REG_L x31, PT_T6(sp)
-
-	REG_L x2,  PT_SP(sp)
-	.endm
-
-#if !IS_ENABLED(CONFIG_PREEMPTION)
-.set resume_kernel, restore_all
-#endif
-
-ENTRY(handle_exception)
-	SAVE_ALL
 
 	/*
 	 * Set the scratch register to 0, so that if a recursive exception
@@ -298,7 +221,63 @@ resume_userspace:
 	csrw CSR_SCRATCH, tp
 
 restore_all:
-	RESTORE_ALL
+	REG_L a0, PT_STATUS(sp)
+	/*
+	 * The current load reservation is effectively part of the processor's
+	 * state, in the sense that load reservations cannot be shared between
+	 * different hart contexts.  We can't actually save and restore a load
+	 * reservation, so instead here we clear any existing reservation --
+	 * it's always legal for implementations to clear load reservations at
+	 * any point (as long as the forward progress guarantee is kept, but
+	 * we'll ignore that here).
+	 *
+	 * Dangling load reservations can be the result of taking a trap in the
+	 * middle of an LR/SC sequence, but can also be the result of a taken
+	 * forward branch around an SC -- which is how we implement CAS.  As a
+	 * result we need to clear reservations between the last CAS and the
+	 * jump back to the new context.  While it is unlikely the store
+	 * completes, implementations are allowed to expand reservations to be
+	 * arbitrarily large.
+	 */
+	REG_L  a2, PT_EPC(sp)
+	REG_SC x0, a2, PT_EPC(sp)
+
+	csrw CSR_STATUS, a0
+	csrw CSR_EPC, a2
+
+	REG_L x1,  PT_RA(sp)
+	REG_L x3,  PT_GP(sp)
+	REG_L x4,  PT_TP(sp)
+	REG_L x5,  PT_T0(sp)
+	REG_L x6,  PT_T1(sp)
+	REG_L x7,  PT_T2(sp)
+	REG_L x8,  PT_S0(sp)
+	REG_L x9,  PT_S1(sp)
+	REG_L x10, PT_A0(sp)
+	REG_L x11, PT_A1(sp)
+	REG_L x12, PT_A2(sp)
+	REG_L x13, PT_A3(sp)
+	REG_L x14, PT_A4(sp)
+	REG_L x15, PT_A5(sp)
+	REG_L x16, PT_A6(sp)
+	REG_L x17, PT_A7(sp)
+	REG_L x18, PT_S2(sp)
+	REG_L x19, PT_S3(sp)
+	REG_L x20, PT_S4(sp)
+	REG_L x21, PT_S5(sp)
+	REG_L x22, PT_S6(sp)
+	REG_L x23, PT_S7(sp)
+	REG_L x24, PT_S8(sp)
+	REG_L x25, PT_S9(sp)
+	REG_L x26, PT_S10(sp)
+	REG_L x27, PT_S11(sp)
+	REG_L x28, PT_T3(sp)
+	REG_L x29, PT_T4(sp)
+	REG_L x30, PT_T5(sp)
+	REG_L x31, PT_T6(sp)
+
+	REG_L x2,  PT_SP(sp)
+
 #ifdef CONFIG_RISCV_M_MODE
 	mret
 #else
-- 
2.25.1.481.gfbce0eb801-goog


