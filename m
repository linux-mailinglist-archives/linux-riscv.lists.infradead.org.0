Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9563617D92C
	for <lists+linux-riscv@lfdr.de>; Mon,  9 Mar 2020 07:00:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=stcCKmy7SQ9g7ZsTv/Pq3Lw9qpVXYew7FPspFo97R1U=; b=UZgumfmOKrNikN
	GhkEcX8EXDENhIDQiE4ZNZfgiAI/+ngmZK3YY64LdE4hcsiFK/hpicpG5AHZwZ+emuLso9evK81/Y
	jw94jwxpE/IftNkPjfr6Q7jk75wIIShdCxrhlSMkid002HzQMt+9ki3jZ5hbKMHmfyAwSP0UlXnkM
	DDcftJYHGMWtpvZZDx5ruWzvpxoyllVqlui+LcD6BbimNL4wTbN6JVc0AvAF3wDYaRINenKdjgFX/
	xvGhaPLVuaLQcwhOFDUDSb/zY5AjAdb17wJswuUDN5NqKk6Kjv0gQsJj+V5xyKE5KmlrBeiHDTmkz
	SnD9KMDMtjmXbncmIvOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBBSc-00017x-5g; Mon, 09 Mar 2020 06:00:18 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBBSV-00015q-RR
 for linux-riscv@lists.infradead.org; Mon, 09 Mar 2020 06:00:13 +0000
Received: by mail-pg1-x542.google.com with SMTP id u12so4201109pgb.10
 for <linux-riscv@lists.infradead.org>; Sun, 08 Mar 2020 23:00:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=stcCKmy7SQ9g7ZsTv/Pq3Lw9qpVXYew7FPspFo97R1U=;
 b=gJp31reB6ClzmNR1R2v2gOATZAITpN46NAJ0cvKIVbXKLBFaNRMQzIePwSwbLKGW1t
 79GgNMGSryFeVFbF1jCM96E2uPD4PvmOhPRirXGac6PMgr2bVfKH+9IeO9sl+FdZsuYA
 srm86vq5RiZDwe9S+ZDZ5dk8j41SB6qFN8NK7fjGQFWJsXnDfScPk8KKt1KarUhABL5v
 VCUpuxpUClz4qsl2UKRAXcBTvgzmNZq329W45MstjZhAKpYwK/XoCL2jrq75H/UIOFPX
 9ZD8JKv6jeUD/1R5KhDqSOc1CkXOTsT9ImxyYWvPAWQBT7JrqG3OfBWZvd5rIaSZy5S0
 /UCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=stcCKmy7SQ9g7ZsTv/Pq3Lw9qpVXYew7FPspFo97R1U=;
 b=af5uEM2nM5pYo+NeRzJVgnQggWFgr6uN833/vq3yy32AjVOeGcp+d7v7Mi6r3KIF6V
 zmgttN2G6xJWXJRngGSTAaXqE9sfpOP59lmyaXthaAF+a/SBFfyEwqpftFp1QlfQsM/U
 KDdGD47nEJg/1nJWZh2jx17wbstJEseu01VcdxOA1HyMxsM3vWX32RAkBYIqzDntvi4R
 H3xcxPv/xmv486jyvn/b7EGk91Po/hQOQMLpUIocq2rno9zu3MSntMR68OnqcvD0I9jL
 VsYRl4y28zBLsP6mlX5x01zPsCA0hnbJ+VEOuPcwhyaaXLFauwqeyY/hNIO459f3eN64
 9asg==
X-Gm-Message-State: ANhLgQ31k6sJbAlRD+ZKRoM41shBeo+lX63AQYz1adpnwl6Nxj7xUuYA
 7HW+Oh2VAMxSdgSEk4ytIJ8s5A==
X-Google-Smtp-Source: ADFU+vuEtUImgh7ch4GRkP8XYQmAOIQAu/igdoFQz/noDPDwlIRoYCHkyrpafAGqVh9GUxwwk7Up8w==
X-Received: by 2002:a63:c546:: with SMTP id g6mr14349732pgd.243.1583733611220; 
 Sun, 08 Mar 2020 23:00:11 -0700 (PDT)
Received: from VincentChen-ThinkPad-T480s.internal.sifive.com
 (220-132-236-182.HINET-IP.hinet.net. [220.132.236.182])
 by smtp.gmail.com with ESMTPSA id nh4sm3033061pjb.39.2020.03.08.23.00.09
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sun, 08 Mar 2020 23:00:10 -0700 (PDT)
From: Vincent Chen <vincent.chen@sifive.com>
To: paul.walmsley@sifive.com, palmer@dabbelt.com,
 mathieu.desnoyers@efficios.com
