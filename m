Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9746830531
	for <lists+linux-riscv@lfdr.de>; Fri, 31 May 2019 01:08:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=05dNOI2p3WpygqZwQfvjjWMIrkpVzT8xN5SxUW+UP9c=; b=CW//elYZzOtAwq
	rXZjyAgeINiq6gYhUjNvT/nqeedUH7f1b8Ee6KMg8VDieMkNb2grY0pMkwKgE4Tf3c6KU1dmUHWpk
	YIumL2Qb1pgVgnDg+vOF0gwQOIfosRREoUvyW+HYMSOcxfWlX60Qng2a8wWSah5XHMmsH8w0FHFzA
	L+aFgr7rJvNtApIkeqcJdoZYHQVAXj9fnPxJ2Inm6Cwx6ow4znr1glxjho4q1bXdwneyJDqY9QYtr
	SNYIGNtEzTO9IyuQDsh1OcKh8b7h6+SEWEP7ZFtsCvC3ME803+w4WyiN3lHDhcQea6Q1N51CugE5w
	SibEDwylM9qEtoaQSdow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWU9y-0003FM-8O; Thu, 30 May 2019 23:08:34 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWU9u-0003Ek-SN
 for linux-riscv@lists.infradead.org; Thu, 30 May 2019 23:08:32 +0000
Received: by mail-qt1-x843.google.com with SMTP id h1so9195349qtp.1
 for <linux-riscv@lists.infradead.org>; Thu, 30 May 2019 16:08:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=m5YeNHvt0zcypFW4gVIjV1wgNVF4tJqWRF5UGFIAvn4=;
 b=kvKFrp7EnHfnw8nIv5t/k3DxK8cbOL5bHDJ9jOUmfY2bO2Mr/aqYTWt+NKsVvv0bXa
 zZ4PnN25ii5l/UtWlU3wB03jXpxVbMg8v8vCGbaXr1AHVAywRyKRpKz7oagZrAaXuv1x
 yJWpFNRmq+DeHoVljMrEo16o5VMJlbr5iEdAeqGeQf9abrGLfILaYWGC7xFWP6ImzBee
 M79+eL/nneYGsmQYuuurbKE/kV+EMXBQYRvvq7+MAftmBaQQTXB7qCFZo0occwkIX9Et
 UPUAjnSStcaSeTC2ghnagA+tfZEpKbvMC13WmNojojbCD905FUVZc8EWpaXd8MGynps6
 nShA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=m5YeNHvt0zcypFW4gVIjV1wgNVF4tJqWRF5UGFIAvn4=;
 b=XDWhE70fG7L2l0+F/hiozv8aDxBKAn0Cg+vGkUSdPZpcMNoXDZeB/xytk603UU++m0
 t3pMVsLdC+1mKO6NdWU0a87yDKGzvHt+ITWPohH6LmvZfyNKZfQrlOlT/X0/s/JKhZ5s
 LxPMPooFJwQDAMP08bQSXA3D0OSfIc/raNqSRoVSQ7HeorH/lPNTTHZeEm+Mo6qzTwr7
 LuabS+pOlg6RSi+OmWbUhm7v8OcNdiocE8JwFRh2OhTvJKYXrChojGJqE1b/AJtw5gxa
 fJCmfRRcphylJsrz7uIkBks/xi0bvHjSKnCSuI1iUyUYZyp2YpZqxSrmnz8RLqchVVEP
 aBVw==
X-Gm-Message-State: APjAAAVDChzY8WY4CA5eD2FDunja3JfVxhja1bc0460cAokLjhAtgVli
 jFyfVBl8oC5ZSTcyQxkyz68Bo5grtvQ0gI39cGI=
X-Google-Smtp-Source: APXvYqy5EvtGXAtcjqdJE/hoBljmEVSM5SUwDsN118mX/n4a0tm5BdRhBgPAlea1wtiaGUu9m/X/X7PPUt3c0jDbo1c=
X-Received: by 2002:ac8:2af4:: with SMTP id c49mr5784353qta.83.1559257709549; 
 Thu, 30 May 2019 16:08:29 -0700 (PDT)
MIME-Version: 1.0
References: <20190530222922.4269-1-luke.r.nels@gmail.com>
In-Reply-To: <20190530222922.4269-1-luke.r.nels@gmail.com>
From: Song Liu <liu.song.a23@gmail.com>
Date: Thu, 30 May 2019 16:08:18 -0700
Message-ID: <CAPhsuW4JXN65P4b_uXdJX12RZFU0HyuREZuwrm+tEQ0rq8-oRA@mail.gmail.com>
Subject: Re: [PATCH bpf v2] bpf,
 riscv: clear high 32 bits for ALU32 add/sub/neg/lsh/rsh/arsh
To: Luke Nelson <luke.r.nels@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_160830_917894_2F6C25F9 
X-CRM114-Status: GOOD (  15.58  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
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

On Thu, May 30, 2019 at 3:30 PM Luke Nelson <luke.r.nels@gmail.com> wrote:
>
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

Acked-by: Song Liu <songliubraving@fb.com>


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
> @@ -795,14 +799,20 @@ static int emit_insn(const struct bpf_insn *insn, struct rv_jit_context *ctx,
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
> @@ -810,6 +820,8 @@ static int emit_insn(const struct bpf_insn *insn, struct rv_jit_context *ctx,
>         case BPF_ALU64 | BPF_NEG:
>                 emit(is64 ? rv_sub(rd, RV_REG_ZERO, rd) :
>                      rv_subw(rd, RV_REG_ZERO, rd), ctx);
> +               if (!is64)
> +                       emit_zext_32(rd, ctx);
>                 break;
>
>         /* dst = BSWAP##imm(dst) */
> @@ -964,14 +976,20 @@ static int emit_insn(const struct bpf_insn *insn, struct rv_jit_context *ctx,
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
