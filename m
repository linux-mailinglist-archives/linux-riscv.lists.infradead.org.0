Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD16012C1F4
	for <lists+linux-riscv@lfdr.de>; Sun, 29 Dec 2019 09:20:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:MIME-Version:
	Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=upleNgTFfAza3FZg7/9VQrzMx7En/pvAOWEfdB18Fmk=; b=eqQzXg+nKOUFGE
	d+pQJTUQnAOLkfaMkWip7qLMFdt1eaVWHdoLMnHYZbniJhSGPLKE++lkQ3lGoSuIH/NuBZ10FqNZc
	QEhWB5HWCSJ7k09pDkaoNgHWKsslMqpZGyuXunAMF3A3qQMnLPG7Iv72u5zYzN/pQV53no0CdHO59
	wIebbmakhJVY8y2aKMs+1i0p7cXMExbLv/mwjuPwyJj7j6ZfeCRl4WGleWZzN/CgQfCgcH1WwmMIj
	W5h+FzjlTiaLqkWBvmBZFoBuzKiYudvl86v3yHSvVY7QWPH1dWuNtD6CIZdixh4GqoTYA2CzngpZ8
	VPxBDnGjNi+YCExbS9fg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilToU-0000aI-6d; Sun, 29 Dec 2019 08:20:38 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilTaz-00018M-GB; Sun, 29 Dec 2019 08:06:43 +0000
Received: by mail-pg1-x544.google.com with SMTP id b137so16613990pga.6;
 Sun, 29 Dec 2019 00:06:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=upleNgTFfAza3FZg7/9VQrzMx7En/pvAOWEfdB18Fmk=;
 b=r+5CpJmnN4vOgNpA/om76KyWVgPXmGGC6EM7e5tj8W5dRFmK9Jkqc2gpIh53oz+Caa
 LIAb7jx83j8Ef0YXJ+NgKqL+7LJQg65TOGqsZoPIvZ60GJD9V6T1XfllJWEYAOC9zjC4
 e5Fwd3jau7TGVaFrOBgX4MJw717C0exQVM327OITBjJHfTlLyasNoUZW60EPSsKOahBN
 VKs9jK2lf7hwyWdfhUxHR0emWL9IeIGRgxvkc6IgY468vxtmtW34CNrEIahXOtQOhoD5
 xP0Sbw1eW1+RTFzSeJ8/41p7VFsupzRE/i76xGj+KTN0wZvgVjqLudZI1p/vmdak/z7+
 cZng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=upleNgTFfAza3FZg7/9VQrzMx7En/pvAOWEfdB18Fmk=;
 b=g7cxpiHudGdUBJIEmF5H8rzlL19YKOcOXxcaUXONtQSIpmuzHXaz1r6wNaacQr4sLQ
 WB5w61WvPKFyvf7BpDYLL/tlaROsZwc3Jcf/ViPPq48Ub6aUzZXKsNQNhwZvQMQjZ9fa
 jfFAaZQNn8OsKz4oNjroHvGvrzj5TCPd00f6cqwX/J1UBBN6/M3wQA8orvK/4BSnTaNT
 UYhrIpzDE8jFxYGEmtuRIw84GOiC2xG3lAjcHfe+T5n2s6+wc8HewhtYhtUZbV0O3kBJ
 b1g+npBQ6fl3GKCUVd7vCR69HYrYgcpXNLetrAS0772AJBYqIAooJLmfBGAEDYUWR/3T
 MLKg==
X-Gm-Message-State: APjAAAUO8DHGo6MpdzZheMt14Zks9pBVZFCDi0RFu5cKQxorRWNCy5K6
 fFz4saXflPF2KWQINjXQxgk=
X-Google-Smtp-Source: APXvYqy4BUrAwHcEQW7eOd+3yd2eT1ZZTaKeli2o7/H94zl8bi+IzfTqBBlbxhAYoRaHMAsNYRzH0A==
X-Received: by 2002:a63:fc01:: with SMTP id j1mr67311075pgi.220.1577606799597; 
 Sun, 29 Dec 2019 00:06:39 -0800 (PST)
Received: from localhost ([2001:19f0:6001:12c8:5400:2ff:fe72:6403])
 by smtp.gmail.com with ESMTPSA id m6sm19934565pjn.21.2019.12.29.00.06.38
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 29 Dec 2019 00:06:39 -0800 (PST)
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
Subject: [PATCH 21/32] pwm: tiecap: convert to devm_platform_ioremap_resource
Date: Sun, 29 Dec 2019 08:05:59 +0000
Message-Id: <20191229080610.7597-21-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191229080610.7597-1-tiny.windzz@gmail.com>
References: <20191229080610.7597-1-tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191229_000641_626816_4DB70E1C 
X-CRM114-Status: UNSURE (   9.63  )
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
 drivers/pwm/pwm-tiecap.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/pwm/pwm-tiecap.c b/drivers/pwm/pwm-tiecap.c
index ab38c8203b79..3a9885cce386 100644
--- a/drivers/pwm/pwm-tiecap.c
+++ b/drivers/pwm/pwm-tiecap.c
@@ -196,7 +196,6 @@ static int ecap_pwm_probe(struct platform_device *pdev)
 {
 	struct device_node *np = pdev->dev.of_node;
 	struct ecap_pwm_chip *pc;
-	struct resource *r;
 	struct clk *clk;
 	int ret;
 
@@ -230,8 +229,7 @@ static int ecap_pwm_probe(struct platform_device *pdev)
 	pc->chip.base = -1;
 	pc->chip.npwm = 1;
 
-	r = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	pc->mmio_base = devm_ioremap_resource(&pdev->dev, r);
+	pc->mmio_base = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(pc->mmio_base))
 		return PTR_ERR(pc->mmio_base);
 
-- 
2.17.1


