Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 27953155DE3
	for <lists+linux-riscv@lfdr.de>; Fri,  7 Feb 2020 19:24:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Mime-Version:Message-ID:To:In-Reply-To
	:Subject:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=rjZ+rz1tMKWI7bHXbhY43JHCn3z3DegyIwG/TDVNjXY=; b=NFIOVEMPWpMOrC
	CQBtpbYytRJYbXF9YOETVZMLQj2+WdFQnhFGq7ZwCwVDOmbUMBZ/PHTJuP8FKj24HF39nKx2OHvcA
	VV6d270lxf2imIJkVf+bI6qdXeaDtRyCE9vXFQx1sReE5J4gD9uXP4z3rqeKaJGnhBePkY+kS9f0e
	gcwTpVEV7359HcGCe8ItJmLB16yszYiuuLQIyTAMxKMKtpU1mMNZSq4bZDVbY2xBoQzoYdDjBuP4k
	rEhsnYq8T/Si/F9xdOpZxWBNHaYi88Wgtj5oorEIqqGEuQ6TXl6wL87ohyMsqUzEVI03qf/7sRGxg
	wSDi1V/CUwTIS0SqDGvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j08Il-000447-9O; Fri, 07 Feb 2020 18:24:27 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j08Ii-00042Z-9y
 for linux-riscv@lists.infradead.org; Fri, 07 Feb 2020 18:24:26 +0000
Received: by mail-pg1-x542.google.com with SMTP id d6so192556pgn.5
 for <linux-riscv@lists.infradead.org>; Fri, 07 Feb 2020 10:24:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:from:subject:in-reply-to:cc:to:message-id:mime-version
 :content-transfer-encoding;
 bh=rjZ+rz1tMKWI7bHXbhY43JHCn3z3DegyIwG/TDVNjXY=;
 b=FWTYD9qHqvntLBQRg+TWhHreHJked/6E59ChwCw4W6u/61wCcfwzh9dy109owrtK6j
 ZnSY7gwVViHBhYX5KyaxtPjGjuBKA1ZbQxeC09g9t9oFsuc6VLbiOqSkvzVmSk4BedYb
 RrE0gIebTVPGMLWpq7X5kZf9m3Ta8qOnOw1kXAs7cumR2l6gWp7/4DthcauvG6Dxofta
 ciyxJQmHh5pW+4wR4gPGmLy9dugVhgzlFFFmzcxOTqJp4OzOP1wyklrz3JedZLwF/myZ
 sA8Uf84uyvrHPX5N8Xlh7GDtLsWJ70hPeyqL74Cf65cA7Mj0ZwToXAw3W9EIDhMbcA+P
 Kdrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:subject:in-reply-to:cc:to:message-id
 :mime-version:content-transfer-encoding;
 bh=rjZ+rz1tMKWI7bHXbhY43JHCn3z3DegyIwG/TDVNjXY=;
 b=V8rU8oTm0aGvnYiyEu0rgMS/SM3PHDnF5gRDbvEWgWv+IM1DJnSnNkPH8MBxzi9PAY
 7tZItDceYo/LwmnH3xbkwYonVyVdQhY3zhDBsP3sBkEUwSWMYqadeHqE4mP4mqMi7GY3
 Zyq8WgBMGScmCZp3GB3q7b0ROjcQWKRCQDTGK8t1jikixfqfSQDMAVOwx8+aWEzTebSa
 +ZaJQRwdxe5VK7Awc1OKyHBqj0qO5bQPwT81BxcClySygt8pV2Ks4jswvI4f91mhkJfZ
 q37ZbPL2vTUG/lE85zFGk96smXNmOvecZ6Lw4PugYnRn40qfsf0cmejOVKVMehGjVMfM
 s7Nw==
X-Gm-Message-State: APjAAAXXqqgFg/gnFHzu9WgPFkcVk72QlUFu6O70qpT42MaqR3lYeSEl
 znrtre+Ip8MzbGNgDRx43W/mCg==
X-Google-Smtp-Source: APXvYqxe3fvpH009bmrNk57D4faklFjXWGxPUQtWMXJLwq1leAXW9kSA2RPaGgKRagbsux60wBFovA==
X-Received: by 2002:a63:e30a:: with SMTP id f10mr478465pgh.331.1581099860086; 
 Fri, 07 Feb 2020 10:24:20 -0800 (PST)
Received: from localhost ([2620:0:1000:2514:23a5:d584:6a92:3e3c])
 by smtp.gmail.com with ESMTPSA id 72sm3937487pfw.7.2020.02.07.10.24.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 07 Feb 2020 10:24:19 -0800 (PST)
