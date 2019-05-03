Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20E2912C45
	for <lists+linux-riscv@lfdr.de>; Fri,  3 May 2019 13:23:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rHvUKnwPKPsrPZOlIZ6dlD9jod65Uo7glsHPjRhEVnU=; b=jUOBPWNTXagHgM
	jIKYGQ6fm4J8fVTuZJNV42qBn0VBeGpbRtvFX1XdrousR50ESBxRXbcYWSWPSg9vAU1e8wcciI8r1
	T3Ys6E+TKUzDz3mqOxkGQKeF5cWnF0XvqO4FBV/eJMY5568e9tlE/DoiB9Lj0vhVrfYWljvX7Bu/5
	Bw7HlRQ12DW45VfSJve+pw8zswW9WL4wWMq1acI6HrkLUOwJYsXrn3wYzRFFbsiK8zbI8aL464zWZ
	Wo1Us4mphEXLtaAg+j49jyyo6NBItNBJj7ZAZ0dapGgSnUzHm5P2UhQ3Z2bZ3HB0zUbjKQ/w7Itn/
	hqJ4papYnyGtr1KEc6Vg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMWHr-0007Sh-AE; Fri, 03 May 2019 11:23:31 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMWHn-0007RS-8a
 for linux-riscv@lists.infradead.org; Fri, 03 May 2019 11:23:28 +0000
Received: by mail-lf1-x141.google.com with SMTP id o16so4147638lfl.7
 for <linux-riscv@lists.infradead.org>; Fri, 03 May 2019 04:23:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=FcmHPfvEkgCRhs8MwoURUl12UTs7GZp3rUDQq2z45EE=;
 b=aXCH1J6xY+/I0fRBC5l2TkylR8ncaSqF0iH9iRdZifa30uW4FbL+VAmirt/NHu6BQq
 d527HighZnr4tXz0jSTC3xXYTXIB6vN0ud+aUEW1qqrVJqLzUgYMqaL4/uJdMBZggtKw
 4sdy6zGXHwMMGB1hA7qBBtJUeo7AfS8X8g/hg+L2RpKPHRMfehAoUYU0BbRd6usYRO9A
 fqKrjy//b+ku/HRJc2ZWXQSCmc6QEpl89ATotIsRO7rUK+V8fuH5f4n76TcLPkJL/lcW
 igcFDxUCnBLDYfE0uTd2ZJ2q0ZEnpUvSvQw9Q+syZhIjM4NQQ8/avuy7eKts80CRI9Ni
 M5ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=FcmHPfvEkgCRhs8MwoURUl12UTs7GZp3rUDQq2z45EE=;
 b=ooNGbRL5Sz5r28uofThvEqYOqzjEhK0w/Ifbqzyl5PNxMM6iTYDOtlNHNHWssytMVz
 +Z+JC3LI3aVLE/nnSzmcLpei260vd1re4XEamto8MghFD7SnhVxYHFhuOH/K8w9zwnaH
 zh3+6Sfz5gKOrRDFfDnCkWAYfBqK29yxOjvfpdqyVlCGWzCZxbW/lRkqFZcWSyHjG1eP
 2y0bEc6AokRP9kAwVDR/IgFYhComwizxJ0/u4pOXznE0NpmY8DilwHzhY1L3man0ubKy
 tnd5LLoxa1KJO76A5mTcN+JFle4usXHaH23ue8Wu7BV4anFXaIQKvp7QD3UD81VX0CV5
 dfew==
X-Gm-Message-State: APjAAAWmrk2FNChAw/Q27lZl4ymhvtpL/8iRr4JqNmbwq1nMh3y/sEob
 LqAbjqx98scEf4e5giJXgNBlTojWX83XCz54BQloTg==
X-Google-Smtp-Source: APXvYqyXKDOaZl5gMrFAmM7l9HtHHujY7b3HVhWKSjCAqLiTX2MO5kn5v/977JIG5Y2u0JLrhJzi0ShM6hTwtf55OsY=
X-Received: by 2002:a19:f001:: with SMTP id p1mr5110685lfc.27.1556882603201;
 Fri, 03 May 2019 04:23:23 -0700 (PDT)
MIME-Version: 1.0
References: <1556793293-21019-1-git-send-email-yash.shah@sifive.com>
 <1556793293-21019-3-git-send-email-yash.shah@sifive.com>
 <a92e356d-aadc-2c4f-8b23-3d732e7aa58a@ti.com>
In-Reply-To: <a92e356d-aadc-2c4f-8b23-3d732e7aa58a@ti.com>
From: Yash Shah <yash.shah@sifive.com>
Date: Fri, 3 May 2019 16:52:46 +0530
Message-ID: <CAJ2_jOEBDyG_7THdbGzny3gAmijGSQGV7eUO8MBwQaTgqKdN5g@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] RISC-V: sifive_l2_cache: Add L2 cache controller
 driver for SiFive SoCs
To: "Andrew F. Davis" <afd@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_042327_321620_E7234748 
X-CRM114-Status: GOOD (  15.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

On Thu, May 2, 2019 at 7:07 PM Andrew F. Davis <afd@ti.com> wrote:
>
> On 5/2/19 6:34 AM, Yash Shah wrote:
> > The driver currently supports only SiFive FU540-C000 platform.
> >
> > The initial version of L2 cache controller driver includes:
> > - Initial configuration reporting at boot up.
> > - Support for ECC related functionality.
> >
> > Signed-off-by: Yash Shah <yash.shah@sifive.com>
> > ---
> >  arch/riscv/mm/Makefile          |   1 +
> >  arch/riscv/mm/sifive_l2_cache.c | 221 ++++++++++++++++++++++++++++++++++++++++
> >  2 files changed, 222 insertions(+)
> >  create mode 100644 arch/riscv/mm/sifive_l2_cache.c
> >
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
> > index 0000000..923ab34
> > --- /dev/null
> > +++ b/arch/riscv/mm/sifive_l2_cache.c
> > @@ -0,0 +1,221 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +/*
> > + * SiFive L2 cache controller Driver
> > + *
> > + * Copyright (C) 2018-2019 SiFive, Inc.
> > + *
> > + */

...

> > +static unsigned int l2_datfail_count(void)
> > +{
> > +     return readl(l2_base + SIFIVE_L2_DATECCFAIL_COUNT);
> > +}
>
> Do you really need all these single line functions? Below in several
> spots you use the readl directly, just do that everywhere.

Ok. Will remove these single line functions.
Thanks for your comments.

- Yash

>
> Andrew
>

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
