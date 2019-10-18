Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54AB2DBB09
	for <lists+linux-riscv@lfdr.de>; Fri, 18 Oct 2019 02:50:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ARgO6zY1xeDtmGUt4Q34i1yiwBoiDSfoemx3WXMEgZo=; b=WW9rXZXOLDScjB
	4yNhROU6lY/F2t2F6Gr7JaolY8Ty1gNYWDq6C1glzFEiJRnx9nQiiGPhW3pAihske1/sBL656gwp2
	K1ArT7cKc6gYF1Um9oV49n/vmfnaOY2M6cfY32oeV30Dpki8bb0YQMl0mnhNzG5Xm9vvBECVRYVF4
	suk5PkPOFy7HRxx53VMEwPNop6nxYX8JumM34TyqcHzGX0NdfrIhqXBVr3b3i0QEdPdLbdJFGdvdd
	jB1rHUCtGupmyMM/xxV8sHhbqNxk3/FLnZZL5TH/pQX59XR8K2iLAiXoL2hAQxy4UpE06dO83dCrX
	vDexCgs3LG6K1cKkJ8rw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLGT4-0003D4-BT; Fri, 18 Oct 2019 00:50:10 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLGSr-000322-Va
 for linux-riscv@lists.infradead.org; Fri, 18 Oct 2019 00:49:59 +0000
Received: by mail-io1-xd41.google.com with SMTP id h144so5374995iof.7
 for <linux-riscv@lists.infradead.org>; Thu, 17 Oct 2019 17:49:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=sw5Ks5zpf1Nuh8wRuxwVGtvcKmJb0kK5d8WuX5BG9jw=;
 b=VrmTrkRvVTEn84dhRBdS11oAkVzg6uonjQBBnhJOw6SMZ8UivLCf1eojFdqM5R6EfK
 jeZ4yawEZ6j5ZHz7DMqCSdCdYmrsbxTI3Wt6PWwiADCAsIGlcuPMMk8j1of31LTtV9uG
 1ljVOqZza+kEuaqYKPhQpKppLLPrEh8l4v2QIKbACUoK5UAlPFZDVp0gEVri0PiA6HFG
 XANw+6qppe+f/LKH+WvV2nIhM7TKOzG7VChTMIlED9Tx79WHAr7lEWWI1S/EGL5X+6Nn
 H7j9RQ2svFXzPRkGkYBtp8JVDBjMBF7Sd/XpIyVlbeMAVq36Z7bUqNtjTXm+2h0oLTQq
 NMCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=sw5Ks5zpf1Nuh8wRuxwVGtvcKmJb0kK5d8WuX5BG9jw=;
 b=tJhQJmuAvLq4x9vArSDzsj+u66HvO7uClB+7+lXl+7zyY55BLi3F36lxMoVkesmTP8
 LcJQQvEaKJYz1Rk9d5JyuFNZdJ1P48cj/lqoVG5mNZeJ6dzUAzdJS1A77o5PvpvU+bEe
 qcKB1gv3GXLuQCLFRPf61wnh6GQ5RVsykAb7rtgPCTVC3usc//FCXfe89uHUeaqlVE8v
 QVgH4HDk7nEV+1+tbLQI3i7GClqO3XbC3FzMYU+m/PKAHr7JsVKZLEkaHcKD17jJ1531
 Fx4gA1OqSzz4oadhQXMdaPkwnL1nb4suX5XZQo4sd7Pi+JWYUwQ5LmYZVDfgKsEczmQY
 3Q1g==
X-Gm-Message-State: APjAAAVHOhf5/1oh8RYxP+PE/8BlA2mLAKGozX7eUbvGG5RSPEGTYM6r
 OQvh+JxdOyLMKx5RQZMLHApWWJyWr84=
X-Google-Smtp-Source: APXvYqymE5ZR4YyA/tn085AGhj69LfIIF6ea+V9gGTis9QH4ixI2j7nXOaoAqmTbg7Qdf1ShSPZm1Q==
X-Received: by 2002:a5d:8b12:: with SMTP id k18mr6270154ion.133.1571359795802; 
 Thu, 17 Oct 2019 17:49:55 -0700 (PDT)
Received: from viisi.Home ([64.62.168.194])
 by smtp.gmail.com with ESMTPSA id z20sm1493891iof.38.2019.10.17.17.49.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 17 Oct 2019 17:49:55 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
