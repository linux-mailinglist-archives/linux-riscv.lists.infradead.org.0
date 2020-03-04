Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB1F6178A52
	for <lists+linux-riscv@lfdr.de>; Wed,  4 Mar 2020 06:44:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xxd5vo5QurLpt9L4qMgvVJGSW6Osjywwb4CYHY+R/FQ=; b=X9pSTM96Xn3LYB
	OxLvTu72fm2z44qVfhfpuDDRPi5fwOftiKiqrFwRuB9gEnNbro/YgcXGhHxCT9xyBYAJARSBCHMgH
	5QgF3qegE7fyQxyGDry1tsCTc1Pck0gK5UVF1fcsK0ctmkr1RT/7cjzwS+lN0KSGq428OmH3TDsgt
	8P2vywvmZwLv1EcDWuURcYcR8zkSs4uRjGQ9L37MAaOO/wL2WPkjsgB/7DrVlT0Nwg3TaqBySosBD
	d5hNn1DxgqWosdpXNvPTzqGetLNGzStcarPDVoh2OqdJoYWbGMv1zIWVKYkJ0cbpTFVMEkT5M3ZIQ
	ndM/y6s+vuPk9p35s+wQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9Mpl-0003l9-GY; Wed, 04 Mar 2020 05:44:41 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9Mpg-0003kY-Vi
 for linux-riscv@lists.infradead.org; Wed, 04 Mar 2020 05:44:39 +0000
Received: by mail-qt1-x844.google.com with SMTP id x21so453321qto.13
 for <linux-riscv@lists.infradead.org>; Tue, 03 Mar 2020 21:44:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=xxd5vo5QurLpt9L4qMgvVJGSW6Osjywwb4CYHY+R/FQ=;
 b=BMACOv8P0xReQkbncNGFSPzZ3rQdGF2v1ChmfuqjrARLtnn8UOV7/lwxSr51C0/AmE
 sRQUcJCtLZWFNIEEIDlZYM+qp0LD+vQYHon7Ctcl30PZGHjpEiEWbTsEXKqbEpjFWLkS
 L7EKmlS9Kh+Kgjzt2nJ4MS+h6dc2FNAnAawxrG58L6F+DELKIxz5r7beLE3cyhLmdsMW
 ApKWVieoR7chO1lSQu/mfH6ZciWQmaLqqWmh+KTYYw7xUy8+GcI2m1jPwh8jaURIKISp
 bKpBO6ex9JVX6yxUvfbUtPgaWzD7wbKoQSzot9J9ytGJ0S7VBX1cYohBKpvPZrYCJeS4
 Nvaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=xxd5vo5QurLpt9L4qMgvVJGSW6Osjywwb4CYHY+R/FQ=;
 b=NiEOaCsEsUWKHzW39y/iH8kwl7I5PhMqiGV0gUMj3mGgeF0bVKwr63SPVLoSKcNqad
 kNRP5RrOg8B35pJPUQFzPCNL+HV1aELWbA5ubCJ8SnScLOyhXd7hvw1IYYuvmKsGArb2
 87yE3qDP+XxZBMv3RZK9SatPQsGWAJ/jS2v+2i6PwsC0FFzcmWWL4Nm2Rwbr8r5Zs7WY
 QNYhPHyd3C94edpw99ij/TrxZCdYrGb5WMOiYFERNdwx2zbaVnP/Xq6U9zF8RcbD1rn9
 P1JJ8OjzoPEN3WQ5ZcWu2JSXKpl0lEWKkNH3u3WsjSOLeesRCEI1IM9miH2wLVjoi5fF
 0oYA==
X-Gm-Message-State: ANhLgQ3uqpDMjGcszzNPvmsznxF47k9CAJt3lMRtuDF/mmm3yo7Uz9uF
 4pnYWXNicaldbi0DyeUgVs9BEbLEo1AiucsijNk=
X-Google-Smtp-Source: ADFU+vuuhdqZ2hCGsDWcuSl7ClmlWIERn+UP536E/3crNluJT8VOzWB/pNm3rv2JaT9L3trW6Z0lljEuI1NFAvscL9Q=
X-Received: by 2002:aed:39c9:: with SMTP id m67mr1008871qte.107.1583300675522; 
 Tue, 03 Mar 2020 21:44:35 -0800 (PST)
