Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EB5B130F3D
	for <lists+linux-riscv@lfdr.de>; Mon,  6 Jan 2020 10:10:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0YAKuC3wFwI+CXcdF8S7FL6f/ZbYh+aygiTA+JHhgVc=; b=SeLBfNeIYco/P6kCJaEVjbfDu
	jCteoPNv9ghAm5xuZ5hJPQYpEo1hwGRmKaXw4TJhSPA/Q355tNrG9WbHkG0g99C9HrQv8IkdmjdI0
	gog6QgyDCJodzl1iowvPMBNeUsWB0VJryOxaOxyKtmymJMCgPJn2fE/hTfTzJAbzRw/hSqrGIz1pV
	ljFzBHTAUfn0Fh0+Yl68gsEfQKUNMAeL+37yl00IS04CYKSzZQblJAtpJqbr3+YHEu/iCfnIC4Uck
	zCFgmiVZvM4FmXwRmpuwthhEllT4VYsQcYgAUpQc0sCPx+KAaNFgRJkk/wqZxmpinIfGkX81UIA5J
	U+B30DEGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioOPH-0000AS-E8; Mon, 06 Jan 2020 09:10:39 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioOPA-00008J-Jh
 for linux-riscv@lists.infradead.org; Mon, 06 Jan 2020 09:10:36 +0000
Received: by mail-wm1-x341.google.com with SMTP id u2so14498461wmc.3
 for <linux-riscv@lists.infradead.org>; Mon, 06 Jan 2020 01:10:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=0YAKuC3wFwI+CXcdF8S7FL6f/ZbYh+aygiTA+JHhgVc=;
 b=fT6SCqfFDxAfYyPaxe6fPt46NaZBg05eLaakaY5OWtAAWuA8tlYq/1EhcgGwgR/lm7
 TB9OPasW7dnE+2SpOJkKnm56dXd2SYUgO6eC/bM+Wpn5qxyKB1aQv7XPTrvYDu10REr7
 0AdNnaPOQ+InCGPLWxqNqC6wxk5DcECL+gxYWEY8yHGfJ6n/Cbrg+cqd/bGK2uYAxQX9
 VWEJ0pdBZcygVY4J9H8sVEKXRUlD1/IMyEsZN8p8h+JRIlYz/plscGmswdweTxXZnf5Q
 DbMn5NwXqqx8rXN+xbQZu6Ujc3uBwbIy6JIPb00/PbHZmlGf/VBknqwm+0Qq/Ns9PAv7
 yA/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0YAKuC3wFwI+CXcdF8S7FL6f/ZbYh+aygiTA+JHhgVc=;
 b=NqFUmC0p1ua3JBvB2P5/bca6IVfhpJhNVUP1lETM+/5kOqJI3/8xnRcwi0czcX/wbF
 ooBhUU6rrJSuK9d8OlFCGT6uXKSwl+O4tNaJuwuQMmH2K8B8jMWG5dwESxUIhjbUhqWn
 wt0Nnp2y6LqotF7sc1HaN9M7AUyckdOmiRD/xxikXfWYgnTndiCuGrVWYp+2IT/5k1u1
 PD1+f2wmh3oB0HSl47ZYgrx1m+wcYPulGbWWfYBYdVtueI+cxcoh8gQxbZfN8dR/UF8H
 nQfOKdpWQvpcBdC5XMLJ8HJpG12MTsuw+nSSLfnpj8yC8Kzyy9S+pn1MOX2tXf3Gtbor
 c98A==
X-Gm-Message-State: APjAAAUUeoI5KogQULgT6XchFks5VtJutrXm9Yl6HlKQSwcp0q2CsUmi
 /JgqFkUBpHGkcwprzz6r33bXr4WGTOAvfa0mCwHizw==
X-Google-Smtp-Source: APXvYqzAomKzQkxDUIrNi/Whr2s8NAVXtV7E9CPmSzog947HVmDY807POnBYfNs9xS73M7WtrMQ2fd94nJ5uHmoRjVo=
X-Received: by 2002:a1c:66d5:: with SMTP id a204mr31955396wmc.64.1578301830614; 
 Mon, 06 Jan 2020 01:10:30 -0800 (PST)
MIME-Version: 1.0
References: <1578024801-39039-1-git-send-email-yash.shah@sifive.com>
 <1578024801-39039-3-git-send-email-yash.shah@sifive.com>
In-Reply-To: <1578024801-39039-3-git-send-email-yash.shah@sifive.com>
From: Anup Patel <anup@brainfault.org>
Date: Mon, 6 Jan 2020 14:40:19 +0530
Message-ID: <CAAhSdy0CXde5s_ya=4YvmA4UQ5f5gLU-Z_FaOr8LPni+s_615Q@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] riscv: cacheinfo: Add support to determine no. of
 L2 cache way enabled
