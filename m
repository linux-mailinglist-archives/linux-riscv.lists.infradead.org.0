Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C5EA712C1D3
	for <lists+linux-riscv@lfdr.de>; Sun, 29 Dec 2019 09:19:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:MIME-Version:
	Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9aror3WMc9TnPqrqaSDsSX8TFSQVY2wHQIlltl6fZmU=; b=eok0BxVJ3BA6/K
	P2w00MPk0vWUNd43tf5IXQKeVbH+znVtkn72epXEMa5fqYuA/7R5VdoTufHwrNc1wBru0P/bCV3co
	DMNmZGAv4yauVLHBvEUamar3ZmyoLhAyD9fWMHsPvqlZ+83kPCsZT/FpiviavJgFtHZPhL5T93CSF
	Ja445rUtCO7Mhk9hDm+hrdAUUTAcaPOYgIkxH9yITPisbiCBoq5bjH/fv9cCVGuN8BIHesyhoGM2g
	PUdiMJOhx07OGtDcNLnxyA6csZ7meueEfxPr2p+PPXpKEUrNrFzoYCCvnCktHR1BiAz0sNjhcKtPp
	B6sIKYZTUww3qMZm1HsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilTnG-0006CC-TL; Sun, 29 Dec 2019 08:19:22 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilTan-0000y2-7u; Sun, 29 Dec 2019 08:06:30 +0000
Received: by mail-pg1-x543.google.com with SMTP id k25so16605638pgt.7;
 Sun, 29 Dec 2019 00:06:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=9aror3WMc9TnPqrqaSDsSX8TFSQVY2wHQIlltl6fZmU=;
 b=vYtyJ2VDK+91ZMjApOjKh+6624NckEqfqF7Cts/XYXdr9hOriX2dlilzKkqavU6LFa
 yaYIvku9FW1ht4DiTC0KYV//chMEZZ7OA1obzPcm6FlzdInl+PVLLGxbxMisiflWvukv
 xiEOh6HjKhscZJADjkPAS8WsWRZ+WtjsA++MnyCVMMqKd/P7mU7US2m3+BroLpO+Oz0Q
 WH/IwBOH4MJJGU7S0VWdJwfaGdAdJkWfJUeWYzBCp+w0jITHLm7DVN/btgV4iIdwlYUA
 WjBvTiE7/4E32MhAoTuSJiAyYczvMOqW9DvnPhUwDDF6Es7TXITgTjZJUgPKQe9PVPDC
 tC5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=9aror3WMc9TnPqrqaSDsSX8TFSQVY2wHQIlltl6fZmU=;
 b=Uzp38EboL3XyL9uWxrD7lNOdxzLXToguUreQBLORgU/eUZvSKHDKgWSOVX42hKiqMy
 XG8cBf5zh1RmlXsOJyp3poWXtZu8ZuXjJ6x04wprUET0N0GIoclKZZjGfJmGgwn3dG/o
 5onwjvuGiH0SPH1csAWMZDdwhBCIBXGtNJKctN5vf2Ldqy0n4HOoZyAQDgrSv9s8t6nY
 h09YUgLE38OEHk/kRUX4Lv/xvk18IPUgUxTvP5Q/ZncgfIW/lefGA2/gacbViTkHZ7H+
 tKtIndaYZR1z/o1Iwd6a6jCOIM5AB6zGKbSkqATo/H6jtafYxZI12S7VA0N9+w5Pt1ZQ
 zbfA==
X-Gm-Message-State: APjAAAXU4LVeu9zAcXS8hNqWTB+on/tbJlrrRxuMTxwVvkFLX22q1Xwp
 vOmtQmRMc4z6O25MXo+2z4c=
X-Google-Smtp-Source: APXvYqx5w3rpNGF6e/LmsI5rm8FSKu6lK294KHs3eFdgxgzHOley+p/ZQCNB4Y8ISGTJXBB3agSB0A==
X-Received: by 2002:a62:2cc1:: with SMTP id
 s184mr64663678pfs.111.1577606787693; 
 Sun, 29 Dec 2019 00:06:27 -0800 (PST)
Received: from localhost ([2001:19f0:6001:12c8:5400:2ff:fe72:6403])
 by smtp.gmail.com with ESMTPSA id c2sm19899049pjq.27.2019.12.29.00.06.27
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 29 Dec 2019 00:06:27 -0800 (PST)
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
Subject: [PATCH 11/32] pwm: spear: convert to devm_platform_ioremap_resource
Date: Sun, 29 Dec 2019 08:05:49 +0000
Message-Id: <20191229080610.7597-11-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191229080610.7597-1-tiny.windzz@gmail.com>
References: <20191229080610.7597-1-tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191229_000629_305173_A1C838EC 
X-CRM114-Status: UNSURE (   9.71  )
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
 drivers/pwm/pwm-spear.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/pwm/pwm-spear.c b/drivers/pwm/pwm-spear.c
index 6c6b44fd3f43..f63b54aae1b4 100644
--- a/drivers/pwm/pwm-spear.c
+++ b/drivers/pwm/pwm-spear.c
@@ -174,7 +174,6 @@ static int spear_pwm_probe(struct platform_device *pdev)
 {
 	struct device_node *np = pdev->dev.of_node;
 	struct spear_pwm_chip *pc;
-	struct resource *r;
 	int ret;
 	u32 val;
 
@@ -182,8 +181,7 @@ static int spear_pwm_probe(struct platform_device *pdev)
 	if (!pc)
 		return -ENOMEM;
 
-	r = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	pc->mmio_base = devm_ioremap_resource(&pdev->dev, r);
+	pc->mmio_base = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(pc->mmio_base))
 		return PTR_ERR(pc->mmio_base);
 
-- 
2.17.1


