Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23891156376
	for <lists+linux-riscv@lfdr.de>; Sat,  8 Feb 2020 09:45:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=oZha96z8rVZYcs0zGmqsrfRmZlzEIuB6POHU7WyI7S4=; b=nMXYfErXT4B82nRiX7hSpukOu
	0OMGc82GmgnTii4hpSxQV+Y3t9Pd6rKM6lsQFkazCCZsfx6MavCKc9cIhzc/oR+wiy//kUppLgfEK
	fa0eMPqcAO8qrBJu5stWODLopW7IrX407UUW9nTMPSvc0K9AYlfkn5xVnAIFsMFp+WmCyFRKrpxrR
	F9ErtNqqSJybW38IsTwZDVrTV480LvcCpetlr/mEnUaVRi9+uu0UblBRgoyOquogo+PC0V4rv7WFw
	7lapknAr8vVOfaCCa/yVhrUFrd+FAJ2veiwjm6BzlHNYoY6lwwtMERX9t2y7fkWzO3BxXGdw+E3Se
	LceySFLUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j0LkJ-0003nT-3W; Sat, 08 Feb 2020 08:45:47 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j0LkF-0003nC-4r
 for linux-riscv@lists.infradead.org; Sat, 08 Feb 2020 08:45:44 +0000
Received: by mail-ot1-x342.google.com with SMTP id a15so1683323otf.1
 for <linux-riscv@lists.infradead.org>; Sat, 08 Feb 2020 00:45:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=oZha96z8rVZYcs0zGmqsrfRmZlzEIuB6POHU7WyI7S4=;
 b=G7nrdJE6FtBvLr6+YX8u9gLnfBDZl43Dw4UCC2yoCEXsnNq8jSpiIqXXSkhaZfI80O
 NN3Vk5npf5exsHXERGjNkdbJhIFkBPB+12fNE1aQECI83CDM75dJz87HvOxCuM9hKaUp
 7jFyxpZP5N8hbOAWV151nuuLtXUBIiTSxljT8qOHRMgi/1V5hMpd0rYt6RTKIKNMsxUq
 QMaDhRnqzf7VGYk/W+OxtcB6Lqtz+Wgw0MCtMudLDejPaCO3oujwU8QarjWGeC22lLTu
 cdj93ZhhMS5mG4o6e8DS4DYkeiDRoDDmMj+GM0CIpM6l7Up4pnOSyLe+k2WcThOehYqe
 HOag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=oZha96z8rVZYcs0zGmqsrfRmZlzEIuB6POHU7WyI7S4=;
 b=BK1bDyLc7XYCAEzpp/hWwq1ujUgiWV3TqcVdp0JGWtdKpjGPOMJ66QmIJ5Up6qiBnT
 7a7D1wppgMf9pnmTTfZORtA/9tsQymAHw00OCxHbdwb9uN5Q+EFN3wkhY1nAtvyzeEkt
 Y5zHuhHu//4gA+v75NkSoRy0Qpy8WhpEKMUQLduwR4Yc0Ir2njqxxqpnuBGHs9mIKjeT
 Qy8RNIWsgiQL93Aqw4yN+fkSrzwzTWQPTHZb1JDP+RpQksLtxY0UujZlu6ZdR5o46NE4
 FZxRW2Ii6BEGCKSXSMsnaldtyxBvWcSV1ACDbKynUWMZeYrdGtBLshifgCAZZDnc52XO
 j6jA==
X-Gm-Message-State: APjAAAUayGJl4U26tqHCK8nFCRRzbnxNOO090C+7wgtDTLljf7CVnlGr
 iG5P+KBWWPZa848mddCHkNrlvmMQZKRz6ZQ8RHKAXQ==
X-Google-Smtp-Source: APXvYqwKhYsYYhRzCKcD5JvleEI6T6o2CrjigAudHhTKmYDvSJzrDB4PTtY5fdJjWkvcwOSqzTKAacQKWSfYZ7D69wk=
X-Received: by 2002:a05:6830:139a:: with SMTP id
 d26mr2785149otq.75.1581151541959; 
 Sat, 08 Feb 2020 00:45:41 -0800 (PST)
MIME-Version: 1.0
References: <20200207095245.21955-1-zong.li@sifive.com>
 <20200207095245.21955-3-zong.li@sifive.com>
 <fdcfd8548707e2d6c61fc9739bc91c6720673c81.camel@perches.com>
In-Reply-To: <fdcfd8548707e2d6c61fc9739bc91c6720673c81.camel@perches.com>
From: Zong Li <zong.li@sifive.com>
Date: Sat, 8 Feb 2020 16:45:31 +0800
Message-ID: <CANXhq0qL6oSsHOr+eFOYhBSAXPP5k=k0mwxEdHMGfUV9CSBHkA@mail.gmail.com>
Subject: Re: [PATCH 2/2] riscv: adjust the indent
To: Joe Perches <joe@perches.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200208_004543_246453_6180B73F 
X-CRM114-Status: UNSURE (   8.00  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-riscv <linux-riscv@lists.infradead.org>,
 Albert Ou <aou@eecs.berkeley.edu>, Palmer Dabbelt <palmer@dabbelt.com>,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 Paul Walmsley <paul.walmsley@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, Feb 7, 2020 at 6:59 PM Joe Perches <joe@perches.com> wrote:
>
> On Fri, 2020-02-07 at 17:52 +0800, Zong Li wrote:
> > Adjust the indent to match Linux coding style.
>
> trivia:
>
> > diff --git a/arch/riscv/mm/kasan_init.c b/arch/riscv/mm/kasan_init.c
> []
> > @@ -86,7 +89,8 @@ void __init kasan_init(void)
> >       unsigned long i;
> >
> >       kasan_populate_early_shadow((void *)KASAN_SHADOW_START,
> > -                     (void *)kasan_mem_to_shadow((void *)VMALLOC_END));
> > +                                 (void *)kasan_mem_to_shadow((void *)
> > +                                                             VMALLOC_END));
>
> could also remove an unnecessary (void *) as kasan_mem_to_shadow
> returns a void *
>
>         kasan_populate_early_shadow((void *)KASAN_SHADOW_START,
>                                     kasan_mem_to_shadow((void *)VMALLOC_END));
>

OK, I'll remove it in next version. Thanks.

