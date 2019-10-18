Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4885CDBF7E
	for <lists+linux-riscv@lfdr.de>; Fri, 18 Oct 2019 10:09:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CEgCw8VNqyAGRvPyqGmRwcwEsMIDgn2/t+fTS6fWJs0=; b=RGNkgxGVOeV+yX
	tRIDMvRejDF5oqmFX+ghFubVA5XiNvwNiQPD5iCWNifReptBIxCwFYmAA5o8GHeP/iuSPsY6xyWeK
	7FLiwHwRtcBMIo5BK1jxsGWtQsMMcmVHyEHLuflM2trVJgLVK8JlM/NHKn4KH5wPRCU/sxncFcApu
	qxH5a9t7FjpQuKBzsoRP0LGmOAVJERuxgoGN2AAlM2qkQRwazdUkXM+oaKh9u+T+jMgLYmIdXqTQ4
	Qcj2fRA4U63oifPde4TcKDyEDI/f73wLzjGL+PH0Hhc6RP00Xj+0+pxZNahUPdbNz/cIlqW+wR8+m
	MqjITxrB/PxgAsrs6QNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLNJs-0007yH-Jy; Fri, 18 Oct 2019 08:09:08 +0000
Received: from mail-il1-x143.google.com ([2607:f8b0:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLNJi-0007ll-B3
 for linux-riscv@lists.infradead.org; Fri, 18 Oct 2019 08:09:02 +0000
Received: by mail-il1-x143.google.com with SMTP id u1so4700749ilq.12
 for <linux-riscv@lists.infradead.org>; Fri, 18 Oct 2019 01:08:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=dSBcDIKx5nYgnvY0E6Lcwtwu4qqsxuq/VRdIo5y+2Cg=;
 b=UYH865ncXlKhaR/ruHoaa2j5syS/lseyRuqhuEhLj5/69PK7JaW0oh8UpKzb/YJo53
 MteWuPrAiD6AhSp7Aax50FcMDGjpjzl/NDMbni9cBk6cdG7vronHFfvQcI8SWhGHCtt4
 4N8UDH6QdyWc0ciGW1+12iM+2BvwEeHXHXvhzSmCiXQY0mJMOIF4gNQEMf8XjgVQgxrH
 D5aK+hOzRVfDTbusI617sI+EeQZG4m2KuCcjeuG8uayegjuDC3phM47GxQGhZuVL3bZX
 w8Z6vZ9+VIRBn9Erp572wwfEkS3C5ikie31Ll8tw1iFbAmJJbDLb5hm7Fre/Wdd1oVqG
 erYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=dSBcDIKx5nYgnvY0E6Lcwtwu4qqsxuq/VRdIo5y+2Cg=;
 b=Bi9Fnim/ETCKOgy9b7B+b5mfp8uXxRLmDtDgZiI5fOZRCfW6ppccwmLqbUH3Iwyomu
 VdRW+MvzwwWT4pHM6tLayH27YXqGQwdtNaYy7K4RVmsyr2irZzGUQVfdF3OYpzxCA+4N
 itcxsYQdNyTSnXz5JRr4z6slhdAL5+oC0LIQ/R586D0koASPZCVuLWth4LOdrmzZklh3
 T83Xhp8xgqxbxCtte0AuYVh+055cucUcyCBmPVe1Y/w+TFHb3PoMRag/hVrr0/tRVzah
 anX0wSvDqtpRuMT87/O6lrB94l3xX7de3dmlRCJSWEEqA7p3FZBZNCYPhf9KRXxbLQSi
 X1Hw==
X-Gm-Message-State: APjAAAVrNGDd7gs1eCFL7BzsybwOLifLJDUM49kHnDgBRihm7cRqcUZv
 1Br3MxFhhKLSH0lMLpPfN4I4R4yVJRk=
X-Google-Smtp-Source: APXvYqzKI2kk5lHMs0yEtKm+xbMxG2eju3cK4Gef8i8iQDD25JUnHl+bMAFlMgwk9ylcXNg+trIVzQ==
X-Received: by 2002:a92:5a9b:: with SMTP id b27mr8731380ilg.180.1571386135351; 
 Fri, 18 Oct 2019 01:08:55 -0700 (PDT)
Received: from viisi.Home ([64.62.168.194])
 by smtp.gmail.com with ESMTPSA id z86sm2121026ilf.73.2019.10.18.01.08.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 18 Oct 2019 01:08:54 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
To: linux-riscv@lists.infradead.org
Subject: [PATCH v3 4/8] riscv: add missing prototypes
Date: Fri, 18 Oct 2019 01:08:37 -0700
Message-Id: <20191018080841.26712-5-paul.walmsley@sifive.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191018080841.26712-1-paul.walmsley@sifive.com>
References: <20191018080841.26712-1-paul.walmsley@sifive.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_010858_433570_DC837AB6 
X-CRM114-Status: GOOD (  10.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:143 listed in]
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

Fix by adding the missing prototypes to the appropriate header files.

This change should have no functional impact.

Signed-off-by: Paul Walmsley <paul.walmsley@sifive.com>
---
 arch/riscv/include/asm/irq.h       | 3 +++
 arch/riscv/include/asm/pgtable.h   | 2 ++
 arch/riscv/include/asm/processor.h | 4 ++++
 arch/riscv/include/asm/ptrace.h    | 2 ++
 arch/riscv/include/asm/smp.h       | 2 ++
 5 files changed, 13 insertions(+)

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
index d48d1e13973c..c851c095b674 100644
--- a/arch/riscv/include/asm/ptrace.h
+++ b/arch/riscv/include/asm/ptrace.h
@@ -101,6 +101,8 @@ static inline unsigned long regs_return_value(struct pt_regs *regs)
 	return regs->a0;
 }
 
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
