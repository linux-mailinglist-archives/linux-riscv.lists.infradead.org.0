Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C38BAA9E3
	for <lists+linux-riscv@lfdr.de>; Thu,  5 Sep 2019 19:21:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cFQVqk3di8a7tgKps5tb165E40PvA9jUds6rZCXnDB4=; b=dzIwf+oOBVaq2w
	mhEHRbq3fhEsqUoNKeYv+Irq2H/9gFFZMErCWvzzkTsPwb71wiraYuQW2D770Pz/M0aPZ34IrMzsJ
	8ue6kH4ZbZuxXlUyA9ZW/Wd4l4Va6RHwDpN/MFWw4IB8zFLBLR2TVialfWYLJTFk9EPAKj2F9elDK
	9LKERk5ht7R6kwEKo58lCVQC3BzUXIKZB/k8VrfnAWQECORIMpNtA3I4dWwEnIt80QMk0sgSX9g+A
	pfPIkBfnbcXQEeam6JZct/khDINWipkM0+wUD/HBd3hB4+YEY9r8kJlLMcn7QofAGv44G0siKy7Gs
	XuC8FQ1oNW3m/BQcRPXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5vS7-00037n-6E; Thu, 05 Sep 2019 17:21:47 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i5vRs-0002yB-Qi; Thu, 05 Sep 2019 17:21:34 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7537A337;
 Thu,  5 Sep 2019 10:21:32 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.78])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 1EFA83F718; Thu,  5 Sep 2019 10:21:30 -0700 (PDT)
Date: Thu, 5 Sep 2019 18:21:28 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: Re: [PATCH v3 4/4] mm: refresh ZONE_DMA and ZONE_DMA32 comments in
 'enum zone_type'
Message-ID: <20190905172126.GG31268@arrakis.emea.arm.com>
References: <20190902141043.27210-1-nsaenzjulienne@suse.de>
 <20190902141043.27210-5-nsaenzjulienne@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190902141043.27210-5-nsaenzjulienne@suse.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_102132_914761_3C1773EC 
X-CRM114-Status: UNSURE (   7.54  )
X-CRM114-Notice: Please train this message.
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, mbrugger@suse.com, marc.zyngier@arm.com,
 robin.murphy@arm.com, Palmer Dabbelt <palmer@sifive.com>,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org, robh+dt@kernel.org,
 wahrenst@gmx.net, Paul Walmsley <paul.walmsley@sifive.com>,
 m.szyprowski@samsung.com, f.fainelli@gmail.com,
 linux-riscv@lists.infradead.org, phill@raspberrypi.org, will@kernel.org,
 hch@lst.de, linux-arm-kernel@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, Sep 02, 2019 at 04:10:42PM +0200, Nicolas Saenz Julienne wrote:
> These zones usage has evolved with time and the comments were outdated.
> This joins both ZONE_DMA and ZONE_DMA32 explanation and gives up to date
> examples on how they are used on different architectures.
> 
> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> Reviewed-by: Christoph Hellwig <hch@lst.de>

Reviewed-by: Catalin Marinas <catalin.marinas@arm.com>

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
