Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4439DA56E9
	for <lists+linux-riscv@lfdr.de>; Mon,  2 Sep 2019 15:01:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lMlnUgW2FunACKXDoofi7Z3pooh2Idxw3oGMcTCzHNk=; b=tVuwKjXR6x7ceM
	qwl4zLeN4VMLh98AGexVX3r4YuNAddmptOFlL8bWtp+zrk2I9Pql7OzwWKviRcE0W2phM1t2O1mNJ
	QlRNeQq/1MsiJ9NfiP4yzMG/oLec29mTfnWe/ijYiSWbBYWcvjFpTc+T2ROWl9evAHNvVjydM5Xzp
	dwb2jAehXrZUG4CN5KDpqmRQLkO1jKlNk/2c85hpJX2zlhPa8S4xHvLKdEIYQkrCfiFXQFUvn4Dn+
	74nKNUQI9zttNNjvRDIs49UxEe1qW5klODQYdqz8qHlCOyeY+qW2JR2ASZ7kKjuCf2iM6be4/rMDT
	X1gPgBxAcnCq6Dzg2gZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4lxV-0008Hh-0I; Mon, 02 Sep 2019 13:01:25 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4lxC-00085v-O4; Mon, 02 Sep 2019 13:01:08 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 0E88568AFE; Mon,  2 Sep 2019 15:01:02 +0200 (CEST)
Date: Mon, 2 Sep 2019 15:01:01 +0200
From: Christoph Hellwig <hch@lst.de>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: Re: [PATCH v2 01/11] asm-generic: add dma_zone_size
Message-ID: <20190902130101.GA2051@lst.de>
References: <20190820145821.27214-1-nsaenzjulienne@suse.de>
 <20190820145821.27214-2-nsaenzjulienne@suse.de>
 <20190826070939.GD11331@lst.de>
 <027272c27398b950f207101a2c5dbc07a30a36bc.camel@suse.de>
 <20190830144536.GJ36992@arrakis.emea.arm.com>
 <bdeda2206b751a1c6a8d2e0732186792282633c6.camel@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <bdeda2206b751a1c6a8d2e0732186792282633c6.camel@suse.de>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_060106_933843_E011807E 
X-CRM114-Status: GOOD (  10.62  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, eric@anholt.net,
 linux-riscv@lists.infradead.org, frowand.list@gmail.com,
 Christoph Hellwig <hch@lst.de>, m.szyprowski@samsung.com,
 linux-arch@vger.kernel.org, f.fainelli@gmail.com, will@kernel.org,
 devicetree@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
 marc.zyngier@arm.com, robh+dt@kernel.org, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, phill@raspberryi.org, mbrugger@suse.com,
 linux-mm@kvack.org, linux-kernel@vger.kernel.org,
 iommu@lists.linux-foundation.org, wahrenst@gmx.net, akpm@linux-foundation.org,
 Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, Aug 30, 2019 at 07:24:25PM +0200, Nicolas Saenz Julienne wrote:
> I'll be happy to implement it that way. I agree it's a good compromise.
> 
> @Christoph, do you still want the patch where I create 'zone_dma_bits'? With a
> hardcoded ZONE_DMA it's not absolutely necessary. Though I remember you said it
> was a first step towards being able to initialize dma-direct's min_mask in
> meminit.

I do like the variable better than the current #define.  I wonder if
really want a mask or a max_zone_dma_address like variable.  So for this
series feel free to drop the patch.   I'll see if I'll pick it up
later or if we can find some way to automatically propagate that
information from the zone initialization.

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
