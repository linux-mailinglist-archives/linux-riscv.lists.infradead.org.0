Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57BE61299CC
	for <lists+linux-riscv@lfdr.de>; Mon, 23 Dec 2019 19:18:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Mime-Version:Message-ID:References:
	In-Reply-To:To:Subject:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zK2dqRZFS4Tk68ZjEPDcZyRGqoWDUUoOCtx/zcjLAa8=; b=cbXlzXY9f5FJem
	Qd/VRojw/IvfMuP4UWeZnqkz4WlXOJan/pkvl3y38ZfLhUpiXWyze8RxyvxRueCCRKZq6+QH6xGRH
	He+O4kBjms4YaELuZ9yZowNnb7xkyfYdgdwnKyz5oLQdVzqGalr8MMc73XbWXtqnj/VTa7hpIq5S2
	q4X042b0YXE9pgnBLvA6gtgl4qD89fAFwgEbl8CboqQUVkBwonDr0zEk5seFEpWPdGmdnm/WIUQY8
	oBfkzrIhuIaWtp6yKTOqRR145fGFA+UdB+6MLQfDIjsv28Y9q/ziiRUQoy76FS6PQB5yyBrMW6JNt
	OdDgN2d0hIRGx+526jbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijSHt-0006gA-Bd; Mon, 23 Dec 2019 18:18:37 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijSHp-0006ei-HF
 for linux-riscv@lists.infradead.org; Mon, 23 Dec 2019 18:18:34 +0000
Received: by mail-pl1-x642.google.com with SMTP id b22so7470652pls.12
 for <linux-riscv@lists.infradead.org>; Mon, 23 Dec 2019 10:18:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:from:subject:cc:to:in-reply-to:references:message-id
 :mime-version:content-transfer-encoding;
 bh=zK2dqRZFS4Tk68ZjEPDcZyRGqoWDUUoOCtx/zcjLAa8=;
 b=Raq8pOWRd58UBJ/XlorG9PHdb3nwTwb99CWU6qK3tMfO/rB3RXY0OHHjFsyf1aiBC0
 gpZwslvwpwLMPr+VKy8BKctJc38v9SYhLLBR/JtqFRvOlEJzjuzRzPnfWWHuBAQVpR8a
 3RisGBNuVlqJscxqpE+YMBW0MWiDmyjri5lv1oF2MMWqZqXdXHXr4H/AhIay5YrB0rKp
 0xG5oAnZ5XQ7ekO4dHCNMv1rRLhVu7CujihtuTb/d+wJvVlycChQYYXmqCAaWmLzWsG5
 pWTaWRRN3P1EzFfOXWYR4jEWIe+M4rmnjtBH8aMNxuhIMLckqeAW+YCUa1CAf6HLtA5Y
 3Z9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:subject:cc:to:in-reply-to:references
 :message-id:mime-version:content-transfer-encoding;
 bh=zK2dqRZFS4Tk68ZjEPDcZyRGqoWDUUoOCtx/zcjLAa8=;
 b=cl1Nb5/x/t0KZY1nCKkCcCiFOGb0iEXWKdJgIOEXwTlWpuRYXnl6r2Q9LWjQrx8yTw
 pWKTY0ZB8LUhzX0JaMldGUjZeyyqNU/l3XqAgMEXtpHkJFFVGYLMtvACQU98KFOLG0Ur
 o+x5TKfoqeRm8ls6t8ob1/Qzn/yr0XAQQ+XVSxYxURth7VEM8ncVpXPiScDgh43z4cdP
 rBKZlvrtYkjg0F3RkqnNpueT4fESQLWgcvtfKNQu5RqVaza1tijl6PczUf99bl7KEIps
 08JUoirbsmMTjVCN7OWW6vxwB2EDvRWjoV1G/OAImdZCJsgz44RnXS350M0W3Gh0RQ4M
 ctHA==
X-Gm-Message-State: APjAAAXkzBIglkL65eVePBHXwPFQW9HpxJ8NNkdyggkeVnMLLDf9plPk
 S8R2Ilr7M42741bDzWFZJNLDGfxQ1Ik=
X-Google-Smtp-Source: APXvYqy2LuNE78PASVhWkIvEthlm+Q7EFCSizUqYaOIPJWesml4iWZxM9tHwOQVWYbu5LbJYVOUH1g==
X-Received: by 2002:a17:90a:8008:: with SMTP id b8mr441916pjn.37.1577125112953; 
 Mon, 23 Dec 2019 10:18:32 -0800 (PST)
Received: from localhost ([2620:0:1000:2514:7f69:cd98:a2a2:a03d])
 by smtp.gmail.com with ESMTPSA id d2sm127009pjv.18.2019.12.23.10.18.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 Dec 2019 10:18:32 -0800 (PST)
