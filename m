Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E36611E39C4
	for <lists+linux-riscv@lfdr.de>; Wed, 27 May 2020 09:03:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=UmrgkNrS7YJyoX//CVVX8i/eCGz9CaA9GDfJeRj6hok=; b=Mdyk/KXrOY5V09+VUyL/313st
	VSrl2YrBv3NwFUrq2sf0T2SJKdmyNXEc+z2/dSAS+2yvw7Po7hw5ADDZJaWb3tCqPtUAtHIH3CmgY
	7XTGhHV1c1wdUIl0EkLJlqrzb8qCE4eFrpI4bShNUtce08tcaUELQL1yHxCqZ9EXeSbAl+kfRB+CZ
	ZVlPwlwk20wpAbWwsnhRyqFFIe3c6ycxVdQZbV2y5bFlyyWGqxgYAd4hF5+3T8r+SsnUroByqkrh4
	fhZeKnor/YZjTt6bs2vv8hzTIo31qRyh44xs6FH0cqkw8u1N5yVNVerCyTsoiNSb5PhRp1NLUr127
	2PuwrGyjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdq5j-00037J-TC; Wed, 27 May 2020 07:03:07 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdq5g-00036o-88; Wed, 27 May 2020 07:03:05 +0000
Received: by mail-oi1-f193.google.com with SMTP id j145so20931957oib.5;
 Wed, 27 May 2020 00:03:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=UmrgkNrS7YJyoX//CVVX8i/eCGz9CaA9GDfJeRj6hok=;
 b=YGQW+jtSlyfD12rn3ejmQBn4B4Qm2W/IixEOH9fkscSemUeCSazCA03iFXHgz77y2i
 xlm/rhznCGzo9SyRtAqAz/bBp8kRPgkcRfVBSPomdw1tEROmx4+9aQJ09Jml3hiOsY1A
 /5QxI7iMiM3RGAEi7DtjkBvkNBhasbOtWpmtWx4rvbpb3kAHK3cNEivNZKaZodZKPXiA
 ek4BiCdagtpg18aXajhq5ioPoEjR/rj68wcjK/HT2UAdsqcFi6DZyOWWF08CYYgbnfeF
 r4ouMAKBX0jVkNtyxmi/miivF1FP5uiEHzxjH9heiNgqkXWuGu+S7cDnSzaLVTA/4rXa
 yVHg==
X-Gm-Message-State: AOAM530ZAEARIur0LjbexSg4WNby3YcuGrUWIABzYipu5aVeIa2A2e3B
 +q2K1n+cVgaOh1XVKRl/7UlVokXreuQwMzp+mbk=
X-Google-Smtp-Source: ABdhPJyJItgq7CbQXJlF6MFLLk/+bu/fSz/XUZ+gwTEqMYOT9P6OwO82+92+P3alNyNfXtW65E6GNWlSoFsc0hwoXsQ=
X-Received: by 2002:a05:6808:1:: with SMTP id u1mr1778697oic.54.1590562983010; 
 Wed, 27 May 2020 00:03:03 -0700 (PDT)
MIME-Version: 1.0
References: <20200515143646.3857579-7-hch@lst.de>
 <20200527043426.3242439-1-natechancellor@gmail.com>
