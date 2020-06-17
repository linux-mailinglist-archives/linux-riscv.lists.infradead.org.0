Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 016F61FC63C
	for <lists+linux-riscv@lfdr.de>; Wed, 17 Jun 2020 08:33:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NJtcH+Zl3aW0pdnpXXzWAHOYw4o/s0gIIF2Ozd7IcyU=; b=R/C1KiqlX4VJZr
	051gjo93wiuu5XOCzrTKL0VKMIg5uiomP4wpIwwD+zY9r5tXn83LVy8wJfYpaS6UOA1+W53ZfiCgg
	LZXZTcjPmOqvo86VtGLSA8Woi6A13G2uVSjsIvWrTnXS3HF842qLf6TNNB4XumF20gTjD7nOuPyDW
	o1dq/Q3KlGHImH84fyhdJm80qxfM+SqbjwpdNAhA0xhaeaNecSxmLD7N2IeRJyX4ua0sV33rWXSQw
	cA0TQhTYNEK25ed0ImQzqzPW+KlsB0O7dRNvUzl9FOIL3xLEvlm4y2inQKauSSKtKFsRgZD1Gvebr
	b0u10dFO1TakHWdE2Y7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlRdI-0005Sh-8g; Wed, 17 Jun 2020 06:33:12 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlRdE-0005SL-Fo
 for linux-riscv@lists.infradead.org; Wed, 17 Jun 2020 06:33:09 +0000
Received: by mail-ot1-x344.google.com with SMTP id 97so760932otg.3
 for <linux-riscv@lists.infradead.org>; Tue, 16 Jun 2020 23:33:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=NJtcH+Zl3aW0pdnpXXzWAHOYw4o/s0gIIF2Ozd7IcyU=;
 b=LNtcijz2EjSWn4+QP/vIc9et+pU4V3K/KtVzpo0/xDAIEg34OAnRohHYB+gnWcYpl+
 p50tWaJMauOYRO45kI9FovvB3At2hAT21AUeoDmdYRoFjh2mwZr7pLEEEBxsh7lrKrHi
 8zrceX0dAsvN/u7x3YXiteEfzM09pRIUYX3YDt9uz78/GkgbM9kagnh5sQfG2j+zCspT
 9z5QEVcIDzmoLXnH/1ecg8VaCS1upS/yeoGbaBd9EDaqRQXkDkUWfplC5/8T4QaaSJcc
 Teu/fNE3r9YroPeBzdwJQc0bS7rtCnRnTvodhMtoSQ36KJ3ezJ6KHjEI9HVNoPAybC25
 jM9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=NJtcH+Zl3aW0pdnpXXzWAHOYw4o/s0gIIF2Ozd7IcyU=;
 b=JygMX7V11fs91Cp/ssGCs7+r2R6SVafK8hSGbTQt5eddLEiGfOR0ZOjHwl7yZuxV41
 dd6h4qExvejqYnhGMbdkl5rd7Ky3mrbqvql5MDyxi84PFxwesjImzU0jdQtwCQCa4NwT
 74jc6OFMTiMOUqdLu5I4cAwn4bWXm/ZurnqbFR1Eo904HRwPyiQ9GgPGIdpUZoz+hl8x
 SILRprLl2wQFQ9nx3PolB0CTG7SR8HujAp5mI2p4g/SfsQUZsuiwM1rJsmufnX8huwIi
 Mdevdcj9R8WUXm6EB9RCtwM8byBMRy9QTchioiK4azFOV3p8/M5D73dsRiDxDiVl9A00
 aUWg==
X-Gm-Message-State: AOAM530acCaWvv/1W36yjmypTvu8FoGiwWAKuLhpz+lXrN2ZFMvhTjIV
 PepM288Ob5cMlwZPTvyMcSoZiWGTmFk4TMRUdP0t/w==
X-Google-Smtp-Source: ABdhPJy+di3/n+tbg1hHGYwH6syU/4A2Rg/MjyjcVy0VZ1QQzMYXZaQ0UOJRuIT1I5ZceKhhcvAGPPt2bOee079ZZvs=
X-Received: by 2002:a05:6830:1e59:: with SMTP id
 e25mr5933962otj.127.1592375583098; 
 Tue, 16 Jun 2020 23:33:03 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1592292685.git.zong.li@sifive.com>
 <7faa60aa4a606b5c5c1ae374d82a7eee6c764b38.1592292685.git.zong.li@sifive.com>
 <29425dbf7d54bab2733d28480d3adb61@mailhost.ics.forth.gr>
 <CANXhq0pMutK0+hHchQPOaZLqm9B-=MTKv8Xig4hM71_B=5+2bg@mail.gmail.com>
 <6e6cf39ae6ed91bbe086adbade5786cb@mailhost.ics.forth.gr>
In-Reply-To: <6e6cf39ae6ed91bbe086adbade5786cb@mailhost.ics.forth.gr>
From: Zong Li <zong.li@sifive.com>
Date: Wed, 17 Jun 2020 14:32:51 +0800
Message-ID: <CANXhq0pU=RjO=T39-UDOE-34c=RAg7d8v9xdOPjTtcw8uMnx9A@mail.gmail.com>
Subject: Re: [PATCH 2/2] riscv: Support CONFIG_STRICT_DEVMEM
To: Nick Kossifidis <mick@ics.forth.gr>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_233308_530596_6B463583 
X-CRM114-Status: GOOD (  24.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:344 listed in]
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

