Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BBF918386D
	for <lists+linux-riscv@lfdr.de>; Thu, 12 Mar 2020 19:19:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n6CGsDnqQ0WDxJc8QaG2RKHD8RqZgLmpPcgwrAOaAxI=; b=hPo9xiDo0Y8wKM
	KldLNM74b+nUt5goKnd2rARNfFdg+FiKSOBE0MxN6ybArHz6hgBRYmA+i7PKKOJT7QNXQwuXUj0Pd
	V6/KFfE6OJBdbiKi3wlpJB08hEq0qC60hcb780n8nWNzEcW2Pu8PH+DLMM3UP2Ah8KMnCompr0w/E
	F4hyYNGrZGD2dv9CSRuiNynPkPvVPiltyga41BwqgfAg7AbK8cK+bP8Z7lCN1WfZwFt89jsbINsm1
	PhuZjVhe9tIoHtQ8ogOhT6IDKnUZ1NXYfENHK7HitMYyh+UOT6x3FYHUpvP2Y9n6/NkAL3jaeMhYL
	VKafarjz0qAOpjljySww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCSQX-0003tN-Mf; Thu, 12 Mar 2020 18:19:25 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCSQT-0003sZ-Ok
 for linux-riscv@lists.infradead.org; Thu, 12 Mar 2020 18:19:23 +0000
Received: by mail-qk1-x742.google.com with SMTP id d8so7888059qka.2
 for <linux-riscv@lists.infradead.org>; Thu, 12 Mar 2020 11:19:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=n6CGsDnqQ0WDxJc8QaG2RKHD8RqZgLmpPcgwrAOaAxI=;
 b=fNs9t6DGJ+0hfWgcjwBug1ria5PPsAoP0HV1TDogU2bGWjqmAkrfXHCnvJQ5EHjN3q
 r9KvZRtr6lwbm4Z8gzqYu31icoMGTJVtM6MRr5E5zUynm/d/qqEgMt3/JhsUyqw0uXyh
 BVwXPqvo3ZK3uFxiwn+I5F9IwhGqSD248c5NzIKJs0c3QXORJoyq6DsIt1xfaVw3TISw
 GzvJd7q6gAwmCXcL7OiJyreLOj+9ldkQtt6AUeQk5i509Qj5aAn+R0LWf/BIjLm6rBqm
 7ASpgLTE3ADHg3TfZ9NTNAKIHhuOtb3rC4He805d3qE8V8tRibKO3iwakz8B5xMhY+7l
 fqTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=n6CGsDnqQ0WDxJc8QaG2RKHD8RqZgLmpPcgwrAOaAxI=;
 b=ScbUmr/7Wg0n9rHEuRKdjs3E93eO7sW90Uzn4rK3eZsAesInUqDAB4XEnPw213VhE1
 fo7jqeySotb3zY+IHnjPzJkfqctatYe4ZrMerWsIFbNQsObKQvhQWtBdbCjf6KmI8og4
 DbOo3g82p8q9tZHns4WUI/qAmR9QcFBLuzxOKZ5pBvo39VgtFwN/+i1+XgafXHccXP23
 ljOhDJBIm1rT/GXtFw+8K59PB89csn8wnc/Kn9et/kDmrfoEvygKj7pl9a4vypb8BXsZ
 0K+VsxMNle4nEXFXI/GLLen3RxEXDcu11vihIuk2iVTeV+yqnYxXg5+3EtMSibeb/HYZ
 qnpA==
X-Gm-Message-State: ANhLgQ1itZqxrPuAZQKuvM9eQeLlm1V5DEWMYnAOlXiP+/POYH2e5dXA
 t/CeO7BiPK6Dd+brGs/yEEE=
X-Google-Smtp-Source: ADFU+vvfy/HQBXt5P+MhxJvECkJ3gQmuG2KvxAha/nScE/d4b9mJmhTlc610ieVMPvp/qeYvXqEvRw==
X-Received: by 2002:a37:68d2:: with SMTP id d201mr5634338qkc.231.1584037160537; 
 Thu, 12 Mar 2020 11:19:20 -0700 (PDT)
