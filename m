Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AB8E2E732
	for <lists+linux-riscv@lfdr.de>; Wed, 29 May 2019 23:15:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FuRqe8ur/3XfHoiLHVpCbyEPBqKpXbqvhCnB5TsfaQI=; b=opSwyD/bAan5QR
	qI0tP1mzq/MjwnBvY9zycBk9WXw+ke1TwwFyEcNqPzwGqOmc34JUW7mUQQBcCWB3IodE6SHAzMCtu
	asip43faxQxv51flVemtEyervobvhZJq+c7QCHeVOlhDZjqKIX/B+FUCbpid7PYeQGANvnzOgPoo1
	ElOWCceOnKChUmG/yUjGIh+QeSjfipMdrfusvXMKxhUIZF9j4z7yNo7AZGXAVaqG+JdnuRgd2iqXk
	OXsisoT9WLJmfW3JcVx4R6U4i5qEvEG5OqWwyXDS+JIMIpLsZks7QJPi5eLe/KoSouwSWBp32+Jkq
	0S6jEPFQDST8VJEMsHrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hW5uY-0006Cv-Rx; Wed, 29 May 2019 21:15:02 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hW5uO-00063I-4h; Wed, 29 May 2019 21:14:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1559164536; x=1590700536;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=29osV+2RDGf1LHK2n5eg5QB1HBqM11BN+lKruv8f5mA=;
 b=BQ5CdydzAvzpF7k2HWGMrm3syEe5Hhq7vngqZpCqmRa77HVXnq8E8RMh
 aHIGTYuX/AaJplMOhtr2rMIsgM475yOur0qmkuNf6hDI8crgPffJKjbvU
 E3nd+FJqN9pJklzheIgk75MHDQVRSAkGHRpdr4kTtf4docoD1lowyR8/E
 9jSXwzqZJ8lW5fP7CBMWJ2ecxgitBivhqnkuRa3Zo0DpbwlB0qFpjqd+I
 kqmfWEoShAgS0NJteaFS6Jc9UZB7FqXkaVxHQgWX9TUQbx1q0nfMfgyFn
 ZlLX1ItgXs0DStlP8u1tGdFg4OAf6ArD44zB4QC7ODH50EqiJ74tvzaiH w==;
X-IronPort-AV: E=Sophos;i="5.60,527,1549900800"; d="scan'208";a="208905685"
Received: from h199-255-45-14.hgst.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 30 May 2019 05:15:35 +0800
IronPort-SDR: SvfkcxOx7N8okeqpeZQJsnkqxxYB5NWGOxKWe6tfkU7eYrASrBKf55yefGmKrG/injjAvmKkqg
 hNY5NTvGbVn8jkwiqhWrhBM5FZUlzf+LF6T26zKukb6tBAmCqhul6fRarP9r2YfFV14VpzC1uG
 OhXEiPNy58uKmwFKV6VzopY/1uQQtNC+Zac/ejQMklQ9JwTD4ZkvXzIMMZKE0NHn62hxGMZz/N
 pgyHFHIZ+FRhtY6oim6hZvIAO7Rh9Y+ZKIRN9rLEnFHuypNbUTKSXx+3eGhvZA6dxrFWF9KYQ+
 jLdKykZ0LEjulN1vlv1U7CiY
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP; 29 May 2019 13:50:01 -0700
IronPort-SDR: bPIiVoyeFfUCPVUFL2xj+HhRezN9xnE/X3xkbSBVRHM/pB/p0s+4JIYQ9o/RsJdGZS2PjwOUC0
 ZHB9mrd8LKMcoLdd4/qW/TxJoyQoteOM9FzLlEaygQkGJj+GfQuFNbUxH5kfEmy0CatjE9V9K8
 7YguOaRB+6I4pnmFNm8QOHpG44aKOoq7WVrGrLen7HioJiwSDxuHV1790nFHzggITZ21vt/cVx
 JB9bUldYTntPtdkUV+KaV217TzFWfxdtW/k/TlNt/RC5pbpx7a0QjSpvPYEqs6AgdOS8d/gzws
 T6k=
Received: from jedi-01.sdcorp.global.sandisk.com (HELO
 jedi-01.int.fusionio.com) ([10.11.143.218])
 by uls-op-cesaip02.wdc.com with ESMTP; 29 May 2019 14:14:51 -0700
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v6 2/7] dt-binding: cpu-topology: Move cpu-map to a common
 binding.
Date: Wed, 29 May 2019 14:13:35 -0700
Message-Id: <20190529211340.17087-3-atish.patra@wdc.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190529211340.17087-1-atish.patra@wdc.com>
References: <20190529211340.17087-1-atish.patra@wdc.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_141452_225268_C70B70A1 
X-CRM114-Status: GOOD (  15.87  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.143.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 "Peter Zijlstra \(Intel\)" <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>, Palmer Dabbelt <palmer@sifive.com>,
 Will Deacon <will.deacon@arm.com>, Atish Patra <atish.patra@wdc.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 linux-riscv@lists.infradead.org, Ingo Molnar <mingo@kernel.org>,
 Rob Herring <robh@kernel.org>, Anup Patel <anup@brainfault.org>,
 Russell King <linux@armlinux.org.uk>,
 Morten Rasmussen <morten.rasmussen@arm.com>, devicetree@vger.kernel.org,
 Albert Ou <aou@eecs.berkeley.edu>, Rob Herring <robh+dt@kernel.org>,
 Paul Walmsley <paul.walmsley@sifive.com>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jeremy Linton <jeremy.linton@arm.com>, Otto Sabart <ottosabart@seberm.com>,
 Sudeep Holla <sudeep.holla@arm.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

cpu-map binding can be used to described cpu topology for both
RISC-V & ARM. It makes more sense to move the binding to document
to a common place.

The relevant discussion can be found here.
https://lkml.org/lkml/2018/11/6/19

Signed-off-by: Atish Patra <atish.patra@wdc.com>
Reviewed-by: Sudeep Holla <sudeep.holla@arm.com>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 .../topology.txt => cpu/cpu-topology.txt}     | 82 +++++++++++++++----
 1 file changed, 66 insertions(+), 16 deletions(-)
 rename Documentation/devicetree/bindings/{arm/topology.txt => cpu/cpu-topology.txt} (86%)

