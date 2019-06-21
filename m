Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80D824EDAA
	for <lists+linux-riscv@lfdr.de>; Fri, 21 Jun 2019 19:14:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=jJkcUuT8EGPEy+CKRiG6amp9ZdYueRJmmK5AkWlFAvs=; b=IbBFPKMSataDQ8Kzf8KShpw5j8
	XL5KUjWIF2QPqddNgSvW75vKbcQBR8mWBp+84B7ud9jjgppIrYO2/rp/JNBhIbD+9v0btqRUDyHry
	STDxMh//vsfb/QDGuaCuJ1Qt4A4asdMfEVezM4E2nR+7Pfaq1anvfWbFXghLXKZRZgccZovvoWvkK
	8qevYOjFFYooRfzztP9jYBCylLtbBXZpeAFGTafArvQtqe6oJhtPitde1q5PHps7l7SrGr6N5bAfL
	yjo1h1cPIEhV+6rX8CIEL6LZko/h6v7ybz71XtjPGE0htkfiEvMchG+TrQUyO0MpEHdN4hpL7M+jV
	tUUcWiRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heN73-0000yB-Qk; Fri, 21 Jun 2019 17:14:09 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heN6v-0000rW-6V
 for linux-riscv@lists.infradead.org; Fri, 21 Jun 2019 17:14:02 +0000
Received: by mail-pg1-x543.google.com with SMTP id n2so3668945pgp.11
 for <linux-riscv@lists.infradead.org>; Fri, 21 Jun 2019 10:14:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=o1QLzue2L9JyqaN4FDGc1k6pQyo17m+dj0qwGBRdDDY=;
 b=OXIh86gcYSAIWnFCybe6YkfZ9n6MJRje1GXFZ6LrKLFv0hm4DdMxg4+ScBQkfv9tlB
 my4V9V6Z1bwokLV6PeVUkhXOct2z+oaVqKOvCAFs6y1VgnOuUjfEpQpqved5gUmsuP1F
 y8EYncVYigNk+XV+olBklsZhQiHyaMMGYdzCooNYiP4Rk0cRDUcjm5/v3eR9uvZWY9lv
 xOnCiLn5lvUrVSvkRjlQ1pB3SmgmvEq3wJAaebOY5wPx1nDIA+5bq33uq3MMUEq7umOq
 yj1a2obP9idCdB4MG9zRK27yHDxdF85lMbv9FicaWkIdVHDdZFxoMlDgOtiG8mL8FlLa
 1GlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=o1QLzue2L9JyqaN4FDGc1k6pQyo17m+dj0qwGBRdDDY=;
 b=DUusRlDGHqXyKM/Xd5irzv0QLW7xZcNdxi8jfeCuSe79sCDi2x3yHH3m24gWpWdPbN
 f37/azLV8b8AcmxyIj8iXqV8KgpMKffVMz5W/IlbGMxjRgErvfizGCbTzWYDcbctswpr
 m3Z0ClwFArx4lIr+Iuc8eRzO1krfsLfNcijfBCmdX/WRwclP/AfezUQefRWsOqC7+NBo
 6esUY4hmedF9tJEFI2IJxAgjVmW4Z76+pa2BzhL4Zl7AEkORXTbKETvDxSFb0+A46KYj
 Pvh9PsMN7b0C6BELTmo1AGFyTM6tUBuc6FJYaAotuTHkn05gk0NqZgJTG204/PvIjQ2T
 SOMA==
X-Gm-Message-State: APjAAAWDEY/PYXvervrgvyD39Mq+S4xW+MI+HNphEQY2jImu/X1MtLh5
 0x+Zl9wOjppUZIqq3jvA5Xuu1g==
X-Google-Smtp-Source: APXvYqxof2SKEqf2xCm0Tw+L4w3+uZRZjimqmRHsuJRrgvUKSNpX9BWdxeTfusOXP5HA2YFfZEboDg==
X-Received: by 2002:a63:1343:: with SMTP id 3mr20134770pgt.426.1561137240372; 
 Fri, 21 Jun 2019 10:14:00 -0700 (PDT)
Received: from buildserver-90.open-silicon.com ([114.143.65.226])
 by smtp.googlemail.com with ESMTPSA id t5sm3496190pgh.46.2019.06.21.10.13.56
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Fri, 21 Jun 2019 10:13:59 -0700 (PDT)
From: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
To: marek.vasut@gmail.com, tudor.ambarus@microchip.com, dwmw2@infradead.org,
 computersforpeace@gmail.com, miquel.raynal@bootlin.com, richard@nod.at,
 vigneshr@ti.com
