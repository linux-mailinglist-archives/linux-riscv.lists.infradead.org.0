Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BDC312C1DD
	for <lists+linux-riscv@lfdr.de>; Sun, 29 Dec 2019 09:19:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:MIME-Version:
	Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JOrbhl6IL9Xtkt4/H1upFbUIrsfJCt9ywKKgbdx1WNA=; b=JTO7YnqM3uSiGX
	Et9ikxF3LeLb0xF/P80/2Oya+Gb9WWIZxZhFcRiPr2EtS1rmwc5zNosKK6BbJ6KJ5w7gC4Yh7G/g6
	Mey5jBDBi5Cn1JkN4i7l9vGdrQN3oZL97VEK144MFP98T4xDI2upvvuOLV8ik9Za+dYeF8LO4i7nb
	4qWx1uTSN9ju8sBdnOZbMJItDLudF7/FXFnFroea5cvSPwBKl0NpKb35HNcdUCevDDOHaOKg/C3E5
	/IlUvJ5EOfAdzyIVyYE3xfLz0Ibl9cGNCrJJcgZ7Y//ngHo77gXwAaR7Fq3sV4w/eq1/0yONzMxdF
	jySk/3inoi73b32u87pw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilTnb-0006g7-Ji; Sun, 29 Dec 2019 08:19:43 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilTan-0000z5-SA; Sun, 29 Dec 2019 08:06:31 +0000
Received: by mail-pg1-x541.google.com with SMTP id r11so16639375pgf.1;
 Sun, 29 Dec 2019 00:06:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=JOrbhl6IL9Xtkt4/H1upFbUIrsfJCt9ywKKgbdx1WNA=;
 b=BxA3Ez5YIasVGvi3UGfkdAUd//NlNCFLqRQVB2ADrdQ6RDYwTGf63G6m1UEUOfCyy1
 aU5A65CSSNzUUgglcwAt0sHmc8zFkJbfszp9ozgsNJBGQ7XH3kFbdFsx4lTz4Wd9i37D
 3a7WSxYIhW0PPXWwiZjUsnZYPIB8Kgghe7GhR3IEufB4lfv5UkDoGiiE0QaI7DrA3Uef
 twewN+wG5QU9mPjQSBOj11zMOnUM6QEpOHXInLeLuyhVRr9wSinry/1czxgiqQSwRfLn
 yYgGZshaAjsHfEkWDjd1gjIHLiG+WYAIYWTRPylCeWKygsHab6d9E2QmsRe4j9Ja48YX
 HHqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=JOrbhl6IL9Xtkt4/H1upFbUIrsfJCt9ywKKgbdx1WNA=;
 b=R0VE8adZakWUcekGsn2d1A7B5AOK++H2vU6FIGce1m7d2LkCg8UUKiGrTKSUvd/SgJ
 gmfBG74OsekLFAh7ERZ5hL8OCiyafio2tTDXlqv8E0yjBGUVT0SjTSFRnRJCZU2Iku2y
 jL4fXngRCy+QrQG5Ydp6wkKiP47p9lDVLyooAMojRQRCBk8nCEXaNweRCnAJZISU8s9G
 Cbj3pLcPgxRLibtBRYjW3y7LpcqBuDXxu/JUG9NymUEj5V2Y53sj+LiTwgQgCyYGiK0m
 2fKUS3Fpz2qvVHPsU7gL3dRl4bHtQsda5K+/T+BrkDx7e/yKA0azd+tepp9g9ZpJLhul
 i2hQ==
X-Gm-Message-State: APjAAAWt7FhLjcHh1QXUEQsxniH2TSdjw/l4Y++Eppus/n+XGIh3ZYWd
 wd75FqvXUQiuPgiIn3VD9uM=
X-Google-Smtp-Source: APXvYqydhPEDBMxSQE0/HZ63X75/QdJ5GVtnhDA3lmRMQohFFvjGMaMMOQSxxNsnPfc3KGxBTNkC7g==
X-Received: by 2002:a63:1756:: with SMTP id 22mr65995274pgx.109.1577606788653; 
 Sun, 29 Dec 2019 00:06:28 -0800 (PST)
Received: from localhost ([2001:19f0:6001:12c8:5400:2ff:fe72:6403])
 by smtp.gmail.com with ESMTPSA id j14sm42485645pgs.57.2019.12.29.00.06.28
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 29 Dec 2019 00:06:28 -0800 (PST)
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
Subject: [PATCH 12/32] pwm: bcm-kona: convert to devm_platform_ioremap_resource
Date: Sun, 29 Dec 2019 08:05:50 +0000
Message-Id: <20191229080610.7597-12-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191229080610.7597-1-tiny.windzz@gmail.com>
References: <20191229080610.7597-1-tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191229_000629_967787_71AABD73 
X-CRM114-Status: GOOD (  10.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
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
 drivers/pwm/pwm-bcm-kona.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/pwm/pwm-bcm-kona.c b/drivers/pwm/pwm-bcm-kona.c
index 81da91df2529..aa451987733b 100644
--- a/drivers/pwm/pwm-bcm-kona.c
+++ b/drivers/pwm/pwm-bcm-kona.c
@@ -259,7 +259,6 @@ static const struct pwm_ops kona_pwm_ops = {
 static int kona_pwmc_probe(struct platform_device *pdev)
 {
 	struct kona_pwmc *kp;
-	struct resource *res;
 	unsigned int chan;
 	unsigned int value = 0;
 	int ret = 0;
@@ -277,8 +276,7 @@ static int kona_pwmc_probe(struct platform_device *pdev)
 	kp->chip.of_xlate = of_pwm_xlate_with_flags;
 	kp->chip.of_pwm_n_cells = 3;
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	kp->base = devm_ioremap_resource(&pdev->dev, res);
+	kp->base = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(kp->base))
 		return PTR_ERR(kp->base);
 
-- 
2.17.1


