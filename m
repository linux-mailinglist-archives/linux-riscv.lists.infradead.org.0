Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC0688CF03
	for <lists+linux-riscv@lfdr.de>; Wed, 14 Aug 2019 11:07:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Subject:To:From:Message-ID:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DlDoLQSRM2PZL6/fdYntlsV1M9oesM2WbYO6PxGYMVI=; b=krezM2WriymbSw
	vmQ2nqudUfnUJto1u+MM47poZTjFeyDG58454xRwrKZkvBUA5xxrNJMjvDqyDLwvM8L1rvD9joHhw
	wcYNc98GjmbZCQj9e/Xmykgc9zy2a+co3AvCWP7NgfixG4dVCb4yzt+2plxvbsjtDfrefoePFecka
	JPAdSdbJsTudJ/7eMbeudbfn/ENTpqfKdaUNrDEu7GTFWhiA62iAnXbrLenL2ItQKTBYWDL+8jrtu
	RtblzrRiMrVOlm/wwPU/zsy3kU4N4RmibgEs0oi4tkIUHrwru/M7D8SRRKJ/OkQ7RJiLTGqAPlCKY
	k5g1MYgsridaZBJmuNqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxpFA-00031W-4h; Wed, 14 Aug 2019 09:06:56 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hxpF5-00030z-1N
 for linux-riscv@lists.infradead.org; Wed, 14 Aug 2019 09:06:52 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 006C3344;
 Wed, 14 Aug 2019 02:06:50 -0700 (PDT)
Received: from big-swifty.misterjones.org (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8F9173F694;
 Wed, 14 Aug 2019 02:06:46 -0700 (PDT)
Date: Wed, 14 Aug 2019 10:06:41 +0100
Message-ID: <864l2knmji.wl-maz@kernel.org>
From: Marc Zyngier <maz@kernel.org>
To: Paul Walmsley <paul.walmsley@sifive.com>
Subject: Re: [PATCH 01/15] irqchip/sifive-plic: set max threshold for ignored
 handlers
In-Reply-To: <alpine.DEB.2.21.9999.1908131032260.30024@viisi.sifive.com>
References: <20190813154747.24256-1-hch@lst.de>
 <20190813154747.24256-2-hch@lst.de>
 <alpine.DEB.2.21.9999.1908131032260.30024@viisi.sifive.com>
User-Agent: Wanderlust/2.15.9 (Almost Unreal) SEMI-EPG/1.14.7 (Harue)
 FLIM/1.14.9 (=?UTF-8?B?R29qxY0=?=) APEL/10.8 EasyPG/1.0.0 Emacs/26
 (aarch64-unknown-linux-gnu) MULE/6.0 (HANACHIRUSATO)
Organization: Approximate
MIME-Version: 1.0 (generated by SEMI-EPG 1.14.7 - "Harue")
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_020651_127891_7DA20E49 
X-CRM114-Status: GOOD (  11.22  )
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
Cc: Damien Le Moal <damien.lemoal@wdc.com>, jason@lakedaemon.net,
 Palmer Dabbelt <palmer@sifive.com>, linux-kernel@vger.kernel.org,
 Christoph Hellwig <hch@lst.de>, tglx@linutronix.de,
 linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, 13 Aug 2019 18:44:02 +0100,
Paul Walmsley <paul.walmsley@sifive.com> wrote:

Hi Paul,

> 
> Thomas, Jason, Marc,
> 
> On Tue, 13 Aug 2019, Christoph Hellwig wrote:
> 
> > When running in M-mode we still the S-mode plic handlers in the DT.

                           ^^^^ missing word?

> > Ignore them by setting the maximum threshold.
> > 
> > Signed-off-by: Christoph Hellwig <hch@lst.de>
> 
> If you're happy with this, could one of you ack it so we can merge it 
> with the rest of this series through the RISC-V tree?

Sure, no problem.

Acked-by: Marc Zyngier <maz@kernel.org>

Thanks,

	M.

-- 
Jazz is not dead, it just smells funny.

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
