Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C92D510F944
	for <lists+linux-riscv@lfdr.de>; Tue,  3 Dec 2019 08:48:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=cR+gYDz2rc9M/7zI9qNzXJbqu3SgqrIGq3xnD26oZeM=; b=XlmDDUxRvfa/N8DGOFOXmfY5m
	XdX9KZonNaVYNPw5UlfLuRUBIoWBScth/ulXfNDbCi2J2Yv08EWKBP+q/jUH8wkvcoRafPz5NKi02
	/dmjCzU+8c9EdaNiTLhXPcOTb81GNRyoo9LNqe8qj/hWNWtVIkoQai/yaLmCUIZZ5hp+qmpsPVSQ0
	GQdJKhAaespwsg1TSi48yjZn/b99c5TBerzv4HVgDeG1fYEZ5uIRblMyE2iI/0Kt2lhEliGqWxGtQ
	dyRYAMPrhwozvUcckJivqOw8+tcL1MvA6dcnkz49ZwNVAHEhnb3g6PtxWNoaZb9jc0i49MuUk3cZV
	KJltQElWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic2uq-0001Us-8t; Tue, 03 Dec 2019 07:48:12 +0000
Received: from rtits2.realtek.com ([211.75.126.72] helo=rtits2.realtek.com.tw)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1ic2sP-0007ky-Pf; Tue, 03 Dec 2019 07:45:44 +0000
Authenticated-By: 
X-SpamFilter-By: BOX Solutions SpamTrap 5.62 with qID xB37jTZl016051,
 This message is accepted by code: ctloc85258
Received: from mail.realtek.com (RTITCASV01.realtek.com.tw[172.21.6.18])
 by rtits2.realtek.com.tw (8.15.2/2.57/5.78) with ESMTPS id xB37jTZl016051
 (version=TLSv1 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
 Tue, 3 Dec 2019 15:45:29 +0800
Received: from james-BS01.localdomain (172.21.190.33) by
 RTITCASV01.realtek.com.tw (172.21.6.18) with Microsoft SMTP Server id
 14.3.468.0; Tue, 3 Dec 2019 15:45:28 +0800
From: James Tai <james.tai@realtek.com>
To: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
Subject: [PATCH 6/6] dt-bindings: clk: realtek: add rtd1619 clock controller
 bindings
Date: Tue, 3 Dec 2019 15:45:13 +0800
Message-ID: <20191203074513.9416-7-james.tai@realtek.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191203074513.9416-1-james.tai@realtek.com>
References: <20191203074513.9416-1-james.tai@realtek.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_234542_048569_973CC2DC 
X-CRM114-Status: UNSURE (   9.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.75.126.72 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 cylee12 <cylee12@realtek.com>, linux-realtek-soc@lists.infradead.org,
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 Palmer Dabbelt <palmer@sifive.com>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-riscv@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

From: cylee12 <cylee12@realtek.com>

Signed-off-by: Cheng-Yu Lee <cylee12@realtek.com>
Signed-off-by: James Tai <james.tai@realtek.com>
---
 .../bindings/clock/realtek,clocks.txt         | 38 +++++++++++++++++++
 1 file changed, 38 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/clock/realtek,clocks.txt

diff --git a/Documentation/devicetree/bindings/clock/realtek,clocks.txt b/Documentation/devicetree/bindings/clock/realtek,clocks.txt
new file mode 100644
index 000000000000..db101508ac6a
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/realtek,clocks.txt
@@ -0,0 +1,38 @@
+Realtek Clock/Reset Controller
+==============================
+
+Realtek CRT/ISO controller device-tree binding for Realtek Platforms.
+
+This binding uses the common clock binding[1].
+
+The controller node should be the child of a syscon node with the required
+propertise:
+
+- compatible :
+	should contain only one of the following:
+		"realtek,rtd1619-cc" for RTD1619 CRT clock controller,
+		"realtek,rtd1619-ic" for RTD1619 ISO clock controller,
+
+- #clock-cells : should be 1.
+
+- #reset-cells : should be 1.
+
+[1] Documentation/devicetree/bindings/clock/clock-bindings.txt
+
+Example:
+
+	crt@98000000 {
+		compatible = "realtek,rtd1619-crt", "simple-mfd", "syscon";
+		reg = <0x98000000 0x1000>;
+
+		cc: cc@98000000 {
+			compatible = "realtek,rtd1619-cc";
+			#clock-cells = <1>;
+			#reset-cells = <1>;
+		};
+	};
+
+	consumer {
+		clocks = <&cc CC_CKE_GSPI>;
+	};
+
-- 
2.24.0


