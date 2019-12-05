Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F20D5114165
	for <lists+linux-riscv@lfdr.de>; Thu,  5 Dec 2019 14:20:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=rwZxIii9b0mENkdP46oXy6e43rzsXBHH1ccw6K+57Uw=; b=QzriVWZImWAIxIqGlT3YZZQdr
	2ksCldIQEDy/WM8976iX4lJbFPmEDMGRtDbfFZIwjTzCuJtazqPOKMqlCR+TWwFrnaERAdUJ/94kb
	EkjTOP1Wy4Z9AsJvJzxcEj+5EPnHnSRSveFoT7yreHdzhLzLcyVlGwK4RCVzOdaMm8H5Ox2xTcMzQ
	8RHbtSv3ECck0sp/+sZIHX15YmEzoDSapB0rJAM6mSdbpqxFJ2sDjHLB6PTUsQMyvQT/DLEj69fYp
	gZEbjbquqBwPx2B2HGahDKvSOsjyVarUDPX8cDlQhwzePCeuNbPschoqag5yUHF3lbEYw2QFjBjvI
	gpKsMOOEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icr3D-0002ov-P6; Thu, 05 Dec 2019 13:20:11 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icr39-00026y-3B
 for linux-riscv@lists.infradead.org; Thu, 05 Dec 2019 13:20:09 +0000
Received: by mail-wm1-x344.google.com with SMTP id g206so3761818wme.1
 for <linux-riscv@lists.infradead.org>; Thu, 05 Dec 2019 05:20:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=rwZxIii9b0mENkdP46oXy6e43rzsXBHH1ccw6K+57Uw=;
 b=sZ99D5hWKWNagSaF7mf1VWHrbnKL7ZW8yqyCfwzMzyTDIV87cQNd8QJNyZ3GAJJLGC
 +GXWWspSUiwg3M9hL8wqdtk6z7WG7pxpW5WXvS506faOCpMq08jt5yEnZEAjTP3QOEpM
 A+Qjwu5u6twz1c1scOFqkC0v3W/ZRHbdaZWCg8syPtvUWQ7oApA9Nvy6uR2+mT2lsnEU
 7gFZoHw8TGQQpmn6B+6gqf8vvRmSxiRdoStSmbJGEQ6np7n14zLpUVY+hGz2PyGVUL7B
 SUBj9S/5GdZRbEYUbs3+WC8WgSOS7jFmmn3dPFuXXYSQeZWC3uCGLsS1bOw43/7Nu7qN
 Fmww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=rwZxIii9b0mENkdP46oXy6e43rzsXBHH1ccw6K+57Uw=;
 b=qEzXbKJYt4xokFRkCNV9BRXcX4epj7ImYL1JznnlaQEJy5Jk6yR5NpYihhLLyQDyL+
 us47eAy8lMSIc9OyQjRSq6qvdg6srPw/xSx/8tVNjBnsrcIOLrJCa3wT52eZ7Jx4A0/5
 o55u87HLE2IZ3LaXiIRq9OH8MDELp6dwEdK3Y8Ayi7DZEcaKwOOEWTuTr0Ai5gtayRof
 arn/UuZ8LghLq8PfDh8Mgz4d2Ieu5PUkYalbjt3IGEO6a9w2eUtxL4ZOibE+4A+kZ+nM
 7xftVhaCRzy31o/IgBlmlQjgUxlyuwUNqymiItEHwFDzEWhk9Admh0HmV959ggZw6Vsw
 JBuw==
X-Gm-Message-State: APjAAAXJ73fIh/4OuhGXkaI/jzHEwUnu4zZRbwvaG1WRnTLGz7q9eGjS
 WKtvNsj/9KcMaxvBc7Zw6fb/2VKqU5Q4szyWYbQvOA==
X-Google-Smtp-Source: APXvYqxQ2aTk/WFSjaszU2qjU439E+zc7i9xE0dEyw1y67QE6H4Ta2sfxhbmigtRS4otZyT+9+R/lNV8y7ygkHmUZy8=
X-Received: by 2002:a1c:984f:: with SMTP id a76mr5086929wme.64.1575552004891; 
 Thu, 05 Dec 2019 05:20:04 -0800 (PST)
