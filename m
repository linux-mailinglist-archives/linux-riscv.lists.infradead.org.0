Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D95B10F98E
	for <lists+linux-riscv@lfdr.de>; Tue,  3 Dec 2019 09:16:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d30TuHAKSgR/RQ4xCcrDaXrDbK+HSZg8iATRtuayfx8=; b=Ag3+qLZ6u2rwSj
	9QydixnS118jjpV5uZ5dTEElaY4fRjDkHr1Ogn7rKliY0d+I08soQ2VkfbhHZiHbmaC8dgfD53Z6q
	SBJJOjzfzBOS+XzoufwOTaS9wjEODZg58B+7SK322S0MUEeAPYl55/LbkalEtlXNnbsV1AN6LUemf
	WiXApSKCejlbDHnr5nQA4BAU5iis7es0YoEC9SGnEgB4Wgh/I69XXft7ZkdGBfG/gX3C61wg2Zjen
	NQWzxOwHZjsPju45eVN9NGz7LJ/+sFAr1I9fnN270ryIui0S6T9HXbvYvdWf0C6qBnUDahHxDHjl2
	nV/U65Td2lp8JIgnxbZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic3Le-0003fI-7R; Tue, 03 Dec 2019 08:15:54 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic3LN-0003T1-54; Tue, 03 Dec 2019 08:15:40 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id E3C94ACB4;
 Tue,  3 Dec 2019 08:15:33 +0000 (UTC)
Subject: Re: [PATCH 0/6] arm64: Realtek RTD1619 clock and reset controllers
To: James Tai <james.tai@realtek.com>
References: <20191203073540.9321-1-james.tai@realtek.com>
From: =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>
Organization: SUSE Software Solutions Germany GmbH
Message-ID: <0fcbcb58-6973-d903-91c3-844008094fda@suse.de>
Date: Tue, 3 Dec 2019 09:15:33 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <20191203073540.9321-1-james.tai@realtek.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_001537_486694_0F4303FF 
X-CRM114-Status: GOOD (  13.05  )
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
Cc: devicetree@vger.kernel.org, Cheng-Yu Lee <cylee12@realtek.com>,
 "linux-realtek-soc@lists.infradead.org"
 <linux-realtek-soc@lists.infradead.org>, Palmer Dabbelt <palmer@sifive.com>,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-riscv@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi James,

Am 03.12.19 um 08:35 schrieb James Tai:
> This series adds clock and reset controllers for the Realtek RTD1619 SoC.

Thanks - when you resend (in this case I guess because of missing
linux-realtek-soc mailing list), please change the subject prefix to
"PATCH RESEND" (--subject-prefix=) so that people know which one to
reply to.

Let's try to keep the review on the series sent 10 minutes later (:45),
so that everyone receives it.

Thanks,
Andreas

> 
> Cc: Andreas Färber <afaerber@suse.de>
> Cc: Cheng-Yu Lee <cylee12@realtek.com>
> Cc: devicetree@vger.kernel.org
> 
> cylee12 (6):
>   dt-bindings: clock: add bindings for RTD1619 clocks
>   dt-bindings: reset: add bindings for rtd1619 reset controls
>   clk: realtek: add common clock support for Realtek SoCs
>   clk: realtek: add reset controller support for Realtek SoCs
>   clk: realtek: add rtd1619 controllers
>   dt-bindings: clk: realtek: add rtd1619 clock controller bindings
> 
>  .../bindings/clock/realtek,clocks.txt         |  38 ++
>  drivers/clk/Kconfig                           |   1 +
>  drivers/clk/Makefile                          |   1 +
>  drivers/clk/realtek/Kconfig                   |  21 +
>  drivers/clk/realtek/Makefile                  |  12 +
>  drivers/clk/realtek/clk-pll-dif.c             |  81 +++
>  drivers/clk/realtek/clk-pll-psaud.c           | 120 ++++
>  drivers/clk/realtek/clk-pll.c                 | 400 +++++++++++++
>  drivers/clk/realtek/clk-pll.h                 | 151 +++++
>  drivers/clk/realtek/clk-regmap-gate.c         |  89 +++
>  drivers/clk/realtek/clk-regmap-gate.h         |  26 +
>  drivers/clk/realtek/clk-regmap-mux.c          |  63 ++
>  drivers/clk/realtek/clk-regmap-mux.h          |  26 +
>  drivers/clk/realtek/clk-rtd1619-cc.c          | 553 ++++++++++++++++++
>  drivers/clk/realtek/clk-rtd1619-ic.c          | 112 ++++
>  drivers/clk/realtek/common.c                  | 320 ++++++++++
>  drivers/clk/realtek/common.h                  | 123 ++++
>  drivers/clk/realtek/reset.c                   | 107 ++++
>  drivers/clk/realtek/reset.h                   |  37 ++
>  include/dt-bindings/clock/rtk,clock-rtd1619.h |  88 +++
>  include/dt-bindings/reset/rtk,reset-rtd1619.h | 124 ++++
>  21 files changed, 2493 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/clock/realtek,clocks.txt
>  create mode 100644 drivers/clk/realtek/Kconfig
>  create mode 100644 drivers/clk/realtek/Makefile
>  create mode 100644 drivers/clk/realtek/clk-pll-dif.c
>  create mode 100644 drivers/clk/realtek/clk-pll-psaud.c
>  create mode 100644 drivers/clk/realtek/clk-pll.c
>  create mode 100644 drivers/clk/realtek/clk-pll.h
>  create mode 100644 drivers/clk/realtek/clk-regmap-gate.c
>  create mode 100644 drivers/clk/realtek/clk-regmap-gate.h
>  create mode 100644 drivers/clk/realtek/clk-regmap-mux.c
>  create mode 100644 drivers/clk/realtek/clk-regmap-mux.h
>  create mode 100644 drivers/clk/realtek/clk-rtd1619-cc.c
>  create mode 100644 drivers/clk/realtek/clk-rtd1619-ic.c
>  create mode 100644 drivers/clk/realtek/common.c
>  create mode 100644 drivers/clk/realtek/common.h
>  create mode 100644 drivers/clk/realtek/reset.c
>  create mode 100644 drivers/clk/realtek/reset.h
>  create mode 100644 include/dt-bindings/clock/rtk,clock-rtd1619.h
>  create mode 100644 include/dt-bindings/reset/rtk,reset-rtd1619.h
> 


-- 
SUSE Software Solutions Germany GmbH
Maxfeldstr. 5, 90409 Nürnberg, Germany
GF: Felix Imendörffer
HRB 36809 (AG Nürnberg)

