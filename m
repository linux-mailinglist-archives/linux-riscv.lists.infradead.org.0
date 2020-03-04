Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8C1D179929
	for <lists+linux-riscv@lfdr.de>; Wed,  4 Mar 2020 20:45:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Mime-Version:Message-ID:To:From:
	In-Reply-To:Subject:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=3fVbVj1IrATBDErEo1uLC59B5/ucD63uaWNFH+ydCrM=; b=ds31M8gMyBRCGE
	u8A957ntZnmjLE/+QhjbDo1mC+34R/jyrCOMy3+oCocCLZbdOznrXDkMuTjNKm3H06xQ4v1Fxh8Cq
	LTBzQXL0knXHEvbelolniG+Z1Zli1aSiIrVX/ikwttTN523bRWpzk4CMERWVe13WtNLjPxu25joD/
	TjcJEQe2ozo84QL5jlayfy9RsMuqjA8h3Td3cxBgqEnvctArynBr0X/XSUfV95ABQnczcUHQ/09JI
	5I99hbHAt7Y4eYB9eSVFQEA5ZHZ3FP6w1xsIMiROeGh6rEoUhJfTm80esjSOz8ld66dfO2JDDAuzf
	laeRQKCacbUFkdU2w9Mg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9Zwv-0001nS-CL; Wed, 04 Mar 2020 19:44:57 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9Zwq-0001je-VT
 for linux-riscv@lists.infradead.org; Wed, 04 Mar 2020 19:44:55 +0000
Received: by mail-pl1-x644.google.com with SMTP id d9so1463536plo.11
 for <linux-riscv@lists.infradead.org>; Wed, 04 Mar 2020 11:44:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
 h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
 :content-transfer-encoding;
 bh=3fVbVj1IrATBDErEo1uLC59B5/ucD63uaWNFH+ydCrM=;
 b=dFKycVrtx748gtTRovo9q0LWBY2AtTkV6nUHFEDp/2xUgmOClS4Txvj9JezZm3e28b
 rzxZJFpp4WTi2x1sFRVrejpBS4ZIinb1FyTCUx68oBA60eeCXcY9Te/CaUEqLpo9TF2+
 rA1Rp7stk+DFnMVE39FrRe0GHcDPwtPWCdKU3zTFZ2ghB9yBJsoXlNy4aKG7W1pZkV7c
 ueBanmQwHMZ7GmlQyoqG9A4nGHvkUDmVD8pk4MTihhaK0yX8KQ2uP1exOuB8yDTFPIaB
 YbBiey9+ufA9DjYw9+iR8eOX+OLYm8K6y7ORX5KB88gdt1g6FKHL0jhZzbJacvWBYkR2
 xWQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=3fVbVj1IrATBDErEo1uLC59B5/ucD63uaWNFH+ydCrM=;
 b=a6xQv9spe2iMKGEPNzKTYvNREDKLQGO5KNTT1kSBAiemKrXd96nJfC7y6bUb6Cukop
 hfvLY8zUSDMyNyb8uqABLY3dUXzRXhAslTvNF8/toQXFWxm7jjBsS1GSyrXBBCimNLwi
 Jm1KY5eizGBxcitMb9J4CieEjKjGm9eSVaOlFJJmPYmYRGziTTGdzl3OguTNs0bvg1ow
 TYO7+aitpjTMGY3ieE3nwySUbULTa89WXMO31X/OmhEs6A0ocoDO/T4tPkJC3Pwl33tM
 BNu9GB9jpSJT/QkpsfJqubgxV6o/wVRVDBCrvwd3i/jvBm7KNIfOTGvFROt/+tLsex/K
 FH7g==
X-Gm-Message-State: ANhLgQ2ZhXxOZlCnw7HqIzVrsarDcmBbbwWKCIxHtjwcyQIZL5+CdMiw
 NG+EWW/EoN8803eBTeITvTjqfwUf+iY=
X-Google-Smtp-Source: ADFU+vvYty2VuFlY/HcOdVCaEUxweRcV5D5HlYNKWGxgFseno6qCTDQOqsLtL7AE8p+Wa3gwZFQweQ==
X-Received: by 2002:a17:902:8341:: with SMTP id
 z1mr4379387pln.178.1583351090714; 
 Wed, 04 Mar 2020 11:44:50 -0800 (PST)
Received: from localhost ([2620:0:1000:2514:23a5:d584:6a92:3e3c])
 by smtp.gmail.com with ESMTPSA id d5sm23469929pga.36.2020.03.04.11.44.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Mar 2020 11:44:50 -0800 (PST)
