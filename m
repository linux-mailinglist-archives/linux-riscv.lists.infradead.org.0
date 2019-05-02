Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1659C1206A
	for <lists+linux-riscv@lfdr.de>; Thu,  2 May 2019 18:42:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:Subject:From:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Sf5qBVTJW5hA2dRGDBMRuHe+f4Ee0pfJILAadBBQNc8=; b=OkzWADQNLThoU7
	geBq7XLlJVhJRFnzrFJC5mR5DjpcrYptKmENKovrqKLv96Jnw7mxjASTx+qbEbHEuo3TKrGTzoSDu
	AGiuj/d87JVQMHuPImyKx/9BqZw0/XBCCFDwsepNLx9sscfu2TwXcrmOl2zwwT3e3f6rANO6AYKiS
	RPRXqb3iQeDuaV7h0SRkZgrR77PjgkVRsgBgqRyRhUWgyphFCnCc5iKR94uD/88jcQwrUbrlwgmwO
	2Ko2EdOQSqzLDB0TR3EYWD+MrQ078bQpJWLxWtrcswh5ZwbtTr4BjMwpl4ZG34NeHItU9gLBEtwub
	sdcVLTMWMks9saCzaoZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMEmw-0007aC-PL; Thu, 02 May 2019 16:42:26 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMEmt-0007Zc-Rp
 for linux-riscv@lists.infradead.org; Thu, 02 May 2019 16:42:25 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 30FC8A78;
 Thu,  2 May 2019 09:42:21 -0700 (PDT)
