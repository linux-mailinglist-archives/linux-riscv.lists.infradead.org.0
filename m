Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4672A184389
	for <lists+linux-riscv@lfdr.de>; Fri, 13 Mar 2020 10:17:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7KRLaV+kEXAF7q84utBoscmmSTWg1ujnTF8iXEruO54=; b=T6h2/P7Q3O9Ox2
	RkD2C0gyTX9abzEUCIaIWJmJP8+pGUsfW1rL2v60n53sIYUvTkAarL6c7ZyZFiMMoyZ2nHWGSkbF4
	hp2Wrc6nFFyXZMwZs6fv82Y3xBwQcOY98PJaq/nQz+Op2WDoXSIOnWb1XqwXQJl7Ak8l3lggvcaRR
	gn1VzgYhQP4HYEB5rOUWshpvN2CA0Wvi21OykPFTFp89mbjG3Z1pRuQiQgKruqN9DnMiOlHFAmGEc
	57DEUmYZEmkNPXJ0EFpXqtF1I3gmoF9DeGj2+jFoezF+0Uy1Eb/aNremYthBeC+R25g5eKoT7TN4N
	rsviADWnp9+flTW9Q3Lw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCgRB-0006V3-7J; Fri, 13 Mar 2020 09:17:01 +0000
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCgQs-0006Ig-Rw
 for linux-riscv@lists.infradead.org; Fri, 13 Mar 2020 09:16:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1584091002; x=1615627002;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=eQGWzssuGAaGkCaQ3HlUkUUeR/+37HJuTPi3Da/PRzU=;
 b=l/w89+U5oxbxwz6InK46syxyc+ly9WGnUH8O7kKyI4UTrciSWvMh8DmF
 zMMpBgNbiKeOjlFXCS2tB+R7jBDcExYKF8ILmMACl+7GLXTgJUyCJ4hGL
 /IZ3ftMnUu9q1kajctzOGB2IzZOFX6brbmA9xeVK0osGHcJrZ9QtNUQk8
 FZb+LPa7zcYtKnYsOcS6BLx6vG3WKZfaPhSPbz3M7pzd+OdDX2viMbAeh
 TMUZ7fan8ZYH7gVgTyRtNK9HDxFB7l4wWWXPH03aPE6i5z9f7/Bg1C9w0
 FBirSNAaS/haE8jcbSEJh60de8Uynp0ym98TQV8PYyJEE4dOIpSAhi7Md w==;
IronPort-SDR: 3OuUS8TZZBxkVIn69Zethhtlhzwtz8PvIsYF2DSObMwDoYcW4IkOJ0kJHQ0ORjocAXgejCYbQ9
 lerxIGSyujceIQ2w05azesI4iqbjIJlMiH2vKbKtQPvU/mKsjIoBvJW/uMr4muwV4yoXpNmHqT
 AMrfRnzDVFMKTp6f9u5x9UIxrQwaUTSYfanp8QMH8baDq0xgvz0/mYGdMmgmc30f+a+c0LnnVd
 0C87A7Bwwybuc2l6wT7s2mhBsznPZZJEeGhboo4eF1Vy3Bx8z+LOyWNZ+JfEZ02zW+waLAU3Nh
 NZg=
