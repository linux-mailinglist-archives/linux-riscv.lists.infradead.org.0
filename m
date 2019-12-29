Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FA4212C1D6
	for <lists+linux-riscv@lfdr.de>; Sun, 29 Dec 2019 09:19:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:MIME-Version:
	Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tcDW0aXcY/G/MxwpM2Ci/sP4tj8rJe2hKMdbyakIxjI=; b=nzZtwS9lLXsWTw
	T0FCabGfRsCec1XHjC3vE4O99wz14mlBCCtwbaOIJB6ddwCElCl1FNgrwrgF/cqXwEb4dGdQTjGrV
	egsZbIqXOM+On8Z0hd6e5XBMiQn6hD/HGceXyg62/g/dNOBTFhIt/EG7cHo2dkCPvUf7I5Wr3e2hY
	FmvjrTpxFqBx5AlmlQLGgWUJB4gr+SiopseeVnUmO0Csxpwen6UB6RP50owI1LSXVYCz5RWw2Q3ky
	eZRO4iKY5H+vR3OpNYzov78jEVE0VKmlzOKcckqg0ERaj/DEMMtzoedN00GMd9rYUVx5dZSiKCpFX
	Vd7bLzDvLhI5VXUzrDKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilTnL-0006Lr-Sn; Sun, 29 Dec 2019 08:19:27 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilTap-00010p-NM; Sun, 29 Dec 2019 08:06:34 +0000
Received: by mail-pl1-x644.google.com with SMTP id s21so10760817plr.7;
 Sun, 29 Dec 2019 00:06:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=tcDW0aXcY/G/MxwpM2Ci/sP4tj8rJe2hKMdbyakIxjI=;
 b=lP3Ek33xUHHbth9me5q6mLUex5a8dg8mEKxuccWfGhU8cqf2fmgCzVh6pJqCkREdLv
 6wYlaQCiC6Typ9k3VpPn6E7s5k5FMmPfRzQPwYSyQH81f3hMDjlXels8X25fMpPzQDxv
 0BlYwydSo9J+R+tcFE1V5YApFPd3UmWDUOM/IYUfUV7frbaLlA6ANnZCy+u6eG9KQcY0
 NILqNQM8yVLHkLd95Cq4uekIt89NG7zj5jTZqLM/vfbhtX0xmNF2pUtLWWL7WU3lV/gH
 /NEHDpjcpXJbcyDCti6h/Iq99QrQpbQd5Vf0fuguebONJYSdQ99fOqu3ydK3N4POZ/7s
 6aFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=tcDW0aXcY/G/MxwpM2Ci/sP4tj8rJe2hKMdbyakIxjI=;
 b=mm0VknGPWpBRRKo89JiF24YfkPQuPELw0A6CErHplTWRbjTfnkm5+TQzu2d4zh0Q7z
 GQZruI2q3de00A2wPFiUhhTlAsYxjJts2G0Kyb2WUMFB/jB9Ps+gVrjtMigdiJtxIHTx
 TN90OW6D3fCpD/9QjIDIAR34hRKdSzGW6WO8n6X/SYd3RhTxGhKtrApnYrUG9n58rZzx
 fmMIban1AcrVkg4Ex4HWGdXv56YYDxQ2gIWWaKyl5+dVWupI59bsAvYNcKQOgVKitfuj
 bSzAf4gW7zL9y8ouXq5bjryWXShcu5z+61f42cgtH2yw/M6ZU0Eq7RCj5v2GOloN+Tu9
 NGBw==
X-Gm-Message-State: APjAAAX4+vkfHwBrHH0bVC55HXyuuv99lAlUnVb79i8wrgxtxWI7Dva2
 u6tU4Vcg9Qzo+ADbhy8R6lU=
X-Google-Smtp-Source: APXvYqwCNlBbQKUL/ySdfCHC6bpgHo4q8fuG0jQjaVQkALInNO0iEWsgrT9VDjuqiaUmhZN/qUezYA==
X-Received: by 2002:a17:90b:3011:: with SMTP id
 hg17mr37812404pjb.90.1577606790432; 
 Sun, 29 Dec 2019 00:06:30 -0800 (PST)
Received: from localhost ([2001:19f0:6001:12c8:5400:2ff:fe72:6403])
 by smtp.gmail.com with ESMTPSA id n7sm20169871pjq.8.2019.12.29.00.06.29
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 29 Dec 2019 00:06:29 -0800 (PST)
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
Subject: [PATCH 13/32] pwm: lpc32xx: convert to devm_platform_ioremap_resource
Date: Sun, 29 Dec 2019 08:05:51 +0000
Message-Id: <20191229080610.7597-13-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191229080610.7597-1-tiny.windzz@gmail.com>
References: <20191229080610.7597-1-tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191229_000631_989219_D2EA2410 
X-CRM114-Status: UNSURE (   9.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
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
 drivers/pwm/pwm-lpc32xx.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/pwm/pwm-lpc32xx.c b/drivers/pwm/pwm-lpc32xx.c
index 710d9a207d2b..6b4090436c06 100644
--- a/drivers/pwm/pwm-lpc32xx.c
+++ b/drivers/pwm/pwm-lpc32xx.c
@@ -98,7 +98,6 @@ static const struct pwm_ops lpc32xx_pwm_ops = {
 static int lpc32xx_pwm_probe(struct platform_device *pdev)
 {
 	struct lpc32xx_pwm_chip *lpc32xx;
-	struct resource *res;
 	int ret;
 	u32 val;
 
@@ -106,8 +105,7 @@ static int lpc32xx_pwm_probe(struct platform_device *pdev)
 	if (!lpc32xx)
 		return -ENOMEM;
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	lpc32xx->base = devm_ioremap_resource(&pdev->dev, res);
+	lpc32xx->base = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(lpc32xx->base))
 		return PTR_ERR(lpc32xx->base);
 
-- 
2.17.1


