Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 27173184BF5
	for <lists+linux-riscv@lfdr.de>; Fri, 13 Mar 2020 17:04:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:
	Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OFVCTgBmITAc8PM3kkbfnTQBKjsIkMCv3OhrYbInmrA=; b=nH2eW+chrhuJweLWx4PjOHBHxg
	IjTU2uM/3rumBd+WMo47v9s6P/pHwtGB4veHiWXwdlGi4mnt/u3gEIWGYaNiJNDOD9RnlS9+09Ken
	6UtBM1LQlLIPpY4TpM+uC0SXWQnEX76HNdO3v6DsKeT5xyOYBxkfeq+KcLq3hxp1zqTH15/teGV3h
	hMB5N790tlKPH0UB661adsnZ56Qt5fCJQ0AFDjv9KYrh0zUWyTdR+H7xL6IDL1p2aMq+AZSCtO2HE
	DkrJbxRoWB4GCrZgw1TjLinmarlqcevjicPFh19/9yCgKkNE0mkv74bAVBiyFHROCW6Y76qWaZP57
	6IeL505Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCmn5-0001HL-Ha; Fri, 13 Mar 2020 16:04:03 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCmmz-0001Gq-75
 for linux-riscv@lists.infradead.org; Fri, 13 Mar 2020 16:04:01 +0000
Received: by mail-qk1-x742.google.com with SMTP id j2so469005qkl.7
 for <linux-riscv@lists.infradead.org>; Fri, 13 Mar 2020 09:03:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=OFVCTgBmITAc8PM3kkbfnTQBKjsIkMCv3OhrYbInmrA=;
 b=Lk+BVIiHtMwn2DccFDOHjmReDycEPCkXc0OalD6iiMJGWIfpRZdhoSHcUz8l2EIGxG
 XrQz1cdce1G+ry+h5LYGH4rykWwMD+PV2/T25lxzzucClXpFQrq4jXHn8DkNBHMN2vll
 j00H9Jy2RXSVc0oT9EBpZJqkjLj0yxJu833qGiXHJaliBqHH7iA//uZOmGCTPfCuvMDy
 uC39UO6IhUglsbCUHojohxce41Vh/luuoYw1l3SB+/q1ei3DL+Y4UR4LNfVKW7+DFry6
 6F6aD1/jt1OJiiSLKQYgHyr71yztigptM2KzSeRQgFCr6MAziymulTp4gT+SvAsf1n6S
 G1SQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:autocrypt:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=OFVCTgBmITAc8PM3kkbfnTQBKjsIkMCv3OhrYbInmrA=;
 b=hMVAVUGiny06l3vsZRfA3WRtS9JcriW4w4BP6RuYm4MM+45fdIQTYTtdLkduRxQN6b
 5SAe0ycvSKzSt6X+T2JV0+v01Uok7WPexugejnfQayfxVcl77pLJrbX6cMeXwj+gwyfw
 MAv+3e1Si0WTjZvzRsa9IkR2iV45Qdu44LtIEPs2hVis/uY7xEGNPA2qZT7tCwfmChCV
 fI1jjtiHJ+hsA8dzYUXOm0sMU9I7fwryQQXCE4uMMCjRv5K1E2bFzkrV8YouO2OtMs5z
 62ZMc6thuiuKILa573wV8Iugdlx677l97LK/ztuVLw+XfEuB0kJP1rXPnAv0XgNaeolB
 el2Q==
X-Gm-Message-State: ANhLgQ2FNKDlNP5SrQ+Hb/+OePoR/p5yRf/Ol6oyoYAorvuvzJFA6LLg
 P1KYxUCJjFkb3xnKIhnHevT9BlVSvLM=
X-Google-Smtp-Source: ADFU+vsrJcBSaP0M6rLy0TjlE5YdaiAddIW38tHDkkqEPxuy4eQoKZ02ZX9D1SbAUUrIklCHTqC04Q==
X-Received: by 2002:a37:5207:: with SMTP id g7mr13649141qkb.141.1584115434661; 
 Fri, 13 Mar 2020 09:03:54 -0700 (PDT)
