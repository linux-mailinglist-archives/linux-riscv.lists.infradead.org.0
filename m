Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9CD41A76F
	for <lists+linux-riscv@lfdr.de>; Sat, 11 May 2019 12:09:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=i8yAbVRYobyzaDB0zWUvY9Fhfi+d7huXnH3GDOtBzp8=; b=eGl/7C5nBsiTi3NZAI1uDag3VK
	PFCXVWvetmilcrCkIaTPgcU8tLyZZwete1pl8y27R1hjem0yWdQ8PPwdmZRM0XtKIbnbdQ+M5Hkjo
	pu9YWe6w+5jX8cheWuSMXPiKLKmWONAiMOPP5qlHSd0RR+C8dZd/4rlZ8uJU2QXAgDS4JlFRxccgw
	Pmzti6peItvGxGxMrKG9KBlZyPClAWzDZHY9cubK50usXitVu1dv3zLdcKkGjZCq0xvGYm5m8Pclm
	xRoxKN6Ok/nW5yGQfaEiDRet/drVFgnaXauTAx9zlqu8lnoFtivXmniowvV0eIRL3pQPAG4fH/U33
	aZD/S76w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPOwL-0002N4-7m; Sat, 11 May 2019 10:09:13 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPOvo-0001mN-2T
 for linux-riscv@lists.infradead.org; Sat, 11 May 2019 10:08:51 +0000
Received: by mail-pl1-x641.google.com with SMTP id x15so3976991pln.9
 for <linux-riscv@lists.infradead.org>; Sat, 11 May 2019 03:08:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=9CWieYVNbDDd1l1VaofRa8tadmHyWSRkol9QPEW5iRo=;
 b=CeNcRJ2XnYE1Thw0zyGRO+HIQvcpaeMb02J2yHUkbhps5o3MhYCjSfpbVvHb/rzlK/
 gGBJUfFKly2MsALp1zeITBaOvtEQdxABZhO7PR9/OSv4KHlDkf91UkfzgZSTHzc6J8om
 eEFvxu4Jhdu4Ed/5lLoMjm7NW0p4nogp3KJq7Ymr9DySa2GZoJ5XSX2UITyrQO1RMsam
 R4vaT7NSuQKnWQr9aVGpUIG/jAMPoTIgshm2FQfGnnV/wcrKRtarNOD02c1IwvVLCK0h
 DCArGPhjVdp+KfAtLUVVkLTB9chroNEfdXij+Ps4unNSUDTsztd5V/LSkzs6RKw8BAUg
 DKkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=9CWieYVNbDDd1l1VaofRa8tadmHyWSRkol9QPEW5iRo=;
 b=lZY+lcag9VKq6LaMZAHwfzSkOjT9MfSon5mpLCRIZ6qE1uASNJQSMbodWZS05O050u
 7x5q8xo+16IllWdwVGK2Etxx5yClypvzYzpwrxYjjWXY2Jwek0iOisMOJLZy9tIj+8RB
 /8JTh49qtlPsQ9d7H1Ef2hL9Azd2a3Lxt08YXW+YiGRR/kQ8iojyH1Y84D0FYe1IIYaR
 zrvuhmAoqZuhi5hNlq3DkW9r5G6z3FlY+Rkkv7Dz6NI1wiDJImd6ntA8PS9PzBPBS6bV
 Yovn6RCA2qH1D1AuKzu0afiToC3zq4oPHJjYc1Y5jTYVy5eEQSonptOVCfDY0TRLrG23
 qcSQ==
X-Gm-Message-State: APjAAAUOsG3ZnRGcJUfCKnnBgvWK6vPiAJ86iWI70kIduT9LKJ/hs1F+
 oEI1MPPKxYKyJohRg85+PF2vuA==
X-Google-Smtp-Source: APXvYqw1ymBSnLrkhtiQ9AFJgmY4WAzKLVMVaLLp9499oTIlfFQsZDH+xVjgAYsCpveszY9ALPrSLA==
X-Received: by 2002:a17:902:3143:: with SMTP id
 w61mr12020496plb.292.1557569319345; 
 Sat, 11 May 2019 03:08:39 -0700 (PDT)
Received: from buildserver-90.open-silicon.com ([114.143.65.226])
 by smtp.googlemail.com with ESMTPSA id
 c129sm16951836pfg.178.2019.05.11.03.08.35
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sat, 11 May 2019 03:08:38 -0700 (PDT)
From: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
To: marek.vasut@gmail.com, tudor.ambarus@microchip.com, dwmw2@infradead.org,
 computersforpeace@gmail.com, bbrezillon@kernel.org, richard@nod.at,
 palmer@sifive.com, aou@eecs.berkeley.edu, paul.walmsley@sifive.com,
 linux-mtd@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-riscv@lists.infradead.org
