Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F14D114ED22
	for <lists+linux-riscv@lfdr.de>; Fri, 31 Jan 2020 14:21:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=X04GGWqZg03hnlYeXk9ff1vFBeOqK4e0A/yy2gNdbD4=; b=N2N0zqJ12kpiXOYfkHC9Avdtl
	hTA16vLlLMzc1Rajkx9f1wb7ROufSq9m8Mvn+TC7mE3NX4TOm3W2qlQ0yJ63vqJz6NXpnWGC7CreT
	l17R3xYENLNp6CFJcwvGh7m13aBgRhTiPiLwb4k6FoK1pWrCBCcQ03YIcMXSR9e6DvOdmuAcGkO3B
	oRFNtox7iyTtYvXYaBUQfUHf4JnCc6cVsniqmwkGXcyyC4MnpB5o+8fyakR6GUIikEkpQEqw8gsf0
	JpmFvyPN1qmZiAywyW30Z/6NUHEvtB+Rdhae6QHOqeLekYG6edUGwWxA6JSuACHxJsasRABi4PFG1
	ZoIWkQdmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixWEe-0001sE-Ha; Fri, 31 Jan 2020 13:21:24 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixWEa-0001rl-Rz
 for linux-riscv@lists.infradead.org; Fri, 31 Jan 2020 13:21:22 +0000
Received: by mail-wm1-x341.google.com with SMTP id a5so7867367wmb.0
 for <linux-riscv@lists.infradead.org>; Fri, 31 Jan 2020 05:21:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=X04GGWqZg03hnlYeXk9ff1vFBeOqK4e0A/yy2gNdbD4=;
 b=gSmcNxdVeW6DG2Xlg6df8dUeb7pwPGW3PlOlkfDntUoc785RB4IREni3zmT+LJ62vc
 PZLmFhf8PV7EqFUduGliU8uo3OzNbL/ZQkK88VYeLMmgrqSPDUNgoZVHWI2UlC1jReQ4
 VrRzB0I7EhLXc6C1GzAdJc6Kvy4pzTGmBOqD7ETxy/tVCs8uzNQyFePT7XPaN4HfZ9cN
 SqCArxyknxzrkcC8aGWgIdGf+wLsV7yKWBI3w8VnotFNfU+geAeMOv9rOxSg+FxUS0b2
 WkEqWwyeSUSPLHAjOKdWmI9F2epOqTMHEIguIBOfxS+TzBD9X4jH2Q6b4rg28V13h3Iu
 XRGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=X04GGWqZg03hnlYeXk9ff1vFBeOqK4e0A/yy2gNdbD4=;
 b=lTkG1PMBYG7vg8j1M7AhOxzUaTKTKNoUAC+/ueGh39j/mLPemIfKvvB5ndP/HuQO2l
 zvQmgQtCmCN1BonlZ3d1Ji+RAcWTTIvhnabz8ZaAvpXO1eAjBrk9Z3ryo+NuFQE46UQs
 vJndc9YjAbkdxvMcpYz6WFF5VturCf50wMzckok8Bq0+eOJKmC89vjhAQHhRA5vU/TcC
 1s+iC7syOFtiOCGuClnIsdRW/z3ObIkO3AWu2zA1qb0Mmi0BIt+dDDzd0AWPcVV70ZMw
 qTwKpJnO837o61cFyPnwSTn2CjUGLReWJc92+3HD/Z+nCeoMod96tMRin1V90RTzp+yW
 EWkw==
X-Gm-Message-State: APjAAAVrP8hWGOMDJX5WBjK895fwhq9OCjdj5tf8OF5KbTHsEWgUp8sI
 wNdI8YTgr9Yice54+pwX63bOf0EXdyPL023Mt/Y=
X-Google-Smtp-Source: APXvYqzxW3lW1VN/NHVDWj1PsdKSEkIJHhMnZwG2jBP9iMv2kPHKEhKwW0j/3Uq5Koc4cE9lpl3M0O1GMfxbuD7l27M=
X-Received: by 2002:a7b:c258:: with SMTP id b24mr12672571wmj.140.1580476878555; 
 Fri, 31 Jan 2020 05:21:18 -0800 (PST)
