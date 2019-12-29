Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A759C12C1F8
	for <lists+linux-riscv@lfdr.de>; Sun, 29 Dec 2019 09:20:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:MIME-Version:
	Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1lmPaKxSSZ+I1fI6kH4nM+jOI/5GejnD0cSqURuaM4w=; b=L8aEwaAmkB7toP
	9DjbsnRzSvWtGk8JUIIiXtPgJknpcajLYfRQcX/FQO1q9oXRCJc+gzc4CM3uhci0H3g58gdtd8hB8
	cKbhXCJw7DzXYZMxH2zHMjvYI5EOupakwc/S1RCie1jdQ7gRcjEvN0dn9X/iSpMI70tcYtPQrDpKN
	TuRKuEZETZCQA9XOqSILe9lTNo8gT1GopMf+19lKWjp47+Kb+HDnb0Z7A/dbdBNlvMUXCkFNRLeOW
	SOudVgb9aCJlr5MdmKJ1EtNhJ+4jBhgK3bLBaNH+BB3ecIRq9gPO2iB1Pqv/h+A7gfSf0JQC178gt
	dNnLg2aqfDgcbNHCbdOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilTob-0000il-CA; Sun, 29 Dec 2019 08:20:45 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilTb4-0001BW-3V; Sun, 29 Dec 2019 08:06:48 +0000
Received: by mail-pg1-x544.google.com with SMTP id z124so16594579pgb.13;
 Sun, 29 Dec 2019 00:06:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=1lmPaKxSSZ+I1fI6kH4nM+jOI/5GejnD0cSqURuaM4w=;
 b=JTWO/fAYYxaETHqpnuKD9DLLTqjCv39Prq8QcLSmKa7TIkCT0aEFEUaPQ1BSJ4gxV6
 vquaHEipI6ZUYuP7CGkLUKsAU/hXO55Nuu23P3ug3YdpMS1wBx5we4jPWkkG1Lj8dE9q
 +TWIwJEqwWbCpBl+tnLhpMT2uPvnHPGc9+Hm/prxi0dEZ/9u1sG8QALPAQL8Da2U41M/
 pYowafpSIYnA2gnaajAJ0yw6Dlcq3JTBCzR8d3bUUdN4Eh6QZM4YvpvHitboPZg1gqRc
 T76q1c9AA6cvzEC1urlM1xY6BVX0ye6OUxu77VOC7sY9WrjVP61g087TepnuO/r0gW+1
 3s5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=1lmPaKxSSZ+I1fI6kH4nM+jOI/5GejnD0cSqURuaM4w=;
 b=KjpZnwiO9tIHVmrOrLx6/Vk0GBU7QVJ8BkbKvmzqioYxlbcGuuDVO2/7/XmAgoW0l3
 Qys/HQT+KdGIPvDsxXc+Tb4niMHh+kHBGDoc+lSbmBE3NsAGDFPA4XiFm+CR6CLrujNr
 zO1EwPDI2PF0w11Kj+oSHcbE1cNMMyWPelJH2wx9A6Pji3O2YEJlAynqPiW5fV54MSp4
 8wRb3lNwAgYOvc4dS7bvLYqFGqV7BFjjcyGbbKJUpVtH3iIj5rr2faQSHZ1qNE2Byl6u
 bqHpgeJkJ0MJLPUkQ1XpzcT0X1kC1kGGykiB5bbBz/+CQjC/UCpy6FuWt/XVnASqpWqD
 PFeg==
X-Gm-Message-State: APjAAAWbH5xssmjvv4bBNRjV6BkZceRtntWoMytET56i6o9oELI1TzEV
 e2Pcgten+uBGNGX4ghQfmb8=
X-Google-Smtp-Source: APXvYqzKZtQcfQAWux39vbt7X9KeBIFebdYzJJZStU3j6r/dp630EqJoFMufZdCAEbmgZ86mh155pQ==
X-Received: by 2002:a63:3f4f:: with SMTP id m76mr63383066pga.353.1577606804056; 
 Sun, 29 Dec 2019 00:06:44 -0800 (PST)
Received: from localhost ([2001:19f0:6001:12c8:5400:2ff:fe72:6403])
 by smtp.gmail.com with ESMTPSA id x21sm45574889pfn.164.2019.12.29.00.06.43
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 29 Dec 2019 00:06:43 -0800 (PST)
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
Subject: [PATCH 25/32] pwm: brcmstb: convert to devm_platform_ioremap_resource
Date: Sun, 29 Dec 2019 08:06:03 +0000
Message-Id: <20191229080610.7597-25-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191229080610.7597-1-tiny.windzz@gmail.com>
References: <20191229080610.7597-1-tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191229_000646_215677_9E5A5BA2 
X-CRM114-Status: UNSURE (   9.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
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
 drivers/pwm/pwm-brcmstb.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/pwm/pwm-brcmstb.c b/drivers/pwm/pwm-brcmstb.c
index fea612c45f20..8b66f9d2f589 100644
--- a/drivers/pwm/pwm-brcmstb.c
+++ b/drivers/pwm/pwm-brcmstb.c
@@ -234,7 +234,6 @@ MODULE_DEVICE_TABLE(of, brcmstb_pwm_of_match);
 static int brcmstb_pwm_probe(struct platform_device *pdev)
 {
 	struct brcmstb_pwm *p;
-	struct resource *res;
 	int ret;
 
 	p = devm_kzalloc(&pdev->dev, sizeof(*p), GFP_KERNEL);
@@ -262,8 +261,7 @@ static int brcmstb_pwm_probe(struct platform_device *pdev)
 	p->chip.base = -1;
 	p->chip.npwm = 2;
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	p->base = devm_ioremap_resource(&pdev->dev, res);
+	p->base = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(p->base)) {
 		ret = PTR_ERR(p->base);
 		goto out_clk;
-- 
2.17.1


