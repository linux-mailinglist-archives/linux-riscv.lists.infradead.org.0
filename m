Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A40CD176974
	for <lists+linux-riscv@lfdr.de>; Tue,  3 Mar 2020 01:50:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qe9Ftrwtc5vv433eqPmI2jMmzcsISPthFMGQg2bZmig=; b=GaPToNsESryXMj
	/B88ypj3ED2mXrN/inivB9E1x+pKGmK2JrB/WoABZAJEQ9zUJNenOdLAF8Ifa6b7ngw/9N0u7AQKJ
	v6pitaPd1dkwx1Uu/YZIvG8VubS+DXkXWal7vHD+Ru6qTIUy2hiWKioumyhIApRSM3tfv9SwPuO/2
	FrnBezSn/Z8koK0KXrBY/WAeRfvp5nMItRi3cFT9kULF/0+Gihr8rwg3vbkVdqugMTMwoeMTV8XvT
	50fZgFzEZPz061w1O+cuselVPa6PNZmQK0GWxPO0Bgr9nV+wWR3nLpwE8YmFr68vmoJPf9LUWnBmT
	QqfuVwBAlidy11LyN39w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8vlp-0004GS-NB; Tue, 03 Mar 2020 00:50:49 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8vlj-0004Dv-Sq
 for linux-riscv@lists.infradead.org; Tue, 03 Mar 2020 00:50:46 +0000
Received: by mail-pj1-x1041.google.com with SMTP id o5so538359pjs.4
 for <linux-riscv@lists.infradead.org>; Mon, 02 Mar 2020 16:50:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cs.washington.edu; s=goo201206;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Qe9Ftrwtc5vv433eqPmI2jMmzcsISPthFMGQg2bZmig=;
 b=iFkHCBL2S40a4vZH+TNIzqAARBPOdIsBqCaCsuF5PvpNzxEGsmoFxT5fs3ODffWPh4
 4kBwLKIiKDSCPjckPtKlA0lUKmBYIvcL3GYKkUDgGNaY6wPgZI9YOtxWGNJANNJ9Byj5
 BnIkQMBU0yiyieUsdwLncQdB25n/81L/gFXrE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Qe9Ftrwtc5vv433eqPmI2jMmzcsISPthFMGQg2bZmig=;
 b=WeqhMkNg29P49epnYI7hMi12T/HUtLyXoiKNM36d3Y7grD6ghv9KinNZ3dUp0BGdn0
 NIC+u19R+KkWAktnSUdf6ggsgrajoA7XQMVDOsytXfg5NOttCi9HvYES5yL7ztZojUO7
 /dVwJyzskSyZlZxMLzIkzlnKX2i5jrIca3Ir2rFdcmotCzpXH7YLcRTotghcyhCU8Rj4
 eoSoL5S8zPzDbLhWCIpHRV2Z+0t/d2xG2RHaOpVbdW3slME33K23R9TAC8JcHWDVSjXc
 QK5f+89bopGGmXVr0m3DoqHgeKQUc+wbVJijeqIgaXU7gLQAJ9RhT68xgU2Qp7V55eFU
 Dxqw==
X-Gm-Message-State: ANhLgQ3MBKhA5kfVydP2aRtVWst1um4FnHjVl5lHHadRDCv8aSbA8wPl
 5W9trU/jasnlnPSljmdv/pkMIw==
X-Google-Smtp-Source: ADFU+vuuoE97b+ROYogPx4VmW+Fvasj3t0PPjCHrGB1wbpgIIfW4+LEsrsZtMVeFtKe+Ak51lfc0QA==
X-Received: by 2002:a17:90a:d101:: with SMTP id
 l1mr1263365pju.130.1583196641789; 
 Mon, 02 Mar 2020 16:50:41 -0800 (PST)
Received: from ryzen.cs.washington.edu ([2607:4000:200:11:b5cd:49c6:f4f6:8295])
 by smtp.gmail.com with ESMTPSA id c15sm357529pja.30.2020.03.02.16.50.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Mar 2020 16:50:41 -0800 (PST)
From: Luke Nelson <lukenels@cs.washington.edu>
X-Google-Original-From: Luke Nelson <luke.r.nels@gmail.com>
To: bpf@vger.kernel.org
Subject: [PATCH bpf-next v4 1/4] riscv,
 bpf: move common riscv JIT code to header
