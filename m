Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D43BF6E4C3
	for <lists+linux-riscv@lfdr.de>; Fri, 19 Jul 2019 13:11:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=kKx1jlySCyHqoV8uz90M5ocvkU8lwbrKKo30/WT7KTA=; b=EFSMYumpplCYtjixFPAWmHEg9r
	hzn3n/jvh0n28PU1RVzaXms8TsNa7r6+INlZdAG6yGEBr5gKYtrL5XGYvnEvQzmxwjX3QM4XypLBD
	+bqvm3JpKdSEolNvKYLiY9w1KatlGXYaiUnzb4/4g/6kCkdxgr3ZluPYIWEWStv7XP7AcLTo7KmNr
	eXvgXBd2fxIVLYV2/t1OSzFpP/356kLcggYOA2VmsJcOCKlye/pBG+GD3nP2EsCeMK1cfziDbwbDA
	IYRAU4l4PmZl0b5r5qZKokn2/C6BQ1DxsD55qDOsl/01wrWJvpw561bUIrnJydR33rn4ObuhMUmor
	illFAt6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoQnM-0005E0-Nr; Fri, 19 Jul 2019 11:11:24 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoQnI-0005DS-W3
 for linux-riscv@lists.infradead.org; Fri, 19 Jul 2019 11:11:22 +0000
Received: by mail-pg1-x543.google.com with SMTP id l21so14326873pgm.3
 for <linux-riscv@lists.infradead.org>; Fri, 19 Jul 2019 04:11:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=IKhuottjSxGgkbg5ejXRJ13eEQQXYdAPGmSw9/+AZpM=;
 b=f0rfqSr8iPuQsrcdJa7bP1GKgSw6HqJLzd3G8kjOeeNfce2hkPx2LHfLaJkctQQWke
 rwx70Ut7Mo2fXlmmQV9u6ige+fNLdxpOsqDXRtzjTQZWsKG6WabWBqJfKkcZigWGpSst
 3BaZwFEFlTzxaIvyEgZ/WDWHbd2GqUQvW1DlF2vVaEK9lEuDUeF/sGDdDYywVkHoMZdW
 FxmDYgLAOGpLPZFxWZnZ3jfFSuge4/HUzDzIbEi2mNUlAh0lxTWRtN953REBKy8zgGtj
 4b8C3ElW6Z+VuHXNq7UhUc0qr/B5rp5hsUKwy6K7YH4RrpsQVrxkUuFQGZO5vzdHgdH2
 mTRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=IKhuottjSxGgkbg5ejXRJ13eEQQXYdAPGmSw9/+AZpM=;
 b=TUx3uLB6H2jcRxUZdhRkEUAyRb8lPoKWF0+22WZghrMvkJ/N5hEN8XcWi7EK1kNQZV
 sus179SiqQE/+mzL1vCW8AujtABPU9rxAk4sIIPJPTClMpHlWaJ3sTBg6EGaqa/cfLva
 /+Bl2Ih2qtCPNahJGHdvC2+p7VWvuqS+Hzzp0Kya+qXlLbeUR0QeIB4P6/Qt6g6bG205
 qqDuuqIKENuXe6SiEOeRWFPixDObLHnTMigGTJ3FLakZG1gjYCZFqHhBvFkCU+ZWYzxS
 LoNZFPBGjBFEwsxd6jqADW5u9hOG8+KBFbV3CeSLm4UHs7Wv53E/qNIJiUgTnFrsgA1l
 IW7g==
X-Gm-Message-State: APjAAAXb4VJBEbALzXVaT9ZCnCQn/YeerkmgVZ7SkkxwC0XS+zGTAykN
 QrVOJ/7qRQcmKdcCiz7ojU6k2JLhFN8=
X-Google-Smtp-Source: APXvYqzZbKp8wDFScLKLbk1R27CUweZE7G31LV4oG/v3a7WShdgFSbpMho8p4fb5WJQzUoI3VtccEQ==
X-Received: by 2002:a17:90a:5887:: with SMTP id
 j7mr56584685pji.136.1563534680244; 
 Fri, 19 Jul 2019 04:11:20 -0700 (PDT)
Received: from buildserver-90.open-silicon.com ([114.143.65.226])
 by smtp.googlemail.com with ESMTPSA id i9sm10196872pgg.38.2019.07.19.04.11.14
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Fri, 19 Jul 2019 04:11:19 -0700 (PDT)
From: Yash Shah <yash.shah@sifive.com>
To: davem@davemloft.net, robh+dt@kernel.org, paul.walmsley@sifive.com,
 netdev@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org
Subject: [PATCH 3/3] riscv: dts: Add DT node for SiFive FU540 Ethernet
 controller driver
Date: Fri, 19 Jul 2019 16:40:31 +0530
Message-Id: <1563534631-15897-3-git-send-email-yash.shah@sifive.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1563534631-15897-1-git-send-email-yash.shah@sifive.com>
References: <1563534631-15897-1-git-send-email-yash.shah@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190719_041121_030913_5A0242ED 
X-CRM114-Status: UNSURE (   9.87  )
X-CRM114-Notice: Please train this message.
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Yash Shah <yash.shah@sifive.com>, ynezz@true.cz
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

DT node for SiFive FU540-C000 GEMGXL Ethernet controller driver added

Signed-off-by: Yash Shah <yash.shah@sifive.com>
---
 arch/riscv/boot/dts/sifive/fu540-c000.dtsi          | 15 +++++++++++++++
 arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts |  9 +++++++++
 2 files changed, 24 insertions(+)

diff --git a/arch/riscv/boot/dts/sifive/fu540-c000.dtsi b/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
index cc73522..588669f0 100644
--- a/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
+++ b/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
@@ -231,5 +231,20 @@
 			#size-cells = <0>;
 			status = "disabled";
 		};
+		eth0: ethernet@10090000 {
+			compatible = "sifive,fu540-c000-gem";
+			interrupt-parent = <&plic0>;
+			interrupts = <53>;
+			reg = <0x0 0x10090000 0x0 0x2000
+			       0x0 0x100a0000 0x0 0x1000>;
+			local-mac-address = [00 00 00 00 00 00];
+			clock-names = "pclk", "hclk";
+			clocks = <&prci PRCI_CLK_GEMGXLPLL>,
+				 <&prci PRCI_CLK_GEMGXLPLL>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+			status = "disabled";
+		};
+
 	};
 };
diff --git a/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts b/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
index 0b55c53..85c17a7 100644
--- a/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
+++ b/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
@@ -76,3 +76,12 @@
 		disable-wp;
 	};
 };
+
+&eth0 {
+	status = "okay";
+	phy-mode = "gmii";
+	phy-handle = <&phy1>;
+	phy1: ethernet-phy@0 {
+		reg = <0>;
+	};
+};
-- 
1.9.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
