Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B22C5319E2
	for <lists+linux-riscv@lfdr.de>; Sat,  1 Jun 2019 08:12:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=haDMJV087DKTVS1FcjlLr7TtSrCuoWHqRDpZXy5+368=; b=IpEY9jMXrNLDwD
	zYjXrxcziihxTpQqInQG1zL1wVsi53i2SYNCY6qOKvJ59ZxiX+MRkb+5vA//1hycrWLYQGh8p2oX0
	SET7I9zamx9HHXbWvbg0zqC17k/Z0wWQRbAuY+CQbAsv17QzS+OwecaPPUMPk4MCh9GIcPeJgEwDc
	ii/O+QIZdVsXLUZRMjHzXM0nQVZ+DbuntFrFqve5zFvD0XF+IQ5DYsZJj/OQAnJUHirwG+VxSBYdu
	yE7PerFAQ0Aog3y4RFD+hd9Vx/weN0J6Lo/zoiOIReIWy2iKH4b8ltUrswRRezC3VH/vQr3WMEzXz
	tGtwGHDihnk/i2pCb0Ow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWxFG-00048R-JY; Sat, 01 Jun 2019 06:11:58 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWxFD-000472-Gw
 for linux-riscv@lists.infradead.org; Sat, 01 Jun 2019 06:11:56 +0000
Received: by mail-pf1-x444.google.com with SMTP id c14so5079215pfi.1
 for <linux-riscv@lists.infradead.org>; Fri, 31 May 2019 23:11:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references;
 bh=SOLuY/R/QS+l1W9FKWqgele10Viv9LvbKIwVAA0kNm8=;
 b=d+cvo2gIFq6hLOlcwYDfGirRUjDXJLuj5z61HgVDs72gYfgBpvUrHrxic6IdRyYNK6
 64sdFMaYgyrIM2I+55keFM26XVesvzBEkNS4lRyfEazbFN5tmkBNX4Sn+iAUsB/jlxou
 IbVPwJUO6aw4M9lkQj+5SJhH1n9mi86mK/afg8kY9OWezCV/Yqjxh8h1QKiDAoOJdwgP
 iiLDalPwwEIFUx3jdSrigiQSZuccIHWEe8o2hPC6WAd3m13lOpnUjCBMvuJPQr3nYARI
 Dv225GD/CMEyRl+ZchLqkU2PrF0q38vB7knwerfSNZEfPVmSk/R+Q6RBiMnEE0IEVIOY
 2pXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references;
 bh=SOLuY/R/QS+l1W9FKWqgele10Viv9LvbKIwVAA0kNm8=;
 b=bXsNOkOjKziPYY60q+s9JZLvT+mo13nKzkzEV/IaULC1aPMnt5X1b+XmdK80SzYpXM
 d2MUu1AQFrfMzJaP6l3gmXhQoCa7H3+kWRR16UuSG21a9PxgasRd/IL/6sxoAcI0ZSo4
 0yKOTo1Z8qS60t0w9RBsLNFJYRTHUoENVOdwPFU4PY1liVHRZZP0vRjykQ2IQ0A3ZJZx
 jVkrQN24HKMUnV6sZSkhKnInDeVi7DJQZ1Ltw083t+FtilYEDMVz5nxMD3H/LacfyY87
 gh0ZTxcfiFITPUJHsDBDGdOnpTTxcmPOJUbtvG79LwfVvEq8Pi4QEemXrOby99Qr9nDM
 z21w==
X-Gm-Message-State: APjAAAUDmLOoZTu/9FtzVg3KsTo5eROZhshDuN7mlb4wuCdAibdqwcfT
 HGeYd3ugAh2DyBEPbHaoAtbGmQ==
X-Google-Smtp-Source: APXvYqyaFP3RwpKW0rt3bz1dzY/B4BEYi8u/4Gpw4jzlPR9FDwU98CbU1B23zpMqMoCntWhYDmyfag==
X-Received: by 2002:a62:5f02:: with SMTP id t2mr15171599pfb.7.1559369514886;
 Fri, 31 May 2019 23:11:54 -0700 (PDT)
