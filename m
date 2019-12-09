Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B2E411768C
	for <lists+linux-riscv@lfdr.de>; Mon,  9 Dec 2019 20:58:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:MIME-Version:
	Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qpHD+BzRmCza+J8cARPun5felyrs+dQCyBCt49mQSmg=; b=EW0nROx3WvrbIf
	cPYKBGGPWNTn0/mQZDJzR44ocW5STHBly/CxwUl8bhjkXgpkNXFlupZr1fRkhxdCtz6h9jZql+2mn
	Olv4/cvJyUNqluXnHDmY3klmIZI1KXudICJ7gkmp9Th4bcjB2cFAgyHJzrmWhDt4off/bV5U0l0dX
	Va4VLOmD87XUjmP+n5cTGS46f00l5BCyB+XyQ1xMjy0TzTpUYQawFa/QccGOcjXxw8ETJdRUMN8FE
	9f5EyUmPyvS6QW9Ogry63NSUTUVI/EWPdss3aa+O0Den7PpgIyeRmjtnb2mA8tx98PJrp598dzvpi
	Sg4p8x0j9HkTs27Ru9nQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iePB2-00027S-IF; Mon, 09 Dec 2019 19:58:40 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iePAa-0001cP-TH; Mon, 09 Dec 2019 19:58:14 +0000
Received: by mail-pl1-x643.google.com with SMTP id bh2so5107777plb.11;
 Mon, 09 Dec 2019 11:58:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=qpHD+BzRmCza+J8cARPun5felyrs+dQCyBCt49mQSmg=;
 b=uV5pv0K9ZJ71Pl8qC7WYaq6P9NAskW0V0XiAkeLFSyizhvo/+ytjTGIPfksDrUOIFH
 Js0M/AxShyNuEgwRGXYUxmSZ9hS6mIf6M6xroyN+ABr52UgxQDr8i0IRUHbeNitNuT1U
 PyUwlJnQD23uobSXoQoShIOi+Kx7wfE/5XbsRDZ587jUIWCSXsQUy11Zts/sTvp2lFbH
 5TgIDQ+C35M4wzudq3ZZddIUCRLtt/+hDyJ6KSWhPBgoXvqB8KNkjACrIFSo5b2nMNRp
 LHW08kv8joPWFKL9aOkDknxugehsWCZaRmGHlhK3NQtdzsZtB0+K+c6WRLw/WT63Dj6Q
 tQKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=qpHD+BzRmCza+J8cARPun5felyrs+dQCyBCt49mQSmg=;
 b=D9QRhpPNwJTR4zpL0gS5df+sMkqBp3vTfPZLXwfyVT1lWXYtbogwlAiZd+uhNmV9Lg
 h+x5KzPFm7HhHp89vBZjhTkCDdOxvNXHfo8uiu9MSBmeYu4fXj206oIxTSPglA02SS/G
 A6QjWIuINAy0eqkoyO+DflNqxOaJSTCGL9HdBdeKfl7+e8l5wJ+x3cdRE3/lY7qE3DEe
 jaY+C95gMdgcjVOIO+GXKuKCZP0OM3EBNfNSU547fn5yUzObckoOmbk+l+K6rhEjWZqB
 G9bmhtkAmivxp+JrHktfbIgmXIOvO4u81D/0yfv6+HCgWWcNOq2rFnE7W/zGOte5a7e4
 hG6A==
X-Gm-Message-State: APjAAAUD3Yt4U9+V/ZsdukRoWXT27XeSbzg4ML1P4JlNZIuwSoSKtt1F
 IpXCmoOS+xJrm1CI/0gJCWg=
X-Google-Smtp-Source: APXvYqygbR8Mv8+x1FDwcshTXI8hOICMR3PVfkwhuHwXw/fxZ9bDbGQIRtAbeAH/HT1r6178kXxFQw==
X-Received: by 2002:a17:902:567:: with SMTP id
 94mr30967241plf.174.1575921491679; 
 Mon, 09 Dec 2019 11:58:11 -0800 (PST)
Received: from localhost ([2001:19f0:6001:12c8:5400:2ff:fe72:6403])
 by smtp.gmail.com with ESMTPSA id c19sm293007pfc.144.2019.12.09.11.58.11
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 09 Dec 2019 11:58:11 -0800 (PST)
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
Subject: [PATCH 07/17] clk: mvebu: convert to devm_platform_ioremap_resource
Date: Mon,  9 Dec 2019 19:57:39 +0000
Message-Id: <20191209195749.868-7-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191209195749.868-1-tiny.windzz@gmail.com>
References: <20191209195749.868-1-tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_115813_002262_CE405537 
X-CRM114-Status: UNSURE (   9.87  )
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
 drivers/clk/mvebu/armada-37xx-periph.c | 4 +---
 drivers/clk/mvebu/armada-37xx-tbg.c    | 4 +---
 2 files changed, 2 insertions(+), 6 deletions(-)

diff --git a/drivers/clk/mvebu/armada-37xx-periph.c b/drivers/clk/mvebu/armada-37xx-periph.c
index f5746f9ea929..0d03878920ac 100644
--- a/drivers/clk/mvebu/armada-37xx-periph.c
+++ b/drivers/clk/mvebu/armada-37xx-periph.c
@@ -725,7 +725,6 @@ static int armada_3700_periph_clock_probe(struct platform_device *pdev)
 	const struct clk_periph_data *data;
 	struct device *dev = &pdev->dev;
 	int num_periph = 0, i, ret;
-	struct resource *res;
 
 	data = of_device_get_match_data(dev);
 	if (!data)
@@ -746,8 +745,7 @@ static int armada_3700_periph_clock_probe(struct platform_device *pdev)
 		return -ENOMEM;
 	driver_data->hw_data->num = num_periph;
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	driver_data->reg = devm_ioremap_resource(dev, res);
+	driver_data->reg = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(driver_data->reg))
 		return PTR_ERR(driver_data->reg);
 
diff --git a/drivers/clk/mvebu/armada-37xx-tbg.c b/drivers/clk/mvebu/armada-37xx-tbg.c
index 585a02e0b330..5d86912fbb6e 100644
--- a/drivers/clk/mvebu/armada-37xx-tbg.c
+++ b/drivers/clk/mvebu/armada-37xx-tbg.c
@@ -84,7 +84,6 @@ static int armada_3700_tbg_clock_probe(struct platform_device *pdev)
 	struct clk_hw_onecell_data *hw_tbg_data;
 	struct device *dev = &pdev->dev;
 	const char *parent_name;
-	struct resource *res;
 	struct clk *parent;
 	void __iomem *reg;
 	int i, ret;
@@ -105,8 +104,7 @@ static int armada_3700_tbg_clock_probe(struct platform_device *pdev)
 	parent_name = __clk_get_name(parent);
 	clk_put(parent);
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	reg = devm_ioremap_resource(dev, res);
+	reg = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(reg))
 		return PTR_ERR(reg);
 
-- 
2.17.1


