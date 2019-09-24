Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B316CBC889
	for <lists+linux-riscv@lfdr.de>; Tue, 24 Sep 2019 15:02:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=a0VATKcCPXBCO4Of+80q25EkdwDVkqhE+2AWZBGsAdk=; b=LIuNMJD+cPJxTb
	J63L3aZq9Vb1TmfQvLsj/vqFAgOihSTKZfbZC/57AWnP7/yF+39MpX33nXNA1A/SDXhI6ZX6+5oVA
	lIkBNAKHSu4E2NwDfP3hdLGQNPidTr0WpBZxFXk73e3JXVarGtNlYa6DAVJbS9h5YF5+m0AndFti0
	Dzf9EPfF+4le710/2gYBJkSrlAPsGuBn12VXmFgtOUd11GKp0pFS1RsPEFn3VZ69n81YLHCFfrjXp
	8cvCQitekCywOOfLA/Pt4/u+ckpifBcTn4UqzETy/1S3octCwpV3F/XSW/w4fR/0Q6QcM99UAMy/o
	J0ukHnSudmUUyug5kgaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCkRp-0000w8-Be; Tue, 24 Sep 2019 13:01:41 +0000
Received: from 177.96.206.173.dynamic.adsl.gvt.net.br ([177.96.206.173]
 helo=bombadil.infradead.org)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCkRi-0000un-7T; Tue, 24 Sep 2019 13:01:34 +0000
Received: from mchehab by bombadil.infradead.org with local (Exim 4.92.2)
 (envelope-from <mchehab@bombadil.infradead.org>)
 id 1iCkRf-0001ax-RW; Tue, 24 Sep 2019 10:01:31 -0300
From: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
To: Linux Doc Mailing List <linux-doc@vger.kernel.org>,
	corbet@lwn.net
Subject: [PATCH 1/3] docs: fix some broken references
Date: Tue, 24 Sep 2019 10:01:28 -0300
Message-Id: <b87385b2ac6ce6c75df82062fce2976149bbaa6b.1569330078.git.mchehab+samsung@kernel.org>
X-Mailer: git-send-email 2.21.0
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
Cc: Mark Rutland <mark.rutland@arm.com>, James Hogan <jhogan@kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>, Palmer Dabbelt <palmer@sifive.com>,
 linux-mips@vger.kernel.org, Albert Ou <aou@eecs.berkeley.edu>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 linux-riscv@lists.infradead.org, Thomas Gleixner <tglx@linutronix.de>,
 linux-cifs@vger.kernel.org, Leon Romanovsky <leon@kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>, linux-rdma@vger.kernel.org,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Saeed Mahameed <saeedm@mellanox.com>, Guenter Roeck <linux@roeck-us.net>,
 devicetree@vger.kernel.org, Jean Delvare <jdelvare@suse.com>,
 Mauro Carvalho Chehab <mchehab@infradead.org>, linux-gpio@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Paul Walmsley <paul.walmsley@sifive.com>,
 Pensando Drivers <drivers@pensando.io>, linux-hwmon@vger.kernel.org,
 netdev@vger.kernel.org, samba-technical@lists.samba.org,
 linux-kernel@vger.kernel.org, Ralf Baechle <ralf@linux-mips.org>,
 Steve French <sfrench@samba.org>, Paul Burton <paul.burton@mips.com>,
 Shannon Nelson <snelson@pensando.io>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

There are a number of documentation files that got moved or
renamed. update their references.

Signed-off-by: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
---
 Documentation/devicetree/bindings/cpu/cpu-topology.txt    | 2 +-
 Documentation/devicetree/bindings/timer/ingenic,tcu.txt   | 2 +-
 Documentation/driver-api/gpio/driver.rst                  | 2 +-
 Documentation/hwmon/inspur-ipsps1.rst                     | 2 +-
 Documentation/mips/ingenic-tcu.rst                        | 2 +-
 Documentation/networking/device_drivers/mellanox/mlx5.rst | 2 +-
 MAINTAINERS                                               | 2 +-
 drivers/net/ethernet/faraday/ftgmac100.c                  | 2 +-
 drivers/net/ethernet/pensando/ionic/ionic_if.h            | 4 ++--
 fs/cifs/cifsfs.c                                          | 2 +-
 10 files changed, 11 insertions(+), 11 deletions(-)

