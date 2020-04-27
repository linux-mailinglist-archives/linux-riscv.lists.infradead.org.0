Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F0E21B969B
	for <lists+linux-riscv@lfdr.de>; Mon, 27 Apr 2020 07:37:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=9fsT8D4fADzsLSQPJxZ3I1wbQRWKxvav30/wxkwiW7o=; b=ZchZF5d7egt8GZQMka6GY/C0v
	utHWPfUpXAKMWhh2n9XsldE1MnHhGiIx4cYM3c8BYnqoixfeiglu5BpG61yC4WrZx1g7ofzLEwGJ5
	IUJldZESHWyfY0GqmRoFHY6AdGpdVdHXUdG1DFLk4jYhpt6WmQqK9jJWLBKk45+KmpRBL+aFUe1Kf
	fIhIOU8DQEer+M03W1POdKAq9UWyy/cuO57HIhLAkWMuH3l8i6mS6O0kRaMxfLnp7nR5ao5wxr6Kf
	/oqAJaOwZigc38l8Znxph/e1Z3BhuqTFIxXk3vAngBXYnseZ45o7LOC4u5nrjSLTqmuaSkO6qWrZf
	YLrK89acw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSwSI-0002iX-7h; Mon, 27 Apr 2020 05:37:22 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSwSD-0002hD-PQ
 for linux-riscv@lists.infradead.org; Mon, 27 Apr 2020 05:37:19 +0000
Received: by mail-qt1-x841.google.com with SMTP id z90so13315495qtd.10
 for <linux-riscv@lists.infradead.org>; Sun, 26 Apr 2020 22:37:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=9fsT8D4fADzsLSQPJxZ3I1wbQRWKxvav30/wxkwiW7o=;
 b=btHWMs8TA2AJaijPuImUCw3Mycvm/tkzRwf8muJUmWBtHNE+1GI933H+c1M0l1oTvd
 BrRWNNQ7VonBXioPYohDGHo2m1HO5xlAnMMuNGenYNKptCthzs7wUPYQ48yaTEZcFMeB
 ddtoWc0RUeudRtam12Z3U0KqxXwkuACY9+hEygql8OVCvzhlerDKqV26u7Go8GJhMm6C
 AwnnacsiuajS0InddPikGUAI+64gJykJha8Mvbnwb2xPoi302+lLkjptWSlVzRmCQjWt
 lOjoJpjci1VjlU5+8ZVOSe6AmCufCbpCrCIS1saUeSW1abD3FvYR7JkyT3m7Eub8aVk1
 OCCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=9fsT8D4fADzsLSQPJxZ3I1wbQRWKxvav30/wxkwiW7o=;
 b=O4joU7B6Qa7oNM/6IbSV+diKEJBaGXk0sJ/Qs9s1j8rwOMvFE0UUAMzWbXyg/9qW3N
 xfqp8tO44idpQ9TsMsIiZ9lJpI+wLiibmDqB9lHDC/VzkNFXGtbSJYqfKKPmilERuAbs
 u9rY7NyzwRAgKMq+h2yLgPEGHKwzWUHG4aa53RjmeiN+nVlNO5l51OzInsvYDXKRToYP
 KaILQcrFJZrQmep+PZpPJabkmLP2c8I29yRdryuRTNEOnJOVPVHwtjsyVor9ASov+u7T
 IJRQzENWYm42hRx0UZSYVIDYy+EaUK4il/MxPs9j8vqPpsnCRlnAa0bIErVeVXS236VA
 Fr4g==
X-Gm-Message-State: AGi0Pub4fmgi92HMXRjMMn4xTdGXTCAqwEpI0fsJT33kraKXRcgL19bD
 TKyAY4DEjF/wifur1+VYztxj8RSGHI4Fyg3X2THQ0Q==
X-Google-Smtp-Source: APiQypIjFeL7Fu3QQCTSNsjlYEOz+WVwC90KZNZuFGT/eOxl1qZ0vstc4EJP/d5FP4Ratvx6S2oM4LClvRT2m1ur/aI=
X-Received: by 2002:ac8:4b45:: with SMTP id e5mr13281074qts.86.1587965835888; 
 Sun, 26 Apr 2020 22:37:15 -0700 (PDT)
MIME-Version: 1.0
References: <1587630565-29325-1-git-send-email-vincent.chen@sifive.com>
 <CAAhSdy28HOHvkCwF0kpBxMVM7b_zF4FoOo9PpH1+Cxc2eZUSjA@mail.gmail.com>
