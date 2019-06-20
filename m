Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 857A74C5BE
	for <lists+linux-riscv@lfdr.de>; Thu, 20 Jun 2019 05:21:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Uv3cblfdETy0u4pmNFzhAjVdmhagqz4nkLsy/mIrwek=; b=FW5xzRSluUwKv5
	dtAhTDpijSoBUJ3Bp0vaco2mDIgFX2uL/hRuq0KjSW4HN43iqccb0PX7topippTIUpgjueHI9/tt4
	qM1UVQz7Ti4QUI4xoFCwrahw3Tk0+fVvbMwBZfNck39zEonuOyNycjWfn5sonwKquFyNb/bLv3f6P
	rnqeWDEfGqXj9XIYTMelHOW6Sy1tnvPjtrswoT6AGok7BE5obL8tsPBRuXBKGCrYKldB2mIfJH6YP
	GqFqj4oJHiKZf+icsgM9PpG3OuqH7JjHLUHgCB3en+qkQNOYjz62nWX++L9dkNoqbiYV+7505/yzi
	6BzbWV7FA/+I7LHwzZ9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdnd5-0007QY-Tm; Thu, 20 Jun 2019 03:20:51 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdnd2-0007Q1-Ry
 for linux-riscv@lists.infradead.org; Thu, 20 Jun 2019 03:20:50 +0000
Received: by mail-wm1-x341.google.com with SMTP id c66so1464450wmf.0
 for <linux-riscv@lists.infradead.org>; Wed, 19 Jun 2019 20:20:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=qE0gwJy4czk0P2HrVbMDsqNJ06h/FTzBRI1vzvRdkas=;
 b=rUx1cByvjvFjv6ah4UKQG/BQ4dXa5U3bpiy+PB8y6kJa+bwG8PMHzciKPdTaDv6D1L
 jML7PxZJLd8Eze9m8I/gzM/edIjj+8n7lcaxxUKZXpo0EIUWrsKAj3pnvrjssCuDj6lY
 yL3Bil5fItj73wEHAkuQwSxFuz2zKZA0dtKVK/zAmZgrP/k2KG+HjwQB7l9LejueVU8/
 SYEKjJkb/Fe1MIBTcxoUU9dXvOFuPdRGItvkulNgsQFBH92gMI1/tOS84N8cfEGde0sq
 tVGJG8YiwjeTuMHRKOOKyQLN7wfLYZFHc4s77wN4dtVTT/GjsgOlQpQrHyunObmSInOH
 28uA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=qE0gwJy4czk0P2HrVbMDsqNJ06h/FTzBRI1vzvRdkas=;
 b=ANaqXO+hrMizf+1eikwY/Zzz/MrAlHqyyHKRt8TBtG+3PGbztaNOCW7J3GKRIudaMh
 Bt/w/L3hoyNJlJOJuSWMNwxDA3qD52/37LBIXbR8FxcmBSziVtLOl5yjIY7+Dft6iP6c
 bO4JFN4McFkAbCSYzGNlU30QM11cQlvfgFCkOhfLHvOZYKPGNYsNCZhmoO+DO+/9GbOz
 Zx4Qb5fHd+Qy+cmrXIMam6YIM+YfE4PbkcpVXOZCJFY4Zi0dPkc5Sl8itVIaR8qOQCmX
 vCYO8H2fleeZBJSHmH8j00mpZiyuPddCuTwPMcxWSVRXW9O1bYObAC1Rc1kJ6BPf5EN2
 Z9Bg==
X-Gm-Message-State: APjAAAXWiqK001sM4/jsY/k5G5laQCFxWk7vnAQt+ZZfki2ryJUnsVMU
 Q3w0Y864YZTjhXhD0CTe82aCetLggE3v/9KxIIHVfQ==
X-Google-Smtp-Source: APXvYqwFErCNZfEtLsHOSYesyRwWx2Xu6+QMXvq9ApLSXD1eSfgPij88gF7XCQZGIAZcirW3+3EZmIdrBOm556f/0tY=
X-Received: by 2002:a7b:c5d0:: with SMTP id n16mr47927wmk.1.1561000846942;
 Wed, 19 Jun 2019 20:20:46 -0700 (PDT)
MIME-Version: 1.0
References: <338f944c74c7540f71c27f30f5b46405b8440de3.camel@wdc.com>
 <c4a72786b3bee65ca2d5971e42cb22edf6cf7fce.camel@wdc.com>
