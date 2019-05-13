Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B98F1BEDA
	for <lists+linux-riscv@lfdr.de>; Mon, 13 May 2019 22:56:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UeDy/xWc8JeSoWYU4E98QQ0W4iVZawtYCj9QrEl+80I=; b=pygRlugIFPgsZH
	wTSaL7ouroJj1toviK73RdkRouyI5kn1na/oVdP3hoFjVH8kUunXVI7QlLC5G4bLHlp4rH0HBchPg
	XBHH8rJPWxL3xdlBDfoDC/wiQOOAj3c6T0YfRmt7CdpUbrZ7xu1zCuS3JP4RcP/qTyEdRs1+JFuSp
	fBrTD9jr5wpwUsSsVLab3/ILeIrJaCqCMCznaOmt8lzBsHr+GcWAzvRNLXSJqqEVV4bkhoYgJiPds
	ClCI6TgqnIR+9KacHTP/EMDElT3S8tO/lL1Yg0o+Vkq6IelXWrAXULCukLaDiEc8kEr0CZPeME1Ah
	+QZ62EVe+lP4JIY65owg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQHzi-0004FO-LD; Mon, 13 May 2019 20:56:22 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQHze-0004EZ-Ly
 for linux-riscv@lists.infradead.org; Mon, 13 May 2019 20:56:20 +0000
Received: by mail-oi1-f195.google.com with SMTP id z65so3230646oia.11
 for <linux-riscv@lists.infradead.org>; Mon, 13 May 2019 13:56:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=mcXl3kCKb5KgymSfUTp36sQGmUpApKFd35PSjLLza2s=;
 b=ZAwP7R9EgDmqrW4znR8L1af1ysptd/jo4xmu1TFZmX1UIUIIp2LmzRJBULYwboDn86
 RnH1Eog1qFdIQUZxjsisJld9rqkTv4M/lEtTbNMpEc4hlpdAiXfvHUib0TjRv4b0Fm7n
 DgKvMkBnRi67V9Z0rOLHTHo7U/Suqh38BMtwekoyPyvjjzHk3T0S90toxymp9gsqq0et
 0DzOBIrpE15ldj+k33QjChCJnQmjtiL97LkfvejzJ27UCAKB3E6XW+5dI7ObyDTrrvkM
 Df9qfBRKJ1FSOx4MaBAGzxwiRxe+08610pr6ucVA66Jbci8MGMkfSXZDDTA804QEQNj3
 dRYQ==
X-Gm-Message-State: APjAAAVraIBcusjNPvXKSwBtsN07USpVDe2lFL8768sbrc/8eppOweHH
 Pc+Oprkcovn4bVV4UXziRYEuzE8=
X-Google-Smtp-Source: APXvYqzIsXcXQJgcJ9Z3I5TOGeERLXFISQjzhCutcR9o7qybv7IPuw5Qz8r2lvriy6XfNBbt3ZoU0Q==
X-Received: by 2002:aca:c202:: with SMTP id s2mr742556oif.91.1557780977251;
 Mon, 13 May 2019 13:56:17 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id m203sm5706301oib.45.2019.05.13.13.56.16
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 13 May 2019 13:56:16 -0700 (PDT)
Date: Mon, 13 May 2019 15:56:15 -0500
From: Rob Herring <robh@kernel.org>
To: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
Subject: Re: [PATCH v2 v2 1/3] dt-bindings: i2c: extend existing opencore
 bindings.
Message-ID: <20190513205615.GA5844@bogus>
References: <1557242108-13580-1-git-send-email-sagar.kadam@sifive.com>
 <1557242108-13580-2-git-send-email-sagar.kadam@sifive.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1557242108-13580-2-git-send-email-sagar.kadam@sifive.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_135618_714507_5A868363 
X-CRM114-Status: GOOD (  20.95  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: mark.rutland@arm.com, andrew@lunn.ch, peter@korsgaard.com,
 devicetree@vger.kernel.org, palmer@sifive.com, linux-kernel@vger.kernel.org,
 linux-i2c@vger.kernel.org, paul.walmsley@sifive.com,
 linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, May 07, 2019 at 08:45:06PM +0530, Sagar Shrikant Kadam wrote:
> Add FU540-C000 specific device tree bindings to already
> available i2-ocores file. This device is available on
> HiFive Unleashed Rev A00 board.
> 
> Signed-off-by: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
> ---
>  Documentation/devicetree/bindings/i2c/i2c-ocores.txt | 20 ++++++++++++++++++++
>  1 file changed, 20 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/i2c/i2c-ocores.txt b/Documentation/devicetree/bindings/i2c/i2c-ocores.txt
> index 17bef9a..f6bcf90 100644
> --- a/Documentation/devicetree/bindings/i2c/i2c-ocores.txt
> +++ b/Documentation/devicetree/bindings/i2c/i2c-ocores.txt
> @@ -2,6 +2,7 @@ Device tree configuration for i2c-ocores
>  
>  Required properties:
>  - compatible      : "opencores,i2c-ocores" or "aeroflexgaisler,i2cmst"
> +                    "sifive,fu540-c000-i2c" or "sifive,i2c0"

If this is Opencores IP, does it really follow the Sifive versioning 
convention? If so, please reference sifive-blocks-ip-versioning.txt 
(which appears to have missed going upstream). Also, referencing the IP 
repository would be good too. If this IP block doesn't follow the same 
convention, then don't try using it for this binding.

>  - reg             : bus address start and address range size of device
>  - interrupts      : interrupt number
>  - clocks          : handle to the controller clock; see the note below.
> @@ -67,3 +68,22 @@ or
>  			reg = <0x60>;
>  		};
>  	};
> +or

Just a new compatible isn't really a reason to add an example.

> +	/*
> +	  An Opencore based I2C node in FU540-C000 chip from SiFive
> +	  This chip has a hardware erratum for broken IRQ
> +	  so it's recommended not to define interrupt in the device node

Then interrupts needs to be optional.

> +	*/
> +	i2c@10030000 {
> +			compatible = "sifive,i2c0","sifive,fu540-c000-i2c";
> +			reg = <0x0 0x10030000 0x0 0x1000>;
> +			reg-names = "i2c-control";

Not doucmented.

> +			clocks = <&tlclk>;
> +			clock-frequency = <100000>;
> +
> +			reg-shift = <2>;
> +			reg-io-width = <1>;
> +
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +	};
> -- 
> 1.9.1
> 
> 
> -- 
> The information transmitted is intended only for the person or entity to 
> which it is addressed and may contain confidential and/or privileged 
> material. If you are not the intended recipient of this message please do 
> not read, copy, use or disclose this communication and notify the sender 
> immediately. It should be noted that any review, retransmission, 
> dissemination or other use of, or taking action or reliance upon, this 
> information by persons or entities other than the intended recipient is 
> prohibited.

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