Received: from [192.168.1.201] (pool-71-163-33-7.washdc.fios.verizon.net.
 [71.163.33.7])
 by smtp.googlemail.com with ESMTPSA id l92sm3622562qte.25.2020.03.13.09.03.53
 for <linux-riscv@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 13 Mar 2020 09:03:53 -0700 (PDT)
Subject: Re: [PATCH v3 6/9] riscv: Add Kendryte K210 device tree
To: linux-riscv@lists.infradead.org
References: <20200313091639.87862-1-damien.lemoal@wdc.com>
 <20200313091639.87862-7-damien.lemoal@wdc.com>
From: Sean Anderson <seanga2@gmail.com>
Autocrypt: addr=seanga2@gmail.com; prefer-encrypt=mutual; keydata=
 mQENBFe74PkBCACoLC5Zq2gwrDcCkr+EPGsT14bsxrW07GiYzQhLCgwnPdEpgU95pXltbFhw
 46GfyffABWxHKO2x+3L1S6ZxC5AiKbYXo7lpnTBYjamPWYouz+VJEVjUx9aaSEByBah5kX6a
 lKFZWNbXLAJh+dE1HFaMi3TQXXaInaREc+aO1F7fCa2zNE75ja+6ah8L4TPRFZ2HKQzve0/Y
 GXtoRw97qmnm3U36vKWT/m2AiLF619F4T1mHvlfjyd9hrVwjH5h/2rFyroXVXBZHGA9Aj8eN
 F2si35dWSZlIwXkNu9bXp0/pIu6FD0bI+BEkD5S7aH1G1iAcMFi5Qq2RNa041DfQSDDHABEB
 AAG0K1NlYW4gR2FsbGFnaGVyIEFuZGVyc29uIDxzZWFuZ2EyQGdtYWlsLmNvbT6JAVcEEwEK
 AEECGwMFCwkIBwIGFQgJCgsCBBYCAwECHgECF4ACGQEWIQSQYR1bzo1I0gPoYCg+6I/stKEQ
 bgUCXT+S2AUJB2TlXwAKCRA+6I/stKEQbhNOB/9ooea0hU9Sgh7PBloU6CgaC5mlqPLB7NTp
 +JkB+nh3Fqhk+qLZwzEynnuDLl6ESpVHIc0Ym1lyF4gT3DsrlGT1h0Gzw7vUwd1+ZfN0CuIx
 Rn861U/dAUjvbtN5kMBqOI4/5ea+0r7MACcIVnKF/wMXBD8eypHsorT2sJTzwZ6DRCNP70C5
 N1ahpqqNmXe0uLdP0pu55JCqhrGw2SinkRMdWyhSxT56uNwIVHGhLTqH7Q4t1N6G1EH626qa
 SvIJsWlNpll6Y3AYLDw2/Spw/hqieS2PQ/Ky3rPZnvJt7/aSNYsKoFGX0yjkH67Uq8Lx0k1L
 w8jpXnbEPQN3A2ZJCbeMuQENBF0/k2UBCADhvSlHblNc/aRAWtCFDblCJJMN/8Sd7S9u4ZRS
 w1wIB4tTF7caxc8yfCHa+FjMFeVu34QPtMOvd/gfHz0mr+t0PiTAdDSbd6o7tj+g5ylm+FhT
 OTUtJQ6mx6L9GzMmIDEbLxJMB9RfJaL2mT5JkujKxEst6nlHGV/lEQ54xBl5ImrPvuR5Dbnr
 zWQYlafb1IC5ZFwSMpBeSfhS7/kGPtFY3NkpLrii/CF+ME0DYYWxlkDIycqF3fsUGGfb3HIq
 z2l95OB45+mCs9DrIDZXRT6mFjLcl35UzuEErNIskCl9NKlbvAMAl+gbDH275SnE44ocC4qu
 0tMe7Z5jpOy6J8nNABEBAAGJATwEGAEKACYWIQSQYR1bzo1I0gPoYCg+6I/stKEQbgUCXT+T
 ZQIbDAUJAeEzgAAKCRA+6I/stKEQbjAGB/4mYRqZTTEFmcS+f+8zsmjt2CfWvm38kR+sJFWB
 vz82pFiUWbUM5xvcuOQhz698WQnIazbDGSYaOipyVNS52YiuYJDqMszzgw++DrcSuu0oRYWN
 EWCkJjxMqjGg8uY0OZ6FJG+gYRN5wMFErGfV1OqQ7l00FYA9OzpOEuW9PzPZEutFnAbbh77i
 zvxbQtT7IJCL24A4KutNYKmWg98im4mCzQcJCxE86Bv69ErLVPUyYbp4doLadScilXlvkkjL
 iq1wOt3rRzOuw+qnWVgWGBPxdDftz0Wck941tYF9XE0aMgkf4o1sGoDZFUFPCQdfEYPzzV7O
 S5hN3/mP5UeooFHb
