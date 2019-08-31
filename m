Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CAB3A455F
	for <lists+linux-riscv@lfdr.de>; Sat, 31 Aug 2019 18:30:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PpNqA2pw0Dnc/v1SRmgDkpAs0WZbdcVgyC+9czs1yZ0=; b=pwm5+55tZ94L5O
	NKJwi34vsLN0vaivUYJYy+9ttBv8WC0srSTgCHXR6dtkESFXNzP0zgv44JXZ7VOwBJcHsphtgIYqg
	3FcrYdYJC29r1ECcPI64bbHKuouXfLERUvegBZ3xSM3oytnuKfMVDdRhrnU/f849VsRXZZaPWGTMj
	EloHUJKALpJ1DB9SDu2ZKJmG3JhFVMOADCiEMJZxfSFE8LOIIU8ye3uJmdYZsT07ri/QoMFMkNAZi
	E8yRflbVJCEWK4id7PDKrrVASwxbPMe+pLcYGj9LaUsJpKnKte3LIofH0bjmGpOE1y6HcGFF7kl/K
	L2LA/WyhwKIwK1SuGRRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i46Gl-0004gY-1t; Sat, 31 Aug 2019 16:30:31 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i46G4-00033V-E8; Sat, 31 Aug 2019 16:29:49 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2253522D37;
 Sat, 31 Aug 2019 16:29:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567268985;
 bh=oCFqDXfnxrqpiBFRCwyD8nHXvoMvSjbxCsJhrxHTYqM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=vX6b95IdsVrDjTXh55KZNhoPNMKUITWlit4Ldb9kHZhxWpNoqZwiOB5EF5DJcLfuZ
 wmt8nfF1pggofVEAUJWY4K2cI3w83kg0ds8vBO0zGI/+b8iJT5NQEI4dH3G3L57NyD
 AwNlHxXQFvARoZXdkRSB9gHwMtmjWPnHQrjl8Gx4=
Date: Sat, 31 Aug 2019 17:29:38 +0100
From: Will Deacon <will@kernel.org>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH 19/26] arm64: remove __iounmap
Message-ID: <20190831162937.5ybulvaa4eq7mybs@willie-the-truck>
References: <20190817073253.27819-1-hch@lst.de>
 <20190817073253.27819-20-hch@lst.de>
 <20190819073601.4yxjvmyjtpi7tk56@willie-the-truck>
 <20190830160515.GC26887@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190830160515.GC26887@lst.de>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190831_092948_503581_DA516278 
X-CRM114-Status: GOOD (  13.76  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-ia64@vger.kernel.org, linux-sh@vger.kernel.org,
 linux-kernel@vger.kernel.org, Guo Ren <guoren@kernel.org>,
 sparclinux@vger.kernel.org, linux-riscv@lists.infradead.org,
 Vincent Chen <deanbo422@gmail.com>, linux-arch@vger.kernel.org,
 linux-s390@vger.kernel.org, linux-hexagon@vger.kernel.org, x86@kernel.org,
 linux-snps-arc@lists.infradead.org, linux-xtensa@linux-xtensa.org,
 Arnd Bergmann <arnd@arndb.de>, linux-m68k@lists.linux-m68k.org,
 openrisc@lists.librecores.org, Greentime Hu <green.hu@gmail.com>,
 linux-mtd@lists.infradead.org, Guan Xuetao <gxt@pku.edu.cn>,
 linux-arm-kernel@lists.infradead.org, Michal Simek <monstr@monstr.eu>,
 linux-parisc@vger.kernel.org, linux-mips@vger.kernel.org,
 linux-alpha@vger.kernel.org, nios2-dev@lists.rocketboards.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi Christoph,

On Fri, Aug 30, 2019 at 06:05:15PM +0200, Christoph Hellwig wrote:
> On Mon, Aug 19, 2019 at 08:36:02AM +0100, Will Deacon wrote:
> > On Sat, Aug 17, 2019 at 09:32:46AM +0200, Christoph Hellwig wrote:
> > > No need to indirect iounmap for arm64.
> > > 
> > > Signed-off-by: Christoph Hellwig <hch@lst.de>
> > > ---
> > >  arch/arm64/include/asm/io.h | 3 +--
> > >  arch/arm64/mm/ioremap.c     | 4 ++--
> > >  2 files changed, 3 insertions(+), 4 deletions(-)
> > 
> > Not sure why we did it like this...
> > 
> > Acked-by: Will Deacon <will@kernel.org>
> 
> Can you just pick this one up through the arm64 tree for 5.4?

Unfortunately, it doesn't apply because the tree you've based it on has
removed ioremap_wt(). If you send a version based on mainline, I can
queue it.

Cheers,

Will

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
