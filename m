Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BACB129A01
	for <lists+linux-riscv@lfdr.de>; Mon, 23 Dec 2019 19:58:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Mime-Version:Message-ID:References:
	In-Reply-To:To:Subject:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A7JVk1cXsoYFiiChroTLy8zZeWGRIe3FHpiOiUqKpGU=; b=jgb6OyKAYs0rLs
	iNJkn/2e0eoSTQO19CYztHsfOpdVC8z3efszVGciEhp/kvV8mFrgigfz43Nx3ip7f4SQmFaZ+7jN/
	vPq79rVKHO832+MMBb1dKpsBVtY9c3DzgGNaSO6lJU2LnIVCT5kMdP7dRpKb4FBam0mqIO+rXG2YE
	DZdLvBdxO6liSZ/pOaXCBIq2erB4+JROdk559eRvxduGIGqZ2UcBBfVp9u9AYWiDCoSvjSkPJYyg4
	iMCiZzf4EVNr3zcfRokBAHopQbSjL9P76vRGyheL03NWePQ2vRq7RHGVRB2GUsMNfiTTdAPCefXc9
	wldMTy8HUmdpTF+er5UQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijSun-0002Gf-E8; Mon, 23 Dec 2019 18:58:49 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijSuj-0002Fc-6m
 for linux-riscv@lists.infradead.org; Mon, 23 Dec 2019 18:58:46 +0000
Received: by mail-pg1-x543.google.com with SMTP id b9so9227537pgk.12
 for <linux-riscv@lists.infradead.org>; Mon, 23 Dec 2019 10:58:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:from:subject:cc:to:in-reply-to:references:message-id
 :mime-version:content-transfer-encoding;
 bh=A7JVk1cXsoYFiiChroTLy8zZeWGRIe3FHpiOiUqKpGU=;
 b=T7/pNyTuaDMWNBPwbrY1VYEKkvSk+2k6cVVmGNufeC4yFeaRCNG1EOnGzAl4vsy3ip
 brXTVX476PPN5U4ebArZ2nPebc0oVhRIHDiDEaMQYICQGquIWyLEv5BGbXqJ92wWhEBJ
 QfbyBjXs6syNuREWLyEGDXV0v+2U9wU0MGKSfIg1i7jMRnTH8akAZu5bEYPjiNBK4Qhz
 9e06igomCGNBAWSSCd0mqbVS42WTolDEdkHddr5oBdiP/MjoYXKQNqetSlEcofQDUGup
 FOfR8EIiuCK6FuHVBTlpMA771cX6mqWdiGiOg7uFi/ngXERB4gdbhvg2/xVPWsk8oUtt
 elFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:subject:cc:to:in-reply-to:references
 :message-id:mime-version:content-transfer-encoding;
 bh=A7JVk1cXsoYFiiChroTLy8zZeWGRIe3FHpiOiUqKpGU=;
 b=IHI5X5tt2TtZEF7k2kYwuVervmZz+AlaglbRbVQc8pu94B9Z2sXEsn6+h4wKzVy1kI
 d+mWpOxoJ9WHZ4aBv2SxKMa6ef7GCkE8OCzuZxYXkRs0eXu1cm4y9nqviX5JU9s1gSAA
 /wZikqITbJhp6ihreI5JehFQxV0eIxyPht7qJ/Ew4O/7PKtWeqhWwLi1fHf2DnVnNzmG
 E12iFh58m+gbr5Ui47QClEtxEHo2kNpUH2LaDBo1Tpr8M/QIBrrnG3RLsNBrP4PUQILa
 mLs3MdDgjKJ7q9XnQZ1WCQcauE6KW53JzrAvjmkbTVwRQNFi3bR9gUXgWqNwbGE4lFkH
 5QWg==
X-Gm-Message-State: APjAAAWtulMbThR1QR1GqzLLtiCzvlPn1AcoXERX1TJj+7dPDHaresWq
 n9/hq15HQ+DJXlUTJLeYGr+LVQ==
X-Google-Smtp-Source: APXvYqy8VjDtj2M4YXOgNQVoS5W6G2214rRGeclX3IHaVhjTP1Xl1eEWmabjscdOkvOmZ8taN4sZIA==
X-Received: by 2002:a63:3196:: with SMTP id
 x144mr32652805pgx.319.1577127523915; 
 Mon, 23 Dec 2019 10:58:43 -0800 (PST)
Received: from localhost ([2620:0:1000:2514:7f69:cd98:a2a2:a03d])
 by smtp.gmail.com with ESMTPSA id s130sm23094849pgc.82.2019.12.23.10.58.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 Dec 2019 10:58:43 -0800 (PST)
Date: Mon, 23 Dec 2019 10:58:43 -0800 (PST)
X-Google-Original-Date: Mon, 23 Dec 2019 10:57:47 PST (-0800)
From: Palmer Dabbelt <palmerdabbelt@google.com>
X-Google-Original-From: Palmer Dabbelt <palmer@dabbelt.com>
Subject: Re: [PATCH bpf-next v2 7/9] riscv, bpf: optimize calls
To: Bjorn Topel <bjorn.topel@gmail.com>
In-Reply-To: <20191216091343.23260-8-bjorn.topel@gmail.com>
References: <20191216091343.23260-8-bjorn.topel@gmail.com>
 <20191216091343.23260-1-bjorn.topel@gmail.com>
