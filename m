Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B753233BD
	for <lists+linux-riscv@lfdr.de>; Mon, 20 May 2019 14:21:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ht6UxbZozuMOUlQ2JjtgV15HcyjQyUHwlkDfQYfQb2o=; b=MHVjRhr84JlMNj
	OxEOkwMdv7iSLfXbhhGTTsv2bTqo9CySxyF8ZQto3XpaR+5VCqTNruByepkfzkm5D7MlrPqmLIvF/
	lgZG4pUmze+7Y+nlbrQNjeb2G/5jPm3a5iiykRHa5CPVWK43k9Tz79rnif6isBs02tqm0lGHOKaYu
	5Kal7WNryoXJ2MJ5pliSNNoOWB5+eXkYc7EVt7O40dx3GitG0gcTBA6/kVml4EmgHrvvA7ivEl/Uq
	iDfEIi7j0zeRO3zbtJhUhXcx2I/rpbTLSqiVrMddN869SjVXKfcIxrfm+6ECSQRD4xg5zVd5WOFuI
	PNbm9tKYnNok0k2z/ymA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hShIA-0003T5-Ly; Mon, 20 May 2019 12:21:22 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hShI6-0003RX-Qc
 for linux-riscv@lists.infradead.org; Mon, 20 May 2019 12:21:20 +0000
Received: by mail-pf1-x442.google.com with SMTP id c6so7136786pfa.10
 for <linux-riscv@lists.infradead.org>; Mon, 20 May 2019 05:21:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references;
 bh=bw14u18P9i//6PFBBpNeMD35DBcnBuJpaE6hMWzLBZ0=;
 b=DEW9DDW/wDzXrs3KiwiET14pKxALowECFZwPPv5wWj+6ZDqkA2+QErtIdqmxXurA7x
 8nR8MzsJHo17x2Nn79nFOrSPNYMZN8MfSnoiJJz7TBRQjlvqsrsKGtAfWaF/Sh6oURg3
 SN1lGIPJY69X8/HNa3mT7VZTyzNnA2gT2UFjmL7Iz4iIHqkUJbaOYpYNMguMOPyicZKL
 7x7Y68GYN4KPeBv3vRaC6o2I5RYmSqVeCIg8Lby57s/2piyKWvwTaXItSsOib9WHcoWs
 4mJjBytXKSFnmY72ltqNJUGwGE+fqUBGqVVY9lRturZUiTBxQSkOVLGb7VLXR7n20zFD
 JAjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references;
 bh=bw14u18P9i//6PFBBpNeMD35DBcnBuJpaE6hMWzLBZ0=;
 b=MoA4PTjg350wxNdaDMjJRi/Gz3a/IdQFZMv//76+MBdtskU4aoe6mLKHkGE/6zct+b
 T5v4bMAt7pZIo3TpcklL7tzSeY0015MuJvAVPFFK5/cDFcBKJyiQPxk475BkoNRpbsPK
 wmteTlwl6Q0ssj3MI0czGmMBm7+2yVJzojtRh1eNaiHq6veBRkFdiOiev8Vi3DjoHNwK
 LbTUofi2MlyKY5xW/eFb62dbE8wM0+UE/uKHaU2yr6dr/hui0tdf9L3VKhHlkjQNRG7j
 8eEPpE+kYCCGWjm7jdHX4XK2fS+7xkkkU/391r0cHHp06qF/0oNwWFSzdx86wODsmdty
 EPOw==
X-Gm-Message-State: APjAAAVbqjgqjSU2KBxHfFx8NJ2FFLoLkU4a5SxyvXOJq9cRs+WQUIEa
 tIDxg6K0k2tZ0Vezprwz7T48aQ==
X-Google-Smtp-Source: APXvYqzKDB1HQoyZ8U0WjJ0MSo/CQPwAF839cuWrudmxHBCb6F2wVORX+7KlKaCqim0PhCgM8AAUKQ==
X-Received: by 2002:a65:5c41:: with SMTP id v1mr211402pgr.20.1558354878332;
 Mon, 20 May 2019 05:21:18 -0700 (PDT)
Received: from buildserver-90.open-silicon.com ([114.143.65.226])
 by smtp.googlemail.com with ESMTPSA id
 n27sm38137077pfb.129.2019.05.20.05.21.14
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 20 May 2019 05:21:17 -0700 (PDT)
From: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
To: robh+dt@kernel.org, mark.rutland@arm.com, peter@korsgaard.com,
 andrew@lunn.ch, palmer@sifive.com, paul.walmsley@sifive.com,
 sagar.kadam@sifive.com, linux-i2c@vger.kernel.org,
 devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v4 1/3] dt-bindings: i2c: extend existing opencore bindings.
Date: Mon, 20 May 2019 17:50:15 +0530
Message-Id: <1558354817-12034-2-git-send-email-sagar.kadam@sifive.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1558354817-12034-1-git-send-email-sagar.kadam@sifive.com>
References: <1558354817-12034-1-git-send-email-sagar.kadam@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_052118_861916_8D7D44C6 
X-CRM114-Status: GOOD (  10.41  )
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
