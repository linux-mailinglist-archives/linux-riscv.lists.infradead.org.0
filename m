Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C622A17D31A
	for <lists+linux-riscv@lfdr.de>; Sun,  8 Mar 2020 10:53:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:MIME-Version:
	Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iLuZ0oSq0fPa3gvA6u3ctfRN4FS3E7gHyXlfOitsTSs=; b=Ggd56Qz3h+Qb6H
	bxqU4vU6kGh9+syjWcX4SNsIy4vDRr1HSaIxsJvxyZKW20hhAIrSkaAlQAvahso1BIvyXBNd4gH+A
	35CB7m9ZZNTXJGIjIeSPAtaeMIi2V+W6x4D+ChN0NyYczv879TryS6ARwQN+KSi8HqJGOOsE8Qsam
	CHZysj1mj7lDq3dyU0a3lS3CFZ+nGXw8oFUxiGJGY7IxjpELK9SmtkEiC6adDzi+Ny+85qnEAAGQG
	9IEU4AYobBZcMJ4jki+c4XdgPug4am72c6oZYCIQ/uzuGdAEVIh+oA3wlVdPyywfS8p02C8gVwThj
	By0dVhN23jJ3ATjs4xdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAsd7-0002w4-5A; Sun, 08 Mar 2020 09:53:53 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAscw-0002lJ-UJ
 for linux-riscv@lists.infradead.org; Sun, 08 Mar 2020 09:53:44 +0000
