Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF1284CF41
	for <lists+linux-riscv@lfdr.de>; Thu, 20 Jun 2019 15:44:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rZv08OAoJEi3UqZRmocsXdWFjaIus/pyBM5ZJtqOQzU=; b=gQG18vq+rzA5u4
	6jWn70DlNTae3y0+PAxgh9Ol0YjOZ7Wz9Uow+TUQvoKBeS1aJdZ3D/GcowfdDHMOKFXsMwB34EILg
	eZQA+R7ENh6VcTw9Bq0BN6okLnGQ0RF0iJpdvOZYYGe4gqZtN0p5Ptcm9x+IGKwficmdUHAAxKhcw
	V9ZsfYtoZjChrQW9urKTjFwnqv+YXk4XjnIyXPWMwZw2J14uD34z65Qm98MbrmPhmPeOK3Cqy64vz
	K3ZaJB860F4HznpAdUQzZueIAAORpR/sGtcgRU/2IKt4/oXKVQasUV58FMevaR/cMXu0nEJu2kwdH
	fUaRu3xZKPBdiDVdF/iA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdxMd-0006xw-A1; Thu, 20 Jun 2019 13:44:31 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdxMY-0006ww-8B
 for linux-riscv@lists.infradead.org; Thu, 20 Jun 2019 13:44:27 +0000
Received: by mail-ed1-x544.google.com with SMTP id a14so4750839edv.12
 for <linux-riscv@lists.infradead.org>; Thu, 20 Jun 2019 06:44:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=qZnClIYTntDiZaRM0jPx5QZOydAJING4k5cfkstbGhA=;
 b=Oa9qObZgcQtqEsEzptkJwfCyUgYmwcw0Yrkh+KAJYpeWuyBUrgslJPOIEwGqPzMLpZ
 FxnmPpae/v7CPCJKVoVrjecUVJ34Xq3uTOGbilm9nCIiKDg/g/FZtEFNVFLm73IimwGL
 R4w6444WtuSvq/g6YkRjDWnQKmCxKDiU3DLqxscw1z55fYsJb3bUfYQKlJJS7pvgD4Uu
 PzDKrooQlKPgFNYQnaTOL0btpeEXCApofttxnZs9Rl1joT/4UOwzQCeDsukfC6catF5e
 0+T5d0Q8025z8gtQuESCESNTNqPtmhH3/kyJcQK80BkU/yPpvj/9kntiD53m5rFera11
 rAwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=qZnClIYTntDiZaRM0jPx5QZOydAJING4k5cfkstbGhA=;
 b=Q4WnY8KTc7/g8iZwEWxCwhS1WT5xgrRsEO7P58NmcEi+AqRzTQ6yF8ZiaRLJ/i3tiP
 rabD4s3YAmiykp7S0HC8UDwlDFlSSA8n1YuD890pptp4MILRZDMSovRbxAGCye5yqTcU
 /RaKU437zbywFWeZi+o4bVoCt4AjwXhhQbAxWzg5Uh6Yr4Cca/2X/zQIkVjV1N2Kcyot
 qaIhDoElN50gGQAr29XtRszv6ib3bI6c0lDCpNgw/6+pG2NI3mYIz/uKUaOvYPpYoiqN
 mPaXa1KINS8euGgbni0k4s9qzAYfpvaibPoZoRuZmaMfp0b8PYqdWQ5DzmQUW+U9Zdye
 hDZw==
X-Gm-Message-State: APjAAAWKxtAvQMkAosycoWYc0SlataJn3gZDCEQVX5MXGkl7hb6eWZXT
 IEWCtyE6HUvnsGHpH6O8BkjbVyGVx3FI5H25Aeo=
X-Google-Smtp-Source: APXvYqw84eHBDkvFjzyC5OqYSP3//H6ywJZZ2pHFxo2EtcfIt0DfTexhENzNjybu7PEYN1oDMfhlUBmo0vD+AT+QQoo=
X-Received: by 2002:a17:906:5008:: with SMTP id
 s8mr75153404ejj.308.1561038263989; 
 Thu, 20 Jun 2019 06:44:23 -0700 (PDT)
MIME-Version: 1.0
References: <338f944c74c7540f71c27f30f5b46405b8440de3.camel@wdc.com>
 <c4a72786b3bee65ca2d5971e42cb22edf6cf7fce.camel@wdc.com>
 <CAAhSdy2-2tQ_ToRqBcB=q6Z5biZMvfQ9ok7hW508KjJM9fMNJQ@mail.gmail.com>
