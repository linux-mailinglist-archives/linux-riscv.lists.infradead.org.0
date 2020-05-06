Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E29B41C6A0D
	for <lists+linux-riscv@lfdr.de>; Wed,  6 May 2020 09:27:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	MIME-Version:Message-ID:In-Reply-To:Date:References:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=nsLaH/YKDOzbyAfCRCFWuHYo4aY2b7KrvZtULVhYF9E=; b=geYUgwpeBeKHchUNu5KK7acTQ
	bNy3T1OKtsGPn+K55DCXjLu5a28Q77prSyL0ElBwfyNDLQqk8z5x0WrkbdIhTzjRII1M4vMHmIu2B
	/T1LdUXNx60wC0sdVKcFJ9Uhp5CenDZ1BN0zLyfNBGtyOgJtPO918NPkSI1cWCD/8OvhaSmFPTKcz
	4qcGIZn0EoCVXFGJlDdfCT4AhKw4NSUGAwQ8lCCXdAOwhHpNeLvOVNN0bRzslH8YPoBGWUaW0uJyT
	DU6i2rhQ8iru1xXgu2RcxnbXljEYoyoA2OHqJoOsMRmacRWkpq7+obQj4UKj4epRsoLdZtqDgQXgX
	te2CCe3dQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWESL-0005XI-6A; Wed, 06 May 2020 07:27:01 +0000
Received: from mail-out.m-online.net ([212.18.0.10])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWESA-0005PC-AV; Wed, 06 May 2020 07:26:51 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 49H7Sj70s3z1rx7x;
 Wed,  6 May 2020 09:26:45 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 49H7Sj52Hxz1qqkL;
 Wed,  6 May 2020 09:26:45 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id LgHs-hPbv2Fl; Wed,  6 May 2020 09:26:44 +0200 (CEST)
X-Auth-Info: 2z9cDoItip41685WZkAmKeL5Dft+6xIYW+Pc0QNYXAd0dhdAMI46HXdeyiZo6LBw
Received: from igel.home (ppp-46-244-183-249.dynamic.mnet-online.de
 [46.244.183.249])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Wed,  6 May 2020 09:26:44 +0200 (CEST)
Received: by igel.home (Postfix, from userid 1000)
 id 1B3342C0D4E; Wed,  6 May 2020 09:26:44 +0200 (CEST)
From: Andreas Schwab <schwab@linux-m68k.org>
To: Anup Patel <anup@brainfault.org>
Subject: Re: [PATCH 1/2] riscv: defconfig: enable spi nor on Hifive
 Unleashed A00 board.
References: <BN8PR13MB2611968A7252308925FF18B399A70@BN8PR13MB2611.namprd13.prod.outlook.com>
 <mhng-29e22ca7-538a-4094-923f-8fbc0fd327b9@palmerdabbelt-glaptop1>
 <BYAPR13MB2614FE811C8DD83BBDD3A26599A40@BYAPR13MB2614.namprd13.prod.outlook.com>
 <CAAhSdy2-ECrOP=kZOTXxj1t+f8NrcYjbXKDRwPB3KU36mDmWWg@mail.gmail.com>
X-Yow: I feel like I'm in a Toilet Bowl with a thumbtack in my forehead!!
Date: Wed, 06 May 2020 09:26:44 +0200
In-Reply-To: <CAAhSdy2-ECrOP=kZOTXxj1t+f8NrcYjbXKDRwPB3KU36mDmWWg@mail.gmail.com>
 (Anup Patel's message of "Wed, 6 May 2020 10:39:39 +0530")
Message-ID: <87d07h8qx7.fsf@igel.home>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/27.0.91 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_002650_512462_D6126939 
X-CRM114-Status: UNSURE (   8.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.18.0.10 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [212.18.0.10 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: "vigneshr@ti.com" <vigneshr@ti.com>,
 "tudor.ambarus@microchip.com" <tudor.ambarus@microchip.com>,
 "richard@nod.at" <richard@nod.at>,
 "miquel.raynal@bootlin.com" <miquel.raynal@bootlin.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Palmer Dabbelt <palmer@dabbelt.com>, Sagar Kadam <sagar.kadam@sifive.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mai 06 2020, Anup Patel wrote:

> We had build issues in past by selecting major driver subsystems
> in Kconfig.socs
>
> I suggest to select SPI_SIFIVE from Kconfig.socs

SPI_SIFIVE can be m, don't override that.

Andreas.

-- 
Andreas Schwab, schwab@linux-m68k.org
GPG Key fingerprint = 7578 EB47 D4E5 4D69 2510  2552 DF73 E780 A9DA AEC1
"And now for something completely different."

