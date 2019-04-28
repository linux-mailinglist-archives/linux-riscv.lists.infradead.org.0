Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18187B652
	for <lists+linux-riscv@lfdr.de>; Sun, 28 Apr 2019 20:10:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=vkqRDY1vTUmhmFRSdJ8tzYxSHvvUhbV2nzpdZJFIsQk=; b=GlVox3TmJCZLxV2eF8m48iJM7d
	NNvMSXWw+ab3COdSAB/ueBwPnUlk3xNjw2jza/IAp+sLSuuagzyXg8vzRwb7qa+2eIcUmmF/fe0Sq
	DnCI8lNCg1xr1jbZ7UVwDBYGMFY5gVQRMYjX9DlFhtAKNHVEVL+oCeJTUNRwTqBkyFSBuW0wwqIzV
	sZoT737TyraU2AD+vbEwiQg5knpeYO2kfATa0egjL0B0lbR7/8YVRnTFl9e5bjNAwaPd/4Wxhawd9
	Z2WMhs3lE3YJ9Wf26xofcbuUyG4XWsYpOufEfblO4YOrC8Y00dyBEJ9Q/kUCNCDG93SPQQ93G/B+C
	ROGBQxgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKoFY-0005Af-Bk; Sun, 28 Apr 2019 18:10:04 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKoFO-00051n-KF
 for linux-riscv@lists.infradead.org; Sun, 28 Apr 2019 18:10:00 +0000
Received: by mail-pg1-x544.google.com with SMTP id c13so3095465pgt.1
 for <linux-riscv@lists.infradead.org>; Sun, 28 Apr 2019 11:09:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=3oA6xsWkMzW8lhwed6XL1LWLbuI401osDXa7Y5e4Ugw=;
 b=BhzA6dOb3wKoCsXuMCvfUbj5goqhFsUESrXRkMrNCJiUCA6wI0b2PkAr5bsPeFe7CQ
 1VKTvjFM/RyCZV6kJ3CGKHupbKoNSq+ajU3s7xVuVtp2hl5IA+kLiV24UB89iAtJc/GL
 k5537kLMn8GDFWmIo+zvQr6fsab3hLl/M+WIWwOmdGQ1CaBGTmTA9Tm7XWy4qV6wTtI1
 dMKPEhM3tMOwmpVANSOsuxPqcEo33BwMrPW1PXsmQJyih0oLYd9GFHdxNbT9dlqYEqDe
 omk09bFmQShHaOxjNGt/Wzn/f8JQq2oh23sOBlLa/apFIqtq7db1btRBVbM2c/QRjIVM
 AEtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=3oA6xsWkMzW8lhwed6XL1LWLbuI401osDXa7Y5e4Ugw=;
 b=R7470v51ruSYIkupu6fZHa+A0wrgp5nc8db7wASjQEuzSazWuZ7yW+R3fp15zCuOt3
 goEHkVwHEIj8N99pbFWtkBR5pSr2qXSBFhetebIRfstrxKefIJkWP05JnyEKKBohIdV2
 tnUg7HBnDZP2Btlx4ZlEz3g8PFvJIX8qk15UGNxFD1VDLWrKb92TS4DP/L17tcsTRZSH
 BngWy5prAHGCmyWq0n6YwzOWbcl1k23/VX7fMx8rnK5qG7i7nZYjm6kZlfGEz82j1UXG
 yjKXYXo6lsH1WPBljC4I8AN/fjO1y2IIs6mIszLQoJjcAMClYl8P3DfRE6e4+659HDLG
 YtLg==
X-Gm-Message-State: APjAAAU2PNdKm+R6LnIX1iZESJSUDbMTg5319TnJn4lqpktJuTFGX1ZR
 5QIKc8yTnkXSiCVgOVlDnRlPMg==
X-Google-Smtp-Source: APXvYqwgLdSdvicG3hPqn/pwFsyTDykIPuPwRED2PxbP9C+HiksUXNY7i90q+fAo5WyG/BdNDlcToQ==
X-Received: by 2002:a63:5014:: with SMTP id e20mr30993446pgb.312.1556474993621; 
 Sun, 28 Apr 2019 11:09:53 -0700 (PDT)
Received: from buildserver-90.open-silicon.com ([114.143.65.226])
 by smtp.googlemail.com with ESMTPSA id l2sm36177136pgl.2.2019.04.28.11.09.49
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sun, 28 Apr 2019 11:09:53 -0700 (PDT)
From: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
To: marek.vasut@gmail.com, tudor.ambarus@microchip.com, dwmw2@infradead.org,
 computersforpeace@gmail.com, bbrezillon@kernel.org, richard@nod.at
