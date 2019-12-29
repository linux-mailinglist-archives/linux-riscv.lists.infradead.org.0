Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EBAD812C200
	for <lists+linux-riscv@lfdr.de>; Sun, 29 Dec 2019 09:21:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:MIME-Version:
	Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7C9csqsnQvcsncB7BFqdTNUWmGo/VsO+LA8tqtfgkPA=; b=EmzwobJ05BGiXk
	1H0Fzj1z7yfeiAFFtqWxIF3yEpysG4AyfnRSxMTn5WP5dUIynhYZz3SV1LSSqo+b7yX6unv32Biyy
	0M+3sobCI357mbq9IADKhG61QB8Gsj0qhoV7a+2378ibWlK2u54bTtuZlTLE0mxr0VF1i2WA55T0o
	WDY8LmyoForE6ES6zQJ3P9TdTm6w4m3w4WEqtpIG0A8hO8yllWX4qJyhDoM8m58M79aDL6LqM+63O
	ch7Wpm5Y59M7ROq3kVdZOKC/tpw5GocPMnykj4Q4h5dZ8tgahUTHB+BtNKhX6yldMjrynmN1w3C1w
	CmZgFOT8hRUtSi0rvIRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilTou-00019G-90; Sun, 29 Dec 2019 08:21:04 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilTb2-0001Ar-LW; Sun, 29 Dec 2019 08:06:46 +0000
Received: by mail-pf1-x442.google.com with SMTP id w62so16880061pfw.8;
 Sun, 29 Dec 2019 00:06:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=7C9csqsnQvcsncB7BFqdTNUWmGo/VsO+LA8tqtfgkPA=;
 b=jcjs/+PLV2JXKvRK5ziMpwAysMkDPC8s9r4UV5yKxf4yhxZbU8xB5E75T6G/P7ulXb
 jMY8puOpg9UcDUg+10rYov5RFZx8U6pvz4XAD5KpWg1cX8Siwjtz26KDB7AsB2gVNtQq
 CdAnqGPr372cK1kcSr9c2X17LwY8wOcSstoRm94NWpcEYAserNiA/w0Fz2JVpBDTPH3+
 ZA0RD/rOJvts3a0XWraMURs26hCaQ8lK+tQcN5PLYuiY9GrIdZaJdFguQV38dmJ+UQmc
 I+hhBYo+RfLtod0vQrpGTa2vLgx4GA/hKk8mkWnVqFHW1XLgE+QVEHR369nWbR8cE3fo
 iL/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=7C9csqsnQvcsncB7BFqdTNUWmGo/VsO+LA8tqtfgkPA=;
 b=HigiZ3wUCrmi/EILaph9vLqirnS9orkhsJpbpQUB3Ejwil9vDkamb6ebj7Crx9GKLE
 eqMEx3LfxaHd58RcwE5JiDkE8KSf3ZPKqJlLlVz0iW71n6wlj+tcyWvwbHh/M00pzSsX
 XETV0WQs1TDRNWR5eHAvp4TlUYzolEZJy8D2aW0l4tSn8ZqclII3Zr2pSYtNwS2/3Y8O
 IqkLGBN+6gVyqrdsXxQa/dTSk1LdaxD8IUoSI6ljlbxp2zov1v7dYUkKZ0g3uxYUU58L
 stvBqOCe0rzOjkoNb2Hb13jXQuSWGsD7aXkq03LYiRSNAXyGd3QGU7hNeGc375t2g9QE
 gfVg==
X-Gm-Message-State: APjAAAX3la+eE7UTp8p576nE0uTF+h5Lb3PFr2n95PcqDu2Lmke7kAEh
 vuLSosTxNh+ERpAwzPoKfFo=
X-Google-Smtp-Source: APXvYqzUdmO2Rv7imffzZ5diTgtjXIZc+zetWCpfjNYcI++CXUFajSDwDRs8JEjaQLkbgWwatBbprA==
X-Received: by 2002:a62:a515:: with SMTP id v21mr65261927pfm.128.1577606801886; 
 Sun, 29 Dec 2019 00:06:41 -0800 (PST)
Received: from localhost ([2001:19f0:6001:12c8:5400:2ff:fe72:6403])
 by smtp.gmail.com with ESMTPSA id d21sm16349375pjs.25.2019.12.29.00.06.41
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 29 Dec 2019 00:06:41 -0800 (PST)
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
Subject: [PATCH 23/32] pwm: berlin: convert to devm_platform_ioremap_resource
Date: Sun, 29 Dec 2019 08:06:01 +0000
Message-Id: <20191229080610.7597-23-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191229080610.7597-1-tiny.windzz@gmail.com>
References: <20191229080610.7597-1-tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191229_000644_840357_485839A7 
X-CRM114-Status: UNSURE (   8.99  )
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
 drivers/pwm/pwm-berlin.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/pwm/pwm-berlin.c b/drivers/pwm/pwm-berlin.c
index b91c477cc84b..fe405289e582 100644
--- a/drivers/pwm/pwm-berlin.c
+++ b/drivers/pwm/pwm-berlin.c
@@ -186,15 +186,13 @@ MODULE_DEVICE_TABLE(of, berlin_pwm_match);
 static int berlin_pwm_probe(struct platform_device *pdev)
 {
 	struct berlin_pwm_chip *pwm;
-	struct resource *res;
 	int ret;
 
 	pwm = devm_kzalloc(&pdev->dev, sizeof(*pwm), GFP_KERNEL);
 	if (!pwm)
 		return -ENOMEM;
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	pwm->base = devm_ioremap_resource(&pdev->dev, res);
+	pwm->base = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(pwm->base))
 		return PTR_ERR(pwm->base);
 
-- 
2.17.1


