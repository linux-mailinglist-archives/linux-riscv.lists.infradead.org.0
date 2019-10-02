Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 448F8C89EF
	for <lists+linux-riscv@lfdr.de>; Wed,  2 Oct 2019 15:39:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gyuwRSG5+tFFOEb6z1K1VSNyz8SehmlnxIdq0D+r2Zw=; b=aX7CJOBueLuRW3
	gLU9X55rJYHKEGhVuEAPf8lPkfh2RNAxXfyHERRgLBh7V0fFvdr0dl5edbGVE2tuY534enHjbi1a/
	pOfPF+yRdj7KwgmLHaVmtMKVm6tcIp5yAd2Y10/p/mt4fzMpAiPIZ6zH5pT0paeuNFNfmstZxHYqk
	FC8cph9yJobPq/7nGYQSR3TTAzqBswLfr07A0RcPkOLV4NeWzLPpmo6h9Nc8i721XBJsO0SmoW9gV
	eWrcObILoumubnA4vyvriMPRx0j0+lwVZYqk/DdouGjL3/6drOZjPECAK4F11Ls3mqrnvNHj6mD04
	jZUd442/nzDF06s8NswQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFer4-000348-6a; Wed, 02 Oct 2019 13:39:46 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFer0-00033g-Kp
 for linux-riscv@lists.infradead.org; Wed, 02 Oct 2019 13:39:44 +0000
Received: by mail-pg1-x542.google.com with SMTP id a3so11816730pgm.13
 for <linux-riscv@lists.infradead.org>; Wed, 02 Oct 2019 06:39:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=6VcOYbiMtfSp75brRYu+wOZCVtITZ2k75g02wJDdsQQ=;
 b=pYWF3ACokblJI+Ye2mivZYsXL1z1gfKKeuJAFd17eoLlctS++pukFZ8oZWlk4fC7Rl
 62B6MoBjzdPobwSjBdyn1TP3od98G/fu9mbxkMeqEL/gj5xs6TIb2JVeH/gAlevz8yvf
 G1GQ/LtAzAtF71kjlIfdM/vSk0S85vcYRz3YvwWjfjljKv0P2eWP/1CxSLmoVyAQD5ep
 4z/8RcBmBA7maMmbDyTy2tQb9ec9laiXlpNLZq9Xf/0b6mDGiebH/bkPIzczqpwQkqP7
 SPcWwDenSifG1UIZwSEPDQPoivLvFTXoQ2iKQgazsKAQHujwYZ+kscwgYUi78WJJdY5H
 olPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=6VcOYbiMtfSp75brRYu+wOZCVtITZ2k75g02wJDdsQQ=;
 b=d6NP99ABRUpI+rO857ehjfwDPIv0khgehoO5T3fprIEjfjm4zBCmj263nq859wvypo
 udMIN5fpcsPAN4YuCF/6tTBEcAjn36384HNhctNWSJCr4eqdAHS967jijmEvIhEqsPiy
 14wUwzM6OLFlhKLDcZBOL24CYeRhxweDvAQFPgq/jrsIK5es2f6uKdEKdQAwfLfKdzrC
 59jrJns9i2wO5AEa7XCUQ3zrOF83al4ZvBYpNRqonJ6Jf+zYyJzwRzzF9AXJfGLviWUD
 cT0E6mVxrnhuZsv/IDzfcM3mWNEfq7LRC90T/SU/uAyEdiU5K4nojpHJh6w4Qe/CwIPf
 pCeQ==
X-Gm-Message-State: APjAAAXhxNN6bZYUyvQNhgRMmLXT9sqMVTjq6HnJf9hIbSpXceygCxke
 vIPd1j9t3j0740xdfXEG2+A=
