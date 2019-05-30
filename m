Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3C8930397
	for <lists+linux-riscv@lfdr.de>; Thu, 30 May 2019 22:53:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Lu4L3L7c4mBeipcj1ZkK3cqES4KYYTtelmy5SZz70fA=; b=fSGCJivzYvNfiK
	i9WykhzJbH5ilxRKboV1nzT07+m9zKMeVGlpq6O5Hb7BtlaoGy1qtk2mIvLfXzrlOarfB6qQPJGpp
	hJtfQD7IjBG4nlYPF9QJJNxYSCLqmOhokIKe5uBFywVLBbkxVEd8tkwsOgpzhuBxnA8I2AtmABxpY
	D5Rrv8Y3f8wyyaTWyfUYXRzNncg3l2NJhJ/VyXi3tIzitQ2Fvf54j+zlnRvtMoJIztYUcxkn+6HW1
	X87UDnYjxf6XDjbyDBILaPdM6xcoIVFLild9JFRtVZFLxSexUrL4b6iZwy3vDutXiAQ/pSukZrWKg
	t2/kYe7rN7Fg2Oybmadw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWS3A-0000hE-QD; Thu, 30 May 2019 20:53:24 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWS36-0000gC-1P
 for linux-riscv@lists.infradead.org; Thu, 30 May 2019 20:53:22 +0000
Received: by mail-qk1-x744.google.com with SMTP id t64so4877575qkh.1
 for <linux-riscv@lists.infradead.org>; Thu, 30 May 2019 13:53:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=z9CARR2sdyz0TzlZx5C1Y/HG1L1GZ/YQxjW8n3dkDtY=;
 b=O9b/bK8EMj6Z/Aes6GvEEWWgQoaqgWaPkCaZ7cbWL42OrKuP7jCn08XnPqAmy2p306
 8zhO25gwMO64WxuBI2gHUQlS/hvtoy5Caw3oUFl2PIjzGa0bYZkNqSLyaIzi2b1TeyUj
 FF37jgA4vO32nO0WZtIk8qPAYjFw6a6a31YkeqEMWj6cA75nwjX6K+fNkXOSWkeNm8gG
 IDAzymM/tDnhTeMvFQclwaOUNj9WlNGj9jdXrDTHK6nOYN4rb37VYFg2BOXyFCdWVDEX
 3VX2YfBwDDiSgLEeBrbXF0Aaery1wJ4oqbzlGKl7kczZOsWjWFvMpf9Wln7u02PN41Hv
 SoUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=z9CARR2sdyz0TzlZx5C1Y/HG1L1GZ/YQxjW8n3dkDtY=;
 b=jlqbkYun4hP+jBQ3viXCju25T1IrNnGMPPcVD0fGdPf0IJyP8t7snknfUsYDlf3bUa
 /adlT/Jvv8Z1/sGfGH6bwq00UA+qVNhU9faJzmeeEPlj16L24TL7WEmlAvI8X9FAEA4v
 H5/j2mOcC5zPmvGPMXjqsy1dKHSQQQSsvxrPM/JexzPvrvoZhxxLhFbPtKjKpMr4tS7g
 ujmYRLjnd/Uwy6Ib3lZB9r7RDDx5lHRKTQCgEnF6qzIMeI6kEBzj2EKH+m0zj+57Cwmv
 2h5aWV4PUpvCNr8TEPmLJkqL7C152y7aDcSBf92n9bIAHYR7mSYqDi49UhRFGjQynbwo
 FUlQ==
X-Gm-Message-State: APjAAAVEMaQYQYwI1RT8vM3HsoVimPior4HSNXmA2pTzXuF9s4xq3iX8
 n6RscEFGr0s6UVbXbZtdZQZ3IXNMRsl0dR2Andk=
X-Google-Smtp-Source: APXvYqwWhPLets6g5KL70GsN0a/SBVH9vdVhMDcuBw1NjRTLVGKTPlYj7q6szJQZYwKJTGwxrKqHl3zy1Vgg7W+OTbs=
X-Received: by 2002:a05:620a:12f8:: with SMTP id
 f24mr5129490qkl.202.1559249597898; 
 Thu, 30 May 2019 13:53:17 -0700 (PDT)
