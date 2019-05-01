Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 03AA310BD0
	for <lists+linux-riscv@lfdr.de>; Wed,  1 May 2019 19:12:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/AiD8a3msytSic8ATFcsouzVv6JCSXhJMGhezW66IsE=; b=hpWUbIZApEy9Cl
	ovglVBEQe6Devl+q6HRIA5og3Qccs+8J/cGHWaQYebG8rXTzsyO1x68qgy8z5zAePT8DcKiun2bXk
	XvqfRzhYEcpsFYSja+1Nj3VbAI7PHRUSQqr5LWwuj9jNcaeAhA1hP5NAJzJD/ptyM4b8/vHAhG1Ni
	q0Yu6Hrxku2l9FTr9OO8FeN/UsaLjzCH6qos1vtCEg5ZKPV7ClFVGvcYn+swdxa28Kg4Pu+KqzlXd
	kivDtTu79aOZ1fSke2DzlOkA5Yu7Ex097wcmRQ7IvACB/uB+qVEPcuTNx+SILkiE/kZ68N16QOW+i
	ANBXXzvNpPhUozI9oVyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLsm9-0005CL-1y; Wed, 01 May 2019 17:12:09 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLsm4-00057A-Kd
 for linux-riscv@lists.infradead.org; Wed, 01 May 2019 17:12:06 +0000
Received: by mail-wr1-x444.google.com with SMTP id c12so25273289wrt.8
 for <linux-riscv@lists.infradead.org>; Wed, 01 May 2019 10:12:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=1MdDGHJ3v97Gewzs4mi2SgVk5SjqgGKkN3GGzAhTMHk=;
 b=H4LAJTY1Xw2haEQfz90FjZBT6ELgPfL9OYWEXT/aRGZ06VxQzckTDK4HK4tNM+UuAt
 obiUo20BRZEtrd3rY8FxHC8ZzXNhardxP7bgwgVn7u5VPFap9ogbgXNHe034cDz1iHi2
 7Hf96XEYRcg9XbiGhmnx4HevojSwQpL3KIKSuJAQYA04GsmXSNMT0jv5drMAUKdCi3uJ
 0C+zfT+f/Xr6nVup8E7LFqbF1XnL9/w0L3l7AdpyLvqx2HorEZDYBy6TSNwa43A9LBOB
 XTLuB7OZpOZuTb5KZ1QP7PARf8F/FhERT2NKDMOPnJjZuH0VyYsnBiaDbfZZpfd3MzSJ
 LGEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=1MdDGHJ3v97Gewzs4mi2SgVk5SjqgGKkN3GGzAhTMHk=;
 b=Ig2e3BC1HQ7NhtDeFUY93/YftnnqUYO42HTu4GYoymbV6ZXGrlUSdGyIG9dqHOO6cJ
 JJEhEYtMSPYAPkmm3E3L3NfB7G4NKF9pkTRbmAQZGu7klha2jKkFVNuom5KSYDtGODiN
 bivgR/JoK3SeGjXCEI/ZFLc5Jv0ddjnBu3Zb2DgaVxC3xbsRr4todwPdiFzMVlnErcWL
 Km9AwYUeG9YyabwHRScTtSV6w9FcJdrV1eC14PVkGOdtK68TDZvJy5LRtZVfdyzn4Rft
 V93VvWv3TihbFX4wStj8YiYrHIn7gCt8TdO0WvvO3vi+fSUxoyLoweFbJNO+aBDCumjK
 1Ejg==
X-Gm-Message-State: APjAAAVTg3Bg3tcDMVV34Cd526KAhkidREcFmaUvAf/LfihiDKuq0JML
 EZsxeQcEr3C7btTH9R3Fz33efNpr9xDM62f4ZQ9Y2A==
X-Google-Smtp-Source: APXvYqz7GWnHLq9+RE6M3Yb6xG2DPvzlRUPlkD/3MWd/z79DglFDFnxHpuM0kxtcdoGfNWGVRZBY33sQnd5M8zYqUB0=
X-Received: by 2002:adf:e3c7:: with SMTP id k7mr2418315wrm.128.1556730722955; 
 Wed, 01 May 2019 10:12:02 -0700 (PDT)
MIME-Version: 1.0
References: <mhng-cab2c6b9-f623-4286-99a4-61e4b3a58761@palmer-si-x1e>
 <e801ca8b-c8e2-d8b1-d55a-744414db77e3@wdc.com>
 <20190501170053.GG11740@lakrids.cambridge.arm.com>
