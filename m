Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E26BE49B9C
	for <lists+linux-riscv@lfdr.de>; Tue, 18 Jun 2019 09:59:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=gL/alhkYUrAAjvckfFjS040ZE+yHUY/HB6mYq35CKdA=; b=pya8yo61MlZgISFG76BP82AKm2
	4b6NL7ARayrRbaY+8X/6MhxXnFdrY3DxHPk5zGaW76K5NKBROhHMOmECTmlKXYwbYqU0/BZNWaKMh
	LsgGbHpaBcp46ZErUqly4LaK/VLKiOo9Q2pdCNhh0IP+GN+BaGXB+DvIiuZPd0XO7lDHtPRDyYady
	+2XwQTZoyJNTZnA76k+9kQsxVOu89HBvgnZd1g2lLKhvuQ1WL0uUSU7XO9mmK8BlMJcoxcWiMz7jW
	6pKzO8M3lrcMYHMIqYJnCLjT9LgHvwg16/mC+k2bk+eELekW72CnEzSAtBP59y4SdJft/IlVUgn3G
	IBNuuabA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hd91C-0004Zn-OZ; Tue, 18 Jun 2019 07:59:02 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hd919-0004Z2-Bp
 for linux-riscv@lists.infradead.org; Tue, 18 Jun 2019 07:59:00 +0000
Received: by mail-pg1-x543.google.com with SMTP id s21so7211363pga.12
 for <linux-riscv@lists.infradead.org>; Tue, 18 Jun 2019 00:58:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=KNKUdapm3qNhe7MOmKoE4hXvbJ/LomCozufosFqpC3o=;
 b=MND8vxaDJbYE1BrCgIXbMpEu9+Rt1KUTQ5E7VltY+/32k2ApcT4xKFQEjjrMzz8z9d
 6/kd8Ykct6sP4CnWhstkw0+maJmuiwXA/qbVuFUQDVoQgKR9kMcsuhyjnZX6o5sKf1Lo
 CR01oHYMybhZcfIHN8YqUs3xGAmjnIFIoWPvMudHOUwR7XNDRGB4sj7DNMFN0V2fwhg5
 76D8Mnip0gAVdxVXdwnNQagborQ7lvU+c4XFtPfHJbIUcpRJ/j5deqKg1/NgfQumZI3r
 Al4Hm3kyD8l8eJt0u6r+LujqQWAWgMi6GJzXqyvI7R1gUsufdzDHj1hcEU4XDEwTdLfU
 7IRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=KNKUdapm3qNhe7MOmKoE4hXvbJ/LomCozufosFqpC3o=;
 b=DgrJJevWkAEMvR/4JhGGztX8Xb1hTUolnm96loNAKtdDKEbYZAOIUWvkVvMUEFfJ1d
 gVoGx16JrxcY7XCBT86jkgNb1CWPkILZTlgMmYdJxWRj+EeE0pl+tJYrzqpa6iKOdtDr
 iBB1P9eWJ5fywOnO1CSJwKdgLZPgjv2AeN0F8YxJBCfAimP8G70OSPcNahYI0JlWD4sZ
 XLdd2znoH+hqWqpg8FvD8YoWBJsebf2a3BMUI5ACYONRAV67PI4oPMba1h1AnEUGxgKR
 NeUWKEuwNw9y1XwRsTm3J/BhMDhI8NCpyhJ5bspQnB3nxssU8iLS0rVoVo5w28Zq/XdC
 tycw==
X-Gm-Message-State: APjAAAWBA0PjRC14rb8whZqCMLrX64JTiPY05FJrz5pwmhdFLN/C4UXM
 +HVx/6PIJ41Kjoz3Af/AjanuXg==
X-Google-Smtp-Source: APXvYqzcXM1piGFfZULbOjP6OTb3aCFfIxUeCDqceRMd3JQYSPXGy8BeEYnBvuiaVYY8kAyDUUZbeg==
X-Received: by 2002:a17:90a:228b:: with SMTP id
 s11mr3597672pjc.23.1560844738927; 
 Tue, 18 Jun 2019 00:58:58 -0700 (PDT)
Received: from buildserver-90.open-silicon.com ([114.143.65.226])
 by smtp.googlemail.com with ESMTPSA id b23sm15780499pfi.6.2019.06.18.00.58.53
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 18 Jun 2019 00:58:58 -0700 (PDT)
From: Yash Shah <yash.shah@sifive.com>
To: davem@davemloft.net, devicetree@vger.kernel.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org
Subject: [PATCH v3 1/2] macb: bindings doc: add sifive fu540-c000 binding
Date: Tue, 18 Jun 2019 13:26:07 +0530
Message-Id: <1560844568-4746-2-git-send-email-yash.shah@sifive.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1560844568-4746-1-git-send-email-yash.shah@sifive.com>
References: <1560844568-4746-1-git-send-email-yash.shah@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_005859_406980_3B1FC9DD 
X-CRM114-Status: GOOD (  10.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-riscv@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-riscv.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-riscv/>
List-Post: <mailto:linux-riscv@lists.infradead.org>
List-Help: <mailto:linux-riscv-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=subscribe>
Cc: mark.rutland@arm.com, aou@eecs.berkeley.edu, palmer@sifive.com,
 nicolas.ferre@microchip.com, sachin.ghadi@sifive.com,
 Yash Shah <yash.shah@sifive.com>, robh+dt@kernel.org, paul.walmsley@sifive.com,
 ynezz@true.cz
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Add the compatibility string documentation for SiFive FU540-C0000
interface.
On the FU540, this driver also needs to read and write registers in a
management IP block that monitors or drives boundary signals for the
GEMGXL IP block that are not directly mapped to GEMGXL registers.
Therefore, add additional range to "reg" property for SiFive GEMGXL
management IP registers.

Signed-off-by: Yash Shah <yash.shah@sifive.com>
Reviewed-by: Paul Walmsley <paul.walmsley@sifive.com>
---
 Documentation/devicetree/bindings/net/macb.txt | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/macb.txt b/Documentation/devicetree/bindings/net/macb.txt
index 9c5e944..63c73fa 100644
--- a/Documentation/devicetree/bindings/net/macb.txt
+++ b/Documentation/devicetree/bindings/net/macb.txt
@@ -15,8 +15,11 @@ Required properties:
   Use "atmel,sama5d4-gem" for the GEM IP (10/100) available on Atmel sama5d4 SoCs.
   Use "cdns,zynq-gem" Xilinx Zynq-7xxx SoC.
   Use "cdns,zynqmp-gem" for Zynq Ultrascale+ MPSoC.
+  Use "sifive,fu540-macb" for SiFive FU540-C000 SoC.
   Or the generic form: "cdns,emac".
 - reg: Address and length of the register set for the device
+	For "sifive,fu540-macb", second range is required to specify the
+	address and length of the registers for GEMGXL Management block.
 - interrupts: Should contain macb interrupt
 - phy-mode: See ethernet.txt file in the same directory.
 - clock-names: Tuple listing input clock names.
-- 
1.9.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