Date: Mon, 23 Dec 2019 10:18:32 -0800 (PST)
X-Google-Original-Date: Mon, 23 Dec 2019 10:14:05 PST (-0800)
From: Palmer Dabbelt <palmerdabbelt@google.com>
X-Google-Original-From: Palmer Dabbelt <palmer@dabbelt.com>
Subject: Re: [PATCH bpf-next v2 4/9] riscv,
 bpf: add support for far jumps and exits
To: Bjorn Topel <bjorn.topel@gmail.com>
In-Reply-To: <20191216091343.23260-5-bjorn.topel@gmail.com>
References: <20191216091343.23260-5-bjorn.topel@gmail.com>
 <20191216091343.23260-1-bjorn.topel@gmail.com>
Message-ID: <mhng-c035e490-421b-4df0-9875-ec3059b8f749@palmerdabbelt-glaptop>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191223_101833_571504_1479F35A 
X-CRM114-Status: GOOD (  16.64  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
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

On Mon, 16 Dec 2019 01:13:38 PST (-0800), Bjorn Topel wrote:
> This commit add support for far (offset > 21b) jumps and exits.
>
> Reviewed-by: Luke Nelson <lukenels@cs.washington.edu>
> Cc: Xi Wang <xi.wang@gmail.com>
> Signed-off-by: Björn Töpel <bjorn.topel@gmail.com>
> ---
>  arch/riscv/net/bpf_jit_comp.c | 37 ++++++++++++++++-------------------
>  1 file changed, 17 insertions(+), 20 deletions(-)
>
> diff --git a/arch/riscv/net/bpf_jit_comp.c b/arch/riscv/net/bpf_jit_comp.c
> index c38c95df3440..2fc0f24ad30f 100644
> --- a/arch/riscv/net/bpf_jit_comp.c
> +++ b/arch/riscv/net/bpf_jit_comp.c
> @@ -496,16 +496,6 @@ static int is_12b_check(int off, int insn)
>  	return 0;
>  }
>
> -static int is_21b_check(int off, int insn)
> -{
> -	if (!is_21b_int(off)) {
> -		pr_err("bpf-jit: insn=%d 21b < offset=%d not supported yet!\n",
> -		       insn, (int)off);
> -		return -1;
> -	}
> -	return 0;
> -}
> -
>  static void emit_imm(u8 rd, s64 val, struct rv_jit_context *ctx)
>  {
>  	/* Note that the immediate from the add is sign-extended,
> @@ -820,6 +810,21 @@ static void emit_sext_32_rd(u8 *rd, struct rv_jit_context *ctx)
>  	*rd = RV_REG_T2;
>  }
>
> +static void emit_jump_and_link(u8 rd, int rvoff, struct rv_jit_context *ctx)
> +{
> +	s64 upper, lower;
> +
> +	if (is_21b_int(rvoff)) {
> +		emit(rv_jal(rd, rvoff >> 1), ctx);
> +		return;
> +	}
> +
> +	upper = (rvoff + (1 << 11)) >> 12;
> +	lower = rvoff & 0xfff;
> +	emit(rv_auipc(RV_REG_T1, upper), ctx);
> +	emit(rv_jalr(rd, RV_REG_T1, lower), ctx);
> +}

What constrains these jumps to always be 32-bit PC relative?  We have some
issues in the module loader with references to kernel symbols being too far
away to the loaded modules, it seems like similar issues could creep in here.

>  static bool is_signed_bpf_cond(u8 cond)
>  {
>  	return cond == BPF_JSGT || cond == BPF_JSLT ||
> @@ -1101,13 +1106,7 @@ static int emit_insn(const struct bpf_insn *insn, struct rv_jit_context *ctx,
>  	/* JUMP off */
>  	case BPF_JMP | BPF_JA:
>  		rvoff = rv_offset(i, off, ctx);
> -		if (!is_21b_int(rvoff)) {
> -			pr_err("bpf-jit: insn=%d offset=%d not supported yet!\n",
> -			       i, rvoff);
> -			return -1;
> -		}
> -
> -		emit(rv_jal(RV_REG_ZERO, rvoff >> 1), ctx);
> +		emit_jump_and_link(RV_REG_ZERO, rvoff, ctx);
>  		break;
>
>  	/* IF (dst COND src) JUMP off */
> @@ -1245,9 +1244,7 @@ static int emit_insn(const struct bpf_insn *insn, struct rv_jit_context *ctx,
>  			break;
>
>  		rvoff = epilogue_offset(ctx);
> -		if (is_21b_check(rvoff, i))
> -			return -1;
> -		emit(rv_jal(RV_REG_ZERO, rvoff >> 1), ctx);
> +		emit_jump_and_link(RV_REG_ZERO, rvoff, ctx);
>  		break;
>
>  	/* dst = imm64 */

