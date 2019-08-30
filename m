Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 311EAA3977
	for <lists+linux-riscv@lfdr.de>; Fri, 30 Aug 2019 16:46:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nTpQM5/kdZSnIVqYoe/tc4iQLiIA3TPz4ygYgJdnoZ0=; b=sjQhUg5CnpqQCG
	Qaj1SAhQdvhZkiXsE6lDwKSEOuj2Kju47+KdGOWDICRsR9xHvOXJDwSVDIZWN3W7Lw+swP2Fzu9z8
	PHe8EKwzMX/3bsqKeoR8w1jE2I7ATaYHtEdicgZg3m0nj+oD54tZg96KB1vhV5xGpqhNzFLAD5p2f
	5yxqLjApgHbsGIeFNOBsh1Gu+wc21ptv1sWpmO8q9PhoG1mCWOwQXJ8xsdYkcIw/jHvwCvYtj4Jpq
	OqEsYYWsG+4EKQdC36t2HMQNL36H2CyDsV9xOIZNOsUJT/0mCj4O+kNxRHHMmjShM2Xk2c5Uk0EMy
	2zjNclXwQRgAsJrz3ypA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3iA6-0005aS-9I; Fri, 30 Aug 2019 14:46:02 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i3i9l-0005Rr-Nt; Fri, 30 Aug 2019 14:45:42 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 307CB344;
 Fri, 30 Aug 2019 07:45:41 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.78])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 657F23F703; Fri, 30 Aug 2019 07:45:38 -0700 (PDT)
Date: Fri, 30 Aug 2019 15:45:36 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: Re: [PATCH v2 01/11] asm-generic: add dma_zone_size
Message-ID: <20190830144536.GJ36992@arrakis.emea.arm.com>
References: <20190820145821.27214-1-nsaenzjulienne@suse.de>
 <20190820145821.27214-2-nsaenzjulienne@suse.de>
 <20190826070939.GD11331@lst.de>
 <027272c27398b950f207101a2c5dbc07a30a36bc.camel@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <027272c27398b950f207101a2c5dbc07a30a36bc.camel@suse.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_074541_823932_BC898C34 
X-CRM114-Status: GOOD (  13.28  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-mm@kvack.org, linux-riscv@lists.infradead.org, will@kernel.org,
 Christoph Hellwig <hch@lst.de>, m.szyprowski@samsung.com,
 linux-arch@vger.kernel.org, f.fainelli@gmail.com, frowand.list@gmail.com,
 devicetree@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
 marc.zyngier@arm.com, robh+dt@kernel.org, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, phill@raspberryi.org, mbrugger@suse.com,
 eric@anholt.net, linux-kernel@vger.kernel.org,
 iommu@lists.linux-foundation.org, wahrenst@gmx.net, akpm@linux-foundation.org,
 Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, Aug 26, 2019 at 03:46:52PM +0200, Nicolas Saenz Julienne wrote:
> On Mon, 2019-08-26 at 09:09 +0200, Christoph Hellwig wrote:
> > On Tue, Aug 20, 2019 at 04:58:09PM +0200, Nicolas Saenz Julienne wrote:
> > > Some architectures have platform specific DMA addressing limitations.
> > > This will allow for hardware description code to provide the constraints
> > > in a generic manner, so as for arch code to properly setup it's memory
> > > zones and DMA mask.
> > 
> > I know this just spreads the arm code, but I still kinda hate it.
> 
> Rob's main concern was finding a way to pass the constraint from HW definition
> to arch without widening fdt's architecture specific function surface. I'd say
> it's fair to argue that having a generic mechanism makes sense as it'll now
> traverse multiple archs and subsystems.
> 
> I get adding globals like this is not very appealing, yet I went with it as it
> was the easier to integrate with arm's code. Any alternative suggestions?

In some discussion with Robin, since it's just RPi4 that we are aware of
having such requirement on arm64, he suggested that we have a permanent
ZONE_DMA on arm64 with a default size of 1GB. It should cover all arm64
SoCs we know of without breaking the single Image binary. The arch/arm
can use its current mach-* support.

I may like this more than the proposed early_init_dt_get_dma_zone_size()
here which checks for specific SoCs (my preferred way was to build the
mask from all buses described in DT but I hadn't realised the
complications).

-- 
Catalin

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
