Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC3521B13A0
	for <lists+linux-riscv@lfdr.de>; Mon, 20 Apr 2020 19:55:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Xa3ffUL/3oZwz76o4zov9TTjdum+NM9p5sdpZM9Qhg4=; b=Wc5KnMqfv87bbI9EG8HRMyLUw
	Y47EDJLZj+s4efkU3qFNNxsYWxhv24mQZL1SGAphaRA7Q9AwiAGksowxj2tGAKqbWcvHPB4kUMlYz
	S0WSzPPQ5LntiyfJSfmV7ClIyMdtclVj/jut5ZAZEDdR9CLtM0kkZlu28Xv7Bvq5/tgpmbGlXFC39
	KmJ1ebQKolPoQI8fNHYSqc7efsw9P0Rloq7QHDs18CTonBK1tcjC7/qa2Qj03GzxiCbpBRjCRkX+3
	R3daDLDxnOCJho6W4l22hDKzJgfOxtGIe8dr7fNJBCX4vCQTC7/diJSkr20v0WDmBhL6TaFLx8Qbw
	fN4SS93ww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQadR-0008Ak-FI; Mon, 20 Apr 2020 17:55:09 +0000
Received: from mail-qv1-xf43.google.com ([2607:f8b0:4864:20::f43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQadL-0006mV-U0
 for linux-riscv@lists.infradead.org; Mon, 20 Apr 2020 17:55:05 +0000
Received: by mail-qv1-xf43.google.com with SMTP id bu9so5140357qvb.13
 for <linux-riscv@lists.infradead.org>; Mon, 20 Apr 2020 10:55:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Xa3ffUL/3oZwz76o4zov9TTjdum+NM9p5sdpZM9Qhg4=;
 b=qG/4hdDkpGWO8+kBfG35sHTNuc83MMAZ794J95gYxinNoEZzrToqLmf5P0PCx1EvpY
 s0uvoobXrcPXiQHGUxtASJ0nXiy0IhWgbd9S0WBIvALw3ZN6qDwuxU9iNeWAADe44+rY
 Sp9f25Rh3wOCKnsHWV7zJIpprDV3Yb8rQEFZNuG1fqk8zT9dKf8NSFjg7LCjEzjhVF8E
 XYLpMbMhTq3WEvNznhT3328+2zGT2amfqUq+VeULnpjLeqgrkUa4DSA9iLTPlIbVsmSX
 DYkGUz0a1xClxsFrYxba2EorQzp5c6Ak3voB02N8/aCRH4D4h0dwQAxHRU6DDcpejsdo
 7ihA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Xa3ffUL/3oZwz76o4zov9TTjdum+NM9p5sdpZM9Qhg4=;
 b=Q4k7d5pR5htw5PHa3X/iTRLs6pvsU33DpAzg5wJ7idxNn6vzhoZJN94hrFQFQTFsmo
 uCdEEODFfzKvMrvzzOYutcHs+n+LV0vKglWfO/om0838/+wr7Ot80BO8e/tMEjndyFrp
 gQDSXX+nOxERaaDtrd1NfG/Q4+TexZ3EqFYsom9MyHawBzuP+WK9Hq573+E5PF0XQmMj
 Bt3JFaaZeaoV8o7mvoYoztO8WBxfSRbtb3EJm+d3iOgc4MdTzjtuY5ZlYe1l9/cLw+4H
 ocT553+OFJIe6gtADvXKJVs3iGP4LGnHAZG4O7JVuvEheqte2lbvQuJrc1v22uZ+ovT+
 JUrw==
X-Gm-Message-State: AGi0PuYWg+q2oaUHWBd7ba+wQgADlMH6xAHcInCWotz7ayJu/jQ3FIcZ
 RDEpQdZb8wu2ymKq/7YKQeIgMNtZZNRbvNfXdrX4AlFk
X-Google-Smtp-Source: APiQypJfhV3cYqDLmyP74ToZe/Y1UlhaPwuuGR6/PBNhCM3GozsFkA8WVmcNI0vs4CoLfpyqbD1UNuUwBTPHoww5Nd0=
X-Received: by 2002:a0c:a9c2:: with SMTP id c2mr3423067qvb.23.1587405301268;
 Mon, 20 Apr 2020 10:55:01 -0700 (PDT)
MIME-Version: 1.0
References: <20200420060730.GA20374@APC301.andestech.com>
In-Reply-To: <20200420060730.GA20374@APC301.andestech.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 20 Apr 2020 10:54:35 -0700
Message-ID: <CAMKF1spVuXxERRz8p8hNsmYR7Cmzhm6nGg3S2FTUNGjKf1eZqw@mail.gmail.com>
Subject: Re: The concern about RV32 Linux ABI stability raised by musl-libc's
 maintainer
To: Ruinland ChuanTzu Tsai <ruinland@andestech.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_105503_998762_0A3C94A2 
X-CRM114-Status: GOOD (  31.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:f43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [raj.khem[at]gmail.com]
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
Cc: linux-riscv@lists.infradead.org, RISC-V SW Dev <sw-dev@groups.riscv.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Sun, Apr 19, 2020 at 11:07 PM Ruinland ChuanTzu Tsai
<ruinland@andestech.com> wrote:
>
> Dear RISC-V developers,
> Sorry for dropping this mail out of the blue.
>
> A couple of weeks ago, I was porting Alpine, a musl-libc based Linux
> distro, to a RV32 platform named LiteX/VexRiscv . Since the support
> for RV32 musl-libc was blocked whereas RV64 support got accepted back in
> May 2019, I asked Rich Felker, the maintainer of musl-libc, about his
> concern which blocks the RV32 port.
>
> He said, and I quote, "kernel has not declared it (RV32 Linux) a stable
> ABI yet."
>
> He added some comments on this issue in the follow-up e-mail :
> " I don't know the official statement of kernel policy, but my
> understanding of it is just that the normal kernel stability policy
> (that they can't "break userspace", including changing type
> definitions that are part of user-kernel ABI, removing syscalls, etc.)
> doesn't apply yet for RV32. I'd welcome a clarification from anyone
> who can provide one on whether this is still the case, and if so, what
> needs to happen to get past that. "
>
> To the best of my recollection, I don't recall there's any official
> statements to declare the stability of RV64 kernel or any kind of ABI
> freeze.
>
> I've been asking around my collegaues; they don't remember such kind of
> annoucement either.
>
> Yet I believe that to some degree, there's a rough transition point
> when we all came to agree " not to touch RV64 kernel <=> user interface
> (i.e. stuffs under arch/riscv/include/asm) too much from now on. "
>
> As my own experience, we (Andes Tech) have been distributing RV32 kernel
> to our customers without having ABI breakage for a long time.
>

are you carrying local patches for kernel that change UAPIs?

> Does anyone here also feels the same for RV32 ?
>

it has to be upstream in Linux kernel and 4.15 is when all needed UAPI
headers for Linux were made
available for rv64, I am not sure if that has happened yet for rv32.
And glibc port is also not accepted yet
so kernel userspace is still in flux fo rv32 imo


> If that's the case, then we might be able to ease Rich's concern about
> RV32 kernel's ABI stability.
>
> Or if that's not the case, please enlighten me a bit so we could work it
> out together :-)
>
> A spinning tiny cog,
> Ruinland ChuanTzu Tasi
>
> ----- Forwarded message from Rich Felker <dalias@libc.org> -----
>
> Date: Wed, 1 Apr 2020 09:40:01 -0400
> From: Rich Felker <dalias@libc.org>
> To: musl@lists.openwall.com
> Subject: Re: [musl] About "stable ABI" for riscv32 kernel issue and Alpine port
> User-Agent: Mutt/1.5.21 (2010-09-15)
>
> On Wed, Apr 01, 2020 at 02:18:27PM +0800, Ruinland ChuanTzu Tsai wrote:
> > Hi Rich and All,
> >
> > Back in 13th Mar, Rich has stated that "kernel has not declared it
> > (RV32 Linux) a stable ABI yet." I'm wondering whether Rich could kindly
> > elaborate a little bit more details about this concern ?
>
> I don't know the official statement of kernel policy, but my
> understanding of it is just that the normal kernel stability policy
> (that they can't "break userspace", including changing type
> definitions that are part of user-kernel ABI, removing syscalls, etc.)
> doesn't apply yet for RV32. I'd welcome a clarification from anyone
> who can provide one on whether this is still the case, and if so, what
> needs to happen to get past that.
>
> > Since my employer, Andes Tech, is one of the founding plantium memeber
> > of RISC-V Foundation and we're shipping a considerable amount of
> > Linux-running RV32 products at the time we're speaking, we will be
> > happy to help on the kernel side and make it more stablized and secured.
>
> It's not a matter of secure or "stable" in the sense of not crashing.
> It's a matter of "stable" in the sense of "not changing out from under
> you".
>
> > During my pastime, I've ported Alpine Linux with musl 1.2.0 to a
> > publicily available and open-sourced platform, LiteX/VexRiscv[1], which
> > could be synthesized and "burnt" to a Lattice ECP5-5G Versa Evaluation
> > Board with completely FOSS toolchain without any closed source
> > component. [2]
> >
> > And here's the footage of booting :
> > https://asciinema.org/a/315205
> >
> > Unfortunately, since my musl 1.2.0 is an inhouse work and we are still
> > polishing and preparing it for upstreaming, please excuse me from not
> > releasing the cpio image and stuffs at this time being.
> >
> > P.S.
> > Regarding the last mail:
> > https://www.openwall.com/lists/musl/2020/03/13/4
> > I'm not really qualified to answer the reason/profit of lacking LR/SC
> > pair. Yet just a rough hunch that LR/SC is much stronger in atomicity
> > than other AMOs.
>
> Yes, LR/SC is a slightly stronger primitive in some sense, but at the
> same time it's far easier to fake an implementation on single-core
> designs.
>
> In any case if there are chips people want to run Linux/musl on that
> lack LR/SC then we need to know what the intended way to get atomics
> is. Does kernel trap and emulate? Do we have to make a syscall? Is
> there a function kernel exports to userspace like kuser_helper on
> pre-v6 ARM that establishes a contract of cooperation between kernel
> and userspace to restart interrupted atomics? What are you doing with
> your WIP port?
>
> Rich
>
> ----- End forwarded message -----
>

