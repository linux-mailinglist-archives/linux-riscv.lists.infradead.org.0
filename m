Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63BA01B03AA
	for <lists+linux-riscv@lfdr.de>; Mon, 20 Apr 2020 10:02:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3xcya7M/sEvPLWNBKP6Q1scBZdGSUS616tgCh9F9c7Q=; b=m2/Qog3fLcN40f+Cqap5gR7Ti
	CqI7lHBAxm6OSr9gQdqEYvP/W4RRpNP/+qGnn+YrOyE2GNCSyKoS0mCU0Q4dciqZPuhP/94pMwMUN
	N0aB60tJIMe1uuDALSUKWZuLTPKQRkBoqyC0/STN/rlTBihD/couQE4X3YO+32izEPKPTO2h9TMRg
	IH5EjCWFhYussSWFqK0KcKqe28KWQwzNsEpAnn3PXZT9LaZcaNSCOG+6lDiG4UJf5eaDAAo1wwtrS
	VR6WWAuvUMXpKXjNjJVu7KYlzy1BtJcOYK1K6LBBaDkf/UJzhw3m2ABYFTwRvNRJWxyug1qFh96rh
	kavVqXRQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQRNk-0000Pf-7t; Mon, 20 Apr 2020 08:02:20 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQRNh-0000Ow-5d
 for linux-riscv@lists.infradead.org; Mon, 20 Apr 2020 08:02:18 +0000
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com
 [209.85.208.54])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7F0AF21D79
 for <linux-riscv@lists.infradead.org>; Mon, 20 Apr 2020 08:02:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587369736;
 bh=3xcya7M/sEvPLWNBKP6Q1scBZdGSUS616tgCh9F9c7Q=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=MTffXFCO//iyqq/dquWfsII+EQEvkEl1aut2+SzUn9L92VGIKyAl+Zm4GLZNl0hc4
 TJCmR3MNkNjeRWVy80plCLzKyL2JfHIMnLkHphHzYUcoigLfmXVjVoyxaTEIz5DSVz
 L4kzv2fjHZ7yumEV6roTQ5RKVKgOPBYyBW1eJCiY=
Received: by mail-ed1-f54.google.com with SMTP id s10so6599571edy.9
 for <linux-riscv@lists.infradead.org>; Mon, 20 Apr 2020 01:02:16 -0700 (PDT)
X-Gm-Message-State: AGi0PuaCwiiZo1p6knr22qv0ltDWrn0JN1JywSPXVUuHZEpzB+6l2W4r
 FnXCDUr1FW8KtbuVui1raGbs8tPu1BBVLsyNe9A=
X-Google-Smtp-Source: APiQypIyOH/ryBKZyU0X7EvYrtQRDAKgyCzCYUiTcPhGkK3tSg3xJVYiTIUYCQhCbMqDcQZB/6Mjik8RwtT83/1E2cQ=
X-Received: by 2002:aa7:c0d1:: with SMTP id j17mr12138364edp.308.1587369734880; 
 Mon, 20 Apr 2020 01:02:14 -0700 (PDT)
MIME-Version: 1.0
References: <20200415195422.19866-1-atish.patra@wdc.com>
 <20200415195422.19866-6-atish.patra@wdc.com>
 <CAMj1kXFRqTYr7_M_j6oN1-xnQ6V4uCYK49yAbjvrf1BB823Cng@mail.gmail.com>
 <CAOnJCUK3fqsR93ewYMUkanh+x1EJN_3QwkFjSDDZZr2MjzpnUQ@mail.gmail.com>
 <CAMj1kXFOkARJ9k81pu-LuHEd7H7AZRRrquzVN-WQ3J239JUZTw@mail.gmail.com>
 <CAMj1kXGv8XrXJ=Tx88O38a9UYM3iuBevg5NXRpMrny1XJZGB7A@mail.gmail.com>
 <CAOnJCUJOY_84eesRreVyEQKjL2awkehcFi5ydMv0USNeaFHd6A@mail.gmail.com>
 <CAMj1kXHLfXOp=JQhAeFx6oazFp=kqiS0TMTV06ZthTFg6QdzWw@mail.gmail.com>
 <b6a28d62be4d42319fca2adaad755612ef094667.camel@wdc.com>
 <CAMj1kXEQVdQ4ysMoyJk+ue7iZApLLgkhy65Fm7JDPOjNyETx9Q@mail.gmail.com>
 <CAOnJCUKZUNm_0xZtFyOxQMaust79Q0_m7gUS1eQPFkK29uyJMQ@mail.gmail.com>
