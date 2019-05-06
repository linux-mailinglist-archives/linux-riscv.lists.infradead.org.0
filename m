Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09A49147D2
	for <lists+linux-riscv@lfdr.de>; Mon,  6 May 2019 11:51:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Cl9LNl+bCLC/cpnCtKew6atRdfBwgB24qYyYhWWsMQA=; b=BVkuHcULRLSOEw
	QnYTfbUUfM4FJMIlnwy6wV0Fswm12bdJ9JKHUXJt8JVZGZ5FG0Ht49Iuyeb11G2BxeBMaeTcXjZp4
	6u7yZXLQ3dOk2JZXhaB0fXbT2OBZowcdzO3tQSYz4Y7sRh+HWlOuprjlsj/2k/fbbRQje7fpP1eaA
	wnlSmu2iHFiAOcaInPkG/OaQVObyzmMYBMKXHcrX25UlJuXUNvw0ShP0ZknGlIPP3wiT4AZJJKzEo
	z6o591RENyHDoZlOf8OD/6N1jPXJFQd/hnLUA7OHrCL1yXTNxym+n6Tl9gKzZz0PgTn0lYR4FN1n9
	Z811c1vh7Gg4tJVgdbLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNaGt-0000Mg-U9; Mon, 06 May 2019 09:50:55 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNaGq-0000Ls-DX
 for linux-riscv@lists.infradead.org; Mon, 06 May 2019 09:50:54 +0000
Received: by mail-lf1-x141.google.com with SMTP id j11so8679433lfm.0
 for <linux-riscv@lists.infradead.org>; Mon, 06 May 2019 02:50:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=oIR8Y8TRD7JDnicAYZXuKYFswk6mChm5W5k3uZy/A8k=;
 b=d+AoqMuQ+gxyQUTlKLM437WV02AuIWPqZZ1yHOnsCKYwHu0AhjGiAuzSJT5RiYJl6B
 Qce06yQsR/XVFG8X7cZyoRD9930ckqJBHB/8sP0tfFs8/hzMGrx2NSSUxhopMiE/PLH+
 aciy+GxGj8EV21P7qMeOXKCclGn861HWkgFXOHLW9xZRbzh6O8lSVyq93cLbcWMzdbSC
 xXIf5FqvX7wSFeKtyGEgENldh4VFOAFHKWx1khPTu3GSXl6uujnpOfDSEIybCvn5n2C9
 r5hfZos5c/011hdQS3RHWVTiCflO9iJqgVmtGKR7maoGkwNAmR0k4VJey1zWt+HbpGy8
 sz4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=oIR8Y8TRD7JDnicAYZXuKYFswk6mChm5W5k3uZy/A8k=;
 b=Iu2v1p5ch0eIgBwOMQw0p26RTfjFcqTVXDvygpBZjkIZCPHTmJA1PMstaP+QxyhQwe
 qSwc04l0SPnBoLEnGyRvvoboTPEZlwttTAwhtRcNEwuseJNwk2n5GJOxEDUDUWnnT+BW
 EWfrSn3wARRRdH8SaFK1dlsRL9oQKYPBeMwkHE5k6zDx4v3T1k7aQnjGfGp1bAYQEGYL
 BClEMdOZhS8XecmjVs6bT5JJYEvtwsTM+Knl3AbpBPt2UOOKbxQ+YDtojKm8W8jgYI7c
 qu2bz2VT0kYZhCag1/lIqdXJYYozz6SpqIEVjA4Oer+Xd4liaXUWw+vqaKlvix6MQ0P0
 lU7w==
X-Gm-Message-State: APjAAAW4kd5Mew42agqeu6VJp9AGJTH6c8iQ38wwIimeDiGvrRFjghcL
 IWDYOlCNQtjzFs2GmznFo6TTynHxnjBzry5ryrGFKg==
X-Google-Smtp-Source: APXvYqxV/hG6zQ32Xe6xOpYrPEyzfvj/VSnJeB1RXBGmX03eV/CXV7dEIw0VnFDK5CIZjeeoNL7naRm+Scii7rPJ9EU=
X-Received: by 2002:a19:4f54:: with SMTP id a20mr12191013lfk.136.1557136249774; 
 Mon, 06 May 2019 02:50:49 -0700 (PDT)