In-Reply-To: <20190501170053.GG11740@lakrids.cambridge.arm.com>
From: Anup Patel <anup@brainfault.org>
Date: Wed, 1 May 2019 22:41:52 +0530
Message-ID: <CAAhSdy2OuCb6wBrs-O=fTWo0D_CgwTztfV-kMDi=tPmSJhM7og@mail.gmail.com>
Subject: Re: [PATCH] RISC-V: Add an Image header that boot loader can parse.
To: Mark Rutland <mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_101204_678975_3A4E5EB4 
X-CRM114-Status: GOOD (  24.31  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-riscv@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-riscv.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-riscv/>
List-Post: <mailto:linux-riscv@lists.infradead.org>
List-Help: <mailto:linux-riscv-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=subscribe>
Cc: "aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>,
 Palmer Dabbelt <palmer@sifive.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "zong@andestech.com" <zong@andestech.com>, Atish Patra <atish.patra@wdc.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, May 1, 2019 at 10:30 PM Mark Rutland <mark.rutland@arm.com> wrote:
>
> On Mon, Apr 29, 2019 at 10:42:40PM -0700, Atish Patra wrote:
> > On 4/29/19 4:40 PM, Palmer Dabbelt wrote:
> > > On Tue, 23 Apr 2019 16:25:06 PDT (-0700), atish.patra@wdc.com wrote:
> > > > Currently, last stage boot loaders such as U-Boot can accept only
> > > > uImage which is an unnecessary additional step in automating boot flows.
> > > >
> > > > Add a simple image header that boot loaders can parse and directly
> > > > load kernel flat Image. The existing booting methods will continue to
> > > > work as it is.
> > > >
> > > > Tested on both QEMU and HiFive Unleashed using OpenSBI + U-Boot + Linux.
> > > >
> > > > Signed-off-by: Atish Patra <atish.patra@wdc.com>
> > > > ---
> > > >   arch/riscv/include/asm/image.h | 32 ++++++++++++++++++++++++++++++++
> > > >   arch/riscv/kernel/head.S       | 28 ++++++++++++++++++++++++++++
> > > >   2 files changed, 60 insertions(+)
> > > >   create mode 100644 arch/riscv/include/asm/image.h
> > > >
> > > > diff --git a/arch/riscv/include/asm/image.h b/arch/riscv/include/asm/image.h
> > > > new file mode 100644
> > > > index 000000000000..76a7e0d4068a
> > > > --- /dev/null
> > > > +++ b/arch/riscv/include/asm/image.h
> > > > @@ -0,0 +1,32 @@
> > > > +/* SPDX-License-Identifier: GPL-2.0 */
> > > > +
> > > > +#ifndef __ASM_IMAGE_H
> > > > +#define __ASM_IMAGE_H
> > > > +
> > > > +#define RISCV_IMAGE_MAGIC        "RISCV"
> > > > +
> > > > +#ifndef __ASSEMBLY__
> > > > +/*
> > > > + * struct riscv_image_header - riscv kernel image header
> > > > + *
> > > > + * @code0:               Executable code
> > > > + * @code1:               Executable code
> > > > + * @text_offset: Image load offset
> > > > + * @image_size:          Effective Image size
> > > > + * @reserved:            reserved
> > > > + * @magic:               Magic number
> > > > + * @reserved:            reserved
> > > > + */
> > > > +
> > > > +struct riscv_image_header {
> > > > + u32 code0;
> > > > + u32 code1;
> > > > + u64 text_offset;
> > > > + u64 image_size;
> > > > + u64 res1;
> > > > + u64 magic;
> > > > + u32 res2;
> > > > + u32 res3;
> > > > +};
> > >
> > > I don't want to invent our own file format.  Is there a reason we can't just
> > > use something standard?  Off the top of my head I can think of ELF files and
> > > multiboot.
> >
> > Additional header is required to accommodate PE header format. Currently,
> > this is only used for booti command but it will be reused for EFI headers as
> > well. Linux kernel Image can pretend as an EFI application if PE/COFF header
> > is present. This removes the need of an explicit EFI boot loader and EFI
> > firmware can directly load Linux (obviously after EFI stub implementation
> > for RISC-V).
>
> Adding the EFI stub on arm64 required very careful consideration of our
> Image header and the EFI spec, along with the PE/COFF spec.
>
> For example, to be a compliant PE/COFF header, the first two bytes of
> your kernel image need to be "MZ" in ASCII. On arm64 we happened to find
> a valid instruction that we could rely upon that met this requirement...

The "MZ" ASCII (i.e. 0x5a4d) is "li s4,-13" instruction in RISC-V so this
modifies "s4" register which is pretty harmless from Linux RISC-V booting
perspective.

Of course, we should only add "MZ" ASCII in Linux RISC-V image header
when CONFIG_EFI is enabled (just like Linux ARM64).

>
> > > >   __INIT
> > > >   ENTRY(_start)
> > > > + /*
> > > > +  * Image header expected by Linux boot-loaders. The image header data
> > > > +  * structure is described in asm/image.h.
> > > > +  * Do not modify it without modifying the structure and all bootloaders
> > > > +  * that expects this header format!!
> > > > +  */
> > > > + /* jump to start kernel */
> > > > + j _start_kernel
>
> ... but it's not clear to me if this instruction meets that requriement.
>
> I would strongly encourage you to consider what you actually need for a
> compliant EFI header before you set the rest of this ABI in stone.
>
> On arm64 we also had issues with endianness, and I would strongly
> recommend that you define how big/little endian will work ahead of time.
> e.g. whether fields are always in a fixed endianness.

As of now RISC-V is little-endian but if big-endian show-up in-future
then we should consider endianness issue.

Regards,
Anup

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
