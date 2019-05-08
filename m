Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19C051708C
	for <lists+linux-riscv@lfdr.de>; Wed,  8 May 2019 07:50:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5m6H+KBmls7xpUWVauIAVOv0GbMkbCWxjmFmBjTe5Bs=; b=cP4l73R3vxXTd1
	HiaifW1Do5V8kyPBMbCuwtSejXtPe+kDUbLb6znU5VzeN8A1834aeEhGiaOnXHh+5kE/myEma6P6v
	B1NKPf6KyGafjsFSXa7nQueHOOEaex5s8WWezAe9xIbBrF2Moo+w0XrwWw7XDiR9N71ahFxnKw5c6
	ICwa/ZQrbpMlTpM7U9EeSkc/ZrQbPMtIR+ItATxaJcpVgMOOubFS4qHsa0lvgZTcrfHIYC3bURoG2
	1GMBFDrxGCvrA3zjvOh5hqVwv43XysOeGubMGSdtQ8jhXKynMiuup5CTwnbO9jGbEpfA1d/piEw16
	scKOqxKt/g48cE1p4Asw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOFTA-0007SJ-9O; Wed, 08 May 2019 05:50:20 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOFT6-0007RZ-G3
 for linux-riscv@lists.infradead.org; Wed, 08 May 2019 05:50:18 +0000
Received: by mail-lf1-x144.google.com with SMTP id f1so813661lfl.6
 for <linux-riscv@lists.infradead.org>; Tue, 07 May 2019 22:50:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=6VNO32gkOjAFDvmj3qsaBg8BBWn0BQYs6mBExH3P2Mw=;
 b=kHDOaiT0j+o+B2ZBt/yia1FDIojDnQcjSebmgLII5LR7JOWw294hu55v0nXrCpBUdL
 lArwxfnLA9ISj86HwTGPaYC5GPf3Yz3kYtAQ8pLhG19chrWtfwC9h0w1PKQxDDXtDCM2
 I3W2V7uNhr/2Kah0vK48oklVzuPcgrNUxSJJDJjU6B0GRdSPIgrhki19Ghmc7ihzs+xc
 zwhpr146/EcT4Ema9/11rBaZQz68cmJCeTnXtJYoPDd83IGaxJq5NjgABw75EBiAQgEy
 5r/WFBCFfViaeuvG4HgbIKCcvKm9uR0U2mrQP3FruchWQmgEyI50Z83lASvgFJ6yNGMX
 ZV+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=6VNO32gkOjAFDvmj3qsaBg8BBWn0BQYs6mBExH3P2Mw=;
 b=Pc7dyiVjuj8jHjaa2gmUcHQ98ik6mFqRgv4eU+KWnvSqDg2M0osRD5uh6OHwsZypFh
 z9Li3NNA6KGGdm6ZUL8Fb4MQURYYUY9n1wYSfCOoIRyrL7xtg6t34rUZNb5pTqNET4u4
 SRepdXXmt2kSJl4alMY+89Y8M4qHm0JkjD2eGsvwVnFvT7oi9102PJV50QSarve5pjpd
 10W3YJn7TGsRaQVwrJkpc2dHkKerjkTDXrMKbU5MNFW+sieS8PcgVJgTK0LRbtrCZBHo
 gwovzHXy2v8edQHKpG5FYDy1ANpOjeKGq375ORM0Xn1Agb2moEXt6bbt3Uq/IG+fmosv
 4X0g==
X-Gm-Message-State: APjAAAVjEpP46JmRVl/gTUywS5hat6HDQGrYuYr0TBPUiOLDa+C+6WCZ
 m3I0FP3MBlf4HUQpME037VJJfPAWDQhLR9F9Kj/gWA==
X-Google-Smtp-Source: APXvYqxFjNGsLoaZWXanwoQsNpAMlsMY20XLb11x/2kdZLwwRghwoGBYiufbVNzDvHDHChGZGZ+z9EalpEtsELhzzQc=
X-Received: by 2002:ac2:5621:: with SMTP id b1mr8992780lff.27.1557294614444;
 Tue, 07 May 2019 22:50:14 -0700 (PDT)
MIME-Version: 1.0
References: <1557139720-12384-1-git-send-email-yash.shah@sifive.com>
 <1557139720-12384-3-git-send-email-yash.shah@sifive.com>
 <d36b7a74-0d08-0143-b479-45f760c347ba@ti.com>
 <CAJ2_jOFZjTNA3Nf=zNwLT+St21Q2_TPx_XYhggU=yef6LPkLdg@mail.gmail.com>
 <ba1481d0-f21b-5b0d-e3d5-ecb9faf42407@ti.com>
In-Reply-To: <ba1481d0-f21b-5b0d-e3d5-ecb9faf42407@ti.com>
From: Yash Shah <yash.shah@sifive.com>
Date: Wed, 8 May 2019 11:19:37 +0530
Message-ID: <CAJ2_jOFPqgFzc_q0kq3GZY2w5KAS6wkbvBx4vZSgLXfAeanR7g@mail.gmail.com>
Subject: Re: [PATCH v3 2/2] RISC-V: sifive_l2_cache: Add L2 cache controller
 driver for SiFive SoCs
