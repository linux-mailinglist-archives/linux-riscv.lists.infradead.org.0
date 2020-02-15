Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0862315FC67
	for <lists+linux-riscv@lfdr.de>; Sat, 15 Feb 2020 03:48:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fJ9CzE9bt5AL2FDE7kP6Th2QOOfOf7p4eK7rd49/Ma4=; b=pv9IwcvQTY7D4t
	yKJ6eUb+X4hnF6EIX31Z9oOerFW/pIgrMGnnRQV46wzTguPpIimCewb0E5DD4SFLEH9LUGuy0/Pf2
	JS9dXP3lDgjCQ0iNvPToBY58pUHCRxJfyJM6I5XuJXpmkaQG+Y/B3XiEy06zvhsxNS6FWbUZXD8da
	IQ4pDyfdQtSbHZ5IxIvHdxGa2mL+aQgLSZCfzDgvRMn+66lhmrDqVfLMRd7bf4jOIECKR44hag3WY
	cf4gW9ccmFwGKLUlnLwxS+WSjIHddk/umHbkBSTpnlIb2bEAhoa4rD1IQX9XAHnOcp9VCRoFvTojI
	BBBrHkXSB09EFuaKZa3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2nVA-0006gl-W6; Sat, 15 Feb 2020 02:48:17 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2nV6-0006g7-Td
 for linux-riscv@lists.infradead.org; Sat, 15 Feb 2020 02:48:15 +0000
Received: by mail-qk1-x741.google.com with SMTP id a141so1302094qkg.6
 for <linux-riscv@lists.infradead.org>; Fri, 14 Feb 2020 18:48:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=fJ9CzE9bt5AL2FDE7kP6Th2QOOfOf7p4eK7rd49/Ma4=;
 b=S+98ouoUBjL/M3zQblYe9dDOrizqT8Y0AUYfo+zmEAoWP90Rw+wmG+ukLSWtw3FUvN
 qurQRMTbarq3zFwspAMZgND0ckPp1pHlmqvrjRNlUJqHpZJSD0N9VqJoKZmsbcsqoT9M
 b6n6OM7u90n0N4xq6n/stUDqeqpWiyniyt4M+lvzkx8Qu+/FTOHxxU5AUtl9zgwCvWma
 2y3CHCkaTftx4U06jMOjZXet80zbBscToBiRRikqg3aokNavCcGNpG7iTLuBAi0dtuqW
 PaIsBXuTzwbXiE7NNTcU7FRxgKRu21onSMOVC0VmBqNHbQknrR6V+Ds8E7T05PyeiCli
 tIWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=fJ9CzE9bt5AL2FDE7kP6Th2QOOfOf7p4eK7rd49/Ma4=;
 b=HxPMVBrEeoKBnBbr29pnrpUD9iccrsPBZU0/wcqOjhymPO4Ap0fp4jicq7dga2mQnJ
 8mHtNA1i5AbQcXhzhYJaWLTuvCP6BjxQo28vNguayUF4629vN8xhmnit7cPU/RkPQ4MT
 kI8MigG/kD/cAmBI59lI9p3K3l5IdSXSmcmCeV7xtHbnNFQzLPgzK6VZE0QuV56x5pvu
 teYgptggSjB8yHLNkAPdwBoZsTpLFBOePEzk6gKD9rDbvkLiGYQoeA/KDAOpabySsdas
 6xG3DKETJNEh5v+ELq6cKakNT65PlNVmmhoDbl93ziyaKrESJJMGkKmhHWFJv2RSjKou
 DmIw==
X-Gm-Message-State: APjAAAXo8ya3WUvTAw0of382VDaMsdr6KG2niMK+HbIBL4Y2no9774nc
 xYK9/JPBIovi5p8cM6jNrKg=
