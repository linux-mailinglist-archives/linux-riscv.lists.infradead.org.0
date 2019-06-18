Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA39449648
	for <lists+linux-riscv@lfdr.de>; Tue, 18 Jun 2019 02:25:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1gLZlI80elpxknJwh0uIt6v+yeblJN70f3v47J6pVfQ=; b=b9PIbTCX4Eyx94
	5Msgj20KCrJ7rSX4jDQb7ZrNVuU+cjSyKTvqyDJvkZA3qmF0E02cUGri8NmQdyJXKz+qvgqhcwMfP
	m+86aOaLHPhuyQ93Icy3IYlBujhZyF91/U2iiUyZ8dQbuXDioCYgzklhcZO7a9qcGm8dilJeHDN94
	7AK2u/GoTwTnegi06vV9DBprw3IuScOVyDUgaCDh1mkzcLs8c4SrQiGVmtEWKE9wUZA5AYvUGNnj9
	0Cje9yR93NwNVz1EIqH9fWf6Hs8LtZCHeGNfaX8wn1ltfD2X0wdlrbFBc3a3lh0lmKJUKOeAR4OEX
	TfAvbxldHE1CgE99QgNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hd1wZ-00055M-Kg; Tue, 18 Jun 2019 00:25:47 +0000
Received: from smtprelay0202.hostedemail.com ([216.40.44.202]
 helo=smtprelay.hostedemail.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hd1wK-0004sV-J8; Tue, 18 Jun 2019 00:25:33 +0000
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay02.hostedemail.com (Postfix) with ESMTP id 29EC41F0A;
 Tue, 18 Jun 2019 00:25:20 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com,
 :::::::::::::::::::::::::::::,
 RULES_HIT:41:355:379:599:800:960:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1540:1593:1594:1711:1730:1747:1777:1792:1801:2393:2553:2559:2562:2828:2897:3138:3139:3140:3141:3142:3352:3622:3870:3876:4250:4321:4605:5007:6742:10004:10400:10848:11026:11232:11658:11914:12043:12296:12438:12740:12760:12895:13069:13311:13357:13439:13972:14181:14659:14721:21080:21627:30054:30064:30070:30090:30091,
 0,
 RBL:23.242.196.136:@perches.com:.lbl8.mailshell.net-62.14.0.180 64.201.201.201,
 CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none, DomainCache:0,
 MSF:not bulk, SPF:fn, MSBL:0, DNSBL:neutral, Custom_rules:0:0:0, LFtime:25,
 LUA_SUMMARY:none
X-HE-Tag: clock60_4b5582c271355
X-Filterd-Recvd-Size: 2222
Received: from XPS-9350 (cpe-23-242-196-136.socal.res.rr.com [23.242.196.136])
 (Authenticated sender: joe@perches.com)
 by omf09.hostedemail.com (Postfix) with ESMTPA;
 Tue, 18 Jun 2019 00:25:17 +0000 (UTC)
Message-ID: <547e251d87e307fa4d1e31dfc61b496c152f0905.camel@perches.com>
Subject: Re: [PATCH v5 2/3] mtd: spi-nor: add support to unlock flash device
From: Joe Perches <joe@perches.com>
To: Sagar Kadam <sagar.kadam@sifive.com>, Vignesh Raghavendra <vigneshr@ti.com>
Date: Mon, 17 Jun 2019 17:25:16 -0700
In-Reply-To: <CAARK3HmFg=v+cMGAykPPpwxDGaSKk5k+Gz4fSHQPQmg-rCjPhQ@mail.gmail.com>
References: <1560336476-31763-1-git-send-email-sagar.kadam@sifive.com>
 <1560336476-31763-3-git-send-email-sagar.kadam@sifive.com>
 <70732c8e-111f-7c46-9e93-11894d944a1d@ti.com>
 <CAARK3HmFg=v+cMGAykPPpwxDGaSKk5k+Gz4fSHQPQmg-rCjPhQ@mail.gmail.com>
User-Agent: Evolution 3.30.5-0ubuntu0.18.10.1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_172532_706770_DEB53984 
X-CRM114-Status: UNSURE (   8.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.40.44.202 listed in list.dnswl.org]
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
Cc: aou@eecs.berkeley.edu, tudor.ambarus@microchip.com,
 Wesley Terpstra <wesley@sifive.com>, richard@nod.at,
 Palmer Dabbelt <palmer@sifive.com>, linux-kernel@vger.kernel.org,
 marek.vasut@gmail.com, linux-mtd@lists.infradead.org,
 Paul Walmsley <paul.walmsley@sifive.com>, miquel.raynal@bootlin.com,
 linux-riscv@lists.infradead.org, computersforpeace@gmail.com,
 dwmw2@infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, 2019-06-17 at 21:10 +0530, Sagar Kadam wrote:
> On Sun, Jun 16, 2019 at 6:35 PM Vignesh Raghavendra <vigneshr@ti.com> wrote:
[]
> > > +static int issi_unlock(struct spi_nor *nor, loff_t ofs, uint64_t len)
> > > +{
[]
> > > +     if (ret > 0 && !(ret & mask)) {
> > > +             dev_info(nor->dev,
> > > +                     "ISSI Block Protection Bits cleared SR=0x%x", ret);

Please use '\n' terminations on formats

> > > +             ret = 0;
> > > +     } else {
> > > +             dev_err(nor->dev, "ISSI Block Protection Bits not cleared\n");

like this one

> > > +             ret = -EINVAL;
> > > +     }
> > > +     return ret;
> > > +}
> > > +
> > > +/**
> > >   * spansion_quad_enable() - set QE bit in Configuraiton Register.

s/Configuraiton/Configuration/



_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
