Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F200143759
	for <lists+linux-riscv@lfdr.de>; Tue, 21 Jan 2020 07:59:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:MIME-Version:Reply-To:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Mz7AXzQfKXCTcpmi2v6yKzcce8IEzocOEQz3YZiY2NM=; b=nmtxT8FS6absQeVhaW2T8Vtba6
	NK1/f8CDsTGq584lvUZ8gK9sV78ZZc1l3exlIUGMigqTTA3wO/7hk+/pinROr9uTeBSUUpqRgqHSj
	CqL4bW9Mk6PHju5qF4G2fsKAOoL95N5ZJlgT6Nl7vz29LfFUpPRq6EdJPbx3/615jERgk1Ksvm7g4
	dAi8rgL0TIPd3WQXAf0/uAU21rTqYOpi6UxnxmK9YfsbE7k5ztu4KWEk+2mfFxaD+TsPw2ZbgWgz9
	PZFcojODB721Eml10fiHbJy/tHeoOK77CZD5kpHDewX/ZMjzXP3NblZlw182TNqA02/JDWjeaiie4
	w2IkYBkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itnV7-0006Vu-JT; Tue, 21 Jan 2020 06:59:01 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itnV0-0006Ta-Fa
 for linux-riscv@lists.infradead.org; Tue, 21 Jan 2020 06:58:57 +0000
Received: by mail-pg1-x543.google.com with SMTP id z124so928262pgb.13
 for <linux-riscv@lists.infradead.org>; Mon, 20 Jan 2020 22:58:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to:cc;
 bh=Mz7AXzQfKXCTcpmi2v6yKzcce8IEzocOEQz3YZiY2NM=;
 b=EDLD7kmdUA9yItRCS40rELjRLiVY9wBhGYHa+h5B/OxTiQh003gqqflIZVm05c3r+E
 SxxhiRRC9FpaWGBdEO2jcs3ehoiIVmKec8qmntG9A1QJafXILyFsLFYPix8y57QEgiAs
 cDIFp3yBFbnzTF7vR3j3Do2dYzSvBevIaWRzFV0f3Y/TF2XyHJoNl7Jat5tWAmli6y4w
 jBjKkyeicXWvAPRzVNP4Ek41o8FZfuIWPfvjKpoAmCeni3YcHdUvS0FeJzZJPmMotZRG
 psLetZkPHKhDYA3nE9Yj/0NvSXaKxoEpmNiIIjwVcXJGLOTVG5KveKi2dIHKp7Hf3qw2
 1+5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=Mz7AXzQfKXCTcpmi2v6yKzcce8IEzocOEQz3YZiY2NM=;
 b=XBTmZLHqz76vKmHGtljMqCBZiHI/46Hv00rJf3CdFeuwotvojPk6336VMo7gUEXzPe
 b54DDq4lA1MhutiSoo0xgkDqwU9SNFnr7T5rQ1ClyeUQbgF4cUGBGk0EdxRHxjbsUgib
 A0OjPiSxsn5Mgs2Wi2AEksu6pp+VQKhEOoApL5hjDIvlx7AdyQad56pOJsaTvCRd8y6z
 k/Wjfkvojv1IB9+nxlzOhLaXGjg5U3SVxYbrY2vr+u2xfKe7htJu7Zq6GuHoWE3AzH05
 zH6o6clhujMCWsnvJTplPwS8tclL2sITnh4xHmuADJ9zy8VYKM6mzG3fB2Bw5edOIyff
 woqw==
X-Gm-Message-State: APjAAAUTq0HB+LhXLlI+3DEc4v3uf/AT22L9Df+ckYAF8iYhIyAmNnoQ
 OAiAFR9IxUuzJnLfREZrkaqnszP7MFUeSu861kEQgHUY
X-Google-Smtp-Source: APXvYqw7zSF0//XRjIJYmPZhc9brCl7ZpiS+d0GWRdF6xUKwE/HxOnHoFZt6SmI9DuCtKC/ruy3gIrhB5AeyVYhqZco=
X-Received: by 2002:a63:214e:: with SMTP id s14mr3824718pgm.428.1579589928631; 
 Mon, 20 Jan 2020 22:58:48 -0800 (PST)
MIME-Version: 1.0
From: JaeJoon Jung <rgbi3307@gmail.com>
Date: Tue, 21 Jan 2020 15:58:37 +0900
Message-ID: <CAHOvCC5aEc=p_6Yxkyr8n9BXZug_-NA_CJswu8vtkM8aOBhWvg@mail.gmail.com>
Subject: [PATCH] riscv: Add gpio and pwmleds to
 DTS(/arch/riscv/boot/dts/sifive/)
