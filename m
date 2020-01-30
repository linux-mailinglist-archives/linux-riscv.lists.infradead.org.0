Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A1E2914D660
	for <lists+linux-riscv@lfdr.de>; Thu, 30 Jan 2020 07:24:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=8XSmM59COl7txK2QOvhCU1JROSeFvf6jMIPpsoztfxQ=; b=RB4W42xu2me23WlGybqdernsL
	a5kqo4cd8cHlXdbZdcstaj5DSeUBEOhf08npR28qtwZ5iB3dKAHItHNB+XUvYb7M6FragvlDCwaJT
	DrlP9dP7Yc/O5s0FTxH94k2/KZb+eKmtUELaZwyNHtkKrE66pG7JGHbyK5gr9BGISumciHEFxiu8o
	rT1Ro6LlcBPq2geQvcsNgK1HxDTbAc8QFanzOehbLh/YYZ9cTvRwzV5LvuqK3y55FABr1ihYfrlZ2
	wXNbrbfMhawEgj3qZEJ5ufkwsiGMk0P0sjALJNOzOQsYa2sr9vS1czm/LbFQL/lCHNEFVfpM4fr77
	3q1aQ6Nug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ix3FA-0003rP-Lk; Thu, 30 Jan 2020 06:24:00 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ix3F8-0003qt-2z
 for linux-riscv@lists.infradead.org; Thu, 30 Jan 2020 06:23:59 +0000
Received: by mail-pg1-x541.google.com with SMTP id k3so1111769pgc.3
 for <linux-riscv@lists.infradead.org>; Wed, 29 Jan 2020 22:23:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=8XSmM59COl7txK2QOvhCU1JROSeFvf6jMIPpsoztfxQ=;
 b=EhT0NN42A+S0CP81IB8cdOlCK8Cy8ucfF2LjQjUSHdYthrEp7VonHi4NBepGt1PbOc
 Zkrlf9sa6nBW6o7Qpy0rJhIihO2XMscmgVgAuIMmoJm04stU7rxZX97MDlv93B1LRL6i
 ivg22saYT5UuCLK1oENqoucuS1qg10YOsFPe828Ueui7M+BKd1JWBO+gN6dee+dST8PX
 aDyWCyGXBZOPTLua5GopZRcpVcOXw4bYlyn6EiNkl/m/r1DSSV8p45e5TYnph9/Kg5zp
 0IxiNOqeNvOSQjfkUQSw0J+trX7y7k/tblKsrx/AZGvC/Zta22m76rpTiVuIk4xbKnSZ
 0w/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=8XSmM59COl7txK2QOvhCU1JROSeFvf6jMIPpsoztfxQ=;
 b=nmoNhMkPZkS7fDnpNDKavA0yvOKnXmGONUwyOGm4noi+0yVtkcwIuUWShVfm3h9mG6
 O2Ert4jfIll6Iuxg4EpvWvDlVvG7xmQj7POtau6BgFgF5sgNj9lDLhw/nnQR//kz9geM
 qBQSsahFgHYoHB6tQslma+NfHeQ+s/aGAv7M+3fCh7mYdmoRJleNSbBfTh1A1YA+O5DW
 /e0mLxN+y50Gi2rVnBRiwnb9UywjPshhnD/PBggXrVG7U3otWLKxecxxOWLm18qJcwx9
 c9jJiia8Cyy1cpFemj4lFIesW1aW8oylUslzSoCI8970LHduNNOgTESM0uUWVI7qMQ40
 cXjg==
X-Gm-Message-State: APjAAAXKshmFK1OkEHfHRzDYMjTG/Yitr9oUmHd5+cj+X0fmWUfpsr4/
 NTqzAG2eSosTYyDO5UL/ITAaKHB1FplEKaCVmqo=
X-Google-Smtp-Source: APXvYqxaHY1tadbcMlZi96tkShF/+XeSsOzRHlB0alwG40nlcdPRmjf72uj1cFdwa4m7YZI3cJWOS+PYeezHwWm+WFM=
X-Received: by 2002:aa7:8bcd:: with SMTP id s13mr3533157pfd.234.1580365436889; 
 Wed, 29 Jan 2020 22:23:56 -0800 (PST)
MIME-Version: 1.0
References: <CAHOvCC5aEc=p_6Yxkyr8n9BXZug_-NA_CJswu8vtkM8aOBhWvg@mail.gmail.com>
 <alpine.DEB.2.21.9999.2001291930040.1008396@viisi.sifive.com>
