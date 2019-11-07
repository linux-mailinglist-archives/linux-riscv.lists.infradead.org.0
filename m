Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CEB3EF3A6B
	for <lists+linux-riscv@lfdr.de>; Thu,  7 Nov 2019 22:24:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rb3GQa2Qnirp3ZjIeHvp11mqi6QICqyG+tq0qQhRzNo=; b=LULKUd20r1NN39
	sZ52d6U30yHIUxTkvsgGkJQqXdxdtHPl9SiiiW29to9oRf1blFINk63Rg7wmo5bM4n+XesLd71A1w
	PYJoeKYZCLYZk9YS2CttwYaCbA1GXwsNMtqgtOZL8ww7axTaiMsFb1PQlbCleCr7mR1u9awa9hg2P
	wsAHNFmieMYPVTwmX8YYk7hVg98VOK/sLiOxiUvT3GYFNOZx3bD5V2/LdHsNph9IxFixJaln+wkyk
	FZdtiTeOl1DdwLC46rIB/gG7lV4ayHYJTAYTcSBzPkCwINqNPEw9g3AJr6d6+wyrRDtMKTrRMwVkO
	S8h8Iquf/9S1vbzK4mAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSpGM-0007IL-Kv; Thu, 07 Nov 2019 21:24:18 +0000
Received: from [2001:4bb8:184:e48:c70:4a89:bc61:2] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSpGJ-0007Fe-VH; Thu, 07 Nov 2019 21:24:16 +0000
From: Christoph Hellwig <hch@lst.de>
To: Sebastian Reichel <sre@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Palmer Dabbelt <palmer@dabbelt.com>
Subject: [PATCH 1/2] dt-bindings: power: reset: document the QEMU RISC-V virt
 machine poweroff device
Date: Thu,  7 Nov 2019 22:24:07 +0100
Message-Id: <20191107212408.11857-2-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191107212408.11857-1-hch@lst.de>
References: <20191107212408.11857-1-hch@lst.de>
MIME-Version: 1.0
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
Cc: devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
 linux-pm@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Add the binding for the trivial Qemu RISC-V poweroff mechanism, which is
just a single MMIO register exposed through the DT.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 .../power/reset/qemu-riscv-virt-poweroff.txt     | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/power/reset/qemu-riscv-virt-poweroff.txt

diff --git a/Documentation/devicetree/bindings/power/reset/qemu-riscv-virt-poweroff.txt b/Documentation/devicetree/bindings/power/reset/qemu-riscv-virt-poweroff.txt
new file mode 100644
index 000000000000..80ff6fd4e3b7
--- /dev/null
+++ b/Documentation/devicetree/bindings/power/reset/qemu-riscv-virt-poweroff.txt
@@ -0,0 +1,16 @@
+QEMU RISC-V virt machine poweroff device
+
+This is a device in Qemu that can signal successful or error exit
+by writing two magic numbers to a trivial mmio register.
+A Linux poweroff is implemented as successful exit.
+
+Required Properties:
+-compatible: "sifive,test0"
+-reg: Specifies the physical address of the register
+
+Example:
+
+	test@100000 {
+		compatible = "sifive,test0";
+		reg = <0x100000 0x1000>;
+	};
-- 
2.20.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
