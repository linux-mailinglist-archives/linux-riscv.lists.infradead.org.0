Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D41151E78
	for <lists+linux-riscv@lfdr.de>; Tue, 25 Jun 2019 00:39:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=sFPLuLNUcDnEYJgfA3ffRjZLyCoIxWUPlcZOcy+G1ac=; b=WX9choJRe+BEog
	vC6EWMPBhaGsVIy8H4jRbny75xHNEpfC4rosObhaWvWuaquvYJnEwTnuIDZLHw5EXNwMM7TMWy0LP
	tyf+okWeB+wPo1zGEdp12R68nPaV6D1q1sdsohYbAn8DkNV5yxk/36hCvCLVzSdU7+zpfIFSF8l30
	m8CDxWALD+ZiRyY4uo3vgCkKRXOwUrfW4akZNVlQ14K8Y/e+KfwK4Otdfx6h+2l1l2YvF94zzH5dH
	g9dGykVmdqX1Kb9WspnvUjcqI/W39mQ2xunb7i8Gv8C7D7YCFPdmk70GIof/ZoigzDkA6sJtX6i/N
	9myCiX3OmC3QcFzVFWXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfXc1-0007Tj-IN; Mon, 24 Jun 2019 22:38:57 +0000
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfXby-0007TP-9h
 for linux-riscv@lists.infradead.org; Mon, 24 Jun 2019 22:38:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1561415935; x=1592951935;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=amaL0k2oUBluhz5amtgozZ38Lqs3Jm8acq5qCLADl/0=;
 b=f9MAEwqcteEJ2uwzP6NJBrFmHf7ObwWMw2M5rllx4EZ7yBXYkzlt6zDh
 8J+ufm/2OUiMOs1AUM1FqHkCRk/HgpmtasztqpZnuoDSmH9AodxjEuAP5
 iFFa06iyCRl+M/jxS/OKcihStd+nbNYewXytLvSp3zaE6IgXihKdLaa4z
 KbNmWtAc+XYAlC/4KUGFDzKs/2kVzxR83dPAYdhlRpozuWKA6QAYC6c+o
 GZz61gZK84JqwtUpsHipFvXzgI4ZtCaHvnzYgu1R1wwVbV5bbZEF8Yn3Q
 zAtSc4zJHksh7gJgu2fi3quv+Reqw6inPBCpPoVGgKD/+l2yVWkb8EiIk w==;
X-IronPort-AV: E=Sophos;i="5.63,413,1557158400"; d="scan'208";a="111417903"
Received: from h199-255-45-14.hgst.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 25 Jun 2019 06:38:52 +0800
IronPort-SDR: nACLbG+oVm3jwgI50nSUiEvlDoTMX8ksGe1Zc0kPX1ttceWGjGWpDhNQGc30LCTmB+A1dAOi/a
 kiJvcP8wJNlVYqkjSydCmJjBeMBtPh9e5e9TmFnj7cSEqel/TtRKmt/+NUPYtZ7LdwuCBUZTc/
 c7sgRuyvVSHX7iWmmRiaWFqrzlku7cawxv8Xl35QKvpSXvFFpbstW30//twi6+HGckmLPebRcs
 b1U/eksFVrjOJM/mG3eg9iiVN9JUqucbyh1RndZMEMe67klg7zKN7JskPJecqq16hPKHkVG+jY
 W7MqITwBaZ2Kmu1ZcjrDpWxK
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP; 24 Jun 2019 15:38:03 -0700
IronPort-SDR: jYLXl3hSQmhk2KvSiMaIW/VEw3gCbmz1B8E1cNVXFGHRCN1oqPhMfM4xfeynB4tzA9GtbHJI5e
 hg3N+OzdzF3tW2Yh3CsZMkaGDrSj46aRvbxxkdVXy0j2Jz3JPYgaWpldwq5vg1qi/DvOAcOkn+
 sGXiaWy0cdep5J1lVBRrLDaJKF3vWuklHa1SG/KdeGgSxExWduUNMk8sGlTJpMBKY6n73vj8jx
 LAiSMnIrzgiB67YyIjXq+4OyTDgfKSsGQqTtr0e/VBt/69hSjueSOlDJsw9pwNZ0jpb7zgFKfg
 /Eo=
Received: from jedi-01.sdcorp.global.sandisk.com (HELO
 jedi-01.int.fusionio.com) ([10.11.143.218])
 by uls-op-cesaip02.wdc.com with ESMTP; 24 Jun 2019 15:38:49 -0700
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH] riscv: Add cpu topology DT entry.
Date: Mon, 24 Jun 2019 15:38:19 -0700
Message-Id: <20190624223819.14320-1-atish.patra@wdc.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_153854_400844_F55F12CA 
X-CRM114-Status: UNSURE (   8.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.42 listed in list.dnswl.org]
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
 Albert Ou <aou@eecs.berkeley.edu>, Anup Patel <anup@brainfault.org>,
 Palmer Dabbelt <palmer@sifive.com>, Atish Patra <atish.patra@wdc.com>,
 Yash Shah <yash.shah@sifive.com>, Rob Herring <robh+dt@kernel.org>,
 Paul Walmsley <paul.walmsley@sifive.com>, linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Currently, there is no CPU topology defined for RISC-V.
The following series adds topology support in RISC-V.

http://lists.infradead.org/pipermail/linux-riscv/2019-June/005072.html

Add a DT node for unleashed that describes the CPU topology
present in HiFive Unleashed.

Signed-off-by: Atish Patra <atish.patra@wdc.com>
---
 arch/riscv/boot/dts/sifive/fu540-c000.dtsi | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/arch/riscv/boot/dts/sifive/fu540-c000.dtsi b/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
index 83f40b00ab63..907564f4f07a 100644
--- a/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
+++ b/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
@@ -22,6 +22,24 @@
 		#address-cells = <1>;
 		#size-cells = <0>;
 		timebase-frequency = <1000000>;
+
+		cpu-map {
+			cluster0 {
+				core0 {
+					cpu = <&cpu1>;
+				};
+				core1 {
+					cpu = <&cpu2>;
+				};
+				core2 {
+					cpu = <&cpu3>;
+				};
+				core3 {
+					cpu = <&cpu4>;
+				};
+			};
+		};
+
 		cpu0: cpu@0 {
 			compatible = "sifive,e51", "sifive,rocket0", "riscv";
 			device_type = "cpu";
-- 
2.21.0


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
