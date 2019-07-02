Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E62605D657
	for <lists+linux-riscv@lfdr.de>; Tue,  2 Jul 2019 20:41:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=rdZ59eWX2HhQKnQq52X+2o+QbU58qBJAsj+fhxltWHY=; b=D08QnhfempOxWSfMLWTgiv52WI
	g6jP9ODiId1/gkBYPm5mqvf04B6YTOS0nPeguXqTAfbj/IE5LNuVktiaE4UnR2Xc9j7tvEqw6jJCx
	0ThoND/mbrog6HaqsYTL1dPxWsCUE3QQhEaagFt34Hco4zkGn6B6jVjIt8Q6mlt9o+pr+8e1z6pYk
	0cpEqoXAjWStU77Ib0vKR5GLgKuMZJVct8zLeptVY5UgKxlyRbq2j6Fd1dbo0rSBC7trQZJENHzK2
	oG3b5Emq1S8waPWzyg6A3irLaAVlonG8YRHaxk6FV9/+tc69rx2vsy2BRCEIRcvBe+TGuUdYo/Ohr
	Go+OVT0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiNie-0004y7-Gn; Tue, 02 Jul 2019 18:41:32 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiNhe-00049S-Tc
 for linux-riscv@lists.infradead.org; Tue, 02 Jul 2019 18:40:33 +0000
Received: by mail-pl1-x643.google.com with SMTP id b7so834967pls.6
 for <linux-riscv@lists.infradead.org>; Tue, 02 Jul 2019 11:40:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=SHKZ+Dr78ZBjglrjMyozIE7l6kXYnfw/Tzo8w3y20N0=;
 b=QBuDtgrC2mwIvF5/O5BK3KQHUEiyvhQDjZgxc0hVaG/uIwS17fWsDgukQHxEQFEdG/
 oXd0eROGRjTOyCFD1loF9qknq4pSWoT5umVmgRDsi0kLZcZg6Lw0P9Qe8bkQjSbrLvqE
 gkz2kPltbl2Hb1q6Ws26BXQ8SZTxL9jnQGp7CQqR16VVgBVhXwd2xg3Yge+oV5YzKYtz
 MVfRkHJXR4apm/LfSD2srrnB8Zi88asK1MxYyJ+oousqNuDHV03fOzygA8s90C6oZdfB
 oRx85XNYmsyKY68Y+Fg8U0E0jxyYMl1vClubuhTE7Mi0mplnT+8vbj9ZPPDyVUx1bo17
 FTBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=SHKZ+Dr78ZBjglrjMyozIE7l6kXYnfw/Tzo8w3y20N0=;
 b=HSvRvrhXBhmxhYi80NWX6/O5ghRBP0Anvea6WcI1icFGifPN3LSfUBVCUqF5ojlXmr
 2LWBQaFyhbEB7tN/KyFVla/InihKF/t4TOpYFWccQgm79j+W1KHSOBlRJbole/bKL7tJ
 /5yvsbK+axqNN8n28yiIAO+/EvCull0mlrDQ/roqCeaLXmny0JrSZv3K1P1m7lG57Tep
 yit+9pXVQrh7aROwoTbdkQAsptfKxYDE4k0m/KgaWQ7ixJUxbc1H7dnAbEPvdKpMTA9z
 UUvaaASJpxWPZrl7Hf+shAVBnF+y65Hmed911VA0cZHrw+SYZ7oCG6UcpmJXXCDNMEtL
 Z7Zw==
X-Gm-Message-State: APjAAAUjOr2qHs4kvxEvniNez5MqVq4M3wjBZPNMUtx++dO52Lj7otTy
 wj4E4abb8M+B1FMrNpx9Y+Yg7Q==
X-Google-Smtp-Source: APXvYqyEKlTlCDkC6AYXm5ThpPHjdbK2woGxSlp4pDfcIrFIUsML6hBX5Pwj9rLEXBq5AYCZWq8Grg==
X-Received: by 2002:a17:902:ba8e:: with SMTP id
 k14mr36841380pls.256.1562092830223; 
 Tue, 02 Jul 2019 11:40:30 -0700 (PDT)
Received: from buildserver-90.open-silicon.com ([114.143.65.226])
 by smtp.googlemail.com with ESMTPSA id
 e10sm15065327pfi.173.2019.07.02.11.40.26
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 02 Jul 2019 11:40:29 -0700 (PDT)
From: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
To: marek.vasut@gmail.com, tudor.ambarus@microchip.com, dwmw2@infradead.org,
 computersforpeace@gmail.com, miquel.raynal@bootlin.com, richard@nod.at,
 vigneshr@ti.com
