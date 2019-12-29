Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3497212C1EB
	for <lists+linux-riscv@lfdr.de>; Sun, 29 Dec 2019 09:20:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:MIME-Version:
	Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rdRv1Yc/GVM5QzXo8OZ+uM0MpgAUogq7/gSzD+uMyQk=; b=AW6+Rc2Ic/bCax
	ew6mZAlNRcwYNrQcuq/Dgxuw1t2n8vPJwDlxr4h5+yj4Yyxsoba0oQoAc3DB9XkmMo0hHsqLn18nM
	VTzne246spIeW3th5H+ITm9sW4RRLxA1f5GlUc0wgyAp3I3cXew1ZrTxGcJtFzvlvGJ5BTxnlhqI8
	B2VI4+j+oSz/cAS6tNbuSmFLwLDN/rJrIaDRV57MhMRElAREMxAiDcEOfpDH0KTxlZcVJVivWw7k1
	Ujim5fvThjnycn0SLfw/wVWjquuc/ni49NfoWQhDqO7zCKIrgOachftyWcYGtOdYh0MK/r7TJS3cd
	+L8NERVREEaZhCHAloxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilTo9-0000Al-En; Sun, 29 Dec 2019 08:20:17 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilTaw-00016F-Mn; Sun, 29 Dec 2019 08:06:40 +0000
Received: by mail-pl1-x641.google.com with SMTP id s21so10760866plr.7;
 Sun, 29 Dec 2019 00:06:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=rdRv1Yc/GVM5QzXo8OZ+uM0MpgAUogq7/gSzD+uMyQk=;
 b=HyKxQ0X7zePFu/EcLQaScGOsVn6QhVTIYa4axjdO7X2n5g+utafq5uS0/MX8+zYjyG
 MoCJzgsGFNytjxvdiFfwyGGGsb2E/To4CYtFuSoG3EPTZNBhCfiGjBL9salgrEyixgaj
 /PgunUkKZTnBvZwzfFvxxVWPa/K0wT7EbrgxNve15SrZxcdO3T9Aa2zPVwn4qMT/aAtV
 qLdN6G72mIPGnCdV6XPylj4ozi5WcynmgNofyKjBpNYP90golg4KEfUfWgW6y86OixmO
 4oon+57lcAqqj3yrOwGYtUpZbyYQb2EP6wXBdME6i8UO7Hthb2MzW74A9o3yGH04lSnb
 OP8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=rdRv1Yc/GVM5QzXo8OZ+uM0MpgAUogq7/gSzD+uMyQk=;
 b=XUUkW2eJh/cnxaChN8CUckfVGLGFF6N43A0eOCorahl/XxCYm+5uY9NooDLtpmJTZd
 zsToaUrpE1Xs9+ySLTEcqf2y+XCBCABDlnvHId/IhKcAXcsU9B5v/REUXk+9xW6X57dR
 1A9VH6fqNfolumPTkbnvBnuYn7NT0ZsT/WrpeSUSGMPQmd1WsUh2Jfx4hFaPOIItCMPG
 t01mZ26sm70Uu35jmfS0VqWMmaZHVNd9OLqSOzo7dl8P1Xq8MB9y/S9DPg4UTI8pjxEh
 LPkNmLJ3Q1rhzLcnaOt+ASMsvHHhcp2Mr/jUeTc/PA9gGfzMWRunavL1TsKNzVPvLg4j
 7o+w==
X-Gm-Message-State: APjAAAXkC7dx1Og66rRVrcO6VuE/xxA8ovtDCWjf2oa2mt5bvZIO0T/Q
 6lRWsHaYYzG2w/5d7bI+RbA=
X-Google-Smtp-Source: APXvYqwJs62lt2yTRubCpXdDcYU2gAlWxVb3iezJaG6Z7PV6NuNVu5odFRAOXqN85oLpEmH60FRe6A==
X-Received: by 2002:a17:902:744b:: with SMTP id
 e11mr8626986plt.247.1577606796882; 
 Sun, 29 Dec 2019 00:06:36 -0800 (PST)
Received: from localhost ([2001:19f0:6001:12c8:5400:2ff:fe72:6403])
 by smtp.gmail.com with ESMTPSA id h6sm42817258pgq.61.2019.12.29.00.06.36
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 29 Dec 2019 00:06:36 -0800 (PST)
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
Subject: [PATCH 19/32] pwm: puv3: convert to devm_platform_ioremap_resource
Date: Sun, 29 Dec 2019 08:05:57 +0000
Message-Id: <20191229080610.7597-19-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191229080610.7597-1-tiny.windzz@gmail.com>
References: <20191229080610.7597-1-tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191229_000638_869406_16B63458 
X-CRM114-Status: GOOD (  10.06  )
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
 drivers/pwm/pwm-puv3.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/pwm/pwm-puv3.c b/drivers/pwm/pwm-puv3.c
index 9d0bd87a425e..2367dad7cf95 100644
--- a/drivers/pwm/pwm-puv3.c
+++ b/drivers/pwm/pwm-puv3.c
@@ -100,7 +100,6 @@ static const struct pwm_ops puv3_pwm_ops = {
 static int pwm_probe(struct platform_device *pdev)
 {
 	struct puv3_pwm_chip *puv3;
-	struct resource *r;
 	int ret;
 
 	puv3 = devm_kzalloc(&pdev->dev, sizeof(*puv3), GFP_KERNEL);
@@ -111,8 +110,7 @@ static int pwm_probe(struct platform_device *pdev)
 	if (IS_ERR(puv3->clk))
 		return PTR_ERR(puv3->clk);
 
-	r = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	puv3->base = devm_ioremap_resource(&pdev->dev, r);
+	puv3->base = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(puv3->base))
 		return PTR_ERR(puv3->base);
 
-- 
2.17.1


