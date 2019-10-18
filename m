Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33BAADBF75
	for <lists+linux-riscv@lfdr.de>; Fri, 18 Oct 2019 10:09:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZeO8iX2CbvHVN8nanfd3UNPttHA8wIXLciWp5yrGDGg=; b=auvSLhA4+ffzeh
	umeHlNjVpF8GQeEK4v5imEQ5MiPkj0+m/ozzlos9tFf/SNsUMC0yZ4vqw3U+fFc9RLJfAsL9hIWL0
	ck1SQthgcrFQ1SwrbhnrYIH7WaYI01g8+A1dH3HK99P6tU1OHTejkoWVq6BQ4LbgNIrIQgCMkl3Bu
	vvbciNcySEN3+9JTQv44f9iXjnQ0hB9MOX73M7uM8BN1sjbO/HFN2eg0Kr9d0+tJ8OUhZezIc+0/F
	9NB0gTe7OyyUBJSURmySavS+20B2JX9Gz122ojHD2qYYWi7IxfVB9XCaJAyVhlYpL5zerRBfFNeyz
	CrPsX95TUQqGmUX0NnNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLNJg-0007im-Mp; Fri, 18 Oct 2019 08:08:56 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLNJc-0007fz-Ql
 for linux-riscv@lists.infradead.org; Fri, 18 Oct 2019 08:08:54 +0000
Received: by mail-io1-xd43.google.com with SMTP id c25so6340749iot.12
 for <linux-riscv@lists.infradead.org>; Fri, 18 Oct 2019 01:08:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=gALXE7phMSnF5XNrDSEyjkXd1DZJtTY9PSTVrsQZe00=;
 b=VdiO5twVtCF9UsEJN/g/Ibi63daAcXzXNmZwrtCD1RybuXu7p4ff+DqxMMhOvSexJ9
 O+h+RCzoMAYVvqRmSYWRgQ0cKZ4kGPOd2mYMuTQE8CbqgQ4NrCDOD1MNtlJsLs/QBVck
 yDEzptuIrt49pyuPEslqXvV0+EtOBXjCLscuS8Zztqra4SVC/n4wl43V2OBapnsBnS7l
 ScmBx8PLNNCUyWrl5FE0itd8L+nCgKDR9xwi/In98CmvYPv4qoYlpdl2id6DvE5MWOC3
 m16329oHHSaXla9lmZ93+A/+QggzKyLBRL24MePHKpxlby7tgnemMvIAYIDjBc5HF3Bu
 4fOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=gALXE7phMSnF5XNrDSEyjkXd1DZJtTY9PSTVrsQZe00=;
 b=UASLosKERgNSr8jW39XceYDVw0Cy0eCHbiFSFAE5XxioYDRHKyLnm4IHp/x9uLvGz9
 FfpFqZanBz1gXSGbBacQa1g4tD6Ge+3tl7oynirNf6POq+23lTLsIEFKjQMwcWOvYbUU
 oWF2C+JMpvsM3pzddNAOLY2mK5PfZs7rcu0cgiEJDKCIAtkHoLwFAmrdOiE70jyGjFEl
 bIi1QQW4S+FiH7OCvqGNBABd1r/CC7EbMKosGwNT9IU/UKDdKgkO2nPZ2gpHFIpyxBLt
 vuTDdE1Uw737GoLWs3u+iabNLptI5pZCPXFvmY4oG5OqLb3zLMMZBI4RBpFPdDQBs+RD
 cg5g==
X-Gm-Message-State: APjAAAWUMXuYYjEttODRO+oiL4//D75qOvg2QtwLkCuXe1Hx8w1CYIBR
 bsYaDOqwsXRv18YFhbfhd6VnA3A4oqw=
X-Google-Smtp-Source: APXvYqzfJ8zKMPYKiC0SIxFmIQKB8w+RgetlcbhzplyFFJO/YWgSaIBZm0V0UHqa+RzxKZ3ivY9Rew==
X-Received: by 2002:a02:1d44:: with SMTP id 65mr7665917jaj.129.1571386131665; 
 Fri, 18 Oct 2019 01:08:51 -0700 (PDT)
Received: from viisi.Home ([64.62.168.194])
 by smtp.gmail.com with ESMTPSA id z86sm2121026ilf.73.2019.10.18.01.08.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 18 Oct 2019 01:08:51 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
To: linux-riscv@lists.infradead.org
Subject: [PATCH v3 1/8] riscv: add prototypes for assembly language functions
 from entry.S
Date: Fri, 18 Oct 2019 01:08:34 -0700
Message-Id: <20191018080841.26712-2-paul.walmsley@sifive.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191018080841.26712-1-paul.walmsley@sifive.com>
References: <20191018080841.26712-1-paul.walmsley@sifive.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_010852_868380_766321AB 
X-CRM114-Status: GOOD (  12.53  )
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

Add prototypes for assembly language functions defined in entry.S,
and include these prototypes into C source files that call those
functions.

This patch resolves the following warnings from sparse:

arch/riscv/kernel/signal.c:32:53: warning: incorrect type in initializer (different address spaces)
arch/riscv/kernel/signal.c:45:23: warning: incorrect type in initializer (different address spaces)
arch/riscv/kernel/signal.c:59:53: warning: incorrect type in initializer (different address spaces)
arch/riscv/kernel/signal.c:69:23: warning: incorrect type in initializer (different address spaces)
arch/riscv/kernel/signal.c:89:48: warning: incorrect type in argument 2 (different address spaces)
arch/riscv/kernel/signal.c:142:45: warning: incorrect type in argument 2 (different address spaces)
arch/riscv/kernel/signal.c:295:17: warning: symbol 'do_notify_resume' was not declared. Should it be static?
arch/riscv/kernel/traps.c:91:1: warning: symbol 'do_trap_unknown' was not declared. Should it be static?
arch/riscv/kernel/traps.c:93:1: warning: symbol 'do_trap_insn_misaligned' was not declared. Should it be static?
arch/riscv/kernel/traps.c:95:1: warning: symbol 'do_trap_insn_fault' was not declared. Should it be static?
arch/riscv/kernel/traps.c:97:1: warning: symbol 'do_trap_insn_illegal' was not declared. Should it be static?
arch/riscv/kernel/traps.c:99:1: warning: symbol 'do_trap_load_misaligned' was not declared. Should it be static?
arch/riscv/kernel/traps.c:101:1: warning: symbol 'do_trap_load_fault' was not declared. Should it be static?
arch/riscv/kernel/traps.c:103:1: warning: symbol 'do_trap_store_misaligned' was not declared. Should it be static?
arch/riscv/kernel/traps.c:105:1: warning: symbol 'do_trap_store_fault' was not declared. Should it be static?
arch/riscv/kernel/traps.c:107:1: warning: symbol 'do_trap_ecall_u' was not declared. Should it be static?
arch/riscv/kernel/traps.c:109:1: warning: symbol 'do_trap_ecall_s' was not declared. Should it be static?
arch/riscv/kernel/traps.c:111:1: warning: symbol 'do_trap_ecall_m' was not declared. Should it be static?
arch/riscv/kernel/traps.c:125:17: warning: symbol 'do_trap_break' was not declared. Should it be static?
arch/riscv/kernel/traps.c:163:13: warning: symbol 'trap_init' was not declared. Should it be static?

This change should have no functional impact.

Signed-off-by: Paul Walmsley <paul.walmsley@sifive.com>
---
 arch/riscv/kernel/entry.h  | 29 +++++++++++++++++++++++++++++
 arch/riscv/kernel/signal.c |  2 ++
 arch/riscv/kernel/traps.c  |  2 ++
 3 files changed, 33 insertions(+)
 create mode 100644 arch/riscv/kernel/entry.h

diff --git a/arch/riscv/kernel/entry.h b/arch/riscv/kernel/entry.h
new file mode 100644
index 000000000000..73bfcda993d0
--- /dev/null
+++ b/arch/riscv/kernel/entry.h
@@ -0,0 +1,29 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (C) 2019 SiFive, Inc.
+ */
+#ifndef __ASM_ENTRY_H
+#define __ASM_ENTRY_H
+
+#include <linux/linkage.h>
+#include <linux/init.h>
+
+asmlinkage void do_trap_unknown(struct pt_regs *regs);
+asmlinkage void do_trap_insn_misaligned(struct pt_regs *regs);
+asmlinkage void do_trap_insn_fault(struct pt_regs *regs);
+asmlinkage void do_trap_insn_illegal(struct pt_regs *regs);
+asmlinkage void do_trap_load_misaligned(struct pt_regs *regs);
+asmlinkage void do_trap_load_fault(struct pt_regs *regs);
+asmlinkage void do_trap_store_misaligned(struct pt_regs *regs);
+asmlinkage void do_trap_store_fault(struct pt_regs *regs);
+asmlinkage void do_trap_ecall_u(struct pt_regs *regs);
+asmlinkage void do_trap_ecall_s(struct pt_regs *regs);
+asmlinkage void do_trap_ecall_m(struct pt_regs *regs);
+asmlinkage void do_trap_break(struct pt_regs *regs);
+
+asmlinkage void do_notify_resume(struct pt_regs *regs,
+				 unsigned long thread_info_flags);
+
+void __init trap_init(void);
+
+#endif /* __ASM__H */
diff --git a/arch/riscv/kernel/signal.c b/arch/riscv/kernel/signal.c
index b14d7647d800..85c700ad47e9 100644
--- a/arch/riscv/kernel/signal.c
+++ b/arch/riscv/kernel/signal.c
@@ -17,6 +17,8 @@
 #include <asm/switch_to.h>
 #include <asm/csr.h>
 
+#include "entry.h"
+
 #define DEBUG_SIG 0
 
 struct rt_sigframe {
diff --git a/arch/riscv/kernel/traps.c b/arch/riscv/kernel/traps.c
index 1ac75f7d0bff..eff679c3b618 100644
--- a/arch/riscv/kernel/traps.c
+++ b/arch/riscv/kernel/traps.c
@@ -19,6 +19,8 @@
 #include <asm/ptrace.h>
 #include <asm/csr.h>
 
+#include "entry.h"
+
 int show_unhandled_signals = 1;
 
 extern asmlinkage void handle_exception(void);
-- 
2.23.0


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
