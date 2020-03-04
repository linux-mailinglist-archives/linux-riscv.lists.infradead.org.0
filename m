Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5B2C178851
	for <lists+linux-riscv@lfdr.de>; Wed,  4 Mar 2020 03:31:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iDh/enhDaAA8PUFA/sO33m/8w76mEhVPC2n0905OieU=; b=lRlQHQRcGRQg5S
	1T+asTRyy7kHRBn8MJ0dnmg9AdL7M3coipHSOsV2OVgPC5lmFdd9cLIYMC1EdCJJXfCWUrI683iu4
	WF1ndbOZxzxEhZro4Qdul9m23QIjjO7rvrAIsFK7LnUMVNggTKnaC+D/M116zQxbGUnExQ+Z9jRs2
	JWlZRRt3XTlrC9mH9EtLgPc/Zi02lIPzAds9zkyNJLwcwtgV7J/cEBFOtd2hq5QcD4pulE1DuJssA
	+txEYTLUfjvwffnxEoBhSrxNzISEtc9SXcd0dnzFTNde8VYIQ3fZ6SX8kb2YABgYDJ68Ha0ctayxQ
	jJmV21Q24HwA9tc0UoRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9Jol-0001Gr-72; Wed, 04 Mar 2020 02:31:27 +0000
Received: from mail-il1-x142.google.com ([2607:f8b0:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9Joh-0001GD-Nv
 for linux-riscv@lists.infradead.org; Wed, 04 Mar 2020 02:31:25 +0000
Received: by mail-il1-x142.google.com with SMTP id w69so507733ilk.6
 for <linux-riscv@lists.infradead.org>; Tue, 03 Mar 2020 18:31:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cs.washington.edu; s=goo201206;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=iDh/enhDaAA8PUFA/sO33m/8w76mEhVPC2n0905OieU=;
 b=S8jgdom0wODh397o+u6x7vdYMOxPd/sn1jhl7jFTzqmZwArA/RGIOqXd1Lfk54/0Vl
 OnuKtqPJi4jEGtECkwc5BXE+qT27/RonNFdTLx9kPE210O+Z5T2l6hPG58KWXs+eDdf1
 pHa2aWWb75igheHNKaBH3PpojCyHVsQH0TMYk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=iDh/enhDaAA8PUFA/sO33m/8w76mEhVPC2n0905OieU=;
 b=gkI5XHKbqoOmHpwkgfp8Argh2FzvTrzHQuZwC+xWiqSGKJGrHToxXfEIbdHNAN9tmn
 SojZags/OkWKvDTh0ipHFPsDAlHRh+VvsbSy/swZ6FmH2icF/sBsQ8yW2FJ09lOYWluG
 f1eG+ErF2HGTJuBIAl28DQEisjXA7718B0NxhQWHpACOteM8Hronvj0+SRvp7da0FX3u
 wWFR92BvAT6VCBVdySu1GX/qmmR9xASdo2qterARpBCLDh79781pu3ap/M5iWnIZXM1V
 EiADMp95pidDgzrXXk37OOc3mFP8wwDASNRaks3t+jmFnEThVDG0aZSGI0O+7kF8uGhh
 1scQ==
X-Gm-Message-State: ANhLgQ2GDpVyebqkf/LVfXQR1mSaOMSfSsYINR4dowglW9LtKjJqRI1a
 jcqhCspd9zraFYWZ5a2aKk8tNRA41x0Dc+3OFhDnhQ==
X-Google-Smtp-Source: ADFU+vtpJ/AVr87l3sVJ8pp3Eu7HomjQQiORzxtMTMauDedmgqcfPEE0GdUhImRuEnjWdcebpvzP0Zzi0Nqw6HfYP3A=
X-Received: by 2002:a92:860a:: with SMTP id g10mr674584ild.280.1583289081991; 
 Tue, 03 Mar 2020 18:31:21 -0800 (PST)
MIME-Version: 1.0
References: <20200303005035.13814-1-luke.r.nels@gmail.com>
 <20200303005035.13814-2-luke.r.nels@gmail.com>
 <CAJ+HfNhSj9ycgh8Y44b_ZruW1A=+W_53fXnCDc488WXSESJ3dw@mail.gmail.com>
In-Reply-To: <CAJ+HfNhSj9ycgh8Y44b_ZruW1A=+W_53fXnCDc488WXSESJ3dw@mail.gmail.com>
From: Luke Nelson <lukenels@cs.washington.edu>
Date: Tue, 3 Mar 2020 18:31:11 -0800
Message-ID: <CADasFoC5EEXdq43waj9pQDb9HtpG2bWE2yMVySBZ4rpopYbROQ@mail.gmail.com>
Subject: Re: [PATCH bpf-next v4 1/4] riscv,
 bpf: move common riscv JIT code to header
To: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_183123_805951_34C56DA0 
X-CRM114-Status: GOOD (  12.48  )
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

Thanks for the comments! Inlined responses below:

On Mon, Mar 2, 2020 at 11:50 PM Bj=C3=B6rn T=C3=B6pel <bjorn.topel@gmail.co=
m> wrote:
>
> > +/* SPDX-License-Identifier: GPL-2.0 */
> > +/*
> > + * Common functionality for RV32 and RV64 BPF JIT compilers
> > + *
> > + * Copyright (c) 2019 Bj=C3=B6rn T=C3=B6pel <bjorn.topel@gmail.com>
> > + * Copyright (c) 2020 Luke Nelson <luke.r.nels@gmail.com>
> > + * Copyright (c) 2020 Xi Wang <xi.wang@gmail.com>
>
> I'm no lawyer, so this is more of a question; You've pulled out code
> into a header, and renamed two functions. Does that warrant copyright
> line additions? Should my line be removed?

This header also includes new code for emitting instructions required
for the RV32 JIT (e.g., sltu) and some additional pseudoinstructions
(e.g., bgtu and similar). I'm also no lawyer, so I don't know either
if this rises to the level of adding copyright lines. I'm happy to
do the following in v5 if it looks better:

+ * Copyright (c) 2019 Bj=C3=B6rn T=C3=B6pel <bjorn.topel@gmail.com>
+ *
+ * Modified by ...

> > +#if __riscv_xlen =3D=3D 64
>
> Please remove this. If the inlined functions are not used, they're not
> part of the binary. This adds complexity to the code, and without it
> we can catch build errors early on!

I agree in general we should avoid #if. The reason for using it
here is to cause build errors if the RV32 JIT ever tries to emit
an RV64-only instruction by mistake. Otherwise, what is now a build
error would be delayed to an illegal instruction trap when the JITed
code is executed, which is much harder to find and diagnose.

We could use separate files, bpf_jit_32.h and bpf_jit_64.h (the
latter will include the former), if we want to avoid #if. Though
this adds another form of complexity.

So the options here are 1) using no #if, with the risk of hiding
subtle bugs in the RV32 JIT; 2) using #if as is; and 3) using
separate headers. What do you think?

Thanks!

Luke

