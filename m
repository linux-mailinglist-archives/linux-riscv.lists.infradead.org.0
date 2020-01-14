Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3A7A13A053
	for <lists+linux-riscv@lfdr.de>; Tue, 14 Jan 2020 05:52:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Kdjzg/OEJ3U/n4z5ghVCYhNKmhmqsmyxQa/XtrqBQiU=; b=csanVcA7HeLF7sK4p2rZ/8g48
	XE2pNxenlv55UVihK9ooCkje6K0+ga8ErzgYCrR35eDMzaE3l5W/gwB8aty1ATabhO347SCakahPy
	Wp5/YU0VY4oyhWK/x8Py7m56RfKlfI+HRiudYfrcJAzQ3BqVXUYY1zD6u6C0UUDMSA0FkzFrVSCJR
	2pL9teu/0MyhyXgG3Jpe0zzgkxbpg7EutyckJ4PZDz+2RMeyIGNShf65ahL04eDeyZromN20hhIk+
	ro7kMDQNYKLRPDtQi0w7+OucP48LlJISuIDDEak5nadymiHS7dUJ9ou60cu47NqPSkO6Z1yXmfMs6
	idb8HEnGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irEBz-0006BC-0C; Tue, 14 Jan 2020 04:52:39 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irEBu-00064r-Hy
 for linux-riscv@lists.infradead.org; Tue, 14 Jan 2020 04:52:37 +0000
Received: by mail-wm1-x342.google.com with SMTP id t14so12145835wmi.5
 for <linux-riscv@lists.infradead.org>; Mon, 13 Jan 2020 20:52:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Kdjzg/OEJ3U/n4z5ghVCYhNKmhmqsmyxQa/XtrqBQiU=;
 b=nnWTpEg+MgOnuUhZXlIaKchwkY/TwJoS51ktgSnLLxjhRjBlYi+D6OBCmdwyfLdzLe
 873MHwbfUdBmKv1qTe1SN6rVUTg0KbSYQXKmTcqDDotrcUDEGA8mz7b3CzAOoMhKt2T3
 GglM21MyVfjQd87kNLWNbsWtI5rN9drI5n2jB5xDyS99MQh9m1X1y8FGXk8HAxySqXzT
 AQU5xfswknreI83h58ZSDJBF0BZJUJlAME7SpQuO2+VKGR1N93RY/Wcypnm7HT8Do8T2
 A+J7/jkYCNx9a9k0WmcZtMouAf7u61tdGByBJIJ1nF0lyiFbIjjkKQ8V1UWoesDGPNo9
 5SbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Kdjzg/OEJ3U/n4z5ghVCYhNKmhmqsmyxQa/XtrqBQiU=;
 b=DYMggfZEPmh2CBJyFNthhIJ7V9XzxA4oEftI0JS810xrlpFBIluW0pAdP5Uuso64WS
 oHcekqpm6LSkmLorpMaZE1Ty5V3IRQgqiEXtqok3yWCRNjtLq8/UUY2MQ2j7XYV5/XU8
 89IQhby1RphaLMdiHAV+0mDZQA9RS3IFm/en/rTl7IdEfqFdiXcK0z43oEwQNtcWueKp
 ad6wKhbqesvCi1nKvV6fFt/yyQn6ZrZwU/8pyugUHjYC1GnQpHVaXyp/VZveFpWQ3huA
 VjkPmNyRq6DvOQg6UnIu/s4y7QHRIEtVDp8/Ec+9mOJY7MB0HLLkMFoOh2w/iLXo18fp
 GSNg==
X-Gm-Message-State: APjAAAVybEqaFCI/mbezkxetVanGajKXteZDnVvdOA5n0PRjNoBMT2G3
 Iv5sySG+p8Mm5LJmOyMTdXrrMZARz0WqspkpRhlCYQ==
