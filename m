Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F09DB781E
	for <lists+linux-riscv@lfdr.de>; Thu, 19 Sep 2019 13:04:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=whwNT2U+BQl2aAcMI8my/Qde5XXDOX/p4Z6EjDq4Mcg=; b=SFXZT21x6W7kpr
	T5m1U1OfMevy7et0Mp69rn3urwxK0S6EDMIoGoE7jL1+P2+kbIex3aZElkKwAVtEQPdOrOqOAHVSg
	+PbgSJpg7CVxhzLCJKlm6ydUWzf4Y7E8GC+LzvUgOBf8d5yvgAfJ5E3lqQUJW5vwL78HqqqAT/gCr
	ZmXAMf69jDSpdotTgFQ9mA5XX8ZqHLqRaxg79Yvpl2Kxq8bufSRjN+O0R+sP1vyoeLkQ1tOwxo9OU
	3oCTU0YBfD2ztiS4fQe+ATyM56lOR+BtkfAxQypj2qJLoGfTLdxyogEUUMVlD4yQkxd5Qz+ifnrI0
	8d5NmODn787K5tswf/zg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAuEq-0001Z2-Ku; Thu, 19 Sep 2019 11:04:40 +0000
Received: from utopia.booyaka.com ([74.50.51.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAuEn-0001Tt-CI
 for linux-riscv@lists.infradead.org; Thu, 19 Sep 2019 11:04:38 +0000
Received: (qmail 6848 invoked by uid 1019); 19 Sep 2019 11:04:34 -0000
Received: from localhost (sendmail-bs@127.0.0.1)
 by localhost with SMTP; 19 Sep 2019 11:04:34 -0000
Date: Thu, 19 Sep 2019 11:04:34 +0000 (UTC)
From: Paul Walmsley <paul@pwsan.com>
To: Anup Patel <Anup.Patel@wdc.com>
Subject: RE: [PATCH] arch/riscv: disable too many harts before pick main boot
 hart
In-Reply-To: <MN2PR04MB60618CCE4EAE01B58D25CBCC8D890@MN2PR04MB6061.namprd04.prod.outlook.com>
Message-ID: <alpine.DEB.2.21.999.1909191104040.6796@utopia.booyaka.com>
References: <AMJe39pHTcb4gsI-_Dv-wmR8_x9EbCCN9LKI47j34_8vBKRqzFxPrjmZvBtwV5OU_HcOiRkKUG66xVaNQ8VAXw7Ws0CCK74gpA8pKaYN5wM=@hardenedlinux.org>
 <alpine.DEB.2.21.9999.1909190324250.10826@viisi.sifive.com>
 <MN2PR04MB60618CCE4EAE01B58D25CBCC8D890@MN2PR04MB6061.namprd04.prod.outlook.com>
User-Agent: Alpine 2.21.999 (DEB 260 2018-02-26)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_040437_501325_775F7DBD 
X-CRM114-Status: UNSURE (   8.37  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
 "palmer@sifive.com" <palmer@sifive.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 Xiang Wang <merle@hardenedlinux.org>,
 "citypw@hardenedlinux.org" <citypw@hardenedlinux.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, 19 Sep 2019, Anup Patel wrote:

> > From: Xiang Wang <merle@hardenedlinux.org>
> > Date: Fri, 6 Sep 2019 11:56:09 +0800
> > Subject: [PATCH] arch/riscv: disable excess harts before picking main boot
> > hart
> > 
> > Harts with id greater than or equal to CONFIG_NR_CPUS need to be
> > disabled.  But the kernel can pick any hart as the main hart.  So,
> > before picking the main hart, the kernel must disable harts with ids
> > greater than or equal to CONFIG_NR_CPUS.
> > 
> > Signed-off-by: Xiang Wang <merle@hardenedlinux.org>
> 
> You missed my Reviewed-by here.

Thanks, added.

- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
