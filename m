Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB9C8A3B8B
	for <lists+linux-riscv@lfdr.de>; Fri, 30 Aug 2019 18:08:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ezaBQHyQBfWbj1WuJ17IF2Hgq9VWxYMZ1rCaLHJmyBY=; b=bSlDK5PORhdp/F
	BQHkDhvrP4ujf+yHowh+u9KH8+S9HqupA6hU/Eef4RwCMSx+2rO6C0IS2naa8RorBdcsKQxWJsjhP
	csF/HoD+MBhwnjdCAgfUmwngh1RTvPMjmIEJCH5OssKrzIDesULncZ5Srb7PkCVuv5016IHcVqMts
	DQFBtw96NpnGSsE6b1A6ng3ScvdhulCnYDyQm7N6foLsZCaJQvBJb7Xb04CLEB1uNsavUjqRm/f5K
	DAsdY5tMekoQflddpQQ/mqZKApafTWh3eL2f65RhBKPFhGh6/qwJEXabbsFYHek9jk+bsnjtaKtcu
	Cm9/ozmVFRYtx9QNPEtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3jRr-0006pK-9U; Fri, 30 Aug 2019 16:08:27 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3jQ6-0005Oe-Or; Fri, 30 Aug 2019 16:06:40 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 88397227A8A; Fri, 30 Aug 2019 18:06:35 +0200 (CEST)
Date: Fri, 30 Aug 2019 18:06:35 +0200
From: Christoph Hellwig <hch@lst.de>
To: Paul Burton <paul.burton@mips.com>
Subject: Re: [PATCH 04/26] mips: remove ioremap_cachable
Message-ID: <20190830160635.GE26887@lst.de>
References: <20190817073253.27819-1-hch@lst.de>
 <20190817073253.27819-5-hch@lst.de>
 <20190819205722.4eir2edy6qgtgarl@pburton-laptop>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190819205722.4eir2edy6qgtgarl@pburton-laptop>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_090639_043340_80923161 
X-CRM114-Status: UNSURE (   7.97  )
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
Cc: "linux-ia64@vger.kernel.org" <linux-ia64@vger.kernel.org>,
 "linux-sh@vger.kernel.org" <linux-sh@vger.kernel.org>,
 Guo Ren <guoren@kernel.org>,
 "sparclinux@vger.kernel.org" <sparclinux@vger.kernel.org>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 Vincent Chen <deanbo422@gmail.com>, Christoph Hellwig <hch@lst.de>,
 "linux-arch@vger.kernel.org" <linux-arch@vger.kernel.org>,
 "linux-s390@vger.kernel.org" <linux-s390@vger.kernel.org>,
 "linux-hexagon@vger.kernel.org" <linux-hexagon@vger.kernel.org>,
 "x86@kernel.org" <x86@kernel.org>,
 "linux-snps-arc@lists.infradead.org" <linux-snps-arc@lists.infradead.org>,
 "linux-xtensa@linux-xtensa.org" <linux-xtensa@linux-xtensa.org>,
 Arnd Bergmann <arnd@arndb.de>,
 "linux-m68k@lists.linux-m68k.org" <linux-m68k@lists.linux-m68k.org>,
 "openrisc@lists.librecores.org" <openrisc@lists.librecores.org>,
 Greentime Hu <green.hu@gmail.com>,
 "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>,
 Guan Xuetao <gxt@pku.edu.cn>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Michal Simek <monstr@monstr.eu>,
 "linux-parisc@vger.kernel.org" <linux-parisc@vger.kernel.org>,
 "linux-mips@vger.kernel.org" <linux-mips@vger.kernel.org>,
 "linux-alpha@vger.kernel.org" <linux-alpha@vger.kernel.org>,
 "nios2-dev@lists.rocketboards.org" <nios2-dev@lists.rocketboards.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, Aug 19, 2019 at 08:57:30PM +0000, Paul Burton wrote:
> Hi Christoph,
> 
> On Sat, Aug 17, 2019 at 09:32:31AM +0200, Christoph Hellwig wrote:
> > Just define ioremap_cache directly.
> > 
> > Signed-off-by: Christoph Hellwig <hch@lst.de>
> 
> Acked-by: Paul Burton <paul.burton@mips.com>

Can you pick this patch up through the mips tree?

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