X-IronPort-AV: E=Sophos;i="5.70,548,1574092800"; d="scan'208";a="240669773"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 13 Mar 2020 17:16:41 +0800
IronPort-SDR: Eevx37uTwY1u1K5jA4ZuJee4EbScNvVJC1X0fBWPRjIi1+q4ApmxEachh/f1gsqn7W4k5X59eP
 Ip/o3lcFWF5zIjHhYnjCq3ybsLFgE8m21aaIA9M7WKTK5tYViVKMf38u+BTQKnx6S+7OyZQQoL
 rnxQ7FV9RQJOgBZT13HAj561aPISAIL+isF5yi6SUe+pMj1fryymTjJOSs3d2SQIbAgxdAGvwG
 Y5gel3AaPCD6gKWyaE5dbhiCXg1ab350dq5HULUhfvUTc9jzmAjolyzU6unLvlWyFowWk9sIfI
 nTD6QORtUp1KykEGJitmjxG0
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2020 02:08:40 -0700
IronPort-SDR: oWkLDwS17n8K8P9Z+i16yB+74KmHgUTVkT/uCz0C29wkYwFcHEzt+sgZcP3RznJ6xkmRNPd5p5
 CvjBT4172/xTALULTWxNrU9pDm741OWbAXeI8h82vU74TB39Qqrc3Hr7gWHCVYV5jT84Nvs4Ti
 lki4t0oTnD9PDWUqKo7s9koe44ADSUSpn9KH4/Px2uYxof2NPtZxVJUuqJce6FIeQTwIeB5P29
 kOf+59wDLAlg4UeIe053Wkqc/GyTG0qjCQJJlgW1JtcQQNXZrbQRe/p0ZTm3uxvrjqsvk/7hnq
 qfo=
WDCIronportException: Internal
Received: from washi.fujisawa.hgst.com ([10.149.53.254])
 by uls-op-cesaip02.wdc.com with ESMTP; 13 Mar 2020 02:16:40 -0700
From: Damien Le Moal <damien.lemoal@wdc.com>
To: linux-riscv@lists.infradead.org,
	Palmer Dabbelt <palmer@dabbelt.com>
Subject: [PATCH v3 1/9] riscv: Unaligned load/store handling for M_MODE
Date: Fri, 13 Mar 2020 18:16:31 +0900
Message-Id: <20200313091639.87862-2-damien.lemoal@wdc.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200313091639.87862-1-damien.lemoal@wdc.com>
References: <20200313091639.87862-1-damien.lemoal@wdc.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_021642_939467_37CF2840 
X-CRM114-Status: GOOD (  15.59  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.141.245 listed in list.dnswl.org]
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
Cc: Anup Patel <Anup.Patel@wdc.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Add handlers for unaligned load and store traps that may be generated
by applications. Code heavily inspired from the OpenSBI project.
Handling of the unaligned access traps is suitable for applications
compiled with or without compressed instructions and is independent of
the kernel CONFIG_RISCV_ISA_C option value.

Signed-off-by: Damien Le Moal <damien.lemoal@wdc.com>
Signed-off-by: Anup Patel <anup.patel@wdc.com>
---
 arch/riscv/kernel/Makefile           |   2 +-
 arch/riscv/kernel/traps.c            |  27 +-
 arch/riscv/kernel/traps_misaligned.c | 370 +++++++++++++++++++++++++++
 3 files changed, 395 insertions(+), 4 deletions(-)
 create mode 100644 arch/riscv/kernel/traps_misaligned.c

diff --git a/arch/riscv/kernel/Makefile b/arch/riscv/kernel/Makefile
index f40205cb9a22..97d0c35f8b37 100644
--- a/arch/riscv/kernel/Makefile
+++ b/arch/riscv/kernel/Makefile
@@ -28,7 +28,7 @@ obj-y	+= stacktrace.o
 obj-y	+= cacheinfo.o
 obj-$(CONFIG_MMU) += vdso.o vdso/
 
-obj-$(CONFIG_RISCV_M_MODE)	+= clint.o
+obj-$(CONFIG_RISCV_M_MODE)	+= clint.o traps_misaligned.o
 obj-$(CONFIG_FPU)		+= fpu.o
 obj-$(CONFIG_SMP)		+= smpboot.o
 obj-$(CONFIG_SMP)		+= smp.o
diff --git a/arch/riscv/kernel/traps.c b/arch/riscv/kernel/traps.c
index ffb3d94bf0cc..13e55459d7b0 100644
--- a/arch/riscv/kernel/traps.c
+++ b/arch/riscv/kernel/traps.c
@@ -97,12 +97,33 @@ DO_ERROR_INFO(do_trap_insn_fault,
 	SIGSEGV, SEGV_ACCERR, "instruction access fault");
 DO_ERROR_INFO(do_trap_insn_illegal,
 	SIGILL, ILL_ILLOPC, "illegal instruction");