X-Google-Smtp-Source: APXvYqxekq8Q6Ko5YGFKD2N3dqW+2HgsyXZWMWzqcM/WcztnksE1zFepCPnkkoyvQYT4vbpacWQUb9tjyzLTD/sEnZE=
X-Received: by 2002:a7b:c5d8:: with SMTP id n24mr24014206wmk.124.1578977548667; 
 Mon, 13 Jan 2020 20:52:28 -0800 (PST)
MIME-Version: 1.0
References: <1578897500-23897-1-git-send-email-yash.shah@sifive.com>
 <1578897500-23897-2-git-send-email-yash.shah@sifive.com>
In-Reply-To: <1578897500-23897-2-git-send-email-yash.shah@sifive.com>
From: Anup Patel <anup@brainfault.org>
Date: Tue, 14 Jan 2020 10:22:17 +0530
Message-ID: <CAAhSdy2sxmmZDqHx401RA4pm8Vn8sx0ocjNOmYGXHokfNrgNXQ@mail.gmail.com>
Subject: Re: [PATCH v3 1/2] riscv: cacheinfo: Implement cache_get_priv_group
 with a generic ops structure
To: Yash Shah <yash.shah@sifive.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_205234_596728_682A9EE8 
X-CRM114-Status: GOOD (  14.53  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
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
> Implement cache_get_priv_group() that will make use of a generic ops
> structure to return a private attribute group for custom cache info.
>
> Using riscv_set_cacheinfo_ops() users can hook their own custom function
> to return the private attribute group for cacheinfo. In future we can
> add more ops to this generic ops structure for SOC specific cacheinfo.
>
> Signed-off-by: Yash Shah <yash.shah@sifive.com>
> ---
>  arch/riscv/include/asm/cacheinfo.h | 15 +++++++++++++++
>  arch/riscv/kernel/cacheinfo.c      | 17 +++++++++++++++++
>  2 files changed, 32 insertions(+)
>  create mode 100644 arch/riscv/include/asm/cacheinfo.h
>
> diff --git a/arch/riscv/include/asm/cacheinfo.h b/arch/riscv/include/asm/cacheinfo.h
> new file mode 100644
> index 0000000..5d9662e
> --- /dev/null
> +++ b/arch/riscv/include/asm/cacheinfo.h
> @@ -0,0 +1,15 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +
> +#ifndef _ASM_RISCV_CACHEINFO_H
> +#define _ASM_RISCV_CACHEINFO_H
> +
> +#include <linux/cacheinfo.h>
> +
> +struct riscv_cacheinfo_ops {
> +       const struct attribute_group * (*get_priv_group)(struct cacheinfo
> +                                                       *this_leaf);
> +};
> +
> +void riscv_set_cacheinfo_ops(struct riscv_cacheinfo_ops *ops);
> +
> +#endif /* _ASM_RISCV_CACHEINFO_H */
> diff --git a/arch/riscv/kernel/cacheinfo.c b/arch/riscv/kernel/cacheinfo.c
> index 4c90c07..bd0f122 100644
> --- a/arch/riscv/kernel/cacheinfo.c
> +++ b/arch/riscv/kernel/cacheinfo.c
> @@ -7,6 +7,23 @@
>  #include <linux/cpu.h>
>  #include <linux/of.h>
>  #include <linux/of_device.h>
> +#include <asm/cacheinfo.h>
> +
> +static struct riscv_cacheinfo_ops *rv_cache_ops;
> +
> +void riscv_set_cacheinfo_ops(struct riscv_cacheinfo_ops *ops)
> +{
> +       rv_cache_ops = ops;
> +}
> +EXPORT_SYMBOL_GPL(riscv_set_cacheinfo_ops);
> +
> +const struct attribute_group *
> +cache_get_priv_group(struct cacheinfo *this_leaf)
> +{
> +       if (rv_cache_ops && rv_cache_ops->get_priv_group)
> +               return rv_cache_ops->get_priv_group(this_leaf);
> +       return NULL;
> +}
>
>  static void ci_leaf_init(struct cacheinfo *this_leaf,
>                          struct device_node *node,
> --
> 2.7.4
>

LGTM.

Reviewed-by: Anup Patel <anup@brainfault.org>

Regards,
Anup

