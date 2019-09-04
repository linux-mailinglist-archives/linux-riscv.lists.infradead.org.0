Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BEC9A84D3
	for <lists+linux-riscv@lfdr.de>; Wed,  4 Sep 2019 16:01:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Uqper/iz7pZf4882CNXwhwbPyj4mrCHTPSqRYnNK6cs=; b=YrWnJ65c3FKwNz
	PvmZrXXQDP+D1ltmOziZ33/D/r4pqVJLGqfEhz8ChxUaocsxEHncp/xLqTIHB5qFXh1r3PoFl2EeH
	8rmuuao1sClst9lAhSr1IKEhYcAC+9A19xxqjXzFAZb9O7J3jAzVcggtyAvgmLw7tHI6ZYZWqA9NA
	yyAj2TuWKlv5dlK8Y9P73uKrUeM1OvyJjonk64CJFJ8LAbbrF1ORVZTMrQbQGIvFNDT0o/+fe66Yk
	Yg/KpdBlBpsDRTTI+PAhtMr8XtMleX2Gez2/bmg9sSPhdNJwT/9tSqtUeFZgpY8FwJRG4zsb1imCo
	fxjVFlFesA9okB5BegmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5Vqg-000603-Nt; Wed, 04 Sep 2019 14:01:26 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5Vp5-0002xB-2g; Wed, 04 Sep 2019 13:59:48 +0000
Received: from DGGEMS413-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 043407969D6CA20A1321;
 Wed,  4 Sep 2019 21:59:45 +0800 (CST)
Received: from localhost (10.133.213.239) by DGGEMS413-HUB.china.huawei.com
 (10.3.19.213) with Microsoft SMTP Server id 14.3.439.0; Wed, 4 Sep 2019
 21:59:37 +0800
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
Subject: [PATCH -next 03/36] spi: ath79: use devm_platform_ioremap_resource()
 to simplify code
Date: Wed, 4 Sep 2019 21:58:45 +0800
Message-ID: <20190904135918.25352-4-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.10.2.windows.1
In-Reply-To: <20190904135918.25352-1-yuehaibing@huawei.com>
References: <20190904135918.25352-1-yuehaibing@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.133.213.239]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_065947_381958_E1276EE8 
X-CRM114-Status: UNSURE (   8.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
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

Use devm_platform_ioremap_resource() to simplify the code a bit.
This is detected by coccinelle.

Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: YueHaibing <yuehaibing@huawei.com>
---
 drivers/spi/spi-ath79.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/spi/spi-ath79.c b/drivers/spi/spi-ath79.c
index 032a615..eb9a243 100644
--- a/drivers/spi/spi-ath79.c
+++ b/drivers/spi/spi-ath79.c
@@ -139,7 +139,6 @@ static int ath79_spi_probe(struct platform_device *pdev)
 	struct spi_master *master;
 	struct ath79_spi *sp;
 	struct ath79_spi_platform_data *pdata;
-	struct resource	*r;
 	unsigned long rate;
 	int ret;
 
@@ -169,8 +168,7 @@ static int ath79_spi_probe(struct platform_device *pdev)
 	sp->bitbang.txrx_word[SPI_MODE_0] = ath79_spi_txrx_mode0;
 	sp->bitbang.flags = SPI_CS_HIGH;
 
-	r = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	sp->base = devm_ioremap_resource(&pdev->dev, r);
+	sp->base = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(sp->base)) {
 		ret = PTR_ERR(sp->base);
 		goto err_put_master;
-- 
2.7.4



_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
