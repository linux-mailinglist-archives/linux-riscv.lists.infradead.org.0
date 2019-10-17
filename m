Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07B39DB1FD
	for <lists+linux-riscv@lfdr.de>; Thu, 17 Oct 2019 18:10:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d8iW3QzjvHPBK6cXBmti6/FIGvmHYWg7PhaMdiFdYPA=; b=uRlDjJlAQx/VYH
	ofn9pksw5PP+pWbXVnwAdodFrjcTslUgIY+CDexReewP+phClyKz8EGRiA/0lIi2anb3ExMA4iUiv
	4RrU9LxlCiZRwcf99TcIIww0vxP0S6TD/ISKh/yBmR7A9X8i1vvMsFhOjLGnoaUX5xRF2ryOQlmm2
	AJlMUSG9ZvHgVj+16eJ6q2v+jXumzkkPawPMxRlqLNmicA38P77nS8AZA137Ik0tkfGraVz/uzopH
	/hWt5zDw1eB3N7fYNLILKSDGgCIVcwdPji2OOMiPm1U++OV5xxhpnA9mlClhI1ppRYTT9FkKRiIpN
	lJbsD/0UBIpUZXPMRxaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL8MQ-0001PX-Cl; Thu, 17 Oct 2019 16:10:46 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL8MN-0001Oe-3k
 for linux-riscv@lists.infradead.org; Thu, 17 Oct 2019 16:10:44 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 23D1C68BE1; Thu, 17 Oct 2019 18:10:39 +0200 (CEST)
Date: Thu, 17 Oct 2019 18:10:38 +0200
From: Christoph Hellwig <hch@lst.de>
To: Paul Walmsley <paul.walmsley@sifive.com>
Subject: Re: [PATCH] Documentation: admin-guide: add earlycon documentation
 for RISC-V
Message-ID: <20191017161038.GA9953@lst.de>
References: <alpine.DEB.2.21.9999.1910091252160.11044@viisi.sifive.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.9999.1910091252160.11044@viisi.sifive.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_091043_299847_2D655432 
X-CRM114-Status: UNSURE (   8.73  )
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
Cc: linux-doc@vger.kernel.org, Andreas Schwab <schwab@suse.de>,
 Jonathan Corbet <corbet@lwn.net>, linux-kernel@vger.kernel.org,
 Geert Uytterhoeven <geert@linux-m68k.org>, linux-riscv@lists.infradead.org,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, Oct 09, 2019 at 12:53:50PM -0700, Paul Walmsley wrote:
> 
> Kernels booting on RISC-V can specify "earlycon" with no options on
> the Linux command line, and the generic DT earlycon support will query
> the "chosen/stdout-path" property (if present) to determine which
> early console device to use.  Document this appropriately in the
> admin-guide.

Jon already applied a patch from me removing the bogus arch restrictions
on the earlycon without arguments documentation, so this should not
be required.

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