X-Google-Smtp-Source: APXvYqxnS0gyBrHWKl4W4KArLUu1soFgNa4w//xrL+SNCy6rRMmaR0dF5GmkAYxtSpFpdTmxuT+gtw==
X-Received: by 2002:a37:7182:: with SMTP id m124mr5458470qkc.477.1581734886779; 
 Fri, 14 Feb 2020 18:48:06 -0800 (PST)
Received: from [192.168.1.117] ([75.102.135.197])
 by smtp.googlemail.com with ESMTPSA id g26sm4555841qkk.68.2020.02.14.18.48.05
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 14 Feb 2020 18:48:06 -0800 (PST)
Subject: Re: [PATCH 08/10] riscv: Add Kendryte K210 device tree
To: Damien Le Moal <Damien.LeMoal@wdc.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 Palmer Dabbelt <palmer@dabbelt.com>
References: <20200212103432.660256-1-damien.lemoal@wdc.com>
 <20200212103432.660256-9-damien.lemoal@wdc.com>
 <48e10b3d-12f3-a65c-8017-99c780c63040@gmail.com>
 <BYAPR04MB581671F46D3FE67FD3C8B2B7E7140@BYAPR04MB5816.namprd04.prod.outlook.com>
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
Message-ID: <bd74c841-2447-2f11-f924-a501230b3927@gmail.com>
Date: Fri, 14 Feb 2020 21:48:05 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <BYAPR04MB581671F46D3FE67FD3C8B2B7E7140@BYAPR04MB5816.namprd04.prod.outlook.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_184812_963441_EBA6F63C 
X-CRM114-Status: GOOD (  43.50  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [seanga2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [seanga2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Anup Patel <Anup.Patel@wdc.com>, Paul Walmsley <paul.walmsley@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 2/14/20 9:34 PM, Damien Le Moal wrote:
> On 2020/02/15 5:51, Sean Anderson wrote:
>> On 2/12/20 5:34 AM, Damien Le Moal wrote:
>>> Add a generic device tree for Kendryte K210 SoC based boards. This (for
>>> now) very simple device tree works for the Kendryte KD233 development
>>> board, the Sipeed MAIX M1 Dock based boards and the Sipeed MAIXDUINO
>>> board.
>>>
>>> Signed-off-by: Damien Le Moal <damien.lemoal@wdc.com>
>>> ---
>>>  arch/riscv/boot/dts/Makefile           |   1 +
>>>  arch/riscv/boot/dts/kendryte/Makefile  |   2 +
>>>  arch/riscv/boot/dts/kendryte/k210.dts  |  23 +++++
>>>  arch/riscv/boot/dts/kendryte/k210.dtsi | 123 +++++++++++++++++++++++++
>>>  4 files changed, 149 insertions(+)
>>>  create mode 100644 arch/riscv/boot/dts/kendryte/Makefile
>>>  create mode 100644 arch/riscv/boot/dts/kendryte/k210.dts
>>>  create mode 100644 arch/riscv/boot/dts/kendryte/k210.dtsi
>>>
>>> diff --git a/arch/riscv/boot/dts/Makefile b/arch/riscv/boot/dts/Makefile
>>> index 0bf2669aa12d..87815557f2db 100644
>>> --- a/arch/riscv/boot/dts/Makefile
>>> +++ b/arch/riscv/boot/dts/Makefile
>>> @@ -3,4 +3,5 @@ ifneq ($(CONFIG_BUILTIN_DTB_SOURCE),"")
>>>  obj-$(CONFIG_USE_BUILTIN_DTB) += $(patsubst "%",%,$(CONFIG_BUILTIN_DTB_SOURCE)).dtb.o
>>>  else
>>>  subdir-y += sifive
>>> +subdir-y += kendryte
>>>  endif
>>> diff --git a/arch/riscv/boot/dts/kendryte/Makefile b/arch/riscv/boot/dts/kendryte/Makefile
>>> new file mode 100644
>>> index 000000000000..815444e69e89
>>> --- /dev/null
>>> +++ b/arch/riscv/boot/dts/kendryte/Makefile
>>> @@ -0,0 +1,2 @@
>>> +# SPDX-License-Identifier: GPL-2.0
>>> +dtb-$(CONFIG_SOC_KENDRYTE) += k210.dtb
>>> diff --git a/arch/riscv/boot/dts/kendryte/k210.dts b/arch/riscv/boot/dts/kendryte/k210.dts
>>> new file mode 100644
>>> index 000000000000..0d1f28fce6b2
>>> --- /dev/null
>>> +++ b/arch/riscv/boot/dts/kendryte/k210.dts
>>> @@ -0,0 +1,23 @@
>>> +// SPDX-License-Identifier: GPL-2.0+
>>> +/*
>>> + * Copyright (C) 2020 Western Digital Corporation or its affiliates.
>>> + */
>>> +
>>> +/dts-v1/;
>>> +
>>> +#include "k210.dtsi"
>>> +
>>> +/ {
>>> +	model = "Kendryte K210 generic";
>>> +	compatible = "kendryte,k210";
>>> +
>>> +	chosen {
>>> +		bootargs = "earlycon console=ttySIF0";
>>> +		stdout-path = "serial0";
>>> +	};
>>> +};
>>> +
>>> +&uarths0 {
>>> +	status = "okay";
>>> +};
>>> +
>>> diff --git a/arch/riscv/boot/dts/kendryte/k210.dtsi b/arch/riscv/boot/dts/kendryte/k210.dtsi
>>> new file mode 100644
>>> index 000000000000..4b9eeabb07f7
>>> --- /dev/null
>>> +++ b/arch/riscv/boot/dts/kendryte/k210.dtsi
>>> @@ -0,0 +1,123 @@
>>> +// SPDX-License-Identifier: GPL-2.0+
>>> +/*
>>> + * Copyright (C) 2019 Sean Anderson <seanga2@gmail.com>
>>
>> Glad to see this is getting some use :)
> 
> Seeing what you did for uboot, I used a lot of it and naturally gave credit
> where it is due :)
> 
>> This appears to be an old-ish version, and I've made some updates in the
>> past month or so. My current work is availible from [1].
>>
>> [1] https://github.com/Forty-Bot/u-boot/blob/maix_v6/arch/riscv/dts/k210.dtsi
> 
> OK. Will check again.
> 
>>> + * Copyright (C) 2020 Western Digital Corporation or its affiliates.
>>> + */
>>> +
>>> +/ {
>>> +	/*
>>> +	 * Although the K210 is a 64-bit CPU, the address bus is only 32-bits
>>> +	 * wide, and the upper half of all addresses is ignored.
>>> +	 */
>>> +	#address-cells = <1>;
>>> +	#size-cells = <1>;
>>> +	compatible = "kendryte,k210";
>>> +
>>> +	aliases {
>>> +		serial0 = &uarths0;
>>> +	};
>>> +
>>> +	clocks {
>>> +		in0: oscillator {
>>> +			compatible = "fixed-clock";
>>> +			#clock-cells = <0>;
>>> +			clock-frequency = <26000000>;
>>> +		};
>>> +	};
>>> +
>>> +	cpus {
>>> +		#address-cells = <1>;
>>> +		#size-cells = <0>;
>>> +		timebase-frequency = <7800000>;
>>
>> This is true only for the default frequency. I wonder if there is a
>> better way to encode this.
> 
> Yes, I suspected that. Seeing that the CPU frequency can be changed, I
> wondered how this should all go together. But since the current code does
> not change the cpu frequency, I simply stayed with the default here. I
> suspect that we may want the default hard-coded in the code, and use the
> value specified here as the one that should be setup by sysctl.
> 
>>> +		cpu0: cpu@0 {
>>> +			device_type = "cpu";
>>> +			reg = <0>;
>>> +			compatible = "riscv";
>>> +			riscv,isa = "rv64imafdc";
>>> +			mmu-type = "none";
>>
>> This should be "sv36".
> 
> If we want to run the MMU, yes. For a nommu kernel, I would rather stick
> with "none". Not that it really matters since the nommu kernel will not
> look at this entry anyway. No strong opinion either way in the end.
> I have not checked the specs yet, but does sv36 necessarily implies older
> specs 1.9 too ? If not, then we may want something else in there for this
> soc special case.

Ah, this should be "sv39", sorry. Ideally we would put something like
the priv spec version in the isa string, or perhaps as a separate
property. From reading the dt docs, it seems like one should try to
describe the hardware as best as possible to allow for
foward-compatibility.

>>> +			i-cache-size = <0x8000>;
>>> +			i-cache-block-size = <64>; /* bogus */
>>
>> I emailed some people at Kendryte and they confirmed the 64-byte
>> cacheline. The cpus are rocket cores.
> 
> Good to know. I will remove the comment then.
> 
>>
>>> +			d-cache-size = <0x8000>;
>>> +			d-cache-block-size = <64>; /* bogus */
>>> +			clocks = <&sysctl 0>;
>>
>> This is correct only by coincidence. The clock structure is
>>
>> in0 -> pll0 -> aclk -> cpu
>>
>> aclk divides by two by default, so it runs at 390 MHz, which is also
>> what you set pll1 to. However, if someone else (such as the bootloader)
>> changes the pll0 frequency then this will be completely off.
> 
> Yes... The clock management needs more work as mentioned in the cover
> letter. All of this works for now with direct m-mode boot (no boot loader)
> and relies on the hardware defaults which are coded here. The sysctl driver
> also relies on those defaults. A more solid implementation will need the
> soc_early_init() code to discover and set things up correctly.
> 
> As mentioned in the cover letter, this is all a base. It works, but
> definitely is not complete.

At the very least, I would different identifiers for each clock. That
way you can ignore them now and add support later. There isn't a
"natural" ordering (since the clocks are in a different order in every
register), so I am using this arbitrary numbering scheme [1].

[1] https://github.com/Forty-Bot/u-boot/blob/maix_v6/include/dt-bindings/clock/k210-sysctl.h

>>> +			clock-frequency = <390000000>;
>>> +			cpu0_intc: interrupt-controller {
>>> +				#interrupt-cells = <1>;
>>> +				interrupt-controller;
>>> +				compatible = "riscv,cpu-intc";
>>> +			};
>>> +		};
>>> +		cpu1: cpu@1 {
>>> +			device_type = "cpu";
>>> +			reg = <1>;
>>> +			compatible = "riscv";
>>> +			riscv,isa = "rv64imafdc";
>>> +			mmu-type = "none";
>>> +			i-cache-size = <0x8000>;
>>> +			i-cache-block-size = <64>; /* bogus */
>>> +			d-cache-size = <0x8000>;
>>> +			d-cache-block-size = <64>; /* bogus */
>>> +			clocks = <&sysctl 0>;
>>> +			clock-frequency = <390000000>;
>>> +			cpu1_intc: interrupt-controller {
>>> +				#interrupt-cells = <1>;
>>> +				interrupt-controller;
>>> +				compatible = "riscv,cpu-intc";
>>> +			};
>>> +		};
>>> +	};
>>> +
>>> +	sram0: memory@80000000 {
>>> +		device_type = "memory";
>>> +		reg = <0x80000000 0x400000>;
>>> +	};
>>> +
>>> +	sram1: memory@80400000 {
>>> +		device_type = "memory";
>>> +		reg = <0x80400000 0x200000>;
>>> +	};
>>> +
>>> +	kpu_sram: memory@80600000 {
>>> +		device_type = "memory";
>>> +		reg = <0x80600000 0x200000>;
>>> +	};
>>> +
>>> +	soc {
>>> +		#address-cells = <1>;
>>> +		#size-cells = <1>;
>>> +		compatible = "kendryte,k210-soc", "simple-bus";
>>
>> Should the -soc suffix be here? I saw it was absent from the fu540
>> device tree.
> 
> Yes, I guess it can be removed.
> 
>>> +		ranges;
>>> +		interrupt-parent = <&plic0>;
>>> +
>>> +		sysctl: sysctl@50440000 {
>>> +			compatible = "kendryte,k210-sysctl", "syscon";
>>> +			reg = <0x50440000 0x1000>;
>>> +			#clock-cells = <1>;
>>> +		};
>>
>> Would it be possible to model this as an MFD? There are a lot of
>> different registers in here, many of which are unrelated to clocks. For
>> example, there are also reset registers, a reboot register, and DMA
>> handshake controls. I think modeling this as a clock controller only
>> does not correctly reflect the hardware, and will be awkward in the
>> future.
> 
> Absolutely. It is far from complete. And seeing your complete device tree,
> there are likely a lot of peripherals for which Linux already has drivers
> and that could be used if the clocks/sysctl are improved. As mentioned in
> the cover letter, this is left as an exercise for interested people :)
> Note that I am indeed interested in working on this a little more. I simply
> lack the time to do it :)

My next project after u-boot support was going to be Linux, so I can
lend a hand after I get everything merged on that end.

>>> +
>>> +		clint0: interrupt-controller@2000000 {
>>> +			compatible = "riscv,clint0";
>>> +			reg = <0x2000000 0xC000>;
>>> +			interrupts-extended = <&cpu0_intc 3>,  <&cpu1_intc 3>;
>>> +			clocks = <&sysctl 0>;
>>
>> Again, this is wrong; it should be running off ACLK.
> 
> Yep. As you said, it works because we use the defaults for everything.
> 
>>> +		};
>>> +
>>> +		plic0: interrupt-controller@c000000 {
>>> +			#interrupt-cells = <1>;
>>> +			interrupt-controller;
>>> +			compatible = "kendryte,k210-plic0", "riscv,plic0";
>>> +			reg = <0xC000000 0x3FFF008>;
>>
>> With regard to the size of registers, I had the following exchange on
>> the U-Boot mailing list.
>>
>> On Tue, Feb 4, 2020 at 10:23 PM Sean Anderson <seanga2@gmail.com> wrote:
>>>
>>> On 2/4/20 6:32 AM, Bin Meng wrote:
>>>> Hi Sean,
>>>>
>>>> On Mon, Feb 3, 2020 at 4:10 AM Sean Anderson <seanga2@gmail.com> wrote:
>>>>> Should the size of a reg be the size of the documented registers, or the size
>>>>> of the address space which will be routed to that device?
>>>>
>>>> Perhaps we need use the size of the address space routed to that
>>>> device, in case there is some undocumented registers we need handle.
>>>
>>> Ok, I'll go with the whole address space then.
>>
>> You may want to make similar changes for Linux; I didn't see any
>> documentation about what the preferred size was.
> 
> I wondered about it too. Not really sure what to do about it.

The sizes in my device tree are based on reading device memory and
seeing where it repeats. For example, the memory at 50210000 and
50210100 is the same, so I set the uart1 reg to <50210000 0x100>.

>>> +			interrupts-extended = <&cpu0_intc 11>, <&cpu0_intc 0xffffffff>,
>>> +					      <&cpu1_intc 11>, <&cpu1_intc 0xffffffff>;
>>> +			riscv,ndev = <65>;
>>> +			riscv,max-priority = <0x07>;
>>> +		};
>>> +
>>> +		uarths0: serial@38000000 {
>>> +			compatible = "kendryte,k210-uart0", "sifive,uart0";
>>
>> I would change the first compatible string to "kendryte,k210-uarths",
>> since that is how this uart is described in their documentation.
> 
> OK. It makes sense.
> 
>>
>>> +			reg = <0x38000000 0x20>;
>>
>> Same thing as the size comments above.
>>
>>> +			interrupts = <33>;
>>> +			clocks = <&sysctl 0>;
>>
>> Same clock comments.
>>
>>> +		};
>>> +	};
>>> +};
>>>
>>
>> --Sean
>>
> 
> 


