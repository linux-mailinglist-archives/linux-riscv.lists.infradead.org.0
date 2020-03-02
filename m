Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26BB9175273
	for <lists+linux-riscv@lfdr.de>; Mon,  2 Mar 2020 05:07:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jC1nmcpTSmRaAd96e3AZnkjJ7PYG/dQnWS+NxZB8y14=; b=NrOr7UKwN2QOj2buxJrbn32EN
	XD9a0Agw9Q5UD2Aanwqfj9mSzt6+ZzbJ6M/Yy4PoCqWIzucApqnnS/JDfR9Xbl5oCY46pDsMn86r6
	3j2wdM1WpZRfL+pghK8/wfSigkNZkwgEv+t7rQa5EZHTtZ7siNl/Co+hDOX7Tmg3D8/7NVu4WBL36
	OOVTFA/FBK5nU56AaaOizYtQB/GdUdpp9Y8em6xIyFRMNKHMMhmnZfFOT4Lc64SM3lpBUd/vNZbYD
	nVEmYUPhodZtv+dcPoj0a8G+o1C8QH/fhKxD6cdSv9yX4k1c8sYzje8uOGPwX577Xhn8Lu0KO7TAs
	Pkgu0MrPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8cM7-0007Qk-7e; Mon, 02 Mar 2020 04:06:59 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8cM3-0007Q6-Sy
 for linux-riscv@lists.infradead.org; Mon, 02 Mar 2020 04:06:57 +0000
Received: by mail-wr1-x443.google.com with SMTP id e10so9265718wrr.10
 for <linux-riscv@lists.infradead.org>; Sun, 01 Mar 2020 20:06:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=jC1nmcpTSmRaAd96e3AZnkjJ7PYG/dQnWS+NxZB8y14=;
 b=MkYLjN4vHjjRCpFUPIyFMtJdxXISMBBViLxXKulDDW3rfw5jGudGCII6yNVs4zLlzD
 ZdDrAXfUbcCA96M05M55z/VD974mJg3t/4Eachv/etWsHbRjek8+d6IX56V9GiDv7O0e
 O235oiGFNHJs2fhYujxiy75rrQ8qXXiyuBDnoNIqdeK0b5/XqA8D7WUVksWWz9WPjlEq
 C4XnoKQBqtR8NOCshUHRcHrGMq9ivjg6AQzy26pg9QC1fa3/2LRL/+GoMwB8rf3GUKp/
 EmdS/H0UeeA2DzRP8FM5ypEESc4u36oz2vjdQxwAqPu2WZimErD1Vuuubm29dBVJR10L
 oDUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=jC1nmcpTSmRaAd96e3AZnkjJ7PYG/dQnWS+NxZB8y14=;
 b=ipEfA1qCiiN1EmN+ukLNhwxadetio1HhcIolWLqtkhquqvQKXQfKbnEYA+vlRorCBS
 9onC/Rp1Kz0CsnEEJNzQudw43ufXZQW0UHQIV1YPjpFDvMKwVgfbnVmcmtVNPNiK/o54
 PGKtjvO1cCTVXJy4U/rb94N7GxepAZpelXRymqW3q68BEYrW+KsoS6pTrEVgVux6k3lZ
 HFDOrUYfM61iCigA6aRdAntu13jjKc3LmQS7unIM9KTHCJEQAINd7+0Me+/NW4lbE8yv
 AacavR9gh9PjJ6uZ2zeNEgrc+FewviTdGi39o63RLdF0E7q1NSd+UdUyUGuLIXQkVh1Q
 MgVQ==
X-Gm-Message-State: APjAAAVTvJzeQyQ4j9G2QlI4eWbO7VoV+YEhCeaF2gYiPTSvrw7zPJtM
 jsqoHGkn+dukIV2iJEftibpotzLPOB0FRudj4LSDEvxy/J74Rw==
X-Google-Smtp-Source: APXvYqydtnYAZILt9VdUUTiLnTVeiVkn2WSl/oCt9+LceTsfZ2DKVALb+aJ6uRBd4y5MYz/gAHmVIMZz5RooB2FSsJg=
X-Received: by 2002:adf:a512:: with SMTP id i18mr15334883wrb.61.1583122013738; 
 Sun, 01 Mar 2020 20:06:53 -0800 (PST)
MIME-Version: 1.0
References: <20200212103432.660256-1-damien.lemoal@wdc.com>
 <20200212103432.660256-9-damien.lemoal@wdc.com>