In-Reply-To: <CAAhSdy2-2tQ_ToRqBcB=q6Z5biZMvfQ9ok7hW508KjJM9fMNJQ@mail.gmail.com>
From: Bin Meng <bmeng.cn@gmail.com>
Date: Thu, 20 Jun 2019 21:44:11 +0800
Message-ID: <CAEUhbmUyJKRaP+hHHmc_JuP808CdKCU3sDLD7mN==FDWew3BmA@mail.gmail.com>
Subject: Re: HiFive Unleashed DT problem with 5.3-rc1 upstream kernel
To: Anup Patel <anup@brainfault.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_064426_292804_95E4C5A5 
X-CRM114-Status: GOOD (  24.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (bmeng.cn[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 "rjones@redhat.com" <rjones@redhat.com>, Atish Patra <Atish.Patra@wdc.com>,
 Anup Patel <Anup.Patel@wdc.com>, Alistair Francis <Alistair.Francis@wdc.com>,
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

Hi Anup,

On Thu, Jun 20, 2019 at 11:20 AM Anup Patel <anup@brainfault.org> wrote:
>
> On Thu, Jun 20, 2019 at 1:36 AM Atish Patra <Atish.Patra@wdc.com> wrote:
> >
> > On Wed, 2019-06-19 at 13:02 -0700, Atish Patra wrote:
> > > Hi All,
> > >
> > > We have been waiting for upstream kernel to boot on HiFive Unleashed
> > > for some time. Finally, all the required drivers will be available in
> > > 5.3-rc1 as Yash[1] & Paul's[2] patches are queued for merging. Yay!!
> > >
> > > However, the DT/drivers in kernel are not backward compatible with
> > > the
> > > DT provided by FSBL. That means, everybody need to upgrade to the new
> > > DT if they want to use upstream kernel. Here are some possible
> > > approaches to allow a smooth transition.
> > >
> > > 1. Embedd the DT in OpenSBI directly and build it by default for
> > > unleashed platform. (discussed in OpenSBI mailing list [3])
> > >
> > > Pros: No change in anybody's build system as long as they use latest
> > > OpenSBI.
> > >
> > > Cons: This sets a bad precedent for future platforms as OpenSBI
> > > should
> > > not be the place to keep/maintain device tress.
> > >
> > > It will also break non-Linux OS that have not upgraded their DT to
> > > match with kernel.
> > >
> > > 2. Link the updated DTB maintained by kernel using
> > > FW_PAYLOAD_FDT_PATH
> > > in OpenSBI.
> > >
> > > Pros: DT is maintained by kernel and OpenSBI just use the already
> > > built
> > > DTB.
> > >
> > > Cons: Creates a dependancy on Linux build system.
> > > All Linux distro maintainers now have to update their build script to
> > > add that option and all documentation need to be updated.
> > >
> > > 3. Update FSBL:
> > >
> > > Pros: Cleanest approach.
> > >
> > > Cons: Everybody has to upgrade the FSBL which is not a simple ask for
> > > everyone. There is no FSBL binary available publicly as well. So
> > > everybody has to build FSBL first.
> > >
> > > Any other possible solutions?
> > >
> > > Till now, 2 seems to be the preferred choice for now. Approach 3 is
> > > also okay for longer term solution (given that FSBL binary and
> > > instructions are available timely). But approach 2 requires extra
> > > work
> > > on distro maintainers. That's why we want to get an agreement with
> > > them
> > > before recommonding any specific approach to anybody in the
> > > community.
> > >
> > > Thoughts ?
> > >
> >
> > Argh. I messed up the subject line first time.
> > Sorry for the noise.
>
> I have 4th option which is even cleaner that 3rd option
>
> 4. U-Boot_SPL/Coreboot replace FSBL
> The U-Boot_SPL/Coreboot will replace FSBL and load OpenSBI
> FW_DYNAMIC, Platform DTB, and U-Boot_S_mode from boot
> device (MMC/Flash). We can update OpenSBI FW_DYNAMIC,
> Platform DTB, or U-Boot_S_mode separately anytime without
> updating other images.
>
> Pros: Better than option 3
>
> Cons: None that I can think of.
>
> IMHO, it's right time replace FSBL with U-Boot_SPL/Coreboot
> once and for all. Also, running entire U-Boot in M-mode is just
> an overkill.
>

I think you mean entire U-Boot "proper" in M-mode? I don't understand
why running U-Boot in M-mode is an overkill.

OpenSBI can be built as a generic SBI library with platform
abstraction and used external firmware and bootloader. With such
configuration, U-Boot can be linked with OpenSBI in M-mode. I heard
there is an EDK2 port in progress (also M-mode?). I would say it's not
an overkill but a validation of OpenSBI as a generic SBI library :)

Having said that, I like the option 4 using U-Boot_SPL to replace
FSBL, for the reason of using the same bootloader technology stack.

Regards,
Bin

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
