Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71288A84FC
	for <lists+linux-riscv@lfdr.de>; Wed,  4 Sep 2019 16:04:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C345ohuEfYkKNyuydaOKPKSHMGQmIR7o7P2PAR3GSMM=; b=G1VRvOZqvLGaOK
	F5n+Do7MJuCvszLeyTtWX0BP8Lztvgc1JJhNYDNcAAifpRtbj6FgHMwaNSrEKX1CLin+5D57jhWle
	R5gmxQK8/ePYJecxOnsTdWoknHlxukIIKLTERG+rY4Q887umDxuCDJ/5N7oud2HIrq1qd9L5HAwgy
	HIevaol5o0gO+A51pM/QAJVkdxDao4TCPRIzlGpB9kvCDBRB3a02mb4KAyhu/gQ6FnCalMgYXN5hY
	+P5lG9N61sSXvOi6wDOJHqNt/Ga2/KhTTVU5KacwnUuqFFKcXj7tgRWXyYzchN8lincnCvZzXZcO2
	vZ7pOXu7EzqiCTuJlqBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5Vu0-0001Ql-Ts; Wed, 04 Sep 2019 14:04:52 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5Vpa-0004l2-9A; Wed, 04 Sep 2019 14:00:20 +0000
Received: from DGGEMS414-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id ABA633EA834E6FCC6DF4;
 Wed,  4 Sep 2019 22:00:15 +0800 (CST)
Received: from localhost (10.133.213.239) by DGGEMS414-HUB.china.huawei.com
 (10.3.19.214) with Microsoft SMTP Server id 14.3.439.0; Wed, 4 Sep 2019
 22:00:06 +0800
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
Subject: [PATCH -next 13/36] spi: spi-geni-qcom: use
 devm_platform_ioremap_resource() to simplify code
Date: Wed, 4 Sep 2019 21:58:55 +0800
Message-ID: <20190904135918.25352-14-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.10.2.windows.1
In-Reply-To: <20190904135918.25352-1-yuehaibing@huawei.com>
References: <20190904135918.25352-1-yuehaibing@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.133.213.239]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_070018_948652_A390ED01 
X-CRM114-Status: UNSURE (   7.83  )
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

Use devm_platform_ioremap_resource() to simplify the code a bit.
This is detected by coccinelle.

Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: YueHaibing <yuehaibing@huawei.com>
---
 drivers/spi/spi-geni-qcom.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/spi/spi-geni-qcom.c b/drivers/spi/spi-geni-qcom.c
index 242b6c8..6f3d64a 100644
--- a/drivers/spi/spi-geni-qcom.c
+++ b/drivers/spi/spi-geni-qcom.c
@@ -534,7 +534,6 @@ static int spi_geni_probe(struct platform_device *pdev)
 	int ret, irq;
 	struct spi_master *spi;
 	struct spi_geni_master *mas;
-	struct resource *res;
 	void __iomem *base;
 	struct clk *clk;
 
@@ -542,8 +541,7 @@ static int spi_geni_probe(struct platform_device *pdev)
 	if (irq < 0)
 		return irq;
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	base = devm_ioremap_resource(&pdev->dev, res);
+	base = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(base))
 		return PTR_ERR(base);
 
-- 
2.7.4



_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
