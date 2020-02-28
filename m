Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 214A11739C8
	for <lists+linux-riscv@lfdr.de>; Fri, 28 Feb 2020 15:25:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xm0bX30wRiWs3NOT1/N8ewNa+TY2rHUs/RpsQvOvuGk=; b=AiOy+VDC5ZXgRn
	O3As/xyhhGLB7KeWO7m31w0e7XNcXUhUwhxxP2dx/tuquTABQEQBkDknDzqnueMhitIHszyYX56LO
	iVa0bK5zIv1JaarRw36d9DcVQtf+7lSGuVsSVpjm/JmWLwAbTlxUJIn+EQsiWEfIjuqfe3o59+OQL
	wCWoCwDYjRVZUQFNJo3YnO9adQPYMozl5WU+jXAuSl8Z9TCl7pbgddica9rdxDJ2q5iaL1dVe7EBM
	AdpEpZJUPcffQYfTmTZn4wN3GQ6mEaTPVfQEm2w7C3v6Sco+ozQNjNjcohJr8idoR2pWLl8Z9LiTr
	mMQmiQnmr+7fzHtcR5ug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7gZg-0002zb-Aw; Fri, 28 Feb 2020 14:25:08 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7gZa-0002L1-EI
 for linux-riscv@lists.infradead.org; Fri, 28 Feb 2020 14:25:04 +0000
Received: by mail-qk1-x744.google.com with SMTP id m9so3081637qke.4
 for <linux-riscv@lists.infradead.org>; Fri, 28 Feb 2020 06:25:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=xm0bX30wRiWs3NOT1/N8ewNa+TY2rHUs/RpsQvOvuGk=;
 b=YvedHgItGn+wVIRODuBPkzBnGZMzSDF2R0QwlHx4CNi+Lj2Y06tC5nvalNwy72WLRR
 goPdDVMHD83/emzPYGsOKoMrCGeSva55emZd5ylddloOP5cVG/0Ko3iXOWsTSqYP10GC
 H4ay9LFkbd5BgzEWwftsGToxeteGZwZBJYhoBrtAms+Di0UC7mkgBbrjw8i0+zPCTdJ3
 pOfb3xbp8dRbZCM7D4RBKkgLIml+9icsq5ICV5kk5VfZqaF0Q4fkwG5ak9b0KIiVQq3Y
 1Di44gkxgbVKEsi6C0JIT9ztlh1D0bS2A96hrA2C0+VH+kLqU8s/trRZCptJNxV/zL6B
 QBEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=xm0bX30wRiWs3NOT1/N8ewNa+TY2rHUs/RpsQvOvuGk=;
 b=nFOu2/TPi+QTfxFCjJg421+vKXbwrsGjbyNQHwetPyEbcTM8njZtC4MaMHZEI/95iy
 OMaR6UkTdWgv1hCEelYrtu/ZvdGPizuyyFpdVYpcgttH23mu/WLtw2W/4f8s4HiHjQmY
 69C5jficA4gfjEp+jjPVYigZKK4JnqvAysh7747fqUN7rMCDRbNOB25FIihy1VXFz8Dv
 39BC71AbGQRF0pi7PHbKrRk02FcSPzK2CaF1tkU+eihRJIW9f9DsltY6oinYT4Tc0XTI
 XyaiqkX8UIJIv1rfoRc9doCEUv9eNVJ+Kb35L2RMv1ZTN+zdBtSJDmRy0KuJcjse0BQ+
 ni9g==
X-Gm-Message-State: APjAAAWiaiXeSeIxeVgRhXSHSUJF/8O5ThXR8aq1zrZrLPyYvUWP7WLw
 lAo57kiYKfRY/x2qf0VSsKILBwhJty/YikaGdag=
X-Google-Smtp-Source: APXvYqxKjEYaCwxKJ+J3Otf+GUgn0gfx7mI4u7SRA0O4ZxEmL9uxCRSXrT5A5bNyUxh5pOD2QAR44l+5xc9UGWzKLj8=
X-Received: by 2002:a05:620a:1210:: with SMTP id
 u16mr3345023qkj.493.1582899900001; 
 Fri, 28 Feb 2020 06:25:00 -0800 (PST)
