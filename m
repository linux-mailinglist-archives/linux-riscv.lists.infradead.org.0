Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C4C24F3B77
	for <lists+linux-riscv@lfdr.de>; Thu,  7 Nov 2019 23:33:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wlDtpMUDSIVVNVPaPGKRpM0rn6qQyvczNVoVAJz6IJE=; b=sraEHVHBB46DFh
	e9pYnjFTGOi+El44rE+FNzKxJ8CZg/pSe3wWSy7L3xYKOq+lHx62xzCTMqn7IxCop3AmO+U5wxDmZ
	1TzJwWrQais9q6VyCMicU2mOD+Duoe3mfjtYTdXMJjI6vCRnvFDC358asd+VYU/XbSG2tON8/yt82
	CED5EqoKrjtAA1dRGjDfGbY72UhYWA9m9scuXH0+OkOak7G8dTLNwDPd9cMjjEu/MPjX/aSVHXT3u
	yH19SrHZHkVP3CrDbu9YRXslAdKGWuKBrTH2oaWIP0Nl8JFRWJzOc5SfGyBxGYoEyn10/pZMbXrxV
	uPU+gyLJ1Z04vVpYSNtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSqLX-0008Cu-Vp; Thu, 07 Nov 2019 22:33:43 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSqLU-0008CG-31
 for linux-riscv@lists.infradead.org; Thu, 07 Nov 2019 22:33:41 +0000
Received: by mail-pg1-x543.google.com with SMTP id k13so2886603pgh.3
 for <linux-riscv@lists.infradead.org>; Thu, 07 Nov 2019 14:33:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=KtzwCyDT19z1S/QbvOzECaMFt412YXqfydQ1RzuBLkg=;
 b=U1TcGbh9Ac/ENu5Rs+S9Agdi2VU7eIlxTXaNEWHmbHgzonebCmn+P91pgkmYMo4AvA
 KvDE50sI21hLyf0NdqS8XP9yHH1BhqQ2fZR5iY397Q4kVY7nQmYRwMbVpGpNbCb3N2Kg
 h0OerXAyIOBLaGmYEG57kEVwH1JCMIiZyFgQBe7WXtpshynim83LFQAVfhJGDREKeQqC
 GGJ51elHoA/8bVLu2Gulh8B/4McXfSnDIyltuXj+oY9ys1sDPzQJ2zW9IfYi4kesF7kE
 I8SyH1bZc2yz8syd87Dk2DuTkcJ10+JhKNd0xhdrK/Fhrv3cb11Ws+otR8grfzkFYTh/
 qTlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=KtzwCyDT19z1S/QbvOzECaMFt412YXqfydQ1RzuBLkg=;
 b=hPqagOc2OCHh2JrPg79h3SM+s0Y62Z102R1+oU6PljnRbvv1YJQyagnYI9t8yHFw3/
 ek1YEaLeJLpyLY1mLH3SfrZVfcpZriO4dX3gYk45zMHrBDCvqT9XC3NHknQP2/I7aSjg
 iAAz5DafKmHfwqjuNGLSJwWGvGsmf2aOJVG1qCmjXparyPpFbSikErz9CIdirvR7EFBx
 oVVoqpci4mgb3Q0JFeucnxaVyUijhmogC54GWr6qw7LFdSYSV16PKRqiSct/WwZEmd/Z
 asF0rBLRBMahCBYHckxDSpo5IzroMZZN/j1u5K6rxIuUfeCsFlUqOWddB2zC3i6Ay5Y6
 hrKg==
X-Gm-Message-State: APjAAAXsHuwLy7V83fMQ4JyYFZhrPVdNUiEuLw0qB90rU62WgqWb9ss5
 zsgpgkqmmQZEJtgpADuxXopyaQ==
X-Google-Smtp-Source: APXvYqxZKvUYQHZ7SvkUplmFNtYCYPosc9srD1F4orE7a2p2nPUegMn1rtKpokaCUl5aBcuZ3LlyXg==
X-Received: by 2002:a62:e105:: with SMTP id q5mr7413683pfh.105.1573166019175; 
 Thu, 07 Nov 2019 14:33:39 -0800 (PST)
Received: from localhost ([12.206.222.5])
 by smtp.gmail.com with ESMTPSA id y36sm3313037pgk.66.2019.11.07.14.33.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 07 Nov 2019 14:33:38 -0800 (PST)
Date: Thu, 7 Nov 2019 14:33:37 -0800 (PST)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH 2/2] power: reset: add a QEMU RISC-V virt machine poweroff
 driver
In-Reply-To: <20191107212408.11857-3-hch@lst.de>
Message-ID: <alpine.DEB.2.21.9999.1911071432110.8918@viisi.sifive.com>
References: <20191107212408.11857-1-hch@lst.de>
 <20191107212408.11857-3-hch@lst.de>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_143340_130484_90A66D45 
