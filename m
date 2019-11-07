Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 581EDF3AC5
	for <lists+linux-riscv@lfdr.de>; Thu,  7 Nov 2019 22:53:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Mime-Version:Message-ID:To:From:In-Reply-To:Subject:
	Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	 bh=RTV7MUZoEacQXqTH6iqQU34/f99BP0CnV/SItrUByEo=; b=l9/rB+vzOKZCO8MeV/QB3wxyw
	ov6EUXzDf99Ol0Cx/ccpsSZr75Nr46B1PudV8Dr3CCPl2WbO+rP8bs+nixTw9sT2egoK2o8ipX9kn
	Mxhla6L7BfljDdp4V2Y4Fi5BEHCEkzMJg0KfwFl/N2eW6a9bxonEt8Q9TZ6SV6DPdQVASsAv+VCS8
	yBxlSKmVjZBl9NKmTyfb4gtOEtrAP907ACcwCouVraTW75T325BEsI6oxt7Htt9ZIcURYt9CoITB0
	wXpRLHcDCAbwZZCFdQzMQjbqa8b/1RUt3uZgNhlgM2dMFfvnsx+EFVKgsgRb1B3AveZmDMpe/Nof8
	mSD0xshHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSpiE-0001OP-UE; Thu, 07 Nov 2019 21:53:06 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSpi9-0001Lq-QI
 for linux-riscv@lists.infradead.org; Thu, 07 Nov 2019 21:53:03 +0000
Received: by mail-pg1-x541.google.com with SMTP id w11so2795540pga.12
 for <linux-riscv@lists.infradead.org>; Thu, 07 Nov 2019 13:53:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
 h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
 :content-transfer-encoding;
 bh=o0ume9X7I6N76DsAN7wkv6uhtYAHw2lFawaiRsAlXeE=;
 b=UQi/e0xSKJZk+h6N6SInwLTOvaB+klR3whs7t8mKIGUnRvZArtjpC8RSo7uemHTEog
 L7zp8gMgTWzsA/X9pPfA+qCR50U4LkP+g2RyYmgUgSW/qxRkehVnykpfUOh5AGPhvH7H
 PsIniA+uvxRVU0+/UYuNtTeOIXRNCSG24XEso8YUu/tpHoU1XKAsMFzqukmasIa6IVFr
 YFxWMda1IcuXCy9c+7TIug4zFQwkSjBNRO5aTb9psVbmQYjDGZo9tzMD1NlDYZt67JtS
 M9IBmOsbaT4vOb4APRiL1xK61NK3SCGuVT7FuBJ+EpBCsCb7bY+B7Qcuvai7de9A4Rfh
 wepQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=o0ume9X7I6N76DsAN7wkv6uhtYAHw2lFawaiRsAlXeE=;
 b=Io01XVcVP6OmsWWVYc18BG7wLiBy455Lc5iidBeguBBCDQYCnj8TjsZL/31EmgXUEx
 pr1eOaet/ghgklWBVoJAfSzxDjxDLrqp/eBAG4vcH140Z5Ol2HAgb3uMwcm+MGoaXL/G
 FSCLxhxWoeit1epFmtNi99tJ02932Li+QiiUPE3eZbYst3p+whZrZO8UZPw5kBR1bpCQ
 bAhsV1cXvlrW+aRH7qMr2IB/XUVGNoeHlzF0UaBmiuLhO4aKdaRog2F7Ay+oTCDCQBes
 aAoMUppfHht/knhJkzO0GPRKS504AtyK7Z4OPYT9yX2bWbaYinhi/bojYN3kFizWWd5K
 4Qcg==
X-Gm-Message-State: APjAAAW/VmCUIrjBtP0mpvcIek23eyq2yapCAQ/vR9v33a/SPPuNhuoe
 /4s6dBP10JWJXSXdGQTadhWVHw==
X-Google-Smtp-Source: APXvYqz4ytu4dwGEBbaA+ANgDsfu16kcduxM5Ii57ZM/xvTSeqnvyTcX1+5FWYiHFkLiQRzwoRqo1A==
X-Received: by 2002:a62:ab17:: with SMTP id p23mr7036931pff.116.1573163580868; 
 Thu, 07 Nov 2019 13:53:00 -0800 (PST)
Received: from localhost ([12.206.222.5])
 by smtp.gmail.com with ESMTPSA id w2sm3463961pgm.18.2019.11.07.13.53.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 07 Nov 2019 13:53:00 -0800 (PST)
Date: Thu, 07 Nov 2019 13:53:00 -0800 (PST)
X-Google-Original-Date: Thu, 07 Nov 2019 13:51:19 PST (-0800)
Subject: Re: [PATCH 2/2] power: reset: add a QEMU RISC-V virt machine poweroff
 driver
In-Reply-To: <20191107212408.11857-3-hch@lst.de>
From: Palmer Dabbelt <palmer@dabbelt.com>
To: Christoph Hellwig <hch@lst.de>
Message-ID: <mhng-b62f1a62-8264-4e99-bc31-66fb59855bf8@palmer-si-x1c4>
Mime-Version: 1.0 (MHng)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_135301_851676_B0851652 
X-CRM114-Status: GOOD (  22.65  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, linux-pm@vger.kernel.org,
 sre@kernel.org, robh+dt@kernel.org, Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, 07 Nov 2019 13:24:08 PST (-0800), Christoph Hellwig wrote:
> Add a trivial poweroff driver for the qemu-virt test device that
> allows an oderly shutdown of the VM.
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

Reviewed-by: Palmer Dabbelt <palmer@dabbelt.com>

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
