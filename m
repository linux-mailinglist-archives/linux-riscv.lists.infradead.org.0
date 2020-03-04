Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1E4B178A73
	for <lists+linux-riscv@lfdr.de>; Wed,  4 Mar 2020 06:59:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1lsTGiKn6oHoT5mTkEzaNQeGDmYRHT45EUorz4TmpOc=; b=OF2COBuW+vt1E6
	AsqE6YuEjnlfC/Uovqe0gT1ivSsPi46JWno2bZkhDbas1EI+SfALntE7F7e4JB7NI+ZUxSnSWbuRZ
	AkmnzxmuKb5tTvUICv0DGxYCPIpQhYNNxKJzp/ssu4UVaGLj3sanXb6DOzD5T4Ot5Cw5r4eq1m6tL
	m1WV2cXpQ481XhyZK2S7yrCdghloq7n5lQLGQ89yTQdeujAeZ/7/QZbT4bMiqDCu+hbC4nw9apdp7
	oaCzPweljS/rKqsH68wacmJvbXzqLiCKTfgmoFt28BgTcrJTg/MZ8N5EUHtgR6LK7HOtqHYOnSyi7
	Yk2j5PnWGCVL3o8NJ1PA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9N4C-0001FI-EL; Wed, 04 Mar 2020 05:59:36 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9N48-0001EM-FX
 for linux-riscv@lists.infradead.org; Wed, 04 Mar 2020 05:59:33 +0000
Received: by mail-qk1-x741.google.com with SMTP id u124so476405qkh.13
 for <linux-riscv@lists.infradead.org>; Tue, 03 Mar 2020 21:59:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=1lsTGiKn6oHoT5mTkEzaNQeGDmYRHT45EUorz4TmpOc=;
 b=P+GFoCJAoKq3kAujQuBLX4vLpvGiToWarwyt3I7yMT0ETN7SZRei0g4q4AEM8fpOCK
 vof7NPoTFevjAaCDDf/SbV27a2geaTAmtKyojHhp4lYyDScNLf91yCnvp+3ImOQHEqYX
 RiIswSOTBHbTfmt+F89PSOXpZ+FGMDvCdwYMfWXCc25xkge9SqweZstLIYKfXEvfDgRn
 Wu/ouC4ASS4qkL3jX6YMT5JE5AEfVUW8BDNdjIWBAaefsUp6iSJfYrhQoJV1A1XfVw+a
 s2vctFbM/kZly5xFmfvV2sdYjgHZ2PBrxaCfSplrsUBGAJ0h7LhSWPAUxgp74GTevSTl
 u6KQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=1lsTGiKn6oHoT5mTkEzaNQeGDmYRHT45EUorz4TmpOc=;
 b=WVvEMv/7OwAZPP9nEcvT7nX4vF6rH1f/nolmbK6K1xIUk8OoPAOmxJbBngnPPx2I8W
 9l30muUYcsXIC2uftLunrzQaU3wpQH1m4BpInJfu/4voG7AYkmeoj1GJ04A1XkOhwq3u
 HFA41xh/Ya+PajbRJ2J1Bd+P1yEZXIIPZUJJGSXBH1rzg12MOn0N/VFHgKHOr3dJKXQ9
 7nfXKpVu/I8s5Ysg4Eo3ZMRwRGxUEBED4VIGTbR+n2zO4nsZIlzXm38akV1KBGCYpnJq
 aFx5MWcR3LcLsU7Zj9Vi/7MUFFoUdgl5ApMcR3KqrXW5q8iTTO4yuE73h9oCYbtPeowW
 OOpw==
X-Gm-Message-State: ANhLgQ0VSXQw5evAq+R0MHjbpKUcC6s/1vX5r7TcNm4aw7sAvzLSNp5W
 DTIu0a335XdAfkFgOBAMA3iIftWAs2hcWt61LKI=
X-Google-Smtp-Source: ADFU+vvzFwXZwkUfPFvyenDYfCpLXs8aBxMU7CBoL9eL5+OpXsJ8GkHHPAIqTbsH0wSim2TF+aHnCH5ySY3UVRmJk2M=
X-Received: by 2002:a05:620a:a0d:: with SMTP id
 i13mr1467376qka.333.1583301568862; 
 Tue, 03 Mar 2020 21:59:28 -0800 (PST)
MIME-Version: 1.0
References: <20200303005035.13814-1-luke.r.nels@gmail.com>
 <20200303005035.13814-3-luke.r.nels@gmail.com>
 <CAJ+HfNjgwVnxnyCTk5j+JCpxz+zmeEBYbj=_SueR750aAuoz=A@mail.gmail.com>
 <CADasFoBODSbgHHXU+iA-32=oKNs6n0Ff_UDU3063uiyGjx1xXg@mail.gmail.com>
