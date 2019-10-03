Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6590FCA5AD
	for <lists+linux-riscv@lfdr.de>; Thu,  3 Oct 2019 18:52:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0ca84uCC3rZPAjhQcl8H5laH8oNQuWvgnTZGRJ9CiXw=; b=XlkRy84h0CtPnr
	yXPzHHZMn6ZA4rG817BXQ0J5aLED06YyVmJv4DaYipI0XI/FOsDEHrNiNU51WbW19BrC2rYePoCNW
	10QJdAc0nq0SI2LXInP/bln/AbblX4C396TUDQy5XJ94Bkt8rvQBlhsiPPO/rTXTpZB19IFcZjy7b
	wJLOAmKwjCQp0NwRSSrVoc02bfTG+7af1LahObSjj5OHdEuKAw5Tgt2SjurlPeJC5325h4keTESla
	mruZb9eGY1+RugFdD5G/FIsU3uepolCjSLOIJ/ZfpswynbPQSDOKwvZTxghErlyBgZu2MEttmC8JK
	Imh8uTzVFIWudaig7oSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iG4L2-00047C-8n; Thu, 03 Oct 2019 16:52:24 +0000
Received: from ms.lwn.net ([45.79.88.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iG4Kz-000467-Tg
 for linux-riscv@lists.infradead.org; Thu, 03 Oct 2019 16:52:23 +0000
Received: from lwn.net (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ms.lwn.net (Postfix) with ESMTPSA id 414B02D4;
 Thu,  3 Oct 2019 16:52:12 +0000 (UTC)
Date: Thu, 3 Oct 2019 10:52:11 -0600
From: Jonathan Corbet <corbet@lwn.net>
To: Paul Walmsley <paul.walmsley@sifive.com>
Subject: Re: [PATCH] riscv-docs: correct the sequence of the magic number 2
 since it's little endian
Message-ID: <20191003105211.4ec1ed16@lwn.net>
In-Reply-To: <alpine.DEB.2.21.9999.1910011132280.3732@viisi.sifive.com>
References: <20190916130108.31404-1-clin@suse.com>
 <20191001072212.21d55899@lwn.net>
 <alpine.DEB.2.21.9999.1910011132280.3732@viisi.sifive.com>
Organization: LWN.net
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_095221_977765_004D920C 
X-CRM114-Status: UNSURE (   6.44  )
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
Cc: "aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "palmer@sifive.com" <palmer@sifive.com>, Chester Lin <clin@suse.com>,
 "atish.patra@wdc.com" <atish.patra@wdc.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, 1 Oct 2019 11:35:11 -0700 (PDT)
Paul Walmsley <paul.walmsley@sifive.com> wrote:

> This was simply due to idiocy on my part, due to a very last-minute patch 
> submission, where I missed that the original documented magic number was 
> already in little-endian format.  The updated number from Chester is 
> correct.
> 
> So,
> 
> Reviewed-by: Paul Walmsley <paul.walmsley@sifive.com>

Great, patch applied, thanks.

jon

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