Date: Wed, 04 Mar 2020 11:44:50 -0800 (PST)
X-Google-Original-Date: Wed, 04 Mar 2020 11:40:55 PST (-0800)
Subject: Re: [PATCH 08/10] riscv: Add Kendryte K210 device tree
In-Reply-To: <20200212103432.660256-9-damien.lemoal@wdc.com>
From: Palmer Dabbelt <palmer@dabbelt.com>
To: Damien Le Moal <Damien.LeMoal@wdc.com>
Message-ID: <mhng-ce3c62c0-37e9-4e40-8840-416777a55a12@palmerdabbelt-glaptop1>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_114453_025325_2643054D 
X-CRM114-Status: GOOD (  19.17  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-riscv@lists.infradead.org, Anup Patel <Anup.Patel@wdc.com>,
 Paul Walmsley <paul.walmsley@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, 12 Feb 2020 02:34:30 PST (-0800), Damien Le Moal wrote:
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

OK, so if the same DTB works for all of these anyway then that at least lets us
kick the can down the road on the "how to look up a DT for a board" problem.

Reviewed-by: Palmer Dabbelt <palmerdabbelt@google.com>

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
> +	model = "Kendryte K210 generic";
> +	compatible = "kendryte,k210";
> +
> +	chosen {
> +		bootargs = "earlycon console=ttySIF0";
> +		stdout-path = "serial0";
> +	};
> +};
> +
> +&uarths0 {
> +	status = "okay";
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
> +	/*
> +	 * Although the K210 is a 64-bit CPU, the address bus is only 32-bits
> +	 * wide, and the upper half of all addresses is ignored.
> +	 */
> +	#address-cells = <1>;
> +	#size-cells = <1>;
> +	compatible = "kendryte,k210";
> +
> +	aliases {
> +		serial0 = &uarths0;
> +	};
> +
> +	clocks {
> +		in0: oscillator {
> +			compatible = "fixed-clock";
> +			#clock-cells = <0>;
> +			clock-frequency = <26000000>;
> +		};
> +	};
> +
> +	cpus {
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +		timebase-frequency = <7800000>;
> +		cpu0: cpu@0 {
> +			device_type = "cpu";
> +			reg = <0>;
> +			compatible = "riscv";
> +			riscv,isa = "rv64imafdc";
> +			mmu-type = "none";
> +			i-cache-size = <0x8000>;
> +			i-cache-block-size = <64>; /* bogus */
> +			d-cache-size = <0x8000>;
> +			d-cache-block-size = <64>; /* bogus */
> +			clocks = <&sysctl 0>;
> +			clock-frequency = <390000000>;
> +			cpu0_intc: interrupt-controller {
> +				#interrupt-cells = <1>;
> +				interrupt-controller;
> +				compatible = "riscv,cpu-intc";
> +			};
> +		};
> +		cpu1: cpu@1 {
> +			device_type = "cpu";
> +			reg = <1>;
> +			compatible = "riscv";
> +			riscv,isa = "rv64imafdc";
> +			mmu-type = "none";
> +			i-cache-size = <0x8000>;
> +			i-cache-block-size = <64>; /* bogus */
> +			d-cache-size = <0x8000>;
> +			d-cache-block-size = <64>; /* bogus */
> +			clocks = <&sysctl 0>;
> +			clock-frequency = <390000000>;
> +			cpu1_intc: interrupt-controller {
> +				#interrupt-cells = <1>;
> +				interrupt-controller;
> +				compatible = "riscv,cpu-intc";
> +			};
> +		};
> +	};
> +
> +	sram0: memory@80000000 {
> +		device_type = "memory";
> +		reg = <0x80000000 0x400000>;
> +	};
> +
> +	sram1: memory@80400000 {
> +		device_type = "memory";
> +		reg = <0x80400000 0x200000>;
> +	};
> +
> +	kpu_sram: memory@80600000 {
> +		device_type = "memory";
> +		reg = <0x80600000 0x200000>;
> +	};
> +
> +	soc {
> +		#address-cells = <1>;
> +		#size-cells = <1>;
> +		compatible = "kendryte,k210-soc", "simple-bus";
> +		ranges;
> +		interrupt-parent = <&plic0>;
> +
> +		sysctl: sysctl@50440000 {
> +			compatible = "kendryte,k210-sysctl", "syscon";
> +			reg = <0x50440000 0x1000>;
> +			#clock-cells = <1>;
> +		};
> +
> +		clint0: interrupt-controller@2000000 {
> +			compatible = "riscv,clint0";
> +			reg = <0x2000000 0xC000>;
> +			interrupts-extended = <&cpu0_intc 3>,  <&cpu1_intc 3>;
> +			clocks = <&sysctl 0>;
> +		};
> +
> +		plic0: interrupt-controller@c000000 {
> +			#interrupt-cells = <1>;
> +			interrupt-controller;
> +			compatible = "kendryte,k210-plic0", "riscv,plic0";
> +			reg = <0xC000000 0x3FFF008>;
> +			interrupts-extended = <&cpu0_intc 11>, <&cpu0_intc 0xffffffff>,
> +					      <&cpu1_intc 11>, <&cpu1_intc 0xffffffff>;
> +			riscv,ndev = <65>;
> +			riscv,max-priority = <0x07>;
> +		};
> +
> +		uarths0: serial@38000000 {
> +			compatible = "kendryte,k210-uart0", "sifive,uart0";
> +			reg = <0x38000000 0x20>;
> +			interrupts = <33>;
> +			clocks = <&sysctl 0>;
> +		};
> +	};
> +};