In-Reply-To: <CADasFoBODSbgHHXU+iA-32=oKNs6n0Ff_UDU3063uiyGjx1xXg@mail.gmail.com>
From: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@gmail.com>
Date: Wed, 4 Mar 2020 06:59:17 +0100
Message-ID: <CAJ+HfNhOp_Rbcqer0K=mZ8h+uswYSv4hSa3wCTdjjxH26HUTCw@mail.gmail.com>
Subject: Re: [PATCH bpf-next v4 2/4] riscv, bpf: add RV32G eBPF JIT
To: Luke Nelson <lukenels@cs.washington.edu>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_215932_547989_B0494AF0 
X-CRM114-Status: GOOD (  25.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [bjorn.topel[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On Wed, 4 Mar 2020 at 03:32, Luke Nelson <lukenels@cs.washington.edu> wrote=
:
>
[...]
>
> > > +    case BPF_LSH:
> > > +        if (imm >=3D 32) {
> > > +            emit(rv_slli(hi(rd), lo(rd), imm - 32), ctx);
> > > +            emit(rv_addi(lo(rd), RV_REG_ZERO, 0), ctx);
> > > +        } else if (imm =3D=3D 0) {
> > > +            /* nop */
> >
> > Can we get rid of this, and just do if/else if?
>
> imm =3D=3D 0 has been a tricky case for 32-bit JITs; see 6fa632e719ee
> ("bpf, x32: Fix bug with ALU64 {LSH, RSH, ARSH} BPF_K shift by 0").
> We wanted to make the imm =3D=3D 0 case explicit and help future readers
> see that this case is handled correctly here.
>
> We could do the following if we really wanted to get rid of the
> check:
>
> if (imm >=3D 32) {
> ...
> } else if (imm !=3D 0) {
> ...
> }
> /* Do nothing for imm =3D=3D 0. */
>
> Though it's unclear if this is easier to read.
>

Thanks for clearing that up. *I* prefer the latter, but that's really
up to you! Keep the current one, if you prefer that! :-)

> > > +    case BPF_ARSH:
> > > +        if (is_12b_int(imm)) {
> > > +            emit(rv_srai(lo(rd), lo(rd), imm), ctx);
> > > +        } else {
> > > +            emit_imm(RV_REG_T0, imm, ctx);
> > > +            emit(rv_sra(lo(rd), lo(rd), RV_REG_T0), ctx);
> > > +        }
> > > +        break;
> >
> > Again nit; I like "early exit" code if possible. Instead of:
> >
> > if (bleh) {
> >    foo();
> > } else {
> >    bar();
> > }
> >
> > do:
> >
> > if (bleh) {
> >    foo()
> >    return/break;
> > }
> > bar();
> >
> > I find the latter easier to read -- but really a nit, and a matter of
> > style. There are number of places where that could be applied in the
> > file.
>
> I like "early exit" code, too, and agree that it's easier to read
> in general, especially when handling error conditions.
>
> But here we wanted to make it explicit that both branches are
> emitting equivalent instruction sequences (under different paths).
> Structured control flow seems a better fit for this particular
> context.
>

Ok!

> > At this point of the series, let's introduce the shared code .c-file
> > containing implementation for bpf_int_jit_compile() (with build_body
> > part of that)and bpf_jit_needs_zext(). That will make it easier to
> > catch bugs in both JITs and to avoid code duplication! Also, when
> > adding the stronger invariant suggested by Palmer [1], we only need to
> > do it in one place.
> >
> > The pull out refactoring can be a separate commit.
>
> I think the idea of deduplicating bpf_int_jit_compile is good and
> will lead to more maintainable JITs. How does the following proposal
> for v5 sound?
>
> In patch 1 of this series:
>
> - Factor structs and common helpers to bpf_jit.h (just like v4).
>
> - Factor out bpf_int_jit_compile(), bpf_jit_needs_zext(), and
> build_body() to a new file bpf_jit_core.c and tweak the code as in v4.
>
> - Rename emit_insn() and build_{prologue,epilogue}() to bpf_jit_emit_insn=
()
> and bpf_jit_build_{prologue,epilogue}, since these functions are
> now extern rather than static.
>
> - Rename bpf_jit_comp.c to bpf_jit_comp64.c to be more explicit
> about its contents (as the next patch will add bpf_jit_comp32.c).
>
> Then patch 2 can reuse the new header and won't need to define its
> own bpf_int_jit_compile() etc.
>

I like that, but keep the first patch as a refactoring patch only, and
then in a *new* patch 2 you add the rv32 specific code (sltu and
pseudo instructions + the xlen preprocessor check + copyright-things
;-)).  Patch 3 will be the old patch 2. Wdyt?

Thanks for working on this!
Bj=C3=B6rn

> Thanks!
>
> Luke

