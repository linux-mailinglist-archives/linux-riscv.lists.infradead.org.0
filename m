Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67E90117671
	for <lists+linux-riscv@lfdr.de>; Mon,  9 Dec 2019 20:57:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NcB44n0iXRJVyFpixK4empk1pnmKscPpRBnS5swbmcI=; b=OLre2BN31BtGi0
	ub9YxDRSK18GtM/ixthc13np73MEyhx8s/zlM4s7Qd392EdZtEaVuJXqAvLvx+tGPUcOfMGCVxz/X
	IkTHwURgVnY+kvTieeJb5qb532E5qCU2lB4Ole1QDdxxOG8gKUd+EEnMdwUG9GPDUxGMAPaOYgBB4
	5RlKkQjwLbPWm3+FzMPRGwlg2xURq8ClDgQidT4Srg+5ga5mGivlb9dJAJMHG2J/r4ZjW4LheC+Fn
	2OFpmutiPWyPsU/r4n8QUYGD5CllJxXcJ/ZnDO5ezYIQLywU9z9jvYC/RHJiPvz7vJ1kDx5L+iGSC
	ZuYmY2GIhgHRN1PDgfYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iePA6-0001L3-Jh; Mon, 09 Dec 2019 19:57:42 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iePA3-0001Kf-DE
 for linux-riscv@lists.infradead.org; Mon, 09 Dec 2019 19:57:40 +0000
Received: by mail-qk1-x741.google.com with SMTP id k6so14260636qki.5
 for <linux-riscv@lists.infradead.org>; Mon, 09 Dec 2019 11:57:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=NcB44n0iXRJVyFpixK4empk1pnmKscPpRBnS5swbmcI=;
 b=b7Fn5KWLzyCLQ5HJCVpwQc6UYQrZJaUDJRuoy8MN5DipxjybCfdNYpizUQxWkHPXwR
 m/LlDVfRnUorgrJnSS1Kg5XrYGdOg0WLLloWBnqDIXA8XkZ5Ea7Bwsa1VUGv7NH2KPKL
 yemnVVjPiD5c9VW0j96royNb4sN9fqrZ222Lo4Tk4sELcTCfiPV2d7S8q57bA0Zdb6rS
 yre3yMJrZDStkg8c1dRL+Iz/sF+xM8yRBpkPKncCnaa8uu9UDUUJsOMVybN3CdJLKgOA
 ysn+jxXaAvolex6sn6S7IiAiL8tCp5PCOm6Th0OAazOG6lKdV1EvAyRg2hAeiA7JL/JH
 KTHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=NcB44n0iXRJVyFpixK4empk1pnmKscPpRBnS5swbmcI=;
 b=jRWU35vnaaKGXgH40244JMpk1BzxvHGB/JcnA42XxfpFBH1qrUDbXn0B/a9QlVRax+
 3tE+8orEkxM4GzF1ZB7y+lTSJpWcT+BexNY3mI7fnTMLoIJXILeFnRNxcFtNUBweqmLZ
 5BS0AmsEvFhOaxAvT5AV2PxNx8qy5Xem5iuDLzBn41HzbF5tgF5Xhv07MaDSZltGiDJp
 1O/9G8ONRCn50MbX24sJM0LCBZrHO3wv6ej/DcDFufRpLAj6wN/hcVCcyXZ4Njgfglcu
 Sz+Tm2M9KEei2jDi6fJpNx/3QVIt5Rc8ww806IXuAZ/+r83sIflGrCv7uvk/efuSITzQ
 KLAw==
X-Gm-Message-State: APjAAAX1ZOUUqdcsWtjTrvY2ofjMAklSAxelw1ooCTX93cT43BrFqJHX
 6DcsfVtTIGR2sj4HCW6hdi7AdlxZdho1vN7MZuQ=
