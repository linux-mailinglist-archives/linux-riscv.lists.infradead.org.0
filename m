Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63F4612C1C0
	for <lists+linux-riscv@lfdr.de>; Sun, 29 Dec 2019 09:18:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:MIME-Version:
	Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JTxLwNHfWMCSdl17dQPhCHcE/C0FIExdEqc5ZBEYZfU=; b=FYB4yxarEN/xAT
	d3FyxAAR0Sbdon9OiiL2g2n/LXK5H4M7tUmEerH0OfBXI2ZVoo1vthE+nlPSNYgOQvQYYTpUREtp+
	F7B00VQV3lhYADb0rLmB1agB5lQJ0kueWX7ztc3+pgG+HF+OPh52Td7CY0hmVkti8AQAivw8Tztcc
	AyI9/iiXJAWph36X03yL3Dz8gcP21AUgBKZyTeQTlotEB8Py38YRNX3R4J6Rdt20O3O2C7OUD4jXo
	xW/onXGSWGzZN7DlRrDaxYdh7y745f4ec6pkLQukmDmFOP4ZPE1vyIo1VyvZ41tCYXg8iRGvnJdOH
	wYTDDN9zYS1N0LnWUY/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilTmW-0005Mo-Np; Sun, 29 Dec 2019 08:18:36 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilTak-0000u6-FV; Sun, 29 Dec 2019 08:06:28 +0000
Received: by mail-pg1-x542.google.com with SMTP id z124so16594388pgb.13;
 Sun, 29 Dec 2019 00:06:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=JTxLwNHfWMCSdl17dQPhCHcE/C0FIExdEqc5ZBEYZfU=;
 b=USfTeOzMptYKE9gYaoMN2AcaH/T/YEM97jTDKmejVbSSpQ0VRIuSMlgI4iWyJKdyQi
 TgT9w+oa6HCJV/EbiMSTDznTvHy0o9Vp8Aeh/T6tvJ8fulH7IELjdTO1440DnsBW7Ecm
 Vz4vqPF74gnUndLkJNSBtRQYtMeOhcuKZyydfYZfkPsH4Sf7OVJT3S/62fwzKN7SAC0a
 smkyZe6cJlsjW8nzE5cySMMBI0HWlMKH5JEDgxO50BfnBw0Hn5cKB0WTigN/A/SOihJp
 Np6zIfueMyLZVqllS3iEN64sQ4rjpXubD9ErAEUULvzWV7cNsVjo6lk/euhBZ+ZFH8L3
 C+oQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=JTxLwNHfWMCSdl17dQPhCHcE/C0FIExdEqc5ZBEYZfU=;
 b=UJHJmrFOzFeRb0BXFIeMDVmQPLv3NsHZh/PgOFa0yVZ7iHxoJiEjr7HspjPkid2CcM
 8uuLrWbDvbHbDYgAe6gabfH9O6BtLvg+Gxqh/ZNGd7OQXZIA9dSVSRwSW6wz8X+7eIKB
 irlxFSBe3UCnbvREOZI3ZjTREc1k3YRUUJdIFsR9qRyT1t3eCrBifNI/hA4I4D3jIQJI
 tO7Ha8rpvwbTjDYbIOgZRmQe9ZjO9H9NUh4YotdCJEMNoPzgOJab9D2oRVx7JqMIkudk
 WoQzRYEezjrAxhqM9EEiy8vUFEhRQs1UAlmVdgLTXJNcdL4E2LMP5bvgDKVTG9S56cly
 EkXA==
X-Gm-Message-State: APjAAAUAXbB9k9eFrTOR8fHUmxSijwHUSd0YIhWUaXconGgGMPbdn+ko
 ma/HffgD6Zf0rnIZig3ku98=
X-Google-Smtp-Source: APXvYqw0aOEeyRNR1ZSX3UWHpVI83plQz16k8Unv0vX9tNYiTSBj4CWfSoUVyECQTs/4PKYZlIN+yQ==
X-Received: by 2002:aa7:9115:: with SMTP id 21mr33026878pfh.224.1577606784475; 
 Sun, 29 Dec 2019 00:06:24 -0800 (PST)
Received: from localhost ([2001:19f0:6001:12c8:5400:2ff:fe72:6403])
 by smtp.gmail.com with ESMTPSA id m45sm20368923pje.32.2019.12.29.00.06.23
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 29 Dec 2019 00:06:24 -0800 (PST)
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
Subject: [PATCH 08/32] pwm: sti: convert to devm_platform_ioremap_resource
Date: Sun, 29 Dec 2019 08:05:46 +0000
Message-Id: <20191229080610.7597-8-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191229080610.7597-1-tiny.windzz@gmail.com>
References: <20191229080610.7597-1-tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191229_000626_588573_D61B8AB7 
X-CRM114-Status: UNSURE (   9.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
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
 drivers/pwm/pwm-sti.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/pwm/pwm-sti.c b/drivers/pwm/pwm-sti.c
index 1508616d794c..eaeb38c0c0c7 100644
--- a/drivers/pwm/pwm-sti.c
+++ b/drivers/pwm/pwm-sti.c
@@ -540,7 +540,6 @@ static int sti_pwm_probe(struct platform_device *pdev)
 	struct device *dev = &pdev->dev;
 	struct sti_pwm_compat_data *cdata;
 	struct sti_pwm_chip *pc;
-	struct resource *res;
 	unsigned int i;
 	int irq, ret;
 
@@ -552,9 +551,7 @@ static int sti_pwm_probe(struct platform_device *pdev)
 	if (!cdata)
 		return -ENOMEM;
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-
-	pc->mmio = devm_ioremap_resource(dev, res);
+	pc->mmio = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(pc->mmio))
 		return PTR_ERR(pc->mmio);
 
-- 
2.17.1


