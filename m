Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9037132353
	for <lists+linux-riscv@lfdr.de>; Tue,  7 Jan 2020 11:15:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IV53HJu5vtMeP3yUD2f83Yq1n1kzL3QCCENu2AjBags=; b=kGTzNe6w+9LTlH
	JHn2wio3AWHNkp0ENtgWMFYXq1OMaKr4cZc/FpChx6zbBo7RAoAFwUq0KqjqtZ7KHFwN4mNR7mgDW
	m4k+fdd2TEKgk7IGA+k/4ZrJnIgwjyP4Fd9Cq51y6hFiu3Q2Qy4K4ULB+ibt0aap0BV0gbXKf969U
	HNbuF4bbO2FjNN0TSxvYsp0uWJdPuVaNF38XoQnvMOujD3ynkMEf9ZrSWw/0Ct7F/B0t+LNTHwd1U
	9s4o0RQSedZZL5Mrs2FJxOiQ8wRzksosXmRyIYjy/Yr0/1SRaHA7MMB+dL6GO3fXs99FYczSSJBSk
	qN0eTMZVWZcnb5CfFQYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioltO-0003bp-BC; Tue, 07 Jan 2020 10:15:18 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iolsc-0001jY-S5
 for linux-riscv@lists.infradead.org; Tue, 07 Jan 2020 10:14:33 +0000
Received: by mail-qk1-x741.google.com with SMTP id k6so42157377qki.5
 for <linux-riscv@lists.infradead.org>; Tue, 07 Jan 2020 02:14:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=IV53HJu5vtMeP3yUD2f83Yq1n1kzL3QCCENu2AjBags=;
 b=MNzKzm7acvtyxpLBCqWCWJe5aUv2p3Md8x8dKQDyCnXWClxe5YvI2z6MDKioklgX34
 qV/Nq7+VO2jGc/HA6tEstb2jCeNxMIG+r69EM8AUf7peNgKgjSPbrI65m6tx2dueHI/v
 mr7/3LEKDN4FDukgRGeHosn2s5wK2rZUvwm4h+xlUVvstKw8OrVXmCkMBblPCy9K8SjH
 fncFX2wSjr6zcc56+cQW6kBEki7k/sy9SQrpU6N2fTV2by2G2R/tmjSIq6mC/JNVFqi7
 sxHpmHNJvOrtYcZoVFvXRFQyoIBGbSs2IamMxGRrYLJB+f+NnMOZR/VJcyV+JhzWuR4p
 bGlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=IV53HJu5vtMeP3yUD2f83Yq1n1kzL3QCCENu2AjBags=;
 b=FJxznNIDByHU8zJmmloKFADRhd0Ph3oQWFzDiUPNjxtYkI4jQfP7vfaHOkUgRSrzdU
 Ujx2RjuuDJ9gJdr8pkx2vsRHRNo4js5AQCltrsEOBGcaAIKKUI0ue5dU5PO7dCM4BpGY
 0VNryu2frqohSP/w+dywLbEmj76+9bTkDeft+21tP+CsoA7c5rRjVfr1il8pwgvwgVU3
 fsRCC3lBx0PnVfGt7jHT2+bIZ3ap5Zm1B5+Bx+I6DI3REz5uWUob3XwWkBSFv8P4MxMc
 37bl7N/tOWbMJDVTad4DVN5LwCjUay5XdPZTcSD0m79hPowBcG7O9en5kBcA3ydZn3/G
 MH9w==
X-Gm-Message-State: APjAAAXn746jmZ3jkuqxDChuvqouhoMFigHEN6LVxeKUWOihphhW/aJ7
 CyvBH0S7B3mIl+0guKf8WupYj+6tLzoefhLqcjM=
X-Google-Smtp-Source: APXvYqydUbr/MzbLw/deZNn57Qfvm2tVjYE/xluruvEHVuN91HSZF6qqKtG64WQTcNJh/oWD8TsvFbVxW/GPLF3icIg=
X-Received: by 2002:a05:620a:a5c:: with SMTP id
 j28mr76917679qka.218.1578392068699; 
 Tue, 07 Jan 2020 02:14:28 -0800 (PST)
MIME-Version: 1.0
References: <20191216091343.23260-1-bjorn.topel@gmail.com>
 <20191216091343.23260-8-bjorn.topel@gmail.com>
 <mhng-041b1051-f9ac-4cd8-95bf-731bb1bfbdb8@palmerdabbelt-glaptop>
