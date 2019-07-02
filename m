Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48CAF5D656
	for <lists+linux-riscv@lfdr.de>; Tue,  2 Jul 2019 20:41:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=B+2PvCUc13byEwpzzd3njEmklKZeJP8eQdm93+Yov3A=; b=VYJte+6Wm86foXURZlQjLdTwyz
	zN8Epi4gXQretdwZIwc3VXCStkVOGDJ/REJGJns6Iu4Q6HK/sv6M5kVo6b6S3wQPSER6SxcuXfvNU
	haSTxt6J7dDOf9cp58yTcujnibPOUwLcd28bcqfSCLKCv3Vj4kKtWtk6cz39usoB+2GYi7hrp+vRk
	+t+CxA1sOY2NZK65Av+gbrz8PB477LK0yK5TXy47MdGvSRKBCyHLsjyiBBHLKLKrdj02va6AGh+N3
	MH8L2zwiYnCiXTLRqBLEq5cZyRZ/RKzpchPSPM+k6Kb5ILnyq6YjqY5272qj9Je6iRmGSTPtxj8VO
	F1hfX2KQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiNiT-0004qU-Ca; Tue, 02 Jul 2019 18:41:21 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiNhY-0003yo-P9
 for linux-riscv@lists.infradead.org; Tue, 02 Jul 2019 18:40:27 +0000
Received: by mail-pf1-x444.google.com with SMTP id p184so8686684pfp.7
 for <linux-riscv@lists.infradead.org>; Tue, 02 Jul 2019 11:40:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=HLwmzLi1yfKWX7bsvh9XjKbOb6xGSrI3n8VIDgMLyvM=;
 b=DhIW6pr0vFkNlDLyEZAN6uefpAl5PITwPdIKPacB4h2bOS6eUWkq5WYjyfo1gfJZb8
 FNN46uUqM6JBsXb5907IBastGSfKZzbIfgs5CX2EInHtZnLurHEzdreJSz0R4rFRkaHI
 6ZDH/R7PlUPzLjfhcRHmIYEz9EXHa/Pw632YYrZPNL3TB0PVvVI3Wr71FQKG1t+ppWwY
 ulSiEtqANx53KjSAPAoEzBvrSht9UKTzXBJgmJ+P+A6fCx44uYyAKMZbSrIXUNZ6NRRl
 JZQRIYR5WDD1SJSXJibVV1bh3rO3qg8U6wJDChIeVrI1s/BllN1JwYmZbUo9bRbRRp7C
 oDpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=HLwmzLi1yfKWX7bsvh9XjKbOb6xGSrI3n8VIDgMLyvM=;
 b=APLFnmG8ZCyMuiS4SJ4B14y6UIS5/vW0DM7EGhbuNSDCoVo5pxmG080tPNEuvUNnue
 6tLeF0RQtih4RU31LMbGy7oP0B+6BIs6nX2XF3BNZGmh65gsX6l+z3WAmvswTgOfK3pO
 K2PTItKC91edTUCsjQM+vCIyGQ9aH01AvMg8DdPOB0N4lTwbh8uiXONLR8AksGArO98T
 i9VQbGWellTRg54cD0HJ88u48/Hh5mnW3WbKqkUJPzo5/rayGZPorvDOK/4KCi7Ky0Tq
 lhkud8hNGXI78A8dpMoPYd1IijAr/Zixk7rM7JbBfkd+gZKs3lwgkOUi2j4iylAx5RUX
 TyLA==
X-Gm-Message-State: APjAAAVPWfdiH4+nL25oMwNmtC0ollvm3QVAhHdaV6tvsUuGQCNuqvaP
 OzPmGdXS2aX3HcgIacnOK20/2A==
X-Google-Smtp-Source: APXvYqw0SDghowWJigY8inIjqR03Te8MELhI4tmCPOYVFG2+hjsLypcXBgsFvLL9Lp0iyasIniV3QQ==
X-Received: by 2002:a17:90a:77c5:: with SMTP id
 e5mr6978722pjs.109.1562092824249; 
 Tue, 02 Jul 2019 11:40:24 -0700 (PDT)
