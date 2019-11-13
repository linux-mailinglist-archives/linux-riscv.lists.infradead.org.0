Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6281FFB132
	for <lists+linux-riscv@lfdr.de>; Wed, 13 Nov 2019 14:18:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t2MWMTRLHYnxEJzyQWqHi32pfe3d5icTtgDzjcXBn4A=; b=B/2vfHaQWJqa70
	D5NIbH65LDTnShuhD554bH4n7AN/kEFEr8gciVaoOPY2OuhWDTp65qz9W22sH5L6aQs2ilzXRtQJ/
	Z90uqONWzvGTbWGm0lwti+494QOo8Yfb6EXhGkaZFIiNtVP4OaXeMngWGOoRNZhXMOK65TM8RKDhM
	2Ym8sx+HFZzsNQOaos7NrRpa3Xys79E3R0F3y9AwDxqTfKI1uPNkXl2oCCNfxThlRcp6U/ZwEpP09
	O+F8mpFXnvIaTrib49+UARX3e1Z7IxsmEqukIZ7wrbHuBd05lOiRGWhWLarrtgkxLn75hDQfBH2fQ
	5mVIaBSEJczOCqcl/EVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUsXB-0008F9-Ba; Wed, 13 Nov 2019 13:18:09 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUsX7-0008BN-Fc
 for linux-riscv@lists.infradead.org; Wed, 13 Nov 2019 13:18:07 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 65B6A68BFE; Wed, 13 Nov 2019 14:18:02 +0100 (CET)
Date: Wed, 13 Nov 2019 14:18:02 +0100
From: Christoph Hellwig <hch@lst.de>
To: Paul Walmsley <paul@pwsan.com>
Subject: Re: RISC-V nommu support v6
Message-ID: <20191113131802.GA9996@lst.de>
References: <20191028121043.22934-1-hch@lst.de>
 <alpine.DEB.2.21.9999.1910301311240.6452@viisi.sifive.com>
 <20191111094729.GA11878@lst.de>
 <alpine.DEB.2.21.999.1911111702030.30304@utopia.booyaka.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.999.1911111702030.30304@utopia.booyaka.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_051805_669514_C25367C9 
X-CRM114-Status: UNSURE (   9.13  )
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
Cc: Damien Le Moal <damien.lemoal@wdc.com>, Palmer Dabbelt <palmer@sifive.com>,
 linux-kernel@vger.kernel.org, Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv@lists.infradead.org, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, Nov 11, 2019 at 05:02:51PM +0000, Paul Walmsley wrote:
> Hi Christoph,
> 
> On Mon, 11 Nov 2019, Christoph Hellwig wrote:
> 
> > what is the status of this series?
> 
> At the moment I'm waiting for acks from other maintainers.

I think you should have all ACK now, the only ones missing were the
onces for the trivial search and replace in the time driver which
really is maintained by us anyway, but Thomas was so nice to take
a look.

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
