Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29C34E2A9C
	for <lists+linux-riscv@lfdr.de>; Thu, 24 Oct 2019 08:51:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PEqQtL7D/bKDOL18QVJQsdt7egNvHFvJGHSMiseFi9M=; b=opPVPCE7NPLCby
	073de/VwkRyns7NoMIvUY2fB/4nC2BNqN82eZhXm2uztUvU7u3/JvWommwmIyvuorEIqcAGDKVe7j
	vNKnTY8LQCKqD+upGSoHjQAdkwee5xtYjuDutkE6ApQIr26GCb4Pl/ci6D+4AggsNUkllRasoknA8
	EmTWdGd7Zv8Yz7qAYYcXkusFi0a8CFOs3iP/R3eevhBjXfr6BIWc+ltSKDA8sjf+gj0GMVcrXK88a
	Lik55XAGU/wA9Iv3AqJyfASedBpSgGWi9QPJF/3EtVtm63nNQEoE4D+mEXUFEsMtSEcP3AeDk0tEC
	ZpJC/Gq1LBoKC8Bd8Bbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNWxy-0007W4-49; Thu, 24 Oct 2019 06:51:26 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNWxu-0007V2-8J
 for linux-riscv@lists.infradead.org; Thu, 24 Oct 2019 06:51:23 +0000
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why)
 by cheepnis.misterjones.org with esmtpsa (TLSv1.2:AES256-GCM-SHA384:256)
 (Exim 4.80) (envelope-from <maz@kernel.org>)
 id 1iNWxp-0001iX-Si; Thu, 24 Oct 2019 08:51:18 +0200
Date: Thu, 24 Oct 2019 07:51:16 +0100
From: Marc Zyngier <maz@kernel.org>
To: Christoph Hellwig <hch@infradead.org>
Subject: Re: [PATCH] irqchip: Skip contexts other supervisor in plic_init()
Message-ID: <20191024075116.48055961@why>
In-Reply-To: <20191024013019.GA675@infradead.org>
References: <alpine.DEB.2.21.9999.1910231152580.16536@viisi.sifive.com>
 <mhng-aefb3209-29c4-46db-8cf2-e12db46d9a6e@palmer-si-x1c4>
 <20191024013019.GA675@infradead.org>
Organization: Approximate
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: hch@infradead.org, palmer@sifive.com,
 paul.walmsley@sifive.com, alan.mikhak@sifive.com, linux-kernel@vger.kernel.org,
 linux-riscv@lists.infradead.org, tglx@linutronix.de, jason@lakedaemon.net
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_235122_452298_C6EF3E7B 
X-CRM114-Status: UNSURE (   9.40  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: jason@lakedaemon.net, Palmer Dabbelt <palmer@sifive.com>,
 linux-kernel@vger.kernel.org, alan.mikhak@sifive.com,
 Paul Walmsley <paul.walmsley@sifive.com>, tglx@linutronix.de,
 linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, 23 Oct 2019 18:30:19 -0700
Christoph Hellwig <hch@infradead.org> wrote:

> On Wed, Oct 23, 2019 at 03:07:10PM -0700, Palmer Dabbelt wrote:
> > > > +		/* skip contexts other than supervisor external interrupt */
> > > > +		if (parent.args[0] != IRQ_S_EXT)
> > > >  			continue;  
> > > 
> > > Will this need to change for RISC-V M-mode Linux support?
> > > 
> > > https://lore.kernel.org/linux-riscv/20191017173743.5430-1-hch@lst.de/  
> > 
> > Yes.  
> 
> For M-mode we'll want to check IRQ_M_EXT above.  So we should just
> merge this patch ASAP and then for my rebased M-mode series I'll
> fix the check to do that for the M-Mode case, which is much cleaner
> than my hack.

Does this need to be taken as a fix, potentially Cc to stable? Or is
that 5.5 material?

	M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