Received: from buildserver-90.open-silicon.com ([114.143.65.226])
 by smtp.googlemail.com with ESMTPSA id 2sm8935850pgl.40.2019.05.31.23.11.51
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Fri, 31 May 2019 23:11:54 -0700 (PDT)
From: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
To: robh+dt@kernel.org, mark.rutland@arm.com, peter@korsgaard.com,
 andrew@lunn.ch, palmer@sifive.com, paul.walmsley@sifive.com,
 sagar.kadam@sifive.com, linux-i2c@vger.kernel.org,
 devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH REPOST v8 3/3] i2c-ocores: sifive: add polling mode workaround
 for FU540-C000 SoC.
Date: Sat,  1 Jun 2019 11:41:15 +0530
Message-Id: <1559369475-15374-4-git-send-email-sagar.kadam@sifive.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1559369475-15374-1-git-send-email-sagar.kadam@sifive.com>
References: <1559369475-15374-1-git-send-email-sagar.kadam@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_231155_587278_E1ABF39E 
X-CRM114-Status: GOOD (  15.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Reviewed-by: Andrew Lunn <andrew@lunn.ch>
---
 drivers/i2c/busses/i2c-ocores.c | 24 ++++++++++++++++++++++--
 1 file changed, 22 insertions(+), 2 deletions(-)

diff --git a/drivers/i2c/busses/i2c-ocores.c b/drivers/i2c/busses/i2c-ocores.c
index b334fa2..4117f1a 100644
--- a/drivers/i2c/busses/i2c-ocores.c
+++ b/drivers/i2c/busses/i2c-ocores.c
@@ -35,6 +35,7 @@ struct ocores_i2c {
 	int iobase;
 	u32 reg_shift;
 	u32 reg_io_width;
+	unsigned long flags;
 	wait_queue_head_t wait;
 	struct i2c_adapter adap;
 	struct i2c_msg *msg;
@@ -84,6 +85,8 @@ struct ocores_i2c {
 #define TYPE_GRLIB		1
 #define TYPE_SIFIVE_REV0	2
 
+#define OCORES_FLAG_BROKEN_IRQ BIT(1) /* Broken IRQ for FU540-C000 SoC */
+
 static void oc_setreg_8(struct ocores_i2c *i2c, int reg, u8 value)
 {
 	iowrite8(value, i2c->base + (reg << i2c->reg_shift));
@@ -236,9 +239,12 @@ static irqreturn_t ocores_isr(int irq, void *dev_id)
 	struct ocores_i2c *i2c = dev_id;
 	u8 stat = oc_getreg(i2c, OCI2C_STATUS);
 
-	if (!(stat & OCI2C_STAT_IF))
+	if (i2c->flags & OCORES_FLAG_BROKEN_IRQ) {
+		if ((stat & OCI2C_STAT_IF) && !(stat & OCI2C_STAT_BUSY))
+			return IRQ_NONE;
+	} else if (!(stat & OCI2C_STAT_IF)) {
 		return IRQ_NONE;
-
+	}
 	ocores_process(i2c, stat);
 
 	return IRQ_HANDLED;
@@ -353,6 +359,11 @@ static void ocores_process_polling(struct ocores_i2c *i2c)
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
 
@@ -595,6 +606,7 @@ static int ocores_i2c_probe(struct platform_device *pdev)
 {
 	struct ocores_i2c *i2c;
 	struct ocores_i2c_platform_data *pdata;
+	const struct of_device_id *match;
 	struct resource *res;
 	int irq;
 	int ret;
@@ -677,6 +689,14 @@ static int ocores_i2c_probe(struct platform_device *pdev)
 	irq = platform_get_irq(pdev, 0);
 	if (irq == -ENXIO) {
 		ocores_algorithm.master_xfer = ocores_xfer_polling;
+
+		/*
+		 * Set in OCORES_FLAG_BROKEN_IRQ to enable workaround for
+		 * FU540-C000 SoC in polling mode.
+		 */
+		match = of_match_node(ocores_i2c_match, pdev->dev.of_node);
+		if (match && (long)match->data == TYPE_SIFIVE_REV0)
+			i2c->flags |= OCORES_FLAG_BROKEN_IRQ;
 	} else {
 		if (irq < 0)
 			return irq;
-- 
1.9.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
