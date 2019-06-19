Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BFC54B7F9
	for <lists+linux-riscv@lfdr.de>; Wed, 19 Jun 2019 14:18:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MraYhUkFNalwpy+0NwBAKkNuhrZwfUqHGQugFt7N5dU=; b=B5Pl0IqoqklOa/
	xGb8hyGaHEzAcu60arsSODA7P7QhiZ7oBE8HFs9XQiLURSERIuENVqoLexeR1ux8gaKzD6I7x91ZH
	LshnPz+jaeURbEJ65liqhLMbcj1+diJ6uC69bLn7+x0KGoOo+4a1odY6vY+vjabTCsoEcbEv7fY4g
	ZxnbxQ7oNlOrkXN405r44M1tPTTndmJomEdCa6fHgrJrVPifpvjtYFfUOIGmNbz8dGaDPfSV58c15
	spll6FUirGCjROckHruvW7Dtra1kUio+82u9Z9BDrKFfovu0H0VQ86GLwsWWSoRLcA6zY5aA0TlUF
	QJTehMAR56aPdN+h+Ffw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdZXx-00066A-Pa; Wed, 19 Jun 2019 12:18:37 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdZXd-0005ss-Sw; Wed, 19 Jun 2019 12:18:19 +0000
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com
 [209.85.221.50])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3730821530;
 Wed, 19 Jun 2019 12:18:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560946697;
 bh=yhxv7AgwzvhlNQSVBLS6wZ1SselhU4cEOOFs1fJpxDY=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=ZMiqI8mCi4evJQcYbolWFw0wyCpQPmy2G+Hb5PKLNhNmRtNecRI+6q89w5OJsc8qc
 0uIZ37uH9jzLWnIN0Amvcwyx6Uh8a3/6gfMVMF3B6gI70L1a/+0tTyniMwP/Zdbra7
 V9JB0No19qxSDpgkuWn3j35uD4TnLbqjkoH21P3E=
Received: by mail-wr1-f50.google.com with SMTP id r16so3117620wrl.11;
 Wed, 19 Jun 2019 05:18:17 -0700 (PDT)
X-Gm-Message-State: APjAAAU6+WmLdaGQsFHphu0ODDzqbvhKCRSoELsawwb99m6EgKayQhh7
 aGNq+2MXFah0lB+xnihAtsvd6FaLt6b85pVidVo=
X-Google-Smtp-Source: APXvYqxLToImvuhSDmD1nIS+ES6oreQ4KIoRUvyJ5x3WUN76K0k7xm92MrDOXh+M6q9Y86BgYAoCufZoBHRQw/MmFGQ=
X-Received: by 2002:adf:9bd3:: with SMTP id e19mr8408054wrc.38.1560946695784; 
 Wed, 19 Jun 2019 05:18:15 -0700 (PDT)
MIME-Version: 1.0
References: <20190321163623.20219-1-julien.grall@arm.com>
 <20190321163623.20219-12-julien.grall@arm.com>
 <0dfe120b-066a-2ac8-13bc-3f5a29e2caa3@arm.com>
 <CAJF2gTTXHHgDboaexdHA284y6kNZVSjLis5-Q2rDnXCxr4RSmA@mail.gmail.com>
 <c871a5ae-914f-a8bb-9474-1dcfec5d45bf@arm.com>
 <20190619091219.GB7767@fuggles.cambridge.arm.com>
In-Reply-To: <20190619091219.GB7767@fuggles.cambridge.arm.com>
From: Guo Ren <guoren@kernel.org>
Date: Wed, 19 Jun 2019 20:18:04 +0800
X-Gmail-Original-Message-ID: <CAJF2gTTmFq3yYa9UrdZRAFwJgC=KmKTe2_NFy_UZBUQovqQJPg@mail.gmail.com>
Message-ID: <CAJF2gTTmFq3yYa9UrdZRAFwJgC=KmKTe2_NFy_UZBUQovqQJPg@mail.gmail.com>
Subject: Re: [PATCH RFC 11/14] arm64: Move the ASID allocator code in a
 separate file
To: Arnd Bergmann <arnd@arndb.de>, Will Deacon <will.deacon@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_051817_970969_88ED0AA0 
X-CRM114-Status: GOOD (  18.52  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: julien.thierry@arm.com, aou@eecs.berkeley.edu, james.morse@arm.com,
 suzuki.poulose@arm.com, Marc Zyngier <marc.zyngier@arm.com>,
 catalin.marinas@arm.com, Anup Patel <anup.Patel@wdc.com>,
 linux-kernel@vger.kernel.org, rppt@linux.ibm.com, hch@infradead.org,
 Atish.Patra@wdc.com, Julien Grall <julien.grall@arm.com>,
 Palmer Dabbelt <palmer@sifive.com>, gary@garyguo.net, paul.walmsley@sifive.com,
 christoffer.dall@arm.com, linux-riscv@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, Jun 19, 2019 at 5:12 PM Will Deacon <will.deacon@arm.com> wrote:
>
> On Wed, Jun 19, 2019 at 09:54:21AM +0100, Julien Grall wrote:
> > On 6/19/19 9:07 AM, Guo Ren wrote:
> > > You forgot CCing C-SKY folks :P
> >
> > I wasn't aware you could be interested :).
> >
> > > Move arm asid allocator code in a generic one is a agood idea, I've
> > > made a patchset for C-SKY and test is on processing, See:
> > > https://lore.kernel.org/linux-csky/1560930553-26502-1-git-send-email-guoren@kernel.org/
> > >
> > > If you plan to seperate it into generic one, I could co-work with you.
> >
> > Was the ASID allocator work out of box on C-Sky? If so, I can easily move
> > the code in a generic place (maybe lib/asid.c).
>
> This is one place where I'd actually prefer not to go down the route of
> making the code generic. Context-switching and low-level TLB management
> is deeply architecture-specific and I worry that by trying to make this
> code common, we run the real risk of introducing subtle bugs on some
> architecture every time it is changed.
"Add generic asid code" and "move arm's into generic" are two things.
We could do
first and let architecture's maintainer to choose.

> Furthermore, the algorithm we use
> on arm64 is designed to scale to large systems using DVM and may well be
> too complex and/or sub-optimal for architectures with different system
> topologies or TLB invalidation mechanisms.
It's just a asid algorithm not very complex and there is a callback
for architecture to define their
own local hart tlb flush. Seems it has nothing with DVM or tlb
broadcast mechanism.

>
> It's not a lot of code, so I don't see that it's a big deal to keep it
> under arch/arm64.
Yes, I think that's ok for arm64.

Hi Arnd,
What do you think about adding generic asid code for arch selection?

Best Regards
 Guo Ren

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