Subject: [PATCH v2 2/3] mtd: spi-nor: add support to unlock flash device.
Date: Sun, 28 Apr 2019 23:39:15 +0530
Message-Id: <1556474956-27786-3-git-send-email-sagar.kadam@sifive.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1556474956-27786-1-git-send-email-sagar.kadam@sifive.com>
References: <1556474956-27786-1-git-send-email-sagar.kadam@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_110955_213164_DD415D65 
X-CRM114-Status: GOOD (  17.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
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

Nor device (is25wp256 mounted on HiFive unleashed Rev A00 board) from ISSI
have memory blocks guarded by block protection bits BP[0,1,2,3].

Clearing block protection bits,unlocks the flash memory regions
The unlock scheme is registered during nor scans.

Signed-off-by: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
---
 drivers/mtd/spi-nor/spi-nor.c | 48 ++++++++++++++++++++++++++++++++++++++++++-
 include/linux/mtd/spi-nor.h   |  1 +
 2 files changed, 48 insertions(+), 1 deletion(-)

diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
index c5408ed..81c7b3e 100644
--- a/drivers/mtd/spi-nor/spi-nor.c
+++ b/drivers/mtd/spi-nor/spi-nor.c
@@ -1461,6 +1461,46 @@ static int macronix_quad_enable(struct spi_nor *nor)
 }
 
 /**
+ * issi_unlock() - clear BP[0123] write-protection.
+ * @nor: pointer to a 'struct spi_nor'
+ * @ofs: offset from which to unlock memory
+ * @len: number of bytes to unlock
+ * Bits [2345] of the Status Register are BP[0123].
+ * ISSI chips use a different block protection scheme than other chips.
+ * Just disable the write-protect unilaterally.
+ * Return: 0 on success, -errno otherwise.
+ */
+static int issi_unlock(struct spi_nor *nor, loff_t ofs, uint64_t len)
+{
+	int ret, val;
+	u8 mask = SR_BP0 | SR_BP1 | SR_BP2 | SR_BP3;
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
+		dev_info(nor->dev,
+			"ISSI Block Protection Bits cleared SR=0x%x", ret);
+		return 0;
+	} else {
+		dev_err(nor->dev, "ISSI Block Protection Bits not cleared\n");
+		return -EINVAL;
+	}
+}
+
+/**
  * spansion_quad_enable() - set QE bit in Configuraiton Register.
  * @nor:	pointer to a 'struct spi_nor'
  *
@@ -1836,7 +1876,7 @@ static int sr2_bit7_quad_enable(struct spi_nor *nor)
 			SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
 	{ "is25wp256", INFO(0x9d7019, 0, 64 * 1024, 1024,
 			SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
-			SPI_NOR_4B_OPCODES)
+			SPI_NOR_4B_OPCODES | SPI_NOR_HAS_LOCK)
 	},
 
 	/* Macronix */
@@ -4078,6 +4118,12 @@ int spi_nor_scan(struct spi_nor *nor, const char *name,
 		nor->flash_is_locked = stm_is_locked;
 	}
 
+	/* NOR protection support for ISSI chips */
+	if (JEDEC_MFR(info) == SNOR_MFR_ISSI ||
+	    info->flags & SPI_NOR_HAS_LOCK) {
+		nor->flash_unlock = issi_unlock;
+
+	}
 	if (nor->flash_lock && nor->flash_unlock && nor->flash_is_locked) {
 		mtd->_lock = spi_nor_lock;
 		mtd->_unlock = spi_nor_unlock;
diff --git a/include/linux/mtd/spi-nor.h b/include/linux/mtd/spi-nor.h
index ff13297..9a7d719 100644
--- a/include/linux/mtd/spi-nor.h
+++ b/include/linux/mtd/spi-nor.h
@@ -127,6 +127,7 @@
 #define SR_BP0			BIT(2)	/* Block protect 0 */
 #define SR_BP1			BIT(3)	/* Block protect 1 */
 #define SR_BP2			BIT(4)	/* Block protect 2 */
+#define SR_BP3			BIT(5)	/* Block protect 3 for ISSI device*/
 #define SR_TB			BIT(5)	/* Top/Bottom protect */
 #define SR_SRWD			BIT(7)	/* SR write protect */
 /* Spansion/Cypress specific status bits */
-- 
1.9.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
