Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B70514DFD2
	for <lists+linux-riscv@lfdr.de>; Thu, 30 Jan 2020 18:20:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=CHeB/R8Fl/9qOtimQiUeupT3bv2GJGiPs4nnPgQPFx4=; b=YoIrq9NamjRyl2JZ/gJzvOGRp
	Mqq776Eh7/Yl0xrHDb/CbPPueMaIKRnxTgME0yxrG+wVDDAyDSbEEEHBPK2tcO1vZ+bLrA+z5hm2g
	pp0QFXXD6dSoWXD2DIpY3wx+so2M2iW+fGY2KwYhv/zijSus0NEDCgvv/hxJwiooKJslu36W+QauV
	1hBoiFjLs+RBlisPJakE+8bTOXl0nGIFg8iF6GScWFZMKTJJv9HZVonEk2EarHtIoamhampmrPREg
	Yaw6TSDgmL5ZAzMMLZs1jdRpYAiTp3ftASUflstPaeByOGjd9zTMC70jXanbWB0bccG/ZWFn9t2Yg
	116erfGcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixDUa-0000OV-Ra; Thu, 30 Jan 2020 17:20:36 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixDUV-0000Nh-W9
 for linux-riscv@lists.infradead.org; Thu, 30 Jan 2020 17:20:33 +0000
Received: by mail-pj1-x1041.google.com with SMTP id q39so1628415pjc.0
 for <linux-riscv@lists.infradead.org>; Thu, 30 Jan 2020 09:20:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=CHeB/R8Fl/9qOtimQiUeupT3bv2GJGiPs4nnPgQPFx4=;
 b=Dvjyw5ltFh1KOl7bEuMRZ1Ku3wKkqsIIrRFPRkJ5ieO+2SlNyDqptvUg/z4Lngrtah
 QdslGZ03GwG3v6i6/MT+Jc8bkBgP9yG1ucD+kKxwxWo7R0EmqCdhTNcK4MU1ud/AN0eS
 +zOgSGKMuBvJeTtLbmnqJhBmIZeHLkuSHRkseNWfgLlywbSuvDE6DmdSxuHk3jdXrCrX
 ZYlxRyUWqpVSZspDpj94B8L7dTeBN3GkaFqiESb+iaJ9g7HVXKXFU0YWC/9zJVzqFtqN
 0ExG5mlwuLuoCso/BEKv6MmXGn+9vgerkb0/T09PYrYfLMLWGmjub9PkJZVVL1IufG35
 7eAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=CHeB/R8Fl/9qOtimQiUeupT3bv2GJGiPs4nnPgQPFx4=;
 b=UVLSSnSD+mkAakyXQlX5c0hJHj4yjpa8yqWMyqvq7T4QynjgE6eOcRXuTiO2r9psJX
 EDcGw3o288RfKWSHWA1NaMnzXMVCIZ7AFoGOCfWk+5fAXIwl58GcSPKxjO5tCt+umxey
 +GrCDahhE8hi/C1/NgWT3nacTXn+J8vczeI8XxDaANRZVjdtduOycJcGCZQzEDOQYyB8
 VtZxytUMBS7bCQlf8BXRTce+rVUZJExtHLIZv+clUs6u2qCCsFiNv8xKwV4NY6YXF5/n
 E49c8tq2yS+Ca4d3RcoCPCl3GzxgDFSdDnQrMQbwt00VOzsgRfCppOnTiMlZGYIU8TH2
 WGPg==
X-Gm-Message-State: APjAAAUyxlm6hVOUhbbL+iWJHLA7vU/bLQFR9kb/SUA+OpOsiO9CY4+Y
 +Ar3nRZ6puRT5aIoq+uIgsQGuhsCrRaxWP0H6AY=