Received: from buildserver-90.open-silicon.com ([114.143.65.226])
 by smtp.googlemail.com with ESMTPSA id
 e10sm15065327pfi.173.2019.07.02.11.40.20
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 02 Jul 2019 11:40:23 -0700 (PDT)
From: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
To: marek.vasut@gmail.com, tudor.ambarus@microchip.com, dwmw2@infradead.org,
 computersforpeace@gmail.com, miquel.raynal@bootlin.com, richard@nod.at,
 vigneshr@ti.com
Subject: [PATCH v7 3/4] mtd: spi-nor: add support to unlock the flash device
Date: Wed,  3 Jul 2019 00:09:04 +0530
Message-Id: <1562092745-11541-4-git-send-email-sagar.kadam@sifive.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1562092745-11541-1-git-send-email-sagar.kadam@sifive.com>
References: <1562092745-11541-1-git-send-email-sagar.kadam@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_114024_901764_04224505 
X-CRM114-Status: GOOD (  17.99  )
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

Nor device (is25wp256 mounted on HiFive unleashed Rev A00 board) from ISSI
have memory blocks guarded by block protection bits BP[0,1,2,3].
Add an identifier within the flash info structure to indicate that a
particular flash device has the fourth block protect bit (SPI_NOR_HAS_BP3).

Increase size of flash_info flags from u16 to u32 to avoid flag overflow
due SPI_NOR_HAS_BP3.
Clear block protection bits unlocks the flash memory regions.

Based on code developed by Wesley Terpstra <wesley@sifive.com>
and/or Palmer Dabbelt <palmer@sifive.com>.
https://github.com/riscv/riscv-linux/commit/c94e267766d62bc9a669611c3d0c8ed5ea26569b

spell correction: "Configuration" in spansion_quad_enable function
description.

Signed-off-by: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
---
 drivers/mtd/spi-nor/spi-nor.c | 72 ++++++++++++++++++++++++++++++++++++++++---
 include/linux/mtd/spi-nor.h   |  2 ++
 2 files changed, 70 insertions(+), 4 deletions(-)

diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
index 315eeec..4ed241d 100644
--- a/drivers/mtd/spi-nor/spi-nor.c
+++ b/drivers/mtd/spi-nor/spi-nor.c
@@ -250,7 +250,7 @@ struct flash_info {
 	u16		page_size;
 	u16		addr_width;
 
-	u16		flags;
+	u32		flags;
 #define SECT_4K			BIT(0)	/* SPINOR_OP_BE_4K works uniformly */
 #define SPI_NOR_NO_ERASE	BIT(1)	/* No erase command needed */
 #define SST_WRITE		BIT(2)	/* use SST byte programming */
@@ -279,6 +279,13 @@ struct flash_info {
 #define SPI_NOR_SKIP_SFDP	BIT(13)	/* Skip parsing of SFDP tables */
 #define USE_CLSR		BIT(14)	/* use CLSR command */
 #define SPI_NOR_OCTAL_READ	BIT(15)	/* Flash supports Octal Read */
+#define SPI_NOR_HAS_BP3		BIT(16)	/*
+					 * Flash SR has block protect bits
+					 * for lock/unlock purpose, few support
+					 * BP0-BP2 while few support BP0-BP3.
+					 * This flag identifies devices that
+					 * support BP3 bit.
+					 */
 
 	/* Part specific fixup hooks. */
 	const struct spi_nor_fixups *fixups;
@@ -1461,7 +1468,55 @@ static int macronix_quad_enable(struct spi_nor *nor)
 }
 
 /**
- * spansion_quad_enable() - set QE bit in Configuraiton Register.
+ * issi_unlock() - clear BP[0123] write-protection.
+ * @nor: pointer to a 'struct spi_nor'.
+ * @ofs: offset from which to unlock memory.
+ * @len: number of bytes to unlock.
+ *
+ * Bits [2345] of the Status Register are BP[0123].
+ * ISSI chips use a different block protection scheme than other chips.
+ * Just disable the write-protect unilaterally.
+ *
+ * Return: 0 on success, -errno otherwise.
+ */
+static int issi_unlock(struct spi_nor *nor, loff_t ofs, uint64_t len)
+{
+	int ret, val;
+	u8 mask;
+
+	if (nor->flags & SNOR_F_HAS_BP3)
+		mask = SR_BP3 | SR_BP2 | SR_BP1 | SR_BP0;
+	else
+		mask = SR_BP2 | SR_BP1 | SR_BP0;
+
+	val = read_sr(nor);
+	if (val < 0)
+		return val;
+	if (!(val & mask))
+		return 0;
+
+	write_enable(nor);
+
+	write_sr(nor, val & ~mask);
+
+	ret = spi_nor_wait_till_ready(nor);
+	if (ret)
+		return ret;
+
+	ret = read_sr(nor);
+	if (ret > 0 && !(ret & mask)) {
+		dev_info(nor->dev, "ISSI block protect bits cleared SR: 0x%x\n",
+			 ret);
+		ret = 0;
+	} else {
+		dev_err(nor->dev, "ISSI block protect bits not cleared\n");
+		ret = -EINVAL;
+	}
+	return ret;
+}
+
+/**
+ * spansion_quad_enable() - set QE bit in Configuration Register.
  * @nor:	pointer to a 'struct spi_nor'
  *
  * Set the Quad Enable (QE) bit in the Configuration Register.
@@ -1859,8 +1914,10 @@ static int sr2_bit7_quad_enable(struct spi_nor *nor)
 			SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
 	{ "is25wp256", INFO(0x9d7019, 0, 64 * 1024, 1024,
 			SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
-			SPI_NOR_4B_OPCODES)
-			.fixups = &is25lp256_fixups },
+			SPI_NOR_4B_OPCODES | SPI_NOR_HAS_LOCK | SPI_NOR_HAS_TB |
+			SPI_NOR_HAS_BP3)
+			.fixups = &is25lp256_fixups
+	},
 	/* Macronix */
 	{ "mx25l512e",   INFO(0xc22010, 0, 64 * 1024,   1, SECT_4K) },
 	{ "mx25l2005a",  INFO(0xc22012, 0, 64 * 1024,   4, SECT_4K) },
@@ -4110,6 +4167,13 @@ int spi_nor_scan(struct spi_nor *nor, const char *name,
 		nor->flash_is_locked = stm_is_locked;
 	}
 
+	/* NOR protection support for ISSI chips */
+	if (JEDEC_MFR(info) == SNOR_MFR_ISSI &&
+	    info->flags & SPI_NOR_HAS_LOCK &&
+	    info->flags & SPI_NOR_HAS_BP3) {
+		nor->flash_unlock = issi_unlock;
+	}
+
 	if (nor->flash_lock && nor->flash_unlock && nor->flash_is_locked) {
 		mtd->_lock = spi_nor_lock;
 		mtd->_unlock = spi_nor_unlock;
diff --git a/include/linux/mtd/spi-nor.h b/include/linux/mtd/spi-nor.h
index b0e42b3..f6fa70f 100644
--- a/include/linux/mtd/spi-nor.h
+++ b/include/linux/mtd/spi-nor.h
@@ -127,6 +127,7 @@
 #define SR_BP0			BIT(2)	/* Block protect 0 */
 #define SR_BP1			BIT(3)	/* Block protect 1 */
 #define SR_BP2			BIT(4)	/* Block protect 2 */
+#define SR_BP3			BIT(5)	/* Block protect 3 */
 #define SR_TB			BIT(5)	/* Top/Bottom protect */
 #define SR_SRWD			BIT(7)	/* SR write protect */
 /* Spansion/Cypress specific status bits */
@@ -244,6 +245,7 @@ enum spi_nor_option_flags {
 	SNOR_F_BROKEN_RESET	= BIT(6),
 	SNOR_F_4B_OPCODES	= BIT(7),
 	SNOR_F_HAS_4BAIT	= BIT(8),
+	SNOR_F_HAS_BP3		= BIT(9),
 };
 
 /**
-- 
1.9.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