Date: Mon,  2 Mar 2020 16:50:32 -0800
Message-Id: <20200303005035.13814-2-luke.r.nels@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200303005035.13814-1-luke.r.nels@gmail.com>
References: <20200303005035.13814-1-luke.r.nels@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_165043_937005_5952776F 
X-CRM114-Status: GOOD (  15.28  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1041 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Song Liu <songliubraving@fb.com>, linux-doc@vger.kernel.org,
 Yonghong Song <yhs@fb.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 Alexei Starovoitov <ast@kernel.org>, netdev@vger.kernel.org,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 linux-riscv@lists.infradead.org, Rob Herring <robh@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>, Jonathan Corbet <corbet@lwn.net>,
 Jakub Kicinski <kuba@kernel.org>, Andrii Nakryiko <andriin@fb.com>,
 Xi Wang <xi.wang@gmail.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Luke Nelson <luke.r.nels@gmail.com>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 =?UTF-8?q?Bj=C3=B6rn=20T=C3=B6pel?= <bjorn.topel@gmail.com>,
 linux-kernel@vger.kernel.org, Martin KaFai Lau <kafai@fb.com>,
 Stephen Hemminger <stephen@networkplumber.org>,
 Palmer Dabbelt <palmer@dabbelt.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "David S. Miller" <davem@davemloft.net>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

This patch factors out code that can be used by both the RV64 and RV32
JITs to a common header.

Rename rv_sb_insn/rv_uj_insn to rv_b_insn/rv_j_insn to match the RISC-V
specification.

Co-developed-by: Xi Wang <xi.wang@gmail.com>
Signed-off-by: Xi Wang <xi.wang@gmail.com>
Signed-off-by: Luke Nelson <luke.r.nels@gmail.com>
---
We could put more code into a shared .c file in the future (e.g.,
build_body).  It seems to make sense right now to first factor
common data structures and helper functions into a header.
---
 arch/riscv/net/bpf_jit.h      | 504 ++++++++++++++++++++++++++++++++++
 arch/riscv/net/bpf_jit_comp.c | 443 +-----------------------------
 2 files changed, 505 insertions(+), 442 deletions(-)
 create mode 100644 arch/riscv/net/bpf_jit.h

diff --git a/arch/riscv/net/bpf_jit.h b/arch/riscv/net/bpf_jit.h
new file mode 100644
index 000000000000..6f45f95bc4d0
--- /dev/null
+++ b/arch/riscv/net/bpf_jit.h
@@ -0,0 +1,504 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Common functionality for RV32 and RV64 BPF JIT compilers
+ *
+ * Copyright (c) 2019 Björn Töpel <bjorn.topel@gmail.com>
+ * Copyright (c) 2020 Luke Nelson <luke.r.nels@gmail.com>
+ * Copyright (c) 2020 Xi Wang <xi.wang@gmail.com>
+ */
+
+#ifndef _BPF_JIT_H
+#define _BPF_JIT_H
+
+#include <linux/bpf.h>
+#include <linux/filter.h>
+#include <asm/cacheflush.h>
+
+enum {
+	RV_REG_ZERO =	0,	/* The constant value 0 */
+	RV_REG_RA =	1,	/* Return address */
+	RV_REG_SP =	2,	/* Stack pointer */
+	RV_REG_GP =	3,	/* Global pointer */
+	RV_REG_TP =	4,	/* Thread pointer */
+	RV_REG_T0 =	5,	/* Temporaries */
+	RV_REG_T1 =	6,
+	RV_REG_T2 =	7,
+	RV_REG_FP =	8,	/* Saved register/frame pointer */
+	RV_REG_S1 =	9,	/* Saved register */
+	RV_REG_A0 =	10,	/* Function argument/return values */
+	RV_REG_A1 =	11,	/* Function arguments */
+	RV_REG_A2 =	12,
+	RV_REG_A3 =	13,
+	RV_REG_A4 =	14,
+	RV_REG_A5 =	15,
+	RV_REG_A6 =	16,
+	RV_REG_A7 =	17,
+	RV_REG_S2 =	18,	/* Saved registers */
+	RV_REG_S3 =	19,
+	RV_REG_S4 =	20,
+	RV_REG_S5 =	21,
+	RV_REG_S6 =	22,
+	RV_REG_S7 =	23,
+	RV_REG_S8 =	24,
+	RV_REG_S9 =	25,
+	RV_REG_S10 =	26,
+	RV_REG_S11 =	27,
+	RV_REG_T3 =	28,	/* Temporaries */
+	RV_REG_T4 =	29,
+	RV_REG_T5 =	30,
+	RV_REG_T6 =	31,
+};
+
+struct rv_jit_context {
+	struct bpf_prog *prog;
+	u32 *insns;		/* RV insns */
+	int ninsns;
+	int epilogue_offset;
+	int *offset;		/* BPF to RV */
+	unsigned long flags;
+	int stack_size;
+};
+
+struct rv_jit_data {
+	struct bpf_binary_header *header;
+	u8 *image;
+	struct rv_jit_context ctx;
+};
+
+static inline void bpf_fill_ill_insns(void *area, unsigned int size)
+{
+	memset(area, 0, size);
+}
+
+static inline void bpf_flush_icache(void *start, void *end)
+{
+	flush_icache_range((unsigned long)start, (unsigned long)end);
+}
+
+static inline void emit(const u32 insn, struct rv_jit_context *ctx)
+{
+	if (ctx->insns)
+		ctx->insns[ctx->ninsns] = insn;
+
+	ctx->ninsns++;
+}
+
+static inline int epilogue_offset(struct rv_jit_context *ctx)
+{
+	int to = ctx->epilogue_offset, from = ctx->ninsns;
+
+	return (to - from) << 2;
+}
+
+/* Return -1 or inverted cond. */
+static inline int invert_bpf_cond(u8 cond)
+{
+	switch (cond) {
+	case BPF_JEQ:
+		return BPF_JNE;
+	case BPF_JGT:
+		return BPF_JLE;
+	case BPF_JLT:
+		return BPF_JGE;
+	case BPF_JGE:
+		return BPF_JLT;
+	case BPF_JLE:
+		return BPF_JGT;
+	case BPF_JNE:
+		return BPF_JEQ;
+	case BPF_JSGT:
+		return BPF_JSLE;
+	case BPF_JSLT:
+		return BPF_JSGE;
+	case BPF_JSGE:
+		return BPF_JSLT;
+	case BPF_JSLE:
+		return BPF_JSGT;
+	}
+	return -1;
+}
+
+static inline bool is_12b_int(long val)
+{
+	return -(1L << 11) <= val && val < (1L << 11);
+}
+
+static inline int is_12b_check(int off, int insn)
+{
+	if (!is_12b_int(off)) {
+		pr_err("bpf-jit: insn=%d 12b < offset=%d not supported yet!\n",
+		       insn, (int)off);
+		return -1;
+	}
+	return 0;
+}
+
+static inline bool is_13b_int(long val)
+{
+	return -(1L << 12) <= val && val < (1L << 12);
+}
+
+static inline bool is_21b_int(long val)
+{
+	return -(1L << 20) <= val && val < (1L << 20);
+}
+
+static inline int rv_offset(int insn, int off, struct rv_jit_context *ctx)
+{
+	int from, to;
+
+	off++; /* BPF branch is from PC+1, RV is from PC */
+	from = (insn > 0) ? ctx->offset[insn - 1] : 0;
+	to = (insn + off > 0) ? ctx->offset[insn + off - 1] : 0;
+	return (to - from) << 2;
+}
+
+/* Instruction formats. */
+
+static inline u32 rv_r_insn(u8 funct7, u8 rs2, u8 rs1, u8 funct3, u8 rd,
+			    u8 opcode)
+{
+	return (funct7 << 25) | (rs2 << 20) | (rs1 << 15) | (funct3 << 12) |
+		(rd << 7) | opcode;
+}
+
+static inline u32 rv_i_insn(u16 imm11_0, u8 rs1, u8 funct3, u8 rd, u8 opcode)
+{
+	return (imm11_0 << 20) | (rs1 << 15) | (funct3 << 12) | (rd << 7) |
+		opcode;
+}
+
+static inline u32 rv_s_insn(u16 imm11_0, u8 rs2, u8 rs1, u8 funct3, u8 opcode)
+{
+	u8 imm11_5 = imm11_0 >> 5, imm4_0 = imm11_0 & 0x1f;
+
+	return (imm11_5 << 25) | (rs2 << 20) | (rs1 << 15) | (funct3 << 12) |
+		(imm4_0 << 7) | opcode;
+}
+
+static inline u32 rv_b_insn(u16 imm12_1, u8 rs2, u8 rs1, u8 funct3, u8 opcode)
+{
+	u8 imm12 = ((imm12_1 & 0x800) >> 5) | ((imm12_1 & 0x3f0) >> 4);
+	u8 imm4_1 = ((imm12_1 & 0xf) << 1) | ((imm12_1 & 0x400) >> 10);
+
+	return (imm12 << 25) | (rs2 << 20) | (rs1 << 15) | (funct3 << 12) |
+		(imm4_1 << 7) | opcode;
+}
+
+static inline u32 rv_u_insn(u32 imm31_12, u8 rd, u8 opcode)
+{
+	return (imm31_12 << 12) | (rd << 7) | opcode;
+}
+
+static inline u32 rv_j_insn(u32 imm20_1, u8 rd, u8 opcode)
+{
+	u32 imm;
+
+	imm = (imm20_1 & 0x80000) | ((imm20_1 & 0x3ff) << 9) |
+		((imm20_1 & 0x400) >> 2) | ((imm20_1 & 0x7f800) >> 11);
+
+	return (imm << 12) | (rd << 7) | opcode;
+}
+
+static inline u32 rv_amo_insn(u8 funct5, u8 aq, u8 rl, u8 rs2, u8 rs1,
+			      u8 funct3, u8 rd, u8 opcode)
+{
+	u8 funct7 = (funct5 << 2) | (aq << 1) | rl;
+
+	return rv_r_insn(funct7, rs2, rs1, funct3, rd, opcode);
+}
+
+/* Instructions shared by both RV32 and RV64. */
+
+static inline u32 rv_addi(u8 rd, u8 rs1, u16 imm11_0)
+{
+	return rv_i_insn(imm11_0, rs1, 0, rd, 0x13);
+}
+
+static inline u32 rv_andi(u8 rd, u8 rs1, u16 imm11_0)
+{
+	return rv_i_insn(imm11_0, rs1, 7, rd, 0x13);
+}
+
+static inline u32 rv_ori(u8 rd, u8 rs1, u16 imm11_0)
+{
+	return rv_i_insn(imm11_0, rs1, 6, rd, 0x13);
+}
+
+static inline u32 rv_xori(u8 rd, u8 rs1, u16 imm11_0)
+{
+	return rv_i_insn(imm11_0, rs1, 4, rd, 0x13);
+}
+
+static inline u32 rv_slli(u8 rd, u8 rs1, u16 imm11_0)
+{
+	return rv_i_insn(imm11_0, rs1, 1, rd, 0x13);
+}
+
+static inline u32 rv_srli(u8 rd, u8 rs1, u16 imm11_0)
+{
+	return rv_i_insn(imm11_0, rs1, 5, rd, 0x13);
+}
+
+static inline u32 rv_srai(u8 rd, u8 rs1, u16 imm11_0)
+{
+	return rv_i_insn(0x400 | imm11_0, rs1, 5, rd, 0x13);
+}
+
+static inline u32 rv_lui(u8 rd, u32 imm31_12)
+{
+	return rv_u_insn(imm31_12, rd, 0x37);
+}
+
+static inline u32 rv_auipc(u8 rd, u32 imm31_12)
+{
+	return rv_u_insn(imm31_12, rd, 0x17);
+}
+
+static inline u32 rv_add(u8 rd, u8 rs1, u8 rs2)
+{
+	return rv_r_insn(0, rs2, rs1, 0, rd, 0x33);
+}
+
+static inline u32 rv_sub(u8 rd, u8 rs1, u8 rs2)
+{
+	return rv_r_insn(0x20, rs2, rs1, 0, rd, 0x33);
+}
+
+static inline u32 rv_sltu(u8 rd, u8 rs1, u8 rs2)
+{
+	return rv_r_insn(0, rs2, rs1, 3, rd, 0x33);
+}
+
+static inline u32 rv_and(u8 rd, u8 rs1, u8 rs2)
+{
+	return rv_r_insn(0, rs2, rs1, 7, rd, 0x33);
+}
+
+static inline u32 rv_or(u8 rd, u8 rs1, u8 rs2)
+{
+	return rv_r_insn(0, rs2, rs1, 6, rd, 0x33);
+}
+
+static inline u32 rv_xor(u8 rd, u8 rs1, u8 rs2)
+{
+	return rv_r_insn(0, rs2, rs1, 4, rd, 0x33);
+}
+
+static inline u32 rv_sll(u8 rd, u8 rs1, u8 rs2)
+{
+	return rv_r_insn(0, rs2, rs1, 1, rd, 0x33);
+}
+
+static inline u32 rv_srl(u8 rd, u8 rs1, u8 rs2)
+{
+	return rv_r_insn(0, rs2, rs1, 5, rd, 0x33);
+}
+
+static inline u32 rv_sra(u8 rd, u8 rs1, u8 rs2)
+{
+	return rv_r_insn(0x20, rs2, rs1, 5, rd, 0x33);
+}
+
+static inline u32 rv_mul(u8 rd, u8 rs1, u8 rs2)
+{
+	return rv_r_insn(1, rs2, rs1, 0, rd, 0x33);
+}
+
+static inline u32 rv_mulhu(u8 rd, u8 rs1, u8 rs2)
+{
+	return rv_r_insn(1, rs2, rs1, 3, rd, 0x33);
+}
+
+static inline u32 rv_divu(u8 rd, u8 rs1, u8 rs2)
+{
+	return rv_r_insn(1, rs2, rs1, 5, rd, 0x33);
+}
+
+static inline u32 rv_remu(u8 rd, u8 rs1, u8 rs2)
+{
+	return rv_r_insn(1, rs2, rs1, 7, rd, 0x33);
+}
+
+static inline u32 rv_jal(u8 rd, u32 imm20_1)
+{
+	return rv_j_insn(imm20_1, rd, 0x6f);
+}
+
+static inline u32 rv_jalr(u8 rd, u8 rs1, u16 imm11_0)
+{
+	return rv_i_insn(imm11_0, rs1, 0, rd, 0x67);
+}
+
+static inline u32 rv_beq(u8 rs1, u8 rs2, u16 imm12_1)
+{
+	return rv_b_insn(imm12_1, rs2, rs1, 0, 0x63);
+}
+
+static inline u32 rv_bne(u8 rs1, u8 rs2, u16 imm12_1)
+{
+	return rv_b_insn(imm12_1, rs2, rs1, 1, 0x63);
+}
+
+static inline u32 rv_bltu(u8 rs1, u8 rs2, u16 imm12_1)
+{
+	return rv_b_insn(imm12_1, rs2, rs1, 6, 0x63);
+}
+
+static inline u32 rv_bgtu(u8 rs1, u8 rs2, u16 imm12_1)
+{
+	return rv_b_insn(imm12_1, rs1, rs2, 6, 0x63);
+}
+
+static inline u32 rv_bgeu(u8 rs1, u8 rs2, u16 imm12_1)
+{
+	return rv_b_insn(imm12_1, rs2, rs1, 7, 0x63);
+}
+
+static inline u32 rv_bleu(u8 rs1, u8 rs2, u16 imm12_1)
+{
+	return rv_b_insn(imm12_1, rs1, rs2, 7, 0x63);
+}
+
+static inline u32 rv_blt(u8 rs1, u8 rs2, u16 imm12_1)
+{
+	return rv_b_insn(imm12_1, rs2, rs1, 4, 0x63);
+}
+
+static inline u32 rv_bgt(u8 rs1, u8 rs2, u16 imm12_1)
+{
+	return rv_b_insn(imm12_1, rs1, rs2, 4, 0x63);
+}
+
+static inline u32 rv_bge(u8 rs1, u8 rs2, u16 imm12_1)
+{
+	return rv_b_insn(imm12_1, rs2, rs1, 5, 0x63);
+}
+
+static inline u32 rv_ble(u8 rs1, u8 rs2, u16 imm12_1)
+{
+	return rv_b_insn(imm12_1, rs1, rs2, 5, 0x63);
+}
+
+static inline u32 rv_lw(u8 rd, u16 imm11_0, u8 rs1)
+{
+	return rv_i_insn(imm11_0, rs1, 2, rd, 0x03);
+}
+
+static inline u32 rv_lbu(u8 rd, u16 imm11_0, u8 rs1)
+{
+	return rv_i_insn(imm11_0, rs1, 4, rd, 0x03);
+}
+
+static inline u32 rv_lhu(u8 rd, u16 imm11_0, u8 rs1)
+{
+	return rv_i_insn(imm11_0, rs1, 5, rd, 0x03);
+}
+
+static inline u32 rv_sb(u8 rs1, u16 imm11_0, u8 rs2)
+{
+	return rv_s_insn(imm11_0, rs2, rs1, 0, 0x23);
+}
+
+static inline u32 rv_sh(u8 rs1, u16 imm11_0, u8 rs2)
+{
+	return rv_s_insn(imm11_0, rs2, rs1, 1, 0x23);
+}
+
+static inline u32 rv_sw(u8 rs1, u16 imm11_0, u8 rs2)
+{
+	return rv_s_insn(imm11_0, rs2, rs1, 2, 0x23);
+}
+
+static inline u32 rv_amoadd_w(u8 rd, u8 rs2, u8 rs1, u8 aq, u8 rl)
+{
+	return rv_amo_insn(0, aq, rl, rs2, rs1, 2, rd, 0x2f);
+}
+
+#if __riscv_xlen == 64
+
+/* RV64-only instructions. */
+
+static inline u32 rv_addiw(u8 rd, u8 rs1, u16 imm11_0)
+{
+	return rv_i_insn(imm11_0, rs1, 0, rd, 0x1b);
+}
+
+static inline u32 rv_slliw(u8 rd, u8 rs1, u16 imm11_0)
+{
+	return rv_i_insn(imm11_0, rs1, 1, rd, 0x1b);
+}
+
+static inline u32 rv_srliw(u8 rd, u8 rs1, u16 imm11_0)
+{
+	return rv_i_insn(imm11_0, rs1, 5, rd, 0x1b);
+}
+
+static inline u32 rv_sraiw(u8 rd, u8 rs1, u16 imm11_0)
+{
+	return rv_i_insn(0x400 | imm11_0, rs1, 5, rd, 0x1b);
+}
+
+static inline u32 rv_addw(u8 rd, u8 rs1, u8 rs2)
+{
+	return rv_r_insn(0, rs2, rs1, 0, rd, 0x3b);
+}
+
+static inline u32 rv_subw(u8 rd, u8 rs1, u8 rs2)
+{
+	return rv_r_insn(0x20, rs2, rs1, 0, rd, 0x3b);
+}
+
+static inline u32 rv_sllw(u8 rd, u8 rs1, u8 rs2)
+{
+	return rv_r_insn(0, rs2, rs1, 1, rd, 0x3b);
+}
+
+static inline u32 rv_srlw(u8 rd, u8 rs1, u8 rs2)
+{
+	return rv_r_insn(0, rs2, rs1, 5, rd, 0x3b);
+}
+
+static inline u32 rv_sraw(u8 rd, u8 rs1, u8 rs2)
+{
+	return rv_r_insn(0x20, rs2, rs1, 5, rd, 0x3b);
+}
+
+static inline u32 rv_mulw(u8 rd, u8 rs1, u8 rs2)
+{
+	return rv_r_insn(1, rs2, rs1, 0, rd, 0x3b);
+}
+
+static inline u32 rv_divuw(u8 rd, u8 rs1, u8 rs2)
+{
+	return rv_r_insn(1, rs2, rs1, 5, rd, 0x3b);
+}
+
+static inline u32 rv_remuw(u8 rd, u8 rs1, u8 rs2)
+{
+	return rv_r_insn(1, rs2, rs1, 7, rd, 0x3b);
+}
+
+static inline u32 rv_ld(u8 rd, u16 imm11_0, u8 rs1)
+{
+	return rv_i_insn(imm11_0, rs1, 3, rd, 0x03);
+}
+
+static inline u32 rv_lwu(u8 rd, u16 imm11_0, u8 rs1)
+{
+	return rv_i_insn(imm11_0, rs1, 6, rd, 0x03);
+}
+
+static inline u32 rv_sd(u8 rs1, u16 imm11_0, u8 rs2)
+{
+	return rv_s_insn(imm11_0, rs2, rs1, 3, 0x23);
+}
+
+static inline u32 rv_amoadd_d(u8 rd, u8 rs2, u8 rs1, u8 aq, u8 rl)
+{
+	return rv_amo_insn(0, aq, rl, rs2, rs1, 3, rd, 0x2f);
+}
+
+#endif /* __riscv_xlen == 64 */
+
+#endif /* _BPF_JIT_H */
diff --git a/arch/riscv/net/bpf_jit_comp.c b/arch/riscv/net/bpf_jit_comp.c
index 483f4ad7f4dc..c1a60bb952c6 100644
--- a/arch/riscv/net/bpf_jit_comp.c
+++ b/arch/riscv/net/bpf_jit_comp.c
@@ -7,42 +7,7 @@
 
 #include <linux/bpf.h>
 #include <linux/filter.h>
-#include <asm/cacheflush.h>
-
-enum {
-	RV_REG_ZERO =	0,	/* The constant value 0 */
-	RV_REG_RA =	1,	/* Return address */
-	RV_REG_SP =	2,	/* Stack pointer */
-	RV_REG_GP =	3,	/* Global pointer */
-	RV_REG_TP =	4,	/* Thread pointer */
-	RV_REG_T0 =	5,	/* Temporaries */
-	RV_REG_T1 =	6,
-	RV_REG_T2 =	7,
-	RV_REG_FP =	8,
-	RV_REG_S1 =	9,	/* Saved registers */
-	RV_REG_A0 =	10,	/* Function argument/return values */
-	RV_REG_A1 =	11,	/* Function arguments */
-	RV_REG_A2 =	12,
-	RV_REG_A3 =	13,
-	RV_REG_A4 =	14,
-	RV_REG_A5 =	15,
-	RV_REG_A6 =	16,
-	RV_REG_A7 =	17,
-	RV_REG_S2 =	18,	/* Saved registers */
-	RV_REG_S3 =	19,
-	RV_REG_S4 =	20,
-	RV_REG_S5 =	21,
-	RV_REG_S6 =	22,
-	RV_REG_S7 =	23,
-	RV_REG_S8 =	24,
-	RV_REG_S9 =	25,
-	RV_REG_S10 =	26,
-	RV_REG_S11 =	27,
-	RV_REG_T3 =	28,	/* Temporaries */
-	RV_REG_T4 =	29,
-	RV_REG_T5 =	30,
-	RV_REG_T6 =	31,
-};
+#include "bpf_jit.h"
 
 #define RV_REG_TCC RV_REG_A6
 #define RV_REG_TCC_SAVED RV_REG_S6 /* Store A6 in S6 if program do calls */
@@ -73,22 +38,6 @@ enum {
 	RV_CTX_F_SEEN_S6 =		RV_REG_S6,
 };
 
-struct rv_jit_context {
-	struct bpf_prog *prog;
-	u32 *insns; /* RV insns */
-	int ninsns;
-	int epilogue_offset;
-	int *offset; /* BPF to RV */
-	unsigned long flags;
-	int stack_size;
-};
-
-struct rv_jit_data {
-	struct bpf_binary_header *header;
-	u8 *image;
-	struct rv_jit_context ctx;
-};
-
 static u8 bpf_to_rv_reg(int bpf_reg, struct rv_jit_context *ctx)
 {
 	u8 reg = regmap[bpf_reg];
@@ -156,346 +105,11 @@ static u8 rv_tail_call_reg(struct rv_jit_context *ctx)
 	return RV_REG_A6;
 }
 
-static void emit(const u32 insn, struct rv_jit_context *ctx)
-{
-	if (ctx->insns)
-		ctx->insns[ctx->ninsns] = insn;
-
-	ctx->ninsns++;
-}
-
-static u32 rv_r_insn(u8 funct7, u8 rs2, u8 rs1, u8 funct3, u8 rd, u8 opcode)
-{
-	return (funct7 << 25) | (rs2 << 20) | (rs1 << 15) | (funct3 << 12) |
-		(rd << 7) | opcode;
-}
-
-static u32 rv_i_insn(u16 imm11_0, u8 rs1, u8 funct3, u8 rd, u8 opcode)
-{
-	return (imm11_0 << 20) | (rs1 << 15) | (funct3 << 12) | (rd << 7) |
-		opcode;
-}
-
-static u32 rv_s_insn(u16 imm11_0, u8 rs2, u8 rs1, u8 funct3, u8 opcode)
-{
-	u8 imm11_5 = imm11_0 >> 5, imm4_0 = imm11_0 & 0x1f;
-
-	return (imm11_5 << 25) | (rs2 << 20) | (rs1 << 15) | (funct3 << 12) |
-		(imm4_0 << 7) | opcode;
-}
-
-static u32 rv_sb_insn(u16 imm12_1, u8 rs2, u8 rs1, u8 funct3, u8 opcode)
-{
-	u8 imm12 = ((imm12_1 & 0x800) >> 5) | ((imm12_1 & 0x3f0) >> 4);
-	u8 imm4_1 = ((imm12_1 & 0xf) << 1) | ((imm12_1 & 0x400) >> 10);
-
-	return (imm12 << 25) | (rs2 << 20) | (rs1 << 15) | (funct3 << 12) |
-		(imm4_1 << 7) | opcode;
-}
-
-static u32 rv_u_insn(u32 imm31_12, u8 rd, u8 opcode)
-{
-	return (imm31_12 << 12) | (rd << 7) | opcode;
-}
-
-static u32 rv_uj_insn(u32 imm20_1, u8 rd, u8 opcode)
-{
-	u32 imm;
-
-	imm = (imm20_1 & 0x80000) |  ((imm20_1 & 0x3ff) << 9) |
-	      ((imm20_1 & 0x400) >> 2) | ((imm20_1 & 0x7f800) >> 11);
-
-	return (imm << 12) | (rd << 7) | opcode;
-}
-
-static u32 rv_amo_insn(u8 funct5, u8 aq, u8 rl, u8 rs2, u8 rs1,
-		       u8 funct3, u8 rd, u8 opcode)
-{
-	u8 funct7 = (funct5 << 2) | (aq << 1) | rl;
-
-	return rv_r_insn(funct7, rs2, rs1, funct3, rd, opcode);
-}
-
-static u32 rv_addiw(u8 rd, u8 rs1, u16 imm11_0)
-{
-	return rv_i_insn(imm11_0, rs1, 0, rd, 0x1b);
-}
-
-static u32 rv_addi(u8 rd, u8 rs1, u16 imm11_0)
-{
-	return rv_i_insn(imm11_0, rs1, 0, rd, 0x13);
-}
-
-static u32 rv_addw(u8 rd, u8 rs1, u8 rs2)
-{
-	return rv_r_insn(0, rs2, rs1, 0, rd, 0x3b);
-}
-
-static u32 rv_add(u8 rd, u8 rs1, u8 rs2)
-{
-	return rv_r_insn(0, rs2, rs1, 0, rd, 0x33);
-}
-
-static u32 rv_subw(u8 rd, u8 rs1, u8 rs2)
-{
-	return rv_r_insn(0x20, rs2, rs1, 0, rd, 0x3b);
-}
-
-static u32 rv_sub(u8 rd, u8 rs1, u8 rs2)
-{
-	return rv_r_insn(0x20, rs2, rs1, 0, rd, 0x33);
-}
-
-static u32 rv_and(u8 rd, u8 rs1, u8 rs2)
-{
-	return rv_r_insn(0, rs2, rs1, 7, rd, 0x33);
-}
-
-static u32 rv_or(u8 rd, u8 rs1, u8 rs2)
-{
-	return rv_r_insn(0, rs2, rs1, 6, rd, 0x33);
-}
-
-static u32 rv_xor(u8 rd, u8 rs1, u8 rs2)
-{
-	return rv_r_insn(0, rs2, rs1, 4, rd, 0x33);
-}
-
-static u32 rv_mulw(u8 rd, u8 rs1, u8 rs2)
-{
-	return rv_r_insn(1, rs2, rs1, 0, rd, 0x3b);
-}
-
-static u32 rv_mul(u8 rd, u8 rs1, u8 rs2)
-{
-	return rv_r_insn(1, rs2, rs1, 0, rd, 0x33);
-}
-
-static u32 rv_divuw(u8 rd, u8 rs1, u8 rs2)
-{
-	return rv_r_insn(1, rs2, rs1, 5, rd, 0x3b);
-}
-
-static u32 rv_divu(u8 rd, u8 rs1, u8 rs2)
-{
-	return rv_r_insn(1, rs2, rs1, 5, rd, 0x33);
-}
-
-static u32 rv_remuw(u8 rd, u8 rs1, u8 rs2)
-{
-	return rv_r_insn(1, rs2, rs1, 7, rd, 0x3b);
-}
-
-static u32 rv_remu(u8 rd, u8 rs1, u8 rs2)
-{
-	return rv_r_insn(1, rs2, rs1, 7, rd, 0x33);
-}
-
-static u32 rv_sllw(u8 rd, u8 rs1, u8 rs2)
-{
-	return rv_r_insn(0, rs2, rs1, 1, rd, 0x3b);
-}
-
-static u32 rv_sll(u8 rd, u8 rs1, u8 rs2)
-{
-	return rv_r_insn(0, rs2, rs1, 1, rd, 0x33);
-}
-
-static u32 rv_srlw(u8 rd, u8 rs1, u8 rs2)
-{
-	return rv_r_insn(0, rs2, rs1, 5, rd, 0x3b);
-}
-
-static u32 rv_srl(u8 rd, u8 rs1, u8 rs2)
-{
-	return rv_r_insn(0, rs2, rs1, 5, rd, 0x33);
-}
-
-static u32 rv_sraw(u8 rd, u8 rs1, u8 rs2)
-{
-	return rv_r_insn(0x20, rs2, rs1, 5, rd, 0x3b);
-}
-
-static u32 rv_sra(u8 rd, u8 rs1, u8 rs2)
-{
-	return rv_r_insn(0x20, rs2, rs1, 5, rd, 0x33);
-}
-
-static u32 rv_lui(u8 rd, u32 imm31_12)
-{
-	return rv_u_insn(imm31_12, rd, 0x37);
-}
-
-static u32 rv_slli(u8 rd, u8 rs1, u16 imm11_0)
-{
-	return rv_i_insn(imm11_0, rs1, 1, rd, 0x13);
-}
-
-static u32 rv_andi(u8 rd, u8 rs1, u16 imm11_0)
-{
-	return rv_i_insn(imm11_0, rs1, 7, rd, 0x13);
-}
-
-static u32 rv_ori(u8 rd, u8 rs1, u16 imm11_0)
-{
-	return rv_i_insn(imm11_0, rs1, 6, rd, 0x13);
-}
-
-static u32 rv_xori(u8 rd, u8 rs1, u16 imm11_0)
-{
-	return rv_i_insn(imm11_0, rs1, 4, rd, 0x13);
-}
-
-static u32 rv_slliw(u8 rd, u8 rs1, u16 imm11_0)
-{
-	return rv_i_insn(imm11_0, rs1, 1, rd, 0x1b);
-}
-
-static u32 rv_srliw(u8 rd, u8 rs1, u16 imm11_0)
-{
-	return rv_i_insn(imm11_0, rs1, 5, rd, 0x1b);
-}
-
-static u32 rv_srli(u8 rd, u8 rs1, u16 imm11_0)
-{
-	return rv_i_insn(imm11_0, rs1, 5, rd, 0x13);
-}
-
-static u32 rv_sraiw(u8 rd, u8 rs1, u16 imm11_0)
-{
-	return rv_i_insn(0x400 | imm11_0, rs1, 5, rd, 0x1b);
-}
-
-static u32 rv_srai(u8 rd, u8 rs1, u16 imm11_0)
-{
-	return rv_i_insn(0x400 | imm11_0, rs1, 5, rd, 0x13);
-}
-
-static u32 rv_jal(u8 rd, u32 imm20_1)
-{
-	return rv_uj_insn(imm20_1, rd, 0x6f);
-}
-
-static u32 rv_jalr(u8 rd, u8 rs1, u16 imm11_0)
-{
-	return rv_i_insn(imm11_0, rs1, 0, rd, 0x67);
-}
-
-static u32 rv_beq(u8 rs1, u8 rs2, u16 imm12_1)
-{
-	return rv_sb_insn(imm12_1, rs2, rs1, 0, 0x63);
-}
-
-static u32 rv_bltu(u8 rs1, u8 rs2, u16 imm12_1)
-{
-	return rv_sb_insn(imm12_1, rs2, rs1, 6, 0x63);
-}
-
-static u32 rv_bgeu(u8 rs1, u8 rs2, u16 imm12_1)
-{
-	return rv_sb_insn(imm12_1, rs2, rs1, 7, 0x63);
-}
-
-static u32 rv_bne(u8 rs1, u8 rs2, u16 imm12_1)
-{
-	return rv_sb_insn(imm12_1, rs2, rs1, 1, 0x63);
-}
-
-static u32 rv_blt(u8 rs1, u8 rs2, u16 imm12_1)
-{
-	return rv_sb_insn(imm12_1, rs2, rs1, 4, 0x63);
-}
-
-static u32 rv_bge(u8 rs1, u8 rs2, u16 imm12_1)
-{
-	return rv_sb_insn(imm12_1, rs2, rs1, 5, 0x63);
-}
-
-static u32 rv_sb(u8 rs1, u16 imm11_0, u8 rs2)
-{
-	return rv_s_insn(imm11_0, rs2, rs1, 0, 0x23);
-}
-
-static u32 rv_sh(u8 rs1, u16 imm11_0, u8 rs2)
-{
-	return rv_s_insn(imm11_0, rs2, rs1, 1, 0x23);
-}
-
-static u32 rv_sw(u8 rs1, u16 imm11_0, u8 rs2)
-{
-	return rv_s_insn(imm11_0, rs2, rs1, 2, 0x23);
-}
-
-static u32 rv_sd(u8 rs1, u16 imm11_0, u8 rs2)
-{
-	return rv_s_insn(imm11_0, rs2, rs1, 3, 0x23);
-}
-
-static u32 rv_lbu(u8 rd, u16 imm11_0, u8 rs1)
-{
-	return rv_i_insn(imm11_0, rs1, 4, rd, 0x03);
-}
-
-static u32 rv_lhu(u8 rd, u16 imm11_0, u8 rs1)
-{
-	return rv_i_insn(imm11_0, rs1, 5, rd, 0x03);
-}
-
-static u32 rv_lwu(u8 rd, u16 imm11_0, u8 rs1)
-{
-	return rv_i_insn(imm11_0, rs1, 6, rd, 0x03);
-}
-
-static u32 rv_ld(u8 rd, u16 imm11_0, u8 rs1)
-{
-	return rv_i_insn(imm11_0, rs1, 3, rd, 0x03);
-}
-
-static u32 rv_amoadd_w(u8 rd, u8 rs2, u8 rs1, u8 aq, u8 rl)
-{
-	return rv_amo_insn(0, aq, rl, rs2, rs1, 2, rd, 0x2f);
-}
-
-static u32 rv_amoadd_d(u8 rd, u8 rs2, u8 rs1, u8 aq, u8 rl)
-{
-	return rv_amo_insn(0, aq, rl, rs2, rs1, 3, rd, 0x2f);
-}
-
-static u32 rv_auipc(u8 rd, u32 imm31_12)
-{
-	return rv_u_insn(imm31_12, rd, 0x17);
-}
-
-static bool is_12b_int(s64 val)
-{
-	return -(1 << 11) <= val && val < (1 << 11);
-}
-
-static bool is_13b_int(s64 val)
-{
-	return -(1 << 12) <= val && val < (1 << 12);
-}
-
-static bool is_21b_int(s64 val)
-{
-	return -(1L << 20) <= val && val < (1L << 20);
-}
-
 static bool is_32b_int(s64 val)
 {
 	return -(1L << 31) <= val && val < (1L << 31);
 }
 
-static int is_12b_check(int off, int insn)
-{
-	if (!is_12b_int(off)) {
-		pr_err("bpf-jit: insn=%d 12b < offset=%d not supported yet!\n",
-		       insn, (int)off);
-		return -1;
-	}
-	return 0;
-}
-
 static void emit_imm(u8 rd, s64 val, struct rv_jit_context *ctx)
 {
 	/* Note that the immediate from the add is sign-extended,
@@ -535,23 +149,6 @@ static void emit_imm(u8 rd, s64 val, struct rv_jit_context *ctx)
 		emit(rv_addi(rd, rd, lower), ctx);
 }
 
-static int rv_offset(int insn, int off, struct rv_jit_context *ctx)
-{
-	int from, to;
-
-	off++; /* BPF branch is from PC+1, RV is from PC */
-	from = (insn > 0) ? ctx->offset[insn - 1] : 0;
-	to = (insn + off > 0) ? ctx->offset[insn + off - 1] : 0;
-	return (to - from) << 2;
-}
-
-static int epilogue_offset(struct rv_jit_context *ctx)
-{
-	int to = ctx->epilogue_offset, from = ctx->ninsns;
-
-	return (to - from) << 2;
-}
-
 static void __build_epilogue(bool is_tail_call, struct rv_jit_context *ctx)
 {
 	int stack_adjust = ctx->stack_size, store_offset = stack_adjust - 8;
@@ -596,34 +193,6 @@ static void __build_epilogue(bool is_tail_call, struct rv_jit_context *ctx)
 	     ctx);
 }
 
