Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D109611A5D
	for <lists+linux-riscv@lfdr.de>; Thu,  2 May 2019 15:37:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HTJYGqAlMW3erTwUkkc7yq3S0cq3LOIwxK8Kz6JvZm8=; b=X0axdl8MAg+j45
	hbpfuNuMywWjCbYlwJ/+l09VYtASKl95oRu4uoSY6Vi3u2bS578hZipVIXb8W8c4vYGx3fzsILiQF
	3r/Gi/ryYsLdWoCjNipzywXIAtJ9mEmN2eaDurRP/USRNS3LYtM3SWtOB1eQz8pHh9Ul7QtdHf63g
	KPBMWaGFZ8wLvGbKEphgX/o2szi0h0d9Zvz4RG294JPwU/abMVVjpUCcTJC41/f9D4HymHNot2FXF
	I5MXA4Ouq7s5K/8oeZx8BGBpoT7KRh94q2c0rIfaGOtSLqraczuSehxNFP52Q93bY4z+dgQ+uXGXE
	EdE/kJsNDiMVFPLWLa8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMBtd-0004Gc-FM; Thu, 02 May 2019 13:37:09 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMBta-0004G9-24
 for linux-riscv@lists.infradead.org; Thu, 02 May 2019 13:37:07 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id x42Db0Me053306;
 Thu, 2 May 2019 08:37:00 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1556804220;
 bh=w0xhuSvWo6AdH0kUHQMj7h/c5ozWGAeD8dqkj3K/spQ=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=hpzKwRXBv8rV5ZrHmOBenSiPLatGUQBQDBpZMh91RlGx7XX8p2HHJnDhCruEBj5zY
 qeiFDYTVXTz5e+Vxp4zMns94H7Yfhs2BfQeRvCrOTmAFDISF71u9mAbAd3QHpi/d7S
 bwGbHr8wvWGhvbmUBuynzd9t+wge1HYcTeBFGxIc=
Received: from DFLE114.ent.ti.com (dfle114.ent.ti.com [10.64.6.35])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x42Db0Hf070226
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 2 May 2019 08:37:00 -0500
Received: from DFLE103.ent.ti.com (10.64.6.24) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Thu, 2 May
 2019 08:36:59 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Thu, 2 May 2019 08:36:59 -0500
Received: from [10.250.67.168] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x42DaxOW078864;
 Thu, 2 May 2019 08:36:59 -0500
Subject: Re: [PATCH v2 2/2] RISC-V: sifive_l2_cache: Add L2 cache controller
 driver for SiFive SoCs
To: Yash Shah <yash.shah@sifive.com>, <linux-riscv@lists.infradead.org>,
 <devicetree@vger.kernel.org>, <palmer@sifive.com>
References: <1556793293-21019-1-git-send-email-yash.shah@sifive.com>
 <1556793293-21019-3-git-send-email-yash.shah@sifive.com>
From: "Andrew F. Davis" <afd@ti.com>
Message-ID: <a92e356d-aadc-2c4f-8b23-3d732e7aa58a@ti.com>
Date: Thu, 2 May 2019 09:36:59 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <1556793293-21019-3-git-send-email-yash.shah@sifive.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_063706_200480_C26E770A 
X-CRM114-Status: GOOD (  20.99  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

On 5/2/19 6:34 AM, Yash Shah wrote:
> The driver currently supports only SiFive FU540-C000 platform.
> 
> The initial version of L2 cache controller driver includes:
> - Initial configuration reporting at boot up.
> - Support for ECC related functionality.
> 
> Signed-off-by: Yash Shah <yash.shah@sifive.com>
> ---
>  arch/riscv/mm/Makefile          |   1 +
>  arch/riscv/mm/sifive_l2_cache.c | 221 ++++++++++++++++++++++++++++++++++++++++
>  2 files changed, 222 insertions(+)
>  create mode 100644 arch/riscv/mm/sifive_l2_cache.c
> 
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
> index 0000000..923ab34
> --- /dev/null
> +++ b/arch/riscv/mm/sifive_l2_cache.c
> @@ -0,0 +1,221 @@
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
> +#define SIFIVE_L2_ERR_TYPE_CE 0
> +#define SIFIVE_L2_ERR_TYPE_UE 1
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
> +static unsigned int l2_dirfix_addr_high(void)
> +{
> +	return readl(l2_base + SIFIVE_L2_DIRECCFIX_HIGH);
> +}
> +
> +static unsigned int l2_dirfix_addr_low(void)
> +{
> +	return readl(l2_base + SIFIVE_L2_DIRECCFIX_LOW);
> +}
> +
> +static unsigned int l2_dirfix_count(void)
> +{
> +	return readl(l2_base + SIFIVE_L2_DIRECCFIX_COUNT);
> +}
> +
> +static unsigned int l2_datfix_addr_high(void)
> +{
> +	return readl(l2_base + SIFIVE_L2_DATECCFIX_HIGH);
> +}
> +
> +static unsigned int l2_datfix_addr_low(void)
> +{
> +	return readl(l2_base + SIFIVE_L2_DATECCFIX_LOW);
> +}
> +
> +static unsigned int l2_datfix_count(void)
> +{
> +	return readl(l2_base + SIFIVE_L2_DATECCFIX_COUNT);
> +}
> +
> +static unsigned int l2_datfail_addr_high(void)
> +{
> +	return readl(l2_base + SIFIVE_L2_DATECCFAIL_HIGH);
> +}
> +
> +static unsigned int l2_datfail_addr_low(void)
> +{
> +	return readl(l2_base + SIFIVE_L2_DATECCFAIL_LOW);
> +}
> +
> +static unsigned int l2_datfail_count(void)
> +{
> +	return readl(l2_base + SIFIVE_L2_DATECCFAIL_COUNT);
> +}

Do you really need all these single line functions? Below in several
spots you use the readl directly, just do that everywhere.

Andrew

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
> +		add_h = l2_dirfix_addr_high();
> +		add_l = l2_dirfix_addr_low();
> +		pr_err("L2CACHE: DirError @ 0x%08X.%08X\n", add_h, add_l);
> +		regval = l2_dirfix_count();
> +		atomic_notifier_call_chain(&l2_err_chain, SIFIVE_L2_ERR_TYPE_CE,
> +					   "DirECCFix");
> +	}
> +	if (irq == g_irq[DATA_CORR]) {
> +		add_h = l2_datfix_addr_high();
> +		add_l = l2_datfix_addr_low();
> +		pr_err("L2CACHE: DataError @ 0x%08X.%08X\n", add_h, add_l);
> +		regval = l2_datfix_count();
> +		atomic_notifier_call_chain(&l2_err_chain, SIFIVE_L2_ERR_TYPE_CE,
> +					   "DatECCFix");
> +	}
> +	if (irq == g_irq[DATA_UNCORR]) {
> +		add_h = l2_datfail_addr_high();
> +		add_l = l2_datfail_addr_low();
> +		pr_err("L2CACHE: DataFail @ 0x%08X.%08X\n", add_h, add_l);
> +		regval = l2_datfail_count();
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
