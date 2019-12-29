Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64E5A12C189
	for <lists+linux-riscv@lfdr.de>; Sun, 29 Dec 2019 09:13:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:MIME-Version:
	Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R0cuAbci5uYQKV5oYgcIjNZXakTJ8cPiZU7xeuhf2xI=; b=qIS628L/vltO/Z
	WVxzlqbSadAR2stbeNuUkDWESRtqW1ORbVuSH3shCL+x48i2WpVlOFFRSV6WomhPW5kCS3mWJRWqx
	Bz+p2L2DVHI7m0Qr1OhP2IXjdqKTrtL9kt7+EzQX/j0BCYnyGm6ZWScY/8I1T9rkGTKFs1xxYz1tV
	RBnr+ewgLHpG9lxYSSdBShVvQy/oYYJhkpS5nJXN+VmKT718RGOh04AfTQnTXZhySsZ7WgWD/VEW6
	m7l4gS3DnQsyHljyqlnFXuSAHQYu1j7/Yp0lFeqy+YBTxev2lGFiyO5RxvF3/wqTnLGuRlcJFYXMl
	Zc18ckjMILX1ksdfbLLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilThY-0007mA-6c; Sun, 29 Dec 2019 08:13:28 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilTac-0000nA-EN; Sun, 29 Dec 2019 08:06:19 +0000
Received: by mail-pj1-x1041.google.com with SMTP id n59so6887737pjb.1;
 Sun, 29 Dec 2019 00:06:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=R0cuAbci5uYQKV5oYgcIjNZXakTJ8cPiZU7xeuhf2xI=;
 b=m5m+bIRzpVxT2lC3WGernvIiSgoiTh4GSzfGJ4cxWeD8TuX4KSVlCIumOBF6bd5SnO
 F4wHJOwzIoL0KT2CyRuHa2Koarb6rxhmzSucn0o/LTP+pT5YIumStQ1D5pz2GvG4hKAX
 ckQ492UoFz+fZxyxH77wyvEXK6h1CI54OszXIz0n3aw/3i26R8MEAjX+nHHkJMWUCnCY
 JQZmgSGX0++STKSwGykPZwgP79ZU3W0BUQ7UoG8pYFLdRMxO6Bcx8E+tnTrRB/G4CPXL
 KV6Ny2RV5QWhE8o64tYrWRDwkiXsESJBpaaUAdOsC1abH/LRtTPP9z2b+v4mJHHS8Znb
 gOkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=R0cuAbci5uYQKV5oYgcIjNZXakTJ8cPiZU7xeuhf2xI=;
 b=MGlFMirR1I8n2efiVtVkj1Re4QLUCPnJz4GIXGt2SgdRI/1k2eACgS51m4KiEeAPU9
 M1MXMyRRPLuUpUL8qHE08yr2AjtkYShYFNhcIw4B4w8uyZsgBZrV+rehvta4gdDJQPO2
 8+ikJnK7cbIzxowvL2Ze5jSYW3uQNCzxRCmvSSuyIEduxZupTyj6dexbhQFDUxe8SL8A
 6Qf1ldAt9gs3qBauy5x6x95QF6OJn1aaYE5t3roMExCbiijHrsv5MZP14hK46NMAJwMq
 /Oiw9S8pMQE5lytjfLe6pqlmox6b/GLlQESDXzpm2PnNqM5TBQd1TZGtXu+aEoyvi4o4
 43ZA==
X-Gm-Message-State: APjAAAWUEDrMfCUhSFD1Qlhb+Ue8XkK6cHpdZnz7hlmYOxnP/WgOo5Pj
 g87H4kuU5idXbySH9/fJ134=
X-Google-Smtp-Source: APXvYqwBzBTDNYHJ0gM69+2QZwtTswZP7Da88QJfXDtLekK7yHdTvbLHKiFKwKnE1jw315fndAx/QQ==
X-Received: by 2002:a17:902:a58b:: with SMTP id
 az11mr61458821plb.147.1577606777982; 
 Sun, 29 Dec 2019 00:06:17 -0800 (PST)
Received: from localhost ([2001:19f0:6001:12c8:5400:2ff:fe72:6403])
 by smtp.gmail.com with ESMTPSA id v143sm38690397pfc.71.2019.12.29.00.06.17
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 29 Dec 2019 00:06:17 -0800 (PST)
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
Subject: [PATCH 03/32] pwm: rcar: convert to devm_platform_ioremap_resource
Date: Sun, 29 Dec 2019 08:05:41 +0000
Message-Id: <20191229080610.7597-3-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191229080610.7597-1-tiny.windzz@gmail.com>
References: <20191229080610.7597-1-tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191229_000618_479722_95B67D02 
X-CRM114-Status: UNSURE (   9.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
 drivers/pwm/pwm-rcar.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/pwm/pwm-rcar.c b/drivers/pwm/pwm-rcar.c
index 852eb2347954..7bd67f69db84 100644
--- a/drivers/pwm/pwm-rcar.c
+++ b/drivers/pwm/pwm-rcar.c
@@ -203,15 +203,13 @@ static const struct pwm_ops rcar_pwm_ops = {
 static int rcar_pwm_probe(struct platform_device *pdev)
 {
 	struct rcar_pwm_chip *rcar_pwm;
-	struct resource *res;
 	int ret;
 
 	rcar_pwm = devm_kzalloc(&pdev->dev, sizeof(*rcar_pwm), GFP_KERNEL);
 	if (rcar_pwm == NULL)
 		return -ENOMEM;
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	rcar_pwm->base = devm_ioremap_resource(&pdev->dev, res);
+	rcar_pwm->base = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(rcar_pwm->base))
 		return PTR_ERR(rcar_pwm->base);
 
-- 
2.17.1