In-Reply-To: <c4a72786b3bee65ca2d5971e42cb22edf6cf7fce.camel@wdc.com>
From: Anup Patel <anup@brainfault.org>
Date: Thu, 20 Jun 2019 08:50:35 +0530
Message-ID: <CAAhSdy2-2tQ_ToRqBcB=q6Z5biZMvfQ9ok7hW508KjJM9fMNJQ@mail.gmail.com>
Subject: Re: HiFive Unleashed DT problem with 5.3-rc1 upstream kernel
To: Atish Patra <Atish.Patra@wdc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_202048_953859_A6412655 
X-CRM114-Status: GOOD (  21.36  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Damien Le Moal <Damien.LeMoal@wdc.com>, "mafm@debian.org" <mafm@debian.org>,
 "abner.chang@hpe.com" <abner.chang@hpe.com>,
 "david.abdurachmanov@gmail.com" <david.abdurachmanov@gmail.com>,
 "khilman@baylibre.com" <khilman@baylibre.com>,
 "mark.corbin@embecosm.com" <mark.corbin@embecosm.com>,
 "palmer@sifive.com" <palmer@sifive.com>,
 "rjones@redhat.com" <rjones@redhat.com>, Anup Patel <Anup.Patel@wdc.com>,
 Alistair Francis <Alistair.Francis@wdc.com>,
 "yash.shah@sifive.com" <yash.shah@sifive.com>,
 "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
 "merker@debian.org" <merker@debian.org>,
 "schwab@linux-m68k.org" <schwab@linux-m68k.org>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "hch@lst.de" <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, Jun 20, 2019 at 1:36 AM Atish Patra <Atish.Patra@wdc.com> wrote:
>
> On Wed, 2019-06-19 at 13:02 -0700, Atish Patra wrote:
> > Hi All,
> >
> > We have been waiting for upstream kernel to boot on HiFive Unleashed
> > for some time. Finally, all the required drivers will be available in
> > 5.3-rc1 as Yash[1] & Paul's[2] patches are queued for merging. Yay!!
> >
> > However, the DT/drivers in kernel are not backward compatible with
> > the
> > DT provided by FSBL. That means, everybody need to upgrade to the new
> > DT if they want to use upstream kernel. Here are some possible
> > approaches to allow a smooth transition.
> >
> > 1. Embedd the DT in OpenSBI directly and build it by default for
> > unleashed platform. (discussed in OpenSBI mailing list [3])
> >
> > Pros: No change in anybody's build system as long as they use latest
> > OpenSBI.
> >
> > Cons: This sets a bad precedent for future platforms as OpenSBI
> > should
> > not be the place to keep/maintain device tress.
> >
> > It will also break non-Linux OS that have not upgraded their DT to
> > match with kernel.
> >
> > 2. Link the updated DTB maintained by kernel using
> > FW_PAYLOAD_FDT_PATH
> > in OpenSBI.
> >
> > Pros: DT is maintained by kernel and OpenSBI just use the already
> > built
> > DTB.
> >
> > Cons: Creates a dependancy on Linux build system.
> > All Linux distro maintainers now have to update their build script to
> > add that option and all documentation need to be updated.
> >
> > 3. Update FSBL:
> >
> > Pros: Cleanest approach.
> >
> > Cons: Everybody has to upgrade the FSBL which is not a simple ask for
> > everyone. There is no FSBL binary available publicly as well. So
> > everybody has to build FSBL first.
> >
> > Any other possible solutions?
> >
> > Till now, 2 seems to be the preferred choice for now. Approach 3 is
> > also okay for longer term solution (given that FSBL binary and
> > instructions are available timely). But approach 2 requires extra
> > work
> > on distro maintainers. That's why we want to get an agreement with
> > them
> > before recommonding any specific approach to anybody in the
> > community.
> >
> > Thoughts ?
> >
>
> Argh. I messed up the subject line first time.
> Sorry for the noise.

I have 4th option which is even cleaner that 3rd option

4. U-Boot_SPL/Coreboot replace FSBL
The U-Boot_SPL/Coreboot will replace FSBL and load OpenSBI
FW_DYNAMIC, Platform DTB, and U-Boot_S_mode from boot
device (MMC/Flash). We can update OpenSBI FW_DYNAMIC,
Platform DTB, or U-Boot_S_mode separately anytime without
updating other images.

Pros: Better than option 3

Cons: None that I can think of.

IMHO, it's right time replace FSBL with U-Boot_SPL/Coreboot
once and for all. Also, running entire U-Boot in M-mode is just
an overkill.

Regards,
Anup

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
