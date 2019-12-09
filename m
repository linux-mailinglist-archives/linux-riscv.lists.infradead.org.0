Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 916F711768B
	for <lists+linux-riscv@lfdr.de>; Mon,  9 Dec 2019 20:58:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:MIME-Version:
	Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5Ypj/Z6w2S/xgkl+ZC6Pju9LNZ16DA5i5275AzT7Az8=; b=iiJJM0aQLBp21d
	sL/wKiBnZZMy4BcCUd5o79aQ7ZEVIDSxEEqXlrgMJu02GS8lNzWfsj6SK93mDd9zB1iUiYONoehhF
	nLAKs3xYsDLXeAHoGBkRJ+xsVvHWTPO2LpsEkHcz6Pf9txCn2WzblMoR0MGefERHurw3+4heU88Aj
	Aayy4QclvnaL4B4thsxkAigH5diJ1GVetxgZAyIFdQS8rMgAFDf7+wMeEbSVrCFcpROaZ7KZDOfCS
	H9O5cXzmZI5ECnkLJY+Uk0nNC5RuSC85hDgqXelX4EpbAU+zNp0udXkNbRmY6nsUVUtS/q7FNWQ2F
	ZXJXmqlXMtZM6V/4XYbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iePAz-00024J-Qe; Mon, 09 Dec 2019 19:58:38 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iePAY-0001aR-Ot; Mon, 09 Dec 2019 19:58:12 +0000
Received: by mail-pl1-x642.google.com with SMTP id bh2so5107754plb.11;
 Mon, 09 Dec 2019 11:58:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=5Ypj/Z6w2S/xgkl+ZC6Pju9LNZ16DA5i5275AzT7Az8=;
 b=XDWN9d8k0pBMo+UkkcX1UfyWaeD0FDlwtPRgLxmAGmjfj7VvxgJ+utoSJJbVFf1e8j
 cVTIMVhpbFcRmnCfJfNrkdQDWPHhpAOS6W2qbTijNUU98elxzA9CRXupry7r7PmtENWG
 2iaJ+jjdaYShsBjUrnXiXi/RlnB92+H8ym7JDCEv9VRZ/4ps0/dodXmZRSU7hxJVc5Cj
 YthVNwPROegPqrfA3slLTAM8fGIglRXefx2+/Zo8G+iHQesFdbwBYxdnYbogEbDdBjog
 mySYP15VONRcvZ4j7foihrlRjJ+yWyhvJOUqFtIC3Sbs19NDP8t3owrbeHwfGbVV579t
 +rZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=5Ypj/Z6w2S/xgkl+ZC6Pju9LNZ16DA5i5275AzT7Az8=;
 b=eWb1sTn4VCxDbBB9JQ43+8E12iz7EOvxRhG7LMDr1hU1dhglPDzWVLZwSm9QQ7giut
 JFZsu2GXt4L818EJEA+Wv0L3n0gLPdbYg28pwR9gVCVrMZ33ETxeBlEcndEdDkscivmD
 Zx0Ie7LSsbayPzswyALxdXVQLoGHlP/n8xNQDXlnXWRfab8D0Y3yDXmNmUrgE54QSD5D
 QJBfghsICpzcXSN7hdR7OiULSSX342kHM/++KFH//4rNOdyvz/lbGzxcHbto1U7Ta0OO
 BV6wJ5JCblVXiZlbvr9MwH+2CdwVDcsdDhkGCbaxDjOQqOOIlWVdu6FrypdirJu4vVIh
 2lAA==
X-Gm-Message-State: APjAAAXoZ8lx98Vwvxfzvyq5v6kjOLB9164HxuwVmmA5U1JKiEmwFjGa
 hTWJ8+RtJ8YbDcrDfpAZLdc=
