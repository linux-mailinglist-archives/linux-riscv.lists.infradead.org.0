Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C7931496D
	for <lists+linux-riscv@lfdr.de>; Mon,  6 May 2019 14:18:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hJxNsups4ykZcmYjg1/gRps2TMxJzHdvJYBTbMfaxyo=; b=QkohSRS2eOlXbA
	QDxIroFSsGc/b2SGFoTCGhbog/Yz1JAwP1OPoTZ65rnIzGfFcNLT0IlE1NIPBcryC3CdxK32x+vkC
	8e593kDkbszQmAkgdb51LdhsdLF2AOzqXZAnCXjGxLDDRWuonnZ3B+kqd16oQlY0tK5wke2FGmbb5
	7i+q+l3wVnJVuBazqadY01cgN8KAhVb7cDLRS9H3CLFewqaDIklGhL57FIdJI32fHMGorgp3ap0oB
	xbBtI1gRb4G8IVTXTbRzL2cvcTw4BwjYLmzH+lNL9GV5LRntFwZOcA0dHJNBNFmfesTPw4ZS+uu0/
	fBzydXKW5ye4mE1HoPbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNcZh-0000B3-Vt; Mon, 06 May 2019 12:18:29 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNcZd-0000Af-Up
 for linux-riscv@lists.infradead.org; Mon, 06 May 2019 12:18:28 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id x46CIHYN054299;
 Mon, 6 May 2019 07:18:17 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1557145097;
 bh=jJLwQd3pFIHe34zU3i/HHRq/I7L/8S7gmJI9jaq1Ak0=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=cur3fFT11+6EFknbuA+EvjsN3DZ1qZ5CEN5Tqfhw8/iOy2GwYXZGy+7eFAN5UrbaC
 n9o7eWReaHuSerzF98IYPhV1R8Um6CwK0XlBPCWkUmwAGku09ieT/6kD2rDsxR9j0o
 8qObBJl7aX84/RK3KsOAhEWfjIOJa0Y6DyNUgTOA=
