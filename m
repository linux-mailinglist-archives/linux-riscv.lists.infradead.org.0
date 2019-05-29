Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C5F8D2D4BC
	for <lists+linux-riscv@lfdr.de>; Wed, 29 May 2019 06:28:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kqdYJduMH/h9l0QXwEnsXZtYSk2xRNnTZuQXaJRe/bQ=; b=UNLyuJtZMSoeUr
	hLV5c++ySkP/dbCaxCvY9KKtRsm+K8TjpfvsadiY5m/x/TwGChA9fiP13fOyTqk8TZuIfdjG9gGNQ
	0I0rK0YYi4VfQVgzwaczZIzbCvhjib3n7YdF98kEgZxNLRjZ/cV75Z4WIedgfLmwq/ktNrpKxenWm
	bw+unrHZAB/MRuT/5WoKsKTxXnCpm1Fw7Ny+dOGC+8I5efiXlQFXAuLKqtrsHcI3AtjjFCREH6+Sz
	TTDXbMGiWZffDMwbj4Dq5WKe0TyYO1gYInbGwDbsAVrSl8PGgFOBIRqzfBqjwQNx8a+rvsgwVo+O3
	FL3bjDAUnLxNImnqzwDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVqC2-0005e5-Mc; Wed, 29 May 2019 04:28:02 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVqBy-0005dL-OR
 for linux-riscv@lists.infradead.org; Wed, 29 May 2019 04:28:00 +0000
Received: by mail-pl1-x642.google.com with SMTP id bb3so464619plb.13
 for <linux-riscv@lists.infradead.org>; Tue, 28 May 2019 21:27:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references;
 bh=/BRFvwHTJGi4mC+l6/NtyYz/ZOf9cjorYo3iOt6cwfc=;
 b=SCunRLc4T0rNk+sSZV9/Xml+fAJUPREjBlQu89pZCipHWUR6B+SVrumnSlUAFodgr/
 /+ouQN5p7X6JofF86wPXAkN1N+QPSaK2irANBHSJawDb4noqMbmnXUFyQ9OzigQy9uTv
 4gI/CMvTfcABsG8DTmgRMLKa/zmITDwOxUyWpsU0ZANP+fsVAO2gqFzonXdIbaOjzmII
 rZDSKKIVNDKP/S5rp4hleCbStov7sYu1mdxgWlFvjeLHH5sRlsbCQ5XaYfcemwTIDJ9p
 II8VFmtwi8k0eDucVVWmpEasuvmH1rKx/wNKLerI5FJhzgCKkJlfknFR/q5jqFLlsWOE
 0TRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references;
 bh=/BRFvwHTJGi4mC+l6/NtyYz/ZOf9cjorYo3iOt6cwfc=;
 b=P0aX5boVK/vXuXIOCTWgYT6/YyhIIjyQpVG2pzgbradNnUnJUib4vnuiavUBn8aggy
 9xa55AlDChCPGJA4TMMZhw2Y1hgnTDcA9oPL20Cb1nUbX3Z678Hwj3F/IrgOrnDVAbKZ
 +9B29o6Xrrd80fdpWjo2KsFevv5czacqprfdbI89180gsLByL1uR3EmCDSeuTsY6zHqn
 Y05m6d9hgUH1+3OMu+LO5GsVoPl4JFRPsVfr/JiC2k5vE4na05Oq2Xn5/mQVRF9AexQG
 fls4GCMxXtVxX5S2k2j5H0RjQ7DqJOlo3HydaibLy1ow9Juy6eoGpqcB63lH/mCnESJz
 kGSQ==
X-Gm-Message-State: APjAAAUqi+MlcuZ6QXpzc2Yy6RYYZj11PolKupPAft/JplZcjVQstHSq
 sFpckX/7pxvYvhRkWGaisBdENQ==
X-Google-Smtp-Source: APXvYqx+J/LVDOtRKJD6vV3CguLJwpznGJEh2qKtm72f8Qx+c6FbWQyMgSIZL6tuCUCLJ61wz2qm+Q==
X-Received: by 2002:a17:902:8648:: with SMTP id
 y8mr4690946plt.30.1559104077984; 
 Tue, 28 May 2019 21:27:57 -0700 (PDT)
Received: from buildserver-90.open-silicon.com ([114.143.65.226])
 by smtp.googlemail.com with ESMTPSA id
 c15sm16444591pfi.172.2019.05.28.21.27.53
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 28 May 2019 21:27:57 -0700 (PDT)
From: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
To: robh+dt@kernel.org, mark.rutland@arm.com, peter@korsgaard.com,
 andrew@lunn.ch, palmer@sifive.com, paul.walmsley@sifive.com,
 sagar.kadam@sifive.com, linux-i2c@vger.kernel.org,
 devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v8 2/3] i2c-ocores: sifive: add support for i2c device on
 FU540-c000 SoC.
Date: Wed, 29 May 2019 09:57:26 +0530
Message-Id: <1559104047-13920-3-git-send-email-sagar.kadam@sifive.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1559104047-13920-1-git-send-email-sagar.kadam@sifive.com>
References: <1559104047-13920-1-git-send-email-sagar.kadam@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_212758_793336_9BD2297E 
X-CRM114-Status: UNSURE (   9.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
