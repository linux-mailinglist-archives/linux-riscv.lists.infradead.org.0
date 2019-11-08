Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9807F4154
	for <lists+linux-riscv@lfdr.de>; Fri,  8 Nov 2019 08:25:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ixb51r6z7aOnR6Sr1kxhHLv1T8mD7cw8smgNdAKnVwk=; b=muWcoqLHQwG5Q5
	aeN4crNxjpe96dhAJnKQyQNzMFeCF7C0G5d73g6PzLU9L+bflgkGF3Yv51AG4n+eoAKBeZo1S1V9h
	dJumFgC7h/HB8YnnXqd/qLE0rxwCsib3iFGpc84taeURwGptDzgtnHtBMaAnBH3/mdnr/ziQatWzM
	DXuMWr+2Akvl60oyJbjFWPuWDjGkKRXYwJYBdk4T9hHZRj87dCQHPvhMLZtbmXCF52IYF6V4LXS/u
	O4Sxs6G5A0BoYYO3qUApsN67+E7PNJANNU0xyQ7KAlQyrv+jRnxDvXOMovD20u/Qgjr8JPX3oQG2d
	gT6wdo6GWpuY4IwOUQjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSye6-0006es-AE; Fri, 08 Nov 2019 07:25:26 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1iSye3-0006ea-Gc; Fri, 08 Nov 2019 07:25:23 +0000
Date: Thu, 7 Nov 2019 23:25:23 -0800
From: Christoph Hellwig <hch@infradead.org>
To: Zong Li <zong.li@sifive.com>
Subject: Re: [PATCH v2] riscv: Use PMD_SIZE to repalce PTE_PARENT_SIZE
Message-ID: <20191108072523.GA20338@infradead.org>
References: <1572920412-15661-1-git-send-email-zong.li@sifive.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1572920412-15661-1-git-send-email-zong.li@sifive.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
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
Cc: Anup.Patel@wdc.com, linux-riscv@lists.infradead.org, palmer@sifive.com,
 linux-kernel@vger.kernel.org, paul.walmsley@sifive.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, Nov 04, 2019 at 06:20:12PM -0800, Zong Li wrote:
>  	uintptr_t map_size = PAGE_SIZE;
>  
> -	/* Upgrade to PMD/PGDIR mappings whenever possible */
> -	if (!(base & (PTE_PARENT_SIZE - 1)) &&
> -	    !(size & (PTE_PARENT_SIZE - 1)))
> -		map_size = PTE_PARENT_SIZE;
> +	/* Upgrade to PMD_SIZE mappings whenever possible */
> +	if (!(base & (PMD_SIZE - 1)) &&
> +	    !(size & (PMD_SIZE - 1)))
> +		map_size = PMD_SIZE;

The check easily fits onto a single line now.  Also the map_size
variable is rather pointless.  Why not:

	if ((base & (PMD_SIZE - 1) || (size & (PMD_SIZE - 1)))
		return PAGE_SIZE;
	return PMD_SIZE;

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