In-Reply-To: <CAAhSdy28HOHvkCwF0kpBxMVM7b_zF4FoOo9PpH1+Cxc2eZUSjA@mail.gmail.com>
From: Vincent Chen <vincent.chen@sifive.com>
Date: Mon, 27 Apr 2020 13:37:04 +0800
Message-ID: <CABvJ_xjFrYeZYupBzqtsr1jF80=H=6R+HZWOc+NBdNo3BuBB8w@mail.gmail.com>
Subject: Re: [PATCH] riscv: set max_pfn to the PFN of the last page
To: Anup Patel <anup@brainfault.org>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200426_223718_344547_528C401C 
X-CRM114-Status: GOOD (  16.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley <paul.walmsley@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, Apr 23, 2020 at 4:33 PM Anup Patel <anup@brainfault.org> wrote:
>
> On Thu, Apr 23, 2020 at 1:59 PM Vincent Chen <vincent.chen@sifive.com> wrote:
> >
> > The current max_pfn equals to zero. In this case, I found it caused users
> > cannot get some page information through /proc such as kpagecount in v5.6
> > kernel because of new sanity checks. The following message is displayed by
> > stress-ng test suite with the command "stress-ng --verbose --physpage 1 -t
> > 1" on HiFive unleashed board.
> >
> >  # stress-ng --verbose --physpage 1 -t 1
> >  stress-ng: debug: [109] 4 processors online, 4 processors configured
> >  stress-ng: info: [109] dispatching hogs: 1 physpage
> >  stress-ng: debug: [109] cache allocate: reducing cache level from L3 (too high) to L0
> >  stress-ng: debug: [109] get_cpu_cache: invalid cache_level: 0
> >  stress-ng: info: [109] cache allocate: using built-in defaults as no suitable cache found
> >  stress-ng: debug: [109] cache allocate: default cache size: 2048K
> >  stress-ng: debug: [109] starting stressors
> >  stress-ng: debug: [109] 1 stressor spawned
> >  stress-ng: debug: [110] stress-ng-physpage: started [110] (instance 0)
> >  stress-ng: error: [110] stress-ng-physpage: cannot read page count for address 0x3fd34de000 in /proc/kpagecount, errno=0 (Success)
> >  stress-ng: error: [110] stress-ng-physpage: cannot read page count for address 0x3fd32db078 in /proc/kpagecount, errno=0 (Success)
> >  ...
> >  stress-ng: error: [110] stress-ng-physpage: cannot read page count for address 0x3fd32db078 in /proc/kpagecount, errno=0 (Success)
> >  stress-ng: debug: [110] stress-ng-physpage: exited [110] (instance 0)
> >  stress-ng: debug: [109] process [110] terminated
> >  stress-ng: info: [109] successful run completed in 1.00s
> >  #
> >
> > After applying this patch, the kernel can pass the test.
> >
> >  # stress-ng --verbose --physpage 1 -t 1
> >  stress-ng: debug: [104] 4 processors online, 4 processors configured stress-ng: info: [104] dispatching hogs: 1 physpage
> >  stress-ng: info: [104] cache allocate: using defaults, can't determine cache details from sysfs
> >  stress-ng: debug: [104] cache allocate: default cache size: 2048K
> >  stress-ng: debug: [104] starting stressors
> >  stress-ng: debug: [104] 1 stressor spawned
> >  stress-ng: debug: [105] stress-ng-physpage: started [105] (instance 0) stress-ng: debug: [105] stress-ng-physpage: exited [105] (instance 0) stress-ng: debug: [104] process [105] terminated
> >  stress-ng: info: [104] successful run completed in 1.01s
> >  #
> >
> > Signed-off-by: Vincent Chen <vincent.chen@sifive.com>
> > ---
> >  arch/riscv/mm/init.c | 3 ++-
> >  1 file changed, 2 insertions(+), 1 deletion(-)
> >
> > diff --git a/arch/riscv/mm/init.c b/arch/riscv/mm/init.c
> > index fab855963c73..157924baa191 100644
> > --- a/arch/riscv/mm/init.c
> > +++ b/arch/riscv/mm/init.c
> > @@ -149,7 +149,8 @@ void __init setup_bootmem(void)
> >         memblock_reserve(vmlinux_start, vmlinux_end - vmlinux_start);
> >
> >         set_max_mapnr(PFN_DOWN(mem_size));
> > -       max_low_pfn = PFN_DOWN(memblock_end_of_DRAM());
> > +       max_pfn = PFN_DOWN(memblock_end_of_DRAM());
> > +       max_low_pfn = max_pfn;
> >
> >  #ifdef CONFIG_BLK_DEV_INITRD
> >         setup_initrd();
> > --
> > 2.7.4
> >
> >
>
> Looks good to me.
>
> Reviewed-by: Anup Patel <anup@brainfault.ort>
>
> If possible add "Fixes:" line and also Cc stable kernel.
>

OK, I will add  "Fixes:" line and Cc stable kernel in my next version patch.
Thanks for your feedback.

