Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4767514AFEF
	for <lists+linux-riscv@lfdr.de>; Tue, 28 Jan 2020 07:42:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:MIME-Version:Reply-To:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=6En+pos7FQXOPssOPXyaEOTWifM8d64M6iY9MZQ31bE=; b=mipjlrrU+O7q7xy1+eWk20ucHG
	qq5UR4OsZRpMGGlPuyqebz8B+Q1l3IepsNiAzfiyAWItGO8Sq3uvn8vgu8vYzwa24OOBs8UVXZ2fj
	4BTSrShrxg499A2E6U6xLJEsi1m5P3OtG7TxvME2tqLQIA3deB/paaoVJsUAn5v2Nh12U2St39qUv
	QZNfNvXFUC1P85QaHoiyFv87taen1Fcj9XQbVQpJV8uvnBqh6kFCnhULCYYLgXIRQo0NOEahfLTxL
	yKm0onYixqy8i74won5r8sPLUmzemfSUn9adyFMUDoc/UKSL0RcJQWxODdnxtS8zV/Bqaij31uHxM
	vXsH4/PA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwKZk-0007MA-QP; Tue, 28 Jan 2020 06:42:16 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwKZf-0007La-H2
 for linux-riscv@lists.infradead.org; Tue, 28 Jan 2020 06:42:14 +0000
Received: by mail-pf1-x444.google.com with SMTP id s1so5513061pfh.10
 for <linux-riscv@lists.infradead.org>; Mon, 27 Jan 2020 22:42:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to:cc;
 bh=6En+pos7FQXOPssOPXyaEOTWifM8d64M6iY9MZQ31bE=;
 b=dILHJBzGIpmyHMaiW5r4n2wrO5vb870wJAtPzgTx3JYSaoLTfChn5XnbtrfqSrMxEv
 HwZ7qv0hwxiod2XcOz8LOwa5CmWuHv7GJjinuzjlBm3czQu76kc0UYnxkn2Xs9a2pK9b
 LT6wUeluvcGpdSnjadc1psa5Sye6oalyulNxI0FkxniJpT3Jk0ylBmpkQ5yr44b8xo50
 rFob7LMm2qtGZ5KGOmUTSrYtK6gOoVSAJ4TuhE3AAgAf4tzdGef7wkvUc/loTva6dkmk
 3TqhPPdEpuGmgutV5hz02DROd6EjY4Mka1Syc1J/ns1PgSUqULcV/Ay2OVmgEAUgsmgr
 Ejkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=6En+pos7FQXOPssOPXyaEOTWifM8d64M6iY9MZQ31bE=;
 b=HLoe9L9Kq9LmlZWkaLwwbn9jeDaeSzuMwK1ME+CG88Xai24a3lxJ02Hn8J7GcDQOdm
 elnEMOkufhlb3H1F4dSdQ7OmEidLV8xofni8gW9JmFB3YKkbxxBH5LeDVsie9s14tDAs
 rxFNKEw8tkCGYGBBe8or1ZSsoQmWfyMZcoEsnv3PSKNv2fzP9GPSWMKRJ0xMJt4xqqe6
 24j1+i5vnZSzy68ZKOf+BOkukul8ssIMVCbgiKpRn/fEhVckg3NEf0GsI8tcc/fe6TVo
 YhEc7MujthzYGAeDdIxD7GEl0MnQUJuy166JWm2mnufeeiNC+HG2doN3wQkBeVXUbMao
 9ciA==
X-Gm-Message-State: APjAAAUk4SV2iAJAYcFSzU0OllrpIiXlLGLualq0uI3t6GMiugjQD8Q0
 9YWK2QzWxO5p1n1yjm8+8zTbO6zDMR/i3vVdkkLSs86b
X-Google-Smtp-Source: APXvYqxGb4sEMBldHC0f9v6mOtkrKtNrUkkkYEXy+QKB23HztygqbnZFU8DWR20QQFNrH7g4MaeYI781rG4a+Qztn0o=
X-Received: by 2002:a63:214e:: with SMTP id s14mr23114206pgm.428.1580193725637; 
 Mon, 27 Jan 2020 22:42:05 -0800 (PST)
MIME-Version: 1.0
From: JaeJoon Jung <rgbi3307@gmail.com>
Date: Tue, 28 Jan 2020 15:41:54 +0900
Message-ID: <CAHOvCC5h1cKJzYx4sm-U0HDY9LGkhqWYGh+VaaOaJidP=Jkerw@mail.gmail.com>
Subject: [PATCH] RISC-V: Add and Update gpio-sifive.c for SiFive FU540 GPIO
To: Paul Walmsley <paul.walmsley@sifive.com>, andrew@sifive.com, 
 Palmer Dabbelt <palmer@dabbelt.com>, Anup Patel <anup@brainfault.org>
