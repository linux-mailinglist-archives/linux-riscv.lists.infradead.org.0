Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 803FC12D287
	for <lists+linux-riscv@lfdr.de>; Mon, 30 Dec 2019 18:22:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:MIME-Version:
	Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F1c6sGRvsIDhFwsikD6axwkEj9kX0tNfhfGRf3z9H8E=; b=W2evA5R1/0YMzi
	CfPexUYsASoTbSRhk5WwYG1hod5/DGQl9jU+ggz9v5i+fJPy7QSpce0AL254SzJJAUNKvjz/6p3bd
	s2lFQ4IR3dj2KdG6O9buiqGRwZIOHx5ek33jZrN13kQsAiS9LHNgQgSc/g/KB/3XeZ+2OKvW5Jw0a
	r6mcrfq3smC+w24V2rRbs6sSIwvL0SmuQanLnEeB560WNSCTXnKPekrusRc1oD0pTNCI3gFJB5d2x
	gDGagEgXAX5lsjdbozRK1S2lmTzfJ7U+3DUII71bt5BFGDKAJ5gKVYtR/A3ywNbb/8K+nEDy0jkrQ
	RG8+yScILeR5ufyI6enQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilyk6-0007lS-UZ; Mon, 30 Dec 2019 17:22:10 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilyjW-00078S-CG; Mon, 30 Dec 2019 17:21:36 +0000
Received: from localhost.localdomain (unknown [194.230.155.138])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BFA1A2071E;
 Mon, 30 Dec 2019 17:21:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1577726493;
 bh=e/gvJO5s9HFPQBYMAs10A6ZLymzdOsgN0GewiWTGEzk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=EKqJvBpzzpOYneGnhs8+1kBprz2jBvn9qBcEnJWm6i9ypCO1aVp42ozM7U3ccQuZX
 xMN1HY+mA9JNqWBU58Pk8fnRWNYWdf3Uv6QmOdgK++8ndBn9uGB5ubIA4eBXDUGKlu
 Z5I+qeirfMdyB/IfeSN2xxeDnQeNODnX0SdxOZSQ=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Thierry Reding <thierry.reding@gmail.com>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 linux-pwm@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-mediatek@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-riscv@lists.infradead.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-tegra@vger.kernel.org
