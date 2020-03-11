Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CBA9A181DD6
	for <lists+linux-riscv@lfdr.de>; Wed, 11 Mar 2020 17:29:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=JLeSSdDkHSraKx0+pR16WD6pk1a1qEMuZ9XvnwDmuCg=; b=aJK9El96eoHi4RWM34sjP+UY+
	cuIsXtwcu/tTn0hpEZ24ybY0uS+MMVc8+1SSHc+1/vC2x95lTNZW12Zqgzve1myWcBZDUPYZAWO2z
	UeMxO6D2zShv2KiLqSVaAo1ZpBsXGHaG+u+Z4pwDeAhtDPHS9gYcFKY/rmiRfiAvXMyVHruC4/ev+
	Z52m2Uhvtk6+6u+qfKuDgcGUtTnqPT+7eltvql3/C7IsYbFWYxb31vzPoS8RXPK1biEqLc8KUQ65f
	nOlXMe0y66HQq57OiqQzjoNlt7Q4wK17Z2nWHWipi7Bvn7FjP7WwQ2FlxUZfJaIeu/Y5KbDfzzAU4
	TGVA0plaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC4EX-0000U2-Ui; Wed, 11 Mar 2020 16:29:25 +0000
Received: from mail-oi1-x243.google.com ([2607:f8b0:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC4EJ-0000Hg-E8
 for linux-riscv@lists.infradead.org; Wed, 11 Mar 2020 16:29:13 +0000
Received: by mail-oi1-x243.google.com with SMTP id k21so2485768oij.5
 for <linux-riscv@lists.infradead.org>; Wed, 11 Mar 2020 09:29:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=JLeSSdDkHSraKx0+pR16WD6pk1a1qEMuZ9XvnwDmuCg=;
 b=iewpzNDOnJHrJ3snTUYkWmxfbbQ7jmaLrC1IJwxPdsd6LbnnW3YcqZrNLWSqThumNL
 YnzXB/vKh28IAAc8a+xU86PkaDppcZQnIpnJPwLbC2gkmQIAP9ChqNKXB8JuJLwwB4G/
 K2imLdddliNlB13vs5NDkDAAa2T2CwSrfNw5aOTRCl/1sUxm7YtmIfvPena8xYAd1kQ6
 bpCOLr3ept5F1ADSvcYypefCWE+uEq6w67L6xMyTDNsRMuvH9mZzjc6yejIER8a8/NMm
 6EFb6iPh9879gbm/6rU6FQr/H6KTElbsrafGpU0xA7fZkvuKc0Sc9j82zsJtL1ukl+bw
 dfcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=JLeSSdDkHSraKx0+pR16WD6pk1a1qEMuZ9XvnwDmuCg=;
 b=ZvLkuC+yii4bi8/qtazIXccj4CU7zDEemhxAjgtqrM9GpfnS8wGoiRX/YRk1Y+HNkt
 CRIMXZ0hDuTeZQF7wOcAayUJvsYrVFe2hethu6hOSaF//wWfvxtR3VpDmys8w55DCy7p
 m5mihPXRElJzLJZ0t3tu5EGZqVDmCJlIFrAEmaZPacHYdh6Qp/6n9bh5Ool6VOzFYUzf
 Wm5h0EK1ZCiEsLP02ONXW+hcKzT9jqJxM+w2PkJLrREnrfwoOQ6nYKr/7Ad3JT+WmJju
 OlQ3iLP4CAuvDBBqoy27G8/chqGJawq0138HJscWo1i4Q/XXpmU2ybR7Tz/Wx2m0ZE2+
 fKsA==
X-Gm-Message-State: ANhLgQ1GB3qRDGsRcSF6lJSdM6gq82z6fEWWrc5QatTLB/Y+gvCyD0ar
 m7Y5hbGYhxHXwdeV4iCu0Hxk77YqFtoPORLLUns48g==
X-Google-Smtp-Source: ADFU+vus5saqRpbOOVvyDBJiui0zbWfUvtwhJqHDMkgTL9qOkyU89hNw3bOO0LlgRwqW8S1u13o9t8N9niz1ZmZgRq4=
X-Received: by 2002:aca:474e:: with SMTP id u75mr2445823oia.52.1583944149792; 
 Wed, 11 Mar 2020 09:29:09 -0700 (PDT)
MIME-Version: 1.0
References: <CADnnUqfDnkvCJVqBkDw+gV7_zs5Q_Mb3anQTu+UujjJ8bBk+ng@mail.gmail.com>
 <CAEn-LTrSXHdfp9OPGRSoJCfi8D8Cg8FqS=_-JYpDatAT0X5C0w@mail.gmail.com>
 <CADnnUqciAtweH6KqxvK7Z5ZL-uqOQHujWQBrt+aj2y+31BpuHQ@mail.gmail.com>
 <CADnnUqe1GrqJ5EUQQoPp063bs9SqQkHUSqK_hcWqpkJQcxySTg@mail.gmail.com>
 <CAOnJCULxNeuS3v1UEFAC_uG4heQfR3QCK-STv48LCK1pbH-18A@mail.gmail.com>
 <94ee0543-e0e6-2be4-9168-e0c8a55ca92a@williamgrant.id.au>
 <CADnnUqduWL2gMBASF=8OX8huALW9Z2tWz73kcjDK5GL+xHtsbw@mail.gmail.com>
 <40bc5468-21e8-f6ac-fcb6-eff2efa7fd13@williamgrant.id.au>
 <CAOnJCUKTDTjB8rAov8XLkfT+PAymstcy6y4A75ijRstK6y202A@mail.gmail.com>
 <CADnnUqfJ=YvFSkpsCMDd9owAE_Pwxkn=mzJ8S2YvYqRff60xxA@mail.gmail.com>
 <CADnnUqeBrJ9MwwDTY2rBkboAJHSwivuZ_Rk69C0sNGSRw1UR3Q@mail.gmail.com>
In-Reply-To: <CADnnUqeBrJ9MwwDTY2rBkboAJHSwivuZ_Rk69C0sNGSRw1UR3Q@mail.gmail.com>
From: David Abdurachmanov <david.abdurachmanov@sifive.com>
Date: Wed, 11 Mar 2020 09:28:58 -0700
Message-ID: <CAPSAq_wVVvBAo184tYa0V7e8KoFRJMQULA7jYW=Lu=Wgbipx2A@mail.gmail.com>
Subject: Re: Errors and segmentation fault while building Golang on Kernel
 after v5.4-rc3
To: Carlos Eduardo de Paula <me@carlosedp.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_092911_548566_AE9376C7 
X-CRM114-Status: GOOD (  16.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Atish Patra <atishp@atishpatra.org>,
 David Abdurachmanov <david.abdurachmanov@gmail.com>,
 Palmer Dabbelt <palmerdabbelt@google.com>,
 William Grant <me@williamgrant.id.au>, Joel Sing <joel@sing.id.au>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv <linux-riscv@lists.infradead.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, Mar 11, 2020 at 8:38 AM Carlos Eduardo de Paula
<me@carlosedp.com> wrote:
>
> On Mon, Feb 3, 2020 at 12:06 PM Carlos Eduardo de Paula
> <me@carlosedp.com> wrote:
> >
> > On Sun, Feb 2, 2020 at 9:30 AM Atish Patra <atishp@atishpatra.org> wrote:
> > >
> > > On Sat, Feb 1, 2020 at 3:37 PM William Grant <me@williamgrant.id.au> wrote:
> > > >
> > > > On 2/2/20 5:58 am, Carlos Eduardo de Paula wrote:
> > > > > Hi Atish, I've added that patch to latest OpenSBI from master, dd'ed
> > > > > it to my mmcblk0p3 partition but still got problems building Golang
> > > > > using kernel v5.5.
> > > > >
> > > > > [... snip ...]
> > > > >
> > > > > Did it worked for you William?
> > > > >
> > > > > Carlos
> > > >
> > > > Ah, sorry, I didn't actually test Atish's patch. It's not quite right,
> > > > since .tlb_range_flush_limit = 0 implies the default is used. I think
> > > > setting it to 1 should work,
> > >
> > > My bad. That's what happens when you are jet lagged and sent a patch
> > > at 5AM without testing :(.
> > > Ideally, it should be set to zero. I have fixed the issue in platform
> > > header and sent a patch series.
> > >
> > > http://lists.infradead.org/pipermail/opensbi/2020-February/001060.html
> > >
> > > --
> > > Regards,
> > > Atish
> >
> >
> > No worries Atish :)
> >
> > I've changed the parameter to "1" and confirm that it works.
> >
> > Built and tested Golang on v5.5.
> > Carlos
>
> Atish, the correction of the TLB flush sent previously will be
> upstreamed into OpenSBI or is something that should be patched
> off-tree?

This was merged sometime ago and is available in v0.6.

david