To: Yash Shah <yash.shah@sifive.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_011032_708389_A0B47B14 
X-CRM114-Status: GOOD (  17.13  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Albert Ou <aou@eecs.berkeley.edu>, Sachin Ghadi <sachin.ghadi@sifive.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 green.wan@sifive.com, Alexios Zavras <alexios.zavras@intel.com>,
 Rob Herring <robh+dt@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>,
 bp@suse.de, Paul Walmsley <paul.walmsley@sifive.com>,
 Thomas Gleixner <tglx@linutronix.de>, Bin Meng <bmeng.cn@gmail.com>,
 linux-riscv <linux-riscv@lists.infradead.org>,
 Allison Randal <allison@lohutok.net>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, Jan 3, 2020 at 9:44 AM Yash Shah <yash.shah@sifive.com> wrote:
>
> In order to determine the number of L2 cache ways enabled at runtime,
> implement a private attribute using cache_get_priv_group() in cacheinfo
> framework. Reading this attribute ("number_of_ways_enabled") will return
> the number of enabled L2 cache ways at runtime.
>
> Signed-off-by: Yash Shah <yash.shah@sifive.com>
> ---
>  arch/riscv/include/asm/sifive_l2_cache.h |  2 ++
>  arch/riscv/kernel/cacheinfo.c            | 31 +++++++++++++++++++++++++++++++
>  drivers/soc/sifive/sifive_l2_cache.c     |  5 +++++
>  3 files changed, 38 insertions(+)
>
> diff --git a/arch/riscv/include/asm/sifive_l2_cache.h b/arch/riscv/include/asm/sifive_l2_cache.h
> index 04f6748..217a42f 100644
> --- a/arch/riscv/include/asm/sifive_l2_cache.h
> +++ b/arch/riscv/include/asm/sifive_l2_cache.h
> @@ -10,6 +10,8 @@
>  extern int register_sifive_l2_error_notifier(struct notifier_block *nb);
>  extern int unregister_sifive_l2_error_notifier(struct notifier_block *nb);
>
> +int sifive_l2_largest_wayenabled(void);
> +
>  #define SIFIVE_L2_ERR_TYPE_CE 0
>  #define SIFIVE_L2_ERR_TYPE_UE 1
>
> diff --git a/arch/riscv/kernel/cacheinfo.c b/arch/riscv/kernel/cacheinfo.c
> index 4c90c07..29bdb21 100644
> --- a/arch/riscv/kernel/cacheinfo.c
> +++ b/arch/riscv/kernel/cacheinfo.c
> @@ -7,6 +7,7 @@
>  #include <linux/cpu.h>
>  #include <linux/of.h>
>  #include <linux/of_device.h>
> +#include <asm/sifive_l2_cache.h>
>
>  static void ci_leaf_init(struct cacheinfo *this_leaf,
>                          struct device_node *node,
> @@ -16,6 +17,36 @@ static void ci_leaf_init(struct cacheinfo *this_leaf,
>         this_leaf->type = type;
>  }
>
> +#ifdef CONFIG_SIFIVE_L2
> +static ssize_t number_of_ways_enabled_show(struct device *dev,
> +                                          struct device_attribute *attr,
> +                                          char *buf)
> +{
> +       return sprintf(buf, "%u\n", sifive_l2_largest_wayenabled());
> +}
> +
> +static DEVICE_ATTR_RO(number_of_ways_enabled);
> +
> +static struct attribute *priv_attrs[] = {
> +       &dev_attr_number_of_ways_enabled.attr,
> +       NULL,
> +};
> +
> +static const struct attribute_group priv_attr_group = {
> +       .attrs = priv_attrs,
> +};
> +
> +const struct attribute_group *
> +cache_get_priv_group(struct cacheinfo *this_leaf)
> +{
> +       /* We want to use private group for L2 cache only */
> +       if (this_leaf->level == 2)
> +               return &priv_attr_group;
> +       else
> +               return NULL;
> +}
> +#endif /* CONFIG_SIFIVE_L2 */
> +

Instead of this, I would suggest to implement a generic ops
structure.

In arch/riscv/include/asm/cacheinfo.h:

struct riscv_caceinfo_ops {
    const struct attribute_group * (*get_priv_group)(struct cacheinfo
*this_leaf);
};

void riscv_set_cacheinfo_ops(struct riscv_caceinfo_ops *ops);

In arch/riscv/riscv/kernel/cacheinfo.h

static struct riscv_caceinfo_ops *rv_cache_ops;

void riscv_set_cacheinfo_ops(struct riscv_caceinfo_ops *ops)
{
    rv_cache_ops = ops;
}
EXPORT_SYMBOL_GPL(riscv_set_cacheinfo_ops);

const struct attribute_group *
cache_get_priv_group(struct cacheinfo *this_leaf)
{
    if (rv_cache_ops && rv_cache_ops->get_priv_group)
        return rv_cache_ops->get_priv_group(this_leaf)
    return NULL;
}

Above will be a separate patch. In future, we can add more
ops for SOC specific cacheinfo.

Using riscv_set_cacheinfo_ops() you can have another patch
to implement SiFive L2 info entirely in drivers/soc/sifive/sifive_l2_cache.c

Also, I would strongly recommend moving
arch/riscv/include/asm/sifive_l2_cache.h
TO
include/soc/sifive/sifive_l2_cache.h

>  static int __init_cache_level(unsigned int cpu)
>  {
>         struct cpu_cacheinfo *this_cpu_ci = get_cpu_cacheinfo(cpu);
> diff --git a/drivers/soc/sifive/sifive_l2_cache.c b/drivers/soc/sifive/sifive_l2_cache.c
> index a9ffff3..f1a5f2c 100644
> --- a/drivers/soc/sifive/sifive_l2_cache.c
> +++ b/drivers/soc/sifive/sifive_l2_cache.c
> @@ -107,6 +107,11 @@ int unregister_sifive_l2_error_notifier(struct notifier_block *nb)
>  }
>  EXPORT_SYMBOL_GPL(unregister_sifive_l2_error_notifier);
>
> +int sifive_l2_largest_wayenabled(void)
> +{
> +       return readl(l2_base + SIFIVE_L2_WAYENABLE);
> +}
> +
>  static irqreturn_t l2_int_handler(int irq, void *device)
>  {
>         unsigned int add_h, add_l;
> --
> 2.7.4
>

Regards,
Anup