-/* return -1 or inverted cond */
-static int invert_bpf_cond(u8 cond)
-{
-	switch (cond) {
-	case BPF_JEQ:
-		return BPF_JNE;
-	case BPF_JGT:
-		return BPF_JLE;
-	case BPF_JLT:
-		return BPF_JGE;
-	case BPF_JGE:
-		return BPF_JLT;
-	case BPF_JLE:
-		return BPF_JGT;
-	case BPF_JNE:
-		return BPF_JEQ;
-	case BPF_JSGT:
-		return BPF_JSLE;
-	case BPF_JSLT:
-		return BPF_JSGE;
-	case BPF_JSGE:
-		return BPF_JSLT;
-	case BPF_JSLE:
-		return BPF_JSGT;
-	}
-	return -1;
-}
-
 static void emit_bcc(u8 cond, u8 rd, u8 rs, int rvoff,
 		     struct rv_jit_context *ctx)
 {
@@ -1544,16 +1113,6 @@ static int build_body(struct rv_jit_context *ctx, bool extra_pass, int *offset)
 	return 0;
 }
 
-static void bpf_fill_ill_insns(void *area, unsigned int size)
-{
-	memset(area, 0, size);
-}
-
-static void bpf_flush_icache(void *start, void *end)
-{
-	flush_icache_range((unsigned long)start, (unsigned long)end);
-}
-
 bool bpf_jit_needs_zext(void)
 {
 	return true;
-- 
2.20.1


