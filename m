Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65F7523987
	for <lists+linux-riscv@lfdr.de>; Mon, 20 May 2019 16:12:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ht6UxbZozuMOUlQ2JjtgV15HcyjQyUHwlkDfQYfQb2o=; b=fm47FBhjLy6T3T
	14v9Mqm6NFJl5zh5OXTIQYN2rEXoWuIa1wUW948ffyFdkyfRoDoLPneFC0ffggjBDsEluIVTfNm1i
	PVwYExYfdCZjmiwwuaq7pRiYBu3TGvL7jZmZhynGs4NGGS/fupWq6Loq1MByb2AvWsRGdEy47F97o
	wW/qYMX7zluTirq36fyx7ubbco/Cw1NXH4O8FOfLQX67MQiK9Ly0DRGKCFsSMQj2Xa3oZV7kTfsN9
	RT/cHBo9RO6gi3n+Labn8G0S0m93cxe5Ch70wVEJLrlcr9j9zALsZ9Pu7kx2ylw6KyGYtDpopdjmZ
	XVDC4aa2zkfFGnGBuHvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSj1g-0008Ox-BL; Mon, 20 May 2019 14:12:28 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSj1d-0008O7-56
 for linux-riscv@lists.infradead.org; Mon, 20 May 2019 14:12:26 +0000
Received: by mail-pf1-x442.google.com with SMTP id v80so7301550pfa.3
 for <linux-riscv@lists.infradead.org>; Mon, 20 May 2019 07:12:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references;
 bh=bw14u18P9i//6PFBBpNeMD35DBcnBuJpaE6hMWzLBZ0=;
 b=neXNGxozyGNOnI4VsziWA4VruFF8zUCzBysSiP5LjXEiF8fHcIMiigECAhrR2GFm6B
 QBVMG98vXqb0BIqvNBwJbsU8PuXQ54Ih/NWwWJaLD7xJ/ng2UE4UFK2Ih7Tgbt0X4KHp
 LdmwQFTNTzaqgjGTJOE6QJEO4UWxz3lyH7pAaakcN41ujsiFXAgwo+I0zySeK8uOyZhc
 m5BKaNr08paRzhkoyv1IHakeg5qKRsvNfV1HHKy1TVuwx2jZewdKSu7oZwf+WyAnT5mt
 rlcrM2RE+GNbV16AVFvjHOrP+0H3k/vnUtMmipdu0qOENw5+VZ/Ti0vU2QbTPFA4SwLT
 Vuww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references;
 bh=bw14u18P9i//6PFBBpNeMD35DBcnBuJpaE6hMWzLBZ0=;
 b=grHd07YOliEaF/6MMVaXAYcvLI+QnglfxWQpZYfyp5bpgV0tCU9F6vHQRgR9uMCHWk
 YHE+NF9IZRf02QO/cQJz4/Rs3/TAmMga7LhXF4FxjOndd2mhJVf/H6l1mLnOi7+tHZuT
 LjdTtGqf+d4t37OQtgtkN/w8xC1R3/E2+Y3wMZgExAYFodGcIKffmZj1QHy4SGT0i0m2
 UXtlSCXZYHOuoTp8rIzM8wnVuCF42zUm3FAtq1nxQHiH6SaJjMjLzDBeyfyW/Roeodks
 Ae6CT6dF1X20FWCpygs3LsF9cxc4KvNJL645OOKwoeyrJK6H/fDOlTzZFkqCO2Jr9dcT
 Qqxw==
X-Gm-Message-State: APjAAAWUcnYSfAzsWnJRoy2Eep5gtwa03LaOJl+ZxTQGXrRXxo+58mDl
 fJlE+Q3qAb7qWTUlQ/Z6oks7Ng==
X-Google-Smtp-Source: APXvYqwx23KuGQQBy9STDE5n426D1HSIXniwr8IKWPZNfYVVORKQwGVsqu5A72EeHAWoa2liK0MOsA==
X-Received: by 2002:a63:f703:: with SMTP id x3mr73780717pgh.394.1558361544460; 
 Mon, 20 May 2019 07:12:24 -0700 (PDT)
Received: from buildserver-90.open-silicon.com ([114.143.65.226])
 by smtp.googlemail.com with ESMTPSA id a9sm26388248pgw.72.2019.05.20.07.12.20
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 20 May 2019 07:12:23 -0700 (PDT)
From: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
To: robh+dt@kernel.org, mark.rutland@arm.com, peter@korsgaard.com,
 andrew@lunn.ch, palmer@sifive.com, paul.walmsley@sifive.com,
 sagar.kadam@sifive.com, linux-i2c@vger.kernel.org,
 devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v5 1/3] dt-bindings: i2c: extend existing opencore bindings.
Date: Mon, 20 May 2019 19:41:16 +0530
Message-Id: <1558361478-4381-2-git-send-email-sagar.kadam@sifive.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1558361478-4381-1-git-send-email-sagar.kadam@sifive.com>
References: <1558361478-4381-1-git-send-email-sagar.kadam@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_071225_191945_D02F95FA 
X-CRM114-Status: GOOD (  10.62  )
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

Add FU540-C000 specific device tree bindings to already
available i2-ocores file. This device is available on
HiFive Unleashed Rev A00 board. Move interrupt and interrupt
parents under optional property list as these can be optional.

The FU540-C000 SoC from sifive, has an Opencore's I2C block
reimplementation.

The DT compatibility string for this IP is present in HDL and available at.
https://github.com/sifive/sifive-blocks/blob/master/src/main/scala/devices/i2c/I2C.scala#L73

Signed-off-by: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
---
 Documentation/devicetree/bindings/i2c/i2c-ocores.txt | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/i2c/i2c-ocores.txt b/Documentation/devicetree/bindings/i2c/i2c-ocores.txt
index 17bef9a..b73960e 100644
--- a/Documentation/devicetree/bindings/i2c/i2c-ocores.txt
+++ b/Documentation/devicetree/bindings/i2c/i2c-ocores.txt
@@ -2,8 +2,11 @@ Device tree configuration for i2c-ocores
 
 Required properties:
 - compatible      : "opencores,i2c-ocores" or "aeroflexgaisler,i2cmst"
+                    "sifive,fu540-c000-i2c" or "sifive,i2c0".
+		    for Opencore based I2C IP block reimplemented in
+		    FU540-C000 SoC.Please refer sifive-blocks-ip-versioning.txt
+		    for additional details.
 - reg             : bus address start and address range size of device
-- interrupts      : interrupt number
 - clocks          : handle to the controller clock; see the note below.
                     Mutually exclusive with opencores,ip-clock-frequency
 - opencores,ip-clock-frequency: frequency of the controller clock in Hz;
@@ -12,6 +15,8 @@ Required properties:
 - #size-cells     : should be <0>
 
 Optional properties:
+- interrupt-parent: handle to interrupt controller.
+- interrupts      : interrupt number.
 - clock-frequency : frequency of bus clock in Hz; see the note below.
                     Defaults to 100 KHz when the property is not specified
 - reg-shift       : device register offsets are shifted by this value
-- 
1.9.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
