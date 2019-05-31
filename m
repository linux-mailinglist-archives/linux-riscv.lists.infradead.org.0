Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C29D2314BC
	for <lists+linux-riscv@lfdr.de>; Fri, 31 May 2019 20:31:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kqdYJduMH/h9l0QXwEnsXZtYSk2xRNnTZuQXaJRe/bQ=; b=j4eL27VateIPTP
	WyhLse1IUTZTWqDDKCxHsHXRezGU0s8EPHnOo409oL9lws/4Tdq5Nnm1mMtDkXZnbNXNQHjc9OcoY
	dBrBr1f+eD2QYw7mcdRuJYVOtVN4mz/TQmZUosfhELpUG2tyhtW25L+gnrmPFAfV6wkb5OopvYu0O
	tCNJKVWQi9C1abaWPXcYXn/P1bXOxB4zEOP2IEuPhQKzOfbMmAtmaJk18w/DS9Ruj8r1pIutC4Eqx
	djxbjdOIbtiZBBGTlsV9WgBq88+8g73WhTEmumTI/dbtp6OduZITcvpLE3PVkch1thxjJKPlfwzFS
	4wnEdI1N/J0XZyWlWuyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWmIr-0004GC-RG; Fri, 31 May 2019 18:30:57 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWmIo-0004ES-2s
 for linux-riscv@lists.infradead.org; Fri, 31 May 2019 18:30:55 +0000
Received: by mail-pg1-x541.google.com with SMTP id z3so4480647pgp.8
 for <linux-riscv@lists.infradead.org>; Fri, 31 May 2019 11:30:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references;
 bh=/BRFvwHTJGi4mC+l6/NtyYz/ZOf9cjorYo3iOt6cwfc=;
 b=YwsYh5oJQwEPe3fUMLgYt42UUuHz8TcbW/5SHOSf0IySNNotnBLz6Ncn/XYSUY0lvR
 ehqPrkRrKLNcnGatvl7u/qtHnXUv79GA7hpq0fS+e0pHN2HIQ2XKgPwEtVhWuc+I3rkg
 t4lrlx+nsVcuz1d00TbZ+R/qzKQKNiQ5zy/PkSZDogcb1sT60aJcZPcXHitPzI0MLVzp
 OrC442BKu5YfjC6QmsV0cGLa/+ZjxFmlSF3iDQFzy9gDnH7249MzwnOwswDGrsD4O9i5
 Ew/m3oI79+XGy3jNNLkKi3x/EIdY8tp+v2fQLSVoi0kJcHm60szzVxh2VtaDAby5CZI0
 Y+vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references;
 bh=/BRFvwHTJGi4mC+l6/NtyYz/ZOf9cjorYo3iOt6cwfc=;
 b=WkeUg6rpyJrwsd5OnELyRDe+UceEMky9whudgoh+g/pd52uhq/Juawp/SfP8AsuZ6q
 FeSw/kSESBVaaphO1j0M21ivtYrA7HwohfHgGwx1eRjihJfRTXWMhrd+Ox3u9q6wA2wL
 IyUBtUZoO/vqMurBNd0EVbepLiyc8Z0CrUT6Lq8m3GgiiiNTYgbyPvD5SboKAFiVvjzh
 Lf3a0xnm4js17/l71ukR97w6xONuUbsgqi8c9RrxZFry39CsG129/1Hen94d/jtwpgWg
 VajSG+E20Ild8mq2MpyYrqxjFK9CWtrnkgxXl7qrTOeG9Yzr4WS4TnBjpPSuLX3V0lFz
 i6Lw==
X-Gm-Message-State: APjAAAXxXYWGO9+MUQQ3FyPZ68xs4HAsKb8kKoW/27OZ8NMT53sEsvyD
 toVccKnT+m/sh8CYv9lsqCvU2w==
X-Google-Smtp-Source: APXvYqxIXDnKCINPiPDUYB1592TeW9iGXZ+g+jZRRRPmdxLoYPiJ/NXv5iEiJLIhCXbPsgQ9QQWm8w==
X-Received: by 2002:a62:6241:: with SMTP id w62mr12176429pfb.226.1559327453352; 
 Fri, 31 May 2019 11:30:53 -0700 (PDT)
Received: from buildserver-90.open-silicon.com ([114.143.65.226])
 by smtp.googlemail.com with ESMTPSA id 85sm10039511pgb.52.2019.05.31.11.30.49
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Fri, 31 May 2019 11:30:52 -0700 (PDT)
From: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
To: robh+dt@kernel.org, mark.rutland@arm.com, peter@korsgaard.com,
 andrew@lunn.ch, palmer@sifive.com, paul.walmsley@sifive.com,
 sagar.kadam@sifive.com, linux-i2c@vger.kernel.org,
 devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH REPOST v8 2/3] i2c-ocores: sifive: add support for i2c device
 on FU540-c000 SoC.
Date: Sat,  1 Jun 2019 00:00:22 +0530
Message-Id: <1559327423-13001-3-git-send-email-sagar.kadam@sifive.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1559327423-13001-1-git-send-email-sagar.kadam@sifive.com>
References: <1559327423-13001-1-git-send-email-sagar.kadam@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_113054_138002_BB41C32E 
X-CRM114-Status: UNSURE (   9.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
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
