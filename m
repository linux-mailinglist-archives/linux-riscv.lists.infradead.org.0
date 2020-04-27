Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ECF21B9714
	for <lists+linux-riscv@lfdr.de>; Mon, 27 Apr 2020 08:15:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=dhqdpIT/nI7OrCIFbmxFa2nUwiLY0olXuy5Q1ukvBdY=; b=tolPH8amVBE+IK5PzoyIsrHIK
	4UCdPMSQlQIgA2V/3I//wDXS4XBAgvTy9sUXj8p29kb4/B0L76Tk/VvUEFC09zv1cS1xQXNpd8yQM
	yERC7xFQ1G4/QyFyp1BkgDLMW2OMplWfxG2FJlABUhRol/J/crmLLqcHfwHE6D/sZuaQ8cltIaiNg
	sqeM7UkH5Js5eoCtfxhwK9GE6SNJel8cI2EyN/gBI3Xa/p38UEGEkVWfvbGWe1bdbgdfoQh1v7FZ5
	Q7qQ6FGIerePSN6qff8Wf9teSGvS5RdJgdJgvOJzGL5i/E8m7nVXInPD5FlG3cTYzQ6sm0gdsXilx
	JkQuyXoBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSx2l-0001sX-W7; Mon, 27 Apr 2020 06:15:04 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSx2h-0001r7-ML
 for linux-riscv@lists.infradead.org; Mon, 27 Apr 2020 06:15:01 +0000
Received: by mail-wr1-x441.google.com with SMTP id b11so19010733wrs.6
 for <linux-riscv@lists.infradead.org>; Sun, 26 Apr 2020 23:14:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=dhqdpIT/nI7OrCIFbmxFa2nUwiLY0olXuy5Q1ukvBdY=;
 b=vzvCugJNC+hHoAWxQA+ClUCK1WtfPPo1gwmAzsplgIEmqpIwD3nCD/mUoa1Fb/ZH8J
 3VuzjO+X/rGOURt4c2/BNmwMp+gqQunCsshdhJzDe/KNsMzkwJNnU4s+Sy/Ju1cQmLT8
 syWb0/6e0H+EierjYdM7bMOhlyJ3AgHY97Jm2xir9YWjTpSzI9qlCDRoCFaZzXGYNFkW
 8T8v5/Hb398/lZLwb2e+5Wi+Q2uUfsiJ3EKt2nwZ60JyW0fmRRZry52jBs6zLpnyUsNR
 y365NKybSn7womZgUvLcWWhbKq5LFMoPoTJ7BBkDr8zkLc7HWMR6CwxLdkhKtmkGr8yL
 vMew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=dhqdpIT/nI7OrCIFbmxFa2nUwiLY0olXuy5Q1ukvBdY=;
 b=fyjGos4GP2HtTKKe1Ro1Zs7LOeqUwokfcapi8nrET5Kbc9cTCrGPVqsn1LaR7D1ssD
 +0kywS6UztrZTYu0jUv9TNs9BgSgpIErM9Sv7LBYbEc7ep3bO1S1AT70AOQFxamCXAY+
 Ua53efEasjmYQXW6DnJO1apyKL4dDOn7mBuBNBntjtqVNfR6QPT2pxGFjyqoeGiKY1Lg
 S+B98iH7vKW8SVNhednkAJ1ep579hV4RxYw8StqHZ5cf+fFwuAhDuCgrW1iaZH+KYxET
 vTJtHPtU7H5JrIKxCi64Gp61Wv7jTvOQr0kpLqc+ELfp2WS5memqpO/ZaSetQnm9wnAi
 M/0Q==
X-Gm-Message-State: AGi0PuaCCUbt6A13V6YPWJOdqoxYUf1q+R1WrcJNI2Fne0NnnhhF+3IX
 j82SNfmIsg9+uByH4jiVlhLaUsm8ZGIHU9HNQgHBXn/D6ery4g==
X-Google-Smtp-Source: APiQypJSiJ+/YlTNpTEKiY/OXpOmnrY4lLtEgap8Jeo9JGNRC6DhhDJkAO3q5LA9Dh3Q92u7fMBwwbYvdgDbw7C+QMY=
X-Received: by 2002:a5d:4b04:: with SMTP id v4mr26980425wrq.358.1587968097137; 
 Sun, 26 Apr 2020 23:14:57 -0700 (PDT)
MIME-Version: 1.0
References: <1587630565-29325-1-git-send-email-vincent.chen@sifive.com>
 <CAAhSdy28HOHvkCwF0kpBxMVM7b_zF4FoOo9PpH1+Cxc2eZUSjA@mail.gmail.com>
 <CABvJ_xjFrYeZYupBzqtsr1jF80=H=6R+HZWOc+NBdNo3BuBB8w@mail.gmail.com>
