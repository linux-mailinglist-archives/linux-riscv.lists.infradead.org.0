Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16C371A0CB8
	for <lists+linux-riscv@lfdr.de>; Tue,  7 Apr 2020 13:18:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=bZAVo9+HNGe4MaXXVl9xUc8s9QKfb+sT+eiPhTxTG5U=; b=rwc92HMmtkhRSyCtEM18adZYY
	7JEEn2zoYzS8PPq32gnBkkUVWFXpwmTQUlM6MRjCISsMkT7ffjK7j1/LnbUw38oAAyIA/sEx8/eFH
	+y0Nc/3/L4LR5kzTyK1zPtDBr+Ul5efKV88je5Idd4j9TD8a6RVcwR5wHD9zHXiZl1oyW+PN+7zrV
	+ByluD90q+onZM4VC4a/fa5XWydZepfEK4aqXaplnILqcKheQJn4KCQCSfXU6ohqo3tYes7Ot4AeC
	pZlTvLWfDPDxGfedE8QPv5M7a0CNoVBUY73h1PytimM+AibD5p207f4DjHZbkRZJzGQBq5cL+jnkN
	hSRgskrsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLmFQ-0006XU-H5; Tue, 07 Apr 2020 11:18:28 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLmFM-0006Wf-TB
 for linux-riscv@lists.infradead.org; Tue, 07 Apr 2020 11:18:26 +0000
Received: by mail-ot1-x341.google.com with SMTP id a49so2644875otc.11
 for <linux-riscv@lists.infradead.org>; Tue, 07 Apr 2020 04:18:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=bZAVo9+HNGe4MaXXVl9xUc8s9QKfb+sT+eiPhTxTG5U=;
 b=XV0GW62ciOqxEETw8wJv6Oth2eGmlatDGNuw+gZqKoXVLI0RdbpFprrdp2eOiMxVtD
 4pZ07DrxYK9YxDqOpTeTPV/ovg3FC1qGZWPmAqadgyfUj9DiBMRlf1qrjEfuo5NJa4zF
 YiDl7Rz8+r88yxSKZFahLRSiIaBbkP0rnwbBDRWnT2qGgt4Fq/8dkdBTtI5kAHhpuw1k
 sn2BV0WhqcRnAEHX6q5fd0AkSnlGIX3Zo9nD+T7cZAbF4cDE2kQtpIjSm3tvNleGCUim
 5YZ7Px3HssWPlVK5TEFw7PXU9LC0kpxLsJ6WrwCw9pJUYLPrkC4keuKxO45HmgQ6Y8iE
 dEiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=bZAVo9+HNGe4MaXXVl9xUc8s9QKfb+sT+eiPhTxTG5U=;
 b=ch/ey4o/i8Zc2X3fxXNJTGHYZmMRMIGs5OKDdG2skCdIBTf1WsTgdOJeuKW2ND8/Pk
 b6ulrtZu/aarhPIs/CI32THcrVQUA1oQj0ZnSXzpxAw0zlCmjH/cHpC3pLY10Nx2YdRJ
 BA2IveMlYjmTtoTaNsEIs2ctULjpjb+Q42wR6VnQ//0S/ZYfg16edHubq2/erDRA4rkF
 GjgWgztgSst9qz8eWrs2X6LP/8qv/71XD74w+IJXONwH+7gcUMBEM4l28a1Kro7pqazg
 9zAqqN5eYRl6MRdqq6mDKCcdt7WrdnNGXZ9bBQjv7L2Di/IAXsLZmmVOijozI8TvuiIR
 GsZQ==
X-Gm-Message-State: AGi0PuabczW67vqapJPuGpu4GclWQFKW1QBD5QclqCTEwvy8HdP4paX9
 ZvFmWIjOPJftymyg3ZwQlMIjfAivEmERjoN8OCGaDA==
X-Google-Smtp-Source: APiQypJLVHhoj0UjmeuSiOx0Fd7uW4nYXpoS78J4JE3Q2ljIgCGZnkHAgJj9uGwfTHEAykkog+Y/elCqe2KnloqIBOk=
X-Received: by 2002:a9d:2002:: with SMTP id n2mr1147351ota.127.1586258303389; 
 Tue, 07 Apr 2020 04:18:23 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1584352425.git.zong.li@sifive.com>
 <8373a9d18958b99b72ed9499786dffe45adf9617.1584352425.git.zong.li@sifive.com>
 <772ee8e0-f5ff-cf40-4e84-3f703953cd08@ghiti.fr>
