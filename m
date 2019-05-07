Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6357516667
	for <lists+linux-riscv@lfdr.de>; Tue,  7 May 2019 17:15:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:MIME-Version:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mPzYHLu/yTZtIWaFmmQZPziGmDr7cAK8PtbPbRCAF18=; b=hqpETjsxpwkvYa
	0/vP/4JASWzjI7VoE5nCiH+ugifhcvu9UeQhNbu5dKAnUdLAkUMdSOAA68RDcrrzCjDDbqiU45uet
	cWDTzf2X0Xgz68g3LPRd0Hc8iFRBiOv2d0SJgMyVs04gTYfeFt6cqA/6SKW/xQLBs1ZGkhp9aSbLK
	md8veSIm/XROUTVuW6gPcFHGzTheA/fQKKVwGfUOqcjXF1nvN/qPCp05jiT7hgE0lfIt7mg5gUVG8
	wqIeuNlak0rezyYqVJN7bsmcltt3zJFN4sbnoICVSUt+3dWffbU+2cdIOm4+EIfK6ZtEZ/82Oerpr
	iSaYHoElt0B8F5y9OXsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO1oy-0002BY-Ur; Tue, 07 May 2019 15:15:56 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO1ow-0002Ad-09
 for linux-riscv@lists.infradead.org; Tue, 07 May 2019 15:15:55 +0000
Received: by mail-pf1-x444.google.com with SMTP id 13so8514407pfw.9
 for <linux-riscv@lists.infradead.org>; Tue, 07 May 2019 08:15:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:from:to:subject:date:message-id:in-reply-to:references;
 bh=NeGCH6Ojpl3AA6/me/ugRjP09HRY36CIdEMgVXER1bQ=;
 b=XJgB9Jd7ccJyv9kiW7k2QXrYBcT8dX5La4RUFXpWfVCz/E6/DIzy1bwrjzCukKzhzF
 NEtDEM82tXYdvtrCJUIaPmgm8Wluf/WSzrmJ6R65qMNGb1J8e+hZmMvE3xvzuIixZZcF
 Azyjx+PRPcgLJqhwORgx/fx2wCq2ntEnIaGMdW0nfi97IjM+/xZaCh+bE17UMq4dIsh3
 ZzQEVjtYEUhk0+n+vYnbtVd8pO12PBoKAMT0SDXrKPPkeTVW4yMF0F9vzFO3i6so3QSa
 H30hifc+eK7EaETys9IACDKvLynpwYFGz0mHLDL56S5LVZ9wPSdrgRfp76OSeY4hiuzL
 3IBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=mime-version:x-gm-message-state:from:to:subject:date:message-id
 :in-reply-to:references;
 bh=NeGCH6Ojpl3AA6/me/ugRjP09HRY36CIdEMgVXER1bQ=;
 b=EdeRvihASCvIXF7HyKKzCG8lE/BUUBiWUAwn08sWvS4Tv8E/x1zPK6Nfb9RwK62Xli
 0BubQoVD7RsdzFTnbuDkfD0yFzciv+FmlO6hXs3RM3DnSlt71625oPXrs5oWJevuyhI1
 t2Gx6niHJzwzXEyGy0hT6NUkZG04ZRRRBcDrICCMRXfDuvTA+gEMX1Iub7Zc/sJ1zlWb
 rkwDT2AKAGdFmADef+Ajf6Wme+6ufi03h66W2rmJGrc32sfBAonwhJEHPuYoTAYCYmGR
 opnpZjgpYmGHTWckwIxdm9icUaErYoZtE0TNQOqhE2bvJlYqak+qp574Hmbuv13BPrdI
 DAsA==
MIME-Version: 1.0
X-Gm-Message-State: APjAAAVdjUiqyZM/cdJOEGU5gZ5X3fl+ODOZu4JNW5lePWEu8rvrwJhY
 s9HBWj6DDP54Fn+uVDbbJ6jKjxw9jdNP5mbpCRv5pFoBG4Y8fW5myE/kKA5wA37Bw2qYqezJib4
 EPHimfLKbcKi2lElwWGi3gA==