Date: Fri, 07 Feb 2020 10:24:19 -0800 (PST)
X-Google-Original-Date: Fri, 07 Feb 2020 10:24:12 PST (-0800)
From: Palmer Dabbelt <palmerdabbelt@google.com>
X-Google-Original-From: Palmer Dabbelt <palmer@dabbelt.com>
Subject: Re: [PATCH v4 2/2] riscv: Add support to determine no. of L2 cache
 way enabled
In-Reply-To: <1579247018-6720-3-git-send-email-yash.shah@sifive.com>
To: yash.shah@sifive.com
Message-ID: <mhng-4c96b04e-5adc-4b88-8b39-715cd765e6a5@palmerdabbelt-glaptop1>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200207_102424_353350_2A376687 
X-CRM114-Status: GOOD (  17.05  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: aou@eecs.berkeley.edu, sachin.ghadi@sifive.com,
 Greg KH <gregkh@linuxfoundation.org>, anup@brainfault.org,
 linux-kernel@vger.kernel.org, alexios.zavras@intel.com, yash.shah@sifive.com,
 Paul Walmsley <paul.walmsley@sifive.com>, tglx@linutronix.de, bp@suse.de,
 linux-riscv@lists.infradead.org, allison@lohutok.net
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, 16 Jan 2020 23:43:38 PST (-0800), yash.shah@sifive.com wrote:
> In order to determine the number of L2 cache ways enabled at runtime,
> implement a private attribute ("number_of_ways_enabled"). Reading this
> attribute returns the number of enabled L2 cache ways at runtime.
>
> Using riscv_set_cacheinfo_ops() hook a custom function, that returns
> this private attribute, to the generic ops structure which is used by
> cache_get_priv_group() in cacheinfo framework.
>
> Signed-off-by: Yash Shah <yash.shah@sifive.com>
> Reviewed-by: Anup Patel <anup@brainfault.org>
> ---
>  drivers/soc/sifive/sifive_l2_cache.c | 38 ++++++++++++++++++++++++++++++++++++
>  1 file changed, 38 insertions(+)
>
> diff --git a/drivers/soc/sifive/sifive_l2_cache.c b/drivers/soc/sifive/sifive_l2_cache.c
> index a506939..3fb6404 100644
> --- a/drivers/soc/sifive/sifive_l2_cache.c
> +++ b/drivers/soc/sifive/sifive_l2_cache.c
> @@ -9,6 +9,8 @@
>  #include <linux/interrupt.h>
>  #include <linux/of_irq.h>
>  #include <linux/of_address.h>
> +#include <linux/device.h>
> +#include <asm/cacheinfo.h>
>  #include <soc/sifive/sifive_l2_cache.h>
>
>  #define SIFIVE_L2_DIRECCFIX_LOW 0x100
> @@ -31,6 +33,7 @@
>
>  static void __iomem *l2_base;
>  static int g_irq[SIFIVE_L2_MAX_ECCINTR];
> +static struct riscv_cacheinfo_ops l2_cache_ops;
>
>  enum {
>  	DIR_CORR = 0,
> @@ -107,6 +110,38 @@ int unregister_sifive_l2_error_notifier(struct notifier_block *nb)
>  }
>  EXPORT_SYMBOL_GPL(unregister_sifive_l2_error_notifier);
>
> +static int l2_largest_wayenabled(void)
> +{
> +	return readl(l2_base + SIFIVE_L2_WAYENABLE);
> +}

WayEnable is 8 bits.

> +
> +static ssize_t number_of_ways_enabled_show(struct device *dev,
> +					   struct device_attribute *attr,
> +					   char *buf)
> +{
> +	return sprintf(buf, "%u\n", l2_largest_wayenabled());
> +}
> +
> +static DEVICE_ATTR_RO(number_of_ways_enabled);
> +
> +static struct attribute *priv_attrs[] = {
> +	&dev_attr_number_of_ways_enabled.attr,
> +	NULL,
> +};
> +
> +static const struct attribute_group priv_attr_group = {
> +	.attrs = priv_attrs,
> +};
> +
> +const struct attribute_group *l2_get_priv_group(struct cacheinfo *this_leaf)
> +{
> +	/* We want to use private group for L2 cache only */
> +	if (this_leaf->level == 2)
> +		return &priv_attr_group;
> +	else
> +		return NULL;
> +}
> +
>  static irqreturn_t l2_int_handler(int irq, void *device)
>  {
>  	unsigned int add_h, add_l;
> @@ -170,6 +205,9 @@ static int __init sifive_l2_init(void)
>
>  	l2_config_read();
>
> +	l2_cache_ops.get_priv_group = l2_get_priv_group;
> +	riscv_set_cacheinfo_ops(&l2_cache_ops);
> +
>  #ifdef CONFIG_DEBUG_FS
>  	setup_sifive_debug();
>  #endif

