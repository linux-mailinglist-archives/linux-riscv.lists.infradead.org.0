Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72AE1AC4A2
	for <lists+linux-riscv@lfdr.de>; Sat,  7 Sep 2019 06:39:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6/uIvO0j74h00R/19UFrhgwPtAMrtue4T+UsyOIAQfw=; b=QUduIM3+9xjLl6
	HLVHW2m+QeHTolSEYsZXM0aptEWRdVfwNsPLV2ZdR3gvrBPlSCHyOolN3F6GsaQoN+Jfp2wF/pBTG
	zOi/px0uDRw5duzE/x26rJ+LHr+jdM/pkOH95IjegQs8wYcK03Pm4v0FK9wdMtmSeu8tAjhed9DvB
	EvjuicuI4hGHoeur+AuufIIGJlnWrYivDRefS+gb9N7NU04yUMCn6NBm5soue0iyggB+9NuHSyzH4
	q03XpXgsP5l/vHzomKAnlH3EptaQvfYSEnSSsMu7V5ColJZFLSUOJ0yMs3inRfVqTGq8N1EghczmR
	dWwrjxTpYAX3SESUzppQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6SVO-0004mT-TW; Sat, 07 Sep 2019 04:39:23 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6SVI-0004bE-K8
 for linux-riscv@lists.infradead.org; Sat, 07 Sep 2019 04:39:18 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 95CBF68B05; Sat,  7 Sep 2019 06:39:11 +0200 (CEST)
Date: Sat, 7 Sep 2019 06:39:11 +0200
From: Christoph Hellwig <hch@lst.de>
To: Paul Walmsley <paul.walmsley@sifive.com>
Subject: Re: [PATCH] riscv: move sifive_l2_cache.c to drivers/soc
Message-ID: <20190907043911.GA21510@lst.de>
References: <20190818082935.14869-1-hch@lst.de>
 <alpine.DEB.2.21.9999.1909061525040.6292@viisi.sifive.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.9999.1909061525040.6292@viisi.sifive.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_213916_814166_8E4B58C6 
X-CRM114-Status: UNSURE (   8.60  )
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
Cc: palmer@sifive.com, linux-kernel@vger.kernel.org, bp@alien8.de,
 linux-riscv@lists.infradead.org, mchehab@kernel.org,
 Christoph Hellwig <hch@lst.de>, linux-edac@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, Sep 06, 2019 at 03:27:44PM -0700, Paul Walmsley wrote:
> - Since the patch doesn't fix any bugs, there shouldn't be a Fixes: line.  
> Please let me know whether I can drop the line locally before I apply the 
> patch, or whether you'd like to resend it.

It fixes the bug that we build code into a default RISC-V image that
we absolutely should not.  And it fixes the bug that the patch placed
code in absolutely the wrong place.

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
