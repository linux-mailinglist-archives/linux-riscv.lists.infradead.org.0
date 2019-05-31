Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 942C13163F
	for <lists+linux-riscv@lfdr.de>; Fri, 31 May 2019 22:40:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Mime-Version:Message-ID:To:From:In-Reply-To:Subject:
	Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	 bh=JvJUfXHV4mjGpNJB4BNtPD7VPu3j+6BUKK9Pk5hZK5g=; b=JBECQwwmsk5czuBr5BY7jk/IU
	XQKQF7KT04ctLK7mPXuUhP+ltjD2NtqyBX3tbt1focGgjfccAuoASsszscYDMWwqIG7trOZ1Ahf64
	SNKBM/+8GsjnfEnlltp/V2ZanfLEw3OqYfmcujj7z+ScPMslrCnmWz0Rf13qbidm9acNdplr0CTsB
	AdBfE9HmziaSFLI1mPoIyNMRGnsYbzvW3HkKYsydbeJgxnqHxyUASi8q3h6qQueNo3q9WtmUFgF+Y
	D2/A9lU2par4AzED+H92cIdNctTijxPoaWh51cSnhyasGmCBEwXxcozS5tV5MLautaNFk/6Qv+1zV
	7e1mw7XWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWoKO-0004Y6-Ad; Fri, 31 May 2019 20:40:40 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWoKL-0004Xk-89
 for linux-riscv@lists.infradead.org; Fri, 31 May 2019 20:40:38 +0000
Received: by mail-pg1-x541.google.com with SMTP id w34so4635667pga.12
 for <linux-riscv@lists.infradead.org>; Fri, 31 May 2019 13:40:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
 :content-transfer-encoding;
 bh=L9DdyCtjUjmQm6BTqIghH9AyiE8Bj0FZDxV/U7xA1V0=;
 b=m+sB14YoMKD0En6Ta1jguYQojAS5qLFbQotT+YNGILgTJGeqwJGD4s/f/rbm2iH7fu
 uL/Puewkgm9o8a+YhgF4KSzecl0+KRcZ5bFpnn6R0gBxZ05SMmCvyVXtqA+3kLUKngOo
 O9AiG/tILOp2WJEGwSRJ3n56HGnMhkUyurCCUlj7H9LaLrx7icNhelYOl337LGrD7dq6
 5MRFjT0pqpaEsSicSzRDqdDiv07JC0R2M9vcWKR+wim16AUTL3NRgr9wipNWpbKpIWmF
 r8mszFJ8lwToWogOXRC4Tg5M0PnLSLrmlPxfRC2m1Szk15lbD7qTLEqrsQquM4QKf1PE
 Ar0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=L9DdyCtjUjmQm6BTqIghH9AyiE8Bj0FZDxV/U7xA1V0=;
 b=Xp6sdJPws+bo4/gDZb8TBseNbZHPRKomyNdcv7LDO0SjFeYfOqcEhfvEQav0m0wsSk
 lmYN73vuY1a2+ZnqlmB7eP3b/b6Daavni4u+pinqfjrjxvGJbIB3CqSW/M4MsEImXkW7
 1okaAnaiXxceBgQ1nTDLJrFfnAgV+wnIYYQrX/q2xBOvS8SWU0hBzgCiYNTMHpiHbXqe
 sEwsUXxJl7YvAzS6L4r1PyknGCwmivgKUC5zcc4FbIQD6ItIUME/ZEfFqjRnXruELcRs
 cuPmo21H+kFOi0JYL6fkDW/hojHsGCdVCFRilfYV0nTmdTGyNi0sSfO6eDGVIXvnjOUq
 fSAQ==
X-Gm-Message-State: APjAAAVh9S0X8owJdRFnLjA4qf6/xPsLBcFU2c+iA0qFS1dnWaUSihyV
 5aHLcVFV45wT2xf5Tl3471Fz8g==
X-Google-Smtp-Source: APXvYqz4SQR8SyNvYw/RbVYq9J75OHRdEl+vxzGoZ1hj8lWeH/sIaNdK7fANnH7Zay6JrXmUtrIdGA==
X-Received: by 2002:a63:2ace:: with SMTP id
 q197mr11342665pgq.102.1559335236450; 
 Fri, 31 May 2019 13:40:36 -0700 (PDT)
Received: from localhost ([12.206.222.5])
 by smtp.gmail.com with ESMTPSA id s27sm18341537pfd.18.2019.05.31.13.40.35
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 31 May 2019 13:40:35 -0700 (PDT)
Date: Fri, 31 May 2019 13:40:35 -0700 (PDT)
X-Google-Original-Date: Fri, 31 May 2019 13:39:54 PDT (-0700)
Subject: Re: [PATCH bpf v2] bpf,
 riscv: clear high 32 bits for ALU32 add/sub/neg/lsh/rsh/arsh
