Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC26913211F
	for <lists+linux-riscv@lfdr.de>; Tue,  7 Jan 2020 09:14:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=akW4UWcOdP6Grp2KonZlQcBnfvoYSwriz8j1t5Jkqsc=; b=uTnNYtxNi3vWt9
	Nw1iKtlf2PCUm1oDm+Jwq2Ju6pspiio0qasOu7W5PaAJQuD4jV8XjS13bQ0Q1yxeX1YCC+9g4utfj
	g4VN7iNHnbc5+NHxC0HQ5AP7vWEv32jnjPv2zFjW950NPuSsMTZHpfNUHdncI9QizODCGII+kg7xq
	pElNUiNWmcCfMrpvjRbfEAthccyaNJC+IX4r0cefoUu8a1jjaeq/aCthzNAevGHRYrjPztOnU3viS
	PoWgliHJPkn0x2ExAARQn0xo6AiaCuyaiEfn7sR5sn5oOt2pg3D7kgmfqGiFG8zJqH70omou5tphJ
	nJkF59Vgk6ztH2G1wgwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iok0E-0004NR-2z; Tue, 07 Jan 2020 08:14:14 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iok08-0004Mk-IP
 for linux-riscv@lists.infradead.org; Tue, 07 Jan 2020 08:14:11 +0000
Received: by mail-qk1-x741.google.com with SMTP id x129so41907816qke.8
 for <linux-riscv@lists.infradead.org>; Tue, 07 Jan 2020 00:14:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=akW4UWcOdP6Grp2KonZlQcBnfvoYSwriz8j1t5Jkqsc=;
 b=bwwjdTWn07UYSehfmFp9lXNZC24KgC9QAy12z2S2u1lZBdj13/bm4d6XXe3pYuUf/t
 CEj1OTDObiRuzXXlhrVP26ofMrwaJJsjbXfpkuEj2JXgDI1h69BPWLTP1QoM7YoUVE0P
 VxwgCqzfjFhrUqd++O79MhTVv1KM0jcQtMO/D4Azgpz4n0MHdqZn5qY8nUCJpdQZyfMv
 GF1/udulvUP+3WPiKoP+h4XX71z1aBrcBh0UKCsYhscb/Di3O4fCHXRGyOp6iDbamCqv
 JJ+78i+6xp5i8/1SvT5mnlCJ5MeNM45ttLClkLYXGdV147/NKVOV0JFujb4C+ehp3lPi
 Jubw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=akW4UWcOdP6Grp2KonZlQcBnfvoYSwriz8j1t5Jkqsc=;
 b=NKkEj6Eje5HqGc9JKhQ5MKxAWMUY+sZkuMVRidJBi9MHBLgRyUCjIoZ6PqjniCBaIM
 VIQ6D9cLU0hlFn8f8t4ueG0gHcFoVPxsEmHM5QxJUltol+2YT2ujbj0tVy8ZSdKx0EwA
 KXVHcBeVKB9CxQT5Pw87fbcFVu8l4yegvgJ4hFCSulwg14ayUSWTZMXlI15P6pxlQGGm
 UlzxGwJgpF2NvgO2KCbsz7C0Ugc8wVYDnUKNhDmv1TRH9vh0a6gcdf0dodMYhUoAMq4x
 tZAK1NzyzCD6ZMtU4r0u1c1dUFslU/f6mOfzDinSeiktW+Vie8MGY5W6EfF/pZ0Lr61k
 LVzw==
X-Gm-Message-State: APjAAAX666ufbly8/lOJKF0dXUh/i7nSJAO2DfC//Kq/SwMyztNbxxgZ
 N40YLNLqrLqYmh4NNkiNDwPtJXkhq1yrhqU0dhg=
X-Google-Smtp-Source: APXvYqzWFUk7QyJ3Tpw6LqkcUf8FNEwTpCYweqa0ESJaK3f6n2P2SGGbBoxMUIMqV1Q2T354z2gOCnCjI/oeb9i8fvo=
X-Received: by 2002:a05:620a:14a4:: with SMTP id
 x4mr86046437qkj.493.1578384847200; 
 Tue, 07 Jan 2020 00:14:07 -0800 (PST)
MIME-Version: 1.0
References: <20191216091343.23260-1-bjorn.topel@gmail.com>
 <20191216091343.23260-3-bjorn.topel@gmail.com>
 <mhng-6be38b2a-78df-4016-aaea-f35aa0acd7e0@palmerdabbelt-glaptop>
