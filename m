Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BBDBB18385B
	for <lists+linux-riscv@lfdr.de>; Thu, 12 Mar 2020 19:16:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zpwy1KlQA89WYaNOKIaWx19/HsYVV+VeHtZ4MBXH+L4=; b=VquVlpFskHTCyB
	E/HNd5ARdSHezt2ug/VemPBdzZSDsD4U7NpjYpxqSQ8I0O3Qlxn4MAifDBAZ8s3gd1M4IpIlhY8Iy
	wuOdlcedXjSxLcqsedVR+E70ExUzVrkIwHsil+IgNiw9MIKXKbKqP9BBZvTm4aKYPUNSfNHpvVqfM
	Z2FM+qmHE6+/8Mjuzi1RMpXeYQ7nWQK7l/BQpjNz3UTv0HzLJAl+2GBsdZABFJs0ncGfT97agZbBO
	dserr7zsUyueGFhh1e6JOZrJlF9PJyWN1rR/uyWdjuGueUlgQjVKhdt6BQdNd/cqWQ/6jSn//2wQ2
	0L46zc/usoJi9fmy/ezg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCSNo-0003PU-Vc; Thu, 12 Mar 2020 18:16:36 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCSNk-0003P0-QA
 for linux-riscv@lists.infradead.org; Thu, 12 Mar 2020 18:16:34 +0000
Received: by mail-qt1-x843.google.com with SMTP id z8so1794699qto.12
 for <linux-riscv@lists.infradead.org>; Thu, 12 Mar 2020 11:16:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=zpwy1KlQA89WYaNOKIaWx19/HsYVV+VeHtZ4MBXH+L4=;
 b=jK+41lR0SH7Rata9EfTvpUo4VxLdBu1awFYUi4fCLjHU3dq56MsE1DAxBXYESwRmq6
 K/+g++O0RoCfH7pZgdWXTRD7UgnZEZlMA0N3EZpp7NMTyD/kNYjqRxFGNEBD2SnNRtff
 oaFWi8tIDwGtlN/8RzWhyuPxMRGdgz16QTHyGYMzAIpMvlpY1oj75LcrxNUl/7NZWs6l
 HaaL3uzHrZXjONlK2QMEE2RHSY/i4XHuNNLlWvHZjvA/TTB+PoiiA9FAE24ga5+CuI9k
 v9IY22OsG/QER2Y9iT749T3FSrCp1dhX13pi3ileaXY8fpX58Y7FX77IF/hX0x+STnCe
 88Gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=zpwy1KlQA89WYaNOKIaWx19/HsYVV+VeHtZ4MBXH+L4=;
 b=crfPCYm+DD9WckKyWEfDtTzuddzYl69m4/O4KNpNFsUexYmKgSMhZWsHM/DVedKSQF
 JYP2Fl2zcMGS795yFr4IRM+gn8bXHXJkxl4iixeLXWBv0SdMtZhmoEScLH3qzyo49cZh
 z2cXymI3ENRGP/XOA8WqLzBfyAr9AFvJp0R++rsQJyV4fDE6HV0aCgN3D5mcoMdY1+Vx
 Ay4XknhFFnVoy5irzL2gQ3C7qw65kjSsAURvt3qYt26bSsuiN+FM1p25uEXYiC0U9rBW
 hPJ1Jpt69/GOylzzG8Qlmxs0uxkE1r3qXfDLU1DnuB5q/2njLeh3V7um6p9OWSrHK/bw
 acFQ==
X-Gm-Message-State: ANhLgQ1EzaBlCfDwk4qL1IPAkwZIsZazEgv/BrvSqApOmzG17JS3fbkO
 EKmNo3dK2HZ5MW67fZb71TM=
X-Google-Smtp-Source: ADFU+vsMg5nFBsozRbKBRf+9AMRZTAX60pZwhjZO3wg4j5+PFt862qb7tTQMgzr2MzYRy81SiuEoMg==
X-Received: by 2002:aed:36a5:: with SMTP id f34mr8335033qtb.57.1584036991631; 
 Thu, 12 Mar 2020 11:16:31 -0700 (PDT)
Received: from [192.168.1.201] (pool-71-163-33-7.washdc.fios.verizon.net.
 [71.163.33.7]) by smtp.googlemail.com with ESMTPSA id
 x203sm14188052qkb.44.2020.03.12.11.16.30
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 12 Mar 2020 11:16:31 -0700 (PDT)
Subject: Re: [PATCH v2 6/9] riscv: Add Kendryte K210 device tree
To: Damien Le Moal <damien.lemoal@wdc.com>, linux-riscv@lists.infradead.org,
 Palmer Dabbelt <palmer@dabbelt.com>
