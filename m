Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EA042505C
	for <lists+linux-riscv@lfdr.de>; Tue, 21 May 2019 15:33:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kqdYJduMH/h9l0QXwEnsXZtYSk2xRNnTZuQXaJRe/bQ=; b=bBgqJK6rz4PmwN
	DzNAsdnjDd7AMfG7LAKkB2yfZhaiP5okh7HxpdM7oFvSxJSaz8kCaXHRitBo98ti6ssyXMLB5n+c4
	sRVw96YOqT2+aGpePraw3Yqax5EdkUbCb90WM5J3umyhfsEvo6LBjSLd5J4dnDIVE/cj59mnOVUr9
	gCtNlFq6Wa1uwB/kV5IaApkJW4BZa7DWwluLnstAa1HMqLPQ0To4n0vNQgagwqKOUnGShxntI8TQM
	jXTKEBVDlP0IM72H1IyvRh0/JfWB+kdwaKevoWmrH88WaZ6KDpyoHcXV5wzFTMRMyiDuvXbrpVo/t
	tlVJzXuIqRCYCiL/frJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT4tT-0008IB-91; Tue, 21 May 2019 13:33:27 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT4tR-0008HZ-0l
 for linux-riscv@lists.infradead.org; Tue, 21 May 2019 13:33:26 +0000
Received: by mail-pf1-x442.google.com with SMTP id c6so9081803pfa.10
 for <linux-riscv@lists.infradead.org>; Tue, 21 May 2019 06:33:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references;
 bh=/BRFvwHTJGi4mC+l6/NtyYz/ZOf9cjorYo3iOt6cwfc=;
 b=MihmeJoI2Kctk0t4cBE6oHsC3/eL4jMiONd0z9ECsi8xF1h36S2fBIAYttGJ+D/VR6
 lqUeTum/ne1zyIfAWGp7YIF0hAuqw9Ru6Ee9KOw4M6h1fHcU4CtUeCPLTrt+ESAkZDbz
 EBvXNPjJps5LmyKDeUtSTeh+zfNLZnSFKAsV6P3uiaN5nQ9DXL/+28bW7LQWUN9lPRju
 jNS+d1P3PwHSigIq5bMuDW2bUKSUvzDGM24Wc/2iDlKQagXjw6WGe1SdsZQja2oPT7cL
 GMXoYXJBGLWcysOjoJih56jXxc9nUsTO29getB3MaFyK4NGgHFSSoOZtJQ8ueCZ1LZDe
 sO1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references;
 bh=/BRFvwHTJGi4mC+l6/NtyYz/ZOf9cjorYo3iOt6cwfc=;
 b=Df6saR3C0Xxp43LVbjOVCuuPXWdve7ZnWnQTl0jAT4rpma+k8lw6wTgx305AaYaySu
 TDb7EeQXCosV6mQzWwge9B3xykCcEjoBz11oj8PeD78Csy8WatauPYpNl+pvv/aK3fwr
 XF6SGgSXLgU5nNU8invwM0AlFHZp9fGOs1YVIpBpzzuIm7H7ubJtNsBuJynNgCVt6Irv
 NOqA3TMEfglYMZBx4GB9YdNYM/VWsQ/HQg7AeVEbZ9O/mkKZlUtsT6dcRWpSZf1MEMye
 M5VxOssvXe04+Akpr14I6vnVas8DDwSOvMXn5hCr9bb1z20efN32MVHoB0X8tJD9QSrw
 YoYw==
X-Gm-Message-State: APjAAAV448qfv1YjTiuXl9acO94VMy95yGHO/y28xfcmpZetZGYuANY5
 Wf70eNdvnU/dj+mElH2EG6FGGw==
X-Google-Smtp-Source: APXvYqxEv2PJu+YRU/OJSvjSo53F+3SPbm1+GyvMmTi3+tv2KXiA05zIWK5yTfHuZpUZZI5bB1e+Mw==
X-Received: by 2002:a63:e43:: with SMTP id 3mr39548393pgo.253.1558445604442;
 Tue, 21 May 2019 06:33:24 -0700 (PDT)
Received: from buildserver-90.open-silicon.com ([114.143.65.226])
 by smtp.googlemail.com with ESMTPSA id
 d15sm65368906pfm.186.2019.05.21.06.33.19
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 21 May 2019 06:33:22 -0700 (PDT)
From: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
To: robh+dt@kernel.org, mark.rutland@arm.com, peter@korsgaard.com,
 andrew@lunn.ch, palmer@sifive.com, paul.walmsley@sifive.com,
 sagar.kadam@sifive.com, linux-i2c@vger.kernel.org,
 devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v6 2/3] i2c-ocores: sifive: add support for i2c device on
 FU540-c000 SoC.
Date: Tue, 21 May 2019 19:02:53 +0530
Message-Id: <1558445574-16471-3-git-send-email-sagar.kadam@sifive.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1558445574-16471-1-git-send-email-sagar.kadam@sifive.com>
References: <1558445574-16471-1-git-send-email-sagar.kadam@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_063325_059880_A74E82CC 
X-CRM114-Status: UNSURE (   9.19  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