In-Reply-To: <CAOnJCUKZUNm_0xZtFyOxQMaust79Q0_m7gUS1eQPFkK29uyJMQ@mail.gmail.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Mon, 20 Apr 2020 10:02:03 +0200
X-Gmail-Original-Message-ID: <CAMj1kXHpHnhOjYJaBvj5XhYnOzbH5MzBJePy7dDpd-S3s029CQ@mail.gmail.com>
Message-ID: <CAMj1kXHpHnhOjYJaBvj5XhYnOzbH5MzBJePy7dDpd-S3s029CQ@mail.gmail.com>
Subject: Re: [v3 PATCH 5/5] RISC-V: Add EFI stub support.
To: Atish Patra <atishp@atishpatra.org>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_010217_251373_40F9782B 
X-CRM114-Status: GOOD (  18.67  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: "linux-efi@vger.kernel.org" <linux-efi@vger.kernel.org>,
 "arnd@arndb.de" <arnd@arndb.de>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "masahiroy@kernel.org" <masahiroy@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Atish Patra <Atish.Patra@wdc.com>, "palmer@dabbelt.com" <palmer@dabbelt.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "will@kernel.org" <will@kernel.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, 20 Apr 2020 at 09:59, Atish Patra <atishp@atishpatra.org> wrote:
>
> On Mon, Apr 20, 2020 at 12:04 AM Ard Biesheuvel <ardb@kernel.org> wrote:
> >
> > On Mon, 20 Apr 2020 at 06:20, Atish Patra <Atish.Patra@wdc.com> wrote:
> > >
...
> > >
> > > "If the preferred address is set as the base of DRAM, efi_bs_call is
> > > bound to fail as well because the base of DRAM is reserved by the
> > > firmware. So the efi memory allocator can't allocate at that address.
> > > Technically, it will work but it is no different than passing
> > > ULONG_MAX. So I thought ULONG_MAX will avoid the confusion.
> > >
> > > We try to allocate as low as possible so I am passing dram_base as the
> > > minimum address anyways. As the firmware reserved the first few KBs,
> > >
> >
> >
> > OK, so the preferred address *is* the base of DRAM (assuming it is 2
> > MB aligned). However, in the general case, you keep some firmware
> > state there (couple of KB) and so you typically end up at DRAM base
> > plus 2 MB?
> >
>
> Yes.
>
> > So first question: why does the firmware put this stuff at the base of
> > DRAM in the first place? Does it *have* to live there?
> >
>
> The firmware includes the RISC-V specific supervisor binary interface (SBI)[[1]
> implementation. As it is a RISC-V specific run time service provider,
> it has to be resident in memory.
> The arm equivalent of SBI would be PSCI.
>
> [1] https://github.com/riscv/riscv-sbi-doc/blob/master/riscv-sbi.adoc
>

I am not asking why it has to be resident in memory. I am asking why
it has to be at the *base* of memory.

> > Then, if the base of DRAM is guaranteed to be occupied, why not make
> > the preferred address base of DRAM + 2 MB ? (or 4 MB for the 32-bit
> > case)
>
> I guess that will work too. I was inclined to use low_alloc_above so
> that we ensure that the kernel
> boots from the lowest possible address given the alignment
> restriction. If the alignment restrictions are relaxed,
> in future, we just have to change the macro.
>
> However, I think calling relocate_kernel with a preferred offset
> (dram_base + KIMG_ALIGN) is
> better because it will always fall back to low_alloc_above anyways. I
> will send the patch.

Indeed. In the common case, it will just do the allocate_pages()
directly, which is preferred. It will fall back to
efi_low_alloc_aboce() [and do the memory map parsing and traversal
etc] only if needed.

