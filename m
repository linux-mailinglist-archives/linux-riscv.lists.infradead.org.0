Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E2644F7C6
	for <lists+linux-riscv@lfdr.de>; Sat, 22 Jun 2019 20:15:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tQ8wMkoIAGUp+TpuZNiiaBLvEXI3F2D9rayNk6Kimhs=; b=QtpDGlwsq6VoM2
	irWM0sLsgmol9D30bUg0x+wupQHW/bvz2QL51yFEK2BOnsRVYDXDURpJwVZ7HDH2q2530JjEGLB2J
	3MwRtHo213yImrUd3u1/rlzLb3Hfgz3UtQkRFC9DTvEB3jut7WOnRq3Ivty5dhG5qS5F3uhHFSSSr
	2CVXBuR3E9RJcbPTpKVRZyQFcEdLGsrP3NroYNjj2OB9e/F+p6Jsz+37Dpxoc/l5Abb7EZh9n9XmO
	gm9i9A2DDlYf6Hxt0NJpMwhTFbWvzZybE0oZywSSRCGT2I2ZbsLrwUUD5IejIOcrVGkDdmXlPfAl3
	HfrGhO2AJX1KuzAHSHSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hekY9-0006Jt-GN; Sat, 22 Jun 2019 18:15:41 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hekY5-0006JP-Kg
 for linux-riscv@lists.infradead.org; Sat, 22 Jun 2019 18:15:39 +0000
Received: by mail-io1-xd44.google.com with SMTP id h6so58390ioh.3
 for <linux-riscv@lists.infradead.org>; Sat, 22 Jun 2019 11:15:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=BIcRqsgDXayymj+Ku1N955o6u3WrPmmoPvChsB+QKGI=;
 b=at0ibNP5XuqFVFVIo8SswkbJu1g6jk8r4zMQhu18QrNYqV66ulyKPfysi4MW+yonvu
 dSVYNeWEFEX9BVtKTOvAMRyvH0EUZIk246vNZYA1OmjwXfYbNN2Zx1mpz2Typjt7Yu5a
 QoRG/aWeaGtoScqn+wmzvpoTblze7EvD/iuLH8xvm5jfDA8BqBxqPpo9WIhJZ2PTLJtn
 jtR9skmCSNbjwJecOoeNa038Zdc09KlKcqbZKyVRdIFoBs9vcGfcI5+MNb4qwgU8owI6
 eycrZ0b5e0qh+ske1yf+RUenwv0Ip5i7dx18JtxGhu/GAzja8We3mYXAhtw5T4kLyrWP
 ivbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=BIcRqsgDXayymj+Ku1N955o6u3WrPmmoPvChsB+QKGI=;
 b=I5y1paBrxkoFT3TRurtoaGafu+yXU2fwZxa1HGf2EUOfMcny1lumt50aN4BMgGBqXO
 myR3/fpZyZ/JW0qymZSdVpM4DAxlNBVCffPOkvVcVMgXcTUygmn/vF2MEJxtpE7Zd9oB
 wVfI9QrlTeR6ElHYur0WlMO/Z0OvEqseNVUXkKDIyKDAQ14d8+JW4Lf53NCwPEQsOX0o
 x7UFjg9GqQPhxphVdB0vB+yZw6dWMQS5HBLgVzWDLsr2455tB5w45GpfOQmzAQZefgEh
 dY/kIoTh8Baj5bKyC2gQc0vTpbRu3d9cu7hmia6o/c4uEhzdtudg1+teK+zyCnLRWpL5
 LzCQ==
X-Gm-Message-State: APjAAAXtiuH36rX1TK/Hq8y59iGp/jMttK1E5YXLDoqy48ivUahFeY7h
 WvpxTAGYuFzSGO3NLIHoAqflng==
X-Google-Smtp-Source: APXvYqwbUuI6pYqEW3xUO9duU+C7aelY2bo+uYR/A2Ny5gYHLTlczbg6foBJTh1C3L//AV4ckU7iAQ==
X-Received: by 2002:a5e:da47:: with SMTP id o7mr8936752iop.83.1561227335113;
 Sat, 22 Jun 2019 11:15:35 -0700 (PDT)