MIME-Version: 1.0
References: <20200303005035.13814-1-luke.r.nels@gmail.com>
 <20200303005035.13814-2-luke.r.nels@gmail.com>
 <CAJ+HfNhSj9ycgh8Y44b_ZruW1A=+W_53fXnCDc488WXSESJ3dw@mail.gmail.com>
 <CADasFoC5EEXdq43waj9pQDb9HtpG2bWE2yMVySBZ4rpopYbROQ@mail.gmail.com>
In-Reply-To: <CADasFoC5EEXdq43waj9pQDb9HtpG2bWE2yMVySBZ4rpopYbROQ@mail.gmail.com>
From: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@gmail.com>
Date: Wed, 4 Mar 2020 06:44:24 +0100
Message-ID: <CAJ+HfNgHyX_zMh7Wm00twwY75YLftZ8GFMw3rx5k+yiLH8p0eg@mail.gmail.com>
Subject: Re: [PATCH bpf-next v4 1/4] riscv,
 bpf: move common riscv JIT code to header
To: Luke Nelson <lukenels@cs.washington.edu>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_214437_024989_27624EFF 
X-CRM114-Status: GOOD (  20.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
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

On Wed, 4 Mar 2020 at 03:31, Luke Nelson <lukenels@cs.washington.edu> wrote=
:
>
> Hi Bj=C3=B6rn,
>
> Thanks for the comments! Inlined responses below:
>
> On Mon, Mar 2, 2020 at 11:50 PM Bj=C3=B6rn T=C3=B6pel <bjorn.topel@gmail.=
com> wrote:
> >
> > > +/* SPDX-License-Identifier: GPL-2.0 */
> > > +/*
> > > + * Common functionality for RV32 and RV64 BPF JIT compilers
> > > + *
> > > + * Copyright (c) 2019 Bj=C3=B6rn T=C3=B6pel <bjorn.topel@gmail.com>
> > > + * Copyright (c) 2020 Luke Nelson <luke.r.nels@gmail.com>
> > > + * Copyright (c) 2020 Xi Wang <xi.wang@gmail.com>
> >
> > I'm no lawyer, so this is more of a question; You've pulled out code
> > into a header, and renamed two functions. Does that warrant copyright
> > line additions? Should my line be removed?
>
> This header also includes new code for emitting instructions required
> for the RV32 JIT (e.g., sltu) and some additional pseudoinstructions
> (e.g., bgtu and similar). I'm also no lawyer, so I don't know either
> if this rises to the level of adding copyright lines. I'm happy to
> do the following in v5 if it looks better:
>
> + * Copyright (c) 2019 Bj=C3=B6rn T=C3=B6pel <bjorn.topel@gmail.com>
> + *
> + * Modified by ...
>

Ah, my mistake! Feel free to keep the Copyright. I was honestly just
curious what the correct way (if any) was. So; Keep your copyright!
Sorry for the noise!

> > > +#if __riscv_xlen =3D=3D 64
> >
> > Please remove this. If the inlined functions are not used, they're not
> > part of the binary. This adds complexity to the code, and without it
> > we can catch build errors early on!
>
> I agree in general we should avoid #if. The reason for using it
> here is to cause build errors if the RV32 JIT ever tries to emit
> an RV64-only instruction by mistake. Otherwise, what is now a build
> error would be delayed to an illegal instruction trap when the JITed
> code is executed, which is much harder to find and diagnose.
>
> We could use separate files, bpf_jit_32.h and bpf_jit_64.h (the
> latter will include the former), if we want to avoid #if. Though
> this adds another form of complexity.
>
> So the options here are 1) using no #if, with the risk of hiding
> subtle bugs in the RV32 JIT; 2) using #if as is; and 3) using
> separate headers. What do you think?
>

Ok, that is a valid concern. We could go the route of compile-time checking=
:

if (__riscv_xlen !=3D 64)
    bad_usage();

That's overkill in this case. Keep the #if.


Cheers,
Bj=C3=B6rn


> Thanks!
>
> Luke