X-Google-Smtp-Source: APXvYqwB7mvU3N06HUnt/fRjyLYz5X1psEZz61OVWSzTqPYA5ykl2uCZGGD6VXZzgLMxQd0Zqd4WHQ==
X-Received: by 2002:a17:902:724b:: with SMTP id
 c11mr19110880pll.177.1575921489905; 
 Mon, 09 Dec 2019 11:58:09 -0800 (PST)
Received: from localhost ([2001:19f0:6001:12c8:5400:2ff:fe72:6403])
 by smtp.gmail.com with ESMTPSA id p17sm312835pfn.31.2019.12.09.11.58.09
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 09 Dec 2019 11:58:09 -0800 (PST)
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
Subject: [PATCH 06/17] clk: tegra: convert to devm_platform_ioremap_resource
Date: Mon,  9 Dec 2019 19:57:38 +0000
Message-Id: <20191209195749.868-6-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191209195749.868-1-tiny.windzz@gmail.com>
References: <20191209195749.868-1-tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_115810_851794_F740F7CB 
X-CRM114-Status: UNSURE (   9.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
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
 drivers/clk/tegra/clk-dfll.c | 34 ++++------------------------------
 1 file changed, 4 insertions(+), 30 deletions(-)

diff --git a/drivers/clk/tegra/clk-dfll.c b/drivers/clk/tegra/clk-dfll.c
index c051d92c2bbf..070a2957e119 100644
--- a/drivers/clk/tegra/clk-dfll.c
+++ b/drivers/clk/tegra/clk-dfll.c
@@ -1935,7 +1935,6 @@ static int dfll_fetch_common_params(struct tegra_dfll *td)
 int tegra_dfll_register(struct platform_device *pdev,
 			struct tegra_dfll_soc_data *soc)
 {
-	struct resource *mem;
 	struct tegra_dfll *td;
 	int ret;
 
@@ -1985,51 +1984,26 @@ int tegra_dfll_register(struct platform_device *pdev,
 		return ret;
 	}
 
-	mem = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	if (!mem) {
-		dev_err(td->dev, "no control register resource\n");
-		return -ENODEV;
-	}
-
-	td->base = devm_ioremap(td->dev, mem->start, resource_size(mem));
+	td->base = devm_platform_ioremap_resource(pdev, 0);
 	if (!td->base) {
 		dev_err(td->dev, "couldn't ioremap DFLL control registers\n");
 		return -ENODEV;
 	}
 
-	mem = platform_get_resource(pdev, IORESOURCE_MEM, 1);
-	if (!mem) {
-		dev_err(td->dev, "no i2c_base resource\n");
-		return -ENODEV;
-	}
-
-	td->i2c_base = devm_ioremap(td->dev, mem->start, resource_size(mem));
+	td->i2c_base = devm_platform_ioremap_resource(pdev, 1);
 	if (!td->i2c_base) {
 		dev_err(td->dev, "couldn't ioremap i2c_base resource\n");
 		return -ENODEV;
 	}
 
-	mem = platform_get_resource(pdev, IORESOURCE_MEM, 2);
-	if (!mem) {
-		dev_err(td->dev, "no i2c_controller_base resource\n");
-		return -ENODEV;
-	}
-
-	td->i2c_controller_base = devm_ioremap(td->dev, mem->start,
-					       resource_size(mem));
+	td->i2c_controller_base = devm_platform_ioremap_resource(pdev, 2);
 	if (!td->i2c_controller_base) {
 		dev_err(td->dev,
 			"couldn't ioremap i2c_controller_base resource\n");
 		return -ENODEV;
 	}
 
-	mem = platform_get_resource(pdev, IORESOURCE_MEM, 3);
-	if (!mem) {
-		dev_err(td->dev, "no lut_base resource\n");
-		return -ENODEV;
-	}
-
-	td->lut_base = devm_ioremap(td->dev, mem->start, resource_size(mem));
+	td->lut_base = devm_platform_ioremap_resource(pdev, 3);
 	if (!td->lut_base) {
 		dev_err(td->dev,
 			"couldn't ioremap lut_base resource\n");
-- 
2.17.1


