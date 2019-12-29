Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EB9312C1FD
	for <lists+linux-riscv@lfdr.de>; Sun, 29 Dec 2019 09:21:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:MIME-Version:
	Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zcHD+rWT+BbboeyvNLj2n3ooAcJQzfyFO4UCzDGkuhw=; b=jP3wvtOq1MNqL2
	D5cdr6x13HHJnYW2xIp8h61DRXSHt7G7JmevCWmXmhI1pyDoNxsJxZMpvYdOYUQhKnesyd/wQj4TN
	bN+faaPRsw+fe8kq2gHfGDSvMpYCtMWyRdj5jlar0R5dk38kWUTnU0YIIrILDTfUtO0HDnvtCmyw2
	WGDn4GapJO+kFNaMRV+8D8qLjIERwUVxILz9zHlKRkBN1Jgid26GUKwpm74bXmeOaxCXGp8CEK+6L
	ukd9KBqmjSvFFXZbjoq62tWwG6hp5rAQhbx3l+At2UQL98JjIpFJwBJmWaIMBz0SGiLr8jgrTwpFY
	U6mKsC0yjyhdx8MkOmcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilTol-0000wQ-2n; Sun, 29 Dec 2019 08:20:55 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilTb5-0001Dm-TR; Sun, 29 Dec 2019 08:06:49 +0000
Received: by mail-pf1-x443.google.com with SMTP id q8so16881822pfh.7;
 Sun, 29 Dec 2019 00:06:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=zcHD+rWT+BbboeyvNLj2n3ooAcJQzfyFO4UCzDGkuhw=;
 b=E/JzGOtpfinHn+r6Nqt4BI5pFks+bjbqVron4JoRxP94w0UIFIVAEzNAykvpZoDTHG
 YdpP4wRAK6M/FQIdpYYxzBLZOmoog2O1Y40cOyLcpnDo/2O9fxR4NFzOaZ1x0EmaujHB
 Vov8M5Z25EwOhuPEoRoEFu/dM5gTDeGkLvqCDdPZaObFIo5vY7JIpHeZfiIFIeDhprQE
 u04G5AatFvvQ7aoNiA0/W7lgxLSTfHxFlafECN0owOb2uTbRi1abpNLb+TGTQxNmryPh
 gpocdwGzgwwZYgjXfmEJf96i9Gz2VuYiig3Dzl2RXfsSMky3WavexL5Kr3R4FWeDNl3p
 DeBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=zcHD+rWT+BbboeyvNLj2n3ooAcJQzfyFO4UCzDGkuhw=;
 b=PY3x46GF+VgzfNawl/5NXPNQ/A6X1vkN1stJ8TJ6rxrd0bTiMQvx+RhiWCd6JJ9cUV
 hXope451nSDAgC53VRXNtKMkXKzGVwo+uOqij5iJ6GFufO/rsQrunatSHg+xTqQNX+h7
 Y2McX1vzaiMl8pc2OSzfwyFHUP5rBht7vdm+J7s0cwxckK6YeeGuFy4Zyi70UZnhBnzW
 81bhRlII6v2hnMrnqPjeA2mJ5guKM+djy5wH/aklRR6Bc0Y9ZMplVXQLtyG0dv+3hNSh
 zoAmEZ6COCoBWlH4tvuqyu45yJq6xkKsw8yhsDZF2/gOmHvtHEo1tcaYqLQz+YCxVKE5
 OAWQ==
X-Gm-Message-State: APjAAAXTmOmL8eEN3f2ZxWBCicx1GCIQyPXJruViUNCdmEEKBDuVUKVh
 F1s2NAlF2npwbiiTvGN8HqU=
X-Google-Smtp-Source: APXvYqwWymCsuMsS6doL78LFT042zKrJjX+UYK0FXE7pm0oZc+RfEaCYhPRMzd55UCYO0aSn6F1J+A==
X-Received: by 2002:a63:134e:: with SMTP id 14mr65912691pgt.115.1577606806183; 
 Sun, 29 Dec 2019 00:06:46 -0800 (PST)
Received: from localhost ([2001:19f0:6001:12c8:5400:2ff:fe72:6403])
 by smtp.gmail.com with ESMTPSA id a9sm19507006pfn.38.2019.12.29.00.06.45
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 29 Dec 2019 00:06:45 -0800 (PST)
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
Subject: [PATCH 27/32] pwm: clps711x: convert to devm_platform_ioremap_resource
Date: Sun, 29 Dec 2019 08:06:05 +0000
Message-Id: <20191229080610.7597-27-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191229080610.7597-1-tiny.windzz@gmail.com>
References: <20191229080610.7597-1-tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191229_000648_016421_15BA066B 
X-CRM114-Status: UNSURE (   9.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
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
 drivers/pwm/pwm-clps711x.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/pwm/pwm-clps711x.c b/drivers/pwm/pwm-clps711x.c
index 924d39a797cf..e69a5877cec6 100644
--- a/drivers/pwm/pwm-clps711x.c
+++ b/drivers/pwm/pwm-clps711x.c
@@ -113,14 +113,12 @@ static struct pwm_device *clps711x_pwm_xlate(struct pwm_chip *chip,
 static int clps711x_pwm_probe(struct platform_device *pdev)
 {
 	struct clps711x_chip *priv;
-	struct resource *res;
 
 	priv = devm_kzalloc(&pdev->dev, sizeof(*priv), GFP_KERNEL);
 	if (!priv)
 		return -ENOMEM;
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	priv->pmpcon = devm_ioremap_resource(&pdev->dev, res);
+	priv->pmpcon = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(priv->pmpcon))
 		return PTR_ERR(priv->pmpcon);
 
-- 
2.17.1


