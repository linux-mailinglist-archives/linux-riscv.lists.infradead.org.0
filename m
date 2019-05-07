Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BFEE16748
	for <lists+linux-riscv@lfdr.de>; Tue,  7 May 2019 18:00:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:From:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PgQeao6BvDbpSrLviqLWpeWwyLHywQzM/L8sgEzwm3g=; b=M2B/Nw2Bvle2BQ
	K70V0VPWFd10R3k+WmlkHk62cO58Fs8ADXn8Tp0gFzt35r/2SvlRG95hMZIHtmEGveshBsc8eOmBC
	Wshibmhfwm98U7qmQJVzLyn0qujZje9b0lG9DNF1+i70V7wvzHqlQMoh0+B2lXD1rrXH3/5v38tFf
	NvLn34F4ULId6cBPqoIznlfnG9varcR0pNiaLr7uE0vteIsPHZrk9bfZbd/fLtLkSRjXmy7uqviZd
	XFaSqX/z6nXkjUnjn3hD+p5nPsOT+cl16qked82D4sBposiAvxRI482QGtOMqI+WupZUfxUzO0cW4
	Nt5ew/BO8Rmc5FrUuaag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO2VZ-0008LL-ES; Tue, 07 May 2019 15:59:57 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO2VS-0008A6-KH
 for linux-riscv@lists.infradead.org; Tue, 07 May 2019 15:59:55 +0000
Received: by mail-pl1-x644.google.com with SMTP id g9so989428plm.6
 for <linux-riscv@lists.infradead.org>; Tue, 07 May 2019 08:59:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:from:to:cc:subject:date:message-id;
 bh=Jk4l4aIhsSS1QaMGb/xfaCHwS6DqaTwgoIuoYji1K5w=;
 b=MIaRFN3fv3+GWWwZnBAErq1T33G8rzvbl422n5Qc2yFfjz++rNY//jxFv5G8+cbVGQ
 qyeY4WCPn7hxzv86c9HWZEWHxzzxQoHAFjjxfZE+1aEcjFLFH4mN/wDg4dw9MM3CQItK
 vZzfjNK5gcbQ8n+9E5LUpqiywcxxVNOOSihLlQd1KqJQt6Iaem9CcHh3nbMXqsIfxXkI
 t5IxN7pdYihTH8VdxjCB4Ckeyma451Dmjhvdq7V86U/X4I4ZXAIiYG0O5Vc3G0dJPFy7
 eTEgNQSBRY4U0BofW4a6Me1G3BmxKOEr5do0Qog9ddXygfCoU8OIYYuQqz+wCjKEBzw0
 QO6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=mime-version:x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=Jk4l4aIhsSS1QaMGb/xfaCHwS6DqaTwgoIuoYji1K5w=;
 b=q+khrwFw1zRGkJorpjUqa8fU8nUobpdbYugrNn8vL/5xXPo8719RqzEgMCifF1qq39
 RM70Z4FP02j5HC3s7Y/7ACjIah9rwRtgKEQoipSmQgC4mWeG+0mWu6dmf33ssDsH5iRk
 dfvOlFWmYqtiXn4gWzfmegc/D3+FFt85KM1vU/pI8/6wNJl1ucfSwVHlrHxrWuq4dDPP
 CL5QmMCsWj3l6lN00HLDrj3EdwYtzKdNqpc7vcEzR/c1cHHLD5304n5C4ZFyq9G5nw/5
 txcw29nhbtcnZtmlmxQuXONeffuh5W6Bi+6322x1yM/w0HAE8mZsfRDRHNMF7i9dsdPj
 PLKg==
MIME-Version: 1.0
X-Gm-Message-State: APjAAAUKBmyWJkB7psW7yWHBzTAqeDxR38m+NYW+WsSXmZtlQN8q/xwz
 1nbjS3FeswnD/iWIToqP27BXwZXnzzRMZP4OJ+f91zBDEZYGnOdL4D9krAazw0tfgvaErQHfX8l
 I99WamFG/RZiqeF9SOsYT+A==
X-Google-Smtp-Source: APXvYqzjuXzlJfYmm6OQjWmSFkfZp7p5+/RBKtyuW9GmAw6VaX33RD5pvt2FRSYs/l0C4jzCq+840g==
X-Received: by 2002:a17:902:9a03:: with SMTP id
 v3mr42085296plp.27.1557244789768; 
 Tue, 07 May 2019 08:59:49 -0700 (PDT)
Received: from buildserver-90.open-silicon.com ([114.143.65.226])
 by smtp.googlemail.com with ESMTPSA id
 h187sm22543540pfc.52.2019.05.07.08.59.44
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 07 May 2019 08:59:49 -0700 (PDT)
From: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
To: marek.vasut@gmail.com, tudor.ambarus@microchip.com, dwmw2@infradead.org,
 computersforpeace@gmail.com, bbrezillon@kernel.org, richard@nod.at,
 palmer@sifive.com, aou@eecs.berkeley.edu, paul.walmsley@sifive.com,
 linux-mtd@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-riscv@lists.infradead.org
Subject: [PATCH v3 v3 1/3] mtd: spi-nor: add support for is25wp256
Date: Tue,  7 May 2019 21:29:33 +0530
Message-Id: <1557244775-14206-1-git-send-email-sagar.kadam@sifive.com>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_085951_038661_BA1F6753 
X-CRM114-Status: GOOD (  12.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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


-- 
The information transmitted is intended only for the person or entity to 
which it is addressed and may contain confidential and/or privileged 
material. If you are not the intended recipient of this message please do 
not read, copy, use or disclose this communication and notify the sender 
immediately. It should be noted that any review, retransmission, 
dissemination or other use of, or taking action or reliance upon, this 
information by persons or entities other than the intended recipient is 
prohibited.

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
