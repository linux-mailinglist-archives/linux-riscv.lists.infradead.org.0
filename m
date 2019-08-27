Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61D639DBB2
	for <lists+linux-riscv@lfdr.de>; Tue, 27 Aug 2019 04:41:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QPez27JaE304tgp0CMPiR+kQhl2tx12wM+YqT1dEqK8=; b=tp9ATqDE8T9a/X
	AR5zdJ4jnIIxLnSNvMXQmjPpuULhXANFOO2Hvs8xGz6nBRdHKPMU1zmbejB7JZeXFa2X/YHvvvdxF
	2MSzt+MtdMPN5gu11+Ek/BxFCw5Nu9EG4zmAq/Ot2Vy2Us9CbqiTu6Bj27ocfxsUCurHpbwE57sGf
	lMqM1ouM6cUGdRY36zFDMKh/OpOrBKLNsgwrKEkMUJfW69iagXzh7vNTf0IHqYYGHT/ePoPQsNjYd
	DRtknFAf8QvYybly1teauQa7acrSTF9mjIKZWMKQQ0+PD3QRO703ma5lJPzasv+2XOq8Y9fmCmfaB
	XeNKxXSgEHy3wDrWkdIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2RQG-0000NX-CQ; Tue, 27 Aug 2019 02:41:28 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2RQB-0000Mr-Qy
 for linux-riscv@lists.infradead.org; Tue, 27 Aug 2019 02:41:25 +0000
Received: by mail-wr1-x442.google.com with SMTP id k2so17168802wrq.2
 for <linux-riscv@lists.infradead.org>; Mon, 26 Aug 2019 19:41:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=uLwjc8V9DcEQY4mgZxJcyca8OE/+OW2feKF41o89L9E=;
 b=e0COSR2awS2c34nGPmOzHdSQqzwKuBkOtldXhyFm+hlBohN+AliT8Y9MapnQZVunGN
 KdE5Sp5JvKCgpCgg3zc5NCSe5nxNrlEmqv4zR+tiK7jAPu7iRtpTkn3Mi+YqzN9QOldX
 EzVeJsiC+kaxR/kUkgNLesX6t7bxP/YXS/CSTKvrr172FYRpSPVOK27NB3g1Cf6/fbqv
 y+SiIc5pNOSQW2BTNhG/GJJFDE/uH2JWd5BMl0coLsHMVygd9TH7Ii4RrNVzCXNFNLHY
 aiT82Y+o7l9RIj8Sm14VHYNMG2boiajMHZJzY1KqjmBAWY3aPzmIBdY9zXuc1StuuY1m
 e8sA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=uLwjc8V9DcEQY4mgZxJcyca8OE/+OW2feKF41o89L9E=;
 b=OXwuCCBwQoFJhzi8mXiliQNTZF9akEfRJUzL1+8B8zHYCYlsquRK1kGux4Kepbp6HR
 XE1AjIoQB4N/EtWY9Z4EApZI5JZnCvHghkWu+3CocyyYNaYtNrVYzAI/wHFVEdxNKpOx
 Ry2Rxla5qRJs+gMMcz4otBiJ8Xhx/xu3lnMjMJTpYMOijS6aPre8RrVDJIkkzFU2Werh
 15K3VUSF8ZB5HQ+QEzlueyUICPS4v3BRCy2Nt0wQNkWp8clQAXiaxche8jLsEq1XpR5k
 7phpkrcm31r+wjvgN/A4navqCwzy6eYbf9JgA4jUaqMUoBfjv79hZjyjERhqltr2+FCd
 NrXw==
X-Gm-Message-State: APjAAAXGJvBkuDwymUdfnZZOaj6FkveqNc62vaWWnw/hhJVi5Y0ZFczk
 F/77Dk580FSufopYlVx27vhQE1jVd3xl04hBKg9jHQ==
