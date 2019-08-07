Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF3FA84FBA
	for <lists+linux-riscv@lfdr.de>; Wed,  7 Aug 2019 17:22:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UHMVShBmwEt8EJi5P001FZu8YJij136PiXOau3cjXCg=; b=AIK33V9xo6SJOp
	ikLlMsPnE9Zt98d+I9hTBFbaSnbiYv9V2fmAiVt748PCQfYkY58Eyr8dRiuDdpNzVIibLybYGyftJ
	/heWrOQ+3GcMOiKFM4b4lC4MBgX+t3QAIa14lnXbnH3C83Z3Tv/Aa17C+4xa7PiwynQl6m5kiHVvz
	Qztwfsjx58pWmIXTk1MiZTc6awW4x9LKnPprJv0jB6dPDiVlpZSBWssJnr9DX3akEdNzc++4UhJmz
	adV3tauwKif8h6/54M7Iwz2uGWb3G0U4NQimIXboRjiYLSDJ8UZlmR/Ea3Gfm2hBT+wt/YFnAHEP2
	iJpEKN8nCvqock3Xi+zA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvNlo-0000zd-Sw; Wed, 07 Aug 2019 15:22:32 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvNlb-0000jZ-5i
 for linux-riscv@lists.infradead.org; Wed, 07 Aug 2019 15:22:20 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C833D2199C;
 Wed,  7 Aug 2019 15:22:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565191338;
 bh=fT682hdrISgNXZBslLUtKlTZkoUPbA02ONx4Yr2ztgI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=VotQQBsc3UrvBQjlUi2YgwRp+DsSfCbJclFfcF8tHQ2WamyGB7DQGoHr2EFjZJuIJ
 Am+K9sRBsnXPEpkBFc1AuyV9eOOKjUFY+ENhRNvHCUumqBo2VtoGdOeXMSRjMILiSU
 sRfB8VINE57EjSFue1lZmDmMvytu5nWzOMyFXtys=
Date: Wed, 7 Aug 2019 17:22:15 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH] riscv: move sifive_l2_cache.c to drivers/misc
Message-ID: <20190807152215.GA26690@kroah.com>
References: <20190807151009.31971-1-hch@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190807151009.31971-1-hch@lst.de>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_082219_315185_048B7F60 
X-CRM114-Status: GOOD (  13.50  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-riscv@lists.infradead.org, palmer@sifive.com,
 linux-kernel@vger.kernel.org, arnd@arndb.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, Aug 07, 2019 at 06:10:09PM +0300, Christoph Hellwig wrote:
> The sifive_l2_cache.c is in no way related to RISC-V architecture
> memory management.  It is a little stub driver working around the fact
> that the EDAC maintainers prefer their drivers to be structured in a
> certain way that doesn't fit the SiFive SOCs.
> 
> Move the file to drivers/misc and only build it when the EDAC_SIFIVE
> config option is selected.
> 
> Fixes: a967a289f169 ("RISC-V: sifive_l2_cache: Add L2 cache controller driver for SiFive SoCs")
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>  arch/riscv/mm/Makefile                            | 1 -
>  drivers/misc/Makefile                             | 1 +
>  {arch/riscv/mm => drivers/misc}/sifive_l2_cache.c | 0
>  3 files changed, 1 insertion(+), 1 deletion(-)
>  rename {arch/riscv/mm => drivers/misc}/sifive_l2_cache.c (100%)

Why isn't this in drivers/edac/ ?
why is this a misc driver?  Seems like it should sit next to the edac
stuff.

thanks,

greg k-h

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
