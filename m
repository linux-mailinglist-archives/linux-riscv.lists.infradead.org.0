Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC62C179E8B
	for <lists+linux-riscv@lfdr.de>; Thu,  5 Mar 2020 05:08:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F4nT6mKBap4vm5qfP7xfH33JMJmzl6MC92A1Bml8TEo=; b=bNg4cOPI8Q0p2y
	9ltYczIkvIiU+FE/K/ZZVCgrYthD3afkDBmWMbsU/CQ3M9ewMMx5Mg59aPXM+72B79kaqis/cu88c
	QGN3nHbiueynGpk2mTOugjIb4JKbExmUN5uo1PQ3T8YPvnkxU94VO53kITmRBpUEXmO4157sh2KYC
	LNnr4f9UCetCbrgUOQHBcd5kCl17sZef4T3RIDsjn18fzFouPL2YiMc/SHH5erfzIHnvdAe0+xbzg
	xeCnr0vP+jCg2RraSAgo7w24y+LdgrP6oIVjdsNN7CmP58mI1GnBvKI/u4qTbXhQNcbh9CSnhjgur
	h1XcjEDgMLd2XqDPqafg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9hoL-0003Ho-LG; Thu, 05 Mar 2020 04:08:37 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9hoI-0003HQ-0l
 for linux-riscv@lists.infradead.org; Thu, 05 Mar 2020 04:08:35 +0000
Received: by mail-lj1-x244.google.com with SMTP id q23so4481971ljm.4
 for <linux-riscv@lists.infradead.org>; Wed, 04 Mar 2020 20:08:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=F4nT6mKBap4vm5qfP7xfH33JMJmzl6MC92A1Bml8TEo=;
 b=c7jhmR9y1Yu0lHVpa1e0nV77xQLpcwnleBw20sQX8t6jCKhYXNQnGg3eYuuOA/exXx
 XQIVyt/p+ZbVet1xmli9wXneWk/WepDtRU2hs2c3ur0QQPbYRDhZ3hXsqiK5CIkLTZ3G
 Qi0w80RjzQ2B6Qu7bCpoB7Aw9Iw2MwpodQw+I0AkB2XTpKtwfJ8veFo7x4dM8+moFRTJ
 i94lXSAIkgl0vOKPBIY+0ozQ9hABiJtSBLV9BYEglbK/H6paxzfHr+y540/4FrFF5jel
 6KuTz/lVppDq2wL0j/kUk1W4rt8btrPjIcfnMrYw6tDpSfuiBm4+3CFxysTrqe2e/4tU
 ZtrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=F4nT6mKBap4vm5qfP7xfH33JMJmzl6MC92A1Bml8TEo=;
 b=UyQnZQK0wEKXgDdFo9RtY9733VmXrQ6ov221MVOrkAqd1rrPzElwg4ltf7TrDSj+Zr
 GhVC4ULywvD77FKVK9YUo/Y2qrsWodFqZBZbauXEtfIG1T6yF2NDSRRihwOlJxk6FIF8
 NY8052TQCCvtSg5jDhTQV2dzCapvAjxx4AuB6uGDmoLAYptZYQI0zEH6H9oumvwttaF6
 7cFizqvvsrAevZpu34KELEFIY7KUIRpjwEU8DLpF/UXi3PsuvpdOwJ7t9vaX0/pMMjAN
 Js5iIK/GVPODDULBOLvwLGnLR1obDXSe/5sOe/Y7dkv9gfCiUdYeQbaLVT0KgUy2EPEi
 q2Gw==
X-Gm-Message-State: ANhLgQ0XHMLutClzHgVerM88fnrwH2l+smCxfqiy1ZCNmQfjTCh6/Qjf
 3nwu8PzxrZVEV8PNlXsPbMkcY8fRw67ninqnPQM=
X-Google-Smtp-Source: ADFU+vu5238HL/C4cfABKy7zKLFstF4P0T26bIA6SldHKJTQeM8ctVdkBmXvAbxZyyp7oist7ame3rgFBpsODcBuLYU=
X-Received: by 2002:a2e:b0c4:: with SMTP id g4mr3923936ljl.83.1583381312277;
 Wed, 04 Mar 2020 20:08:32 -0800 (PST)
MIME-Version: 1.0
References: <20200217083223.2011-7-zong.li@sifive.com>
 <mhng-5d8ed200-0200-4198-946f-ae41ba71cc06@palmerdabbelt-glaptop1>
