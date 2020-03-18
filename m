Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F38D018A841
	for <lists+linux-riscv@lfdr.de>; Wed, 18 Mar 2020 23:33:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Mime-Version:Message-ID:To:From:
	In-Reply-To:Subject:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=hBF7s28N0X6MKVZKUaqyzcoHQxN5G5gRCU3+dtL/b1A=; b=Dgm3nIsczN3qiL
	cgBsYJkpg3+vgmRtlMgyiUveXJwdsCLg10kgOZTdGz4Iz0w3Hd4eej72S45cQUVO3FAN+cbSGawrC
	t5LjfNQDN4KqQB+cN8zkrXUz25zZFDVXEX2EpgrdoWfIPHa0OarRjqjaen82PgmEJl7iYrX9NOYad
	kfFAeHGKKZz+q9qpCcgBX0ZiRRy8VGscSqyEFRgwu5IwKarQ65iYh5Gq9jDZ2EpO5nPo85pfAFuGr
	ysZhqssd958/ikqBg94kLokepxFYNvX/LEAm0B8r7+65znTz8sGP/EGgLhkwJoug4FAPaSuEyMeLR
	TJuNDxmUZMb+kOI/fgIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEhFP-0002eR-QH; Wed, 18 Mar 2020 22:33:11 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEhFK-0002cr-Pq
 for linux-riscv@lists.infradead.org; Wed, 18 Mar 2020 22:33:08 +0000
Received: by mail-pl1-x641.google.com with SMTP id f16so137241plj.4
 for <linux-riscv@lists.infradead.org>; Wed, 18 Mar 2020 15:33:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
 h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
 :content-transfer-encoding;
 bh=hBF7s28N0X6MKVZKUaqyzcoHQxN5G5gRCU3+dtL/b1A=;
 b=glaGWZ9AQdjrqqOU5GdE391FH4rjYQQBqJXvMHunqGayI6J5xqBH/b9Zk7XntgUuh0
 LFdJMO50HOzHXd3Sb/1/dpguvH2xz15xKRL2TdrZcN2+J1oawI3NXv+vlCYUar8pdZ9Y
 Fqbek/cbRqZp/H5ayd8ZhRrr5/2yP6He74a6ESfFlmeva3MDVHcZwrIapdhOgZjDA3KB
 JIH9Xj/V9R6vQ9TFAr5ZhQYTchMN1RNxXqhlzUG+DnHVvjzZH4FXQtIgaH9wfsPC7P2a
 FUKbNNQ9srjONVYNi4U1Rdv/xa74ZKcuPCSCc6fd1sRJYvMv3R/ciLgDz2momi0kU7/+
 K0cQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=hBF7s28N0X6MKVZKUaqyzcoHQxN5G5gRCU3+dtL/b1A=;
 b=cag1S0tk5FkBAEiQCkxfligCFL2Ge10JTwa6l9U2ogc5UuLzytlMWE1viLNYoX6CNG
 U6hGoBuypjtsdCO9QVikq0X4WlGKfUAsRspzDVUH+hXjEzFKmEE7jLR6w3kof1jLpdLT
 eTVc01D2ni+r9HucQCzagsCPXdGcGKYD+t5rTLKAlzYCww8SqFyDNUijhfd63Yiq/OF+
 lkPUKQNnNaLPbWEZ+XjojBbn3TO+77ppj2pPPyUePGXaFvnTWMxvoXCOijsUhF4pbRvV
 R6N095biod8ywyxCMcmKx+sR57cbhR1/K9l1rLzLKVWlWpqOxMOjrxKHDQLfGWlTWmjg
 o22A==
X-Gm-Message-State: ANhLgQ3JTkw66a+6x5ezmXi7JW/Hv4zkSxt/TVINlcGuOXJdAsia4PfV
 6nj/UOrp4FKSpw5JGXjicgHKsA==
X-Google-Smtp-Source: ADFU+vu8xbpnzc923R2rvoW31jyuWA9La7jvQ5290s/PLc1V6RLT9PLZ2Y9QXHvM5OhOZrNiFg0pOg==
X-Received: by 2002:a17:90a:a102:: with SMTP id s2mr463160pjp.46.1584570785571; 
 Wed, 18 Mar 2020 15:33:05 -0700 (PDT)
