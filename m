Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C534512C148
	for <lists+linux-riscv@lfdr.de>; Sun, 29 Dec 2019 09:07:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=+3pBLd50yZ31QGDnQXQDHmLfpHXmqi0l43iIkO1V9Fk=; b=VeNb7fANM2Vl2F9hk55YQAc3RK
	CHEDFaPEGVd3s5am70ggzEZIrYiLJN1y3kL5l8lUkp/JTtKCnQNcHv8Rn2b0Q7kVbqtZAqmZNsd8g
	zFp4HdAj9p7kSWvOiJgMyllqEhhBC8YD6R8G2UKvput/+f65P4r4XysKlTM/DuvTjTJe3Bba/MBOe
	qOF+ChFEsuH+jZpjbOhu3CrsW8NZ8zFiIqyteuqyOgCdCmVlobkAsnQkDaum2JhSz2FocASmpbacM
	5KK6XIuDDnT5zwBcCBHERjVPROUH0tfnIxgHqVuzcScPsBxkFpokTgYESs8CIV3VdkFAr9Tebfzlu
	bH5ICLCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilTbu-0001nT-Ix; Sun, 29 Dec 2019 08:07:38 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilTaZ-0000m7-Oy; Sun, 29 Dec 2019 08:06:17 +0000
Received: by mail-pj1-x1042.google.com with SMTP id t101so6880795pjb.4;
 Sun, 29 Dec 2019 00:06:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=+3pBLd50yZ31QGDnQXQDHmLfpHXmqi0l43iIkO1V9Fk=;
 b=JG6H1yvXtza6zd1BLy2dsQbEIHwG3IcGFnYTmJb+HGx740diEoe5JAn+t24q8VoSuV
 5fbcviVM5CcY0TyjCuQXa6qCbooh7tfB+LrHt3/Ug6YFtCT5k5V2gwou5opqsGC6PwHc
 eurPwx50PDqmxEW1q+ynKJ0KnCQeyzQX7xW2SvY2itaOb+xiBEMYtX6IObjqWLKo9teF
 Q8zj04fwbhQU/UpdXgs6LRdOgn+M5RnZG84uXVM3HPgc9uiEjx0BMuG3GLmG4PD1Qm+A
 hyzMraA1AY+YuWSnreOvwjqLS2dumP9P/mjJBIQS5Ru3J260j9Ci2chSfkQQqO0ydswt
 R3SQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=+3pBLd50yZ31QGDnQXQDHmLfpHXmqi0l43iIkO1V9Fk=;
 b=inmZwBahr4mNTuG+Zlk52De+YFn4n7zSVAqf4BkR5O1PKeXnMdiJahSGFClBmkmB+H
 9o/vVo+wU66tUto+FK2pupmiQTGkfztlqJ+ohzXWd+0tIs6Ye1yz2Rcq4UYvDpBFRQ/6
 dwoDZc3nhKXE+q+k6LO7rsJBCVcVmfEyCNgt+ENkC4tsV1p7OoEDnceWHAmIQW3e8euU
 rDD2VIQSTQHFxiEzCT4jCySoG8c4NglGREKutnRF/XXxlwYV29jcRQdpvb0CzsRG8vm0
 sMnNvbSNknyW5VgD90wx2F/aGH20oaMRyfxnJgDe/Kx25wLJK7BJzyc3ae26lGOYzMzM
 stxA==
X-Gm-Message-State: APjAAAU3A+AJhvTj4BD3QHpQ0w8vHnOEyjvHiN/S0lmxrMCar8lQF0P1
 Vbk55cp1e+UVIW/0R1Iblgk=
X-Google-Smtp-Source: APXvYqxnI5XBWy+NXM/GB41OB70ppiFg3j0a/LZfYu0PTXzqYRRbkm4zUSrtO9fzojgrIm7DOwlwvw==
X-Received: by 2002:a17:902:7296:: with SMTP id
 d22mr64069643pll.55.1577606774630; 
 Sun, 29 Dec 2019 00:06:14 -0800 (PST)
Received: from localhost ([2001:19f0:6001:12c8:5400:2ff:fe72:6403])
 by smtp.gmail.com with ESMTPSA id f127sm48271863pfa.112.2019.12.29.00.06.13
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 29 Dec 2019 00:06:13 -0800 (PST)
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
Subject: [PATCH 01/32] pwm: sun4i: convert to devm_platform_ioremap_resource
Date: Sun, 29 Dec 2019 08:05:39 +0000
Message-Id: <20191229080610.7597-1-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191229_000615_836436_63091427 
X-CRM114-Status: UNSURE (   8.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
 drivers/pwm/pwm-sun4i.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/pwm/pwm-sun4i.c b/drivers/pwm/pwm-sun4i.c
index 581d23287333..f2afd312f77c 100644
--- a/drivers/pwm/pwm-sun4i.c
+++ b/drivers/pwm/pwm-sun4i.c
@@ -344,7 +344,6 @@ MODULE_DEVICE_TABLE(of, sun4i_pwm_dt_ids);
 static int sun4i_pwm_probe(struct platform_device *pdev)
 {
 	struct sun4i_pwm_chip *pwm;
-	struct resource *res;
 	int ret;
 
 	pwm = devm_kzalloc(&pdev->dev, sizeof(*pwm), GFP_KERNEL);
@@ -355,8 +354,7 @@ static int sun4i_pwm_probe(struct platform_device *pdev)
 	if (!pwm->data)
 		return -ENODEV;
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	pwm->base = devm_ioremap_resource(&pdev->dev, res);
+	pwm->base = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(pwm->base))
 		return PTR_ERR(pwm->base);
 
-- 
2.17.1


