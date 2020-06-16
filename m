Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 146461FAAEC
	for <lists+linux-riscv@lfdr.de>; Tue, 16 Jun 2020 10:16:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xyM3Tp38UmkemihB3Xd2uNMAQGR+JNs/O828XRCE6Xs=; b=g29/XKN67gk7vdnpyVu1U7UiC
	PC62H527kA9K/mb86l8GX7bE5wsZjfKBxdbZgfHyhnvkTaZQ6XQ+ucbQKB0RGgXQKOdikKb8XKW4H
	ztWic2zHIC9Cpks7eo0F9IPBbp5tkfR4S4ME2IwbD945anj+w/pJoobsOJlve104AiPMeIVB76eO6
	rxfRFHqhIO8eK/ZTJYUop7oB62KxGA5Gp1E/hRvLmq9PIEBwpK64BetNdHaxjZpcIA5hxBLr5QtAm
	5q/hV7fr8dAfXHMG76AR6wRLbnqmvco3G2uqjEEGAD6ZiDBqmWruMPCjFyDmNcK64LUMxzK1rJcEt
	5weiuZ6BA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jl6lm-0006cT-RK; Tue, 16 Jun 2020 08:16:34 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jl6li-0006bf-LB
 for linux-riscv@lists.infradead.org; Tue, 16 Jun 2020 08:16:32 +0000
Received: from mail-ot1-f52.google.com (mail-ot1-f52.google.com
 [209.85.210.52])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2884B2074D
 for <linux-riscv@lists.infradead.org>; Tue, 16 Jun 2020 08:16:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592295390;
 bh=zM0bjNs8fisP91Kce+QVAGhJeDSr7Rq/g+kEHGH1VNo=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=y1zC8BcHYB5UOh/8AXGYMtfEwhXQ5UfZHXG1OYtVpMZMDROP3i2gx3roiLQAGttDv
 I948qG85GLYJnzPbRfF1ztdzRWzU+6vmpvLEcoP9jEVHqYca55kUXBNmf/BNQDKeJK
 +fdnDUbV5nxQMStoN0YEHVLDxPaHeH4ux4dIwjHY=
Received: by mail-ot1-f52.google.com with SMTP id d4so899440otk.2
 for <linux-riscv@lists.infradead.org>; Tue, 16 Jun 2020 01:16:30 -0700 (PDT)
X-Gm-Message-State: AOAM5312gL9iZmwN92i4NV8PV1+wLlzS0m5FCuq7fT/4oNxVqtuG7d2U
 rUoJbsA1LukcFiyrdDgjkQ16saGjnxrY/xOXCsM=
X-Google-Smtp-Source: ABdhPJzEgdhWfPhyNgDCjzdpTHBrt2Mm2gVPfonS7qfRnMS8h+g4/1mnYJDFHD+/niYUHhVHX1hzvJVAOY6rmeGaE9c=
X-Received: by 2002:a9d:5a12:: with SMTP id v18mr1469821oth.90.1592295389542; 
 Tue, 16 Jun 2020 01:16:29 -0700 (PDT)
MIME-Version: 1.0
References: <20200422172414.6662-1-ardb@kernel.org>
 <20200422172414.6662-3-ardb@kernel.org>
 <CAMuHMdXZM7XYBt=2dJFJi+xxe2HOh43KzSkxGoMqaaC_kc_P-g@mail.gmail.com>
In-Reply-To: <CAMuHMdXZM7XYBt=2dJFJi+xxe2HOh43KzSkxGoMqaaC_kc_P-g@mail.gmail.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Tue, 16 Jun 2020 10:16:18 +0200
X-Gmail-Original-Message-ID: <CAMj1kXH3HgmqrEct1ANNNZqb3R+YNpvp+TDkjF7b=1MYFtNa3g@mail.gmail.com>
Message-ID: <CAMj1kXH3HgmqrEct1ANNNZqb3R+YNpvp+TDkjF7b=1MYFtNa3g@mail.gmail.com>
Subject: Re: [PATCH v5 2/7] efi/libstub: Make initrd file loader configurable
To: Geert Uytterhoeven <geert@linux-m68k.org>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_011630_716952_ADD59F4E 
X-CRM114-Status: GOOD (  18.74  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-efi <linux-efi@vger.kernel.org>, Atish Patra <atish.patra@wdc.com>,
 Albert Ou <aou@eecs.berkeley.edu>, Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv <linux-riscv@lists.infradead.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, 16 Jun 2020 at 09:55, Geert Uytterhoeven <geert@linux-m68k.org> wrote:
>
> Hi Ard,
>
> On Wed, Apr 22, 2020 at 7:24 PM Ard Biesheuvel <ardb@kernel.org> wrote:
> > Loading an initrd passed via the kernel command line is deprecated: it
> > is limited to files that reside in the same volume as the one the kernel
> > itself was loaded from, and we have more flexible ways to achieve the
> > same. So make it configurable so new architectures can decide not to
> > enable it.
> >
> > Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
>
> Thanks for your patch, which is now commit cf6b83664895a5c7
> ("efi/libstub: Make initrd file loader configurable")!
>
> > --- a/drivers/firmware/efi/Kconfig
> > +++ b/drivers/firmware/efi/Kconfig
> > @@ -124,6 +124,17 @@ config EFI_ARMSTUB_DTB_LOADER
> >           functionality for bootloaders that do not have such support
> >           this option is necessary.
> >
> > +config EFI_GENERIC_STUB_INITRD_CMDLINE_LOADER
> > +       bool "Enable the command line initrd loader"
> > +       depends on EFI_GENERIC_STUB
> > +       default y
> > +       help
> > +         Select this config option to add support for the initrd= command
> > +         line parameter, allowing an initrd that resides on the same volume
> > +         as the kernel image to be loaded into memory.
> > +
> > +         This method is deprecated.
>
> So why the default y?
>

Hallo Geert,

Every time I try to disable something like this, someone pops out of
the woodwork to explain how the feature is so vitally important for
their highly bespoke and vertically integrated boot flow that it has
to be enabled by default for absolutely everybody.

But patches welcome :-)

