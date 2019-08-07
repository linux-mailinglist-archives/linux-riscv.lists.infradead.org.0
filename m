Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CCA384FCA
	for <lists+linux-riscv@lfdr.de>; Wed,  7 Aug 2019 17:24:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SNp7s4r6hEtDwYac4dSZgxi4EbBn/WKsx8cQInSe6mM=; b=c0Ymi3x76Szt/y
	fC8JiT/ldKHbJPdzAMc9F9z74jPp3TlEQfcneHVpnZ8GtB4Ei+qKiMxyBhLT7IAPwtNNtz5Kqc6Zj
	cjD38WVu5QlHWLPijc8r8UufvIAGju6G9oaew0IGDVCdxjc3zhDzgAAp6zXAMujRHGYjcIJe0zcXm
	CWlNyPgOtFxXfPFxskhtbL4RB7c5mu42uOuNO37o2SxKFrBLWxOJY02r5svQQIpY7xKvMUWnN1OB1
	/EebPOX0w7O5jOk++KoezDx7Etog7QnVt7ccJQ2AuSaof01pOFbK0GWASfHXFTGPcaOYaQ1XKlUnM
	wtypXC9avM+dD+FhA/3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvNo1-0001EV-3G; Wed, 07 Aug 2019 15:24:49 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvNnx-0001Da-3c
 for linux-riscv@lists.infradead.org; Wed, 07 Aug 2019 15:24:46 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 20D6D68B20; Wed,  7 Aug 2019 17:24:39 +0200 (CEST)
Date: Wed, 7 Aug 2019 17:24:38 +0200
From: Christoph Hellwig <hch@lst.de>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [PATCH] riscv: move sifive_l2_cache.c to drivers/misc
Message-ID: <20190807152438.GA16495@lst.de>
References: <20190807151009.31971-1-hch@lst.de>
 <20190807152215.GA26690@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190807152215.GA26690@kroah.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_082445_299661_BA9891B2 
X-CRM114-Status: GOOD (  10.97  )
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
Cc: arnd@arndb.de, palmer@sifive.com, linux-kernel@vger.kernel.org,
 james.morse@arm.com, linux-riscv@lists.infradead.org, mchehab@kernel.org,
 Christoph Hellwig <hch@lst.de>, linux-edac@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, Aug 07, 2019 at 05:22:15PM +0200, Greg KH wrote:
> > Fixes: a967a289f169 ("RISC-V: sifive_l2_cache: Add L2 cache controller driver for SiFive SoCs")
> > Signed-off-by: Christoph Hellwig <hch@lst.de>
> > ---
> >  arch/riscv/mm/Makefile                            | 1 -
> >  drivers/misc/Makefile                             | 1 +
> >  {arch/riscv/mm => drivers/misc}/sifive_l2_cache.c | 0
> >  3 files changed, 1 insertion(+), 1 deletion(-)
> >  rename {arch/riscv/mm => drivers/misc}/sifive_l2_cache.c (100%)
> 
> Why isn't this in drivers/edac/ ?
> why is this a misc driver?  Seems like it should sit next to the edac
> stuff.

No idea.  EDAC maintainers, would you object to taking what is 
currently in arch/riscv/mm//sifive_l2_cache.c to drivers/edac/ ?

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
