Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30A5A178857
	for <lists+linux-riscv@lfdr.de>; Wed,  4 Mar 2020 03:32:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n6mkcIQ2CwC1xTtJxH74NN6vQdrLEAX1li3E8fEudI8=; b=EFggucdUruh6jn
	I7IXingbUO0QOIBkHUxz0Keiase5PenpbtAGE5dKGwBJ7ldTgbujAK6+9jiLRAJn8xg4XArUsWMyc
	bwk0IfSHgPAHEq89ju1VFVZEs2UXSNQ0oUQzgb+sK8Vxj8TqHLwk5DHGLk8IFTpykGdRsDM7QaCYz
	iCO8qqFQsgKMqnw87CrY2b0X64AnfFwRFS8fAyjvu/I+yrTWuMro5Q4eRpdF3LjMQLVqBzEJfzYNm
	6z5yRJeNS1MLFPmwlDOYV/GyBq584vacq25VMOtxbXUS0vY6hEJjsMwCnFT10bm7sVGk6jamhGx5o
	M5rquA62ZaZ6W1c7kczQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9Jpw-0001PW-JG; Wed, 04 Mar 2020 02:32:40 +0000
Received: from mail-il1-x142.google.com ([2607:f8b0:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9Jpr-0001Ov-LU
 for linux-riscv@lists.infradead.org; Wed, 04 Mar 2020 02:32:37 +0000
Received: by mail-il1-x142.google.com with SMTP id a6so516843ilc.4
 for <linux-riscv@lists.infradead.org>; Tue, 03 Mar 2020 18:32:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cs.washington.edu; s=goo201206;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=n6mkcIQ2CwC1xTtJxH74NN6vQdrLEAX1li3E8fEudI8=;
 b=M5O7QedO8LmdTilKXhgDjj6pJDYijzuilBu5xyes4ICn+hClPJbwMCqeC/K5g1bE2g
 egpjdAJsAJmqcxtp4gn85lwUEg+JAOGc94aItnA3aqKydSvbr6rdf4OOqrfi7+KA5TI3
 F0k1koSGJkFlWVrglQhyYi1JSodyDP31qeDsw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=n6mkcIQ2CwC1xTtJxH74NN6vQdrLEAX1li3E8fEudI8=;
 b=bUyc9M8A/cwAhb+MiwvGr3yaFR0XgE3fV01QxSIvDsrBYT9cdFpl1Eg5oQBXf7NMEQ
 8RGEq6v3ydlZLtXOY1z4WgctZxJ36guQ63s2yDDJyosQ2ZiPggWtsTqaOVQcqFba0aee
 UbD3sI75osflht4P9ApSq0CJ5DBGu6qQHvWSn42P5raMqhkWAbok3y3HHe8YZAc4oBxg
 /NYqDOkuUMNBrzi5EVckbaA62yM4JiefNzpp4SyzrONZUXJO4UWLPdDmFGWlobYzXRdB
 YEu+JmpOZhS9o/qGVlnPZEmRwl/WSD7IvQaukUlIVDkpazdaDMGK0L4B1xAGxcOz7PSu
 q3ww==
X-Gm-Message-State: ANhLgQ188anP3t1ApDFaUkwOmNlwz7QVldqhIUiRSAfoRFbv85XoZxGP
 bM54w9hnkB0yzbIxaE3WRlbZ62PQ37srbv8/u7R89A==
X-Google-Smtp-Source: ADFU+vtZz9bK0eR23Fqfg2Flo7dTRJq/q3oOn/yBVOdWo5FSor2dKOCN3ztfEmpM0Yd68erGscs4Sdi+qrx0Fsa208s=
X-Received: by 2002:a05:6e02:4c2:: with SMTP id
 f2mr687631ils.126.1583289154825; 
 Tue, 03 Mar 2020 18:32:34 -0800 (PST)
MIME-Version: 1.0
References: <20200303005035.13814-1-luke.r.nels@gmail.com>
 <20200303005035.13814-3-luke.r.nels@gmail.com>
 <CAJ+HfNjgwVnxnyCTk5j+JCpxz+zmeEBYbj=_SueR750aAuoz=A@mail.gmail.com>
In-Reply-To: <CAJ+HfNjgwVnxnyCTk5j+JCpxz+zmeEBYbj=_SueR750aAuoz=A@mail.gmail.com>
From: Luke Nelson <lukenels@cs.washington.edu>
Date: Tue, 3 Mar 2020 18:32:24 -0800
Message-ID: <CADasFoBODSbgHHXU+iA-32=oKNs6n0Ff_UDU3063uiyGjx1xXg@mail.gmail.com>
Subject: Re: [PATCH bpf-next v4 2/4] riscv, bpf: add RV32G eBPF JIT
To: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_183235_708124_9567AF45 
X-CRM114-Status: GOOD (  23.61  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Song Liu <songliubraving@fb.com>, linux-doc@vger.kernel.org,
 Yonghong Song <yhs@fb.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 Alexei Starovoitov <ast@kernel.org>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 linux-riscv@lists.infradead.org, Rob Herring <robh@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>, Jonathan Corbet <corbet@lwn.net>,
 Jakub Kicinski <kuba@kernel.org>, Andrii Nakryiko <andriin@fb.com>,
 Xi Wang <xi.wang@gmail.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Luke Nelson <luke.r.nels@gmail.com>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>, Martin KaFai Lau <kafai@fb.com>,
 Stephen Hemminger <stephen@networkplumber.org>,
 Palmer Dabbelt <palmer@dabbelt.com>, Netdev <netdev@vger.kernel.org>,
 bpf <bpf@vger.kernel.org>, "David S. Miller" <davem@davemloft.net>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi Bj=C3=B6rn,

Thanks again for the comments, responses below:

On Mon, Mar 2, 2020 at 11:48 PM Bj=C3=B6rn T=C3=B6pel <bjorn.topel@gmail.co=
m> wrote:
>
> Which are the tests that fail to JIT, and is that due to div/mod +
> xadd?

Yes, all of the cases that fail to JIT are because of unsupported
div/mod or xadd. I'll make that clear in next revision.

>
> > Co-developed-by: Xi Wang <xi.wang@gmail.com>
> > Signed-off-by: Xi Wang <xi.wang@gmail.com>
> > Signed-off-by: Luke Nelson <luke.r.nels@gmail.com>
> > ---
> >  arch/riscv/Kconfig              |    2 +-
> >  arch/riscv/net/Makefile         |    7 +-
> >  arch/riscv/net/bpf_jit_comp32.c | 1466 +++++++++++++++++++++++++++++++
> >  3 files changed, 1473 insertions(+), 2 deletions(-)
> >  create mode 100644 arch/riscv/net/bpf_jit_comp32.c
> [...]
> > +
> > +static const s8 *rv32_bpf_get_reg64(const s8 *reg, const s8 *tmp,
> > +                    struct rv_jit_context *ctx)
>
> Really a nit, but you're using rv32 as prefix, and also as part of
> many of the functions (e.g. emit_rv32). Everything is this file is
> just for RV32, so maybe remove that implicit information from the
> function name? Just a thought! :-)

I got so used to reading these I never noticed how redundant they
were :) I'll change the next revision to remove all of the "rv32"s
in function names.

> > +    case BPF_LSH:
> > +        if (imm >=3D 32) {
> > +            emit(rv_slli(hi(rd), lo(rd), imm - 32), ctx);
> > +            emit(rv_addi(lo(rd), RV_REG_ZERO, 0), ctx);
> > +        } else if (imm =3D=3D 0) {
> > +            /* nop */
>
> Can we get rid of this, and just do if/else if?

imm =3D=3D 0 has been a tricky case for 32-bit JITs; see 6fa632e719ee
("bpf, x32: Fix bug with ALU64 {LSH, RSH, ARSH} BPF_K shift by 0").
We wanted to make the imm =3D=3D 0 case explicit and help future readers
see that this case is handled correctly here.

We could do the following if we really wanted to get rid of the
check:

if (imm >=3D 32) {
...
} else if (imm !=3D 0) {
...
}
/* Do nothing for imm =3D=3D 0. */

Though it's unclear if this is easier to read.

> > +    case BPF_ARSH:
> > +        if (is_12b_int(imm)) {
> > +            emit(rv_srai(lo(rd), lo(rd), imm), ctx);
> > +        } else {
> > +            emit_imm(RV_REG_T0, imm, ctx);
> > +            emit(rv_sra(lo(rd), lo(rd), RV_REG_T0), ctx);
> > +        }
> > +        break;
>
> Again nit; I like "early exit" code if possible. Instead of:
>
> if (bleh) {
>    foo();
> } else {
>    bar();
> }
>
> do:
>
> if (bleh) {
>    foo()
>    return/break;
> }
> bar();
>
> I find the latter easier to read -- but really a nit, and a matter of
> style. There are number of places where that could be applied in the
> file.

I like "early exit" code, too, and agree that it's easier to read
in general, especially when handling error conditions.

But here we wanted to make it explicit that both branches are
emitting equivalent instruction sequences (under different paths).
Structured control flow seems a better fit for this particular
context.

> At this point of the series, let's introduce the shared code .c-file
> containing implementation for bpf_int_jit_compile() (with build_body
> part of that)and bpf_jit_needs_zext(). That will make it easier to
> catch bugs in both JITs and to avoid code duplication! Also, when
> adding the stronger invariant suggested by Palmer [1], we only need to
> do it in one place.
>
> The pull out refactoring can be a separate commit.

I think the idea of deduplicating bpf_int_jit_compile is good and
will lead to more maintainable JITs. How does the following proposal
for v5 sound?

In patch 1 of this series:

- Factor structs and common helpers to bpf_jit.h (just like v4).

- Factor out bpf_int_jit_compile(), bpf_jit_needs_zext(), and
build_body() to a new file bpf_jit_core.c and tweak the code as in v4.

- Rename emit_insn() and build_{prologue,epilogue}() to bpf_jit_emit_insn()
and bpf_jit_build_{prologue,epilogue}, since these functions are
now extern rather than static.

- Rename bpf_jit_comp.c to bpf_jit_comp64.c to be more explicit
about its contents (as the next patch will add bpf_jit_comp32.c).

Then patch 2 can reuse the new header and won't need to define its
own bpf_int_jit_compile() etc.

Thanks!

Luke