In-Reply-To: <CABvJ_xjFrYeZYupBzqtsr1jF80=H=6R+HZWOc+NBdNo3BuBB8w@mail.gmail.com>
From: Anup Patel <anup@brainfault.org>
Date: Mon, 27 Apr 2020 11:44:45 +0530
Message-ID: <CAAhSdy3iVrmW2_2+aJYBgJ7C-QjS2+H+uvh3i91W981MSAcYNA@mail.gmail.com>
Subject: Re: [PATCH] riscv: set max_pfn to the PFN of the last page
To: Vincent Chen <vincent.chen@sifive.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200426_231459_798576_2F1EF5BD 
X-CRM114-Status: GOOD (  18.36  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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

On Mon, Apr 27, 2020 at 11:07 AM Vincent Chen <vincent.chen@sifive.com> wrote:
>
> On Thu, Apr 23, 2020 at 4:33 PM Anup Patel <anup@brainfault.org> wrote:
> >
> > On Thu, Apr 23, 2020 at 1:59 PM Vincent Chen <vincent.chen@sifive.com> wrote:
> > >
> > > The current max_pfn equals to zero. In this case, I found it caused users
> > > cannot get some page information through /proc such as kpagecount in v5.6
> > > kernel because of new sanity checks. The following message is displayed by
> > > stress-ng test suite with the command "stress-ng --verbose --physpage 1 -t
> > > 1" on HiFive unleashed board.
> > >
> > >  # stress-ng --verbose --physpage 1 -t 1
> > >  stress-ng: debug: [109] 4 processors online, 4 processors configured
> > >  stress-ng: info: [109] dispatching hogs: 1 physpage
> > >  stress-ng: debug: [109] cache allocate: reducing cache level from L3 (too high) to L0
> > >  stress-ng: debug: [109] get_cpu_cache: invalid cache_level: 0
> > >  stress-ng: info: [109] cache allocate: using built-in defaults as no suitable cache found
> > >  stress-ng: debug: [109] cache allocate: default cache size: 2048K
> > >  stress-ng: debug: [109] starting stressors
> > >  stress-ng: debug: [109] 1 stressor spawned
> > >  stress-ng: debug: [110] stress-ng-physpage: started [110] (instance 0)
> > >  stress-ng: error: [110] stress-ng-physpage: cannot read page count for address 0x3fd34de000 in /proc/kpagecount, errno=0 (Success)
> > >  stress-ng: error: [110] stress-ng-physpage: cannot read page count for address 0x3fd32db078 in /proc/kpagecount, errno=0 (Success)
> > >  ...
> > >  stress-ng: error: [110] stress-ng-physpage: cannot read page count for address 0x3fd32db078 in /proc/kpagecount, errno=0 (Success)
> > >  stress-ng: debug: [110] stress-ng-physpage: exited [110] (instance 0)
> > >  stress-ng: debug: [109] process [110] terminated
> > >  stress-ng: info: [109] successful run completed in 1.00s
> > >  #
> > >
> > > After applying this patch, the kernel can pass the test.
> > >
> > >  # stress-ng --verbose --physpage 1 -t 1
> > >  stress-ng: debug: [104] 4 processors online, 4 processors configured stress-ng: info: [104] dispatching hogs: 1 physpage
> > >  stress-ng: info: [104] cache allocate: using defaults, can't determine cache details from sysfs
> > >  stress-ng: debug: [104] cache allocate: default cache size: 2048K
> > >  stress-ng: debug: [104] starting stressors
> > >  stress-ng: debug: [104] 1 stressor spawned
> > >  stress-ng: debug: [105] stress-ng-physpage: started [105] (instance 0) stress-ng: debug: [105] stress-ng-physpage: exited [105] (instance 0) stress-ng: debug: [104] process [105] terminated
> > >  stress-ng: info: [104] successful run completed in 1.01s
> > >  #
> > >
> > > Signed-off-by: Vincent Chen <vincent.chen@sifive.com>
> > > ---
> > >  arch/riscv/mm/init.c | 3 ++-
> > >  1 file changed, 2 insertions(+), 1 deletion(-)
> > >
> > > diff --git a/arch/riscv/mm/init.c b/arch/riscv/mm/init.c
> > > index fab855963c73..157924baa191 100644
> > > --- a/arch/riscv/mm/init.c
> > > +++ b/arch/riscv/mm/init.c
> > > @@ -149,7 +149,8 @@ void __init setup_bootmem(void)
> > >         memblock_reserve(vmlinux_start, vmlinux_end - vmlinux_start);
> > >
> > >         set_max_mapnr(PFN_DOWN(mem_size));
> > > -       max_low_pfn = PFN_DOWN(memblock_end_of_DRAM());
> > > +       max_pfn = PFN_DOWN(memblock_end_of_DRAM());
> > > +       max_low_pfn = max_pfn;
> > >
> > >  #ifdef CONFIG_BLK_DEV_INITRD
> > >         setup_initrd();
> > > --
> > > 2.7.4
> > >
> > >
> >
> > Looks good to me.
> >
> > Reviewed-by: Anup Patel <anup@brainfault.ort>
> >
> > If possible add "Fixes:" line and also Cc stable kernel.
> >
>
> OK, I will add  "Fixes:" line and Cc stable kernel in my next version patch.
> Thanks for your feedback.

There is a typo in the reviewed-by email address above
hence here is the corrected reviewed-by:

Reviewed-by: Anup Patel <anup@brainfault.org>

Thanks,
Anup