Subject: [PATCH 2/2] pwm: Enable compile testing for some of drivers
Date: Mon, 30 Dec 2019 18:21:13 +0100
Message-Id: <20191230172113.17222-2-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191230172113.17222-1-krzk@kernel.org>
References: <20191230172113.17222-1-krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191230_092134_506530_577C08CF 
X-CRM114-Status: GOOD (  10.39  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Krzysztof Kozlowski <krzk@kernel.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Some of the PWM drivers can be compile tested to increase build
coverage.

The Meson PWM driver requires COMMON_CLK dependency.

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
---
 drivers/pwm/Kconfig | 48 +++++++++++++++++++++++----------------------
 1 file changed, 25 insertions(+), 23 deletions(-)

diff --git a/drivers/pwm/Kconfig b/drivers/pwm/Kconfig
index c865d688f6b4..d5661a227321 100644
--- a/drivers/pwm/Kconfig
+++ b/drivers/pwm/Kconfig
@@ -44,7 +44,7 @@ config PWM_AB8500
 
 config PWM_ATMEL
 	tristate "Atmel PWM support"
-	depends on ARCH_AT91 && OF
+	depends on (ARCH_AT91 || COMPILE_TEST) && OF
 	help
 	  Generic PWM framework driver for Atmel SoC.
 
@@ -100,7 +100,7 @@ config PWM_BCM_KONA
 
 config PWM_BCM2835
 	tristate "BCM2835 PWM support"
-	depends on ARCH_BCM2835
+	depends on ARCH_BCM2835 || COMPILE_TEST
 	help
 	  PWM framework driver for BCM2835 controller (Raspberry Pi)
 
@@ -109,7 +109,7 @@ config PWM_BCM2835
 
 config PWM_BERLIN
 	tristate "Marvell Berlin PWM support"
-	depends on ARCH_BERLIN
+	depends on ARCH_BERLIN || COMPILE_TEST
 	help
 	  PWM framework driver for Marvell Berlin SoCs.
 
@@ -118,7 +118,7 @@ config PWM_BERLIN
 
 config PWM_BRCMSTB
 	tristate "Broadcom STB PWM support"
-	depends on ARCH_BRCMSTB || BMIPS_GENERIC
+	depends on ARCH_BRCMSTB || BMIPS_GENERIC || COMPILE_TEST
 	help
 	  Generic PWM framework driver for the Broadcom Set-top-Box
 	  SoCs (BCM7xxx).
@@ -152,7 +152,7 @@ config PWM_CROS_EC
 
 config PWM_EP93XX
 	tristate "Cirrus Logic EP93xx PWM support"
-	depends on ARCH_EP93XX
+	depends on ARCH_EP93XX || COMPILE_TEST
 	help
 	  Generic PWM framework driver for Cirrus Logic EP93xx.
 
@@ -195,7 +195,7 @@ config PWM_IMG
 
 config PWM_IMX1
 	tristate "i.MX1 PWM support"
-	depends on ARCH_MXC
+	depends on ARCH_MXC || COMPILE_TEST
 	help
 	  Generic PWM framework driver for i.MX1 and i.MX21
 
@@ -204,7 +204,7 @@ config PWM_IMX1
 
 config PWM_IMX27
 	tristate "i.MX27 PWM support"
-	depends on ARCH_MXC
+	depends on ARCH_MXC || COMPILE_TEST
 	help
 	  Generic PWM framework driver for i.MX27 and later i.MX SoCs.
 
@@ -244,7 +244,7 @@ config PWM_LP3943
 
 config PWM_LPC18XX_SCT
 	tristate "LPC18xx/43xx PWM/SCT support"
-	depends on ARCH_LPC18XX
+	depends on ARCH_LPC18XX || COMPILE_TEST
 	help
 	  Generic PWM framework driver for NXP LPC18xx PWM/SCT which
 	  supports 16 channels.
@@ -256,7 +256,7 @@ config PWM_LPC18XX_SCT
 
 config PWM_LPC32XX
 	tristate "LPC32XX PWM support"
-	depends on ARCH_LPC32XX
+	depends on ARCH_LPC32XX || COMPILE_TEST
 	help
 	  Generic PWM framework driver for LPC32XX. The LPC32XX SOC has two
 	  PWM controllers.
@@ -289,7 +289,8 @@ config PWM_LPSS_PLATFORM
 
 config PWM_MESON
 	tristate "Amlogic Meson PWM driver"
-	depends on ARCH_MESON
+	depends on ARCH_MESON || COMPILE_TEST
+	depends on COMMON_CLK
 	help
 	  The platform driver for Amlogic Meson PWM controller.
 
@@ -318,7 +319,7 @@ config PWM_MEDIATEK
 
 config PWM_MXS
 	tristate "Freescale MXS PWM support"
-	depends on ARCH_MXS && OF
+	depends on (ARCH_MXS && OF) || COMPILE_TEST
 	select STMP_DEVICE
 	help
 	  Generic PWM framework driver for Freescale MXS.
@@ -328,7 +329,8 @@ config PWM_MXS
 
 config PWM_OMAP_DMTIMER
 	tristate "OMAP Dual-Mode Timer PWM support"
-	depends on OF && ARCH_OMAP && OMAP_DM_TIMER
+	depends on (ARCH_OMAP && OMAP_DM_TIMER) || COMPILE_TEST
+	depends on OF
 	help
 	  Generic PWM framework driver for OMAP Dual-Mode Timer PWM output
 
@@ -356,7 +358,7 @@ config PWM_PUV3
 
 config PWM_PXA
 	tristate "PXA PWM support"
-	depends on ARCH_PXA
+	depends on ARCH_PXA || COMPILE_TEST
 	help
 	  Generic PWM framework driver for PXA.
 
@@ -387,14 +389,14 @@ config PWM_RENESAS_TPU
 
 config PWM_ROCKCHIP
 	tristate "Rockchip PWM support"
-	depends on ARCH_ROCKCHIP
+	depends on ARCH_ROCKCHIP || COMPILE_TEST
 	help
 	  Generic PWM framework driver for the PWM controller found on
 	  Rockchip SoCs.
 
 config PWM_SAMSUNG
 	tristate "Samsung PWM support"
-	depends on PLAT_SAMSUNG || ARCH_EXYNOS
+	depends on PLAT_SAMSUNG || ARCH_EXYNOS || COMPILE_TEST
 	help
 	  Generic PWM framework driver for Samsung.
 
@@ -414,7 +416,7 @@ config PWM_SIFIVE
 
 config PWM_SPEAR
 	tristate "STMicroelectronics SPEAr PWM support"
-	depends on PLAT_SPEAR
+	depends on PLAT_SPEAR || COMPILE_TEST
 	depends on OF
 	help
 	  Generic PWM framework driver for the PWM controller on ST
@@ -436,7 +438,7 @@ config PWM_SPRD
 
 config PWM_STI
 	tristate "STiH4xx PWM support"
-	depends on ARCH_STI
+	depends on ARCH_STI || COMPILE_TEST
 	depends on OF
 	help
 	  Generic PWM framework driver for STiH4xx SoCs.
@@ -446,7 +448,7 @@ config PWM_STI
 
 config PWM_STM32
 	tristate "STMicroelectronics STM32 PWM"
-	depends on MFD_STM32_TIMERS
+	depends on MFD_STM32_TIMERS || COMPILE_TEST
 	help
 	  Generic PWM framework driver for STM32 SoCs.
 
@@ -482,7 +484,7 @@ config PWM_SUN4I
 
 config PWM_TEGRA
 	tristate "NVIDIA Tegra PWM support"
-	depends on ARCH_TEGRA
+	depends on ARCH_TEGRA || COMPILE_TEST
 	help
 	  Generic PWM framework driver for the PWFM controller found on NVIDIA
 	  Tegra SoCs.
@@ -492,7 +494,7 @@ config PWM_TEGRA
 
 config PWM_TIECAP
 	tristate "ECAP PWM support"
-	depends on ARCH_OMAP2PLUS || ARCH_DAVINCI_DA8XX || ARCH_KEYSTONE || ARCH_K3
+	depends on ARCH_OMAP2PLUS || ARCH_DAVINCI_DA8XX || ARCH_KEYSTONE || ARCH_K3 || COMPILE_TEST
 	help
 	  PWM driver support for the ECAP APWM controller found on TI SOCs
 
@@ -501,7 +503,7 @@ config PWM_TIECAP
 
 config PWM_TIEHRPWM
 	tristate "EHRPWM PWM support"
-	depends on ARCH_OMAP2PLUS || ARCH_DAVINCI_DA8XX || ARCH_K3
+	depends on ARCH_OMAP2PLUS || ARCH_DAVINCI_DA8XX || ARCH_K3 || COMPILE_TEST
 	help
 	  PWM driver support for the EHRPWM controller found on TI SOCs
 
@@ -528,7 +530,7 @@ config PWM_TWL_LED
 
 config PWM_VT8500
 	tristate "vt8500 PWM support"
-	depends on ARCH_VT8500
+	depends on ARCH_VT8500 || COMPILE_TEST
 	help
 	  Generic PWM framework driver for vt8500.
 
@@ -537,7 +539,7 @@ config PWM_VT8500
 
 config PWM_ZX
 	tristate "ZTE ZX PWM support"
-	depends on ARCH_ZX
+	depends on ARCH_ZX || COMPILE_TEST
 	help
 	  Generic PWM framework driver for ZTE ZX family SoCs.
 
-- 
2.17.1


