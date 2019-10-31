Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 213E5EB44D
	for <lists+linux-riscv@lfdr.de>; Thu, 31 Oct 2019 16:56:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p3qFcr7O6f+ZcoAur1WDRkBkJyAIV8FrR2/HMcD++uk=; b=YMPc40H+C+yow4
	uFeyIdXM7qBbVX1wCGC6TEzbx2z10yLxDZHzMBz6cf/10s/rY7MszCB0kDoC4uiirAZ0X5b4PyrAY
	7yGLhYmCICZ3AwHOQBu/8FFPO8AcYPgdFLoULQjLWKa+aDva3+QFfpir/KQZHg857JYBukMuP9Koe
	3y0pATKee9e/VRPWby93dTRg5iBw68PFTetqVHNPsTLy0t62iDMCZPDLCeoxBNaLQh0KM4DtzmBZ3
	16uShqZhBwuerrb76ImYpoXLkqHqInw6CvbGltkragns/DAIHwuLkc5QcfLdgBbgXth0WcsCfBY1a
	T2YYyhVJtOPq4M25aalQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQCo3-0002oF-2E; Thu, 31 Oct 2019 15:56:15 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQCnz-0002nb-OM
 for linux-riscv@lists.infradead.org; Thu, 31 Oct 2019 15:56:12 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 47DC668BE1; Thu, 31 Oct 2019 16:56:09 +0100 (CET)
Date: Thu, 31 Oct 2019 16:56:08 +0100
From: Christoph Hellwig <hch@lst.de>
To: Paul Walmsley <paul.walmsley@sifive.com>
Subject: Re: [PATCH] riscv: separate MMIO functions into their own header file
Message-ID: <20191031155608.GB7270@lst.de>
References: <alpine.DEB.2.21.9999.1910291053450.1601@viisi.sifive.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.9999.1910291053450.1601@viisi.sifive.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_085611_940833_39DB073F 
X-CRM114-Status: UNSURE (   5.52  )
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
Cc: yash.shah@sifive.com, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org, hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

I think it would be a better idea to move the kernel virtual address
space layout out of pgtable.h into a new header, as pgtable.h pull a lot
of stuff in.

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
