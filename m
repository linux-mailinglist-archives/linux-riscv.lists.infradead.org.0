Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F383912C1F0
	for <lists+linux-riscv@lfdr.de>; Sun, 29 Dec 2019 09:20:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:MIME-Version:
	Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=svnvAUsqbEkFIoMGUER3OWtLIkClDeqzObpr+AXdZkw=; b=dK+00xzUEjsKBV
	dfiaMU03bAcbwZmQPWwOu2W0Rlgdn2xLjmF11cGsjGElUY2xhmUuBLg6zrXRxFuHuUo02Cwjdcuwr
	QLX7dAsP5AYBsKF/9zV/9tG2pyZ0pmQUoVC9hSi8xjdvGnJ5p7qcjZNIREdrLaVyTJ1uKIiZjtiiP
	AMzxjYvkuOSNGEgT0CjFAKEWY+ThTvNWTyyiH+OHEqUNhdhuuvL8vnPv5jg/MTyzWLL4NW/0qR/Zo
	hGtIKTWhSSQ0vqVSuPJOfSZeNNMcSNpJu+u8L78vz84VjTjzj5AWF3b4vX+bCYsvRtH5QfQwipohJ
	QkvlQVE5rEDqW29QxaiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilToK-0000N6-V3; Sun, 29 Dec 2019 08:20:28 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilTav-00015A-WB; Sun, 29 Dec 2019 08:06:40 +0000
Received: by mail-pf1-x443.google.com with SMTP id x185so16883319pfc.5;
 Sun, 29 Dec 2019 00:06:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=svnvAUsqbEkFIoMGUER3OWtLIkClDeqzObpr+AXdZkw=;
 b=t5ALQLYK9lE9EF3GpK75tsx7VA2i2BuOPjCLKDo5sSqg3YRHpO7DWBok2eiPKH6Zsk
 F+4ncCiS70Pt5DR9KMI0QU6VZBnbwwi54ooU6QkGvSSaxpX+mqIbp8bHsLQX3uO1pv0X
 OkADBds8TVGjQwtYTls5YZYAaoeItIYmXN6CCE3t5G5fzBfNxf0nS/2zdluXKGdlPK6j
 Bdq+W9BMNPDJUElctI6Djq4w6tylgT0rlMuDv1+5QKJ6+GZufn33f3/0Iwo0fpr91o9c
 TTv9uClGVSbigvShKuRQMEvORpLdA6AB3Z6pDDh7u7vttBTxVgOK07T8IyGMQqWlDtpx
 +wjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=svnvAUsqbEkFIoMGUER3OWtLIkClDeqzObpr+AXdZkw=;
 b=DUORA5AKIR+b0XQlr2Hh5us52QtF9SX3KwVGFffFTai0GAlqrPulLHfCukZ99gUv2G
 f1+A5I8iyb6W2jlm3zGBADxNbMqCnOuI7cysx36M5DAgBV9egr4KXSk4wR8/16VIoxet
 oK42ZLSWeEzVPedDBnyncNNGOTNjK6/mYMIWhywdWUUEbSNEW2xPbitXVntQXgdG525i
 IrkdD/Fsrif2RbGm7yuIqEU85jrxVtJj+NAxtXZrr2COvX/WcqKr/esSn81o1do1KSGn
 JNoBYFYqGYgFjWb5iwqSSh/dS/+MymyEk1g7IrFKasq0cRx2GoJ2+vV0RUceks67HtgR
 oufQ==
X-Gm-Message-State: APjAAAVCnzr9UTIgjxbv5yIA0BNcDqcbmEGzkjxooEFl1TtOysWSiUq6
 51Vw33JhN8IvsMPcLk3aarI=
X-Google-Smtp-Source: APXvYqzgqbn3DN4K9PetwsZFudgp9eD/v8wQEKuWIqkJk6/RoGS49GaXiPsLXIZoq9tCD6gTE1NeEA==
X-Received: by 2002:a62:1a09:: with SMTP id a9mr64684599pfa.64.1577606795644; 
 Sun, 29 Dec 2019 00:06:35 -0800 (PST)
Received: from localhost ([2001:19f0:6001:12c8:5400:2ff:fe72:6403])
 by smtp.gmail.com with ESMTPSA id h12sm31640473pfo.12.2019.12.29.00.06.35
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 29 Dec 2019 00:06:35 -0800 (PST)
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
Subject: [PATCH 18/32] pwm: tiehrpwm: convert to devm_platform_ioremap_resource
Date: Sun, 29 Dec 2019 08:05:56 +0000
Message-Id: <20191229080610.7597-18-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191229080610.7597-1-tiny.windzz@gmail.com>
References: <20191229080610.7597-1-tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191229_000638_191293_1C35D78B 
X-CRM114-Status: UNSURE (   9.63  )
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
 drivers/pwm/pwm-tiehrpwm.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/pwm/pwm-tiehrpwm.c b/drivers/pwm/pwm-tiehrpwm.c
index 7b4c770ce9d6..3a1313caa5fe 100644
--- a/drivers/pwm/pwm-tiehrpwm.c
+++ b/drivers/pwm/pwm-tiehrpwm.c
@@ -421,7 +421,6 @@ static int ehrpwm_pwm_probe(struct platform_device *pdev)
 {
 	struct device_node *np = pdev->dev.of_node;
 	struct ehrpwm_pwm_chip *pc;
-	struct resource *r;
 	struct clk *clk;
 	int ret;
 
@@ -455,8 +454,7 @@ static int ehrpwm_pwm_probe(struct platform_device *pdev)
 	pc->chip.base = -1;
 	pc->chip.npwm = NUM_PWM_CHANNEL;
 
-	r = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	pc->mmio_base = devm_ioremap_resource(&pdev->dev, r);
+	pc->mmio_base = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(pc->mmio_base))
 		return PTR_ERR(pc->mmio_base);
 
-- 
2.17.1


