Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DCD7B67AA
	for <lists+linux-riscv@lfdr.de>; Wed, 18 Sep 2019 18:02:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=wgg1IiLr3DXEOAeqES3jL4Wi+c+CW3cFDkiY0h2DdPM=; b=QhujajjuOlag6/gPKpC3YpsoQj
	IvP21O9T2WahuzmEL9t8xeJDw+1SlTauz5u+sRVAnQvzR62klS0/x1/iRGVbfKcDJ0eNjYYKJstes
	xON9NZmqJra5yjJTRIGgs8LTSIfilZ5yvBOGR5GrXU9mlHXO/oZo24WmlAdaCUai2cnhBh8YsyxXj
	crIquBdNJn0P/1S10fVcmEW9NcIVEXDwcXK6FncqWbj6LokNBOH7Wv3wF1jsTsfh+nb6mhUnqjotr
	BCnqM067m3vvLzH3h8MZG5WrttI5ELM01lPjgFPYOLs7DY+aaze2wYgux03Mzkbg9onffZ0+zp14M
	U5aH3tvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAcPv-0007hW-BP; Wed, 18 Sep 2019 16:02:55 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAcPa-0007U8-0W
 for linux-riscv@lists.infradead.org; Wed, 18 Sep 2019 16:02:35 +0000
Received: by mail-pf1-x443.google.com with SMTP id q21so244080pfn.11
 for <linux-riscv@lists.infradead.org>; Wed, 18 Sep 2019 09:02:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=x/hOHLuin26MPrIrFSxVodQBfjvOevhYq+l2qnUtb4s=;
 b=NLPFJ4H0KYYWxV3pQaf6UPLJT5yOe2Z9mc8KjdbFMglhBxFeEQqRaXBFL1FuONKFuP
 LtZ8e4sGexom6Wfnf4zMIOCuNksF3PxbFOEggvk84aA483J2v8FXBtq9HKu1SO+XhEHY
 K7XZwjXvtTf01Gsc2jdjCc+BuepCKtwVksaw6Pwc8sGUyDYFy36zzKCo/eL/DZur+pLK
 u2zovlIoxYeTiAR6ZKEAwG6BDwhQvTE2Y6d7YxdWerUzzV2ZgZ9dcHLSnyU30fYkrfHU
 wd29GJsVRBrNGPgKc98MJq//C0IiIP+VM5nQrCjIxWOVNkA6wpJL8+9SrfgZowQ4xRh+
 MNpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=x/hOHLuin26MPrIrFSxVodQBfjvOevhYq+l2qnUtb4s=;
 b=bADxphaajC5gl3TidniIk4GIWfSv8RoVGmvmUOWtaEvgaNfnLkQEuG5KALbU2N1scB
 lqio/03D7VP+RsKQ+3vPzFTaoBJjcNOZ5oYy54BR957fG+Jw7OJGuWBXOI7Ed7Ta7KgI
 vLfM6Kv7XKMm7jZcN4Igw7g8yUcrqZpz9wRJvG/7Q2I/C5gmCNREmcWM16Flsb+huRUC
 lmIo/NdjBriiQcqCmt8RXF6JM9OPTiuUtyPefKMWTNmDyQpq8HbK29k6ttlPuxh7J0h4
 Cqob7CU1M1FpZtN9M3VHqUR6IJH0Id+o5YZkFxm92J3APvUkILxJMM5bi4UH5gnll2vn
 bJgQ==
X-Gm-Message-State: APjAAAVSCuOZjMk0wrQ2pQueFTig+Lby0mwL2UEi14ofhLkva4wJoSko
 q2IwDtLZ11OIkFaQpb6UBSFooQ==
X-Google-Smtp-Source: APXvYqyTb59K5tEHA9jKBr9DDK6Fol9hLY0ADaMXEbmWN9Vrrd8hcj+iGvecx5mGfHulwlg9Srchew==
X-Received: by 2002:a65:5543:: with SMTP id t3mr4674553pgr.242.1568822553580; 
 Wed, 18 Sep 2019 09:02:33 -0700 (PDT)
