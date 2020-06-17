Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC89D1FC3E9
	for <lists+linux-riscv@lfdr.de>; Wed, 17 Jun 2020 03:56:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hueFxKmaWgxaYnZqPYZLcFE7MzSKwI+qlPQx/I7HVg8=; b=srKQRl9XUb4HZF
	OT3rI290p2EJyfmSJiuKjr8Zgf9Zp6e/s9CVMx7trHiRFRoEzZSISeSGQvE3mBVTuzczfCauJcVEn
	MTRa2sEx+dclQQpDYQx7+lqVIKLboRaUKeGRhQ/sBPs5YD/rNlMiM2GpVBT5CKvJBRWqnGPXAhzBw
	xxyKGvGNqYLyncStWw19kN+8QLL0f9xu1cFlgawSbDW0XpiBGSPaBot4YQZ+jenpKc2w52oLKDi5D
	V4czg5Jmhw5IpBmX5LG3WpAJgLJFV9XNXEjLdUTZbibarzDU0ZvcyqUg31uobyxEj8w+Oc/cBVHgy
	2pCuydOppUZI1cpE1l5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlNJM-00050K-0m; Wed, 17 Jun 2020 01:56:20 +0000
Received: from mail-oo1-xc43.google.com ([2607:f8b0:4864:20::c43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlNJI-0004zc-H9
 for linux-riscv@lists.infradead.org; Wed, 17 Jun 2020 01:56:17 +0000
Received: by mail-oo1-xc43.google.com with SMTP id i4so73767ooj.10
 for <linux-riscv@lists.infradead.org>; Tue, 16 Jun 2020 18:56:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=hueFxKmaWgxaYnZqPYZLcFE7MzSKwI+qlPQx/I7HVg8=;
 b=DjR6KJBs0GVk8e3e6mESOLOxYZDnPhsh9skuYIeX8ZMTFWprcSBL0ilfas5wRvvGLf
 9SPKOWSDYJvLUCuMSHgpHSEim4qmhyucox1YZe42p8+ta0zSOD8f0upRKZb+IhxeHz5O
 QQDmBu7o4VhdP137MfxBcnxySdk7lOXwp0J4Bilgxqsy8FfUVXtO+11ht0BukTuBH9Dx
 hVLRxUJ+ka3ioCyBupVQBdg1nOrg9AkFRuyYzSXcxuM8TC0oKQfm+SdQgLu9x/hKYujV
 yqRhVefqCosdqNGYYnKUDk7iKYsiBIpE7IBWpOBwtEuYsENBQeynNMhJO03AZAqrD3M6
 XyLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=hueFxKmaWgxaYnZqPYZLcFE7MzSKwI+qlPQx/I7HVg8=;
 b=Y1vrtAaUipQzLAcTfXRz8aXJ/E/jczzgdsSMIk8VMvBdxRToExzrYSgnfnKmkmQwFk
 1kpOH+1T6yhGVEeNrwpn9rgiaCXFvAVji4RS5pJPrX+6iX+XdIuyi5TWpxGZPSphVnKT
 +Y7T8ZsCEuFk2qBk42tfDgbgLK1YMdgRFEN3OucapdvCf2DlP2kLh2oJMPlHBlWbXvEO
 tm03t6NDqrJK1ODcD3aelbM7Mv77w00xgwNz3P2nG84PuHtLqIAtdB5Gpi5uSVc3gsMC
 XMSQCG4IFWkwo82EOzpD2LBqL2Jtxm1upi58oNHi4aGvycx5uain5E9Mj2T4Y7C0w6NY
 +XZQ==
X-Gm-Message-State: AOAM5312Kr+QtHvuRaEmnPgWSrMbjFpkWGMRaE6iIXHyvA9bdL+97ILV
 Jq2dZkEqUo4ht7wmj8A6oYwBZfwYU/6TzRgMJMJGxQ==
X-Google-Smtp-Source: ABdhPJzozlgjeoLYevl9MryJG4sq1soVP3JLYrEpk+qUP02FK3EsjTRUIoFkm7eU7n4GJ9PMzlVSGLCVbv8hYmT+AzI=
X-Received: by 2002:a4a:a10e:: with SMTP id i14mr4890142ool.68.1592358975167; 
 Tue, 16 Jun 2020 18:56:15 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1592292685.git.zong.li@sifive.com>
 <7faa60aa4a606b5c5c1ae374d82a7eee6c764b38.1592292685.git.zong.li@sifive.com>
 <29425dbf7d54bab2733d28480d3adb61@mailhost.ics.forth.gr>
In-Reply-To: <29425dbf7d54bab2733d28480d3adb61@mailhost.ics.forth.gr>
From: Zong Li <zong.li@sifive.com>
Date: Wed, 17 Jun 2020 09:56:04 +0800
Message-ID: <CANXhq0pMutK0+hHchQPOaZLqm9B-=MTKv8Xig4hM71_B=5+2bg@mail.gmail.com>
Subject: Re: [PATCH 2/2] riscv: Support CONFIG_STRICT_DEVMEM
To: Nick Kossifidis <mick@ics.forth.gr>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_185616_607925_A12AC7E2 
X-CRM114-Status: GOOD (  20.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-riscv <linux-riscv@lists.infradead.org>,
 Palmer Dabbelt <palmer@dabbelt.com>,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 Paul Walmsley <paul.walmsley@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, Jun 16, 2020 at 8:27 PM Nick Kossifidis <mick@ics.forth.gr> wrote:
>
> =CE=A3=CF=84=CE=B9=CF=82 2020-06-16 10:45, Zong Li =CE=AD=CE=B3=CF=81=CE=
=B1=CF=88=CE=B5:
> > Implement the 'devmem_is_allowed()' interface for RISC-V, like some of
> > other architectures have done. It will be called from
> > range_is_allowed()
> > when userpsace attempts to access /dev/mem.
> >
> > Access to exclusive IOMEM and kernel RAM is denied unless
> > CONFIG_STRICT_DEVMEM is set to 'n'.
> >
> > Test it by devmem, the result as follows:
> >
> >  - CONFIG_STRICT_DEVMEM=3Dy
> >       $ devmem 0x10010000
> >       0x00000000
> >       $ devmem 0x80200000
> >       0x0000106F
> >
> >  - CONFIG_STRICT_DEVMEM is not set
> >       $ devmem 0x10010000
> >       devmem: mmap: Operation not permitted
> >       $ devmem 0x80200000
> >       devmem: mmap: Operation not permitted
> >
> > Signed-off-by: Zong Li <zong.li@sifive.com>
> > ---
> >  arch/riscv/Kconfig          |  1 +
> >  arch/riscv/include/asm/io.h |  2 ++
> >  arch/riscv/mm/init.c        | 19 +++++++++++++++++++
> >  3 files changed, 22 insertions(+)
> >
> > diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
> > index 128192e14ff2..ffd7841ede4c 100644
> > --- a/arch/riscv/Kconfig
> > +++ b/arch/riscv/Kconfig
> > @@ -16,6 +16,7 @@ config RISCV
> >       select ARCH_HAS_BINFMT_FLAT
> >       select ARCH_HAS_DEBUG_VIRTUAL if MMU
> >       select ARCH_HAS_DEBUG_WX
> > +     select ARCH_HAS_DEVMEM_IS_ALLOWED
> >       select ARCH_HAS_GCOV_PROFILE_ALL
> >       select ARCH_HAS_GIGANTIC_PAGE
> >       select ARCH_HAS_MMIOWB
> > diff --git a/arch/riscv/include/asm/io.h b/arch/riscv/include/asm/io.h
> > index 3835c3295dc5..04ac65ab93ce 100644
> > --- a/arch/riscv/include/asm/io.h
> > +++ b/arch/riscv/include/asm/io.h
> > @@ -147,4 +147,6 @@ __io_writes_outs(outs, u64, q, __io_pbr(),
> > __io_paw())
> >
> >  #include <asm-generic/io.h>
> >
> > +extern int devmem_is_allowed(unsigned long pfn);
> > +
> >  #endif /* _ASM_RISCV_IO_H */
> > diff --git a/arch/riscv/mm/init.c b/arch/riscv/mm/init.c
> > index bbe816e03b2f..5e7e61519acc 100644
> > --- a/arch/riscv/mm/init.c
> > +++ b/arch/riscv/mm/init.c
> > @@ -517,6 +517,25 @@ void mark_rodata_ro(void)
> >  }
> >  #endif
> >
> > +#ifdef CONFIG_STRICT_DEVMEM
> > +#include <linux/ioport.h>
> > +/*
> > + * devmem_is_allowed() checks to see if /dev/mem access to a certain
> > address
> > + * is valid. The argument is a physical page number.
> > + *
> > + * Disallow access to system RAM as well as device-exclusive MMIO
> > regions.
> > + * This effectively disable read()/write() on /dev/mem.
> > + */
> > +int devmem_is_allowed(unsigned long pfn)
> > +{
> > +     if (iomem_is_exclusive(pfn << PAGE_SHIFT))
> > +             return 0;
> > +     if (!page_is_ram(pfn))
> > +             return 1;
> > +     return 0;
> > +}
> > +#endif
> > +
> >  void __init resource_init(void)
> >  {
> >       struct memblock_region *region;
>
> This shouldn't be part of /mm/init.c, it has nothing to do with memory
> initialization, I suggest we move it to another file like mmap.c on

Let me move it, thanks.

> arm/arm64. Also before using iomem_is_exclusive we should probably also
> mark any reserved regions with the no-map attribute as busy|exclusive,
> reserved-memory regions are not necessarily part of the main memory so
> the page_is_ram check may pass and iomem_is_exclusive won't do any good.

What do you think if we mark the reserved region in
kdump_resource_init, and change the kdump_resource_init to a more
generic name for initializing resources?

