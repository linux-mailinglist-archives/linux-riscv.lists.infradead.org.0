Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70C7158B30
	for <lists+linux-riscv@lfdr.de>; Thu, 27 Jun 2019 21:55:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S9n2BE8+PVh5+ZwIsgH5UzsEyF2iS4OyFgUwdLfNqyM=; b=acBE921P/2kC3s
	2tYyB3DUBoE1u52UKYVaz3rLTVBJ2SaWwbv2RqU9DwNs6/1E+KpmnA9QMkyUlZTZEdegNIYAf2JAZ
	3ukL2Ib2ChlYildrQvU6YXwSYV+PHOp/CDGKJZ+u07rznMQn1w6k+GKhZ/0MJOHSOUA88A+vNrLlG
	Btb3e5mupjguxbUnTl6SU/wNqmpNZEKFbJ74keAvVZ0HKldOJR1K2LvrFLhnDFn8NZsiiEUbsOT9X
	bPezoHxetwM+tuSpyA6ycyo4YLgeeZzXYrVlhqIb0fPLD6r6/6CT0GICjXQ0xpMj4s+SE36w02470
	56MF7Pn3rO4JBiUIGwhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgaUW-0004Mr-9n; Thu, 27 Jun 2019 19:55:32 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgaUR-0004KX-22; Thu, 27 Jun 2019 19:55:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1561665327; x=1593201327;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=R4jfjZMxUWSzFwisiuVjBFLXxDAnXEO77dQqxAyI1wE=;
 b=pzkqQ0kxyU8Ri51rRUJUnIm9hB2sJaReKXEWJwqpvHdqxZ5Pcb4ZL6Nr
 vBCVdpAhVjBoG32FDznAHuHwbTEYmQVB7KK1k75F4pfuTcHn8uA6aU0FL
 iAHl/aM5u6vGiAZPxv48KNpRf8QASZ9IxR6kWvXBzkJmt7qDb+2dRBQiE
 fLjY2Eb9gZu+BFFQW5CCjQ4vsh7/tQYLsvfh4sKhV2BpVVOhlpKg3F2aA
 MU1Pb1NeM2FFQZlBzSbLwN2ufqq+goU3hevUZza2ZG1N0t+iAYbX5ltLA
 SGnPqZ3jujAuxVUJbLDVkpu6W2Z+ZcwmBQRSDBpI0/WeNtqIlFLVEMdKH w==;
X-IronPort-AV: E=Sophos;i="5.63,424,1557158400"; d="scan'208";a="113353772"
Received: from uls-op-cesaip02.wdc.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 28 Jun 2019 03:55:25 +0800
IronPort-SDR: OflgjNsBWzHv1FTECYb6DjK9vxuoGepNdrk4xzHc2NUVqS7cweMhasofFoXiaw4Wop16mgW0SS
 PMT4X+D78EU2KXPjZCm3mjG8cYjAJwKBQZ9j+/Vpr24t1vfcYg4ZU5v5ZBkbK3qJE6NlWh2AU9
 v24ZzOl5v5rzEJsgtYcV+2+jiMdgxsVxduPPdkDIlDlFgK6F/7rchiS8ZDWRplrzhV6hlE3lKq
 RQVv37QyIXv8SWr5e+LBIDQNehd7h1ZqcfOVpiKklR/1ibx1Up+PNR3cjz9uV0uBoc7Bo1mrHA
 eWBLBz+TD3a5xs6uMxmUaIYF
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep02.wdc.com with ESMTP; 27 Jun 2019 12:54:38 -0700
IronPort-SDR: zrZX6RAbOPoSs5QMZIqfjIVfLPRAfo+phS5jzwXRWAwg0bCtmLWKKOjf5WM/+ysKs88/8jV8D8
 GgQ3+6aktI6mnATTDgLps2zNlvwrwikyl1o+hnJ9W+fsGZ8kFR5LOtP7IAZsespf9vIuLZjiYa
 WFcPoI5TYkJVnyLYWLB8aMxqzD0vx1PP72A8kIWdiQUPlJGZpouXJXliay5wvI/nDfLD2olu4+
 NeVibRmlcwz/JPb2fSEFN+IVh2bBKk6khcBif0vGeMBP6FlKZDMYZtGeJHolZ65m6FEoLDE2Ke
 Vq0=
Received: from jedi-01.sdcorp.global.sandisk.com (HELO
 jedi-01.int.fusionio.com) ([10.11.143.218])
 by uls-op-cesaip01.wdc.com with ESMTP; 27 Jun 2019 12:55:25 -0700
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v8 1/7] Documentation: DT: arm: add support for sockets
 defining package boundaries
