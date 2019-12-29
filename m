Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB4DC12C1F2
	for <lists+linux-riscv@lfdr.de>; Sun, 29 Dec 2019 09:20:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:MIME-Version:
	Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kZ3gmHLUn932Pv1n9lSS5iGXVKswSoxR5qJ685cV264=; b=lSI911U/mG518N
	7BidUvBFS/Uh+07/pcglsiiRUrgNzpUyPpN6PQCHlO5OKRfNrNf203fQ5shVQTmLRduUsFg50XyCP
	5R/bzvwUpKUUdDLLRy46hmWW3oV6wWEQW1Xc5DpfonEhyr/ZNDkCihkwP44Mbgd7NR2Wto6vKju1s
	cSiD2ntVFpi+ycTd6aBQhiHLrf2EqBhFgvygkhakW/OejmyOuTZitqxE6ZafljAwtzXHBSS7nV3Ec
	kM729I33bZOQp4akQ6p9Hj4Gw4MfiO2hh1pxZynv4LUz91hopgig16O9oVCfXJdPZfo3cnBa4xmns
	U17xitaBrVjQI3AAGpyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilToP-0000UB-AW; Sun, 29 Dec 2019 08:20:33 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilTav-000145-4T; Sun, 29 Dec 2019 08:06:39 +0000
Received: by mail-pl1-x641.google.com with SMTP id c13so13506825pls.0;
 Sun, 29 Dec 2019 00:06:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=kZ3gmHLUn932Pv1n9lSS5iGXVKswSoxR5qJ685cV264=;
 b=m0R5ZbYCE1rG+sD3REAsSdJJL8DRTOORWN1u8isuPUFHT6tlqKeKggD5nojJvcFeBW
 1Qu/2GPoQHU+fY4k0k2Gk+9/uiPU+ftFNHS1jdmTSeWon3aGBQMOw97pxWDhx2JGl6oL
 cGd39h70HMWU76jCNBM15zRMxSjk3FQM93x7tBOe2+aehplSX/we2SB60+idhNEfSU6F
 bl7rDhk8OkNWeYnMwtw2nY6ektkLJzpUCXjLIBOwHJNN8SeSKjTZ/3ATuYPNrnc2Bqdd
 nLfTfEo+A2FeL+QicRgv/WBt8JOVlBSGVNNlRj7dBSK4ZMXkpUleuxvWigumpFjy3Eu6
 5knA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=kZ3gmHLUn932Pv1n9lSS5iGXVKswSoxR5qJ685cV264=;
 b=QyPq+d0fkTG8U6Q2gTJGvGlHmapDUyIVMkuAxdL3WltAwcxWz8tDu/mBYD3X9yFvho
 fXNP8D/nI7H3sjns+XHafCBG/5wgu+/G0AcoWk4P7GapM+3N6IYCScARt6grt7m7DlaE
 N+aaRCzUzRfAnwmK/tVT3flAOStqzgiRd/9Y61P6D+Fd1odao2vst6csUtuY36JqtX7u
 SPeof4eho4A3jdtYnR3Y82BaH7DzHLlh75MRQkvXtFnjO5MfNQWUr1JsqiVosGNbchTa
 l1LSPPH9bz3yXKHLNQTpGVSLaGOgUIjLwPxhcT+/+yFbhwmumOTvsujBVRMPy7+udQc+
 bOog==
X-Gm-Message-State: APjAAAWBFNJEG/KWCNqcRsnPRRI1NHRZt/b6X4iMafvwM0z8EjHsh9n2
 xk5bswy2oPRsQU3XmpaJCWY=
X-Google-Smtp-Source: APXvYqwa7GnQSwppTBhuTNZ+erZiDBVrdnZa+AqBJPOHWUFyiar+lBUxG2VdqlQ3rau3CwmRIvIfQQ==
X-Received: by 2002:a17:90a:f314:: with SMTP id
 ca20mr36411362pjb.112.1577606794577; 
 Sun, 29 Dec 2019 00:06:34 -0800 (PST)
Received: from localhost ([2001:19f0:6001:12c8:5400:2ff:fe72:6403])
 by smtp.gmail.com with ESMTPSA id c18sm22189390pfr.40.2019.12.29.00.06.34
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 29 Dec 2019 00:06:34 -0800 (PST)
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
Subject: [PATCH 17/32] pwm: samsung: convert to devm_platform_ioremap_resource
Date: Sun, 29 Dec 2019 08:05:55 +0000
Message-Id: <20191229080610.7597-17-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191229080610.7597-1-tiny.windzz@gmail.com>
References: <20191229080610.7597-1-tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191229_000637_259838_CD7A6088 
X-CRM114-Status: UNSURE (   9.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
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
 drivers/pwm/pwm-samsung.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/pwm/pwm-samsung.c b/drivers/pwm/pwm-samsung.c
index 87a886f7dc2f..645d0066ff0a 100644
--- a/drivers/pwm/pwm-samsung.c
+++ b/drivers/pwm/pwm-samsung.c
@@ -510,7 +510,6 @@ static int pwm_samsung_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
 	struct samsung_pwm_chip *chip;
-	struct resource *res;
 	unsigned int chan;
 	int ret;
 
@@ -541,8 +540,7 @@ static int pwm_samsung_probe(struct platform_device *pdev)
 							sizeof(chip->variant));
 	}
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	chip->base = devm_ioremap_resource(&pdev->dev, res);
+	chip->base = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(chip->base))
 		return PTR_ERR(chip->base);
 
-- 
2.17.1


