Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E928113B5C
	for <lists+linux-riscv@lfdr.de>; Thu,  5 Dec 2019 06:36:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=KWeVLA+Lco2PS6ChZN6Zdh3HiL42eMKEtVIMaYS087k=; b=RerPMVGnsAu23CQ/b/yiEMAJF
	BdEvr3l2ZwzxhVYnxtyGehYkvEXmCDBsfQNWH8ypJwq3eYVh5dEeF/s7ml4v6iaNCgL2Ve4eL9wr3
	9UMWPkCnhbt/lff7kTpCOn1P0bc0x+9KEIpPmmwQgz+aYf5xWLfqxpWLBM3btTfA2ebnY9cFellj2
	LhnFdI8PfyAeVRpvKjluwxz4ncY+mydmUaZBP2xT/hSG2iux10N41iA/zCwZ5H2ECON7SfZYgN3Oh
	wlCS15jSbf81BISruSHPp7guYkrfpQ9GtNJfhXK+iwyDguG97+g15Vp+EBIkCOT7jNJmOG21bNu7/
	Vl6gXDzng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icjoF-0001PZ-0u; Thu, 05 Dec 2019 05:36:15 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icjoB-0001PD-5e
 for linux-riscv@lists.infradead.org; Thu, 05 Dec 2019 05:36:13 +0000
Received: by mail-wr1-x444.google.com with SMTP id y11so1910236wrt.6
 for <linux-riscv@lists.infradead.org>; Wed, 04 Dec 2019 21:36:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=KWeVLA+Lco2PS6ChZN6Zdh3HiL42eMKEtVIMaYS087k=;
 b=iSEPzrPKtrYXwDLHNsOC/7aP1sXXYyoVLr4k0hjJpp7I0+czzzGISbfd4MXNVKE/4U
 EqFJmW2hjQh9YQACl0izw6q1PETP2l8hdKrpr6xVxniLhj7ib7lQszHtDFid37kRvl+k
 22xL5G68WoD/S8Q524AlG2AWKndiWh+xUZ5ZLeNhn5i8kaYEdHj1R4PQITayApKcbJ7r
 z8XcsN8h+kBToxkaVsZfxCNqn7grswtPwjvxlYT/k7OUotxWM9R+3HdS5az3m93gG58C
 X2/jKCJJrELJfeERLHjEe93jpz6apyO0W/TwQ9pkYVkcWAcpbrx14If+gcnLOhcubyQg
 oONQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=KWeVLA+Lco2PS6ChZN6Zdh3HiL42eMKEtVIMaYS087k=;
 b=dgHL81wvKLRx6CbZoLlCFnHoK0PL7pqE3CzlMK5qMMWbqR4NI/7Lc0gpf0dosVhjrX
 E8QmZ80Fr/Fd+wZZRQugAQpM1JUPUK3a7rlwfwrM5RTO/ns38UkAMh0cySkA4yrRMIUJ
 MVnOcjY57CEoFUDyxXvRfZhP36s32EAuFEAxlRMYTALRGR9Ozi1KIcg+VfXfUUfhncQl
 n2PySnuv7UninAmg3fP1e0rxq198m1GgYOpt8S7B7v+8q+S38yaBnJgjGWz/fKW5J38Z
 XXw5uK2IvzzDQ0xjY4edVNs5UmyM41XCvsUOM/BGR2pj418q3oLLmhuZNXiDm2mR4RDC
 l8jA==
X-Gm-Message-State: APjAAAUM7sQ5586OJoYp30BS/V/JSK0Oryg1PxsxXJX8jaUgZrpTasC3
 K2B/PCRsXtTtpk8k4w1Fc4ughC74tw4CusGKqHI=
X-Google-Smtp-Source: APXvYqx6pHHttuBMJ2/WAYkQRUg02kxzZW3kuQMKWhdKVcEHEiRn5j2iekLW7//lcjDDot2ZFb96+UxZ7mpB4pbe92w=
X-Received: by 2002:a5d:4c85:: with SMTP id z5mr7673956wrs.42.1575524169206;
 Wed, 04 Dec 2019 21:36:09 -0800 (PST)
