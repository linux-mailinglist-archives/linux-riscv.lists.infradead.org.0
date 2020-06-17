Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F6F81FC782
	for <lists+linux-riscv@lfdr.de>; Wed, 17 Jun 2020 09:34:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=fwngVWkjY9fLUGwy3ivvNT4X5Xvq6DSDUdpByq/8Ym4=; b=MzG8cxqDyx/+LbQ7t0oEQjRy/
	LJY0mmIpGBtTLI8Wsjk4+uVxp3m8FwnG0meqS0UhWxY5Msq0qZ/NAZQBCdueXtum7qpx8LjCexYUm
	hcCd1rG9tWQjq0vHwmymqBktCIScqsXiwDxAhwzoGWdVeZHoq3d2WbbyhUCj5mBlGdawuQB6S3foF
	YZ/RoZKuniWsDNCqZ8jOwyTD0qZaAjFVxxP298jU0buFFZZuos9+dRNbYCQgIOAcJhVnUJ/akfnIJ
	907js2y9Ce6MZiIaRBRtEx3LZLkDNaLfZfaxBk6WhGsteyHeAbvtDrPBTdag/MnzTg7H6NHx9k2r3
	tv5REHwiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlSaz-0007Ie-8R; Wed, 17 Jun 2020 07:34:53 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlSav-0007He-F6
 for linux-riscv@lists.infradead.org; Wed, 17 Jun 2020 07:34:51 +0000
Received: by mail-wm1-x344.google.com with SMTP id y20so873443wmi.2
 for <linux-riscv@lists.infradead.org>; Wed, 17 Jun 2020 00:34:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=atishpatra.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=fwngVWkjY9fLUGwy3ivvNT4X5Xvq6DSDUdpByq/8Ym4=;
 b=dbNJ1iHZuhQ+KrxrQ57v93tTtorXC26arOGU1ZaPPFFFaaG0teuhLyDWIXJPGLAjh4
 feWSRbSxsJ4CL+QUgOaEFCJTfL160TYhRjvwn5OZuvuBs824bOd2fF8tsgkFf5XUwWS9
 sSepUeOHSQh/2elEzN8RkF4NAFTgvGfIau9To=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=fwngVWkjY9fLUGwy3ivvNT4X5Xvq6DSDUdpByq/8Ym4=;
 b=rWwaY+0Ovc73pJbVY4jyzv+zT95FfiLAe2Dza9ooogJhML2CQI4+wDHrD6Le6D2l8W
 2WicIfC2ow64RJp3YW1xzf34mqlLN2jhEAdvJooOws+016p8GuDNaosfORruFA0g/5i9
 AcCf1P6dBG/O96qqoLObCOnsjpBYQGhD7g3lr7GcLeXCPLP8iAgfgK2dZhWBePXuoo+b
 cESu/9W17XhOKJfP5UJ5SCZkBJSwfez0R5uC4jBYYPK07ycK6TibnlUjFtlChDJrq1OB
 NVPm2p6jHvXr7Xqy9dAbT485KTuxZ2Sd6o5pmkiPBAlnwH7P3DJygqCuvQnkbB8ftQUE
 ai9A==
X-Gm-Message-State: AOAM533WVtedfGeAWmrIfZY5neYlIep0foEBofwxeP9mvuOiJvyQ6HFr
 pzdKE9HTTXDBk6gxkrM569d8pQfXPDyP2oGXd3g9Ak2Knw==
X-Google-Smtp-Source: ABdhPJyGJa9kRlJPnXVr4b2Z/d3r29W3OQ5lMNq2+wIIXKD0swRKDv0pYf5f0nWusXRDmmDZUj/VlmT89ROLCtNOtPU=
X-Received: by 2002:a1c:2e0e:: with SMTP id u14mr7119944wmu.55.1592379287504; 
 Wed, 17 Jun 2020 00:34:47 -0700 (PDT)
MIME-Version: 1.0
References: <20200616045108.GP75760@lianli.shorne-pla.net>
 <mhng-b86477b3-4134-4023-968e-532ca0b33125@palmerdabbelt-glaptop1>
 <CANN689GkUUfpTn+fkjsC-a=RwGsxVwsg-QXKDnVe6zXLjvuZWA@mail.gmail.com>
 <20200616191943.GA1401039@lianli.shorne-pla.net>
 <CAOnJCUL52Ch3QHikik=DYJYciFE0e8zhrSL-AgaZPensXyZqyg@mail.gmail.com>
 <CANN689Ek3szVSVC4H0NKpkdZes82VW_Xvs4+GLTGCWES7A-ySQ@mail.gmail.com>
 <20200617053539.GB1401039@lianli.shorne-pla.net>
 <20200617060734.GC1401039@lianli.shorne-pla.net>
 <CANN689F=LKGprNx9_Wb5HOvT-Fvv8WUR_T2DJPhy0u2HeT-A7g@mail.gmail.com>