-DO_ERROR_INFO(do_trap_load_misaligned,
-	SIGBUS, BUS_ADRALN, "load address misaligned");
 DO_ERROR_INFO(do_trap_load_fault,
 	SIGSEGV, SEGV_ACCERR, "load access fault");
+#ifndef CONFIG_RISCV_M_MODE
+DO_ERROR_INFO(do_trap_load_misaligned,
+	SIGBUS, BUS_ADRALN, "Oops - load address misaligned");
 DO_ERROR_INFO(do_trap_store_misaligned,
-	SIGBUS, BUS_ADRALN, "store (or AMO) address misaligned");
+	SIGBUS, BUS_ADRALN, "Oops - store (or AMO) address misaligned");
+#else
+int handle_misaligned_load(struct pt_regs *regs);
+int handle_misaligned_store(struct pt_regs *regs);
+
+asmlinkage void do_trap_load_misaligned(struct pt_regs *regs)
+{
+	if (!handle_misaligned_load(regs))
+		return;
+	do_trap_error(regs, SIGBUS, BUS_ADRALN, regs->epc,
+		      "Oops - load address misaligned");
+}
+
+asmlinkage void do_trap_store_misaligned(struct pt_regs *regs)
+{
+	if (!handle_misaligned_store(regs))
+		return;
+	do_trap_error(regs, SIGBUS, BUS_ADRALN, regs->epc,
+		      "Oops - store (or AMO) address misaligned");
+}
+#endif
 DO_ERROR_INFO(do_trap_store_fault,
 	SIGSEGV, SEGV_ACCERR, "store (or AMO) access fault");
 DO_ERROR_INFO(do_trap_ecall_u,
diff --git a/arch/riscv/kernel/traps_misaligned.c b/arch/riscv/kernel/traps_misaligned.c
new file mode 100644
index 000000000000..46c4dafe3ba0
--- /dev/null
+++ b/arch/riscv/kernel/traps_misaligned.c
@@ -0,0 +1,370 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (C) 2020 Western Digital Corporation or its affiliates.
+ */
+#include <linux/kernel.h>
+#include <linux/init.h>
+#include <linux/mm.h>
+#include <linux/module.h>
+#include <linux/irq.h>
+
+#include <asm/processor.h>
+#include <asm/ptrace.h>
+#include <asm/csr.h>
+
+#define INSN_MATCH_LB			0x3
+#define INSN_MASK_LB			0x707f
+#define INSN_MATCH_LH			0x1003
+#define INSN_MASK_LH			0x707f
+#define INSN_MATCH_LW			0x2003
+#define INSN_MASK_LW			0x707f
+#define INSN_MATCH_LD			0x3003
+#define INSN_MASK_LD			0x707f
+#define INSN_MATCH_LBU			0x4003
+#define INSN_MASK_LBU			0x707f
+#define INSN_MATCH_LHU			0x5003
+#define INSN_MASK_LHU			0x707f
+#define INSN_MATCH_LWU			0x6003
+#define INSN_MASK_LWU			0x707f
+#define INSN_MATCH_SB			0x23
+#define INSN_MASK_SB			0x707f
+#define INSN_MATCH_SH			0x1023
+#define INSN_MASK_SH			0x707f
+#define INSN_MATCH_SW			0x2023
+#define INSN_MASK_SW			0x707f
+#define INSN_MATCH_SD			0x3023
+#define INSN_MASK_SD			0x707f
+
+#define INSN_MATCH_FLW			0x2007
+#define INSN_MASK_FLW			0x707f
+#define INSN_MATCH_FLD			0x3007
+#define INSN_MASK_FLD			0x707f
+#define INSN_MATCH_FLQ			0x4007
+#define INSN_MASK_FLQ			0x707f
+#define INSN_MATCH_FSW			0x2027
+#define INSN_MASK_FSW			0x707f
+#define INSN_MATCH_FSD			0x3027
+#define INSN_MASK_FSD			0x707f
+#define INSN_MATCH_FSQ			0x4027
+#define INSN_MASK_FSQ			0x707f
+
+#define INSN_MATCH_C_LD			0x6000
+#define INSN_MASK_C_LD			0xe003
+#define INSN_MATCH_C_SD			0xe000
+#define INSN_MASK_C_SD			0xe003
+#define INSN_MATCH_C_LW			0x4000
+#define INSN_MASK_C_LW			0xe003
+#define INSN_MATCH_C_SW			0xc000
+#define INSN_MASK_C_SW			0xe003
+#define INSN_MATCH_C_LDSP		0x6002
+#define INSN_MASK_C_LDSP		0xe003
+#define INSN_MATCH_C_SDSP		0xe002
+#define INSN_MASK_C_SDSP		0xe003
+#define INSN_MATCH_C_LWSP		0x4002
+#define INSN_MASK_C_LWSP		0xe003
+#define INSN_MATCH_C_SWSP		0xc002
+#define INSN_MASK_C_SWSP		0xe003
+
+#define INSN_MATCH_C_FLD		0x2000
+#define INSN_MASK_C_FLD			0xe003
+#define INSN_MATCH_C_FLW		0x6000
+#define INSN_MASK_C_FLW			0xe003
+#define INSN_MATCH_C_FSD		0xa000
+#define INSN_MASK_C_FSD			0xe003
+#define INSN_MATCH_C_FSW		0xe000
+#define INSN_MASK_C_FSW			0xe003
+#define INSN_MATCH_C_FLDSP		0x2002
+#define INSN_MASK_C_FLDSP		0xe003
+#define INSN_MATCH_C_FSDSP		0xa002
+#define INSN_MASK_C_FSDSP		0xe003
+#define INSN_MATCH_C_FLWSP		0x6002
+#define INSN_MASK_C_FLWSP		0xe003
+#define INSN_MATCH_C_FSWSP		0xe002
+#define INSN_MASK_C_FSWSP		0xe003
+
+#define INSN_LEN(insn)			((((insn) & 0x3) < 0x3) ? 2 : 4)
+
+#if defined(CONFIG_64BIT)
+#define LOG_REGBYTES			3
+#define XLEN				64
+#else
+#define LOG_REGBYTES			2
+#define XLEN				32
+#endif
+#define REGBYTES			(1 << LOG_REGBYTES)
+#define XLEN_MINUS_16			((XLEN) - 16)
+
+#define SH_RD				7
+#define SH_RS1				15
+#define SH_RS2				20
+#define SH_RS2C				2
+
+#define RV_X(x, s, n)			(((x) >> (s)) & ((1 << (n)) - 1))
+#define RVC_LW_IMM(x)			((RV_X(x, 6, 1) << 2) | \
+					 (RV_X(x, 10, 3) << 3) | \
+					 (RV_X(x, 5, 1) << 6))
+#define RVC_LD_IMM(x)			((RV_X(x, 10, 3) << 3) | \
+					 (RV_X(x, 5, 2) << 6))
+#define RVC_LWSP_IMM(x)			((RV_X(x, 4, 3) << 2) | \
+					 (RV_X(x, 12, 1) << 5) | \
+					 (RV_X(x, 2, 2) << 6))
+#define RVC_LDSP_IMM(x)			((RV_X(x, 5, 2) << 3) | \
+					 (RV_X(x, 12, 1) << 5) | \
+					 (RV_X(x, 2, 3) << 6))
+#define RVC_SWSP_IMM(x)			((RV_X(x, 9, 4) << 2) | \
+					 (RV_X(x, 7, 2) << 6))
+#define RVC_SDSP_IMM(x)			((RV_X(x, 10, 3) << 3) | \
+					 (RV_X(x, 7, 3) << 6))
+#define RVC_RS1S(insn)			(8 + RV_X(insn, SH_RD, 3))
+#define RVC_RS2S(insn)			(8 + RV_X(insn, SH_RS2C, 3))
+#define RVC_RS2(insn)			RV_X(insn, SH_RS2C, 5)
+
+#define SHIFT_RIGHT(x, y)		\
+	((y) < 0 ? ((x) << -(y)) : ((x) >> (y)))
+
+#define REG_MASK			\
+	((1 << (5 + LOG_REGBYTES)) - (1 << LOG_REGBYTES))
+
+#define REG_OFFSET(insn, pos)		\
+	(SHIFT_RIGHT((insn), (pos) - LOG_REGBYTES) & REG_MASK)
+
+#define REG_PTR(insn, pos, regs)	\
+	(ulong *)((ulong)(regs) + REG_OFFSET(insn, pos))
+
+#define GET_RM(insn)			(((insn) >> 12) & 7)
+
+#define GET_RS1(insn, regs)		(*REG_PTR(insn, SH_RS1, regs))
+#define GET_RS2(insn, regs)		(*REG_PTR(insn, SH_RS2, regs))
+#define GET_RS1S(insn, regs)		(*REG_PTR(RVC_RS1S(insn), 0, regs))
+#define GET_RS2S(insn, regs)		(*REG_PTR(RVC_RS2S(insn), 0, regs))
+#define GET_RS2C(insn, regs)		(*REG_PTR(insn, SH_RS2C, regs))
+#define GET_SP(regs)			(*REG_PTR(2, 0, regs))
+#define SET_RD(insn, regs, val)		(*REG_PTR(insn, SH_RD, regs) = (val))
+#define IMM_I(insn)			((s32)(insn) >> 20)
+#define IMM_S(insn)			(((s32)(insn) >> 25 << 5) | \
+					 (s32)(((insn) >> 7) & 0x1f))
+#define MASK_FUNCT3			0x7000
+
+#define GET_PRECISION(insn) (((insn) >> 25) & 3)
+#define GET_RM(insn) (((insn) >> 12) & 7)
+#define PRECISION_S 0
+#define PRECISION_D 1
+
+#define STR(x) XSTR(x)
+#define XSTR(x) #x
+
+#define DECLARE_UNPRIVILEGED_LOAD_FUNCTION(type, insn)			\
+static inline type load_##type(const type *addr)			\
+{									\
+	type val;							\
+	asm (#insn " %0, %1"						\
+	: "=&r" (val) : "m" (*addr));					\
+	return val;							\
+}
+
+#define DECLARE_UNPRIVILEGED_STORE_FUNCTION(type, insn)			\
+static inline void store_##type(type *addr, type val)			\
+{									\
+	asm volatile (#insn " %0, %1\n"					\
+	: : "r" (val), "m" (*addr));					\
+}
+
+DECLARE_UNPRIVILEGED_LOAD_FUNCTION(u8, lbu)
+DECLARE_UNPRIVILEGED_LOAD_FUNCTION(u16, lhu)
+DECLARE_UNPRIVILEGED_LOAD_FUNCTION(s8, lb)
+DECLARE_UNPRIVILEGED_LOAD_FUNCTION(s16, lh)
+DECLARE_UNPRIVILEGED_LOAD_FUNCTION(s32, lw)
+DECLARE_UNPRIVILEGED_STORE_FUNCTION(u8, sb)
+DECLARE_UNPRIVILEGED_STORE_FUNCTION(u16, sh)
+DECLARE_UNPRIVILEGED_STORE_FUNCTION(u32, sw)
+#if defined(CONFIG_64BIT)
+DECLARE_UNPRIVILEGED_LOAD_FUNCTION(u32, lwu)
+DECLARE_UNPRIVILEGED_LOAD_FUNCTION(u64, ld)
+DECLARE_UNPRIVILEGED_STORE_FUNCTION(u64, sd)
+DECLARE_UNPRIVILEGED_LOAD_FUNCTION(ulong, ld)
+#else
+DECLARE_UNPRIVILEGED_LOAD_FUNCTION(u32, lw)
+DECLARE_UNPRIVILEGED_LOAD_FUNCTION(ulong, lw)
+
+static inline u64 load_u64(const u64 *addr)
+{
+	return load_u32((u32 *)addr)
+		+ ((u64)load_u32((u32 *)addr + 1) << 32);
+}
+
+static inline void store_u64(u64 *addr, u64 val)
+{
+	store_u32((u32 *)addr, val);
+	store_u32((u32 *)addr + 1, val >> 32);
+}
+#endif
+
+static inline ulong get_insn(ulong mepc)
+{
+	register ulong __mepc asm ("a2") = mepc;
+	ulong val, rvc_mask = 3, tmp;
+
+	asm ("and %[tmp], %[addr], 2\n"
+		"bnez %[tmp], 1f\n"
+#if defined(CONFIG_64BIT)
+		STR(LWU) " %[insn], (%[addr])\n"
+#else
+		STR(LW) " %[insn], (%[addr])\n"
+#endif
+		"and %[tmp], %[insn], %[rvc_mask]\n"
+		"beq %[tmp], %[rvc_mask], 2f\n"
+		"sll %[insn], %[insn], %[xlen_minus_16]\n"
+		"srl %[insn], %[insn], %[xlen_minus_16]\n"
+		"j 2f\n"
+		"1:\n"
+		"lhu %[insn], (%[addr])\n"
+		"and %[tmp], %[insn], %[rvc_mask]\n"
+		"bne %[tmp], %[rvc_mask], 2f\n"
+		"lhu %[tmp], 2(%[addr])\n"
+		"sll %[tmp], %[tmp], 16\n"
+		"add %[insn], %[insn], %[tmp]\n"
+		"2:"
+	: [insn] "=&r" (val), [tmp] "=&r" (tmp)
+	: [addr] "r" (__mepc), [rvc_mask] "r" (rvc_mask),
+	  [xlen_minus_16] "i" (XLEN_MINUS_16));
+
+	return val;
+}
+
+union reg_data {
+	u8 data_bytes[8];
+	ulong data_ulong;
+	u64 data_u64;
+};
+
+int handle_misaligned_load(struct pt_regs *regs)
+{
+	union reg_data val;
+	unsigned long epc = regs->epc;
+	unsigned long insn = get_insn(epc);
+	unsigned long addr = csr_read(mtval);
+	int i, fp = 0, shift = 0, len = 0;
+
+	regs->epc = 0;
+
+	if ((insn & INSN_MASK_LW) == INSN_MATCH_LW) {
+		len = 4;
+		shift = 8 * (sizeof(unsigned long) - len);
+#if defined(CONFIG_64BIT)
+	} else if ((insn & INSN_MASK_LD) == INSN_MATCH_LD) {
+		len = 8;
+		shift = 8 * (sizeof(unsigned long) - len);
+	} else if ((insn & INSN_MASK_LWU) == INSN_MATCH_LWU) {
+		len = 4;
+#endif
+	} else if ((insn & INSN_MASK_FLD) == INSN_MATCH_FLD) {
+		fp = 1;
+		len = 8;
+	} else if ((insn & INSN_MASK_FLW) == INSN_MATCH_FLW) {
+		fp = 1;
+		len = 4;
+	} else if ((insn & INSN_MASK_LH) == INSN_MATCH_LH) {
+		len = 2;
+		shift = 8 * (sizeof(unsigned long) - len);
+	} else if ((insn & INSN_MASK_LHU) == INSN_MATCH_LHU) {
+		len = 2;
+#if defined(CONFIG_64BIT)
+	} else if ((insn & INSN_MASK_C_LD) == INSN_MATCH_C_LD) {
+		len = 8;
+		shift = 8 * (sizeof(unsigned long) - len);
+		insn = RVC_RS2S(insn) << SH_RD;
+	} else if ((insn & INSN_MASK_C_LDSP) == INSN_MATCH_C_LDSP &&
+		   ((insn >> SH_RD) & 0x1f)) {
+		len = 8;
+		shift = 8 * (sizeof(unsigned long) - len);
+#endif
+	} else if ((insn & INSN_MASK_C_LW) == INSN_MATCH_C_LW) {
+		len = 4;
+		shift = 8 * (sizeof(unsigned long) - len);
+		insn = RVC_RS2S(insn) << SH_RD;
+	} else if ((insn & INSN_MASK_C_LWSP) == INSN_MATCH_C_LWSP &&
+		   ((insn >> SH_RD) & 0x1f)) {
+		len = 4;
+		shift = 8 * (sizeof(unsigned long) - len);
+	} else if ((insn & INSN_MASK_C_FLD) == INSN_MATCH_C_FLD) {
+		fp = 1;
+		len = 8;
+		insn = RVC_RS2S(insn) << SH_RD;
+	} else if ((insn & INSN_MASK_C_FLDSP) == INSN_MATCH_C_FLDSP) {
+		fp = 1;
+		len = 8;
+#if defined(CONFIG_32BIT)
+	} else if ((insn & INSN_MASK_C_FLW) == INSN_MATCH_C_FLW) {
+		fp = 1;
+		len = 4;
+		insn = RVC_RS2S(insn) << SH_RD;
+	} else if ((insn & INSN_MASK_C_FLWSP) == INSN_MATCH_C_FLWSP) {
+		fp = 1;
+		len = 4;
+#endif
+	} else {
+		regs->epc = epc;
+		return -1;
+	}
+
+	val.data_u64 = 0;
+	for (i = 0; i < len; i++)
+		val.data_bytes[i] = load_u8((void *)(addr + i));
+
+	if (fp)
+		return -1;
+	SET_RD(insn, regs, val.data_ulong << shift >> shift);
+
+	regs->epc = epc + INSN_LEN(insn);
+
+	return 0;
+}
+
+int handle_misaligned_store(struct pt_regs *regs)
+{
+	union reg_data val;
+	unsigned long epc = regs->epc;
+	unsigned long insn = get_insn(epc);
+	unsigned long addr = csr_read(mtval);
+	int i, len = 0;
+
+	regs->epc = 0;
+
+	val.data_ulong = GET_RS2(insn, regs);
+
+	if ((insn & INSN_MASK_SW) == INSN_MATCH_SW) {
+		len = 4;
+#if defined(CONFIG_64BIT)
+	} else if ((insn & INSN_MASK_SD) == INSN_MATCH_SD) {
+		len = 8;
+#endif
+	} else if ((insn & INSN_MASK_SH) == INSN_MATCH_SH) {
+		len = 2;
+#if defined(CONFIG_64BIT)
+	} else if ((insn & INSN_MASK_C_SD) == INSN_MATCH_C_SD) {
+		len = 8;
+		val.data_ulong = GET_RS2S(insn, regs);
+	} else if ((insn & INSN_MASK_C_SDSP) == INSN_MATCH_C_SDSP &&
+		   ((insn >> SH_RD) & 0x1f)) {
+		len = 8;
+		val.data_ulong = GET_RS2C(insn, regs);
+#endif
+	} else if ((insn & INSN_MASK_C_SW) == INSN_MATCH_C_SW) {
+		len = 4;
+		val.data_ulong = GET_RS2S(insn, regs);
+	} else if ((insn & INSN_MASK_C_SWSP) == INSN_MATCH_C_SWSP &&
+		   ((insn >> SH_RD) & 0x1f)) {
+		len = 4;
+		val.data_ulong = GET_RS2C(insn, regs);
+	} else {
+		regs->epc = epc;
+		return -1;
+	}
+
+	for (i = 0; i < len; i++)
+		store_u8((void *)(addr + i), val.data_bytes[i]);
+
+	regs->epc = epc + INSN_LEN(insn);
+
+	return 0;
+}
-- 
2.24.1


