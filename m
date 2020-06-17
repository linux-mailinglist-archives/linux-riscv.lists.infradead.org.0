Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72FBC1FD010
	for <lists+linux-riscv@lfdr.de>; Wed, 17 Jun 2020 16:55:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Mime-Version:References:In-Reply-To:
	Message-Id:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zLLUmlyTKSTLeIzbnEVYcyI9aqGQgYeahKiS4bWPe4c=; b=H2/wTWwLrFm9W2
	N5MFtLK+NT1pNJicIOZAQB/AEpK4r5eS5NTgAst1P7kyzwI8gZN5jl7eSy9PmWvYkvyhDPOyWISuq
	0ANqvot07yAvHLENjtXWRdudJEovkt8XygDsey4iX0lz/60tmSs5x0LqnVy4Rxj0kq35IuaR4STx9
	x07HqAFBQWVEC6Lu8XeN+MklTymlv8YRnbqX/iGl6pHHCpPD5ngsGDQlyR4fFFHddxW3fPF6YhEbL
	yV1PlLHXQjF5Su1K+VKuZ3Px5NcmvHibfS5cbXmgbd4Y8h36NJKSR/tswdez0vEhu1ZQhGEQp2+w0
	LR8nJNahM9v9mDvAGJfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlZSn-0008CX-D3; Wed, 17 Jun 2020 14:54:53 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlZSj-0008Bx-H5
 for linux-riscv@lists.infradead.org; Wed, 17 Jun 2020 14:54:51 +0000
Received: from devnote2 (NE2965lan1.rev.em-net.ne.jp [210.141.244.193])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 539C2207DD;
 Wed, 17 Jun 2020 14:54:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592405687;
 bh=/a69YBWKDWsHkCerchS4MV/WRJ5P9hqgJqfrFMs9G4U=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=QeE3ZVzWvr+14At5pOwiTvaeGig7C/HXM4OnDfWgr6cEtywr6ZeXNtKQ3iJ0K4CCT
 xjWqqiRhyDwBPxmTVFQDe3KhL6wh2HODC1ix9pOYVCTS8vHS4o2zxX05ewi4nDKrIw
 7Svq1tW6FzaFXeS0J56ept2BSEGoSQRz16RMfXoQ=
Date: Wed, 17 Jun 2020 23:54:43 +0900
From: Masami Hiramatsu <mhiramat@kernel.org>
To: Guo Ren <guoren@kernel.org>
Subject: Re: [RFC/RFT 2/2] RISC-V: kprobes/kretprobe support
Message-Id: <20200617235443.4110b4ef31150722dda7973a@kernel.org>
In-Reply-To: <CAJF2gTTcj=bfK-KvE9U5EsLX0wFPEOw+PvZuTLN_rT5u_a5X1g@mail.gmail.com>
References: <20181113195804.22825-1-me@packi.ch>
 <20181113195804.22825-3-me@packi.ch>
 <20181114003730.06f810517a270070734df4ce@kernel.org>
 <a6abc4ce-4398-5ca6-992b-efb31e01c5ca@packi.ch>
 <20181115004141.5ed772834fc6bdf3467f244e@kernel.org>
 <CANXhq0qWwKRrz80Q3LSeQu-cH19otCF1my6dDGDxH0Q5j1RYYw@mail.gmail.com>
 <9cdd84b5-6c81-9bfa-5d35-6645f542f71e@packi.ch>
 <CANXhq0peZCWZsh37zZVzoi7spSzTfz7v4H5AytiAENKJdWK_tA@mail.gmail.com>
 <CANXhq0r5+BjsJ8jFtkWcm_1qPPQnLyZ5THNdPsxU568FNNa0XA@mail.gmail.com>
 <CAEn-LTrm6__-v7FmCRtNq2zm8up7O18wNhZmBmGwASj-Oy87qA@mail.gmail.com>
 <CAJF2gTTcj=bfK-KvE9U5EsLX0wFPEOw+PvZuTLN_rT5u_a5X1g@mail.gmail.com>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_075449_607849_9269C300 