Subject: [PATCH v6 1/3] mtd: spi-nor: add support for is25wp256
Date: Fri, 21 Jun 2019 22:43:29 +0530
Message-Id: <1561137211-12406-2-git-send-email-sagar.kadam@sifive.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1561137211-12406-1-git-send-email-sagar.kadam@sifive.com>
References: <1561137211-12406-1-git-send-email-sagar.kadam@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_101401_288796_226B26F2 
X-CRM114-Status: GOOD (  14.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: aou@eecs.berkeley.edu, palmer@sifive.com, linux-kernel@vger.kernel.org,
 linux-mtd@lists.infradead.org, Sagar Shrikant Kadam <sagar.kadam@sifive.com>,
 paul.walmsley@sifive.com, linux-riscv@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Update spi_nor_id table for is25wp256 (32MB) device from ISSI,
present on HiFive Unleashed dev board (Rev: A00).

Set method to enable quad mode for ISSI device in flash parameters
table. Set address width to 4byte if device supports 4Byte opcode and
it's size is greater than 16MiB.

Based on code originally written by Wesley Terpstra <wesley@sifive.com>
and/or Palmer Dabbelt <palmer@sifive.com>
https://github.com/riscv/riscv-linux/commit/c94e267766d62bc9a669611c3d0c8ed5ea26569b

Signed-off-by: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
---
 drivers/mtd/spi-nor/spi-nor.c | 19 +++++++++++++++----
 include/linux/mtd/spi-nor.h   |  1 +
 2 files changed, 16 insertions(+), 4 deletions(-)

diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
index 73172d7..c816f0c 100644
--- a/drivers/mtd/spi-nor/spi-nor.c
+++ b/drivers/mtd/spi-nor/spi-nor.c
@@ -1834,6 +1834,10 @@ static int sr2_bit7_quad_enable(struct spi_nor *nor)
 			SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
 	{ "is25wp128",  INFO(0x9d7018, 0, 64 * 1024, 256,
 			SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
+	{ "is25wp256", INFO(0x9d7019, 0, 64 * 1024, 1024,
+			SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
+			SPI_NOR_4B_OPCODES)
+	},
 
 	/* Macronix */
 	{ "mx25l512e",   INFO(0xc22010, 0, 64 * 1024,   1, SECT_4K) },
@@ -3652,6 +3656,10 @@ static int spi_nor_init_params(struct spi_nor *nor,
 		case SNOR_MFR_MACRONIX:
 			params->quad_enable = macronix_quad_enable;
 			break;
+		case SNOR_MFR_ISSI:
+			params->quad_enable = macronix_quad_enable;
+			break;
+
 
 		case SNOR_MFR_ST:
 		case SNOR_MFR_MICRON:
@@ -4129,13 +4137,16 @@ int spi_nor_scan(struct spi_nor *nor, const char *name,
 	if (ret)
 		return ret;
 
-	if (nor->addr_width) {
+	if (info->flags & SPI_NOR_4B_OPCODES && mtd->size > 0x1000000) {
+		/*
+		 * enable 4-byte addressing if device supports it and
+		 * its size exceeds 16MiB.
+		 */
+		nor->addr_width = 4;
+	} else if (nor->addr_width) {
 		/* already configured from SFDP */
 	} else if (info->addr_width) {
 		nor->addr_width = info->addr_width;
-	} else if (mtd->size > 0x1000000) {
-		/* enable 4-byte addressing if the device exceeds 16MiB */
-		nor->addr_width = 4;
 	} else {
 		nor->addr_width = 3;
 	}
diff --git a/include/linux/mtd/spi-nor.h b/include/linux/mtd/spi-nor.h
index b3d360b..ff13297 100644
--- a/include/linux/mtd/spi-nor.h
+++ b/include/linux/mtd/spi-nor.h
@@ -19,6 +19,7 @@
 #define SNOR_MFR_ATMEL		CFI_MFR_ATMEL
 #define SNOR_MFR_GIGADEVICE	0xc8
 #define SNOR_MFR_INTEL		CFI_MFR_INTEL
+#define SNOR_MFR_ISSI		0x9d		/* ISSI */
 #define SNOR_MFR_ST		CFI_MFR_ST	/* ST Micro */
 #define SNOR_MFR_MICRON		CFI_MFR_MICRON	/* Micron */
 #define SNOR_MFR_MACRONIX	CFI_MFR_MACRONIX
-- 
1.9.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
