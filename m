Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FE791A09E2
	for <lists+linux-riscv@lfdr.de>; Tue,  7 Apr 2020 11:17:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=D77AbQbLILoEautT7eBJR6pylqABbqtx1s3GXkCGPvU=; b=GvODHkRWbTPPEUcuWxOIx84Lx
	Sjek3fQtmB4fR2r7wO8SDgj86N2G4UYyJMZLZI1kTkhFamSqeU3/A8XlufVG3srcE82iPLlNOgglC
	c4ADaVNEAmAu+jvSQsL9/4n2NxUuuk0xELOv0eNVuosfg0U5qJm68Y7ZCkWYitWkazfc5rmqU8E5j
	E1ikTF+eMjZv0LiqUxnBIy6kJb7IyoDTEXfhSg7W6AEzYpqWNHqPYh1Z9DUuPBPiEZh+i3erGu0eW
	TjvTzstPLz8yGiuLyY44V6wg+opYl1Be6s6EqOtbA40SWiprfoCKKpKuS7n/DH4qj3D6fCfvqEjbD
	fPpb0hrdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLkMU-0005Pm-Cz; Tue, 07 Apr 2020 09:17:38 +0000
Received: from mail-oi1-x244.google.com ([2607:f8b0:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLkMQ-0005PD-At
 for linux-riscv@lists.infradead.org; Tue, 07 Apr 2020 09:17:36 +0000
Received: by mail-oi1-x244.google.com with SMTP id k18so887304oib.3
 for <linux-riscv@lists.infradead.org>; Tue, 07 Apr 2020 02:17:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=D77AbQbLILoEautT7eBJR6pylqABbqtx1s3GXkCGPvU=;
 b=L8h8JHWPPE5e5IjKHj/KIrGUW7OQSTxyIdoYT0avlrAxkQPITdHDJTCss8bsl6BDVo
 Bv6BYIQZtU56B8GM2b23qbu4M3zaRj7HqQcUSVsJ7gb+IaWtYK8RsCUQBAo93GBtmvcx
 /e6n3xQUuo28Leh45AXBUL7HOcHn2lKhbwCZARkCSnCZz1brOLsHEgZiThmFPUt69rIb
 yrcRpoEY+NM2dP5So+XBvyqvoTrGcT3tEMVH82rAG2eKeSiKuLYXolsPDZDImYKl3R45
 5IpPxLz4n4rTGmQvGoJe6y//E04Y2SU92MpczmEiKdtABlx96GLPxoXlaGY2RyAMAt4+
 Ij1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=D77AbQbLILoEautT7eBJR6pylqABbqtx1s3GXkCGPvU=;
 b=UIVztMuli1ThKrvUGZsJxK/fYnvCSJ61zhnwhJyfNcODErSxqSQJAwyVo7eAUzongo
 up5E0ngkBNKZuOvVCj+l71HSNDlR8u74BzOnrl3wYodeXMa5evh94tzXB54KgeK/PkOG
 5x8J28DaBAlIRmMyaBrhFyWCIKckbmAn3xo9nKLRZTWl9mtj1prcBFu1d05VcoHhHRwE
 TldP/niAGFdQQ3XE6BdhWmDBTCupqasdxZ8HKx7avm79QGbcFiDQJjcdHNkMsTb+4nmV
 W4nVbA5JvAeyJ3l9lzDCxioKUi4MH9ZEx1h4XZ0eCgtlIHKThomlOd7lZlOBbUv4GR5/
 nuZg==
X-Gm-Message-State: AGi0Pubx8f1MhQXtO0Nmm9FDkB65iw/7mCtsfCSbztkbA3GV8trHh8Yn
 ufBlDY4YtPKhk0nyuSsbaFFz7eoCM/U1wAH2G3RSaw==
X-Google-Smtp-Source: APiQypIE+B91iz8/BuW7W1OkVLd6tGb2FK7jOm9bG10/ZZbWWtcBmU0LGdfCSLwh++ulbiEdTNQ6PM/IdVf7ydrdWXI=
X-Received: by 2002:a05:6808:a08:: with SMTP id n8mr929598oij.91.1586251052494; 
 Tue, 07 Apr 2020 02:17:32 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1584352425.git.zong.li@sifive.com>
 <286a940ef8fbc4480c63679271eea440d167a258.1584352425.git.zong.li@sifive.com>
 <507f88a2-63c0-f615-2684-a200dd44c34a@ghiti.fr>
In-Reply-To: <507f88a2-63c0-f615-2684-a200dd44c34a@ghiti.fr>
From: Zong Li <zong.li@sifive.com>
Date: Tue, 7 Apr 2020 17:17:22 +0800
Message-ID: <CANXhq0oduoX-gdG17FCwqpS5GAvY9w13B8a7YP0t2vNAHvKB_g@mail.gmail.com>
Subject: Re: [PATCH RFC 2/8] riscv/kaslr: introduce functions to clear page
 table
To: Alex Ghiti <alex@ghiti.fr>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_021734_537087_83433823 
X-CRM114-Status: GOOD (  18.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:244 listed in]
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

On Tue, Apr 7, 2020 at 1:09 PM Alex Ghiti <alex@ghiti.fr> wrote:
>
> On 3/24/20 3:30 AM, Zong Li wrote:
> > In KASLR, we need to re-create page table after getting a random
> > destination. Introduce clear function to clear old content. Also, the
> > page table entries allow writing value when it's empty, so we have to
> > clear the early page table.
> >
> > This patch is a preparation to support KASLR.
> >
> > Signed-off-by: Zong Li <zong.li@sifive.com>
> > ---
> >   arch/riscv/mm/init.c | 54 ++++++++++++++++++++++++++++++++++++++++++++
> >   1 file changed, 54 insertions(+)
> >
> > diff --git a/arch/riscv/mm/init.c b/arch/riscv/mm/init.c
> > index ace5d74fd939..51e263c04fa2 100644
> > --- a/arch/riscv/mm/init.c
> > +++ b/arch/riscv/mm/init.c
> > @@ -315,6 +315,7 @@ static void __init create_pmd_mapping(pmd_t *pmdp,
> >   #define get_pgd_next_virt(__pa)     get_pmd_virt(__pa)
> >   #define create_pgd_next_mapping(__nextp, __va, __pa, __sz, __prot)  \
> >       create_pmd_mapping(__nextp, __va, __pa, __sz, __prot)
> > +#define clear_pgd_next_mapping(__nextp)      clear_pmd(__nextp)
> >   #define fixmap_pgd_next             fixmap_pmd
> >   #else
> >   #define pgd_next_t          pte_t
> > @@ -322,6 +323,7 @@ static void __init create_pmd_mapping(pmd_t *pmdp,
> >   #define get_pgd_next_virt(__pa)     get_pte_virt(__pa)
> >   #define create_pgd_next_mapping(__nextp, __va, __pa, __sz, __prot)  \
> >       create_pte_mapping(__nextp, __va, __pa, __sz, __prot)
> > +#define clear_pgd_next_mapping(__nextp)      clear_pte(__nextp)
> >   #define fixmap_pgd_next             fixmap_pte
> >   #endif
> >
> > @@ -361,6 +363,58 @@ static uintptr_t __init best_map_size(phys_addr_t base, phys_addr_t size)
> >       return PMD_SIZE;
> >   }
> >
> > +#ifdef CONFIG_RANDOMIZE_BASE
> > +static void __init clear_pte(pte_t *ptep)
> > +{
> > +     unsigned int i;
> > +
> > +     for (i = 0; i < PTRS_PER_PTE; i++)
> > +             if (!pte_none(ptep[i]))
> > +                     ptep[i] = __pte(0);
> > +}
> > +
> > +static void __init clear_pmd(pmd_t *pmdp)
> > +{
> > +     unsigned int i;
> > +     pte_t *ptep;
> > +     phys_addr_t pte_phys;
> > +     uintptr_t kaslr_offset = get_kaslr_offset();
> > +
> > +     for (i = 0; i < PTRS_PER_PMD; i++)
> > +             if (!pmd_none(pmdp[i])) {
> > +                     if (pmd_leaf(pmdp[i])) {
> > +                             pmd_clear(&pmdp[i]);
> > +                     } else {
> > +                             pte_phys = PFN_PHYS(_pmd_pfn(pmdp[i]));
> > +                             ptep = get_pte_virt(pte_phys + kaslr_offset);
> > +                             clear_pte(ptep);
> > +                             pmd_clear(&pmdp[i]);
> > +                     }
> > +             }
> > +}
> > +
> > +static void __init clear_pgd(pgd_t *pgdp)
> > +{
> > +     unsigned int i;
> > +     pgd_next_t *nextp;
> > +     phys_addr_t next_phys;
> > +     uintptr_t kaslr_offset = get_kaslr_offset();
> > +
> > +     for (i = 0; i < PTRS_PER_PGD; i++)
> > +             if (pgd_val(pgdp[i]) != 0) {
> > +                     if (pgd_leaf(pgd_val(pgdp[i]))) {
> > +                             set_pgd(&pgdp[i], __pgd(0));
> > +                     } else {
> > +                             next_phys = PFN_PHYS(_pgd_pfn(pgdp[i]));
> > +                             nextp = get_pgd_next_virt(next_phys +
> > +                                                       kaslr_offset);
> > +                             clear_pgd_next_mapping(nextp);
> > +                             set_pgd(&pgdp[i], __pgd(0));
> > +                     }
> > +             }
> > +}
> > +#endif
> > +
> >   /*
> >    * setup_vm() is called from head.S with MMU-off.
> >    *
> >
>
> If this is only for clearing early page tables, a memset is way easier
> as there is only one page per level to clear.
>

Yes, it's a better way. Thanks.

> Alex

