Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B03713A060
	for <lists+linux-riscv@lfdr.de>; Tue, 14 Jan 2020 06:00:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EyjzXR8COdd1eoaRXFYjBLgXqmenG49ZI6sEr2gOrtw=; b=bCawDrn79VxN4YkSoHvQOq04t
	YMpVbZhYlHxhH6zGahHgDuQlPoa7qPUE5YxMsLHAKJgFb4NFzHocujljwgtxDCEnTOAqdkQj4vquI
	U4ap/ELcVAILq7vbxlYOEmf7t6pJRyV/IHWY5YU/j0aZxPPq+xFZy94haaxlHvYOzqYG4q+Xe82hj
	b9qQUtTQrkVgh+mW0d8GqbMPL17t6dnRnOCGnONZlc+ziu9AQQzAJ1lzkjhK3rSMc7cPysyCVAC7l
	sZJEIwQVfO6uWmG90WJUP3y5ge/cHThNR8Ch9YEbKXAaTAoyWZAw4PFH4RT4wd+Oy3qFVvBkUrM1c
	Qd00NkOhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irEJc-0000mX-TM; Tue, 14 Jan 2020 05:00:32 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irEJZ-0000hA-6y
 for linux-riscv@lists.infradead.org; Tue, 14 Jan 2020 05:00:30 +0000
Received: by mail-wr1-x443.google.com with SMTP id y17so10811423wrh.5
 for <linux-riscv@lists.infradead.org>; Mon, 13 Jan 2020 21:00:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=EyjzXR8COdd1eoaRXFYjBLgXqmenG49ZI6sEr2gOrtw=;
 b=0blqWPP0XUEalKMl98BWEQtugyWInoGtd5Gp4piQFuLXDFIFejyG2RWvPdhBEfXxWI
 R07mJCfH/uBiZJSo3P8V8xZ3BFGBkgpKk6o0kXcWhRfVJqKPfnY6ya/16lZInohkZIz5
 vxD63I7ruVJmpGyYrU+we2V+Npd/Rf2hIq16w/GLgctPGnYfZ54P0oL7RyCdMTuA3Rcc
 WyOAuKOYTiPtOMyC1OpvVm/9lwu/xha/WfilFKqKaNwG1gBig6Ay2jFLS7D70UqpIm2v
 Ck7/GCpJIW8EOtTmPU1HZEe7efIft4Y1OlL5v4lkA+//W/3ctXAPjoJLE4PYSP2X1rLP
 RzCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=EyjzXR8COdd1eoaRXFYjBLgXqmenG49ZI6sEr2gOrtw=;
 b=HhomJ8HocE+GW75iYjbm14SnCmKQoBtFTtuZSorfAJrnYt8slJlbD07kVhs5J+bKEJ
 7IVar2XlSOtnfVD3g5PuTrQad8PtcoNILtiLz+E1wMwQsC0r60APh+BzNxGdcCwfPyIx
 a13q3zUjRNw4EoeM0hdFRRzNHOONHlS7pmr29+RdMAsQhDnBu9/woN1dB+NqVi0JRg/V
 A7yVOgI3o9d0yU37z3nsKmnypAP/SSA/wMnALdGxh5pHJSutQ2PaK6/ZTCyWXFRIQv5c
 Z8gHRfV15hjzt+2MlQQ28qIFigmv4nnAbs8x3I/3WpoiZB3Z7I9Lo0InhxVobjgI79KU
 nsKw==
X-Gm-Message-State: APjAAAUedEe+Zp1LR7pR/iKeT7yhCJ2fboEsRILdbWGVo9MWLHA8Vgw8
 VaNbzkHWTY5JcOsX1UEVfBAH0wKYT72SKdhayKi+Ow==
X-Google-Smtp-Source: APXvYqy8JGDxg4Mr/pqYBdBQ3gHtmzQ+mvGy2inraq9v/RF0Hlgf/VdA+Rkzqv7LoaKDL2B0TlDYpBsMBqiwN3AWFQc=
X-Received: by 2002:adf:fa12:: with SMTP id m18mr21869141wrr.309.1578978026945; 
 Mon, 13 Jan 2020 21:00:26 -0800 (PST)
MIME-Version: 1.0
References: <1578897500-23897-1-git-send-email-yash.shah@sifive.com>
 <1578897500-23897-3-git-send-email-yash.shah@sifive.com>
