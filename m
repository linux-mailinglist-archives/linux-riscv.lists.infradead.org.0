Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80E9C14A72
	for <lists+linux-riscv@lfdr.de>; Mon,  6 May 2019 14:58:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JHv+CyEIxTiOaG/L8Xm4OOusaYdoMYu0j82Uf1y03Cc=; b=I6t/yKJbRrTCrx
	Da1NxUIOCAlkReV1S7iuxPBmDsANU7blbBjI/hZR33xZFjQMGFGQEn1P1w79EmTBedxP8Lf39LBZJ
	DVR273mhRZrNEGgUSo2x2Qc5AvJ0iSGQxYgZ/TC0kF1Af9Pf4QbD4jYAGvjSNyBJ2ooMl1+JTRiZS
	ISAn4bNFNErgjJkyQhzMShnmZv3Z9FQ40zPnIJ8S3Y/7egXQ0yz227hIN+mBIUTu/K0dToybw6L2l
	/eILx9rNUGxstG8vLV/iAsVY+DIl8zXLWlCs9PrcY4mZo7uPSW6hbbbwuB/B48lFg3ZEbiKv42nC2
	/jVxlFeJeQ3CwIH7oJFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNdC1-0002sj-Iq; Mon, 06 May 2019 12:58:05 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNdBx-0002sL-MK
 for linux-riscv@lists.infradead.org; Mon, 06 May 2019 12:58:03 +0000
Received: by mail-pg1-x542.google.com with SMTP id h1so6439513pgs.2
 for <linux-riscv@lists.infradead.org>; Mon, 06 May 2019 05:58:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references;
 bh=3yJBCKGR2L57C08ZCcNvx8rpcWn4E4qX0pN/jP148ZU=;
 b=eLarq4Ffp7BjsITqSQlz2hSLPWtaejD9F29WXPEMw2SqJDUECmBS4D7XP1Pt5cl+Gj
 6Qim1TVRAg/xxrtKNnSMLQ1sFJyWF3z8/K4E48r2dufIm4l8G9mRpjrcRd/z5J8qu22a
 vcWshiwGN/r2EzzCR4FftWIW614/C17yN/JKBzSAlxD4hNwdI4eMxGWHbosZcWaBw/TD
 +tq4tFRIMr5icG/Elbt41wWtleyysZxvvScYYpCG9VWOIZfmIDUk9b1PfxTQOttXQKMu
 SJD6DliKlgTV+WndmwX90KWxulzq7oC/wbbkYnMXkCyQB2I/XDdlcdnIW9RGJQmn4i5W
 AJlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references;
 bh=3yJBCKGR2L57C08ZCcNvx8rpcWn4E4qX0pN/jP148ZU=;
 b=bdFcKvtOYjlU+kUmiEOk1SlgbagD7chsAacNdzaCMqtPva50oNaHlmIUChUaA67Ktp
 kzql20foDwG2No4Gto30Ck8xUD8176gVY999KzW5NgtePQaoSJYCTn3FM47nZ0QCZTu1
 tdi29jCl14oSQQxdJlQB6pyv5XDu4FimyeUD7DpEKf91QY8mBdzHupOBd/twfBCRQzjO
 /ksutkdlC9ivqaC75UO5ICAJ09Xl59dOzuRX7T7Z/EA40gUqbicGx85fGtNiw6XzVERY
 uaDsBxyggc0TuhaCKIcGyhp0v/E4uZjgopZpRLHIyywfca4GB6v69hcSF5JEAsuogU5g
 TRqQ==
X-Gm-Message-State: APjAAAUfdUxXlGrHZU2nuRYzCn7+eglYG+Qj2cN5iSE0mxK2bPJ4V1Rr
 jfgNjPPVwEmF1jp4id2hZFmnsA==
X-Google-Smtp-Source: APXvYqzOLRJnZ/ugQgGd1S7emDFcNYFDNzwkPn6sKQ1ywPvxa6ZPbBSvOcGtuJOVmTmh8hb5KAhWdQ==
X-Received: by 2002:a63:fd08:: with SMTP id d8mr31596695pgh.141.1557147480957; 
 Mon, 06 May 2019 05:58:00 -0700 (PDT)
Received: from buildserver-90.open-silicon.com ([114.143.65.226])
 by smtp.googlemail.com with ESMTPSA id p81sm18031132pfa.26.2019.05.06.05.57.57
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 06 May 2019 05:58:00 -0700 (PDT)
From: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
To: robh+dt@kernel.org, mark.rutland@arm.com, palmer@sifive.com,
 paul.walmsley@sifive.com, sagar.kadam@sifive.com, peter@korsgaard.com,
 andrew@lunn.ch, linux-i2c@vger.kernel.org, devicetree@vger.kernel.org,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v1 v1 3/3] i2c-ocores: sifive: add polling mode workaround for
 FU540-C000 SoC.