diff --git a/Documentation/devicetree/bindings/arm/topology.txt b/Documentation/devicetree/bindings/cpu/cpu-topology.txt
similarity index 86%
rename from Documentation/devicetree/bindings/arm/topology.txt
rename to Documentation/devicetree/bindings/cpu/cpu-topology.txt
index 3b8febb46dad..069addccab14 100644
--- a/Documentation/devicetree/bindings/arm/topology.txt
+++ b/Documentation/devicetree/bindings/cpu/cpu-topology.txt
@@ -1,12 +1,12 @@
 ===========================================
-ARM topology binding description
+CPU topology binding description
 ===========================================
 
 ===========================================
 1 - Introduction
 ===========================================
 
-In an ARM system, the hierarchy of CPUs is defined through three entities that
+In a SMP system, the hierarchy of CPUs is defined through three entities that
 are used to describe the layout of physical CPUs in the system:
 
 - socket
@@ -14,9 +14,6 @@ are used to describe the layout of physical CPUs in the system:
 - core
 - thread
 
-The cpu nodes (bindings defined in [1]) represent the devices that
-correspond to physical CPUs and are to be mapped to the hierarchy levels.
-
 The bottom hierarchy level sits at core or thread level depending on whether
 symmetric multi-threading (SMT) is supported or not.
 
@@ -25,33 +22,31 @@ threads existing in the system and map to the hierarchy level "thread" above.
 In systems where SMT is not supported "cpu" nodes represent all cores present
 in the system and map to the hierarchy level "core" above.
 
-ARM topology bindings allow one to associate cpu nodes with hierarchical groups
+CPU topology bindings allow one to associate cpu nodes with hierarchical groups
 corresponding to the system hierarchy; syntactically they are defined as device
 tree nodes.
 
-The remainder of this document provides the topology bindings for ARM, based
-on the Devicetree Specification, available from:
+Currently, only ARM/RISC-V intend to use this cpu topology binding but it may be
+used for any other architecture as well.
 
-https://www.devicetree.org/specifications/
+The cpu nodes, as per bindings defined in [4], represent the devices that
+correspond to physical CPUs and are to be mapped to the hierarchy levels.
 
-If not stated otherwise, whenever a reference to a cpu node phandle is made its
-value must point to a cpu node compliant with the cpu node bindings as
-documented in [1].
 A topology description containing phandles to cpu nodes that are not compliant
-with bindings standardized in [1] is therefore considered invalid.
+with bindings standardized in [4] is therefore considered invalid.
 
 ===========================================
 2 - cpu-map node
 ===========================================
 
-The ARM CPU topology is defined within the cpu-map node, which is a direct
+The ARM/RISC-V CPU topology is defined within the cpu-map node, which is a direct
 child of the cpus node and provides a container where the actual topology
 nodes are listed.
 
 - cpu-map node
 
-	Usage: Optional - On ARM SMP systems provide CPUs topology to the OS.
-			  ARM uniprocessor systems do not require a topology
+	Usage: Optional - On SMP systems provide CPUs topology to the OS.
+			  Uniprocessor systems do not require a topology
 			  description and therefore should not define a
 			  cpu-map node.
 
@@ -494,8 +489,63 @@ cpus {
 	};
 };
 
+Example 3: HiFive Unleashed (RISC-V 64 bit, 4 core system)
+
+{
+	#address-cells = <2>;
+	#size-cells = <2>;
+	compatible = "sifive,fu540g", "sifive,fu500";
+	model = "sifive,hifive-unleashed-a00";
+
+	...
+	cpus {
+		#address-cells = <1>;
+		#size-cells = <0>;
+		cpu-map {
+			cluster0 {
+				core0 {
+					cpu = <&CPU1>;
+				};
+				core1 {
+					cpu = <&CPU2>;
+				};
+				core2 {
+					cpu0 = <&CPU2>;
+				};
+				core3 {
+					cpu0 = <&CPU3>;
+				};
+			};
+		};
+
+		CPU1: cpu@1 {
+			device_type = "cpu";
+			compatible = "sifive,rocket0", "riscv";
+			reg = <0x1>;
+		}
+
+		CPU2: cpu@2 {
+			device_type = "cpu";
+			compatible = "sifive,rocket0", "riscv";
+			reg = <0x2>;
+		}
+		CPU3: cpu@3 {
+			device_type = "cpu";
+			compatible = "sifive,rocket0", "riscv";
+			reg = <0x3>;
+		}
+		CPU4: cpu@4 {
+			device_type = "cpu";
+			compatible = "sifive,rocket0", "riscv";
+			reg = <0x4>;
+		}
+	}
+};
 ===============================================================================
 [1] ARM Linux kernel documentation
     Documentation/devicetree/bindings/arm/cpus.yaml
 [2] Devicetree NUMA binding description
     Documentation/devicetree/bindings/numa.txt
+[3] RISC-V Linux kernel documentation
+    Documentation/devicetree/bindings/riscv/cpus.txt
+[4] https://www.devicetree.org/specifications/
-- 
2.21.0


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
