Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58AF010BB3
	for <lists+linux-riscv@lfdr.de>; Wed,  1 May 2019 19:02:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S5o65qVXgMLy+2o5yQIjtJEVGs/Vj3bcLwXcHOM7t2Y=; b=dcbajF5x6aCTE2
	nc2oTCozYUfQmtpuoG781LbX7VSr+U6mTzWv8trBN3amtC/IJa5BsgS4EaPIOdiI/7FDymq7/Oti6
	gqLnnZP1s6nDdP60Qf/xynFCT8JQj05dMYO8BjX/MSzqAPs45IGvKRVRxPYgi2sc2i4Zp1oDasCz7
	vS4qvY657P6r8GcwhhHWh6wgm+HfkESuqgqcRq5JUicX5sdZ3hm4BKVLcps2WHv3L1LSutEANqgtA
	Hta9EHIoAhZnR9qMARhbs6xwh6/V/Kpi0xhWPpJa4st9JPoO/CFmdht9zqH2cy2vlPWOiByiwZnog
	5JLitnHZyu+46HCvESqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLsd5-0000q9-TH; Wed, 01 May 2019 17:02:47 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLsd2-0000pM-Je
 for linux-riscv@lists.infradead.org; Wed, 01 May 2019 17:02:46 +0000
Received: by mail-wr1-x444.google.com with SMTP id c5so25241560wrs.11
 for <linux-riscv@lists.infradead.org>; Wed, 01 May 2019 10:02:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=a+7UN/TvPGOY1J7TOpoWrixPjZV5XzV6c6DylKQU1Cg=;
 b=LUHd8VydBhmf7vhYTUKvS6O4NXb+ua7oBI/PzRnYWGn6GIN1Sg3NfFmQ3Rw5nuMnEx
 r6nuE2m6mntrxXnQ1NQb/j//9ulTW8sFj+mE4fppjkOKtpkDAHW96TCuKX9NQUMKmats
 Vc2l1T/ZRi2FU+0qXSAhEh2CfW1NV9YmiilUuO7lYxp+TchuFbgXQhIstqfCu/vJVlJH
 tDu09p5T2ff7n/nGGOQreLv2zX6ugsvcrEwuwwVOTE0MiMHKdb2zY1nK/PpeF+VBycVY
 JiHPv85Y5SpHDaCEC/jh5uGlP5JCJYaUQKXwzFnCPSbBHVTpFqeaO1RuSLG90Cl39v8W
 gpcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=a+7UN/TvPGOY1J7TOpoWrixPjZV5XzV6c6DylKQU1Cg=;
 b=oK6OGJlYafPGcYsIlpRIxeJO+kqQfCIAjxQo+z9aUvFVgRcxqx+LQhl03vIXiUB2Bu
 l3BdCpudhRRPrHKahSy9o7iAMmxWAoNhFbFrYuO1izgwVX2cFQAUFdi5lcb1LxUUaMcL
 r5VsPvzHUy0mo3svF9gHILS1+NXUazr4E2POPT05XX01PEH9QyQBHZLtAIj+m7y2zSDG
 OMMhPu6WGNIlGm16j25wb7JHW04Jck8pukmi+99w0AorMGnU20huFQSFW3uIUc6Pz/nk
 88mTG8fHpicVcVv3HSXXrZ0+oZgHmlERCh6DlFU+bq09Na7TElbojPg4QSet7oYzDi6C
 qM5A==
X-Gm-Message-State: APjAAAWRDm2hn1YKSuHrw/duIVMeSFzPLHm7rWgtRbr6TopSpPHHamRL
 SX/2Q58J6ssIkaRbHF7ymPTUZypJ7Kmv3vLZPEbSzQ==
X-Google-Smtp-Source: APXvYqws5lEa+Yj446nSmR206A9Wct0CycB4RSuaA4Ezp6RqWz6ze9dLA7rKLlOXI1ea3VYrZpChweTo+2lF976AZgc=
X-Received: by 2002:adf:e8c4:: with SMTP id k4mr10606348wrn.9.1556730161137;
 Wed, 01 May 2019 10:02:41 -0700 (PDT)
MIME-Version: 1.0
References: <mhng-cab2c6b9-f623-4286-99a4-61e4b3a58761@palmer-si-x1e>
 <e801ca8b-c8e2-d8b1-d55a-744414db77e3@wdc.com>
 <20190501164355.ce76wjmq6sszrf5g@excalibur.cnev.de>
In-Reply-To: <20190501164355.ce76wjmq6sszrf5g@excalibur.cnev.de>
From: Anup Patel <anup@brainfault.org>
Date: Wed, 1 May 2019 22:32:30 +0530
Message-ID: <CAAhSdy3kjqDahp13gQa0g9GF4gKPQeVgSakZzuP0uYwkCrvdAg@mail.gmail.com>
Subject: Re: [PATCH] RISC-V: Add an Image header that boot loader can parse.
To: Karsten Merker <merker@debian.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_100244_696272_6523D88D 
X-CRM114-Status: GOOD (  25.33  )
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

On Wed, May 1, 2019 at 10:14 PM Karsten Merker <merker@debian.org> wrote:
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
> >
> > ARM64 follows the similar header format as well.
> > https://www.kernel.org/doc/Documentation/arm64/booting.txt
>
> Hello Atish,
>
> the arm64 header looks a bit different (quoted from the
> aforementioned URL):
>
>   u32 code0;                    /* Executable code */
>   u32 code1;                    /* Executable code */
>   u64 text_offset;              /* Image load offset, little endian */
>   u64 image_size;               /* Effective Image size, little endian */
>   u64 flags;                    /* kernel flags, little endian */
>   u64 res2      = 0;            /* reserved */
>   u64 res3      = 0;            /* reserved */
>   u64 res4      = 0;            /* reserved */
>   u32 magic     = 0x644d5241;   /* Magic number, little endian, "ARM\x64" */
>   u32 res5;                     /* reserved (used for PE COFF offset) */
>
> What I am unclear about is in which ways a RISC-V PE/COFF header
> differs from an arm64 one as the arm64 struct is longer than your
> RISC-V header and for arm64 the PE offset field is in the last
> field, i.e. outside of the area covered by your RISC-V structure
> definition.  Can you perhaps explain this part in a bit more
> detail or does anybody else have a pointer to a specification of
> the RISC-V PE/COFF header format (I have found a lot of documents
> about COFF in general, but nothing specific to RISC-V).

The only difference compared to ARM64 is the values of code0, code1
and res5 fields.

As-per PE/COFF, the 32bit value at offset 0x3c tells us offset of PE/COFF
header in image.

For more details refer,
https://en.wikipedia.org/wiki/Portable_Executable
https://en.wikipedia.org/wiki/Portable_Executable#/media/File:Portable_Executable_32_bit_Structure_in_SVG_fixed.svg

For both ARM64 header and RISC-V image header, is actually the
"DOS header" part of PE/COFF format.

This patch only adds "DOS header" part of PE/COFF format. Rest of
the PE/COFF header will be added when add EFI support to Linux
RISC-V kernel.

Regards,
Anup

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
