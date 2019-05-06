Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CEC0A14A68
	for <lists+linux-riscv@lfdr.de>; Mon,  6 May 2019 14:57:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kORV63yNsQ7wupeerOR4iJSy4SM2WcOHWwWXlX2Db+I=; b=ZfrTqLiSxLtcNf
	megzwCIcY5Hamuc4ocR4vEZZq4wl/VDa+G0DfAQt7V8tEs1xNmuMYOX4nLX/BcZFa67mDUh6bFOnQ
	BP9cM6uxEMtySFjGSzChpUNQ7STRyRk/HEZrwT7gTl31Ox9zwpIMuww5S/8feQxRWhTUiHvxSXWwB
	3ahGXxZLDDoKTyO0a7KXCvUJfgLch+HMZVozj1ESj47ENHc5wjjAdOevj3kTVH9dFHDx9w4sZXDRb
	vT3kXzU8LVYHq+lUr7LFSmj1ym6Ymsa8jQ13L9/h238qZ8GxzFBxICEhvO0QR1L/l4uChG5+P73Oi
	fm7LRRHvrZbmLVCK7Olg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNdBT-0002nI-Ru; Mon, 06 May 2019 12:57:31 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNdBQ-0002mU-LG
 for linux-riscv@lists.infradead.org; Mon, 06 May 2019 12:57:30 +0000
Received: by mail-pf1-x441.google.com with SMTP id v80so6739779pfa.3
 for <linux-riscv@lists.infradead.org>; Mon, 06 May 2019 05:57:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references;
 bh=AZwN4Y8XxFUK2pvt2N7G+01LXJuGE7M19RGGBuG2SYw=;
 b=hKnJBVWqMGJCsq/b4yG5yQ3YyVPH8QCMFEt15kpkj0ig0/GAPBdsTC7mLxoDrvbhMX
 mLHM301iBO2DSckX1JDR9YUqGRrQzzmT/7wzfPxD2iMHTygGIYoQPGP5SUZIPgmlyEHn
 v5ekJE76muREcBmXVd29r6Kf96uVKyvgZlNF+HMrDmOpN4dxHJqZHbhCTVgnBDra93Ul
 RdN5vSctEmwI9geG2kgV0nGD7C2NmdtTb4mg1SgSQBL9TwDPEJdO5QPBm1jB2CYw5is8
 w6I7atptCsJeuLv1BNzLZPApIqAfpJbYLoRK7/D891Uzhl6ZH3Lggynd4lWIrZmWIFOl
 fwUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references;
 bh=AZwN4Y8XxFUK2pvt2N7G+01LXJuGE7M19RGGBuG2SYw=;
 b=h0jJwYwNIwjHfRo5aSvt9yE7/lB4w2Nf1MIqWX/F/yJskT/LzHLT1z7w3jcM8iYAnj
 6gEAHIdFJfq3VgB7a6B3vtAAah7CITj7yTYRra/GkTJNI+kpifOEJG0Uf2oAGtvac/7t
 DMzlO0HqLkuTgLSasjqFRiL1SHbx0D5o+M5YUfuGP6R5kwo7kxtEZjwaTs0hmdrpT+hY
 dUu5vinhT2x0UHcN5L1RVJw25/zecoxOc+0pC1PImW65a1U7yavljXZBQ/L+9h8eostN
 9olyK4VhvKj32RnrP7hJGgZlX1TU4tgmXoFRyxwn1YDSkT2H8BTdNxOWPsv7waWg5ZLd
 0kpg==
X-Gm-Message-State: APjAAAVqrgGHMPXBFUK4xudOtOsEO3awQcTgvdaPte/pUsdfF7IyOWIa
 0pz6TzGQD9tqvxaQTwzr5m8Pcw==
X-Google-Smtp-Source: APXvYqySdJKvrX5oi/GsnI2Zz/4BtbWRcPafJni1v7sN+SE8nvhny3X09satX04k94LSFysH41SGqw==
X-Received: by 2002:a65:654c:: with SMTP id a12mr31839474pgw.101.1557147447917; 
 Mon, 06 May 2019 05:57:27 -0700 (PDT)
Received: from buildserver-90.open-silicon.com ([114.143.65.226])
 by smtp.googlemail.com with ESMTPSA id p81sm18031132pfa.26.2019.05.06.05.57.23
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 06 May 2019 05:57:27 -0700 (PDT)
From: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
To: robh+dt@kernel.org, mark.rutland@arm.com, palmer@sifive.com,
 paul.walmsley@sifive.com, sagar.kadam@sifive.com, peter@korsgaard.com,
 andrew@lunn.ch, linux-i2c@vger.kernel.org, devicetree@vger.kernel.org,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v1 v1 2/3] i2c-ocore: sifive: add support for i2c device on
 FU540-c000 SoC.
Date: Mon,  6 May 2019 18:23:59 +0530
Message-Id: <1557147240-29551-3-git-send-email-sagar.kadam@sifive.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1557147240-29551-1-git-send-email-sagar.kadam@sifive.com>
References: <1557147240-29551-1-git-send-email-sagar.kadam@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_055728_902213_25460CFC 
X-CRM114-Status: GOOD (  10.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
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

Update device id table for Opencores I2C master used in HiFive Unleashed
platform having FU540-c000 chipset.

Signed-off-by: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
---
 drivers/i2c/busses/i2c-ocores.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/i2c/busses/i2c-ocores.c b/drivers/i2c/busses/i2c-ocores.c
index 4e1a077..7bf7b0c 100644
--- a/drivers/i2c/busses/i2c-ocores.c
+++ b/drivers/i2c/busses/i2c-ocores.c
@@ -85,6 +85,7 @@ struct ocores_i2c {
 
 #define TYPE_OCORES		0
 #define TYPE_GRLIB		1
+#define TYPE_SIFIVE_REV0	2
 
 static void oc_setreg_8(struct ocores_i2c *i2c, int reg, u8 value)
 {
@@ -465,6 +466,10 @@ static u32 ocores_func(struct i2c_adapter *adap)
 		.data = (void *)TYPE_OCORES,
 	},
 	{
+		.compatible = "sifive,fu540-c000-i2c",
+		.data = (void *)TYPE_SIFIVE_REV0,
+	},
+	{
 		.compatible = "aeroflexgaisler,i2cmst",
 		.data = (void *)TYPE_GRLIB,
 	},
-- 
1.9.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
