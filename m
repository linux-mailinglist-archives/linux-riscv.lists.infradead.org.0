Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 010DD12C1FE
	for <lists+linux-riscv@lfdr.de>; Sun, 29 Dec 2019 09:21:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:MIME-Version:
	Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ubisCHSwqc2s7xWWzDTAHcgrFyxa0/se1FgLzXqSzJU=; b=hLUAjh9l1tGq/E
	VkWJ9/LXmd9iKMW5zttKanS4oMVM2r8WHJUVpzFvulOug9tpWAjrswWcaZhCOptwoloqi2L1DWE5a
	CFFcOMDP3rcG/uzmetn2ifegIjdFSRKPCfh+r+hGI6kyQ83s20slWzuTcbcFA/veMwr5+AR0Z9V8i
	3wr0vLHKuKod5av6aI+gb8k2OhkQe73V0jYOgfWNP4aWIape/IzmKUpD+Oxo/UxlVGBc/Bw+iJrEH
	KaV4cxa7vOqCgHstcLoY65Kj3MMkr0JIXsU8GIzM10jOJA3cknOLbC9lNgahK8ddJXG3jYryqbhOf
	L0kNXqwH4t/knBTV2bEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilTop-00010k-4t; Sun, 29 Dec 2019 08:20:59 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilTb5-0001CS-6g; Sun, 29 Dec 2019 08:06:48 +0000
Received: by mail-pg1-x543.google.com with SMTP id x7so16607671pgl.11;
 Sun, 29 Dec 2019 00:06:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=ubisCHSwqc2s7xWWzDTAHcgrFyxa0/se1FgLzXqSzJU=;
 b=PKcxSuP+TIR6RR+D+3utUn4UDdebt73BcNOcvFjEXOWOtUQu8RnoetjVEuy/iZFDYn
 vt/3TgUmGBbAP+K+PitpTtb8Q7MAYoNV6DAi/fLCia9ZK6l+a2JMsR0iH9zlWebHPTKF
 AdhaRsImVy430lM/LsLIRsYC80w5uy0ExwCN7Dg9FjZViWyETX4OuLWuvPBkqm4wuWJF
 uPSeSiNAL9LHX01Rcfkj3Pkb+3Lkfa559mQdT/a9Cof2zrN4XNI9n7hq4yAjws9GZG9L
 pW15SKC+iTmp0vPJclmBLQF+Ays9MUsuArhvroKiAfSUM5JvvK3yTjdJLYoOVwzQPi5A
 e2NA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=ubisCHSwqc2s7xWWzDTAHcgrFyxa0/se1FgLzXqSzJU=;
 b=ZOyc3CBN3YalVkNqhNAOW5JsvbP9YV3CoEuWbu1tKBLgn0CriatJyzEc5Az0SlB93c
 H8I0knReacAbc8Ifacg9e3+a5/2DhqUFT9dbbk108xaashc2EAfwJqVAnjWoCioTi4j2
 JY4vQivbUvMOA7d+SqC49dlv/7LaNeyDpZTz1j9J/vZL9lFQ/yuzd6i2teyTPJg59gbr
 VWovspx17RSGjNT05s27vmX5qXA0SIQ4T+A7OL/prABnVDrCmBB9MkxwhST5Nr1H8hM0
 lopkxePD4gPifYY/mLkNSQ9JW9FamA6ijynPApEcu13o02JCOnsxfRbzDX2r0KO4Qztu
 4s4w==
X-Gm-Message-State: APjAAAVdbcYHydgd92kx/bDKSeVKjeqbKp7p3Lrq3poqUMHnnOsMj2lU
 nYdnmyNLb6lioLfuOLQGcdc=
X-Google-Smtp-Source: APXvYqztgO51q2M7dpEWvqnOl+OuEOll/cXfvrXPmRpn+n/ZTTV0hJfK8S/d9jsZVGZMHeU4/SfnIg==
X-Received: by 2002:a63:6787:: with SMTP id
 b129mr64849725pgc.103.1577606805089; 
 Sun, 29 Dec 2019 00:06:45 -0800 (PST)
Received: from localhost ([2001:19f0:6001:12c8:5400:2ff:fe72:6403])
 by smtp.gmail.com with ESMTPSA id r7sm47674721pfg.34.2019.12.29.00.06.44
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 29 Dec 2019 00:06:44 -0800 (PST)
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
Subject: [PATCH 26/32] pwm: mtk-disp: convert to devm_platform_ioremap_resource
Date: Sun, 29 Dec 2019 08:06:04 +0000
Message-Id: <20191229080610.7597-26-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191229080610.7597-1-tiny.windzz@gmail.com>
References: <20191229080610.7597-1-tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191229_000647_328256_3DD92814 
X-CRM114-Status: UNSURE (   9.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
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
 drivers/pwm/pwm-mtk-disp.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/pwm/pwm-mtk-disp.c b/drivers/pwm/pwm-mtk-disp.c
index 83b8be0209b7..87c6b4bc5d43 100644
--- a/drivers/pwm/pwm-mtk-disp.c
+++ b/drivers/pwm/pwm-mtk-disp.c
@@ -172,7 +172,6 @@ static const struct pwm_ops mtk_disp_pwm_ops = {
 static int mtk_disp_pwm_probe(struct platform_device *pdev)
 {
 	struct mtk_disp_pwm *mdp;
-	struct resource *r;
 	int ret;
 
 	mdp = devm_kzalloc(&pdev->dev, sizeof(*mdp), GFP_KERNEL);
@@ -181,8 +180,7 @@ static int mtk_disp_pwm_probe(struct platform_device *pdev)
 
 	mdp->data = of_device_get_match_data(&pdev->dev);
 
-	r = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	mdp->base = devm_ioremap_resource(&pdev->dev, r);
+	mdp->base = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(mdp->base))
 		return PTR_ERR(mdp->base);
 
-- 
2.17.1