To: Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, Anup Patel <Anup.Patel@wdc.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_225854_547297_05DCC237 
X-CRM114-Status: UNSURE (   5.05  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rgbi3307[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [rgbi3307[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-riscv@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

I added below DTS to act gpio and pwmleds for SiFive FU540 Unleashed board.

diff --git a/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
b/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
index a2e3d54e830c..b03bf570020c 100644
--- a/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
+++ b/arch/riscv/boot/dts/sifive/fu540-c000.dtsi

+                gpio0: gpio@10060000 {
+                        compatible = "sifive,fu540-c000-gpio", "sifive,gpio0";
+                        reg = <0x0 0x10060000 0x0 0x1000>;
+                        reg-names = "control";
+                        gpio-controller;
+                        #gpio-cells = <2>;
+                        ngpios = <16>;
+                        interrupt-controller;
+                        #interrupt-cells = <2>;
+                        interrupt-parent = <&plic0>;
+                        interrupts = <15 16 17 18 19 20 21 22 23 24
25 26 27 28 29 30>;
+                        status = "disabled";
+                };


diff --git a/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
b/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
index 88cfcb96bf23..f3f55dbbf737 100644
--- a/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
+++ b/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts

        cpus {
@@ -41,6 +41,39 @@
                clock-frequency = <RTCCLK_FREQ>;
                clock-output-names = "rtcclk";
        };
+
+
+        pwmleds {
+                compatible = "pwm-leds";
+                heartbeat {
+                        label = "led1";
+                        max-brightness = <255>;
+                        active-low = <1>;
+                        pwms = <&pwm0 0 7812500 0>;
+                        linux,default-trigger = "heartbeat";
+                };
+                mtd {
+                        label = "led2";
+                        max-brightness = <255>;
+                        active-low = <1>;
+                        pwms = <&pwm0 1 7812500 0>;
+                        linux,default-trigger = "mtd";
+                };
+                netdev {
+                        label = "led3";
+                        max-brightness = <255>;
+                        active-low = <1>;
+                        pwms = <&pwm0 2 7812500 0>;
+                        linux,default-trigger = "netdev";
+                };
+                panic {
+                        label = "led4";
+                        max-brightness = <255>;
+                        active-low = <1>;
+                        pwms = <&pwm0 3 7812500 0>;
+                        linux,default-trigger = "panic";
+                };
+        };
 };

 &uart0 {
@@ -94,3 +127,7 @@
 &pwm1 {
        status = "okay";
 };
+
+&gpio0 {
+       status = "okay";
+};


If apply above DTS, the gpio-sifive driver works well without source
modification.
drivers/gpio/gpio-sifive.c
drivers/leds/leds-pwm.c

I have checked below:

led1(D1) is acting well as heartbeat.

RISCV-FU540:/sys/class/leds# pwd
/sys/class/leds
RISCV-FU540:/sys/class/leds# ll
total 0
drwxr-xr-x    2 root     root             0 Jan  1 00:00 ./
drwxr-xr-x   32 root     root             0 Jan  1 00:00 ../
lrwxrwxrwx    1 root     root             0 Jan  1 00:00 led1 ->
../../devices/platform/pwmleds/leds/led1/
lrwxrwxrwx    1 root     root             0 Jan  1 00:00 led2 ->
../../devices/platform/pwmleds/leds/led2/
lrwxrwxrwx    1 root     root             0 Jan  1 00:00 led3 ->
../../devices/platform/pwmleds/leds/led3/
lrwxrwxrwx    1 root     root             0 Jan  1 00:00 led4 ->
../../devices/platform/pwmleds/leds/led4/

RISCV-FU540:/sys/class/leds# cd led3
RISCV-FU540:/sys/class/leds/led3# ll
total 0
drwxr-xr-x    2 root     root             0 Jan  1 00:00 ./
drwxr-xr-x    6 root     root             0 Jan  1 00:00 ../
-rw-r--r--    1 root     root          4096 Jan  1 00:01 brightness
lrwxrwxrwx    1 root     root             0 Jan  1 00:00 device ->
../../../pwmleds/
-r--r--r--    1 root     root          4096 Jan  1 00:00 max_brightness
lrwxrwxrwx    1 root     root             0 Jan  1 00:00 subsystem ->
../../../../../class/leds/
-rw-r--r--    1 root     root          4096 Jan  1 00:00 trigger
-rw-r--r--    1 root     root          4096 Jan  1 00:00 uevent
RISCV-FU540:/sys/class/leds/led3# echo 1 > brightness
RISCV-FU540:/sys/class/leds/led3# echo 127 > brightness
RISCV-FU540:/sys/class/leds/led3# echo 255 > brightness

leds(D1, D2, D3, D4) are acting well as pwm brightness.