In-Reply-To: <mhng-5d8ed200-0200-4198-946f-ae41ba71cc06@palmerdabbelt-glaptop1>
From: Zong Li <zongbox@gmail.com>
Date: Thu, 5 Mar 2020 12:08:21 +0800
Message-ID: <CA+ZOyajG2uNg8VMVbD9MiW1=ga_dJvs2rYi-mrV4n5Ld2Dfh2w@mail.gmail.com>
Subject: Re: [PATCH 6/8] riscv: add STRICT_KERNEL_RWX support
To: Palmer Dabbelt <palmer@dabbelt.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_200834_058835_4C8A7C2B 
X-CRM114-Status: GOOD (  14.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [zongbox[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-riscv <linux-riscv@lists.infradead.org>,
 Albert Ou <aou@eecs.berkeley.edu>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Zong Li <zong.li@sifive.com>, Paul Walmsley <paul.walmsley@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Palmer Dabbelt <palmer@dabbelt.com> =E6=96=BC 2020=E5=B9=B43=E6=9C=885=E6=
=97=A5 =E9=80=B1=E5=9B=9B =E4=B8=8A=E5=8D=889:22=E5=AF=AB=E9=81=93=EF=BC=9A
>
> On Mon, 17 Feb 2020 00:32:21 PST (-0800), zong.li@sifive.com wrote:
> > The commit contains that make text section as non-writable, rodata
> > section as read-only, and data section as non-executable.
> >
> > The init section should be changed to non-executable.
> >
> > Signed-off-by: Zong Li <zong.li@sifive.com>
> > ---
> >  arch/riscv/Kconfig                  |  1 +
> >  arch/riscv/include/asm/set_memory.h |  8 +++++
> >  arch/riscv/mm/init.c                | 45 +++++++++++++++++++++++++++++
> >  3 files changed, 54 insertions(+)
> >
> > diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
> > index f524d7e60648..308a4dbc0b39 100644
> > --- a/arch/riscv/Kconfig
> > +++ b/arch/riscv/Kconfig
> > @@ -62,6 +62,7 @@ config RISCV
> >       select ARCH_HAS_GIGANTIC_PAGE
> >       select ARCH_HAS_SET_DIRECT_MAP
> >       select ARCH_HAS_SET_MEMORY
> > +     select ARCH_HAS_STRICT_KERNEL_RWX
> >       select ARCH_WANT_HUGE_PMD_SHARE if 64BIT
> >       select SPARSEMEM_STATIC if 32BIT
> >       select ARCH_WANT_DEFAULT_TOPDOWN_MMAP_LAYOUT if MMU
> > diff --git a/arch/riscv/include/asm/set_memory.h b/arch/riscv/include/a=
sm/set_memory.h
> > index a91f192063c2..d3076087cb34 100644
> > --- a/arch/riscv/include/asm/set_memory.h
> > +++ b/arch/riscv/include/asm/set_memory.h
> > @@ -15,6 +15,14 @@ int set_memory_rw(unsigned long addr, int numpages);
> >  int set_memory_x(unsigned long addr, int numpages);
> >  int set_memory_nx(unsigned long addr, int numpages);
> >
> > +#ifdef CONFIG_STRICT_KERNEL_RWX
> > +void set_kernel_text_ro(void);
> > +void set_kernel_text_rw(void);
> > +#else
> > +static inline void set_kernel_text_ro(void) { }
> > +static inline void set_kernel_text_rw(void) { }
> > +#endif
> > +
> >  int set_direct_map_invalid_noflush(struct page *page);
> >  int set_direct_map_default_noflush(struct page *page);
> >
> > diff --git a/arch/riscv/mm/init.c b/arch/riscv/mm/init.c
> > index 965a8cf4829c..09fa643e079c 100644
> > --- a/arch/riscv/mm/init.c
> > +++ b/arch/riscv/mm/init.c
> > @@ -12,11 +12,13 @@
> >  #include <linux/sizes.h>
> >  #include <linux/of_fdt.h>
> >  #include <linux/libfdt.h>
> > +#include <linux/set_memory.h>
> >
> >  #include <asm/fixmap.h>
> >  #include <asm/tlbflush.h>
> >  #include <asm/sections.h>
> >  #include <asm/pgtable.h>
> > +#include <asm/ptdump.h>
> >  #include <asm/io.h>
> >
> >  #include "../kernel/head.h"
> > @@ -477,6 +479,49 @@ static void __init setup_vm_final(void)
> >       csr_write(CSR_SATP, PFN_DOWN(__pa_symbol(swapper_pg_dir)) | SATP_=
MODE);
> >       local_flush_tlb_all();
> >  }
> > +
> > +#ifdef CONFIG_STRICT_KERNEL_RWX
> > +void set_kernel_text_rw(void)
> > +{
> > +     unsigned long text_start =3D (unsigned long)_text;
> > +     unsigned long text_end =3D (unsigned long)_etext;
> > +
> > +     set_memory_rw(text_start, (text_end - text_start) >> PAGE_SHIFT);
> > +}
> > +
> > +void set_kernel_text_ro(void)
> > +{
> > +     unsigned long text_start =3D (unsigned long)_text;
> > +     unsigned long text_end =3D (unsigned long)_etext;
> > +
> > +     set_memory_ro(text_start, (text_end - text_start) >> PAGE_SHIFT);
> > +}
> > +
> > +void mark_rodata_ro(void)
> > +{
> > +     unsigned long text_start =3D (unsigned long)_text;
> > +     unsigned long text_end =3D (unsigned long)_etext;
> > +     unsigned long rodata_start =3D (unsigned long)__start_rodata;
> > +     unsigned long data_start =3D (unsigned long)_sdata;
> > +     unsigned long max_low =3D (unsigned long)(__va(PFN_PHYS(max_low_p=
fn)));
> > +
> > +     set_memory_ro(text_start, (text_end - text_start) >> PAGE_SHIFT);
> > +     set_memory_ro(rodata_start, (data_start - rodata_start) >> PAGE_S=
HIFT);
> > +     set_memory_nx(rodata_start, (data_start - rodata_start) >> PAGE_S=
HIFT);
>
> Ya, this'll risk barfing because of srodata.

It might be OK because the range includes .rodata, .srodata and
__ex_table sections, but I need another symbol instead of _sdata as
you mentioned in other patch.

>
> > +     set_memory_nx(data_start, (max_low - data_start) >> PAGE_SHIFT);
> > +}
> > +#endif
> > +
> > +void free_initmem(void)
> > +{
> > +     unsigned long init_begin =3D (unsigned long)__init_begin;
> > +     unsigned long init_end =3D (unsigned long)__init_end;
> > +
> > +     /* Make the region as non-execuatble. */
> > +     set_memory_nx(init_begin, (init_end - init_begin) >> PAGE_SHIFT);
> > +     free_initmem_default(POISON_FREE_INITMEM);
> > +}
> > +
> >  #else
> >  asmlinkage void __init setup_vm(uintptr_t dtb_pa)
> >  {
>