Content-Type: multipart/mixed; boundary="000000000000b1d803059d2d8562"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_224211_605803_6E2B8D3E 
X-CRM114-Status: GOOD (  14.68  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rgbi3307[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [rgbi3307[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-riscv <linux-riscv@lists.infradead.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

--000000000000b1d803059d2d8562
Content-Type: text/plain; charset="UTF-8"

I added and updated gpio-sifive.c for SiFive FU540 GPIO.
(References: SiFive FU540-C000 manual v1p0, Chapter 17 "GPIO")
I attached drivers/gpio/gpio-sifive.c (new)

RISCV-FU540:/root# uname -a
Linux RISCV-FU540 5.5.0-dirty #6 SMP Tue Jan 28 14:38:11 KST 2020
riscv64 GNU/Linux

$ git diff v5.5 --compact-summary
 arch/riscv/boot/dts/sifive/fu540-c000.dtsi          |  13 ++++
 arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts |  36 +++++++++
 drivers/gpio/Kconfig                                |   8 ++
 drivers/gpio/Makefile                               |   1 +
 drivers/gpio/gpio-sifive.c (new)                    | 447
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 5 files changed, 574 insertions(+)

I used drivers/gpio/gpio-sifive.c in kernel v4.15(freedom-u-sdk)
released by sifive.
I changed iowrite32()/ioread32() with writel()/readl().
I modified function names with gpio_sifive_* and added debug functions.
I adjusted sifive_assign_bit(), sifive_get_value() and sifive_set_value().
I fixed bugs in the sifive_irq_enable()/disable() functions.

I have verified gpio input/output as below:

RISCV-FU540:/# cd /sys/class/gpio
RISCV-FU540:/sys/class/gpio# ll
total 0
drwxr-xr-x    2 root     root             0 Jan  1 00:00 ./
drwxr-xr-x   33 root     root             0 Jan  1 00:00 ../
--w-------    1 root     root          4096 Jan  1 00:00 export
lrwxrwxrwx    1 root     root             0 Jan  1 00:00 gpiochip496
-> ../../devices/platform/soc/10060000.gpio/gpio/gpiochip496/
--w-------    1 root     root          4096 Jan  1 00:00 unexport
RISCV-FU540:/sys/class/gpio# echo 496 > export
RISCV-FU540:/sys/class/gpio# ll
total 0
drwxr-xr-x    2 root     root             0 Jan  1 00:00 ./
drwxr-xr-x   33 root     root             0 Jan  1 00:00 ../
--w-------    1 root     root          4096 Jan  1 00:00 export
lrwxrwxrwx    1 root     root             0 Jan  1 00:00 gpio496 ->
../../devices/platform/soc/10060000.gpio/gpiochip0/gpio/gpio496/
lrwxrwxrwx    1 root     root             0 Jan  1 00:00 gpiochip496
-> ../../devices/platform/soc/10060000.gpio/gpio/gpiochip496/
--w-------    1 root     root          4096 Jan  1 00:00 unexport
RISCV-FU540:/sys/class/gpio# cd gpio496/
RISCV-FU540:/sys/class/gpio/gpio496# ll
total 0
drwxr-xr-x    2 root     root             0 Jan  1 00:00 ./
drwxr-xr-x    3 root     root             0 Jan  1 00:00 ../
-rw-r--r--    1 root     root          4096 Jan  1 00:01 active_low
lrwxrwxrwx    1 root     root             0 Jan  1 00:01 device ->
../../../gpiochip0/
-rw-r--r--    1 root     root          4096 Jan  1 00:01 direction
-rw-r--r--    1 root     root          4096 Jan  1 00:01 edge
lrwxrwxrwx    1 root     root             0 Jan  1 00:01 subsystem ->
../../../../../../../class/gpio/
-rw-r--r--    1 root     root          4096 Jan  1 00:01 uevent
-rw-r--r--    1 root     root          4096 Jan  1 00:01 value
RISCV-FU540:/sys/class/gpio/gpio496# cat direction
in
RISCV-FU540:/sys/class/gpio/gpio496# echo out > direction
RISCV-FU540:/sys/class/gpio/gpio496# cat value
0
RISCV-FU540:/sys/class/gpio/gpio496# echo 1 > value
RISCV-FU540:/sys/class/gpio/gpio496# cat value
1
RISCV-FU540:/sys/class/gpio/gpio496#

I have verified gpio interrupts as below:
If you define GPIO_SIFIVE_DEBUG in the drivers/gpio/gpio-sifive.c,
you can see below messages.

RISCV-FU540:/root# dmesg | grep GPIO
[    0.348258] GPIO: registers values ---------------------------
[    0.348302] GPIO: reg=[00], value=[00000000]
[    0.348338] GPIO: reg=[04], value=[00000000]
[    0.348374] GPIO: reg=[08], value=[00001000]
[    0.348411] GPIO: reg=[0C], value=[00001000]
[    0.348447] GPIO: reg=[10], value=[00000000]
[    0.348483] GPIO: reg=[14], value=[00000000]
[    0.348519] GPIO: reg=[18], value=[00000000]
[    0.348555] GPIO: reg=[1C], value=[00000000]
[    0.348591] GPIO: reg=[20], value=[00000000]
[    0.348627] GPIO: reg=[24], value=[00000000]
[    0.348663] GPIO: reg=[28], value=[00000000]
[    0.348698] GPIO: reg=[2C], value=[00000000]
[    0.348734] GPIO: reg=[30], value=[00000000]
[    0.348771] GPIO: reg=[34], value=[0000FFFF]
[    0.348806] GPIO: reg=[38], value=[00000000]
[    0.348842] GPIO: reg=[3C], value=[00000000]
[    0.348879] GPIO: reg=[40], value=[00000000]
[    0.348914] GPIO: irq_enable=[00000000]
[    0.348949] GPIO: irq_type=0
[    0.348983] GPIO: irq_parent=0
[    0.349016] GPIO:
[    0.349470] gpio-sifive 10060000.gpio: GPIO SiFive driver registered 16 GPIOs
[    0.349517] GPIO: registers values ---------------------------
[    0.349556] GPIO: reg=[00], value=[00000000]
[    0.349592] GPIO: reg=[04], value=[000083FF]
[    0.349628] GPIO: reg=[08], value=[00001000]
[    0.349664] GPIO: reg=[0C], value=[00001000]
[    0.349700] GPIO: reg=[10], value=[00000000]
[    0.349736] GPIO: reg=[14], value=[00000000]
[    0.349772] GPIO: reg=[18], value=[00000000]
[    0.349808] GPIO: reg=[1C], value=[00000000]
[    0.349844] GPIO: reg=[20], value=[00000000]
[    0.349880] GPIO: reg=[24], value=[00000000]
[    0.349916] GPIO: reg=[28], value=[00000080]  /* GPIO7 interrupt enabled */
[    0.349952] GPIO: reg=[2C], value=[00000000]
[    0.349988] GPIO: reg=[30], value=[00000000]
[    0.350024] GPIO: reg=[34], value=[0000FFFF]
[    0.350060] GPIO: reg=[38], value=[00000000]
[    0.350096] GPIO: reg=[3C], value=[00000000]
[    0.350132] GPIO: reg=[40], value=[00000000]
[    0.350168] GPIO: irq_enable=[00000080]
[    0.350202] GPIO: irq_type=4
[    0.350236] GPIO: irq_parent=26
[    0.350269] GPIO:

Interrupt occured on GPIO7:

RISCV-FU540:/root# [  104.441392] GPIO: irq handler: offset=7
[  104.444474] GPIO: irq handler: offset=7
[  104.457639] GPIO: irq handler: offset=7
[  104.460717] GPIO: irq handler: offset=7
[  104.707453] GPIO: irq handler: offset=7
[  104.710533] GPIO: irq handler: offset=7

Source Differences:

diff --git a/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
b/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
index a2e3d54e830c..a8f165a378bd 100644
--- a/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
+++ b/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
@@ -268,6 +268,19 @@
                        interrupts = <1 2 3>;
                        reg = <0x0 0x2010000 0x0 0x1000>;
                };
+                gpio0: gpio@10060000 {
+                        compatible = "sifive,fu540-c000-gpio", "sifive,gpio0";
+                        reg = <0x0 0x10060000 0x0 0x1000>;
+                        reg-names = "control";
+                        interrupt-parent = <&plic0>;
+                        interrupts = <7 8 9 10 11 12 13 14 15 16 17
18 19 20 21 22>;
+                        ngpios = <16>;
+                        gpio-controller;
+                        #gpio-cells = <2>;
+                        interrupt-controller;
+                        #interrupt-cells = <2>;
+                        status = "disabled";
+                };

        };
 };


diff --git a/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
b/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
index 88cfcb96bf23..81516394c2a8 100644
--- a/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
+++ b/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts

 &uart0 {
@@ -94,3 +126,7 @@
 &pwm1 {
        status = "okay";
 };
+
+&gpio0 {
+        status = "okay";
+};


diff --git a/drivers/gpio/Kconfig b/drivers/gpio/Kconfig
index 4b6d2ef15c39..0f01ef8339b1 100644
--- a/drivers/gpio/Kconfig
+++ b/drivers/gpio/Kconfig
@@ -693,6 +693,14 @@ config GPIO_AMD_FCH
          Note: This driver doesn't registers itself automatically, as it
          needs to be provided with platform specific configuration.
          (See eg. CONFIG_PCENGINES_APU2.)
+
+config GPIO_SIFIVE
+        tristate "SiFive GPIO support"
+        depends on OF_GPIO
+        select GPIOLIB_IRQCHIP
+        help
+          Say yes here to support the GPIO device on SiFive SoCs.
+
 endmenu

 menu "Port-mapped I/O GPIO drivers"


diff --git a/drivers/gpio/Makefile b/drivers/gpio/Makefile
index 34eb8b2b12dd..dfbf9282369b 100644
--- a/drivers/gpio/Makefile
+++ b/drivers/gpio/Makefile
@@ -124,6 +124,7 @@ obj-$(CONFIG_ARCH_SA1100)           += gpio-sa1100.o
 obj-$(CONFIG_GPIO_SAMA5D2_PIOBU)       += gpio-sama5d2-piobu.o
 obj-$(CONFIG_GPIO_SCH311X)             += gpio-sch311x.o
 obj-$(CONFIG_GPIO_SCH)                 += gpio-sch.o
+obj-$(CONFIG_GPIO_SIFIVE)              += gpio-sifive.o
 obj-$(CONFIG_GPIO_SIOX)                += gpio-siox.o
 obj-$(CONFIG_GPIO_SODAVILLE)           += gpio-sodaville.o
 obj-$(CONFIG_GPIO_SPEAR_SPICS)         += gpio-spear-spics.o



diff --git a/drivers/gpio/gpio-sifive.c b/drivers/gpio/gpio-sifive.c
new file mode 100644
index 000000000000..355b37cd1cca
--- /dev/null
+++ b/drivers/gpio/gpio-sifive.c
@@ -0,0 +1,447 @@
+/*
+ * SiFive GPIO driver
+ *
+ * Copyright (C) 2018 SiFive, Inc.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 as
+ * published by the Free Software Foundation.
+ *
+ * References:
+ *   SiFive FU540-C000 manual v1p0, Chapter 17 "GPIO"
+ *
+ * 2020 Editted by JaeJoon Jung <rgbi3307@gmail.com>
+ *
+ */
+#include <linux/bitops.h>
+#include <linux/device.h>
+#include <linux/errno.h>
+#include <linux/gpio/driver.h>
+#include <linux/irqchip/chained_irq.h>
+#include <linux/io.h>
+#include <linux/of.h>
+#include <linux/of_device.h>
+#include <linux/of_irq.h>
+#include <linux/module.h>
+#include <linux/platform_device.h>
+#include <linux/slab.h>
+#include <linux/spinlock.h>
+#include <linux/raid/pq.h>
+
+#define GPIO_INPUT_VAL         0x00
+#define GPIO_INPUT_EN          0x04
+#define GPIO_OUTPUT_EN         0x08
+#define GPIO_OUTPUT_VAL        0x0C
+#define GPIO_PULLUP_EN         0x10
+#define GPIO_PIN_DS            0x14
+#define GPIO_RISE_IE           0x18
+#define GPIO_RISE_IP           0x1C
+#define GPIO_FALL_IE           0x20
+#define GPIO_FALL_IP           0x24
+#define GPIO_HIGH_IE           0x28
+#define GPIO_HIGH_IP           0x2C
+#define GPIO_LOW_IE            0x30
+#define GPIO_LOW_IP            0x34
+#define GPIO_OUTPUT_XOR        0x40
+
+#define GPIO_MAX_CNT           32
+#define GPIO_ENABLE_BITS        0x83FF
+
+//#define GPIO_SIFIVE_DEBUG
+#ifdef GPIO_SIFIVE_DEBUG
+        #define gpio_sifive_debug(...) printk("GPIO: " __VA_ARGS__)
+#else
+        #define gpio_sifive_debug(...)
+#endif
+
+struct sifive_gpio {
+       raw_spinlock_t          lock;
+       void __iomem            *base;
+       struct gpio_chip        gc;
+       unsigned int            irq_enable;
+       unsigned int            irq_type[GPIO_MAX_CNT];
+       unsigned int            irq_parent[GPIO_MAX_CNT];
+       struct sifive_gpio      *self_ptr[GPIO_MAX_CNT];
+};
+
+
+static void gpio_sifive_debug_reg(struct sifive_gpio *chip)
+{
+#ifdef GPIO_SIFIVE_DEBUG
+        u32 value;
+        int reg;
+
+        if (!chip->base) return;
+        gpio_sifive_debug("registers values ---------------------------\n");
+        for (reg=GPIO_INPUT_VAL; reg<=GPIO_OUTPUT_XOR; reg+=4) {
+                value = readl(chip->base + reg);
+                gpio_sifive_debug("reg=[%02X], value=[%08X]\n", reg, value);
+        }
+        gpio_sifive_debug("irq_enable=[%08X]\n", chip->irq_enable);
+        gpio_sifive_debug("irq_type=%d\n", chip->irq_type[0]);
+        gpio_sifive_debug("irq_parent=%d\n", chip->irq_parent[0]);
+        gpio_sifive_debug("\n");
+#endif
+}
+
+static void gpio_sifive_assign_bit(void __iomem *ptr, int offset, int value)
+{
+       // It's frustrating that we are not allowed to use the device atomics
+       // which are GUARANTEED to be supported by this device on RISC-V
+       u32 bit = BIT(offset);
+        u32 old = readl(ptr);
+
+        bit = (value) ? old | bit : old & ~bit;
+        writel(bit, ptr);
+}
+
+static int gpio_sifive_direction_input(struct gpio_chip *gc, unsigned offset)
+{
+       struct sifive_gpio *chip = gpiochip_get_data(gc);
+       unsigned long flags;
+
+       if (offset >= gc->ngpio)
+               return -EINVAL;
+
+       raw_spin_lock_irqsave(&chip->lock, flags);
+       gpio_sifive_assign_bit(chip->base + GPIO_OUTPUT_EN, offset, 0);
+       gpio_sifive_assign_bit(chip->base + GPIO_INPUT_EN,  offset, 1);
+       raw_spin_unlock_irqrestore(&chip->lock, flags);
+
+       return 0;
+}
+
+static int gpio_sifive_direction_output(struct gpio_chip *gc, unsigned offset
+                                                            , int value)
+{
+       struct sifive_gpio *chip = gpiochip_get_data(gc);
+       unsigned long flags;
+
+       if (offset >= gc->ngpio)
+               return -EINVAL;
+
+       raw_spin_lock_irqsave(&chip->lock, flags);
+       gpio_sifive_assign_bit(chip->base + GPIO_INPUT_EN,   offset, 0);
+       gpio_sifive_assign_bit(chip->base + GPIO_OUTPUT_EN,  offset, 1);
+       gpio_sifive_assign_bit(chip->base + GPIO_OUTPUT_VAL, offset, value);
+       raw_spin_unlock_irqrestore(&chip->lock, flags);
+
+       return 0;
+}
+
+static int gpio_sifive_get_direction(struct gpio_chip *gc, unsigned offset)
+{
+       struct sifive_gpio *chip = gpiochip_get_data(gc);
+        int value;
+
+       if (offset >= gc->ngpio)
+               return -EINVAL;
+
+        value = readl(chip->base + GPIO_OUTPUT_EN) & BIT(offset);
+        return !value;
+}
+
+static int gpio_sifive_get_value(struct gpio_chip *gc, unsigned offset)
+{
+       struct sifive_gpio *chip = gpiochip_get_data(gc);
+        int index, value;
+
+       if (offset >= gc->ngpio)
+               return -EINVAL;
+
+        index = gpio_sifive_get_direction(gc, offset) ?
+                                GPIO_INPUT_VAL : GPIO_OUTPUT_VAL;
+        value = readl(chip->base + index) & BIT(offset);
+        return value;
+}
+
+static void gpio_sifive_set_value(struct gpio_chip *gc, unsigned
offset, int value)
+{
+       struct sifive_gpio *chip = gpiochip_get_data(gc);
+       unsigned long flags;
+        int index;
+
+       if (offset >= gc->ngpio)
+               return;
+
+        index = gpio_sifive_get_direction(gc, offset) ?
+                                GPIO_INPUT_VAL : GPIO_OUTPUT_VAL;
+       raw_spin_lock_irqsave(&chip->lock, flags);
+       gpio_sifive_assign_bit(chip->base + index, offset, value);
+       raw_spin_unlock_irqrestore(&chip->lock, flags);
+}
+
+static void gpio_sifive_set_default(struct sifive_gpio *chip, u32 bits)
+{
+        if (bits == GPIO_ENABLE_BITS) {
+                //Input Enable/Disable
+                writel(bits, chip->base + GPIO_INPUT_EN);
+                return;
+        }
+        //Interrupts Enable/Disable
+        writel(bits, chip->base + GPIO_RISE_IE);
+        writel(bits, chip->base + GPIO_FALL_IE);
+        writel(bits, chip->base + GPIO_HIGH_IE);
+        writel(bits, chip->base + GPIO_LOW_IE);
+
+        writel(bits, chip->base + GPIO_RISE_IP);
+        writel(bits, chip->base + GPIO_FALL_IP);
+        writel(bits, chip->base + GPIO_HIGH_IP);
+        writel(bits, chip->base + GPIO_LOW_IP);
+
+        chip->irq_enable = bits;
+}
+
+static void gpio_sifive_set_ie(struct sifive_gpio *chip, int offset)
+{
+       unsigned long flags;
+       unsigned irq_type;
+
+       raw_spin_lock_irqsave(&chip->lock, flags);
+       irq_type = (chip->irq_enable & BIT(offset)) ?
chip->irq_type[offset] : 0;
+       gpio_sifive_assign_bit(chip->base + GPIO_RISE_IE, offset,
irq_type & IRQ_TYPE_EDGE_RISING);
+       gpio_sifive_assign_bit(chip->base + GPIO_FALL_IE, offset,
irq_type & IRQ_TYPE_EDGE_FALLING);
+       gpio_sifive_assign_bit(chip->base + GPIO_HIGH_IE, offset,
irq_type & IRQ_TYPE_LEVEL_HIGH);
+       gpio_sifive_assign_bit(chip->base + GPIO_LOW_IE,  offset,
irq_type & IRQ_TYPE_LEVEL_LOW);
+       raw_spin_unlock_irqrestore(&chip->lock, flags);
+}
+
+static int gpio_sifive_irq_set_type(struct irq_data *d, unsigned irq_type)
+{
+       struct gpio_chip *gc = irq_data_get_irq_chip_data(d);
+       struct sifive_gpio *chip = gpiochip_get_data(gc);
+       int offset = irqd_to_hwirq(d);
+
+       if (offset < 0 || offset >= gc->ngpio)
+               return -EINVAL;
+
+       chip->irq_type[offset] = irq_type;
+       gpio_sifive_set_ie(chip, offset);
+
+       return 0;
+}
+
+/* chained_irq_{enter,exit} already mask the parent */
+static void gpio_sifive_irq_mask(struct irq_data *d) { }
+static void gpio_sifive_irq_unmask(struct irq_data *d) { }
+
+static void gpio_sifive_irq_enable(struct irq_data *d)
+{
+       struct gpio_chip *gc = irq_data_get_irq_chip_data(d);
+       struct sifive_gpio *chip = gpiochip_get_data(gc);
+       int offset = irqd_to_hwirq(d) % GPIO_MAX_CNT; // must not fail
+       u32 bit = BIT(offset);
+
+       /* Switch to input */
+       gpio_sifive_direction_input(gc, offset);
+
+       /* Clear any sticky pending interrupts */
+       writel(bit, chip->base + GPIO_RISE_IP);
+       writel(bit, chip->base + GPIO_FALL_IP);
+       writel(bit, chip->base + GPIO_HIGH_IP);
+       writel(bit, chip->base + GPIO_LOW_IP);
+
+       /* Enable interrupts */
+        chip->irq_enable |= bit;
+       gpio_sifive_set_ie(chip, offset);
+}
+
+static void gpio_sifive_irq_disable(struct irq_data *d)
+{
+       struct gpio_chip *gc = irq_data_get_irq_chip_data(d);
+       struct sifive_gpio *chip = gpiochip_get_data(gc);
+       int offset = irqd_to_hwirq(d) % GPIO_MAX_CNT; // must not fail
+       u32 bit = BIT(offset);
+
+       /* Disable interrupts */
+        chip->irq_enable &= ~bit;
+       gpio_sifive_set_ie(chip, offset);
+}
+
+static struct irq_chip gpio_sifive_irqchip = {
+       .name           = "sifive-gpio",
+       .irq_set_type   = gpio_sifive_irq_set_type,
+       .irq_mask       = gpio_sifive_irq_mask,
+       .irq_unmask     = gpio_sifive_irq_unmask,
+       .irq_enable     = gpio_sifive_irq_enable,
+       .irq_disable    = gpio_sifive_irq_disable,
+};
+
+static void gpio_sifive_irq_handler(struct irq_desc *desc)
+{
+       struct irq_chip *irqchip = irq_desc_get_chip(desc);
+       struct sifive_gpio **self_ptr = irq_desc_get_handler_data(desc);
+       struct sifive_gpio *chip = *self_ptr;
+       int offset = self_ptr - &chip->self_ptr[0];
+        //int offset = desc->irq_data.irq - chip->irq_parent[0];
+       u32 bit = BIT(offset);
+
+       chained_irq_enter(irqchip, desc);
+
+       /* Re-arm the edge irq_types so don't miss the next one */
+       writel(bit, chip->base + GPIO_RISE_IP);
+       writel(bit, chip->base + GPIO_FALL_IP);
+
+       generic_handle_irq(irq_find_mapping(chip->gc.irq.domain, offset));
+
+       /* Re-arm the level irq_types after handling to prevent
spurious refire */
+       writel(bit, chip->base + GPIO_HIGH_IP);
+       writel(bit, chip->base + GPIO_LOW_IP);
+
+       chained_irq_exit(irqchip, desc);
+
+        gpio_sifive_debug("irq handler: offset=%d\n", offset);
+}
+
+#ifdef GPIO_SIFIVE_DEBUG
+static void gpio_sifive_set_irq_enable(struct sifive_gpio *chip,
unsigned offset)
+{
+        u32 bit = BIT(offset);
+
+        /* Switch to input */
+        gpio_sifive_direction_input(&chip->gc, offset);
+
+        /* Clear any sticky pending interrupts */
+        writel(bit, chip->base + GPIO_RISE_IP);
+        writel(bit, chip->base + GPIO_FALL_IP);
+        writel(bit, chip->base + GPIO_HIGH_IP);
+        writel(bit, chip->base + GPIO_LOW_IP);
+
+        /* Enable interrupts */
+        chip->irq_enable |= bit;
+        gpio_sifive_set_ie(chip, offset);
+}
+
+static void gpio_sifive_set_irq_disable(struct sifive_gpio *chip,
unsigned offset)
+{
+        u32 bit = BIT(offset);
+        chip->irq_enable &= ~bit;
+        gpio_sifive_set_ie(chip, offset);
+}
+#endif
+
+static int gpio_sifive_chip_setup(struct platform_device *pdev
+                                        , struct sifive_gpio *chip, int ngpio)
+{
+       struct device *dev = &pdev->dev;
+       int gpio, irq, ret;
+
+       raw_spin_lock_init(&chip->lock);
+       chip->gc.direction_input = gpio_sifive_direction_input;
+       chip->gc.direction_output = gpio_sifive_direction_output;
+       chip->gc.get_direction = gpio_sifive_get_direction;
+       chip->gc.get = gpio_sifive_get_value;
+       chip->gc.set = gpio_sifive_set_value;
+       chip->gc.base = -1;
+       chip->gc.ngpio = ngpio;
+       chip->gc.label = dev_name(dev);
+       chip->gc.parent = dev;
+       chip->gc.owner = THIS_MODULE;
+
+       ret = gpiochip_add_data(&chip->gc, chip);
+       if (ret)
+               return ret;
+
+       /* Disable all GPIO interrupts before enabling parent interrupts */
+        gpio_sifive_set_default(chip, 0);
+
+       ret = gpiochip_irqchip_add(&chip->gc, &gpio_sifive_irqchip, 0
+                                        , handle_simple_irq, IRQ_TYPE_NONE);
+       if (ret) {
+               dev_err(dev, "GPIO: could not add irqchip\n");
+               gpiochip_remove(&chip->gc);
+               return ret;
+       }
+
+       chip->gc.irq.num_parents = ngpio;
+       chip->gc.irq.parents = &chip->irq_parent[0];
+       chip->gc.irq.map = &chip->irq_parent[0];
+
+       for (gpio = 0; gpio < ngpio; ++gpio) {
+               irq = platform_get_irq(pdev, gpio);
+               if (irq < 0) {
+                       dev_err(dev, "GPIO: invalid IRQ\n");
+                       gpiochip_remove(&chip->gc);
+                       return -ENODEV;
+               }
+               chip->self_ptr[gpio] = chip;
+               chip->irq_parent[gpio] = irq;
+               chip->irq_type[gpio] = IRQ_TYPE_LEVEL_HIGH;
+       }
+       for (gpio = 0; gpio < ngpio; ++gpio) {
+               irq = chip->irq_parent[gpio];
+               irq_set_chained_handler_and_data(irq, gpio_sifive_irq_handler
+                                                , &chip->self_ptr[gpio]);
+               irq_set_parent(irq_find_mapping(chip->gc.irq.domain,
gpio), irq);
+       }
+
+        //Enable GPIO Input for default
+        gpio_sifive_set_default(chip, GPIO_ENABLE_BITS);
+        return 0;
+}
+
+static int gpio_sifive_probe(struct platform_device *pdev)
+{
+       struct device *dev = &pdev->dev;
+       struct device_node *node = pdev->dev.of_node;
+       struct sifive_gpio *chip;
+       struct resource *res;
+       int ngpio;
+
+       chip = devm_kzalloc(dev, sizeof(*chip), GFP_KERNEL);
+       if (!chip) {
+               dev_err(dev, "out of memory\n");
+               return -ENOMEM;
+       }
+
+       res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
+       chip->base = devm_ioremap_resource(dev, res);
+       if (IS_ERR(chip->base)) {
+               dev_err(dev, "failed to allocate device memory\n");
+               return PTR_ERR(chip->base);
+       }
+        gpio_sifive_debug_reg(chip);
+
+       if(of_property_read_u32(node, "ngpios", &ngpio))
+               ngpio = of_irq_count(node);
+
+       if (ngpio >= GPIO_MAX_CNT) {
+               dev_err(dev, "too many ngpios.\n");
+               return -EINVAL;
+       }
+
+        if (gpio_sifive_chip_setup(pdev, chip, ngpio) < 0) {
+               dev_err(dev, "failed to gpio sifive setup.\n");
+                return -EINVAL;
+        }
+
+       platform_set_drvdata(pdev, chip);
+       dev_info(dev, "GPIO SiFive driver registered %d GPIOs\n", ngpio);
+
+#ifdef GPIO_SIFIVE_DEBUG
+        gpio_sifive_set_irq_enable(chip, 7);    ///GPIO7 interrupt
enabled for test
+        gpio_sifive_set_irq_disable(chip, 9);   ///GPIO9 interrupt
disabled for test
+#endif
+        gpio_sifive_debug_reg(chip);
+       return 0;
+}
+
+static const struct of_device_id gpio_sifive_match[] = {
+       {
+               .compatible = "sifive,gpio0",
+       },
+       { },
+};
+MODULE_DEVICE_TABLE(of, gpio_sifive_match);
+
+static struct platform_driver gpio_sifive_driver = {
+       .probe          = gpio_sifive_probe,
+       .driver = {
+               .name   = "gpio-sifive",
+               .of_match_table = of_match_ptr(gpio_sifive_match),
+       },
+};
+module_platform_driver(gpio_sifive_driver);
+
+MODULE_DESCRIPTION("SiFive GPIO driver");
+MODULE_LICENSE("GPL v2");

Thanks. Have a nice day.

--000000000000b1d803059d2d8562
Content-Type: text/x-csrc; charset="US-ASCII"; name="gpio-sifive.c"
Content-Disposition: attachment; filename="gpio-sifive.c"
Content-Transfer-Encoding: base64
Content-ID: <f_k5xigwaq0>
X-Attachment-Id: f_k5xigwaq0

LyoKICogU2lGaXZlIEdQSU8gZHJpdmVyCiAqCiAqIENvcHlyaWdodCAoQykgMjAxOCBTaUZpdmUs
IEluYy4KICoKICogVGhpcyBwcm9ncmFtIGlzIGZyZWUgc29mdHdhcmU7IHlvdSBjYW4gcmVkaXN0
cmlidXRlIGl0IGFuZC9vciBtb2RpZnkKICogaXQgdW5kZXIgdGhlIHRlcm1zIG9mIHRoZSBHTlUg
R2VuZXJhbCBQdWJsaWMgTGljZW5zZSB2ZXJzaW9uIDIgYXMKICogcHVibGlzaGVkIGJ5IHRoZSBG
cmVlIFNvZnR3YXJlIEZvdW5kYXRpb24uCiAqIAogKiBSZWZlcmVuY2VzOiAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAog
KiAgIFNpRml2ZSBGVTU0MC1DMDAwIG1hbnVhbCB2MXAwLCBDaGFwdGVyIDE3ICJHUElPIgogKiAK
ICogMjAyMCBFZGl0dGVkIGJ5IEphZUpvb24gSnVuZyA8cmdiaTMzMDdAZ21haWwuY29tPgogKgog
Ki8KI2luY2x1ZGUgPGxpbnV4L2JpdG9wcy5oPgojaW5jbHVkZSA8bGludXgvZGV2aWNlLmg+CiNp
bmNsdWRlIDxsaW51eC9lcnJuby5oPgojaW5jbHVkZSA8bGludXgvZ3Bpby9kcml2ZXIuaD4KI2lu
Y2x1ZGUgPGxpbnV4L2lycWNoaXAvY2hhaW5lZF9pcnEuaD4KI2luY2x1ZGUgPGxpbnV4L2lvLmg+
CiNpbmNsdWRlIDxsaW51eC9vZi5oPgojaW5jbHVkZSA8bGludXgvb2ZfZGV2aWNlLmg+CiNpbmNs
dWRlIDxsaW51eC9vZl9pcnEuaD4KI2luY2x1ZGUgPGxpbnV4L21vZHVsZS5oPgojaW5jbHVkZSA8
bGludXgvcGxhdGZvcm1fZGV2aWNlLmg+CiNpbmNsdWRlIDxsaW51eC9zbGFiLmg+CiNpbmNsdWRl
IDxsaW51eC9zcGlubG9jay5oPgojaW5jbHVkZSA8bGludXgvcmFpZC9wcS5oPgoKI2RlZmluZSBH
UElPX0lOUFVUX1ZBTAkgICAgICAgIDB4MDAKI2RlZmluZSBHUElPX0lOUFVUX0VOCSAgICAgICAg
MHgwNAojZGVmaW5lIEdQSU9fT1VUUFVUX0VOCSAgICAgICAgMHgwOAojZGVmaW5lIEdQSU9fT1VU
UFVUX1ZBTAkgICAgICAgIDB4MEMKI2RlZmluZSBHUElPX1BVTExVUF9FTiAgICAgICAgICAweDEw
CiNkZWZpbmUgR1BJT19QSU5fRFMgICAgICAgICAgICAgMHgxNAojZGVmaW5lIEdQSU9fUklTRV9J
RQkgICAgICAgIDB4MTgKI2RlZmluZSBHUElPX1JJU0VfSVAJICAgICAgICAweDFDCiNkZWZpbmUg
R1BJT19GQUxMX0lFCSAgICAgICAgMHgyMAojZGVmaW5lIEdQSU9fRkFMTF9JUAkgICAgICAgIDB4
MjQKI2RlZmluZSBHUElPX0hJR0hfSUUJICAgICAgICAweDI4CiNkZWZpbmUgR1BJT19ISUdIX0lQ
CSAgICAgICAgMHgyQwojZGVmaW5lIEdQSU9fTE9XX0lFCSAgICAgICAgMHgzMAojZGVmaW5lIEdQ
SU9fTE9XX0lQCSAgICAgICAgMHgzNAojZGVmaW5lIEdQSU9fT1VUUFVUX1hPUgkgICAgICAgIDB4
NDAKCiNkZWZpbmUgR1BJT19NQVhfQ05UCSAgICAgICAgMzIKI2RlZmluZSBHUElPX0VOQUJMRV9C
SVRTICAgICAgICAweDgzRkYKCi8vI2RlZmluZSBHUElPX1NJRklWRV9ERUJVRwojaWZkZWYgR1BJ
T19TSUZJVkVfREVCVUcKICAgICAgICAjZGVmaW5lIGdwaW9fc2lmaXZlX2RlYnVnKC4uLikJcHJp
bnRrKCJHUElPOiAiIF9fVkFfQVJHU19fKQojZWxzZQogICAgICAgICNkZWZpbmUgZ3Bpb19zaWZp
dmVfZGVidWcoLi4uKQojZW5kaWYKCnN0cnVjdCBzaWZpdmVfZ3BpbyB7CglyYXdfc3BpbmxvY2tf
dAkJbG9jazsKCXZvaWQgX19pb21lbQkJKmJhc2U7CglzdHJ1Y3QgZ3Bpb19jaGlwCWdjOwoJdW5z
aWduZWQgaW50CQlpcnFfZW5hYmxlOwoJdW5zaWduZWQgaW50CQlpcnFfdHlwZVtHUElPX01BWF9D
TlRdOwoJdW5zaWduZWQgaW50CQlpcnFfcGFyZW50W0dQSU9fTUFYX0NOVF07CglzdHJ1Y3Qgc2lm
aXZlX2dwaW8JKnNlbGZfcHRyW0dQSU9fTUFYX0NOVF07Cn07CgoKc3RhdGljIHZvaWQgZ3Bpb19z
aWZpdmVfZGVidWdfcmVnKHN0cnVjdCBzaWZpdmVfZ3BpbyAqY2hpcCkKewojaWZkZWYgR1BJT19T
SUZJVkVfREVCVUcKICAgICAgICB1MzIgdmFsdWU7CiAgICAgICAgaW50IHJlZzsKCiAgICAgICAg
aWYgKCFjaGlwLT5iYXNlKSByZXR1cm47CiAgICAgICAgZ3Bpb19zaWZpdmVfZGVidWcoInJlZ2lz
dGVycyB2YWx1ZXMgLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tXG4iKTsKICAgICAgICBmb3Ig
KHJlZz1HUElPX0lOUFVUX1ZBTDsgcmVnPD1HUElPX09VVFBVVF9YT1I7IHJlZys9NCkgewogICAg
ICAgICAgICAgICAgdmFsdWUgPSByZWFkbChjaGlwLT5iYXNlICsgcmVnKTsKICAgICAgICAgICAg
ICAgIGdwaW9fc2lmaXZlX2RlYnVnKCJyZWc9WyUwMlhdLCB2YWx1ZT1bJTA4WF1cbiIsIHJlZywg
dmFsdWUpOwogICAgICAgIH0KICAgICAgICBncGlvX3NpZml2ZV9kZWJ1ZygiaXJxX2VuYWJsZT1b
JTA4WF1cbiIsIGNoaXAtPmlycV9lbmFibGUpOwogICAgICAgIGdwaW9fc2lmaXZlX2RlYnVnKCJp
cnFfdHlwZT0lZFxuIiwgY2hpcC0+aXJxX3R5cGVbMF0pOwogICAgICAgIGdwaW9fc2lmaXZlX2Rl
YnVnKCJpcnFfcGFyZW50PSVkXG4iLCBjaGlwLT5pcnFfcGFyZW50WzBdKTsKICAgICAgICBncGlv
X3NpZml2ZV9kZWJ1ZygiXG4iKTsKI2VuZGlmCn0KCnN0YXRpYyB2b2lkIGdwaW9fc2lmaXZlX2Fz
c2lnbl9iaXQodm9pZCBfX2lvbWVtICpwdHIsIGludCBvZmZzZXQsIGludCB2YWx1ZSkKewoJLy8g
SXQncyBmcnVzdHJhdGluZyB0aGF0IHdlIGFyZSBub3QgYWxsb3dlZCB0byB1c2UgdGhlIGRldmlj
ZSBhdG9taWNzCgkvLyB3aGljaCBhcmUgR1VBUkFOVEVFRCB0byBiZSBzdXBwb3J0ZWQgYnkgdGhp
cyBkZXZpY2Ugb24gUklTQy1WCgl1MzIgYml0ID0gQklUKG9mZnNldCk7CiAgICAgICAgdTMyIG9s
ZCA9IHJlYWRsKHB0cik7CgogICAgICAgIGJpdCA9ICh2YWx1ZSkgPyBvbGQgfCBiaXQgOiBvbGQg
JiB+Yml0OwogICAgICAgIHdyaXRlbChiaXQsIHB0cik7Cn0KCnN0YXRpYyBpbnQgZ3Bpb19zaWZp
dmVfZGlyZWN0aW9uX2lucHV0KHN0cnVjdCBncGlvX2NoaXAgKmdjLCB1bnNpZ25lZCBvZmZzZXQp
CnsKCXN0cnVjdCBzaWZpdmVfZ3BpbyAqY2hpcCA9IGdwaW9jaGlwX2dldF9kYXRhKGdjKTsKCXVu
c2lnbmVkIGxvbmcgZmxhZ3M7CgoJaWYgKG9mZnNldCA+PSBnYy0+bmdwaW8pCgkJcmV0dXJuIC1F
SU5WQUw7CgoJcmF3X3NwaW5fbG9ja19pcnFzYXZlKCZjaGlwLT5sb2NrLCBmbGFncyk7CglncGlv
X3NpZml2ZV9hc3NpZ25fYml0KGNoaXAtPmJhc2UgKyBHUElPX09VVFBVVF9FTiwgb2Zmc2V0LCAw
KTsKCWdwaW9fc2lmaXZlX2Fzc2lnbl9iaXQoY2hpcC0+YmFzZSArIEdQSU9fSU5QVVRfRU4sICBv
ZmZzZXQsIDEpOwoJcmF3X3NwaW5fdW5sb2NrX2lycXJlc3RvcmUoJmNoaXAtPmxvY2ssIGZsYWdz
KTsKCglyZXR1cm4gMDsKfQoKc3RhdGljIGludCBncGlvX3NpZml2ZV9kaXJlY3Rpb25fb3V0cHV0
KHN0cnVjdCBncGlvX2NoaXAgKmdjLCB1bnNpZ25lZCBvZmZzZXQKICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgLCBpbnQgdmFsdWUpCnsK
CXN0cnVjdCBzaWZpdmVfZ3BpbyAqY2hpcCA9IGdwaW9jaGlwX2dldF9kYXRhKGdjKTsKCXVuc2ln
bmVkIGxvbmcgZmxhZ3M7CgoJaWYgKG9mZnNldCA+PSBnYy0+bmdwaW8pCgkJcmV0dXJuIC1FSU5W
QUw7CgoJcmF3X3NwaW5fbG9ja19pcnFzYXZlKCZjaGlwLT5sb2NrLCBmbGFncyk7CglncGlvX3Np
Zml2ZV9hc3NpZ25fYml0KGNoaXAtPmJhc2UgKyBHUElPX0lOUFVUX0VOLCAgIG9mZnNldCwgMCk7
CglncGlvX3NpZml2ZV9hc3NpZ25fYml0KGNoaXAtPmJhc2UgKyBHUElPX09VVFBVVF9FTiwgIG9m
ZnNldCwgMSk7CglncGlvX3NpZml2ZV9hc3NpZ25fYml0KGNoaXAtPmJhc2UgKyBHUElPX09VVFBV
VF9WQUwsIG9mZnNldCwgdmFsdWUpOwoJcmF3X3NwaW5fdW5sb2NrX2lycXJlc3RvcmUoJmNoaXAt
PmxvY2ssIGZsYWdzKTsKCglyZXR1cm4gMDsKfQoKc3RhdGljIGludCBncGlvX3NpZml2ZV9nZXRf
ZGlyZWN0aW9uKHN0cnVjdCBncGlvX2NoaXAgKmdjLCB1bnNpZ25lZCBvZmZzZXQpCnsKCXN0cnVj
dCBzaWZpdmVfZ3BpbyAqY2hpcCA9IGdwaW9jaGlwX2dldF9kYXRhKGdjKTsKICAgICAgICBpbnQg
dmFsdWU7CgoJaWYgKG9mZnNldCA+PSBnYy0+bmdwaW8pCgkJcmV0dXJuIC1FSU5WQUw7CgogICAg
ICAgIHZhbHVlID0gcmVhZGwoY2hpcC0+YmFzZSArIEdQSU9fT1VUUFVUX0VOKSAmIEJJVChvZmZz
ZXQpOwogICAgICAgIHJldHVybiAhdmFsdWU7Cn0KCnN0YXRpYyBpbnQgZ3Bpb19zaWZpdmVfZ2V0
X3ZhbHVlKHN0cnVjdCBncGlvX2NoaXAgKmdjLCB1bnNpZ25lZCBvZmZzZXQpCnsKCXN0cnVjdCBz
aWZpdmVfZ3BpbyAqY2hpcCA9IGdwaW9jaGlwX2dldF9kYXRhKGdjKTsKICAgICAgICBpbnQgaW5k
ZXgsIHZhbHVlOwoKCWlmIChvZmZzZXQgPj0gZ2MtPm5ncGlvKQoJCXJldHVybiAtRUlOVkFMOwoK
ICAgICAgICBpbmRleCA9IGdwaW9fc2lmaXZlX2dldF9kaXJlY3Rpb24oZ2MsIG9mZnNldCkgPyAK
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBHUElPX0lOUFVUX1ZBTCA6IEdQSU9fT1VU
UFVUX1ZBTDsKICAgICAgICB2YWx1ZSA9IHJlYWRsKGNoaXAtPmJhc2UgKyBpbmRleCkgJiBCSVQo
b2Zmc2V0KTsKICAgICAgICByZXR1cm4gdmFsdWU7ICAgICAgICAKfQoKc3RhdGljIHZvaWQgZ3Bp
b19zaWZpdmVfc2V0X3ZhbHVlKHN0cnVjdCBncGlvX2NoaXAgKmdjLCB1bnNpZ25lZCBvZmZzZXQs
IGludCB2YWx1ZSkKewoJc3RydWN0IHNpZml2ZV9ncGlvICpjaGlwID0gZ3Bpb2NoaXBfZ2V0X2Rh
dGEoZ2MpOwoJdW5zaWduZWQgbG9uZyBmbGFnczsKICAgICAgICBpbnQgaW5kZXg7CgoJaWYgKG9m
ZnNldCA+PSBnYy0+bmdwaW8pCgkJcmV0dXJuOwoKICAgICAgICBpbmRleCA9IGdwaW9fc2lmaXZl
X2dldF9kaXJlY3Rpb24oZ2MsIG9mZnNldCkgPyAKICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICBHUElPX0lOUFVUX1ZBTCA6IEdQSU9fT1VUUFVUX1ZBTDsKCXJhd19zcGluX2xvY2tfaXJx
c2F2ZSgmY2hpcC0+bG9jaywgZmxhZ3MpOwoJZ3Bpb19zaWZpdmVfYXNzaWduX2JpdChjaGlwLT5i
YXNlICsgaW5kZXgsIG9mZnNldCwgdmFsdWUpOwoJcmF3X3NwaW5fdW5sb2NrX2lycXJlc3RvcmUo
JmNoaXAtPmxvY2ssIGZsYWdzKTsKfQoKc3RhdGljIHZvaWQgZ3Bpb19zaWZpdmVfc2V0X2RlZmF1
bHQoc3RydWN0IHNpZml2ZV9ncGlvICpjaGlwLCB1MzIgYml0cykKewogICAgICAgIGlmIChiaXRz
ID09IEdQSU9fRU5BQkxFX0JJVFMpIHsKICAgICAgICAgICAgICAgIC8vSW5wdXQgRW5hYmxlL0Rp
c2FibGUKICAgICAgICAgICAgICAgIHdyaXRlbChiaXRzLCBjaGlwLT5iYXNlICsgR1BJT19JTlBV
VF9FTik7CiAgICAgICAgICAgICAgICByZXR1cm47CiAgICAgICAgfQogICAgICAgIC8vSW50ZXJy
dXB0cyBFbmFibGUvRGlzYWJsZQogICAgICAgIHdyaXRlbChiaXRzLCBjaGlwLT5iYXNlICsgR1BJ
T19SSVNFX0lFKTsKICAgICAgICB3cml0ZWwoYml0cywgY2hpcC0+YmFzZSArIEdQSU9fRkFMTF9J
RSk7CiAgICAgICAgd3JpdGVsKGJpdHMsIGNoaXAtPmJhc2UgKyBHUElPX0hJR0hfSUUpOwogICAg
ICAgIHdyaXRlbChiaXRzLCBjaGlwLT5iYXNlICsgR1BJT19MT1dfSUUpOwoKICAgICAgICB3cml0
ZWwoYml0cywgY2hpcC0+YmFzZSArIEdQSU9fUklTRV9JUCk7CiAgICAgICAgd3JpdGVsKGJpdHMs
IGNoaXAtPmJhc2UgKyBHUElPX0ZBTExfSVApOwogICAgICAgIHdyaXRlbChiaXRzLCBjaGlwLT5i
YXNlICsgR1BJT19ISUdIX0lQKTsKICAgICAgICB3cml0ZWwoYml0cywgY2hpcC0+YmFzZSArIEdQ
SU9fTE9XX0lQKTsKCiAgICAgICAgY2hpcC0+aXJxX2VuYWJsZSA9IGJpdHM7Cn0KCnN0YXRpYyB2
b2lkIGdwaW9fc2lmaXZlX3NldF9pZShzdHJ1Y3Qgc2lmaXZlX2dwaW8gKmNoaXAsIGludCBvZmZz
ZXQpCnsKCXVuc2lnbmVkIGxvbmcgZmxhZ3M7Cgl1bnNpZ25lZCBpcnFfdHlwZTsKCglyYXdfc3Bp
bl9sb2NrX2lycXNhdmUoJmNoaXAtPmxvY2ssIGZsYWdzKTsKCWlycV90eXBlID0gKGNoaXAtPmly
cV9lbmFibGUgJiBCSVQob2Zmc2V0KSkgPyBjaGlwLT5pcnFfdHlwZVtvZmZzZXRdIDogMDsKCWdw
aW9fc2lmaXZlX2Fzc2lnbl9iaXQoY2hpcC0+YmFzZSArIEdQSU9fUklTRV9JRSwgb2Zmc2V0LCBp
cnFfdHlwZSAmIElSUV9UWVBFX0VER0VfUklTSU5HKTsKCWdwaW9fc2lmaXZlX2Fzc2lnbl9iaXQo
Y2hpcC0+YmFzZSArIEdQSU9fRkFMTF9JRSwgb2Zmc2V0LCBpcnFfdHlwZSAmIElSUV9UWVBFX0VE
R0VfRkFMTElORyk7CglncGlvX3NpZml2ZV9hc3NpZ25fYml0KGNoaXAtPmJhc2UgKyBHUElPX0hJ
R0hfSUUsIG9mZnNldCwgaXJxX3R5cGUgJiBJUlFfVFlQRV9MRVZFTF9ISUdIKTsKCWdwaW9fc2lm
aXZlX2Fzc2lnbl9iaXQoY2hpcC0+YmFzZSArIEdQSU9fTE9XX0lFLCAgb2Zmc2V0LCBpcnFfdHlw
ZSAmIElSUV9UWVBFX0xFVkVMX0xPVyk7CglyYXdfc3Bpbl91bmxvY2tfaXJxcmVzdG9yZSgmY2hp
cC0+bG9jaywgZmxhZ3MpOwp9CgpzdGF0aWMgaW50IGdwaW9fc2lmaXZlX2lycV9zZXRfdHlwZShz
dHJ1Y3QgaXJxX2RhdGEgKmQsIHVuc2lnbmVkIGlycV90eXBlKQp7CglzdHJ1Y3QgZ3Bpb19jaGlw
ICpnYyA9IGlycV9kYXRhX2dldF9pcnFfY2hpcF9kYXRhKGQpOwoJc3RydWN0IHNpZml2ZV9ncGlv
ICpjaGlwID0gZ3Bpb2NoaXBfZ2V0X2RhdGEoZ2MpOwoJaW50IG9mZnNldCA9IGlycWRfdG9faHdp
cnEoZCk7CgoJaWYgKG9mZnNldCA8IDAgfHwgb2Zmc2V0ID49IGdjLT5uZ3BpbykKCQlyZXR1cm4g
LUVJTlZBTDsKCgljaGlwLT5pcnFfdHlwZVtvZmZzZXRdID0gaXJxX3R5cGU7CglncGlvX3NpZml2
ZV9zZXRfaWUoY2hpcCwgb2Zmc2V0KTsKCglyZXR1cm4gMDsKfQoKLyogY2hhaW5lZF9pcnFfe2Vu
dGVyLGV4aXR9IGFscmVhZHkgbWFzayB0aGUgcGFyZW50ICovCnN0YXRpYyB2b2lkIGdwaW9fc2lm
aXZlX2lycV9tYXNrKHN0cnVjdCBpcnFfZGF0YSAqZCkgeyB9CnN0YXRpYyB2b2lkIGdwaW9fc2lm
aXZlX2lycV91bm1hc2soc3RydWN0IGlycV9kYXRhICpkKSB7IH0KCnN0YXRpYyB2b2lkIGdwaW9f
c2lmaXZlX2lycV9lbmFibGUoc3RydWN0IGlycV9kYXRhICpkKQp7CglzdHJ1Y3QgZ3Bpb19jaGlw
ICpnYyA9IGlycV9kYXRhX2dldF9pcnFfY2hpcF9kYXRhKGQpOwoJc3RydWN0IHNpZml2ZV9ncGlv
ICpjaGlwID0gZ3Bpb2NoaXBfZ2V0X2RhdGEoZ2MpOwoJaW50IG9mZnNldCA9IGlycWRfdG9faHdp
cnEoZCkgJSBHUElPX01BWF9DTlQ7IC8vIG11c3Qgbm90IGZhaWwKCXUzMiBiaXQgPSBCSVQob2Zm
c2V0KTsKCgkvKiBTd2l0Y2ggdG8gaW5wdXQgKi8KCWdwaW9fc2lmaXZlX2RpcmVjdGlvbl9pbnB1
dChnYywgb2Zmc2V0KTsKCgkvKiBDbGVhciBhbnkgc3RpY2t5IHBlbmRpbmcgaW50ZXJydXB0cyAq
LwoJd3JpdGVsKGJpdCwgY2hpcC0+YmFzZSArIEdQSU9fUklTRV9JUCk7Cgl3cml0ZWwoYml0LCBj
aGlwLT5iYXNlICsgR1BJT19GQUxMX0lQKTsKCXdyaXRlbChiaXQsIGNoaXAtPmJhc2UgKyBHUElP
X0hJR0hfSVApOwoJd3JpdGVsKGJpdCwgY2hpcC0+YmFzZSArIEdQSU9fTE9XX0lQKTsKCgkvKiBF
bmFibGUgaW50ZXJydXB0cyAqLwogICAgICAgIGNoaXAtPmlycV9lbmFibGUgfD0gYml0OwoJZ3Bp
b19zaWZpdmVfc2V0X2llKGNoaXAsIG9mZnNldCk7Cn0KCnN0YXRpYyB2b2lkIGdwaW9fc2lmaXZl
X2lycV9kaXNhYmxlKHN0cnVjdCBpcnFfZGF0YSAqZCkKewoJc3RydWN0IGdwaW9fY2hpcCAqZ2Mg
PSBpcnFfZGF0YV9nZXRfaXJxX2NoaXBfZGF0YShkKTsKCXN0cnVjdCBzaWZpdmVfZ3BpbyAqY2hp
cCA9IGdwaW9jaGlwX2dldF9kYXRhKGdjKTsKCWludCBvZmZzZXQgPSBpcnFkX3RvX2h3aXJxKGQp
ICUgR1BJT19NQVhfQ05UOyAvLyBtdXN0IG5vdCBmYWlsCgl1MzIgYml0ID0gQklUKG9mZnNldCk7
CgoJLyogRGlzYWJsZSBpbnRlcnJ1cHRzICovCiAgICAgICAgY2hpcC0+aXJxX2VuYWJsZSAmPSB+
Yml0OwoJZ3Bpb19zaWZpdmVfc2V0X2llKGNoaXAsIG9mZnNldCk7Cn0KCnN0YXRpYyBzdHJ1Y3Qg
aXJxX2NoaXAgZ3Bpb19zaWZpdmVfaXJxY2hpcCA9IHsKCS5uYW1lCQk9ICJzaWZpdmUtZ3BpbyIs
CgkuaXJxX3NldF90eXBlCT0gZ3Bpb19zaWZpdmVfaXJxX3NldF90eXBlLAoJLmlycV9tYXNrCT0g
Z3Bpb19zaWZpdmVfaXJxX21hc2ssCgkuaXJxX3VubWFzawk9IGdwaW9fc2lmaXZlX2lycV91bm1h
c2ssCgkuaXJxX2VuYWJsZQk9IGdwaW9fc2lmaXZlX2lycV9lbmFibGUsCgkuaXJxX2Rpc2FibGUJ
PSBncGlvX3NpZml2ZV9pcnFfZGlzYWJsZSwKfTsKCnN0YXRpYyB2b2lkIGdwaW9fc2lmaXZlX2ly
cV9oYW5kbGVyKHN0cnVjdCBpcnFfZGVzYyAqZGVzYykKewoJc3RydWN0IGlycV9jaGlwICppcnFj
aGlwID0gaXJxX2Rlc2NfZ2V0X2NoaXAoZGVzYyk7CglzdHJ1Y3Qgc2lmaXZlX2dwaW8gKipzZWxm
X3B0ciA9IGlycV9kZXNjX2dldF9oYW5kbGVyX2RhdGEoZGVzYyk7CglzdHJ1Y3Qgc2lmaXZlX2dw
aW8gKmNoaXAgPSAqc2VsZl9wdHI7CglpbnQgb2Zmc2V0ID0gc2VsZl9wdHIgLSAmY2hpcC0+c2Vs
Zl9wdHJbMF07CiAgICAgICAgLy9pbnQgb2Zmc2V0ID0gZGVzYy0+aXJxX2RhdGEuaXJxIC0gY2hp
cC0+aXJxX3BhcmVudFswXTsKCXUzMiBiaXQgPSBCSVQob2Zmc2V0KTsKCgljaGFpbmVkX2lycV9l
bnRlcihpcnFjaGlwLCBkZXNjKTsKCgkvKiBSZS1hcm0gdGhlIGVkZ2UgaXJxX3R5cGVzIHNvIGRv
bid0IG1pc3MgdGhlIG5leHQgb25lICovCgl3cml0ZWwoYml0LCBjaGlwLT5iYXNlICsgR1BJT19S
SVNFX0lQKTsKCXdyaXRlbChiaXQsIGNoaXAtPmJhc2UgKyBHUElPX0ZBTExfSVApOwoKCWdlbmVy
aWNfaGFuZGxlX2lycShpcnFfZmluZF9tYXBwaW5nKGNoaXAtPmdjLmlycS5kb21haW4sIG9mZnNl
dCkpOwoKCS8qIFJlLWFybSB0aGUgbGV2ZWwgaXJxX3R5cGVzIGFmdGVyIGhhbmRsaW5nIHRvIHBy
ZXZlbnQgc3B1cmlvdXMgcmVmaXJlICovCgl3cml0ZWwoYml0LCBjaGlwLT5iYXNlICsgR1BJT19I
SUdIX0lQKTsKCXdyaXRlbChiaXQsIGNoaXAtPmJhc2UgKyBHUElPX0xPV19JUCk7CgoJY2hhaW5l
ZF9pcnFfZXhpdChpcnFjaGlwLCBkZXNjKTsKCiAgICAgICAgZ3Bpb19zaWZpdmVfZGVidWcoImly
cSBoYW5kbGVyOiBvZmZzZXQ9JWRcbiIsIG9mZnNldCk7Cn0KCiNpZmRlZiBHUElPX1NJRklWRV9E
RUJVRwpzdGF0aWMgdm9pZCBncGlvX3NpZml2ZV9zZXRfaXJxX2VuYWJsZShzdHJ1Y3Qgc2lmaXZl
X2dwaW8gKmNoaXAsIHVuc2lnbmVkIG9mZnNldCkgICAgICAgICAgICAgICAgICAgICAgICAgIAp7
CiAgICAgICAgdTMyIGJpdCA9IEJJVChvZmZzZXQpOwoKICAgICAgICAvKiBTd2l0Y2ggdG8gaW5w
dXQgKi8KICAgICAgICBncGlvX3NpZml2ZV9kaXJlY3Rpb25faW5wdXQoJmNoaXAtPmdjLCBvZmZz
ZXQpOwoKICAgICAgICAvKiBDbGVhciBhbnkgc3RpY2t5IHBlbmRpbmcgaW50ZXJydXB0cyAqLwog
ICAgICAgIHdyaXRlbChiaXQsIGNoaXAtPmJhc2UgKyBHUElPX1JJU0VfSVApOwogICAgICAgIHdy
aXRlbChiaXQsIGNoaXAtPmJhc2UgKyBHUElPX0ZBTExfSVApOwogICAgICAgIHdyaXRlbChiaXQs
IGNoaXAtPmJhc2UgKyBHUElPX0hJR0hfSVApOwogICAgICAgIHdyaXRlbChiaXQsIGNoaXAtPmJh
c2UgKyBHUElPX0xPV19JUCk7CgogICAgICAgIC8qIEVuYWJsZSBpbnRlcnJ1cHRzICovCiAgICAg
ICAgY2hpcC0+aXJxX2VuYWJsZSB8PSBiaXQ7CiAgICAgICAgZ3Bpb19zaWZpdmVfc2V0X2llKGNo
aXAsIG9mZnNldCk7Cn0gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgCnN0YXRpYyB2b2lkIGdwaW9fc2lmaXZlX3NldF9pcnFfZGlzYWJsZShzdHJ1Y3Qgc2lmaXZl
X2dwaW8gKmNoaXAsIHVuc2lnbmVkIG9mZnNldCkgICAgICAgICAgICAgICAgICAgICAgICAgIAp7
CiAgICAgICAgdTMyIGJpdCA9IEJJVChvZmZzZXQpOwogICAgICAgIGNoaXAtPmlycV9lbmFibGUg
Jj0gfmJpdDsKICAgICAgICBncGlvX3NpZml2ZV9zZXRfaWUoY2hpcCwgb2Zmc2V0KTsKfQojZW5k
aWYKCnN0YXRpYyBpbnQgZ3Bpb19zaWZpdmVfY2hpcF9zZXR1cChzdHJ1Y3QgcGxhdGZvcm1fZGV2
aWNlICpwZGV2CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAsIHN0cnVj
dCBzaWZpdmVfZ3BpbyAqY2hpcCwgaW50IG5ncGlvKQp7CglzdHJ1Y3QgZGV2aWNlICpkZXYgPSAm
cGRldi0+ZGV2OwoJaW50IGdwaW8sIGlycSwgcmV0OwoKCXJhd19zcGluX2xvY2tfaW5pdCgmY2hp
cC0+bG9jayk7CgljaGlwLT5nYy5kaXJlY3Rpb25faW5wdXQgPSBncGlvX3NpZml2ZV9kaXJlY3Rp
b25faW5wdXQ7CgljaGlwLT5nYy5kaXJlY3Rpb25fb3V0cHV0ID0gZ3Bpb19zaWZpdmVfZGlyZWN0
aW9uX291dHB1dDsKCWNoaXAtPmdjLmdldF9kaXJlY3Rpb24gPSBncGlvX3NpZml2ZV9nZXRfZGly
ZWN0aW9uOwoJY2hpcC0+Z2MuZ2V0ID0gZ3Bpb19zaWZpdmVfZ2V0X3ZhbHVlOwoJY2hpcC0+Z2Mu
c2V0ID0gZ3Bpb19zaWZpdmVfc2V0X3ZhbHVlOwoJY2hpcC0+Z2MuYmFzZSA9IC0xOwoJY2hpcC0+
Z2MubmdwaW8gPSBuZ3BpbzsKCWNoaXAtPmdjLmxhYmVsID0gZGV2X25hbWUoZGV2KTsKCWNoaXAt
PmdjLnBhcmVudCA9IGRldjsKCWNoaXAtPmdjLm93bmVyID0gVEhJU19NT0RVTEU7CgoJcmV0ID0g
Z3Bpb2NoaXBfYWRkX2RhdGEoJmNoaXAtPmdjLCBjaGlwKTsKCWlmIChyZXQpCgkJcmV0dXJuIHJl
dDsKCgkvKiBEaXNhYmxlIGFsbCBHUElPIGludGVycnVwdHMgYmVmb3JlIGVuYWJsaW5nIHBhcmVu
dCBpbnRlcnJ1cHRzICovCiAgICAgICAgZ3Bpb19zaWZpdmVfc2V0X2RlZmF1bHQoY2hpcCwgMCk7
CgoJcmV0ID0gZ3Bpb2NoaXBfaXJxY2hpcF9hZGQoJmNoaXAtPmdjLCAmZ3Bpb19zaWZpdmVfaXJx
Y2hpcCwgMAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgLCBoYW5kbGVf
c2ltcGxlX2lycSwgSVJRX1RZUEVfTk9ORSk7CglpZiAocmV0KSB7CgkJZGV2X2VycihkZXYsICJH
UElPOiBjb3VsZCBub3QgYWRkIGlycWNoaXBcbiIpOwoJCWdwaW9jaGlwX3JlbW92ZSgmY2hpcC0+
Z2MpOwoJCXJldHVybiByZXQ7Cgl9CgoJY2hpcC0+Z2MuaXJxLm51bV9wYXJlbnRzID0gbmdwaW87
CgljaGlwLT5nYy5pcnEucGFyZW50cyA9ICZjaGlwLT5pcnFfcGFyZW50WzBdOwoJY2hpcC0+Z2Mu
aXJxLm1hcCA9ICZjaGlwLT5pcnFfcGFyZW50WzBdOwoKCWZvciAoZ3BpbyA9IDA7IGdwaW8gPCBu
Z3BpbzsgKytncGlvKSB7CgkJaXJxID0gcGxhdGZvcm1fZ2V0X2lycShwZGV2LCBncGlvKTsKCQlp
ZiAoaXJxIDwgMCkgewoJCQlkZXZfZXJyKGRldiwgIkdQSU86IGludmFsaWQgSVJRXG4iKTsKCQkJ
Z3Bpb2NoaXBfcmVtb3ZlKCZjaGlwLT5nYyk7CgkJCXJldHVybiAtRU5PREVWOwoJCX0KCQljaGlw
LT5zZWxmX3B0cltncGlvXSA9IGNoaXA7CgkJY2hpcC0+aXJxX3BhcmVudFtncGlvXSA9IGlycTsK
CQljaGlwLT5pcnFfdHlwZVtncGlvXSA9IElSUV9UWVBFX0xFVkVMX0hJR0g7Cgl9Cglmb3IgKGdw
aW8gPSAwOyBncGlvIDwgbmdwaW87ICsrZ3BpbykgewoJCWlycSA9IGNoaXAtPmlycV9wYXJlbnRb
Z3Bpb107CgkJaXJxX3NldF9jaGFpbmVkX2hhbmRsZXJfYW5kX2RhdGEoaXJxLCBncGlvX3NpZml2
ZV9pcnFfaGFuZGxlcgogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAsICZjaGlwLT5zZWxmX3B0cltncGlvXSk7CgkJaXJxX3NldF9wYXJlbnQoaXJxX2ZpbmRf
bWFwcGluZyhjaGlwLT5nYy5pcnEuZG9tYWluLCBncGlvKSwgaXJxKTsKCX0KCiAgICAgICAgLy9F
bmFibGUgR1BJTyBJbnB1dCBmb3IgZGVmYXVsdAogICAgICAgIGdwaW9fc2lmaXZlX3NldF9kZWZh
dWx0KGNoaXAsIEdQSU9fRU5BQkxFX0JJVFMpOwogICAgICAgIHJldHVybiAwOwp9CgpzdGF0aWMg
aW50IGdwaW9fc2lmaXZlX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCnsKCXN0
cnVjdCBkZXZpY2UgKmRldiA9ICZwZGV2LT5kZXY7CglzdHJ1Y3QgZGV2aWNlX25vZGUgKm5vZGUg
PSBwZGV2LT5kZXYub2Zfbm9kZTsKCXN0cnVjdCBzaWZpdmVfZ3BpbyAqY2hpcDsKCXN0cnVjdCBy
ZXNvdXJjZSAqcmVzOwoJaW50IG5ncGlvOwoKCWNoaXAgPSBkZXZtX2t6YWxsb2MoZGV2LCBzaXpl
b2YoKmNoaXApLCBHRlBfS0VSTkVMKTsKCWlmICghY2hpcCkgewoJCWRldl9lcnIoZGV2LCAib3V0
IG9mIG1lbW9yeVxuIik7CgkJcmV0dXJuIC1FTk9NRU07Cgl9CgoJcmVzID0gcGxhdGZvcm1fZ2V0
X3Jlc291cmNlKHBkZXYsIElPUkVTT1VSQ0VfTUVNLCAwKTsKCWNoaXAtPmJhc2UgPSBkZXZtX2lv
cmVtYXBfcmVzb3VyY2UoZGV2LCByZXMpOwoJaWYgKElTX0VSUihjaGlwLT5iYXNlKSkgewoJCWRl
dl9lcnIoZGV2LCAiZmFpbGVkIHRvIGFsbG9jYXRlIGRldmljZSBtZW1vcnlcbiIpOwoJCXJldHVy
biBQVFJfRVJSKGNoaXAtPmJhc2UpOwoJfQogICAgICAgIGdwaW9fc2lmaXZlX2RlYnVnX3JlZyhj
aGlwKTsKCglpZihvZl9wcm9wZXJ0eV9yZWFkX3UzMihub2RlLCAibmdwaW9zIiwgJm5ncGlvKSkg
CgkgICAgICAgIG5ncGlvID0gb2ZfaXJxX2NvdW50KG5vZGUpOwoJCglpZiAobmdwaW8gPj0gR1BJ
T19NQVhfQ05UKSB7CgkJZGV2X2VycihkZXYsICJ0b28gbWFueSBuZ3Bpb3MuXG4iKTsKCQlyZXR1
cm4gLUVJTlZBTDsKCX0KCiAgICAgICAgaWYgKGdwaW9fc2lmaXZlX2NoaXBfc2V0dXAocGRldiwg
Y2hpcCwgbmdwaW8pIDwgMCkgewoJCWRldl9lcnIoZGV2LCAiZmFpbGVkIHRvIGdwaW8gc2lmaXZl
IHNldHVwLlxuIik7CiAgICAgICAgICAgICAgICByZXR1cm4gLUVJTlZBTDsKICAgICAgICB9CgoJ
cGxhdGZvcm1fc2V0X2RydmRhdGEocGRldiwgY2hpcCk7CglkZXZfaW5mbyhkZXYsICJHUElPIFNp
Rml2ZSBkcml2ZXIgcmVnaXN0ZXJlZCAlZCBHUElPc1xuIiwgbmdwaW8pOwoKI2lmZGVmIEdQSU9f
U0lGSVZFX0RFQlVHCiAgICAgICAgZ3Bpb19zaWZpdmVfc2V0X2lycV9lbmFibGUoY2hpcCwgNyk7
ICAgIC8vL0dQSU83IGludGVycnVwdCBlbmFibGVkIGZvciB0ZXN0ICAgICAgICAgICAgICAgICAg
ICAgICAgICAKICAgICAgICBncGlvX3NpZml2ZV9zZXRfaXJxX2Rpc2FibGUoY2hpcCwgOSk7ICAg
Ly8vR1BJTzkgaW50ZXJydXB0IGRpc2FibGVkIGZvciB0ZXN0ICAgICAgICAgICAgICAgICAgICAg
CiNlbmRpZgogICAgICAgIGdwaW9fc2lmaXZlX2RlYnVnX3JlZyhjaGlwKTsKCXJldHVybiAwOwp9
CgpzdGF0aWMgY29uc3Qgc3RydWN0IG9mX2RldmljZV9pZCBncGlvX3NpZml2ZV9tYXRjaFtdID0g
ewoJewoJCS5jb21wYXRpYmxlID0gInNpZml2ZSxncGlvMCIsCgl9LAoJeyB9LAp9OwpNT0RVTEVf
REVWSUNFX1RBQkxFKG9mLCBncGlvX3NpZml2ZV9tYXRjaCk7CgpzdGF0aWMgc3RydWN0IHBsYXRm
b3JtX2RyaXZlciBncGlvX3NpZml2ZV9kcml2ZXIgPSB7CgkucHJvYmUJCT0gZ3Bpb19zaWZpdmVf
cHJvYmUsCgkuZHJpdmVyID0gewoJCS5uYW1lCT0gImdwaW8tc2lmaXZlIiwKCQkub2ZfbWF0Y2hf
dGFibGUgPSBvZl9tYXRjaF9wdHIoZ3Bpb19zaWZpdmVfbWF0Y2gpLAoJfSwKfTsKbW9kdWxlX3Bs
YXRmb3JtX2RyaXZlcihncGlvX3NpZml2ZV9kcml2ZXIpOwoKTU9EVUxFX0RFU0NSSVBUSU9OKCJT
aUZpdmUgR1BJTyBkcml2ZXIiKTsKTU9EVUxFX0xJQ0VOU0UoIkdQTCB2MiIpOwo=
--000000000000b1d803059d2d8562--

