Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0C6616665
	for <lists+linux-riscv@lfdr.de>; Tue,  7 May 2019 17:15:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:MIME-Version:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tROUsrTCS9Oq64AH/GAuhIDLFGzxM6G1NHPuypPkMa8=; b=IJE6hnCOe0O1PI
	TsX3nyGPxdpq9sZemCOlFp3dWb3p2UHv8Q+7TvKM5SfaBgGKXGaXDVVcniF9VllYgXLeGvPpZve6T
	KXRxrQ74u1kIGHDDi5pbuazuG6r+8m3R8yRYJwap76R4ft+umLdairu8tJ7TFWK/AKEolMBoBoz46
	VrDwKK/Nz85511cwEg3EU92I6h0SYEPiII5f8+f6tSq/KWpHgDE2Ns3SmnFUMEHNLOKza1WEuO1dd
	M1EfmZjzl+Kj9LOW3VC6tc/wfnJxvuHRaWxTcLEPtY8Zq4qayQhpHd24bahn9fzwgJrk1buGJYxYZ
	PhWnGXq8O0k+kQI4AV/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO1ot-00028J-Ft; Tue, 07 May 2019 15:15:51 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO1oq-00027f-Aj
 for linux-riscv@lists.infradead.org; Tue, 07 May 2019 15:15:49 +0000
Received: by mail-pl1-x641.google.com with SMTP id w24so8356624plp.2
 for <linux-riscv@lists.infradead.org>; Tue, 07 May 2019 08:15:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:from:to:subject:date:message-id:in-reply-to:references;
 bh=ezJJYEzxOSAxwZu5Qv2HQh0qcKaC7e6tAejJ+6qzI9Q=;
 b=iF+0g7n/cGqvlvQeGxp24KtUxCsPs5OnWSZxz/XHDeizhBZE7614RnZcXAUMn008mt
 dS7YBnc+jzPJXOfz5nDgtuadv8DNFXP3xqgyusW6CyoA2VbHBp3KRZ7sAUYN4EpZ3VdP
 K5n7Ti0LA37SB2HOGCFiS/tNcrMZkRk9+krjFnMnkoVNhEF9qRGmTzDtHU73HYCFFN58
 TgoN1B4+dkLZ5TTz3pCmEFFp8AeZpCwuBm3WxGcDxWVuVLQaQflBs7mJMyCoTiUMNNdj
 vcRq4MNqefMYJuPrivAOmfYlMH8msmZJtWlSnwZtcsdcIlF45eVITjv7sMfQyBRrury9
 lsXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=mime-version:x-gm-message-state:from:to:subject:date:message-id
 :in-reply-to:references;
 bh=ezJJYEzxOSAxwZu5Qv2HQh0qcKaC7e6tAejJ+6qzI9Q=;
 b=NSaHgFJoLeyvM7PQuDeg43WMWRiCHLNTdmim6YuY4yAyFOLiMb2lFeCWgBMRdxvJrO
 c82D7Xewy59GYjbIuQl02adRw3TToKPl7fg9oYAXGOy49q6ltEkqDopwUBKXQWCfyFLY
 C4osJNq4d3dVfvkjQFaTHBHJiZQkDjc99NAejEAfVb89spTWD/Ya8vvGO7oqQQukpA8x
 VRQ63btIBw45P7D8pum+l+LCCQ6Sx4AFA9/vXY8ulvqa5AwFBayfXZ6f7VrKHZv6Kymd
 86merUW3Y38rJCL/o7paI1xrwNKbpgPisYxqBVMFGda6urYdWiif20UX/NrSXmuiZAsa
 TkGg==
MIME-Version: 1.0
X-Gm-Message-State: APjAAAXl2ir7z4bMkhuYqtyiiinXG8iFVmCaQSD0IJDbELmKMFrzVTvV
 F/Ux3/GFm81QUQufEHnV4vTqq8xbKyqIq+Lqsj0SvHvaUuJM/FxUDb7uM8Vb/o6f6/nShOOnaiu
 hXreIzxTcQja6OHafjUWHeg==
X-Google-Smtp-Source: APXvYqw92q/y/dpF3qOih3WEvN/1uShPh4h/eO54vUyzDYo/E8LVRT/CQ3YgidasSD0wUxoLDRXJwA==
X-Received: by 2002:a17:902:900a:: with SMTP id
 a10mr40804350plp.336.1557242147782; 
 Tue, 07 May 2019 08:15:47 -0700 (PDT)
Received: from buildserver-90.open-silicon.com ([114.143.65.226])
 by smtp.googlemail.com with ESMTPSA id 2sm5397398pgc.49.2019.05.07.08.15.44
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 07 May 2019 08:15:47 -0700 (PDT)
From: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
To: robh+dt@kernel.org, mark.rutland@arm.com, peter@korsgaard.com,
 andrew@lunn.ch, palmer@sifive.com, paul.walmsley@sifive.com,
 sagar.kadam@sifive.com, linux-i2c@vger.kernel.org,
 devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2 v2 2/3] i2c-ocore: sifive: add support for i2c device on
 FU540-c000 SoC.
Date: Tue,  7 May 2019 20:45:07 +0530
Message-Id: <1557242108-13580-3-git-send-email-sagar.kadam@sifive.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1557242108-13580-1-git-send-email-sagar.kadam@sifive.com>
References: <1557242108-13580-1-git-send-email-sagar.kadam@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_081548_374003_47BE0253 
X-CRM114-Status: UNSURE (   9.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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


-- 
The information transmitted is intended only for the person or entity to 
which it is addressed and may contain confidential and/or privileged 
material. If you are not the intended recipient of this message please do 
not read, copy, use or disclose this communication and notify the sender 
immediately. It should be noted that any review, retransmission, 
dissemination or other use of, or taking action or reliance upon, this 
information by persons or entities other than the intended recipient is 
prohibited.

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
