Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FB7614DEAF
	for <lists+linux-riscv@lfdr.de>; Thu, 30 Jan 2020 17:14:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=X/8hE1QB6sfst/+vSpySLmjz7a0I0pH98nWiKXS7wrM=; b=Rfq3DTPeXKoWt8HMOjn05uq9s
	hp3GPaECrbzQW41TWS9ONrAGxto1Q+GCixiU2ECQcJNrM1JoX9O7akAgFNDPzMYyncp+PRRx5xs85
	UBYvLi0pAiGf166R5lbXGviUB+g9B8x+q/t7uwaaRvXioHSW5qXzEhid1TYGGV2w4CSplOG4paXlg
	4d7+qRX9vD0RaTTslCxKmGtnoK/SmwP5arWQr8opTX0Dz/mS93ZtdvCGl8ZwuB1fchIdqT43qPn8C
	vg172jL+tW/T0quAKEXbwWlTVu491VpD9yn9C30nPd7x/fvLeFmtAWRbXc1waeQbxVUTUF2y4yYM1
	/XlkoajIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixCSX-0005Rr-O7; Thu, 30 Jan 2020 16:14:25 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixCST-0005Qo-Qc
 for linux-riscv@lists.infradead.org; Thu, 30 Jan 2020 16:14:23 +0000
Received: by mail-wm1-x343.google.com with SMTP id f129so4942671wmf.2
 for <linux-riscv@lists.infradead.org>; Thu, 30 Jan 2020 08:14:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=X/8hE1QB6sfst/+vSpySLmjz7a0I0pH98nWiKXS7wrM=;
 b=I+VAC4k/9a44dOnSC7UeUci1p/MnBQ6v+Gj/q2F6L6ODr2TZntmd2vSrO+Hoi904U8
 XJVpxq7ARXkHntqYssh9sux1lXKrSEoETP3jQ4paM6X1qqnxDPgyPhIcqhzJHkFe9qib
 ZgaiTkaVreLw3Nqy8rki1RKYIxJ4c87dBR1924huJYdjGbz7FKLGzjuw2QeICBDgD/1/
 0kcuNyfxS/LWHcl6wKTftIu1VSzKwX1UVImGagdAW1kzl71WF8r7jyBpBoCehqjePvxB
 f/Yc11BqEIzaAWCiYW1SmjHUSpVyhB/YCZ6nfVkh4cdUL5T7LwS36BOi+emEX2sb5mAx
 /dQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=X/8hE1QB6sfst/+vSpySLmjz7a0I0pH98nWiKXS7wrM=;
 b=t+1Dn4hI6C6inSaYTRNsJlWAbLTtJ8ni++rL/FIsuqCDQyokBVUX1fpKkpXPxqJhCJ
 OxGL9m3QWKR0RqBU8WR6UFy29SoVJnKlb3sKi2tpGxz4Y5Uiza/JPys/TJlUjbSOEKb7
 wP7EKvX5husgeue3WyNviLGRhTbPLtYiy8Gt4bPgS9nThaHgYmXuVt9fKBdYI3jtFSeM
 YStxyWWqmAEG+jgIL9roEuI3vAjsXU5qYMVjztuTe9RenqQdtft4HS+O/UpsjGvczBin
 qhaiOTxYNkOPvCIfA3rpScSZl4XvygAF9/vsXqBwlToueY4LcdBnFRyyuqk7+TwtVs5f
 ek1g==
X-Gm-Message-State: APjAAAULcf8H0qyKCC5SKIySOB0+L4s76doaJFBYhQsnAKa+uxKzOerd
 MG1FukI3c8J+n3eBQYGTVCxHiyT9prvDX/WXh4c=
X-Google-Smtp-Source: APXvYqxMkAMUzKX1teRKSIXwsx5ixkEllDklGX3PDf+s4Zaow0siI79AzlaOr8NZ3nUDqDPE+Bo1jRpjH1kc9iouSug=
X-Received: by 2002:a7b:c258:: with SMTP id b24mr6712196wmj.140.1580400859770; 
 Thu, 30 Jan 2020 08:14:19 -0800 (PST)
MIME-Version: 1.0
References: <CAHOvCC5aEc=p_6Yxkyr8n9BXZug_-NA_CJswu8vtkM8aOBhWvg@mail.gmail.com>
 <alpine.DEB.2.21.9999.2001291930040.1008396@viisi.sifive.com>
 <CAHOvCC6MwS27mOkAptnFTs1MrSZ_bZOTE-sLdd4riE3A=Y5QLA@mail.gmail.com>
In-Reply-To: <CAHOvCC6MwS27mOkAptnFTs1MrSZ_bZOTE-sLdd4riE3A=Y5QLA@mail.gmail.com>
From: David Abdurachmanov <david.abdurachmanov@gmail.com>
Date: Thu, 30 Jan 2020 17:13:43 +0100
Message-ID: <CAEn-LTpZCdeFYCt6DKrHfp8xcOuUejYXYqJ=wgtXHE8Qf0oRgA@mail.gmail.com>
Subject: Re: [PATCH] riscv: Add gpio and pwmleds to
 DTS(/arch/riscv/boot/dts/sifive/)