In-Reply-To: <772ee8e0-f5ff-cf40-4e84-3f703953cd08@ghiti.fr>
From: Zong Li <zong.li@sifive.com>
Date: Tue, 7 Apr 2020 19:18:12 +0800
Message-ID: <CANXhq0p7A2HeyFDRQaw5brzembsFM0-v3kPwQKvFZuyeCm6tsg@mail.gmail.com>
Subject: Re: [PATCH RFC 6/8] riscv/kaslr: clear the original kernel image
To: Alex Ghiti <alex@ghiti.fr>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_041825_481435_A6D6290E 
X-CRM114-Status: GOOD (  24.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

On Tue, Apr 7, 2020 at 1:11 PM Alex Ghiti <alex@ghiti.fr> wrote:
>
> On 3/24/20 3:30 AM, Zong Li wrote:
> > After completing final page table, we can clear original kernel image
> > and remove executable permission.
> >
> > Signed-off-by: Zong Li <zong.li@sifive.com>
> > ---
> >   arch/riscv/include/asm/kaslr.h | 12 ++++++++++++
> >   arch/riscv/kernel/kaslr.c      | 12 ++++++++++++
> >   arch/riscv/mm/init.c           |  6 ++++++
> >   3 files changed, 30 insertions(+)
> >   create mode 100644 arch/riscv/include/asm/kaslr.h
> >
> > diff --git a/arch/riscv/include/asm/kaslr.h b/arch/riscv/include/asm/kaslr.h
> > new file mode 100644
> > index 000000000000..b165fe71dd4a
> > --- /dev/null
> > +++ b/arch/riscv/include/asm/kaslr.h
> > @@ -0,0 +1,12 @@
> > +/* SPDX-License-Identifier: GPL-2.0-only */
> > +/*
> > + * Copyright (C) 2020 SiFive
> > + * Copyright (C) 2020 Zong Li <zong.li@sifive.com>
> > + */
> > +
> > +#ifndef _ASM_RISCV_KASLR_H
> > +#define _ASM_RISCV_KASLR_H
> > +
> > +void __init kaslr_late_init(void);
> > +
> > +#endif /* _ASM_RISCV_KASLR_H */
> > diff --git a/arch/riscv/kernel/kaslr.c b/arch/riscv/kernel/kaslr.c
> > index 59001d6fdfc3..0bd30831c455 100644
> > --- a/arch/riscv/kernel/kaslr.c
> > +++ b/arch/riscv/kernel/kaslr.c
> > @@ -356,6 +356,18 @@ static __init uintptr_t get_random_offset(u64 seed, uintptr_t kernel_size)
> >       return get_legal_offset(random, kernel_size_align);
> >   }
> >
> > +void __init kaslr_late_init(void)
> > +{
> > +     uintptr_t kernel_size;
> > +
> > +     /* Clear original kernel image. */
> > +     if (kaslr_offset) {
> > +             kernel_size = (uintptr_t) _end - (uintptr_t) _start;
>
> kernel_size = (uintptr_t) _end - (uintptr_t) _start + 1;

OK, change it in the next version. Thanks.

>
> > +             memset((void *)PAGE_OFFSET, 0, kernel_size);
>
> I have been thinking again about our discussion regarding PAGE_OFFSET:
> PAGE_OFFSET actually points to the address where the kernel was loaded,
> not the beginning of memory, that's a bit weird.
>
> Just saying that here, because it took me a few seconds to remember that
> and understand what you were doing here.

In non-kaslr case, we load the kernel to PAGE_OFFSET which points to,
so we clear the old kernel image through PAGE_OFFSET here. Certainly,
we could use a symbol to record the start address of the old kernel
image instead of PAGE_OFFSET here. I don't see other architectures
changing PAGE_OFFSET after copying the kernel to the new location in
kaslr. If you think the PAGE_OFFSET needs to be changed, we need to
give another way to make the page table could create the mappings for
the whole memory and memblock/buddy system could see the whole memory
after the kernel moves.

>
> > +             set_memory_nx(PAGE_OFFSET, kaslr_offset >> PAGE_SHIFT);
>
> Again, I certainly missed something but when do you use old kernel
> mappings ?

We use old kernel mappings when KASLR calculates the random offset, at
that moment, kernel is running on old kernel location.

>
> > +     }
> > +}
> > +
> >   uintptr_t __init kaslr_early_init(void)
> >   {
> >       u64 seed;
> > diff --git a/arch/riscv/mm/init.c b/arch/riscv/mm/init.c
> > index 34c6ecf2c599..08e2ce170533 100644
> > --- a/arch/riscv/mm/init.c
> > +++ b/arch/riscv/mm/init.c
> > @@ -15,6 +15,7 @@
> >   #include <linux/set_memory.h>
> >   #ifdef CONFIG_RELOCATABLE
> >   #include <linux/elf.h>
> > +#include <asm/kaslr.h>
> >   #endif
> >
> >   #include <asm/fixmap.h>
> > @@ -649,6 +650,11 @@ static void __init setup_vm_final(void)
> >       /* Move to swapper page table */
> >       csr_write(CSR_SATP, PFN_DOWN(__pa_symbol(swapper_pg_dir)) | SATP_MODE);
> >       local_flush_tlb_all();
> > +
> > +#ifdef CONFIG_RANDOMIZE_BASE
> > +     /* Clear orignial kernel image and set the right permission. */
> > +     kaslr_late_init();
> > +#endif
> >   }
> >
> >   void free_initmem(void)
> >
>
> Alex

