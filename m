Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 771D11299BD
	for <lists+linux-riscv@lfdr.de>; Mon, 23 Dec 2019 19:03:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Mime-Version:Message-ID:References:
	In-Reply-To:To:Subject:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SX6xGdHWcUslbOaZq1936ovi75UbfYkq2eUPLIzVJRg=; b=rFI9T+T/6Xjjnu
	uhwqAMprB8Ove2XrtlfOSngPYj05LCC8zUbKl3K5UQsYbsx/wnWQcai8XaleQlI2h48kLxEP5Elr1
	xOc9eILMkz8Ook2PFJGs1gNV34d7wOp09sGzxxu51FhCBZN+OWVBDLc1h8XXcOVCTzmel8x4qc82d
	m+v3KoARC98Buk5YymXjzHYH4P1SCkC1aWm2+ORWlfRIxvL2dr9e3mjP7DpgatVKqOmbxAKfTOacR
	376/IGgd79V85OV9Y2fCHb8uEcWB6lQT3ZEx19EUWwiarkdtd3BrUS4G/9fu9o2WSxeFSoTFbwB3D
	O/t2iH+jpnAhoCNrx49Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijS3S-00025z-54; Mon, 23 Dec 2019 18:03:42 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijS3L-00024c-VD
 for linux-riscv@lists.infradead.org; Mon, 23 Dec 2019 18:03:38 +0000
Received: by mail-pl1-x644.google.com with SMTP id c13so7477352pls.0
 for <linux-riscv@lists.infradead.org>; Mon, 23 Dec 2019 10:03:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:from:subject:cc:to:in-reply-to:references:message-id
 :mime-version:content-transfer-encoding;
 bh=SX6xGdHWcUslbOaZq1936ovi75UbfYkq2eUPLIzVJRg=;
 b=kwWoa9JLAwA2Fb4ueybvidyLBDjAom2y7rtrkUmXqoNCNQ4PePSEKVHfvXHbWf3YEU
 RqPerjfpOplXJEkVt+HR7D7yRn9uk4GlH7TaC0gXdunW20mhtvB70x1gwS+0J3ueyDWH
 WAaHYK8PbPy89DNEN+XXBumey+UTPTSEc+i1Xk+3yKhsNItj6MmAxVSX2Aof7KcAhFUb
 Dmb8cXYP4fiYzpicRhaO8sNbf6oGC0igBXAAWDv851+6DP7z3GSHJqAORB7Tc57P/VH4
 hVgE1y1tyJ+oRFQX1ejtsj3ry3KRShHSpfNMNI3fYttUU2gA9YAuLlUT9SqNGjRLoxdX
 Pi4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:subject:cc:to:in-reply-to:references
 :message-id:mime-version:content-transfer-encoding;
 bh=SX6xGdHWcUslbOaZq1936ovi75UbfYkq2eUPLIzVJRg=;
 b=UXkTYATAytR999NbREhdPZxOfpP0XyKyCtmyfywiBD/7/9LDavHYqGL4oROi5CzKGx
 Mvn2lWJDyB5KMYokO9AEhvlc7LCye/ukqIBEWGAjoTPyIKZVImNHIaGDC3WZdbc8st0O
 fb3JHFWwznBxJbO0Vdg3C9S5qBhaFUpKxRlpp4OOpJfXtVtvYNTW1a3rL57C0FU11V5X
 95uVkrghzam3KUPo/HZK0UYG0fQ3aO+vULSF7SX5vsIxJ0J1GGgsy+qXc1OYE2eVrr98
 R8IGt2401w7tuCy7yXcs8jTA/RiB5nbJN3ZjdyQhELaoxHc/NMTfwSUui8ECnKdRoyA+
 DEHw==
X-Gm-Message-State: APjAAAUwKC37xKDzydEKV4ioqQ/w7/iB2kbT5k/4puK6DKLqp9eJ+0Od
 H/PUp7p1EHPnGK58FuKgY1vFlQ==