To: JaeJoon Jung <rgbi3307@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200130_081421_889655_DCF47243 
X-CRM114-Status: GOOD (  20.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [david.abdurachmanov[at]gmail.com]
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

On Thu, Jan 30, 2020 at 7:24 AM JaeJoon Jung <rgbi3307@gmail.com> wrote:
>
> I agree with you because LEDs are user defined using method.
>
> And, I am sorry about that I confirmed lately below posted by Yash.
>
> https://lore.kernel.org/linux-riscv/mhng-cb360722-bdb6-4cf7-9fa7-1d92f6b6bbfa@palmerdabbelt-glaptop1/T/#madb19f55bac11a9a675b1ca73ca3f0c2d88c57cf
>
> It is helpful for me and I am testing it.
> If I find a bug, I am going to share about it.
>
> Thanks a lot, Have a nice day.
>
> Yours,
> JaeJoon Jung
>
> On Thu, 30 Jan 2020 at 12:35, Paul Walmsley <paul.walmsley@sifive.com> wrote:
> >
> > On Tue, 21 Jan 2020, JaeJoon Jung wrote:
> >
> > > I added below DTS to act gpio and pwmleds for SiFive FU540 Unleashed board.
> > >
> > > diff --git a/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
> > > b/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
> > > index a2e3d54e830c..b03bf570020c 100644
> > > --- a/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
> > > +++ b/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
> > >
> > > +                gpio0: gpio@10060000 {
> > > +                        compatible = "sifive,fu540-c000-gpio", "sifive,gpio0";
> > > +                        reg = <0x0 0x10060000 0x0 0x1000>;
> > > +                        reg-names = "control";
> > > +                        gpio-controller;
> > > +                        #gpio-cells = <2>;
> > > +                        ngpios = <16>;
> > > +                        interrupt-controller;
> > > +                        #interrupt-cells = <2>;
> > > +                        interrupt-parent = <&plic0>;
> > > +                        interrupts = <15 16 17 18 19 20 21 22 23 24
> > > 25 26 27 28 29 30>;
> > > +                        status = "disabled";
> > > +                };
> >
> > Yash posted this a while ago:
> >
> > https://lore.kernel.org/linux-riscv/mhng-cb360722-bdb6-4cf7-9fa7-1d92f6b6bbfa@palmerdabbelt-glaptop1/T/#madb19f55bac11a9a675b1ca73ca3f0c2d88c57cf
> >
> >
> > >
> > > diff --git a/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
> > > b/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
> > > index 88cfcb96bf23..f3f55dbbf737 100644
> > > --- a/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
> > > +++ b/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
> > >
> > >         cpus {
> > > @@ -41,6 +41,39 @@
> > >                 clock-frequency = <RTCCLK_FREQ>;
> > >                 clock-output-names = "rtcclk";
> > >         };
> > > +
> > > +
> > > +        pwmleds {
> > > +                compatible = "pwm-leds";
> > > +                heartbeat {
> > > +                        label = "led1";
> > > +                        max-brightness = <255>;
> > > +                        active-low = <1>;
> > > +                        pwms = <&pwm0 0 7812500 0>;
> > > +                        linux,default-trigger = "heartbeat";
> > > +                };
> > > +                mtd {
> > > +                        label = "led2";
> > > +                        max-brightness = <255>;
> > > +                        active-low = <1>;
> > > +                        pwms = <&pwm0 1 7812500 0>;
> > > +                        linux,default-trigger = "mtd";
> > > +                };
> > > +                netdev {
> > > +                        label = "led3";
> > > +                        max-brightness = <255>;
> > > +                        active-low = <1>;
> > > +                        pwms = <&pwm0 2 7812500 0>;
> > > +                        linux,default-trigger = "netdev";
> > > +                };
> > > +                panic {
> > > +                        label = "led4";
> > > +                        max-brightness = <255>;
> > > +                        active-low = <1>;
> > > +                        pwms = <&pwm0 3 7812500 0>;
> > > +                        linux,default-trigger = "panic";
> > > +                };
> > > +        };
> > >  };
> >
> > I don't think it's good to add these pwmleds to the default board DTS
> > file.  I realize that many upstream ARM development boards have added this
> > type of configuration, but it gets in the way of reusing this DT file when
> > integrators wish to have the LEDs used for different purposes.  If the
> > Unleashed silkscreen had text on it describing the LEDs as having these
> > specific functions, or if Unleashed was sold in a case with similar
> > markings on the outside, it'd be a different story, and then a change like
> > the above could make sense.

I think, there is a middle solution. On SiFive Unleashed PWM LEDs still exist.
So let's define those LEDs, but disable them (i.e. no default trigger). In that
case user has an options to write udev rules to setup those PWM LEDs as
he/she likes. I already use udev rule for netdev LED configuration as today
DTS does not provide options to configure it [within DTS] (patch
posted in 2019).

It would look something like below (not tested). We use labels from PCB and
schematics, but do not assign any default functions/triggers. Once the
distro boots
udev rules will set default triggers and do required configuration.

---
 .../riscv/boot/dts/sifive/hifive-unleashed-a00.dts | 27 ++++++++++++++++++++++
 1 file changed, 27 insertions(+)

diff --git a/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
b/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
index 828f406..eb793b5 100644
--- a/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
+++ b/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
@@ -26,6 +26,33 @@
        };

        soc {
+               pwmleds {
+                       compatible = "pwm-leds";
+                       d1 {
+                               label = "green:d1";
+                               pwms = <&pwm0 0 2000000 0>;
+                               max-brightness = <255>;
+                               linux,default-trigger = "none";
+                       };
+                       d2 {
+                               label = "green:d2";
+                               pwms = <&pwm0 1 2000000 0>;
+                               max-brightness = <255>;
+                               linux,default-trigger = "none";
+                       };
+                       d3 {
+                               label = "green:d3";
+                               pwms = <&pwm0 2 2000000 0>;
+                               max-brightness = <255>;
+                               linux,default-trigger = "none";
+                       };
+                       d4 {
+                               label = "green:d4";
+                               pwms = <&pwm0 3 2000000 0>;
+                               max-brightness = <255>;
+                               linux,default-trigger = "none";
+                       };
+               };
        };

        hfclk: hfclk {
--
2.7.4