In-Reply-To: <20200212103432.660256-9-damien.lemoal@wdc.com>
From: Anup Patel <anup@brainfault.org>
Date: Mon, 2 Mar 2020 09:36:42 +0530
Message-ID: <CAAhSdy2sP5L2ijtOC3wcYZVcf=0KfAobHzKC+CrAYLvmAO9cTg@mail.gmail.com>
Subject: Re: [PATCH 08/10] riscv: Add Kendryte K210 device tree
To: Damien Le Moal <damien.lemoal@wdc.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200301_200655_940255_A13E6A04 
X-CRM114-Status: GOOD (  16.76  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-riscv <linux-riscv@lists.infradead.org>,
 Anup Patel <Anup.Patel@wdc.com>, Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, Feb 12, 2020 at 4:05 PM Damien Le Moal <damien.lemoal@wdc.com> wrote:
>
> Add a generic device tree for Kendryte K210 SoC based boards. This (for
> now) very simple device tree works for the Kendryte KD233 development
> board, the Sipeed MAIX M1 Dock based boards and the Sipeed MAIXDUINO
> board.
>
> Signed-off-by: Damien Le Moal <damien.lemoal@wdc.com>
> ---
>  arch/riscv/boot/dts/Makefile           |   1 +
>  arch/riscv/boot/dts/kendryte/Makefile  |   2 +
>  arch/riscv/boot/dts/kendryte/k210.dts  |  23 +++++
>  arch/riscv/boot/dts/kendryte/k210.dtsi | 123 +++++++++++++++++++++++++
>  4 files changed, 149 insertions(+)
>  create mode 100644 arch/riscv/boot/dts/kendryte/Makefile
>  create mode 100644 arch/riscv/boot/dts/kendryte/k210.dts
>  create mode 100644 arch/riscv/boot/dts/kendryte/k210.dtsi
>
> diff --git a/arch/riscv/boot/dts/Makefile b/arch/riscv/boot/dts/Makefile
> index 0bf2669aa12d..87815557f2db 100644
> --- a/arch/riscv/boot/dts/Makefile
> +++ b/arch/riscv/boot/dts/Makefile
> @@ -3,4 +3,5 @@ ifneq ($(CONFIG_BUILTIN_DTB_SOURCE),"")
>  obj-$(CONFIG_USE_BUILTIN_DTB) += $(patsubst "%",%,$(CONFIG_BUILTIN_DTB_SOURCE)).dtb.o
>  else
>  subdir-y += sifive
> +subdir-y += kendryte
>  endif
> diff --git a/arch/riscv/boot/dts/kendryte/Makefile b/arch/riscv/boot/dts/kendryte/Makefile
> new file mode 100644
> index 000000000000..815444e69e89
> --- /dev/null
> +++ b/arch/riscv/boot/dts/kendryte/Makefile
> @@ -0,0 +1,2 @@
> +# SPDX-License-Identifier: GPL-2.0
> +dtb-$(CONFIG_SOC_KENDRYTE) += k210.dtb
> diff --git a/arch/riscv/boot/dts/kendryte/k210.dts b/arch/riscv/boot/dts/kendryte/k210.dts
> new file mode 100644
> index 000000000000..0d1f28fce6b2
> --- /dev/null
> +++ b/arch/riscv/boot/dts/kendryte/k210.dts
> @@ -0,0 +1,23 @@
> +// SPDX-License-Identifier: GPL-2.0+
> +/*
> + * Copyright (C) 2020 Western Digital Corporation or its affiliates.
> + */
> +
> +/dts-v1/;
> +
> +#include "k210.dtsi"
> +
> +/ {
> +       model = "Kendryte K210 generic";
> +       compatible = "kendryte,k210";
> +
> +       chosen {
> +               bootargs = "earlycon console=ttySIF0";
> +               stdout-path = "serial0";
> +       };
> +};
> +
> +&uarths0 {
> +       status = "okay";
> +};
> +
> diff --git a/arch/riscv/boot/dts/kendryte/k210.dtsi b/arch/riscv/boot/dts/kendryte/k210.dtsi
> new file mode 100644
> index 000000000000..4b9eeabb07f7
> --- /dev/null
> +++ b/arch/riscv/boot/dts/kendryte/k210.dtsi
> @@ -0,0 +1,123 @@
> +// SPDX-License-Identifier: GPL-2.0+
> +/*
> + * Copyright (C) 2019 Sean Anderson <seanga2@gmail.com>
> + * Copyright (C) 2020 Western Digital Corporation or its affiliates.
> + */
> +
> +/ {
> +       /*
> +        * Although the K210 is a 64-bit CPU, the address bus is only 32-bits
> +        * wide, and the upper half of all addresses is ignored.
> +        */
> +       #address-cells = <1>;
> +       #size-cells = <1>;
> +       compatible = "kendryte,k210";
> +
> +       aliases {
> +               serial0 = &uarths0;
> +       };
> +
> +       clocks {
> +               in0: oscillator {
> +                       compatible = "fixed-clock";
> +                       #clock-cells = <0>;
> +                       clock-frequency = <26000000>;
> +               };
> +       };

Move the "clocks" DT node just before "soc" DT node. The usual (unsaid)
convention is to keep "cpus", "memory", "aliases", and "chosen" DT nodes
before everything else.

> +
> +       cpus {
> +               #address-cells = <1>;
> +               #size-cells = <0>;
> +               timebase-frequency = <7800000>;
> +               cpu0: cpu@0 {
> +                       device_type = "cpu";
> +                       reg = <0>;
> +                       compatible = "riscv";
> +                       riscv,isa = "rv64imafdc";
> +                       mmu-type = "none";
> +                       i-cache-size = <0x8000>;
> +                       i-cache-block-size = <64>; /* bogus */
> +                       d-cache-size = <0x8000>;
> +                       d-cache-block-size = <64>; /* bogus */
> +                       clocks = <&sysctl 0>;
> +                       clock-frequency = <390000000>;
> +                       cpu0_intc: interrupt-controller {
> +                               #interrupt-cells = <1>;
> +                               interrupt-controller;
> +                               compatible = "riscv,cpu-intc";
> +                       };
> +               };
> +               cpu1: cpu@1 {
> +                       device_type = "cpu";
> +                       reg = <1>;
> +                       compatible = "riscv";
> +                       riscv,isa = "rv64imafdc";
> +                       mmu-type = "none";
> +                       i-cache-size = <0x8000>;
> +                       i-cache-block-size = <64>; /* bogus */
> +                       d-cache-size = <0x8000>;
> +                       d-cache-block-size = <64>; /* bogus */
> +                       clocks = <&sysctl 0>;
> +                       clock-frequency = <390000000>;
> +                       cpu1_intc: interrupt-controller {
> +                               #interrupt-cells = <1>;
> +                               interrupt-controller;
> +                               compatible = "riscv,cpu-intc";
> +                       };
> +               };
> +       };
> +
> +       sram0: memory@80000000 {
> +               device_type = "memory";
> +               reg = <0x80000000 0x400000>;
> +       };
> +
> +       sram1: memory@80400000 {
> +               device_type = "memory";
> +               reg = <0x80400000 0x200000>;
> +       };
> +
> +       kpu_sram: memory@80600000 {
> +               device_type = "memory";
> +               reg = <0x80600000 0x200000>;
> +       };

No need to have separate DT node for each RAM bank. This can be
express as single DT node as follows:

sram: memory@80000000 {
        device_type = "memory";
        reg = <0x80000000 0x400000>,
                  <0x80400000 0x200000>,
                  <0x80600000 0x200000>;
};

> +
> +       soc {
> +               #address-cells = <1>;
> +               #size-cells = <1>;
> +               compatible = "kendryte,k210-soc", "simple-bus";
> +               ranges;
> +               interrupt-parent = <&plic0>;
> +
> +               sysctl: sysctl@50440000 {
> +                       compatible = "kendryte,k210-sysctl", "syscon";
> +                       reg = <0x50440000 0x1000>;
> +                       #clock-cells = <1>;
> +               };
> +
> +               clint0: interrupt-controller@2000000 {
> +                       compatible = "riscv,clint0";
> +                       reg = <0x2000000 0xC000>;
> +                       interrupts-extended = <&cpu0_intc 3>,  <&cpu1_intc 3>;
> +                       clocks = <&sysctl 0>;
> +               };
> +
> +               plic0: interrupt-controller@c000000 {
> +                       #interrupt-cells = <1>;
> +                       interrupt-controller;
> +                       compatible = "kendryte,k210-plic0", "riscv,plic0";
> +                       reg = <0xC000000 0x3FFF008>;
> +                       interrupts-extended = <&cpu0_intc 11>, <&cpu0_intc 0xffffffff>,
> +                                             <&cpu1_intc 11>, <&cpu1_intc 0xffffffff>;
> +                       riscv,ndev = <65>;
> +                       riscv,max-priority = <0x07>;
> +               };
> +
> +               uarths0: serial@38000000 {
> +                       compatible = "kendryte,k210-uart0", "sifive,uart0";
> +                       reg = <0x38000000 0x20>;
> +                       interrupts = <33>;
> +                       clocks = <&sysctl 0>;
> +               };
> +       };
> +};
> --
> 2.24.1
>
>

Regards,
Anup

