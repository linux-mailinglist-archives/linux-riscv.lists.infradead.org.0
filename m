Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0246212C204
	for <lists+linux-riscv@lfdr.de>; Sun, 29 Dec 2019 09:21:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:MIME-Version:
	Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CJr4HqPkZ3pPTSYRcWOsbHXVxGnqGh2WnBscj80axwQ=; b=M7dCGDJdPG6Mn5
	euB5tWX4htixpxiiuOo1FpL3v88PyVZC1siRyv+d7PwQojL1Vp8qBV4uSCk162C/zPf4U4D7KTCLa
	GM9Ctn+N7VmOI7u89ZMKVw6HIdbRnenDYxeAbK+XQQncXiQwpBIL1oC5hCk8NyCdIoM0zGAk7UCXd
	aZb3+sX2RAiXKflrMoPwJM7k3iTNueh6G0VLYL4+BjkQqg2utBvVavPJ0kskbzI3Q/Bk0Joegb004
	mNqjl6a81aUHKNyH63SA5hMd2VrzxJ9JRrZvXMYe8LEZm25XMufZmH/EwCAkHV2IcivyB34G+/Gn5
	v/Mb7ei2PyXvapFyEocA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilTp1-0001LD-Ut; Sun, 29 Dec 2019 08:21:11 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilTb8-0001Gh-Ad; Sun, 29 Dec 2019 08:06:52 +0000
Received: by mail-pl1-x642.google.com with SMTP id a6so12765826plm.3;
 Sun, 29 Dec 2019 00:06:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=CJr4HqPkZ3pPTSYRcWOsbHXVxGnqGh2WnBscj80axwQ=;
 b=Bssl8EsNZrOgZVwJDooD7AhI5/dzQdq+ZTBUU2dvaMZSgYTCPJU3Yz/3DLrUeaKs+G
 +6FliSf51Fd2rj9rX9QwjoIItp4EfY7B3nNLhzaz+KmaT6TwRRPzv5xkeMHNkUhF/RAw
 To0N2ay9kdtzm3eGOklyBFbKtIHYz4pox4UduOryF4FiXnNUjORl27obUdurhX4oF6sf
 7Q6JnRHAdm9g4PdcQQR4yjSLoJOxTQuCvjPo6ofwb6ykDGj+5X+H5OXKv5j0zAehUEYd
 WaGLC2L4XSGjjLBLj9C75l10/Jk6/z+MDRhSUiQMn54Lg8Duz4tsplT4Ppk8xHjFyLFX
 tIYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=CJr4HqPkZ3pPTSYRcWOsbHXVxGnqGh2WnBscj80axwQ=;
 b=U0LC7F4hWFZXsQhk/dzeEWT2hzYqEFs2sqKyu5q29qfYriPMPh9TmykUPCww7nYPUp
 LeU25s+fKIWBxKP4+XIXO6iTpZzyU5ZcV5r33c2MHHBBxmII+a5+0/OUy0wRA0Qdo340
 E/lcoA6Z6chlsejLYO6fAGDSc4vAWU0Gku/fRvb3hfkhnkoI54wMDRez+fZwd5mQs2zo
 Pc6Idv80eIj5ICqjwJgJ3aZrtzNOSG3N28GLnMzRGEE2Dnhy2uhLH0uHsUsC8ZyIPwwM
 UCJtxr8uu98bGerHD+buPFN0t7Efhm93m+SgbVhffcp1k77kMDcmEMRp7wl+uHYi4x8I
 V74g==
X-Gm-Message-State: APjAAAVYpPzlq3P3OwbCshcoYz1BWJCwxeeARhAco04lBOFaq37nxqSg
 Xa7lqZ/VDW4G5yTrqUPyryE=
X-Google-Smtp-Source: APXvYqwAyE3gieezb7OcD6zcyUg+EE5n2ZTOPezezbkBULlCQmyLEcIJI5oqgk7T4KhbBdJCruCC+w==
X-Received: by 2002:a17:90a:930f:: with SMTP id
 p15mr38599124pjo.2.1577606809372; 
 Sun, 29 Dec 2019 00:06:49 -0800 (PST)
Received: from localhost ([2001:19f0:6001:12c8:5400:2ff:fe72:6403])
 by smtp.gmail.com with ESMTPSA id s1sm42817742pgv.87.2019.12.29.00.06.48
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 29 Dec 2019 00:06:48 -0800 (PST)
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
Subject: [PATCH 30/32] pwm: hibvt: do some cleanup
Date: Sun, 29 Dec 2019 08:06:08 +0000
Message-Id: <20191229080610.7597-30-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191229080610.7597-1-tiny.windzz@gmail.com>
References: <20191229080610.7597-1-tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191229_000650_406908_007D9C79 
X-CRM114-Status: GOOD (  10.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
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
'i' and 'ret' are variables of the same type and there is no
need to use two lines.

Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
---
 drivers/pwm/pwm-hibvt.c | 7 ++-----
 1 file changed, 2 insertions(+), 5 deletions(-)

diff --git a/drivers/pwm/pwm-hibvt.c b/drivers/pwm/pwm-hibvt.c
index ad205fdad372..a1900d0a872e 100644
--- a/drivers/pwm/pwm-hibvt.c
+++ b/drivers/pwm/pwm-hibvt.c
@@ -190,9 +190,7 @@ static int hibvt_pwm_probe(struct platform_device *pdev)
 	const struct hibvt_pwm_soc *soc =
 				of_device_get_match_data(&pdev->dev);
 	struct hibvt_pwm_chip *pwm_chip;
-	struct resource *res;
-	int ret;
-	int i;
+	int ret, i;
 
 	pwm_chip = devm_kzalloc(&pdev->dev, sizeof(*pwm_chip), GFP_KERNEL);
 	if (pwm_chip == NULL)
@@ -213,8 +211,7 @@ static int hibvt_pwm_probe(struct platform_device *pdev)
 	pwm_chip->chip.of_pwm_n_cells = 3;
 	pwm_chip->soc = soc;
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	pwm_chip->base = devm_ioremap_resource(&pdev->dev, res);
+	pwm_chip->base = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(pwm_chip->base))
 		return PTR_ERR(pwm_chip->base);
 
-- 
2.17.1


