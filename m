Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4260F12C1E2
	for <lists+linux-riscv@lfdr.de>; Sun, 29 Dec 2019 09:19:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:MIME-Version:
	Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ct3vgdS+UwOkSQiRdRBo4SJ7PUFYHZ+yjrMr0Puh11g=; b=sgSRQ8iUY3PI2P
	j9jjKFs3WEpRAIpaOb+YQEoWlHMFkhULh+OkoA+EQYvqt7YCCxK0FnFG8vvCEEhzFWNIrkWZt4hWa
	jdA8YLVKXvLNaiYO1sRZ9tVFqjVNxBJIqM15NcX6b9VaSgg+Q8SdnHSDJZOxUuybhiBZa2n7rKHY9
	73Q7FUlsEn244+ZRg0m1fslvgNQm0JcTvv935RUTRHDpJPWhBYK7bBtqCMNTkn046Jut1BOxMgaMQ
	U8BV4jjoH4G6l7hCLI38ovbPer3sm8ueut0xZSOFKRqxdQFoYsurKh5Q0ioa+jIjh+AtzpMR5Jbxy
	on2Jpn/G2Oh69fjErriQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilTnl-0006ro-7n; Sun, 29 Dec 2019 08:19:53 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilTas-00012M-7w; Sun, 29 Dec 2019 08:06:36 +0000
Received: by mail-pf1-x442.google.com with SMTP id x184so16889010pfb.3;
 Sun, 29 Dec 2019 00:06:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Ct3vgdS+UwOkSQiRdRBo4SJ7PUFYHZ+yjrMr0Puh11g=;
 b=ghyzqYvQARSfUYq5JSG2z28dc1azfEBMCfJFYqJnfOIxzXImq3oKdazr/DIyiK8dQo
 3qKoSyld1xuazbHlUQFIXHN/PWNOK21FoSxERfZ8HuBT2s3Omh87MYC8coVK8TRkkpT5
 ST4X0ALU+bDl6iEESe7BXYMFvjdbhvMvEurE7m/sGTwjjiYXqjTJIw0Jgcrqeub4Dua9
 EQaaDp4fxFs+93L1xxvPI3zrtTy5FxslMYx7y3DXrD+3SiEWebHOVtWcYZ7oPMTL+4V5
 a4BJudvlLECV9hf8qbedssmCdQmoxWnT0zSzHfTshtBY1vxk0awKbs7cGMlb9eQf88OX
 F+nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Ct3vgdS+UwOkSQiRdRBo4SJ7PUFYHZ+yjrMr0Puh11g=;
 b=kd/7Cgtdwcc/1Sn/fjbCheLBQW0clhefNGuHPFvd3iiXB7EXXF/s51DBDGYIuAbvi6
 dKGPNChwPU/XWVGLGsvDfSVtWj7O/YUJB0wsRzJ7+dUe6k9nHoP4dCB2y35Itxgikiyj
 bYHZ8mNuHXwuSAZsKUr/VJQoIKQgU+yDZoU2Ec6BmLJ1bFDp7lx8f/6p+LpcdAOcNsjb
 LMOqdhj76iUGqFhG7CjgsLun0dnyIJH02v+XGJCwsv+85P51nvrdWBH2gPiPQq5yfiBl
 BPSRrfBegCQmp854FSKtiXDzZBVI6dZYW46n3EuJ8WnYajnbRh/c6NWSglcfI1cvlBYF
 7BUg==
X-Gm-Message-State: APjAAAW37OcYJ1FsHLLl/MumVuqHTLCuYaqRin2s7ede/qHQfYupFI1W
 jylgJxiYKWZ1Co2HBEebJsI=
X-Google-Smtp-Source: APXvYqzSxw9K1ScWg6hnSPiOSt1jE5L5RXiPnGdbNgCdaOrvDG2u8O/0g4Yh8BqE+c8rgkeMZLKvlQ==
X-Received: by 2002:a63:2fc4:: with SMTP id v187mr63795754pgv.55.1577606792475; 
 Sun, 29 Dec 2019 00:06:32 -0800 (PST)
Received: from localhost ([2001:19f0:6001:12c8:5400:2ff:fe72:6403])
 by smtp.gmail.com with ESMTPSA id l2sm20053079pjt.31.2019.12.29.00.06.31
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 29 Dec 2019 00:06:32 -0800 (PST)
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
Subject: [PATCH 15/32] pwm: rockchip: convert to devm_platform_ioremap_resource
Date: Sun, 29 Dec 2019 08:05:53 +0000
Message-Id: <20191229080610.7597-15-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191229080610.7597-1-tiny.windzz@gmail.com>
References: <20191229080610.7597-1-tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191229_000634_343991_8C697DE7 
X-CRM114-Status: UNSURE (   9.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
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
 drivers/pwm/pwm-rockchip.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/pwm/pwm-rockchip.c b/drivers/pwm/pwm-rockchip.c
index 73352e6fbccb..f0549b82338d 100644
--- a/drivers/pwm/pwm-rockchip.c
+++ b/drivers/pwm/pwm-rockchip.c
@@ -292,7 +292,6 @@ static int rockchip_pwm_probe(struct platform_device *pdev)
 {
 	const struct of_device_id *id;
 	struct rockchip_pwm_chip *pc;
-	struct resource *r;
 	int ret, count;
 
 	id = of_match_device(rockchip_pwm_dt_ids, &pdev->dev);
@@ -303,8 +302,7 @@ static int rockchip_pwm_probe(struct platform_device *pdev)
 	if (!pc)
 		return -ENOMEM;
 
-	r = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	pc->base = devm_ioremap_resource(&pdev->dev, r);
+	pc->base = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(pc->base))
 		return PTR_ERR(pc->base);
 
-- 
2.17.1


