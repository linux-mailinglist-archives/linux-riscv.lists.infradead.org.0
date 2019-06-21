Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 213F64E05A
	for <lists+linux-riscv@lfdr.de>; Fri, 21 Jun 2019 08:10:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Ucjavfh0+rZnD/RQ1g3FMrtbi5CAatVncMS5eq+ZZg8=; b=ZJsumEg+74wpL7ZtYMrQNH8S25
	hNE7kfvy5/HWcYRmValvRuOIvOUZEvaZjZy4mMybBftaYpFbOSsKAHgm55/3TQaEl2TqIRXDvbHB+
	Z47fVTqzzRl8Jso4zbSKnhaB3S94ifJzrfteSES9/YL7Go9IlNIWFwFtuloWvObtxrazXmBWvIGyj
	1wS0cwHMcrSgNeMpryOSJTuv+0CulC3i6lZkoYpjYL+N+bJIUlOib0sA3UZ5FSUlb0qyHibEqVRaw
	AkiBwr/HC6k+4W+VoXLyHEDEY74J9eZzh6+u/Z2MlohZQc36ol6nkQOTdtsKm7iEpwx9dzs7Gaw2w
	A/4xr0GQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heClA-0006gh-TZ; Fri, 21 Jun 2019 06:10:53 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heCl7-0006fF-74
 for linux-riscv@lists.infradead.org; Fri, 21 Jun 2019 06:10:50 +0000
Received: by mail-pl1-x641.google.com with SMTP id p1so2472270plo.2
 for <linux-riscv@lists.infradead.org>; Thu, 20 Jun 2019 23:10:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=xzioaCMOpZ9xQIhn8ZgZe3ezoCoNBuqDVW6enXrUWdI=;
 b=ctO7hOIdc1bJes6IfW+jMC3YvFiVSz45t+/wcP7nl8TQnixOumEuakVUduy54+D7vJ
 IdmjNUS/kNTfK7m3QaYMos3dbKCZRVWTfrJFCalZJNsrO1H1o/F7taY9HeBHZRisbRgf
 NjO/pdbW9rE9yRbiBiXHxrhud2JsVcugAKH+sg89svmnAcKH7fuQ0977VQ8x1qNV3YbE
 QthTsJiP1TuuIINMBQ3GV/EHrVuRwMj7SiMzRwunaN33CqyeO7qPgc4hmRVnbIFXtyop
 jL+FJiNe7n3XdJTacXjginoA/dKAYtF0soKm0PxiGhj2m7/NHDZNIXnV7rrH0Aosw6a0
 ZcKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=xzioaCMOpZ9xQIhn8ZgZe3ezoCoNBuqDVW6enXrUWdI=;
 b=FCXgh9sqJjjgVCyq1Bp/EuLKlqVQgi0PQAS9cXoOw6nNDcUr+El0OM+roC4LMU70qR
 I+f6cSdYfo1pmIWnYb3T/IftuvdreEjBraTKaK568VNVykRtNT1zvTtwhTKeqk5QYpyL
 rCGgckHjOL8k0fFMIzonOJ4WUaYN6VpI7hL6ImTSE/D27BzurEOLiUoxsmZE4LYtuh6G
 olVONHudkjrYqTGcPCcXeDkBhb3CSlSa+9p1poJ03BRZ7kUbeGZbaQO5nJN8gMmL/7De
 7gPRGw1VGiCGzcYiVEVocQi2rqwwWyXLj9eLnrZjU9LFek6VgdxCo1c/qKeebzUB/cEq
 1kDQ==
X-Gm-Message-State: APjAAAUE3F51bKh43dSvdNhsSKaP6/8tKoE5XxnpSTCsbdnyXvZRg9Kt
 X/0LQ+PWGix/T8F9wf3nJytvvg==
X-Google-Smtp-Source: APXvYqwNG2i/oMNUPGHebpRlmIa/kWkRWV3Ez3z7eWR9nYZaeTxX5aOLEn6fqpOIvgHIP0ZnhK13+w==
X-Received: by 2002:a17:902:b611:: with SMTP id
 b17mr77686806pls.261.1561097448592; 
 Thu, 20 Jun 2019 23:10:48 -0700 (PDT)
Received: from buildserver-90.open-silicon.com ([114.143.65.226])
 by smtp.googlemail.com with ESMTPSA id x17sm1450053pgk.72.2019.06.20.23.10.44
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 20 Jun 2019 23:10:47 -0700 (PDT)
From: Yash Shah <yash.shah@sifive.com>
To: robh+dt@kernel.org, paul.walmsley@sifive.com, devicetree@vger.kernel.org,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] riscv: dts: Add DT node for SiFive FU540 Ethernet controller
 driver
Date: Fri, 21 Jun 2019 11:40:22 +0530
Message-Id: <1561097422-25130-2-git-send-email-yash.shah@sifive.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1561097422-25130-1-git-send-email-yash.shah@sifive.com>
References: <1561097422-25130-1-git-send-email-yash.shah@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_231049_264613_5D0C444D 
X-CRM114-Status: UNSURE (   9.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, sachin.ghadi@sifive.com,
 Yash Shah <yash.shah@sifive.com>, palmer@sifive.com, aou@eecs.berkeley.edu
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

DT node for SiFive FU540-C000 GEMGXL Ethernet controller driver added

Signed-off-by: Yash Shah <yash.shah@sifive.com>
---
 arch/riscv/boot/dts/sifive/fu540-c000.dtsi | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/arch/riscv/boot/dts/sifive/fu540-c000.dtsi b/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
index 4e8fbde..584e737 100644
--- a/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
+++ b/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
@@ -225,5 +225,25 @@
 			#address-cells = <1>;
 			#size-cells = <0>;
 		};
+		eth0: ethernet@10090000 {
+			compatible = "sifive,fu540-macb";
+			interrupt-parent = <&plic0>;
+			interrupts = <53>;
+			reg = <0x0 0x10090000 0x0 0x2000
+			       0x0 0x100a0000 0x0 0x1000>;
+			reg-names = "control";
+			local-mac-address = [00 00 00 00 00 00];
+			phy-mode = "gmii";
+			phy-handle = <&phy1>;
+			clock-names = "pclk", "hclk";
+			clocks = <&prci PRCI_CLK_GEMGXLPLL>,
+				 <&prci PRCI_CLK_GEMGXLPLL>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+			phy1: ethernet-phy@0 {
+				reg = <0>;
+			};
+		};
+
 	};
 };
-- 
1.9.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