MIME-Version: 1.0
References: <CAHOvCC5aEc=p_6Yxkyr8n9BXZug_-NA_CJswu8vtkM8aOBhWvg@mail.gmail.com>
 <alpine.DEB.2.21.9999.2001291930040.1008396@viisi.sifive.com>
 <CAHOvCC6MwS27mOkAptnFTs1MrSZ_bZOTE-sLdd4riE3A=Y5QLA@mail.gmail.com>
 <CAEn-LTpZCdeFYCt6DKrHfp8xcOuUejYXYqJ=wgtXHE8Qf0oRgA@mail.gmail.com>
 <CAHOvCC5sw8BapFTDPK4zAW4mU=2KZ_PDg5=_verixYn22pHcYg@mail.gmail.com>
In-Reply-To: <CAHOvCC5sw8BapFTDPK4zAW4mU=2KZ_PDg5=_verixYn22pHcYg@mail.gmail.com>
From: David Abdurachmanov <david.abdurachmanov@gmail.com>
Date: Fri, 31 Jan 2020 14:20:42 +0100
Message-ID: <CAEn-LTqLD1Vz56BXLS-6+f_fiXG8WE1=Diot4uH7bXTdryZr3Q@mail.gmail.com>
Subject: Re: [PATCH] riscv: Add gpio and pwmleds to
 DTS(/arch/riscv/boot/dts/sifive/)
