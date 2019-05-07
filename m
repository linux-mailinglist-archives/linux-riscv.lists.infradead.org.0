Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D273E15DB0
	for <lists+linux-riscv@lfdr.de>; Tue,  7 May 2019 08:49:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d4OUvzwExbzUKZ8Py+4HXBa0jTLCwco2Zinhk+FTFU0=; b=aZpki48jDxsmXM
	X//m90GWP/d1QfLBStFZKlMivwcUEGvduGG2IopABAnQjjNRRZCdNwCqwoskUFOYe09pnJuwYsgJS
	COkBWdqZXwgefQ4swo4U4u7tDuxY9JhFhqrpNtP9k/eb798DGnsuvDXRjit9kbAYUN7OldpBZUXoe
	WYUXYqfErvBpaY3YlZJMfb5wne+q/ckIaHbRixcXPLa6jf+rQpogjUWF7kkbxNi2EQKUSfX+MKPBB
	TFE0k3gu0KDX2U2ccF8y+stUaY1ops1yvTKn/ZBeC7om0Ti5Mg8I5jI0Lwqwjp42YzuVBSypZaLcu
	KXTzOLIpIRXxWpPNCh0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNtuz-0008Ur-Ni; Tue, 07 May 2019 06:49:37 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNtux-0008UE-5s
 for linux-riscv@lists.infradead.org; Tue, 07 May 2019 06:49:36 +0000
Received: by mail-lf1-x141.google.com with SMTP id d8so10934018lfb.8
 for <linux-riscv@lists.infradead.org>; Mon, 06 May 2019 23:49:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=uDWB+PNcjI4q/A/1DW85bUa/9Snq5OItKRPTK4tpNfU=;
 b=mPrbLeI30J/5s8XP70Yj52evlvXJ+8D0wG4lJ7LzE0tziEfVMe35aZD1BE6WI1yyo0
 8+8e6vWuS+J0RC7AoQ6pQEKib60ad9mR1GiKSsQPkmmVxgqC//yQUpRJ67XKmGA6Zz1J
 rNFUfKVDPJ6wVNWUOGOkhXSh1udaWNlpNbtFKypXPZC5HQopgW4AEQ0d3upC3QSlPDMY
 z/dEKgODIODKyWS/Wm0VVsmRhf/9/1HhwwAKOC+5Si7DwyCjo1jcBIDLjaL+jGRCcXBQ
 J9et5jTt1BaIodrKCBBDxDF/Tm/RSpH9ZArW5N9nNu2H8wBKejWnt9Dvq794avLVnJUa
 NAxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=uDWB+PNcjI4q/A/1DW85bUa/9Snq5OItKRPTK4tpNfU=;
 b=G3ywH9m0KlpNJ59tzneIE8Y41VLCAsG4S8anBJbhOWJXbGmWuFrJkHSSTdEIpLoRnr
 HLWtwzIr98yDk0D7OXm/Lpg3uZV/SbbA2rICd/UR/UEOOqxMOKP1xld56DQzvxGFMBdu
 LTbDwAHYUE7VkZsy92w21T1YOvdaIj1RW7maOQfpN5NCQr/YwMCQFmp+Xwlfr13zm0Bk
 lobk2mlUcxF/PvY0Q91yy/2SEq6QujXoalCrXTZsAOYPT2vsaZ8SxsoqVXzGgfZNNQ/h
 BWqY8myYRzgWTTO5vq0JGWhu6M/o329JMh+qY1561/TtSlWq+BaiBoe84QV9Lf/lJReZ
 PI+A==
X-Gm-Message-State: APjAAAV3hif5Eyqay3hS2CmPy/Gzs20gZVqO5u/o4UR2eomJyPC4ui/a
 2WlrQyZ5IkVTBhZTx2BXnDXGUMz5o1Y0Em1v3D+m8u8ZtWTrRhGv8wHxbNWlkS90d0Byum+egpE
 dYSWNpCxO2LgpLMGQyKGS/e1eyykAQVaMM6Yz2Q==
X-Google-Smtp-Source: APXvYqyfjgoxjBepkSXY0LT82aLu+Pj5tiZ6BdCvglYDPWY4vHbpWDaqXOtmKKpb03mlKKnpt8wbeK4r74iaaD2tR5A=
X-Received: by 2002:a19:81d4:: with SMTP id c203mr1957595lfd.160.1557211771188; 
 Mon, 06 May 2019 23:49:31 -0700 (PDT)
MIME-Version: 1.0
References: <1557139720-12384-1-git-send-email-yash.shah@sifive.com>
 <1557139720-12384-3-git-send-email-yash.shah@sifive.com>
 <d36b7a74-0d08-0143-b479-45f760c347ba@ti.com>
In-Reply-To: <d36b7a74-0d08-0143-b479-45f760c347ba@ti.com>
From: Yash Shah <yash.shah@sifive.com>
Date: Tue, 7 May 2019 12:18:54 +0530
Message-ID: <CAJ2_jOFZjTNA3Nf=zNwLT+St21Q2_TPx_XYhggU=yef6LPkLdg@mail.gmail.com>
Subject: Re: [PATCH v3 2/2] RISC-V: sifive_l2_cache: Add L2 cache controller
 driver for SiFive SoCs
