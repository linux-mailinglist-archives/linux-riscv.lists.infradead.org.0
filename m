Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B092C1B1DD3
	for <lists+linux-riscv@lfdr.de>; Tue, 21 Apr 2020 07:06:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=T22n9ZgIUDB3iwAvu4Bq1V9WbDX7+F8NlJ84vbdyBpU=; b=eK9Tr0RTIiSIzgjW3MJtiIblD
	YfaBi0MJJzeEoT2qBVbiLihTZPbEp2COPvwLVao1fUaiiJpt6nj/MmTWeEYcmP04QJTvXzjNFinSl
	KN8OdtiLCTJIJljkYOYbkZOBn3I2UTbhuPzvLUNqqUK89l7sy9QfsIqRP5gCoDItdA12/FUTXPcpi
	+I6qlNgOnpdrONljOpjB9nHli6DABrqkQ38XvDUZrKHEvjkvfcPup4rwWdEVtlE+eJUhRdrPxpJu3
	4lvhQ5b+LyRFzpQyRdhVB5XTsSHiKnFM1uxksCCAZxbeyC5ohKvloFHVhJdqmD88h+nxyjEl9qsSc
	w4fDX3tzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQl77-0004vM-Na; Tue, 21 Apr 2020 05:06:29 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQl73-0004uW-9Z
 for linux-riscv@lists.infradead.org; Tue, 21 Apr 2020 05:06:26 +0000
Received: by mail-wr1-x441.google.com with SMTP id x18so14943881wrq.2
 for <linux-riscv@lists.infradead.org>; Mon, 20 Apr 2020 22:06:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=atishpatra.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=T22n9ZgIUDB3iwAvu4Bq1V9WbDX7+F8NlJ84vbdyBpU=;
 b=TbbEcTtbkUhu5j2yaYH+f+uFPiIpZ3yBjYVhCleGgNsF1aO4CgYh+UrghN6KBPBQcT
 IgpjQfPvPR6qPJN8AcPFeMzbjZxCPnbtdVHHHGMaGyO69yqPxQxRY7/l5L8NfejCVxIb
 wVPpsjcTehCzi4zdDmGXRhGX3uNGF+JmfmzQkUQExl0RbRk/bxjggB830/4xJrQlUMoE
 Ck3FVQ8pguhwrBJHadOAhR4PSQ2Hr/E3VFGt0+imcpMzUH7vhJePvH5s/42uFtQF1Kd6
 Hl4dXHcvKSlIPs1a7HK3qH4h1h8NVBPk+1AuCoHJbvG1pyNDHSsouqLo7zPDvtZu8NaL
 iGuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=T22n9ZgIUDB3iwAvu4Bq1V9WbDX7+F8NlJ84vbdyBpU=;
 b=lp2fgjQftUcDgKTOd9wt1j0CT+duy77cyLFYh2a9TN86bkal4KNshTlaeE/7k/eULU
 yePmMPA+SKcbTeMBp8WmYuh+XYTep7zgUyp7gHy1yhOF74F4XRgH7fMEzyvs/gZLMt1U
 0vVgQGgvr0haejlajK4ELhbHQrs48lBx8BIDpaiqWsKay47Ajlm5R7oKb+GfJ3KcSj1s
 ZZsBwkaZ4K5MasGTrM7JBbPUmoApKyFn1rxvFS+hcqF/TWXDsCYnoSSc0oIR+oE67/AY
 7wrtCbwIoL25M/WujoqtPOqB0ThN20QzZIM6XS9qEqMCD6hHfYqK7d6LWRwaGWhAdMPK
 fb+A==
X-Gm-Message-State: AGi0PubP5Zn1eA7Eq5cl1LTMoBOT9IrCKAisaGLRKgFEsPkwnQ9Sav0o
 UEGLCCBJo/xKTOUsTw1xadRG4BmLN+iKmuqUGqg6
X-Google-Smtp-Source: APiQypJdeYoX/nAoBxN2T6KVPr0GIDpVnjQRxKWUzukLBPcV1cQk8qEU5rEoNiNslRHmr2WT5DXNuroelRKk35B9rcI=
X-Received: by 2002:a5d:4443:: with SMTP id x3mr21644255wrr.162.1587445578746; 
 Mon, 20 Apr 2020 22:06:18 -0700 (PDT)
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
 <CAMj1kXHpHnhOjYJaBvj5XhYnOzbH5MzBJePy7dDpd-S3s029CQ@mail.gmail.com>