MIME-Version: 1.0
References: <1556795761-21630-1-git-send-email-yash.shah@sifive.com>
 <1556795761-21630-2-git-send-email-yash.shah@sifive.com>
 <4072c812-d3bf-9ad5-2b30-6b2a5060bb55@arm.com>
In-Reply-To: <4072c812-d3bf-9ad5-2b30-6b2a5060bb55@arm.com>
From: Yash Shah <yash.shah@sifive.com>
Date: Mon, 6 May 2019 15:20:13 +0530
Message-ID: <CAJ2_jOFz907Kf5fhQ2a6K3Fyhr_h2PjvGfpQKxN-OQLRrzP=Ng@mail.gmail.com>
Subject: Re: [PATCH] edac: sifive: Add EDAC platform driver for SiFive SoCs
To: James Morse <james.morse@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_025052_890743_AD85DBFA 
X-CRM114-Status: GOOD (  31.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Palmer Dabbelt <palmer@sifive.com>, linux-kernel@vger.kernel.org,
 nicolas.ferre@microchip.com, Sachin Ghadi <sachin.ghadi@sifive.com>,
 Borislav Petkov <bp@alien8.de>, Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv@lists.infradead.org, mchehab@kernel.org, davem@davemloft.net,
 linux-edac@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi james,

On Thu, May 2, 2019 at 10:12 PM James Morse <james.morse@arm.com> wrote:
>
> Hi Yash,
>
> Sorry for the delay on the earlier version of this - I was trying to work out what happens
> when multiple edac drivers probe based on DT...
>
>
> On 02/05/2019 12:16, Yash Shah wrote:
> > The initial ver of EDAC driver supports:
> > - ECC event monitoring and reporting through the EDAC framework for SiFive
> >   L2 cache controller.
> >
>
> You probably don't want this bit preserved in the kernel log:
> {
>
> > This patch depends on patch
> > 'RISC-V: sifive_l2_cache: Add L2 cache controller driver for SiFive SoCs'
> > https://lkml.org/lkml/2019/5/2/309
>
> }
>
> > The EDAC driver registers for notifier events from the L2 cache controller
> > driver (arch/riscv/mm/sifive_l2_cache.c) for L2 ECC events
> >
> > Signed-off-by: Yash Shah <yash.shah@sifive.com>
> > ---
>
> (if you put it here, it gets discarded when the patch is applied)

Ok, will move it down here.

>
> Having an separately posted dependency like this is tricky, as this code can't be
> used/tested until the other bits are merged.
>
>
> >  MAINTAINERS                |   6 +++
> >  arch/riscv/Kconfig         |   1 +
> >  drivers/edac/Kconfig       |   6 +++
> >  drivers/edac/Makefile      |   1 +
> >  drivers/edac/sifive_edac.c | 121 +++++++++++++++++++++++++++++++++++++++++++++
> >  5 files changed, 135 insertions(+)
> >  create mode 100644 drivers/edac/sifive_edac.c
>
> > diff --git a/drivers/edac/sifive_edac.c b/drivers/edac/sifive_edac.c
> > new file mode 100644
> > index 0000000..eb7a9b9
> > --- /dev/null
> > +++ b/drivers/edac/sifive_edac.c
> > @@ -0,0 +1,121 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +/*
> > + * SiFive Platform EDAC Driver
> > + *
> > + * Copyright (C) 2018-2019 SiFive, Inc.
> > + *
> > + * This driver is partially based on octeon_edac-pc.c
> > + *
> > + */
> > +#include <linux/edac.h>
> > +#include <linux/platform_device.h>
> > +#include "edac_module.h"
> > +
> > +#define DRVNAME "sifive_edac"
> > +
> > +extern int register_sifive_l2_error_notifier(struct notifier_block *nb);
> > +extern int unregister_sifive_l2_error_notifier(struct notifier_block *nb);
>
> Ideally these would live in some header file.

Will move the externs in sifive_l2_cache header file

>
>
> > +struct sifive_edac_priv {
> > +     struct notifier_block notifier;
> > +     struct edac_device_ctl_info *dci;
> > +};
> > +
> > +/**
> > + * EDAC error callback
> > + *
> > + * @event: non-zero if unrecoverable.
> > + */
> > +static
> > +int ecc_err_event(struct notifier_block *this, unsigned long event, void *ptr)
> > +{
> > +     const char *msg = (char *)ptr;
> > +     struct sifive_edac_priv *p;
> > +
> > +     p = container_of(this, struct sifive_edac_priv, notifier);
> > +
> > +     if (event)
> > +             edac_device_handle_ue(p->dci, 0, 0, msg);
> > +     else
> > +             edac_device_handle_ce(p->dci, 0, 0, msg);
>
> This would be easier to read if your SIFIVE_L2_ERR_TYPE_UE were exposed via some header file.

sure.

>
>
> > +
> > +     return NOTIFY_STOP;
>
> Your notifier register calls are EXPORT_SYMBOL()d, but Kconfig forbids building this as a
> module, so its not for this driver. If there is another user of this notifier-chain, won't
> NOTIFY_STOP here break it?
>

Yes, you are right. Will change it to NOTIFY_OK

>
> > +}
> > +
> > +static int ecc_register(struct platform_device *pdev)
> > +{
> > +     struct sifive_edac_priv *p;
> > +
> > +     p = devm_kzalloc(&pdev->dev, sizeof(*p), GFP_KERNEL);
> > +     if (!p)
> > +             return -ENOMEM;
> > +
> > +     p->notifier.notifier_call = ecc_err_event;
> > +     platform_set_drvdata(pdev, p);
> > +
> > +     p->dci = edac_device_alloc_ctl_info(sizeof(*p), "sifive_ecc", 1,
>
> sizeof(*p) here is how much space in struct edac_device_ctl_info you need for private
> storage... but you never touch p->dci->pvt_info, so you aren't using it.
>
> 0?

Yes, will change it.

>
>
> > +                                         "sifive_ecc", 1, 1, NULL, 0,
> > +                                         edac_device_alloc_index());
> > +     if (IS_ERR(p->dci))
> > +             return PTR_ERR(p->dci);
> > +
> > +     p->dci->dev = &pdev->dev;
> > +     p->dci->mod_name = "Sifive ECC Manager";
> > +     p->dci->ctl_name = dev_name(&pdev->dev);
> > +     p->dci->dev_name = dev_name(&pdev->dev);
> > +
> > +     if (edac_device_add_device(p->dci)) {
> > +             dev_err(p->dci->dev, "failed to register with EDAC core\n");
> > +             goto err;
> > +     }
> > +
> > +     register_sifive_l2_error_notifier(&p->notifier);
> > +
> > +     return 0;
> > +
> > +err:
> > +     edac_device_free_ctl_info(p->dci);
> > +
> > +     return -ENXIO;
> > +}
>
> > +struct platform_device *sifive_pdev;
>
> static?

Yes, will change this too.

>
>
> > +static int __init sifive_edac_init(void)
> > +{
> > +     int ret;
> > +
> > +     sifive_pdev = platform_device_register_simple(DRVNAME, 0, NULL, 0);
> > +     if (IS_ERR(sifive_pdev))
> > +             return PTR_ERR(sifive_pdev);
> > +
> > +     ret = ecc_register(sifive_pdev);
> > +     if (ret)
> > +             platform_device_unregister(sifive_pdev);
> > +
> > +     return ret;
> > +}
> > +
> > +static void __exit sifive_edac_exit(void)
> > +{
> > +     ecc_unregister(sifive_pdev);
> > +     platform_device_unregister(sifive_pdev);
> > +}
>
> Looks good to me. I think this patch should go with its two dependencies, I'm not sure why
> it got split off...
>
> Reviewed-by: James Morse <james.morse@arm.com>
>

Thanks for your review.

- Yash

>
> Thanks,
>
> James

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