X-CRM114-Status: GOOD (  29.19  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Patrick =?UTF-8?B?U3TDpGhsaW4=?= <me@packi.ch>,
 Albert Ou <aou@eecs.berkeley.edu>, Anders Roxell <anders.roxell@linaro.org>,
 David Abdurachmanov <david.abdurachmanov@gmail.com>,
 Masami Hiramatsu <mhiramat@kernel.org>, Zong Li <zong.li@sifive.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Greentime Hu <greentime.hu@sifive.com>,
 linux-riscv <linux-riscv@lists.infradead.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi Guo and Patrick,

On Wed, 17 Jun 2020 20:58:32 +0800
Guo Ren <guoren@kernel.org> wrote:

> Hi Patrick,
> 
> I'm the author of csky's kprobe & uprobe, please ref to kprobe [1], uprobe [2]
> 
> 1: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/arch/csky?h=v5.8-rc1&id=33e53ae1ce413a081254e686d9b27cc1b3585e2f
> 2: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/arch/csky?h=v5.8-rc1&id=8f6bb793b2be82f1f73bfb416486f156f70b4314

Thanks for the porting!

> 
> May I continue your patches to finish the work? I'll keep the primary
> author's name of you with the patches which you've done.
> 
> Most of the instructions' emulation codes will be deprecated, but the
> rest is ok. Maybe you should finish executing out of the slot first
> and then implement pc-related instructions' emulation.

I can review the patch if you update it. Anyway, my major concern was the
self-modifying code, others are minor points. 

Thank you,

> 
> On Fri, Jun 12, 2020 at 1:58 PM David Abdurachmanov
> <david.abdurachmanov@gmail.com> wrote:
> >
> > On Tue, Mar 31, 2020 at 5:45 AM Zong Li <zong.li@sifive.com> wrote:
> > >
> > > On Thu, Dec 19, 2019 at 5:28 PM Zong Li <zong.li@sifive.com> wrote:
> > > >
> > > > On Wed, Dec 18, 2019 at 9:10 PM Patrick Stählin <me@packi.ch> wrote:
> > > > >
> > > > > Hi all
> > > > >
> > > > > On 18.12.19 10:14, Zong Li wrote:
> > > > > > On Wed, Dec 18, 2019 at 5:09 PM Zong Li <zong.li@sifive.com> wrote:
> > > > > >>
> > > > > >> From: mhiramat@kernel.org (Masami Hiramatsu)
> > > > > >>
> > > > > >> On Wed, 14 Nov 2018 21:52:57 +0100
> > > > > >> Patrick Staehlin <me@packi.ch> wrote:
> > > > > >>
> > > > > >>> Yeah, I think it's simpler.
> > > > > >>>
> > > > > >>> And I found that the kprobe_breakpoint_handler() was called without
> > > > > >>> checking !user_mode(regs). In that case, you should add the check in
> > > > > >>> front of kprobe_breakpoint_handler() call.
> > > > > >>>
> > > > > >>> Thank you,
> > > > > >>
> > > > > >> Hi all,
> > > > > >>
> > > > > >> Is there any update? I was wondering if this patch are keep going? If
> > > > > >> not, I think I could pick it up to go head
> > > > >
> > > > > I am still working on it, albeit slowly, holiday season coming up here
> > > > > in Switzerland may accelerate that a bit. All the feedback I got from
> > > > > Masami has been implemented.
> > > >
> > > > As Masami's suggestion, I don't see stop_machine in your implementation [1],
> > > > are there some concerns to use it on SMP?
> > >
> > > Hi all,
> > > I introduced the patching code framework. Maybe it is helpful for
> > > self-modify code here. (Please see:
> > > https://lkml.org/lkml/2020/3/9/679)
> > > This patch series is reviewing, maybe we could apply the
> > > implementation after it was merged.
> > >
> > >
> > > >
> > > > > Additionally I added instruction simulation for everything except memory
> > > > > accesses. I am currently working on getting compressed instructions
> > > > > decoded properly into regular instructions but that is very tedious work.
> > > > > I guess I am two or three full days of work away from getting a RFC/RFT
> > > > > v2 series ready I guess that will happen in early January.
> > > >
> > > > Thanks for the efforts.
> > > >
> > > > >
> > > > > What I currently have is at [1], that is mostly untested as of now
> > > > > (beware I will rebase/squash that branch regularly). What I could use
> > > > > help with in the future (as in for v2), is somebody testing it on real
> > > > > hardware, as I've never gotten any testing feedback on my original
> > > > > patch-series (that would not have worked properly because of the lacking
> > > > > cache-flush).
> > > >
> > > > I give some quick tests by using kprobe sanity test and simple LKM on
> > > > Hifive Unleashed board,
> > > > it seems to work normally. I could help to test your next version patch as well.
> >
> > Hi Patrick,
> >
> > I have noticed that "riscv: introduce interfaces to patch kernel code"
> > (mentioned by Zong above) has been merged in 5.7 kernel.
> >
> > I was wondering if you plan to submit a new revision of the patchset?
> >
> > Thanks,
> > david
> >
> > > >
> > > > >
> > > > > [1] https://github.com/packi/linux/tree/kprobes-riscv
> > > > >
> > > > > Patrick
> > >
> >
> 
> -- 
> Best Regards
>  Guo Ren
> 
> ML: https://lore.kernel.org/linux-csky/


-- 
Masami Hiramatsu <mhiramat@kernel.org>