Subject: [PATCH v7 4/4] mtd: spi-nor: add locking support for is25wp256 device
Date: Wed,  3 Jul 2019 00:09:05 +0530
Message-Id: <1562092745-11541-5-git-send-email-sagar.kadam@sifive.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1562092745-11541-1-git-send-email-sagar.kadam@sifive.com>
References: <1562092745-11541-1-git-send-email-sagar.kadam@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_114031_115913_C659718C 
X-CRM114-Status: GOOD (  24.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
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

Implement a locking scheme for ISSI devices based on the stm_lock scheme.
The is25wp256  device has 4 bits for selecting the range of blocks to
be locked/protected from erase/write operations and function register
gives feasibility to select the top / bottom area for protection.
Added opcode to read and write function registers.

The current implementation enables block protection as per the table
defined in the datasheet for the is25wp256 device having erase size of
0x1000. ISSI and stm devices differ in terms of TBS (top/bottom area
protection) bits. In case of issi this bit is in Function register and
is OTP memory, so once FR bits are programmed cannot be modified.

Some common code from stm_lock/unlock implementation is extracted so that
it can be re-used for issi devices. The locking scheme has been tested on
HiFive Unleashed board Rev A00  having is25wp256 flash memory.

Signed-off-by: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
---
 drivers/mtd/spi-nor/spi-nor.c | 266 ++++++++++++++++++++++++++++++++++--------
 include/linux/mtd/spi-nor.h   |   5 +
 2 files changed, 223 insertions(+), 48 deletions(-)

diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
index 4ed241d..847a848 100644
--- a/drivers/mtd/spi-nor/spi-nor.c
+++ b/drivers/mtd/spi-nor/spi-nor.c
@@ -295,6 +295,29 @@ struct flash_info {
 
 #define JEDEC_MFR(info)	((info)->id[0])
 
+/**
+ * spi_nor_read_fr() - read function register
+ * @nor: pointer to a 'struct spi_nor'.
+ *
+ * ISSI devices have top/bottom area protection bits selection into function
+ * reg. The bits in FR are OTP. So once it's written, it cannot be changed.
+ *
+ * Return: Value in function register or negative if error.
+ */
+static int spi_nor_read_fr(struct spi_nor *nor)
+{
+	int ret;
+	u8 val;
+
+	ret = nor->read_reg(nor, SPINOR_OP_RDFR, &val, 1);
+	if (ret < 0) {
+		pr_err("error %d reading FR\n", ret);
+		return ret;
+	}
+
+	return val;
+}
+
 /*
  * Read the status register, returning its value in the location
  * Return the status register value.
@@ -1095,10 +1118,18 @@ static void stm_get_locked_range(struct spi_nor *nor, u8 sr, loff_t *ofs,
 				 uint64_t *len)
 {
 	struct mtd_info *mtd = &nor->mtd;
-	u8 mask = SR_BP2 | SR_BP1 | SR_BP0;
-	int shift = ffs(mask) - 1;
+	u8 mask = 0;
+	u8 fr = 0;
+	int shift = 0;
 	int pow;
 
+	if (nor->flags & SNOR_F_HAS_BP3)
+		mask = SR_BP3 | SR_BP2 | SR_BP1 | SR_BP0;
+	else
+		mask = SR_BP2 | SR_BP1 | SR_BP0;
+
+	shift = ffs(mask) - 1;
+
 	if (!(sr & mask)) {
 		/* No protection */
 		*ofs = 0;
@@ -1106,10 +1137,19 @@ static void stm_get_locked_range(struct spi_nor *nor, u8 sr, loff_t *ofs,
 	} else {
 		pow = ((sr & mask) ^ mask) >> shift;
 		*len = mtd->size >> pow;
-		if (nor->flags & SNOR_F_HAS_SR_TB && sr & SR_TB)
-			*ofs = 0;
-		else
-			*ofs = mtd->size - *len;
+		/* ISSI device's have top/bottom select bit in func reg */
+		if (JEDEC_MFR(nor->info) == SNOR_MFR_ISSI) {
+			fr = spi_nor_read_fr(nor);
+			if (nor->flags & SNOR_F_HAS_SR_TB && fr & FR_TB)
+				*ofs = 0;
+			else
+				*ofs = mtd->size - *len;
+		} else {
+			if (nor->flags & SNOR_F_HAS_SR_TB && sr & SR_TB)
+				*ofs = 0;
+			else
+				*ofs = mtd->size - *len;
+		}
 	}
 }
 
@@ -1136,18 +1176,108 @@ static int stm_check_lock_status_sr(struct spi_nor *nor, loff_t ofs, uint64_t le
 		return (ofs >= lock_offs + lock_len) || (ofs + len <= lock_offs);
 }
 
-static int stm_is_locked_sr(struct spi_nor *nor, loff_t ofs, uint64_t len,
-			    u8 sr)
+/*
+ * check if memory region is locked
+ *
+ * Returns false if region is locked 0 otherwise.
+ */
+static int spi_nor_is_locked_sr(struct spi_nor *nor, loff_t ofs, uint64_t len,
+				u8 sr)
 {
 	return stm_check_lock_status_sr(nor, ofs, len, sr, true);
 }
 
-static int stm_is_unlocked_sr(struct spi_nor *nor, loff_t ofs, uint64_t len,
-			      u8 sr)
+/*
+ * check if memory region is unlocked
+ *
+ * Returns false if region is locked 0 otherwise.
+ */
+static int spi_nor_is_unlocked_sr(struct spi_nor *nor, loff_t ofs, uint64_t len,
+				  u8 sr)
 {
 	return stm_check_lock_status_sr(nor, ofs, len, sr, false);
 }
 
+/**
+ * spi_nor_select_zone() - Select top area or bottom area to lock/unlock
+ * @nor: pointer to a 'struct spi_nor'.
+ * @ofs: offset from which to lock memory.
+ * @len: number of bytes to unlock.
+ * @sr: status register
+ * @tb: pointer to top/bottom bool used in caller function
+ * @op: zone selection is for lock/unlock operation. 1: lock 0:unlock
+ *
+ * Select the top area / bottom area pattern to protect memory blocks.
+ *
+ * Returns negative on errors, 0 on success.
+ */
+static int spi_nor_select_zone(struct spi_nor *nor, loff_t ofs, uint64_t len,
+			       u8 sr, bool *tb, bool op)
+{
+	int retval;
+	bool can_be_top = true, can_be_bottom = nor->flags & SNOR_F_HAS_SR_TB;
+
+	if (op) {
+		/* Select for lock zone operation */
+
+		/*
+		 * If nothing in our range is unlocked, we don't need
+		 * to do anything.
+		 */
+		if (spi_nor_is_locked_sr(nor, ofs, len, sr))
+			return 0;
+
+		/*
+		 * If anything below us is unlocked, we can't use 'bottom'
+		 * protection.
+		 */
+		if (!spi_nor_is_locked_sr(nor, 0, ofs, sr))
+			can_be_bottom = false;
+
+		/*
+		 * If anything above us is unlocked, we can't use 'top'
+		 * protection.
+		 */
+		if (!spi_nor_is_locked_sr(nor, ofs + len,
+					  nor->mtd.size - (ofs + len), sr))
+			can_be_top = false;
+	} else {
+		/* Select unlock zone */
+
+		/*
+		 * If nothing in our range is locked, we don't need to
+		 * do anything.
+		 */
+		if (spi_nor_is_unlocked_sr(nor, ofs, len, sr))
+			return 0;
+
+		/*
+		 * If anything below us is locked, we can't use 'top'
+		 * protection
+		 */
+		if (!spi_nor_is_unlocked_sr(nor, 0, ofs, sr))
+			can_be_top = false;
+
+		/*
+		 * If anything above us is locked, we can't use 'bottom'
+		 * protection
+		 */
+		if (!spi_nor_is_unlocked_sr(nor, ofs + len,
+					    nor->mtd.size - (ofs + len), sr))
+			can_be_bottom = false;
+	}
+
+	if (!can_be_bottom && !can_be_top) {
+		retval = -EINVAL;
+	} else {
+		/* Prefer top, if both are valid */
+		*tb = can_be_top;
+		retval = 1;
+	}
+
+	return retval;
+}
+
 /*
  * Lock a region of the flash. Compatible with ST Micro and similar flash.
  * Supports the block protection bits BP{0,1,2} in the status register
@@ -1185,33 +1315,20 @@ static int stm_lock(struct spi_nor *nor, loff_t ofs, uint64_t len)
 	struct mtd_info *mtd = &nor->mtd;
 	int status_old, status_new;
 	u8 mask = SR_BP2 | SR_BP1 | SR_BP0;
-	u8 shift = ffs(mask) - 1, pow, val;
+	u8 shift = ffs(mask) - 1, pow, val, ret;
 	loff_t lock_len;
-	bool can_be_top = true, can_be_bottom = nor->flags & SNOR_F_HAS_SR_TB;
 	bool use_top;
 
 	status_old = read_sr(nor);
 	if (status_old < 0)
 		return status_old;
 
-	/* If nothing in our range is unlocked, we don't need to do anything */
-	if (stm_is_locked_sr(nor, ofs, len, status_old))
+	ret = spi_nor_select_zone(nor, ofs, len, status_old, &use_top, 1);
+	if (!ret)
 		return 0;
+	else if (ret < 0)
+		return ret;
 
-	/* If anything below us is unlocked, we can't use 'bottom' protection */
-	if (!stm_is_locked_sr(nor, 0, ofs, status_old))
-		can_be_bottom = false;
-
-	/* If anything above us is unlocked, we can't use 'top' protection */
-	if (!stm_is_locked_sr(nor, ofs + len, mtd->size - (ofs + len),
-				status_old))
-		can_be_top = false;
-
-	if (!can_be_bottom && !can_be_top)
-		return -EINVAL;
-
-	/* Prefer top, if both are valid */
-	use_top = can_be_top;
 
 	/* lock_len: length of region that should end up locked */
 	if (use_top)
@@ -1265,33 +1382,19 @@ static int stm_unlock(struct spi_nor *nor, loff_t ofs, uint64_t len)
 	struct mtd_info *mtd = &nor->mtd;
 	int status_old, status_new;
 	u8 mask = SR_BP2 | SR_BP1 | SR_BP0;
-	u8 shift = ffs(mask) - 1, pow, val;
 	loff_t lock_len;
-	bool can_be_top = true, can_be_bottom = nor->flags & SNOR_F_HAS_SR_TB;
+	u8 shift = ffs(mask) - 1, pow, val, ret;
 	bool use_top;
 
 	status_old = read_sr(nor);
 	if (status_old < 0)
 		return status_old;
 
-	/* If nothing in our range is locked, we don't need to do anything */
-	if (stm_is_unlocked_sr(nor, ofs, len, status_old))
+	ret = spi_nor_select_zone(nor, ofs, len, status_old, &use_top, 0);
+	if (!ret)
 		return 0;
-
-	/* If anything below us is locked, we can't use 'top' protection */
-	if (!stm_is_unlocked_sr(nor, 0, ofs, status_old))
-		can_be_top = false;
-
-	/* If anything above us is locked, we can't use 'bottom' protection */
-	if (!stm_is_unlocked_sr(nor, ofs + len, mtd->size - (ofs + len),
-				status_old))
-		can_be_bottom = false;
-
-	if (!can_be_bottom && !can_be_top)
-		return -EINVAL;
-
-	/* Prefer top, if both are valid */
-	use_top = can_be_top;
+	else if (ret < 0)
+		return ret;
 
 	/* lock_len: length of region that should remain locked */
 	if (use_top)
@@ -1353,7 +1456,7 @@ static int stm_is_locked(struct spi_nor *nor, loff_t ofs, uint64_t len)
 	if (status < 0)
 		return status;
 
-	return stm_is_locked_sr(nor, ofs, len, status);
+	return spi_nor_is_locked_sr(nor, ofs, len, status);
 }
 
 static int spi_nor_lock(struct mtd_info *mtd, loff_t ofs, uint64_t len)