MIME-Version: 1.0
References: <alpine.DEB.2.21.9999.1912040050430.56420@viisi.sifive.com>
 <CAAhSdy2id0FoLBxWwN7WHEk5Am770BizkK=sZO0-G54MtYa6DQ@mail.gmail.com>
 <9044bad02aa6553cdb2523294500b50fccf3fd2a.camel@wdc.com>
 <alpine.DEB.2.21.9999.1912041128400.186402@viisi.sifive.com>
 <81530734312456aab8b9625d7e9bb071c43db1c5.camel@wdc.com>
 <alpine.DEB.2.21.9999.1912041644170.206929@viisi.sifive.com>
 <84c4ee600c0dd235a0fcc257115807af7207b5f6.camel@wdc.com>
In-Reply-To: <84c4ee600c0dd235a0fcc257115807af7207b5f6.camel@wdc.com>
From: David Abdurachmanov <david.abdurachmanov@gmail.com>
Date: Thu, 5 Dec 2019 07:35:32 +0200
Message-ID: <CAEn-LTozM5K5PQY3LTqB0G2y9DGSME-7PX=jwuujZ=cvyQN6NA@mail.gmail.com>
Subject: Re: [GIT PULL] Second set of RISC-V updates for v5.5-rc1
To: Alistair Francis <Alistair.Francis@wdc.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_213611_238093_F044CBB7 
X-CRM114-Status: GOOD (  37.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (david.abdurachmanov[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "anup@brainfault.org" <anup@brainfault.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Atish Patra <Atish.Patra@wdc.com>,
 "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "torvalds@linux-foundation.org" <torvalds@linux-foundation.org>,
 "hch@lst.de" <hch@lst.de>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, Dec 5, 2019 at 5:58 AM Alistair Francis
<Alistair.Francis@wdc.com> wrote:
>
> On Wed, 2019-12-04 at 18:54 -0800, Paul Walmsley wrote:
> > On Wed, 4 Dec 2019, Alistair Francis wrote:
> >
> > > That is just not what happens though.
> > >
> > > It is too much to expect every distro to maintain a defconfig for
> > > RISC-
> > > V.
> >
> > The major Linux distributions maintain their own kernel
> > configuration
> > files, completely ignoring kernel defconfigs.  This has been so for a
> > long
> > time.
>
> That might be true for the traditional "desktop" distros, but embedded
> distros (the main target for RISC-V at the moment) don't generally do
> this.

I can confirm that Fedora/CentOS/RHEL do not depend on default
config in kernel. Same seems to apply to Ubuntu, Arch and probably
others. We maintain our own configs.

>
> >
> > > Which is why we currently use the defconfig as a base and apply
> > > extra
> > > features that distro want on top.
> >
> > As you know, since you've worked on some of the distribution builder
> > frameworks (not distributions) like OE and Buildroot, those build
> > systems
> > have sophisticated kernel configuration patching and override systems
> > that
> > can disable the debug options if the maintainers think it's a good
> > idea to
> > do that.
>
> Yes they do. As I said, we start with the defconfig and then apply
> config changes on top. Every diversion is a maintainence burden so
> where possible we don't make any changed. All of the QEMU machines
> currently don't have config changes (and hopefully never will) as it's
> a pain to maintain.
>
> >
> > You've contributed to both Buildroot and OE meta-riscv RISC-V kernel
> > configuration fragments yourself, so this shouldn't be a problem for
> > you
> > if you disagree with our choices here.  For example, here's an
> > example of
> > how to patch defconfig directives out in Buildroot:
> >
> >
> > https://git.buildroot.net/buildroot/tree/board/qemu/csky/linux-ck807.config.fragment#n3
> >
> > I'm assuming you don't need an example for meta-riscv, since you've
> > already contributed RISC-V-related kernel configuration fragments to
> > that
> > repository.
>
> As I stated, this is possible. It's just a pain to maintain and for the
> QEMU machines will probably not happen.
>
> We are trying to remove RISC-V specific changes, not add more.
>
> >
> > > Expecting every distro to have a kernel developers level of
> > > knowledge
> > > about configuring Kconfigs is just unrealistic.
> >
> > I think it's false that only kernel developers know how to disable
> > debug
> > options in Kconfig files.  As far as the underlying premise that one
> > shouldn't expect distribution maintainers to know how to change
> > Kconfig
> > options, we'll just have to agree to disagree.
>
> Do you really expect every disto to follow all of the kernel changes
> and generate their own config based on what happened in the kernel tree
> since the last release? We don't all just spend our days adjusting to
> the Linux kernel.

I cannot talk for all distros (there are too many), but major desktop
distributions do that. For the 1st few RCs of a new kernel version I
will be adjusting Fedora/RISCV configuration based on whatever
changes land.

Of course looking at default defconfig is part of that process.

>
> This is espicially true for RISC-V as it's new and constantly changing.
>
> >
> > > > distros and benchmarkers will create their own Kconfigs for their
> > > > needs.
> > >
> > > Like I said, that isn't true. After this patch is applied (and it
> > > makes
> > > it to a release) all OE users will now have a slower RISC-V kernel.
> >
> > OE doesn't have any RISC-V support upstream, so pure OE users won't
> > notice
>
> That is just not true. You talk later about misinformation but this is
> a blatent lie.
>
> > any change at all.  Assuming you're talking about meta-riscv users:
> > as
> > noted above, it's simple to automatically remove Kconfig entries you
> > disagree with, or add ones you want.
> >
> > > Now image some company wants to investigate using a RISC-V chip for
> > > their embedded project. They use OE/buildroot to build a quick test
> > > setup and boot Linux. It now runs significantly slower then some
> > > other
> > > architecture and they don't choose RISC-V.
> >
> > The best option for naive users who are seeking maximum performance
> > is to
> > use a vendor BSP.  This goes beyond settings in a kernel config file:
> > it
> > extends to compiler and linker optimization flags, LTO, accelerator
> > firmware and libraries, non-upstreamed performance-related patches,
> > vendor support, etc.
>
> What? How many people actually do this for embedded systems.
>
> I agree that if you really want to maximise it as much as you can you
> will go to this effort, but I don't think most people do. I think we
> all know that lots of times embedded Linux is just hacked until it
> works and then shipped. In this case defaults are very important.
>
> >
> > > Slowing down all users to help kernel developers debug seems like
> > > the
> > > wrong direction. Kernel developers should know enough to be able to
> > > turn on the required configs, why does this need to be the default?
> >
> > It's clear you strongly disagree with the decision to do this.  It's
> > certainly your right to do so.  But it's not good to spread
> > misinformation
> > about how changing the defconfigs "slow[s] down all users," or
>
> What misinformation?
>
> Anup shared benchmarking results indicating that this change has a 12%
> performance decrease for everyone who uses the defconfig without
> removing this change.
>
> That is everyone who doesn't decide to remove config options from the
> default config supplied by the people who wrote the code are now stuck
> with a large performance hit. Passing the buck and saying that people
> should be changing the defconfig cannot be the right solution here.
>
> > exaggerating the difficulty for downstream software environments to
> > back
> > this change out if they wish.
>
> If you think it is that easy can you please submit the patches?
>
> I understand it's easy to make decisions that simplfy your flow, but
> this has real negative consequences in terms of performance for users
> or complexity for maintainers. It would be nice if you take other users
> /developers into account before merging changes.

I would prefer to have a separate config for debug (that's what we do in
Fedora). Why not use config fragment here (e.g. call it debug.config like
in powerpc)?

See:
https://github.com/torvalds/linux/commit/c1bc6f93f95970f917caaac544a374862e84df52
https://elinux.org/images/3/39/Managing-Linux-Kernel-Configurations-with-Config-Fragments-Darren-Hart-VMware.pdf

david

>
> Alistair
>
> >
> >
> > - Paul

