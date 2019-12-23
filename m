Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65D131299CB
	for <lists+linux-riscv@lfdr.de>; Mon, 23 Dec 2019 19:18:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Mime-Version:Message-ID:References:
	In-Reply-To:To:Subject:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d6V52s4BKPdQEpKD1SI2Bsly2g14ETlTsMHFdZhaKlY=; b=KiijKrRhuaE7zq
	1BEcPEu/wrHsnvErASKBTVmrOQxqP2sX9lFa1VP10PnggjebeLlCI0AfMBC9Ut+Xdeqmajqt5Zoxy
	ncszKSFaYUCEufTzpX2lJIhEmvKflxyBXd3vW/t8W+Q+V+AJuI5HnnDuwqO1SoscukYjhNqnLPw5i
	2GmC2G0goD6TO7LSgY6+zM0KVDGgJJl+IrLAVO30psmiDdkC/pp7RhJwGUupAPbEAlj9FAvAC4xT0
	EDagVom/C8iA/WmhYF+/5SnHCd785uhQVscDZ7yUftI0RAsaZaC65voHTyjlzhu1/DKGM7GPd366i
	xvQKUIMiV9PwQmLM4mbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijSHs-0006fF-A9; Mon, 23 Dec 2019 18:18:36 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijSHp-0006eS-3s
 for linux-riscv@lists.infradead.org; Mon, 23 Dec 2019 18:18:34 +0000
Received: by mail-pl1-x642.google.com with SMTP id p27so7474555pli.10
 for <linux-riscv@lists.infradead.org>; Mon, 23 Dec 2019 10:18:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:from:subject:cc:to:in-reply-to:references:message-id
 :mime-version:content-transfer-encoding;
 bh=d6V52s4BKPdQEpKD1SI2Bsly2g14ETlTsMHFdZhaKlY=;
 b=Qkwlw+Ij3PJFQxO4sc7jGlpz5uhxnFhk5DVuVfP2vARkXal4HIih6A3mW8RrTYZTvp
 ICXsjLwgegS/rsC+Hem7BQ4/R5Z8oNb5WB1/i4VKeEixjJzAumbCGKk3ctZ0gNc7eqlP
 jXrnUhhmUBJJLaoNJXQlomTmlIMevULmq/IbEzbbbEQyrsWFlbS2CD/xmM1/vUKpzf6R
 Zn9n2miOFQjXH9ph0eX9Az63DK0huTVMNr+dIxrX6U3Il1vmgna+rGCRgtYiIT0QUZ/E
 mkJNKTsL0NbVqT0ekA01dwxghcvk+/LFT1ROT/iMy1wLQYjyH1DoGr+09kEg/eCZyJzQ
 XeHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:subject:cc:to:in-reply-to:references
 :message-id:mime-version:content-transfer-encoding;
 bh=d6V52s4BKPdQEpKD1SI2Bsly2g14ETlTsMHFdZhaKlY=;
 b=oF1pNOM8EAfKDKZX1Ik9/uv71guwPgf0x9fjALiQgx5LXrHxzdpG3bCttPfuFJkNmU
 dBYPyltwUZc1R/fyYNMRvmkf10wPooWkhALPcelEcvQ/jHdQzxxZl5OJetqTIHgpkDDT
 LfOZK2vywfPO+zl6E7RL9WI5aeqzTHg4SXfudWTBGiul9zJojwM+gNFRGPeEUIaAip2T
 jOhiFJFOJ0sFTtllwOO6+v0WCK0ttQhypYnL1xXcHC0omkV2tmRFTXcHA5PMNI5SpRmX
 7T7EJ/yj8Zj+sukfkpHDlyqbl5xxaVfZFI/u7SP3pdAq+rwjMZeC7Ely9e4gkOll2inB
 fpgQ==
X-Gm-Message-State: APjAAAX2E/W4qqf+SJolp9SfBx9YqLS+6ebiXlWzoM8G4UZ8hDkd5aF4
 yu1tLKJd1GfrTQVwvx/0lic/WA==
X-Google-Smtp-Source: APXvYqxNkRz1IM63bfQgOhAxwSwTHbysAAjI6yuR5hi+uX515zg1SMQxxfRyXcnH0a8YFQqmrfACcQ==
X-Received: by 2002:a17:902:aa48:: with SMTP id
 c8mr31418813plr.243.1577125111719; 
 Mon, 23 Dec 2019 10:18:31 -0800 (PST)
Received: from localhost ([2620:0:1000:2514:7f69:cd98:a2a2:a03d])
 by smtp.gmail.com with ESMTPSA id k1sm121461pjl.21.2019.12.23.10.18.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 Dec 2019 10:18:31 -0800 (PST)