X-Google-Smtp-Source: APXvYqyL3nHQ/+sOHRlZQkNa/du9RKocTevdS9Vmkkf6aZWON8CTkQlL2fIjMA0bUW+x02qVIMB9wtzPOZREzLMz0hU=
X-Received: by 2002:a17:902:bb88:: with SMTP id
 m8mr5730781pls.63.1580404830743; 
 Thu, 30 Jan 2020 09:20:30 -0800 (PST)
MIME-Version: 1.0
References: <CAHOvCC5aEc=p_6Yxkyr8n9BXZug_-NA_CJswu8vtkM8aOBhWvg@mail.gmail.com>
 <alpine.DEB.2.21.9999.2001291930040.1008396@viisi.sifive.com>
 <CAHOvCC6MwS27mOkAptnFTs1MrSZ_bZOTE-sLdd4riE3A=Y5QLA@mail.gmail.com>
 <CAEn-LTpZCdeFYCt6DKrHfp8xcOuUejYXYqJ=wgtXHE8Qf0oRgA@mail.gmail.com>
In-Reply-To: <CAEn-LTpZCdeFYCt6DKrHfp8xcOuUejYXYqJ=wgtXHE8Qf0oRgA@mail.gmail.com>
From: JaeJoon Jung <rgbi3307@gmail.com>
Date: Fri, 31 Jan 2020 02:20:19 +0900
Message-ID: <CAHOvCC5sw8BapFTDPK4zAW4mU=2KZ_PDg5=_verixYn22pHcYg@mail.gmail.com>
Subject: Re: [PATCH] riscv: Add gpio and pwmleds to
 DTS(/arch/riscv/boot/dts/sifive/)
