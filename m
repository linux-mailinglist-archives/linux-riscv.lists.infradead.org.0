Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30A7D1F7472
	for <lists+linux-riscv@lfdr.de>; Fri, 12 Jun 2020 09:10:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oxY+GEGW58gRs4X3wAEY9YflVh8sZNhuS06ZzQHTlOU=; b=Pb8IceK9Kfqa+7
	YcHdf6G0t2ibh6FQEIzdvzusEJYEyBpMPvM3T+7eC4lDsCuCMFfuhdetWNrXV77a6eAGFEe+vKBMn
	uJB8HfrafBhTPJ3mmjvn85jkOt+ByO2euw6RIL+dGA5BOFqee4FEqdHz5RPUjJncyjU+EJs7hsStP
	/pqlXCOzf+8q0PTGrwlX0J3sKVIQ6Z81A7iL1D4mdoWMtW7aWZR4C7hsKXBo/fJFWQFMNrZL9MH7m
	QwhxVwcVPGY/cKX4IW/XBE9Antu+62p/LLDpEfJzEdjObBOILQ8xxDgY6H+VpBCzu2ek3CWXUE6vF
	yTr73EKb+fWFZYUtCpow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjdq0-0005ix-Av; Fri, 12 Jun 2020 07:10:52 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjdph-0005M9-B1
 for linux-riscv@lists.infradead.org; Fri, 12 Jun 2020 07:10:35 +0000
Received: by mail-pl1-x643.google.com with SMTP id j4so133755plk.3
 for <linux-riscv@lists.infradead.org>; Fri, 12 Jun 2020 00:10:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=oxY+GEGW58gRs4X3wAEY9YflVh8sZNhuS06ZzQHTlOU=;
 b=bYf2ca0prWH5VkCAX0BKWaVwimC2C3YOvMCg9eNTbmfw5UDY5oRv2hJTZOzZJiNXJ/
 UydYZv2pwrhTdIfN8BHiou4PGeBuPiO7qwYweHfxT3aDxNh+gnBnCDkcy5aaEQq8Cejo
 mjIwKOtzvVlCUrgnR6MiquRuDwa/j4kt6TjBT1PML91QcxFW14HZxgiKTd33+Wj2UxMY
 eq0+yuFXbRtJHt+wgG10k5i01wHnW8b8H6LbcTRxAcIwA18Jv13+k9miBGj9XEPtMUtD
 pSaxRemoysoyJ8dQXZM5UH1nQD8SKPa+6H4dGCBFwIEPeQ+TA3A5S3+E5Wd+jSRUKspJ
 ehmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=oxY+GEGW58gRs4X3wAEY9YflVh8sZNhuS06ZzQHTlOU=;
 b=iDdl/NrI7rfyrVZR/1+oNuAAqfeqXEsnKk+7UNp/x0cx6vQTl4CPBMCElJ9lbZIh8F
 u8dOE4PS4dxqqxEsEp9bjgf5kEcrF/UpFSvlWuYGuLxpYvavb1Jlqna3FzqfCroW37Sj
 BDY7JuAvvj1Do8t5RRdjvZTwKiQQhTDcQoctElG4AKIGqvK6+7r1ZdOyqMzI49qvwgyk
 2KJylRofXIiaDBclJ+avPhDSC24x+hCLKeFn6KQ/v3hvPkZ79XZnFId6KdU78AN8C0N1
 1HgfxAYsX+6xlxcR9LaPc8d/5lOr9kLRM7Zpa2y66Fn0sCgMWf5HwlOXKvuHis+Ddydw
 YH6g==
X-Gm-Message-State: AOAM53282IMSurZNqV7GU0cdI4O3e9cgq2DbovbCr/HeDS8HVPFS+NKu
 KGbI02E1NaexgaVPVGQu4jF0Og==
X-Google-Smtp-Source: ABdhPJyFG6z1DGdSbNi4UEz2b4RML3S9N58L5su0dAAyi8LgzJF1AKeDdZV2+FRyX3g2Ij4kQtmORg==
X-Received: by 2002:a17:90a:ae11:: with SMTP id
 t17mr12268990pjq.157.1591945832518; 
 Fri, 12 Jun 2020 00:10:32 -0700 (PDT)
