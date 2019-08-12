Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE9A98A168
	for <lists+linux-riscv@lfdr.de>; Mon, 12 Aug 2019 16:43:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZUJWVoLB/Dg2/xrZgbaxHejF3Yx3MG/kX2d7T2SmLkA=; b=YE9FcGs6hbCQbT
	lziCW3Z53glat4gb84l94KoXBZ31JJgYv/lOs64uwq/bH0Eu2ghzTzjlnpRVLeZyGd6JPIpcH6txQ
	UHj61Gp8h8dSFbgZwjB19teRD28bTBjzKQUe8We0Dt3bUAdbOcaqRSS43psFpY8TAGq+Exoxwl3lr
	PXrEMeX56ZfKKWBJu0AtAan1ykoOZEMw/SyZ1XHTFaIWYelf316RLmihNhynDwqktgq7PXXCk86Tz
	4bLDR87NNBJlHvPMqMJc4bqqBsyp+hQJ1Dm+28OhRfo27FtWh6QBkDp8IWSF91NZWecMO6bnqtYoS
	vZ2xHjJ2Qhuai1PqMJ/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxBXx-0007Np-7f; Mon, 12 Aug 2019 14:43:41 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92 #3 (Red Hat
 Linux)) id 1hxBXt-0007NY-Ny; Mon, 12 Aug 2019 14:43:37 +0000
Date: Mon, 12 Aug 2019 07:43:37 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Paul Walmsley <paul.walmsley@sifive.com>
Subject: Re: [PATCH] riscv: fix flush_tlb_range() end address for
 flush_tlb_page()
Message-ID: <20190812144337.GA26897@infradead.org>
References: <alpine.DEB.2.21.9999.1908080923320.31070@viisi.sifive.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.9999.1908080923320.31070@viisi.sifive.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
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
Cc: schwab@suse.de, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

>  #define flush_tlb_range(vma, start, end) \
>  	remote_sfence_vma(mm_cpumask((vma)->vm_mm), start, (end) - (start))
> -#define flush_tlb_mm(mm) \
> +
> +static inline void flush_tlb_page(struct vm_area_struct *vma,
> +				  unsigned long addr) {
> +	flush_tlb_range(vma, addr, addr + PAGE_SIZE);
> +}

Please put the opening brace on a line of its own.

Otherwise looks fine:

Reviewed-by: Christoph Hellwig <hch@lst.de>

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