To: David Abdurachmanov <david.abdurachmanov@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200130_092032_049418_7A25F7E3 
X-CRM114-Status: GOOD (  25.22  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [rgbi3307[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rgbi3307[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-riscv <linux-riscv@lists.infradead.org>,
 Anup Patel <Anup.Patel@wdc.com>, Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hello David Abdurachmanov,
Thanks to your deep opinions,
but it's not that important, but there are things to check.
If you apply below DTS, It works all fine without source modification.
I think that you are missing the active-low = <1> and
linux,default-trigger = "heartbeat"...

The following setting is not set by default, but it works well if you set it.
CONFIG_PWM_SIFIVE
CONFIG_NEW_LEDS
CONFIG_LEDS_PWM
CONFIG_LEDS_CLASS
CONFIG_LEDS_TRIGGERS
CONFIG_LEDS_TRIGGER_HEARTBEAT

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
+                        pwms = <&pwm0 0 1000000 0>;
+                        linux,default-trigger = "heartbeat";
+                };
+                mtd {
+                        label = "led2";
+                        max-brightness = <255>;
+                        active-low = <1>;
+                        pwms = <&pwm0 1 1000000 0>;
+                        linux,default-trigger = "mtd";
+                };
+                netdev {
+                        label = "led3";
+                        max-brightness = <255>;
+                        active-low = <1>;
+                        pwms = <&pwm0 2 1000000 0>;
+                        linux,default-trigger = "netdev";
+                };
+                panic {
+                        label = "led4";
+                        max-brightness = <255>;
+                        active-low = <1>;
+                        pwms = <&pwm0 3 1000000 0>;
+                        linux,default-trigger = "panic";
+                };
+        };
 };

And I think that the simpler the name, the better.
labels are displayed at /sys/class/leds and user can access and control it here.

RISCV-FU540:/sys/class/leds# pwd
/sys/class/leds
RISCV-FU540:/sys/class/leds# ll
total 0
drwxr-xr-x    2 root     root             0 Jan  1 00:00 ./
drwxr-xr-x   33 root     root             0 Jan  1 00:00 ../
lrwxrwxrwx    1 root     root             0 Jan  1 00:00 led1 ->
../../devices/platform/pwmleds/leds/led1/
lrwxrwxrwx    1 root     root             0 Jan  1 00:00 led2 ->
../../devices/platform/pwmleds/leds/led2/
lrwxrwxrwx    1 root     root             0 Jan  1 00:00 led3 ->
../../devices/platform/pwmleds/leds/led3/
lrwxrwxrwx    1 root     root             0 Jan  1 00:00 led4 ->
../../devices/platform/pwmleds/leds/led4/

RISCV-FU540:/sys/class/leds# cd led1
RISCV-FU540:/sys/class/leds/led1# ll
total 0
drwxr-xr-x    2 root     root             0 Jan  1 00:00 ./
drwxr-xr-x    6 root     root             0 Jan  1 00:00 ../
-rw-r--r--    1 root     root          4096 Jan  1 00:00 brightness
lrwxrwxrwx    1 root     root             0 Jan  1 00:00 device ->
../../../pwmleds/
-r--r--r--    1 root     root          4096 Jan  1 00:00 max_brightness
lrwxrwxrwx    1 root     root             0 Jan  1 00:00 subsystem ->
../../../../../class/leds/
-rw-r--r--    1 root     root             0 Jan  1 00:00 trigger
-rw-r--r--    1 root     root          4096 Jan  1 00:00 uevent

Yours,
JaeJoon Jung


On Fri, 31 Jan 2020 at 01:14, David Abdurachmanov
<david.abdurachmanov@gmail.com> wrote:
>
> On Thu, Jan 30, 2020 at 7:24 AM JaeJoon Jung <rgbi3307@gmail.com> wrote:
> >
> > I agree with you because LEDs are user defined using method.
> >
> > And, I am sorry about that I confirmed lately below posted by Yash.
> >
> > https://lore.kernel.org/linux-riscv/mhng-cb360722-bdb6-4cf7-9fa7-1d92f6b6bbfa@palmerdabbelt-glaptop1/T/#madb19f55bac11a9a675b1ca73ca3f0c2d88c57cf
> >
> > It is helpful for me and I am testing it.
> > If I find a bug, I am going to share about it.
> >
> > Thanks a lot, Have a nice day.
> >
> > Yours,
> > JaeJoon Jung
> >
> > On Thu, 30 Jan 2020 at 12:35, Paul Walmsley <paul.walmsley@sifive.com> wrote:
> > >
> > > On Tue, 21 Jan 2020, JaeJoon Jung wrote:
> > >
> > > > I added below DTS to act gpio and pwmleds for SiFive FU540 Unleashed board.
> > > >
> > > > diff --git a/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
> > > > b/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
> > > > index a2e3d54e830c..b03bf570020c 100644
> > > > --- a/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
> > > > +++ b/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
> > > >
> > > > +                gpio0: gpio@10060000 {
> > > > +                        compatible = "sifive,fu540-c000-gpio", "sifive,gpio0";
> > > > +                        reg = <0x0 0x10060000 0x0 0x1000>;
> > > > +                        reg-names = "control";
> > > > +                        gpio-controller;
> > > > +                        #gpio-cells = <2>;
> > > > +                        ngpios = <16>;
> > > > +                        interrupt-controller;
> > > > +                        #interrupt-cells = <2>;
> > > > +                        interrupt-parent = <&plic0>;
> > > > +                        interrupts = <15 16 17 18 19 20 21 22 23 24
> > > > 25 26 27 28 29 30>;
> > > > +                        status = "disabled";
> > > > +                };
> > >
> > > Yash posted this a while ago:
> > >
> > > https://lore.kernel.org/linux-riscv/mhng-cb360722-bdb6-4cf7-9fa7-1d92f6b6bbfa@palmerdabbelt-glaptop1/T/#madb19f55bac11a9a675b1ca73ca3f0c2d88c57cf
> > >
> > >
> > > >
> > > > diff --git a/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
> > > > b/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
> > > > index 88cfcb96bf23..f3f55dbbf737 100644
> > > > --- a/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
> > > > +++ b/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
> > > >
> > > >         cpus {
> > > > @@ -41,6 +41,39 @@
> > > >                 clock-frequency = <RTCCLK_FREQ>;
> > > >                 clock-output-names = "rtcclk";
> > > >         };
> > > > +
> > > > +
> > > > +        pwmleds {
> > > > +                compatible = "pwm-leds";
> > > > +                heartbeat {
> > > > +                        label = "led1";
> > > > +                        max-brightness = <255>;
> > > > +                        active-low = <1>;
> > > > +                        pwms = <&pwm0 0 7812500 0>;
> > > > +                        linux,default-trigger = "heartbeat";
> > > > +                };
> > > > +                mtd {
> > > > +                        label = "led2";
> > > > +                        max-brightness = <255>;
> > > > +                        active-low = <1>;
> > > > +                        pwms = <&pwm0 1 7812500 0>;
> > > > +                        linux,default-trigger = "mtd";
> > > > +                };
> > > > +                netdev {
> > > > +                        label = "led3";
> > > > +                        max-brightness = <255>;
> > > > +                        active-low = <1>;
> > > > +                        pwms = <&pwm0 2 7812500 0>;
> > > > +                        linux,default-trigger = "netdev";
> > > > +                };
> > > > +                panic {
> > > > +                        label = "led4";
> > > > +                        max-brightness = <255>;
> > > > +                        active-low = <1>;
> > > > +                        pwms = <&pwm0 3 7812500 0>;
> > > > +                        linux,default-trigger = "panic";
> > > > +                };
> > > > +        };
> > > >  };
> > >
> > > I don't think it's good to add these pwmleds to the default board DTS
> > > file.  I realize that many upstream ARM development boards have added this
> > > type of configuration, but it gets in the way of reusing this DT file when
> > > integrators wish to have the LEDs used for different purposes.  If the
> > > Unleashed silkscreen had text on it describing the LEDs as having these
> > > specific functions, or if Unleashed was sold in a case with similar
> > > markings on the outside, it'd be a different story, and then a change like
> > > the above could make sense.
>
> I think, there is a middle solution. On SiFive Unleashed PWM LEDs still exist.
> So let's define those LEDs, but disable them (i.e. no default trigger). In that
> case user has an options to write udev rules to setup those PWM LEDs as
> he/she likes. I already use udev rule for netdev LED configuration as today
> DTS does not provide options to configure it [within DTS] (patch
> posted in 2019).
>
> It would look something like below (not tested). We use labels from PCB and
> schematics, but do not assign any default functions/triggers. Once the
> distro boots
> udev rules will set default triggers and do required configuration.
>
> ---
>  .../riscv/boot/dts/sifive/hifive-unleashed-a00.dts | 27 ++++++++++++++++++++++
>  1 file changed, 27 insertions(+)
>
> diff --git a/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
> b/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
> index 828f406..eb793b5 100644
> --- a/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
> +++ b/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
> @@ -26,6 +26,33 @@
>         };
>
>         soc {
> +               pwmleds {
> +                       compatible = "pwm-leds";
> +                       d1 {
> +                               label = "green:d1";
> +                               pwms = <&pwm0 0 2000000 0>;
> +                               max-brightness = <255>;
> +                               linux,default-trigger = "none";
> +                       };
> +                       d2 {
> +                               label = "green:d2";
> +                               pwms = <&pwm0 1 2000000 0>;
> +                               max-brightness = <255>;
> +                               linux,default-trigger = "none";
> +                       };
> +                       d3 {
> +                               label = "green:d3";
> +                               pwms = <&pwm0 2 2000000 0>;
> +                               max-brightness = <255>;
> +                               linux,default-trigger = "none";
> +                       };
> +                       d4 {
> +                               label = "green:d4";
> +                               pwms = <&pwm0 3 2000000 0>;
> +                               max-brightness = <255>;
> +                               linux,default-trigger = "none";
> +                       };
> +               };
>         };
>
>         hfclk: hfclk {
> --
> 2.7.4

