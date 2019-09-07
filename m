Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A4AAAC9F5
	for <lists+linux-riscv@lfdr.de>; Sun,  8 Sep 2019 01:39:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bqcbRPoKvDvuCsCkVTfjG5IG63vW3ZtcjBNu4o3XEe0=; b=BrkxWAUVS840BR
	Oe0MOITgiJUMGezpbfH0L2VUdbtd5Pdw1Z1uqVFCPeY/iyNRTPHNvard9JkZQLmlLZ07KnkHBcaB1
	zllOeJ7hTf76/tkFRdYCaru7/VEO3AsP+9qfzesofPe6O0abfdOXBhLpQxjbw9YaQ16i35v91qZiA
	MFYh39xCcg5Bug1fILWJ8uaT9ty+BcznRtTkSZRxrLv5CiT7CjIbDMFNYPizX2LubYLM5KaHoG6Vi
	S/X0hEQXVeN8F3WfNovC6VL4cYUXkTL3eQD0yDBNx53njRhQY5rJ5C6e/9GH4C5Y2CQXcM5rT/8YL
	vMMUhb02fLPEkBu8z1tQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6kIa-0006FF-D5; Sat, 07 Sep 2019 23:39:21 +0000
Received: from 15.mo5.mail-out.ovh.net ([178.33.107.29])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6kIR-0006EJ-M5
 for linux-riscv@lists.infradead.org; Sat, 07 Sep 2019 23:39:13 +0000
Received: from player728.ha.ovh.net (unknown [10.109.159.7])
 by mo5.mail-out.ovh.net (Postfix) with ESMTP id 7553C24ACE1
 for <linux-riscv@lists.infradead.org>; Sun,  8 Sep 2019 01:39:05 +0200 (CEST)
Received: from etezian.org (81-175-223-118.bb.dnainternet.fi [81.175.223.118])
 (Authenticated sender: andi@etezian.org)
 by player728.ha.ovh.net (Postfix) with ESMTPSA id 4B47C979D591;
 Sat,  7 Sep 2019 23:38:10 +0000 (UTC)
Date: Sun, 8 Sep 2019 02:38:10 +0300
From: Andi Shyti <andi@etezian.org>
To: Yuehaibing <yuehaibing@huawei.com>
Subject: Re: [PATCH -next 25/36] spi: s3c24xx: use
 devm_platform_ioremap_resource() to simplify code
Message-ID: <20190907233810.GA15768@jack.zhora.eu>
References: <20190904135918.25352-1-yuehaibing@huawei.com>
 <20190904135918.25352-26-yuehaibing@huawei.com>
 <CAJKOXPdq4as1Oe3U+9znkvP0RA=sxUoiWVBCSbzf_wq_um2t=w@mail.gmail.com>
 <3595bac1-e426-b4f9-4e24-01e104fdfe5d@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3595bac1-e426-b4f9-4e24-01e104fdfe5d@huawei.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Ovh-Tracer-Id: 4582412622624637493
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduvddrudekvddgvdduucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddm
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190907_163911_870048_35D7F75B 
X-CRM114-Status: UNSURE (   7.38  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.33.107.29 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
Cc: tmaimon77@gmail.com, palmer@sifive.com, tali.perry1@gmail.com,
 eric@anholt.net, ldewangan@nvidia.com, linux-riscv@lists.infradead.org,
 festevam@gmail.com,
 "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 f.fainelli@gmail.com, benjaminfair@google.com, shc_work@mail.ru,
 khilman@baylibre.com, openbmc@lists.ozlabs.org, michal.simek@xilinx.com,
 Krzysztof Kozlowski <krzk@kernel.org>, jonathanh@nvidia.com, yuenn@google.com,
 wens@csie.org, agross@kernel.org, bcm-kernel-feedback-list@broadcom.com,
 linux-imx@nxp.com, linux-arm-msm@vger.kernel.org, linux-tegra@vger.kernel.org,
 Andi Shyti <andi@etezian.org>, rjui@broadcom.com, s.hauer@pengutronix.de,
 mripard@kernel.org, broonie@kernel.org, linux-mediatek@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org, paul.walmsley@sifive.com,
 matthias.bgg@gmail.com, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, baohua@kernel.org, sbranden@broadcom.com,
 yamada.masahiro@socionext.com, avifishman70@gmail.com, venture@google.com,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 linux-spi@vger.kernel.org, thierry.reding@gmail.com, wahrenst@gmx.net,
 kernel@pengutronix.de, kgene@kernel.org, shawnguo@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi Yuehaibing,

> >> Use devm_platform_ioremap_resource() to simplify the code a bit.
> >> This is detected by coccinelle.
> >>
> >> Reported-by: Hulk Robot <hulkci@huawei.com>
> > 
> > This tag does not look real... First of all where is the report?
> 
> It is our internal CI robot, which is unavailable to external temporarily.

Hulk Robot is not a person and not accountable for his report.
If it is your internal CI, please write a sentence stating that
the fix has been made using Huawei internal tools.

Credit must be given to tools as well, but not accounts that will
never answer an e-mail.

Otherwise, the patch would look fine.

Andi

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
