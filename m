Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE7FAE3FD1
	for <lists+linux-riscv@lfdr.de>; Fri, 25 Oct 2019 00:59:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DI4PQz7LjGL0eugHtaqswlRcmR4NEu1ILr/NDrW3Bwo=; b=L2zoQpqN3X+mCm
	EMF7dwgfVJ/ejGwCdCLRzMTmdGsA9FPdt3mtW+DGrTaJYpVNZnShMk6DS5f5ldWsfsL201OtSNfbv
	h+iFfkYhX8uairLY1Ef1fGgjryswrJPZmt2lvU+lfSkEA6re8p5n5uANJ0ycSjTWgI7YPq7am/Tbp
	Abvi3SJZvD4GxDwZFALeMcS3s0xnWmFaw68hgdXeVzZUgby/e1h7qBMdDHiYCR3Kam9m7mom/UK5H
	Siu3Kx8HowX8ZDPgEF7kRiZoZN0BeRYhW7m9fgAk/u7FXu3LLQNh2pMr0YmDrV1hJfXH9hJU9ebZH
	y5HglHhhDHHeFTP2uZkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNm4Q-0000F0-2V; Thu, 24 Oct 2019 22:59:06 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNm4I-00007P-9n
 for linux-riscv@lists.infradead.org; Thu, 24 Oct 2019 22:59:00 +0000
Received: by mail-io1-xd42.google.com with SMTP id c11so189641iom.10
 for <linux-riscv@lists.infradead.org>; Thu, 24 Oct 2019 15:58:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=eZGI60drGLEmEdUk33cvNefM4FOv+8ekneB/xoyZ64U=;
 b=LgeCmyzq23k8BWVjg2WviMFw8asiFBOvnZg7deJhibXBj1HLTBlXz2vtpnQ6nuIYvO
 XXFnlxRKjcHWQYLFLJ+PGlibLnPi0qPFQNOVjpAyB0F8gpz94/hhIxkGiWm4o5dWHQQl
 yISQyG07EPAmoCquUbFwPbvGFTVGQ8qMKj4ySY3TV57lmIwbPq0Gt/WyYmSyKm1fZ2dw
 hZ7UPF4bB4ilAvTlLhFkqZvI215lMskH8EDR1PBt7SXnJytJcImFTwn2usKcGyDl0/Za
 pg7eitZrlVfgwryr4t/I0S5U+AIqcX1Bduxn7xAQhroR7MsiV4wFRIRI9aK5aO0d6Rtt
 yAAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=eZGI60drGLEmEdUk33cvNefM4FOv+8ekneB/xoyZ64U=;
 b=bjMiwBKx83Pyk81AwWPg10syN63BcYVAyetWPhDMFXlgfTvXJ7K/vBrPY8YrTbomtC
 jXJsz5bZFsoAxxF/qXC/YOZmWfslSJ8AMC201MtzADHh1LSxA94XBD0QUIZ6w6bWCpZW
 M8BhYzVAq7b8jrum5qkQluuwX0ra5xkmMKus1MPiP1S55P25csEE3ZwmcDwzxI/DRdBx
 TITPH64ttOkNa2NQWr3AvvyknYTmzJ515skjOGwiRtBsOiReVvZ6eq1X3LtQgJdlz6GX
 H/ejTdjCMXOxTSwnGha+aHxO0fdnOBuphS9TzW55JaepvhqdGvGHdJXFTfgKZBzNnETd
 xOhQ==
X-Gm-Message-State: APjAAAUdcCNlIgbR7O4+7QMbb2T9bPZPGwjJteUDkUFm+JRjySNT8h0x
 OmWmtadzYUgCHxzHrRLnVgfNlls7Gng=
X-Google-Smtp-Source: APXvYqy5a3tMIoeboC3+CjPmvSWpA4ri/LdZPhn89cOMCvNtxEs3nSMucfncykRCBi1B9Sfu9WS8dA==
X-Received: by 2002:a6b:7942:: with SMTP id j2mr591492iop.161.1571957937016;
 Thu, 24 Oct 2019 15:58:57 -0700 (PDT)
Received: from viisi.Home ([64.62.168.194])
 by smtp.gmail.com with ESMTPSA id b18sm58112ilo.70.2019.10.24.15.58.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 24 Oct 2019 15:58:56 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
To: linux-riscv@lists.infradead.org
Subject: [PATCH v4 4/6] riscv: add missing header file includes
Date: Thu, 24 Oct 2019 15:58:36 -0700
Message-Id: <20191024225838.27743-5-paul.walmsley@sifive.com>
X-Mailer: git-send-email 2.24.0.rc0
In-Reply-To: <20191024225838.27743-1-paul.walmsley@sifive.com>
References: <20191024225838.27743-1-paul.walmsley@sifive.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_155858_362302_71A42FFF 
X-CRM114-Status: GOOD (  10.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: hch@lst.dev, greentime.hu@sifive.com, linux-kernel@vger.kernel.org,
 luc.vanoostenryck@gmail.com, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

sparse identifies several missing prototypes caused by missing
preprocessor include directives:

arch/riscv/kernel/cpufeature.c:16:6: warning: symbol 'has_fpu' was not declared. Should it be static?
arch/riscv/kernel/process.c:26:6: warning: symbol 'arch_cpu_idle' was not declared. Should it be static?
arch/riscv/kernel/reset.c:15:6: warning: symbol 'pm_power_off' was not declared. Should it be static?
arch/riscv/kernel/syscall_table.c:15:6: warning: symbol 'sys_call_table' was not declared. Should it be static?
arch/riscv/kernel/traps.c:149:13: warning: symbol 'trap_init' was not declared. Should it be static?
arch/riscv/kernel/vdso.c:54:5: warning: symbol 'arch_setup_additional_pages' was not declared. Should it be static?
arch/riscv/kernel/smp.c:64:6: warning: symbol 'arch_match_cpu_phys_id' was not declared. Should it be static?
arch/riscv/kernel/module-sections.c:89:5: warning: symbol 'module_frob_arch_sections' was not declared. Should it be static?
arch/riscv/mm/context.c:42:6: warning: symbol 'switch_mm' was not declared. Should it be static?

Fix by including the appropriate header files in the appropriate
source files.

This patch should have no functional impact.

Signed-off-by: Paul Walmsley <paul.walmsley@sifive.com>
Reviewed-by: Christoph Hellwig <hch@lst.de>
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
 arch/riscv/kernel/traps.c           | 1 +
 arch/riscv/kernel/vdso.c            | 1 +
 arch/riscv/mm/context.c             | 1 +
 13 files changed, 17 insertions(+)

diff --git a/arch/riscv/include/asm/irq.h b/arch/riscv/include/asm/irq.h
index 75576424c0f7..6e1b0e0325eb 100644
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
diff --git a/arch/riscv/kernel/traps.c b/arch/riscv/kernel/traps.c
index 10a17e545f43..0b6e271efc43 100644
--- a/arch/riscv/kernel/traps.c
+++ b/arch/riscv/kernel/traps.c
@@ -3,6 +3,7 @@
  * Copyright (C) 2012 Regents of the University of California
  */
 
+#include <linux/cpu.h>
 #include <linux/kernel.h>
 #include <linux/init.h>
 #include <linux/sched.h>
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
2.24.0.rc0


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