X-Google-Smtp-Source: APXvYqzgXBk/wo2vTnIy3t9wEaW/hHRyc4vt8FDumRtGKTRJ6zmBfemhU4yg1fwRxDlKKCexPmcNrQ==
X-Received: by 2002:a17:902:9a42:: with SMTP id
 x2mr23865135plv.322.1577124212093; 
 Mon, 23 Dec 2019 10:03:32 -0800 (PST)
Received: from localhost ([2620:0:1000:2514:7f69:cd98:a2a2:a03d])
 by smtp.gmail.com with ESMTPSA id h12sm10439980pfo.12.2019.12.23.10.03.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 Dec 2019 10:03:31 -0800 (PST)
Date: Mon, 23 Dec 2019 10:03:31 -0800 (PST)
X-Google-Original-Date: Mon, 23 Dec 2019 10:03:28 PST (-0800)
From: Palmer Dabbelt <palmerdabbelt@google.com>
X-Google-Original-From: Palmer Dabbelt <palmer@dabbelt.com>
Subject: Re: [PATCH bpf-next v2 2/9] riscv, bpf: add support for far branching
To: Bjorn Topel <bjorn.topel@gmail.com>
In-Reply-To: <20191216091343.23260-3-bjorn.topel@gmail.com>
References: <20191216091343.23260-3-bjorn.topel@gmail.com>
 <20191216091343.23260-1-bjorn.topel@gmail.com>