Received: from [192.168.1.201] (pool-71-163-33-7.washdc.fios.verizon.net.
 [71.163.33.7])
 by smtp.googlemail.com with ESMTPSA id x22sm6474131qki.54.2020.03.12.11.19.19
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 12 Mar 2020 11:19:19 -0700 (PDT)
Subject: Re: [PATCH v2 4/9] riscv: Add Kendryte K210 SoC support
To: Damien Le Moal <damien.lemoal@wdc.com>, linux-riscv@lists.infradead.org,
 Palmer Dabbelt <palmer@dabbelt.com>
References: <20200312051107.1454880-1-damien.lemoal@wdc.com>
 <20200312051107.1454880-5-damien.lemoal@wdc.com>
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
Message-ID: <ad9c6b53-0c41-aeaa-d772-af9be6787257@gmail.com>
Date: Thu, 12 Mar 2020 14:19:19 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200312051107.1454880-5-damien.lemoal@wdc.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_111921_837017_0FBCE800 
X-CRM114-Status: GOOD (  28.79  )
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
Cc: Anup Patel <Anup.Patel@wdc.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 3/12/20 1:11 AM, Damien Le Moal wrote:
> From: Christoph Hellwig <hch@lst.de>
> 
> Add support for the Kendryte K210 RISC-V SoC. For now, this support
> only provides a simple sysctl driver allowing to setup the CPU and
> uart clock. This support is enabled through the new Kconfig option
> SOC_KENDRYTE and defines the config option CONFIG_K210_SYSCTL
> to enable the K210 SoC sysctl driver compilation.
> 
> The sysctl driver also registers an early SoC initialization function
> allowing enabling the general purpose use of the 2MB of SRAM normally
> reserved for the SoC AI engine. This initialization function is
> automatically called before the dt early initialization using the flat
> dt root node compatible property matching the value "kendryte,k210".
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> Signed-off-by: Damien Le Moal <damien.lemoal@wdc.com>
> Reviewed-by: Palmer Dabbelt <palmerdabbelt@google.com>
> ---
>  arch/riscv/Kconfig.socs            |   6 +
>  drivers/soc/Kconfig                |   1 +
>  drivers/soc/Makefile               |   1 +
>  drivers/soc/kendryte/Kconfig       |  14 ++
>  drivers/soc/kendryte/Makefile      |   3 +
>  drivers/soc/kendryte/k210-sysctl.c | 245 +++++++++++++++++++++++++++++
>  6 files changed, 270 insertions(+)
>  create mode 100644 drivers/soc/kendryte/Kconfig
>  create mode 100644 drivers/soc/kendryte/Makefile
>  create mode 100644 drivers/soc/kendryte/k210-sysctl.c
> 
> diff --git a/arch/riscv/Kconfig.socs b/arch/riscv/Kconfig.socs
> index 3078b2de0b2d..69071578e181 100644
> --- a/arch/riscv/Kconfig.socs
> +++ b/arch/riscv/Kconfig.socs
> @@ -34,4 +34,10 @@ config SOC_VIRT
>         help
>           This enables support for QEMU Virt Machine.
>  
> +config SOC_KENDRYTE
> +	bool "Kendryte K210 SoC"
> +	depends on !MMU
> +	help
> +	  This enables support for Kendryte K210 SoC platform hardware.
> +
>  endmenu
> diff --git a/drivers/soc/Kconfig b/drivers/soc/Kconfig
> index 1778f8c62861..425ab6f7e375 100644
> --- a/drivers/soc/Kconfig
> +++ b/drivers/soc/Kconfig
> @@ -22,5 +22,6 @@ source "drivers/soc/ux500/Kconfig"
>  source "drivers/soc/versatile/Kconfig"
>  source "drivers/soc/xilinx/Kconfig"
>  source "drivers/soc/zte/Kconfig"
> +source "drivers/soc/kendryte/Kconfig"
>  
>  endmenu
> diff --git a/drivers/soc/Makefile b/drivers/soc/Makefile
> index 8b49d782a1ab..af58063bb989 100644
> --- a/drivers/soc/Makefile
> +++ b/drivers/soc/Makefile
> @@ -28,3 +28,4 @@ obj-$(CONFIG_ARCH_U8500)	+= ux500/
>  obj-$(CONFIG_PLAT_VERSATILE)	+= versatile/
>  obj-y				+= xilinx/
>  obj-$(CONFIG_ARCH_ZX)		+= zte/
> +obj-$(CONFIG_SOC_KENDRYTE)	+= kendryte/
> diff --git a/drivers/soc/kendryte/Kconfig b/drivers/soc/kendryte/Kconfig
> new file mode 100644
> index 000000000000..49785b1b0217
> --- /dev/null
> +++ b/drivers/soc/kendryte/Kconfig
> @@ -0,0 +1,14 @@
> +# SPDX-License-Identifier: GPL-2.0
> +
> +if SOC_KENDRYTE
> +
> +config K210_SYSCTL
> +	bool "Kendryte K210 system controller"
> +	default y
> +	depends on RISCV
> +	help
> +	  Enables controlling the K210 various clocks and to enable
> +	  general purpose use of the extra 2MB of SRAM normally
> +	  reserved for the AI engine.
> +
> +endif
> diff --git a/drivers/soc/kendryte/Makefile b/drivers/soc/kendryte/Makefile
> new file mode 100644
> index 000000000000..002d9ce95c0d
> --- /dev/null
> +++ b/drivers/soc/kendryte/Makefile
> @@ -0,0 +1,3 @@
> +# SPDX-License-Identifier: GPL-2.0
> +
> +obj-$(CONFIG_K210_SYSCTL)	+= k210-sysctl.o
> diff --git a/drivers/soc/kendryte/k210-sysctl.c b/drivers/soc/kendryte/k210-sysctl.c
> new file mode 100644
> index 000000000000..7d4ecd954af0
> --- /dev/null
> +++ b/drivers/soc/kendryte/k210-sysctl.c
> @@ -0,0 +1,245 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +/*
> + * Copyright (c) 2019 Christoph Hellwig.
> + * Copyright (c) 2019 Western Digital Corporation or its affiliates.
> + */
> +#include <linux/types.h>
> +#include <linux/io.h>
> +#include <linux/of.h>
> +#include <linux/platform_device.h>
> +#include <linux/clk-provider.h>
> +#include <linux/clkdev.h>
> +#include <asm/soc.h>
> +
> +#define K210_SYSCTL_CLK0_FREQ		26000000UL
> +
> +/* Registers base address */
> +#define K210_SYSCTL_SYSCTL_BASE_ADDR	0x50440000ULL
> +
> +/* Registers */
> +#define K210_SYSCTL_PLL0		0x08
> +#define K210_SYSCTL_PLL1		0x0c
> +/* clkr: 4bits, clkf1: 6bits, clkod: 4bits, bwadj: 4bits */
> +#define   PLL_RESET		(1 << 20)
I think the preferred style is to use BIT(20), etc.

