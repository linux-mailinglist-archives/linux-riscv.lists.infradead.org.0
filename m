Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D14E60989
	for <lists+linux-riscv@lfdr.de>; Fri,  5 Jul 2019 17:45:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-reply-to:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=i0fjDGjWuaY9X65V23icaQSoOSauUgXa8/zO6M71ijQ=; b=IeXgX/mBS1kndhsaAYYfWIkmsP
	O/+Qw9srIhiTZJL9M6OBxLCYjn7HjDMnH/WQy5ki8ZUF2wZ2iBMOW86VOpwHDu+m28lQv/48uj36c
	g6XV1+aYDp7Cr1DPtece8t+YTVSSx9YjrNJBb80OowOER0+Arg+YKYw47PLtgMxlxVY6ogLTSgDng
	IawzBF001py/1wY0k9dQWfhgVXj2XD8aUeFL3vyICqXBOChGZiGQRGmN21UPXpZllBUaQorFpvJml
	qwI5zRSzU4XE4ChVdn0016U6rO+FTLkWSd5mHWIINLek5p5sLCInazbH0Ex8UBBOjsLrmSVD+9XBn
	JP6g5A0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjQOp-00086r-Kv; Fri, 05 Jul 2019 15:45:23 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjQNE-0005NI-Mv
 for linux-riscv@bombadil.infradead.org; Fri, 05 Jul 2019 15:43:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Type:MIME-Version:Message-ID:
 Date:In-reply-to:Subject:Cc:To:From:References:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HHbqpLTt/UqK8u8skkn9x9YIdY8wkJ4ttRxZXF6EinY=; b=NpjllHcHYfkp9NzpiHqXwMDVJ
 l/3c6U7fQcVdpE8Ly3NI4EaYRa9Yp/7e5lMNOc+L4StMrR4ky1O5GFv06iZNepgs8SxxzI51qxUgD
 5/InRQ+jAdiKn2W8iF8CCjfKW3jjQr5PWv3VFxHeS0KLq+S3NCMxFYYNqdssYSsqff431pVA6SIrw
 eZ+qU3EOEoXU7iUO80hMp3frPWnjcK3ha1EhRSD10MI/Krg2cNdkSU5MefwTam/cVQS11k0TThd0i
 amhCohT3s+C7JbzAME4kDP9o3t67OoIeBfk/jI5Uz82XeGlNVM3sCkQDueUhooxS+xy0T9C3K1zYu
 w2ZTY+QZg==;
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by merlin.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjKUD-0000or-3n
 for linux-riscv@lists.infradead.org; Fri, 05 Jul 2019 09:26:34 +0000
Received: by mail-wr1-x444.google.com with SMTP id x4so9159203wrt.6
 for <linux-riscv@lists.infradead.org>; Fri, 05 Jul 2019 02:26:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=netronome-com.20150623.gappssmtp.com; s=20150623;
 h=references:user-agent:from:to:cc:subject:in-reply-to:date
 :message-id:mime-version;
 bh=HHbqpLTt/UqK8u8skkn9x9YIdY8wkJ4ttRxZXF6EinY=;
 b=yp5yQJh8jtfYUPLuGlLq2DfqpPBdGGO494xChqpf9zNWBSsXLE5a0248/NAxkoBO4/
 0BsVaDdF03YgBQ/EiWOMx+7i4XiuJ0zQf7XlokIV1VYWJHiMZ3PDkE/KfYOab4VzMB+J
 f/pVJLRXx+gS9twTb1Pgz2EXRdaLuXqYybXQVVic64Dl6MDkktWQB7g1huoxjSF5Uleo
 KWEaVwh/WkLIXcfSUgaE+apFuFz8i+7Qp7PYmwtsyWVa2Ym0Ym+UO3OF2ienlhikB0yc
 b4nd6B6ytLHgVQbS9mVjQWCRJczLAl4BYGmiNDVXuTYnaPhD6JUOdm5tiGTCbXBzkVMF
 YL4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:references:user-agent:from:to:cc:subject
 :in-reply-to:date:message-id:mime-version;
 bh=HHbqpLTt/UqK8u8skkn9x9YIdY8wkJ4ttRxZXF6EinY=;
 b=cEhBihtpfXCgV0XhfrB+C7OO/kks39e2uwip46QBi1ABeK5/2YNarwRrRlSiLKMKDk
 ypJbHJ+keG9gQ06K1Vql/rdEzVUkyBWFgcR6T0FXCO5T3nrkv3cYPkVaiYEn+J65/wsk
 8L4Bsd1tma4SxF+8HH0L6rtLORY24yijfnFo+uz5A6iSzoAGOfQ/9cR8d/F3RQNtS23B
 cgfg9lvpghCWuZ2VCO3N2v3YTAjLJWVJBHm3pKA/SqVW1RuPqo5MMgzCjZn36ZQxiJU2
 OR6fWvWRAHnsn9NDpiG8AnPogKcs6+REvl5DjS276J+JgEOY6SJ4P2+I9atJGN1oye11
 rsGQ==
