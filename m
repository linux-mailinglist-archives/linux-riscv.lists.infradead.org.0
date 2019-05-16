Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3977E1FEBB
	for <lists+linux-riscv@lfdr.de>; Thu, 16 May 2019 07:09:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=szlFidiTLa0xOcq4rbXjm+xrwCiAearVv3flp1/gitk=; b=HDS8fBFBtAMaD+
	cOh7UDOVTKaH6zRE1qNHJ/VRA0m4kmkR+TC4wWlaOANaFqleb+W97Qbz4AAPAJS/FZ80HSjLJpCLw
	ENOwrIUcfa4gnuMNbDrBfVBxUbQg0KDHntvrolyGMvoniPsQbomrchMk9n1UOCTofqhWYPmcppuul
	ufYY6c4epX0+tLSFrdqOxGeH/Nq+rIsKlGhN+7jvs8hpLOn08qhB8LriAjmTCF3fiQWJJc84/8Qc3
	WCTzpiyrU964APlTlO1AC8p7vMiZpztajHOBsHBmy748B3wwCHPmhiWLXPt4AIhHvxIXeTvIcUQOa
	+l6voUvCWSdmnlEWETyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hR8eK-0006Ir-Pn; Thu, 16 May 2019 05:09:48 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hR8eH-0006I6-1M
 for linux-riscv@lists.infradead.org; Thu, 16 May 2019 05:09:46 +0000
Received: by mail-pl1-x642.google.com with SMTP id c5so974319pll.11
 for <linux-riscv@lists.infradead.org>; Wed, 15 May 2019 22:09:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references;
 bh=agOsn/FsJEMc+Zf/iAfFT/NhIk1MJBZxFX9gyrs1azc=;
 b=C7XFLkG1+645K/z9YPQ8jDojz6KnEEmXqDTB1ykI6sc64RJeJDUZR5J5OoM9qn9Gcy
 5XnW4jrY9Q0qnFQ6klWH7yLSifNUGdW58uS+728vWOTcXgvHgjaQwkRtDStMrRA9xPd1
 B0VW4LH2mHoLkJ9WKwhZ52YvjhnEhWzy7MhWcCZLQ55JLD9yzPtUhA+7tZRiVaMGrI4g
 5R0bkfsGDJhpPNha5vbqaPEETH2Qy9xfd9r0Z7CHpnMBVzAi+Uk9sC6+bxFR8O/9i65q
 1hBPlEJR7AXr9G4F0EayyPMxMdgdA2cWm/mg8TeAtRgA0Ez4/ArhdUhl+36/zuvoweD8
 petw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references;
 bh=agOsn/FsJEMc+Zf/iAfFT/NhIk1MJBZxFX9gyrs1azc=;
 b=SqiA9ubQsQJTFlnE7nBW41UHnzAvWY9c9icb0vrHipTJ5uF3hPwl+a17lv+c+4zHy0
 9RiQY5rcWFlnhS7TmfMbkljfcJXBDH7CJKmVtwAH2/jT0/LnZuiNQZ5PshkXSuAdWUE1
 wcYjWFPaPYmTsCrnqTmoktI5ONqT0sMgNiRj0BLm2PgzwU6TEOzk+Jdev7W6MhILqfzQ
 x/RIhOhvQoieDMIhdDgnrj624zFosdchgaA/OrZgym3oJfEkmHHoAjSzuI0l5H7AxzLz
 RftDZM+B4Ds7t2I72GO9a7SeBfxfJPW+qXoIhGW/bWzMzPilFijFQF3bkICE95QR0l1A
 X5Uw==
X-Gm-Message-State: APjAAAVio21ERbJwk6XLi6g7k8Z9KMYJG3CiE2ek+JtVNmyvpwLe0SxA
 wqdu9/JuM+vSyN+sVNCM1ZWrXg==
X-Google-Smtp-Source: APXvYqyOeGqGHbyS1GYeHd3FsJ1ZgTt6oYeWr0jHKsYiJtZNEzr0IKux09yyFHVwkYQTcv7TjxWQsQ==
X-Received: by 2002:a17:902:2d:: with SMTP id 42mr48829831pla.34.1557983384320; 
 Wed, 15 May 2019 22:09:44 -0700 (PDT)
Received: from buildserver-90.open-silicon.com ([114.143.65.226])
 by smtp.googlemail.com with ESMTPSA id u6sm5929531pfa.1.2019.05.15.22.09.40
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 15 May 2019 22:09:43 -0700 (PDT)
From: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
To: robh+dt@kernel.org, mark.rutland@arm.com, peter@korsgaard.com,
 andrew@lunn.ch, palmer@sifive.com, paul.walmsley@sifive.com,
 sagar.kadam@sifive.com, linux-i2c@vger.kernel.org,
 devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v3 3/3] i2c-ocores: sifive: add polling mode workaround for
 FU540-C000 SoC