Received: from localhost (c-67-161-15-180.hsd1.ca.comcast.net. [67.161.15.180])
 by smtp.gmail.com with ESMTPSA id u3sm72634pfb.36.2020.03.18.15.33.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Mar 2020 15:33:05 -0700 (PDT)
Date: Wed, 18 Mar 2020 15:33:05 -0700 (PDT)
X-Google-Original-Date: Wed, 18 Mar 2020 15:32:39 PDT (-0700)
Subject: Re: [PATCH 5/5] riscv: Add SW single-step support for KDB
In-Reply-To: <1583225286-26341-1-git-send-email-vincent.chen@sifive.com>
From: Palmer Dabbelt <palmer@dabbelt.com>
To: vincent.chen@sifive.com
Message-ID: <mhng-fea46604-cdbb-4262-88b8-cd87d79e98a1@palmerdabbelt-glaptop1>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_153306_844941_8D6BED14 
X-CRM114-Status: GOOD (  24.64  )
X-Spam-Score: 3.5 (+++)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (3.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 1.3 DRUGS_ERECTILE_OBFU    Obfuscated reference to an erectile drug
 2.2 DRUGS_ERECTILE         Refers to an erectile drug
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
Cc: daniel.thompson@linaro.org, Paul Walmsley <paul.walmsley@sifive.com>,
 dianders@chromium.org, vincent.chen@sifive.com, jason.wessel@windriver.com,
 linux-riscv@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, 03 Mar 2020 00:48:06 PST (-0800), vincent.chen@sifive.com wrote:
> In KGDB, the GDB in the host is responsible for the single-step operation
> of the software. In other words, KGDB does not need to derive the next pc
> address when performing a software single-step operation. KGDB just inserts
> the break instruction at the indicated address according to the GDB
> instructions. This approach does not work in KDB because the GDB does not
> involve the KDB process. Therefore, this patch provides KDB a software
> single-step mechanism to use.
>
> Signed-off-by: Vincent Chen <vincent.chen@sifive.com>
> ---
>  arch/riscv/kernel/kgdb.c | 243 ++++++++++++++++++++++++++++++++++++++++++++++-
>  1 file changed, 242 insertions(+), 1 deletion(-)
>
> diff --git a/arch/riscv/kernel/kgdb.c b/arch/riscv/kernel/kgdb.c
> index 01af9fb43150..88080991fa85 100644
> --- a/arch/riscv/kernel/kgdb.c
> +++ b/arch/riscv/kernel/kgdb.c
> @@ -13,8 +13,235 @@ enum {
>  	NOT_KGDB_BREAK = 0,
>  	KGDB_SW_BREAK,
>  	KGDB_COMPILED_BREAK,
> +	KGDB_SW_SINGLE_STEP
>  };
>
> +static unsigned long stepped_address;
> +static unsigned int stepped_opcode;
> +
> +#define RV_IMM_SIGN(x) (-(((x) >> 31) & 1))
> +#define RV_X(X, s, n)  (((X) >> (s)) & ((1 << (n)) - 1))
> +#define EXTRACT_UJTYPE_IMM(x) \
> +	({typeof(x) x_ = (x); \
> +	(RV_X(x_, 21, 10) << 1) | (RV_X(x_, 20, 1) << 11) | \
> +	(RV_X(x_, 12, 8) << 12) | (RV_IMM_SIGN(x_) << 20); })
> +#define EXTRACT_ITYPE_IMM(x) \
> +	({typeof(x) x_ = (x); \
> +	RV_X(x_, 20, 12) | (RV_IMM_SIGN(x_) << 12); })
> +#define EXTRACT_RVC_J_IMM(x) \
> +	({typeof(x) x_ = (x); \
> +	(RV_X(x_, 3, 3) << 1) | (RV_X(x_, 11, 1) << 4) | \
> +	(RV_X(x_, 2, 1) << 5) | (RV_X(x_, 7, 1) << 6) | \
> +	(RV_X(x_, 6, 1) << 7) | (RV_X(x_, 9, 2) << 8) | \
> +	(RV_X(x_, 8, 1) << 10) | (-RV_X(x_, 12, 1) << 11); })
> +#define EXTRACT_SBTYPE_IMM(x) \
> +	({typeof(x) x_ = (x); \
> +	(RV_X(x_, 8, 4) << 1) | (RV_X(x_, 25, 6) << 5) | \
> +	(RV_X(x_, 7, 1) << 11) | (RV_IMM_SIGN(x_) << 12); })
> +#define EXTRACT_RVC_B_IMM(x) \
> +	({typeof(x) x_ = (x); \
> +	(RV_X(x_, 3, 2) << 1) | (RV_X(x_, 10, 2) << 3) | \
> +	(RV_X(x_, 2, 1) << 5) | (RV_X(x_, 5, 2) << 6) | \
> +	(-RV_X(x_, 12, 1) << 8); })
> +
> +#define MATCH_JALR 0x67
> +#define MASK_JALR  0x707f
> +#define MATCH_JAL 0x6f
> +#define MASK_JAL  0x7f
> +#define MATCH_C_JALR 0x9002
> +#define MASK_C_JALR  0xf07f
> +#define MATCH_C_JR 0x8002
> +#define MASK_C_JR  0xf07f
> +#define MATCH_C_JAL 0x2001
> +#define MASK_C_JAL  0xe003
> +#define MATCH_C_J 0xa001
> +#define MASK_C_J  0xe003
> +#define MATCH_BEQ 0x63
> +#define MASK_BEQ  0x707f
> +#define MATCH_BNE 0x1063
> +#define MASK_BNE  0x707f
> +#define MATCH_BLT 0x4063
> +#define MASK_BLT  0x707f
> +#define MATCH_BGE 0x5063
> +#define MASK_BGE  0x707f
> +#define MATCH_BLTU 0x6063
> +#define MASK_BLTU  0x707f
> +#define MATCH_BGEU 0x7063
> +#define MASK_BGEU  0x707f
> +#define MATCH_C_BEQZ 0xc001
> +#define MASK_C_BEQZ  0xe003
> +#define MATCH_C_BNEZ 0xe001
> +#define MASK_C_BNEZ  0xe003
> +#define MATCH_SRET 0x10200073
> +#define MASK_SRET  0xffffffff
> +
> +#define OP_SH_RS1 15
> +#define OP_SH_RS2 20
> +#define OP_SH_CRS1S 7
> +
> +#define __INSN_LENGTH_MASK	_UL(0x3)
> +#define __INSN_LENGTH_GE_32	_UL(0x3)
> +#define __INSN_OPCODE_MASK	_UL(0x7F)
> +#define __INSN_BRANCH_OPCODE	_UL(0x63)
> +/* Define a series of is_XXX_insn functions to check if the value INSN
> + * is an instance of instruction XXX.
> + */
> +#define DECLARE_INSN(INSN_NAME, INSN_MATCH, INSN_MASK) \
> +static inline bool is_ ## INSN_NAME ## _insn(long insn) \
> +{ \
> +	return (insn & (INSN_MASK)) == (INSN_MATCH); \
> +}

We should be sharing these sorts of things with the BPF JIT.

> +
> +#if __riscv_xlen == 32
> +/* C.JAL is an RV32C-only instruction */
> +DECLARE_INSN(c_jal, MATCH_C_JAL, MASK_C_JAL)
> +#else
> +#define is_c_jal_insn(opcode) 0
> +#endif
> +DECLARE_INSN(jalr, MATCH_JALR, MASK_JALR)
> +DECLARE_INSN(jal, MATCH_JAL, MASK_JAL)
> +DECLARE_INSN(c_jr, MATCH_C_JR, MASK_C_JR)
> +DECLARE_INSN(c_jalr, MATCH_C_JALR, MASK_C_JALR)
> +DECLARE_INSN(c_j, MATCH_C_J, MASK_C_J)
> +DECLARE_INSN(beq, MATCH_BEQ, MASK_BEQ)
> +DECLARE_INSN(bne, MATCH_BNE, MASK_BNE)
> +DECLARE_INSN(blt, MATCH_BLT, MASK_BLT)
> +DECLARE_INSN(bge, MATCH_BGE, MASK_BGE)
> +DECLARE_INSN(bltu, MATCH_BLTU, MASK_BLTU)
> +DECLARE_INSN(bgeu, MATCH_BGEU, MASK_BGEU)
> +DECLARE_INSN(c_beqz, MATCH_C_BEQZ, MASK_C_BEQZ)
> +DECLARE_INSN(c_bnez, MATCH_C_BNEZ, MASK_C_BNEZ)
> +DECLARE_INSN(sret, MATCH_SRET, MASK_SRET)
> +
> +int decode_register_index(unsigned long opcode, int offset)
> +{
> +	return (opcode >> offset) & 0x1F;
> +}
> +
> +int decode_register_index_short(unsigned long opcode, int offset)
> +{
> +	return ((opcode >> offset) & 0x7) + 8;
> +}
> +
> +/* Calculate the new address for after a step */
> +int get_step_address(struct pt_regs *regs, unsigned long *next_addr)
> +{
> +	unsigned long pc = regs->epc;
> +	unsigned long *regs_ptr = (unsigned long *)regs;
> +	unsigned int rs1_num, rs2_num;
> +	int op_code;
> +
> +	if (probe_kernel_address((void *)pc, op_code))
> +		return -EINVAL;
> +
> +	if ((op_code & __INSN_LENGTH_MASK) != __INSN_LENGTH_GE_32) {
> +		if (is_c_jalr_insn(op_code) || is_c_jr_insn(op_code)) {
> +			rs1_num = decode_register_index(op_code, OP_SH_CRS1S);
> +			*next_addr = regs_ptr[rs1_num];
> +		} else if (is_c_j_insn(op_code) || is_c_jal_insn(op_code)) {
> +			*next_addr = EXTRACT_RVC_J_IMM(op_code) + pc;
> +		} else if (is_c_beqz_insn(op_code)) {
> +			rs1_num = decode_register_index_short(op_code,
> +							      OP_SH_CRS1S);
> +			if (!rs1_num || regs_ptr[rs1_num] == 0)
> +				*next_addr = EXTRACT_RVC_B_IMM(op_code) + pc;
> +			else
> +				*next_addr = pc + 2;
> +		} else if (is_c_bnez_insn(op_code)) {
> +			rs1_num =
> +			    decode_register_index_short(op_code, OP_SH_CRS1S);
> +			if (rs1_num && regs_ptr[rs1_num] != 0)
> +				*next_addr = EXTRACT_RVC_B_IMM(op_code) + pc;
> +			else
> +				*next_addr = pc + 2;
> +		} else
> +			*next_addr = pc + 2;
> +	} else {
> +		if ((op_code & __INSN_OPCODE_MASK) == __INSN_BRANCH_OPCODE) {
> +			bool result = false;
> +			long imm = EXTRACT_SBTYPE_IMM(op_code);
> +			unsigned long rs1_val = 0, rs2_val = 0;
> +
> +			rs1_num = decode_register_index(op_code, OP_SH_RS1);
> +			rs2_num = decode_register_index(op_code, OP_SH_RS2);
> +			if (rs1_num)
> +				rs1_val = regs_ptr[rs1_num];
> +			if (rs2_num)
> +				rs2_val = regs_ptr[rs2_num];
> +
> +			if (is_beq_insn(op_code))
> +				result = (rs1_val == rs2_val) ? true : false;
> +			else if (is_bne_insn(op_code))
> +				result = (rs1_val != rs2_val) ? true : false;
> +			else if (is_blt_insn(op_code))
> +				result =
> +				    ((long)rs1_val <
> +				     (long)rs2_val) ? true : false;
> +			else if (is_bge_insn(op_code))
> +				result =
> +				    ((long)rs1_val >=
> +				     (long)rs2_val) ? true : false;
> +			else if (is_bltu_insn(op_code))
> +				result = (rs1_val < rs2_val) ? true : false;
> +			else if (is_bgeu_insn(op_code))
> +				result = (rs1_val >= rs2_val) ? true : false;
> +			if (result)
> +				*next_addr = imm + pc;
> +			else
> +				*next_addr = pc + 4;
> +		} else if (is_jal_insn(op_code)) {
> +			*next_addr = EXTRACT_UJTYPE_IMM(op_code) + pc;
> +		} else if (is_jalr_insn(op_code)) {
> +			rs1_num = decode_register_index(op_code, OP_SH_RS1);
> +			if (rs1_num)
> +				*next_addr = ((unsigned long *)regs)[rs1_num];
> +			*next_addr += EXTRACT_ITYPE_IMM(op_code);
> +		} else if (is_sret_insn(op_code)) {
> +			*next_addr = pc;
> +		} else
> +			*next_addr = pc + 4;
> +	}
> +
> +	return 0;
> +}
> +
> +int do_single_step(struct pt_regs *regs)
> +{
> +	/* Determine where the target instruction will send us to */
> +	unsigned long addr = 0;
> +	int error = get_step_address(regs, &addr);
> +
> +	if (error)
> +		return error;
> +
> +	stepped_address = addr;
> +
> +	/* Store the op code in the stepped address */
> +	probe_kernel_address((void *)addr, stepped_opcode);
> +	/* Replace the op code with the break instruction */
> +	error = probe_kernel_write((void *)addr,
> +				   arch_kgdb_ops.gdb_bpt_instr,
> +				   BREAK_INSTR_SIZE);
> +	/* Flush and return */
> +	if (!error)
> +		flush_icache_range(addr, addr + BREAK_INSTR_SIZE);
> +
> +	return error;
> +}
> +
> +/* Undo a single step */
> +static void undo_single_step(struct pt_regs *regs)
> +{
> +	if (stepped_opcode != 0) {
> +		probe_kernel_write((void *)stepped_address,
> +				   (void *)&stepped_opcode, BREAK_INSTR_SIZE);
> +		flush_icache_range(stepped_address,
> +				   stepped_address + BREAK_INSTR_SIZE);
> +	}
> +	stepped_address = 0;
> +	stepped_opcode = 0;
> +}
> +
>  struct dbg_reg_def_t dbg_reg_def[DBG_MAX_REG_NUM] = {
>  	{PT_REG_ZERO, GDB_SIZEOF_REG, -1},
>  	{PT_REG_RA, GDB_SIZEOF_REG, offsetof(struct pt_regs, ra)},
> @@ -144,6 +371,8 @@ int kgdb_arch_handle_exception(int vector, int signo, int err_code,
>  {
>  	int err = 0;
>
> +	undo_single_step(regs);
> +
>  	switch (remcom_in_buffer[0]) {
>  	case 'c':
>  	case 'D':
> @@ -153,6 +382,15 @@ int kgdb_arch_handle_exception(int vector, int signo, int err_code,
>  		atomic_set(&kgdb_cpu_doing_single_step, -1);
>  		kgdb_single_step = 0;
>  		break;
> +	case 's':
> +		kgdb_arch_update_addr(regs, remcom_in_buffer);
> +		err = do_single_step(regs);
> +		if (!err) {
> +			kgdb_single_step = 1;
> +			atomic_set(&kgdb_cpu_doing_single_step,
> +				   raw_smp_processor_id());
> +		}
> +		break;
>  	default:
>  		err = -1;
>  	}
> @@ -162,6 +400,8 @@ int kgdb_arch_handle_exception(int vector, int signo, int err_code,
>
>  int kgdb_riscv_kgdbbreak(unsigned long addr)
>  {
> +	if (stepped_address == addr)
> +		return KGDB_SW_SINGLE_STEP;
>  	if (atomic_read(&kgdb_setting_breakpoint))
>  		if (addr == (unsigned long)&kgdb_compiled_break)
>  			return KGDB_COMPILED_BREAK;
> @@ -185,7 +425,8 @@ static int kgdb_riscv_notify(struct notifier_block *self, unsigned long cmd,
>  		return NOTIFY_DONE;
>
>  	local_irq_save(flags);
> -	if (kgdb_handle_exception(1, args->signr, cmd, regs))
> +	if (kgdb_handle_exception(type == KGDB_SW_SINGLE_STEP ? 0 : 1,
> +				  args->signr, cmd, regs))
>  		return NOTIFY_DONE;
>
>  	if (type == KGDB_COMPILED_BREAK)