Received: from localhost.localdomain (unknown [89.208.247.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 79D6E20866;
 Sun,  8 Mar 2020 09:53:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583661222;
 bh=V7gPdzyeicVBf+c/v7Jw8A8D52Ma7QKNk/3pIdn8KqU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=C6pZOHM0oy0/0mT7hpajF2+Xb7Ke8PgZuYX9lLQsQGVGiXup5yxCQWUz3zrAIP2h1
 ggHFs+FN1t0dMrUeu8ckbZBM6IBJ6VYzc/a8A4BYJ8VEN64CUFPHyQvUCzu58UfekY
 +SQHUAfqhrTOIOvnR38mNjvlGXwUswJTuQtwFqdo=
From: guoren@kernel.org
To: paul.walmsley@sifive.com, palmer@dabbelt.com, Anup.Patel@wdc.com,
 greentime.hu@sifive.com
Subject: [RFC PATCH V3 09/11] riscv: Add task switch support for VECTOR
Date: Sun,  8 Mar 2020 17:49:52 +0800
Message-Id: <20200308094954.13258-10-guoren@kernel.org>
X-Mailer: git-send-email 2.17.0
In-Reply-To: <20200308094954.13258-1-guoren@kernel.org>
References: <20200308094954.13258-1-guoren@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200308_015343_032867_69D6B6D1 
X-CRM114-Status: GOOD (  15.30  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-arch@vger.kernel.org, Guo Ren <guoren@linux.alibaba.com>,
 arnd@arndb.de, linux-kernel@vger.kernel.org, linux-csky@vger.kernel.org,
 linux-riscv@lists.infradead.org, Dave Martin <Dave.Martin@arm.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

From: Guo Ren <guoren@linux.alibaba.com>

This patch add task switch and task create for VECTOR, and now
the applications with vector instructions wouldn't be broken by
linux task switch.

Signed-off-by: Guo Ren <guoren@linux.alibaba.com>
---
 arch/riscv/include/asm/switch_to.h | 48 +++++++++++++++++
 arch/riscv/kernel/Makefile         |  1 +
 arch/riscv/kernel/process.c        | 10 ++++
 arch/riscv/kernel/vector.S         | 84 ++++++++++++++++++++++++++++++
 4 files changed, 143 insertions(+)
 create mode 100644 arch/riscv/kernel/vector.S

diff --git a/arch/riscv/include/asm/switch_to.h b/arch/riscv/include/asm/switch_to.h
index b9234e7178d0..6e1c7fa599be 100644
--- a/arch/riscv/include/asm/switch_to.h
+++ b/arch/riscv/include/asm/switch_to.h
@@ -63,6 +63,52 @@ extern bool has_fpu;
 #define __switch_to_fpu(__prev, __next) do { } while (0)
 #endif
 
+#ifdef CONFIG_VECTOR
+extern void __vstate_save(struct task_struct *save_to);
+extern void __vstate_restore(struct task_struct *restore_from);
+
+static inline void __vstate_clean(struct pt_regs *regs)
+{
+	regs->status |= (regs->status & ~(SR_VS)) | SR_VS_CLEAN;
+}
+
+static inline void vstate_save(struct task_struct *task,
+			       struct pt_regs *regs)
+{
+	if ((regs->status & SR_VS) == SR_VS_DIRTY) {
+		__vstate_save(task);
+		__vstate_clean(regs);
+	}
+}
+
+static inline void vstate_restore(struct task_struct *task,
+				  struct pt_regs *regs)
+{
+	if ((regs->status & SR_VS) != SR_VS_OFF) {
+		__vstate_restore(task);
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
+extern bool has_vector;
+#else
+#define has_vector false
+#define vstate_save(task, regs) do { } while (0)
+#define vstate_restore(task, regs) do { } while (0)
+#define __switch_to_vector(__prev, __next) do { } while (0)
+#endif
+
 extern struct task_struct *__switch_to(struct task_struct *,
 				       struct task_struct *);
 
@@ -72,6 +118,8 @@ do {							\
 	struct task_struct *__next = (next);		\
 	if (has_fpu)					\
 		__switch_to_fpu(__prev, __next);	\
+	if (has_vector)					\
+		__switch_to_vector(__prev, __next);	\
 	((last) = __switch_to(__prev, __next));		\
 } while (0)
 
diff --git a/arch/riscv/kernel/Makefile b/arch/riscv/kernel/Makefile
index f40205cb9a22..e5276c3bdffc 100644
--- a/arch/riscv/kernel/Makefile
+++ b/arch/riscv/kernel/Makefile
@@ -30,6 +30,7 @@ obj-$(CONFIG_MMU) += vdso.o vdso/
 
 obj-$(CONFIG_RISCV_M_MODE)	+= clint.o
 obj-$(CONFIG_FPU)		+= fpu.o
+obj-$(CONFIG_VECTOR)		+= vector.o
 obj-$(CONFIG_SMP)		+= smpboot.o
 obj-$(CONFIG_SMP)		+= smp.o
 obj-$(CONFIG_MODULES)		+= module.o
diff --git a/arch/riscv/kernel/process.c b/arch/riscv/kernel/process.c
index 817cf7b0974c..c572557701b4 100644
--- a/arch/riscv/kernel/process.c
+++ b/arch/riscv/kernel/process.c
@@ -74,6 +74,16 @@ void start_thread(struct pt_regs *regs, unsigned long pc,
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
diff --git a/arch/riscv/kernel/vector.S b/arch/riscv/kernel/vector.S
new file mode 100644
index 000000000000..dbe1989fa9d7
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
+ENTRY(__vstate_save)
+	li	a2,  TASK_THREAD_V0
+	add	a0,  a0, a2
+
+	li	t1, (SR_VS | SR_FS)
+	csrs	sstatus, t1
+
+	csrr	t0,  CSR_VSTART
+	sd	t0,  TASK_THREAD_VSTART_V0(a0)
+	csrr	t0,  CSR_VXSAT
+	sd	t0,  TASK_THREAD_VXSAT_V0(a0)
+	csrr	t0,  CSR_VXRM
+	sd	t0,  TASK_THREAD_VXRM_V0(a0)
+	csrr	t0,  CSR_VL
+	sd	t0,  TASK_THREAD_VL_V0(a0)
+	csrr	t0,  CSR_VTYPE
+	sd	t0,  TASK_THREAD_VTYPE_V0(a0)
+
+	vsetvli	t0, x0, e8,m8
+	vsb.v	v0,  (a0)
+	addi	a0, a0, 128*8
+	vsb.v	v8,  (a0)
+	addi	a0, a0, 128*8
+	vsb.v	v16, (a0)
+	addi	a0, a0, 128*8
+	vsb.v	v24, (a0)
+
+	csrc	sstatus, t1
+	ret
+ENDPROC(__vstate_save)
+
+ENTRY(__vstate_restore)
+	li	a2,  TASK_THREAD_V0
+	add	a0,  a0, a2
+	mv	t2,  a0
+
+	li	t1, (SR_VS | SR_FS)
+	csrs	sstatus, t1
+
+	vsetvli	t0, x0, e8,m8
+	vlb.v	v0,  (a0)
+	addi	a0, a0, 128*8
+	vlb.v	v8,  (a0)
+	addi	a0, a0, 128*8
+	vlb.v	v16, (a0)
+	addi	a0, a0, 128*8
+	vlb.v	v24, (a0)
+
+	mv	a0,  t2
+	ld	t0,  TASK_THREAD_VSTART_V0(a0)
+	csrw	CSR_VSTART, t0
+	ld	t0,  TASK_THREAD_VXSAT_V0(a0)
+	csrw	CSR_VXSAT, t0
+	ld	t0,  TASK_THREAD_VXRM_V0(a0)
+	csrw	CSR_VXRM, t0
+	ld	t0,  TASK_THREAD_VL_V0(a0)
+	ld	t2,  TASK_THREAD_VTYPE_V0(a0)
+	vsetvl	t0, t0, t2
+
+	csrc	sstatus, t1
+	ret
+ENDPROC(__vstate_restore)
-- 
2.17.0