X-CRM114-Status: GOOD (  21.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 linux-pm@vger.kernel.org, Sebastian Reichel <sre@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>,
 linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, 7 Nov 2019, Christoph Hellwig wrote:

> Add a trivial poweroff driver for the qemu-virt test device that
> allows an oderly shutdown of the VM.

"orderly"

> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>  arch/riscv/configs/defconfig                  |  2 +
>  drivers/power/reset/Kconfig                   |  8 ++++
>  drivers/power/reset/Makefile                  |  1 +
>  .../power/reset/qemu-riscv-virt-poweroff.c    | 47 +++++++++++++++++++
>  4 files changed, 58 insertions(+)
>  create mode 100644 drivers/power/reset/qemu-riscv-virt-poweroff.c
> 
> diff --git a/arch/riscv/configs/defconfig b/arch/riscv/configs/defconfig
> index 420a0dbef386..47da87725b5e 100644
> --- a/arch/riscv/configs/defconfig
> +++ b/arch/riscv/configs/defconfig
> @@ -63,6 +63,8 @@ CONFIG_HW_RANDOM_VIRTIO=y
>  CONFIG_SPI=y
>  CONFIG_SPI_SIFIVE=y
>  # CONFIG_PTP_1588_CLOCK is not set
> +CONFIG_POWER_RESET=y
> +CONFIG_QEMU_RISCV_VIRT_POWEROFF=y
>  CONFIG_DRM=y
>  CONFIG_DRM_RADEON=y
>  CONFIG_DRM_VIRTIO_GPU=y
> diff --git a/drivers/power/reset/Kconfig b/drivers/power/reset/Kconfig
> index a564237278ff..56cb18520850 100644
> --- a/drivers/power/reset/Kconfig
> +++ b/drivers/power/reset/Kconfig
> @@ -256,5 +256,13 @@ config NVMEM_REBOOT_MODE
>  	  then the bootloader can read it and take different
>  	  action according to the mode.
>  
> +config QEMU_RISCV_VIRT_POWEROFF
> +	tristate "QEMU RISC-V virt machine poweroff driver"
> +	depends on OF
> +	depends on RISCV || COMPILE_TEST
> +	help
> +	  Say y here to allow RISC-V Qemu VMs to be shut down by
> +	  the kernel.

Same comments here and below as 

https://lore.kernel.org/linux-riscv/mhng-0dedc685-73d2-4e7f-b608-69385a6e7a99@palmer-si-x1c4/T/#t

there's nothing that should be RISC-V specific here.

> +
>  endif
>  
> diff --git a/drivers/power/reset/Makefile b/drivers/power/reset/Makefile
> index 85da3198e4e0..b3094016b634 100644
> --- a/drivers/power/reset/Makefile
> +++ b/drivers/power/reset/Makefile
> @@ -30,3 +30,4 @@ obj-$(CONFIG_REBOOT_MODE) += reboot-mode.o
>  obj-$(CONFIG_SYSCON_REBOOT_MODE) += syscon-reboot-mode.o
>  obj-$(CONFIG_POWER_RESET_SC27XX) += sc27xx-poweroff.o
>  obj-$(CONFIG_NVMEM_REBOOT_MODE) += nvmem-reboot-mode.o
> +obj-$(CONFIG_QEMU_RISCV_VIRT_POWEROFF) += qemu-riscv-virt-poweroff.o
> diff --git a/drivers/power/reset/qemu-riscv-virt-poweroff.c b/drivers/power/reset/qemu-riscv-virt-poweroff.c
> new file mode 100644
> index 000000000000..5b9a12dd853b
> --- /dev/null
> +++ b/drivers/power/reset/qemu-riscv-virt-poweroff.c
> @@ -0,0 +1,47 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright (c) 2019 Christoph Hellwig.
> + */
> +
> +#include <linux/reboot.h>
> +#include <linux/init.h>
> +#include <linux/io.h>
> +#include <linux/platform_device.h>
> +#include <linux/of_address.h>
> +#include <linux/module.h>
> +
> +#define VIRT_TEST_FINISHER_PASS         0x5555
> +
> +static u16 __iomem *test_addr;
> +
> +static void qemu_virt_power_off(void)
> +{
> +	writew(VIRT_TEST_FINISHER_PASS, test_addr);
> +}
> +
> +static int sifive_test_probe(struct platform_device *pdev)
> +{
> +	/* there can only be a single instance */
> +	if (WARN_ON_ONCE(test_addr))
> +		return -EINVAL;
> +
> +	test_addr = of_iomap(pdev->dev.of_node, 0);
> +	if (!test_addr)
> +		return -EINVAL;
> +	pm_power_off = qemu_virt_power_off;
> +	return 0;
> +}
> +
> +static const struct of_device_id sifive_test_of_match[] = {
> +	{ .compatible = "sifive,test0", },
> +	{},
> +};
> +
> +static struct platform_driver sifive_test_driver = {
> +	.probe			= sifive_test_probe,
> +	.driver = {
> +		.name		= "sifive_test",
> +		.of_match_table = sifive_test_of_match,
> +	},
> +};
> +module_platform_driver(sifive_test_driver);
> -- 
> 2.20.1
> 
> 


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