MIME-Version: 1.0
References: <20190530190800.7633-1-luke.r.nels@gmail.com>
In-Reply-To: <20190530190800.7633-1-luke.r.nels@gmail.com>
From: Song Liu <liu.song.a23@gmail.com>
Date: Thu, 30 May 2019 13:53:06 -0700
Message-ID: <CAPhsuW4kMBSjpATqHrEhTmuqje=XZNGOrMyNur8f6K0RNQP=yw@mail.gmail.com>
Subject: Re: [PATCH 1/2] bpf, riscv: fix bugs in JIT for 32-bit ALU operations
To: Luke Nelson <luke.r.nels@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_135320_106511_69EF1A4D 
X-CRM114-Status: GOOD (  15.30  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:744 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (liu.song.a23[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (liu.song.a23[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Song Liu <songliubraving@fb.com>, Albert Ou <aou@eecs.berkeley.edu>,
 bpf <bpf@vger.kernel.org>, Daniel Borkmann <daniel@iogearbox.net>,
 =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@gmail.com>,
 Palmer Dabbelt <palmer@sifive.com>, Alexei Starovoitov <ast@kernel.org>,
 open list <linux-kernel@vger.kernel.org>, Networking <netdev@vger.kernel.org>,
 Yonghong Song <yhs@fb.com>, linux-riscv@lists.infradead.org,
 Martin KaFai Lau <kafai@fb.com>, Xi Wang <xi.wang@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, May 30, 2019 at 12:09 PM Luke Nelson <luke.r.nels@gmail.com> wrote:
>
> In BPF, 32-bit ALU operations should zero-extend their results into
> the 64-bit registers.  The current BPF JIT on RISC-V emits incorrect
> instructions that perform either sign extension only (e.g., addw/subw)
> or no extension on 32-bit add, sub, and, or, xor, lsh, rsh, arsh,
> and neg.  This behavior diverges from the interpreter and JITs for
> other architectures.
>
> This patch fixes the bugs by performing zero extension on the destination
> register of 32-bit ALU operations.
>
> Fixes: 2353ecc6f91f ("bpf, riscv: add BPF JIT for RV64G")
> Cc: Xi Wang <xi.wang@gmail.com>
> Signed-off-by: Luke Nelson <luke.r.nels@gmail.com>

This is a little messy. How about we introduce some helper function
like:

/* please find a better name... */
emit_32_or_64(bool is64, const u32 insn_32, const u32 inst_64, struct
rv_jit_context *ctx)
{
       if (is64)
            emit(insn_64, ctx);
       else {
            emit(insn_32, ctx);
           rd = xxxx;
           emit_zext_32(rd, ctx);
       }
}

Thanks,
Song

> ---
>  arch/riscv/net/bpf_jit_comp.c | 24 ++++++++++++++++++++++++
>  1 file changed, 24 insertions(+)
>
> diff --git a/arch/riscv/net/bpf_jit_comp.c b/arch/riscv/net/bpf_jit_comp.c
> index 80b12aa5e10d..426d5c33ea90 100644
> --- a/arch/riscv/net/bpf_jit_comp.c
> +++ b/arch/riscv/net/bpf_jit_comp.c
> @@ -751,22 +751,32 @@ static int emit_insn(const struct bpf_insn *insn, struct rv_jit_context *ctx,
>         case BPF_ALU | BPF_ADD | BPF_X:
>         case BPF_ALU64 | BPF_ADD | BPF_X:
>                 emit(is64 ? rv_add(rd, rd, rs) : rv_addw(rd, rd, rs), ctx);
> +               if (!is64)
> +                       emit_zext_32(rd, ctx);
>                 break;
>         case BPF_ALU | BPF_SUB | BPF_X:
>         case BPF_ALU64 | BPF_SUB | BPF_X:
>                 emit(is64 ? rv_sub(rd, rd, rs) : rv_subw(rd, rd, rs), ctx);
> +               if (!is64)
> +                       emit_zext_32(rd, ctx);
>                 break;
>         case BPF_ALU | BPF_AND | BPF_X:
>         case BPF_ALU64 | BPF_AND | BPF_X:
>                 emit(rv_and(rd, rd, rs), ctx);
> +               if (!is64)
> +                       emit_zext_32(rd, ctx);
>                 break;
>         case BPF_ALU | BPF_OR | BPF_X:
>         case BPF_ALU64 | BPF_OR | BPF_X:
>                 emit(rv_or(rd, rd, rs), ctx);
> +               if (!is64)
> +                       emit_zext_32(rd, ctx);
>                 break;
>         case BPF_ALU | BPF_XOR | BPF_X:
>         case BPF_ALU64 | BPF_XOR | BPF_X:
>                 emit(rv_xor(rd, rd, rs), ctx);
> +               if (!is64)
> +                       emit_zext_32(rd, ctx);
>                 break;
>         case BPF_ALU | BPF_MUL | BPF_X:
>         case BPF_ALU64 | BPF_MUL | BPF_X:
> @@ -789,14 +799,20 @@ static int emit_insn(const struct bpf_insn *insn, struct rv_jit_context *ctx,
>         case BPF_ALU | BPF_LSH | BPF_X:
>         case BPF_ALU64 | BPF_LSH | BPF_X:
>                 emit(is64 ? rv_sll(rd, rd, rs) : rv_sllw(rd, rd, rs), ctx);
> +               if (!is64)
> +                       emit_zext_32(rd, ctx);
>                 break;
>         case BPF_ALU | BPF_RSH | BPF_X:
>         case BPF_ALU64 | BPF_RSH | BPF_X:
>                 emit(is64 ? rv_srl(rd, rd, rs) : rv_srlw(rd, rd, rs), ctx);
> +               if (!is64)
> +                       emit_zext_32(rd, ctx);
>                 break;
>         case BPF_ALU | BPF_ARSH | BPF_X:
>         case BPF_ALU64 | BPF_ARSH | BPF_X:
>                 emit(is64 ? rv_sra(rd, rd, rs) : rv_sraw(rd, rd, rs), ctx);
> +               if (!is64)
> +                       emit_zext_32(rd, ctx);
>                 break;
>
>         /* dst = -dst */
> @@ -804,6 +820,8 @@ static int emit_insn(const struct bpf_insn *insn, struct rv_jit_context *ctx,
>         case BPF_ALU64 | BPF_NEG:
>                 emit(is64 ? rv_sub(rd, RV_REG_ZERO, rd) :
>                      rv_subw(rd, RV_REG_ZERO, rd), ctx);
> +               if (!is64)
> +                       emit_zext_32(rd, ctx);
>                 break;
>
>         /* dst = BSWAP##imm(dst) */
> @@ -958,14 +976,20 @@ static int emit_insn(const struct bpf_insn *insn, struct rv_jit_context *ctx,
>         case BPF_ALU | BPF_LSH | BPF_K:
>         case BPF_ALU64 | BPF_LSH | BPF_K:
>                 emit(is64 ? rv_slli(rd, rd, imm) : rv_slliw(rd, rd, imm), ctx);
> +               if (!is64)
> +                       emit_zext_32(rd, ctx);
>                 break;
>         case BPF_ALU | BPF_RSH | BPF_K:
>         case BPF_ALU64 | BPF_RSH | BPF_K:
>                 emit(is64 ? rv_srli(rd, rd, imm) : rv_srliw(rd, rd, imm), ctx);
> +               if (!is64)
> +                       emit_zext_32(rd, ctx);
>                 break;
>         case BPF_ALU | BPF_ARSH | BPF_K:
>         case BPF_ALU64 | BPF_ARSH | BPF_K:
>                 emit(is64 ? rv_srai(rd, rd, imm) : rv_sraiw(rd, rd, imm), ctx);
> +               if (!is64)
> +                       emit_zext_32(rd, ctx);
>                 break;
>
>         /* JUMP off */
> --
> 2.19.1
>

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
