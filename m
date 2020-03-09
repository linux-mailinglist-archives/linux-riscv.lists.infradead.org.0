Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A6DC17E528
	for <lists+linux-riscv@lfdr.de>; Mon,  9 Mar 2020 17:56:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CeoDy//kH+KSVuujjXrErnQvw8A8EEm+2dF9CMDOSPY=; b=ackUs+Pspo9Lyn
	BM5/m+9e1rYNh0EJ3ZZ46rvd+xZE2QJ2DdGU7Ia3JYQMiOKQCO30Ue37G7UBwtvNvaN5Act9bSHyE
	KpD2x7Gq8PwEUHyZIMCFerl7mWGCzUm7BQ+fy3i1AG4aT/OgjZ9xfrLMrHqCCZMQdqOrHyzB1qEjH
	azgohQpPXob4AodKemc9W1WNZi9fxmOcT2iWci/WEVKDmPkiZB2Rg67IBwk9bhh4ZT/Rh2E8fGMfV
	mJkoYkJzgHA9TsfF0kIN6C0D8JeTOTtkqHNoaSBp4jUAdK756MiU/hPtb37KMCPR+WAt00lgfhDeu
	AGxvBEKfTH9tRJTbAciw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBLhW-0002KE-CQ; Mon, 09 Mar 2020 16:56:22 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBLhG-00022j-PL
 for linux-riscv@lists.infradead.org; Mon, 09 Mar 2020 16:56:08 +0000
Received: by mail-pj1-x1043.google.com with SMTP id d8so108592pje.4
 for <linux-riscv@lists.infradead.org>; Mon, 09 Mar 2020 09:56:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=CeoDy//kH+KSVuujjXrErnQvw8A8EEm+2dF9CMDOSPY=;
 b=fxjhOXpMux9wuhNhbNPe+3fNw8bhobDob0HaFbznsiCG6AK2RqFrvFY5t6yn+BDSgQ
 YFRpNYUG/wd+TpDEPJizmx1lQI6kE0HGwLSX7jSRehwLWxr3J6Rp23AD7AKXknXybZhP
 538pscCmkokNih0fHa22mX2ds1IQsUrwIHkRLoEfqW+IrxriDX8D5UI/VgpXsLkAAC7X
 +ltp5prODCO6mEiYRKzFCCO3FV8D2DyW8FuQW0arAZzdbvsXUXZWEchg2hrgY8QOmRFv
 iVbyTVVsoMybsJJVaxs9+zyAxxa2tAILq0875bi/rXHl924UfolwKWQU08y4bSZUDS0V
 t9TQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=CeoDy//kH+KSVuujjXrErnQvw8A8EEm+2dF9CMDOSPY=;
 b=O4hXVIwzuqy40gak/zwk+nWA+wVeIc/1aBE8Y2RKxjtsrZPGZGi0+Mr5FOiW3XObjf
 hkPNl20/w19iKIMIVY+9622+mt0sVB205q9CCm1tMIGsH6hXe4XwOV4s7AqiuxMXmFv+
 PM15EZiF74LhTiYjfr0oGyLznW5GU+jAGjRoBPg1S8sPIFZpjjgrnG9GPuAxMZFqM+DF
 lIG9LIF1NlEawAcjOpCUYZQM2nYG61ihEEtMF1IzVlvhXFOVvUFoXAJLkVeS36jqfeV3
 LCHjcRU4anMzZ7UcAhktoCssWzDPkiZ/sXfeTyANRg3t6LqHtB9gvY+mzT/N5uYmpqiS
 5rpA==
X-Gm-Message-State: ANhLgQ2MT6a2Tb9Ok3FnOujvvWXHcAKTGyZnQ/xxNriU8keNVdU+cPKC
 RhrQQk6Z0d9ByAdG1fyQuN55fg==
X-Google-Smtp-Source: ADFU+vvZVTM9/BrI/HjDMDw5jm6zN/7jUQ8a5X6obSwYq7ZuEH2YgiM48+F6CC8gfXDIqP+eBl7YyQ==
X-Received: by 2002:a17:90b:3542:: with SMTP id
 lt2mr242389pjb.96.1583772966038; 
 Mon, 09 Mar 2020 09:56:06 -0700 (PDT)
