Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96FF798F47
	for <lists+linux-riscv@lfdr.de>; Thu, 22 Aug 2019 11:26:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NAv5PRbMjJ5Qwt8kSmG/LkawEcMXmw7m2P41FMXbg34=; b=ZeS7Z/kkVFlaQ9
	qS6Ez0s6jEgSkUY9VmBnGTcYt/dXumkDpqJTIEWVFW16Dw8uXNhHApiLdxgqszfvbLCdgwD4JNYin
	v7QNMWU+RlnGchtTE3sKffiqtQIa09HAFvn6WYJynjPtGW/r601NrIqI+38x59IKRvV+Uokf/uDyM
	EGZ6ckul3/LsL5nGekhk2fctfy4IBEvX/UFseT6werbPepCbVmxpbwPAPupEup/M6Wh2Z+wa46IGB
	DNRpfvxEBB2aq5GfS44weyyyRNJILQnW5HGYGiMimND4uuIfY1mF9g4hXjnpn0m7KFEDhM6679DaP
	/BPaw/3pK/7zIlKqQ3Tw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0jMm-00039c-Im; Thu, 22 Aug 2019 09:26:48 +0000
Received: from [177.133.63.56] (helo=coco.lan)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1i0jMf-00037g-FT; Thu, 22 Aug 2019 09:26:41 +0000
Date: Thu, 22 Aug 2019 06:26:35 -0300
From: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH] riscv: move sifive_l2_cache.c to drivers/soc
Message-ID: <20190822062635.00f6e507@coco.lan>
In-Reply-To: <20190819062619.GA20211@lst.de>
References: <20190818082935.14869-1-hch@lst.de> <20190819060904.GA4841@zn.tnic>
 <20190819062619.GA20211@lst.de>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
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
Cc: palmer@sifive.com, linux-kernel@vger.kernel.org,
 Yash Shah <yash.shah@sifive.com>, Borislav Petkov <bp@alien8.de>,
 paul.walmsley@sifive.com, linux-riscv@lists.infradead.org,
 linux-edac@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Em Mon, 19 Aug 2019 08:26:19 +0200
Christoph Hellwig <hch@lst.de> escreveu:

> On Mon, Aug 19, 2019 at 08:09:04AM +0200, Borislav Petkov wrote:
> > On Sun, Aug 18, 2019 at 10:29:35AM +0200, Christoph Hellwig wrote:  
> > > The sifive_l2_cache.c is in no way related to RISC-V architecture
> > > memory management.  It is a little stub driver working around the fact
> > > that the EDAC maintainers prefer their drivers to be structured in a
> > > certain way  
> > 
> > That changed recently so I guess we can do the per-IP block driver after
> > all, if people would still prefer it.  
> 
> That would seem like the best idea.  But I don't really know this code
> well enough myself, and I really need to get this code out of the
> forced on RISC-V codebase as some SOCs I'm working with simply don't
> have the memory for it..
> 
> So unless someone signs up to do a per-IP block edac drivers instead
> very quickly I'd still like to see something like this go into 5.4
> for now.

I'm wandering if we should at least add an entry for this one at
MAINTAINERS, pointing it to the EDAC mailing list. Something like:

diff --git a/MAINTAINERS b/MAINTAINERS
index 7dfe381c8b43..1c3bc5aa3af0 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -5906,6 +5906,7 @@ M:	Yash Shah <yash.shah@sifive.com>
 L:	linux-edac@vger.kernel.org
 S:	Supported
 F:	drivers/edac/sifive_edac.c
+F:	drivers/soc/sifive/
 
 EDAC-SKYLAKE
 M:	Tony Luck <tony.luck@intel.com>


Thanks,
Mauro

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
