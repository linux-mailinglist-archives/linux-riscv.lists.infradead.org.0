Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16EBC25063
	for <lists+linux-riscv@lfdr.de>; Tue, 21 May 2019 15:33:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lfl9nJhbquw8zlwV/7zBGtGHgmzEHeB7dS3voEpJFaA=; b=kU3WmzS0es3w9g
	AgLlAVYELQlP0ruAbjLAmyFV5Gt0POr3jFhXqs6chKSn92XYaZ2bW8UbFGGcFjxsniGWsKvahItKp
	uMnDS1kFfobtCBBXNiPIjst38oSxNQTb7b/GoCBBIdRMSd7HFv/Tfdfs5zjsZPIDsb/nYBicUtih3
	RjrDn/Rw00hPqDrclhjtn3O+QQyqxSrF1UpLEOpWG+0JoD87nwUBGK44z5II3WjQ52vbByXSWRgiT
	hLNyW3ERGuDprjRF4HaHTag8IGL3ttLGr/lHbCkWvqrL3DbL/IOf8r5DOTbHprTS54vGk2HT0K/PZ
	EoI2ls+Qty46JWMdcUXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT4ta-0008M6-V5; Tue, 21 May 2019 13:33:34 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT4tX-0008L5-0V
 for linux-riscv@lists.infradead.org; Tue, 21 May 2019 13:33:32 +0000
Received: by mail-pl1-x644.google.com with SMTP id d21so8482240plr.3
 for <linux-riscv@lists.infradead.org>; Tue, 21 May 2019 06:33:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references;
 bh=q9ZIgayitHYinuwIIIQjmbyGj4R/0KKMdcZ9auHzvr8=;
 b=VlOYu1drdYLZpHJV9yk0qWwSSx5N4LCVyuAnvbVQ2maCo9bVARUiY89bZ1yKPhQCcH
 uNvDtxSgCuPt3Ou37gyoxRCm/9qexGEjOWipubkYFzvm6+F4Fazk2Q5S1WHGsW3SOYis
 C7cPoFIqYa4MEZ1trtTOhUXsiHoAjNl4bkEJe06N6edwmKhwXdq5wWmH2yEKnVMIaKR4
 AwbUMSTsfTlj43zrdVGSUl2wkrPrzteOPZScOYgg/PEXBq8b2vzftNajJPqmkNpNfcxq
 gF1EJ26O7OCpQEhcta7+PRX1PRcD7FZzYeHylUeNWK4DQk8rBl7ohWSoPx9cIVRf/1Sd
 fHqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references;
 bh=q9ZIgayitHYinuwIIIQjmbyGj4R/0KKMdcZ9auHzvr8=;
 b=uGfuXMil+bmO9MkwskWHItH9SlHoJZ0kmKgf33H5wf46k68dzBP3s3oullL9HjK+p0
 rBlJsoGxrlYqw0TSAI7Zmkj0KvFTsizps39bTb1q/LqxkGXc2ag3fZh+pkymvSLEDXFD
 XZ6WUJ2we6pX6iopatGS7etHwISXD9sjQdbNuih2Q4EakFQbXtE6Ap6QHJBUw2URCCmr
 LD/cheShBcEg7/qLbAqHxURDINYE9Dv4Eb38XdRa2PLBMWHZnTnYNWlpKNMNlg5u+60p
 dwE2pipWE1R93UshjQqcxsLLkhG5ojJpA0vIdnTYHCnuY4HcbhbDkoJgkFEKoRjnfj4F
 IPyA==
X-Gm-Message-State: APjAAAU2+Yv6AyaJpxz8KMIoi9MSdi8yJy8/jWxR3y67CPQRLFzTxQpV
 3UV9M+g1c3x8q0fHPvmmlWzdqA==
X-Google-Smtp-Source: APXvYqwosybVnv92iOwCWSgxiLTjp16vqLrYP4NZArVA1GDu0mXZO7aPxnIG51uYXApdUCoO0dkHxQ==
X-Received: by 2002:a17:902:2aa6:: with SMTP id
 j35mr503646plb.189.1558445610576; 
 Tue, 21 May 2019 06:33:30 -0700 (PDT)
Received: from buildserver-90.open-silicon.com ([114.143.65.226])
 by smtp.googlemail.com with ESMTPSA id
 d15sm65368906pfm.186.2019.05.21.06.33.26
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 21 May 2019 06:33:29 -0700 (PDT)
From: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
To: robh+dt@kernel.org, mark.rutland@arm.com, peter@korsgaard.com,
 andrew@lunn.ch, palmer@sifive.com, paul.walmsley@sifive.com,
 sagar.kadam@sifive.com, linux-i2c@vger.kernel.org,
 devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v6 3/3] i2c-ocores: sifive: add polling mode workaround for
 FU540-C000 SoC.
