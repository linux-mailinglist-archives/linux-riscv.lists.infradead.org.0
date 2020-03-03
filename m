Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59601177186
	for <lists+linux-riscv@lfdr.de>; Tue,  3 Mar 2020 09:48:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=4Hi0PP648pqz5WAIMtOxKekD1mZWnTv05En02OgpM58=; b=uL7DcLOZx5GDukKHRM/ciTdfdO
	JFCe93D1lf2fIqd0zXblzu1BcdVUT6al0+NuHHxr4gRknvsmLyIls4wEsmN8DW50WDSNirV8TZWhA
	lqIsGRDpC2PzY3Gv1P/1lRY4deSjizxc8buN71sZa6/fztqjhPIxSRjNYDALmeoHQm6nFSIGf0oAB
	/0FjeP+0lv6IKqXJOTOgg1m9ZmwqcY4Yxme+FKfiIRVZYE7zOIxcs1/oYzdusVzgCPvjkgE3dRKVk
	+zr/YwnBiZFdrLAY+2+xw6Vw1UHH9xAtVr/tVSyjQk0oEHrMN97FnIr+Ty91mxoTtFTTGN60K8JYO
	6RnwTtcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j93Dr-0000az-Tz; Tue, 03 Mar 2020 08:48:15 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j93Dn-0000a5-PW
 for linux-riscv@lists.infradead.org; Tue, 03 Mar 2020 08:48:13 +0000
Received: by mail-pg1-x544.google.com with SMTP id b1so1211437pgm.8
 for <linux-riscv@lists.infradead.org>; Tue, 03 Mar 2020 00:48:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=4Hi0PP648pqz5WAIMtOxKekD1mZWnTv05En02OgpM58=;
 b=FNMt0uhCDA8lcTNPsJm1ysbqOdGAskcyuoqpcsomPlYrYaqWGiTRuu9sloj4doFAyN
 CUxKgubLV33TSYPFqYSTcupYwh6sD8Tql3guxbY0hHlwZ/ecnqIwtH2u4tjLKxwrDxgJ
 Qh+GcWVhPW8L2iVO47LJAS1IIzajfIKkMeLqxxi8RYuyWnKP33C0w8iTf0VMxZxcH/09
 gCg8aWVnsdw0nMXrNwco0idy+JLN9AOe7XTg0lgm0KbGwb/4E140LZNLOjWVvG4B7WF0
 f8xXa7veyqCB/3t8wlg90jS4u4F/9wiput9mTCwH7VtaEcmC6t3zKKA7ysNYq6+yCEzT
 +yvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=4Hi0PP648pqz5WAIMtOxKekD1mZWnTv05En02OgpM58=;
 b=E+sMLlHaDGfE5Q85itgYMlZc7AVWb4xLdUfMKRghhYuoL7N3zG4ULeuBeoYtrxnwjw
 lhiT8QMwlM7y2zjQYu8nDjQLJXKmQnrqx/zS4Yj4ymPchnQWAUMIykraWH170PZ9N8r4
 COBvNpLGtxP8XI/jbNu9jvMvIMQ0vbDDlm+bNtWrZtoVjnWI23xc4zun5ZlbApYAzHX3
 EUqVGOGwevGFFK75R0dvaAFix69e/KQNrkW60EKY+rHwmc3+JHHeZo1/zI++IvFsg1GR
 l5YslE0rtzQJ1Hg4dcf/n3aNucGM8JlTdWaxbSqjo/lP9tIYyOFIUPszeVUpdO9bmSTa
 n4GA==
X-Gm-Message-State: ANhLgQ2qt7Q083KTj6CxNgWknJxUt71zqpMvciAyI9pH5allzsZ/Bhm6
 c09cDroh6bvDCARk40em8ki3Zg==
