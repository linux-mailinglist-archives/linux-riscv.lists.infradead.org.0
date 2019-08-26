Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1C2D9C9E8
	for <lists+linux-riscv@lfdr.de>; Mon, 26 Aug 2019 09:10:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NbpHebQPTTcIsE2peDy+4Gqaguev2QIwqvnH2QB3M/I=; b=XHpylfksOEpt5c
	x3r66n61VMfaoBgi9Mks4StwmI/tBn8amCrqknVPJVM2gB0H0bT7lk2PyoM3BvaT0P9dZLsXh4bB7
	KntLaowio/HcpFRtnnTAtkDHOKhsZN/fr8FDoY9N28pdS2L6+4pzp0In/5dHtkefKvr2lYYnVRpP6
	EL4Fz0GwyQijfTaab7UlgCFitZkQj37lysuFQVb+X/Aou6mZxfdtC1AB9IxRCH/+fcUdOFHVfim4O
	oF5rhTWY12AlvlQANxHfSr9kRwFdK2I9MBnOkErQEcJ4WxrZiwKnNpBEJ0XsWKJonv4UUDXejTmZr
	WFVs1L7KZXuATvnXS7ZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i298e-0002v9-E0; Mon, 26 Aug 2019 07:10:04 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i298J-0002k5-Kh; Mon, 26 Aug 2019 07:09:45 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id B04E568B02; Mon, 26 Aug 2019 09:09:39 +0200 (CEST)
Date: Mon, 26 Aug 2019 09:09:39 +0200
From: Christoph Hellwig <hch@lst.de>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: Re: [PATCH v2 01/11] asm-generic: add dma_zone_size
Message-ID: <20190826070939.GD11331@lst.de>
References: <20190820145821.27214-1-nsaenzjulienne@suse.de>
 <20190820145821.27214-2-nsaenzjulienne@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190820145821.27214-2-nsaenzjulienne@suse.de>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_000944_757939_D0F6482F 
X-CRM114-Status: UNSURE (   8.24  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: catalin.marinas@arm.com, eric@anholt.net, linux-riscv@lists.infradead.org,
 frowand.list@gmail.com, hch@lst.de, m.szyprowski@samsung.com,
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

On Tue, Aug 20, 2019 at 04:58:09PM +0200, Nicolas Saenz Julienne wrote:
> Some architectures have platform specific DMA addressing limitations.
> This will allow for hardware description code to provide the constraints
> in a generic manner, so as for arch code to properly setup it's memory
> zones and DMA mask.

I know this just spreads the arm code, but I still kinda hate it.

MAX_DMA_ADDRESS is such an oddly defined concepts.  We have the mm
code that uses it to start allocating after the dma zones, but
I think that would better be done using a function returning
1 << max(zone_dma_bits, 32) or so.  Then we have about a handful
of drivers using it that all seem rather bogus, and one of which
I think are usable on arm64.

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