In-Reply-To: <20190530222922.4269-1-luke.r.nels@gmail.com>
From: Palmer Dabbelt <palmer@sifive.com>
To: luke.r.nels@gmail.com
Message-ID: <mhng-b4ce883e-9ec7-4098-9acc-18eb140f93e0@palmer-si-x1c4>
Mime-Version: 1.0 (MHng)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_134037_291175_529A961E 
X-CRM114-Status: GOOD (  16.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: songliubraving@fb.com, aou@eecs.berkeley.edu, bpf@vger.kernel.org,
 daniel@iogearbox.net, bjorn.topel@gmail.com, ast@kernel.org,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org, yhs@fb.com,
 linux-riscv@lists.infradead.org, kafai@fb.com, xi.wang@gmail.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, 30 May 2019 15:29:22 PDT (-0700), luke.r.nels@gmail.com wrote:
> In BPF, 32-bit ALU operations should zero-extend their results into
> the 64-bit registers.
>
> The current BPF JIT on RISC-V emits incorrect instructions that perform
> sign extension only (e.g., addw, subw) on 32-bit add, sub, lsh, rsh,
> arsh, and neg. This behavior diverges from the interpreter and JITs
> for other architectures.
>
> This patch fixes the bugs by performing zero extension on the destination
> register of 32-bit ALU operations.
>
> Fixes: 2353ecc6f91f ("bpf, riscv: add BPF JIT for RV64G")
> Cc: Xi Wang <xi.wang@gmail.com>
> Signed-off-by: Luke Nelson <luke.r.nels@gmail.com>

Reviewed-by: Palmer Dabbelt <palmer@sifive.com>

Thanks!  I'm assuming this is going in through a BPF tree and not the RISC-V
tree, but LMK if that's not the case.

> ---
> The original patch is
> https://lkml.org/lkml/2019/5/30/1370
>
> This version is rebased against the bpf tree.
> ---
>  arch/riscv/net/bpf_jit_comp.c | 18 ++++++++++++++++++
>  1 file changed, 18 insertions(+)
>
> diff --git a/arch/riscv/net/bpf_jit_comp.c b/arch/riscv/net/bpf_jit_comp.c
> index e5c8d675bd6e..426d5c33ea90 100644
> --- a/arch/riscv/net/bpf_jit_comp.c
> +++ b/arch/riscv/net/bpf_jit_comp.c
> @@ -751,10 +751,14 @@ static int emit_insn(const struct bpf_insn *insn, struct rv_jit_context *ctx,
>  	case BPF_ALU | BPF_ADD | BPF_X:
>  	case BPF_ALU64 | BPF_ADD | BPF_X:
>  		emit(is64 ? rv_add(rd, rd, rs) : rv_addw(rd, rd, rs), ctx);
> +		if (!is64)
> +			emit_zext_32(rd, ctx);
>  		break;
>  	case BPF_ALU | BPF_SUB | BPF_X:
>  	case BPF_ALU64 | BPF_SUB | BPF_X:
>  		emit(is64 ? rv_sub(rd, rd, rs) : rv_subw(rd, rd, rs), ctx);
> +		if (!is64)
> +			emit_zext_32(rd, ctx);
>  		break;
>  	case BPF_ALU | BPF_AND | BPF_X:
>  	case BPF_ALU64 | BPF_AND | BPF_X:
> @@ -795,14 +799,20 @@ static int emit_insn(const struct bpf_insn *insn, struct rv_jit_context *ctx,
>  	case BPF_ALU | BPF_LSH | BPF_X:
>  	case BPF_ALU64 | BPF_LSH | BPF_X:
>  		emit(is64 ? rv_sll(rd, rd, rs) : rv_sllw(rd, rd, rs), ctx);
> +		if (!is64)
> +			emit_zext_32(rd, ctx);
>  		break;
>  	case BPF_ALU | BPF_RSH | BPF_X:
>  	case BPF_ALU64 | BPF_RSH | BPF_X:
>  		emit(is64 ? rv_srl(rd, rd, rs) : rv_srlw(rd, rd, rs), ctx);
> +		if (!is64)
> +			emit_zext_32(rd, ctx);
>  		break;
>  	case BPF_ALU | BPF_ARSH | BPF_X:
>  	case BPF_ALU64 | BPF_ARSH | BPF_X:
>  		emit(is64 ? rv_sra(rd, rd, rs) : rv_sraw(rd, rd, rs), ctx);
> +		if (!is64)
> +			emit_zext_32(rd, ctx);
>  		break;
>
>  	/* dst = -dst */
> @@ -810,6 +820,8 @@ static int emit_insn(const struct bpf_insn *insn, struct rv_jit_context *ctx,
>  	case BPF_ALU64 | BPF_NEG:
>  		emit(is64 ? rv_sub(rd, RV_REG_ZERO, rd) :
>  		     rv_subw(rd, RV_REG_ZERO, rd), ctx);
> +		if (!is64)
> +			emit_zext_32(rd, ctx);
>  		break;
>
>  	/* dst = BSWAP##imm(dst) */
> @@ -964,14 +976,20 @@ static int emit_insn(const struct bpf_insn *insn, struct rv_jit_context *ctx,
>  	case BPF_ALU | BPF_LSH | BPF_K:
>  	case BPF_ALU64 | BPF_LSH | BPF_K:
>  		emit(is64 ? rv_slli(rd, rd, imm) : rv_slliw(rd, rd, imm), ctx);
> +		if (!is64)
> +			emit_zext_32(rd, ctx);
>  		break;
>  	case BPF_ALU | BPF_RSH | BPF_K:
>  	case BPF_ALU64 | BPF_RSH | BPF_K:
>  		emit(is64 ? rv_srli(rd, rd, imm) : rv_srliw(rd, rd, imm), ctx);
> +		if (!is64)
> +			emit_zext_32(rd, ctx);
>  		break;
>  	case BPF_ALU | BPF_ARSH | BPF_K:
>  	case BPF_ALU64 | BPF_ARSH | BPF_K:
>  		emit(is64 ? rv_srai(rd, rd, imm) : rv_sraiw(rd, rd, imm), ctx);
> +		if (!is64)
> +			emit_zext_32(rd, ctx);
>  		break;
>
>  	/* JUMP off */

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
