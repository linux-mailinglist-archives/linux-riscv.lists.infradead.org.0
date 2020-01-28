Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0273314AE0C
	for <lists+linux-riscv@lfdr.de>; Tue, 28 Jan 2020 03:16:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Mime-Version:Message-ID:References:
	In-Reply-To:To:From:Subject:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qmbQ0SD8DHdPpZVGfV+v1K3FzTS4vgL8G+UXqGsRlEM=; b=JA9vTlm6QR581+
	4TmtOgxWGxLY0YVnVPrATGhVIWaD1BmTwFsAcwO6ZmUnMMIeZak51AluJ4/jGCWfLdGkrVgbNQ3ak
	cZ0KB3YiYLmdgRieT4M9qaBLaKj5g07dR6JCAFihBUHPerbi6ZBO6ft3Oi+gskLeyzjJ2xKh8lVjA
	9yLuSZwgZDlmPzTa11DEx78H5QIihXTOUroQtvepzjIeEqOPAC6qrx27oDonunmSRQzeTbfgcQsXE
	wJKNzUAF0JxL7+ajJMopEdaYeLXCtghyKzVBqrtZNjbifIzgCBQuU18EP3402/oPdI16SlX546XGr
	zeSvTb7OZ/hI6JdJgvtg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwGQU-0002Ic-2W; Tue, 28 Jan 2020 02:16:26 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwGPs-0001l1-DV
 for linux-riscv@lists.infradead.org; Tue, 28 Jan 2020 02:15:50 +0000
Received: by mail-pj1-x1041.google.com with SMTP id e9so312081pjr.4
 for <linux-riscv@lists.infradead.org>; Mon, 27 Jan 2020 18:15:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:subject:cc:from:to:in-reply-to:references:message-id
 :mime-version:content-transfer-encoding;
 bh=qmbQ0SD8DHdPpZVGfV+v1K3FzTS4vgL8G+UXqGsRlEM=;
 b=oJYkHQY0Qg9dTZkcxG6jkQGXiG0GH5ZtKl+UrH4KB1GB4Mw3rWF5wj5MLx9pa78QxD
 DMYj3w0MOwW3VuO2O9u5lraOKIO6RbPE3a8ClNKWLDgde+w7IJ0zvx2q+y0f+DYwhv0Q
 +meFECUlEmD+V1igh3dP1bMGVpRH6xKEqP4FRn9giySfJKsQ5CmgrVaOGc3Mtw2ZoMM4
 eGmnxzo917BFntj3SkDta9Dyh7xBaM3qKVL/s2IbZmUX3hXsW8OVtQdb/gi/QMWHbyb8
 ZwtVULSmtrgXyhmYNTeGemhXraoOjOJay1yszOmIo2Dc+vkEld06UMMdIQYktXRgq5bW
 +/Og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:cc:from:to:in-reply-to:references
 :message-id:mime-version:content-transfer-encoding;
 bh=qmbQ0SD8DHdPpZVGfV+v1K3FzTS4vgL8G+UXqGsRlEM=;
 b=RGNsB0d8WiEXUgUU0M5Ol/24M9qJap7QfDGKDKNrGErW0cMUY0yjX/beIZv1BumIF0
 ttCIPAcpVT3o6d935IerzLHJa+El/w83yOg1jV0oQELqzaEBMhyWtS7xa3wd/VQZB5Uy
 NBT3/a2R9FvNyaT4T212J/fmiXGPD4gdfVX+kPzy20yLKlskO81V7Vhs6fA4lKIadSTc
 P7YLCgk4vQJpUYddLAqn06BTPHVfdCxmGz+4eUPi6SJRDQDEbbVuQZfmW5MVogzl/mgH
 rJu2Zvpe5yY7QF/QEun90wvpdm42wseeqjEqHNwKlP8ogA8Gq4N/a0vvEtgeH1qpWMko
 9HIQ==
X-Gm-Message-State: APjAAAUQAg81S+6SSNjJdy7H/iheSjDQ2KLh1d/rHy31WCN72TQ8filV
 KMKSTlQXJF5/DMOuJUJBTrYOOw==
X-Google-Smtp-Source: APXvYqxyw1+9nDeY2fJ0PoezS+gA2HUhBTNGtpwFtRWhhrLUPF/Qn0/RVu3ns6X61ABPQl7i3FNfZQ==
X-Received: by 2002:a17:902:b484:: with SMTP id
 y4mr20197741plr.126.1580177747166; 
 Mon, 27 Jan 2020 18:15:47 -0800 (PST)
Received: from localhost ([216.9.110.1])
 by smtp.gmail.com with ESMTPSA id u18sm17430131pgi.44.2020.01.27.18.15.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 27 Jan 2020 18:15:46 -0800 (PST)
Date: Mon, 27 Jan 2020 18:15:46 -0800 (PST)
X-Google-Original-Date: Mon, 27 Jan 2020 18:15:44 PST (-0800)
Subject: Re: [PATCH bpf-next v2 7/9] riscv, bpf: optimize calls
From: Palmer Dabbelt <palmerdabbelt@google.com>
To: Bjorn Topel <bjorn.topel@gmail.com>
In-Reply-To: <CAJ+HfNhvTdsBq_tmKNcxVdS=nro=jwL5yLxnyDXO02Vai+5YNg@mail.gmail.com>
References: <CAJ+HfNhvTdsBq_tmKNcxVdS=nro=jwL5yLxnyDXO02Vai+5YNg@mail.gmail.com>
 <20191216091343.23260-1-bjorn.topel@gmail.com>
 <20191216091343.23260-8-bjorn.topel@gmail.com>
 <mhng-041b1051-f9ac-4cd8-95bf-731bb1bfbdb8@palmerdabbelt-glaptop>