Date: Thu, 16 May 2019 10:38:40 +0530
Message-Id: <1557983320-14461-4-git-send-email-sagar.kadam@sifive.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1557983320-14461-1-git-send-email-sagar.kadam@sifive.com>
References: <1557983320-14461-1-git-send-email-sagar.kadam@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_220945_083981_A839444F 
X-CRM114-Status: GOOD (  15.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Ref:previous polling mode support in mainline

	commit 69c8c0c0efa8 ("i2c: ocores: add polling interface")

The workaround / fix under OCORES_FLAG_BROKEN_IRQ is particularly for
FU540-COOO SoC.

Signed-off-by: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
---
 drivers/i2c/busses/i2c-ocores.c | 34 ++++++++++++++++++++++++++++------
 1 file changed, 28 insertions(+), 6 deletions(-)

diff --git a/drivers/i2c/busses/i2c-ocores.c b/drivers/i2c/busses/i2c-ocores.c
index aee1d86..00ee45c 100644
--- a/drivers/i2c/busses/i2c-ocores.c
+++ b/drivers/i2c/busses/i2c-ocores.c
@@ -27,6 +27,7 @@
 #include <linux/jiffies.h>
 
 #define OCORES_FLAG_POLL BIT(0)
+#define OCORES_FLAG_BROKEN_IRQ BIT(2) /* Broken IRQ in HiFive Unleashed */
 
 /*
  * 'process_lock' exists because ocores_process() and ocores_process_timeout()
@@ -239,9 +240,13 @@ static irqreturn_t ocores_isr(int irq, void *dev_id)
 	struct ocores_i2c *i2c = dev_id;
 	u8 stat = oc_getreg(i2c, OCI2C_STATUS);
 
-	if (!(stat & OCI2C_STAT_IF))
+	if (i2c->flags & OCORES_FLAG_BROKEN_IRQ) {
+		if (stat & OCI2C_STAT_IF)
+			if (!(stat & OCI2C_STAT_BUSY))
+				return IRQ_NONE;
+	} else if (!(stat & OCI2C_STAT_IF)) {
 		return IRQ_NONE;
-
+	}
 	ocores_process(i2c, stat);
 
 	return IRQ_HANDLED;
@@ -356,6 +361,11 @@ static void ocores_process_polling(struct ocores_i2c *i2c)
 		ret = ocores_isr(-1, i2c);
 		if (ret == IRQ_NONE)
 			break; /* all messages have been transferred */
+		else {
+			if (i2c->flags & OCORES_FLAG_BROKEN_IRQ)
+				if (i2c->state == STATE_DONE)
+					break;
+		}
 	}
 }
 
@@ -406,7 +416,7 @@ static int ocores_xfer(struct i2c_adapter *adap,
 {
 	struct ocores_i2c *i2c = i2c_get_adapdata(adap);
 
-	if (i2c->flags & OCORES_FLAG_POLL)
+	if ((i2c->flags & (OCORES_FLAG_POLL | OCORES_FLAG_BROKEN_IRQ)))
 		return ocores_xfer_polling(adap, msgs, num);
 	return ocores_xfer_core(i2c, msgs, num, false);
 }
@@ -471,7 +481,7 @@ static u32 ocores_func(struct i2c_adapter *adap)
 	},
 	{
 		.compatible = "sifive,fu540-c000-i2c",
-		.data = (void *)TYPE_SIFIVE_REV0,
+		.data = (void *)(TYPE_SIFIVE_REV0 | OCORES_FLAG_BROKEN_IRQ),
 	},
 	{
 		.compatible = "sifive,i2c0",
@@ -601,6 +611,7 @@ static int ocores_i2c_probe(struct platform_device *pdev)
 {
 	struct ocores_i2c *i2c;
 	struct ocores_i2c_platform_data *pdata;
+	const struct of_device_id *match;
 	struct resource *res;
 	int irq;
 	int ret;
@@ -682,13 +693,24 @@ static int ocores_i2c_probe(struct platform_device *pdev)
 
 	irq = platform_get_irq(pdev, 0);
 	if (irq == -ENXIO) {
-		i2c->flags |= OCORES_FLAG_POLL;
+		/*
+		 * Set a OCORES_FLAG_BROKEN_IRQ to enable workaround for
+		 * FU540-C000 SoC in polling mode interface of i2c-ocore driver.
+		 * Else enable default polling mode interface for SIFIVE/OCORE
+		 * device types.
+		 */
+		match = of_match_node(ocores_i2c_match, pdev->dev.of_node);
+		if (match && (long)match->data ==
+				(TYPE_SIFIVE_REV0 | OCORES_FLAG_BROKEN_IRQ))
+			i2c->flags |= OCORES_FLAG_BROKEN_IRQ;
+		else
+			i2c->flags |= OCORES_FLAG_POLL;
 	} else {
 		if (irq < 0)
 			return irq;
 	}
 
-	if (!(i2c->flags & OCORES_FLAG_POLL)) {
+	if (!(i2c->flags & (OCORES_FLAG_POLL | OCORES_FLAG_BROKEN_IRQ))) {
 		ret = devm_request_irq(&pdev->dev, irq, ocores_isr, 0,
 				       pdev->name, i2c);
 		if (ret) {
-- 
1.9.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