diff --git a/Documentation/devicetree/bindings/cpu/cpu-topology.txt b/Documentation/devicetree/bindings/cpu/cpu-topology.txt
index 99918189403c..9bd530a35d14 100644
--- a/Documentation/devicetree/bindings/cpu/cpu-topology.txt
+++ b/Documentation/devicetree/bindings/cpu/cpu-topology.txt
@@ -549,5 +549,5 @@ Example 3: HiFive Unleashed (RISC-V 64 bit, 4 core system)
 [2] Devicetree NUMA binding description
     Documentation/devicetree/bindings/numa.txt
 [3] RISC-V Linux kernel documentation
-    Documentation/devicetree/bindings/riscv/cpus.txt
+    Documentation/devicetree/bindings/riscv/cpus.yaml
 [4] https://www.devicetree.org/specifications/
diff --git a/Documentation/devicetree/bindings/timer/ingenic,tcu.txt b/Documentation/devicetree/bindings/timer/ingenic,tcu.txt
index 5a4b9ddd9470..7f6fe20503f5 100644
--- a/Documentation/devicetree/bindings/timer/ingenic,tcu.txt
+++ b/Documentation/devicetree/bindings/timer/ingenic,tcu.txt
@@ -2,7 +2,7 @@ Ingenic JZ47xx SoCs Timer/Counter Unit devicetree bindings
 ==========================================================
 
 For a description of the TCU hardware and drivers, have a look at
-Documentation/mips/ingenic-tcu.txt.
+Documentation/mips/ingenic-tcu.rst.
 
 Required properties:
 
diff --git a/Documentation/driver-api/gpio/driver.rst b/Documentation/driver-api/gpio/driver.rst
index 3fdb32422f8a..9076cc76d5bf 100644
--- a/Documentation/driver-api/gpio/driver.rst
+++ b/Documentation/driver-api/gpio/driver.rst
@@ -493,7 +493,7 @@ available but we try to move away from this:
   gpiochip. It will pass the struct gpio_chip* for the chip to all IRQ
   callbacks, so the callbacks need to embed the gpio_chip in its state
   container and obtain a pointer to the container using container_of().
-  (See Documentation/driver-model/design-patterns.txt)
+  (See Documentation/driver-api/driver-model/design-patterns.rst)
 
 - gpiochip_irqchip_add_nested(): adds a nested cascaded irqchip to a gpiochip,
   as discussed above regarding different types of cascaded irqchips. The
diff --git a/Documentation/hwmon/inspur-ipsps1.rst b/Documentation/hwmon/inspur-ipsps1.rst
index 2b871ae3448f..ed32a65c30e1 100644
--- a/Documentation/hwmon/inspur-ipsps1.rst
+++ b/Documentation/hwmon/inspur-ipsps1.rst
@@ -17,7 +17,7 @@ Usage Notes
 -----------
 
 This driver does not auto-detect devices. You will have to instantiate the
-devices explicitly. Please see Documentation/i2c/instantiating-devices for
+devices explicitly. Please see Documentation/i2c/instantiating-devices.rst for
 details.
 
 Sysfs entries
diff --git a/Documentation/mips/ingenic-tcu.rst b/Documentation/mips/ingenic-tcu.rst
index c4ef4c45aade..c5a646b14450 100644
--- a/Documentation/mips/ingenic-tcu.rst
+++ b/Documentation/mips/ingenic-tcu.rst
@@ -68,4 +68,4 @@ and frameworks can be controlled from the same registers, all of these
 drivers access their registers through the same regmap.
 
 For more information regarding the devicetree bindings of the TCU drivers,