To: JaeJoon Jung <rgbi3307@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200131_052120_908781_CE27A40F 
X-CRM114-Status: GOOD (  28.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [david.abdurachmanov[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-riscv <linux-riscv@lists.infradead.org>,
 Anup Patel <Anup.Patel@wdc.com>, Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, Jan 30, 2020 at 6:20 PM JaeJoon Jung <rgbi3307@gmail.com> wrote:
>
> Hello David Abdurachmanov,
> Thanks to your deep opinions,
> but it's not that important, but there are things to check.
> If you apply below DTS, It works all fine without source modification.
> I think that you are missing the active-low = <1> and

Everything works fine for me as-is, but I am using the old (non-upstream)
GPIO driver right now. I am rebasing to a new one.

> linux,default-trigger = "heartbeat"...

The idea is not to do that (even if it's documented in SiFive Unleashed
Manual). We leave the decision of triggers to udev rules (distro) and a user.
You can change the trigger via sysfs knobs as a user (I tried it).

Without these entries you don't have those PWM LEDs available on sysfs
for udev/user to configure triggers.

Just reminder again. We just upstream the fact that PWM LEDs exist on
Unleashed, but not what they do. By default they do nothing until configured
by udev rules (distro) or  a user (e.g. via sysfs knobs directly).

Example rules I use:

SUBSYSTEM=="leds", KERNEL=="green:d3", ATTR{link}="1", ATTR{tx}="1",
ATTR{rx}="1", ATTR{device_name}="eth0"

This does require having PWM LEDs in DTS.

david

>
> The following setting is not set by default, but it works well if you set it.
> CONFIG_PWM_SIFIVE
> CONFIG_NEW_LEDS
> CONFIG_LEDS_PWM
> CONFIG_LEDS_CLASS
> CONFIG_LEDS_TRIGGERS
> CONFIG_LEDS_TRIGGER_HEARTBEAT
>
> --- a/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
> +++ b/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
>
>         cpus {
> @@ -41,6 +41,39 @@
>                 clock-frequency = <RTCCLK_FREQ>;
>                 clock-output-names = "rtcclk";
>         };
> +
> +
> +        pwmleds {
> +                compatible = "pwm-leds";
> +                heartbeat {
> +                        label = "led1";
> +                        max-brightness = <255>;
> +                        active-low = <1>;
> +                        pwms = <&pwm0 0 1000000 0>;
> +                        linux,default-trigger = "heartbeat";
> +                };
> +                mtd {
> +                        label = "led2";
> +                        max-brightness = <255>;
> +                        active-low = <1>;
> +                        pwms = <&pwm0 1 1000000 0>;
> +                        linux,default-trigger = "mtd";
> +                };
> +                netdev {
> +                        label = "led3";
> +                        max-brightness = <255>;
> +                        active-low = <1>;
> +                        pwms = <&pwm0 2 1000000 0>;
> +                        linux,default-trigger = "netdev";
> +                };
> +                panic {
> +                        label = "led4";
> +                        max-brightness = <255>;
> +                        active-low = <1>;
> +                        pwms = <&pwm0 3 1000000 0>;
> +                        linux,default-trigger = "panic";
> +                };
> +        };
>  };
>
> And I think that the simpler the name, the better.
> labels are displayed at /sys/class/leds and user can access and control it here.
>
> RISCV-FU540:/sys/class/leds# pwd
> /sys/class/leds
> RISCV-FU540:/sys/class/leds# ll
> total 0
> drwxr-xr-x    2 root     root             0 Jan  1 00:00 ./
> drwxr-xr-x   33 root     root             0 Jan  1 00:00 ../
> lrwxrwxrwx    1 root     root             0 Jan  1 00:00 led1 ->
> ../../devices/platform/pwmleds/leds/led1/
> lrwxrwxrwx    1 root     root             0 Jan  1 00:00 led2 ->
> ../../devices/platform/pwmleds/leds/led2/
> lrwxrwxrwx    1 root     root             0 Jan  1 00:00 led3 ->
> ../../devices/platform/pwmleds/leds/led3/
> lrwxrwxrwx    1 root     root             0 Jan  1 00:00 led4 ->
> ../../devices/platform/pwmleds/leds/led4/
>
> RISCV-FU540:/sys/class/leds# cd led1
> RISCV-FU540:/sys/class/leds/led1# ll
> total 0
> drwxr-xr-x    2 root     root             0 Jan  1 00:00 ./
> drwxr-xr-x    6 root     root             0 Jan  1 00:00 ../
> -rw-r--r--    1 root     root          4096 Jan  1 00:00 brightness
> lrwxrwxrwx    1 root     root             0 Jan  1 00:00 device ->
> ../../../pwmleds/
> -r--r--r--    1 root     root          4096 Jan  1 00:00 max_brightness
> lrwxrwxrwx    1 root     root             0 Jan  1 00:00 subsystem ->
> ../../../../../class/leds/
> -rw-r--r--    1 root     root             0 Jan  1 00:00 trigger
> -rw-r--r--    1 root     root          4096 Jan  1 00:00 uevent
>
> Yours,
> JaeJoon Jung
>
>
> On Fri, 31 Jan 2020 at 01:14, David Abdurachmanov
> <david.abdurachmanov@gmail.com> wrote:
> >
> > On Thu, Jan 30, 2020 at 7:24 AM JaeJoon Jung <rgbi3307@gmail.com> wrote:
> > >
> > > I agree with you because LEDs are user defined using method.
> > >
> > > And, I am sorry about that I confirmed lately below posted by Yash.
> > >
> > > https://lore.kernel.org/linux-riscv/mhng-cb360722-bdb6-4cf7-9fa7-1d92f6b6bbfa@palmerdabbelt-glaptop1/T/#madb19f55bac11a9a675b1ca73ca3f0c2d88c57cf
> > >
> > > It is helpful for me and I am testing it.
> > > If I find a bug, I am going to share about it.
> > >
> > > Thanks a lot, Have a nice day.
> > >
> > > Yours,
> > > JaeJoon Jung
> > >
> > > On Thu, 30 Jan 2020 at 12:35, Paul Walmsley <paul.walmsley@sifive.com> wrote:
> > > >
> > > > On Tue, 21 Jan 2020, JaeJoon Jung wrote:
> > > >
> > > > > I added below DTS to act gpio and pwmleds for SiFive FU540 Unleashed board.
> > > > >
> > > > > diff --git a/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
> > > > > b/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
> > > > > index a2e3d54e830c..b03bf570020c 100644
> > > > > --- a/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
> > > > > +++ b/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
> > > > >
> > > > > +                gpio0: gpio@10060000 {
> > > > > +                        compatible = "sifive,fu540-c000-gpio", "sifive,gpio0";
> > > > > +                        reg = <0x0 0x10060000 0x0 0x1000>;
> > > > > +                        reg-names = "control";
> > > > > +                        gpio-controller;
> > > > > +                        #gpio-cells = <2>;
> > > > > +                        ngpios = <16>;
> > > > > +                        interrupt-controller;
> > > > > +                        #interrupt-cells = <2>;
> > > > > +                        interrupt-parent = <&plic0>;
> > > > > +                        interrupts = <15 16 17 18 19 20 21 22 23 24
> > > > > 25 26 27 28 29 30>;
> > > > > +                        status = "disabled";
> > > > > +                };
> > > >
> > > > Yash posted this a while ago:
> > > >
> > > > https://lore.kernel.org/linux-riscv/mhng-cb360722-bdb6-4cf7-9fa7-1d92f6b6bbfa@palmerdabbelt-glaptop1/T/#madb19f55bac11a9a675b1ca73ca3f0c2d88c57cf
> > > >
> > > >
> > > > >
> > > > > diff --git a/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
> > > > > b/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
> > > > > index 88cfcb96bf23..f3f55dbbf737 100644
> > > > > --- a/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
> > > > > +++ b/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
> > > > >
> > > > >         cpus {
> > > > > @@ -41,6 +41,39 @@
> > > > >                 clock-frequency = <RTCCLK_FREQ>;
> > > > >                 clock-output-names = "rtcclk";
> > > > >         };
> > > > > +
> > > > > +
> > > > > +        pwmleds {
> > > > > +                compatible = "pwm-leds";
> > > > > +                heartbeat {
> > > > > +                        label = "led1";
> > > > > +                        max-brightness = <255>;
> > > > > +                        active-low = <1>;
> > > > > +                        pwms = <&pwm0 0 7812500 0>;
> > > > > +                        linux,default-trigger = "heartbeat";
> > > > > +                };
> > > > > +                mtd {
> > > > > +                        label = "led2";
> > > > > +                        max-brightness = <255>;
> > > > > +                        active-low = <1>;
> > > > > +                        pwms = <&pwm0 1 7812500 0>;
> > > > > +                        linux,default-trigger = "mtd";
> > > > > +                };
> > > > > +                netdev {
> > > > > +                        label = "led3";
> > > > > +                        max-brightness = <255>;
> > > > > +                        active-low = <1>;
> > > > > +                        pwms = <&pwm0 2 7812500 0>;
> > > > > +                        linux,default-trigger = "netdev";
> > > > > +                };
> > > > > +                panic {
> > > > > +                        label = "led4";
> > > > > +                        max-brightness = <255>;
> > > > > +                        active-low = <1>;
> > > > > +                        pwms = <&pwm0 3 7812500 0>;
> > > > > +                        linux,default-trigger = "panic";
> > > > > +                };
> > > > > +        };
> > > > >  };
> > > >
> > > > I don't think it's good to add these pwmleds to the default board DTS
> > > > file.  I realize that many upstream ARM development boards have added this
> > > > type of configuration, but it gets in the way of reusing this DT file when
> > > > integrators wish to have the LEDs used for different purposes.  If the
> > > > Unleashed silkscreen had text on it describing the LEDs as having these
> > > > specific functions, or if Unleashed was sold in a case with similar
> > > > markings on the outside, it'd be a different story, and then a change like
> > > > the above could make sense.
> >
> > I think, there is a middle solution. On SiFive Unleashed PWM LEDs still exist.
> > So let's define those LEDs, but disable them (i.e. no default trigger). In that
> > case user has an options to write udev rules to setup those PWM LEDs as
> > he/she likes. I already use udev rule for netdev LED configuration as today
> > DTS does not provide options to configure it [within DTS] (patch
> > posted in 2019).
> >
> > It would look something like below (not tested). We use labels from PCB and
> > schematics, but do not assign any default functions/triggers. Once the
> > distro boots
> > udev rules will set default triggers and do required configuration.
> >
> > ---
> >  .../riscv/boot/dts/sifive/hifive-unleashed-a00.dts | 27 ++++++++++++++++++++++
> >  1 file changed, 27 insertions(+)
> >
> > diff --git a/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
> > b/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
> > index 828f406..eb793b5 100644
> > --- a/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
> > +++ b/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
> > @@ -26,6 +26,33 @@
> >         };
> >
> >         soc {
> > +               pwmleds {
> > +                       compatible = "pwm-leds";
> > +                       d1 {
> > +                               label = "green:d1";
> > +                               pwms = <&pwm0 0 2000000 0>;
> > +                               max-brightness = <255>;
> > +                               linux,default-trigger = "none";
> > +                       };
> > +                       d2 {
> > +                               label = "green:d2";
> > +                               pwms = <&pwm0 1 2000000 0>;
> > +                               max-brightness = <255>;
> > +                               linux,default-trigger = "none";
> > +                       };
> > +                       d3 {
> > +                               label = "green:d3";
> > +                               pwms = <&pwm0 2 2000000 0>;
> > +                               max-brightness = <255>;
> > +                               linux,default-trigger = "none";
> > +                       };
> > +                       d4 {
> > +                               label = "green:d4";
> > +                               pwms = <&pwm0 3 2000000 0>;
> > +                               max-brightness = <255>;
> > +                               linux,default-trigger = "none";
> > +                       };
> > +               };
> >         };
> >
> >         hfclk: hfclk {
> > --
> > 2.7.4