> +#define   PLL_PWR		(1 << 21)
> +#define   PLL_INTFB		(1 << 22)
> +#define   PLL_BYPASS		(1 << 23)
> +#define   PLL_TEST		(1 << 24)
> +#define   PLL_OUT_EN		(1 << 25)
> +#define   PLL_TEST_EN		(1 << 26)
> +#define K210_SYSCTL_PLL_LOCK		0x18
Can you use GENMASK here?

> +#define   PLL0_LOCK1		(1 << 0)
> +#define   PLL0_LOCK2		(1 << 1)
> +#define   PLL0_SLIP_CLEAR	(1 << 2)
> +#define   PLL0_TEST_CLK_OUT	(1 << 3)
> +#define   PLL1_LOCK1		(1 << 8)
> +#define   PLL1_LOCK2		(1 << 9)
> +#define   PLL1_SLIP_CLEAR	(1 << 10)
> +#define   PLL1_TEST_CLK_OUT	(1 << 11)
> +#define   PLL2_LOCK1		(1 << 16)
> +#define   PLL2_LOCK2		(1 << 16)
> +#define   PLL2_SLIP_CLEAR	(1 << 18)
> +#define   PLL2_TEST_CLK_OUT	(1 << 19)
> +#define K210_SYSCTL_CLKSEL0	0x20
> +#define   CLKSEL_ACLK		(1 << 0)
> +#define K210_SYSCTL_CLKEN_CENT		0x28
> +#define   CLKEN_CPU		(1 << 0)
> +#define   CLKEN_SRAM0		(1 << 1)
> +#define   CLKEN_SRAM1		(1 << 2)
> +#define   CLKEN_APB0		(1 << 3)
> +#define   CLKEN_APB1		(1 << 4)
> +#define   CLKEN_APB2		(1 << 5)
> +#define K210_SYSCTL_CLKEN_PERI		0x2c
> +#define   CLKEN_ROM		(1 << 0)
> +#define   CLKEN_DMA		(1 << 1)
> +#define   CLKEN_AI		(1 << 2)
> +#define   CLKEN_DVP		(1 << 3)
> +#define   CLKEN_FFT		(1 << 4)
> +#define   CLKEN_GPIO		(1 << 5)
> +#define   CLKEN_SPI0		(1 << 6)
> +#define   CLKEN_SPI1		(1 << 7)
> +#define   CLKEN_SPI2		(1 << 8)
> +#define   CLKEN_SPI3		(1 << 9)
> +#define   CLKEN_I2S0		(1 << 10)
> +#define   CLKEN_I2S1		(1 << 11)
> +#define   CLKEN_I2S2		(1 << 12)
> +#define   CLKEN_I2C0		(1 << 13)
> +#define   CLKEN_I2C1		(1 << 14)
> +#define   CLKEN_I2C2		(1 << 15)
> +#define   CLKEN_UART1		(1 << 16)
> +#define   CLKEN_UART2		(1 << 17)
> +#define   CLKEN_UART3		(1 << 18)
> +#define   CLKEN_AES		(1 << 19)
> +#define   CLKEN_FPIO		(1 << 20)
> +#define   CLKEN_TIMER0		(1 << 21)
> +#define   CLKEN_TIMER1		(1 << 22)
> +#define   CLKEN_TIMER2		(1 << 23)
> +#define   CLKEN_WDT0		(1 << 24)
> +#define   CLKEN_WDT1		(1 << 25)
> +#define   CLKEN_SHA		(1 << 26)
> +#define   CLKEN_OTP		(1 << 27)
> +#define   CLKEN_RTC		(1 << 29)
> +
> +struct k210_sysctl {
> +	void __iomem		*regs;
> +	struct clk_hw		hw;
> +};
> +
> +static void k210_set_bits(u32 val, void __iomem *reg)
> +{
> +	writel(readl(reg) | val, reg);
> +}
> +
> +static void k210_clear_bits(u32 val, void __iomem *reg)
> +{
> +	writel(readl(reg) & ~val, reg);
> +}
> +
> +static void k210_pll1_enable(void __iomem *regs)
> +{
> +	u32 val;
> +
> +	val = readl(regs + K210_SYSCTL_PLL1);
> +	val &= ~0xfffff;
> +	val |= (59 << 4) | (3 << 10) | (59 << 15);
Again, can this be done with GENMASK and FIELD_PREP?

> +	writel(val, regs + K210_SYSCTL_PLL1);
> +
> +	k210_clear_bits(PLL_BYPASS, regs + K210_SYSCTL_PLL1);
> +	k210_set_bits(PLL_PWR, regs + K210_SYSCTL_PLL1);
> +
> +	/*
> +	 * Reset the pll. The magic NOPs come from the Kendryte reference SDK.
> +	 */
> +	k210_clear_bits(PLL_RESET, regs + K210_SYSCTL_PLL1);
> +	k210_set_bits(PLL_RESET, regs + K210_SYSCTL_PLL1);
> +	nop();
> +	nop();
> +	k210_clear_bits(PLL_RESET, regs + K210_SYSCTL_PLL1);
> +
> +	for (;;) {
> +		val = readl(regs + K210_SYSCTL_PLL_LOCK);
> +		if (val & PLL1_LOCK2)
> +			break;
> +		writel(val | PLL1_SLIP_CLEAR, regs + K210_SYSCTL_PLL_LOCK);
> +	}
> +
> +	k210_set_bits(PLL_OUT_EN, regs + K210_SYSCTL_PLL1);
> +}
> +
> +static unsigned long k210_sysctl_clk_recalc_rate(struct clk_hw *hw,
> +		unsigned long parent_rate)
> +{
> +	struct k210_sysctl *s = container_of(hw, struct k210_sysctl, hw);
> +	u32 clksel0, pll0;
> +	u64 pll0_freq, clkr0, clkf0, clkod0;
> +
> +	/*
> +	 * If the clock selector is not set, use the base frequency.
> +	 * Otherwise, use PLL0 frequency with a frequency divisor.
> +	 */
> +	clksel0 = readl(s->regs + K210_SYSCTL_CLKSEL0);
> +	if (!(clksel0 & CLKSEL_ACLK))
> +		return K210_SYSCTL_CLK0_FREQ;
> +
> +	/*
> +	 * Get PLL0 frequency:
> +	 * freq = base frequency * clkf0 / (clkr0 * clkod0)
> +	 */
> +	pll0 = readl(s->regs + K210_SYSCTL_PLL0);
> +	clkr0 = 1 + (pll0 & 0x0000000f);
> +	clkf0 = 1 + ((pll0 & 0x000003f0) >> 4);
> +	clkod0 = 1 + ((pll0 & 0x00003c00) >> 10);
Same thing here, use FIELD_GET instead please.

> +	pll0_freq = clkf0 * K210_SYSCTL_CLK0_FREQ / (clkr0 * clkod0);
> +
> +	/* Get the frequency divisor from the clock selector */
> +	return pll0_freq / (2ULL << ((clksel0 & 0x00000006) >> 1));
> +}
> +
> +static const struct clk_ops k210_sysctl_clk_ops = {
> +	.recalc_rate	= k210_sysctl_clk_recalc_rate,
> +};
> +
> +static const struct clk_init_data k210_clk_init_data = {
> +	.name		= "k210-sysctl-pll1",
> +	.ops		= &k210_sysctl_clk_ops,
> +};
> +
> +static int k210_sysctl_probe(struct platform_device *pdev)
> +{
> +	struct k210_sysctl *s;
> +	int error;
> +
> +	pr_info("Kendryte K210 SoC sysctl\n");
> +
> +	s = devm_kzalloc(&pdev->dev, sizeof(*s), GFP_KERNEL);
> +	if (!s)
> +		return -ENOMEM;
> +
> +	s->regs = devm_ioremap_resource(&pdev->dev,
> +			platform_get_resource(pdev, IORESOURCE_MEM, 0));
> +	if (IS_ERR(s->regs))
> +		return PTR_ERR(s->regs);
> +
> +	s->hw.init = &k210_clk_init_data;
> +	error = devm_clk_hw_register(&pdev->dev, &s->hw);
> +	if (error) {
> +		dev_err(&pdev->dev, "failed to register clk");
> +		return error;
> +	}
> +
> +	error = devm_of_clk_add_hw_provider(&pdev->dev, of_clk_hw_simple_get,
> +					    &s->hw);
> +	if (error) {
> +		dev_err(&pdev->dev, "adding clk provider failed\n");
> +		return error;
> +	}
> +
> +	return 0;
> +}
> +
> +static const struct of_device_id k210_sysctl_of_match[] = {
> +	{ .compatible = "kendryte,k210-sysctl", },
> +	{}
> +};
> +
> +static struct platform_driver k210_sysctl_driver = {
> +	.driver	= {
> +		.name		= "k210-sysctl",
> +		.of_match_table	= k210_sysctl_of_match,
> +	},
> +	.probe			= k210_sysctl_probe,
> +};
> +
> +static int __init k210_sysctl_init(void)
> +{
> +	return platform_driver_register(&k210_sysctl_driver);
> +}
> +core_initcall(k210_sysctl_init);
> +
> +/*
> + * This needs to be called very early during initialization, given that
> + * PLL1 needs to be enabled to be able to use all SRAM.
> + */
> +static void __init k210_soc_early_init(const void *fdt)
> +{
> +	void __iomem *regs;
> +
> +	regs = ioremap(K210_SYSCTL_SYSCTL_BASE_ADDR, 0x1000);
> +	if (!regs)
> +		panic("K210 sysctl ioremap");
> +
> +	/* Enable PLL1 to make the KPU SRAM useable */
> +	k210_pll1_enable(regs);
> +
> +	k210_set_bits(PLL_OUT_EN, regs + K210_SYSCTL_PLL0);
> +
> +	k210_set_bits(CLKEN_CPU | CLKEN_SRAM0 | CLKEN_SRAM1,
> +		      regs + K210_SYSCTL_CLKEN_CENT);
> +	k210_set_bits(CLKEN_ROM | CLKEN_TIMER0 | CLKEN_RTC,
> +		      regs + K210_SYSCTL_CLKEN_PERI);
> +
> +	k210_set_bits(CLKSEL_ACLK, regs + K210_SYSCTL_CLKSEL0);
> +
> +	iounmap(regs);
> +}
> +SOC_EARLY_INIT_DECLARE("kendryte,k210", k210_soc_early_init);
> 
--Sean

