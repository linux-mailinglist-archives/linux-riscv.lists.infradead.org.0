Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ACA9712C1BB
	for <lists+linux-riscv@lfdr.de>; Sun, 29 Dec 2019 09:18:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:MIME-Version:
	Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kJfVG4855LhBX7Jw+HB9muJtnt8I3TC3RRe+0TTxvkY=; b=qIoAoVwArzE4B3
	bBrsof0ovUAdH8IYp4INrYmcJ35nJW9Mezlo266JrytkiYkfbpuuHBf5pLX7rqYL8ociS3L+NA8Ak
	MSN/8zO5Iw8O/UT41nGq616PZjAksrmeoQ5v1xdyDAe5pLysUJtqANiexeWHC+xj5rjcloMw9c4a0
	9lSX/dR5VnEBFuM23GopFsAR5K3hzhQnwUNqVygTpxWqlLC7GZrQj8vMvaEi8MJhzFhumKNElcOrQ
	/AlG4CFkBG1e1k7PKop372XT3Z29JeF/N1ue1NRKnQZWzs/ks9vN1BJUcds9gD3cZo50jeNLrGtRb
	sxiZN4VfroKB5c6jhvFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilTmI-00057r-Cq; Sun, 29 Dec 2019 08:18:22 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilTah-0000rs-66; Sun, 29 Dec 2019 08:06:24 +0000
Received: by mail-pj1-x1043.google.com with SMTP id l35so6879221pje.3;
 Sun, 29 Dec 2019 00:06:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=kJfVG4855LhBX7Jw+HB9muJtnt8I3TC3RRe+0TTxvkY=;
 b=umiR4bpK+hFagVx6dNWyqvf2HnQxVYRc+CfETrcB5LcBwr69Xc0488XfW3mvNQeajv
 V5+uC4mZ/LETljSPKS5THFfFyESAS8zf6M1X2lnDCW4QT4CkCM1ZGloSk4CrGSjvBTnp
 jiz/7OHdTgY37G3qoHVp/zvxj3OXZFkPODp67sRLepgYxr6tWsxHFyy1+z8SZ77++Ar0
 jKe+fwWd2T4d08gwApoIv7abrDv9e0P9nBToofeg22m/XN9kaOeMe1dq8IJMMP4vho3H
 UVjOCwXyxCV5JHqac1suFyczet/TSosYz1Lpx1kuo0HbP933G9fXZF3Fb0XVZBYku5HG
 A7cA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=kJfVG4855LhBX7Jw+HB9muJtnt8I3TC3RRe+0TTxvkY=;
 b=DuT25RrB5jJTyakWHVA58aPlLKVmxdlNL00jcK0vSW/IzS9cmRr4ccQbuofqol0OQQ
 OfxRq5+mMzBKtzV27j50IwnwYY2RZlyk9MkyjcrAcwXGt1bnw/s6+zo0dYTICizIYoke
 sFmdDd3VVINsYpfDQgK6IKQwSt6lsHgdpSLfGZD0GKNk/AT6LaBOBlX3653IKQHreIai
 V6EwiFnE52ayzqRhU6daejSshXJs4D674iMnF8CVk3aeKsaqzv+qKufFyL/RGiNILVLY
 zUxvk1nU/N67YXEkxGlRPwACTnhyjU2HgAKUpE4yW2FIz6LKT/ylGGj5QnSUWNJ6aNsf
 R3Fw==
X-Gm-Message-State: APjAAAUZ8dWM8qOTqbdl9tS5lLfNjN0Yp0NbJm1uRUQ5v0vVJ8uUp10o
 rQUa3yntZluLYIqDw+klklU=
X-Google-Smtp-Source: APXvYqyLokgFtS6K5K5ahwNAvTHcYw1xLsZBJ3HO5Dtzo8qyrhcyo5S3agmSaWbAPSTxojar7WTBpA==
X-Received: by 2002:a17:902:fe98:: with SMTP id
 x24mr62258889plm.155.1577606782293; 
 Sun, 29 Dec 2019 00:06:22 -0800 (PST)
Received: from localhost ([2001:19f0:6001:12c8:5400:2ff:fe72:6403])
 by smtp.gmail.com with ESMTPSA id o10sm42988345pgq.68.2019.12.29.00.06.21
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 29 Dec 2019 00:06:21 -0800 (PST)
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
Subject: [PATCH 06/32] pwm: tegra: convert to devm_platform_ioremap_resource
Date: Sun, 29 Dec 2019 08:05:44 +0000
Message-Id: <20191229080610.7597-6-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191229080610.7597-1-tiny.windzz@gmail.com>
References: <20191229080610.7597-1-tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191229_000623_238416_C1FB228C 
X-CRM114-Status: UNSURE (   9.99  )
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
 drivers/pwm/pwm-tegra.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/pwm/pwm-tegra.c b/drivers/pwm/pwm-tegra.c
index aa12fb3ed92e..7f77a93eb4b5 100644
--- a/drivers/pwm/pwm-tegra.c
+++ b/drivers/pwm/pwm-tegra.c
@@ -170,7 +170,6 @@ static const struct pwm_ops tegra_pwm_ops = {
 static int tegra_pwm_probe(struct platform_device *pdev)
 {
 	struct tegra_pwm_chip *pwm;
-	struct resource *r;
 	int ret;
 
 	pwm = devm_kzalloc(&pdev->dev, sizeof(*pwm), GFP_KERNEL);
@@ -180,8 +179,7 @@ static int tegra_pwm_probe(struct platform_device *pdev)
 	pwm->soc = of_device_get_match_data(&pdev->dev);
 	pwm->dev = &pdev->dev;
 
-	r = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	pwm->regs = devm_ioremap_resource(&pdev->dev, r);
+	pwm->regs = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(pwm->regs))
 		return PTR_ERR(pwm->regs);
 
-- 
2.17.1


