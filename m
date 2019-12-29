Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 741F712C202
	for <lists+linux-riscv@lfdr.de>; Sun, 29 Dec 2019 09:21:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:MIME-Version:
	Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yOZESLDf3NMQl2AQzpvlA7k5qk3OCi4YGKummQOrFs8=; b=ZPe+xx8NyOfa1U
	AD/IXPo87KLraLUpIhjLEiYwqVZk7bMkjn1F34jcbgwQcr5H+MkNTCxoIhYeB0qRCkLrldYXD0GjL
	e6x+d1JuTcKOc6eoLipfpt6mOrohmc2Wwd7roOTUeK2lc04QVFMK53329BEnxqurRsi5Y1jTs2pII
	OlrCJxUzkcpWwTYp0V95JO0fipd3kc9nqpJl5mAdqs8wZcNurPo4F2Ppqi4R4z/9fZNuuCNB9Se/K
	kAmEP2dNpz2SIN6tX29igE2HJfLMRhhgysyG0sDY2LDUAYEXT9GSPy9mVPxbMNjl/0/FPJvfyw9ST
	0HVtJhypIXpen9VwnShw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilTow-0001DH-6m; Sun, 29 Dec 2019 08:21:06 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilTb6-0001Ef-TN; Sun, 29 Dec 2019 08:06:50 +0000
Received: by mail-pg1-x544.google.com with SMTP id a33so16617845pgm.5;
 Sun, 29 Dec 2019 00:06:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=yOZESLDf3NMQl2AQzpvlA7k5qk3OCi4YGKummQOrFs8=;
 b=LeTIqEBW8Zs2cVWvHu0MnAMgs+gLcpWeH0KGWJgyv0M4pne784SNrN22qVKM9VxLGg
 VkIgrhxEQ30CzrwesG7m0kyxQNTtuJIREZP5mbsuT7kI006XW457m7zpP8wcDJdtf5wW
 rG7IArpjXRiHApgleitFu/5xtZnNb60rGHKkteyiSyxzEIOgHYKziuHHCk9148gX35M7
 ZtYqBDU5ew/TJi2rPABaXhvcIm1UZ5jSuJkS5NlSH35OEiGzFXbzdok6V3FbwW8o4qn1
 UQJCAjR5+JG3n7x1sg+c1vg1x6XfsOhyp98ZNaT0SlitZqjGC6W+QrI2xtcqSAPOGZB4
 nCYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=yOZESLDf3NMQl2AQzpvlA7k5qk3OCi4YGKummQOrFs8=;
 b=g4I8v6Y+xy8q+gSoBEJT63KayA5I33fvTJYxngt7XF6AkjxnwBgtDH2BPCme1mAQ3U
 9g3t4pVts+M8Cpw3QEIrw9gWrz8l+oJ2W+Nd31DhsFQMsMp4TqDIIWb+CVOuqgYGgqYE
 jSunLM1gD5ZuAh9HVcDuQOlTIpC5OfEWOdioyg/41nl/a1b1/7etHqo8qR9eIk9FHRnw
 DD1kEC+jK0rny/egfbpjwNanzDhdSolCKFz+JzwMl9dGRxZ8MpAKK6NgB1fXt+h8Cjyy
 9txQN6JzEB5eZ8+kwVRCnZVHIXTE4q1xS/0Gehx1BX6CI1Ohgt2LfFohlcrImjs+zU1N
 xRdQ==
X-Gm-Message-State: APjAAAXBIMISmd4m6r2TM2WtqeiV11UQxIXvgB2Im6m/8meEVT2D7BZU
 B4T0g+jGvjwuFXD9gIRRgEM=
X-Google-Smtp-Source: APXvYqy3I9nbiiPsy5usJiGTqqOxXYQdFH9OZhOVBLvhOhgfJN5S0H2k5R3G4H5O1kb/UplcTjBTuA==
X-Received: by 2002:aa7:82c9:: with SMTP id f9mr65137704pfn.168.1577606807243; 
 Sun, 29 Dec 2019 00:06:47 -0800 (PST)
Received: from localhost ([2001:19f0:6001:12c8:5400:2ff:fe72:6403])
 by smtp.gmail.com with ESMTPSA id a69sm45429777pfa.129.2019.12.29.00.06.46
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 29 Dec 2019 00:06:46 -0800 (PST)
From: Yangtao Li <tiny.windzz@gmail.com>
To: claudiu.beznea@microchip.com, thierry.reding@gmail.com,
 u.kleine-koenig@pengutronix.de, nicolas.ferre@microchip.com,
 alexandre.belloni@bootlin.com, ludovic.desroches@microchip.com,
 rjui@broadcom.com, sbranden@broadcom.com,
 bcm-kernel-feedback-list@broadcom.com, f.fainelli@gmail.com,
 nsaenzjulienne@suse.de, shc_work@mail.ru, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 linux-imx@nxp.com, vz@mleia.com, slemieux.tyco@gmail.com,
 khilman@baylibre.com, matthias.bgg@gmail.com, heiko@sntech.de,
 palmer@dabbelt.com, paul.walmsley@sifive.com, mripard@kernel.org,
 wens@csie.org, jonathanh@nvidia.com, linux@prisktech.co.nz,
 linux-arm-kernel@lists.infradead.org, linux-pwm@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rpi-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org, linux-mediatek@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-riscv@lists.infradead.org,
 linux-tegra@vger.kernel.org
Subject: [PATCH 28/32] pwm: img: convert to devm_platform_ioremap_resource
Date: Sun, 29 Dec 2019 08:06:06 +0000
Message-Id: <20191229080610.7597-28-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191229080610.7597-1-tiny.windzz@gmail.com>
References: <20191229080610.7597-1-tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191229_000649_048934_1DEFBB07 
X-CRM114-Status: UNSURE (   9.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tiny.windzz[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Yangtao Li <tiny.windzz@gmail.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Use devm_platform_ioremap_resource() to simplify code.

Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
---
 drivers/pwm/pwm-img.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/pwm/pwm-img.c b/drivers/pwm/pwm-img.c
index c9e57bd109fb..e9b25440b808 100644
--- a/drivers/pwm/pwm-img.c
+++ b/drivers/pwm/pwm-img.c
@@ -238,7 +238,6 @@ static int img_pwm_probe(struct platform_device *pdev)
 	int ret;
 	u64 val;
 	unsigned long clk_rate;
-	struct resource *res;
 	struct img_pwm_chip *pwm;
 	const struct of_device_id *of_dev_id;
 
@@ -248,8 +247,7 @@ static int img_pwm_probe(struct platform_device *pdev)
 
 	pwm->dev = &pdev->dev;
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	pwm->base = devm_ioremap_resource(&pdev->dev, res);
+	pwm->base = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(pwm->base))
 		return PTR_ERR(pwm->base);
 
-- 
2.17.1


