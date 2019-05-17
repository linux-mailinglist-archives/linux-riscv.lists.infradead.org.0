Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2AEC2158F
	for <lists+linux-riscv@lfdr.de>; Fri, 17 May 2019 10:44:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=+Sw3yyKbWtckO6jr7NbWzZQhsNFAOMFuiS9Ys+sxeac=; b=j2g5fBS6cNxLc9KBiTWFZD0F43
	itWv5Oz4s7fAi1LsOlPJshwmtwVEL8ZXdfSnAlV5HlpfhGd/GcYekeY8qAFimIR9LPgVfXqicdNxC
	FddfZdm0zLH2EQnd+GZGOZ33AlYz9UDIUU1ONSgZovlUzKiey1FCdnoH4eHXbaGVPQwrmStQRzTKp
	2gpC/VuZrZBg/OCuZO+79Cb4RdDUbnvYoNpsNcwqhO95zv4agjQNie1sx5SSZ/QaJ3Wq/z3RgUzzZ
	N3qUJ3jBwxkqI1CrhEUwbpjWxqlYKKBGStw9hpv5pYa8lbtFVJV8WGWo47Tj0m+MV+as2RhnMn9wk
	BiLIoczw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRYU1-0008VN-Kg; Fri, 17 May 2019 08:44:53 +0000
Received: from smtp2200-217.mail.aliyun.com ([121.197.200.217])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRYTs-0008NO-PC
 for linux-riscv@lists.infradead.org; Fri, 17 May 2019 08:44:48 +0000
X-Alimail-AntiSpam: AC=CONTINUE; BC=0.07436282|-1; CH=green;
 DM=CONTINUE|CONTINUE|true|0.25575-0.00953499-0.734715; FP=0|0|0|0|0|-1|-1|-1;
 HT=e02c03312; MF=han_mao@c-sky.com; NM=1; PH=DS; RN=6; RT=6; SR=0;
 TI=SMTPD_---.EZKiqKc_1558082678; 
Received: from localhost(mailfrom:han_mao@c-sky.com
 fp:SMTPD_---.EZKiqKc_1558082678) by smtp.aliyun-inc.com(10.147.40.7);
 Fri, 17 May 2019 16:44:38 +0800
