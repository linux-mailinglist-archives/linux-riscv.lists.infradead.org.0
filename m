Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC90114F312
	for <lists+linux-riscv@lfdr.de>; Fri, 31 Jan 2020 21:11:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To
	:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=leo7bhPxqcoZebFZooSN7676mYwCCksyLxFSJT+1178=; b=HzHA2h6dVUQ4raT2MFoRE1H2P
	E9SrPNa29EvHLbJWRqVuVEnqwJLOL02p6TOMEhQVigKvK9g6BwPRAPpNP0elEqMVmixl/BwXvJSfU
	VQ3PK4R1Y908g3k3n126kedHi0FsMZTy0c5juDDNN8QM2TtJj0JZWNrasyolPhmjiEjm7n4TB62r8
	S7AkwfTmxkZePmjUsEuPXKtju1hgovGlq58AfaO08oV0/REnGuuZcTdQWPfWlgn95n9TJp3jDCRY7
	cGkdb9KB9HlHiKys9WN6fPfewnu/BO7bzbLJgl2uRhDy3lftoaXt+UqLNdLrbhPbPq2HhC/iF3bDB
	Fd5nkJ6yw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixcdp-0004Fl-Uc; Fri, 31 Jan 2020 20:11:49 +0000
Received: from hall.aurel32.net ([2001:bc8:30d7:100::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixcdl-0004Ew-Uy
 for linux-riscv@lists.infradead.org; Fri, 31 Jan 2020 20:11:47 +0000
Received: from [2a01:cb16:21:7035:ed07:baf2:d79f:af2c] (helo=ohm.local)
 by hall.aurel32.net with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <aurelien@aurel32.net>)
 id 1ixcdX-0005TS-Pw; Fri, 31 Jan 2020 21:11:31 +0100
Received: from aurel32 by ohm.local with local (Exim 4.92.3)
 (envelope-from <aurelien@aurel32.net>)
 id 1ixcdK-00HIBD-V5; Fri, 31 Jan 2020 21:11:18 +0100
Date: Fri, 31 Jan 2020 21:11:18 +0100
From: Aurelien Jarno <aurelien@aurel32.net>
To: David Abdurachmanov <david.abdurachmanov@gmail.com>
Subject: Re: Error on loading some network Kernel modules
Message-ID: <20200131201118.GA4121429@aurel32.net>
References: <CADnnUqfhxWN=cyyr0QQyKrrO13LuDFS9NTqOLwm10CnwB3sDXA@mail.gmail.com>
 <alpine.DEB.2.21.999.2001300259070.23963@utopia.booyaka.com>
 <CAEn-LToMfm=G80TmGQZefpmKhKvpGy_=XOoBLGU0a_77ahY+_w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAEn-LToMfm=G80TmGQZefpmKhKvpGy_=XOoBLGU0a_77ahY+_w@mail.gmail.com>
User-Agent: Mutt/1.13.2 (2019-12-18)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200131_121145_997174_4C0758D2 
X-CRM114-Status: GOOD (  13.89  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2001:bc8:30d7:100:0:0:0:1 listed in] [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Romain Dolbeau <romain.dolbeau@european-processor-initiative.eu>,
 Vincent Chen <vincent.chen@sifive.com>, Paul Walmsley <paul@pwsan.com>,
 Carlos Eduardo de Paula <me@carlosedp.com>,
 linux-riscv <linux-riscv@lists.infradead.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 2020-01-30 17:20, David Abdurachmanov wrote:
> On Thu, Jan 30, 2020 at 4:00 AM Paul Walmsley <paul@pwsan.com> wrote:
> >
> > On Tue, 28 Jan 2020, Carlos Eduardo de Paula wrote:
> >
> > > I currently run stock Kernel 5.5.0-rc7 on my Unleashed board with most
> > > network features I need baked into the kernel instead of modules.
> > >
> > > I tried building a kernel with these network features as modules but
> > > when loading some of them I got this error:
> > >
> > > root@unleashed:~# uname -a
> > > Linux unleashed 5.5.0-rc7-dirty #4 SMP Fri Jan 24 18:16:43 -02 2020
> > > riscv64 GNU/Linux
> > >
> > > root@unleashed:~# modprobe br_netfilter
> > > [  139.290533] br_netfilter: target ffffffe0000422d8 can not be
> > > addressed by the 32-bit offset from PC = 000000003dfd6deb
> >
> > This is a known issue:
> >
> > https://lore.kernel.org/linux-riscv/1572281840733.3517@european-processor-initiative.eu/
> >
> > https://lore.kernel.org/linux-riscv/20191029105055.GA20736@aurel32.net/#r
> >
> > Vincent is looking into it and I expect there will be a fix soon.
> >
> 
> Is this patch solving the problem?
> 
> https://github.com/bjoto/linux/commit/8a56d1c8e8e91c1bc3893946d52b9217c96e1589

I have just tried that patch on top of a 5.4.13 kernel, and I confirm it
fixes the issue. Thanks!

Aurelien

-- 
Aurelien Jarno                          GPG: 4096R/1DDD8C9B
aurelien@aurel32.net                 http://www.aurel32.net

