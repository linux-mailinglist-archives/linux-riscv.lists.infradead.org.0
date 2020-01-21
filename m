Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73136144311
	for <lists+linux-riscv@lfdr.de>; Tue, 21 Jan 2020 18:21:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Jgopk8tpLQguSeV7AzVwjMSuggVw7iVUuj+W358BhPA=; b=CN4udKD41w2moOdOeBiwEXRlE
	2GW2vBRPIRtN09n82M8leAsOXJNscY+ggDBtvLjsBcHb9nauioYetzrFiMfYIZbnlh2ig959uBB7m
	uPn/hFvDiAFra/I+GL2+CMmt+welNvvXH/xNGLcXYfLJx61NahFlagI4XdU1eiy7H/8GRxDl8TWJM
	hNpwn5lmdQfESh8MSsgvmtwZ1vH/ADMkOrwyOIB4BEPM3CyQcT+Qnevvspa/eyNRXuwUSW1ZIiJiS
	H4UyccTy3eMn4dWFtMOHMtwvkGBezIgnrCB9i0pnb84U3PkB3ccKNHIjNYi94WcN9BF1CrOpRxf13
	mD33RXrFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itxDV-0003LI-Df; Tue, 21 Jan 2020 17:21:29 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itxDO-0003A4-PJ
 for linux-riscv@lists.infradead.org; Tue, 21 Jan 2020 17:21:27 +0000
Received: by mail-wr1-x441.google.com with SMTP id g17so4187054wro.2
 for <linux-riscv@lists.infradead.org>; Tue, 21 Jan 2020 09:21:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Jgopk8tpLQguSeV7AzVwjMSuggVw7iVUuj+W358BhPA=;
 b=oJk4tVkrBLFrojK5uhBu4epDEbOy3U7QmxRh7ZCa+sErUjs/KTY5JB+CEwdnD2jVuC
 hgKh2t93nvDcurFnjtAGD125+4V3ET1sJdk7p2e41arz8QsFfhMXyFBpLJA5qLoL1Blc
 ib0meguNcHDWyheI0C1Jj3akRIT68GnCxRNORq/8jFeCsHDJVmnklTVTtf0idqo85+Ql
 ZATFn2c2efzi/qf2U4ZKgZo5/EGHtsqI4iXMW/oZk18voMeZbLwVcBTHI6CYIS771O0b
 jxrOopsHLtJ6GBpBsxHBHwvmqy3gt+MPqnbDVWXicGTbNd5TrrUaPMjeDnuktCn/yHK1
 WhtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Jgopk8tpLQguSeV7AzVwjMSuggVw7iVUuj+W358BhPA=;
 b=h9rzSujH6pW1wvacdka6O35LUY+XdJzAagx48Bhhaa6J6aFfpePvBqNBho805zNJ3R
 lfom6fBriW3rSrGEfuVjthxHIX5AmfUeBb7eiMWaSD3/sl1kBL6jzfI7CtQX3jlKpnhn
 UwwUG5FPYemgfq/V8viG96EIoZlT+WlwjAqE+1kJ9WdDihfbKab9MCvRyHCG4EhoZXXI
 gACdWvj+b6TzJLYc9V79zSqrq+V4sBo4GkDF781TVqj+diWs1PANyHS12yBA/+ox5nie
 VDAaQAiaaWVm/vSbepSxK48A4Hi+vY+kXCNY2y+KUo4aJZxJY5Wi+Ia80RL0sdzFJwVQ
 v+XQ==
X-Gm-Message-State: APjAAAVk5BAS0etaoyGT6dj9rpECeZ6ZuLyo3TpPY++KGcNhl3wgC8PH
 mFIu8jnz1RHw2p4cgs9fEoowHZgDEKe4zU8LuPM=
X-Google-Smtp-Source: APXvYqxN/5LtqJ6xd0mYRlaHFWnzrII1DAj3IdtAlpfUwKeZBuDx168YleQyEVXuDVkSNB5l77DoYY4neIVyIuR2KBQ=
X-Received: by 2002:a5d:6a0f:: with SMTP id m15mr6597182wru.40.1579627280480; 
 Tue, 21 Jan 2020 09:21:20 -0800 (PST)
MIME-Version: 1.0
References: <CAHOvCC5aEc=p_6Yxkyr8n9BXZug_-NA_CJswu8vtkM8aOBhWvg@mail.gmail.com>
In-Reply-To: <CAHOvCC5aEc=p_6Yxkyr8n9BXZug_-NA_CJswu8vtkM8aOBhWvg@mail.gmail.com>
From: David Abdurachmanov <david.abdurachmanov@gmail.com>
Date: Tue, 21 Jan 2020 19:20:44 +0200
Message-ID: <CAEn-LTrqPXeZcHYGc=FgyteDdZZn+pPeHttuOSxaPu1EfKPR7A@mail.gmail.com>
Subject: Re: [PATCH] riscv: Add gpio and pwmleds to
 DTS(/arch/riscv/boot/dts/sifive/)
