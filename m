Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6601112C205
	for <lists+linux-riscv@lfdr.de>; Sun, 29 Dec 2019 09:21:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:MIME-Version:
	Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=47el5Owup02YUbMebGEaPI3XvpkPXD+FFtHlPrEyxFA=; b=cTSvFkkqXJRgAA
	ErlnWHLrIGi9ZD6slBDlo1ld5XFrptNajZd44dR+O0nt9kI18fRq98hfiS8fp3cdK6ig9PWfWAvPa
	YtdTMiOX6q6eAWEsoS2q+b5X+jJ5R0yliP1WLG3hndREEp4DjTIZxee4gdmE6/MKKHjpWpahS0s3h
	9oaGsbBYYbwJ/TZQcyifBT6qROnCcSQGoi18W1Mgetxbr325UZIECvTPoRaniJ2EWs2WlYu1qsQlu
	/pX8QF6NnxEsH+uRJEalSk+uSxp+6juRr0vNTi5BL47AUyQQPSAS3rxhmbtBigYurmnRCnb1uZa2C
	jCRnlWkbMqlZEaGWjuJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilTp4-0001PZ-Sg; Sun, 29 Dec 2019 08:21:14 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilTbB-0001Ij-OH; Sun, 29 Dec 2019 08:06:55 +0000
Received: by mail-pl1-x642.google.com with SMTP id g6so10550008plp.6;
 Sun, 29 Dec 2019 00:06:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=47el5Owup02YUbMebGEaPI3XvpkPXD+FFtHlPrEyxFA=;
 b=MIXP/grZx6mWbEPfFXoqRs3JDVjT04SNhSSWru67t/m2eIdF2cqFP0yxHw3B0ADWzA
 Mj3R/G2Hv0hE88wKCIVgrmJUyZU1RwbGy8FRZe4fVCKonv6vI4DRiJPdpxqydIsjM3Ll
 MCKmGePOPt3QMQPqZx5luh3T2jxYbH9ahKrCYeSs4sO6/eCjeQcZxqD6zWnTnfkm1VFm
 4VeDCHj74to92KPKBIPeT1p5Tr6sWXUDo8dBqmrioiHBkpdcY169L96miePLUYBE4YgA
 TCVBtRbuC058Y/EY2qJFGEXH571X/xpG8vWrH0jA9cQoeT147Yy9P95L7fSgzdeip8Gu
 i2pA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=47el5Owup02YUbMebGEaPI3XvpkPXD+FFtHlPrEyxFA=;
 b=qI00ozP1u6vG0yMhOl8KHV1gZj4yKUX0Jfkjwr2sQ6gpSIhxYpUDga0E+zTaO1r4Mi
 M54ckxN0uQ+vXGTO+vkHuL0nLyMUeEwTdnoeOvsQjV1hlHWFXWHLSGWjpuOmERqp4lzj
 svxJdk3G0Ky8RN6bU1vpxSagPzddkG3RdyKyKKG20BHOfIAk/gJiOJcKrBxkZrBNodrF
 EGTyKH2MJbouLrd7l+B4Lo05qfX2P6HNrRStNjop3GspIM/7RkQJSSYvFmRO7TAYSY5L
 EeQ7rySzON6uCNZyckPu835AqplauWj2604p3S5GkkS6DKSWX1tcQTAjAyuwqI0ambw8
 y5HA==
X-Gm-Message-State: APjAAAWZx06IMoMsROZ0dHuKdKDtTqQlZId50M4hi+OZFnLstbSDiDGa
 5h7tRB6Ufiqnrv+hjNoECF8=
X-Google-Smtp-Source: APXvYqx0/m9vcRiiE8VyrTjc7rP0/kHdHXJwPeS5Tef1XK44wL7jcNW0xwmNSTXH2Pe6rwcBvhW0LA==
X-Received: by 2002:a17:90a:3763:: with SMTP id
 u90mr38493406pjb.107.1577606811634; 
 Sun, 29 Dec 2019 00:06:51 -0800 (PST)
Received: from localhost ([2001:19f0:6001:12c8:5400:2ff:fe72:6403])
 by smtp.gmail.com with ESMTPSA id a26sm37945389pfo.27.2019.12.29.00.06.50
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 29 Dec 2019 00:06:51 -0800 (PST)
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
Subject: [PATCH 32/32] pwm: atmel: convert to devm_platform_ioremap_resource
Date: Sun, 29 Dec 2019 08:06:10 +0000
Message-Id: <20191229080610.7597-32-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191229080610.7597-1-tiny.windzz@gmail.com>
References: <20191229080610.7597-1-tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191229_000653_882537_02EB2D0E 
X-CRM114-Status: UNSURE (   9.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
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
 drivers/pwm/pwm-atmel.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/pwm/pwm-atmel.c b/drivers/pwm/pwm-atmel.c
index 9ba733467e26..86cc5ccaa46c 100644
--- a/drivers/pwm/pwm-atmel.c
+++ b/drivers/pwm/pwm-atmel.c
@@ -340,7 +340,6 @@ MODULE_DEVICE_TABLE(of, atmel_pwm_dt_ids);
 static int atmel_pwm_probe(struct platform_device *pdev)
 {
 	struct atmel_pwm_chip *atmel_pwm;
-	struct resource *res;
 	int ret;
 
 	atmel_pwm = devm_kzalloc(&pdev->dev, sizeof(*atmel_pwm), GFP_KERNEL);
@@ -351,8 +350,7 @@ static int atmel_pwm_probe(struct platform_device *pdev)
 	atmel_pwm->data = of_device_get_match_data(&pdev->dev);
 	atmel_pwm->updated_pwms = 0;
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	atmel_pwm->base = devm_ioremap_resource(&pdev->dev, res);
+	atmel_pwm->base = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(atmel_pwm->base))
 		return PTR_ERR(atmel_pwm->base);
 
-- 
2.17.1