X-Google-Smtp-Source: APXvYqwNGNt1SHI/Kw11oFI1x12Y7sHTzCioXskj8GgCT3rfCp8rn89Xg15Ak8p7yfNjIVKbO4yfHw==
X-Received: by 2002:aa7:96ab:: with SMTP id g11mr4796821pfk.61.1570023581602; 
 Wed, 02 Oct 2019 06:39:41 -0700 (PDT)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id r1sm17307241pgv.70.2019.10.02.06.39.40
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 02 Oct 2019 06:39:40 -0700 (PDT)
Date: Wed, 2 Oct 2019 06:39:40 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
Subject: Re: [PATCH 1/3] docs: fix some broken references
Message-ID: <20191002133940.GA29214@roeck-us.net>
References: <b87385b2ac6ce6c75df82062fce2976149bbaa6b.1569330078.git.mchehab+samsung@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b87385b2ac6ce6c75df82062fce2976149bbaa6b.1569330078.git.mchehab+samsung@kernel.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_063942_686094_77C96D4D 
X-CRM114-Status: GOOD (  22.58  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (groeck7[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (groeck7[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 James Hogan <jhogan@kernel.org>, Linus Walleij <linus.walleij@linaro.org>,
 Palmer Dabbelt <palmer@sifive.com>, linux-mips@vger.kernel.org,
 Albert Ou <aou@eecs.berkeley.edu>, linux-riscv@lists.infradead.org,
 Thomas Gleixner <tglx@linutronix.de>, linux-cifs@vger.kernel.org,
 Leon Romanovsky <leon@kernel.org>, corbet@lwn.net, linux-rdma@vger.kernel.org,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Saeed Mahameed <saeedm@mellanox.com>, devicetree@vger.kernel.org,
 Jean Delvare <jdelvare@suse.com>,
 Mauro Carvalho Chehab <mchehab@infradead.org>, linux-gpio@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Paul Walmsley <paul.walmsley@sifive.com>,
 Pensando Drivers <drivers@pensando.io>, linux-hwmon@vger.kernel.org,
 netdev@vger.kernel.org, samba-technical@lists.samba.org,
 linux-kernel@vger.kernel.org, Ralf Baechle <ralf@linux-mips.org>,
 Steve French <sfrench@samba.org>, Paul Burton <paul.burton@mips.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Shannon Nelson <snelson@pensando.io>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, Sep 24, 2019 at 10:01:28AM -0300, Mauro Carvalho Chehab wrote:
> There are a number of documentation files that got moved or
> renamed. update their references.
> 
> Signed-off-by: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
> Acked-by: Shannon Nelson <snelson@pensando.io>
> ---
>  Documentation/devicetree/bindings/cpu/cpu-topology.txt    | 2 +-
>  Documentation/devicetree/bindings/timer/ingenic,tcu.txt   | 2 +-
>  Documentation/driver-api/gpio/driver.rst                  | 2 +-
>  Documentation/hwmon/inspur-ipsps1.rst                     | 2 +-

For hwmon:

Acked-by: Guenter Roeck <linux@roeck-us.net>

>  Documentation/mips/ingenic-tcu.rst                        | 2 +-
>  Documentation/networking/device_drivers/mellanox/mlx5.rst | 2 +-
>  MAINTAINERS                                               | 2 +-
>  drivers/net/ethernet/faraday/ftgmac100.c                  | 2 +-
>  drivers/net/ethernet/pensando/ionic/ionic_if.h            | 4 ++--
>  fs/cifs/cifsfs.c                                          | 2 +-
>  10 files changed, 11 insertions(+), 11 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/cpu/cpu-topology.txt b/Documentation/devicetree/bindings/cpu/cpu-topology.txt
> index 99918189403c..9bd530a35d14 100644
> --- a/Documentation/devicetree/bindings/cpu/cpu-topology.txt
> +++ b/Documentation/devicetree/bindings/cpu/cpu-topology.txt
> @@ -549,5 +549,5 @@ Example 3: HiFive Unleashed (RISC-V 64 bit, 4 core system)
>  [2] Devicetree NUMA binding description
>      Documentation/devicetree/bindings/numa.txt
>  [3] RISC-V Linux kernel documentation
> -    Documentation/devicetree/bindings/riscv/cpus.txt
> +    Documentation/devicetree/bindings/riscv/cpus.yaml
>  [4] https://www.devicetree.org/specifications/
> diff --git a/Documentation/devicetree/bindings/timer/ingenic,tcu.txt b/Documentation/devicetree/bindings/timer/ingenic,tcu.txt
> index 5a4b9ddd9470..7f6fe20503f5 100644
> --- a/Documentation/devicetree/bindings/timer/ingenic,tcu.txt
> +++ b/Documentation/devicetree/bindings/timer/ingenic,tcu.txt
> @@ -2,7 +2,7 @@ Ingenic JZ47xx SoCs Timer/Counter Unit devicetree bindings
>  ==========================================================
>  
>  For a description of the TCU hardware and drivers, have a look at
> -Documentation/mips/ingenic-tcu.txt.
> +Documentation/mips/ingenic-tcu.rst.
>  
>  Required properties:
>  
> diff --git a/Documentation/driver-api/gpio/driver.rst b/Documentation/driver-api/gpio/driver.rst
> index 3fdb32422f8a..9076cc76d5bf 100644
> --- a/Documentation/driver-api/gpio/driver.rst
> +++ b/Documentation/driver-api/gpio/driver.rst
> @@ -493,7 +493,7 @@ available but we try to move away from this:
>    gpiochip. It will pass the struct gpio_chip* for the chip to all IRQ
>    callbacks, so the callbacks need to embed the gpio_chip in its state
>    container and obtain a pointer to the container using container_of().
> -  (See Documentation/driver-model/design-patterns.txt)
> +  (See Documentation/driver-api/driver-model/design-patterns.rst)
>  
>  - gpiochip_irqchip_add_nested(): adds a nested cascaded irqchip to a gpiochip,
>    as discussed above regarding different types of cascaded irqchips. The
> diff --git a/Documentation/hwmon/inspur-ipsps1.rst b/Documentation/hwmon/inspur-ipsps1.rst
> index 2b871ae3448f..ed32a65c30e1 100644
> --- a/Documentation/hwmon/inspur-ipsps1.rst
> +++ b/Documentation/hwmon/inspur-ipsps1.rst
> @@ -17,7 +17,7 @@ Usage Notes
>  -----------
>  
>  This driver does not auto-detect devices. You will have to instantiate the
> -devices explicitly. Please see Documentation/i2c/instantiating-devices for
> +devices explicitly. Please see Documentation/i2c/instantiating-devices.rst for
>  details.
>  
>  Sysfs entries
> diff --git a/Documentation/mips/ingenic-tcu.rst b/Documentation/mips/ingenic-tcu.rst
> index c4ef4c45aade..c5a646b14450 100644
> --- a/Documentation/mips/ingenic-tcu.rst
> +++ b/Documentation/mips/ingenic-tcu.rst
> @@ -68,4 +68,4 @@ and frameworks can be controlled from the same registers, all of these
>  drivers access their registers through the same regmap.
>  
>  For more information regarding the devicetree bindings of the TCU drivers,
> -have a look at Documentation/devicetree/bindings/mfd/ingenic,tcu.txt.
> +have a look at Documentation/devicetree/bindings/timer/ingenic,tcu.txt.
> diff --git a/Documentation/networking/device_drivers/mellanox/mlx5.rst b/Documentation/networking/device_drivers/mellanox/mlx5.rst
> index d071c6b49e1f..a74422058351 100644
> --- a/Documentation/networking/device_drivers/mellanox/mlx5.rst
> +++ b/Documentation/networking/device_drivers/mellanox/mlx5.rst
> @@ -258,7 +258,7 @@ mlx5 tracepoints
>  ================
>  
>  mlx5 driver provides internal trace points for tracking and debugging using
> -kernel tracepoints interfaces (refer to Documentation/trace/ftrase.rst).
> +kernel tracepoints interfaces (refer to Documentation/trace/ftrace.rst).
>  
>  For the list of support mlx5 events check /sys/kernel/debug/tracing/events/mlx5/
>  
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 54f1286087e9..65b7d9a0a44a 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -3680,7 +3680,7 @@ M:	Oleksij Rempel <o.rempel@pengutronix.de>
>  R:	Pengutronix Kernel Team <kernel@pengutronix.de>
>  L:	linux-can@vger.kernel.org
>  S:	Maintained
> -F:	Documentation/networking/j1939.txt
> +F:	Documentation/networking/j1939.rst
>  F:	net/can/j1939/
>  F:	include/uapi/linux/can/j1939.h
>  
> diff --git a/drivers/net/ethernet/faraday/ftgmac100.c b/drivers/net/ethernet/faraday/ftgmac100.c
> index 9b7af94a40bb..8abe5e90d268 100644
> --- a/drivers/net/ethernet/faraday/ftgmac100.c
> +++ b/drivers/net/ethernet/faraday/ftgmac100.c
> @@ -1835,7 +1835,7 @@ static int ftgmac100_probe(struct platform_device *pdev)
>  		}
>  
>  		/* Indicate that we support PAUSE frames (see comment in
> -		 * Documentation/networking/phy.txt)
> +		 * Documentation/networking/phy.rst)
>  		 */
>  		phy_support_asym_pause(phy);
>  
> diff --git a/drivers/net/ethernet/pensando/ionic/ionic_if.h b/drivers/net/ethernet/pensando/ionic/ionic_if.h
> index 5bfdda19f64d..80028f781c83 100644
> --- a/drivers/net/ethernet/pensando/ionic/ionic_if.h
> +++ b/drivers/net/ethernet/pensando/ionic/ionic_if.h
> @@ -596,8 +596,8 @@ enum ionic_txq_desc_opcode {
>   *                      the @encap is set, the device will
>   *                      offload the outer header checksums using
>   *                      LCO (local checksum offload) (see
> - *                      Documentation/networking/checksum-
> - *                      offloads.txt for more info).
> + *                      Documentation/networking/checksum-offloads.rst
> + *                      for more info).
>   *
>   *                   IONIC_TXQ_DESC_OPCODE_CSUM_HW:
>   *
> diff --git a/fs/cifs/cifsfs.c b/fs/cifs/cifsfs.c
> index 2e9c7f493f99..811f510578cb 100644
> --- a/fs/cifs/cifsfs.c
> +++ b/fs/cifs/cifsfs.c
> @@ -1529,7 +1529,7 @@ init_cifs(void)
>  	/*
>  	 * Consider in future setting limit!=0 maybe to min(num_of_cores - 1, 3)
>  	 * so that we don't launch too many worker threads but
> -	 * Documentation/workqueue.txt recommends setting it to 0
> +	 * Documentation/core-api/workqueue.rst recommends setting it to 0
>  	 */
>  
>  	/* WQ_UNBOUND allows decrypt tasks to run on any CPU */

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