Received: from hsinchu02.internal.sifive.com
 (114-34-229-221.HINET-IP.hinet.net. [114.34.229.221])
 by smtp.gmail.com with ESMTPSA id d2sm4336919pgp.56.2020.06.12.00.10.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 12 Jun 2020 00:10:32 -0700 (PDT)
From: Greentime Hu <greentime.hu@sifive.com>
To: greentime.hu@sifive.com, oleg@redhat.com, guoren@linux.alibaba.com,
 vincent.chen@sifive.com, paul.walmsley@sifive.com,
 palmerdabbelt@google.com, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 10/13] riscv: Add task switch support for vector
Date: Fri, 12 Jun 2020 15:09:59 +0800
Message-Id: <d031e37f995b56ad87cab324a52f74b282454ee3.1591344965.git.greentime.hu@sifive.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <cover.1591344965.git.greentime.hu@sifive.com>
References: <cover.1591344965.git.greentime.hu@sifive.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_001033_458020_9B0A202F 
X-CRM114-Status: GOOD (  17.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Nick Knight <nick.knight@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

This patch adds task switch support for vector. It supports lazy
save and restore mechanism. It also supports all lengths of vlen.

[guoren@linux.alibaba.com: First available porting to support vector
context switching]
[nick.knight@sifive.com: Rewrite vector.S to support dynamic vlen, xlen and
code refine]
Signed-off-by: Nick Knight <nick.knight@sifive.com>
Signed-off-by: Greentime Hu <greentime.hu@sifive.com>
Signed-off-by: Guo Ren <guoren@linux.alibaba.com>
---
 arch/riscv/include/asm/switch_to.h | 71 +++++++++++++++++++++++++
 arch/riscv/kernel/Makefile         |  1 +
 arch/riscv/kernel/process.c        | 40 ++++++++++++++
 arch/riscv/kernel/vector.S         | 84 ++++++++++++++++++++++++++++++
 4 files changed, 196 insertions(+)
 create mode 100644 arch/riscv/kernel/vector.S

diff --git a/arch/riscv/include/asm/switch_to.h b/arch/riscv/include/asm/switch_to.h
index b9234e7178d0..a047dd75e09d 100644
--- a/arch/riscv/include/asm/switch_to.h
+++ b/arch/riscv/include/asm/switch_to.h
@@ -6,10 +6,12 @@
 #ifndef _ASM_RISCV_SWITCH_TO_H
 #define _ASM_RISCV_SWITCH_TO_H
 
+#include <linux/slab.h>
 #include <linux/sched/task_stack.h>
 #include <asm/processor.h>
 #include <asm/ptrace.h>
 #include <asm/csr.h>
+#include <asm/asm-offsets.h>
 
 #ifdef CONFIG_FPU
 extern void __fstate_save(struct task_struct *save_to);
@@ -63,6 +65,73 @@ extern bool has_fpu;
 #define __switch_to_fpu(__prev, __next) do { } while (0)
 #endif
 
+#ifdef CONFIG_VECTOR
+extern bool has_vector;
+extern unsigned long riscv_vsize;
+extern void __vstate_save(struct __riscv_v_state *save_to, void *datap);
+extern void __vstate_restore(struct __riscv_v_state *restore_from, void *datap);
+
+static inline void __vstate_clean(struct pt_regs *regs)
+{
+	regs->status = (regs->status & ~(SR_VS)) | SR_VS_CLEAN;
+}
+
+static inline void vstate_off(struct task_struct *task,
+			      struct pt_regs *regs)
+{
+	regs->status = (regs->status & ~SR_VS) | SR_VS_OFF;
+}
+
+static inline void vstate_save(struct task_struct *task,
+			       struct pt_regs *regs)
+{
+	if ((regs->status & SR_VS) == SR_VS_DIRTY) {
+		struct __riscv_v_state *vstate = &(task->thread.vstate);
+
+		/* Allocate space for vector registers. */
+		if (!vstate->datap) {
+			vstate->datap = kzalloc(riscv_vsize, GFP_KERNEL);
+			vstate->size = riscv_vsize;
+		}
+		__vstate_save(vstate, vstate->datap);
+		__vstate_clean(regs);
+	}
+}
+
+static inline void vstate_restore(struct task_struct *task,
+				  struct pt_regs *regs)
+{
+	if ((regs->status & SR_VS) != SR_VS_OFF) {
+		struct __riscv_v_state *vstate = &(task->thread.vstate);
+
+		/* Allocate space for vector registers. */
+		if (!vstate->datap) {
+			vstate->datap = kzalloc(riscv_vsize, GFP_KERNEL);
+			vstate->size = riscv_vsize;
+		}
+		__vstate_restore(vstate, vstate->datap);
+		__vstate_clean(regs);
+	}
+}
+
+static inline void __switch_to_vector(struct task_struct *prev,
+				   struct task_struct *next)
+{
+	struct pt_regs *regs;
+
+	regs = task_pt_regs(prev);
+	if (unlikely(regs->status & SR_SD))
+		vstate_save(prev, regs);
+	vstate_restore(next, task_pt_regs(next));
+}
+
+#else
+#define has_vector false
+#define vstate_save(task, regs) do { } while (0)
+#define vstate_restore(task, regs) do { } while (0)
+#define __switch_to_vector(__prev, __next) do { } while (0)
+#endif
+
 extern struct task_struct *__switch_to(struct task_struct *,
 				       struct task_struct *);
 
@@ -72,6 +141,8 @@ do {							\
 	struct task_struct *__next = (next);		\
 	if (has_fpu)					\
 		__switch_to_fpu(__prev, __next);	\
+	if (has_vector)					\
+		__switch_to_vector(__prev, __next);	\
 	((last) = __switch_to(__prev, __next));		\
 } while (0)
 
diff --git a/arch/riscv/kernel/Makefile b/arch/riscv/kernel/Makefile
index 86c83081044f..dee489a1a526 100644
--- a/arch/riscv/kernel/Makefile
+++ b/arch/riscv/kernel/Makefile
@@ -33,6 +33,7 @@ obj-$(CONFIG_MMU) += vdso.o vdso/
 
 obj-$(CONFIG_RISCV_M_MODE)	+= clint.o traps_misaligned.o
 obj-$(CONFIG_FPU)		+= fpu.o
+obj-$(CONFIG_VECTOR)		+= vector.o
 obj-$(CONFIG_SMP)		+= smpboot.o
 obj-$(CONFIG_SMP)		+= smp.o
 obj-$(CONFIG_SMP)		+= cpu_ops.o
diff --git a/arch/riscv/kernel/process.c b/arch/riscv/kernel/process.c
index 610c11e91606..fc8761c04e9f 100644
--- a/arch/riscv/kernel/process.c
+++ b/arch/riscv/kernel/process.c
@@ -76,6 +76,16 @@ void start_thread(struct pt_regs *regs, unsigned long pc,
 		 */
 		fstate_restore(current, regs);
 	}
+
+	if (has_vector) {
+		regs->status |= SR_VS_INITIAL;
+		/*
+		 * Restore the initial value to the vector register
+		 * before starting the user program.
+		 */
+		vstate_restore(current, regs);
+	}
+
 	regs->epc = pc;
 	regs->sp = sp;
 	set_fs(USER_DS);
@@ -92,15 +102,45 @@ void flush_thread(void)
 	fstate_off(current, task_pt_regs(current));
 	memset(&current->thread.fstate, 0, sizeof(current->thread.fstate));
 #endif
+#ifdef CONFIG_VECTOR
+	/* Reset vector state */
+	vstate_off(current, task_pt_regs(current));
+	memset(&current->thread.vstate, 0, sizeof(current->thread.vstate));
+#endif
 }
 
 int arch_dup_task_struct(struct task_struct *dst, struct task_struct *src)
 {
 	fstate_save(src, task_pt_regs(src));
+	if (has_vector)
+		/* To make sure every dirty vector context is saved. */
+		vstate_save(src, task_pt_regs(src));
 	*dst = *src;
+	if (has_vector) {
+		/* Copy vector context to the forked task from parent. */
+		if ((task_pt_regs(src)->status & SR_VS) != SR_VS_OFF) {
+			unsigned long size = src->thread.vstate.size;
+
+			dst->thread.vstate.datap = kzalloc(size, GFP_KERNEL);
+			/* Failed to allocate memory. */
+			if (!dst->thread.vstate.datap)
+				return -ENOMEM;
+			/* Copy the src vector context to dst. */
+			memcpy(dst->thread.vstate.datap,
+			       src->thread.vstate.datap, size);
+		}
+	}
+
 	return 0;
 }
 
