Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B226F12C1B2
	for <lists+linux-riscv@lfdr.de>; Sun, 29 Dec 2019 09:18:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:MIME-Version:
	Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NuI6xPQivvyn80zM6z/Rk9fG3tjCood0gjQscJmLlfM=; b=bRDc3HjwaYSgmE
	OTCDM8un+wEcVdkBnEzC7gpDzsTCNO4dKgX15p9STcebdII8ggzXW/rPhNXXUT3rQxg3U8K52hZof
	oR+oYpTIvseB0/7a2Zsnrs3i1n0n2qfnUaPzdgVCzXyAloeS4tGsw8YCOV8Jh3LrXDSWELOov1KHI
	jHfqH6N8ot5BNSHOr4wgcjIiTd3Obm3FJBMAdjQLkGne05dN1kem6WBGeWhG8NNHtX5DOz3z5NkCj
	GEandpCQf0wR+IJz/I13c/iG7ucHYwCTove3FBl7cV2AixMJrBq3VPzMej3j5sN4CRy2en5nt/YQL
	yD5a1rWLCYqxZxAEwjLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilTlv-0004hO-RZ; Sun, 29 Dec 2019 08:17:59 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilTaf-0000pJ-3c; Sun, 29 Dec 2019 08:06:22 +0000
Received: by mail-pf1-x442.google.com with SMTP id i6so10032617pfc.1;
 Sun, 29 Dec 2019 00:06:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=NuI6xPQivvyn80zM6z/Rk9fG3tjCood0gjQscJmLlfM=;
 b=heQ17Q6cfEOQEkJ75H1kNJEoqMluIxqlV3F5LQzVzi5dnSw+2s4EnL2eVckJBiAZyz
 KwhQOqJumTLBSHStxyOQ91Y3S5HStCvrRJecQ5pUrghCCjl/2/UAhZ2C5hPuKnZCPoTR
 Ft1NwBE5PPl27QoQw3lZswOUbrf5sJ7NUTmUKV6khxM09XKc1LqIMm1eR2hnKrCCeijm
 n3TSOaMg0Hu50HPYPQHzAXTB98eI+1Ei90YhEBidRmqgbu5QG1qv1I8x3eYiWPHgbR06
 rNS51khjhaSOFdP0yiguflRMP54B77M8gZCiFjKhh4g72NT8kY8HWZYWzJTp0ygdiJmO
 FOkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=NuI6xPQivvyn80zM6z/Rk9fG3tjCood0gjQscJmLlfM=;
 b=MT2smf5i8rwyuuyJgnXWM0a9+ci/kFSmkldFOKwNRUgReDUQ7IV9q2f5L1c/M2E4K7
 3GodeK2U/fKxpFJT2i6cvq7lhKg9pXQtmSUh/lk/K3kK3SkOdIqJ4M8IIgtuiWx17J8v
 RexlpHTQorHGQo1dkWE32NnzmIWaL/FChvqyjQPTghnXrp1x+gkCIlPPl1yfKaZeuOqI
 Cfzo8TCmaDXRbVUxaC3eFdZsmdwMhA2pelwuNWBEOgyvE1sLT/RfrUrHkHevfR3R/S+E
 lZ1pJu2chvGO60fuDw6riYnhZIr7ObX5lT1zKRpwiWlja3EwocQT/Tu/5U8GaGkDHilF
 nElw==
X-Gm-Message-State: APjAAAWK//8SCuXYzh0jtVO6KdFktHH/B5p3TtjB/fJcR+/P4WIbRfAP
 ALUuaIgj7cmbIBWY7x4WPx8y3zhXaEQ=
X-Google-Smtp-Source: APXvYqxLM8XVaQBp/QfuS16/tUZBmfcc7TmcOv60xmo/5rDnPQvmCR5gXBlyK5U7O2hVs+djSv2BKA==
X-Received: by 2002:a62:7696:: with SMTP id
 r144mr21966475pfc.177.1577606780217; 
 Sun, 29 Dec 2019 00:06:20 -0800 (PST)
Received: from localhost ([2001:19f0:6001:12c8:5400:2ff:fe72:6403])
 by smtp.gmail.com with ESMTPSA id w123sm28402452pfb.167.2019.12.29.00.06.19
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 29 Dec 2019 00:06:19 -0800 (PST)
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
Subject: [PATCH 04/32] pwm: renesas-tpu: convert to
 devm_platform_ioremap_resource
Date: Sun, 29 Dec 2019 08:05:42 +0000
Message-Id: <20191229080610.7597-4-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191229080610.7597-1-tiny.windzz@gmail.com>
References: <20191229080610.7597-1-tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191229_000621_159024_E9F1F2B6 
X-CRM114-Status: GOOD (  10.02  )
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
 drivers/pwm/pwm-renesas-tpu.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/pwm/pwm-renesas-tpu.c b/drivers/pwm/pwm-renesas-tpu.c
index 4a855a21b782..9f4695cc8e72 100644
--- a/drivers/pwm/pwm-renesas-tpu.c
+++ b/drivers/pwm/pwm-renesas-tpu.c
@@ -383,7 +383,6 @@ static const struct pwm_ops tpu_pwm_ops = {
 static int tpu_probe(struct platform_device *pdev)
 {
 	struct tpu_device *tpu;
-	struct resource *res;
 	int ret;
 
 	tpu = devm_kzalloc(&pdev->dev, sizeof(*tpu), GFP_KERNEL);
@@ -394,8 +393,7 @@ static int tpu_probe(struct platform_device *pdev)
 	tpu->pdev = pdev;
 
 	/* Map memory, get clock and pin control. */
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	tpu->base = devm_ioremap_resource(&pdev->dev, res);
+	tpu->base = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(tpu->base))
 		return PTR_ERR(tpu->base);
 
-- 
2.17.1