Message-ID: <mhng-041b1051-f9ac-4cd8-95bf-731bb1bfbdb8@palmerdabbelt-glaptop>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191223_105845_278441_0BB207A8 
X-CRM114-Status: GOOD (  21.04  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
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
 Bjorn Topel <bjorn.topel@gmail.com>, linux-riscv@lists.infradead.org,
 bpf@vger.kernel.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, 16 Dec 2019 01:13:41 PST (-0800), Bjorn Topel wrote:
> Instead of using emit_imm() and emit_jalr() which can expand to six
> instructions, start using jal or auipc+jalr.
>
> Signed-off-by: Björn Töpel <bjorn.topel@gmail.com>
> ---
>  arch/riscv/net/bpf_jit_comp.c | 101 +++++++++++++++++++++-------------
>  1 file changed, 64 insertions(+), 37 deletions(-)
>
> diff --git a/arch/riscv/net/bpf_jit_comp.c b/arch/riscv/net/bpf_jit_comp.c
> index 46cff093f526..8d7e3343a08c 100644
> --- a/arch/riscv/net/bpf_jit_comp.c
> +++ b/arch/riscv/net/bpf_jit_comp.c
> @@ -811,11 +811,12 @@ static void emit_sext_32_rd(u8 *rd, struct rv_jit_context *ctx)
>  	*rd = RV_REG_T2;
>  }
>
> -static void emit_jump_and_link(u8 rd, int rvoff, struct rv_jit_context *ctx)
> +static void emit_jump_and_link(u8 rd, s64 rvoff, bool force_jalr,
> +			       struct rv_jit_context *ctx)
>  {
>  	s64 upper, lower;
>
> -	if (is_21b_int(rvoff)) {
> +	if (rvoff && is_21b_int(rvoff) && !force_jalr) {
>  		emit(rv_jal(rd, rvoff >> 1), ctx);
>  		return;
>  	}
> @@ -832,6 +833,28 @@ static bool is_signed_bpf_cond(u8 cond)
>  		cond == BPF_JSGE || cond == BPF_JSLE;
>  }
>
> +static int emit_call(bool fixed, u64 addr, struct rv_jit_context *ctx)
> +{
> +	s64 off = 0;
> +	u64 ip;
> +	u8 rd;
> +
> +	if (addr && ctx->insns) {
> +		ip = (u64)(long)(ctx->insns + ctx->ninsns);
> +		off = addr - ip;
> +		if (!is_32b_int(off)) {
> +			pr_err("bpf-jit: target call addr %pK is out of range\n",
> +			       (void *)addr);
> +			return -ERANGE;
> +		}
> +	}
> +
> +	emit_jump_and_link(RV_REG_RA, off, !fixed, ctx);
> +	rd = bpf_to_rv_reg(BPF_REG_0, ctx);
> +	emit(rv_addi(rd, RV_REG_A0, 0), ctx);

Why are they out of order?  It seems like it'd be better to just have the BPF
calling convention match the RISC-V calling convention, as that'd avoid
juggling the registers around.

> +	return 0;
> +}
> +
>  static int emit_insn(const struct bpf_insn *insn, struct rv_jit_context *ctx,
>  		     bool extra_pass)
>  {
> @@ -1107,7 +1130,7 @@ static int emit_insn(const struct bpf_insn *insn, struct rv_jit_context *ctx,
>  	/* JUMP off */
>  	case BPF_JMP | BPF_JA:
>  		rvoff = rv_offset(i, off, ctx);
> -		emit_jump_and_link(RV_REG_ZERO, rvoff, ctx);
> +		emit_jump_and_link(RV_REG_ZERO, rvoff, false, ctx);
>  		break;
>
>  	/* IF (dst COND src) JUMP off */
> @@ -1209,7 +1232,7 @@ static int emit_insn(const struct bpf_insn *insn, struct rv_jit_context *ctx,
>  	case BPF_JMP | BPF_CALL:
>  	{
>  		bool fixed;
> -		int i, ret;
> +		int ret;
>  		u64 addr;
>
>  		mark_call(ctx);
> @@ -1217,20 +1240,9 @@ static int emit_insn(const struct bpf_insn *insn, struct rv_jit_context *ctx,
>  					    &fixed);
>  		if (ret < 0)
>  			return ret;
> -		if (fixed) {
> -			emit_imm(RV_REG_T1, addr, ctx);
> -		} else {
> -			i = ctx->ninsns;
> -			emit_imm(RV_REG_T1, addr, ctx);
> -			for (i = ctx->ninsns - i; i < 8; i++) {
> -				/* nop */
> -				emit(rv_addi(RV_REG_ZERO, RV_REG_ZERO, 0),
> -				     ctx);
> -			}
> -		}
> -		emit(rv_jalr(RV_REG_RA, RV_REG_T1, 0), ctx);
> -		rd = bpf_to_rv_reg(BPF_REG_0, ctx);
> -		emit(rv_addi(rd, RV_REG_A0, 0), ctx);
> +		ret = emit_call(fixed, addr, ctx);
> +		if (ret)
> +			return ret;
>  		break;
>  	}
>  	/* tail call */
> @@ -1245,7 +1257,7 @@ static int emit_insn(const struct bpf_insn *insn, struct rv_jit_context *ctx,
>  			break;
>
>  		rvoff = epilogue_offset(ctx);
> -		emit_jump_and_link(RV_REG_ZERO, rvoff, ctx);
> +		emit_jump_and_link(RV_REG_ZERO, rvoff, false, ctx);
>  		break;
>
>  	/* dst = imm64 */
> @@ -1508,7 +1520,7 @@ static void build_epilogue(struct rv_jit_context *ctx)
>  	__build_epilogue(false, ctx);
>  }
>
> -static int build_body(struct rv_jit_context *ctx, bool extra_pass)
> +static int build_body(struct rv_jit_context *ctx, bool extra_pass, int *offset)
>  {
>  	const struct bpf_prog *prog = ctx->prog;
>  	int i;
> @@ -1520,12 +1532,12 @@ static int build_body(struct rv_jit_context *ctx, bool extra_pass)
>  		ret = emit_insn(insn, ctx, extra_pass);
>  		if (ret > 0) {
>  			i++;
> -			if (ctx->insns == NULL)
> -				ctx->offset[i] = ctx->ninsns;
> +			if (offset)
> +				offset[i] = ctx->ninsns;
>  			continue;
>  		}
> -		if (ctx->insns == NULL)
> -			ctx->offset[i] = ctx->ninsns;
> +		if (offset)
> +			offset[i] = ctx->ninsns;
>  		if (ret)
>  			return ret;
>  	}
> @@ -1553,8 +1565,8 @@ struct bpf_prog *bpf_int_jit_compile(struct bpf_prog *prog)
>  	struct bpf_prog *tmp, *orig_prog = prog;
>  	int pass = 0, prev_ninsns = 0, i;
>  	struct rv_jit_data *jit_data;
> +	unsigned int image_size = 0;
>  	struct rv_jit_context *ctx;
> -	unsigned int image_size;
>
>  	if (!prog->jit_requested)
>  		return orig_prog;
> @@ -1599,36 +1611,51 @@ struct bpf_prog *bpf_int_jit_compile(struct bpf_prog *prog)
>  	for (i = 0; i < 16; i++) {
>  		pass++;
>  		ctx->ninsns = 0;
> -		if (build_body(ctx, extra_pass)) {
> +		if (build_body(ctx, extra_pass, ctx->offset)) {
>  			prog = orig_prog;
>  			goto out_offset;
>  		}
>  		build_prologue(ctx);
>  		ctx->epilogue_offset = ctx->ninsns;
>  		build_epilogue(ctx);
> -		if (ctx->ninsns == prev_ninsns)
> -			break;
> +
> +		if (ctx->ninsns == prev_ninsns) {
> +			if (jit_data->header)
> +				break;
> +
> +			image_size = sizeof(u32) * ctx->ninsns;
> +			jit_data->header =
> +				bpf_jit_binary_alloc(image_size,
> +						     &jit_data->image,
> +						     sizeof(u32),
> +						     bpf_fill_ill_insns);
> +			if (!jit_data->header) {
> +				prog = orig_prog;
> +				goto out_offset;
> +			}
> +
> +			ctx->insns = (u32 *)jit_data->image;
> +			/* Now, when the image is allocated, the image
> +			 * can potentially shrink more (auipc/jalr ->
> +			 * jal).
> +			 */
> +		}

It seems like these fragments should go along with patch #2 that introduces the
code, as I don't see anything above that makes this necessary here.

>  		prev_ninsns = ctx->ninsns;
>  	}
>
> -	/* Allocate image, now that we know the size. */
> -	image_size = sizeof(u32) * ctx->ninsns;
> -	jit_data->header = bpf_jit_binary_alloc(image_size, &jit_data->image,
> -						sizeof(u32),
> -						bpf_fill_ill_insns);
> -	if (!jit_data->header) {
> +	if (i == 16) {
> +		pr_err("bpf-jit: image did not converge in <%d passes!\n", i);
> +		bpf_jit_binary_free(jit_data->header);
>  		prog = orig_prog;
>  		goto out_offset;
>  	}
>
> -	/* Second, real pass, that acutally emits the image. */
> -	ctx->insns = (u32 *)jit_data->image;
>  skip_init_ctx:
>  	pass++;
>  	ctx->ninsns = 0;
>
>  	build_prologue(ctx);
> -	if (build_body(ctx, extra_pass)) {
> +	if (build_body(ctx, extra_pass, NULL)) {
>  		bpf_jit_binary_free(jit_data->header);
>  		prog = orig_prog;
>  		goto out_offset;