Subject: [PATCH v4 3/3] mtd: spi-nor: add locking support for is25xxxxx device
Date: Sat, 11 May 2019 15:38:08 +0530
Message-Id: <1557569288-19441-4-git-send-email-sagar.kadam@sifive.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1557569288-19441-1-git-send-email-sagar.kadam@sifive.com>
References: <1557569288-19441-1-git-send-email-sagar.kadam@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190511_030840_814541_3C82858D 
X-CRM114-Status: GOOD (  24.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
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

Implement a locking scheme for ISSI devices based on stm_lock mechanism.
The is25xxxxx  devices have 4 bits for selecting the range of blocks to
be locked/protected from erase/write operations and function register
gives feasibility to select TOP / Bottom area for protection.

The current implementation enables block protection as per the table
defined into datasheet for is25wp256d device with sector size of 0x10000.
ISSI and stm devices differ in terms of TBS (Top/Bottom area protection)
bits. In case of issi this is in Function register and is OTP memory, so
once FR bits are programmed  cannot be modified.

Some common code from stm_lock/unlock implementation is extracted so that
it can be re-used for issi devices.The locking scheme has been tested on
HiFive Unleashed board, having is25wp256 flash memory.

Signed-off-by: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
---
 drivers/mtd/spi-nor/spi-nor.c | 288 ++++++++++++++++++++++++++++++++++--------
 include/linux/mtd/spi-nor.h   |   5 +
 2 files changed, 242 insertions(+), 51 deletions(-)

diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
index 3942b26..1692965 100644
--- a/drivers/mtd/spi-nor/spi-nor.c
+++ b/drivers/mtd/spi-nor/spi-nor.c
@@ -288,6 +288,45 @@ struct flash_info {
 
 #define JEDEC_MFR(info)	((info)->id[0])
 
+/**
+ * read_fr() -read function register
+ * @nor: pointer to a 'struct spi_nor'.
+ *
+ * ISSI devices have top/bottom area protection bits selection into function
+ * reg.The bits in FR are OTP.So once it's written, it cannot be changed.
+ *
+ * Return: Value in function register or Negative if error.
+ */
+static int read_fr(struct spi_nor *nor)
+{
+	int ret;
+	u8 val;
+
+	ret = nor->read_reg(nor, SPINOR_OP_RDFR, &val, 1);
+	if (ret < 0) {
+		pr_err("error %d reading FR\n", (int) ret);
+		return ret;
+	}
+
+	return val;
+}
+
+/**
+ * write_fr() -Write function register
+ * @nor: pointer to a 'struct spi_nor'.
+ *
+ * ISSI devices have top/bottom area selection protection bits into function
+ * reg whereas other devices have the TBS bit into Status Register.
+ * The bits in FR are OTP.So once it's written, it cannot be changed.
+ *
+ * Return: Negative if error
+ */
+static int write_fr(struct spi_nor *nor, u8 val)
+{
+	nor->cmd_buf[0] = val;
+	return nor->write_reg(nor, SPINOR_OP_WRFR, nor->cmd_buf, 1);
+}
+
 /*
  * Read the status register, returning its value in the location
  * Return the status register value.
@@ -1088,10 +1127,17 @@ static void stm_get_locked_range(struct spi_nor *nor, u8 sr, loff_t *ofs,
 				 uint64_t *len)
 {
 	struct mtd_info *mtd = &nor->mtd;
-	u8 mask = SR_BP2 | SR_BP1 | SR_BP0;
-	int shift = ffs(mask) - 1;
+	u8 mask = 0;
+	int shift = 0;
 	int pow;
 
+	if (JEDEC_MFR(nor->info) == SNOR_MFR_ISSI)
+		mask = SR_BP3 | SR_BP2 | SR_BP1 | SR_BP0;
+	else
+		mask = SR_BP2 | SR_BP1 | SR_BP0;
+
+	shift = ffs(mask) - 1;
+
 	if (!(sr & mask)) {
 		/* No protection */
 		*ofs = 0;
@@ -1099,10 +1145,19 @@ static void stm_get_locked_range(struct spi_nor *nor, u8 sr, loff_t *ofs,
 	} else {
 		pow = ((sr & mask) ^ mask) >> shift;
 		*len = mtd->size >> pow;
-		if (nor->flags & SNOR_F_HAS_SR_TB && sr & SR_TB)
-			*ofs = 0;
-		else
-			*ofs = mtd->size - *len;
+
+		if (JEDEC_MFR(nor->info) == SNOR_MFR_ISSI) {
+			if (nor->flags & SNOR_F_HAS_SR_TB &&
+					(read_fsr(nor) & FR_TB))
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
 
@@ -1129,18 +1184,105 @@ static int stm_check_lock_status_sr(struct spi_nor *nor, loff_t ofs, uint64_t le
 		return (ofs >= lock_offs + lock_len) || (ofs + len <= lock_offs);
 }
 
-static int stm_is_locked_sr(struct spi_nor *nor, loff_t ofs, uint64_t len,
+/*
+ * check if memory region is locked
+ *
+ * Returns false if region is locked 0 otherwise.
+ */
+static int fl_is_locked_sr(struct spi_nor *nor, loff_t ofs, uint64_t len,
 			    u8 sr)
 {
 	return stm_check_lock_status_sr(nor, ofs, len, sr, true);
 }
 
-static int stm_is_unlocked_sr(struct spi_nor *nor, loff_t ofs, uint64_t len,
+/*
+ * check if memory region is unlocked
+ *
+ * Returns false if region is locked 0 otherwise.
+ */
+static int fl_is_unlocked_sr(struct spi_nor *nor, loff_t ofs, uint64_t len,
 			      u8 sr)
 {
 	return stm_check_lock_status_sr(nor, ofs, len, sr, false);
 }
 
+/**
+ * flash_select_zone() - Select TOP area or bottom area to lock/unlock
+ * @nor: pointer to a 'struct spi_nor'.
+ * @ofs: offset from which to lock memory.
+ * @len: number of bytes to unlock.
+ * @sr: status register
+ * @tb: pointer to top/bottom bool used in caller function
+ * @op: zone selection is for lock/unlock operation. 1: lock 0:unlock
+ *
+ * Select the top area / bottom area paattern to protect memory blocks.
+ *
+ * Returns negative on errors, 0 on success.
+ */
+static int fl_select_zone(struct spi_nor *nor, loff_t ofs, uint64_t len,
+				u8 sr, bool *tb, bool op)
+{
+	bool can_be_top = true, can_be_bottom = nor->flags & SNOR_F_HAS_SR_TB;
+
+	if (op) {
+		/* Select for lock zone operation */
+
+		/*
+		 * If nothing in our range is unlocked, we don't need
+		 * to do anything.
+		 */
+		if (fl_is_locked_sr(nor, ofs, len, sr))
+			return 0;
+
+		/*
+		 * If anything below us is unlocked, we can't use 'bottom'
+		 * protection.
+		 */
+		if (!fl_is_locked_sr(nor, 0, ofs, sr))
+			can_be_bottom = false;
+
+		/*
+		 * If anything above us is unlocked, we can't use 'top'
+		 * protection.
+		 */
+		if (!fl_is_locked_sr(nor, ofs + len,
+					nor->mtd.size - (ofs + len), sr))
+			can_be_top = false;
+	} else {
+		/* Select unlock zone */
+
+		/*
+		 * If nothing in our range is locked, we don't need to
+		 * do anything.
+		 */
+		if (fl_is_unlocked_sr(nor, ofs, len, sr))
+			return 0;
+
+		/*
+		 * If anything below us is locked, we can't use 'top'
+		 * protection
+		 */
+		if (!fl_is_unlocked_sr(nor, 0, ofs, sr))
+			can_be_top = false;
+
+		/*
+		 * If anything above us is locked, we can't use 'bottom'
+		 * protection
+		 */
+		if (!fl_is_unlocked_sr(nor, ofs + len,
+					nor->mtd.size - (ofs + len), sr))
+			can_be_bottom = false;
+	}
+
+	if (!can_be_bottom && !can_be_top)
+		return -EINVAL;
+	else {
+		/* Prefer top, if both are valid */
+		*tb = can_be_top;
+		return 1;
+	}
+}
+
 /*
  * Lock a region of the flash. Compatible with ST Micro and similar flash.
  * Supports the block protection bits BP{0,1,2} in the status register
@@ -1178,33 +1320,19 @@ static int stm_lock(struct spi_nor *nor, loff_t ofs, uint64_t len)
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
+	ret = fl_select_zone(nor, ofs, len, status_old, &use_top, 1);
+	if (!ret)
 		return 0;
-
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
+	else if (ret < 0)
+		return ret;
 
 	/* lock_len: length of region that should end up locked */
 	if (use_top)
@@ -1258,35 +1386,21 @@ static int stm_unlock(struct spi_nor *nor, loff_t ofs, uint64_t len)
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
 
-	/* If nothing in our range is locked, we don't need to do anything */
-	if (stm_is_unlocked_sr(nor, ofs, len, status_old))
+	ret = fl_select_zone(nor, ofs, len, status_old, &use_top, 0);
+	if (!ret)
 		return 0;
+	else if (ret < 0)
+		return ret;
 
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
-
-	/* lock_len: length of region that should remain locked */
+	/* lock_len: length of region that should end up locked */
 	if (use_top)
 		lock_len = mtd->size - (ofs + len);
 	else
@@ -1338,7 +1452,7 @@ static int stm_unlock(struct spi_nor *nor, loff_t ofs, uint64_t len)
  * Returns 1 if entire region is locked, 0 if any portion is unlocked, and
  * negative on errors.
  */
-static int stm_is_locked(struct spi_nor *nor, loff_t ofs, uint64_t len)
+static int fl_is_locked(struct spi_nor *nor, loff_t ofs, uint64_t len)
 {
 	int status;
 
@@ -1346,7 +1460,7 @@ static int stm_is_locked(struct spi_nor *nor, loff_t ofs, uint64_t len)
 	if (status < 0)
 		return status;
 
-	return stm_is_locked_sr(nor, ofs, len, status);
+	return fl_is_locked_sr(nor, ofs, len, status);
 }
 
 static int spi_nor_lock(struct mtd_info *mtd, loff_t ofs, uint64_t len)
@@ -1461,6 +1575,77 @@ static int macronix_quad_enable(struct spi_nor *nor)
 }
 
 /**
+ * issi_lock() - set BP[0123] write-protection.
+ * @nor: pointer to a 'struct spi_nor'.
+ * @ofs: offset from which to lock memory.
+ * @len: number of bytes to unlock.
+ *
+ * Lock a region of the flash.Implementation is based on stm_lock
+ * Supports the block protection bits BP{0,1,2,3} in the status register
+ *
+ * Return: 0 on success, -errno otherwise.
+ */
+static int issi_lock(struct spi_nor *nor, loff_t ofs, uint64_t len)
+{
+	int status_old, status_new, blk_prot;
+	u8 mask = SR_BP3 | SR_BP2 | SR_BP1 | SR_BP0;
+	u8 shift = ffs(mask) - 1;
+	u8 pow, ret, func_reg;
+	bool use_top;
+	loff_t lock_len;
+
+	status_old = read_sr(nor);
+
+	/* if status reg is Write protected don't update bit protection */
+	if (status_old & SR_SRWD) {
+		dev_err(nor->dev,
+			"SR is Write Protected,can't update BP bits...\n");
+		return -EINVAL;
+	}
+
+	ret = fl_select_zone(nor, ofs, len, status_old, &use_top, 1);
+	if (!ret)
+		/* Older protected blocks include the new requested block's */
+		return 0;
+	else if (ret < 0)
+		return ret;
+
+	func_reg = read_fr(nor);
+	/* lock_len: length of region that should end up locked */
+	if (use_top) {
+		/* Update Function register to use TOP area */
+		if ((func_reg >> 1) & 0x1) {
+			/* Currently bootom selected change to top */
+			func_reg ^= FR_TB;
+			write_fr(nor, func_reg);
+		}
+		lock_len = nor->mtd.size - ofs;
+	} else {
+
+		/* Update Function register to use bottom area */
+		if (!((func_reg >> 1) & 0x1)) {
+			/*Currently top is selected, change to bottom */
+			func_reg ^= FR_TB;
+			write_fr(nor, func_reg);
+		}
+		lock_len = ofs + len;
+	}
+
+	pow = order_base_2(lock_len);
+	blk_prot = mask & (((pow+1) & 0xf)<<shift);
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
@@ -1879,7 +2064,7 @@ static int sr2_bit7_quad_enable(struct spi_nor *nor)
 			SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
 	{ "is25wp256", INFO(0x9d7019, 0, 64 * 1024, 1024,
 			SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
-			SPI_NOR_4B_OPCODES | SPI_NOR_HAS_LOCK)
+			SPI_NOR_4B_OPCODES | SPI_NOR_HAS_LOCK | SPI_NOR_HAS_TB)
 	},
 
 	/* Macronix */
@@ -4118,12 +4303,13 @@ int spi_nor_scan(struct spi_nor *nor, const char *name,
 	    info->flags & SPI_NOR_HAS_LOCK) {
 		nor->flash_lock = stm_lock;
 		nor->flash_unlock = stm_unlock;
-		nor->flash_is_locked = stm_is_locked;
+		nor->flash_is_locked = fl_is_locked;
 	}
 
 	/* NOR protection support for ISSI chips */
 	if (JEDEC_MFR(info) == SNOR_MFR_ISSI ||
 	    info->flags & SPI_NOR_HAS_LOCK) {
+		nor->flash_lock = issi_lock;
 		nor->flash_unlock = issi_unlock;
 
 	}
diff --git a/include/linux/mtd/spi-nor.h b/include/linux/mtd/spi-nor.h
index 9a7d719..a15d012 100644
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