X-Google-Smtp-Source: ADFU+vslxajIO2sKe/uX1wb8utG9/S6d1GdIR7b9n8oyh3URR9eWt/qqjd95Xs59wcSEQ6n8ZTv2iQ==
X-Received: by 2002:aa7:9606:: with SMTP id q6mr3131980pfg.247.1583225290883; 
 Tue, 03 Mar 2020 00:48:10 -0800 (PST)
Received: from VincentChen-ThinkPad-T480s.internal.sifive.com
 (220-132-236-182.HINET-IP.hinet.net. [220.132.236.182])
 by smtp.gmail.com with ESMTPSA id 196sm23828576pfy.86.2020.03.03.00.48.09
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 03 Mar 2020 00:48:10 -0800 (PST)
From: Vincent Chen <vincent.chen@sifive.com>
To: paul.walmsley@sifive.com, palmer@dabbelt.com, jason.wessel@windriver.com,
 daniel.thompson@linaro.org, dianders@chromium.org
Subject: [PATCH 5/5] riscv: Add SW single-step support for KDB
Date: Tue,  3 Mar 2020 16:48:06 +0800
Message-Id: <1583225286-26341-1-git-send-email-vincent.chen@sifive.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_004811_827804_DA0A2C4B 
X-CRM114-Status: GOOD (  16.45  )
X-Spam-Score: 3.3 (+++)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (3.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 2.2 DRUGS_ERECTILE         Refers to an erectile drug
 1.3 DRUGS_ERECTILE_OBFU    Obfuscated reference to an erectile drug
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
Cc: Vincent Chen <vincent.chen@sifive.com>, linux-riscv@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

In KGDB, the GDB in the host is responsible for the single-step operation
of the software. In other words, KGDB does not need to derive the next pc
address when performing a software single-step operation. KGDB just inserts
the break instruction at the indicated address according to the GDB
instructions. This approach does not work in KDB because the GDB does not
involve the KDB process. Therefore, this patch provides KDB a software
single-step mechanism to use.

Signed-off-by: Vincent Chen <vincent.chen@sifive.com>
---
 arch/riscv/kernel/kgdb.c | 243 ++++++++++++++++++++++++++++++++++++++++++++++-
 1 file changed, 242 insertions(+), 1 deletion(-)

diff --git a/arch/riscv/kernel/kgdb.c b/arch/riscv/kernel/kgdb.c
index 01af9fb43150..88080991fa85 100644
--- a/arch/riscv/kernel/kgdb.c
+++ b/arch/riscv/kernel/kgdb.c
@@ -13,8 +13,235 @@ enum {
 	NOT_KGDB_BREAK = 0,
 	KGDB_SW_BREAK,
 	KGDB_COMPILED_BREAK,
+	KGDB_SW_SINGLE_STEP
 };
 
+static unsigned long stepped_address;
+static unsigned int stepped_opcode;
+
+#define RV_IMM_SIGN(x) (-(((x) >> 31) & 1))
+#define RV_X(X, s, n)  (((X) >> (s)) & ((1 << (n)) - 1))
+#define EXTRACT_UJTYPE_IMM(x) \
+	({typeof(x) x_ = (x); \
+	(RV_X(x_, 21, 10) << 1) | (RV_X(x_, 20, 1) << 11) | \
+	(RV_X(x_, 12, 8) << 12) | (RV_IMM_SIGN(x_) << 20); })
+#define EXTRACT_ITYPE_IMM(x) \
+	({typeof(x) x_ = (x); \
+	RV_X(x_, 20, 12) | (RV_IMM_SIGN(x_) << 12); })
+#define EXTRACT_RVC_J_IMM(x) \
+	({typeof(x) x_ = (x); \
+	(RV_X(x_, 3, 3) << 1) | (RV_X(x_, 11, 1) << 4) | \
+	(RV_X(x_, 2, 1) << 5) | (RV_X(x_, 7, 1) << 6) | \
+	(RV_X(x_, 6, 1) << 7) | (RV_X(x_, 9, 2) << 8) | \
+	(RV_X(x_, 8, 1) << 10) | (-RV_X(x_, 12, 1) << 11); })
+#define EXTRACT_SBTYPE_IMM(x) \
+	({typeof(x) x_ = (x); \
+	(RV_X(x_, 8, 4) << 1) | (RV_X(x_, 25, 6) << 5) | \
+	(RV_X(x_, 7, 1) << 11) | (RV_IMM_SIGN(x_) << 12); })
+#define EXTRACT_RVC_B_IMM(x) \
+	({typeof(x) x_ = (x); \
+	(RV_X(x_, 3, 2) << 1) | (RV_X(x_, 10, 2) << 3) | \
+	(RV_X(x_, 2, 1) << 5) | (RV_X(x_, 5, 2) << 6) | \
+	(-RV_X(x_, 12, 1) << 8); })
+
+#define MATCH_JALR 0x67
+#define MASK_JALR  0x707f
+#define MATCH_JAL 0x6f
+#define MASK_JAL  0x7f
+#define MATCH_C_JALR 0x9002
+#define MASK_C_JALR  0xf07f
+#define MATCH_C_JR 0x8002
+#define MASK_C_JR  0xf07f
+#define MATCH_C_JAL 0x2001
+#define MASK_C_JAL  0xe003
+#define MATCH_C_J 0xa001
+#define MASK_C_J  0xe003
+#define MATCH_BEQ 0x63
+#define MASK_BEQ  0x707f
+#define MATCH_BNE 0x1063
+#define MASK_BNE  0x707f
+#define MATCH_BLT 0x4063
+#define MASK_BLT  0x707f
+#define MATCH_BGE 0x5063
+#define MASK_BGE  0x707f
+#define MATCH_BLTU 0x6063
+#define MASK_BLTU  0x707f
+#define MATCH_BGEU 0x7063
+#define MASK_BGEU  0x707f
+#define MATCH_C_BEQZ 0xc001
+#define MASK_C_BEQZ  0xe003
+#define MATCH_C_BNEZ 0xe001
+#define MASK_C_BNEZ  0xe003
+#define MATCH_SRET 0x10200073
+#define MASK_SRET  0xffffffff
+
+#define OP_SH_RS1 15
+#define OP_SH_RS2 20
+#define OP_SH_CRS1S 7
+
+#define __INSN_LENGTH_MASK	_UL(0x3)
+#define __INSN_LENGTH_GE_32	_UL(0x3)
+#define __INSN_OPCODE_MASK	_UL(0x7F)
+#define __INSN_BRANCH_OPCODE	_UL(0x63)
+/* Define a series of is_XXX_insn functions to check if the value INSN
+ * is an instance of instruction XXX.
+ */
+#define DECLARE_INSN(INSN_NAME, INSN_MATCH, INSN_MASK) \
+static inline bool is_ ## INSN_NAME ## _insn(long insn) \
+{ \
+	return (insn & (INSN_MASK)) == (INSN_MATCH); \
+}
+
+#if __riscv_xlen == 32
+/* C.JAL is an RV32C-only instruction */
+DECLARE_INSN(c_jal, MATCH_C_JAL, MASK_C_JAL)
+#else
+#define is_c_jal_insn(opcode) 0
+#endif
+DECLARE_INSN(jalr, MATCH_JALR, MASK_JALR)
+DECLARE_INSN(jal, MATCH_JAL, MASK_JAL)
+DECLARE_INSN(c_jr, MATCH_C_JR, MASK_C_JR)
+DECLARE_INSN(c_jalr, MATCH_C_JALR, MASK_C_JALR)
+DECLARE_INSN(c_j, MATCH_C_J, MASK_C_J)
+DECLARE_INSN(beq, MATCH_BEQ, MASK_BEQ)
+DECLARE_INSN(bne, MATCH_BNE, MASK_BNE)
+DECLARE_INSN(blt, MATCH_BLT, MASK_BLT)
+DECLARE_INSN(bge, MATCH_BGE, MASK_BGE)
+DECLARE_INSN(bltu, MATCH_BLTU, MASK_BLTU)
+DECLARE_INSN(bgeu, MATCH_BGEU, MASK_BGEU)
+DECLARE_INSN(c_beqz, MATCH_C_BEQZ, MASK_C_BEQZ)
+DECLARE_INSN(c_bnez, MATCH_C_BNEZ, MASK_C_BNEZ)
+DECLARE_INSN(sret, MATCH_SRET, MASK_SRET)
+
+int decode_register_index(unsigned long opcode, int offset)
+{
+	return (opcode >> offset) & 0x1F;
+}
+
+int decode_register_index_short(unsigned long opcode, int offset)
+{
+	return ((opcode >> offset) & 0x7) + 8;
+}
+
+/* Calculate the new address for after a step */
+int get_step_address(struct pt_regs *regs, unsigned long *next_addr)
+{
+	unsigned long pc = regs->epc;
+	unsigned long *regs_ptr = (unsigned long *)regs;
+	unsigned int rs1_num, rs2_num;
+	int op_code;
+
+	if (probe_kernel_address((void *)pc, op_code))
+		return -EINVAL;
+
+	if ((op_code & __INSN_LENGTH_MASK) != __INSN_LENGTH_GE_32) {
+		if (is_c_jalr_insn(op_code) || is_c_jr_insn(op_code)) {
+			rs1_num = decode_register_index(op_code, OP_SH_CRS1S);
+			*next_addr = regs_ptr[rs1_num];
+		} else if (is_c_j_insn(op_code) || is_c_jal_insn(op_code)) {
+			*next_addr = EXTRACT_RVC_J_IMM(op_code) + pc;
+		} else if (is_c_beqz_insn(op_code)) {
+			rs1_num = decode_register_index_short(op_code,
+							      OP_SH_CRS1S);
+			if (!rs1_num || regs_ptr[rs1_num] == 0)
+				*next_addr = EXTRACT_RVC_B_IMM(op_code) + pc;
+			else
+				*next_addr = pc + 2;
+		} else if (is_c_bnez_insn(op_code)) {
+			rs1_num =
+			    decode_register_index_short(op_code, OP_SH_CRS1S);
+			if (rs1_num && regs_ptr[rs1_num] != 0)
+				*next_addr = EXTRACT_RVC_B_IMM(op_code) + pc;
+			else
+				*next_addr = pc + 2;
+		} else
+			*next_addr = pc + 2;
+	} else {
+		if ((op_code & __INSN_OPCODE_MASK) == __INSN_BRANCH_OPCODE) {
+			bool result = false;
+			long imm = EXTRACT_SBTYPE_IMM(op_code);
+			unsigned long rs1_val = 0, rs2_val = 0;
+
+			rs1_num = decode_register_index(op_code, OP_SH_RS1);
+			rs2_num = decode_register_index(op_code, OP_SH_RS2);
+			if (rs1_num)
+				rs1_val = regs_ptr[rs1_num];
+			if (rs2_num)
+				rs2_val = regs_ptr[rs2_num];
+
+			if (is_beq_insn(op_code))
+				result = (rs1_val == rs2_val) ? true : false;
+			else if (is_bne_insn(op_code))
+				result = (rs1_val != rs2_val) ? true : false;
+			else if (is_blt_insn(op_code))
+				result =
+				    ((long)rs1_val <
+				     (long)rs2_val) ? true : false;
+			else if (is_bge_insn(op_code))
+				result =
+				    ((long)rs1_val >=
+				     (long)rs2_val) ? true : false;
+			else if (is_bltu_insn(op_code))
+				result = (rs1_val < rs2_val) ? true : false;
+			else if (is_bgeu_insn(op_code))
+				result = (rs1_val >= rs2_val) ? true : false;
+			if (result)
+				*next_addr = imm + pc;
+			else
+				*next_addr = pc + 4;
+		} else if (is_jal_insn(op_code)) {
+			*next_addr = EXTRACT_UJTYPE_IMM(op_code) + pc;
+		} else if (is_jalr_insn(op_code)) {
+			rs1_num = decode_register_index(op_code, OP_SH_RS1);
+			if (rs1_num)
+				*next_addr = ((unsigned long *)regs)[rs1_num];
+			*next_addr += EXTRACT_ITYPE_IMM(op_code);
+		} else if (is_sret_insn(op_code)) {
+			*next_addr = pc;
+		} else
+			*next_addr = pc + 4;
+	}
+
+	return 0;
+}
+
+int do_single_step(struct pt_regs *regs)
+{
+	/* Determine where the target instruction will send us to */
+	unsigned long addr = 0;
+	int error = get_step_address(regs, &addr);
+
+	if (error)
+		return error;
+
+	stepped_address = addr;
+
+	/* Store the op code in the stepped address */
+	probe_kernel_address((void *)addr, stepped_opcode);
+	/* Replace the op code with the break instruction */
+	error = probe_kernel_write((void *)addr,
+				   arch_kgdb_ops.gdb_bpt_instr,
+				   BREAK_INSTR_SIZE);
+	/* Flush and return */
+	if (!error)
+		flush_icache_range(addr, addr + BREAK_INSTR_SIZE);
+
+	return error;
+}
+
+/* Undo a single step */
+static void undo_single_step(struct pt_regs *regs)
+{
+	if (stepped_opcode != 0) {
+		probe_kernel_write((void *)stepped_address,
+				   (void *)&stepped_opcode, BREAK_INSTR_SIZE);
+		flush_icache_range(stepped_address,
+				   stepped_address + BREAK_INSTR_SIZE);
+	}
+	stepped_address = 0;
+	stepped_opcode = 0;
+}
+
 struct dbg_reg_def_t dbg_reg_def[DBG_MAX_REG_NUM] = {
 	{PT_REG_ZERO, GDB_SIZEOF_REG, -1},
 	{PT_REG_RA, GDB_SIZEOF_REG, offsetof(struct pt_regs, ra)},
@@ -144,6 +371,8 @@ int kgdb_arch_handle_exception(int vector, int signo, int err_code,
 {
 	int err = 0;
 
+	undo_single_step(regs);
+
 	switch (remcom_in_buffer[0]) {
 	case 'c':
 	case 'D':
@@ -153,6 +382,15 @@ int kgdb_arch_handle_exception(int vector, int signo, int err_code,
 		atomic_set(&kgdb_cpu_doing_single_step, -1);
 		kgdb_single_step = 0;
 		break;
+	case 's':
+		kgdb_arch_update_addr(regs, remcom_in_buffer);
+		err = do_single_step(regs);
+		if (!err) {
+			kgdb_single_step = 1;
+			atomic_set(&kgdb_cpu_doing_single_step,
+				   raw_smp_processor_id());
+		}
+		break;
 	default:
 		err = -1;
 	}
@@ -162,6 +400,8 @@ int kgdb_arch_handle_exception(int vector, int signo, int err_code,
 
 int kgdb_riscv_kgdbbreak(unsigned long addr)
 {
+	if (stepped_address == addr)
+		return KGDB_SW_SINGLE_STEP;
 	if (atomic_read(&kgdb_setting_breakpoint))
 		if (addr == (unsigned long)&kgdb_compiled_break)
 			return KGDB_COMPILED_BREAK;
@@ -185,7 +425,8 @@ static int kgdb_riscv_notify(struct notifier_block *self, unsigned long cmd,
 		return NOTIFY_DONE;
 
 	local_irq_save(flags);
-	if (kgdb_handle_exception(1, args->signr, cmd, regs))
+	if (kgdb_handle_exception(type == KGDB_SW_SINGLE_STEP ? 0 : 1,
+				  args->signr, cmd, regs))
 		return NOTIFY_DONE;
 
 	if (type == KGDB_COMPILED_BREAK)
-- 
2.7.4