X-Google-Smtp-Source: APXvYqyj4Aatv69dlAadiIjvQkKrFOmtKVUEAXTrY26bsCZQniXxKF6YEvWkiWspo7D4QwkGrRITwKtofHpQlj7uwuY=
X-Received: by 2002:adf:f641:: with SMTP id x1mr26688501wrp.179.1566873681968; 
 Mon, 26 Aug 2019 19:41:21 -0700 (PDT)
MIME-Version: 1.0
References: <20190819051345.81097-1-anup.patel@wdc.com>
 <alpine.DEB.2.21.9999.1908261704500.10109@viisi.sifive.com>
In-Reply-To: <alpine.DEB.2.21.9999.1908261704500.10109@viisi.sifive.com>
From: Anup Patel <anup@brainfault.org>
Date: Tue, 27 Aug 2019 08:11:10 +0530
Message-ID: <CAAhSdy0XALGpc-bCuO7njiBT3p-YvLqhMnRTRu4Hd4gMKeQMTw@mail.gmail.com>
Subject: Re: [PATCH v2] RISC-V: Fix FIXMAP area corruption on RV32 systems
To: Paul Walmsley <paul.walmsley@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_194123_897079_751BFD09 
X-CRM114-Status: GOOD (  26.16  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Palmer Dabbelt <palmer@sifive.com>, Anup Patel <Anup.Patel@wdc.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Christoph Hellwig <hch@infradead.org>, Atish Patra <Atish.Patra@wdc.com>,
 Alistair Francis <Alistair.Francis@wdc.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, Aug 27, 2019 at 5:43 AM Paul Walmsley <paul.walmsley@sifive.com> wrote:
>
> Hello Anup,
>
> On Mon, 19 Aug 2019, Anup Patel wrote:
>
> > Currently, various virtual memory areas of Linux RISC-V are organized
> > in increasing order of their virtual addresses is as follows:
> > 1. User space area (This is lowest area and starts at 0x0)
> > 2. FIXMAP area
> > 3. VMALLOC area
> > 4. Kernel area (This is highest area and starts at PAGE_OFFSET)
> >
> > The maximum size of user space aread is represented by TASK_SIZE.
> >
> > On RV32 systems, TASK_SIZE is defined as VMALLOC_START which causes the
> > user space area to overlap the FIXMAP area. This allows user space apps
> > to potentially corrupt the FIXMAP area and kernel OF APIs will crash
> > whenever they access corrupted FDT in the FIXMAP area.
> >
> > On RV64 systems, TASK_SIZE is set to fixed 256GB and no other areas
> > happen to overlap so we don't see any FIXMAP area corruptions.
> >
> > This patch fixes FIXMAP area corruption on RV32 systems by setting
> > TASK_SIZE to FIXADDR_START.
>
> This part -- the TASK_SIZE change -- makes sense to me.
>
> However, the patch also changes FIXADDR_SIZE to be defined in terms of
> page table-related constants.  Previously, FIXADDR_SIZE was based on
> __end_of_fixed_addresses, as it is for most other architectures. The part
> of the patch that changes FIXADDR_SIZE seems unrelated to the actual fix.
>
> If that's indeed the case -- that the change to FIXADDR_SIZE is unrelated
> from the fix -- could you please split that into a separate patch, with a
> description of the rationale?  I think I understand why you're proposing
> it, but it seems odd to explicitly connect it to page table-related
> constants, rather than the contents of "enum fixed_addresses", and I'm
> reluctant to merge that part of this patch without a bit more discussion.

The FIXADDR_SIZE change is related to the TASK_SIZE requirement and
it is not a separate change because:

1. TASK_SIZE must be evenly divisible by PGDIR_SIZE. The FIXADDR_START
is defined as (FIXADDR_TOP - FIXADDR_SIZE). The original FIXADDR_SIZE
defined in-terms of __end_of_fixed_addresses is not a multiple of PGDIR_SIZE
hence it makes sense to make FIXADDR_SIZE as PGDIR_SIZE.

2. Let say we ignore point1 above then still we cannot continue to express
FIXADDR_SIZE in-terms of __end_of_fixed_addresses because of cyclic
header dependency where asm/fixmap.h includes asm/pgtable.h and
__end_of_fixed_addresses is defined in asm/fixmap.h. We certainly need
to move FIXADDR_TOP, FIXADDR_START, and FIXADDR_SIZE to
asm/pgtable.h so that we can express TASK_SIZE as FIXADDR_START
for RV32. If we don't simplify FIXADDR_SIZE then it will result in compile
errors.

Regards,
Anup

>
>
> > We also move FIXADDR_TOP, FIXADDR_SIZE, and FIXADDR_START defines to
> > asm/pgtable.h so that we can avoid cyclic header includes.
> >
> > Signed-off-by: Anup Patel <anup.patel@wdc.com>
> > Tested-by: Alistair Francis <alistair.francis@wdc.com>
> > Reviewed-by: Christoph Hellwig <hch@lst.de>
> > ---
> > Changes since v1:
> > - Drop braces from "#define FIXADDR_TOP"
> > ---
> >  arch/riscv/include/asm/fixmap.h  |  4 ----
> >  arch/riscv/include/asm/pgtable.h | 12 ++++++++++--
> >  2 files changed, 10 insertions(+), 6 deletions(-)
> >
> > diff --git a/arch/riscv/include/asm/fixmap.h b/arch/riscv/include/asm/fixmap.h
> > index 9c66033c3a54..161f28d04a07 100644
> > --- a/arch/riscv/include/asm/fixmap.h
> > +++ b/arch/riscv/include/asm/fixmap.h
> > @@ -30,10 +30,6 @@ enum fixed_addresses {
> >       __end_of_fixed_addresses
> >  };
> >
> > -#define FIXADDR_SIZE         (__end_of_fixed_addresses * PAGE_SIZE)
> > -#define FIXADDR_TOP          (VMALLOC_START)
> > -#define FIXADDR_START                (FIXADDR_TOP - FIXADDR_SIZE)
> > -
> >  #define FIXMAP_PAGE_IO               PAGE_KERNEL
> >
> >  #define __early_set_fixmap   __set_fixmap
> > diff --git a/arch/riscv/include/asm/pgtable.h b/arch/riscv/include/asm/pgtable.h
> > index a364aba23d55..c24a083b3e12 100644
> > --- a/arch/riscv/include/asm/pgtable.h
> > +++ b/arch/riscv/include/asm/pgtable.h
> > @@ -420,14 +420,22 @@ static inline void pgtable_cache_init(void)
> >  #define VMALLOC_END      (PAGE_OFFSET - 1)
> >  #define VMALLOC_START    (PAGE_OFFSET - VMALLOC_SIZE)
> >
> > +#define FIXADDR_TOP      VMALLOC_START
> > +#ifdef CONFIG_64BIT
> > +#define FIXADDR_SIZE     PMD_SIZE
> > +#else
> > +#define FIXADDR_SIZE     PGDIR_SIZE
> > +#endif
> > +#define FIXADDR_START    (FIXADDR_TOP - FIXADDR_SIZE)
> > +
> >  /*
> > - * Task size is 0x4000000000 for RV64 or 0xb800000 for RV32.
> > + * Task size is 0x4000000000 for RV64 or 0x9fc00000 for RV32.
> >   * Note that PGDIR_SIZE must evenly divide TASK_SIZE.
> >   */
> >  #ifdef CONFIG_64BIT
> >  #define TASK_SIZE (PGDIR_SIZE * PTRS_PER_PGD / 2)
> >  #else
> > -#define TASK_SIZE VMALLOC_START
> > +#define TASK_SIZE FIXADDR_START
> >  #endif
> >
> >  #include <asm-generic/pgtable.h>
> > --
> > 2.17.1
> >
>
>
> - Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