X-Google-Smtp-Source: APXvYqyhH2XogAEsyizfeHFYjaUYlPV1pmjmeUbGXYW9GlHqvMYgmgG9TsheYDohBKvxE8n5+9VMpg==
X-Received: by 2002:a63:cf0d:: with SMTP id j13mr10201967pgg.433.1557242153566; 
 Tue, 07 May 2019 08:15:53 -0700 (PDT)
Received: from buildserver-90.open-silicon.com ([114.143.65.226])
 by smtp.googlemail.com with ESMTPSA id 2sm5397398pgc.49.2019.05.07.08.15.49
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 07 May 2019 08:15:53 -0700 (PDT)
From: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
To: robh+dt@kernel.org, mark.rutland@arm.com, peter@korsgaard.com,
 andrew@lunn.ch, palmer@sifive.com, paul.walmsley@sifive.com,
 sagar.kadam@sifive.com, linux-i2c@vger.kernel.org,
 devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2 v2 3/3] i2c-ocores: sifive: add polling mode workaround for
 FU540-C000 SoC.
Date: Tue,  7 May 2019 20:45:08 +0530
Message-Id: <1557242108-13580-4-git-send-email-sagar.kadam@sifive.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1557242108-13580-1-git-send-email-sagar.kadam@sifive.com>
References: <1557242108-13580-1-git-send-email-sagar.kadam@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_081554_043025_5924358C 
X-CRM114-Status: GOOD (  13.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
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

The workaround / fix under OCORES_FLAG_BROKEN_IRQ is particularly for
FU540-COOO SoC.

Signed-off-by: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
---
 drivers/i2c/busses/i2c-ocores.c | 28 ++++++++++++++++++++++++----
 1 file changed, 24 insertions(+), 4 deletions(-)

diff --git a/drivers/i2c/busses/i2c-ocores.c b/drivers/i2c/busses/i2c-ocores.c
index 7bf7b0c..8b994b4 100644
--- a/drivers/i2c/busses/i2c-ocores.c
+++ b/drivers/i2c/busses/i2c-ocores.c
@@ -27,6 +27,7 @@
 #include <linux/jiffies.h>
 
 #define OCORES_FLAG_POLL BIT(0)
+#define OCORES_FLAG_BROKEN_IRQ BIT(1)
 
 /*
  * 'process_lock' exists because ocores_process() and ocores_process_timeout()
@@ -239,8 +240,13 @@ static irqreturn_t ocores_isr(int irq, void *dev_id)
 	struct ocores_i2c *i2c = dev_id;
 	u8 stat = oc_getreg(i2c, OCI2C_STATUS);
 
-	if (!(stat & OCI2C_STAT_IF))
+	if (i2c->flags & OCORES_FLAG_BROKEN_IRQ) {
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
+			if (i2c->flags & OCORES_FLAG_BROKEN_IRQ)
+				if (i2c->state == STATE_DONE)
+					break;
+		}
 	}
 }
 
@@ -406,7 +417,7 @@ static int ocores_xfer(struct i2c_adapter *adap,
 {
 	struct ocores_i2c *i2c = i2c_get_adapdata(adap);
 
-	if (i2c->flags & OCORES_FLAG_POLL)
+	if ((i2c->flags & (OCORES_FLAG_POLL | OCORES_FLAG_BROKEN_IRQ)))
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
+		 * Set a OCORES_FLAG_BROKEN_IRQ to enable workaround for FU540
+		 * in polling mode interface of i2c-ocore driver.
+		 */
+		match = of_match_node(ocores_i2c_match, pdev->dev.of_node);
+		if (match && (long)match->data == TYPE_SIFIVE_REV0)
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
