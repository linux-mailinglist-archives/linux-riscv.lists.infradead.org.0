Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B39DD25FF7
	for <lists+linux-riscv@lfdr.de>; Wed, 22 May 2019 11:00:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kqdYJduMH/h9l0QXwEnsXZtYSk2xRNnTZuQXaJRe/bQ=; b=UIgWdbmI/6zY/p
	OoL54V5DwfN4ZZdMcK9ZBUdUORvFAJrWpx1drYvb0AVIaPaOcYmzbPDG8Ge6uD100bQUp8J3n0qbA
	kxzlomhxjCeJW19QgTJS3JU3OMx2b+jdCvVR9x+FJk3pHq0JGhbnjmB6kH0KKl/yQxDhAarstf6L6
	wpWWIeyFdOIg7cQNUyP4zcJKjuRZyO6BrAR6UhV9bPGXJ6168uVnGpkgQOqsdQR17A5pjHv7jPcdn
	lmv+aDvZTaCIGFxvTsnYggVYHiBeEWZSGS3Jvl3zO7kOlYmLbjVQ75iDldDMrJloMzE5w5BGxChMw
	D0ubsI0EE/d0+OE2REEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTN6t-0002t9-FM; Wed, 22 May 2019 09:00:31 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTN6q-0002r0-6U
 for linux-riscv@lists.infradead.org; Wed, 22 May 2019 09:00:30 +0000
Received: by mail-pf1-x441.google.com with SMTP id n19so994610pfa.1
 for <linux-riscv@lists.infradead.org>; Wed, 22 May 2019 02:00:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references;
 bh=/BRFvwHTJGi4mC+l6/NtyYz/ZOf9cjorYo3iOt6cwfc=;
 b=bAurLtNG1r6grBqOh3k9tYx2/GOoh3DWYKTog+DPlm6JLrOFuG5plFUVyItMkCA2Me
 HDMc+vnIafhTtOqCkDKFooJWxTA6p4Q/TqlwVnQR5gHGHpMUwVCx/y8KzoOQqXU5+f9r
 A9cbIXH/W7h7rSIk/2Z8tYzU0B+QzaV6DjDciiM7pkNsH51shN9uSSOyAETTXThORikI
 pcHBe7+5dxj52sHpDu5Fsa/UQXdpZRLAtzyE44mJKdFYfjadorVZrU+VTo+wX6f43Ymy
 PU37nWLB0/lljEFtxixmCU1wEx2jQBvisx/PP7yfMt//+Uvbn/EMU1JVrsDCZjI7IvHa
 +UMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references;
 bh=/BRFvwHTJGi4mC+l6/NtyYz/ZOf9cjorYo3iOt6cwfc=;
 b=cw290hADnQzlX2AdJiox7deTtF8K9C6+MUz8t7BkVeFxMHgaM5M+cIPX0KsHrhuUXy
 OmLXUDL/2WuzUNjq7ua9knajuM48eTjSGC9GE8A7Lmxba7zzni89HwCGqEmpP++DCAug
 N06Puu6alsubB7fy4zRkoVfH0ZeL3d0KjOrxgXmnuEGrav+C658t+fJnZpmzPLxKPPZo
 jbs4L87otYYxTcmx96L5QB4Jn1UnXCQDUSjh2zLpnYSrojXt+b7MAyXB+UZ6bsOsFOfh
 qsebuhjfI3sYIdCWUE99WJ6JkEWDr1FY8gEwbW/JUvFGaaGAYhhIdXUWo+hCluNd8tVz
 6Vhg==
X-Gm-Message-State: APjAAAVyD/Ixq9WIYrAM9GCCTrQBeHw+q4wqJDtdrS//NMrxXSDX5NWt
 WXka8dpde7VxMa6PiX/qjg/3PQ==
X-Google-Smtp-Source: APXvYqx6owL4lFuS+KUh+HszLqBBHspzwoUHs0/Pbe2/cL0VhEPTHRSusTQ2hCdYj4VENiSmZOFKKw==
X-Received: by 2002:aa7:9a8c:: with SMTP id w12mr9738993pfi.187.1558515627409; 
 Wed, 22 May 2019 02:00:27 -0700 (PDT)
Received: from buildserver-90.open-silicon.com ([114.143.65.226])
 by smtp.googlemail.com with ESMTPSA id z6sm42465905pfr.135.2019.05.22.02.00.24
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 22 May 2019 02:00:26 -0700 (PDT)
From: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
To: robh+dt@kernel.org, mark.rutland@arm.com, peter@korsgaard.com,
 andrew@lunn.ch, palmer@sifive.com, paul.walmsley@sifive.com,
 sagar.kadam@sifive.com, linux-i2c@vger.kernel.org,
 devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v7 2/3] i2c-ocores: sifive: add support for i2c device on
 FU540-c000 SoC.
Date: Wed, 22 May 2019 14:29:33 +0530
Message-Id: <1558515574-11155-3-git-send-email-sagar.kadam@sifive.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1558515574-11155-1-git-send-email-sagar.kadam@sifive.com>
References: <1558515574-11155-1-git-send-email-sagar.kadam@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_020028_241242_DC86FEC7 
X-CRM114-Status: UNSURE (   9.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