X-Gm-Message-State: APjAAAUOlnFjVjVS8m7ft9d0yYiKZnuxQ2dYRSOW3Kg0P97b68ndEGyE
 /DQ/iDrWD3vMAJDp2yR6VMmFUg==
X-Google-Smtp-Source: APXvYqwfVWZ2uyQrHtW79irxr4cfhJhTkvjPeAqMQ25Qa5108rnUpXmlpdEPv1K0U4PAXpWDPp+JbQ==
X-Received: by 2002:adf:e50c:: with SMTP id j12mr3191191wrm.117.1562318666604; 
 Fri, 05 Jul 2019 02:24:26 -0700 (PDT)
Received: from LAPTOP-V3S7NLPL ([217.38.71.146])
 by smtp.gmail.com with ESMTPSA id o126sm7447501wmo.1.2019.07.05.02.24.25
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 05 Jul 2019 02:24:25 -0700 (PDT)
References: <20190705001803.30094-1-luke.r.nels@gmail.com>
User-agent: mu4e 0.9.18; emacs 25.2.2
From: Jiong Wang <jiong.wang@netronome.com>
To: Luke Nelson <lukenels@cs.washington.edu>
Subject: Re: [PATCH bpf-next] Enable zext optimization for more RV64G ALU ops
In-reply-to: <20190705001803.30094-1-luke.r.nels@gmail.com>
Date: Fri, 05 Jul 2019 10:24:22 +0100
Message-ID: <8736jk4ywp.fsf@netronome.com>
MIME-Version: 1.0
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 T_PDS_NO_HELO_DNS      High profile HELO but no A record
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
 Luke Nelson <luke.r.nels@gmail.com>, Jiong Wang <jiong.wang@netronome.com>,
 =?utf-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@gmail.com>,
 Palmer Dabbelt <palmer@sifive.com>, Song Liu <liu.song.a23@gmail.com>,
 linux-kernel@vger.kernel.org, Alexei Starovoitov <ast@kernel.org>,
 netdev@vger.kernel.org, Yonghong Song <yhs@fb.com>,
 linux-riscv@lists.infradead.org, Martin KaFai Lau <kafai@fb.com>,
 Xi Wang <xi.wang@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org


Luke Nelson writes:

> commit 66d0d5a854a6 ("riscv: bpf: eliminate zero extension code-gen")
> added the new zero-extension optimization for some BPF ALU operations.
>
> Since then, bugs in the JIT that have been fixed in the bpf tree require
> this optimization to be added to other operations: commit 1e692f09e091
> ("bpf, riscv: clear high 32 bits for ALU32 add/sub/neg/lsh/rsh/arsh"),
> and commit fe121ee531d1 ("bpf, riscv: clear target register high 32-bits
> for and/or/xor on ALU32")
>
> Now that these have been merged to bpf-next, the zext optimization can
> be enabled for the fixed operations.

LGTM, thanks.

Acked-by: Jiong Wang <jiong.wang@netronome.com>

>
> Cc: Song Liu <liu.song.a23@gmail.com>
> Cc: Jiong Wang <jiong.wang@netronome.com>
> Cc: Xi Wang <xi.wang@gmail.com>
> Signed-off-by: Luke Nelson <luke.r.nels@gmail.com>
> ---
>  arch/riscv/net/bpf_jit_comp.c | 16 ++++++++--------
>  1 file changed, 8 insertions(+), 8 deletions(-)
>
> diff --git a/arch/riscv/net/bpf_jit_comp.c b/arch/riscv/net/bpf_jit_comp.c
> index 876cb9c705ce..5451ef3845f2 100644
> --- a/arch/riscv/net/bpf_jit_comp.c
> +++ b/arch/riscv/net/bpf_jit_comp.c
> @@ -757,31 +757,31 @@ static int emit_insn(const struct bpf_insn *insn, struct rv_jit_context *ctx,
>  	case BPF_ALU | BPF_ADD | BPF_X:
>  	case BPF_ALU64 | BPF_ADD | BPF_X:
>  		emit(is64 ? rv_add(rd, rd, rs) : rv_addw(rd, rd, rs), ctx);
> -		if (!is64)
> +		if (!is64 && !aux->verifier_zext)
>  			emit_zext_32(rd, ctx);
>  		break;
>  	case BPF_ALU | BPF_SUB | BPF_X:
>  	case BPF_ALU64 | BPF_SUB | BPF_X:
>  		emit(is64 ? rv_sub(rd, rd, rs) : rv_subw(rd, rd, rs), ctx);
> -		if (!is64)
> +		if (!is64 && !aux->verifier_zext)
>  			emit_zext_32(rd, ctx);
>  		break;
>  	case BPF_ALU | BPF_AND | BPF_X:
>  	case BPF_ALU64 | BPF_AND | BPF_X:
>  		emit(rv_and(rd, rd, rs), ctx);
> -		if (!is64)
> +		if (!is64 && !aux->verifier_zext)
>  			emit_zext_32(rd, ctx);
>  		break;
>  	case BPF_ALU | BPF_OR | BPF_X:
>  	case BPF_ALU64 | BPF_OR | BPF_X:
>  		emit(rv_or(rd, rd, rs), ctx);
> -		if (!is64)
> +		if (!is64 && !aux->verifier_zext)
>  			emit_zext_32(rd, ctx);
>  		break;
>  	case BPF_ALU | BPF_XOR | BPF_X:
>  	case BPF_ALU64 | BPF_XOR | BPF_X:
>  		emit(rv_xor(rd, rd, rs), ctx);
> -		if (!is64)
> +		if (!is64 && !aux->verifier_zext)
>  			emit_zext_32(rd, ctx);
>  		break;
>  	case BPF_ALU | BPF_MUL | BPF_X:
> @@ -811,13 +811,13 @@ static int emit_insn(const struct bpf_insn *insn, struct rv_jit_context *ctx,
>  	case BPF_ALU | BPF_RSH | BPF_X:
>  	case BPF_ALU64 | BPF_RSH | BPF_X:
>  		emit(is64 ? rv_srl(rd, rd, rs) : rv_srlw(rd, rd, rs), ctx);
> -		if (!is64)
> +		if (!is64 && !aux->verifier_zext)
>  			emit_zext_32(rd, ctx);
>  		break;
>  	case BPF_ALU | BPF_ARSH | BPF_X:
>  	case BPF_ALU64 | BPF_ARSH | BPF_X:
>  		emit(is64 ? rv_sra(rd, rd, rs) : rv_sraw(rd, rd, rs), ctx);
> -		if (!is64)
> +		if (!is64 && !aux->verifier_zext)
>  			emit_zext_32(rd, ctx);
>  		break;
>  
> @@ -826,7 +826,7 @@ static int emit_insn(const struct bpf_insn *insn, struct rv_jit_context *ctx,
>  	case BPF_ALU64 | BPF_NEG:
>  		emit(is64 ? rv_sub(rd, RV_REG_ZERO, rd) :
>  		     rv_subw(rd, RV_REG_ZERO, rd), ctx);
> -		if (!is64)
> +		if (!is64 && !aux->verifier_zext)
>  			emit_zext_32(rd, ctx);
>  		break;


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