Message-ID: <mhng-6be38b2a-78df-4016-aaea-f35aa0acd7e0@palmerdabbelt-glaptop>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191223_100336_041111_6176EE61 
X-CRM114-Status: GOOD (  22.70  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: daniel@iogearbox.net, netdev@vger.kernel.org, ast@kernel.org,
 lukenels@cs.washington.edu, Bjorn Topel <bjorn.topel@gmail.com>,
 linux-riscv@lists.infradead.org, bpf@vger.kernel.org, xi.wang@gmail.com
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, 16 Dec 2019 01:13:36 PST (-0800), Bjorn Topel wrote:
> This commit adds branch relaxation to the BPF JIT, and with that
> support for far (offset greater than 12b) branching.

Interesting.  We don't actually relax these in the binutils linker, but instead
just do it staticly at assembly time...

> The branch relaxation requires more than two passes to converge. For
> most programs it is three passes, but for larger programs it can be
> more.

... and that's why :).  In binutils we just worst-case the link-time
relaxations when doing assembler relaxation, which proves to be good enough.  C
code doesn't branch outside a function, so most branches end up fairly short
anyway.

> Reviewed-by: Luke Nelson <lukenels@cs.washington.edu>
> Cc: Xi Wang <xi.wang@gmail.com>
> Signed-off-by: Björn Töpel <bjorn.topel@gmail.com>
> ---
>  arch/riscv/net/bpf_jit_comp.c | 352 ++++++++++++++++++----------------
>  1 file changed, 188 insertions(+), 164 deletions(-)
>
> diff --git a/arch/riscv/net/bpf_jit_comp.c b/arch/riscv/net/bpf_jit_comp.c
> index 1606ebd49666..e599458a9bcd 100644
> --- a/arch/riscv/net/bpf_jit_comp.c
> +++ b/arch/riscv/net/bpf_jit_comp.c
> @@ -461,6 +461,11 @@ static u32 rv_amoadd_d(u8 rd, u8 rs2, u8 rs1, u8 aq, u8 rl)
>  	return rv_amo_insn(0, aq, rl, rs2, rs1, 3, rd, 0x2f);
>  }
>
> +static u32 rv_auipc(u8 rd, u32 imm31_12)
> +{
> +	return rv_u_insn(imm31_12, rd, 0x17);
> +}
> +
>  static bool is_12b_int(s64 val)
>  {
>  	return -(1 << 11) <= val && val < (1 << 11);
> @@ -484,7 +489,7 @@ static bool is_32b_int(s64 val)
>  static int is_12b_check(int off, int insn)
>  {
>  	if (!is_12b_int(off)) {
> -		pr_err("bpf-jit: insn=%d offset=%d not supported yet!\n",
> +		pr_err("bpf-jit: insn=%d 12b < offset=%d not supported yet!\n",
>  		       insn, (int)off);
>  		return -1;
>  	}
> @@ -494,7 +499,7 @@ static int is_12b_check(int off, int insn)
>  static int is_13b_check(int off, int insn)
>  {
>  	if (!is_13b_int(off)) {
> -		pr_err("bpf-jit: insn=%d offset=%d not supported yet!\n",
> +		pr_err("bpf-jit: insn=%d 13b < offset=%d not supported yet!\n",
>  		       insn, (int)off);
>  		return -1;
>  	}
> @@ -504,7 +509,7 @@ static int is_13b_check(int off, int insn)
>  static int is_21b_check(int off, int insn)
>  {
>  	if (!is_21b_int(off)) {
> -		pr_err("bpf-jit: insn=%d offset=%d not supported yet!\n",
> +		pr_err("bpf-jit: insn=%d 21b < offset=%d not supported yet!\n",
>  		       insn, (int)off);
>  		return -1;
>  	}
> @@ -550,10 +555,13 @@ static void emit_imm(u8 rd, s64 val, struct rv_jit_context *ctx)
>  		emit(rv_addi(rd, rd, lower), ctx);
>  }
>
> -static int rv_offset(int bpf_to, int bpf_from, struct rv_jit_context *ctx)
> +static int rv_offset(int insn, int off, struct rv_jit_context *ctx)
>  {
> -	int from = ctx->offset[bpf_from] - 1, to = ctx->offset[bpf_to];
> +	int from, to;
>
> +	off++; /* BPF branch is from PC+1, RV is from PC */
> +	from = (insn > 0) ? ctx->offset[insn - 1] : 0;
> +	to = (insn + off > 0) ? ctx->offset[insn + off - 1] : 0;
>  	return (to - from) << 2;
>  }
>
> @@ -606,6 +614,109 @@ static void __build_epilogue(u8 reg, struct rv_jit_context *ctx)
>  	emit(rv_jalr(RV_REG_ZERO, reg, 0), ctx);
>  }
>
> +/* return -1 or inverted cond */
> +static int invert_bpf_cond(u8 cond)
> +{
> +	switch (cond) {
> +	case BPF_JEQ:
> +		return BPF_JNE;
> +	case BPF_JGT:
> +		return BPF_JLE;
> +	case BPF_JLT:
> +		return BPF_JGE;
> +	case BPF_JGE:
> +		return BPF_JLT;
> +	case BPF_JLE:
> +		return BPF_JGT;
> +	case BPF_JNE:
> +		return BPF_JEQ;
> +	case BPF_JSGT:
> +		return BPF_JSLE;
> +	case BPF_JSLT:
> +		return BPF_JSGE;
> +	case BPF_JSGE:
> +		return BPF_JSLT;
> +	case BPF_JSLE:
> +		return BPF_JSGT;
> +	}
> +	return -1;
> +}
> +
> +static void emit_bcc(u8 cond, u8 rd, u8 rs, int rvoff,
> +		     struct rv_jit_context *ctx)
> +{
> +	switch (cond) {
> +	case BPF_JEQ:
> +		emit(rv_beq(rd, rs, rvoff >> 1), ctx);
> +		return;
> +	case BPF_JGT:
> +		emit(rv_bltu(rs, rd, rvoff >> 1), ctx);
> +		return;
> +	case BPF_JLT:
> +		emit(rv_bltu(rd, rs, rvoff >> 1), ctx);
> +		return;
> +	case BPF_JGE:
> +		emit(rv_bgeu(rd, rs, rvoff >> 1), ctx);
> +		return;
> +	case BPF_JLE:
> +		emit(rv_bgeu(rs, rd, rvoff >> 1), ctx);
> +		return;
> +	case BPF_JNE:
> +		emit(rv_bne(rd, rs, rvoff >> 1), ctx);
> +		return;
> +	case BPF_JSGT:
> +		emit(rv_blt(rs, rd, rvoff >> 1), ctx);
> +		return;
> +	case BPF_JSLT:
> +		emit(rv_blt(rd, rs, rvoff >> 1), ctx);
> +		return;
> +	case BPF_JSGE:
> +		emit(rv_bge(rd, rs, rvoff >> 1), ctx);
> +		return;
> +	case BPF_JSLE:
> +		emit(rv_bge(rs, rd, rvoff >> 1), ctx);
> +	}
> +}
> +
> +static void emit_branch(u8 cond, u8 rd, u8 rs, int rvoff,
> +			struct rv_jit_context *ctx)
> +{
> +	s64 upper, lower;
> +
> +	if (is_13b_int(rvoff)) {
> +		emit_bcc(cond, rd, rs, rvoff, ctx);
> +		return;
> +	}
> +
> +	/* Adjust for jal */
> +	rvoff -= 4;
> +
> +	/* Transform, e.g.:
> +	 *   bne rd,rs,foo
> +	 * to
> +	 *   beq rd,rs,<.L1>
> +	 *   (auipc foo)
> +	 *   jal(r) foo
> +	 * .L1
> +	 */
> +	cond = invert_bpf_cond(cond);
> +	if (is_21b_int(rvoff)) {
> +		emit_bcc(cond, rd, rs, 8, ctx);
> +		emit(rv_jal(RV_REG_ZERO, rvoff >> 1), ctx);
> +		return;
> +	}
> +
> +	/* 32b No need for an additional rvoff adjustment, since we
> +	 * get that from the auipc at PC', where PC = PC' + 4.
> +	 */
> +	upper = (rvoff + (1 << 11)) >> 12;
> +	lower = rvoff & 0xfff;
> +
> +	emit_bcc(cond, rd, rs, 12, ctx);
> +	emit(rv_auipc(RV_REG_T1, upper), ctx);
> +	emit(rv_jalr(RV_REG_ZERO, RV_REG_T1, lower), ctx);
> +}
> +
>  static void emit_zext_32(u8 reg, struct rv_jit_context *ctx)
>  {
>  	emit(rv_slli(reg, reg, 32), ctx);
> @@ -693,13 +804,6 @@ static void init_regs(u8 *rd, u8 *rs, const struct bpf_insn *insn,
>  		*rs = bpf_to_rv_reg(insn->src_reg, ctx);
>  }
>
> -static int rv_offset_check(int *rvoff, s16 off, int insn,
> -			   struct rv_jit_context *ctx)
> -{
> -	*rvoff = rv_offset(insn + off, insn, ctx);
> -	return is_13b_check(*rvoff, insn);
> -}
> -
>  static void emit_zext_32_rd_rs(u8 *rd, u8 *rs, struct rv_jit_context *ctx)
>  {
>  	emit(rv_addi(RV_REG_T2, *rd, 0), ctx);
> @@ -732,13 +836,19 @@ static void emit_sext_32_rd(u8 *rd, struct rv_jit_context *ctx)
>  	*rd = RV_REG_T2;
>  }
>
> +static bool is_signed_bpf_cond(u8 cond)
> +{
> +	return cond == BPF_JSGT || cond == BPF_JSLT ||
> +		cond == BPF_JSGE || cond == BPF_JSLE;
> +}
> +
>  static int emit_insn(const struct bpf_insn *insn, struct rv_jit_context *ctx,
>  		     bool extra_pass)
>  {
>  	bool is64 = BPF_CLASS(insn->code) == BPF_ALU64 ||
>  		    BPF_CLASS(insn->code) == BPF_JMP;
> +	int s, e, rvoff, i = insn - ctx->prog->insnsi;
>  	struct bpf_prog_aux *aux = ctx->prog->aux;
> -	int rvoff, i = insn - ctx->prog->insnsi;
>  	u8 rd = -1, rs = -1, code = insn->code;
>  	s16 off = insn->off;
>  	s32 imm = insn->imm;
> @@ -1006,7 +1116,7 @@ static int emit_insn(const struct bpf_insn *insn, struct rv_jit_context *ctx,
>
>  	/* JUMP off */
>  	case BPF_JMP | BPF_JA:
> -		rvoff = rv_offset(i + off, i, ctx);
> +		rvoff = rv_offset(i, off, ctx);
>  		if (!is_21b_int(rvoff)) {
>  			pr_err("bpf-jit: insn=%d offset=%d not supported yet!\n",
>  			       i, rvoff);
> @@ -1019,194 +1129,96 @@ static int emit_insn(const struct bpf_insn *insn, struct rv_jit_context *ctx,
>  	/* IF (dst COND src) JUMP off */
>  	case BPF_JMP | BPF_JEQ | BPF_X:
>  	case BPF_JMP32 | BPF_JEQ | BPF_X:
> -		if (rv_offset_check(&rvoff, off, i, ctx))
> -			return -1;
> -		if (!is64)
> -			emit_zext_32_rd_rs(&rd, &rs, ctx);
> -		emit(rv_beq(rd, rs, rvoff >> 1), ctx);
> -		break;
>  	case BPF_JMP | BPF_JGT | BPF_X:
>  	case BPF_JMP32 | BPF_JGT | BPF_X:
> -		if (rv_offset_check(&rvoff, off, i, ctx))
> -			return -1;
> -		if (!is64)
> -			emit_zext_32_rd_rs(&rd, &rs, ctx);
> -		emit(rv_bltu(rs, rd, rvoff >> 1), ctx);
> -		break;
>  	case BPF_JMP | BPF_JLT | BPF_X:
>  	case BPF_JMP32 | BPF_JLT | BPF_X:
> -		if (rv_offset_check(&rvoff, off, i, ctx))
> -			return -1;
> -		if (!is64)
> -			emit_zext_32_rd_rs(&rd, &rs, ctx);
> -		emit(rv_bltu(rd, rs, rvoff >> 1), ctx);
> -		break;
>  	case BPF_JMP | BPF_JGE | BPF_X:
>  	case BPF_JMP32 | BPF_JGE | BPF_X:
> -		if (rv_offset_check(&rvoff, off, i, ctx))
> -			return -1;
> -		if (!is64)
> -			emit_zext_32_rd_rs(&rd, &rs, ctx);
> -		emit(rv_bgeu(rd, rs, rvoff >> 1), ctx);
> -		break;
>  	case BPF_JMP | BPF_JLE | BPF_X:
>  	case BPF_JMP32 | BPF_JLE | BPF_X:
> -		if (rv_offset_check(&rvoff, off, i, ctx))
> -			return -1;
> -		if (!is64)
> -			emit_zext_32_rd_rs(&rd, &rs, ctx);
> -		emit(rv_bgeu(rs, rd, rvoff >> 1), ctx);
> -		break;
>  	case BPF_JMP | BPF_JNE | BPF_X:
>  	case BPF_JMP32 | BPF_JNE | BPF_X:
> -		if (rv_offset_check(&rvoff, off, i, ctx))
> -			return -1;
> -		if (!is64)
> -			emit_zext_32_rd_rs(&rd, &rs, ctx);
> -		emit(rv_bne(rd, rs, rvoff >> 1), ctx);
> -		break;
>  	case BPF_JMP | BPF_JSGT | BPF_X:
>  	case BPF_JMP32 | BPF_JSGT | BPF_X:
> -		if (rv_offset_check(&rvoff, off, i, ctx))
> -			return -1;
> -		if (!is64)
> -			emit_sext_32_rd_rs(&rd, &rs, ctx);
> -		emit(rv_blt(rs, rd, rvoff >> 1), ctx);
> -		break;
>  	case BPF_JMP | BPF_JSLT | BPF_X:
>  	case BPF_JMP32 | BPF_JSLT | BPF_X:
> -		if (rv_offset_check(&rvoff, off, i, ctx))
> -			return -1;
> -		if (!is64)
> -			emit_sext_32_rd_rs(&rd, &rs, ctx);
> -		emit(rv_blt(rd, rs, rvoff >> 1), ctx);
> -		break;
>  	case BPF_JMP | BPF_JSGE | BPF_X:
>  	case BPF_JMP32 | BPF_JSGE | BPF_X:
> -		if (rv_offset_check(&rvoff, off, i, ctx))
> -			return -1;
> -		if (!is64)
> -			emit_sext_32_rd_rs(&rd, &rs, ctx);
> -		emit(rv_bge(rd, rs, rvoff >> 1), ctx);
> -		break;
>  	case BPF_JMP | BPF_JSLE | BPF_X:
>  	case BPF_JMP32 | BPF_JSLE | BPF_X:
> -		if (rv_offset_check(&rvoff, off, i, ctx))
> -			return -1;
> -		if (!is64)
> -			emit_sext_32_rd_rs(&rd, &rs, ctx);
> -		emit(rv_bge(rs, rd, rvoff >> 1), ctx);
> -		break;
>  	case BPF_JMP | BPF_JSET | BPF_X:
>  	case BPF_JMP32 | BPF_JSET | BPF_X:
> -		if (rv_offset_check(&rvoff, off, i, ctx))
> -			return -1;
> -		if (!is64)
> -			emit_zext_32_rd_rs(&rd, &rs, ctx);
> -		emit(rv_and(RV_REG_T1, rd, rs), ctx);
> -		emit(rv_bne(RV_REG_T1, RV_REG_ZERO, rvoff >> 1), ctx);
> +		rvoff = rv_offset(i, off, ctx);
> +		if (!is64) {
> +			s = ctx->ninsns;
> +			if (is_signed_bpf_cond(BPF_OP(code)))
> +				emit_sext_32_rd_rs(&rd, &rs, ctx);
> +			else
> +				emit_zext_32_rd_rs(&rd, &rs, ctx);
> +			e = ctx->ninsns;
> +
> +			/* Adjust for extra insns */
> +			rvoff -= (e - s) << 2;
> +		}
> +
> +		if (BPF_OP(code) == BPF_JSET) {
> +			/* Adjust for and */
> +			rvoff -= 4;
> +			emit(rv_and(RV_REG_T1, rd, rs), ctx);
> +			emit_branch(BPF_JNE, RV_REG_T1, RV_REG_ZERO, rvoff,
> +				    ctx);
> +		} else {
> +			emit_branch(BPF_OP(code), rd, rs, rvoff, ctx);
> +		}
>  		break;
>
>  	/* IF (dst COND imm) JUMP off */
>  	case BPF_JMP | BPF_JEQ | BPF_K:
>  	case BPF_JMP32 | BPF_JEQ | BPF_K:
> -		if (rv_offset_check(&rvoff, off, i, ctx))
> -			return -1;
> -		emit_imm(RV_REG_T1, imm, ctx);
> -		if (!is64)
> -			emit_zext_32_rd_t1(&rd, ctx);
> -		emit(rv_beq(rd, RV_REG_T1, rvoff >> 1), ctx);
> -		break;
>  	case BPF_JMP | BPF_JGT | BPF_K:
>  	case BPF_JMP32 | BPF_JGT | BPF_K:
> -		if (rv_offset_check(&rvoff, off, i, ctx))
> -			return -1;
> -		emit_imm(RV_REG_T1, imm, ctx);
> -		if (!is64)
> -			emit_zext_32_rd_t1(&rd, ctx);
> -		emit(rv_bltu(RV_REG_T1, rd, rvoff >> 1), ctx);
> -		break;
>  	case BPF_JMP | BPF_JLT | BPF_K:
>  	case BPF_JMP32 | BPF_JLT | BPF_K:
> -		if (rv_offset_check(&rvoff, off, i, ctx))
> -			return -1;
> -		emit_imm(RV_REG_T1, imm, ctx);
> -		if (!is64)
> -			emit_zext_32_rd_t1(&rd, ctx);
> -		emit(rv_bltu(rd, RV_REG_T1, rvoff >> 1), ctx);
> -		break;
>  	case BPF_JMP | BPF_JGE | BPF_K:
>  	case BPF_JMP32 | BPF_JGE | BPF_K:
> -		if (rv_offset_check(&rvoff, off, i, ctx))
> -			return -1;
> -		emit_imm(RV_REG_T1, imm, ctx);
> -		if (!is64)
> -			emit_zext_32_rd_t1(&rd, ctx);
> -		emit(rv_bgeu(rd, RV_REG_T1, rvoff >> 1), ctx);
> -		break;
>  	case BPF_JMP | BPF_JLE | BPF_K:
>  	case BPF_JMP32 | BPF_JLE | BPF_K:
> -		if (rv_offset_check(&rvoff, off, i, ctx))
> -			return -1;
> -		emit_imm(RV_REG_T1, imm, ctx);
> -		if (!is64)
> -			emit_zext_32_rd_t1(&rd, ctx);
> -		emit(rv_bgeu(RV_REG_T1, rd, rvoff >> 1), ctx);
> -		break;
>  	case BPF_JMP | BPF_JNE | BPF_K:
>  	case BPF_JMP32 | BPF_JNE | BPF_K:
> -		if (rv_offset_check(&rvoff, off, i, ctx))
> -			return -1;
> -		emit_imm(RV_REG_T1, imm, ctx);
> -		if (!is64)
> -			emit_zext_32_rd_t1(&rd, ctx);
> -		emit(rv_bne(rd, RV_REG_T1, rvoff >> 1), ctx);
> -		break;
>  	case BPF_JMP | BPF_JSGT | BPF_K:
>  	case BPF_JMP32 | BPF_JSGT | BPF_K:
> -		if (rv_offset_check(&rvoff, off, i, ctx))
> -			return -1;
> -		emit_imm(RV_REG_T1, imm, ctx);
> -		if (!is64)
> -			emit_sext_32_rd(&rd, ctx);
> -		emit(rv_blt(RV_REG_T1, rd, rvoff >> 1), ctx);
> -		break;
>  	case BPF_JMP | BPF_JSLT | BPF_K:
>  	case BPF_JMP32 | BPF_JSLT | BPF_K:
> -		if (rv_offset_check(&rvoff, off, i, ctx))
> -			return -1;
> -		emit_imm(RV_REG_T1, imm, ctx);
> -		if (!is64)
> -			emit_sext_32_rd(&rd, ctx);
> -		emit(rv_blt(rd, RV_REG_T1, rvoff >> 1), ctx);
> -		break;
>  	case BPF_JMP | BPF_JSGE | BPF_K:
>  	case BPF_JMP32 | BPF_JSGE | BPF_K:
> -		if (rv_offset_check(&rvoff, off, i, ctx))
> -			return -1;
> -		emit_imm(RV_REG_T1, imm, ctx);
> -		if (!is64)
> -			emit_sext_32_rd(&rd, ctx);
> -		emit(rv_bge(rd, RV_REG_T1, rvoff >> 1), ctx);
> -		break;
>  	case BPF_JMP | BPF_JSLE | BPF_K:
>  	case BPF_JMP32 | BPF_JSLE | BPF_K:
> -		if (rv_offset_check(&rvoff, off, i, ctx))
> -			return -1;
> -		emit_imm(RV_REG_T1, imm, ctx);
> -		if (!is64)
> -			emit_sext_32_rd(&rd, ctx);
> -		emit(rv_bge(RV_REG_T1, rd, rvoff >> 1), ctx);
> -		break;
>  	case BPF_JMP | BPF_JSET | BPF_K:
>  	case BPF_JMP32 | BPF_JSET | BPF_K:
> -		if (rv_offset_check(&rvoff, off, i, ctx))
> -			return -1;
> +		rvoff = rv_offset(i, off, ctx);
> +		s = ctx->ninsns;
>  		emit_imm(RV_REG_T1, imm, ctx);
> -		if (!is64)
> -			emit_zext_32_rd_t1(&rd, ctx);
> -		emit(rv_and(RV_REG_T1, rd, RV_REG_T1), ctx);
> -		emit(rv_bne(RV_REG_T1, RV_REG_ZERO, rvoff >> 1), ctx);
> +		if (!is64) {
> +			if (is_signed_bpf_cond(BPF_OP(code)))
> +				emit_sext_32_rd(&rd, ctx);
> +			else
> +				emit_zext_32_rd_t1(&rd, ctx);
> +		}
> +		e = ctx->ninsns;
> +
> +		/* Adjust for extra insns */
> +		rvoff -= (e - s) << 2;
> +
> +		if (BPF_OP(code) == BPF_JSET) {
> +			/* Adjust for and */
> +			rvoff -= 4;
> +			emit(rv_and(RV_REG_T1, rd, RV_REG_T1), ctx);
> +			emit_branch(BPF_JNE, RV_REG_T1, RV_REG_ZERO, rvoff,
> +				    ctx);
> +		} else {
> +			emit_branch(BPF_OP(code), rd, RV_REG_T1, rvoff, ctx);
> +		}
>  		break;
>
>  	/* function call */
> @@ -1557,6 +1569,7 @@ struct bpf_prog *bpf_int_jit_compile(struct bpf_prog *prog)
>  {
>  	bool tmp_blinded = false, extra_pass = false;
>  	struct bpf_prog *tmp, *orig_prog = prog;
> +	int pass = 0, prev_ninsns = 0, i;
>  	struct rv_jit_data *jit_data;
>  	struct rv_jit_context *ctx;
>  	unsigned int image_size;
> @@ -1596,15 +1609,25 @@ struct bpf_prog *bpf_int_jit_compile(struct bpf_prog *prog)
>  		prog = orig_prog;
>  		goto out_offset;
>  	}
> +	for (i = 0; i < prog->len; i++) {
> +		prev_ninsns += 32;
> +		ctx->offset[i] = prev_ninsns;
> +	}

It feels like the first-order implementation is the same as binutils here: the
first round is worst cased, after which things can be more exact.  We're only
doing one pass in binutils because most of the relaxation happens in the
linker, but this approach seems reasonable to me.  I'd be interested in seeing
some benchmarks, as it may be worth relaxing these in the binutils linker as
well -- I can certainly come up with contrived test cases that aren't relaxed,
but I'm not sure how common this is.

My only worry is that that invariant should be more explicit.  Specifically,
I'm thinking that every time offset is updated there should be some sort of
assertion that the offset is shrinking.  This is enforced structurally in the
binutils code because we only generate code once and then move it around, but
since you're generating code every time it'd be easy for a bug to sneak in as
the JIT gets more complicated.

Since most of the branches should be forward, you'll probably end up with way
fewer iterations if you do the optimization passes backwards.

> -	/* First pass generates the ctx->offset, but does not emit an image. */
> -	if (build_body(ctx, extra_pass)) {
> -		prog = orig_prog;
> -		goto out_offset;
> +	for (i = 0; i < 16; i++) {
> +		pass++;
> +		ctx->ninsns = 0;
> +		if (build_body(ctx, extra_pass)) {
> +			prog = orig_prog;
> +			goto out_offset;

Isn't this returning a broken program if build_body() errors out the first time
through?

> +		}
> +		build_prologue(ctx);
> +		ctx->epilogue_offset = ctx->ninsns;
> +		build_epilogue(ctx);
> +		if (ctx->ninsns == prev_ninsns)
> +			break;
> +		prev_ninsns = ctx->ninsns;

IDK how important the performance of the JIT is, but you could probably get
away with skipping an iteration by keeping track of some simple metric that
determines if it would be possible to 

>  	}
> -	build_prologue(ctx);
> -	ctx->epilogue_offset = ctx->ninsns;
> -	build_epilogue(ctx);
>
>  	/* Allocate image, now that we know the size. */
>  	image_size = sizeof(u32) * ctx->ninsns;
> @@ -1619,6 +1642,7 @@ struct bpf_prog *bpf_int_jit_compile(struct bpf_prog *prog)
>  	/* Second, real pass, that acutally emits the image. */
>  	ctx->insns = (u32 *)jit_data->image;
>  skip_init_ctx:
> +	pass++;
>  	ctx->ninsns = 0;
>
>  	build_prologue(ctx);
> @@ -1630,7 +1654,7 @@ struct bpf_prog *bpf_int_jit_compile(struct bpf_prog *prog)
>  	build_epilogue(ctx);
>
>  	if (bpf_jit_enable > 1)
> -		bpf_jit_dump(prog->len, image_size, 2, ctx->insns);
> +		bpf_jit_dump(prog->len, image_size, pass, ctx->insns);
>
>  	prog->bpf_func = (void *)ctx->insns;
>  	prog->jited = 1;

