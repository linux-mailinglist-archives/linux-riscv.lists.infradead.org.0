Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8CBD8B8B8
	for <lists+linux-riscv@lfdr.de>; Tue, 13 Aug 2019 14:40:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=I2EamTf6q8kJ6Tl85BAdOvcpSwC7aIibI5D8FRvbTk0=; b=eFjaRPL+Zw5qtR5H+JINm38RPj
	hKJRGu86YyHVHdVqdV8q3ssS/+ILIIRn50O1a7bppyXq0hc0rV37/xB7PJDPv2rt8SGxhDh7xHYU0
	GYTz7SE/W+Ul66+Yz3ZUq3WY2NwHk6v3OYwqErlnU7oKiaqQXCk5odHt8XRS9d3nBrKjQ3/frTUSQ
	/UM7ReRv1E8y4QRDNk5rtbOSydpCugh0/YLdQ/emKIUKJ7flf9X3lLXZiocQbo2YI36b/LWbOAHhV
	XC2lD4Y9ntzdOB6Zy/I9Vr9a6s8F4sLIBSxfa6ExVVppN+iti5nckCKlphrgbCzuo6UPOe5VWwWsI
	uTvgFGPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxW6Q-0002H4-5e; Tue, 13 Aug 2019 12:40:38 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxW66-0001sk-Jm
 for linux-riscv@lists.infradead.org; Tue, 13 Aug 2019 12:40:20 +0000
Received: by mail-pl1-x644.google.com with SMTP id w24so49231503plp.2
 for <linux-riscv@lists.infradead.org>; Tue, 13 Aug 2019 05:40:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=pgvdxjtpuz55YPGQB23L2WMX3O76fZRFK/d5NtZERoU=;
 b=Eji9QCzX6NDgNFeFnxj9rUaLJ6FyD9qbUp2fmHutJvjmJL8oz/oWGOEImUBp2qtzw2
 ghphYL3aC6mXnLbOGCvXFQjrVBDpirAncbRbGmdUEa7XYLNB0D+JhD51PifiQw0pgHLw
 q1SDWN7dG9Glq6n0BucEoRp8nl9RhPMvVmD/hR9H22W/jI1JPRuB5KVf5Jet9+mUpmOT
 /GhnmfRF/XGkkEgiLzboxS9VhOmSkpz7xq5ZezpOIKH+oS6LIxMPzLR7H8po8iEM4nWL
 KuuymjgKjvPoiInOFUkLUoUWoDAkYK6WXeZiPva9HxTsOLsM0oeJH4zBeiBQoNloEkqW
 DKnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=pgvdxjtpuz55YPGQB23L2WMX3O76fZRFK/d5NtZERoU=;
 b=geZK/QT6xr16LWzfwoyd8HpEoSBuVJWsKPa3ejcTYMbhOvr4RIFOrjEmLXSbWbON8Y
 ZIn4bE4y8WCQBEqcoOrZ53QTwMG3z2nAXOw5sTa1fIA3MVBFbAREvUcvQwjbpyeOFzoN
 aWRFhz/ulDlFsPn4IPWDTh/R9SO3YRJ2HLbVjnpU+byE50qJjudF7w1+y4Fz+sxTLblO
 gVt7nqfIifXmBYeTy0U01BqyOFjKY4bkAzZZDDyd4upKjhntf4OrLBP2uCHrwcIGX9rx
 WG9kX9M1gwT6eD9IhHK4OiovARU73ixHEGuBvD74y7rgZcum4CJphgl9P/xqZAV/v1KA
 e5/g==
X-Gm-Message-State: APjAAAWJjeFJPl3TNMhSsSdScZfoWNhp308OGVD680mRwzidNFanXG9b
 /xSlisLUEXWQBJZ2saVziN/hvQ==
X-Google-Smtp-Source: APXvYqxWcTCU0kgc6G/GYUMZlXWQ2LubbF4dViI0P+GouGc1oCNVdP/GEvRTcKm+kT7ludfGw87CVg==
X-Received: by 2002:a17:902:20cc:: with SMTP id
 v12mr24385277plg.188.1565700017042; 
 Tue, 13 Aug 2019 05:40:17 -0700 (PDT)
Received: from buildserver-90.open-silicon.com ([114.143.65.226])
 by smtp.googlemail.com with ESMTPSA id
 v145sm14758467pfc.31.2019.08.13.05.40.12
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 13 Aug 2019 05:40:16 -0700 (PDT)
From: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
To: marek.vasut@gmail.com, tudor.ambarus@microchip.com, dwmw2@infradead.org,
 computersforpeace@gmail.com, miquel.raynal@bootlin.com, richard@nod.at,
 vigneshr@ti.com
Subject: [PATCH v8 1/4] mtd: spi-nor: add support for is25wp256
Date: Tue, 13 Aug 2019 18:08:12 +0530
Message-Id: <1565699895-4770-2-git-send-email-sagar.kadam@sifive.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1565699895-4770-1-git-send-email-sagar.kadam@sifive.com>
References: <1565699895-4770-1-git-send-email-sagar.kadam@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_054018_672859_070F18DD 
X-CRM114-Status: GOOD (  11.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
index 03cc788..6635127 100644
--- a/drivers/mtd/spi-nor/spi-nor.c
+++ b/drivers/mtd/spi-nor/spi-nor.c
@@ -1946,7 +1946,10 @@ static int spi_nor_spansion_clear_sr_bp(struct spi_nor *nor)
 			SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
 	{ "is25wp128",  INFO(0x9d7018, 0, 64 * 1024, 256,
 			SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
-
+	{ "is25wp256", INFO(0x9d7019, 0, 64 * 1024, 1024,
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