Message-ID: <mhng-a006210f-8a00-42c3-b93d-135144220411@palmerdabbelt-glaptop1>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_181548_576779_FFF41445 
X-CRM114-Status: GOOD (  20.97  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: netdev@vger.kernel.org, linux-riscv@lists.infradead.org,
 bpf@vger.kernel.org, ast@kernel.org, daniel@iogearbox.net
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, 07 Jan 2020 02:14:17 PST (-0800), Bjorn Topel wrote:
> On Mon, 23 Dec 2019 at 19:58, Palmer Dabbelt <palmerdabbelt@google.com> wrote:
>>
>> On Mon, 16 Dec 2019 01:13:41 PST (-0800), Bjorn Topel wrote:
>> > Instead of using emit_imm() and emit_jalr() which can expand to six
>> > instructions, start using jal or auipc+jalr.
>> >
>> > Signed-off-by: Björn Töpel <bjorn.topel@gmail.com>
>> > ---
>> >  arch/riscv/net/bpf_jit_comp.c | 101 +++++++++++++++++++++-------------
>> >  1 file changed, 64 insertions(+), 37 deletions(-)
>> >
>> > diff --git a/arch/riscv/net/bpf_jit_comp.c b/arch/riscv/net/bpf_jit_comp.c
>> > index 46cff093f526..8d7e3343a08c 100644
>> > --- a/arch/riscv/net/bpf_jit_comp.c
>> > +++ b/arch/riscv/net/bpf_jit_comp.c
>> > @@ -811,11 +811,12 @@ static void emit_sext_32_rd(u8 *rd, struct rv_jit_context *ctx)
>> >       *rd = RV_REG_T2;
>> >  }
>> >
>> > -static void emit_jump_and_link(u8 rd, int rvoff, struct rv_jit_context *ctx)
>> > +static void emit_jump_and_link(u8 rd, s64 rvoff, bool force_jalr,
>> > +                            struct rv_jit_context *ctx)
>> >  {
>> >       s64 upper, lower;
>> >
>> > -     if (is_21b_int(rvoff)) {
>> > +     if (rvoff && is_21b_int(rvoff) && !force_jalr) {
>> >               emit(rv_jal(rd, rvoff >> 1), ctx);
>> >               return;
>> >       }
>> > @@ -832,6 +833,28 @@ static bool is_signed_bpf_cond(u8 cond)
>> >               cond == BPF_JSGE || cond == BPF_JSLE;
>> >  }
>> >
>> > +static int emit_call(bool fixed, u64 addr, struct rv_jit_context *ctx)
>> > +{
>> > +     s64 off = 0;
>> > +     u64 ip;
>> > +     u8 rd;
>> > +
>> > +     if (addr && ctx->insns) {
>> > +             ip = (u64)(long)(ctx->insns + ctx->ninsns);
>> > +             off = addr - ip;
>> > +             if (!is_32b_int(off)) {
>> > +                     pr_err("bpf-jit: target call addr %pK is out of range\n",
>> > +                            (void *)addr);
>> > +                     return -ERANGE;
>> > +             }
>> > +     }
>> > +
>> > +     emit_jump_and_link(RV_REG_RA, off, !fixed, ctx);
>> > +     rd = bpf_to_rv_reg(BPF_REG_0, ctx);
>> > +     emit(rv_addi(rd, RV_REG_A0, 0), ctx);
>>
>> Why are they out of order?  It seems like it'd be better to just have the BPF
>> calling convention match the RISC-V calling convention, as that'd avoid
>> juggling the registers around.
>>
>
> BPF passes arguments in R1, R2, ..., and return value in R0. Given
> that a0 plays the role of R1 and R0, how can we avoid the register
> juggling (without complicating the JIT too much)? It would be nice
> though... and ARM64 has the same concern AFAIK.

Oh, why did you say that?  This kind of stuff is why I'm twenty days behind on
email...

https://lore.kernel.org/bpf/20200128021145.36774-1-palmerdabbelt@google.com/T/#t

:)

> [...]
>> > @@ -1599,36 +1611,51 @@ struct bpf_prog *bpf_int_jit_compile(struct bpf_prog *prog)
>> >       for (i = 0; i < 16; i++) {
>> >               pass++;
>> >               ctx->ninsns = 0;
>> > -             if (build_body(ctx, extra_pass)) {
>> > +             if (build_body(ctx, extra_pass, ctx->offset)) {
>> >                       prog = orig_prog;
>> >                       goto out_offset;
>> >               }
>> >               build_prologue(ctx);
>> >               ctx->epilogue_offset = ctx->ninsns;
>> >               build_epilogue(ctx);
>> > -             if (ctx->ninsns == prev_ninsns)
>> > -                     break;
>> > +
>> > +             if (ctx->ninsns == prev_ninsns) {
>> > +                     if (jit_data->header)
>> > +                             break;
>> > +
>> > +                     image_size = sizeof(u32) * ctx->ninsns;
>> > +                     jit_data->header =
>> > +                             bpf_jit_binary_alloc(image_size,
>> > +                                                  &jit_data->image,
>> > +                                                  sizeof(u32),
>> > +                                                  bpf_fill_ill_insns);
>> > +                     if (!jit_data->header) {
>> > +                             prog = orig_prog;
>> > +                             goto out_offset;
>> > +                     }
>> > +
>> > +                     ctx->insns = (u32 *)jit_data->image;
>> > +                     /* Now, when the image is allocated, the image
>> > +                      * can potentially shrink more (auipc/jalr ->
>> > +                      * jal).
>> > +                      */
>> > +             }
>>
>> It seems like these fragments should go along with patch #2 that introduces the
>> code, as I don't see anything above that makes this necessary here.
>>
>
> No, you're right.
>
>
> Björn

