Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B3E412C206
	for <lists+linux-riscv@lfdr.de>; Sun, 29 Dec 2019 09:21:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:MIME-Version:
	Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ybrin7Bm43ghD4JohutI1MKUWkgtrAiHaUYHCnbL3nc=; b=bFlOBfYB+PHafR
	pxvlde2lahVt8vA84iVqMoOF18mJMKYvhFZH3L/BxfkS6d7kYXEYmbCfALSgaOHTcwN5yXdQHdB66
	S78x8UcwMS2WM5U6iam++t7z7aVTYmtL7tpqEvYgAsID8FDMisvf8paTvRZvROmw9PGAdYSQuOh5A
	oFCpa4gHg6wJRYvzunWbe4ehuM7xH5rltbDIm7tyl/GrxXTThrC+1kSuK+CUpvsE0lcBk3H9CCsdq
	rzmSgxaFpgeo/AgvmsFunNr1b4c2aK3tsk96p03nFwkGhdqI0JtAg8lhdWjwyRtSpbTqNdE61cmXn
	dgnRCHnTlEugICz38eGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilTp7-0001Ti-7O; Sun, 29 Dec 2019 08:21:17 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilTbA-0001Hn-5L; Sun, 29 Dec 2019 08:06:54 +0000
Received: by mail-pl1-x643.google.com with SMTP id x17so13507422pln.1;
 Sun, 29 Dec 2019 00:06:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=ybrin7Bm43ghD4JohutI1MKUWkgtrAiHaUYHCnbL3nc=;
 b=gn2BXtUaFi/tdX1Dv0Kl80fKucwAwOVC6rPzfhtY434YtZp11KCEm0WtOZfPRQDLKv
 4d/zGvTV1a3bsBkgx0+eByWAf393IXyEXrYsBuuC6EIod+6nICrvtppd1Txm2BD9sjeT
 02se04wl2qG9EdES/0qypQAZidiOyQl6iBgaF2ADkxvZKJuLbV4HupX0ULRQtMyoYzEZ
 Ul+63P/ZIyl3/TFMpqF9GrigjSTGBvHvMos20n9olUn0HLuRB2OK93c/YdCL3TCZuBlq
 v3cXN/dMPkC9gQfiWFyhUSpQMpgynoRRTuham8wPXHm8unCGGrdewhY+LWLWcTPpIwR6
 HviQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=ybrin7Bm43ghD4JohutI1MKUWkgtrAiHaUYHCnbL3nc=;
 b=NxH4Whytq7BSinonZZ6Sumk5gf0OQZ1Nb1x317994w0XMXH4E4XEcNsxfZ+PXrV36P
 cpU1oAy6HmDoFbmlKkXn+UinXBglmRReO3EO19Ckp6HSljhTUiD68BFuO7/ZGJanxh+0
 ma/R5oqDoP9mU/wKuc3ESPpXYs5ta8Yy72sc5wOuamCz1Vd+IVytw28MgbunM8bI9ZSb
 FcPnht0MgmoaDXi116JufUfv6NnKwko0KkMjUuj6vZWyBvpXU65IiLGUKHHpRy4nPG5R
 9w2/EZYXywOv92Zl3bXWWYgsFAAZpBTMYFggBuPK8dV4kqez87PDgF8SV2Sg6TCvSqRs
 tzWA==
X-Gm-Message-State: APjAAAXhFM4fr8xB2yDknw3XNuYo+wFTeRflU4kyQfSWNkhNX8jjM4L6
 voLNJDlDI1cH40nLTqMwZqs=
X-Google-Smtp-Source: APXvYqzgIbRZSeM6NnV/+qUyWrlWhkxW/F56U+gtXAWCgPTjTFIZU7kTdkeI0S+qki+zI2ZQYb7QnA==
X-Received: by 2002:a17:902:7484:: with SMTP id
 h4mr59426080pll.206.1577606810385; 
 Sun, 29 Dec 2019 00:06:50 -0800 (PST)
Received: from localhost ([2001:19f0:6001:12c8:5400:2ff:fe72:6403])
 by smtp.gmail.com with ESMTPSA id d129sm24524981pfd.115.2019.12.29.00.06.49
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 29 Dec 2019 00:06:49 -0800 (PST)
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
Subject: [PATCH 31/32] pwm: sifive: convert to devm_platform_ioremap_resource
Date: Sun, 29 Dec 2019 08:06:09 +0000
Message-Id: <20191229080610.7597-31-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191229080610.7597-1-tiny.windzz@gmail.com>
References: <20191229080610.7597-1-tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191229_000652_337027_D2CAFE80 
X-CRM114-Status: UNSURE (   9.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
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
 drivers/pwm/pwm-sifive.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/pwm/pwm-sifive.c b/drivers/pwm/pwm-sifive.c
index cc63f9baa481..cb9134d7197b 100644
--- a/drivers/pwm/pwm-sifive.c
+++ b/drivers/pwm/pwm-sifive.c
@@ -232,7 +232,6 @@ static int pwm_sifive_probe(struct platform_device *pdev)
 	struct device *dev = &pdev->dev;
 	struct pwm_sifive_ddata *ddata;
 	struct pwm_chip *chip;
-	struct resource *res;
 	int ret;
 
 	ddata = devm_kzalloc(dev, sizeof(*ddata), GFP_KERNEL);
@@ -248,8 +247,7 @@ static int pwm_sifive_probe(struct platform_device *pdev)
 	chip->base = -1;
 	chip->npwm = 4;
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	ddata->regs = devm_ioremap_resource(dev, res);
+	ddata->regs = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(ddata->regs))
 		return PTR_ERR(ddata->regs);
 
-- 
2.17.1


