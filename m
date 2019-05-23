Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3843628BDE
	for <lists+linux-riscv@lfdr.de>; Thu, 23 May 2019 22:50:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S56+kznQdkgc0YeusL+MQD76dPTrDMMGYmX0Qt1KKTw=; b=TlaCBVR8n3xgW4
	WgM6mC1aymWTFb4eH7PjtmTuWIYtUdiqI8YWZ60G0Cytl43KOP+pfm17//D62n6qScGRfEk2JBi2m
	28JcTtXuJRGx7S+4EL008TsD2o25/8N17dcXS7/fQgQs1vZA5Rre6h8qDDLfRj+m1cHBqvAE5m+UT
	/GqPkfkGng5Hd9bD8GMrB8uEgffgEjej+aC+7YgLDyIe1ohTDyHfS6b5o/w4KxEOGDX6buVU7xcaW
	1yb/Yu+36FxGRU/Lb4aOXTJP0Qx6eHKN0gHDGhM0cBhHaFKVPCu63YNRUOa6uFFoNVWldxTgx0yJ4
	nGjp5jomf72WSj+QTb2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTufj-0003Fg-TI; Thu, 23 May 2019 20:50:43 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTufg-0003F7-NF
 for linux-riscv@lists.infradead.org; Thu, 23 May 2019 20:50:42 +0000
Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com
 [209.85.160.176])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DFF3E2075B
 for <linux-riscv@lists.infradead.org>; Thu, 23 May 2019 20:50:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558644640;
 bh=v6PSwAorcPKsWe7jiuNmsouiSwC/iTj+RqZEfhl5wTU=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=SMBTwyvzSt1F5ozWUbD29AFuSoG5yodL9g9xTOgk7k4KHvabNSSSBZvOlcJvlCt0d
 cYISszwzLapIGXwrHlVJbIl9Fvy3QPG6bhkPqkiiPTne0Wr4tMv+JEzPLo5Q4g9QVz
 aoyz81UXWQSQ5YnefxbKRw75NgYq9Vr7WYCsYzpQ=
Received: by mail-qt1-f176.google.com with SMTP id a39so8482809qtk.2
 for <linux-riscv@lists.infradead.org>; Thu, 23 May 2019 13:50:39 -0700 (PDT)
X-Gm-Message-State: APjAAAVzES4kR8fXmR+4WQDNQlGaLgsEgssQxefXMInSj4nHW0/FJ2z7
 oE64qlvDa9hldjfyj6dWU5a5dYw5Vc5g1kp9iw==
X-Google-Smtp-Source: APXvYqyk2vyztm4zwYJzGtYVs0A1UsF2AgpBVYwW7kI4E/hcqrA3rdHk74Zzd/2PUeAN58XxIUsRMSc9Om4BskeB+nQ=
X-Received: by 2002:a0c:929a:: with SMTP id b26mr79051384qvb.148.1558644639198; 
 Thu, 23 May 2019 13:50:39 -0700 (PDT)
MIME-Version: 1.0
References: <1558611952-13295-1-git-send-email-yash.shah@sifive.com>
 <1558611952-13295-2-git-send-email-yash.shah@sifive.com>
In-Reply-To: <1558611952-13295-2-git-send-email-yash.shah@sifive.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Thu, 23 May 2019 15:50:27 -0500
X-Gmail-Original-Message-ID: <CAL_Jsq+p5PnTDgxuh9_Aw1RvTk4aTYjKxyMq7DPczLzQVv8_ew@mail.gmail.com>
Message-ID: <CAL_Jsq+p5PnTDgxuh9_Aw1RvTk4aTYjKxyMq7DPczLzQVv8_ew@mail.gmail.com>
Subject: Re: [PATCH 1/2] net/macb: bindings doc: add sifive fu540-c000 binding
To: Yash Shah <yash.shah@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_135040_973589_2FDA7048 
X-CRM114-Status: GOOD (  17.10  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-riscv@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 Albert Ou <aou@eecs.berkeley.edu>, netdev <netdev@vger.kernel.org>,
 Palmer Dabbelt <palmer@sifive.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Sachin Ghadi <sachin.ghadi@sifive.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>, linux-riscv@lists.infradead.org,
 David Miller <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, May 23, 2019 at 6:46 AM Yash Shah <yash.shah@sifive.com> wrote:
>
> Add the compatibility string documentation for SiFive FU540-C0000
> interface.
> On the FU540, this driver also needs to read and write registers in a
> management IP block that monitors or drives boundary signals for the
> GEMGXL IP block that are not directly mapped to GEMGXL registers.
> Therefore, add additional range to "reg" property for SiFive GEMGXL
> management IP registers.
>
> Signed-off-by: Yash Shah <yash.shah@sifive.com>
> ---
>  Documentation/devicetree/bindings/net/macb.txt | 3 +++
>  1 file changed, 3 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/net/macb.txt b/Documentation/devicetree/bindings/net/macb.txt
> index 9c5e944..91a2a66 100644
> --- a/Documentation/devicetree/bindings/net/macb.txt
> +++ b/Documentation/devicetree/bindings/net/macb.txt
> @@ -4,6 +4,7 @@ Required properties:
>  - compatible: Should be "cdns,[<chip>-]{macb|gem}"
>    Use "cdns,at91rm9200-emac" Atmel at91rm9200 SoC.
>    Use "cdns,at91sam9260-macb" for Atmel at91sam9 SoCs.
> +  Use "cdns,fu540-macb" for SiFive FU540-C000 SoC.

This pattern that Atmel started isn't really correct. The vendor
prefix here should be sifive. 'cdns' would be appropriate for a
fallback.

>    Use "cdns,sam9x60-macb" for Microchip sam9x60 SoC.
>    Use "cdns,np4-macb" for NP4 SoC devices.
>    Use "cdns,at32ap7000-macb" for other 10/100 usage or use the generic form: "cdns,macb".
> @@ -17,6 +18,8 @@ Required properties:
>    Use "cdns,zynqmp-gem" for Zynq Ultrascale+ MPSoC.
>    Or the generic form: "cdns,emac".
>  - reg: Address and length of the register set for the device
> +       For "cdns,fu540-macb", second range is required to specify the
> +       address and length of the registers for GEMGXL Management block.
>  - interrupts: Should contain macb interrupt
>  - phy-mode: See ethernet.txt file in the same directory.
>  - clock-names: Tuple listing input clock names.
> --
> 1.9.1
>

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
