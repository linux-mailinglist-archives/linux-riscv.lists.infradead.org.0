Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 969DAB64F
	for <lists+linux-riscv@lfdr.de>; Sun, 28 Apr 2019 20:09:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Yx78ZmVeMYP/bfRUkSc0/yzeakEWLhHY2DkIY52epeo=; b=qerwwUxLQnmdqfFIgZ1xk5I8ha
	cH1h9DIGPDvbf2roML1zo3qVkUuRHr2btANHFXjD63Ng5qq/gL20Ivqoe6VO+9ajvtE+In66gpjWz
	usLCElNIIFB7xBoLBqqWRa2gMyRi7fJqJLypaHb1+7MxiE1jy/CKa9zxoFm8gtNOKiftts2daCKMK
	40fkwoOzdTJrFahdXGvBwK06FR78vi6/HIjOBtsOQ3+VrVhzgA/AgEYYDlfBhys95GMUIEcim5J4W
	OvIwsQrs2kM3Z5hJ95+5S8kTpJ2nsV04gJ0nlQZdkXXY1zw9G0hbRNvmzl+gVWYQ3hJqN9zYq4fFB
	50oPaLDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKoFG-0004pk-Fl; Sun, 28 Apr 2019 18:09:46 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKoFB-0004it-7y
 for linux-riscv@lists.infradead.org; Sun, 28 Apr 2019 18:09:44 +0000
Received: by mail-pf1-x442.google.com with SMTP id z26so325052pfg.6
 for <linux-riscv@lists.infradead.org>; Sun, 28 Apr 2019 11:09:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=BvubvJYb+FM7vShur/HONzMPhp7VVdC41h6xYnez19Q=;
 b=cliCmWriOH8BtZerv3/PhzAYBgAHmAn/BrP/6O6H+pa35eUYh2i5OzyIRqQsk5eo5Z
 P695cS5aoldg7gH2IB4/TVZ2EE5BQnE5UIsP3kFI4du5gnfw1ie8ZBkz70nEO9OyTmTv
 zpFrWgo9zForFBTLCynBx7TQsKvB+aStTgjaKALxhQDnVhnYABmLlW3YNGhIcVlQB28h
 hnvkBC6SInKUzdjOL06dj41rIthKqG1Pm0Zn6qKTlq5bcfAH2xdPt9/PfumM9C3iUbNL
 Hfw792S27EGV0sNVP7J83DWZLgWeHIdQ45gVN7SPF62aiW8tHRDzs7TAAIgRsVGf7c+3
 F7DA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=BvubvJYb+FM7vShur/HONzMPhp7VVdC41h6xYnez19Q=;
 b=JovkQq10pwm6iDe7cpLimG4LPAvXzb801iY7Nh9P0KU72MEYn95c5cTbq6Duy8+5uT
 PgFBkFqBarDEDlXvrsYaeyOVy86Yz0nGzV69poJz2RLVQXsN1uOe61q65xINg3rIvct9
 w24mNCOHiM8O3nkO+6dxVEvmW90UsHi2Nc0XOWlmUPv4aZ9j4thgxLbDARgeG8Ruhiwd
 uE7n2/mJZKDanqPaLq2xBX0jbdYQOTtU89OlKyNSyeUwX/1YqK6/FfHLQba/6/LE4u7X
 96nXhC+TSF4mtdH/UlmHdY+mpqch9lKxFBefkOKwKrtdpHKvT2uSUrPYBMlh3eq/nQa0
 vtPg==
X-Gm-Message-State: APjAAAW9mB/V+wDpiZYEZ7gSgYTLkhHv+1mvOamYr/+B8MhwNnj5lzIj
 QkDcDr8/razFJ/LcGNlRIthaGA==
X-Google-Smtp-Source: APXvYqxd7cVuYNl2H0/5QdgaiNhQRkrPL2bmDL+SM8n7GtSp+XzhH/ei7GN3FQudzAjiRD0XEDH60Q==
X-Received: by 2002:a65:5046:: with SMTP id k6mr21256885pgo.325.1556474980663; 
 Sun, 28 Apr 2019 11:09:40 -0700 (PDT)
Received: from buildserver-90.open-silicon.com ([114.143.65.226])
 by smtp.googlemail.com with ESMTPSA id l2sm36177136pgl.2.2019.04.28.11.09.36
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sun, 28 Apr 2019 11:09:40 -0700 (PDT)
From: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
To: marek.vasut@gmail.com, tudor.ambarus@microchip.com, dwmw2@infradead.org,
 computersforpeace@gmail.com, bbrezillon@kernel.org, richard@nod.at
Subject: [PATCH v2 1/3] mtd: spi-nor: add support for is25wp256
Date: Sun, 28 Apr 2019 23:39:14 +0530
Message-Id: <1556474956-27786-2-git-send-email-sagar.kadam@sifive.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1556474956-27786-1-git-send-email-sagar.kadam@sifive.com>
References: <1556474956-27786-1-git-send-email-sagar.kadam@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_110941_749510_8B7C8EFA 
X-CRM114-Status: GOOD (  13.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: palmer@sifive.com, linux-kernel@vger.kernel.org,
 linux-mtd@lists.infradead.org, Sagar Shrikant Kadam <sagar.kadam@sifive.com>,
 paul.walmsley@sifive.com, linux-riscv@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Update spi_nor_id tablet for is25wp256 (32MB)device from ISSI,
present on HiFive Unleashed dev board (Rev: A00).

Set method to enable quad mode for ISSI device in flash parameters
table.

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
