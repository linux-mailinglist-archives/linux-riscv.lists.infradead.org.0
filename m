Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B524A84C7
	for <lists+linux-riscv@lfdr.de>; Wed,  4 Sep 2019 16:00:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CYu8ztUKEV18njop67pMBPR4hTyusamtc+InUPnNXg4=; b=IEscJ2XDfjjCHA
	oLplAWhpRThN/nDXK5BnnV6ObMr+QiP2kGJW7bwiYRx2Aae4miDmtbNZzprRXqn38YkQuEV3Ql58k
	psRMF9K3zgZ0MpIyuhYdvR23eDLN6VUlhI/hJhh4FGghnpUEooueN++usp3BtQpU2U1NQq/5JFEj8
	0gEeNHjOMpjkObvktceJbJ4SBMsor9ZbnlpnK5V71FyEQDtdCyFmqfalIVrDmv1yTY8YXrSxeSQ6y
	WFkG8pnBEAI5IbEdYxa+r5IxQB7ECOG4xpszveGCVkDjRAnK4z3m2P/0mXn1H1Wp46LNI6sOq+2Em
	TB5wjha6oSC9kjd6fj9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5VpT-0003FU-1a; Wed, 04 Sep 2019 14:00:11 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5Voy-0002vK-OB; Wed, 04 Sep 2019 13:59:42 +0000
Received: from DGGEMS404-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 53D972AB7375EADC37DD;
 Wed,  4 Sep 2019 21:59:35 +0800 (CST)
Received: from localhost (10.133.213.239) by DGGEMS404-HUB.china.huawei.com
 (10.3.19.204) with Microsoft SMTP Server id 14.3.439.0; Wed, 4 Sep 2019
 21:59:28 +0800
From: YueHaibing <yuehaibing@huawei.com>
To: <broonie@kernel.org>, <f.fainelli@gmail.com>, <rjui@broadcom.com>,
 <sbranden@broadcom.com>, <eric@anholt.net>, <wahrenst@gmx.net>,
 <shc_work@mail.ru>, <agross@kernel.org>, <khilman@baylibre.com>,
 <matthias.bgg@gmail.com>, <shawnguo@kernel.org>, <s.hauer@pengutronix.de>,
 <kernel@pengutronix.de>, <festevam@gmail.com>, <linux-imx@nxp.com>,
 <avifishman70@gmail.com>, <tmaimon77@gmail.com>, <tali.perry1@gmail.com>,
 <venture@google.com>, <yuenn@google.com>, <benjaminfair@google.com>,
 <kgene@kernel.org>, <krzk@kernel.org>, <andi@etezian.org>,
 <palmer@sifive.com>, <paul.walmsley@sifive.com>, <baohua@kernel.org>,
 <mripard@kernel.org>, <wens@csie.org>, <ldewangan@nvidia.com>,
 <thierry.reding@gmail.com>, <jonathanh@nvidia.com>,
 <yamada.masahiro@socionext.com>, <michal.simek@xilinx.com>
Subject: [PATCH -next 00/36] use devm_platform_ioremap_resource() to simplify
 code
