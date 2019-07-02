Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E35025D652
	for <lists+linux-riscv@lfdr.de>; Tue,  2 Jul 2019 20:40:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=36PUPNbl6dmFkd/7RyDbcxbNWvVwr4TdoDzVyD2liRw=; b=nFu2XViuy5Hl4+jbBu08moHpOV
	1zIyplykU3R3LhvLqSFRWGC5e9j624L0XF9qLQMGw/IJ4n+5HqgFOFEc2WiO05MZYbasCafbzQlpS
	vFGRfi22Dv+F2uWIUTJYim/QJnCyUmUzhEsFIRtpsAZu8AaXZSIEIgJLRYncFTVw6DguEUp4IDgnG
	c823jMr5PMeBtVM+8Y+yCri1pya8kufQxCNlCMHUwmbKMsN2kcDCpclriazkc0+vV8SbgTcphsM5a
	PU/PRt+WeZ6KLB8FHYpKJkrC3Q5sir8bHNXcqgI0NJi/m6ESR52kTYlzK/ldeo9Dtf3LrUh/jMU/0
	HQVsu7fA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiNhq-0004IG-Ge; Tue, 02 Jul 2019 18:40:42 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiNhQ-0003g9-5Z
 for linux-riscv@lists.infradead.org; Tue, 02 Jul 2019 18:40:18 +0000
Received: by mail-pf1-x444.google.com with SMTP id r1so8681705pfq.12
 for <linux-riscv@lists.infradead.org>; Tue, 02 Jul 2019 11:40:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Y+CmxvfTHNmkdcHZerrxb2wPdBc38Gq6FdKZioHxbqE=;
 b=kP2+RMySSYi0s9bLP+JPIjdlGB7GP0IyPMEzIP3Nw8BtM33CdAP+p6Xn577lTaKdlp
 V+w3kPeb5i+UGKJakJaQOQVeum5kY/mqq6YHOduVMyUHDmWPutdGc233cDaOEIVLqvfP
 7rqMmNJlpWAzrndk+vQFCzTnq/8RJ1BWWLOR6qdg5VOAK7H//4nxXEYWAzm8ya9l2TxX
 HC2zk1EAPyr93XGjNK/kAyFGXQYgubDB5b6TZ5Z3U1fXC/ygMrr6LgOA0DoIrxaw0NmS
 eU9yK8CmXKmxzJ26PaclixrkwaWWf8W0UdGbk3wJXKRICVUR2zQqDB2OwmCXDVkGQ/ip
 XvDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Y+CmxvfTHNmkdcHZerrxb2wPdBc38Gq6FdKZioHxbqE=;
 b=Gm6pdY0ty0+NekAup0Ky4Ad3WjuVO4OSLjuDKGiSVs03SlTwwjEfWkexHj+/qlSPLF
 jvULmLLkNSmjfZ7JU9q8HuGiSI39taQrQQoFIFOUVmHRAOptFGULK2oP2trDO4FggiyB
 Ho/OLKzkIsz6OFoMFVlKFFBgySjT+HqeFLaePH3iojSPKJKcujjwWzSPeCn8DaDjK4kE
 sholjNq03c72RrrmXqxyIWKS5kRb7W5k/4vUHVZHR99PPS0mOezgP9ARdiWET1vHr5bE
 9Z5adPiS8oVLCRshXoI063c5nzKRL6Qt9Dcx3OvEJc93GICVdx5z43QODOywY5aqVXHe
 lYuQ==
X-Gm-Message-State: APjAAAVrYZ6Um2Xd4Y+EGFLPCiXqfa29XRP9U+5tOLzAC5rCBvgy1NVD
 nxnrEuaP4eZ2N87XJ1hXLer/aA==
X-Google-Smtp-Source: APXvYqwGMFL+2bJhWMoeLMIUPikC9EIj+4FMNu3+vEguV2Ru2oTeOyZJqNVCOTuD3VLHeGb+B2sKMg==
X-Received: by 2002:a63:dc50:: with SMTP id f16mr32511540pgj.447.1562092811827; 
 Tue, 02 Jul 2019 11:40:11 -0700 (PDT)
Received: from buildserver-90.open-silicon.com ([114.143.65.226])
 by smtp.googlemail.com with ESMTPSA id
 e10sm15065327pfi.173.2019.07.02.11.40.07
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 02 Jul 2019 11:40:11 -0700 (PDT)
From: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
To: marek.vasut@gmail.com, tudor.ambarus@microchip.com, dwmw2@infradead.org,
 computersforpeace@gmail.com, miquel.raynal@bootlin.com, richard@nod.at,
 vigneshr@ti.com
Subject: [PATCH v7 1/4] mtd: spi-nor: add support for is25wp256
Date: Wed,  3 Jul 2019 00:09:02 +0530
Message-Id: <1562092745-11541-2-git-send-email-sagar.kadam@sifive.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1562092745-11541-1-git-send-email-sagar.kadam@sifive.com>
References: <1562092745-11541-1-git-send-email-sagar.kadam@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_114016_226684_F55B64B6 
X-CRM114-Status: GOOD (  12.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
---
 drivers/mtd/spi-nor/spi-nor.c | 9 ++++++++-
 include/linux/mtd/spi-nor.h   | 1 +
 2 files changed, 9 insertions(+), 1 deletion(-)

diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
index e3a28c0..971f0f3 100644
--- a/drivers/mtd/spi-nor/spi-nor.c
+++ b/drivers/mtd/spi-nor/spi-nor.c
@@ -1857,7 +1857,10 @@ static int sr2_bit7_quad_enable(struct spi_nor *nor)
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
@@ -3687,6 +3690,10 @@ static int spi_nor_init_params(struct spi_nor *nor,
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
index b3d360b..b0e42b3 100644
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
