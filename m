Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40238844C8
	for <lists+linux-riscv@lfdr.de>; Wed,  7 Aug 2019 08:49:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wKIFQHFC558BHqdl/yE3bHsc0R+/D2cD3qlyunO+Awk=; b=uQjFSusVZ5Afpr
	qm6SRaZ7LdJhabyOHoWAtYWWLtlFpotpPvkxPJxXwcjYUmwx8Pe5Hh6toTR9QyXnH8jO6KXoMZvSz
	r+/8kWf0hRJof3TW2a5hMvOf6h8IPdus1J3FA+A0qNX4l0S7km25+zIQ8q9796yFE+JpQMyx0V3I1
	uhGXcOsa+jlXZT+Ha+HXBazmeEylLgDgCNHTjDC2Jsp2CWeiWv6sw66rXvqCf9kp95pWO93wXwANl
	iYPr54iFhVOJlZkcQ6x8uR658sAcDyKgzLopR2vEo/C256FLWkANKeIRR5iaDGCj5hlDm9DQHEqBy
	HPEwmrNI+sxGe070Vg4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvFkp-0001tb-A9; Wed, 07 Aug 2019 06:48:59 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92 #3 (Red Hat
 Linux)) id 1hvFkn-0001tR-8b; Wed, 07 Aug 2019 06:48:57 +0000
Date: Tue, 6 Aug 2019 23:48:57 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Paul Walmsley <paul.walmsley@sifive.com>
Subject: Re: [PATCH] riscv: delay: use do_div() instead of __udivdi3()
Message-ID: <20190807064857.GA6942@infradead.org>
References: <alpine.DEB.2.21.9999.1908061906240.25231@viisi.sifive.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.9999.1908061906240.25231@viisi.sifive.com>
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
Cc: linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

> diff --git a/arch/riscv/lib/delay.c b/arch/riscv/lib/delay.c
> index 87ff89e88f2c..8c686934e0f6 100644
> --- a/arch/riscv/lib/delay.c
> +++ b/arch/riscv/lib/delay.c
> @@ -81,9 +81,14 @@ EXPORT_SYMBOL(__delay);
>  void udelay(unsigned long usecs)
>  {
>  	u64 ucycles = (u64)usecs * lpj_fine * UDELAY_MULT;
> +	u64 n;
> +	u32 rem;
>  
>  	if (unlikely(usecs > MAX_UDELAY_US)) {
> -		__delay((u64)usecs * riscv_timebase / 1000000ULL);
> +		n = (u64)usecs * riscv_timebase;
> +		rem = do_div(n, 1000000);
> +
> +		__delay(n);
>  		return;

A few comments on the variable usage:

I think you really want a variable of type u64 that contains the usecs
value instead of casting it three times.

n and rem can be easily declared inside the branch.

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
