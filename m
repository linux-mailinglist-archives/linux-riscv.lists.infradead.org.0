Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64FEF110496
	for <lists+linux-riscv@lfdr.de>; Tue,  3 Dec 2019 19:56:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ULTlBdEA0b+iqvodCJq6Zw6DMD4clLB1lqyRLH8CjSM=; b=EMza61dCxwlmaN
	gLfs1QhSs/9Oamx0m5DaG3ZcBvGbIHmnOpDCV1K19gLNcUoYgEMFyeJJTloxCblGU6r0sT33r4z6o
	iJkJumAb/IIixXAVOoSHjHiq2X9n8afgqvVLVhIiBF7fAoFKBe41iBCk9EPV81pJdoCLUsRo1cU76
	ZMNBjzDba+4YguHoJtvEhRQHbjIJ69DkpcdDlSl+USlEalrhmaf/AheHhfKxzTx95irt5pEPss+tz
	rKHGOX6Zgr6h88ClKKLbKp5FC4WFdFVPi2sbgQi57eR7u+8Yj9VpZs5J12FIXFqpT91dq3RlelTow
	3SJjsag3mFNBEkwhweuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icDKr-00062I-VQ; Tue, 03 Dec 2019 18:55:46 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icDKZ-0005q2-Ue; Tue, 03 Dec 2019 18:55:29 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 0884CB12D;
 Tue,  3 Dec 2019 18:55:26 +0000 (UTC)
Subject: Re: [PATCH 6/6] dt-bindings: clk: realtek: add rtd1619 clock
 controller bindings
To: James Tai <james.tai@realtek.com>
References: <20191203074513.9416-1-james.tai@realtek.com>
 <20191203074513.9416-7-james.tai@realtek.com>
From: =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>
Organization: SUSE Software Solutions Germany GmbH
Message-ID: <f16bc1ef-8b69-feb4-bf1a-b015d7f8618e@suse.de>
Date: Tue, 3 Dec 2019 19:55:24 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <20191203074513.9416-7-james.tai@realtek.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_105528_278515_BA3773AD 
X-CRM114-Status: GOOD (  23.87  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 cylee12 <cylee12@realtek.com>, linux-realtek-soc@lists.infradead.org,
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Philipp Zabel <p.zabel@pengutronix.de>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-riscv@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi James,

[dropping Palmer, adding Philipp]

Am 03.12.19 um 08:45 schrieb James Tai:
> From: cylee12 <cylee12@realtek.com>

Author.

$subject: clk vs. clock prefix

Lacking a commit message here.

> 
> Signed-off-by: Cheng-Yu Lee <cylee12@realtek.com>
> Signed-off-by: James Tai <james.tai@realtek.com>
> ---
>  .../bindings/clock/realtek,clocks.txt         | 38 +++++++++++++++++++

Please use YAML schema for any new bindings.

>  1 file changed, 38 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/clock/realtek,clocks.txt

This patch needs to be ordered before patches using the binding in a
driver or DT. In this case it should've been squashed into 1/6.

> diff --git a/Documentation/devicetree/bindings/clock/realtek,clocks.txt b/Documentation/devicetree/bindings/clock/realtek,clocks.txt
> new file mode 100644
> index 000000000000..db101508ac6a
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/clock/realtek,clocks.txt
> @@ -0,0 +1,38 @@
> +Realtek Clock/Reset Controller
> +==============================
> +
> +Realtek CRT/ISO controller device-tree binding for Realtek Platforms.
> +
> +This binding uses the common clock binding[1].
> +
> +The controller node should be the child of a syscon node with the required
> +propertise:
> +
> +- compatible :
> +	should contain only one of the following:
> +		"realtek,rtd1619-cc" for RTD1619 CRT clock controller,
> +		"realtek,rtd1619-ic" for RTD1619 ISO clock controller,

-ic does not strike me as the best name, can we go with -iso-something
for consistency?

> +
> +- #clock-cells : should be 1.
> +
> +- #reset-cells : should be 1.
> +
> +[1] Documentation/devicetree/bindings/clock/clock-bindings.txt
> +
> +Example:
> +
> +	crt@98000000 {

crt: syscon@...

Always prefer generic node names when possible.

> +		compatible = "realtek,rtd1619-crt", "simple-mfd", "syscon";

1) You must not use undefined compatible strings in your example! If we
want to use such compatibles (which I agree with in principle), then we
need to post separate bindings patches before you do so. The big issue
there is how to name them to work across SoC families. For that reason
my syscon series did not include dt-bindings, to not hold us up with
them. Drop it here for now?

2) You must retain the valid order, here defined by the syscon binding.
Like I said for the Mjolnir .dts. If we consequently use YAML schemas,
then you can check your .dts files with make dtbs_check and hopefully
notice it yourself before I complain. .dtsi patches are sadly missing in
this series, so you could only run limited make dt_binding_check.

> +		reg = <0x98000000 0x1000>;
> +
> +		cc: cc@98000000 {

cc: clock-controller@...

But you must not give a unit address in absence of reg.

> +			compatible = "realtek,rtd1619-cc";

reg missing. When you add it, you need #address-cells and #size-cells
above, too. Also ranges for completeness. In YAML it gets compile-tested
and should not sprout warnings.

> +			#clock-cells = <1>;
> +			#reset-cells = <1>;

BTW given the complex mappings that you attempt, wouldn't it be easier
to use #reset-cells = <2>? In that case one could again argue that a
per-bank node/driver will be easier.

> +		};
> +	};

Haven't tested this yet, but I wonder whether we could just use
"realtek,rtd1619-crt" for the clock controller directly and still use
the same node as syscon mfd? If not, it might be nice to describe in the
child node's reg what exactly is covered instead of just <0x0 0x1000>.

My point here is that the DT describes the hardware, but that does not
dictate how the Linux drivers bind to DT. clk is no platform_driver, so
you can have clk and reset drivers binding to the same DT compatible.
Did that for STM32 CRT once. However, don't hide the binding under clock
if it's really mfd - someone looking for reset bindings is going to have
a hard time finding them under clock.

> +
> +	consumer {
> +		clocks = <&cc CC_CKE_GSPI>;
> +	};
> +

Regards,
Andreas

-- 
SUSE Software Solutions Germany GmbH
Maxfeldstr. 5, 90409 Nürnberg, Germany
GF: Felix Imendörffer
HRB 36809 (AG Nürnberg)

