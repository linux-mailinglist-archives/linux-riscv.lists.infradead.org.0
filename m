Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E895E12C1E8
	for <lists+linux-riscv@lfdr.de>; Sun, 29 Dec 2019 09:20:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:MIME-Version:
	Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VEfrDAiEU6puBWVOShtptTtgoJrswidYAzst42qjsaY=; b=jc7osClFRPMYHp
	6DlJq3cVRnW3KYbudtxgWkcJ9ohGqG85f68P8P245dcfOhRCOyMjPqvOYQs3okYj97M5Ppnwke+11
	Sn7LfjdMIxfCz17ZxxyWtmwyjyIK/zBkgFKdm+Vlrbh3VkeNAOoL93TNIldtG7BgQdRzQlgs0+dFd
	R/zcBPHMb9RNHjws+TrsrRppvRhFe0GmUJnqU1VmJbvvYcZ9y/GYiSSm/wIqzV1jkr2QZ0A9vdVZU
	CqD4uPRKp6HEAgadoR4f11fqLVEdR+fmURuekHo+NeGPzr6qDBNnXe38xAAz4ykTSp8pbS5mkLqae
	4MQ0iJ2eujsvagAFGHPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilTo4-00079t-77; Sun, 29 Dec 2019 08:20:12 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilTas-00011Z-2e; Sun, 29 Dec 2019 08:06:36 +0000
Received: by mail-pj1-x1044.google.com with SMTP id t101so6880934pjb.4;
 Sun, 29 Dec 2019 00:06:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=VEfrDAiEU6puBWVOShtptTtgoJrswidYAzst42qjsaY=;
 b=Qsr3Kkvd2v3PEQksW5trlFa57gOt31oanuDX8xjzJnSkDTsvRTdAhKl4OfBzNezOMv
 Ow9aPhfGSSomPOY0Jup87/Ma/c6mHDM7yC4BSoWseZ2UiyDALgLiR0tiDw3SirV4R0W/
 jBu21GGrggpBKnKRm+d/8oBUzIF4HxYHoceWxB29sW5S/XVLu25/Zhclz2mRCBIdVNOs
 u0vnDLIeftmYJaO5I+itHESPbjGZO+WpTgXO2jlMdp+LOwPs8xclGL9UWelx7pgK/huh
 z3OZuXuW43OrJnf1lVt4h6YMJIT0IcyLc3s9FkpUhkGSRoLPYRaTka6LI91scoTk4PVE
 Dmuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=VEfrDAiEU6puBWVOShtptTtgoJrswidYAzst42qjsaY=;
 b=h6cNCVPU3Ieoxf2Ob8fZpQHqLQtUYIuwMYE9/QBbod/DDWUKOXqE7ybdzOWZ6rMGWb
 fGaAJcqmgJNRW5eG8q1JJYXQPWYFPkS6cEpZsXgrn+tAnQl8AhD/CE5vYrBeraGmpPHi
 EKXYbQebeHC1SosWB4Abl7Ba0Qr7oG/M8A7jTnCkgQoxgXxd2Ng5u+Qcp9ZEnOuGe/sG
 Pd4HN6GiQze4pzN9cETuh1iWr/JodqEeOEqupcwwWE+o6EaeWDhzGcYmQuxA5bSZnFwK
 4xkRcs0wZ2NC2fZoArb8pX97LUW9Q1HZNceyowi9WoOLer4+nYrqbrRLCnvZjj4prlEo
 I2cQ==
X-Gm-Message-State: APjAAAVeUTWA9/qKV6Pg0ngc5Vb4s5nipVr8g9i3jZQ+bmYUZ4x1FEDF
 uVKIvRes/XA1IEzO9dr6zNg=
X-Google-Smtp-Source: APXvYqyJegZ4rhA8xxafUEqt+eJi/AxqJgGXb+jAX6THH+3qtTSC1H1OzKTzXAkU221EAUpiMT0Rcw==
X-Received: by 2002:a17:902:6b8a:: with SMTP id
 p10mr47058988plk.47.1577606791415; 
 Sun, 29 Dec 2019 00:06:31 -0800 (PST)
Received: from localhost ([2001:19f0:6001:12c8:5400:2ff:fe72:6403])
 by smtp.gmail.com with ESMTPSA id g9sm47637627pfm.150.2019.12.29.00.06.30
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 29 Dec 2019 00:06:31 -0800 (PST)
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
Subject: [PATCH 14/32] pwm: meson: convert to devm_platform_ioremap_resource
Date: Sun, 29 Dec 2019 08:05:52 +0000
Message-Id: <20191229080610.7597-14-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191229080610.7597-1-tiny.windzz@gmail.com>
References: <20191229080610.7597-1-tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191229_000634_243579_51AA1079 
X-CRM114-Status: UNSURE (   9.31  )
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
 drivers/pwm/pwm-meson.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/pwm/pwm-meson.c b/drivers/pwm/pwm-meson.c
index 6245bbdb6e6c..62fc79092038 100644
--- a/drivers/pwm/pwm-meson.c
+++ b/drivers/pwm/pwm-meson.c
@@ -537,15 +537,13 @@ static int meson_pwm_init_channels(struct meson_pwm *meson)
 static int meson_pwm_probe(struct platform_device *pdev)
 {
 	struct meson_pwm *meson;
-	struct resource *regs;
 	int err;
 
 	meson = devm_kzalloc(&pdev->dev, sizeof(*meson), GFP_KERNEL);
 	if (!meson)
 		return -ENOMEM;
 
-	regs = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	meson->base = devm_ioremap_resource(&pdev->dev, regs);
+	meson->base = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(meson->base))
 		return PTR_ERR(meson->base);
 
-- 
2.17.1


