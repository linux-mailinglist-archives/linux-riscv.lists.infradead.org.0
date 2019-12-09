Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D53E117689
	for <lists+linux-riscv@lfdr.de>; Mon,  9 Dec 2019 20:58:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:MIME-Version:
	Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zwo7j6FYcAU6xQvqiD8wcHYFfx6vmNTXAdLudkME2oA=; b=YO3xrMtRLO67Vi
	eXiNoXLzAHRo+ZJmT57B9AakGwXbS4R9W1GumLrowxr759cj8lbdRf6SGErWZ2thZ7mij9zWx7gva
	zZJDRI5P6xqNcFIo7L1d61Mg1AGL7lsH2H4jrFYAlHfxfuiTqfj8c35vjq1KXImg23H6lm0yQA/nr
	FhdCYeJZjty2ijLaE8ogvhfep6ORD0lZfSN9F2MK+LXb/CxlDF+gi+aodMoAY9G/X8/91KAoWzSbU
	/EVlODKsyOq6T6PYUZgDrZAVlvhfbB6/f5gMpD3gVauNGXp0W6xRim/b4WXBrVsZ+c2lCQbdnPofe
	/uuuLRhNB41RXHfCrLRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iePAu-0001vE-4f; Mon, 09 Dec 2019 19:58:32 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iePAW-0001Ym-SW; Mon, 09 Dec 2019 19:58:10 +0000
Received: by mail-pj1-x1043.google.com with SMTP id r67so6346245pjb.0;
 Mon, 09 Dec 2019 11:58:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Zwo7j6FYcAU6xQvqiD8wcHYFfx6vmNTXAdLudkME2oA=;
 b=dXCKKHSq708g3bzEhk2NUfFJHmr/4ACNCLQxSjH9idI484enyK0RrSW9L5Ds/zIZw5
 XnGw1cV4dNkh6CrKWdB7D2R1zl+bb+LS1xDRR5bnqBJQe/fjPZm1sfC+BP62o8veYSHc
 um27YLCPDcjfF5466u7ZfOGFvrnzbl8fz66Z2D20sxIIbAR24JKIyeAVUHb8YGSbMO2s
 OCN91B5wp1lMD/fXw0uwRK8mjgbYhr4GIZV+Lk1nKqA0xXNsTTVYuOny/+GWVWimznuT
 SOIt2/zzNkhE/HR2n4NJgoqEuNlShN8idm740MW2DumuUl2zE3UvgIUpG9nVY/NGaykt
 hQmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Zwo7j6FYcAU6xQvqiD8wcHYFfx6vmNTXAdLudkME2oA=;
 b=BEAsyVEoVYoyHAfJuoieuxp5VJq/3ZIBqz0klYPUc3VPZYUMfAI3ud2W8pBE33lgku
 vU4okCJBSGcWAs4kChobKqK6JZVvwP115U26jWz6Nlh8OlKI9E2a4KAvNvxhP6SBx7q5
 brI6BhyBKlGPTc7OQ4bXfen3bCjTCuZnhVG9UWxF6C5zx9gACgUJ9cvD77U3yEzK7RYf
 dQK3zBxKuxMQcEjCoeL0MI56GqzJ0wXtH5p/Cfs+OlXNVEhS4pZwrszziwVWGyc3BItQ
 NrU6lyVktmFYXB9/m6rUFLGTZeCFSEJcxV72HYAnQQ5kq82eTZVM38gXY56S/rlzH+rR
 ZR0w==
X-Gm-Message-State: APjAAAUQjtvQ5xLX+1oSs0boNOFmucdNkO8qZV43ydH/ISELOQoQV8Mk
 fsei6bPHYZJ/OWsAIfqiFfw=
X-Google-Smtp-Source: APXvYqwzD81o1+M3dh7boPIyvW4RNlfCGnRpjiWPXJO6NlSMqtQfizgHyNI5b9higsw7zuO17ICQAg==
X-Received: by 2002:a17:90a:ba98:: with SMTP id
 t24mr933386pjr.12.1575921488045; 
 Mon, 09 Dec 2019 11:58:08 -0800 (PST)
Received: from localhost ([2001:19f0:6001:12c8:5400:2ff:fe72:6403])
 by smtp.gmail.com with ESMTPSA id 39sm203686pjo.7.2019.12.09.11.58.07
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 09 Dec 2019 11:58:07 -0800 (PST)
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
Subject: [PATCH 05/17] clk: hisilicon: convert to
 devm_platform_ioremap_resource
Date: Mon,  9 Dec 2019 19:57:37 +0000
Message-Id: <20191209195749.868-5-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191209195749.868-1-tiny.windzz@gmail.com>
References: <20191209195749.868-1-tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_115808_929428_4C91E39C 
X-CRM114-Status: GOOD (  10.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
 drivers/clk/hisilicon/clk-hi3660-stub.c | 6 +-----
 drivers/clk/hisilicon/clk.c             | 7 +------
 2 files changed, 2 insertions(+), 11 deletions(-)

diff --git a/drivers/clk/hisilicon/clk-hi3660-stub.c b/drivers/clk/hisilicon/clk-hi3660-stub.c
index 3a653d54bee0..7e44d6e2a307 100644
--- a/drivers/clk/hisilicon/clk-hi3660-stub.c
+++ b/drivers/clk/hisilicon/clk-hi3660-stub.c
@@ -124,7 +124,6 @@ static struct clk_hw *hi3660_stub_clk_hw_get(struct of_phandle_args *clkspec,
 static int hi3660_stub_clk_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
-	struct resource *res;
 	unsigned int i;
 	int ret;
 
@@ -139,10 +138,7 @@ static int hi3660_stub_clk_probe(struct platform_device *pdev)
 	if (IS_ERR(stub_clk_chan.mbox))
 		return PTR_ERR(stub_clk_chan.mbox);
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	if (!res)
-		return -EINVAL;
-	freq_reg = devm_ioremap(dev, res->start, resource_size(res));
+	freq_reg = devm_platform_ioremap_resource(pdev, 0);
 	if (!freq_reg)
 		return -ENOMEM;
 
diff --git a/drivers/clk/hisilicon/clk.c b/drivers/clk/hisilicon/clk.c
index 54d9fdc93599..8c521495d9e5 100644
--- a/drivers/clk/hisilicon/clk.c
+++ b/drivers/clk/hisilicon/clk.c
@@ -27,18 +27,13 @@ struct hisi_clock_data *hisi_clk_alloc(struct platform_device *pdev,
 						int nr_clks)
 {
 	struct hisi_clock_data *clk_data;
-	struct resource *res;
 	struct clk **clk_table;
 
 	clk_data = devm_kmalloc(&pdev->dev, sizeof(*clk_data), GFP_KERNEL);
 	if (!clk_data)
 		return NULL;
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	if (!res)
-		return NULL;
-	clk_data->base = devm_ioremap(&pdev->dev,
-				res->start, resource_size(res));
+	clk_data->base = devm_platform_ioremap_resource(pdev, 0);
 	if (!clk_data->base)
 		return NULL;
 
-- 
2.17.1