Received: from [10.1.196.105] (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id CB5023F5AF;
 Thu,  2 May 2019 09:42:18 -0700 (PDT)
From: James Morse <james.morse@arm.com>
Subject: Re: [PATCH] edac: sifive: Add EDAC platform driver for SiFive SoCs
To: Yash Shah <yash.shah@sifive.com>
References: <1556795761-21630-1-git-send-email-yash.shah@sifive.com>
 <1556795761-21630-2-git-send-email-yash.shah@sifive.com>
Message-ID: <4072c812-d3bf-9ad5-2b30-6b2a5060bb55@arm.com>
Date: Thu, 2 May 2019 17:42:17 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <1556795761-21630-2-git-send-email-yash.shah@sifive.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_094223_916161_931BB231 
X-CRM114-Status: GOOD (  25.89  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: aou@eecs.berkeley.edu, paulmck@linux.ibm.com, gregkh@linuxfoundation.org,
 palmer@sifive.com, linux-kernel@vger.kernel.org, nicolas.ferre@microchip.com,
 sachin.ghadi@sifive.com, bp@alien8.de, paul.walmsley@sifive.com,
 linux-riscv@lists.infradead.org, mchehab@kernel.org, davem@davemloft.net,
 linux-edac@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi Yash,

Sorry for the delay on the earlier version of this - I was trying to work out what happens
when multiple edac drivers probe based on DT...


On 02/05/2019 12:16, Yash Shah wrote:
> The initial ver of EDAC driver supports:
> - ECC event monitoring and reporting through the EDAC framework for SiFive
>   L2 cache controller.
> 

You probably don't want this bit preserved in the kernel log:
{

> This patch depends on patch
> 'RISC-V: sifive_l2_cache: Add L2 cache controller driver for SiFive SoCs'
> https://lkml.org/lkml/2019/5/2/309

}

> The EDAC driver registers for notifier events from the L2 cache controller
> driver (arch/riscv/mm/sifive_l2_cache.c) for L2 ECC events
> 
> Signed-off-by: Yash Shah <yash.shah@sifive.com>
> ---

(if you put it here, it gets discarded when the patch is applied)

Having an separately posted dependency like this is tricky, as this code can't be
used/tested until the other bits are merged.


>  MAINTAINERS                |   6 +++
>  arch/riscv/Kconfig         |   1 +
>  drivers/edac/Kconfig       |   6 +++
>  drivers/edac/Makefile      |   1 +
>  drivers/edac/sifive_edac.c | 121 +++++++++++++++++++++++++++++++++++++++++++++
>  5 files changed, 135 insertions(+)
>  create mode 100644 drivers/edac/sifive_edac.c

> diff --git a/drivers/edac/sifive_edac.c b/drivers/edac/sifive_edac.c
> new file mode 100644
> index 0000000..eb7a9b9
> --- /dev/null
> +++ b/drivers/edac/sifive_edac.c
> @@ -0,0 +1,121 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * SiFive Platform EDAC Driver
> + *
> + * Copyright (C) 2018-2019 SiFive, Inc.
> + *
> + * This driver is partially based on octeon_edac-pc.c
> + *
> + */
> +#include <linux/edac.h>
> +#include <linux/platform_device.h>
> +#include "edac_module.h"
> +
> +#define DRVNAME "sifive_edac"
> +
> +extern int register_sifive_l2_error_notifier(struct notifier_block *nb);
> +extern int unregister_sifive_l2_error_notifier(struct notifier_block *nb);

Ideally these would live in some header file.


> +struct sifive_edac_priv {
> +	struct notifier_block notifier;
> +	struct edac_device_ctl_info *dci;
> +};
> +
> +/**
> + * EDAC error callback
> + *
> + * @event: non-zero if unrecoverable.
> + */
> +static
> +int ecc_err_event(struct notifier_block *this, unsigned long event, void *ptr)
> +{
> +	const char *msg = (char *)ptr;
> +	struct sifive_edac_priv *p;
> +
> +	p = container_of(this, struct sifive_edac_priv, notifier);
> +
> +	if (event)
> +		edac_device_handle_ue(p->dci, 0, 0, msg);
> +	else
> +		edac_device_handle_ce(p->dci, 0, 0, msg);

This would be easier to read if your SIFIVE_L2_ERR_TYPE_UE were exposed via some header file.


> +
> +	return NOTIFY_STOP;

Your notifier register calls are EXPORT_SYMBOL()d, but Kconfig forbids building this as a
module, so its not for this driver. If there is another user of this notifier-chain, won't
NOTIFY_STOP here break it?


> +}
> +
> +static int ecc_register(struct platform_device *pdev)
> +{
> +	struct sifive_edac_priv *p;
> +
> +	p = devm_kzalloc(&pdev->dev, sizeof(*p), GFP_KERNEL);
> +	if (!p)
> +		return -ENOMEM;
> +
> +	p->notifier.notifier_call = ecc_err_event;
> +	platform_set_drvdata(pdev, p);
> +
> +	p->dci = edac_device_alloc_ctl_info(sizeof(*p), "sifive_ecc", 1,

sizeof(*p) here is how much space in struct edac_device_ctl_info you need for private
storage... but you never touch p->dci->pvt_info, so you aren't using it.

0?


> +					    "sifive_ecc", 1, 1, NULL, 0,
> +					    edac_device_alloc_index());
> +	if (IS_ERR(p->dci))
> +		return PTR_ERR(p->dci);
> +
> +	p->dci->dev = &pdev->dev;
> +	p->dci->mod_name = "Sifive ECC Manager";
> +	p->dci->ctl_name = dev_name(&pdev->dev);
> +	p->dci->dev_name = dev_name(&pdev->dev);
> +
> +	if (edac_device_add_device(p->dci)) {
> +		dev_err(p->dci->dev, "failed to register with EDAC core\n");
> +		goto err;
> +	}
> +
> +	register_sifive_l2_error_notifier(&p->notifier);
> +
> +	return 0;
> +
> +err:
> +	edac_device_free_ctl_info(p->dci);
> +
> +	return -ENXIO;
> +}

> +struct platform_device *sifive_pdev;

static?


> +static int __init sifive_edac_init(void)
> +{
> +	int ret;
> +
> +	sifive_pdev = platform_device_register_simple(DRVNAME, 0, NULL, 0);
> +	if (IS_ERR(sifive_pdev))
> +		return PTR_ERR(sifive_pdev);
> +
> +	ret = ecc_register(sifive_pdev);
> +	if (ret)
> +		platform_device_unregister(sifive_pdev);
> +
> +	return ret;
> +}
> +
> +static void __exit sifive_edac_exit(void)
> +{
> +	ecc_unregister(sifive_pdev);
> +	platform_device_unregister(sifive_pdev);
> +}

Looks good to me. I think this patch should go with its two dependencies, I'm not sure why
it got split off...

Reviewed-by: James Morse <james.morse@arm.com>


Thanks,

James

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