In-Reply-To: <mhng-6be38b2a-78df-4016-aaea-f35aa0acd7e0@palmerdabbelt-glaptop>
From: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@gmail.com>
Date: Tue, 7 Jan 2020 09:13:56 +0100
Message-ID: <CAJ+HfNjoO2ihHMh2NHMQfxG8X1zLdzEq6Ywr=b2qD0tNwXreFA@mail.gmail.com>
Subject: Re: [PATCH bpf-next v2 2/9] riscv, bpf: add support for far branching
To: Palmer Dabbelt <palmerdabbelt@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_001408_649061_82ED422D 
X-CRM114-Status: GOOD (  20.11  )
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
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Daniel Borkmann <daniel@iogearbox.net>, Netdev <netdev@vger.kernel.org>,
 Alexei Starovoitov <ast@kernel.org>, Luke Nelson <lukenels@cs.washington.edu>,
 linux-riscv@lists.infradead.org, bpf <bpf@vger.kernel.org>,
 Xi Wang <xi.wang@gmail.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Back from the holidays; Sorry about the delayed reply.

On Mon, 23 Dec 2019 at 19:03, Palmer Dabbelt <palmerdabbelt@google.com> wro=
te:
>
> On Mon, 16 Dec 2019 01:13:36 PST (-0800), Bjorn Topel wrote:
> > This commit adds branch relaxation to the BPF JIT, and with that
[...]
> > @@ -1557,6 +1569,7 @@ struct bpf_prog *bpf_int_jit_compile(struct bpf_p=
rog *prog)
> >  {
> >       bool tmp_blinded =3D false, extra_pass =3D false;
> >       struct bpf_prog *tmp, *orig_prog =3D prog;
> > +     int pass =3D 0, prev_ninsns =3D 0, i;
> >       struct rv_jit_data *jit_data;
> >       struct rv_jit_context *ctx;
> >       unsigned int image_size;
> > @@ -1596,15 +1609,25 @@ struct bpf_prog *bpf_int_jit_compile(struct bpf=
_prog *prog)
> >               prog =3D orig_prog;
> >               goto out_offset;
> >       }
> > +     for (i =3D 0; i < prog->len; i++) {
> > +             prev_ninsns +=3D 32;
> > +             ctx->offset[i] =3D prev_ninsns;
> > +     }
>
> It feels like the first-order implementation is the same as binutils here=
: the
> first round is worst cased, after which things can be more exact.  We're =
only
> doing one pass in binutils because most of the relaxation happens in the
> linker, but this approach seems reasonable to me.  I'd be interested in s=
eeing
> some benchmarks, as it may be worth relaxing these in the binutils linker=
 as
> well -- I can certainly come up with contrived test cases that aren't rel=
axed,
> but I'm not sure how common this is.
>

Ah, interesting! Let me try to pull out some branch relaxation
statistics/benchmarks for the BPF selftests.

> My only worry is that that invariant should be more explicit.  Specifical=
ly,
> I'm thinking that every time offset is updated there should be some sort =
of
> assertion that the offset is shrinking.  This is enforced structurally in=
 the
> binutils code because we only generate code once and then move it around,=
 but
> since you're generating code every time it'd be easy for a bug to sneak i=
n as
> the JIT gets more complicated.
>

Hmm, yes. Maybe use a checksum for the program in addition to the
length invariant, and converge condition would then be prev_len =3D=3D len
&& prev_crc =3D=3D crc?

> Since most of the branches should be forward, you'll probably end up with=
 way
> fewer iterations if you do the optimization passes backwards.
>

Good idea!

> > -     /* First pass generates the ctx->offset, but does not emit an ima=
ge. */
> > -     if (build_body(ctx, extra_pass)) {
> > -             prog =3D orig_prog;
> > -             goto out_offset;
> > +     for (i =3D 0; i < 16; i++) {
> > +             pass++;
> > +             ctx->ninsns =3D 0;
> > +             if (build_body(ctx, extra_pass)) {
> > +                     prog =3D orig_prog;
> > +                     goto out_offset;
>
> Isn't this returning a broken program if build_body() errors out the firs=
t time
> through?
>

Hmm, care to elaborate? I don't see how?

> > +             }
> > +             build_prologue(ctx);
> > +             ctx->epilogue_offset =3D ctx->ninsns;
> > +             build_epilogue(ctx);
> > +             if (ctx->ninsns =3D=3D prev_ninsns)
> > +                     break;
> > +             prev_ninsns =3D ctx->ninsns;
>
> IDK how important the performance of the JIT is, but you could probably g=
et
> away with skipping an iteration by keeping track of some simple metric th=
at
> determines if it would be possible to
>

...to? Given that the programs are getting larger, performance of the
JIT is important. So, any means the number of passes can be reduced is
a good thing!


Thanks for the review/suggestions!
Bj=C3=B6rn