Received: from buildserver-90.open-silicon.com ([114.143.65.226])
 by smtp.googlemail.com with ESMTPSA id g12sm9872379pfb.97.2019.09.18.09.02.29
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 18 Sep 2019 09:02:33 -0700 (PDT)
From: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
To: marek.vasut@gmail.com, tudor.ambarus@microchip.com, dwmw2@infradead.org,
 computersforpeace@gmail.com, miquel.raynal@bootlin.com, richard@nod.at,
 vigneshr@ti.com
Subject: [PATCH v9 1/2] mtd: spi-nor: add support for is25wp256
Date: Wed, 18 Sep 2019 21:31:44 +0530
Message-Id: <1568822505-19297-2-git-send-email-sagar.kadam@sifive.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1568822505-19297-1-git-send-email-sagar.kadam@sifive.com>
References: <1568822505-19297-1-git-send-email-sagar.kadam@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_090234_287581_D25DABE5 
X-CRM114-Status: GOOD (  11.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
table.

Based on code originally written by Wesley Terpstra <wesley@sifive.com>
and/or Palmer Dabbelt <palmer@sifive.com>
https://github.com/riscv/riscv-linux/commit/c94e267766d62bc9a669611c3d0c8ed5ea26569b

Signed-off-by: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
Reviewed-by: Vignesh Raghavendra <vigneshr@ti.com>
---
 drivers/mtd/spi-nor/spi-nor.c | 9 ++++++++-
 include/linux/mtd/spi-nor.h   | 1 +
 2 files changed, 9 insertions(+), 1 deletion(-)

diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
index 654bdc4..003c1c7 100644
--- a/drivers/mtd/spi-nor/spi-nor.c
+++ b/drivers/mtd/spi-nor/spi-nor.c
@@ -1946,7 +1946,10 @@ static int spi_nor_spansion_clear_sr_bp(struct spi_nor *nor)
 			SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
 	{ "is25wp128",  INFO(0x9d7018, 0, 64 * 1024, 256,
 			SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
-
+	{ "is25wp256", INFO(0x9d7019, 0, 64 * 1024, 512,
+			SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
+			SPI_NOR_4B_OPCODES)
+	},
 	/* Macronix */
 	{ "mx25l512e",   INFO(0xc22010, 0, 64 * 1024,   1, SECT_4K) },
 	{ "mx25l2005a",  INFO(0xc22012, 0, 64 * 1024,   4, SECT_4K) },
@@ -3776,6 +3779,10 @@ static int spi_nor_init_params(struct spi_nor *nor,
 		case SNOR_MFR_ST:
 		case SNOR_MFR_MICRON:
 			break;
+		case SNOR_MFR_ISSI:
+			params->quad_enable = macronix_quad_enable;
+			break;
+
 
 		default:
 			/* Kept only for backward compatibility purpose. */
diff --git a/include/linux/mtd/spi-nor.h b/include/linux/mtd/spi-nor.h
index 9f57cdf..5d6583e 100644
--- a/include/linux/mtd/spi-nor.h
+++ b/include/linux/mtd/spi-nor.h
@@ -21,6 +21,7 @@
 #define SNOR_MFR_INTEL		CFI_MFR_INTEL
 #define SNOR_MFR_ST		CFI_MFR_ST	/* ST Micro */
 #define SNOR_MFR_MICRON		CFI_MFR_MICRON	/* Micron */
+#define SNOR_MFR_ISSI		0x9d		/* ISSI */
 #define SNOR_MFR_MACRONIX	CFI_MFR_MACRONIX
 #define SNOR_MFR_SPANSION	CFI_MFR_AMD
 #define SNOR_MFR_SST		CFI_MFR_SST
-- 
1.9.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