To: "Andrew F. Davis" <afd@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_225016_567411_2ED2CC36 
X-CRM114-Status: GOOD (  20.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, aou@eecs.berkeley.edu,
 Palmer Dabbelt <palmer@sifive.com>, linux-kernel@vger.kernel.org,
 Sachin Ghadi <sachin.ghadi@sifive.com>, robh+dt@kernel.org,
 Paul Walmsley <paul.walmsley@sifive.com>, linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, May 7, 2019 at 7:15 PM Andrew F. Davis <afd@ti.com> wrote:
>
> On 5/7/19 2:48 AM, Yash Shah wrote:
> > On Mon, May 6, 2019 at 5:48 PM Andrew F. Davis <afd@ti.com> wrote:
> >>
> >> On 5/6/19 6:48 AM, Yash Shah wrote:
> >>> The driver currently supports only SiFive FU540-C000 platform.
> >>>
> >>> The initial version of L2 cache controller driver includes:
> >>> - Initial configuration reporting at boot up.
> >>> - Support for ECC related functionality.
> >>>
> >>> Signed-off-by: Yash Shah <yash.shah@sifive.com>
> >>> ---
> >>>  arch/riscv/include/asm/sifive_l2_cache.h |  16 +++
> >>>  arch/riscv/mm/Makefile                   |   1 +
> >>>  arch/riscv/mm/sifive_l2_cache.c          | 175 +++++++++++++++++++++++++++++++
> >>>  3 files changed, 192 insertions(+)
> >>>  create mode 100644 arch/riscv/include/asm/sifive_l2_cache.h
> >>>  create mode 100644 arch/riscv/mm/sifive_l2_cache.c
> >>>
> >>> diff --git a/arch/riscv/include/asm/sifive_l2_cache.h b/arch/riscv/include/asm/sifive_l2_cache.h
> >>> new file mode 100644
> >>> index 0000000..04f6748
> >>> --- /dev/null
> >>> +++ b/arch/riscv/include/asm/sifive_l2_cache.h
> >>> @@ -0,0 +1,16 @@
> >>> +/* SPDX-License-Identifier: GPL-2.0 */
> >>> +/*
> >>> + * SiFive L2 Cache Controller header file
> >>> + *
> >>> + */
> >>> +
> >>> +#ifndef _ASM_RISCV_SIFIVE_L2_CACHE_H
> >>> +#define _ASM_RISCV_SIFIVE_L2_CACHE_H
> >>> +
> >>> +extern int register_sifive_l2_error_notifier(struct notifier_block *nb);
> >>> +extern int unregister_sifive_l2_error_notifier(struct notifier_block *nb);
> >>> +
> >>> +#define SIFIVE_L2_ERR_TYPE_CE 0
> >>> +#define SIFIVE_L2_ERR_TYPE_UE 1
> >>> +
> >>> +#endif /* _ASM_RISCV_SIFIVE_L2_CACHE_H */
> >>> diff --git a/arch/riscv/mm/Makefile b/arch/riscv/mm/Makefile
> >>> index eb22ab4..1523ee5 100644
> >>> --- a/arch/riscv/mm/Makefile
> >>> +++ b/arch/riscv/mm/Makefile
> >>> @@ -3,3 +3,4 @@ obj-y += fault.o
> >>>  obj-y += extable.o
> >>>  obj-y += ioremap.o
> >>>  obj-y += cacheflush.o
> >>> +obj-y += sifive_l2_cache.o
> >>> diff --git a/arch/riscv/mm/sifive_l2_cache.c b/arch/riscv/mm/sifive_l2_cache.c
> >>> new file mode 100644
> >>> index 0000000..4eb6461
> >>> --- /dev/null
> >>> +++ b/arch/riscv/mm/sifive_l2_cache.c
> >>> @@ -0,0 +1,175 @@
> >>> +// SPDX-License-Identifier: GPL-2.0
> >>> +/*
> >>> + * SiFive L2 cache controller Driver
> >>> + *
> >>> + * Copyright (C) 2018-2019 SiFive, Inc.
> >>> + *
> >>> + */
> > [...]
> >>> +
> >>> +#ifdef CONFIG_DEBUG_FS
> >>> +static struct dentry *sifive_test;
> >>> +
> >>> +static ssize_t l2_write(struct file *file, const char __user *data,
> >>> +                     size_t count, loff_t *ppos)
> >>> +{
> >>> +     unsigned int val;
> >>> +
> >>> +     if (kstrtouint_from_user(data, count, 0, &val))
> >>> +             return -EINVAL;
> >>> +     if ((val >= 0 && val < 0xFF) || (val >= 0x10000 && val < 0x100FF))
> >>
> >> I'm guessing bit 16 is the enable and the lower 8 are some kind of
> >> region to enable the error? This is probably a bad interface, it looks
> >> useful for testing but doesn't provide any debugging info useful for
> >> running systems. Do you really want userspace to be able to do this?
> >
> > Bit 16 selects the type of ECC error (0=data or 1=directory error).
> > The lower 8 bits toggles (corrupt) that bit index.
> > Are you suggesting to remove this debug interface altogether or you
> > want me to improve the current interface?
> > Something like providing 2 separate debugfs files for data and
> > directory errors. And create a separate 8-bit debugfs variable to
> > select the bit index to toggle.
> >
>
> I was suggesting to remove the whole thing. I don't see it being all
> that useful, but it is up to you.

Thanks for the suggestion, but I will keep it as we do need it for our testing.

- Yash

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
