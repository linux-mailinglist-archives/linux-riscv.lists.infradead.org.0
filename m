Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E2C41176BE
	for <lists+linux-riscv@lfdr.de>; Mon,  9 Dec 2019 20:59:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:MIME-Version:
	Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Rh0bnLPUtx+tPcJ7oCSjUFbyV7d1BipJo6LPETVaXJc=; b=LTa1FE0lk+uCzp
	qbrEuYgY6DjxZkZoY6VmZFymL8RhEIrRDTgcBtLxr7/5kuX9hcCAxHRVnCIhxWGTAmk2XnjTz2cZ+
	eZ1jx5FCA+lSBiD+C7mP+Q2o3ykIOeDPntf7qXcYgN8z+CvGR3G9LHZ47dV1ZQ0Uo+km+sXKHaE2O
	LUeGNX2JjIM8t8O3/IqW09nBHbi73FEYcrf8Akfk5okmjCH26pgBvDGsjgyzm5s8hDPianlLtzUf1
	LLmMoZNfeGbUVVoxb4rHtnOlnCi5goc4St8DGD4SBpQeHuquCBVHTNiw6/xU8yYm/db150RnAtiHp
	d/EvATasz51Yf/qQ2fSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iePBX-0002vI-9a; Mon, 09 Dec 2019 19:59:11 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iePAp-0001tu-EA; Mon, 09 Dec 2019 19:58:28 +0000
Received: by mail-pl1-x643.google.com with SMTP id o9so6234659plk.6;
 Mon, 09 Dec 2019 11:58:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Rh0bnLPUtx+tPcJ7oCSjUFbyV7d1BipJo6LPETVaXJc=;
 b=Ql1idqnFkeOA1b2ibaJk1lP2UsH/b2TD0BILC3fV3jIWbO6hOXSrjUaYvsFKb84JtS
 s6YZZ4GWy0d+u0x82WVYr3eyDLh2FJTWL5ABfs+z4V0q8cwbuATv9EHOY2Poa6e0YqRk
 7uNOluhmhtg4XC1xGIyRPFwvn1VP64F56d4gZzQ+08CJKJ4bR8ZoPrnMEcLpi3NdhqlW
 3Rk0Cp24NqoNVHhL27o1FoM87UpuMvKiEAgj3ME1e/Uiu602SGAV7YWjBsmARtVOjgZ3
 WcYhoM0cIeckI9/dvRc8hmoc84F1JMCdxHEUQTZhA1eZqcAywBsuDW39KOXb1iDtuqtI
 lq/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Rh0bnLPUtx+tPcJ7oCSjUFbyV7d1BipJo6LPETVaXJc=;
 b=EsyAMi/fC89se96c+mvUHkSDPUjZ1yjZfFsk+ydvtxjWElM6XJPTDlow/PNXZH5fTY
 FH8qmbnyQVxyp7w9nqdCKGq4zCtPvteNyCgQ3wGgAwDWgb0RNDiUGS3DhM6R3vwhNVN4
 ayKxEJ5w6y4wDK9AIvStxrGuiCSSpHES+ZGwEjAU5+P8PGMN3nulRk4KuZ6/kzfL0Pyr
 DLjnwUQbqAOG5XUW06ts/LJy8nEVXNu6ZEmkHhc3mIqcHUMs7Y//xpYyICVAfYDH76DW
 1dV7WaTjmTijNmQHA63GIniQIMVra1GOxxQDMhHrCVozRsPD+dqLAQo1AZO4YFdgVx9s
 U3rA==
X-Gm-Message-State: APjAAAUlNWg3lKOgdwo+uGoPSGB3N3Kswy3BMLImMso+quirh9x+Xe2K
 gXyHv8thJ3v2EKnn2XDK7XA=
X-Google-Smtp-Source: APXvYqw0rvrrMAD8BKloCopu8xC3C8Rdw1NB+NEIqLAqNAoIW5lOeisBjjvEUWp1r84TMZN7X6Ltgw==
X-Received: by 2002:a17:902:b701:: with SMTP id
 d1mr3560003pls.144.1575921506316; 
 Mon, 09 Dec 2019 11:58:26 -0800 (PST)
Received: from localhost ([2001:19f0:6001:12c8:5400:2ff:fe72:6403])
 by smtp.gmail.com with ESMTPSA id m34sm378688pgb.26.2019.12.09.11.58.25
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 09 Dec 2019 11:58:25 -0800 (PST)
From: Yangtao Li <tiny.windzz@gmail.com>
To: afaerber@suse.de, manivannan.sadhasivam@linaro.org,
 mturquette@baylibre.com, sboyd@kernel.org, Eugeniy.Paltsev@synopsys.com,
 shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
 festevam@gmail.com, linux-imx@nxp.com, agross@kernel.org,
 s.nawrocki@samsung.com, tomasz.figa@gmail.com, cw00.choi@samsung.com,
 kgene@kernel.org, krzk@kernel.org, palmer@sifive.com,
 paul.walmsley@sifive.com, dinguyen@kernel.org, mripard@kernel.org,
 wens@csie.org, emilio@elopez.com.ar, pdeschrijver@nvidia.com,
 pgaikwad@nvidia.com, thierry.reding@gmail.com, jonathanh@nvidia.com,
 matthias.bgg@gmail.com, rfontana@redhat.com, gregkh@linuxfoundation.org,
 t-kristo@ti.com, john@phrozen.org, tglx@linutronix.de, allison@lohutok.net,
 kstewart@linuxfoundation.org, swinslow@gmail.com, aisheng.dong@nxp.com,
 robh@kernel.org, daniel.baluta@nxp.com, weiyongjun1@huawei.com,
 wangyan.wang@mediatek.com, chunhui.dai@mediatek.com,
 miquel.raynal@bootlin.com, heiko@sntech.de, jcmvbkbc@gmail.com,
 nsekhar@ti.com, geert+renesas@glider.be
Subject: [PATCH 15/17] clk: bm1880: convert to devm_platform_ioremap_resource
Date: Mon,  9 Dec 2019 19:57:47 +0000
Message-Id: <20191209195749.868-15-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191209195749.868-1-tiny.windzz@gmail.com>
References: <20191209195749.868-1-tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_115827_546116_A0322272 
X-CRM114-Status: UNSURE (   9.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tiny.windzz[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-samsung-soc@vger.kernel.org, Yangtao Li <tiny.windzz@gmail.com>,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-tegra@vger.kernel.org,
 linux-riscv@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Use devm_platform_ioremap_resource() to simplify code.

Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
---
 drivers/clk/clk-bm1880.c | 7 ++-----
 1 file changed, 2 insertions(+), 5 deletions(-)

diff --git a/drivers/clk/clk-bm1880.c b/drivers/clk/clk-bm1880.c
index 4cd175afce9b..9fa0ca1fe833 100644
--- a/drivers/clk/clk-bm1880.c
+++ b/drivers/clk/clk-bm1880.c
@@ -893,16 +893,13 @@ static int bm1880_clk_probe(struct platform_device *pdev)
 	struct bm1880_clock_data *clk_data;
 	void __iomem *pll_base, *sys_base;
 	struct device *dev = &pdev->dev;
-	struct resource *res;
 	int num_clks, i;
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	pll_base = devm_ioremap_resource(&pdev->dev, res);
+	pll_base = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(pll_base))
 		return PTR_ERR(pll_base);
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 1);
-	sys_base = devm_ioremap_resource(&pdev->dev, res);
+	sys_base = devm_platform_ioremap_resource(pdev, 1);
 	if (IS_ERR(sys_base))
 		return PTR_ERR(sys_base);
 
-- 
2.17.1