X-Google-Smtp-Source: APXvYqwAlJqjuD/MqL1qjgVFkbXmT4iYKjEEkPJy9RQD9uKvk9LAmDD51ilqG6Q8iLAGCGYrPSkmTDbNo15EjqDtrk4=
X-Received: by 2002:a37:9c0f:: with SMTP id f15mr29427659qke.297.1575921458257; 
 Mon, 09 Dec 2019 11:57:38 -0800 (PST)
MIME-Version: 1.0
References: <cover.1575916815.git.paul.chaignon@gmail.com>
 <966fe384383bf23a0ee1efe8d7291c78a3fb832b.1575916815.git.paul.chaignon@gmail.com>
In-Reply-To: <966fe384383bf23a0ee1efe8d7291c78a3fb832b.1575916815.git.paul.chaignon@gmail.com>
From: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@gmail.com>
Date: Mon, 9 Dec 2019 20:57:27 +0100
Message-ID: <CAJ+HfNgFo8viKn3KzNfbmniPNUpjOv_QM4ua_V0RFLBpWCOBYw@mail.gmail.com>
Subject: Re: [PATCH bpf 1/2] bpf, riscv: limit to 33 tail calls
To: Paul Chaignon <paul.chaignon@orange.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_115739_448902_47201D70 
X-CRM114-Status: GOOD (  13.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (bjorn.topel[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Song Liu <songliubraving@fb.com>, Daniel Borkmann <daniel@iogearbox.net>,
 Paul Burton <paulburton@kernel.org>, paul.chaignon@gmail.com,
 Netdev <netdev@vger.kernel.org>, Alexei Starovoitov <ast@kernel.org>,
 linux-riscv@lists.infradead.org, Martin KaFai Lau <kafai@fb.com>,
 Yonghong Song <yhs@fb.com>, Mahshid Khezri <khezri.mahshid@gmail.com>,
 Andrii Nakryiko <andriin@fb.com>, bpf <bpf@vger.kernel.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, 9 Dec 2019 at 19:52, Paul Chaignon <paul.chaignon@orange.com> wrote=
:
>
> All BPF JIT compilers except RISC-V's and MIPS' enforce a 33-tail calls
> limit at runtime.  In addition, a test was recently added, in tailcalls2,
> to check this limit.
>
> This patch updates the tail call limit in RISC-V's JIT compiler to allow
> 33 tail calls.  I tested it using the above selftest on an emulated
> RISCV64.
>

33! ICK! ;-) Thanks for finding this!

Acked-by: Bj=C3=B6rn T=C3=B6pel <bjorn.topel@gmail.com>

> Fixes: 2353ecc6f91f ("bpf, riscv: add BPF JIT for RV64G")
> Reported-by: Mahshid Khezri <khezri.mahshid@gmail.com>
> Signed-off-by: Paul Chaignon <paul.chaignon@orange.com>
> ---
>  arch/riscv/net/bpf_jit_comp.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/arch/riscv/net/bpf_jit_comp.c b/arch/riscv/net/bpf_jit_comp.=
c
> index 5451ef3845f2..7fbf56aab661 100644
> --- a/arch/riscv/net/bpf_jit_comp.c
> +++ b/arch/riscv/net/bpf_jit_comp.c
> @@ -631,14 +631,14 @@ static int emit_bpf_tail_call(int insn, struct rv_j=
it_context *ctx)
>                 return -1;
>         emit(rv_bgeu(RV_REG_A2, RV_REG_T1, off >> 1), ctx);
>
> -       /* if (--TCC < 0)
> +       /* if (TCC-- < 0)
>          *     goto out;
>          */
>         emit(rv_addi(RV_REG_T1, tcc, -1), ctx);
>         off =3D (tc_ninsn - (ctx->ninsns - start_insn)) << 2;
>         if (is_13b_check(off, insn))
>                 return -1;
> -       emit(rv_blt(RV_REG_T1, RV_REG_ZERO, off >> 1), ctx);
> +       emit(rv_blt(tcc, RV_REG_ZERO, off >> 1), ctx);
>
>         /* prog =3D array->ptrs[index];
>          * if (!prog)
> --
> 2.17.1
>