Subject: [PATCH V2 1/3] riscv: add required functions to enable
 HAVE_REGS_AND_STACK_ACCESS_API
Date: Mon,  9 Mar 2020 13:59:50 +0800
Message-Id: <1583733592-22873-2-git-send-email-vincent.chen@sifive.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1583733592-22873-1-git-send-email-vincent.chen@sifive.com>
References: <1583733592-22873-1-git-send-email-vincent.chen@sifive.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200308_230011_890147_396C5C2B 
X-CRM114-Status: GOOD (  16.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Vincent Chen <vincent.chen@sifive.com>, linux-riscv@lists.infradead.org,
 =?UTF-8?q?Patrick=20St=C3=A4hlin?= <me@packi.ch>,
 linux-kselftest@vger.kernel.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

From: Patrick Stählin <me@packi.ch>

In order to select HAVE_REGS_AND_STACK_ACCESS_API, adding the APIs
required by kprobes to access pt_regs and stack entries to the RISC-V
ports.

Signed-off-by: Patrick Stählin <me@packi.ch>
Signed-off-by: Vincent Chen <vincent.chen@sifive.com>
---
 arch/riscv/Kconfig              |  1 +
 arch/riscv/include/asm/ptrace.h | 29 +++++++++++-
 arch/riscv/kernel/ptrace.c      | 99 +++++++++++++++++++++++++++++++++++++++++
 3 files changed, 128 insertions(+), 1 deletion(-)

diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index 73f029eae0cc..fa98b279257e 100644
--- a/arch/riscv/Kconfig
+++ b/arch/riscv/Kconfig
@@ -66,6 +66,7 @@ config RISCV
 	select ARCH_HAS_GCOV_PROFILE_ALL
 	select HAVE_COPY_THREAD_TLS
 	select HAVE_ARCH_KASAN if MMU && 64BIT
+	select HAVE_REGS_AND_STACK_ACCESS_API
 
 config ARCH_MMAP_RND_BITS_MIN
 	default 18 if 64BIT
diff --git a/arch/riscv/include/asm/ptrace.h b/arch/riscv/include/asm/ptrace.h
index ee49f80c9533..9fc685659eb1 100644
--- a/arch/riscv/include/asm/ptrace.h
+++ b/arch/riscv/include/asm/ptrace.h
@@ -8,6 +8,7 @@
 
 #include <uapi/asm/ptrace.h>
 #include <asm/csr.h>
+#include <linux/compiler.h>
 
 #ifndef __ASSEMBLY__
 
@@ -59,7 +60,7 @@ struct pt_regs {
 #endif
 
 #define user_mode(regs) (((regs)->status & SR_PP) == 0)
-
+#define MAX_REG_OFFSET offsetof(struct pt_regs, orig_a0)
 
 /* Helpers for working with the instruction pointer */
 static inline unsigned long instruction_pointer(struct pt_regs *regs)
@@ -79,6 +80,12 @@ static inline unsigned long user_stack_pointer(struct pt_regs *regs)
 {
 	return regs->sp;
 }
+
+static inline unsigned long kernel_stack_pointer(struct pt_regs *regs)
+{
+	return regs->sp;
+}
+
 static inline void user_stack_pointer_set(struct pt_regs *regs,
 					  unsigned long val)
 {
@@ -101,6 +108,26 @@ static inline unsigned long regs_return_value(struct pt_regs *regs)
 	return regs->a0;
 }
 
+int regs_query_register_offset(const char *name);
+
+unsigned long regs_get_kernel_stack_nth(struct pt_regs *regs, unsigned int n);
+/**
+ * regs_get_register() - get register value from its offset
+ * @regs:	pt_regs from which register value is gotten
+ * @offset:	offset of the register.
+ *
+ * regs_get_register returns the value of a register whose offset from @regs.
+ * The @offset is the offset of the register in struct pt_regs.
+ * If @offset is bigger than MAX_REG_OFFSET, this returns 0.
+ */
+static inline unsigned long regs_get_register(struct pt_regs *regs,
+					      unsigned int offset)
+{
+	if (unlikely(offset > MAX_REG_OFFSET))
+		return 0;
+
+	return *(unsigned long *)((unsigned long)regs + offset);
+}
 #endif /* __ASSEMBLY__ */
 
 #endif /* _ASM_RISCV_PTRACE_H */
diff --git a/arch/riscv/kernel/ptrace.c b/arch/riscv/kernel/ptrace.c
index 407464201b91..bdfee5eff777 100644
--- a/arch/riscv/kernel/ptrace.c
+++ b/arch/riscv/kernel/ptrace.c
@@ -125,6 +125,105 @@ const struct user_regset_view *task_user_regset_view(struct task_struct *task)
 	return &riscv_user_native_view;
 }
 
+struct pt_regs_offset {
+	const char *name;
+	int offset;
+};
+
+#define REG_OFFSET_NAME(r) {.name = #r, .offset = offsetof(struct pt_regs, r)}
+#define REG_OFFSET_END {.name = NULL, .offset = 0}
+
+static const struct pt_regs_offset regoffset_table[] = {
+	REG_OFFSET_NAME(epc),
+	REG_OFFSET_NAME(ra),
+	REG_OFFSET_NAME(sp),
+	REG_OFFSET_NAME(gp),
+	REG_OFFSET_NAME(tp),
+	REG_OFFSET_NAME(t0),
+	REG_OFFSET_NAME(t1),
+	REG_OFFSET_NAME(t2),
+	REG_OFFSET_NAME(s0),
+	REG_OFFSET_NAME(s1),
+	REG_OFFSET_NAME(a0),
+	REG_OFFSET_NAME(a1),
+	REG_OFFSET_NAME(a2),
+	REG_OFFSET_NAME(a3),
+	REG_OFFSET_NAME(a4),
+	REG_OFFSET_NAME(a5),
+	REG_OFFSET_NAME(a6),
+	REG_OFFSET_NAME(a7),
+	REG_OFFSET_NAME(s2),
+	REG_OFFSET_NAME(s3),
+	REG_OFFSET_NAME(s4),
+	REG_OFFSET_NAME(s5),
+	REG_OFFSET_NAME(s6),
+	REG_OFFSET_NAME(s7),
+	REG_OFFSET_NAME(s8),
+	REG_OFFSET_NAME(s9),
+	REG_OFFSET_NAME(s10),
+	REG_OFFSET_NAME(s11),
+	REG_OFFSET_NAME(t3),
+	REG_OFFSET_NAME(t4),
+	REG_OFFSET_NAME(t5),
+	REG_OFFSET_NAME(t6),
+	REG_OFFSET_NAME(status),
+	REG_OFFSET_NAME(badaddr),
+	REG_OFFSET_NAME(cause),
+	REG_OFFSET_NAME(orig_a0),
+	REG_OFFSET_END,
+};
+
+/**
+ * regs_query_register_offset() - query register offset from its name
+ * @name:	the name of a register
+ *
+ * regs_query_register_offset() returns the offset of a register in struct
+ * pt_regs from its name. If the name is invalid, this returns -EINVAL;
+ */
+int regs_query_register_offset(const char *name)
+{
+	const struct pt_regs_offset *roff;
+
+	for (roff = regoffset_table; roff->name; roff++)
+		if (!strcmp(roff->name, name))
+			return roff->offset;
+	return -EINVAL;
+}
+
+/**
+ * regs_within_kernel_stack() - check the address in the stack
+ * @regs:      pt_regs which contains kernel stack pointer.
+ * @addr:      address which is checked.
+ *
+ * regs_within_kernel_stack() checks @addr is within the kernel stack page(s).
+ * If @addr is within the kernel stack, it returns true. If not, returns false.
+ */
+static bool regs_within_kernel_stack(struct pt_regs *regs, unsigned long addr)
+{
+	return (addr & ~(THREAD_SIZE - 1))  ==
+		(kernel_stack_pointer(regs) & ~(THREAD_SIZE - 1));
+}
+
+/**
+ * regs_get_kernel_stack_nth() - get Nth entry of the stack
+ * @regs:	pt_regs which contains kernel stack pointer.
+ * @n:		stack entry number.
+ *
+ * regs_get_kernel_stack_nth() returns @n th entry of the kernel stack which
+ * is specified by @regs. If the @n th entry is NOT in the kernel stack,
+ * this returns 0.
+ */
+unsigned long regs_get_kernel_stack_nth(struct pt_regs *regs, unsigned int n)
+{
+	unsigned long *addr = (unsigned long *)kernel_stack_pointer(regs);
+
+	addr += n;
+	if (regs_within_kernel_stack(regs, (unsigned long)addr))
+		return *addr;
+	else
+		return 0;
+}
+
 void ptrace_disable(struct task_struct *child)
 {
 	clear_tsk_thread_flag(child, TIF_SYSCALL_TRACE);
-- 
2.7.4


