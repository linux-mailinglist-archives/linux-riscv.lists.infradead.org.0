Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 756152398F
	for <lists+linux-riscv@lfdr.de>; Mon, 20 May 2019 16:13:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BRgh1bcz6DQoTYk5V3+a1g0yilWTXPv7hkoS3MyCIyA=; b=cV2IT22+Qpp5hl
	YiOGbx6yayMkm7rZU/PyxcMIhckvsm3H0FYWV5u3EmGxDdOvosFvPhLKYTrJdhoog2FGqEZc24RNq
	VF/wnZrYsJsQ/llKJG0p9tdwIYOowWIiwwaFrTHIGfMFI7asG3wP4A1nF6eoU1l5ETnNz5xphQ1LL
	ZWBhYAr4tTn/U+eiwV/TbAkdHlG1l/INi2EvQ0vaghJ7OeM/mB+P8YRF+UkxZ+uDIFFaJB8r9urd+
	3+le8uxbDOkhCc/xGyd+tbpcAspA/lMCewwFd3Onz1YcVKzncWjVjfFt+05dJ55DAECjTRg6Pu6SY
	8ERfYaUqgMYMoUTSjjCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSj2G-0008Us-Ey; Mon, 20 May 2019 14:13:04 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSj2C-0008UY-M7
 for linux-riscv@lists.infradead.org; Mon, 20 May 2019 14:13:01 +0000
Received: by mail-pf1-x442.google.com with SMTP id y11so7280431pfm.13
 for <linux-riscv@lists.infradead.org>; Mon, 20 May 2019 07:13:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references;
 bh=4KK0MRvh5MgzBUDrn06tdDHg6h6KtmoqvmbKK6rVaok=;
 b=OAQ0DsHAZfIcur5262VF3nMZHoryfuG6j3qbM/gqN/eIPJOxhv64Emillk+Ncuo0MV
 s7wpVKOr63V4BS9AKRaSULQA9YtCsBe4lJy9bhCZ3lmCmyCv2mU26bKQCVO6QrOUlXRW
 1Z6WwUzW3Zi/wI2jgZf8H/VtrhRTBzoDz4kLUOAU4bt0KU7TR0b3QQ/zAeBDBsJJu0JZ
 bZR1o5HVrFv0a64SNt5A1IXGbTJI7RzJDGc3STIWphIUodtxC49ll4+AYh3zaAx4dJsa
 Kt2jr96X3tScTJUTqkHCELTRGw1ILqZ/NHsfGfZ7b5lQnaYlBuqYrbOJbE7vmr9n27ur
 DD3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references;
 bh=4KK0MRvh5MgzBUDrn06tdDHg6h6KtmoqvmbKK6rVaok=;
 b=FrpFMntnidJjiVOqU2O90C071H/BlyV0I+JWqa8JDGXBGv9a0xWUeMQuJ/+torxKzW
 qy3Et/i8qC7qsunRYa68gsGUFp58oixHFqnywTsUr2/apY93x3I7ElWjS49miAyQklZE
 Ma2IKSMgroxFBEUTC1DLmsINyKtpq14PJZHTp0+SXHSAFqXXydiP1t1zl2ZHWPZAIlM+
 vmSwqtK6ZetXcJcmR6eqUbPwFAL52iUrYyOBhZcooPlDnRuEO30K4W9WmqgsRGEa2OkL
 3PCrngukRngCmGHFDgtxCY6QsNMIaj+6J+WBzhI5yaElwijUuvKns/E9Z9uLK1fsEgqY
 licw==
X-Gm-Message-State: APjAAAVn0bfqPxJaUxVfJEeQPVciq61Vq7KjPeo+mrRgV2X78jGXZ52H
 jp5XD3T40nCxOFuumpzln75JdA==
X-Google-Smtp-Source: APXvYqx6TcjEmaWTHf2leDwIV6L5TLuoA52r8b5QDadU3z7lyJAZACiDuRsvgHZAJCXRuSsqGueiVg==
X-Received: by 2002:a62:82c1:: with SMTP id
 w184mr50009193pfd.171.1558361580333; 
 Mon, 20 May 2019 07:13:00 -0700 (PDT)
Received: from buildserver-90.open-silicon.com ([114.143.65.226])
 by smtp.googlemail.com with ESMTPSA id a9sm26388248pgw.72.2019.05.20.07.12.56
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 20 May 2019 07:12:59 -0700 (PDT)
From: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
To: robh+dt@kernel.org, mark.rutland@arm.com, peter@korsgaard.com,
 andrew@lunn.ch, palmer@sifive.com, paul.walmsley@sifive.com,
 sagar.kadam@sifive.com, linux-i2c@vger.kernel.org,
 devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v5 2/3] i2c-ocores: sifive: add support for i2c device on
 FU540-c000 SoC.
Date: Mon, 20 May 2019 19:41:17 +0530
Message-Id: <1558361478-4381-3-git-send-email-sagar.kadam@sifive.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1558361478-4381-1-git-send-email-sagar.kadam@sifive.com>
References: <1558361478-4381-1-git-send-email-sagar.kadam@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_071300_716415_037F16A8 
X-CRM114-Status: UNSURE (   9.63  )
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

Update device id table for Opencore's I2C master based re-implementation
used in FU540-c000 chipset on HiFive Unleashed platform.

Device ID's include Sifive, soc-specific device for chip specific tweaks
and sifive IP block specific device for generic programming model.

Signed-off-by: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
---
 drivers/i2c/busses/i2c-ocores.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/i2c/busses/i2c-ocores.c b/drivers/i2c/busses/i2c-ocores.c
index 4e1a077..aee1d86 100644
--- a/drivers/i2c/busses/i2c-ocores.c
+++ b/drivers/i2c/busses/i2c-ocores.c
@@ -85,6 +85,7 @@ struct ocores_i2c {
 
 #define TYPE_OCORES		0
 #define TYPE_GRLIB		1
+#define TYPE_SIFIVE_REV0	2
 
 static void oc_setreg_8(struct ocores_i2c *i2c, int reg, u8 value)
 {
@@ -468,6 +469,14 @@ static u32 ocores_func(struct i2c_adapter *adap)
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