MIME-Version: 1.0
References: <20200220041608.30289-1-lukenels@cs.washington.edu>
In-Reply-To: <20200220041608.30289-1-lukenels@cs.washington.edu>
From: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@gmail.com>
Date: Fri, 28 Feb 2020 15:24:48 +0100
Message-ID: <CAJ+HfNiOoLWpQAPhKL6cUVTZ0vTwuSabZzypzAmbRThD3ChGzA@mail.gmail.com>
Subject: Re: [PATCH v3 bpf-next] RV32G eBPF JIT
To: Luke Nelson <lukenels@cs.washington.edu>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_062502_520974_72809E12 
X-CRM114-Status: GOOD (  28.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:744 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [bjorn.topel[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Daniel Borkmann <daniel@iogearbox.net>, Jiong Wang <jiong.wang@netronome.com>,
 Netdev <netdev@vger.kernel.org>, Alexei Starovoitov <ast@kernel.org>,
 linux-riscv@lists.infradead.org, LKML <linux-kernel@vger.kernel.org>,
 Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 Yonghong Song <yhs@fb.com>, bpf <bpf@vger.kernel.org>,
 Andrii Nakryiko <andriin@fb.com>, Martin KaFai Lau <kafai@fb.com>,
 Xi Wang <xi.wang@gmail.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, 20 Feb 2020 at 05:20, Luke Nelson <lukenels@cs.washington.edu> wrot=
e:
>
[...]
> This is an eBPF JIT for RV32G, adapted from the JIT for RV64G and
> the 32-bit ARM JIT.
>

Luke/Xi, apologies for the slow reponse. (All my RV work is done on
non-payed time, so that's that. :-)) Very nice that you're still
working on it!

> There are two main changes required for this to work compared to
> the RV64 JIT.
>
> First, eBPF registers are 64-bit, while RV32G registers are 32-bit.
> BPF registers either map directly to 2 RISC-V registers, or reside
> in stack scratch space and are saved and restored when used.
>
> Second, many 64-bit ALU operations do not trivially map to 32-bit
> operations. Operations that move bits between high and low words,
> such as ADD, LSH, MUL, and others must emulate the 64-bit behavior
> in terms of 32-bit instructions.
>
> Supported features:
>
> This JIT supports the same features and instructions as RV64, with the
> following exceptions:
>
> - ALU64 DIV/MOD: Requires loops to implement on 32-bit hardware.
>

Even though it requires loops, JIT support would be nice. OTOH, arm
doesn't support that either...

> - BPF_XADD | BPF_DW: Requires either an 8-byte atomic instruction
>   in the target (which doesn't exist in RV32), or acqusition of
>   locks in generated code.
>
> These features are also unsupported on other BPF JITs for 32-bit
> architectures.
>

Any ideas how this could be addressed for RV32G?

> Testing:
>
> - lib/test_bpf.c
> test_bpf: Summary: 378 PASSED, 0 FAILED, [349/366 JIT'ed]
> test_bpf: test_skb_segment: Summary: 2 PASSED, 0 FAILED
>
> - tools/testing/selftests/bpf/test_verifier.c
> Summary: 1415 PASSED, 122 SKIPPED, 43 FAILED
>
> This is the same set of tests that pass using the BPF interpreter with
> the JIT disabled.
>
> Running the BPF kernel tests / selftests on riscv32 is non-trivial,
> to help others reproduce the test results I made a guide here:
> https://github.com/lukenels/meta-linux-utils/tree/master/rv32-linux
>
> Verification and synthesis:
>
> We developed this JIT using our verification tool that we have used
> in the past to verify patches to the RV64 JIT.  We also used the
> tool to superoptimize the resulting code through program synthesis.
>
> You can find the tool and a guide to the approach and results here:
> https://github.com/uw-unsat/bpf-jit-verif
>

Nice!

> Changelog:
>
> v2 -> v3:
>   * Added support for far jumps / branches similar to RV64 JIT.
>   * Added support for tail calls.
>   * Cleaned up code with more optimizations and comments.
>   * Removed special zero-extension instruction from BPF_ALU64
>     case, pointed out by Jiong Wang.
>
> v1 -> v2:
>   * Added support for far conditional branches.
>   * Added the zero-extension optimization pointed out by Jiong Wang.
>   * Added more optimizations for operations with an immediate operand.
>
> Cc: Jiong Wang <jiong.wang@netronome.com>

Jiong is no longer at netronome.

> Co-developed-by: Xi Wang <xi.wang@gmail.com>
> Signed-off-by: Xi Wang <xi.wang@gmail.com>
> Signed-off-by: Luke Nelson <lukenels@cs.washington.edu>

In general I agree with Song; It would be good if the 64/32 bit
variants would share more code. RISC-V 64/32 *are* very similar, and
we should be able to benefit from that codewise.

Pull out all functions are that common -- most of the emit_*, the
parts of the registers, the branch relaxation, and context
structs. Hopefully, the acutal RV32/64 specfic parts will be pretty
small.

Finally; There are some checkpatch issues: run 'checkpatch.pl --strict'.

[...]
> +
> +static s8 hi(const s8 *r)

Everywhere else "const s8 r[]" is used, except in hi()/lo().

> +{
> +    return r[0];
> +}
> +
> +static s8 lo(const s8 *r)

Likewise.

> +{
> +    return r[1];
> +}
> +
> +struct rv_jit_context {
> +    struct bpf_prog *prog;
> +    u32 *insns; /* RV insns */
> +    int ninsns;
> +    int epilogue_offset;
> +    int *offset; /* BPF to RV */
> +    unsigned long flags;
> +    int stack_size;
> +};

Can be shared!

> +
> +struct rv_jit_data {
> +    struct bpf_binary_header *header;
> +    u8 *image;
> +    struct rv_jit_context ctx;
> +};

...and this...

> +
> +static void emit(const u32 insn, struct rv_jit_context *ctx)

...and most of the emit/encoding code!

[...]
> +    switch (code) {
> +    case BPF_ALU64 | BPF_MOV | BPF_X:
> +
> +    case BPF_ALU64 | BPF_ADD | BPF_X:
> +    case BPF_ALU64 | BPF_ADD | BPF_K:
> +
> +    case BPF_ALU64 | BPF_SUB | BPF_X:
> +    case BPF_ALU64 | BPF_SUB | BPF_K:
> +
> +    case BPF_ALU64 | BPF_AND | BPF_X:
> +    case BPF_ALU64 | BPF_OR | BPF_X:
> +    case BPF_ALU64 | BPF_XOR | BPF_X:
> +
> +    case BPF_ALU64 | BPF_MUL | BPF_X:
> +    case BPF_ALU64 | BPF_MUL | BPF_K:
> +
> +    case BPF_ALU64 | BPF_LSH | BPF_X:
> +    case BPF_ALU64 | BPF_RSH | BPF_X:
> +    case BPF_ALU64 | BPF_ARSH | BPF_X:
> +        if (BPF_SRC(code) =3D=3D BPF_K) {
> +            emit_imm32(tmp2, imm, ctx);
> +            src =3D tmp2;
> +        }
> +        emit_rv32_alu_r64(dst, src, ctx, BPF_OP(code));
> +        break;
> +
> +    case BPF_ALU64 | BPF_NEG:
> +        emit_rv32_alu_r64(dst, tmp2, ctx, BPF_OP(code));
> +        break;

This is neat; I should do it like this for RV64.

[...]
> +    case BPF_ALU | BPF_END | BPF_FROM_BE:
> +    {
> +        const s8 *rd =3D rv32_bpf_get_reg64(dst, tmp1, ctx);
> +
> +        switch (imm) {
> +        case 16:
> +            emit_rv32_rev16(lo(rd), ctx);
> +            if (!ctx->prog->aux->verifier_zext)
> +                emit(rv_addi(hi(rd), RV_REG_ZERO, 0), ctx);
> +            break;
> +        case 32:
> +            emit_rv32_rev32(lo(rd), ctx);
> +            if (!ctx->prog->aux->verifier_zext)
> +                emit(rv_addi(hi(rd), RV_REG_ZERO, 0), ctx);
> +            break;
> +        case 64:
> +            /* Swap upper and lower halves. */
> +            emit(rv_addi(RV_REG_T0, lo(rd), 0), ctx);
> +            emit(rv_addi(lo(rd), hi(rd), 0), ctx);
> +            emit(rv_addi(hi(rd), RV_REG_T0, 0), ctx);
> +
> +            /* Swap each half. */
> +            emit_rv32_rev32(lo(rd), ctx);
> +            emit_rv32_rev32(hi(rd), ctx);

Waiting for that B-ext to be ratified? ;-)

[...]
> +    case BPF_JMP32 | BPF_JSET | BPF_K:
> +        rvoff =3D rv_offset(i, off, ctx);
> +        if (BPF_SRC(code) =3D=3D BPF_K) {
> +            s =3D ctx->ninsns;
> +            emit_imm32(tmp2, imm, ctx);
> +            src =3D tmp2;
> +            e =3D ctx->ninsns;
> +            rvoff -=3D (e - s) << 2;
> +        }
> +
> +        if (is64) {
> +            emit_rv32_branch_r64(dst, src, rvoff, ctx, BPF_OP(code));
> +        } else {
> +            emit_rv32_branch_r32(dst, src, rvoff, ctx, BPF_OP(code));
> +        }

No need for {} here.

[...]
> +    case BPF_STX | BPF_XADD | BPF_DW:
> +        goto notsupported;

The goto is not needed here.

> +
> +notsupported:
> +        pr_info_once("*** NOT SUPPORTED: opcode %02x ***\n", code);

A bit inconsistent, compared to the pr_err messages. The errors are
"bpf-jit" prefixed.

> +        return -EFAULT;
> +
> +    default:
> +        pr_err("bpf-jit: unknown opcode %02x\n", code);
> +        return -EINVAL;
> +    }
> +
> +    return 0;
> +}
> +
> +static void build_prologue(struct rv_jit_context *ctx)
> +{
> +    int stack_adjust =3D 4 * 9, store_offset, bpf_stack_adjust;

A comment why the magic number 4 * 9 is there would help future
readers.

> +
> +    bpf_stack_adjust =3D round_up(ctx->prog->aux->stack_depth, 16);
> +    stack_adjust +=3D bpf_stack_adjust;
> +
> +    store_offset =3D stack_adjust - 4;
> +
> +    stack_adjust +=3D 4 * BPF_JIT_SCRATCH_REGS;
> +
> +    /* First instruction sets tail-call-counter,
> +     * skipped by tail call.
> +     */
> +    emit(rv_addi(RV_REG_TCC, RV_REG_ZERO, MAX_TAIL_CALL_CNT), ctx);
> +
> +    emit(rv_addi(RV_REG_SP, RV_REG_SP, -stack_adjust), ctx);
> +
> +    /* Save callee-save registers. */
> +    emit(rv_sw(RV_REG_SP, store_offset - 0, RV_REG_RA), ctx);
> +    emit(rv_sw(RV_REG_SP, store_offset - 4, RV_REG_FP), ctx);
> +    emit(rv_sw(RV_REG_SP, store_offset - 8, RV_REG_S1), ctx);
> +    emit(rv_sw(RV_REG_SP, store_offset - 12, RV_REG_S2), ctx);
> +    emit(rv_sw(RV_REG_SP, store_offset - 16, RV_REG_S3), ctx);
> +    emit(rv_sw(RV_REG_SP, store_offset - 20, RV_REG_S4), ctx);
> +    emit(rv_sw(RV_REG_SP, store_offset - 24, RV_REG_S5), ctx);
> +    emit(rv_sw(RV_REG_SP, store_offset - 28, RV_REG_S6), ctx);
> +    emit(rv_sw(RV_REG_SP, store_offset - 32, RV_REG_S7), ctx);
> +
> +    /* Set fp: used as the base address for stacked BPF registers. */
> +    emit(rv_addi(RV_REG_FP, RV_REG_SP, stack_adjust), ctx);
> +
> +    /* Set up BPF stack pointer. */
> +    emit(rv_addi(lo(bpf2rv32[BPF_REG_FP]), RV_REG_SP, bpf_stack_adjust),=
 ctx);
> +    emit(rv_addi(hi(bpf2rv32[BPF_REG_FP]), RV_REG_ZERO, 0), ctx);
> +
> +    /* Set up context pointer. */
> +    emit(rv_addi(lo(bpf2rv32[BPF_REG_1]), RV_REG_A0, 0), ctx);
> +    emit(rv_addi(hi(bpf2rv32[BPF_REG_1]), RV_REG_ZERO, 0), ctx);
> +
> +    ctx->stack_size =3D stack_adjust;
> +}
> +
> +static int build_body(struct rv_jit_context *ctx, bool extra_pass, int *=
offset)
> +{
> +    const struct bpf_prog *prog =3D ctx->prog;
> +    int i;
> +
> +    for (i =3D 0; i < prog->len; i++) {
> +        const struct bpf_insn *insn =3D &prog->insnsi[i];
> +        int ret;
> +
> +        ret =3D emit_insn(insn, ctx, extra_pass);
> +        if (ret > 0)
> +            /* BPF_LD | BPF_IMM | BPF_DW:
> +             * Skip next instruction.
> +             */
> +            i++;
> +        if (offset)
> +            offset[i] =3D ctx->ninsns;
> +        if (ret < 0)
> +            return ret;
> +    }
> +    return 0;
> +}

Can be shared! ...and I think this version is better than the RV64
one! :-)

> +
> +static void bpf_fill_ill_insns(void *area, unsigned int size)
> +{
> +    memset(area, 0, size);
> +}
> +
> +static void bpf_flush_icache(void *start, void *end)
> +{
> +    flush_icache_range((unsigned long)start, (unsigned long)end);
> +}
> +
> +bool bpf_jit_needs_zext(void)
> +{
> +    return true;
> +}
> +
> +struct bpf_prog *bpf_int_jit_compile(struct bpf_prog *prog)

The functions above can be shared with RV64 as well, right?

[...]

Thanks for the hard work! I'll take it for a spin, with help from the
guide above, this weekend!


Cheers,
Bj=C3=B6rn

