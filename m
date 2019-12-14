Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BFC611EFE8
	for <lists+linux-riscv@lfdr.de>; Sat, 14 Dec 2019 03:12:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Mime-Version:Message-ID:References:
	In-Reply-To:To:Subject:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VqAsPt9bELAFiBc9U8EPUlegvQWFH4OeQsw2yFpIirU=; b=WjR2Io4K5AFzm+
	jDlqNNNB3caVoNNZF6IG7KM8IQwChE24jEBDWFTjpA1vzGlHQ8FM/e2w81NSWnUOCJEicDGnEbjQh
	F3xICZ8VjNRfSnUMWG4btOxPkO5yp9JmaPF9MiqkjJ9xPD2MrkN2+JsCNzxwGqJDP0cwkz+k2joCp
	eW2pMvips6qscREo3CPiZtw+hQFSxteY5V5kNd0bl7aNLoLZYcampIBa/kEq5mLs77hwDzeLFQKO/
	G/aCg+ehKtCa7BvyZ2YvqEM2oE3WUUbDrKFEN6Zsf4YcqyQ3YIfKlVRLBmuge7OXeKHxE/SGOagmK
	nxdaRLa+Zmbsl6mO08MA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifwvH-0006NZ-HU; Sat, 14 Dec 2019 02:12:47 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifwvD-0005wU-Ao
 for linux-riscv@lists.infradead.org; Sat, 14 Dec 2019 02:12:44 +0000
Received: by mail-pf1-x444.google.com with SMTP id l127so637226pfl.1
 for <linux-riscv@lists.infradead.org>; Fri, 13 Dec 2019 18:12:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:from:subject:cc:to:in-reply-to:references:message-id
 :mime-version:content-transfer-encoding;
 bh=VqAsPt9bELAFiBc9U8EPUlegvQWFH4OeQsw2yFpIirU=;
 b=kT5JfkWWnltIHB+KMi22oaqdi0u7b/XW08cmsNjm4rw3SijQ4hzc17kT7kk1xgsZda
 mqIMijiU6iWoQHCMyWHqU8fSBCVUg90YGHJ7ynH/UfGvk/2uvOxDff9KkUvHItY6Y7oo
 lw5NjlExuH04tyEE0FfxlhF0iAXiTscaHVst2fLNWkpEdtXzloRmwvP4Mmji6OWMneWW
 XBR2pDRcUNpAWWOmU/qgBUazLU8+aLtZnU7NxJ5l5TC3baS5oImDa1xkBINqMNiVUwhv
 WFEAlA2pGu8Qzy3P5SYElGhntwaQXriA60SGHTFhxGQ4atZ5Vr1Njc8T+6OsOIzbfSwI
 uDXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:subject:cc:to:in-reply-to:references
 :message-id:mime-version:content-transfer-encoding;
 bh=VqAsPt9bELAFiBc9U8EPUlegvQWFH4OeQsw2yFpIirU=;
 b=RYxTT07ss9ZZreRhvw/TxMGTDdRE3tw8r5gONm/sGmFlJv9CTn5fjTUXL/+ahOmTY9
 wEiNzR102xlcjXpOkwVw9hQIg9aUfEyIm5G4x3I9LQgJrSgLmaL1YC/bPLoPm1xZX3+g
 lrbz6FSZ9YhTn/2RSAF4HoCFah/Oqs97lSJ6roAWpb118Sr7S42HyInGSYQ06XIV6b03
 NYARsaBG3UX2MHON/E9oRpupDU4HqUy+rYnZHybBxPvOtz4PkzsQGfZjxtggA2iBovmw
 7zEqVE/7Evw6biilrqNfVxtdRYKrwhEbStx+nvMhGehDRo7zsBsuWjVLtQZREoTjSZPJ
 VrbQ==
X-Gm-Message-State: APjAAAXP/kD1/J5OQIW+GCZYe+LU8F0b8Dspl2MtbWkteblWuU9MMTAp
 sNaKuZqqPVoZaljXbIbxiYW05w==
X-Google-Smtp-Source: APXvYqz6Aiqa+GHK4u01RqHA/l0Ts2E4I0yDj82iO4jlfpVQb6dLB9g4/nePTWCgR435ZKhTeO9gWg==
X-Received: by 2002:a63:4b24:: with SMTP id y36mr3072965pga.176.1576289559199; 
 Fri, 13 Dec 2019 18:12:39 -0800 (PST)
Received: from localhost ([2620:0:1000:2514:7f69:cd98:a2a2:a03d])
 by smtp.gmail.com with ESMTPSA id u123sm13088597pfb.109.2019.12.13.18.12.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Dec 2019 18:12:38 -0800 (PST)
Date: Fri, 13 Dec 2019 18:12:38 -0800 (PST)
X-Google-Original-Date: Fri, 13 Dec 2019 18:12:36 PST (-0800)
From: Palmer Dabbelt <palmerdabbelt@google.com>
X-Google-Original-From: Palmer Dabbelt <palmer@dabbelt.com>
Subject: Re: [PATCH 2/2] riscv: cacheinfo: Add support to determine no. of L2
 cache way enabled
To: yash.shah@sifive.com
In-Reply-To: <1575890706-36162-3-git-send-email-yash.shah@sifive.com>
References: <1575890706-36162-3-git-send-email-yash.shah@sifive.com>
 <1575890706-36162-1-git-send-email-yash.shah@sifive.com>
Message-ID: <mhng-a1ba4b8a-4c6a-43e9-a87a-f8bbbe3555d8@palmerdabbelt-glaptop>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_181243_420124_6B07D5C2 
X-CRM114-Status: GOOD (  17.25  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, aou@eecs.berkeley.edu,
 Atish Patra <Atish.Patra@wdc.com>, Greg KH <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, alexios.zavras@intel.com, yash.shah@sifive.com,
 robh+dt@kernel.org, Paul Walmsley <paul.walmsley@sifive.com>,
 tglx@linutronix.de, bmeng.cn@gmail.com, linux-riscv@lists.infradead.org,
 allison@lohutok.net
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, 09 Dec 2019 03:25:06 PST (-0800), yash.shah@sifive.com wrote:
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

I thought the plan was to get this stuff out of arch/riscv?  It looks like it
only got half-way done.

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
>  			 struct device_node *node,
> @@ -16,6 +17,36 @@ static void ci_leaf_init(struct cacheinfo *this_leaf,
>  	this_leaf->type = type;
>  }
>
> +#ifdef CONFIG_SIFIVE_L2
> +static ssize_t number_of_ways_enabled_show(struct device *dev,
> +					   struct device_attribute *attr,
> +					   char *buf)
> +{
> +	return sprintf(buf, "%u\n", sifive_l2_largest_wayenabled());
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
> +const struct attribute_group *
> +cache_get_priv_group(struct cacheinfo *this_leaf)
> +{
> +	/* We want to use private group for L2 cache only */
> +	if (this_leaf->level == 2)
> +		return &priv_attr_group;
> +	else
> +		return NULL;
> +}
> +#endif /* CONFIG_SIFIVE_L2 */
> +
>  static int __init_cache_level(unsigned int cpu)
>  {
>  	struct cpu_cacheinfo *this_cpu_ci = get_cpu_cacheinfo(cpu);
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
> +	return readl(l2_base + SIFIVE_L2_WAYENABLE);
> +}
> +
>  static irqreturn_t l2_int_handler(int irq, void *device)
>  {
>  	unsigned int add_h, add_l;

