Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A3271A768
	for <lists+linux-riscv@lfdr.de>; Sat, 11 May 2019 12:08:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=sntuRStN16mBAGscxDsB7MQI+F85kHD/qk1DMvAPxQY=; b=cgC9dSdYSPaydY1ZGyxDioyyDt
	i5lmOKqQobnoTGqnYCBuNI9ITazlwf2OYmh5FoXxZ1464LaSlPcgHjwFM8H3x0Tz2B/zRnrugLxTT
	zRPYSbj5aaEZ5L22ZJtw8jDg5x5fS2Lj82+sUF7ggjyEyHGMNpJCyCHINfWPdekYctbeEK4+aQkTI
	iSH7S8HBLmtmLgLbh/GzWyVpFww5m5uEqPWWj3ULvJ+AlgRQjCVjodwoLccNxvHRTiAOusmpDOrA4
	+DdSxVLiaOUcrFLpF5jcpqYfHZ8gxa14QtNDOzmASIihRuSqamNj+emPJER8YgZY8g9nfNH6M5jAM
	mAd4wHLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPOvu-0001t1-5J; Sat, 11 May 2019 10:08:46 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPOvc-0001U1-6u
 for linux-riscv@lists.infradead.org; Sat, 11 May 2019 10:08:32 +0000
Received: by mail-pg1-x541.google.com with SMTP id j26so4232510pgl.5
 for <linux-riscv@lists.infradead.org>; Sat, 11 May 2019 03:08:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=lq4Rwbk+Emx7YmwQUYNWJJYYUQtvyvA+20pB793R1LY=;
 b=SiTnOmO5Sznr5CnkPCNnoJVJU5Gvid2yUW/23I5LhaPf+c7zw252vPCI8XCFt1fZmo
 emDGSDr4ld2Y4g4B24Y7T443ibZBpcgBrr1rJkwzTywjYNGhQAOy0k7XeIAxp1uVt2rd
 txaE9KGRqB04hsCqTzsanygmidSljfy0mQ8LmxWRQjt3Q5IuhfWS+hcaQggLWJu09tIo
 KssEG3LK8ZkIt2S/6sR2ZSdS2YQlZkkumcnHaJmfEXvKBYbf+MKKcTnpmLCtxsU1VOCO
 PuQ4gVdeDWhzoEuxevEEIK165ionec0kMb6BvKCrPiBNcd4/MIm9iFSHzrR6BCxcGyQV
 Gn0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=lq4Rwbk+Emx7YmwQUYNWJJYYUQtvyvA+20pB793R1LY=;
 b=lSaC+ZRFBjQ7pj7ZYbfDnqEoCR1ggCczpdZrSJq/MBTJF3At/jIiIPeIjU2FJ5ia6f
 a82jRX0Y1cbemZR2ABwi4v4pay+8I2xA/2f/b2EKgN0PBfXqesK+XG9aAU1SDO2rTVC1
 Pa5HXsTl8adGDxRYbrC0S+zOK/6ATrPU2MPVXHpy4iyZMjqsk3W0Fv6RxhoocxKjqBjv
 KIco5wr/u3rO4ipHc5LasV+FbNBAk3PbzNIaEBPZRdIXwl1RNKi24yDh3Kbps3cBFW0c
 UGNL3/WLfzkcMd25Az4G64zqt6K2Rg5+e+BOeUL4qg1ToFuR8ETl3kHG4E9cI5NKWKFZ
 jT3Q==
X-Gm-Message-State: APjAAAUc+lV057RYrNknzrycPDWudrJ+Jvey1HrzxXZETAUPQfc4CDS0
 GKgODOhu6pJ8mCq2dvfdSan7LQ==
X-Google-Smtp-Source: APXvYqxOdhmgPO8LBuF/0ZOWGILA5WyT0Mz/HZlaeiC4VVBR8+wmgJ7gNoTimV5uPF/AqWOurqUY4w==
X-Received: by 2002:a62:d286:: with SMTP id
 c128mr21241832pfg.159.1557569307043; 
 Sat, 11 May 2019 03:08:27 -0700 (PDT)
Received: from buildserver-90.open-silicon.com ([114.143.65.226])
 by smtp.googlemail.com with ESMTPSA id
 c129sm16951836pfg.178.2019.05.11.03.08.23
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sat, 11 May 2019 03:08:26 -0700 (PDT)
From: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
To: marek.vasut@gmail.com, tudor.ambarus@microchip.com, dwmw2@infradead.org,
 computersforpeace@gmail.com, bbrezillon@kernel.org, richard@nod.at,
 palmer@sifive.com, aou@eecs.berkeley.edu, paul.walmsley@sifive.com,
 linux-mtd@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-riscv@lists.infradead.org
Subject: [PATCH v4 1/3] mtd: spi-nor: add support for is25wp256
Date: Sat, 11 May 2019 15:38:06 +0530
Message-Id: <1557569288-19441-2-git-send-email-sagar.kadam@sifive.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1557569288-19441-1-git-send-email-sagar.kadam@sifive.com>
References: <1557569288-19441-1-git-send-email-sagar.kadam@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190511_030828_527064_BA5C6C47 
X-CRM114-Status: GOOD (  13.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-riscv@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-riscv.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-riscv/>
List-Post: <mailto:linux-riscv@lists.infradead.org>
List-Help: <mailto:linux-riscv-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=subscribe>
Cc: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Update spi_nor_id table for is25wp256 (32MB)device from ISSI,
present on HiFive Unleashed dev board (Rev: A00).

Set method to enable quad mode for ISSI device in flash parameters
table.

Based on code originally written by Wesley Terpstra <wesley@sifive.com>
and/or Palmer Dabbelt <palmer@sifive.com>
https://github.com/riscv/riscv-linux/commit/c94e267766d62bc9a669611c3d0c8ed5ea26569b

Signed-off-by: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
---
 drivers/mtd/spi-nor/spi-nor.c | 10 +++++++++-
 include/linux/mtd/spi-nor.h   |  1 +
 2 files changed, 10 insertions(+), 1 deletion(-)

diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
index fae1474..c5408ed 100644
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
@@ -3650,6 +3654,10 @@ static int spi_nor_init_params(struct spi_nor *nor,
 		case SNOR_MFR_MACRONIX:
 			params->quad_enable = macronix_quad_enable;
 			break;
+		case SNOR_MFR_ISSI:
+			params->quad_enable = macronix_quad_enable;
+			break;
+
 
 		case SNOR_MFR_ST:
 		case SNOR_MFR_MICRON:
@@ -4127,7 +4135,7 @@ int spi_nor_scan(struct spi_nor *nor, const char *name,
 	if (ret)
 		return ret;
 
-	if (nor->addr_width) {
+	if (nor->addr_width && JEDEC_MFR(info) != SNOR_MFR_ISSI) {
 		/* already configured from SFDP */
 	} else if (info->addr_width) {
 		nor->addr_width = info->addr_width;
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
