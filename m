Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 687D9B654
	for <lists+linux-riscv@lfdr.de>; Sun, 28 Apr 2019 20:10:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=JJ24zJ8gHa//J+aPWa2z00mpMhrkqwqidJTRyryPY3I=; b=f+zHW0hX0h4I3j1OW6QWrIp+kl
	SwgGKRLwk60X57UBxioBS6YGXCzcvXBMJxu6c2mi6CkJ/3rFH8CRfLHvsNKeYEBeb8cQ/J5ASZ3Cr
	FU5+xg8qNuT6sW9+tIAxhc8sZHMDTEdeh02Ow0Je19mmGFApiqz5uPVKxFgrk/cu92JEl9ezbraB0
	kODkgzNOzPbVYW5rEEFsrDOF/lZEZyqjw+m0d6JobOqu+cXm9F/zJ115UvwhhRojHx2v+PsbDRDeN
	UHlucce6chvdPybH5cgJbZB8Lt9uefktJyRs5ajureo2WVpkLWBYetnOtf3UAnvqktWMCzB4mxO/u
	vjcKswwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKoFn-0006bO-KI; Sun, 28 Apr 2019 18:10:19 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKoFU-00059D-Bp
 for linux-riscv@lists.infradead.org; Sun, 28 Apr 2019 18:10:02 +0000
Received: by mail-pg1-x544.google.com with SMTP id d31so4062037pgl.7
 for <linux-riscv@lists.infradead.org>; Sun, 28 Apr 2019 11:10:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=ohuUhz4x6Zl7HFy2hPxACEBNrjELYOPEczRq/3tltOQ=;
 b=MDXXcj5mz3+eAxqbaDVzpkVfcgJmHrCr8AtD5PVH1KAtWp0FrHIsBcm4Uz1Cdt+s4k
 3to7Sl9MRMa0jhkyLEK/xTeakw5Cd4sWtPHuw6p1ejVGzDChlw0BH5mXenX8dBRqCBZx
 h2cadE9uPrBsicmPSIBbCtkMy0ZAvTT/DhuLDkS1HjM2WvFwllL637GAtXi7MjBq/Q+t
 FM1YQZ9p5OZyRmvZXSBC83V0SxlbXRsLBBNdqNALePeP7KYtRvZf5V/ifaROowGYqqlL
 zOSFEUM4k4tbtPLQyTINrBRxmh18eMFshNBx61WKDPU8dKcKnvxdD+gHezXzUy2R9YMZ
 mN8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=ohuUhz4x6Zl7HFy2hPxACEBNrjELYOPEczRq/3tltOQ=;
 b=TNZMcXScjjhP8QaHJHOZApr3J3QfY+oyC9vAmSr9roH1xfNfXZrvNa7gajrpandmBC
 IeUWxDk9TaPvFQ7tj7WqF6f85K9HMm1ooi20EHYi8eCIokgtUyeaZ57vXFrS8Hke+fRO
 rvWkYErdieKA6gPC8ZFluDEX3m3x0w1p9rDC5iXoLCWEQesfsAmdqoOoGxYbinodSiZ2
 s55I4PCxF6ZUnvVGxRzxEhOdpTyBclCVBLiKJSBLgjBO6kSWBHviAd3+BotXAyc7xIt4
 kKiXbTmVtr4r+JAEZ55rq8iQ1Vb5G0QRrAlzIhkiAPcfasckykf7absPFxQ2+fn7Riqn
 HGcQ==
X-Gm-Message-State: APjAAAV1ErtvnGXO1THFc76FIJ/zySRr82HVHyGkcnWDEnCep5QmddzT
 4pnXVQ8OcK7MQMgBmjMO46RmnA==
X-Google-Smtp-Source: APXvYqyq0E1OO/NnqwXgZaHv0s0uS3p5TaTatpJ9CmBFjEw+fj7Fo0DXSUyTxVQBiRirvIcR+F9TBA==
X-Received: by 2002:a65:60ca:: with SMTP id r10mr4401741pgv.64.1556474999956; 
 Sun, 28 Apr 2019 11:09:59 -0700 (PDT)