In-Reply-To: <alpine.DEB.2.21.9999.2001291930040.1008396@viisi.sifive.com>
From: JaeJoon Jung <rgbi3307@gmail.com>
Date: Thu, 30 Jan 2020 15:23:45 +0900
Message-ID: <CAHOvCC6MwS27mOkAptnFTs1MrSZ_bZOTE-sLdd4riE3A=Y5QLA@mail.gmail.com>
Subject: Re: [PATCH] riscv: Add gpio and pwmleds to
 DTS(/arch/riscv/boot/dts/sifive/)
To: Paul Walmsley <paul.walmsley@sifive.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200129_222358_138443_C8818003 
X-CRM114-Status: GOOD (  13.23  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
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
 Anup Patel <Anup.Patel@wdc.com>, Palmer Dabbelt <palmer@dabbelt.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

I agree with you because LEDs are user defined using method.

And, I am sorry about that I confirmed lately below posted by Yash.

https://lore.kernel.org/linux-riscv/mhng-cb360722-bdb6-4cf7-9fa7-1d92f6b6bbfa@palmerdabbelt-glaptop1/T/#madb19f55bac11a9a675b1ca73ca3f0c2d88c57cf

It is helpful for me and I am testing it.
If I find a bug, I am going to share about it.

Thanks a lot, Have a nice day.

Yours,
JaeJoon Jung

On Thu, 30 Jan 2020 at 12:35, Paul Walmsley <paul.walmsley@sifive.com> wrote:
>
> On Tue, 21 Jan 2020, JaeJoon Jung wrote:
>
> > I added below DTS to act gpio and pwmleds for SiFive FU540 Unleashed board.
> >
> > diff --git a/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
> > b/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
> > index a2e3d54e830c..b03bf570020c 100644
> > --- a/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
> > +++ b/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
> >
> > +                gpio0: gpio@10060000 {
> > +                        compatible = "sifive,fu540-c000-gpio", "sifive,gpio0";
> > +                        reg = <0x0 0x10060000 0x0 0x1000>;
> > +                        reg-names = "control";
> > +                        gpio-controller;
> > +                        #gpio-cells = <2>;
> > +                        ngpios = <16>;
> > +                        interrupt-controller;
> > +                        #interrupt-cells = <2>;
> > +                        interrupt-parent = <&plic0>;
> > +                        interrupts = <15 16 17 18 19 20 21 22 23 24
> > 25 26 27 28 29 30>;
> > +                        status = "disabled";
> > +                };
>
> Yash posted this a while ago:
>
> https://lore.kernel.org/linux-riscv/mhng-cb360722-bdb6-4cf7-9fa7-1d92f6b6bbfa@palmerdabbelt-glaptop1/T/#madb19f55bac11a9a675b1ca73ca3f0c2d88c57cf
>
>
> >
> > diff --git a/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
> > b/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
> > index 88cfcb96bf23..f3f55dbbf737 100644
> > --- a/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
> > +++ b/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
> >
> >         cpus {
> > @@ -41,6 +41,39 @@
> >                 clock-frequency = <RTCCLK_FREQ>;
> >                 clock-output-names = "rtcclk";
> >         };
> > +
> > +
> > +        pwmleds {
> > +                compatible = "pwm-leds";
> > +                heartbeat {
> > +                        label = "led1";
> > +                        max-brightness = <255>;
> > +                        active-low = <1>;
> > +                        pwms = <&pwm0 0 7812500 0>;
> > +                        linux,default-trigger = "heartbeat";
> > +                };
> > +                mtd {
> > +                        label = "led2";
> > +                        max-brightness = <255>;
> > +                        active-low = <1>;
> > +                        pwms = <&pwm0 1 7812500 0>;
> > +                        linux,default-trigger = "mtd";
> > +                };
> > +                netdev {
> > +                        label = "led3";
> > +                        max-brightness = <255>;
> > +                        active-low = <1>;
> > +                        pwms = <&pwm0 2 7812500 0>;
> > +                        linux,default-trigger = "netdev";
> > +                };
> > +                panic {
> > +                        label = "led4";
> > +                        max-brightness = <255>;
> > +                        active-low = <1>;
> > +                        pwms = <&pwm0 3 7812500 0>;
> > +                        linux,default-trigger = "panic";
> > +                };
> > +        };
> >  };
>
> I don't think it's good to add these pwmleds to the default board DTS
> file.  I realize that many upstream ARM development boards have added this
> type of configuration, but it gets in the way of reusing this DT file when
> integrators wish to have the LEDs used for different purposes.  If the
> Unleashed silkscreen had text on it describing the LEDs as having these
> specific functions, or if Unleashed was sold in a case with similar
> markings on the outside, it'd be a different story, and then a change like
> the above could make sense.
>
>
> - Paul