To: JaeJoon Jung <rgbi3307@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_092122_823810_58E65E3F 
X-CRM114-Status: GOOD (  13.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [david.abdurachmanov[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

I have a similar patch, but still using old GPIO driver (non
upstream). See comments below.

On Tue, Jan 21, 2020 at 8:59 AM JaeJoon Jung <rgbi3307@gmail.com> wrote:
>
> I added below DTS to act gpio and pwmleds for SiFive FU540 Unleashed board.
>
> diff --git a/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
> b/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
> index a2e3d54e830c..b03bf570020c 100644
> --- a/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
> +++ b/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
>
> +                gpio0: gpio@10060000 {
> +                        compatible = "sifive,fu540-c000-gpio", "sifive,gpio0";
> +                        reg = <0x0 0x10060000 0x0 0x1000>;
> +                        reg-names = "control";
> +                        gpio-controller;
> +                        #gpio-cells = <2>;
> +                        ngpios = <16>;
> +                        interrupt-controller;
> +                        #interrupt-cells = <2>;
> +                        interrupt-parent = <&plic0>;
> +                        interrupts = <15 16 17 18 19 20 21 22 23 24
> 25 26 27 28 29 30>;
> +                        status = "disabled";
> +                };
>
>
> diff --git a/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
> b/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
> index 88cfcb96bf23..f3f55dbbf737 100644
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

Could we have labels based on schematics and prints on PCB?

I use:

label = "green:d1";
label = "green:d2";
label = "green:d3";
label = "green:d4";

> +                        max-brightness = <255>;
> +                        active-low = <1>;
> +                        pwms = <&pwm0 0 7812500 0>;
> +                        linux,default-trigger = "heartbeat";
> +                };
> +                mtd {
> +                        label = "led2";
> +                        max-brightness = <255>;
> +                        active-low = <1>;
> +                        pwms = <&pwm0 1 7812500 0>;
> +                        linux,default-trigger = "mtd";
> +                };
> +                netdev {

Just a quick note. For this to work properly you also need to have udev rule.
I think, there was a patch posted in 2019 to enable netdev
configuration in DTS to avoid having configuration via udev or
similar, but that wasn't merged the last time I checked (late 2019).

See:
[PATCH 4/4] leds: netdev trigger: allow setting initial values in device tree
https://www.spinics.net/lists/netdev/msg557736.html

> +                        label = "led3";
> +                        max-brightness = <255>;
> +                        active-low = <1>;
> +                        pwms = <&pwm0 2 7812500 0>;
> +                        linux,default-trigger = "netdev";
> +                };
> +                panic {

I find that panic PWM LED doesn't actually work for me.
IIUC this might only work for GPIO attached LEDs based on comments I found.
I have this LED remapped for mmc0 activity:

mmc0 {
  label = "green:d4";
  pwms = <&pwm0 3 2000000 0>;
  max-brightness = <255>;
  linux,default-trigger = "mmc0";
};

> +                        label = "led4";
> +                        max-brightness = <255>;
> +                        active-low = <1>;
> +                        pwms = <&pwm0 3 7812500 0>;
> +                        linux,default-trigger = "panic";
> +                };
> +        };
>  };
>
>  &uart0 {
> @@ -94,3 +127,7 @@
>  &pwm1 {
>         status = "okay";
>  };
> +
> +&gpio0 {
> +       status = "okay";
> +};
>
>
> If apply above DTS, the gpio-sifive driver works well without source
> modification.
> drivers/gpio/gpio-sifive.c
> drivers/leds/leds-pwm.c
>
> I have checked below:
>
> led1(D1) is acting well as heartbeat.
>
> RISCV-FU540:/sys/class/leds# pwd
> /sys/class/leds
> RISCV-FU540:/sys/class/leds# ll
> total 0
> drwxr-xr-x    2 root     root             0 Jan  1 00:00 ./
> drwxr-xr-x   32 root     root             0 Jan  1 00:00 ../
> lrwxrwxrwx    1 root     root             0 Jan  1 00:00 led1 ->
> ../../devices/platform/pwmleds/leds/led1/
> lrwxrwxrwx    1 root     root             0 Jan  1 00:00 led2 ->
> ../../devices/platform/pwmleds/leds/led2/
> lrwxrwxrwx    1 root     root             0 Jan  1 00:00 led3 ->
> ../../devices/platform/pwmleds/leds/led3/
> lrwxrwxrwx    1 root     root             0 Jan  1 00:00 led4 ->
> ../../devices/platform/pwmleds/leds/led4/
>
> RISCV-FU540:/sys/class/leds# cd led3
> RISCV-FU540:/sys/class/leds/led3# ll
> total 0
> drwxr-xr-x    2 root     root             0 Jan  1 00:00 ./
> drwxr-xr-x    6 root     root             0 Jan  1 00:00 ../
> -rw-r--r--    1 root     root          4096 Jan  1 00:01 brightness
> lrwxrwxrwx    1 root     root             0 Jan  1 00:00 device ->
> ../../../pwmleds/
> -r--r--r--    1 root     root          4096 Jan  1 00:00 max_brightness
> lrwxrwxrwx    1 root     root             0 Jan  1 00:00 subsystem ->
> ../../../../../class/leds/
> -rw-r--r--    1 root     root          4096 Jan  1 00:00 trigger
> -rw-r--r--    1 root     root          4096 Jan  1 00:00 uevent
> RISCV-FU540:/sys/class/leds/led3# echo 1 > brightness
> RISCV-FU540:/sys/class/leds/led3# echo 127 > brightness
> RISCV-FU540:/sys/class/leds/led3# echo 255 > brightness
>
> leds(D1, D2, D3, D4) are acting well as pwm brightness.
>

