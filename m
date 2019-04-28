Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F568B4AB
	for <lists+linux-riscv@lfdr.de>; Sun, 28 Apr 2019 02:26:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FuRqe8ur/3XfHoiLHVpCbyEPBqKpXbqvhCnB5TsfaQI=; b=jgpnyCCCiOKVXf
	yKKCd62/mDscsIofQelZnKgah4I3s3DCheV0H0o5/VCcJkI3LVmsdnY61jM0BuWNeDQEUHxGILMVJ
	1mYDDANNvDNkdrREFJ1AL7Dz69RzFhgR2gve4L+6f63ABzAs3S4n2giSbZZIKhPYO8rDngahADvuW
	iQKWvRGsew6uh8oGCi5+d2zDDcIr9KSGcdJ9wXYMI+17+kszgOsxCET7+c7+5EmZa7jqAVQVmXh1S
	zRskEEwHPFXNmwuvVBnNBxtvUgdZXV1xriYKPNDabka0zVg26GCivb2q+wfZ795L2vAvgy12cK7AM
	r75izwRfJYXPDRB+0aWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKXeM-0000X2-0p; Sun, 28 Apr 2019 00:26:34 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKXdw-0008R0-1B; Sun, 28 Apr 2019 00:26:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1556411168; x=1587947168;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=29osV+2RDGf1LHK2n5eg5QB1HBqM11BN+lKruv8f5mA=;
 b=pJ+zjEmvf99rPpmau2XskFYKhP2FLqg+Ma73CuBBPJxlR6tn39JCYIFP
 h1bqZt38YMr0vH6PXonpM8nalpBP3630KLraycCLnZzVY88JRvQ2vqg0G
 U/Sy2RkaUeSLTnFPiBnpK5EOkJ5vRn6Ia3NLvXDGNoK8dBQfna8FCJDsf
 sDzHxC5rMHD/tYuK3U3TGLlNfYjR4fW6AZgtbq2ysQ5DuB29LE/3dDMZ+
 mzWmJ0nrxlmpSqMgCOxUhk9zEiZEgZttC7l5Hz/Rwwy6O0PbyjlZzwV9v
 l2YXL6v10vNW1rzj3ThRTM0X1zjHz+eMVk/E+ponCWt6yWwPhSM2qqwp/ w==;
X-IronPort-AV: E=Sophos;i="5.60,403,1549900800"; d="scan'208";a="108718386"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 28 Apr 2019 08:26:02 +0800
IronPort-SDR: dQ773aOb8cNNkgVnhv+tJg2s2MugTk41Qr8vDCxJnWOMHXiWyv1LJmDT6mBkMdgT2wSJcpn/DL
 ks3GTnN0W19WUbG57gPuYdz0bUjR9cQ+8K0vzLXfvAfVQ6Gd+S+Wisu3eImjBvuZi3ilUJ+tCU
 LBFfdJR4nsvgBMkQYQitLKjm7uTvtrdr5gktXnNdpRotZC42F5+khbCTKHb9bb8WFozA+vJYvD
 I9KQsiXgIPfeelfgaOOFqCaoTvMjOoSwgOZMXMc66dV3nKp3FPFEMGXgdcbwKeQQu3svW+S5+0
 ZsDoPjDZWxLvVEEf+YV8+rFU
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP; 27 Apr 2019 17:02:28 -0700
IronPort-SDR: Xvgiq9GBDxxOBB9VlgYR9Uy1wDrhzbZSTzGMSnuJ5DI55xh3q1YuMOrSm3baX4y35JRGc8v8zS
 4hpvVE2hAJx4rvw11WHne7Dk3cusEmp07scQH1kJ82tlyIm6TI18J5KJJcoeHZaF4CoUV3Lg7X
 /dGnFcvveIbob8arurDVyaCYdvi5n5gH90d4emYCQsKeJGDIK2hbny6kqVQqISpcWL5sUusJnD
 hb26enqJ3XeERH7BttOHI+/P7C2q9IuTv4O9mfhMI4iaLELWFSScUFZbl2Dh6ylk04capvqhJB
 oOA=
Received: from jedi-01.sdcorp.global.sandisk.com (HELO
 jedi-01.int.fusionio.com) ([10.11.143.218])
 by uls-op-cesaip02.wdc.com with ESMTP; 27 Apr 2019 17:26:03 -0700
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org
Subject: [RFT PATCH v4 2/5] dt-binding: cpu-topology: Move cpu-map to a common
 binding.
Date: Sat, 27 Apr 2019 17:25:26 -0700
Message-Id: <20190428002529.14229-3-atish.patra@wdc.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190428002529.14229-1-atish.patra@wdc.com>
References: <20190428002529.14229-1-atish.patra@wdc.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190427_172608_130070_C0FBEAF7 
X-CRM114-Status: GOOD (  15.15  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.45 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Catalin Marinas <catalin.marinas@arm.com>, Palmer Dabbelt <palmer@sifive.com>,
 Will Deacon <will.deacon@arm.com>, Atish Patra <atish.patra@wdc.com>,
 linux-riscv@lists.infradead.org, Morten Rasmussen <morten.rasmussen@arm.com>,
 Rob Herring <robh@kernel.org>, Anup Patel <anup@brainfault.org>,
 Ingo Molnar <mingo@kernel.org>, devicetree@vger.kernel.org,
 Albert Ou <aou@eecs.berkeley.edu>, Rob Herring <robh+dt@kernel.org>,
 Paul Walmsley <paul.walmsley@sifive.com>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jeremy Linton <jeremy.linton@arm.com>, Otto Sabart <ottosabart@seberm.com>,
 Sudeep Holla <sudeep.holla@arm.com>, Andreas Schwab <schwab@suse.de>
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
