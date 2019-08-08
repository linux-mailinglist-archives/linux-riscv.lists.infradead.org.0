Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71DA986CAF
	for <lists+linux-riscv@lfdr.de>; Thu,  8 Aug 2019 23:47:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mKIJwMLkL8eZgeHBFX09/9L7VJ6Ij5fau4aro1LBlEE=; b=Goi+UkjAAp+0DG
	n2PK16E5AaGnqpoctwrLVgO61fM6LPxsA/R8v0oQ1hnE4dLpvoRh5x52iOkWO1YcTy2Q8+Z6XJWV4
	oPBSIYFYoeTnQB1nm8Z5DeLZFxEeby0EXP8vaf9dt3vM3GSfOABnJvNQBXqi2nv7eY/zzLeksCOyF
	5fH6rNfQrRCGepPn3bX68/SIemTLP3dAOF5fTuTLulpN0NhzFplwIg2Ejlu+SHLJAfExahztE/bBi
	Gpp04tf+pgsiveG/7ZcX8UHHzyM9Ru9YdwYhXlE9P29aGjaamM3loXw6tQ3/IiasSBjgjQqnL/GaX
	bvYMPFSwZzbzWQLv4mXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvqFv-00025l-IO; Thu, 08 Aug 2019 21:47:31 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvqFt-00025S-HF
 for linux-riscv@lists.infradead.org; Thu, 08 Aug 2019 21:47:30 +0000
Received: from localhost (unknown [150.199.191.185])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E9BA021874;
 Thu,  8 Aug 2019 21:47:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565300849;
 bh=vG7jKkEd8XcA9+P2LeOF6CIxzYS5OeGuGE45x2CRGSQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=opUMVt0G8O9WCbMpvtgG81GcK9OmkTHd8OQ7YfusFWIzrAVFBCybyjtsfn9Uw+7xN
 Xb1yeoZLxo4lZAHUdD2CMnGhv7CdnbDf2uFzuMrFcXQ3Pf80HWHMbaw+38Bi31odbX
 abWk6E491TFBB96Ac8IIAIBJ02cp9J3AXMvuiiVg=
Date: Thu, 8 Aug 2019 16:47:28 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Paul Walmsley <paul.walmsley@sifive.com>
Subject: Re: [PATCH v2] pci: Kconfig: select PCI_MSI_IRQ_DOMAIN by default on
 RISC-V
Message-ID: <20190808214728.GC7302@google.com>
References: <alpine.DEB.2.21.9999.1907251426450.32766@viisi.sifive.com>
 <20190808195546.GA7302@google.com>
 <alpine.DEB.2.21.9999.1908081349210.6414@viisi.sifive.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.9999.1908081349210.6414@viisi.sifive.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_144729_620229_882DCDE0 
X-CRM114-Status: GOOD (  27.26  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-pci@vger.kernel.org, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org, Wesley Terpstra <wesley@sifive.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, Aug 08, 2019 at 01:51:50PM -0700, Paul Walmsley wrote:
> On Thu, 8 Aug 2019, Bjorn Helgaas wrote:
> > On Thu, Jul 25, 2019 at 02:28:07PM -0700, Paul Walmsley wrote:
> > > From: Wesley Terpstra <wesley@sifive.com>
> > > 
> > > This is part of adding support for RISC-V systems with PCIe host 
> > > controllers that support message-signaled interrupts.
> > > 
> > > Signed-off-by: Wesley Terpstra <wesley@sifive.com>
> > > [paul.walmsley@sifive.com: wrote patch description; split this
> > >  patch from the arch/riscv patch]
> > > Signed-off-by: Paul Walmsley <paul.walmsley@sifive.com>
> > > ---
> > >  drivers/pci/Kconfig | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > > 
> > > diff --git a/drivers/pci/Kconfig b/drivers/pci/Kconfig
> > > index 2ab92409210a..beb3408a0272 100644
> > > --- a/drivers/pci/Kconfig
> > > +++ b/drivers/pci/Kconfig
> > > @@ -52,7 +52,7 @@ config PCI_MSI
> > >  	   If you don't know what to do here, say Y.
> > >  
> > >  config PCI_MSI_IRQ_DOMAIN
> > > -	def_bool ARC || ARM || ARM64 || X86
> > > +	def_bool ARC || ARM || ARM64 || X86 || RISCV
> > 
> > The other arches listed here either supply their own include/asm/msi.h
> > or generate it:
> > 
> >   $ ls arch/*/include/asm/msi.h
> >   arch/x86/include/asm/msi.h
> > 
> >   $ grep msi.h arch/*/include/asm/Kbuild
> >   arch/arc/include/asm/Kbuild:generic-y += msi.h
> >   arch/arm64/include/asm/Kbuild:generic-y += msi.h
> >   arch/arm/include/asm/Kbuild:generic-y += msi.h
> >   arch/mips/include/asm/Kbuild:generic-y += msi.h
> >   arch/powerpc/include/asm/Kbuild:generic-y += msi.h
> >   arch/sparc/include/asm/Kbuild:generic-y += msi.h
> > 
> > For example, see
> > 
> >   f8430eae9f1b ("PCI/MSI: Enable PCI_MSI_IRQ_DOMAIN support for ARC")
> >   be091d468a0a ("arm64: PCI/MSI: Use asm-generic/msi.h")
> >   0ab089c2548c ("ARM: Add msi.h to Kbuild")
> > 
> > I didn't look into the details of msi.h generation, but I assume
> > RISC-V needs to do something similar?  If so, I think that should be
> > part of this patch to avoid issues.
> > 
> > If CONFIG_GENERIC_MSI_IRQ_DOMAIN is defined, include/linux/msi.h
> > #includes <asm/msi.h> and I don't see where that would come from.
> 
> Commit 251a44888183 ("riscv: include generic support for MSI irqdomains") 
> has been merged upstream for this purpose:
> 
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=251a44888183003b0380df184835a2c00bfa39d7
> 
> The original patch was split into a RISC-V component and a generic PCI 
> component to reduce the risk of merge conflicts.
> 
> Does that work for you?

Indeed, sorry I missed it.  I generally work based on -rc1, and it
looks like 251a44888183 was merged after -rc1.

Since we're after the merge window, the default target would be v5.4,
but I see some post-rc1 pull requests from you, so if you need this in
v5.3, let me know.

I applied your patch to pci/msi for v5.4 for now.

Bjorn

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