To: "Andrew F. Davis" <afd@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_234935_284794_C1DB90E9 
X-CRM114-Status: GOOD (  17.69  )
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, aou@eecs.berkeley.edu,
 Palmer Dabbelt <palmer@sifive.com>, linux-kernel@vger.kernel.org,
 Sachin Ghadi <sachin.ghadi@sifive.com>, robh+dt@kernel.org,
 Paul Walmsley <paul.walmsley@sifive.com>, linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, May 6, 2019 at 5:48 PM Andrew F. Davis <afd@ti.com> wrote:
>
> On 5/6/19 6:48 AM, Yash Shah wrote:
> > The driver currently supports only SiFive FU540-C000 platform.
> >
> > The initial version of L2 cache controller driver includes:
> > - Initial configuration reporting at boot up.
> > - Support for ECC related functionality.
> >
> > Signed-off-by: Yash Shah <yash.shah@sifive.com>
> > ---
> >  arch/riscv/include/asm/sifive_l2_cache.h |  16 +++
> >  arch/riscv/mm/Makefile                   |   1 +
> >  arch/riscv/mm/sifive_l2_cache.c          | 175 +++++++++++++++++++++++++++++++
> >  3 files changed, 192 insertions(+)
> >  create mode 100644 arch/riscv/include/asm/sifive_l2_cache.h
> >  create mode 100644 arch/riscv/mm/sifive_l2_cache.c
> >
> > diff --git a/arch/riscv/include/asm/sifive_l2_cache.h b/arch/riscv/include/asm/sifive_l2_cache.h
> > new file mode 100644
> > index 0000000..04f6748
> > --- /dev/null
> > +++ b/arch/riscv/include/asm/sifive_l2_cache.h
> > @@ -0,0 +1,16 @@
> > +/* SPDX-License-Identifier: GPL-2.0 */
> > +/*
> > + * SiFive L2 Cache Controller header file
> > + *
> > + */
> > +
> > +#ifndef _ASM_RISCV_SIFIVE_L2_CACHE_H
> > +#define _ASM_RISCV_SIFIVE_L2_CACHE_H
> > +
> > +extern int register_sifive_l2_error_notifier(struct notifier_block *nb);
> > +extern int unregister_sifive_l2_error_notifier(struct notifier_block *nb);
> > +
> > +#define SIFIVE_L2_ERR_TYPE_CE 0
> > +#define SIFIVE_L2_ERR_TYPE_UE 1
> > +
> > +#endif /* _ASM_RISCV_SIFIVE_L2_CACHE_H */
> > diff --git a/arch/riscv/mm/Makefile b/arch/riscv/mm/Makefile
> > index eb22ab4..1523ee5 100644
> > --- a/arch/riscv/mm/Makefile
> > +++ b/arch/riscv/mm/Makefile
> > @@ -3,3 +3,4 @@ obj-y += fault.o
> >  obj-y += extable.o
> >  obj-y += ioremap.o
> >  obj-y += cacheflush.o
> > +obj-y += sifive_l2_cache.o
> > diff --git a/arch/riscv/mm/sifive_l2_cache.c b/arch/riscv/mm/sifive_l2_cache.c
> > new file mode 100644
> > index 0000000..4eb6461
> > --- /dev/null
> > +++ b/arch/riscv/mm/sifive_l2_cache.c
> > @@ -0,0 +1,175 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +/*
> > + * SiFive L2 cache controller Driver
> > + *
> > + * Copyright (C) 2018-2019 SiFive, Inc.
> > + *
> > + */
[...]
> > +
> > +#ifdef CONFIG_DEBUG_FS
> > +static struct dentry *sifive_test;
> > +
> > +static ssize_t l2_write(struct file *file, const char __user *data,
> > +                     size_t count, loff_t *ppos)
> > +{
> > +     unsigned int val;
> > +
> > +     if (kstrtouint_from_user(data, count, 0, &val))
> > +             return -EINVAL;
> > +     if ((val >= 0 && val < 0xFF) || (val >= 0x10000 && val < 0x100FF))
>
> I'm guessing bit 16 is the enable and the lower 8 are some kind of
> region to enable the error? This is probably a bad interface, it looks
> useful for testing but doesn't provide any debugging info useful for
> running systems. Do you really want userspace to be able to do this?

Bit 16 selects the type of ECC error (0=data or 1=directory error).
The lower 8 bits toggles (corrupt) that bit index.
Are you suggesting to remove this debug interface altogether or you
want me to improve the current interface?
Something like providing 2 separate debugfs files for data and
directory errors. And create a separate 8-bit debugfs variable to
select the bit index to toggle.

- Yash

>
> Andrew
>

-- 
The information transmitted is intended only for the person or entity to 
which it is addressed and may contain confidential and/or privileged 
material. If you are not the intended recipient of this message please do 
not read, copy, use or disclose this communication and notify the sender 
immediately. It should be noted that any review, retransmission, 
dissemination or other use of, or taking action or reliance upon, this 
information by persons or entities other than the intended recipient is 
prohibited.

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
