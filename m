Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85534D0422
	for <lists+linux-riscv@lfdr.de>; Wed,  9 Oct 2019 01:31:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:Content-ID:MIME-Version
	:References:In-reply-to:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cZVi5mfYV3M8CMHXh/LDwxeSaidsItMLFEPeZGMGnWs=; b=efp3U0zoAdELu7
	W+OxhlrZdFkPtBXuD07Vl2zq6PCEK7ExkSqyngShizHERqJopp94AVIU4wMGf/AvKfzoFOncThd98
	K6jRiXmXNkdoD9yRAe9Lwbk0gaYho0amvda6/77//Gon9RNroLEh4HemBcuCZWef/iwgBG5aTS934
	8bbjCNRAKdDc+ugggqWcsk3OiE10mOkLFlw7zxfTApb/kQC6fOPdukAaXtZe+m21cm+z+IUs8tJ5l
	lPes1I9rVIMBdp4iBovPp8Mc47JwGpy2YhOHgf4LKXhAIC180Fk8pMRkaxh7fo3A9io2kdFL5osI9
	wfFRE7Cb+scf3pXA96lg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHywv-0007Vp-5Q; Tue, 08 Oct 2019 23:31:25 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHywq-0007Uv-6x
 for linux-riscv@lists.infradead.org; Tue, 08 Oct 2019 23:31:22 +0000
Received: by mail-pl1-x644.google.com with SMTP id j11so111383plk.3
 for <linux-riscv@lists.infradead.org>; Tue, 08 Oct 2019 16:31:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=eecs-berkeley-edu.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:comments:mime-version
 :content-id:content-transfer-encoding:date:message-id;
 bh=l1pNyE3/ypBPj3KYLx4NoFd3cbEq25ItIhYszhCrZaQ=;
 b=TNInimJ9HufK1KFrWxBnkKKOAF2I92fr42GfIBIFxtY1fmaLRS6EeduqrYo/jHl2dr
 wKZVWSqdv+tNwGs8IxzUu4Z1H+GEwiqIM7d6NlWCtaSB7R9MabuXQ2tyLFBkuVXf/xES
 blxcc09t5EdrfgQqvw8WdAW7lqeYyBxQgBZjUbnUBChbUVf6xcvqRPGApfg/2YQEGJxG
 PMII4GskDoYAoTc3BEBLFkbjNFyjOCN2MGdlbFSSccxvu1vhLqCsYPPotIjnwFuAmvyC
 VyCBrKZdyIAHFzZEq1fsZLKCfuFVUxwU9K6E/6OnHBd7hp/CrMbn8NmvquQbKOAGUs/C
 aECw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references
 :comments:mime-version:content-id:content-transfer-encoding:date
 :message-id;
 bh=l1pNyE3/ypBPj3KYLx4NoFd3cbEq25ItIhYszhCrZaQ=;
 b=tYn+g9lcG8jEhvJ39+7LvMDwek9HLFKNo4hiT3cZsg5Lp6M1NlrPQf/kg3G/XWGfCV
 VoemmoOUafIrysgztYmgpqzX2silZ5p2lqGoOK9KCc5cii+I9vCNlu8QfTxxDqibW2Hf
 pUH787V4R4OKGSVvfRI32z8OOVtOMP61+aUIKfakKmV3coeF0KvlZvWMvfW3ZERe1Agf
 tgLaYBvilZCuvjB/t6vQrQVx6C+OO5G6pDH/8wk6kwcvU+cX7h7Vlrqsz4ZXzr8AJZIA
 ouswg2InKQ8ffFo+DvI/BkoSCwVEiRfMXhZsMRNUf3Xpx6OWmPCXuGJbK+nMaKh1ol9t
 z0qg==
X-Gm-Message-State: APjAAAWkpqW5qrOD4/QEaUnDkF1FSaItLdbqqCKPvf4PdW8Man7Yolig
 KlDP0yfbBq4vXnY5rbfvgyk297gqCdM=
X-Google-Smtp-Source: APXvYqwSfw2Qo/LT+fqD7RJh5I8b3bSKQU5hBm2KqrkBAWtmLpBa1mZskznpOqIyutrlritjF4gj2Q==
X-Received: by 2002:a17:902:8608:: with SMTP id f8mr88788plo.185.1570577478928; 
 Tue, 08 Oct 2019 16:31:18 -0700 (PDT)