Received: from hsinchu02.internal.sifive.com
 (220-132-236-182.HINET-IP.hinet.net. [220.132.236.182])
 by smtp.gmail.com with ESMTPSA id cm2sm104013pjb.23.2020.03.09.09.56.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Mar 2020 09:56:05 -0700 (PDT)
From: Zong Li <zong.li@sifive.com>
To: palmer@dabbelt.com, paul.walmsley@sifive.com, aou@eecs.berkeley.edu,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v3 8/9] riscv: introduce interfaces to patch kernel code
Date: Tue, 10 Mar 2020 00:55:43 +0800
Message-Id: <d27d9e68491e1df67dbee6c22df6a72ff95bab18.1583772574.git.zong.li@sifive.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1583772574.git.zong.li@sifive.com>
References: <cover.1583772574.git.zong.li@sifive.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_095606_833479_FFEED2DE 
X-CRM114-Status: GOOD (  15.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1043 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

On strict kernel memory permission, we couldn't patch code without
writable permission. Preserve two holes in fixmap area, so we can map
the kernel code temporarily to fixmap area, then patch the instructions.

We need two pages here because we support the compressed instruction, so
the instruction might be align to 2 bytes. When patching the 32-bit
length instruction which is 2 bytes alignment, it will across two pages.

Introduce two interfaces to patch kernel code:
riscv_patch_text_nosync:
 - patch code without synchronization, it's caller's responsibility to
   synchronize all CPUs if needed.
riscv_patch_text:
 - patch code and always synchronize with stop_machine()

Signed-off-by: Zong Li <zong.li@sifive.com>
---
 arch/riscv/include/asm/fixmap.h |   2 +
 arch/riscv/include/asm/patch.h  |  12 ++++
 arch/riscv/kernel/Makefile      |   4 +-
 arch/riscv/kernel/patch.c       | 120 ++++++++++++++++++++++++++++++++
 4 files changed, 137 insertions(+), 1 deletion(-)
 create mode 100644 arch/riscv/include/asm/patch.h
 create mode 100644 arch/riscv/kernel/patch.c

diff --git a/arch/riscv/include/asm/fixmap.h b/arch/riscv/include/asm/fixmap.h
index 42d2c42f3cc9..2368d49eb4ef 100644
--- a/arch/riscv/include/asm/fixmap.h
+++ b/arch/riscv/include/asm/fixmap.h
@@ -27,6 +27,8 @@ enum fixed_addresses {
 	FIX_FDT = FIX_FDT_END + FIX_FDT_SIZE / PAGE_SIZE - 1,
 	FIX_PTE,
 	FIX_PMD,
+	FIX_TEXT_POKE1,
+	FIX_TEXT_POKE0,
 	FIX_EARLYCON_MEM_BASE,
 	__end_of_fixed_addresses
 };
diff --git a/arch/riscv/include/asm/patch.h b/arch/riscv/include/asm/patch.h
new file mode 100644
index 000000000000..b5918a6e0615
--- /dev/null
+++ b/arch/riscv/include/asm/patch.h
@@ -0,0 +1,12 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (C) 2020 SiFive
+ */
+
+#ifndef _ASM_RISCV_PATCH_H
+#define _ASM_RISCV_PATCH_H
+
+int riscv_patch_text_nosync(void *addr, const void *insns, size_t len);
+int riscv_patch_text(void *addr, u32 insn);
+
+#endif /* _ASM_RISCV_PATCH_H */
diff --git a/arch/riscv/kernel/Makefile b/arch/riscv/kernel/Makefile
index f40205cb9a22..d189bd3d8501 100644
--- a/arch/riscv/kernel/Makefile
+++ b/arch/riscv/kernel/Makefile
@@ -4,7 +4,8 @@
 #
 
 ifdef CONFIG_FTRACE
-CFLAGS_REMOVE_ftrace.o = -pg
+CFLAGS_REMOVE_ftrace.o	= -pg
+CFLAGS_REMOVE_patch.o	= -pg
 endif
 
 extra-y += head.o
@@ -26,6 +27,7 @@ obj-y	+= traps.o
 obj-y	+= riscv_ksyms.o
 obj-y	+= stacktrace.o
 obj-y	+= cacheinfo.o
+obj-y	+= patch.o
 obj-$(CONFIG_MMU) += vdso.o vdso/
 
 obj-$(CONFIG_RISCV_M_MODE)	+= clint.o
diff --git a/arch/riscv/kernel/patch.c b/arch/riscv/kernel/patch.c
new file mode 100644
index 000000000000..8a4fc65ee022
--- /dev/null
+++ b/arch/riscv/kernel/patch.c
@@ -0,0 +1,120 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (C) 2020 SiFive
+ */
+
+#include <linux/spinlock.h>
+#include <linux/mm.h>
+#include <linux/uaccess.h>
+#include <linux/stop_machine.h>
+#include <asm/kprobes.h>
+#include <asm/cacheflush.h>
+#include <asm/fixmap.h>
+
+struct riscv_insn_patch {
+	void *addr;
+	u32 insn;
+	atomic_t cpu_count;
+};
+
+#ifdef CONFIG_MMU
+static DEFINE_RAW_SPINLOCK(patch_lock);
+
+static void __kprobes *patch_map(void *addr, int fixmap)
+{
+	uintptr_t uintaddr = (uintptr_t) addr;
+	struct page *page;
+
+	if (core_kernel_text(uintaddr))
+		page = phys_to_page(__pa_symbol(addr));
+	else if (IS_ENABLED(CONFIG_STRICT_MODULE_RWX))
+		page = vmalloc_to_page(addr);
+	else
+		return addr;
+
+	BUG_ON(!page);
+
+	return (void *)set_fixmap_offset(fixmap, page_to_phys(page) +
+					 (uintaddr & ~PAGE_MASK));
+}
+
+static void __kprobes patch_unmap(int fixmap)
+{
+	clear_fixmap(fixmap);
+}
+
+static int __kprobes riscv_insn_write(void *addr, const void *insn, size_t len)
+{
+	void *waddr = addr;
+	bool across_pages = (((uintptr_t) addr & ~PAGE_MASK) + len) > PAGE_SIZE;
+	unsigned long flags = 0;
+	int ret;
+
+	raw_spin_lock_irqsave(&patch_lock, flags);
+
+	if (across_pages)
+		patch_map(addr + len, FIX_TEXT_POKE1);
+
+	waddr = patch_map(addr, FIX_TEXT_POKE0);
+
+	ret = probe_kernel_write(waddr, insn, len);
+
+	patch_unmap(FIX_TEXT_POKE0);
+
+	if (across_pages)
+		patch_unmap(FIX_TEXT_POKE1);
+
+	raw_spin_unlock_irqrestore(&patch_lock, flags);
+
+	return ret;
+}
+#else
+static int __kprobes riscv_insn_write(void *addr, const void *insn, size_t len)
+{
+	return probe_kernel_write(addr, insn, len);
+}
+#endif /* CONFIG_MMU */
+
+int __kprobes riscv_patch_text_nosync(void *addr, const void *insns, size_t len)
+{
+	u32 *tp = addr;
+	int ret;
+
+	ret = riscv_insn_write(tp, insns, len);
+
+	if (!ret)
+		flush_icache_range((uintptr_t) tp, (uintptr_t) tp + len);
+
+	return ret;
+}
+
+static int __kprobes riscv_patch_text_cb(void *data)
+{
+	struct riscv_insn_patch *patch = data;
+	int ret = 0;
+
+	if (atomic_inc_return(&patch->cpu_count) == 1) {
+		ret =
+		    riscv_patch_text_nosync(patch->addr, &patch->insn,
+					    GET_INSN_LENGTH(patch->insn));
+		atomic_inc(&patch->cpu_count);
+	} else {
+		while (atomic_read(&patch->cpu_count) <= num_online_cpus())
+			cpu_relax();
+		smp_mb();
+	}
+
+	return ret;
+}
+
+int __kprobes riscv_patch_text(void *addr, u32 insn)
+{
+	struct riscv_insn_patch patch = {
+		.addr = addr,
+		.insn = insn,
+		.cpu_count = ATOMIC_INIT(0),
+	};
+
+	return stop_machine_cpuslocked(riscv_patch_text_cb,
+				       &patch, cpu_online_mask);
+}
-- 
2.25.1