Received: from buildserver-90.open-silicon.com ([114.143.65.226])
 by smtp.googlemail.com with ESMTPSA id l2sm36177136pgl.2.2019.04.28.11.09.56
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sun, 28 Apr 2019 11:09:59 -0700 (PDT)
From: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
To: marek.vasut@gmail.com, tudor.ambarus@microchip.com, dwmw2@infradead.org,
 computersforpeace@gmail.com, bbrezillon@kernel.org, richard@nod.at
Subject: [PATCH v2 3/3] mtd: spi-nor: add locking support for is25xxxxx device
Date: Sun, 28 Apr 2019 23:39:16 +0530
Message-Id: <1556474956-27786-4-git-send-email-sagar.kadam@sifive.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1556474956-27786-1-git-send-email-sagar.kadam@sifive.com>
References: <1556474956-27786-1-git-send-email-sagar.kadam@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_111000_409697_02B06222 
X-CRM114-Status: GOOD (  15.74  )
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

The locking scheme for ISSI devices is based on stm_lock mechanism.
The is25xxxxx  devices have 4 bits for selecting the range of blocks to
be locked for write.

The current implementation, blocks entire 512 blocks of flash memory.

Signed-off-by: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
---
 drivers/mtd/spi-nor/spi-nor.c | 60 +++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 60 insertions(+)

diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
index 81c7b3e..2dba7e9 100644
--- a/drivers/mtd/spi-nor/spi-nor.c
+++ b/drivers/mtd/spi-nor/spi-nor.c
@@ -1459,6 +1459,65 @@ static int macronix_quad_enable(struct spi_nor *nor)
 
 	return 0;
 }
+/**
+ * Lock a region of the flash.Implementation is based on stm_lock
+ * Supports the block protection bits BP{0,1,2,3} in the status register
+ * Returns negative on errors, 0 on success.
+ */
+static int issi_lock(struct spi_nor *nor, loff_t ofs, uint64_t len)
+{
+	struct mtd_info *mtd = &nor->mtd;
+	int status_old, status_new;
+	u8 mask = SR_BP3 | SR_BP2 | SR_BP1 | SR_BP0;
+	u8 shift = ffs(mask) - 1, pow, val = 0;
+	loff_t lock_len;
+	bool use_top = true;
+
+	status_old = read_sr(nor);
+
+	if (status_old < 0)
+		return status_old;
+
+	/* lock_len: length of region that should end up locked */
+	if (use_top)
+		lock_len = mtd->size - ofs;
+	else
+		lock_len = ofs + len;
+
+	/*
+	 * Need smallest pow such that:
+	 *
+	 *   1 / (2^pow) <= (len / size)
+	 *
+	 * so (assuming power-of-2 size) we do:
+	 *
+	 *   pow = ceil(log2(size / len)) = log2(size) - floor(log2(len))
+	 */
+	pow = ilog2(mtd->size) - ilog2(lock_len);
+	val = mask - (pow << shift);
+
+	if (val & ~mask)
+		return -EINVAL;
+
+	/* Don't "lock" with no region! */
+	if (!(val & mask))
+		return -EINVAL;
+
+	status_new = (status_old & ~mask & ~SR_TB) | val;
+
+	/* Disallow further writes if WP pin is asserted */
+	status_new |= SR_SRWD;
+
+	/* Don't bother if they're the same */
+	if (status_new == status_old)
+		return 0;
+
+	/* Only modify protection if it will not unlock other areas */
+	if ((status_new & mask) < (status_old & mask))
+		return -EINVAL;
+
+	return write_sr_and_check(nor, status_new, mask);
+}
 
 /**
  * issi_unlock() - clear BP[0123] write-protection.
@@ -4121,6 +4180,7 @@ int spi_nor_scan(struct spi_nor *nor, const char *name,
 	/* NOR protection support for ISSI chips */
 	if (JEDEC_MFR(info) == SNOR_MFR_ISSI ||
 	    info->flags & SPI_NOR_HAS_LOCK) {
+		nor->flash_lock = issi_lock;
 		nor->flash_unlock = issi_unlock;
 
 	}
-- 
1.9.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