@@ -1468,6 +1571,70 @@ static int macronix_quad_enable(struct spi_nor *nor)
 }
 
 /**
+ * issi_lock() - set BP[0123] write-protection.
+ * @nor: pointer to a 'struct spi_nor'.
+ * @ofs: offset from which to lock memory.
+ * @len: number of bytes to unlock.
+ *
+ * Lock a region of the flash.Implementation is based on stm_lock
+ * Supports the block protection bits BP{0,1,2,3} in status register
+ *
+ * Return: 0 on success, -errno otherwise.
+ */
+static int issi_lock(struct spi_nor *nor, loff_t ofs, uint64_t len)
+{
+	int status_old, status_new, blk_prot;
+	u8 mask;
+	u8 shift;
+	u8 pow, ret, func_reg;
+	bool use_top;
+	loff_t lock_len;
+
+	if (nor->flags & SNOR_F_HAS_BP3)
+		mask = SR_BP3 | SR_BP2 | SR_BP1 | SR_BP0;
+	else
+		mask = SR_BP2 | SR_BP1 | SR_BP0;
+
+	shift = ffs(mask) - 1;
+
+	status_old = read_sr(nor);
+
+	/* if status reg is Write protected don't update bit protection */
+	if (status_old & SR_SRWD) {
+		dev_err(nor->dev,
+			"SR is write protected, can't update BP bits...\n");
+		return -EINVAL;
+	}
+
+	ret = spi_nor_select_zone(nor, ofs, len, status_old, &use_top, 1);
+	if (!ret)
+		/* Older protected blocks include the new requested block's */
+		return 0;
+	else if (ret < 0)
+		return ret;
+
+	func_reg = spi_nor_read_fr(nor);
+	/* lock_len: length of region that should end up locked */
+	if (use_top)
+		lock_len = nor->mtd.size - ofs;
+	else
+		lock_len = ofs + len;
+
+	pow = order_base_2(lock_len);
+	blk_prot = mask & (((pow + 1) & 0xf) << shift);
+	if (lock_len <= 0) {
+		dev_err(nor->dev, "invalid Length to protect");
+		return -EINVAL;
+	}
+
+	status_new = status_old | blk_prot;
+	if (status_old == status_new)
+		return 0;
+
+	return write_sr_and_check(nor, status_new, mask);
+}
+
+/**
  * issi_unlock() - clear BP[0123] write-protection.
  * @nor: pointer to a 'struct spi_nor'.
  * @ofs: offset from which to unlock memory.
@@ -4171,6 +4338,7 @@ int spi_nor_scan(struct spi_nor *nor, const char *name,
 	if (JEDEC_MFR(info) == SNOR_MFR_ISSI &&
 	    info->flags & SPI_NOR_HAS_LOCK &&
 	    info->flags & SPI_NOR_HAS_BP3) {
+		nor->flash_lock = issi_lock;
 		nor->flash_unlock = issi_unlock;
 	}
 
@@ -4194,6 +4362,8 @@ int spi_nor_scan(struct spi_nor *nor, const char *name,
 		nor->flags |= SNOR_F_NO_OP_CHIP_ERASE;
 	if (info->flags & USE_CLSR)
 		nor->flags |= SNOR_F_USE_CLSR;
+	if (info->flags & SPI_NOR_HAS_BP3)
+		nor->flags |= SNOR_F_HAS_BP3;
 
 	if (info->flags & SPI_NOR_NO_ERASE)
 		mtd->flags |= MTD_NO_ERASE;
diff --git a/include/linux/mtd/spi-nor.h b/include/linux/mtd/spi-nor.h
index f6fa70f..26dbf48 100644
--- a/include/linux/mtd/spi-nor.h
+++ b/include/linux/mtd/spi-nor.h
@@ -40,6 +40,8 @@
 #define SPINOR_OP_RDSR		0x05	/* Read status register */
 #define SPINOR_OP_WRSR		0x01	/* Write status register 1 byte */
 #define SPINOR_OP_RDSR2		0x3f	/* Read status register 2 */
+#define SPINOR_OP_RDFR		0x48	/* Read Function register */
+#define SPINOR_OP_WRFR		0x42	/* Write Function register 1 byte */
 #define SPINOR_OP_WRSR2		0x3e	/* Write status register 2 */
 #define SPINOR_OP_READ		0x03	/* Read data bytes (low frequency) */
 #define SPINOR_OP_READ_FAST	0x0b	/* Read data bytes (high frequency) */
@@ -139,6 +141,9 @@
 /* Enhanced Volatile Configuration Register bits */
 #define EVCR_QUAD_EN_MICRON	BIT(7)	/* Micron Quad I/O */
 
+/*Function register bit */
+#define FR_TB			BIT(1)	/*ISSI: Top/Bottom protect */
+
 /* Flag Status Register bits */
 #define FSR_READY		BIT(7)	/* Device status, 0 = Busy, 1 = Ready */
 #define FSR_E_ERR		BIT(5)	/* Erase operation status */
-- 
1.9.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