Date: Tue, 21 May 2019 19:02:54 +0530
Message-Id: <1558445574-16471-4-git-send-email-sagar.kadam@sifive.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1558445574-16471-1-git-send-email-sagar.kadam@sifive.com>
References: <1558445574-16471-1-git-send-email-sagar.kadam@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_063331_055563_43FE795E 
X-CRM114-Status: GOOD (  14.97  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

The i2c-ocore driver already has a polling mode interface.But it needs
a workaround for FU540 Chipset on HiFive unleashed board (RevA00).
There is an erratum in FU540 chip that prevents interrupt driven i2c
transfers from working, and also the I2C controller's interrupt bit
cannot be cleared if set, due to this the existing i2c polling mode
interface added in mainline earlier doesn't work, and CPU stall's
infinitely, when-ever i2c transfer is initiated.

Ref:
	commit dd7dbf0eb090 ("i2c: ocores: refactor setup for polling")

The workaround / fix under OCORES_FLAG_BROKEN_IRQ is particularly for
FU540-COOO SoC.

The polling function identifies a SiFive device based on the device node
and enables the workaround.

Signed-off-by: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
---
 drivers/i2c/busses/i2c-ocores.c | 38 +++++++++++++++++++++++++++++++++-----
 1 file changed, 33 insertions(+), 5 deletions(-)

diff --git a/drivers/i2c/busses/i2c-ocores.c b/drivers/i2c/busses/i2c-ocores.c
index b334fa2..3175c72 100644
--- a/drivers/i2c/busses/i2c-ocores.c
+++ b/drivers/i2c/busses/i2c-ocores.c
@@ -84,6 +84,10 @@ struct ocores_i2c {
 #define TYPE_GRLIB		1
 #define TYPE_SIFIVE_REV0	2
 
+#define OCORES_FLAG_BROKEN_IRQ BIT(1) /* Broken IRQ for FU540-C000 SoC */
+
+static const struct of_device_id ocores_i2c_match[];
+
 static void oc_setreg_8(struct ocores_i2c *i2c, int reg, u8 value)
 {
 	iowrite8(value, i2c->base + (reg << i2c->reg_shift));
@@ -236,9 +240,13 @@ static irqreturn_t ocores_isr(int irq, void *dev_id)
 	struct ocores_i2c *i2c = dev_id;
 	u8 stat = oc_getreg(i2c, OCI2C_STATUS);
 
-	if (!(stat & OCI2C_STAT_IF))
+	if (irq == OCORES_FLAG_BROKEN_IRQ) {
+		if (stat & OCI2C_STAT_IF)
+			if (!(stat & OCI2C_STAT_BUSY))
+				return IRQ_NONE;
+	} else if (!(stat & OCI2C_STAT_IF)) {
 		return IRQ_NONE;
-
+	}
 	ocores_process(i2c, stat);
 
 	return IRQ_HANDLED;
@@ -340,6 +348,10 @@ static int ocores_poll_wait(struct ocores_i2c *i2c)
  */
 static void ocores_process_polling(struct ocores_i2c *i2c)
 {
+	const struct of_device_id *match;
+
+	match = of_match_node(ocores_i2c_match, i2c->adap.dev.of_node);
+
 	while (1) {
 		irqreturn_t ret;
 		int err;
@@ -350,9 +362,25 @@ static void ocores_process_polling(struct ocores_i2c *i2c)
 			break; /* timeout */
 		}
 
-		ret = ocores_isr(-1, i2c);
-		if (ret == IRQ_NONE)
-			break; /* all messages have been transferred */
+		/*
+		 * If it's a SiFive Device(FU540-C000 SoC ) use
+		 * OCORES_FLAG_BROKEN_IRQ to enable workaround in
+		 * polling mode.
+		 */
+		if (match && (long)match->data == TYPE_SIFIVE_REV0) {
+			ret = ocores_isr(OCORES_FLAG_BROKEN_IRQ, i2c);
+			if (ret == IRQ_NONE)
+				break; /* all messages have been transferred */
+			else
+				if (i2c->state == STATE_DONE)
+					break;
+		} else {
+			ret = ocores_isr(-1, i2c);
+			if (ret == IRQ_NONE)
+				break; /* all messages have been transferred */
+
+		}
+
 	}
 }
 
-- 
1.9.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