Received: from [192.168.1.196] ([216.160.37.230])
 by smtp.gmail.com with ESMTPSA id l11sm7667385ioj.32.2019.06.22.11.15.34
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 22 Jun 2019 11:15:34 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
Subject: Re: [PATCH v2] riscv: dts: Add DT node for SiFive FU540 Ethernet
 controller driver
From: Troy Benjegerdes <troy.benjegerdes@sifive.com>
In-Reply-To: <18c7992607dd1fed062bd295ac0738a759eff078.camel@wdc.com>
Date: Sat, 22 Jun 2019 13:15:33 -0500
Message-Id: <24385C38-D1FC-46B0-8AAA-0FB0B371784A@sifive.com>
References: <1561114429-29612-1-git-send-email-yash.shah@sifive.com>
 <1561114429-29612-2-git-send-email-yash.shah@sifive.com>
 <18c7992607dd1fed062bd295ac0738a759eff078.camel@wdc.com>
To: Atish Patra <Atish.Patra@wdc.com>,
 "yash.shah@sifive.com" <yash.shah@sifive.com>
X-Mailer: Apple Mail (2.3445.9.1)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190622_111537_755703_978C1E63 
X-CRM114-Status: GOOD (  11.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>,
 "palmer@sifive.com" <palmer@sifive.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "sachin.ghadi@sifive.com" <sachin.ghadi@sifive.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org



> On Jun 21, 2019, at 2:14 PM, Atish Patra <Atish.Patra@wdc.com> wrote:
> 
> On Fri, 2019-06-21 at 16:23 +0530, Yash Shah wrote:
>> DT node for SiFive FU540-C000 GEMGXL Ethernet controller driver added
>> 
>> Signed-off-by: Yash Shah <yash.shah@sifive.com>
>> ---
>> arch/riscv/boot/dts/sifive/fu540-c000.dtsi          | 16
>> ++++++++++++++++
>> arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts |  9 +++++++++
>> 2 files changed, 25 insertions(+)
>> 
>> diff --git a/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
>> b/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
>> index 4e8fbde..c53b4ea 100644
>> --- a/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
>> +++ b/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
>> @@ -225,5 +225,21 @@
>> 			#address-cells = <1>;
>> 			#size-cells = <0>;
>> 		};
>> +		eth0: ethernet@10090000 {
>> +			compatible = "sifive,fu540-macb";
>> +			interrupt-parent = <&plic0>;
>> +			interrupts = <53>;
>> +			reg = <0x0 0x10090000 0x0 0x2000
>> +			       0x0 0x100a0000 0x0 0x1000>;
>> +			reg-names = "control";
>> +			status = "disabled";
>> +			local-mac-address = [00 00 00 00 00 00];
>> +			clock-names = "pclk", "hclk";
>> +			clocks = <&prci PRCI_CLK_GEMGXLPLL>,
>> +				 <&prci PRCI_CLK_GEMGXLPLL>;
>> +			#address-cells = <1>;
>> +			#size-cells = <0>;
>> +		};
>> +
>> 	};
>> };
>> diff --git a/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
>> b/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
>> index 4da8870..d783bf2 100644
>> --- a/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
>> +++ b/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
>> @@ -63,3 +63,12 @@
>> 		disable-wp;
>> 	};
>> };
>> +
>> +&eth0 {
>> +	status = "okay";
>> +	phy-mode = "gmii";
>> +	phy-handle = <&phy1>;
>> +	phy1: ethernet-phy@0 {
>> +		reg = <0>;
>> +	};
>> +};
> 
> Thanks. I am able to boot Unleashed with networking enabled with this
> patch.
> 
> FWIW, 
> Tested-by: Atish Patra <atish.patra@wdc.com>
> 
> Regards,
> Atish

I am able to boot using a build from the dev/new-dts branch of
my freedom-u-sdk development tree [1] which has this patch
with an additional reset-gpios entry for the ethernet phy in the
DTS provided by the legacy U-boot[2].

Tested-by: Troy Benjegerdes <troy.benjegerdes@sifive.com>

[1] https://github.com/tmagik/freedom-u-sdk 
[2] https://github.com/sifive/HiFive_U-Boot/blob/081373fa3eb0ca79ba3f4a703e8e83a15135a6d1/arch/riscv/dts/hifive_u540.dts#L73
_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