Date: Thu, 27 Jun 2019 12:52:56 -0700
Message-Id: <20190627195302.28300-2-atish.patra@wdc.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190627195302.28300-1-atish.patra@wdc.com>
References: <20190627195302.28300-1-atish.patra@wdc.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_125527_168358_2411B2B0 
X-CRM114-Status: GOOD (  18.04  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.45 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 "Peter Zijlstra \(Intel\)" <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>, Palmer Dabbelt <palmer@sifive.com>,
 Will Deacon <will.deacon@arm.com>, Atish Patra <atish.patra@wdc.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 linux-riscv@lists.infradead.org, Will Deacon <will@kernel.org>,
 Ingo Molnar <mingo@kernel.org>, Rob Herring <robh@kernel.org>,
 Anup Patel <anup@brainfault.org>, Russell King <linux@armlinux.org.uk>,
 Morten Rasmussen <morten.rasmussen@arm.com>, devicetree@vger.kernel.org,
 Albert Ou <aou@eecs.berkeley.edu>, Johan Hovold <johan@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Paul Walmsley <paul.walmsley@sifive.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Otto Sabart <ottosabart@seberm.com>, Sudeep Holla <sudeep.holla@arm.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

From: Sudeep Holla <sudeep.holla@arm.com>

The current ARM DT topology description provides the operating system
with a topological view of the system that is based on leaf nodes
representing either cores or threads (in an SMT system) and a
hierarchical set of cluster nodes that creates a hierarchical topology
view of how those cores and threads are grouped.

However this hierarchical representation of clusters does not allow to
describe what topology level actually represents the physical package or
the socket boundary, which is a key piece of information to be used by
an operating system to optimize resource allocation and scheduling.

Lets add a new "socket" node type in the cpu-map node to describe the
same.

Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 .../devicetree/bindings/arm/topology.txt      | 172 ++++++++++--------
 1 file changed, 99 insertions(+), 73 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/topology.txt b/Documentation/devicetree/bindings/arm/topology.txt
index b0d80c0fb265..3b8febb46dad 100644
--- a/Documentation/devicetree/bindings/arm/topology.txt
+++ b/Documentation/devicetree/bindings/arm/topology.txt
@@ -9,6 +9,7 @@ ARM topology binding description
 In an ARM system, the hierarchy of CPUs is defined through three entities that
 are used to describe the layout of physical CPUs in the system:
 
+- socket
 - cluster
 - core
 - thread
@@ -63,21 +64,23 @@ nodes are listed.
 
 	The cpu-map node's child nodes can be:
 
-	- one or more cluster nodes
+	- one or more cluster nodes or
+	- one or more socket nodes in a multi-socket system
 
 	Any other configuration is considered invalid.
 
-The cpu-map node can only contain three types of child nodes:
+The cpu-map node can only contain 4 types of child nodes:
 
+- socket node
 - cluster node
 - core node
 - thread node
 
 whose bindings are described in paragraph 3.
 
-The nodes describing the CPU topology (cluster/core/thread) can only
-be defined within the cpu-map node and every core/thread in the system
-must be defined within the topology.  Any other configuration is
+The nodes describing the CPU topology (socket/cluster/core/thread) can
+only be defined within the cpu-map node and every core/thread in the
+system must be defined within the topology.  Any other configuration is
 invalid and therefore must be ignored.
 
 ===========================================
@@ -85,26 +88,44 @@ invalid and therefore must be ignored.
 ===========================================
 
 cpu-map child nodes must follow a naming convention where the node name
-must be "clusterN", "coreN", "threadN" depending on the node type (ie
-cluster/core/thread) (where N = {0, 1, ...} is the node number; nodes which
-are siblings within a single common parent node must be given a unique and
+must be "socketN", "clusterN", "coreN", "threadN" depending on the node type
+(ie socket/cluster/core/thread) (where N = {0, 1, ...} is the node number; nodes
+which are siblings within a single common parent node must be given a unique and
 sequential N value, starting from 0).
 cpu-map child nodes which do not share a common parent node can have the same
 name (ie same number N as other cpu-map child nodes at different device tree
 levels) since name uniqueness will be guaranteed by the device tree hierarchy.
 
 ===========================================
-3 - cluster/core/thread node bindings
+3 - socket/cluster/core/thread node bindings
 ===========================================
 
-Bindings for cluster/cpu/thread nodes are defined as follows:
+Bindings for socket/cluster/cpu/thread nodes are defined as follows:
+
+- socket node
+
+	 Description: must be declared within a cpu-map node, one node
+		      per physical socket in the system. A system can
+		      contain single or multiple physical socket.
+		      The association of sockets and NUMA nodes is beyond
+		      the scope of this bindings, please refer [2] for
+		      NUMA bindings.
+
+	This node is optional for a single socket system.
+
+	The socket node name must be "socketN" as described in 2.1 above.
+	A socket node can not be a leaf node.
+
+	A socket node's child nodes must be one or more cluster nodes.
+
+	Any other configuration is considered invalid.
 
 - cluster node
 
 	 Description: must be declared within a cpu-map node, one node
 		      per cluster. A system can contain several layers of
-		      clustering and cluster nodes can be contained in parent
-		      cluster nodes.
+		      clustering within a single physical socket and cluster
+		      nodes can be contained in parent cluster nodes.
 
 	The cluster node name must be "clusterN" as described in 2.1 above.
 	A cluster node can not be a leaf node.
@@ -164,90 +185,93 @@ Bindings for cluster/cpu/thread nodes are defined as follows:
 4 - Example dts
 ===========================================
 
-Example 1 (ARM 64-bit, 16-cpu system, two clusters of clusters):
+Example 1 (ARM 64-bit, 16-cpu system, two clusters of clusters in a single
+physical socket):
 
 cpus {
 	#size-cells = <0>;
 	#address-cells = <2>;
 
 	cpu-map {
-		cluster0 {
+		socket0 {
 			cluster0 {
-				core0 {
-					thread0 {
-						cpu = <&CPU0>;
-					};
-					thread1 {
-						cpu = <&CPU1>;
+				cluster0 {
+					core0 {
+						thread0 {
+							cpu = <&CPU0>;
+						};
+						thread1 {
+							cpu = <&CPU1>;
+						};
 					};
-				};
 
-				core1 {
-					thread0 {
-						cpu = <&CPU2>;
-					};
-					thread1 {
-						cpu = <&CPU3>;
+					core1 {
+						thread0 {
+							cpu = <&CPU2>;
+						};
+						thread1 {
+							cpu = <&CPU3>;
+						};
 					};
 				};
-			};
 
-			cluster1 {
-				core0 {
-					thread0 {
-						cpu = <&CPU4>;
-					};
-					thread1 {
-						cpu = <&CPU5>;
+				cluster1 {
+					core0 {
+						thread0 {
+							cpu = <&CPU4>;
+						};
+						thread1 {
+							cpu = <&CPU5>;
+						};
 					};
-				};
-
-				core1 {
-					thread0 {
-						cpu = <&CPU6>;
-					};
-					thread1 {
-						cpu = <&CPU7>;
-					};
-				};
-			};
-		};
 
-		cluster1 {
-			cluster0 {
-				core0 {
-					thread0 {
-						cpu = <&CPU8>;
-					};
-					thread1 {
-						cpu = <&CPU9>;
-					};
-				};
-				core1 {
-					thread0 {
-						cpu = <&CPU10>;
-					};
-					thread1 {
-						cpu = <&CPU11>;
+					core1 {
+						thread0 {
+							cpu = <&CPU6>;
+						};
+						thread1 {
+							cpu = <&CPU7>;
+						};
 					};
 				};
 			};
 
 			cluster1 {
-				core0 {
-					thread0 {
-						cpu = <&CPU12>;
+				cluster0 {
+					core0 {
+						thread0 {
+							cpu = <&CPU8>;
+						};
+						thread1 {
+							cpu = <&CPU9>;
+						};
 					};
-					thread1 {
-						cpu = <&CPU13>;
+					core1 {
+						thread0 {
+							cpu = <&CPU10>;
+						};
+						thread1 {
+							cpu = <&CPU11>;
+						};
 					};
 				};
-				core1 {
-					thread0 {
-						cpu = <&CPU14>;
+
+				cluster1 {
+					core0 {
+						thread0 {
+							cpu = <&CPU12>;
+						};
+						thread1 {
+							cpu = <&CPU13>;
+						};
 					};
-					thread1 {
-						cpu = <&CPU15>;
+					core1 {
+						thread0 {
+							cpu = <&CPU14>;
+						};
+						thread1 {
+							cpu = <&CPU15>;
+						};
 					};
 				};
 			};
@@ -473,3 +497,5 @@ cpus {
 ===============================================================================
 [1] ARM Linux kernel documentation
     Documentation/devicetree/bindings/arm/cpus.yaml
+[2] Devicetree NUMA binding description
+    Documentation/devicetree/bindings/numa.txt
-- 
2.21.0


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