On Wed, Jun 17, 2020 at 1:28 PM Nick Kossifidis <mick@ics.forth.gr> wrote:
>
> =CE=A3=CF=84=CE=B9=CF=82 2020-06-17 04:56, Zong Li =CE=AD=CE=B3=CF=81=CE=
=B1=CF=88=CE=B5:
> > On Tue, Jun 16, 2020 at 8:27 PM Nick Kossifidis <mick@ics.forth.gr>
> > wrote:
> >>
> >> =CE=A3=CF=84=CE=B9=CF=82 2020-06-16 10:45, Zong Li =CE=AD=CE=B3=CF=81=
=CE=B1=CF=88=CE=B5:
> >> > Implement the 'devmem_is_allowed()' interface for RISC-V, like some =
of
> >> > other architectures have done. It will be called from
> >> > range_is_allowed()
> >> > when userpsace attempts to access /dev/mem.
> >> >
> >> > Access to exclusive IOMEM and kernel RAM is denied unless
> >> > CONFIG_STRICT_DEVMEM is set to 'n'.
> >> >
> >> > Test it by devmem, the result as follows:
> >> >
> >> >  - CONFIG_STRICT_DEVMEM=3Dy
> >> >       $ devmem 0x10010000
> >> >       0x00000000
> >> >       $ devmem 0x80200000
> >> >       0x0000106F
> >> >
> >> >  - CONFIG_STRICT_DEVMEM is not set
> >> >       $ devmem 0x10010000
> >> >       devmem: mmap: Operation not permitted
> >> >       $ devmem 0x80200000
> >> >       devmem: mmap: Operation not permitted
> >> >
> >> > Signed-off-by: Zong Li <zong.li@sifive.com>
> >> > ---
> >> >  arch/riscv/Kconfig          |  1 +
> >> >  arch/riscv/include/asm/io.h |  2 ++
> >> >  arch/riscv/mm/init.c        | 19 +++++++++++++++++++
> >> >  3 files changed, 22 insertions(+)
> >> >
> >> > diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
> >> > index 128192e14ff2..ffd7841ede4c 100644
> >> > --- a/arch/riscv/Kconfig
> >> > +++ b/arch/riscv/Kconfig
> >> > @@ -16,6 +16,7 @@ config RISCV
> >> >       select ARCH_HAS_BINFMT_FLAT
> >> >       select ARCH_HAS_DEBUG_VIRTUAL if MMU
> >> >       select ARCH_HAS_DEBUG_WX
> >> > +     select ARCH_HAS_DEVMEM_IS_ALLOWED
> >> >       select ARCH_HAS_GCOV_PROFILE_ALL
> >> >       select ARCH_HAS_GIGANTIC_PAGE
> >> >       select ARCH_HAS_MMIOWB
> >> > diff --git a/arch/riscv/include/asm/io.h b/arch/riscv/include/asm/io=
.h
> >> > index 3835c3295dc5..04ac65ab93ce 100644
> >> > --- a/arch/riscv/include/asm/io.h
> >> > +++ b/arch/riscv/include/asm/io.h
> >> > @@ -147,4 +147,6 @@ __io_writes_outs(outs, u64, q, __io_pbr(),
> >> > __io_paw())
> >> >
> >> >  #include <asm-generic/io.h>
> >> >
> >> > +extern int devmem_is_allowed(unsigned long pfn);
> >> > +
> >> >  #endif /* _ASM_RISCV_IO_H */
> >> > diff --git a/arch/riscv/mm/init.c b/arch/riscv/mm/init.c
> >> > index bbe816e03b2f..5e7e61519acc 100644
> >> > --- a/arch/riscv/mm/init.c
> >> > +++ b/arch/riscv/mm/init.c
> >> > @@ -517,6 +517,25 @@ void mark_rodata_ro(void)
> >> >  }
> >> >  #endif
> >> >
> >> > +#ifdef CONFIG_STRICT_DEVMEM
> >> > +#include <linux/ioport.h>
> >> > +/*
> >> > + * devmem_is_allowed() checks to see if /dev/mem access to a certai=
n
> >> > address
> >> > + * is valid. The argument is a physical page number.
> >> > + *
> >> > + * Disallow access to system RAM as well as device-exclusive MMIO
> >> > regions.
> >> > + * This effectively disable read()/write() on /dev/mem.
> >> > + */
> >> > +int devmem_is_allowed(unsigned long pfn)
> >> > +{
> >> > +     if (iomem_is_exclusive(pfn << PAGE_SHIFT))
> >> > +             return 0;
> >> > +     if (!page_is_ram(pfn))
> >> > +             return 1;
> >> > +     return 0;
> >> > +}
> >> > +#endif
> >> > +
> >> >  void __init resource_init(void)
> >> >  {
> >> >       struct memblock_region *region;
> >>
> >> This shouldn't be part of /mm/init.c, it has nothing to do with memory
> >> initialization, I suggest we move it to another file like mmap.c on
> >
> > Let me move it, thanks.
> >
> >> arm/arm64. Also before using iomem_is_exclusive we should probably
> >> also
> >> mark any reserved regions with the no-map attribute as busy|exclusive,
> >> reserved-memory regions are not necessarily part of the main memory so
> >> the page_is_ram check may pass and iomem_is_exclusive won't do any
> >> good.
> >
> > What do you think if we mark the reserved region in
> > kdump_resource_init, and change the kdump_resource_init to a more
> > generic name for initializing resources?
>
> Sounds good to me, I'll work on this within the week. Do you agree with
> marking the no-map reserved-memory regions as exclusive ?

It's OK to me, It seems to me that exclusive is more suitable than
busy when initialization.

