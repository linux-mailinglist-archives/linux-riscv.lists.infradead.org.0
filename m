Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A1E0319DE
	for <lists+linux-riscv@lfdr.de>; Sat,  1 Jun 2019 08:11:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kqdYJduMH/h9l0QXwEnsXZtYSk2xRNnTZuQXaJRe/bQ=; b=ArE51ESWoUkicY
	E3L9cd+p8Bhg0Vc0XjVPVljW3Che11ROphrKHY+wHBaK+rKxWlEXc0+ZjX/OzTd3/+6+hBw6mztKt
	mNzfTbVHTfOEj8g49tVCnEg8AHevbDaXKSDqWQjoy2Z+RJa36cfRznvlxdaz2YasN5kR9EldnJfPZ
	p8Ah3Rh7bg/+zJPlvNK1vxx4SWxcXEzwUbzWSpE3PG9g+hedYks4AQiDMXEdGRlVE9UMYAmMmJnuq
	SG8PUwdp3fqwY9xd/nE9iRwGX9mIk8I+zLrPQkfw0Zr1tj49x9/pgrLSMNfkphJI8NjymMlwSqC3z
	y3F+FDeNrjA32FuoCTkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWxFA-00044E-RX; Sat, 01 Jun 2019 06:11:52 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWxF7-00043A-Km
 for linux-riscv@lists.infradead.org; Sat, 01 Jun 2019 06:11:50 +0000
Received: by mail-pf1-x442.google.com with SMTP id c6so7476066pfa.10
 for <linux-riscv@lists.infradead.org>; Fri, 31 May 2019 23:11:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references;
 bh=/BRFvwHTJGi4mC+l6/NtyYz/ZOf9cjorYo3iOt6cwfc=;
 b=GYWLNCJxwtsJELEDc5nOhmMnFhrKwQdhBjRn/pKyrJmzcf6pahtsoYHDBq+A92qt9z
 CKOroINqBp1vkIndKgWR+oEcf11Suw39Yg7+jtLk5PE8a/8iwxexLe8YnsyRFbt/M0Aw
 U+guAgtPl5u2eJRJhqlKsoxPrYUHxVJNYNxkmTnO6etOVMsMXG7M6kK8xfbHPLMjllgP
 nvCPJBqQQvRf+Q9Ynwl7ENeH6EUxw98uPQSFkCO8TY/kSEKBFOfslVh+dMcAxHDblCDi
 PBhpoERxK22Q4q6VPYMNgQgguFBIG6CDZ5JQtZ6O+QpI5/hQ3Ru0lkdIwgSsMN4MOPps
 UiOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references;
 bh=/BRFvwHTJGi4mC+l6/NtyYz/ZOf9cjorYo3iOt6cwfc=;
 b=HRljHLHgIny/BeBaGeikHvoOZ4synkM4WsRR0gWo5WFw+tlkdAskMQcqFIFTSL2kqZ
 i7lZhhH5MQlPSfBfzc99LM/ICE0hvOD7ZMI/seS0WaPvRFZ9Qv63cJtrmYg2DRcCbskg
 yFxNbEajZHD5l64ibc9caf5cod0MARVepAicU0nTspD6V5ywZgyiFdcVPloil48Utep4
 Tr9ogzAsvYi8Ek9vo8gQr3KTSd39oys/580vfrAAi3es3aOlhMJ5PkJvIcxP0PG9rypE
 SB1/Yd3drWPa9Xb9zO7fzqNp5qUZMXVq40kJW6/WMoNukaV4OO+/f769Ok7HShADPFLb
 FfAg==
X-Gm-Message-State: APjAAAVWpH2oe5b2zOYJvKgYbNZxD19b+qk88Ot/92iJmg5ReprYNfK3
 vQ3rEDqRVwLVe7YVTX1pTa67AA==
X-Google-Smtp-Source: APXvYqzlk3hrluDCHk21oBfq1TiS/zO95WiT9eRFQoVOSTZcNwULqaajTm6A9o7fAd6f12vsWlBp5w==
X-Received: by 2002:a63:8449:: with SMTP id k70mr13784046pgd.208.1559369509095; 
 Fri, 31 May 2019 23:11:49 -0700 (PDT)
Received: from buildserver-90.open-silicon.com ([114.143.65.226])
 by smtp.googlemail.com with ESMTPSA id 2sm8935850pgl.40.2019.05.31.23.11.45
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Fri, 31 May 2019 23:11:48 -0700 (PDT)
From: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
To: robh+dt@kernel.org, mark.rutland@arm.com, peter@korsgaard.com,
 andrew@lunn.ch, palmer@sifive.com, paul.walmsley@sifive.com,
 sagar.kadam@sifive.com, linux-i2c@vger.kernel.org,
 devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH REPOST v8 2/3] i2c-ocores: sifive: add support for i2c device
 on FU540-c000 SoC.
Date: Sat,  1 Jun 2019 11:41:14 +0530
Message-Id: <1559369475-15374-3-git-send-email-sagar.kadam@sifive.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1559369475-15374-1-git-send-email-sagar.kadam@sifive.com>
References: <1559369475-15374-1-git-send-email-sagar.kadam@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_231149_677242_93B019FA 
X-CRM114-Status: UNSURE (   9.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
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

Update device id table for Opencore's I2C master based re-implementation
used in FU540-c000 chipset on HiFive Unleashed platform.

Device ID's include Sifive, soc-specific device for chip specific tweaks
and sifive IP block specific device for generic programming model.

Signed-off-by: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
---
 drivers/i2c/busses/i2c-ocores.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/i2c/busses/i2c-ocores.c b/drivers/i2c/busses/i2c-ocores.c
index c3dabee..b334fa2 100644
--- a/drivers/i2c/busses/i2c-ocores.c
+++ b/drivers/i2c/busses/i2c-ocores.c
@@ -82,6 +82,7 @@ struct ocores_i2c {
 
 #define TYPE_OCORES		0
 #define TYPE_GRLIB		1
+#define TYPE_SIFIVE_REV0	2
 
 static void oc_setreg_8(struct ocores_i2c *i2c, int reg, u8 value)
 {
@@ -462,6 +463,14 @@ static u32 ocores_func(struct i2c_adapter *adap)
 		.compatible = "aeroflexgaisler,i2cmst",
 		.data = (void *)TYPE_GRLIB,
 	},
+	{
+		.compatible = "sifive,fu540-c000-i2c",
+		.data = (void *)TYPE_SIFIVE_REV0,
+	},
+	{
+		.compatible = "sifive,i2c0",
+		.data = (void *)TYPE_SIFIVE_REV0,
+	},
 	{},
 };
 MODULE_DEVICE_TABLE(of, ocores_i2c_match);
-- 
1.9.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
