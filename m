Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57B62F191C
	for <lists+linux-riscv@lfdr.de>; Wed,  6 Nov 2019 15:49:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I2aPSvquxF23hiWbyLAsI7R5hjZTTv7Cd9xXXu+MUoQ=; b=bJdhLdhpK19suE
	7yPY0hHE5yBahAmVR3xf2jXAR3z79NazuCp/zBwPk03ZkH57GxBqFtT57uoLKb1p32Zv9RPLMRfGQ
	yM4hc99g0IePtRdCVHd2enMgWhcdGQza66WjXwiBeOcuMkwXWaa3h4RpbwZlgR2IqVESAcEe+p9oJ
	bmiF9D4dV5Wl/DUp5WQTD8b9qUPsvg4Kc7yVotOYuQREyCugrTzFhxvXDuTC2oCf1H36MJVy6sODB
	ByH44dwHp37LHLi+yxM3X5Y3Sb8uhJRw0qe0YnH1iJZR3R4PLKHlz2MV5wqAaSarLv1GlRXFBORxn
	NQDcxNHHDIzG8RPIH+og==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSMcM-0001P0-ON; Wed, 06 Nov 2019 14:49:06 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSMcJ-0001OU-Ld
 for linux-riscv@lists.infradead.org; Wed, 06 Nov 2019 14:49:05 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 2937668AFE; Wed,  6 Nov 2019 15:49:00 +0100 (CET)
Date: Wed, 6 Nov 2019 15:48:59 +0100
From: Christoph Hellwig <hch@lst.de>
To: Borislav Petkov <bp@alien8.de>
Subject: Re: [PATCH, resend] riscv: move sifive_l2_cache.c to drivers/soc
Message-ID: <20191106144859.GA17326@lst.de>
References: <20191106011723.2110-1-hch@lst.de> <20191106091013.GA28380@zn.tnic>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191106091013.GA28380@zn.tnic>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_064903_857651_99127AE7 
X-CRM114-Status: UNSURE (   5.64  )
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
Cc: tony.luck@intel.com, yash.shah@sifive.com, rrichter@marvell.com,
 james.morse@arm.com, paul.walmsley@sifive.com, palmer@dabbelt.com,
 linux-riscv@lists.infradead.org, mchehab@kernel.org,
 Christoph Hellwig <hch@lst.de>, linux-edac@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, Nov 06, 2019 at 10:10:13AM +0100, Borislav Petkov wrote:
> Also, building with a cross-compiler fails here:

What config?  riscv defconfig + CONFIG_SIFIVE_L2 works just fine for me.

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
