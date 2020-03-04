Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 490C9178862
	for <lists+linux-riscv@lfdr.de>; Wed,  4 Mar 2020 03:33:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z8i39F29uItXrQ0Vm+/tnYAlpVrh5Zrfz37MFCt4wqg=; b=enbOk0GvyyTpQM
	rw/yFdD7bUCdAkQo86r4wUd+9PRoQ0+GWdfSt0q9D7fVcmPsjKy1ZF2uoa9mtTfwlDp3G1ayxWnBV
	4F4Pnj69US7+p5+X4MlO6EeoTWeeEeemQ6viqaU9m7Z6/VAfvk3k+Tw6pIzp2J46HkKrVAEJF8b23
	x1HO/BQ8YJ8Ozx8f9h4lRDGXob9qllpWY0NciSQ67kclDcNXVYRBlNFVLQLGownaS0h9tLH1OeW8g
	HXJpHZl1AYgp7RL7sAVVz6QqWYrprZ/8gyU6B7XJMwRP52Th9xFEdRTx5piTmRD1pFX9A07kAQ1SD
	NGdiLvxZVCgRJado826A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9Jqn-0001r4-8Q; Wed, 04 Mar 2020 02:33:33 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9Jqk-0001qW-6C
 for linux-riscv@lists.infradead.org; Wed, 04 Mar 2020 02:33:31 +0000
Received: by mail-io1-xd42.google.com with SMTP id h8so713504iob.2
 for <linux-riscv@lists.infradead.org>; Tue, 03 Mar 2020 18:33:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cs.washington.edu; s=goo201206;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=z8i39F29uItXrQ0Vm+/tnYAlpVrh5Zrfz37MFCt4wqg=;
 b=YA+26ZyPPsXhtvsAfcQdDGKF76soF525p7XOyeC2g3fWKaRu7Nchx0JivsPHU9+mVx
 L2n+BpbDPm4VZ0rdcng/wCTI7pmzhvs1BTt5zoXCYUBmigd7w6CB7jsBLqS/tRZ3sBra
 ttxpQ4mYrMFxanwRq3ExFUcoGdLn+TstWEZGs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=z8i39F29uItXrQ0Vm+/tnYAlpVrh5Zrfz37MFCt4wqg=;
 b=YxZiWRgO76d1grigQo1CoN2Lr+jWyDEUKCcL7k2Z04C7Xy3FzGiUMkqpsOniZrcCyl
 1lxqGcnweGRJUPn122y3jHNJm52QNREDZ+mFgiQ+MsZacYD9fqDTe5uMN6Q2zRMZ1uPR
 /IQ1nzBSZ2lTvdC/TvJHsGo1dFkxzuHGpw8Fin2NPTM7K149ehXFUWFwuOvBhoETsMFk
 pARl2/xtrIqiZ0hnAU5npDb3TosJD0Ln1OrE0OOvIo1qyn+yJULyiukFB0kGB90Lw47I
 bk7sAOfovYTwOYc8aJdvhdpAz9JuekcwjFoHlBh9r4RX+135yZu3Pf6Me/5vI2Xdv8Wn
 CFNA==
X-Gm-Message-State: ANhLgQ2zCg8WcqawARWZr6Et4ArDMszq3nLl+T50YaHGdJ0YW9lj1uS8
 YbQ3H9pqgszWIqLUpw+UpkW1A27C4ZqqBIaipA7okQ==
X-Google-Smtp-Source: ADFU+vtdbhJTXt1bRm93LupwhvNWTGVMBaqbP4QMYe4hxwp7dnVdENhAaLm/Y73xWVIRUbZJWq6Ns+B//0CejhYYfa0=
X-Received: by 2002:a6b:e310:: with SMTP id u16mr451066ioc.43.1583289208493;
 Tue, 03 Mar 2020 18:33:28 -0800 (PST)
MIME-Version: 1.0
References: <20200303005035.13814-1-luke.r.nels@gmail.com>
 <20200303005035.13814-5-luke.r.nels@gmail.com>
 <20200303100228.GJ1224808@smile.fi.intel.com>
In-Reply-To: <20200303100228.GJ1224808@smile.fi.intel.com>
From: Luke Nelson <lukenels@cs.washington.edu>
Date: Tue, 3 Mar 2020 18:33:17 -0800
Message-ID: <CADasFoCq7S2KRYg+ghAKt1e+hELzEMJaNH74sGdjM7E=z3KcnQ@mail.gmail.com>
Subject: Re: [PATCH bpf-next v4 4/4] MAINTAINERS: Add entry for RV32G BPF JIT
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_183330_228074_2E8E560C 
X-CRM114-Status: UNSURE (   8.05  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
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
 Alexei Starovoitov <ast@kernel.org>, Netdev <netdev@vger.kernel.org>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 linux-riscv@lists.infradead.org, Rob Herring <robh@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>, Jonathan Corbet <corbet@lwn.net>,
 Jakub Kicinski <kuba@kernel.org>, Andrii Nakryiko <andriin@fb.com>,
 Xi Wang <xi.wang@gmail.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Luke Nelson <luke.r.nels@gmail.com>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@gmail.com>,
 LKML <linux-kernel@vger.kernel.org>, Martin KaFai Lau <kafai@fb.com>,
 Stephen Hemminger <stephen@networkplumber.org>,
 Palmer Dabbelt <palmer@dabbelt.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, bpf <bpf@vger.kernel.org>,
 "David S. Miller" <davem@davemloft.net>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, Mar 3, 2020 at 2:02 AM Andy Shevchenko
<andriy.shevchenko@linux.intel.com> wrote:
> > -BPF JIT for RISC-V (RV64G)
> > +BPF JIT for 32-bit RISC-V (RV32G)
> > +M:   Luke Nelson <luke.r.nels@gmail.com>
> > +M:   Xi Wang <xi.wang@gmail.com>
> > +L:   bpf@vger.kernel.org
> > +S:   Maintained
> > +F:   arch/riscv/net/
> > +X:   arch/riscv/net/bpf_jit_comp.c
> > +
> > +BPF JIT for 64-bit RISC-V (RV64G)
> >  M:   Bj=C3=B6rn T=C3=B6pel <bjorn.topel@gmail.com>
> > -L:   netdev@vger.kernel.org
> > +L:   bpf@vger.kernel.org
> >  S:   Maintained
> >  F:   arch/riscv/net/
> > +X:   arch/riscv/net/bpf_jit_comp32.c
>
> Obviously this breaks an order. Please, fix.
> Hint: run parse-maintainers.pl after the change.

Hi,

Thanks for the comment!

I'll change the entry names in v5 to be "BPF JIT for RISC-V (32-bit)"
and "BPF JIT for RISC-V (64-bit)", similar to the x86 JIT entries.
This will pass parse-maintainers.pl and the entries are still in
order.

Thanks again,

Luke

