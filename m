Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE79C4B350
	for <lists+linux-riscv@lfdr.de>; Wed, 19 Jun 2019 09:48:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MVvzzV9zHDexEhIs6P1TmI6MPnqt7syevg9DE1LNVGM=; b=ju6UyAGBnSDynd
	IsscI3olvOxJKp2+a9+HBAAqO+SkOL4MiKM4IU0uwcMyQt7/kw9FmWe58R8kVLdDGUiQ8c1XLrhBA
	rzouQtHN307F2eZcOXf6XQ71FplbaNya8VGUFTd11yjnnLIn9AhegI4hem0O+3EVXaI6e15x2BfCl
	xzjSoZsVtb91Wf2Luq08qhgrcCIhNbmCvNau16fTKiUdM+xUC84Uii7eK4/4oXrGnNC0R3B16Cj3p
	rkL16ri/UHK/qzKLpUGD/HeEMbJiU4sGbpBDd3dPEOlVAdvqfmmBHkP5nKN5Q+0Oq3Qa9yleMd9ND
	ASdPPya9zLh9Xo5NsQWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdVKj-0003HD-Kc; Wed, 19 Jun 2019 07:48:41 +0000
Received: from 59-120-53-16.hinet-ip.hinet.net ([59.120.53.16]
 helo=ATCSQR.andestech.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdVKf-0003Ge-1K
 for linux-riscv@lists.infradead.org; Wed, 19 Jun 2019 07:48:39 +0000
Received: from mail.andestech.com (atcpcs16.andestech.com [10.0.1.222])
 by ATCSQR.andestech.com with ESMTP id x5J7bRFd085805;
 Wed, 19 Jun 2019 15:37:27 +0800 (GMT-8)
 (envelope-from alankao@andestech.com)
Received: from andestech.com (10.0.15.65) by ATCPCS16.andestech.com
 (10.0.1.222) with Microsoft SMTP Server id 14.3.123.3; Wed, 19 Jun 2019
 15:44:37 +0800
Date: Wed, 19 Jun 2019 15:44:38 +0800
From: Alan Kao <alankao@andestech.com>
To: Gary Guo <gary@garyguo.net>
Subject: Re: [PATCH v2] riscv: mm: synchronize MMU after pte change
Message-ID: <20190619074438.GA1337@andestech.com>
References: <CALoQrwdLANaOaYiGvFxt23PBdHcgcc_LWVFORNwrAXWBhOyJsA@mail.gmail.com>
 <alpine.DEB.2.21.9999.1906170328330.19994@viisi.sifive.com>
 <LO2P265MB08472C6BF2C5DA5459744756D6E50@LO2P265MB0847.GBRP265.PROD.OUTLOOK.COM>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <LO2P265MB08472C6BF2C5DA5459744756D6E50@LO2P265MB0847.GBRP265.PROD.OUTLOOK.COM>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-Originating-IP: [10.0.15.65]
X-DNSRBL: 
X-MAIL: ATCSQR.andestech.com x5J7bRFd085805
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_004837_340359_8CF256CA 
X-CRM114-Status: GOOD (  26.34  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 TVD_RCVD_IP            Message was received from an IP address
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.4 RDNS_DYNAMIC           Delivered to internal network by host with
 dynamic-looking rDNS
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Palmer Dabbelt <palmer@sifive.com>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 ShihPo Hung <shihpo.hung@sifive.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi all,

On Wed, Jun 19, 2019 at 01:51:43AM +0000, Gary Guo wrote:
> I don't think it is sensible that any hardware would actually cache invalid entries.

I need some clarification here.  What does "invalid entries" mean here?
The inconsistency between TLB and page table?

> From my research https://arxiv.org/pdf/1905.06825 (will appear in CARRV 2019), existing Linux code already emits too many SFENCE.VMAs (94% of all flushes) that are completely unnecessary for a hardware that does not cache invalid entries. Adding a couple of more would definitely not good, considering that TLB flush could be expensive for some microarchitectures.
> 
> I think the spec should be fixed, recommending against invalid entries to be cached, and then we can do things similar to other architectures, i.e. use flush_tlb_fix_spurious_fault instead.
> 
> > -----Original Message-----
> > From: linux-riscv <linux-riscv-bounces@lists.infradead.org> On Behalf Of Paul
> > Walmsley
> > Sent: Monday, June 17, 2019 11:33
> > To: ShihPo Hung <shihpo.hung@sifive.com>
> > Cc: linux-riscv@lists.infradead.org; Palmer Dabbelt <palmer@sifive.com>; Albert
> > Ou <aou@eecs.berkeley.edu>; stable@vger.kernel.org
> > Subject: Re: [PATCH v2] riscv: mm: synchronize MMU after pte change
> > 
> > Hi ShihPo,
> > 
> > On Mon, 17 Jun 2019, ShihPo Hung wrote:
> > 
> > > Because RISC-V compliant implementations can cache invalid entries
> > > in TLB, an SFENCE.VMA is necessary after changes to the page table.
> > > This patch adds an SFENCE.vma for the vmalloc_fault path.
> > >
> > > Signed-off-by: ShihPo Hung <shihpo.hung@sifive.com>
> > > Cc: Palmer Dabbelt <palmer@sifive.com>
> > > Cc: Albert Ou <aou@eecs.berkeley.edu>
> > > Cc: Paul Walmsley <paul.walmsley@sifive.com>
> > > Cc: linux-riscv@lists.infradead.org
> > > Cc: stable@vger.kernel.org
> > 
> > Looks like something in your patch flow converted tabs to whitespace, so
> > the patch doesn't apply.  Then, with the tabs fixed, the comment text
> > exceeds 80 columns.
> > 
> > I've fixed those issues by hand for this patch (revised patch below, as
> > queued for v5.2-rc), but could you please fix these issues for future
> > patches?  Running checkpatch.pl --strict should help identify these issues
> > before posting.
> > 
> > 
> > thanks,
> > 
> > - Paul
> > 
> > 
> > From: ShihPo Hung <shihpo.hung@sifive.com>
> > Date: Mon, 17 Jun 2019 12:26:17 +0800
> > Subject: [PATCH] [PATCH v2] riscv: mm: synchronize MMU after pte change
> > 
> > Because RISC-V compliant implementations can cache invalid entries
> > in TLB, an SFENCE.VMA is necessary after changes to the page table.
> > This patch adds an SFENCE.vma for the vmalloc_fault path.
> > 
> > Signed-off-by: ShihPo Hung <shihpo.hung@sifive.com>
> > [paul.walmsley@sifive.com: reversed tab->whitespace conversion,
> >  wrapped comment lines]
> > Signed-off-by: Paul Walmsley <paul.walmsley@sifive.com>
> > Cc: Palmer Dabbelt <palmer@sifive.com>
> > Cc: Albert Ou <aou@eecs.berkeley.edu>
> > Cc: Paul Walmsley <paul.walmsley@sifive.com>
> > Cc: linux-riscv@lists.infradead.org
> > Cc: stable@vger.kernel.org

I guess this patch is inspired by a discuss from sw-dev forum:
https://groups.google.com/a/groups.riscv.org/forum/#!msg/sw-dev/-M-eRDmGuEc/m1__-sfqAAAJ

Some processors in our AndeStar V5 family do suffer the issue this
patch addressed.  Along this vmalloc_fault path in do_page_fault,
pud and pmd (level-3/2 PTE) are set in dcache, but without SFENCE.VMA
the handler returns.  Then, the page table worker does not snoop
dcache, so the PTE update has no effect and it loops in faults.

Just as what spec mentions,
"The SFENCE.VMA is used to flush any local hardware caches related to
address translation." 

> > ---
> >  arch/riscv/mm/fault.c | 13 +++++++++++++
> >  1 file changed, 13 insertions(+)
> > 
> > diff --git a/arch/riscv/mm/fault.c b/arch/riscv/mm/fault.c
> > index cec8be9e2d6a..5b72e60c5a6b 100644
> > --- a/arch/riscv/mm/fault.c
> > +++ b/arch/riscv/mm/fault.c
> > @@ -29,6 +29,7 @@
> > 
> >  #include <asm/pgalloc.h>
> >  #include <asm/ptrace.h>
> > +#include <asm/tlbflush.h>
> > 
> >  /*
> >   * This routine handles page faults.  It determines the address and the
> > @@ -278,6 +279,18 @@ asmlinkage void do_page_fault(struct pt_regs *regs)
> >  		pte_k = pte_offset_kernel(pmd_k, addr);
> >  		if (!pte_present(*pte_k))
> >  			goto no_context;
> > +
> > +		/*
> > +		 * The kernel assumes that TLBs don't cache invalid
> > +		 * entries, but in RISC-V, SFENCE.VMA specifies an
> > +		 * ordering constraint, not a cache flush; it is
> > +		 * necessary even after writing invalid entries.
> > +		 * Relying on flush_tlb_fix_spurious_fault would
> > +		 * suffice, but the extra traps reduce
> > +		 * performance. So, eagerly SFENCE.VMA.
> > +		 */
> > +		local_flush_tlb_page(addr);
> > +
> >  		return;
> >  	}
> >  }
> > --
> > 2.20.1
> > 
> > 
> > _______________________________________________
> > linux-riscv mailing list
> > linux-riscv@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/linux-riscv
> 
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
