Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A53AF9CE1D
	for <lists+linux-riscv@lfdr.de>; Mon, 26 Aug 2019 13:28:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fnq8Nk7Tm8U7M/Id+VamHHxGIs57Ka7/uZkTsj76rYk=; b=SQmm9k1zCDNnD/
	CJ/e3AUYlDn2tFLNabgTGJXggit6T5e/hUaLaETbaiNcsQ/RU5f0GpMdc7ML1jqIEMIztWuKW0Bsm
	/CdtfX3M4QtiOkSUEuDIpeZ/rsX7YgYBGkalcBwKloH5OlK7pr6qYFSzwUrmJ6QREBUlNJnXzpG8w
	efMuWYYGxrK4wm4oNxY+XBtwlWIITfxmCkAbIwXl4O4toc0mK+VnJO+m98r2UxfmxRZaEF+TAf1GM
	tUhgLqSbJgJulbw293D3iR6Ye3zqPlWhIaEnhUU2UpN2w+mEnbpwIJl/awZZEf9YSm22PFcaFPWTG
	94AB7vxPEdchLkzlTOSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2DAo-0005Mo-W8; Mon, 26 Aug 2019 11:28:35 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2DAk-0005MU-SP
 for linux-riscv@lists.infradead.org; Mon, 26 Aug 2019 11:28:32 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 59D4B68AFE; Mon, 26 Aug 2019 13:28:27 +0200 (CEST)
Date: Mon, 26 Aug 2019 13:28:27 +0200
From: "hch@lst.de" <hch@lst.de>
To: Atish Patra <Atish.Patra@wdc.com>
Subject: Re: [PATCH 2/6] riscv: cleanup send_ipi_mask
Message-ID: <20190826112827.GA15002@lst.de>
References: <20190821145837.3686-1-hch@lst.de>
 <20190821145837.3686-3-hch@lst.de>
 <2597d2209f37f064880d97dcb7162528c53f0dbb.camel@wdc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2597d2209f37f064880d97dcb7162528c53f0dbb.camel@wdc.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_042831_133001_C454F392 
X-CRM114-Status: UNSURE (   6.94  )
X-CRM114-Notice: Please train this message.
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
Cc: "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "palmer@sifive.com" <palmer@sifive.com>, "hch@lst.de" <hch@lst.de>,
 "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Sat, Aug 24, 2019 at 12:11:15AM +0000, Atish Patra wrote:
> Isn't that less optimized than previous one ?
> 
> This will iterate all the cpus set in mask twice during every ipi sent.
> For now, we won't see any different. As we have more number of cpus in
> RISC-V (hopefully one day ;) ;)), this may affect the performance.

By then we are hopefully done with using the SBI IPI code :) The native
IPI code this refactor is preparing for won't need the hartid
translation for example.  The point of this patch isn't really to
micro-optimize, but to make the code clear and obvious.

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