Message-ID: <53e10739-00e7-5f5e-bad7-3416cdcd147b@gmail.com>
Date: Fri, 13 Mar 2020 12:03:53 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200313091639.87862-7-damien.lemoal@wdc.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_090357_258701_AE082134 
X-CRM114-Status: GOOD (  20.53  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [seanga2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [seanga2[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 3/13/20 5:16 AM, Damien Le Moal wrote:
> Add a generic device tree for Kendryte K210 SoC based boards. This is
> for now a very simple device tree describing the core elements of the
> SoC. This is suitable (and tested) for the Kendryte KD233 development
> board, the Sipeed MAIX M1 Dan Dock board and the Sipeed MAIXDUINO board.
> 
> Signed-off-by: Damien Le Moal <damien.lemoal@wdc.com>
> ---
>  arch/riscv/boot/dts/Makefile           |   1 +
>  arch/riscv/boot/dts/kendryte/Makefile  |   2 +
>  arch/riscv/boot/dts/kendryte/k210.dts  |  23 +++++
>  arch/riscv/boot/dts/kendryte/k210.dtsi | 123 +++++++++++++++++++++++++
>  include/dt-bindings/clock/k210-clk.h   |  20 ++++
>  5 files changed, 169 insertions(+)
>  create mode 100644 arch/riscv/boot/dts/kendryte/Makefile
>  create mode 100644 arch/riscv/boot/dts/kendryte/k210.dts
>  create mode 100644 arch/riscv/boot/dts/kendryte/k210.dtsi
>  create mode 100644 include/dt-bindings/clock/k210-clk.h
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
> index 000000000000..c1df56ccb8d5
> --- /dev/null
> +++ b/arch/riscv/boot/dts/kendryte/k210.dtsi
> @@ -0,0 +1,123 @@
> +// SPDX-License-Identifier: GPL-2.0+
> +/*
> + * Copyright (C) 2019 Sean Anderson <seanga2@gmail.com>
> + * Copyright (C) 2020 Western Digital Corporation or its affiliates.
> + */
> +#include <dt-bindings/clock/k210-clk.h>
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
> +	/*
> +	 * The K210 has an sv39 MMU following the priviledge specification v1.9.
> +	 * Since this is a non-ratified draft specification, the kernel does not
> +	 * support it and the K210 support enabled only for the !MMU case.
> +	 * Be consistent with this by setting the CPUs MMU type to "none".
> +	 */
> +	cpus {
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +		timebase-frequency = <7800000>;
> +		cpu0: cpu@0 {
> +			device_type = "cpu";
> +			reg = <0>;
> +			compatible = "kendryte,k210", "sifive,rocket0", "riscv";
> +			riscv,isa = "rv64imafdc";
> +			mmu-type = "none";
> +			i-cache-size = <0x8000>;
> +			i-cache-block-size = <64>;
> +			d-cache-size = <0x8000>;
> +			d-cache-block-size = <64>;
> +			clocks = <&sysctl K210_CLK_CPU>;
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
> +			compatible = "kendryte,k210", "sifive,rocket0", "riscv";
> +			riscv,isa = "rv64imafdc";
> +			mmu-type = "none";
> +			i-cache-size = <0x8000>;
> +			i-cache-block-size = <64>;
> +			d-cache-size = <0x8000>;
> +			d-cache-block-size = <64>;
> +			clocks = <&sysctl K210_CLK_CPU>;
> +			clock-frequency = <390000000>;
> +			cpu1_intc: interrupt-controller {
> +				#interrupt-cells = <1>;
> +				interrupt-controller;
> +				compatible = "riscv,cpu-intc";
> +			};
> +		};
> +	};
> +
> +	sram: memory@80000000 {
> +		device_type = "memory";
> +		reg = <0x80000000 0x400000>,
> +		      <0x80400000 0x200000>,
> +		      <0x80600000 0x200000>;
> +		reg-names = "sram0", "sram1", "aisram";
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
> +	soc {
> +		#address-cells = <1>;
> +		#size-cells = <1>;
> +		compatible = "kendryte,k210-soc", "simple-bus";
> +		ranges;
> +		interrupt-parent = <&plic0>;
> +
> +		sysctl: sysctl@50440000 {
> +			compatible = "kendryte,k210-sysctl", "simple-mfd";
> +			reg = <0x50440000 0x1000>;
> +			#clock-cells = <1>;
> +		};
> +
> +		clint0: interrupt-controller@2000000 {
> +			compatible = "riscv,clint0";
> +			reg = <0x2000000 0xC000>;
> +			interrupts-extended = <&cpu0_intc 3>,  <&cpu1_intc 3>;
> +			clocks = <&sysctl K210_CLK_ACLK>;
> +		};
> +
> +		plic0: interrupt-controller@c000000 {
> +			#interrupt-cells = <1>;
> +			interrupt-controller;
> +			compatible = "kendryte,k210-plic0", "riscv,plic0";
> +			reg = <0xC000000 0x4000000>;
> +			interrupts-extended = <&cpu0_intc 11>, <&cpu0_intc 0xffffffff>,
> +					      <&cpu1_intc 11>, <&cpu1_intc 0xffffffff>;
> +			riscv,ndev = <65>;
> +			riscv,max-priority = <7>;
> +		};
> +
> +		uarths0: serial@38000000 {
> +			compatible = "kendryte,k210-uarths", "sifive,uart0";
> +			reg = <0x38000000 0x1000>;
> +			interrupts = <33>;
> +			clocks = <&sysctl K210_CLK_CPU>;
> +		};
> +	};
> +};
> diff --git a/include/dt-bindings/clock/k210-clk.h b/include/dt-bindings/clock/k210-clk.h
> new file mode 100644
> index 000000000000..5a2fd64d1a49
> --- /dev/null
> +++ b/include/dt-bindings/clock/k210-clk.h
> @@ -0,0 +1,20 @@
> +/* SPDX-License-Identifier: GPL-2.0-or-later */
> +/*
> + * Copyright (C) 2019-20 Sean Anderson <seanga2@gmail.com>
> + * Copyright (c) 2020 Western Digital Corporation or its affiliates.
> + */
> +#ifndef K210_CLK_H
> +#define K210_CLK_H
> +
> +/*
> + * Arbitrary identifiers for clocks.
> + * The structure is: in0 -> pll0 -> aclk -> cpu
> + *
> + * Since we use the hardware defaults for now, set all these to the same clock.
> + */
> +#define K210_CLK_PLL0   0
> +#define K210_CLK_PLL1   0
> +#define K210_CLK_ACLK   0
> +#define K210_CLK_CPU    0
> +
> +#endif /* K210_CLK_H */
> 

Reviewed-by: Sean Anderson <seanga2@gmail.com>