In-Reply-To: <CANN689F=LKGprNx9_Wb5HOvT-Fvv8WUR_T2DJPhy0u2HeT-A7g@mail.gmail.com>
From: Atish Patra <atishp@atishpatra.org>
Date: Wed, 17 Jun 2020 00:34:36 -0700
Message-ID: <CAOnJCUKgZcY2G+3ADZ5aJy4sXb8mhmkDczULQUbPDpra3vLkaw@mail.gmail.com>
Subject: Re: mm lock issue while booting Linux on 5.8-rc1 for RISC-V
To: Michel Lespinasse <walken@google.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_003449_604375_D5F2372C 
X-CRM114-Status: GOOD (  25.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Bjorn Topel <bjorn.topel@gmail.com>, Stafford Horne <shorne@gmail.com>,
 Palmer Dabbelt <palmer@dabbelt.com>,
 linux-riscv <linux-riscv@lists.infradead.org>,
 LKML <linux-kernel@vger.kernel.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, Jun 16, 2020 at 11:30 PM Michel Lespinasse <walken@google.com> wrote:
>
> On Tue, Jun 16, 2020 at 11:07 PM Stafford Horne <shorne@gmail.com> wrote:
> > On Wed, Jun 17, 2020 at 02:35:39PM +0900, Stafford Horne wrote:
> > > On Tue, Jun 16, 2020 at 01:47:24PM -0700, Michel Lespinasse wrote:
> > > > This makes me wonder actually - maybe there is a latent bug that got
> > > > exposed after my change added the rwsem_is_locked assertion to the
> > > > lockdep_assert_held one. If that is the case, it may be helpful to
> > > > bisect when that issue first appeared, by testing before my patchset
> > > > with VM_BUG_ON(!rwsem_is_locked(&walk.mm->mmap_lock)) added to
> > > > walk_page_range() / walk_page_range_novma() / walk_page_vma() ...
> > >
> > > Hello,
> > >
> > > I tried to bisect it, but I think this issue goes much further back.
> > >
> > > Just with the below patch booting fails all the way back to v5.7.
> > >
> > > What does this mean by they way, why would mmap_assert_locked() want to assert
> > > that the rwsem_is_locked() is not true?
>
> It's the opposite - VM_BUG_ON(cond) triggers if cond is true, so in
> other words it asserts that cond is false. Yeah, I agree it is kinda
> confusing. But in our case, it asserts that the rwsem is locked, which
> is what we want.
>
> > The openrisc code that was walking the page ranges was not locking mm. I have
> > added the  below patch to v5.8-rc1 and it seems to work fine.  I will send a
> > better patch in a bit.
> >
> > iff --git a/arch/openrisc/kernel/dma.c b/arch/openrisc/kernel/dma.c
> > index c152a68811dd..bd5f05dd9174 100644
> > --- a/arch/openrisc/kernel/dma.c
> > +++ b/arch/openrisc/kernel/dma.c
> > @@ -74,8 +74,10 @@ void *arch_dma_set_uncached(void *cpu_addr, size_t size)
> >          * We need to iterate through the pages, clearing the dcache for
> >          * them and setting the cache-inhibit bit.
> >          */
> > +       mmap_read_lock(&init_mm);
> >         error = walk_page_range(&init_mm, va, va + size, &set_nocache_walk_ops,
> >                         NULL);
> > +       mmap_read_unlock(&init_mm);
> >         if (error)
> >                 return ERR_PTR(error);
> >         return cpu_addr;
> > @@ -85,9 +87,11 @@ void arch_dma_clear_uncached(void *cpu_addr, size_t size)
> >  {
> >         unsigned long va = (unsigned long)cpu_addr;
> >
> > +       mmap_read_lock(&init_mm);
> >         /* walk_page_range shouldn't be able to fail here */
> >         WARN_ON(walk_page_range(&init_mm, va, va + size,
> >                         &clear_nocache_walk_ops, NULL));
> > +       mmap_read_unlock(&init_mm);
> >  }
>
> Thanks a lot for getting to the bottom of this. I think this is the proper fix.

A similar patch works for RISC-V as well. Thanks for debugging it.
To sum it up, mm should be locked before walk_page_range and
walk_page_range_novma.

Here is a diff that works for RISC-V. I will send the patch soon.

diff --git a/arch/riscv/mm/pageattr.c b/arch/riscv/mm/pageattr.c
index ec2c70f84994..289a9a5ea5b5 100644
--- a/arch/riscv/mm/pageattr.c
+++ b/arch/riscv/mm/pageattr.c
@@ -151,6 +151,7 @@ int set_memory_nx(unsigned long addr, int numpages)

 int set_direct_map_invalid_noflush(struct page *page)
 {
+       int ret;
        unsigned long start = (unsigned long)page_address(page);
        unsigned long end = start + PAGE_SIZE;
        struct pageattr_masks masks = {
@@ -158,11 +159,16 @@ int set_direct_map_invalid_noflush(struct page *page)
                .clear_mask = __pgprot(_PAGE_PRESENT)
        };

-       return walk_page_range(&init_mm, start, end, &pageattr_ops, &masks);
+       mmap_read_lock(&init_mm);
+       ret = walk_page_range(&init_mm, start, end, &pageattr_ops, &masks);
+       mmap_read_unlock(&init_mm);
+
+       return ret;
 }

 int set_direct_map_default_noflush(struct page *page)
 {
+       int ret;
        unsigned long start = (unsigned long)page_address(page);
        unsigned long end = start + PAGE_SIZE;
        struct pageattr_masks masks = {
@@ -170,7 +176,11 @@ int set_direct_map_default_noflush(struct page *page)
                .clear_mask = __pgprot(0)
        };

-       return walk_page_range(&init_mm, start, end, &pageattr_ops, &masks);
+       mmap_read_lock(&init_mm);
+       ret = walk_page_range(&init_mm, start, end, &pageattr_ops, &masks);
+       mmap_read_unlock(&init_mm);
+
+       return ret;
 }



-- 
Regards,
Atish