In-Reply-To: <CAMj1kXHpHnhOjYJaBvj5XhYnOzbH5MzBJePy7dDpd-S3s029CQ@mail.gmail.com>
From: Atish Patra <atishp@atishpatra.org>
Date: Mon, 20 Apr 2020 22:06:07 -0700
Message-ID: <CAOnJCUKpLg8EzyaQ59kGVx0Fwfb--T9M2GuBSAAPdoTZfxHSbQ@mail.gmail.com>
Subject: Re: [v3 PATCH 5/5] RISC-V: Add EFI stub support.
To: Ard Biesheuvel <ardb@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_220625_404782_386B5B24 
X-CRM114-Status: GOOD (  20.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "linux-efi@vger.kernel.org" <linux-efi@vger.kernel.org>,
 "arnd@arndb.de" <arnd@arndb.de>, Anup Patel <Anup.Patel@wdc.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Atish Patra <Atish.Patra@wdc.com>, "palmer@dabbelt.com" <palmer@dabbelt.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, Apr 20, 2020 at 1:02 AM Ard Biesheuvel <ardb@kernel.org> wrote:
>
> On Mon, 20 Apr 2020 at 09:59, Atish Patra <atishp@atishpatra.org> wrote:
> >
> > On Mon, Apr 20, 2020 at 12:04 AM Ard Biesheuvel <ardb@kernel.org> wrote:
> > >
> > > On Mon, 20 Apr 2020 at 06:20, Atish Patra <Atish.Patra@wdc.com> wrote:
> > > >
> ...
> > > >
> > > > "If the preferred address is set as the base of DRAM, efi_bs_call is
> > > > bound to fail as well because the base of DRAM is reserved by the
> > > > firmware. So the efi memory allocator can't allocate at that address.
> > > > Technically, it will work but it is no different than passing
> > > > ULONG_MAX. So I thought ULONG_MAX will avoid the confusion.
> > > >
> > > > We try to allocate as low as possible so I am passing dram_base as the
> > > > minimum address anyways. As the firmware reserved the first few KBs,
> > > >
> > >
> > >
> > > OK, so the preferred address *is* the base of DRAM (assuming it is 2
> > > MB aligned). However, in the general case, you keep some firmware
> > > state there (couple of KB) and so you typically end up at DRAM base
> > > plus 2 MB?
> > >
> >
> > Yes.
> >
> > > So first question: why does the firmware put this stuff at the base of
> > > DRAM in the first place? Does it *have* to live there?
> > >
> >
> > The firmware includes the RISC-V specific supervisor binary interface (SBI)[[1]
> > implementation. As it is a RISC-V specific run time service provider,
> > it has to be resident in memory.
> > The arm equivalent of SBI would be PSCI.
> >
> > [1] https://github.com/riscv/riscv-sbi-doc/blob/master/riscv-sbi.adoc
> >
>
> I am not asking why it has to be resident in memory. I am asking why
> it has to be at the *base* of memory.
>

Sorry. I misunderstood the question. I think it is kept at the start
of dram to accommodate
embedded systems with smaller memory. It was also easier to manage at
the beginning of
the memory because all other next stages in the boot process just
ignores first few KBs of
the memory. We also did not have a memory reservation scheme back then.

Having said that, this parameter is configurable for each platform in
OpenSBI. In future, this restriction
can be relaxed if a platform vendor wants. IIRC, linux kernel can't
use  the memory below the kernel start
address (where PAGE_OFFSET is mapped) because of generic mm code limitations.

Added Anup (In case he wants to add something to this)

> > > Then, if the base of DRAM is guaranteed to be occupied, why not make
> > > the preferred address base of DRAM + 2 MB ? (or 4 MB for the 32-bit
> > > case)
> >
> > I guess that will work too. I was inclined to use low_alloc_above so
> > that we ensure that the kernel
> > boots from the lowest possible address given the alignment
> > restriction. If the alignment restrictions are relaxed,
> > in future, we just have to change the macro.
> >
> > However, I think calling relocate_kernel with a preferred offset
> > (dram_base + KIMG_ALIGN) is
> > better because it will always fall back to low_alloc_above anyways. I
> > will send the patch.
>
> Indeed. In the common case, it will just do the allocate_pages()
> directly, which is preferred. It will fall back to
> efi_low_alloc_aboce() [and do the memory map parsing and traversal
> etc] only if needed.



-- 
Regards,
Atish

