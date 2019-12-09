Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B41F117675
	for <lists+linux-riscv@lfdr.de>; Mon,  9 Dec 2019 20:58:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=IvoK48XMkvTMy8qiYExc0dK2WdplKiTgSr2CX/mQRuY=; b=NwiEimeqQGnBwUFPqvo8An3Sx/
	o4qU1g19uaeMsH0WaMSHQKarSPQ51DXCLd6oQUXc/DC1yE8TDvNt4wW8szwVoYD8LhvB+j3E0/zRk
	KeiWInfSjQr8C12riFU1IyZHjkZ8mqqfISAUw2NL/aJwnN8X1VGZscOSb9XOS3B0Vvas96kp0HXH1
	9Xjf8mZpGadwjqgHL6rQI/s4UPP3TkFASv2BPUu47LRcFfLqR5mz/KQ5828y7xkFbEgc9tDM7HXuy
	QpVQZtuzT6ueHhvsZarKILuCk15S/oaQhWhFV5TuQXlfuUENoDNb3LrmmJNDQDZIMM/L+puf7/8v7
	fVK4ZoCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iePAK-0001Q2-Ji; Mon, 09 Dec 2019 19:57:56 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iePAF-0001Op-VE; Mon, 09 Dec 2019 19:57:53 +0000
Received: by mail-pf1-x441.google.com with SMTP id h14so7752461pfe.10;
 Mon, 09 Dec 2019 11:57:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=IvoK48XMkvTMy8qiYExc0dK2WdplKiTgSr2CX/mQRuY=;
 b=j+hgEZpZ55FVOsvuQu5R+uJRyxi6R8PbS8VSObrqP6U6QABWGFNmJk7rsKEttOtMqY
 CWLgzTDEnRHLon5MC6xAns6zDB1Q6TFv4m2LjMws94TmRUFuwVijAuAYrAnjNg2hgy/b
 L++ZcMnL/zWmMyU8iQvSzEtUCtE8wNjH1U+wYQhpCluLfkLAZ1PMjqCKh5AloR6aB6Nf
 VCVpKkxGRHFeNE5Nw4bGTeFtYHeK2yPSlqVGT14zz+uzsVeYoin8sj3wewHRPEsa5H5F
 I0XNdbA8FosC/WO4PPbL8xwsZbUO3cYHpEnpqi40sF0mL2PKdkjFCAcfT1bXJ6UElPFb
 P8FQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=IvoK48XMkvTMy8qiYExc0dK2WdplKiTgSr2CX/mQRuY=;
 b=umLzHEkwTnmTbE8ggypwHqf9EJn/NigVulCad6wAuXPSEHYwPm+aDazdRwef1YMcC7
 R3HStozF0054W8n3xPwX8dsGJkorIVDQtDt0eXVFR6LUZFfhhnTS0wHE5loJdveDmzhH
 GIQHHQnMTo9rYEN02IXB7nooy2laOq89fR2+vV0KhfsKTPFl+dU/0hUhtYzhM3jUkz7q
 6IXFq/9RTAWLx5sVUGDcD+Zkbc6jCtamD7L3lEwRjuSUL9uO6151nJadxeWqbfemsLqc
 uTbiLXZdmke3JR0dHjegwasoYvh1tOACWaYQ7KM5xmbGEOzw8mz3Rl/Y3eOUqVKY3Zjb
 /lig==
X-Gm-Message-State: APjAAAUip06qDwgYfGYBYcpBnA5khiUnYkZ27srEsdKmdLlzMkHyS4ic
 RMN3HxPsomq9KlTHh3GmbNw=
X-Google-Smtp-Source: APXvYqwuBV1uQV1WLQZ4M+aEZQMsoHsNQhsRHxo1Ou+jCE6+Qsb06pjjlBpaPji+HVgJJhu669OFbA==
X-Received: by 2002:a63:2808:: with SMTP id o8mr20217117pgo.39.1575921471235; 
 Mon, 09 Dec 2019 11:57:51 -0800 (PST)
Received: from localhost ([2001:19f0:6001:12c8:5400:2ff:fe72:6403])
 by smtp.gmail.com with ESMTPSA id e10sm316733pfm.3.2019.12.09.11.57.50
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 09 Dec 2019 11:57:50 -0800 (PST)
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
Subject: [PATCH 01/17] clk: sunxi: sunxi-ng: convert to
 devm_platform_ioremap_resource
