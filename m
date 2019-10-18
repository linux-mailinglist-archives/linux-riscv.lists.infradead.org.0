Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 696A2DBF7F
	for <lists+linux-riscv@lfdr.de>; Fri, 18 Oct 2019 10:09:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aXlEhrNnCJvVAC01X8UXKVIiLDwDa9dPTnoYlQ7ygX8=; b=OBxLfv9a+NdDqY
	q+t2HTQIJrNo/Q4/RTP+Bw+I7Ku4ayaZZ+pxINoLqX5J6gQbCYQe/+n0I8YbDi9QL9KIuqEkZsWh2
	slBv0jDmjflNWPwYbHdwBcHkpg3QAIGNmlWUgvJFXjo4PQOS6SinC1pQR7XRpQTNaLT7XLUu3qDF7
	fZxqp3xoOcAchKuYMDcs3mCQ4fg9JXnGmYbxUjLHSFkfhnzBA+lNIWbb5CViSltTomLcy5LzS9pYP
	Y+2A98Xv8fbUHywJOzGh+4SzipMBFz2+6LKIBXMg53mVGq83H5aEBBCSm3vsO80rtpOz9z+sQSvyZ
	oCttMnfvV3dtYm/3ZmMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLNJu-00081E-HC; Fri, 18 Oct 2019 08:09:10 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLNJi-0007nQ-UD
 for linux-riscv@lists.infradead.org; Fri, 18 Oct 2019 08:09:02 +0000
Received: by mail-io1-xd43.google.com with SMTP id z19so6431297ior.0
 for <linux-riscv@lists.infradead.org>; Fri, 18 Oct 2019 01:08:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=D3NziRvdn2+kK8Uw4QbU0HMH6O8cLDFVZEbh6XeL1sY=;
 b=lqJfzdKNaEFx0hT2tODMNbgiwNHA6Kmcm4Um5j3ElqOCn5j6rHDzIcmXOKjkGD2lC+
 4fYlfzTL5uhT/541KfGDdAjiiXge9m4vvFi4gHNrLINVBIyBmNC4ZoqNhVsXc4rLhUTo
 9O385Y2HDSywuXsV0C/QQOltOcVMuNrpQJ6pDU9fXw/ZfjxBpJaLKgSOwkqMem0ZNAqi
 +YaL1CmmnrGqMMBQiIhA3Rwks4efl3Qn7ppCumtUZpjNdoNH23b3oWCQiSf2jjeaqPX6
 pUQThL8NTDmjqeQtijTtoBk/1yyoVl4v0sT1Qk3XxjUHnutkh75MtGv48oz6wtuy9zvU
 e+QQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=D3NziRvdn2+kK8Uw4QbU0HMH6O8cLDFVZEbh6XeL1sY=;
 b=K0hozlBfZjqFcM8s8F85XCvOWAzXZeYiU3n4pKjFS5HTnI/gzfSopWJsror+DFGfP/
 o7AEJZg8kD28STB37QbjBSZ/cDWD+90DKjurTUYpQNYdXFQp/d55qBevQlR104qTDy5U
 bqbxskrDkZrTcPFS/NPEMDGnkG1cVLWNzA50Iyf4Y12VgadrvUT7SNUO4D8nRGu6fWy9
 UBEB4RAikdTPXmpRKi1FehI7hyJ9F0OBGNE8x1e1AOVSzjgvvU05MP8xjwZD6g0jhNds
 i5z1ly4EstKq17iBKAicJ+EJM5o7oBJW5Tm8cakVeO5eGL0vMeVhD5b/K2xegs3Azc2h
 3vnA==
X-Gm-Message-State: APjAAAUWJgtsGCzbq5vUNDSupqx65HH+coiMyJ8+mbH4cP7buTANlD1J
 K18d8Ve/Ph/xp+qfZncf18OyjBf5h9A=
X-Google-Smtp-Source: APXvYqwibc/n93kk4yioI3cYg7enfdR9vMrbYOYDY8We1QY/Wy8+oF9ryOtojL4Vfztlf26jhCNyyg==
X-Received: by 2002:a6b:7307:: with SMTP id e7mr7757122ioh.138.1571386138008; 
 Fri, 18 Oct 2019 01:08:58 -0700 (PDT)
Received: from viisi.Home ([64.62.168.194])
 by smtp.gmail.com with ESMTPSA id z86sm2121026ilf.73.2019.10.18.01.08.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 18 Oct 2019 01:08:57 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
