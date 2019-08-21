Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 49F4C97D78
	for <lists+linux-riscv@lfdr.de>; Wed, 21 Aug 2019 16:46:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xohj3CooOIbJZFsw0NIc3BH4oOPyrYsOI8z5Kcsipfw=; b=RTFe2xAEdsW9Vq
	IrvUGgV3tYBLnXQ7cth31UIgJdvhiv9FuCT1tIH7cjf94qlgcC3M1pZ5QxQjFA0/z8qLVa7AcyFUV
	OODJv+P7hnnIbWkZv75vnb6/JpKZ/ji48f7jA8Tt7qPx6IWZur8OfhF5CYah4GUQ87C9DvirRneCC
	mtN9BgjIx2H1BIESbf6TumDfJuNyU4ibg8O4jcBSS4+q1g5BIZdMbFqHwgopz9VxyYyGefgJvOMDQ
	Gmx/Kg4un8Rkv/6SgPmj08DENvmDIarTdsVcPxKBSSJMIur7gMWXyntthvDUwSUGX6M37kgQTuknS
	AoPlyx6CR11lycnlw29w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0RsL-00081s-Ed; Wed, 21 Aug 2019 14:46:13 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92 #3 (Red Hat
 Linux)) id 1i0Rs0-0007h8-PC; Wed, 21 Aug 2019 14:45:52 +0000
Date: Wed, 21 Aug 2019 07:45:52 -0700
From: "hch@infradead.org" <hch@infradead.org>
To: Atish Patra <atish.patra@wdc.com>
Subject: Re: [v2 PATCH] RISC-V: Optimize tlb flush path.
Message-ID: <20190821144552.GB4925@infradead.org>
References: <20190820004735.18518-1-atish.patra@wdc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190820004735.18518-1-atish.patra@wdc.com>
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Anup Patel <anup@brainfault.org>,
 Palmer Dabbelt <palmer@sifive.com>, linux-kernel@vger.kernel.org,
 "hch@infradead.org" <hch@infradead.org>,
 Andreas Schwab <schwab@linux-m68k.org>,
 Paul Walmsley <paul.walmsley@sifive.com>, linux-riscv@lists.infradead.org,
 Allison Randal <allison@lohutok.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Btw, for the next version it also might make sense to do one
optimization at a time.  E.g. the empty cpumask one as the
first patch, the local cpu directly one next, and the threshold
based full flush as a third.

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