+void arch_release_task_struct(struct task_struct *tsk)
+{
+	/* Free the vector context of datap. */
+	if (has_vector)
+		kfree(tsk->thread.vstate.datap);
+}
+
 int copy_thread_tls(unsigned long clone_flags, unsigned long usp,
 	unsigned long arg, struct task_struct *p, unsigned long tls)
 {
diff --git a/arch/riscv/kernel/vector.S b/arch/riscv/kernel/vector.S
new file mode 100644
index 000000000000..4c880b1c32aa
--- /dev/null
+++ b/arch/riscv/kernel/vector.S
@@ -0,0 +1,84 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (C) 2012 Regents of the University of California
+ * Copyright (C) 2017 SiFive
+ * Copyright (C) 2019 Alibaba Group Holding Limited
+ *
+ *   This program is free software; you can redistribute it and/or
+ *   modify it under the terms of the GNU General Public License
+ *   as published by the Free Software Foundation, version 2.
+ *
+ *   This program is distributed in the hope that it will be useful,
+ *   but WITHOUT ANY WARRANTY; without even the implied warranty of
+ *   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ *   GNU General Public License for more details.
+ */
+
+#include <linux/linkage.h>
+
+#include <asm/asm.h>
+#include <asm/csr.h>
+#include <asm/asm-offsets.h>
+
+#define vstatep  a0
+#define datap    a1
+#define x_vstart t0
+#define x_vtype  t1
+#define x_vl     t2
+#define x_vcsr   t3
+#define incr     t4
+#define m_one    t5
+#define status   t6
+
+ENTRY(__vstate_save)
+	li      status, SR_VS
+	csrs    sstatus, status
+
+	csrr    x_vstart, CSR_VSTART
+	csrr    x_vtype, CSR_VTYPE
+	csrr    x_vl, CSR_VL
+	csrr    x_vcsr, CSR_VCSR
+	li      m_one, -1
+	vsetvli incr, m_one, e8, m8
+	vse8.v   v0, (datap)
+	add     datap, datap, incr
+	vse8.v   v8, (datap)
+	add     datap, datap, incr
+	vse8.v   v16, (datap)
+	add     datap, datap, incr
+	vse8.v   v24, (datap)
+
+	REG_S   x_vstart, RISCV_V_STATE_VSTART(vstatep)
+	REG_S   x_vtype, RISCV_V_STATE_VTYPE(vstatep)
+	REG_S   x_vl, RISCV_V_STATE_VL(vstatep)
+	REG_S   x_vcsr, RISCV_V_STATE_VCSR(vstatep)
+
+	csrc	sstatus, status
+	ret
+ENDPROC(__vstate_save)
+
+ENTRY(__vstate_restore)
+	li      status, SR_VS
+	csrs    sstatus, status
+
+	li      m_one, -1
+	vsetvli incr, m_one, e8, m8
+	vle8.v   v0, (datap)
+	add     datap, datap, incr
+	vle8.v   v8, (datap)
+	add     datap, datap, incr
+	vle8.v   v16, (datap)
+	add     datap, datap, incr
+	vle8.v   v24, (datap)
+
+	REG_L   x_vstart, RISCV_V_STATE_VSTART(vstatep)
+	REG_L   x_vtype, RISCV_V_STATE_VTYPE(vstatep)
+	REG_L   x_vl, RISCV_V_STATE_VL(vstatep)
+	REG_L   x_vcsr, RISCV_V_STATE_VCSR(vstatep)
+	vsetvl  x0, x_vl, x_vtype
+	csrw    CSR_VSTART, x_vstart
+	csrw    CSR_VCSR, x_vcsr
+
+	csrc	sstatus, status
+	ret
+ENDPROC(__vstate_restore)
-- 
2.27.0


