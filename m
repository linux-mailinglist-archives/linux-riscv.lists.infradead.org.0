Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 414A91299E1
	for <lists+linux-riscv@lfdr.de>; Mon, 23 Dec 2019 19:29:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Mime-Version:Message-ID:References:
	In-Reply-To:To:Subject:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ETCAz2nAecl12u4VuGxwDzQ9bwqkvTCnDzDrKnZSkaE=; b=iG+sDNro5Bz6M8
	7fidt8S7ek4q3wSNlIl0RuusLcNNxlHXaRCmlPv4Ib02EozZthd7HNnZKcB07q3V68jLnXFgdcxIU
	DYIA4k6U2euFS2HQno92qqQ2OwvBFfye4EGwNAyCombJ7tP7XwXxM06BnMdp54XOIbDYLhoeqpJFp
	grr3t9/uj8P496D+0HigUJ7nk8Ixshxk6KINXvHcZaqcPjT8i7guefBsj3dcrR45WDR+wtRQi37/s
	ggPpmtAXgnHzrcRHr2Y03C6lx3oawAr1hxcY2YSSBXoMijQRCkd1wzis7nKszWlPtROUBuYOiV7Bd
	I+to8LIEQ6tUWHbIXumw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijSSi-0001R2-49; Mon, 23 Dec 2019 18:29:48 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijSSe-0001QY-6g
 for linux-riscv@lists.infradead.org; Mon, 23 Dec 2019 18:29:45 +0000
Received: by mail-pf1-x441.google.com with SMTP id z16so9581040pfk.0
 for <linux-riscv@lists.infradead.org>; Mon, 23 Dec 2019 10:29:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:from:subject:cc:to:in-reply-to:references:message-id
 :mime-version:content-transfer-encoding;
 bh=ETCAz2nAecl12u4VuGxwDzQ9bwqkvTCnDzDrKnZSkaE=;
 b=NQ/x9Xan0pE4XVpqheHlJ4CgdWe9LDhiMKidcqqT/im1ZAJ8dXpX0qu/PHgUy31UXc
 G6lwCJOBwiAh/ft2PEvg80+4POa6qy7ZUAtsi0I51DRIPt1txRBs1ubVABHHkMq84bx6
 Kfcs79SAgBwfBBF2bxH2cNdP4dfjRRRLwYt8VfjTO6bR8exPyX8qx8azKgm/U2X7npz0
 /6McjwgckB8P17bxehoGhsQtMyxnja/2UTTroiKjpoLuAVsfKCH6Xa0FOzHNYjE/TGoQ
 UN8DeWzbvbMYNHdgcA1zhyqEpumsqCinN9aKr8Qtsu+5X8j40ZMJqXM6DCkuCNoHPGbf
 FWOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:subject:cc:to:in-reply-to:references
 :message-id:mime-version:content-transfer-encoding;
 bh=ETCAz2nAecl12u4VuGxwDzQ9bwqkvTCnDzDrKnZSkaE=;
 b=g0YVRI66Y1QbN9goq29EhMfq3gEl9zrtvQn6tJi8yCiux8dwSV/po6b7rWzn0SAV4P
 ykp8eigE7+0ty4BntAeRH5vA2v15cRcbwFB0dL+Lgyvui6ZQUOUWDje/0m1Uy3ZhJBeN
 7qnYJbuu+rS2Op4bRGMf7WTk2kHICIhaH7ge/PO5whmpjqEjLtnybmYXZ737e6VN2tGH
 PXTrf18AIo7QbfqpSxGO0s5s+hHB1Clhiev3t9rVbaeb5ZOF0MegeOk3uDDKTbzjq33w
 J/lnI6MDavVpaTXscQP8xmb9Y+XukHCpIVCV+gDOEB8sm4mKsWbx1HTda2TbnHbYejBM
 H6bg==
X-Gm-Message-State: APjAAAWSYXyNBuvScfBGhjaA7tAMLx8DBoyf/tjPAuUuD5XwLBlq4KY/
 GV0oye3qdVWX+ve1f85nq+k1xA==
X-Google-Smtp-Source: APXvYqzyXbXysDM2meGOAdnFewhF96oWfXTEbytcsUZtAPxGdzhU1sBVIYdYLoMQmjWY+UsfFcIGRQ==
X-Received: by 2002:a62:a515:: with SMTP id v21mr34004010pfm.128.1577125779770; 
 Mon, 23 Dec 2019 10:29:39 -0800 (PST)
