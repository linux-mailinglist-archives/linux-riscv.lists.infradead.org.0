Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A46EAFECD
	for <lists+linux-riscv@lfdr.de>; Wed, 11 Sep 2019 16:36:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HnPmpoSsufcxYTyNzRvVAZBerqg9H2wYj3xsAAKFsC0=; b=o81WPmnU0G6xyr
	eJrLD9eS/Me/s3mS8QDY/2R9kMKPUdt+O8cW1+DXTgjtbR1T64znlY2Jeipp4ZZuYTBkyV1bPxW5p
	KJKBToB42PopGDPQzIDT1hSX5mH9QkoCEr/7WCcH63iGGKd72J5ObnwnUEUgULX+RrrFGCHj6X4Bj
	pKHP1Ma6hRKASwNIuWhyo2+UwLCqo8TD4E+k2bIPGJaihMn+z9OvVHXpY33edMVtHIc/CaeY3t4ay
	fZxjbw5J8hFh8c1W+0nSCCUfXbSnw+u4NcfVQHwwmoL+Vr7rQT9D5IVYSJNOarEHwRrOU0/ZJ6UiC
	CwBRGHmercG0HYFIlKlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i83iu-0000BX-Fb; Wed, 11 Sep 2019 14:35:56 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i83ib-0008Rl-8u; Wed, 11 Sep 2019 14:35:38 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0980D1000;
 Wed, 11 Sep 2019 07:35:34 -0700 (PDT)
Received: from C02TF0J2HF1T.local (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5DC9C3F67D;
 Wed, 11 Sep 2019 07:35:30 -0700 (PDT)
Date: Wed, 11 Sep 2019 15:35:27 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: Re: [PATCH v5 3/4] arm64: use both ZONE_DMA and ZONE_DMA32
Message-ID: <20190911143527.GB43864@C02TF0J2HF1T.local>
References: <20190909095807.18709-1-nsaenzjulienne@suse.de>
 <20190909095807.18709-4-nsaenzjulienne@suse.de>
 <b0b824bebb9ef13ce746f9914de83126b0386e23.camel@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b0b824bebb9ef13ce746f9914de83126b0386e23.camel@suse.de>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_073537_358803_1452EE77 
X-CRM114-Status: GOOD (  12.11  )
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
Cc: f.fainelli@gmail.com, mbrugger@suse.com, marc.zyngier@arm.com,
 robin.murphy@arm.com, linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 robh+dt@kernel.org, wahrenst@gmx.net, m.szyprowski@samsung.com,
 linux-riscv@lists.infradead.org, phill@raspberrypi.org,
 Will Deacon <will@kernel.org>, hch@lst.de,
 linux-arm-kernel@lists.infradead.org, linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, Sep 11, 2019 at 12:54:38PM +0200, Nicolas Saenz Julienne wrote:
> On Mon, 2019-09-09 at 11:58 +0200, Nicolas Saenz Julienne wrote:
> >  /*
> > - * Return the maximum physical address for ZONE_DMA32 (DMA_BIT_MASK(32)). It
> > - * currently assumes that for memory starting above 4G, 32-bit devices will
> > - * use a DMA offset.
> > + * Return the maximum physical address for a zone with a given address size
> > + * limit. It currently assumes that for memory starting above 4G, 32-bit
> > + * devices will use a DMA offset.
> >   */
> > -static phys_addr_t __init max_zone_dma32_phys(void)
> > +static phys_addr_t __init max_zone_phys(unsigned int zone_bits)
> >  {
> >         phys_addr_t offset = memblock_start_of_DRAM() & GENMASK_ULL(63, 32);
> > -       return min(offset + (1ULL << 32), memblock_end_of_DRAM());
> > +       return min(offset + (1ULL << zone_bits), memblock_end_of_DRAM());
> >  }
> 
> while testing other code on top of this series on odd arm64 machines I found an
> issue: when memblock_start_of_DRAM() != 0, max_zone_phys() isn't taking into
> account the offset to the beginning of memory. This doesn't matter with
> zone_bits == 32 but it does when zone_bits == 30.

I thought about this but I confused myself and the only case I had in
mind was an AMD Seattle system with RAM starting at 4GB.

What we need from this function is that the lowest naturally aligned
2^30 RAM is covered by ZONE_DMA while the rest to 2^32 are ZONE_DMA32.
This assumed that devices only capable of 30-bit (or 32-bit), have the
top address bits hardwired to be able access the bottom of the memory
(and this would be expressed in DT as the DMA offset).

I guess the fix here is to use GENMASK_ULL(63, zone_bits).

-- 
Catalin

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