Date: Mon,  6 May 2019 18:24:00 +0530
Message-Id: <1557147240-29551-4-git-send-email-sagar.kadam@sifive.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1557147240-29551-1-git-send-email-sagar.kadam@sifive.com>
References: <1557147240-29551-1-git-send-email-sagar.kadam@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_055801_725766_2A11BD6F 
X-CRM114-Status: GOOD (  14.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

	commit 69c8c0c0efa8 ("i2c: ocores: add polling interface")

The workaround / fix is particularly for FU540-COOO SoC.

Signed-off-by: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
---
 drivers/i2c/busses/i2c-ocores.c | 28 ++++++++++++++++++++++++----
 1 file changed, 24 insertions(+), 4 deletions(-)

diff --git a/drivers/i2c/busses/i2c-ocores.c b/drivers/i2c/busses/i2c-ocores.c
index 7bf7b0c..08cdfed 100644
--- a/drivers/i2c/busses/i2c-ocores.c
+++ b/drivers/i2c/busses/i2c-ocores.c
@@ -27,6 +27,7 @@
 #include <linux/jiffies.h>
 
 #define OCORES_FLAG_POLL BIT(0)
+#define SIFIVE_FLAG_POLL BIT(1)
 
 /*
  * 'process_lock' exists because ocores_process() and ocores_process_timeout()
@@ -239,8 +240,13 @@ static irqreturn_t ocores_isr(int irq, void *dev_id)
 	struct ocores_i2c *i2c = dev_id;
 	u8 stat = oc_getreg(i2c, OCI2C_STATUS);
 
-	if (!(stat & OCI2C_STAT_IF))
+	if (i2c->flags && SIFIVE_FLAG_POLL) {
+		if (stat & OCI2C_STAT_IF)
+			if (!(stat & OCI2C_STAT_BUSY))
+				return IRQ_NONE;
+	} else if (!(stat & OCI2C_STAT_IF)) {
 		return IRQ_NONE;
+	}
 
 	ocores_process(i2c, stat);
 
@@ -356,6 +362,11 @@ static void ocores_process_polling(struct ocores_i2c *i2c)
 		ret = ocores_isr(-1, i2c);
 		if (ret == IRQ_NONE)
 			break; /* all messages have been transferred */
+		else {
+			if (i2c->flags && SIFIVE_FLAG_POLL)
+				if (i2c->state == STATE_DONE)
+					break;
+		}
 	}
 }
 
@@ -406,7 +417,7 @@ static int ocores_xfer(struct i2c_adapter *adap,
 {
 	struct ocores_i2c *i2c = i2c_get_adapdata(adap);
 
-	if (i2c->flags & OCORES_FLAG_POLL)
+	if ((i2c->flags & OCORES_FLAG_POLL) || (i2c->flags & SIFIVE_FLAG_POLL))
 		return ocores_xfer_polling(adap, msgs, num);
 	return ocores_xfer_core(i2c, msgs, num, false);
 }
@@ -597,6 +608,7 @@ static int ocores_i2c_probe(struct platform_device *pdev)
 {
 	struct ocores_i2c *i2c;
 	struct ocores_i2c_platform_data *pdata;
+	const struct of_device_id *match;
 	struct resource *res;
 	int irq;
 	int ret;
@@ -678,13 +690,21 @@ static int ocores_i2c_probe(struct platform_device *pdev)
 
 	irq = platform_get_irq(pdev, 0);
 	if (irq == -ENXIO) {
-		i2c->flags |= OCORES_FLAG_POLL;
+		/*
+		 * Set a SIFIVE_FLAG_POLL to enable workaround for FU540
+		 * in polling mode interface of i2c-ocore driver.
+		 */
+		match = of_match_node(ocores_i2c_match, pdev->dev.of_node);
+		if (match && (long)match->data == TYPE_SIFIVE_REV0)
+			i2c->flags |= SIFIVE_FLAG_POLL;
+		else
+			i2c->flags |= OCORES_FLAG_POLL;
 	} else {
 		if (irq < 0)
 			return irq;
 	}
 
-	if (!(i2c->flags & OCORES_FLAG_POLL)) {
+	if (!(i2c->flags & (OCORES_FLAG_POLL | SIFIVE_FLAG_POLL))) {
 		ret = devm_request_irq(&pdev->dev, irq, ocores_isr, 0,
 				       pdev->name, i2c);
 		if (ret) {
-- 
1.9.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