In-Reply-To: <20200527043426.3242439-1-natechancellor@gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 27 May 2020 09:02:51 +0200
Message-ID: <CAMuHMdVSduTOi5bUgF9sLQdGADwyL1+qALWsKgin1TeOLGhAKQ@mail.gmail.com>
Subject: Re: [PATCH] media: omap3isp: Shuffle cacheflush.h and include mm.h
To: Nathan Chancellor <natechancellor@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_000304_288651_07AF27E7 
X-CRM114-Status: GOOD (  19.87  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geert.uytterhoeven[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: "linux-ia64@vger.kernel.org" <linux-ia64@vger.kernel.org>,
 Linux-sh list <linux-sh@vger.kernel.org>, Roman Zippel <zippel@linux-m68k.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux MM <linux-mm@kvack.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 sparclinux <sparclinux@vger.kernel.org>, linux-riscv@lists.infradead.org,
 Christoph Hellwig <hch@lst.de>, Linux-Arch <linux-arch@vger.kernel.org>,
 linux-c6x-dev@linux-c6x.org,
 "open list:QUALCOMM HEXAGON..." <linux-hexagon@vger.kernel.org>,
 the arch/x86 maintainers <x86@kernel.org>,
 "open list:TENSILICA XTENSA PORT \(xtensa\)" <linux-xtensa@linux-xtensa.org>,
 Arnd Bergmann <arnd@arndb.de>, alpha <linux-alpha@vger.kernel.org>,
 linux-um <linux-um@lists.infradead.org>,
 linux-m68k <linux-m68k@lists.linux-m68k.org>,
 Openrisc <openrisc@lists.librecores.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Michal Simek <monstr@monstr.eu>,
 "open list:BROADCOM NVRAM DRIVER" <linux-mips@vger.kernel.org>,
 Jessica Yu <jeyu@kernel.org>, Linux FS Devel <linux-fsdevel@vger.kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi Nathan,

CC Laurent

On Wed, May 27, 2020 at 6:37 AM Nathan Chancellor
<natechancellor@gmail.com> wrote:
> After mm.h was removed from the asm-generic version of cacheflush.h,
> s390 allyesconfig shows several warnings of the following nature:
>
> In file included from ./arch/s390/include/generated/asm/cacheflush.h:1,
>                  from drivers/media/platform/omap3isp/isp.c:42:
> ./include/asm-generic/cacheflush.h:16:42: warning: 'struct mm_struct'
> declared inside parameter list will not be visible outside of this
> definition or declaration
>
> cacheflush.h does not include mm.h nor does it include any forward
> declaration of these structures hence the warning. To avoid this,
> include mm.h explicitly in this file and shuffle cacheflush.h below it.
>
> Fixes: 19c0054597a0 ("asm-generic: don't include <linux/mm.h> in cacheflush.h")
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>

Thanks for your patch!

> I am aware the fixes tag is kind of irrelevant because that SHA will
> change in the next linux-next revision and this will probably get folded
> into the original patch anyways but still.
>
> The other solution would be to add forward declarations of these structs
> to the top of cacheflush.h, I just chose to do what Christoph did in the
> original patch. I am happy to do that instead if you all feel that is
> better.

That actually looks like a better solution to me, as it would address the
problem for all users.

>  drivers/media/platform/omap3isp/isp.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/media/platform/omap3isp/isp.c b/drivers/media/platform/omap3isp/isp.c
> index a4ee6b86663e..54106a768e54 100644
> --- a/drivers/media/platform/omap3isp/isp.c
> +++ b/drivers/media/platform/omap3isp/isp.c
> @@ -39,8 +39,6 @@
>   *     Troy Laramy <t-laramy@ti.com>
>   */
>
> -#include <asm/cacheflush.h>
> -
>  #include <linux/clk.h>
>  #include <linux/clkdev.h>
>  #include <linux/delay.h>
> @@ -49,6 +47,7 @@
>  #include <linux/i2c.h>
>  #include <linux/interrupt.h>
>  #include <linux/mfd/syscon.h>
> +#include <linux/mm.h>
>  #include <linux/module.h>
>  #include <linux/omap-iommu.h>
>  #include <linux/platform_device.h>
> @@ -58,6 +57,8 @@
>  #include <linux/sched.h>
>  #include <linux/vmalloc.h>
>
> +#include <asm/cacheflush.h>
> +
>  #ifdef CONFIG_ARM_DMA_USE_IOMMU
>  #include <asm/dma-iommu.h>
>  #endif

Why does this file need <asm/cacheflush.h> at all?
It doesn't call any of the flush_*() functions, and seems to compile fine
without (on arm32).

Perhaps it was included at the top intentionally, to override the definitions
of copy_{to,from}_user_page()? Fortunately that doesn't seem to be the
case, from a quick look at the assembler output.

So let's just remove the #include instead?

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

