Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70ADA30082
	for <lists+linux-riscv@lfdr.de>; Thu, 30 May 2019 19:00:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-ID:To:From:
	In-Reply-To:Subject:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=styxdRtBM1br2l3+KKMUt5Ejm2eCUS9SKzrcaCI+kGo=; b=hLbrwV6CNuQHW7
	3tTgQ7uBBok5AkVC3OhEN+oWuBowFKbJjwLGv97JPGGj22X+46HFSy1HHMjESAzo+iRl/kUJiLfMN
	VSLRYo6Z6MHfsYv+/lHKnh6QHBv2epLjZC8aPhs+anWBQsA6X4AIGnYnOW/ipvetMiO6f8sXI3xXq
	HNX3pT6PNjdH4d5HYO0dhAJoAR6yw9FyIaltkjFDHFCGHvAxfPVAHw3s0QKUZtzCWWU5PiJ+9S3Y9
	XYDcQJYnBkIlOjAvoOU3U+ArJmOOjvq4sokI7BIN5Mg5hQsp2yHyjajxd9R+Xi/BN45+9IaegV84i
	fkaYm9+uqfxrtb06c98A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWOQ1-0001ug-GV; Thu, 30 May 2019 17:00:45 +0000
Received: from mail-pg1-f195.google.com ([209.85.215.195])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWOPx-0001tg-1a
 for linux-riscv@lists.infradead.org; Thu, 30 May 2019 17:00:42 +0000
Received: by mail-pg1-f195.google.com with SMTP id n2so2346148pgp.11
 for <linux-riscv@lists.infradead.org>; Thu, 30 May 2019 10:00:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id;
 bh=RafJQjQDoxuAnZkJLk0AhS+u+V40M1TjnvymgLpRZN8=;
 b=gPmF5+ojtQYDwBsHHE8TJCE8frQtnF/H/mxdLKoKOobAklClkS4E2F2yBWpL1eV8mG
 ofWpG3roqn1V7/SznGi7IbkI6XcqC4Y3PxdOv0VH7dL4zTKbuaVXrmc0gNP84onC0OZI
 kiRhp1ySFF+bkDVDqBzoi8qpmGcJUHnff/Nz6N+gPBWa3yHWWm7f/NkqEeZ/nk70G+nK
 QFjtPr5YorlrLWLzWeLx5uD8LT3eXEFWT5SMVbD+X8BKQEJ/XmVchozm7ZjcSB/k2rkR
 CAUCdMbbXnAZHDnkn/UpeDix8nVPu8fp2YRH2UPr8qiR7igVxUbxn/kU5W84b0Zr3xwz
 Bi2w==
X-Gm-Message-State: APjAAAUBv5a5Jj+DmMHLh7VRqGBPXAecUfl5J6ZH5fYYWa2M+Hl6/ojw
 qT82Dcw9mjTyp+SUnSQrsbHKsQ==
X-Google-Smtp-Source: APXvYqxjRIdyOrpOSHhkLDSaOEH0jYT++3opxpNaF33TOkpk5ISFdi5peBzZYvxaquwsr67rE7NxRQ==
X-Received: by 2002:a62:1dca:: with SMTP id d193mr4609968pfd.93.1559235639897; 
 Thu, 30 May 2019 10:00:39 -0700 (PDT)
Received: from localhost ([12.206.222.5])
 by smtp.gmail.com with ESMTPSA id b7sm2821814pgq.71.2019.05.30.10.00.38
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 30 May 2019 10:00:38 -0700 (PDT)
Date: Thu, 30 May 2019 10:00:38 -0700 (PDT)
X-Google-Original-Date: Thu, 30 May 2019 10:00:30 PDT (-0700)
Subject: Re: 5.2-rc1 boot on Unleashed
In-Reply-To: <20190529185951.5rsoozymr32xychb@excalibur.cnev.de>
From: Palmer Dabbelt <palmer@sifive.com>
To: merker@debian.org
Message-ID: <mhng-e6adcbe6-91c3-4b15-8b07-246109fb144a@palmer-si-x1e>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_100041_308126_CDC9406E 
X-CRM114-Status: GOOD (  22.60  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.215.195 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: schwab@suse.de, Anup Patel <Anup.Patel@wdc.com>, Atish Patra <Atish.Patra@wdc.com>, lukas.auer@aisec.fraunhofer.de, Paul Walmsley <paul.walmsley@sifive.com>, anup@brainfault.org, Troy Benjegerdes <troy.benjegerdes@sifive.com>, linux-riscv@lists.infradead.org, bmeng.cn@gmail.com, Björn Töpel <bjorn.topel@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, 29 May 2019 11:59:51 PDT (-0700), merker@debian.org wrote:
> On Wed, May 29, 2019 at 12:38:42PM -0500, Troy Benjegerdes wrote:
>> > On May 29, 2019, at 3:31 AM, Andreas Schwab <schwab@suse.de> wrote:
>> >
>> > On Mai 29 2019, Anup Patel <Anup.Patel@wdc.com> wrote:
>> >
>> >> To achieve this, we need to ensure that users are able to boot kernel Image
>> >> and Image.gz without embedding it in OpenSBI/BBL.
>> >
>> > Especially you need to ensure that you can load a separate initrd,
>> > without the need to encapsulate it further as it is currently required
>> > with u-Boot loading.
>> >
>> > Andreas.
>> >
>>
>> This has been possible for at least 6 months now with the legacy HiFive-U-boot
>> that is integrated in https://github.com/sifive/freedom-u-sdk
>>
>> Currently the build scripts generate a single hifiveu.fit image that U-boot
>> loads, however it is relatively straightforward to change the uEnv.txt file
>> to load BBL, the kernel, device tree, and initrd separately.
>>
>> If some examples (and flashable binary images) demonstrating this would
>> be useful, let me know and I will make some updates.

I don't care about the out of tree stuff.  The core of this issue is that
everyone's got a bunch of out-of-tree patches floating around, which means
everyone's running into different bugs.  Linux has been the central headache
for more than a year, but now that's starting to get into acceptable shape the
headache is the boot flow.

>> What I could use some help on is how we should be using
>> config_distro_bootcmd.h in u-boot to follow what other architectures
>> have done, or if that approach is needlessly complicating things that
>> we could do in a much cleaner way with a clean slate.
>
> Hello,
>
> speaking with my Linux distribution maintainer hat on, you should
> definitely use config_distro_bootcmd.h as that is the interface
> that all binary Linux distributions expect from U-Boot nowadays.
> Please don't try to invent your own, incompatible boot
> environment; we have had that situation on arm-based systems for
> years before config_distro_bootcmd.h was introduced in 2014 and
> it was horrible.  Really nobody wants to have that again on
> modern systems.

I agree.  The general goal with the RISC-V software ecosystem is that we should
be as boring as possible.  Specifically, if something works fine for all the
other platforms then we should just copy it.  While I'm not well versed in the
boot flow, from my understanding of this the arm64 guys have something
reasonable and we should just follow in their footsteps.

That's certainly what's going on in the kernel with that header patch.  There's
a lot of debate there, but the debate is really "does this actually match what
arm64 does?", not "should we copy what am64 does?".

> Mainline U-Boot already uses the distro bootcmd environment for
> the qemu "virt" machine and it works well.

OK, so it sounds like the RISC-V stuff works and all we need to do is get
SiFive's platform working in upstream u-boot.  On the distro side you should
just count on that happening, we'll go fix it.  This is the second time this
week I've had trouble with this whole bootloader mess, so I guess that means
it's time to go figure it out :)

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