In-Reply-To: <mhng-041b1051-f9ac-4cd8-95bf-731bb1bfbdb8@palmerdabbelt-glaptop>
From: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@gmail.com>
Date: Tue, 7 Jan 2020 11:14:17 +0100
Message-ID: <CAJ+HfNhvTdsBq_tmKNcxVdS=nro=jwL5yLxnyDXO02Vai+5YNg@mail.gmail.com>
Subject: Re: [PATCH bpf-next v2 7/9] riscv, bpf: optimize calls
To: Palmer Dabbelt <palmerdabbelt@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_021430_905506_80143024 
X-CRM114-Status: GOOD (  18.26  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Netdev <netdev@vger.kernel.org>, linux-riscv@lists.infradead.org,
 bpf <bpf@vger.kernel.org>, Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, 23 Dec 2019 at 19:58, Palmer Dabbelt <palmerdabbelt@google.com> wro=
te:
>
> On Mon, 16 Dec 2019 01:13:41 PST (-0800), Bjorn Topel wrote:
> > Instead of using emit_imm() and emit_jalr() which can expand to six
> > instructions, start using jal or auipc+jalr.
> >
> > Signed-off-by: Bj=C3=B6rn T=C3=B6pel <bjorn.topel@gmail.com>
> > ---
> >  arch/riscv/net/bpf_jit_comp.c | 101 +++++++++++++++++++++-------------
> >  1 file changed, 64 insertions(+), 37 deletions(-)
> >
> > diff --git a/arch/riscv/net/bpf_jit_comp.c b/arch/riscv/net/bpf_jit_com=
p.c
> > index 46cff093f526..8d7e3343a08c 100644
> > --- a/arch/riscv/net/bpf_jit_comp.c
> > +++ b/arch/riscv/net/bpf_jit_comp.c
> > @@ -811,11 +811,12 @@ static void emit_sext_32_rd(u8 *rd, struct rv_jit=
_context *ctx)
> >       *rd =3D RV_REG_T2;
> >  }
> >
> > -static void emit_jump_and_link(u8 rd, int rvoff, struct rv_jit_context=
 *ctx)
> > +static void emit_jump_and_link(u8 rd, s64 rvoff, bool force_jalr,
> > +                            struct rv_jit_context *ctx)
> >  {
> >       s64 upper, lower;
> >
> > -     if (is_21b_int(rvoff)) {
> > +     if (rvoff && is_21b_int(rvoff) && !force_jalr) {
> >               emit(rv_jal(rd, rvoff >> 1), ctx);
> >               return;
> >       }
> > @@ -832,6 +833,28 @@ static bool is_signed_bpf_cond(u8 cond)
> >               cond =3D=3D BPF_JSGE || cond =3D=3D BPF_JSLE;
> >  }
> >
> > +static int emit_call(bool fixed, u64 addr, struct rv_jit_context *ctx)
> > +{
> > +     s64 off =3D 0;
> > +     u64 ip;
> > +     u8 rd;
> > +
> > +     if (addr && ctx->insns) {
> > +             ip =3D (u64)(long)(ctx->insns + ctx->ninsns);
> > +             off =3D addr - ip;
> > +             if (!is_32b_int(off)) {
> > +                     pr_err("bpf-jit: target call addr %pK is out of r=
ange\n",
> > +                            (void *)addr);
> > +                     return -ERANGE;
> > +             }
> > +     }
> > +
> > +     emit_jump_and_link(RV_REG_RA, off, !fixed, ctx);
> > +     rd =3D bpf_to_rv_reg(BPF_REG_0, ctx);
> > +     emit(rv_addi(rd, RV_REG_A0, 0), ctx);
>
> Why are they out of order?  It seems like it'd be better to just have the=
 BPF
> calling convention match the RISC-V calling convention, as that'd avoid
> juggling the registers around.
>

BPF passes arguments in R1, R2, ..., and return value in R0. Given
that a0 plays the role of R1 and R0, how can we avoid the register
juggling (without complicating the JIT too much)? It would be nice
though... and ARM64 has the same concern AFAIK.

[...]
> > @@ -1599,36 +1611,51 @@ struct bpf_prog *bpf_int_jit_compile(struct bpf=
_prog *prog)
> >       for (i =3D 0; i < 16; i++) {
> >               pass++;
> >               ctx->ninsns =3D 0;
> > -             if (build_body(ctx, extra_pass)) {
> > +             if (build_body(ctx, extra_pass, ctx->offset)) {
> >                       prog =3D orig_prog;
> >                       goto out_offset;
> >               }
> >               build_prologue(ctx);
> >               ctx->epilogue_offset =3D ctx->ninsns;
> >               build_epilogue(ctx);
> > -             if (ctx->ninsns =3D=3D prev_ninsns)
> > -                     break;
> > +
> > +             if (ctx->ninsns =3D=3D prev_ninsns) {
> > +                     if (jit_data->header)
> > +                             break;
> > +
> > +                     image_size =3D sizeof(u32) * ctx->ninsns;
> > +                     jit_data->header =3D
> > +                             bpf_jit_binary_alloc(image_size,
> > +                                                  &jit_data->image,
> > +                                                  sizeof(u32),
> > +                                                  bpf_fill_ill_insns);
> > +                     if (!jit_data->header) {
> > +                             prog =3D orig_prog;
> > +                             goto out_offset;
> > +                     }
> > +
> > +                     ctx->insns =3D (u32 *)jit_data->image;
> > +                     /* Now, when the image is allocated, the image
> > +                      * can potentially shrink more (auipc/jalr ->
> > +                      * jal).
> > +                      */
> > +             }
>
> It seems like these fragments should go along with patch #2 that introduc=
es the
> code, as I don't see anything above that makes this necessary here.
>

No, you're right.


Bj=C3=B6rn