Received: from localhost (dhcp-35-38.EECS.Berkeley.EDU. [128.32.35.38])
 by smtp.gmail.com with ESMTPSA id d3sm242576pgb.3.2019.10.08.16.31.17
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 08 Oct 2019 16:31:18 -0700 (PDT)
From: Albert Ou <aou@eecs.berkeley.edu>
To: Palmer Dabbelt <palmer@sifive.com>
Subject: Re: [PATCH] riscv: Fix memblock reservation for device tree blob
In-reply-to: <mhng-464b0376-8728-4ca9-a090-e785ffb2df14@palmer-si-x1e>
References: <mhng-464b0376-8728-4ca9-a090-e785ffb2df14@palmer-si-x1e>
Comments: In-reply-to Palmer Dabbelt <palmer@sifive.com>
 message dated "Tue, 08 Oct 2019 15:38:15 -0700."
MIME-Version: 1.0
Content-ID: <46781.1570577453.1@ratiocinator.vaxen.org>
Date: Tue, 08 Oct 2019 16:31:17 -0700
Message-ID: <46808.1570577477@ratiocinator.vaxen.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_163120_668763_2B82CCB3 
X-CRM114-Status: GOOD (  28.46  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: anup@brainfault.org, linux-riscv@lists.infradead.org,
 Anup Patel <Anup.Patel@wdc.com>, linux-kernel@vger.kernel.org,
 Paul Walmsley <paul.walmsley@sifive.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 2019-10-08 15:38:15 -0700, Palmer Dabbelt <palmer@sifive.com> wrote:
> On Fri, 20 Sep 2019 21:34:57 PDT (-0700), anup@brainfault.org wrote:
> > On Sat, Sep 21, 2019 at 6:30 AM Albert Ou <aou@eecs.berkeley.edu> wrote:
> >>
> >> This fixes an error with how the FDT blob is reserved in memblock.
> >> An incorrect physical address calculation exposed the FDT header to
> >> unintended corruption, which typically manifested with of_fdt_raw_init()
> >> faulting during late boot after fdt_totalsize() returned a wrong value.
> >> Systems with smaller physical memory sizes more frequently trigger this
> >> issue, as the kernel is more likely to allocate from the DMA32 zone
> >> where bbl places the DTB after the kernel image.
> >>
> >> Commit 671f9a3e2e24 ("RISC-V: Setup initial page tables in two stages")
> >> changed the mapping of the DTB to reside in the fixmap area.
> >> Consequently, early_init_fdt_reserve_self() cannot be used anymore in
> >> setup_bootmem() since it relies on __pa() to derive a physical address,
> >> which does not work with dtb_early_va that is no longer a valid kernel
> >> logical address.
> >>
> >> The reserved[0x1] region shows the effect of the pointer underflow
> >> resulting from the __pa(initial_boot_params) offset subtraction:
> >>
> >> [    0.000000] MEMBLOCK configuration:
> >> [    0.000000]  memory size = 0x000000001fe00000 reserved size = 0x0000000000a2e514
> >> [    0.000000]  memory.cnt  = 0x1
> >> [    0.000000]  memory[0x0]     [0x0000000080200000-0x000000009fffffff], 0x000000001fe00000 bytes flags: 0x0
> >> [    0.000000]  reserved.cnt  = 0x2
> >> [    0.000000]  reserved[0x0]   [0x0000000080200000-0x0000000080c2dfeb], 0x0000000000a2dfec bytes flags: 0x0
> >> [    0.000000]  reserved[0x1]   [0xfffffff080100000-0xfffffff080100527], 0x0000000000000528 bytes flags: 0x0
> >>
> >> With the fix applied:
> >>
> >> [    0.000000] MEMBLOCK configuration:
> >> [    0.000000]  memory size = 0x000000001fe00000 reserved size = 0x0000000000a2e514
> >> [    0.000000]  memory.cnt  = 0x1
> >> [    0.000000]  memory[0x0]     [0x0000000080200000-0x000000009fffffff], 0x000000001fe00000 bytes flags: 0x0
> >> [    0.000000]  reserved.cnt  = 0x2
> >> [    0.000000]  reserved[0x0]   [0x0000000080200000-0x0000000080c2dfeb], 0x0000000000a2dfec bytes flags: 0x0
> >> [    0.000000]  reserved[0x1]   [0x0000000080e00000-0x0000000080e00527], 0x0000000000000528 bytes flags: 0x0
> >
> > Thanks for catching this issue.
> >
> > Most of us did not notice this issue most likely because:
> > 1. We generally have good enough RAM on QEMU and SiFive Unleashed
> > 2. Most of people use OpenSBI FW_JUMP on QEMU and U-Boot  on
> >     SiFive Unleashed to boot in Linux which places FDT quite far away
> >     from Linux kernel end
> >
> > Linux ARM64 kernel also uses FIXMAP to access FDT and over there
> > as well early_init_fdt_reserve_self() is not used.
> >
> >>
> >> Fixes: 671f9a3e2e24 ("RISC-V: Setup initial page tables in two stages")
> >> Signed-off-by: Albert Ou <aou@eecs.berkeley.edu>
> >> ---
> >>  arch/riscv/mm/init.c | 13 ++++++++++++-
> >>  1 file changed, 12 insertions(+), 1 deletion(-)
> >>
> >> diff --git a/arch/riscv/mm/init.c b/arch/riscv/mm/init.c
> >> index f0ba713..52d007c 100644
> >> --- a/arch/riscv/mm/init.c
> >> +++ b/arch/riscv/mm/init.c
> >> @@ -11,6 +11,7 @@
> >>  #include <linux/swap.h>
> >>  #include <linux/sizes.h>
> >>  #include <linux/of_fdt.h>
> >> +#include <linux/libfdt.h>
> >>
> >>  #include <asm/fixmap.h>
> >>  #include <asm/tlbflush.h>
> >> @@ -82,6 +83,8 @@ static void __init setup_initrd(void)
> >>  }
> >>  #endif /* CONFIG_BLK_DEV_INITRD */
> >>
> >> +static phys_addr_t __dtb_pa __initdata;
> >
> > May be dtb_early_pa will be more consistent name
> > instead of __dtb_pa because it matches dtb_early_va
> > used below.
> >
> >> +
> >>  void __init setup_bootmem(void)
> >>  {
> >>         struct memblock_region *reg;
> >> @@ -117,7 +120,12 @@ void __init setup_bootmem(void)
> >>         setup_initrd();
> >>  #endif /* CONFIG_BLK_DEV_INITRD */
> >>
> >> -       early_init_fdt_reserve_self();
> >> +       /*
> >> +        * Avoid using early_init_fdt_reserve_self() since __pa() does
> >> +        * not work for DTB pointers that are fixmap addresses
> >> +        */
> >> +       memblock_reserve(__dtb_pa, fdt_totalsize(dtb_early_va));
> >> +
> >>         early_init_fdt_scan_reserved_mem();
> >>         memblock_allow_resize();
> >>         memblock_dump_all();
> >> @@ -333,6 +341,7 @@ static uintptr_t __init best_map_size(phys_addr_t base, phys_addr_t size)
> >>         "not use absolute addressing."
> >>  #endif
> >>
> >> +
> >
> > Please remove this newline addition.
> >
> >>  asmlinkage void __init setup_vm(uintptr_t dtb_pa)
> >>  {
> >>         uintptr_t va, end_va;
> >> @@ -393,6 +402,8 @@ asmlinkage void __init setup_vm(uintptr_t dtb_pa)
> >>
> >>         /* Save pointer to DTB for early FDT parsing */
> >>         dtb_early_va = (void *)fix_to_virt(FIX_FDT) + (dtb_pa & ~PAGE_MASK);
> >> +       /* Save physical address for memblock reservation */
> >> +       __dtb_pa = dtb_pa;
> >>  }
> >>
> >>  static void __init setup_vm_final(void)
> >> --
> >> 2.7.4
> >>
> >>
> >> _______________________________________________
> >> linux-riscv mailing list
> >> linux-riscv@lists.infradead.org
> >> http://lists.infradead.org/mailman/listinfo/linux-riscv
> >
> > This deserves to be stable kernel fix as well.
> > You should add:
> > Cc: stable@vger.kernel.org
> > in your commit description.
> >
> > Apart from minor nits above.
> >
> > Reviewed-by: Anup Patel <anup@brainfault.org>
> >
> > I tried this patch for both RV64 and RV32 on QEMU with
> > Yocto rootfs.
> >
> > Tested-by: Anup Patel <anup@brainfault.org>
> >
> > Regards,
> > Anup
>
> Albert: Do you plan on spinning a v2 of the patch set?
>

v2 was sent last week and has already been applied as
922b0375fc93fb1a20c5617e37c389c26bbccb70 by Paul.

-- 
Albert Ou

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