Received: from DLEE112.ent.ti.com (dlee112.ent.ti.com [157.170.170.23])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x46CIHDL016244
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 6 May 2019 07:18:17 -0500
Received: from DLEE114.ent.ti.com (157.170.170.25) by DLEE112.ent.ti.com
 (157.170.170.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Mon, 6 May
 2019 07:18:17 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE114.ent.ti.com
 (157.170.170.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Mon, 6 May 2019 07:18:16 -0500
Received: from [10.250.67.168] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id x46CIG0r043691;
 Mon, 6 May 2019 07:18:16 -0500
Subject: Re: [PATCH v3 2/2] RISC-V: sifive_l2_cache: Add L2 cache controller
 driver for SiFive SoCs
To: Yash Shah <yash.shah@sifive.com>, <linux-riscv@lists.infradead.org>,
 <devicetree@vger.kernel.org>, <palmer@sifive.com>
References: <1557139720-12384-1-git-send-email-yash.shah@sifive.com>
 <1557139720-12384-3-git-send-email-yash.shah@sifive.com>
From: "Andrew F. Davis" <afd@ti.com>
Message-ID: <d36b7a74-0d08-0143-b479-45f760c347ba@ti.com>
Date: Mon, 6 May 2019 08:18:17 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <1557139720-12384-3-git-send-email-yash.shah@sifive.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_051826_077000_107E3742 
X-CRM114-Status: GOOD (  22.25  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, aou@eecs.berkeley.edu, linux-kernel@vger.kernel.org,
 sachin.ghadi@sifive.com, robh+dt@kernel.org, paul.walmsley@sifive.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 5/6/19 6:48 AM, Yash Shah wrote:
> The driver currently supports only SiFive FU540-C000 platform.
> 
> The initial version of L2 cache controller driver includes:
> - Initial configuration reporting at boot up.
> - Support for ECC related functionality.
> 
> Signed-off-by: Yash Shah <yash.shah@sifive.com>
> ---
>  arch/riscv/include/asm/sifive_l2_cache.h |  16 +++
>  arch/riscv/mm/Makefile                   |   1 +
>  arch/riscv/mm/sifive_l2_cache.c          | 175 +++++++++++++++++++++++++++++++
>  3 files changed, 192 insertions(+)
>  create mode 100644 arch/riscv/include/asm/sifive_l2_cache.h
>  create mode 100644 arch/riscv/mm/sifive_l2_cache.c
> 
> diff --git a/arch/riscv/include/asm/sifive_l2_cache.h b/arch/riscv/include/asm/sifive_l2_cache.h
> new file mode 100644
> index 0000000..04f6748
> --- /dev/null
> +++ b/arch/riscv/include/asm/sifive_l2_cache.h
> @@ -0,0 +1,16 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/*
> + * SiFive L2 Cache Controller header file
> + *
> + */
> +
> +#ifndef _ASM_RISCV_SIFIVE_L2_CACHE_H
> +#define _ASM_RISCV_SIFIVE_L2_CACHE_H
> +
> +extern int register_sifive_l2_error_notifier(struct notifier_block *nb);
> +extern int unregister_sifive_l2_error_notifier(struct notifier_block *nb);
> +
> +#define SIFIVE_L2_ERR_TYPE_CE 0
> +#define SIFIVE_L2_ERR_TYPE_UE 1
> +
> +#endif /* _ASM_RISCV_SIFIVE_L2_CACHE_H */
> diff --git a/arch/riscv/mm/Makefile b/arch/riscv/mm/Makefile
> index eb22ab4..1523ee5 100644
> --- a/arch/riscv/mm/Makefile
> +++ b/arch/riscv/mm/Makefile
> @@ -3,3 +3,4 @@ obj-y += fault.o
>  obj-y += extable.o
>  obj-y += ioremap.o
>  obj-y += cacheflush.o
> +obj-y += sifive_l2_cache.o
> diff --git a/arch/riscv/mm/sifive_l2_cache.c b/arch/riscv/mm/sifive_l2_cache.c
> new file mode 100644
> index 0000000..4eb6461
> --- /dev/null
> +++ b/arch/riscv/mm/sifive_l2_cache.c
> @@ -0,0 +1,175 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * SiFive L2 cache controller Driver
> + *
> + * Copyright (C) 2018-2019 SiFive, Inc.
> + *
> + */
> +#include <linux/debugfs.h>
> +#include <linux/interrupt.h>
> +#include <linux/of_irq.h>
> +#include <linux/of_address.h>
> +#include <asm/sifive_l2_cache.h>
> +
> +#define SIFIVE_L2_DIRECCFIX_LOW 0x100
> +#define SIFIVE_L2_DIRECCFIX_HIGH 0x104
> +#define SIFIVE_L2_DIRECCFIX_COUNT 0x108
> +
> +#define SIFIVE_L2_DATECCFIX_LOW 0x140
> +#define SIFIVE_L2_DATECCFIX_HIGH 0x144
> +#define SIFIVE_L2_DATECCFIX_COUNT 0x148
> +
> +#define SIFIVE_L2_DATECCFAIL_LOW 0x160
> +#define SIFIVE_L2_DATECCFAIL_HIGH 0x164
> +#define SIFIVE_L2_DATECCFAIL_COUNT 0x168
> +
> +#define SIFIVE_L2_CONFIG 0x00
> +#define SIFIVE_L2_WAYENABLE 0x08
> +#define SIFIVE_L2_ECCINJECTERR 0x40
> +
> +#define SIFIVE_L2_MAX_ECCINTR 3
> +
> +static void __iomem *l2_base;
> +static int g_irq[SIFIVE_L2_MAX_ECCINTR];
> +
> +enum {
> +	DIR_CORR = 0,
> +	DATA_CORR,
> +	DATA_UNCORR,
> +};
> +
> +#ifdef CONFIG_DEBUG_FS
> +static struct dentry *sifive_test;
> +
> +static ssize_t l2_write(struct file *file, const char __user *data,
> +			size_t count, loff_t *ppos)
> +{
> +	unsigned int val;
> +
> +	if (kstrtouint_from_user(data, count, 0, &val))
> +		return -EINVAL;
> +	if ((val >= 0 && val < 0xFF) || (val >= 0x10000 && val < 0x100FF))

I'm guessing bit 16 is the enable and the lower 8 are some kind of
region to enable the error? This is probably a bad interface, it looks
useful for testing but doesn't provide any debugging info useful for
running systems. Do you really want userspace to be able to do this?

Andrew

> +		writel(val, l2_base + SIFIVE_L2_ECCINJECTERR);
> +	else
> +		return -EINVAL;
> +	return count;
> +}
> +
> +static const struct file_operations l2_fops = {
> +	.owner = THIS_MODULE,
> +	.open = simple_open,
> +	.write = l2_write
> +};
> +
> +static void setup_sifive_debug(void)
> +{
> +	sifive_test = debugfs_create_dir("sifive_l2_cache", NULL);
> +
> +	debugfs_create_file("sifive_debug_inject_error", 0200,
> +			    sifive_test, NULL, &l2_fops);
> +}
> +#endif
> +
> +static void l2_config_read(void)
> +{
> +	u32 regval, val;
> +
> +	regval = readl(l2_base + SIFIVE_L2_CONFIG);
> +	val = regval & 0xFF;
> +	pr_info("L2CACHE: No. of Banks in the cache: %d\n", val);
> +	val = (regval & 0xFF00) >> 8;
> +	pr_info("L2CACHE: No. of ways per bank: %d\n", val);
> +	val = (regval & 0xFF0000) >> 16;
> +	pr_info("L2CACHE: Sets per bank: %llu\n", (uint64_t)1 << val);
> +	val = (regval & 0xFF000000) >> 24;
> +	pr_info("L2CACHE: Bytes per cache block: %llu\n", (uint64_t)1 << val);
> +
> +	regval = readl(l2_base + SIFIVE_L2_WAYENABLE);
> +	pr_info("L2CACHE: Index of the largest way enabled: %d\n", regval);
> +}
> +
> +static const struct of_device_id sifive_l2_ids[] = {
> +	{ .compatible = "sifive,fu540-c000-ccache" },
> +	{ /* end of table */ },
> +};
> +
> +static ATOMIC_NOTIFIER_HEAD(l2_err_chain);
> +
> +int register_sifive_l2_error_notifier(struct notifier_block *nb)
> +{
> +	return atomic_notifier_chain_register(&l2_err_chain, nb);
> +}
> +EXPORT_SYMBOL_GPL(register_sifive_l2_error_notifier);
> +
> +int unregister_sifive_l2_error_notifier(struct notifier_block *nb)
> +{
> +	return atomic_notifier_chain_unregister(&l2_err_chain, nb);
> +}
> +EXPORT_SYMBOL_GPL(unregister_sifive_l2_error_notifier);
> +
> +static irqreturn_t l2_int_handler(int irq, void *device)
> +{
> +	unsigned int regval, add_h, add_l;
> +
> +	if (irq == g_irq[DIR_CORR]) {
> +		add_h = readl(l2_base + SIFIVE_L2_DIRECCFIX_HIGH);
> +		add_l = readl(l2_base + SIFIVE_L2_DIRECCFIX_LOW);
> +		pr_err("L2CACHE: DirError @ 0x%08X.%08X\n", add_h, add_l);
> +		regval = readl(l2_base + SIFIVE_L2_DIRECCFIX_COUNT);
> +		atomic_notifier_call_chain(&l2_err_chain, SIFIVE_L2_ERR_TYPE_CE,
> +					   "DirECCFix");
> +	}
> +	if (irq == g_irq[DATA_CORR]) {
> +		add_h = readl(l2_base + SIFIVE_L2_DATECCFIX_HIGH);
> +		add_l = readl(l2_base + SIFIVE_L2_DATECCFIX_LOW);
> +		pr_err("L2CACHE: DataError @ 0x%08X.%08X\n", add_h, add_l);
> +		regval = readl(l2_base + SIFIVE_L2_DATECCFIX_COUNT);
> +		atomic_notifier_call_chain(&l2_err_chain, SIFIVE_L2_ERR_TYPE_CE,
> +					   "DatECCFix");
> +	}
> +	if (irq == g_irq[DATA_UNCORR]) {
> +		add_h = readl(l2_base + SIFIVE_L2_DATECCFAIL_HIGH);
> +		add_l = readl(l2_base + SIFIVE_L2_DATECCFAIL_LOW);
> +		pr_err("L2CACHE: DataFail @ 0x%08X.%08X\n", add_h, add_l);
> +		regval = readl(l2_base + SIFIVE_L2_DATECCFAIL_COUNT);
> +		atomic_notifier_call_chain(&l2_err_chain, SIFIVE_L2_ERR_TYPE_UE,
> +					   "DatECCFail");
> +	}
> +
> +	return IRQ_HANDLED;
> +}
> +
> +int __init sifive_l2_init(void)
> +{
> +	struct device_node *np;
> +	struct resource res;
> +	int i, rc;
> +
> +	np = of_find_matching_node(NULL, sifive_l2_ids);
> +	if (!np)
> +		return -ENODEV;
> +
> +	if (of_address_to_resource(np, 0, &res))
> +		return -ENODEV;
> +
> +	l2_base = ioremap(res.start, resource_size(&res));
> +	if (!l2_base)
> +		return -ENOMEM;
> +
> +	for (i = 0; i < SIFIVE_L2_MAX_ECCINTR; i++) {
> +		g_irq[i] = irq_of_parse_and_map(np, i);
> +		rc = request_irq(g_irq[i], l2_int_handler, 0, "l2_ecc", NULL);
> +		if (rc) {
> +			pr_err("L2CACHE: Could not request IRQ %d\n", g_irq[i]);
> +			return rc;
> +		}
> +	}
> +
> +	l2_config_read();
> +
> +#ifdef CONFIG_DEBUG_FS
> +	setup_sifive_debug();
> +#endif
> +	return 0;
> +}
> +device_initcall(sifive_l2_init);
> 

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