To: linux-riscv@lists.infradead.org
Subject: [PATCH v3 6/8] riscv: add missing header file includes
Date: Fri, 18 Oct 2019 01:08:39 -0700
Message-Id: <20191018080841.26712-7-paul.walmsley@sifive.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191018080841.26712-1-paul.walmsley@sifive.com>
References: <20191018080841.26712-1-paul.walmsley@sifive.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_010859_049610_00F597E4 
X-CRM114-Status: GOOD (  10.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

sparse identifies several missing prototypes caused by missing
preprocessor include directives:

arch/riscv/kernel/cpufeature.c:16:6: warning: symbol 'has_fpu' was not declared. Should it be static?
arch/riscv/kernel/process.c:26:6: warning: symbol 'arch_cpu_idle' was not declared. Should it be static?
arch/riscv/kernel/process.c:93:5: warning: symbol 'arch_dup_task_struct' was not declared. Should it be static?
arch/riscv/kernel/reset.c:15:6: warning: symbol 'pm_power_off' was not declared. Should it be static?
arch/riscv/kernel/syscall_table.c:15:6: warning: symbol 'sys_call_table' was not declared. Should it be static?
arch/riscv/kernel/time.c:14:13: warning: symbol 'time_init' was not declared. Should it be static?
arch/riscv/kernel/vdso.c:54:5: warning: symbol 'arch_setup_additional_pages' was not declared. Should it be static?
arch/riscv/kernel/smpboot.c:134:24: warning: symbol 'smp_callin' was not declared. Should it be static?
arch/riscv/kernel/smp.c:64:6: warning: symbol 'arch_match_cpu_phys_id' was not declared. Should it be static?
arch/riscv/kernel/smp.c:70:5: warning: symbol 'setup_profiling_timer' was not declared. Should it be static?
arch/riscv/kernel/module-sections.c:89:5: warning: symbol 'module_frob_arch_sections' was not declared. Should it be static?
arch/riscv/mm/context.c:42:6: warning: symbol 'switch_mm' was not declared. Should it be static?

Fix by including the appropriate header files in the appropriate
source files.

This patch should have no functional impact.

Signed-off-by: Paul Walmsley <paul.walmsley@sifive.com>
---
 arch/riscv/include/asm/irq.h        | 3 +++
 arch/riscv/include/asm/switch_to.h  | 1 +
 arch/riscv/kernel/cpufeature.c      | 1 +
 arch/riscv/kernel/module-sections.c | 1 +
 arch/riscv/kernel/process.c         | 2 ++
 arch/riscv/kernel/reset.c           | 1 +
 arch/riscv/kernel/smp.c             | 2 ++
 arch/riscv/kernel/smpboot.c         | 1 +
 arch/riscv/kernel/syscall_table.c   | 1 +
 arch/riscv/kernel/time.c            | 1 +
 arch/riscv/kernel/vdso.c            | 1 +
 arch/riscv/mm/context.c             | 1 +
 12 files changed, 16 insertions(+)

diff --git a/arch/riscv/include/asm/irq.h b/arch/riscv/include/asm/irq.h
index 589e2d9fb2a6..f0e9df6e6049 100644
--- a/arch/riscv/include/asm/irq.h
+++ b/arch/riscv/include/asm/irq.h
@@ -7,6 +7,9 @@
 #ifndef _ASM_RISCV_IRQ_H
 #define _ASM_RISCV_IRQ_H
 
+#include <linux/interrupt.h>
+#include <linux/linkage.h>
+
 #define NR_IRQS         0
 
 void riscv_timer_interrupt(void);
diff --git a/arch/riscv/include/asm/switch_to.h b/arch/riscv/include/asm/switch_to.h
index f0227bdce0f0..ee4f0ac62c9d 100644
--- a/arch/riscv/include/asm/switch_to.h
+++ b/arch/riscv/include/asm/switch_to.h
@@ -6,6 +6,7 @@
 #ifndef _ASM_RISCV_SWITCH_TO_H
 #define _ASM_RISCV_SWITCH_TO_H
 
+#include <linux/sched/task_stack.h>
 #include <asm/processor.h>
 #include <asm/ptrace.h>
 #include <asm/csr.h>
diff --git a/arch/riscv/kernel/cpufeature.c b/arch/riscv/kernel/cpufeature.c
index b1ade9a49347..a5ad00043104 100644
--- a/arch/riscv/kernel/cpufeature.c
+++ b/arch/riscv/kernel/cpufeature.c
@@ -10,6 +10,7 @@
 #include <asm/processor.h>
 #include <asm/hwcap.h>
 #include <asm/smp.h>
+#include <asm/switch_to.h>
 
 unsigned long elf_hwcap __read_mostly;
 #ifdef CONFIG_FPU
diff --git a/arch/riscv/kernel/module-sections.c b/arch/riscv/kernel/module-sections.c
index c9ae48333114..e264e59e596e 100644
--- a/arch/riscv/kernel/module-sections.c
+++ b/arch/riscv/kernel/module-sections.c
@@ -8,6 +8,7 @@
 #include <linux/elf.h>
 #include <linux/kernel.h>
 #include <linux/module.h>
+#include <linux/moduleloader.h>
 
 unsigned long module_emit_got_entry(struct module *mod, unsigned long val)
 {
diff --git a/arch/riscv/kernel/process.c b/arch/riscv/kernel/process.c
index fb3a082362eb..85e3c39bb60b 100644
--- a/arch/riscv/kernel/process.c
+++ b/arch/riscv/kernel/process.c
@@ -7,6 +7,7 @@
  * Copyright (C) 2017 SiFive
  */
 
+#include <linux/cpu.h>
 #include <linux/kernel.h>
 #include <linux/sched.h>
 #include <linux/sched/task_stack.h>
@@ -19,6 +20,7 @@
 #include <asm/csr.h>
 #include <asm/string.h>
 #include <asm/switch_to.h>
+#include <asm/thread_info.h>
 
 extern asmlinkage void ret_from_fork(void);
 extern asmlinkage void ret_from_kernel_thread(void);
diff --git a/arch/riscv/kernel/reset.c b/arch/riscv/kernel/reset.c
index d0fe623bfb8f..aa56bb135ec4 100644
--- a/arch/riscv/kernel/reset.c
+++ b/arch/riscv/kernel/reset.c
@@ -4,6 +4,7 @@
  */
 
 #include <linux/reboot.h>
+#include <linux/pm.h>
 #include <asm/sbi.h>
 
 static void default_power_off(void)
diff --git a/arch/riscv/kernel/smp.c b/arch/riscv/kernel/smp.c
index b18cd6c8e8fb..5c9ec78422c2 100644
--- a/arch/riscv/kernel/smp.c
+++ b/arch/riscv/kernel/smp.c
@@ -8,7 +8,9 @@
  * Copyright (C) 2017 SiFive
  */
 
+#include <linux/cpu.h>
 #include <linux/interrupt.h>
+#include <linux/profile.h>
 #include <linux/smp.h>
 #include <linux/sched.h>
 #include <linux/seq_file.h>
diff --git a/arch/riscv/kernel/smpboot.c b/arch/riscv/kernel/smpboot.c
index 59fa59e013d4..ec0be2f6a2e8 100644
--- a/arch/riscv/kernel/smpboot.c
+++ b/arch/riscv/kernel/smpboot.c
@@ -29,6 +29,7 @@
 #include <asm/tlbflush.h>
 #include <asm/sections.h>
 #include <asm/sbi.h>
+#include <asm/smp.h>
 
 #include "head.h"
 
diff --git a/arch/riscv/kernel/syscall_table.c b/arch/riscv/kernel/syscall_table.c
index e5dd52d8f633..f1ead9df96ca 100644
--- a/arch/riscv/kernel/syscall_table.c
+++ b/arch/riscv/kernel/syscall_table.c
@@ -8,6 +8,7 @@
 #include <linux/syscalls.h>
 #include <asm-generic/syscalls.h>
 #include <asm/vdso.h>
+#include <asm/syscall.h>
 
 #undef __SYSCALL
 #define __SYSCALL(nr, call)	[nr] = (call),
diff --git a/arch/riscv/kernel/time.c b/arch/riscv/kernel/time.c
index 9dd1f2e64db1..6a53c02e9c73 100644
--- a/arch/riscv/kernel/time.c
+++ b/arch/riscv/kernel/time.c
@@ -7,6 +7,7 @@
 #include <linux/clocksource.h>
 #include <linux/delay.h>
 #include <asm/sbi.h>
+#include <asm/processor.h>
 
 unsigned long riscv_timebase;
 EXPORT_SYMBOL_GPL(riscv_timebase);
diff --git a/arch/riscv/kernel/vdso.c b/arch/riscv/kernel/vdso.c
index e24fccab8185..484d95a70907 100644
--- a/arch/riscv/kernel/vdso.c
+++ b/arch/riscv/kernel/vdso.c
@@ -6,6 +6,7 @@
  * Copyright (C) 2015 Regents of the University of California
  */
 
+#include <linux/elf.h>
 #include <linux/mm.h>
 #include <linux/slab.h>
 #include <linux/binfmts.h>
diff --git a/arch/riscv/mm/context.c b/arch/riscv/mm/context.c
index beeb5d7f92ea..ca66d44156b6 100644
--- a/arch/riscv/mm/context.c
+++ b/arch/riscv/mm/context.c
@@ -7,6 +7,7 @@
 #include <linux/mm.h>
 #include <asm/tlbflush.h>
 #include <asm/cacheflush.h>
+#include <asm/mmu_context.h>
 
 /*
  * When necessary, performs a deferred icache flush for the given MM context,
-- 
2.23.0


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