MIME-Version: 1.0
References: <alpine.DEB.2.21.9999.1912040050430.56420@viisi.sifive.com>
 <CAAhSdy2id0FoLBxWwN7WHEk5Am770BizkK=sZO0-G54MtYa6DQ@mail.gmail.com>
 <9044bad02aa6553cdb2523294500b50fccf3fd2a.camel@wdc.com>
 <alpine.DEB.2.21.9999.1912041128400.186402@viisi.sifive.com>
 <81530734312456aab8b9625d7e9bb071c43db1c5.camel@wdc.com>
 <alpine.DEB.2.21.9999.1912041644170.206929@viisi.sifive.com>
 <84c4ee600c0dd235a0fcc257115807af7207b5f6.camel@wdc.com>
 <CAEn-LTozM5K5PQY3LTqB0G2y9DGSME-7PX=jwuujZ=cvyQN6NA@mail.gmail.com>
In-Reply-To: <CAEn-LTozM5K5PQY3LTqB0G2y9DGSME-7PX=jwuujZ=cvyQN6NA@mail.gmail.com>
From: Anup Patel <anup@brainfault.org>
Date: Thu, 5 Dec 2019 18:49:54 +0530
Message-ID: <CAAhSdy0f_t+4214df-DqAdrfwHdzfdmZLu3g+P1junmzOjguqQ@mail.gmail.com>
Subject: Re: [GIT PULL] Second set of RISC-V updates for v5.5-rc1
To: David Abdurachmanov <david.abdurachmanov@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_052007_169336_294BEC83 
X-CRM114-Status: GOOD (  41.87  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Atish Patra <Atish.Patra@wdc.com>, Alistair Francis <Alistair.Francis@wdc.com>,
 "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "torvalds@linux-foundation.org" <torvalds@linux-foundation.org>,
 "hch@lst.de" <hch@lst.de>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, Dec 5, 2019 at 11:06 AM David Abdurachmanov
<david.abdurachmanov@gmail.com> wrote:
>
> On Thu, Dec 5, 2019 at 5:58 AM Alistair Francis
> <Alistair.Francis@wdc.com> wrote:
> >
> > On Wed, 2019-12-04 at 18:54 -0800, Paul Walmsley wrote:
> > > On Wed, 4 Dec 2019, Alistair Francis wrote:
> > >
> > > > That is just not what happens though.
> > > >
> > > > It is too much to expect every distro to maintain a defconfig for
> > > > RISC-
> > > > V.
> > >
> > > The major Linux distributions maintain their own kernel
> > > configuration
> > > files, completely ignoring kernel defconfigs.  This has been so for a
> > > long
> > > time.
> >
> > That might be true for the traditional "desktop" distros, but embedded
> > distros (the main target for RISC-V at the moment) don't generally do
> > this.
>
> I can confirm that Fedora/CentOS/RHEL do not depend on default
> config in kernel. Same seems to apply to Ubuntu, Arch and probably
> others. We maintain our own configs.

Thanks for the confirmation. Unfortunately, this does not apply to
Yocto and Buildroot (and there could be others too).

>
> >
> > >
> > > > Which is why we currently use the defconfig as a base and apply
> > > > extra
> > > > features that distro want on top.
> > >
> > > As you know, since you've worked on some of the distribution builder
> > > frameworks (not distributions) like OE and Buildroot, those build
> > > systems
> > > have sophisticated kernel configuration patching and override systems
> > > that
> > > can disable the debug options if the maintainers think it's a good
> > > idea to
> > > do that.
> >
> > Yes they do. As I said, we start with the defconfig and then apply
> > config changes on top. Every diversion is a maintainence burden so
> > where possible we don't make any changed. All of the QEMU machines
> > currently don't have config changes (and hopefully never will) as it's
> > a pain to maintain.
> >
> > >
> > > You've contributed to both Buildroot and OE meta-riscv RISC-V kernel
> > > configuration fragments yourself, so this shouldn't be a problem for
> > > you
> > > if you disagree with our choices here.  For example, here's an
> > > example of
> > > how to patch defconfig directives out in Buildroot:
> > >
> > >
> > > https://git.buildroot.net/buildroot/tree/board/qemu/csky/linux-ck807.config.fragment#n3
> > >
> > > I'm assuming you don't need an example for meta-riscv, since you've
> > > already contributed RISC-V-related kernel configuration fragments to
> > > that
> > > repository.
> >
> > As I stated, this is possible. It's just a pain to maintain and for the
> > QEMU machines will probably not happen.
> >
> > We are trying to remove RISC-V specific changes, not add more.
> >
> > >
> > > > Expecting every distro to have a kernel developers level of
> > > > knowledge
> > > > about configuring Kconfigs is just unrealistic.
> > >
> > > I think it's false that only kernel developers know how to disable
> > > debug
> > > options in Kconfig files.  As far as the underlying premise that one
> > > shouldn't expect distribution maintainers to know how to change
> > > Kconfig
> > > options, we'll just have to agree to disagree.
> >
> > Do you really expect every disto to follow all of the kernel changes
> > and generate their own config based on what happened in the kernel tree
> > since the last release? We don't all just spend our days adjusting to
> > the Linux kernel.
>
> I cannot talk for all distros (there are too many), but major desktop
> distributions do that. For the 1st few RCs of a new kernel version I
> will be adjusting Fedora/RISCV configuration based on whatever
> changes land.
>
> Of course looking at default defconfig is part of that process.

Yes, we cannot generalize that all distros use their own configs. Lot of
embedded users prefer Yocto and Buildroot which certainly depend on
Linux defconfigs.

>
> >
> > This is espicially true for RISC-V as it's new and constantly changing.
> >
> > >
> > > > > distros and benchmarkers will create their own Kconfigs for their
> > > > > needs.
> > > >
> > > > Like I said, that isn't true. After this patch is applied (and it
> > > > makes
> > > > it to a release) all OE users will now have a slower RISC-V kernel.
> > >
> > > OE doesn't have any RISC-V support upstream, so pure OE users won't
> > > notice
> >
> > That is just not true. You talk later about misinformation but this is
> > a blatent lie.
> >
> > > any change at all.  Assuming you're talking about meta-riscv users:
> > > as
> > > noted above, it's simple to automatically remove Kconfig entries you
> > > disagree with, or add ones you want.
> > >
> > > > Now image some company wants to investigate using a RISC-V chip for
> > > > their embedded project. They use OE/buildroot to build a quick test
> > > > setup and boot Linux. It now runs significantly slower then some
> > > > other
> > > > architecture and they don't choose RISC-V.
> > >
> > > The best option for naive users who are seeking maximum performance
> > > is to
> > > use a vendor BSP.  This goes beyond settings in a kernel config file:
> > > it
> > > extends to compiler and linker optimization flags, LTO, accelerator
> > > firmware and libraries, non-upstreamed performance-related patches,
> > > vendor support, etc.
> >
> > What? How many people actually do this for embedded systems.
> >
> > I agree that if you really want to maximise it as much as you can you
> > will go to this effort, but I don't think most people do. I think we
> > all know that lots of times embedded Linux is just hacked until it
> > works and then shipped. In this case defaults are very important.
> >
> > >
> > > > Slowing down all users to help kernel developers debug seems like
> > > > the
> > > > wrong direction. Kernel developers should know enough to be able to
> > > > turn on the required configs, why does this need to be the default?
> > >
> > > It's clear you strongly disagree with the decision to do this.  It's
> > > certainly your right to do so.  But it's not good to spread
> > > misinformation
> > > about how changing the defconfigs "slow[s] down all users," or
> >
> > What misinformation?
> >
> > Anup shared benchmarking results indicating that this change has a 12%
> > performance decrease for everyone who uses the defconfig without
> > removing this change.
> >
> > That is everyone who doesn't decide to remove config options from the
> > default config supplied by the people who wrote the code are now stuck
> > with a large performance hit. Passing the buck and saying that people
> > should be changing the defconfig cannot be the right solution here.
> >
> > > exaggerating the difficulty for downstream software environments to
> > > back
> > > this change out if they wish.
> >
> > If you think it is that easy can you please submit the patches?
> >
> > I understand it's easy to make decisions that simplfy your flow, but
> > this has real negative consequences in terms of performance for users
> > or complexity for maintainers. It would be nice if you take other users
> > /developers into account before merging changes.
>
> I would prefer to have a separate config for debug (that's what we do in

That's what I had suggested in my first comment on Paul's patch but
he did not respond. Unfortunately, we are having this conversation here
after the patch was merged by Paul without any discussions.
(Refer, https://lkml.org/lkml/2019/11/22/2084)

I have also sent a follow-up patch to add debug defconfigs.
(Refer, https://lkml.org/lkml/2019/12/4/1411)

There are two major concerns here:

1. Linux development process not being followed
Like I mentioned, I had already commented on Paul's patch. He simply
ignored my concerns about performance impact. This is a bad trend being
established in Linux RISC-V development.

2. Generalizing that all distros use their own config
This generalization is not true for any architecture. In fact, there are
lot of users (and distros) across architectures who depend on Linux
defconfig for building kernel image.

> Fedora). Why not use config fragment here (e.g. call it debug.config like
> in powerpc)?

This would be an interesting thing to explore if it benefits everyone but
for now we need separate debug defconfigs.

>
> See:
> https://github.com/torvalds/linux/commit/c1bc6f93f95970f917caaac544a374862e84df52
> https://elinux.org/images/3/39/Managing-Linux-Kernel-Configurations-with-Config-Fragments-Darren-Hart-VMware.pdf
>

Regards,
Anup

