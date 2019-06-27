Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 694D35825E
	for <lists+linux-riscv@lfdr.de>; Thu, 27 Jun 2019 14:18:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-reply-to:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=fa/pe0zd4ddmPErGWGqk/OzUCH794sSRuz/J8tK2D4o=; b=VpnbG6u8MMVxgEYt6K/ITYF+GD
	0+BJZOr50gYn5LPBctJVwturbphugKVj0VyLJkm0SxdxHv5/yFBrDYWKNMPBqJlC6JS4mP8GnlRaq
	2xdarIru+Z0asmSMnLRUO8rWSy5SqJvBqeLj+tZnE4tNXfrO3rZPTTPj1T+9OfOgk+BStVbexMnaT
	yL+7OduGf1iPIGa9875qLbduSJZu2fjwFhy7lkZVQCG0U5j16AvYngRg+fAbP8/FcwiKavK+ag034
	1YTazv9QD+4bL50fcVZsE+CBmsWMqhs5zhG858cQlkLai0BH8+SI9RAt+6otg2ctiqH7u7CZZSb2M
	q6PKyTCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgTMQ-0005kF-9l; Thu, 27 Jun 2019 12:18:42 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgTMN-0005jp-4F
 for linux-riscv@lists.infradead.org; Thu, 27 Jun 2019 12:18:40 +0000
Received: by mail-wm1-x343.google.com with SMTP id z23so5460125wma.4
 for <linux-riscv@lists.infradead.org>; Thu, 27 Jun 2019 05:18:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=netronome-com.20150623.gappssmtp.com; s=20150623;
 h=references:user-agent:from:to:cc:subject:in-reply-to:date
 :message-id:mime-version;
 bh=Zdd4Pp3dYlawoEQsjCTjL1Bm9eBCVbOZ/q37LUapnaQ=;
 b=k8ywuutI5JJ1zOZBUSRsiA6wF2HW/8zzohHwXhnHqAE4EOXoGZ6iion4AWL7kpTwR6
 qAY+CpaQo3wjcaUtdet5Ew+axkm4VjOnlrKl9HBABghASKurGPUynYSpaOP4PU+6mece
 z7xORIC5BZJAMxRKJwKl4WQ6E0fiVnWmR9t39mGB2/DytymcTWatNM/SRNdT8DoCixeQ
 eudI3hm86XZDcojtmkzCOfoFGiokZRxpQQutxIzHUgMQAA339QF1UW1S2h7QIsQlNetS
 1vsloMKS2mL8TAN9kbK+Zjz8hEQZ7WBEOJKvJIoBDSTqwV5KXBqHBppJN9/PdbPQ+IiX
 mvDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:references:user-agent:from:to:cc:subject
 :in-reply-to:date:message-id:mime-version;
 bh=Zdd4Pp3dYlawoEQsjCTjL1Bm9eBCVbOZ/q37LUapnaQ=;
 b=QuN5GtYFX4FrXLmryFVKHq6PhR3e+75svIF2kPAzpeqUx+ghPXHcC7vIG3P0grUYDY
 PMcLShxgKVNc4qI9fXtO/UUmnL8QHmZ0uabLEkFJxiLskia/DERaVZilfypDSbagtISD
 L2MLfzk6beM+uOTHVKLAAPyiC/2Vj0HiiBjNGmm91c9SMXHblAQC5s/aNSEmI/m76mie
 rT/3v5/sOuklKMD3Vn/WUzSoJkGCQPG5SnFa3A3PFvFB8TroRGBMf0PYXJQFGdUZN8pN
 eDwbqt3nK/0GIyN/7555SUieoy97CI8CKWwbZfZDqLpmRiVjHM3wSxo4uJhS2+uXMGKK
 ilPw==
X-Gm-Message-State: APjAAAVLxUhQCimJMx0AwkbnlLKnppip7LQN82lM1EPzaKiCTCUNbsmJ
 XPNdupv6AIkLp12PgOszfftN9Q==
X-Google-Smtp-Source: APXvYqwP5/KqbmGqmRh+sNx5VCR+6gZxpNd+GAZ3G0BUulrp4g0b6pfWHwk+3cirqW7BcslJWBkoWg==
X-Received: by 2002:a1c:7a01:: with SMTP id v1mr3202693wmc.10.1561637917201;
 Thu, 27 Jun 2019 05:18:37 -0700 (PDT)
Received: from LAPTOP-V3S7NLPL ([217.38.71.146])
 by smtp.gmail.com with ESMTPSA id l19sm3291337wmj.33.2019.06.27.05.18.36
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 27 Jun 2019 05:18:36 -0700 (PDT)
References: <20190626231257.14495-1-lukenels@cs.washington.edu>
User-agent: mu4e 0.9.18; emacs 25.2.2
From: Jiong Wang <jiong.wang@netronome.com>
To: Luke Nelson <lukenels@cs.washington.edu>
Subject: Re: [PATCH v2 bpf-next] RV32G eBPF JIT
In-reply-to: <20190626231257.14495-1-lukenels@cs.washington.edu>
Date: Thu, 27 Jun 2019 13:18:35 +0100
Message-ID: <87y31nuspw.fsf@netronome.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_051839_232671_75A64D0B 
X-CRM114-Status: UNSURE (   7.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Song Liu <songliubraving@fb.com>, Albert Ou <aou@eecs.berkeley.edu>,
 bpf@vger.kernel.org, Daniel Borkmann <daniel@iogearbox.net>,
 Luke Nelson <luke.r.nels@gmail.com>,
 =?utf-8?B?QmrDtnJu?= =?utf-8?B?IFTDtnBlbA==?= <bjorn.topel@gmail.com>,
 Palmer Dabbelt <palmer@sifive.com>, Alexei Starovoitov <ast@kernel.org>,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 Yonghong Song <yhs@fb.com>, linux-riscv@lists.infradead.org,
 Martin KaFai Lau <kafai@fb.com>, Xi Wang <xi.wang@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org


Luke Nelson writes:

<snip>
> +
> +static int emit_insn(const struct bpf_insn *insn,
> +		     struct rv_jit_context *ctx,
> +		     bool extra_pass)
> +{
> +	int rvoff, i = insn - ctx->prog->insnsi;
> +	u8 code = insn->code;
> +	s16 off = insn->off;
> +	s32 imm = insn->imm;
> +
> +	const s8 *dst = bpf2rv32[insn->dst_reg];
> +	const s8 *src = bpf2rv32[insn->src_reg];
> +	const s8 *tmp1 = bpf2rv32[TMP_REG_1];
> +	const s8 *tmp2 = bpf2rv32[TMP_REG_2];
> +
> +	switch (code) {
> +	case BPF_ALU64 | BPF_MOV | BPF_X:
> +		if (imm == 1) {
> +			/* Special mov32 for zext */
> +			emit_rv32_zext64(dst, ctx);
> +			break;
> +		}

Thanks for adding the 32-bit opt!

Just want to mention ZEXT is a special mov32, see include/linux/filter.h:

#define BPF_ZEXT_REG(DST)
        ((struct bpf_insn) {
                 .code  = BPF_ALU | BPF_MOV | BPF_X

So it can't be BPF_ALU64. It is safe to remove this chunk of code.

For backend like arm, riscv etc, they are grouping several CASE label
together and are sharing code. imm == 1 check is done inside the shared
code to avoid moving code around given imm == 1 can't be true for ALU64 as
if there is such insn (register format using imm) it should have been
rejected by verifier. While mov32 variant is inserted by verifier at very
late stage after main verification finished.

Regards,
Jiong

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