References: <20200312051107.1454880-1-damien.lemoal@wdc.com>
 <20200312051107.1454880-7-damien.lemoal@wdc.com>
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
Message-ID: <b175cd33-7143-164b-07fb-468a1e727180@gmail.com>
Date: Thu, 12 Mar 2020 14:16:30 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200312051107.1454880-7-damien.lemoal@wdc.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_111632_857748_66FBBE92 
X-CRM114-Status: GOOD (  19.66  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
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
Cc: Anup Patel <Anup.Patel@wdc.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 3/12/20 1:11 AM, Damien Le Moal wrote:
> Add a generic device tree for Kendryte K210 SoC based boards. This (for=

> now) very simple device tree works for the Kendryte KD233 development
> board, the Sipeed MAIX M1 Dan Dock board and the Sipeed MAIXDUINO board=
=2E
>=20
> Signed-off-by: Damien Le Moal <damien.lemoal@wdc.com>
> ---
>  arch/riscv/boot/dts/Makefile           |   1 +
>  arch/riscv/boot/dts/kendryte/Makefile  |   2 +
>  arch/riscv/boot/dts/kendryte/k210.dts  |  23 +++++
>  arch/riscv/boot/dts/kendryte/k210.dtsi | 117 +++++++++++++++++++++++++=

>  include/dt-bindings/clock/k210-clk.h   |  20 +++++
>  5 files changed, 163 insertions(+)
>  create mode 100644 arch/riscv/boot/dts/kendryte/Makefile
>  create mode 100644 arch/riscv/boot/dts/kendryte/k210.dts
>  create mode 100644 arch/riscv/boot/dts/kendryte/k210.dtsi
>  create mode 100644 include/dt-bindings/clock/k210-clk.h
>=20
> diff --git a/arch/riscv/boot/dts/Makefile b/arch/riscv/boot/dts/Makefil=
e
> index 0bf2669aa12d..87815557f2db 100644
> --- a/arch/riscv/boot/dts/Makefile
> +++ b/arch/riscv/boot/dts/Makefile
> @@ -3,4 +3,5 @@ ifneq ($(CONFIG_BUILTIN_DTB_SOURCE),"")
>  obj-$(CONFIG_USE_BUILTIN_DTB) +=3D $(patsubst "%",%,$(CONFIG_BUILTIN_D=
TB_SOURCE)).dtb.o
>  else
>  subdir-y +=3D sifive
> +subdir-y +=3D kendryte
>  endif
> diff --git a/arch/riscv/boot/dts/kendryte/Makefile b/arch/riscv/boot/dt=
s/kendryte/Makefile
> new file mode 100644
> index 000000000000..815444e69e89
> --- /dev/null
> +++ b/arch/riscv/boot/dts/kendryte/Makefile
> @@ -0,0 +1,2 @@
> +# SPDX-License-Identifier: GPL-2.0
> +dtb-$(CONFIG_SOC_KENDRYTE) +=3D k210.dtb
> diff --git a/arch/riscv/boot/dts/kendryte/k210.dts b/arch/riscv/boot/dt=
s/kendryte/k210.dts
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
> +	model =3D "Kendryte K210 generic";
> +	compatible =3D "kendryte,k210";
> +
> +	chosen {
> +		bootargs =3D "earlycon console=3DttySIF0";
> +		stdout-path =3D "serial0";
> +	};
> +};
> +
> +&uarths0 {
> +	status =3D "okay";
> +};
> +
> diff --git a/arch/riscv/boot/dts/kendryte/k210.dtsi b/arch/riscv/boot/d=
ts/kendryte/k210.dtsi
> new file mode 100644
> index 000000000000..88f28a3fd337
> --- /dev/null
> +++ b/arch/riscv/boot/dts/kendryte/k210.dtsi
> @@ -0,0 +1,117 @@
> +// SPDX-License-Identifier: GPL-2.0+
> +/*
> + * Copyright (C) 2019 Sean Anderson <seanga2@gmail.com>
> + * Copyright (C) 2020 Western Digital Corporation or its affiliates.
> + */
> +#include <dt-bindings/clock/k210-clk.h>
> +
> +/ {
> +	/*
> +	 * Although the K210 is a 64-bit CPU, the address bus is only 32-bits=

> +	 * wide, and the upper half of all addresses is ignored.
> +	 */
> +	#address-cells =3D <1>;
> +	#size-cells =3D <1>;
> +	compatible =3D "kendryte,k210";
> +
> +	aliases {
> +		serial0 =3D &uarths0;
> +	};
> +
> +	cpus {
> +		#address-cells =3D <1>;
> +		#size-cells =3D <0>;
> +		timebase-frequency =3D <7800000>;
> +		cpu0: cpu@0 {
> +			device_type =3D "cpu";
> +			reg =3D <0>;
> +			compatible =3D "kendryte,k210", "sifive,rocket0", "riscv";
> +			riscv,isa =3D "rv64imafdc";
> +			mmu-type =3D "none";
> +			i-cache-size =3D <0x8000>;
> +			i-cache-block-size =3D <64>;
> +			d-cache-size =3D <0x8000>;
> +			d-cache-block-size =3D <64>;
> +			clocks =3D <&sysctl K210_CLK_CPU>;
> +			clock-frequency =3D <390000000>;
> +			cpu0_intc: interrupt-controller {
> +				#interrupt-cells =3D <1>;
> +				interrupt-controller;
> +				compatible =3D "riscv,cpu-intc";
> +			};
> +		};
> +		cpu1: cpu@1 {
> +			device_type =3D "cpu";
> +			reg =3D <1>;
> +			compatible =3D "kendryte,k210", "sifive,rocket0", "riscv";
> +			riscv,isa =3D "rv64imafdc";
> +			mmu-type =3D "none";

Perhaps add a comment? The mmu is still sv39, even if the kernel is NOMMU=
=2E

> +			i-cache-size =3D <0x8000>;
> +			i-cache-block-size =3D <64>; /* bogus */

These comments should be removed to match the bindings above.

> +			d-cache-size =3D <0x8000>;
> +			d-cache-block-size =3D <64>; /* bogus */
> +			clocks =3D <&sysctl K210_CLK_CPU>;
> +			clock-frequency =3D <390000000>;
> +			cpu1_intc: interrupt-controller {
> +				#interrupt-cells =3D <1>;
> +				interrupt-controller;
> +				compatible =3D "riscv,cpu-intc";
> +			};
> +		};
> +	};
> +
> +	sram: memory@80000000 {
> +		device_type =3D "memory";
> +		reg =3D <0x80000000 0x400000>,
> +		      <0x80400000 0x200000>,
> +		      <0x80600000 0x200000>;
> +		reg-names =3D "sram0", "sram1", "aisram";
> +	};
> +
> +	clocks {
> +		in0: oscillator {
> +			compatible =3D "fixed-clock";
> +			#clock-cells =3D <0>;
> +			clock-frequency =3D <26000000>;
> +		};
> +	};
> +
> +	soc {
> +		#address-cells =3D <1>;
> +		#size-cells =3D <1>;
> +		compatible =3D "kendryte,k210-soc", "simple-bus";
> +		ranges;
> +		interrupt-parent =3D <&plic0>;
> +
> +		sysctl: sysctl@50440000 {
> +			compatible =3D "kendryte,k210-sysctl", "syscon";
> +			reg =3D <0x50440000 0x1000>;
> +			#clock-cells =3D <1>;
> +		};

Still think this should be modeled as an mfd.

> +
> +		clint0: interrupt-controller@2000000 {
> +			compatible =3D "riscv,clint0";
> +			reg =3D <0x2000000 0xC000>;
> +			interrupts-extended =3D <&cpu0_intc 3>,  <&cpu1_intc 3>;
> +			clocks =3D <&sysctl K210_CLK_ACLK>;
> +		};
> +
> +		plic0: interrupt-controller@c000000 {
> +			#interrupt-cells =3D <1>;
> +			interrupt-controller;
> +			compatible =3D "kendryte,k210-plic0", "riscv,plic0";
> +			reg =3D <0xC000000 0x4000000>;
> +			interrupts-extended =3D <&cpu0_intc 11>, <&cpu0_intc 0xffffffff>,
> +					      <&cpu1_intc 11>, <&cpu1_intc 0xffffffff>;
> +			riscv,ndev =3D <65>;
> +			riscv,max-priority =3D <7>;
> +		};
> +
> +		uarths0: serial@38000000 {
> +			compatible =3D "kendryte,k210-uarths", "sifive,uart0";
> +			reg =3D <0x38000000 0x1000>;
> +			interrupts =3D <33>;
> +			clocks =3D <&sysctl K210_CLK_CPU>;
> +		};
> +	};
> +};
> diff --git a/include/dt-bindings/clock/k210-clk.h b/include/dt-bindings=
/clock/k210-clk.h
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
> + * Since we use the hardware defaults for now, set all these to the sa=
me clock.
> + */
> +#define K210_CLK_PLL0   0
> +#define K210_CLK_PLL1   0
> +#define K210_CLK_ACLK   0
> +#define K210_CLK_CPU    0
> +
> +#endif /* K210_CLK_H */
>=20

--Sean


