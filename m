Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15F2E23991
	for <lists+linux-riscv@lfdr.de>; Mon, 20 May 2019 16:13:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xixj2ogAAGA5gEI3mATjIgLDwSI55JvQuQqpHbu9XD8=; b=N75ukuKRxu/knw
	o6QJNQHjy144EHedEWc80rCnO/DW7ZOULfi4wWGiJtzCJz7U7FNqZofIWh9ayMHApNoas+rQeUhcP
	rtkgjelPgrQpgbHaQI5AjkB6wwWmjcMvQgDpo8A29X+goz4xhKNCPXh0HCdHfksKErsTa09DP9kg5
	SlBYy14eK9eLliFfVCojV6i1kvIym0q5QrDgQlCEzu1DO140Yh9HLFBmQIJktFGmdjskOPnaRsW5c
	v4b9IGJRd6JK4abbtFC+jY+gqhFer0sdqo/AbQxweeP+tQyDNy+5uFXeWRwQhcQ0kwB+ABBGum0w4
	x2gc95Sl9MOQAlrrZAoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSj2M-00006k-1F; Mon, 20 May 2019 14:13:10 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSj2J-00005d-0c
 for linux-riscv@lists.infradead.org; Mon, 20 May 2019 14:13:08 +0000
Received: by mail-pl1-x644.google.com with SMTP id r18so6776686pls.13
 for <linux-riscv@lists.infradead.org>; Mon, 20 May 2019 07:13:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references;
 bh=KECfzIlIxEDfVdyErNUrjun4OGvSgTJTFJXl1TIJwHg=;
 b=Io8Djg5IajMWP4jrjZz+XJT0xkaQiY/xIrp3FP/B/kghGek0Q/EEW9Itb8Ti2zjMmi
 nOu3fLxeW0Rdqh/vA/JlG1/RiCGKxBs7n4aNh5O2rR+/mADH0YJCAYkBtkzS1D2Oiefl
 gPUWRIvc/LWxfW/8yRG745QLWWOKS5RRINiqT+q/JbAuSsb56bIeGRdStsNYnsQFK/AJ
 xnzH2cMLcr9HkXuP1i0yfFu4Yk0d5vGu9tlZ2IJIxxvAnfzffcF4njZHkljSccFgIsuB
 6jDqZaI25gW5Co/g2Z6S6uhig1ZxS/TtkwJTIH125L0NmvtvkHeSvRvW+ZNq7hHdNrKN
 CtnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references;
 bh=KECfzIlIxEDfVdyErNUrjun4OGvSgTJTFJXl1TIJwHg=;
 b=nndS68LUCoJcyRoQM1UycA/WJgWW/m0q4U8JngJ3NCQbu8liMRvP7uen6KQHe/R3qK
 7WVwh1e3uqZT3THwBSBP/ijIiBvQVIHm/7Qxoln1l9/TD8iqxM8gRDmDu4JFCmG56yhx
 B4YGVsbSY2fwVcaB3kakpDfnfgqvBtIsjmw25SSR0ka9uiq/iO267YQCf1stB7KxCR5E
 1wn3J1WMmitB1ZXkKkVGhuUVWX3n5fIjELhIA5U30H5Bqr1Lb4DEXgJtA0LvjG0a/q+T
 zk6SHSug5m6mcmuYnUb1Mr0QzbV3zwA+R4LxHOoMQlQuNdQ+k7oeaIfWlbhEb2aGButk
 cLZg==
X-Gm-Message-State: APjAAAXegVZVWw8KJu+L/MCe9YBICmBLXpg5YrnVdojReeHBnyMXiNE/
 NUhGT2yFJT0kEPAhWitBy3ulaA==
X-Google-Smtp-Source: APXvYqzr5Do1Q2Uusd8GpZ+9iK5oqKiy872Tx3Ms8RWbPMtHje6T82nYT6m4tFsbLCdVefsHrX6nNQ==
X-Received: by 2002:a17:902:3283:: with SMTP id
 z3mr49834232plb.278.1558361586328; 
 Mon, 20 May 2019 07:13:06 -0700 (PDT)
Received: from buildserver-90.open-silicon.com ([114.143.65.226])
 by smtp.googlemail.com with ESMTPSA id a9sm26388248pgw.72.2019.05.20.07.13.02
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 20 May 2019 07:13:05 -0700 (PDT)
From: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
To: robh+dt@kernel.org, mark.rutland@arm.com, peter@korsgaard.com,
 andrew@lunn.ch, palmer@sifive.com, paul.walmsley@sifive.com,
 sagar.kadam@sifive.com, linux-i2c@vger.kernel.org,
 devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v5 3/3] i2c-ocores: sifive: add polling mode workaround for
 FU540-C000 SoC.
Date: Mon, 20 May 2019 19:41:18 +0530
Message-Id: <1558361478-4381-4-git-send-email-sagar.kadam@sifive.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1558361478-4381-1-git-send-email-sagar.kadam@sifive.com>
References: <1558361478-4381-1-git-send-email-sagar.kadam@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_071307_054682_76CFC5DC 
X-CRM114-Status: GOOD (  14.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 drivers/i2c/busses/i2c-ocores.c | 22 ++++++++++++++++++++--
 1 file changed, 20 insertions(+), 2 deletions(-)

diff --git a/drivers/i2c/busses/i2c-ocores.c b/drivers/i2c/busses/i2c-ocores.c
index aee1d86..c3bc97d 100644
--- a/drivers/i2c/busses/i2c-ocores.c
+++ b/drivers/i2c/busses/i2c-ocores.c
@@ -27,6 +27,7 @@
 #include <linux/jiffies.h>
 
 #define OCORES_FLAG_POLL BIT(0)
+#define OCORES_FLAG_BROKEN_IRQ BIT(1) /* Broken IRQ for FU540-C000 SoC */
 
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
 
@@ -601,6 +611,7 @@ static int ocores_i2c_probe(struct platform_device *pdev)
 {
 	struct ocores_i2c *i2c;
 	struct ocores_i2c_platform_data *pdata;
+	const struct of_device_id *match;
 	struct resource *res;
 	int irq;
 	int ret;
@@ -683,6 +694,13 @@ static int ocores_i2c_probe(struct platform_device *pdev)
 	irq = platform_get_irq(pdev, 0);
 	if (irq == -ENXIO) {
 		i2c->flags |= OCORES_FLAG_POLL;
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