Date: Mon, 23 Dec 2019 10:18:31 -0800 (PST)
X-Google-Original-Date: Mon, 23 Dec 2019 10:09:23 PST (-0800)
From: Palmer Dabbelt <palmerdabbelt@google.com>
X-Google-Original-From: Palmer Dabbelt <palmer@dabbelt.com>
Subject: Re: [PATCH bpf-next v2 3/9] riscv,
 bpf: add support for far branching when emitting tail call
To: Bjorn Topel <bjorn.topel@gmail.com>
In-Reply-To: <20191216091343.23260-4-bjorn.topel@gmail.com>
References: <20191216091343.23260-4-bjorn.topel@gmail.com>
 <20191216091343.23260-1-bjorn.topel@gmail.com>
Message-ID: <mhng-09e718bb-9ed9-4bc7-a4e6-e39eb0888acc@palmerdabbelt-glaptop>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191223_101833_186538_843F7BC3 
X-CRM114-Status: GOOD (  13.82  )
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
 Bjorn Topel <bjorn.topel@gmail.com>, linux-riscv@lists.infradead.org,
 bpf@vger.kernel.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, 16 Dec 2019 01:13:37 PST (-0800), Bjorn Topel wrote:
> Start use the emit_branch() function in the tail call emitter in order
> to support far branching.
>
> Signed-off-by: Björn Töpel <bjorn.topel@gmail.com>
> ---
>  arch/riscv/net/bpf_jit_comp.c | 22 +++-------------------
>  1 file changed, 3 insertions(+), 19 deletions(-)
>
> diff --git a/arch/riscv/net/bpf_jit_comp.c b/arch/riscv/net/bpf_jit_comp.c
> index e599458a9bcd..c38c95df3440 100644
> --- a/arch/riscv/net/bpf_jit_comp.c
> +++ b/arch/riscv/net/bpf_jit_comp.c
> @@ -496,16 +496,6 @@ static int is_12b_check(int off, int insn)
>  	return 0;
>  }
>
> -static int is_13b_check(int off, int insn)
> -{
> -	if (!is_13b_int(off)) {
> -		pr_err("bpf-jit: insn=%d 13b < offset=%d not supported yet!\n",
> -		       insn, (int)off);
> -		return -1;
> -	}
> -	return 0;
> -}
> -
>  static int is_21b_check(int off, int insn)
>  {
>  	if (!is_21b_int(off)) {
> @@ -744,18 +734,14 @@ static int emit_bpf_tail_call(int insn, struct rv_jit_context *ctx)
>  		return -1;
>  	emit(rv_lwu(RV_REG_T1, off, RV_REG_A1), ctx);
>  	off = (tc_ninsn - (ctx->ninsns - start_insn)) << 2;
> -	if (is_13b_check(off, insn))
> -		return -1;
> -	emit(rv_bgeu(RV_REG_A2, RV_REG_T1, off >> 1), ctx);
> +	emit_branch(BPF_JGE, RV_REG_A2, RV_REG_T1, off, ctx);
>
>  	/* if (--TCC < 0)
>  	 *     goto out;
>  	 */
>  	emit(rv_addi(RV_REG_T1, tcc, -1), ctx);
>  	off = (tc_ninsn - (ctx->ninsns - start_insn)) << 2;
> -	if (is_13b_check(off, insn))
> -		return -1;
> -	emit(rv_blt(RV_REG_T1, RV_REG_ZERO, off >> 1), ctx);
> +	emit_branch(BPF_JSLT, RV_REG_T1, RV_REG_ZERO, off, ctx);
>
>  	/* prog = array->ptrs[index];
>  	 * if (!prog)
> @@ -768,9 +754,7 @@ static int emit_bpf_tail_call(int insn, struct rv_jit_context *ctx)
>  		return -1;
>  	emit(rv_ld(RV_REG_T2, off, RV_REG_T2), ctx);
>  	off = (tc_ninsn - (ctx->ninsns - start_insn)) << 2;
> -	if (is_13b_check(off, insn))
> -		return -1;
> -	emit(rv_beq(RV_REG_T2, RV_REG_ZERO, off >> 1), ctx);
> +	emit_branch(BPF_JEQ, RV_REG_T2, RV_REG_ZERO, off, ctx);
>
>  	/* goto *(prog->bpf_func + 4); */
>  	off = offsetof(struct bpf_prog, bpf_func);

Reviewed-by: Palmer Dabbelt <palmerdabbelt@google.com>
Acked-by: Palmer Dabbelt <palmerdabbelt@google.com>