To: linux-riscv@lists.infradead.org
Subject: [PATCH 5/8] riscv: add missing prototypes
Date: Thu, 17 Oct 2019 17:49:26 -0700
Message-Id: <20191018004929.3445-6-paul.walmsley@sifive.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191018004929.3445-1-paul.walmsley@sifive.com>
References: <20191018004929.3445-1-paul.walmsley@sifive.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_174958_050657_A979ED19 
X-CRM114-Status: GOOD (  10.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
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

sparse identifies these missing prototypes when building arch/riscv:

arch/riscv/kernel/cpu.c:149:29: warning: symbol 'cpuinfo_op' was not declared. Should it be static?
arch/riscv/kernel/irq.c:27:29: warning: symbol 'do_IRQ' was not declared. Should it be static?
arch/riscv/kernel/irq.c:57:13: warning: symbol 'init_IRQ' was not declared. Should it be static?
arch/riscv/kernel/syscall_table.c:15:6: warning: symbol 'sys_call_table' was not declared. Should it be static?
arch/riscv/kernel/time.c:15:13: warning: symbol 'time_init' was not declared. Should it be static?
arch/riscv/kernel/smpboot.c:135:24: warning: symbol 'smp_callin' was not declared. Should it be static?
arch/riscv/kernel/smp.c:72:5: warning: symbol 'setup_profiling_timer' was not declared. Should it be static?
arch/riscv/mm/init.c:151:7: warning: symbol 'trampoline_pg_dir' was not declared. Should it be static?
arch/riscv/mm/init.c:157:7: warning: symbol 'early_pg_dir' was not declared. Should it be static?
arch/riscv/kernel/process.c:32:6: warning: symbol 'show_regs' was not declared. Should it be static?
arch/riscv/kernel/ptrace.c:151:6: warning: symbol 'do_syscall_trace_enter' was not declared. Should it be static?
arch/riscv/kernel/ptrace.c:165:6: warning: symbol 'do_syscall_trace_exit' was not declared. Should it be static?

Fix by adding the missing prototypes to the appropriate header files.

This change should have no functional impact.

Signed-off-by: Paul Walmsley <paul.walmsley@sifive.com>
---
 arch/riscv/include/asm/irq.h       | 3 +++
 arch/riscv/include/asm/pgtable.h   | 2 ++
 arch/riscv/include/asm/processor.h | 4 ++++
 arch/riscv/include/asm/ptrace.h    | 4 ++++
 arch/riscv/include/asm/smp.h       | 2 ++
 5 files changed, 15 insertions(+)

diff --git a/arch/riscv/include/asm/irq.h b/arch/riscv/include/asm/irq.h
index 75576424c0f7..589e2d9fb2a6 100644
--- a/arch/riscv/include/asm/irq.h
+++ b/arch/riscv/include/asm/irq.h
@@ -12,6 +12,9 @@
 void riscv_timer_interrupt(void);
 void riscv_software_interrupt(void);
 
+asmlinkage void do_IRQ(struct pt_regs *regs);
+void __init init_IRQ(void);
+
 #include <asm-generic/irq.h>
 
 #endif /* _ASM_RISCV_IRQ_H */
diff --git a/arch/riscv/include/asm/pgtable.h b/arch/riscv/include/asm/pgtable.h
index 42292d99cc74..7fc5e4a56715 100644
--- a/arch/riscv/include/asm/pgtable.h
+++ b/arch/riscv/include/asm/pgtable.h
@@ -61,6 +61,8 @@
 
 #define PAGE_TABLE		__pgprot(_PAGE_TABLE)
 
+extern pgd_t trampoline_pg_dir[];
+extern pgd_t early_pg_dir[];
 extern pgd_t swapper_pg_dir[];
 
 /* MAP_PRIVATE permissions: xwr (copy-on-write) */
diff --git a/arch/riscv/include/asm/processor.h b/arch/riscv/include/asm/processor.h
index f539149d04c2..ab56435de629 100644
--- a/arch/riscv/include/asm/processor.h
+++ b/arch/riscv/include/asm/processor.h
@@ -78,6 +78,10 @@ int riscv_of_processor_hartid(struct device_node *node);
 
 extern void riscv_fill_hwcap(void);
 
+extern const struct seq_operations cpuinfo_op;
+
+void time_init(void);
+
 #endif /* __ASSEMBLY__ */
 
 #endif /* _ASM_RISCV_PROCESSOR_H */
diff --git a/arch/riscv/include/asm/ptrace.h b/arch/riscv/include/asm/ptrace.h
index d48d1e13973c..78562f3317e6 100644
--- a/arch/riscv/include/asm/ptrace.h
+++ b/arch/riscv/include/asm/ptrace.h
@@ -101,6 +101,10 @@ static inline unsigned long regs_return_value(struct pt_regs *regs)
 	return regs->a0;
 }
 
+void do_syscall_trace_enter(struct pt_regs *regs);
+void do_syscall_trace_exit(struct pt_regs *regs);
+void show_regs(struct pt_regs *regs);
+
 #endif /* __ASSEMBLY__ */
 
 #endif /* _ASM_RISCV_PTRACE_H */
diff --git a/arch/riscv/include/asm/smp.h b/arch/riscv/include/asm/smp.h
index a83451d73a4e..d19dd2e2e1da 100644
--- a/arch/riscv/include/asm/smp.h
+++ b/arch/riscv/include/asm/smp.h
@@ -15,6 +15,8 @@
 struct seq_file;
 extern unsigned long boot_cpu_hartid;
 
+asmlinkage void __init smp_callin(void);
+
 #ifdef CONFIG_SMP
 /*
  * Mapping between linux logical cpu index and hartid.
-- 
2.23.0


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
