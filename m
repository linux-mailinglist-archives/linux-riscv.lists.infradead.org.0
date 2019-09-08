Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CCB02AD0C9
	for <lists+linux-riscv@lfdr.de>; Sun,  8 Sep 2019 23:27:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NDzcmEENtHb6z8ID7sJq+6KGOpmNDQwTS5ixkfTiICU=; b=is1P3yhGBmtBkB
	WFZTRAUCT4FVXofOpfmtCp2zLfcB0VEyqHRHgXv0qnKm4cj514vdMjslJAnmsQ+d7ndpMB7Z5lR4O
	uo17kPrBrgEsBYgrqe7ddLSEvMJhDbPCDwSqx1z2COZxBLiGOSQeOhPQoznvpIR/j3YkX0MfW9L/y
	G7stfUctFga28s2/zQW+1Dt4aaGAgvFty9+5AKqaW98R32l2MXthIGE+7JoKvXqK+3W8IJX0rKDeZ
	5tvF6CJ73OsaXmjV6Ekd2dICT/QKAPyIKg7pXaM+8lS0D+bvDfH/kYmqtj9f6eXqp6P6XP13+XDXy
	nSQby9mJ9s2G10orWQXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i74iZ-0005Yd-5B; Sun, 08 Sep 2019 21:27:31 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i74iR-0005Sj-42; Sun, 08 Sep 2019 21:27:24 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C23C2337;
 Sun,  8 Sep 2019 14:27:16 -0700 (PDT)
Received: from huawei_p9_lite.cambridge.arm.com (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id AC4243F67D;
 Sun,  8 Sep 2019 14:27:13 -0700 (PDT)
Date: Sun, 8 Sep 2019 22:27:11 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: Re: [PATCH v4 3/4] arm64: use both ZONE_DMA and ZONE_DMA32
Message-ID: <20190908212711.GA84759@huawei_p9_lite.cambridge.arm.com>
References: <20190906120617.18836-1-nsaenzjulienne@suse.de>
 <20190906120617.18836-4-nsaenzjulienne@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190906120617.18836-4-nsaenzjulienne@suse.de>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190908_142723_209774_FA5CEC08 
X-CRM114-Status: GOOD (  11.49  )
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

On Fri, Sep 06, 2019 at 02:06:14PM +0200, Nicolas Saenz Julienne wrote:
> @@ -430,7 +454,7 @@ void __init arm64_memblock_init(void)
>  
>  	high_memory = __va(memblock_end_of_DRAM() - 1) + 1;
>  
> -	dma_contiguous_reserve(arm64_dma32_phys_limit);
> +	dma_contiguous_reserve(arm64_dma_phys_limit ? : arm64_dma32_phys_limit);
>  }
>  
>  void __init bootmem_init(void)
> @@ -534,6 +558,7 @@ static void __init free_unused_memmap(void)
>  void __init mem_init(void)
>  {
>  	if (swiotlb_force == SWIOTLB_FORCE ||
> +	    max_pfn > (arm64_dma_phys_limit >> PAGE_SHIFT) ||
>  	    max_pfn > (arm64_dma32_phys_limit >> PAGE_SHIFT))
>  		swiotlb_init(1);

So here we want to initialise the swiotlb only if we need bounce
buffers. Prior to this patch, we assumed that swiotlb is needed if
max_pfn is beyond the reach of 32-bit devices. With ZONE_DMA, we need to
lower this limit to arm64_dma_phys_limit.

If ZONE_DMA is enabled, just comparing max_pfn with arm64_dma_phys_limit
is sufficient since the dma32 one limit always higher. However, if
ZONE_DMA is disabled, arm64_dma_phys_limit is 0, so we may initialise
swiotlb unnecessarily. I guess you need a similar check to the
dma_contiguous_reserve() above.

With that:

Reviewed-by: Catalin Marinas <catalin.marinas@arm.com>

Unless there are other objections, I can queue this series for 5.5 in a
few weeks time (too late for 5.4).

-- 
Catalin

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