-have a look at Documentation/devicetree/bindings/mfd/ingenic,tcu.txt.
+have a look at Documentation/devicetree/bindings/timer/ingenic,tcu.txt.
diff --git a/Documentation/networking/device_drivers/mellanox/mlx5.rst b/Documentation/networking/device_drivers/mellanox/mlx5.rst
index d071c6b49e1f..a74422058351 100644
--- a/Documentation/networking/device_drivers/mellanox/mlx5.rst
+++ b/Documentation/networking/device_drivers/mellanox/mlx5.rst
@@ -258,7 +258,7 @@ mlx5 tracepoints
 ================
 
 mlx5 driver provides internal trace points for tracking and debugging using
-kernel tracepoints interfaces (refer to Documentation/trace/ftrase.rst).
+kernel tracepoints interfaces (refer to Documentation/trace/ftrace.rst).
 
 For the list of support mlx5 events check /sys/kernel/debug/tracing/events/mlx5/
 
diff --git a/MAINTAINERS b/MAINTAINERS
index 54f1286087e9..65b7d9a0a44a 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -3680,7 +3680,7 @@ M:	Oleksij Rempel <o.rempel@pengutronix.de>
 R:	Pengutronix Kernel Team <kernel@pengutronix.de>
 L:	linux-can@vger.kernel.org
 S:	Maintained
-F:	Documentation/networking/j1939.txt
+F:	Documentation/networking/j1939.rst
 F:	net/can/j1939/
 F:	include/uapi/linux/can/j1939.h
 
diff --git a/drivers/net/ethernet/faraday/ftgmac100.c b/drivers/net/ethernet/faraday/ftgmac100.c
index 9b7af94a40bb..8abe5e90d268 100644
--- a/drivers/net/ethernet/faraday/ftgmac100.c
+++ b/drivers/net/ethernet/faraday/ftgmac100.c
@@ -1835,7 +1835,7 @@ static int ftgmac100_probe(struct platform_device *pdev)
 		}
 
 		/* Indicate that we support PAUSE frames (see comment in
-		 * Documentation/networking/phy.txt)
+		 * Documentation/networking/phy.rst)
 		 */
 		phy_support_asym_pause(phy);
 
diff --git a/drivers/net/ethernet/pensando/ionic/ionic_if.h b/drivers/net/ethernet/pensando/ionic/ionic_if.h
index 5bfdda19f64d..80028f781c83 100644
--- a/drivers/net/ethernet/pensando/ionic/ionic_if.h
+++ b/drivers/net/ethernet/pensando/ionic/ionic_if.h
@@ -596,8 +596,8 @@ enum ionic_txq_desc_opcode {
  *                      the @encap is set, the device will
  *                      offload the outer header checksums using
  *                      LCO (local checksum offload) (see
- *                      Documentation/networking/checksum-
- *                      offloads.txt for more info).
+ *                      Documentation/networking/checksum-offloads.rst
+ *                      for more info).
  *
  *                   IONIC_TXQ_DESC_OPCODE_CSUM_HW:
  *
diff --git a/fs/cifs/cifsfs.c b/fs/cifs/cifsfs.c
index 2e9c7f493f99..811f510578cb 100644
--- a/fs/cifs/cifsfs.c
+++ b/fs/cifs/cifsfs.c
@@ -1529,7 +1529,7 @@ init_cifs(void)
 	/*
 	 * Consider in future setting limit!=0 maybe to min(num_of_cores - 1, 3)
 	 * so that we don't launch too many worker threads but
-	 * Documentation/workqueue.txt recommends setting it to 0
+	 * Documentation/core-api/workqueue.rst recommends setting it to 0
 	 */
 
 	/* WQ_UNBOUND allows decrypt tasks to run on any CPU */
-- 
2.21.0


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