Date: Mon,  9 Dec 2019 19:57:33 +0000
Message-Id: <20191209195749.868-1-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_115752_012430_06417A5A 
X-CRM114-Status: UNSURE (   9.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
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
 drivers/clk/sunxi-ng/ccu-sun50i-a64.c    | 4 +---
 drivers/clk/sunxi-ng/ccu-sun50i-h6.c     | 4 +---
 drivers/clk/sunxi-ng/ccu-sun8i-a83t.c    | 4 +---
 drivers/clk/sunxi-ng/ccu-sun8i-de2.c     | 4 +---
 drivers/clk/sunxi-ng/ccu-sun8i-r40.c     | 4 +---
 drivers/clk/sunxi-ng/ccu-sun9i-a80-de.c  | 4 +---
 drivers/clk/sunxi-ng/ccu-sun9i-a80-usb.c | 4 +---
 drivers/clk/sunxi-ng/ccu-sun9i-a80.c     | 4 +---
 drivers/clk/sunxi/clk-mod0.c             | 4 +---
 drivers/clk/sunxi/clk-sun6i-apb0-gates.c | 4 +---
 drivers/clk/sunxi/clk-sun6i-apb0.c       | 4 +---
 drivers/clk/sunxi/clk-sun6i-ar100.c      | 4 +---
 drivers/clk/sunxi/clk-sun8i-apb0.c       | 4 +---
 13 files changed, 13 insertions(+), 39 deletions(-)

diff --git a/drivers/clk/sunxi-ng/ccu-sun50i-a64.c b/drivers/clk/sunxi-ng/ccu-sun50i-a64.c
index 49bd7a4c015c..087880b20c15 100644
--- a/drivers/clk/sunxi-ng/ccu-sun50i-a64.c
+++ b/drivers/clk/sunxi-ng/ccu-sun50i-a64.c
@@ -923,12 +923,10 @@ static const struct sunxi_ccu_desc sun50i_a64_ccu_desc = {
 
 static int sun50i_a64_ccu_probe(struct platform_device *pdev)
 {
-	struct resource *res;
 	void __iomem *reg;
 	u32 val;
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	reg = devm_ioremap_resource(&pdev->dev, res);
+	reg = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(reg))
 		return PTR_ERR(reg);
 
diff --git a/drivers/clk/sunxi-ng/ccu-sun50i-h6.c b/drivers/clk/sunxi-ng/ccu-sun50i-h6.c
index f2497d0a4683..00fa8ff2f51b 100644
--- a/drivers/clk/sunxi-ng/ccu-sun50i-h6.c
+++ b/drivers/clk/sunxi-ng/ccu-sun50i-h6.c
@@ -1183,13 +1183,11 @@ static const u32 usb2_clk_regs[] = {
 
 static int sun50i_h6_ccu_probe(struct platform_device *pdev)
 {
-	struct resource *res;
 	void __iomem *reg;
 	u32 val;
 	int i;
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	reg = devm_ioremap_resource(&pdev->dev, res);
+	reg = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(reg))
 		return PTR_ERR(reg);
 
diff --git a/drivers/clk/sunxi-ng/ccu-sun8i-a83t.c b/drivers/clk/sunxi-ng/ccu-sun8i-a83t.c
index 2b434521c5cc..b2aaa99ad23f 100644
--- a/drivers/clk/sunxi-ng/ccu-sun8i-a83t.c
+++ b/drivers/clk/sunxi-ng/ccu-sun8i-a83t.c
@@ -887,12 +887,10 @@ static void sun8i_a83t_cpu_pll_fixup(void __iomem *reg)
 
 static int sun8i_a83t_ccu_probe(struct platform_device *pdev)
 {
-	struct resource *res;
 	void __iomem *reg;
 	u32 val;
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	reg = devm_ioremap_resource(&pdev->dev, res);
+	reg = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(reg))
 		return PTR_ERR(reg);
 
diff --git a/drivers/clk/sunxi-ng/ccu-sun8i-de2.c b/drivers/clk/sunxi-ng/ccu-sun8i-de2.c
index d9668493c3f9..f48f61297551 100644
--- a/drivers/clk/sunxi-ng/ccu-sun8i-de2.c
+++ b/drivers/clk/sunxi-ng/ccu-sun8i-de2.c
@@ -251,7 +251,6 @@ static const struct sunxi_ccu_desc sun8i_v3s_de2_clk_desc = {
 
 static int sunxi_de2_clk_probe(struct platform_device *pdev)
 {
-	struct resource *res;
 	struct clk *bus_clk, *mod_clk;
 	struct reset_control *rstc;
 	void __iomem *reg;
@@ -262,8 +261,7 @@ static int sunxi_de2_clk_probe(struct platform_device *pdev)
 	if (!ccu_desc)
 		return -EINVAL;
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	reg = devm_ioremap_resource(&pdev->dev, res);
+	reg = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(reg))
 		return PTR_ERR(reg);
 
diff --git a/drivers/clk/sunxi-ng/ccu-sun8i-r40.c b/drivers/clk/sunxi-ng/ccu-sun8i-r40.c
index 897490800102..b456f85fd8da 100644
--- a/drivers/clk/sunxi-ng/ccu-sun8i-r40.c
+++ b/drivers/clk/sunxi-ng/ccu-sun8i-r40.c
@@ -1294,14 +1294,12 @@ static struct regmap_config sun8i_r40_ccu_regmap_config = {
 
 static int sun8i_r40_ccu_probe(struct platform_device *pdev)
 {
-	struct resource *res;
 	struct regmap *regmap;
 	void __iomem *reg;
 	u32 val;
 	int ret;
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	reg = devm_ioremap_resource(&pdev->dev, res);
+	reg = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(reg))
 		return PTR_ERR(reg);
 
diff --git a/drivers/clk/sunxi-ng/ccu-sun9i-a80-de.c b/drivers/clk/sunxi-ng/ccu-sun9i-a80-de.c
index 6616e8114f62..94552199d54d 100644
--- a/drivers/clk/sunxi-ng/ccu-sun9i-a80-de.c
+++ b/drivers/clk/sunxi-ng/ccu-sun9i-a80-de.c
@@ -203,14 +203,12 @@ static const struct sunxi_ccu_desc sun9i_a80_de_clk_desc = {
 
 static int sun9i_a80_de_clk_probe(struct platform_device *pdev)
 {
-	struct resource *res;
 	struct clk *bus_clk;
 	struct reset_control *rstc;
 	void __iomem *reg;
 	int ret;
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	reg = devm_ioremap_resource(&pdev->dev, res);
+	reg = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(reg))
 		return PTR_ERR(reg);
 
diff --git a/drivers/clk/sunxi-ng/ccu-sun9i-a80-usb.c b/drivers/clk/sunxi-ng/ccu-sun9i-a80-usb.c
index 4b4a507d04ed..adac159a5f63 100644
--- a/drivers/clk/sunxi-ng/ccu-sun9i-a80-usb.c
+++ b/drivers/clk/sunxi-ng/ccu-sun9i-a80-usb.c
@@ -92,13 +92,11 @@ static const struct sunxi_ccu_desc sun9i_a80_usb_clk_desc = {
 
 static int sun9i_a80_usb_clk_probe(struct platform_device *pdev)
 {
-	struct resource *res;
 	struct clk *bus_clk;
 	void __iomem *reg;
 	int ret;
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	reg = devm_ioremap_resource(&pdev->dev, res);
+	reg = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(reg))
 		return PTR_ERR(reg);
 
diff --git a/drivers/clk/sunxi-ng/ccu-sun9i-a80.c b/drivers/clk/sunxi-ng/ccu-sun9i-a80.c
index dcac1391767f..8295667e2252 100644
--- a/drivers/clk/sunxi-ng/ccu-sun9i-a80.c
+++ b/drivers/clk/sunxi-ng/ccu-sun9i-a80.c
@@ -1213,12 +1213,10 @@ static void sun9i_a80_cpu_pll_fixup(void __iomem *reg)
 
 static int sun9i_a80_ccu_probe(struct platform_device *pdev)
 {
-	struct resource *res;
 	void __iomem *reg;
 	u32 val;
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	reg = devm_ioremap_resource(&pdev->dev, res);
+	reg = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(reg))
 		return PTR_ERR(reg);
 
diff --git a/drivers/clk/sunxi/clk-mod0.c b/drivers/clk/sunxi/clk-mod0.c
index 0cca91e075a5..cdb98937f584 100644
--- a/drivers/clk/sunxi/clk-mod0.c
+++ b/drivers/clk/sunxi/clk-mod0.c
@@ -88,14 +88,12 @@ CLK_OF_DECLARE_DRIVER(sun4i_a10_mod0, "allwinner,sun4i-a10-mod0-clk",
 static int sun4i_a10_mod0_clk_probe(struct platform_device *pdev)
 {
 	struct device_node *np = pdev->dev.of_node;
-	struct resource *r;
 	void __iomem *reg;
 
 	if (!np)
 		return -ENODEV;
 
-	r = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	reg = devm_ioremap_resource(&pdev->dev, r);
+	reg = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(reg))
 		return PTR_ERR(reg);
 
diff --git a/drivers/clk/sunxi/clk-sun6i-apb0-gates.c b/drivers/clk/sunxi/clk-sun6i-apb0-gates.c
index a165e7172346..abae2813c59e 100644
--- a/drivers/clk/sunxi/clk-sun6i-apb0-gates.c
+++ b/drivers/clk/sunxi/clk-sun6i-apb0-gates.c
@@ -41,7 +41,6 @@ static int sun6i_a31_apb0_gates_clk_probe(struct platform_device *pdev)
 	const struct gates_data *data;
 	const char *clk_parent;
 	const char *clk_name;
-	struct resource *r;
 	void __iomem *reg;
 	int ngates;
 	int i;
@@ -55,8 +54,7 @@ static int sun6i_a31_apb0_gates_clk_probe(struct platform_device *pdev)
 		return -ENODEV;
 	data = device->data;
 
-	r = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	reg = devm_ioremap_resource(&pdev->dev, r);
+	reg = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(reg))
 		return PTR_ERR(reg);
 
diff --git a/drivers/clk/sunxi/clk-sun6i-apb0.c b/drivers/clk/sunxi/clk-sun6i-apb0.c
index 10f70c35c265..f80c67bafe38 100644
--- a/drivers/clk/sunxi/clk-sun6i-apb0.c
+++ b/drivers/clk/sunxi/clk-sun6i-apb0.c
@@ -32,12 +32,10 @@ static int sun6i_a31_apb0_clk_probe(struct platform_device *pdev)
 	struct device_node *np = pdev->dev.of_node;
 	const char *clk_name = np->name;
 	const char *clk_parent;
-	struct resource *r;
 	void __iomem *reg;
 	struct clk *clk;
 
-	r = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	reg = devm_ioremap_resource(&pdev->dev, r);
+	reg = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(reg))
 		return PTR_ERR(reg);
 
diff --git a/drivers/clk/sunxi/clk-sun6i-ar100.c b/drivers/clk/sunxi/clk-sun6i-ar100.c
index e1b7d0929cf7..ffc297732f8f 100644
--- a/drivers/clk/sunxi/clk-sun6i-ar100.c
+++ b/drivers/clk/sunxi/clk-sun6i-ar100.c
@@ -71,12 +71,10 @@ static DEFINE_SPINLOCK(sun6i_ar100_lock);
 static int sun6i_a31_ar100_clk_probe(struct platform_device *pdev)
 {
 	struct device_node *np = pdev->dev.of_node;
-	struct resource *r;
 	void __iomem *reg;
 	struct clk *clk;
 
-	r = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	reg = devm_ioremap_resource(&pdev->dev, r);
+	reg = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(reg))
 		return PTR_ERR(reg);
 
diff --git a/drivers/clk/sunxi/clk-sun8i-apb0.c b/drivers/clk/sunxi/clk-sun8i-apb0.c
index fc5d6e3b77d1..f605ecca879f 100644
--- a/drivers/clk/sunxi/clk-sun8i-apb0.c
+++ b/drivers/clk/sunxi/clk-sun8i-apb0.c
@@ -87,12 +87,10 @@ CLK_OF_DECLARE_DRIVER(sun8i_a23_apb0, "allwinner,sun8i-a23-apb0-clk",
 static int sun8i_a23_apb0_clk_probe(struct platform_device *pdev)
 {
 	struct device_node *np = pdev->dev.of_node;
-	struct resource *r;
 	void __iomem *reg;
 	struct clk *clk;
 
-	r = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	reg = devm_ioremap_resource(&pdev->dev, r);
+	reg = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(reg))
 		return PTR_ERR(reg);
 
-- 
2.17.1