From: Mao Han <han_mao@c-sky.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH V3 3/3] riscv: Add support for libdw
Date: Fri, 17 May 2019 16:43:04 +0800
Message-Id: <7354aa2d37a93df8308c9347cd0374d8958f7b3c.1558081981.git.han_mao@c-sky.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1558081981.git.han_mao@c-sky.com>
References: <cover.1558081981.git.han_mao@c-sky.com>
In-Reply-To: <cover.1558081981.git.han_mao@c-sky.com>
References: <cover.1558081981.git.han_mao@c-sky.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_014445_503224_36AC4CD9 
X-CRM114-Status: GOOD (  13.99  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-BeenThere: linux-riscv@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-riscv.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-riscv/>
List-Post: <mailto:linux-riscv@lists.infradead.org>
List-Help: <mailto:linux-riscv-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=subscribe>
Cc: linux-riscv <linux-riscv@lists.infradead.org>,
 Palmer Dabbelt <palmer@sifive.com>, Guo Ren <guoren@kernel.org>,
 Christoph Hellwig <hch@lst.de>, Mao Han <han_mao@c-sky.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

This patch add support for DWARF register mappings and libdw registers
initialization, which is used by perf callchain analyzing when
--call-graph=dwarf is given.

Signed-off-by: Mao Han <han_mao@c-sky.com>
CC: Palmer Dabbelt <palmer@sifive.com>
CC: linux-riscv <linux-riscv@lists.infradead.org>
CC: Christoph Hellwig <hch@lst.de>
CC: Guo Ren <guoren@kernel.org>
---
 tools/arch/riscv/include/uapi/asm/perf_regs.h | 42 ++++++++++++
 tools/perf/Makefile.config                    |  6 +-
 tools/perf/arch/riscv/Build                   |  1 +
 tools/perf/arch/riscv/Makefile                |  3 +
 tools/perf/arch/riscv/include/perf_regs.h     | 96 +++++++++++++++++++++++++++
 tools/perf/arch/riscv/util/Build              |  2 +
 tools/perf/arch/riscv/util/dwarf-regs.c       | 72 ++++++++++++++++++++
 tools/perf/arch/riscv/util/unwind-libdw.c     | 57 ++++++++++++++++
 8 files changed, 278 insertions(+), 1 deletion(-)
 create mode 100644 tools/arch/riscv/include/uapi/asm/perf_regs.h
 create mode 100644 tools/perf/arch/riscv/Build
 create mode 100644 tools/perf/arch/riscv/Makefile
 create mode 100644 tools/perf/arch/riscv/include/perf_regs.h
 create mode 100644 tools/perf/arch/riscv/util/Build
 create mode 100644 tools/perf/arch/riscv/util/dwarf-regs.c
 create mode 100644 tools/perf/arch/riscv/util/unwind-libdw.c

diff --git a/tools/arch/riscv/include/uapi/asm/perf_regs.h b/tools/arch/riscv/include/uapi/asm/perf_regs.h
new file mode 100644
index 0000000..df1a581
--- /dev/null
+++ b/tools/arch/riscv/include/uapi/asm/perf_regs.h
@@ -0,0 +1,42 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/* Copyright (C) 2019 Hangzhou C-SKY Microsystems co.,ltd. */
+
+#ifndef _ASM_RISCV_PERF_REGS_H
+#define _ASM_RISCV_PERF_REGS_H
+
+enum perf_event_riscv_regs {
+	PERF_REG_RISCV_PC,
+	PERF_REG_RISCV_RA,
+	PERF_REG_RISCV_SP,
+	PERF_REG_RISCV_GP,
+	PERF_REG_RISCV_TP,
+	PERF_REG_RISCV_T0,
+	PERF_REG_RISCV_T1,
+	PERF_REG_RISCV_T2,
+	PERF_REG_RISCV_S0,
+	PERF_REG_RISCV_S1,
+	PERF_REG_RISCV_A0,
+	PERF_REG_RISCV_A1,
+	PERF_REG_RISCV_A2,
+	PERF_REG_RISCV_A3,
+	PERF_REG_RISCV_A4,
+	PERF_REG_RISCV_A5,
+	PERF_REG_RISCV_A6,
+	PERF_REG_RISCV_A7,
+	PERF_REG_RISCV_S2,
+	PERF_REG_RISCV_S3,
+	PERF_REG_RISCV_S4,
+	PERF_REG_RISCV_S5,
+	PERF_REG_RISCV_S6,
+	PERF_REG_RISCV_S7,
+	PERF_REG_RISCV_S8,
+	PERF_REG_RISCV_S9,
+	PERF_REG_RISCV_S10,
+	PERF_REG_RISCV_S11,
+	PERF_REG_RISCV_T3,
+	PERF_REG_RISCV_T4,
+	PERF_REG_RISCV_T5,
+	PERF_REG_RISCV_T6,
+	PERF_REG_RISCV_MAX,
+};
+#endif /* _ASM_RISCV_PERF_REGS_H */
diff --git a/tools/perf/Makefile.config b/tools/perf/Makefile.config
index fe3f97e..8f2e6d3 100644
--- a/tools/perf/Makefile.config
+++ b/tools/perf/Makefile.config
@@ -59,6 +59,10 @@ ifeq ($(SRCARCH),arm64)
   LIBUNWIND_LIBS = -lunwind -lunwind-aarch64
 endif
 
+ifeq ($(SRCARCH),riscv)
+  NO_PERF_REGS := 0
+endif
+
 ifeq ($(ARCH),s390)
   NO_PERF_REGS := 0
   NO_SYSCALL_TABLE := 0
@@ -77,7 +81,7 @@ endif
 # Disable it on all other architectures in case libdw unwind
 # support is detected in system. Add supported architectures
 # to the check.
-ifneq ($(SRCARCH),$(filter $(SRCARCH),x86 arm arm64 powerpc s390))
+ifneq ($(SRCARCH),$(filter $(SRCARCH),x86 arm arm64 powerpc s390 riscv))
   NO_LIBDW_DWARF_UNWIND := 1
 endif
 
diff --git a/tools/perf/arch/riscv/Build b/tools/perf/arch/riscv/Build
new file mode 100644
index 0000000..e4e5f33
--- /dev/null
+++ b/tools/perf/arch/riscv/Build
@@ -0,0 +1 @@
+perf-y += util/
diff --git a/tools/perf/arch/riscv/Makefile b/tools/perf/arch/riscv/Makefile
new file mode 100644
index 0000000..7fbca17
--- /dev/null
+++ b/tools/perf/arch/riscv/Makefile
@@ -0,0 +1,3 @@
+ifndef NO_DWARF
+PERF_HAVE_DWARF_REGS := 1
+endif
diff --git a/tools/perf/arch/riscv/include/perf_regs.h b/tools/perf/arch/riscv/include/perf_regs.h
new file mode 100644
index 0000000..7a8bcde
--- /dev/null
+++ b/tools/perf/arch/riscv/include/perf_regs.h
@@ -0,0 +1,96 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/* Copyright (C) 2019 Hangzhou C-SKY Microsystems co.,ltd. */
+
+#ifndef ARCH_PERF_REGS_H
+#define ARCH_PERF_REGS_H
+
+#include <stdlib.h>
+#include <linux/types.h>
+#include <asm/perf_regs.h>
+
+#define PERF_REGS_MASK	((1ULL << PERF_REG_RISCV_MAX) - 1)
+#define PERF_REGS_MAX	PERF_REG_RISCV_MAX
+#if __riscv_xlen == 64
+#define PERF_SAMPLE_REGS_ABI    PERF_SAMPLE_REGS_ABI_64
+#else
+#define PERF_SAMPLE_REGS_ABI	PERF_SAMPLE_REGS_ABI_32
+#endif
+
+#define PERF_REG_IP	PERF_REG_RISCV_PC
+#define PERF_REG_SP	PERF_REG_RISCV_SP
+
+static inline const char *perf_reg_name(int id)
+{
+	switch (id) {
+	case PERF_REG_RISCV_PC:
+		return "pc";
+	case PERF_REG_RISCV_RA:
+		return "ra";
+	case PERF_REG_RISCV_SP:
+		return "sp";
+	case PERF_REG_RISCV_GP:
+		return "gp";
+	case PERF_REG_RISCV_TP:
+		return "tp";
+	case PERF_REG_RISCV_T0:
+		return "t0";
+	case PERF_REG_RISCV_T1:
+		return "t1";
+	case PERF_REG_RISCV_T2:
+		return "t2";
+	case PERF_REG_RISCV_S0:
+		return "s0";
+	case PERF_REG_RISCV_S1:
+		return "s1";
+	case PERF_REG_RISCV_A0:
+		return "a0";
+	case PERF_REG_RISCV_A1:
+		return "a1";
+	case PERF_REG_RISCV_A2:
+		return "a2";
+	case PERF_REG_RISCV_A3:
+		return "a3";
+	case PERF_REG_RISCV_A4:
+		return "a4";
+	case PERF_REG_RISCV_A5:
+		return "a5";
+	case PERF_REG_RISCV_A6:
+		return "a6";
+	case PERF_REG_RISCV_A7:
+		return "a7";
+	case PERF_REG_RISCV_S2:
+		return "s2";
+	case PERF_REG_RISCV_S3:
+		return "s3";
+	case PERF_REG_RISCV_S4:
+		return "s4";
+	case PERF_REG_RISCV_S5:
+		return "s5";
+	case PERF_REG_RISCV_S6:
+		return "s6";
+	case PERF_REG_RISCV_S7:
+		return "s7";
+	case PERF_REG_RISCV_S8:
+		return "s8";
+	case PERF_REG_RISCV_S9:
+		return "s9";
+	case PERF_REG_RISCV_S10:
+		return "s10";
+	case PERF_REG_RISCV_S11:
+		return "s11";
+	case PERF_REG_RISCV_T3:
+		return "t3";
+	case PERF_REG_RISCV_T4:
+		return "t4";
+	case PERF_REG_RISCV_T5:
+		return "t5";
+	case PERF_REG_RISCV_T6:
+		return "t6";
+	default:
+		return NULL;
+	}
+
+	return NULL;
+}
+
+#endif /* ARCH_PERF_REGS_H */
diff --git a/tools/perf/arch/riscv/util/Build b/tools/perf/arch/riscv/util/Build
new file mode 100644
index 0000000..1160bb2
--- /dev/null
+++ b/tools/perf/arch/riscv/util/Build
@@ -0,0 +1,2 @@
+perf-$(CONFIG_DWARF) += dwarf-regs.o
+perf-$(CONFIG_LIBDW_DWARF_UNWIND) += unwind-libdw.o
diff --git a/tools/perf/arch/riscv/util/dwarf-regs.c b/tools/perf/arch/riscv/util/dwarf-regs.c
new file mode 100644
index 0000000..f3555f6
--- /dev/null
+++ b/tools/perf/arch/riscv/util/dwarf-regs.c
@@ -0,0 +1,72 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2019 Hangzhou C-SKY Microsystems co.,ltd.
+ * Mapping of DWARF debug register numbers into register names.
+ */
+
+#include <stddef.h>
+#include <errno.h> /* for EINVAL */
+#include <string.h> /* for strcmp */
+#include <dwarf-regs.h>
+
+struct pt_regs_dwarfnum {
+	const char *name;
+	unsigned int dwarfnum;
+};
+
+#define REG_DWARFNUM_NAME(r, num) {.name = r, .dwarfnum = num}
+#define REG_DWARFNUM_END {.name = NULL, .dwarfnum = 0}
+
+struct pt_regs_dwarfnum riscv_dwarf_regs_table[] = {
+	REG_DWARFNUM_NAME("%zero", 0),
+	REG_DWARFNUM_NAME("%ra", 1),
+	REG_DWARFNUM_NAME("%sp", 2),
+	REG_DWARFNUM_NAME("%gp", 3),
+	REG_DWARFNUM_NAME("%tp", 4),
+	REG_DWARFNUM_NAME("%t0", 5),
+	REG_DWARFNUM_NAME("%t1", 6),
+	REG_DWARFNUM_NAME("%t2", 7),
+	REG_DWARFNUM_NAME("%s0", 8),
+	REG_DWARFNUM_NAME("%s1", 9),
+	REG_DWARFNUM_NAME("%a0", 10),
+	REG_DWARFNUM_NAME("%a1", 11),
+	REG_DWARFNUM_NAME("%a2", 12),
+	REG_DWARFNUM_NAME("%a3", 13),
+	REG_DWARFNUM_NAME("%a4", 14),
+	REG_DWARFNUM_NAME("%a5", 15),
+	REG_DWARFNUM_NAME("%a6", 16),
+	REG_DWARFNUM_NAME("%a7", 17),
+	REG_DWARFNUM_NAME("%s2", 18),
+	REG_DWARFNUM_NAME("%s3", 19),
+	REG_DWARFNUM_NAME("%s4", 20),
+	REG_DWARFNUM_NAME("%s5", 21),
+	REG_DWARFNUM_NAME("%s6", 22),
+	REG_DWARFNUM_NAME("%s7", 23),
+	REG_DWARFNUM_NAME("%s8", 24),
+	REG_DWARFNUM_NAME("%s9", 25),
+	REG_DWARFNUM_NAME("%s10", 26),
+	REG_DWARFNUM_NAME("%s11", 27),
+	REG_DWARFNUM_NAME("%t3", 28),
+	REG_DWARFNUM_NAME("%t4", 29),
+	REG_DWARFNUM_NAME("%t5", 30),
+	REG_DWARFNUM_NAME("%t6", 31),
+	REG_DWARFNUM_END,
+};
+
+#define RISCV_MAX_REGS ((sizeof(riscv_dwarf_regs_table) / \
+		 sizeof(riscv_dwarf_regs_table[0])) - 1)
+
+const char *get_arch_regstr(unsigned int n)
+{
+	return (n < RISCV_MAX_REGS) ? riscv_dwarf_regs_table[n].name : NULL;
+}
+
+int regs_query_register_offset(const char *name)
+{
+	const struct pt_regs_dwarfnum *roff;
+
+	for (roff = riscv_dwarf_regs_table; roff->name != NULL; roff++)
+		if (!strcmp(roff->name, name))
+			return roff->dwarfnum;
+	return -EINVAL;
+}
diff --git a/tools/perf/arch/riscv/util/unwind-libdw.c b/tools/perf/arch/riscv/util/unwind-libdw.c
new file mode 100644
index 0000000..19536e1
--- /dev/null
+++ b/tools/perf/arch/riscv/util/unwind-libdw.c
@@ -0,0 +1,57 @@
+// SPDX-License-Identifier: GPL-2.0
+/* Copyright (C) 2019 Hangzhou C-SKY Microsystems co.,ltd. */
+
+#include <elfutils/libdwfl.h>
+#include "../../util/unwind-libdw.h"
+#include "../../util/perf_regs.h"
+#include "../../util/event.h"
+
+bool libdw__arch_set_initial_registers(Dwfl_Thread *thread, void *arg)
+{
+	struct unwind_info *ui = arg;
+	struct regs_dump *user_regs = &ui->sample->user_regs;
+	Dwarf_Word dwarf_regs[32];
+
+#define REG(r) ({						\
+	Dwarf_Word val = 0;					\
+	perf_reg_value(&val, user_regs, PERF_REG_RISCV_##r);	\
+	val;							\
+})
+
+	dwarf_regs[0]  = 0;
+	dwarf_regs[1]  = REG(RA);
+	dwarf_regs[2]  = REG(SP);
+	dwarf_regs[3]  = REG(GP);
+	dwarf_regs[4]  = REG(TP);
+	dwarf_regs[5]  = REG(T0);
+	dwarf_regs[6]  = REG(T1);
+	dwarf_regs[7]  = REG(T2);
+	dwarf_regs[8]  = REG(S0);
+	dwarf_regs[9]  = REG(S1);
+	dwarf_regs[10] = REG(A0);
+	dwarf_regs[11] = REG(A1);
+	dwarf_regs[12] = REG(A2);
+	dwarf_regs[13] = REG(A3);
+	dwarf_regs[14] = REG(A4);
+	dwarf_regs[15] = REG(A5);
+	dwarf_regs[16] = REG(A6);
+	dwarf_regs[17] = REG(A7);
+	dwarf_regs[18] = REG(S2);
+	dwarf_regs[19] = REG(S3);
+	dwarf_regs[20] = REG(S4);
+	dwarf_regs[21] = REG(S5);
+	dwarf_regs[22] = REG(S6);
+	dwarf_regs[23] = REG(S7);
+	dwarf_regs[24] = REG(S8);
+	dwarf_regs[25] = REG(S9);
+	dwarf_regs[26] = REG(S10);
+	dwarf_regs[27] = REG(S11);
+	dwarf_regs[28] = REG(T3);
+	dwarf_regs[29] = REG(T4);
+	dwarf_regs[30] = REG(T5);
+	dwarf_regs[31] = REG(T6);
+	dwfl_thread_state_register_pc(thread, REG(PC));
+
+	return dwfl_thread_state_registers(thread, 0, PERF_REG_RISCV_MAX,
+					   dwarf_regs);
+}
-- 
2.7.4


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