Date: Wed, 4 Sep 2019 21:58:42 +0800
Message-ID: <20190904135918.25352-1-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.10.2.windows.1
MIME-Version: 1.0
X-Originating-IP: [10.133.213.239]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_065940_966256_3B925FB8 
X-CRM114-Status: UNSURE (   3.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-samsung-soc@vger.kernel.org, YueHaibing <yuehaibing@huawei.com>,
 linux-arm-msm@vger.kernel.org, openbmc@lists.ozlabs.org,
 linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-spi@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-tegra@vger.kernel.org,
 linux-amlogic@lists.infradead.org, linux-riscv@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

devm_platform_ioremap_resource() internally have platform_get_resource()
and devm_ioremap_resource() in it. So instead of calling them separately
use devm_platform_ioremap_resource() directly.

YueHaibing (36):
  spi: altera: use devm_platform_ioremap_resource() to simplify code
  spi: a3700: use devm_platform_ioremap_resource() to simplify code
  spi: ath79: use devm_platform_ioremap_resource() to simplify code
  spi: spi-axi: use devm_platform_ioremap_resource() to simplify code
  spi: bcm2835aux: use devm_platform_ioremap_resource() to simplify code
  spi: bcm2835: use devm_platform_ioremap_resource() to simplify code
  spi: bcm63xx-hsspi: use devm_platform_ioremap_resource() to simplify
    code
  spi: cadence: use devm_platform_ioremap_resource() to simplify code
  spi: octeon: use devm_platform_ioremap_resource() to simplify code
  spi: clps711x: use devm_platform_ioremap_resource() to simplify code
  spi: coldfire-qspi: use devm_platform_ioremap_resource() to simplify
    code
  spi: dw-mmio: use devm_platform_ioremap_resource() to simplify code
  spi: spi-geni-qcom: use devm_platform_ioremap_resource() to simplify
    code
  spi: lp-8841: use devm_platform_ioremap_resource() to simplify code
  spi: meson-spicc: use devm_platform_ioremap_resource() to simplify
    code
  spi: spi-meson-spifc: use devm_platform_ioremap_resource() to simplify
    code
  spi: mt7621: use devm_platform_ioremap_resource() to simplify code
  spi: mxs: use devm_platform_ioremap_resource() to simplify code
  spi: npcm: use devm_platform_ioremap_resource() to simplify code
  spi: nuc900: use devm_platform_ioremap_resource() to simplify code
  spi: oc-tiny: use devm_platform_ioremap_resource() to simplify code
  spi: pic32-sqi: use devm_platform_ioremap_resource() to simplify code
  spi: spi-qcom-qspi: use devm_platform_ioremap_resource() to simplify
    code
  spi: rb4xx: use devm_platform_ioremap_resource() to simplify code
  spi: s3c24xx: use devm_platform_ioremap_resource() to simplify code
  spi: sifive: use devm_platform_ioremap_resource() to simplify code
  spi: sirf: use devm_platform_ioremap_resource() to simplify code
  spi: st-ssc4: use devm_platform_ioremap_resource() to simplify code
  spi: sun4i: use devm_platform_ioremap_resource() to simplify code
  spi: sun6i: use devm_platform_ioremap_resource() to simplify code
  spi: tegra: use devm_platform_ioremap_resource() to simplify code
  spi: uniphier: use devm_platform_ioremap_resource() to simplify code
  spi: xlp: use devm_platform_ioremap_resource() to simplify code
  spi: zynqmp: use devm_platform_ioremap_resource() to simplify code
  spi: zynq-qspi: use devm_platform_ioremap_resource() to simplify code
  spi: fsl-spi: use devm_platform_ioremap_resource() to simplify code

 drivers/spi/spi-altera.c         | 4 +---
 drivers/spi/spi-armada-3700.c    | 4 +---
 drivers/spi/spi-ath79.c          | 4 +---
 drivers/spi/spi-axi-spi-engine.c | 4 +---
 drivers/spi/spi-bcm2835.c        | 4 +---
 drivers/spi/spi-bcm2835aux.c     | 4 +---
 drivers/spi/spi-bcm63xx-hsspi.c  | 4 +---
 drivers/spi/spi-cadence.c        | 4 +---
 drivers/spi/spi-cavium-octeon.c  | 4 +---
 drivers/spi/spi-clps711x.c       | 4 +---
 drivers/spi/spi-coldfire-qspi.c  | 4 +---
 drivers/spi/spi-dw-mmio.c        | 4 +---
 drivers/spi/spi-fsl-cpm.c        | 6 ++----
 drivers/spi/spi-geni-qcom.c      | 4 +---
 drivers/spi/spi-lp8841-rtc.c     | 4 +---
 drivers/spi/spi-meson-spicc.c    | 4 +---
 drivers/spi/spi-meson-spifc.c    | 4 +---
 drivers/spi/spi-mt7621.c         | 4 +---
 drivers/spi/spi-mxs.c            | 4 +---
 drivers/spi/spi-npcm-pspi.c      | 4 +---
 drivers/spi/spi-nuc900.c         | 4 +---
 drivers/spi/spi-oc-tiny.c        | 4 +---
 drivers/spi/spi-pic32-sqi.c      | 4 +---
 drivers/spi/spi-qcom-qspi.c      | 4 +---
 drivers/spi/spi-rb4xx.c          | 4 +---
 drivers/spi/spi-s3c24xx.c        | 4 +---
 drivers/spi/spi-sifive.c         | 4 +---
 drivers/spi/spi-sirf.c           | 4 +---
 drivers/spi/spi-st-ssc4.c        | 4 +---
 drivers/spi/spi-sun4i.c          | 4 +---
 drivers/spi/spi-sun6i.c          | 4 +---
 drivers/spi/spi-tegra20-sflash.c | 4 +---
 drivers/spi/spi-uniphier.c       | 4 +---
 drivers/spi/spi-xlp.c            | 4 +---
 drivers/spi/spi-zynq-qspi.c      | 4 +---
 drivers/spi/spi-zynqmp-gqspi.c   | 4 +---
 36 files changed, 37 insertions(+), 109 deletions(-)

-- 
2.7.4



_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