Received: from localhost ([2620:0:1000:2514:7f69:cd98:a2a2:a03d])
 by smtp.gmail.com with ESMTPSA id w20sm15751188pfi.86.2019.12.23.10.29.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 Dec 2019 10:29:39 -0800 (PST)
Date: Mon, 23 Dec 2019 10:29:39 -0800 (PST)
X-Google-Original-Date: Mon, 23 Dec 2019 10:29:24 PST (-0800)
From: Palmer Dabbelt <palmerdabbelt@google.com>
X-Google-Original-From: Palmer Dabbelt <palmer@dabbelt.com>
Subject: Re: [PATCH bpf-next v2 5/9] riscv, bpf: optimize BPF tail calls
To: Bjorn Topel <bjorn.topel@gmail.com>
In-Reply-To: <20191216091343.23260-6-bjorn.topel@gmail.com>
References: <20191216091343.23260-6-bjorn.topel@gmail.com>
 <20191216091343.23260-1-bjorn.topel@gmail.com>
Message-ID: <mhng-01fe07e5-a27a-4fde-a7ab-22bbad6eb668@palmerdabbelt-glaptop>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191223_102944_269879_B3ACB2B0 
X-CRM114-Status: GOOD (  14.26  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
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

On Mon, 16 Dec 2019 01:13:39 PST (-0800), Bjorn Topel wrote:
> Remove one addi, and instead use the offset part of jalr.
>
> Signed-off-by: Björn Töpel <bjorn.topel@gmail.com>
> ---
>  arch/riscv/net/bpf_jit_comp.c | 13 +++++++------
>  1 file changed, 7 insertions(+), 6 deletions(-)
>
> diff --git a/arch/riscv/net/bpf_jit_comp.c b/arch/riscv/net/bpf_jit_comp.c
> index 2fc0f24ad30f..8aa19c846881 100644
> --- a/arch/riscv/net/bpf_jit_comp.c
> +++ b/arch/riscv/net/bpf_jit_comp.c
> @@ -552,7 +552,7 @@ static int epilogue_offset(struct rv_jit_context *ctx)
>  	return (to - from) << 2;
>  }
>
> -static void __build_epilogue(u8 reg, struct rv_jit_context *ctx)
> +static void __build_epilogue(bool is_tail_call, struct rv_jit_context *ctx)
>  {
>  	int stack_adjust = ctx->stack_size, store_offset = stack_adjust - 8;
>
> @@ -589,9 +589,11 @@ static void __build_epilogue(u8 reg, struct rv_jit_context *ctx)
>
>  	emit(rv_addi(RV_REG_SP, RV_REG_SP, stack_adjust), ctx);
>  	/* Set return value. */
> -	if (reg == RV_REG_RA)
> +	if (!is_tail_call)
>  		emit(rv_addi(RV_REG_A0, RV_REG_A5, 0), ctx);
> -	emit(rv_jalr(RV_REG_ZERO, reg, 0), ctx);
> +	emit(rv_jalr(RV_REG_ZERO, is_tail_call ? RV_REG_T3 : RV_REG_RA,
> +		     is_tail_call ? 4 : 0), /* skip TCC init */
> +	     ctx);
>  }
>
>  /* return -1 or inverted cond */
> @@ -751,9 +753,8 @@ static int emit_bpf_tail_call(int insn, struct rv_jit_context *ctx)
>  	if (is_12b_check(off, insn))
>  		return -1;
>  	emit(rv_ld(RV_REG_T3, off, RV_REG_T2), ctx);
> -	emit(rv_addi(RV_REG_T3, RV_REG_T3, 4), ctx);
>  	emit(rv_addi(RV_REG_TCC, RV_REG_T1, 0), ctx);
> -	__build_epilogue(RV_REG_T3, ctx);
> +	__build_epilogue(true, ctx);
>  	return 0;
>  }
>
> @@ -1504,7 +1505,7 @@ static void build_prologue(struct rv_jit_context *ctx)
>
>  static void build_epilogue(struct rv_jit_context *ctx)
>  {
> -	__build_epilogue(RV_REG_RA, ctx);
> +	__build_epilogue(false, ctx);
>  }
>
>  static int build_body(struct rv_jit_context *ctx, bool extra_pass)

Reviewed-by: Palmer Dabbelt <palmerdabbelt@google.com>
Acked-by: Palmer Dabbelt <palmerdabbelt@google.com>

