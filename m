Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB7471FEB5
	for <lists+linux-riscv@lfdr.de>; Thu, 16 May 2019 07:09:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BRgh1bcz6DQoTYk5V3+a1g0yilWTXPv7hkoS3MyCIyA=; b=I/WqpVU5i39dc3
	bl8w8E+sL+AJHMUX30Z59BKyJLphh7DJNRQ5DqSv9k/7IZMxdqg6zlT/yxKFVXtaXAVY1q1JW/U3X
	jGkMJyls/39NZ7udo9tRJj1QjtELCTvcGkMZmJFpP/owThNPUmGwIxVefZv6yPBJwp2UxEcbEHko2
	sks7CYNGMxx7XVIPJXjOK9uwO1GJxiRwXmJ3iC31YmXT9w9NvkTg/1GjJJu27H8l5GFMMKcp87dP3
	y2cfaBPCbe+mcfqV4ii0sQq2KI+q2zAYkFyd0mGIoozUTSE0qFNcSr+fgEEj22B8HRNyWzXQUqIns
	39csQ/KMX11+VBuUnpSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hR8eD-0006F1-8r; Thu, 16 May 2019 05:09:41 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hR8eA-0006EP-QQ
 for linux-riscv@lists.infradead.org; Thu, 16 May 2019 05:09:40 +0000
Received: by mail-pf1-x441.google.com with SMTP id n19so1194496pfa.1
 for <linux-riscv@lists.infradead.org>; Wed, 15 May 2019 22:09:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references;
 bh=4KK0MRvh5MgzBUDrn06tdDHg6h6KtmoqvmbKK6rVaok=;
 b=lCT8NThGdj/CZVbU3O1mllDstxzU6H3DmbI36AAMAJgIy0GB1HSZ0v8w4a2DRF468Y
 DeG7kvpHvvTSR4SxEiSV0++dI79XONMqjE2Ps+J1QNvB5iib3wmn5e8nSaZG68kMS+AN
 hgu+cq0zdUPUyN5qOAsb9IgVmxIzfqCVSGFPqIljut4NuezCSblMIYw9pQCEfGw2eheQ
 el+zFMF3+U8WkFjYO9FV0AbBXmIzN8/EBHji7txCweH/5/fD/co3YFPsBXUbzC1ZhZLv
 u8hqsC7IBacwHqbh0v8cV2GTcV3OPGr8KDzz28zQTRkLjQcZ0zIvpsnO5dK7PMoh614f
 TcCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references;
 bh=4KK0MRvh5MgzBUDrn06tdDHg6h6KtmoqvmbKK6rVaok=;
 b=ALndOtdualOm+4JGMGiFnCj7kWGWu+djrN+sm9fcJVC0MND81bL+cVy5C3bnATf6j+
 yaKQ+YUlS7zPyj5pu45Cy9J4tzF5hoyBYxhPYcJ0Getz9oGuum7+TdabnIq3wqV4/+3c
 S9DLndtbV4Oj8XBnrssTOvNqDzM70UDenAhXlAge+9f87FTx8F9Y1/0aA7oHDnY6v0Hf
 SVC4Bx5AAbaeI4cEJBgkgCvVRwmDCr+OtZ3HRHp73noCWF9NwAofDiOyIoQSOI3vPykn
 spSGxstHlBOcI4aONRQycbkeTCDfTquyXY8gg1lTPygS3t/hwk3h5by8p9lKk6ScBwj8
 BUwg==
X-Gm-Message-State: APjAAAUFDXliI+yn0PVpM01hu328gX97uDR5oA8gIgvxs3N712rrYEHL
 1+tXgSbJayPaRDPhtoShD3YPTw==
X-Google-Smtp-Source: APXvYqzyrM198VsHH3arYEHVm5+5CB+0pWo6NzSLosqF9cg2Y4ZM98S/rohCuz5MMvRCx0Dqtxav7w==
X-Received: by 2002:a63:234c:: with SMTP id u12mr49894719pgm.264.1557983378110; 
 Wed, 15 May 2019 22:09:38 -0700 (PDT)
Received: from buildserver-90.open-silicon.com ([114.143.65.226])
 by smtp.googlemail.com with ESMTPSA id u6sm5929531pfa.1.2019.05.15.22.09.34
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 15 May 2019 22:09:37 -0700 (PDT)
From: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
To: robh+dt@kernel.org, mark.rutland@arm.com, peter@korsgaard.com,
 andrew@lunn.ch, palmer@sifive.com, paul.walmsley@sifive.com,
 sagar.kadam@sifive.com, linux-i2c@vger.kernel.org,
 devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v3 2/3] i2c-ocore: sifive: add support for i2c device on
 FU540-c000 SoC.
Date: Thu, 16 May 2019 10:38:39 +0530
Message-Id: <1557983320-14461-3-git-send-email-sagar.kadam@sifive.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1557983320-14461-1-git-send-email-sagar.kadam@sifive.com>
References: <1557983320-14461-1-git-send-email-sagar.kadam@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_220938_852769_EDDAC58D 
X-CRM114-Status: UNSURE (   9.67  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