In-Reply-To: <1578897500-23897-3-git-send-email-yash.shah@sifive.com>
From: Anup Patel <anup@brainfault.org>
Date: Tue, 14 Jan 2020 10:30:16 +0530
Message-ID: <CAAhSdy2QvF+U0eJ1XMc8L5gJB5e_9_XUoQpg8pVof+kxxJ5avg@mail.gmail.com>
Subject: Re: [PATCH v3 2/2] riscv: Add support to determine no. of L2 cache
 way enabled
To: Yash Shah <yash.shah@sifive.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_210029_258892_BFBC9CBE 
X-CRM114-Status: GOOD (  17.48  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Sachin Ghadi <sachin.ghadi@sifive.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 Alexios Zavras <alexios.zavras@intel.com>, Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, Thomas Gleixner <tglx@linutronix.de>,
 bp@suse.de, linux-riscv <linux-riscv@lists.infradead.org>,
 Allison Randal <allison@lohutok.net>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, Jan 13, 2020 at 12:09 PM Yash Shah <yash.shah@sifive.com> wrote:
>
> In order to determine the number of L2 cache ways enabled at runtime,
> implement a private attribute ("number_of_ways_enabled"). Reading this
> attribute returns the number of enabled L2 cache ways at runtime.
>
> Using riscv_set_cacheinfo_ops() hook a custom function, that returns
> this private attribute, to the generic ops structure which is used by
> cache_get_priv_group() in cacheinfo framework.
>
> Signed-off-by: Yash Shah <yash.shah@sifive.com>
> ---
>  drivers/soc/sifive/sifive_l2_cache.c | 38 ++++++++++++++++++++++++++++++++++++
>  include/soc/sifive/sifive_l2_cache.h |  2 ++
>  2 files changed, 40 insertions(+)
>
> diff --git a/drivers/soc/sifive/sifive_l2_cache.c b/drivers/soc/sifive/sifive_l2_cache.c
> index a506939..8741885 100644
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
>         DIR_CORR = 0,
> @@ -107,6 +110,38 @@ int unregister_sifive_l2_error_notifier(struct notifier_block *nb)
>  }
>  EXPORT_SYMBOL_GPL(unregister_sifive_l2_error_notifier);
>
> +int sifive_l2_largest_wayenabled(void)
> +{
> +       return readl(l2_base + SIFIVE_L2_WAYENABLE);
> +}

The sifine_l2_largest_wayenabled() is not called from anywhere else
so make it static and rename it to l2_largest_wayenabled().

> +
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
> +const struct attribute_group *l2_get_priv_group(struct cacheinfo *this_leaf)
> +{
> +       /* We want to use private group for L2 cache only */
> +       if (this_leaf->level == 2)
> +               return &priv_attr_group;
> +       else
> +               return NULL;
> +}
> +
>  static irqreturn_t l2_int_handler(int irq, void *device)
>  {
>         unsigned int add_h, add_l;
> @@ -170,6 +205,9 @@ static int __init sifive_l2_init(void)
>
>         l2_config_read();
>
> +       l2_cache_ops.get_priv_group = l2_get_priv_group;
> +       riscv_set_cacheinfo_ops(&l2_cache_ops);
> +
>  #ifdef CONFIG_DEBUG_FS
>         setup_sifive_debug();
>  #endif
> diff --git a/include/soc/sifive/sifive_l2_cache.h b/include/soc/sifive/sifive_l2_cache.h
> index 92ade10..55feff5 100644
> --- a/include/soc/sifive/sifive_l2_cache.h
> +++ b/include/soc/sifive/sifive_l2_cache.h
> @@ -10,6 +10,8 @@
>  extern int register_sifive_l2_error_notifier(struct notifier_block *nb);
>  extern int unregister_sifive_l2_error_notifier(struct notifier_block *nb);
>
> +int sifive_l2_largest_wayenabled(void);
> +

You can drop the sifive_l2_largest_wayenabled() declaration from here.

>  #define SIFIVE_L2_ERR_TYPE_CE 0
>  #define SIFIVE_L2_ERR_TYPE_UE 1
>
> --
> 2.7.4
>

Apart from above it looks good.

Reviewed-by: Anup Patel <anup@brainfault.org>

Regards,
Anup

