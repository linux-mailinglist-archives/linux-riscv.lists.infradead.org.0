Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9F5948069
	for <lists+linux-riscv@lfdr.de>; Mon, 17 Jun 2019 13:16:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s+02iWIHpq10ptUDz+J0y5Q+qmoP95n7cCJW2Bh+f/4=; b=DB5uamftV++VVK
	KYzt5PVEzYq/VplNbdbzL/JvRkxp+TIfHsrH2wCOJsxK5T29LPD9c1ivwZiFo7RduDtXb5j/19l4u
	fiXDgmGKY5S4K+32ead0kePwWxzT/K/Sa1JXn/cWFgf0L7OblICqIAVnFVsd2qgQb1maWhAfdl9BY
	SuxbmikAUpt9v08YHw8SS2wFMCYhU1zJ8JqjzIansY4akRmlpBp5biQ0AizOEBeteG4FH9LdJ8Kpy
	I5dMiF4QVpr4vl5JTW8v6HLfi6eGZWr48nWo+UH02iemMENXkwzP4IqxeRbak0ncj2EV6j5FnjYAt
	p0WvxFDCfLFDjDw02GNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcpcf-0005e1-2x; Mon, 17 Jun 2019 11:16:25 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcpcc-0005di-15
 for linux-riscv@lists.infradead.org; Mon, 17 Jun 2019 11:16:23 +0000
Received: by mail-lf1-x142.google.com with SMTP id y17so6227330lfe.0
 for <linux-riscv@lists.infradead.org>; Mon, 17 Jun 2019 04:16:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Az1PsId6AG7zrE/e92guw8M5OvqzRvBrnplgaPfEwcw=;
 b=iAwdTAm7d1j7Fy86A9WNwUIIPoE1zIu2cV4bWwdR7BuLmdfbtfKcJmSezpSob9uyX6
 y01FclKM/Is3Qb4jVv6QnxM9EQcvoE6xuynnh4PECqeAadE1vTbXCLgg36nhvpqtTjy9
 493u6NeeunXp2GdJ9WoAkK6KyTeTuImRWpp2rEmUCTZkMid45PFKnhZ7xih/PSPBJJfZ
 nEkQah3nMTlY7wOG9SwxnT1Kac1SB2teBXGdpQgu+dbRanIAymF8wsE8codJrzZ6jMZ9
 r4V+5Vlqqk4S8kHnoDPpUOXQVEn0arHZ4O/7gv7E9mxTOtL+KUf2kc2uvhkSY+qIvuq6
 iP0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Az1PsId6AG7zrE/e92guw8M5OvqzRvBrnplgaPfEwcw=;
 b=HdZBWnImFb+SbWzDhomQy2NNp3yNOfc3xFwwMSQU/7gaxux433VriJOBcP94OsJRRb
 syVUOTxNfZ/42DVonZqHol1mfU1lzIjEHMPzAg3CkDtKkZ2X9zi55oCEdgY/KQvwZHa2
 UTZhPMDJKi58JgkfNd3pRgvuOt1htRb5iV3ZG3DuKxxtZyBYny1q9tkWSx09lyh5lU6M
 +YDG8cnp+FT5TKPJgYN/wFBmLiqfnGmOWYr/DwZ/kBBDEiEfu4FM6ya8Yg3LR+l1T2ZJ
 SsjaUIe8Tggc61q4GhEXIBCohmPgz7N17g9T89iqtKDLeV7FsgkWL3dtqwO804riNIy2
 l9oA==
X-Gm-Message-State: APjAAAXsvyRbpYmuOHyqHekGmLMWmo01M0wsr1Nc5qcV8LHATfcsUceU
 lNi0aGwgoFgZWJ3CoArT2I0vH/XyVWEx/dD3YP4iWw==
X-Google-Smtp-Source: APXvYqypsC4+KqqqqByXUQwFLS5k7sdZwXfVUz0JR59Biy8/qI2ghsrwN4NbcoApA/Kx9X1aql6XpI8678au/x+gMGg=
X-Received: by 2002:ac2:446b:: with SMTP id y11mr49980373lfl.158.1560770180454; 
 Mon, 17 Jun 2019 04:16:20 -0700 (PDT)
MIME-Version: 1.0
References: <1560745167-9866-1-git-send-email-yash.shah@sifive.com>
 <mvmtvco62k9.fsf@suse.de>
 <alpine.DEB.2.21.9999.1906170252410.19994@viisi.sifive.com>
 <CAJ2_jOH-CacU9+Lce80PQzG1ytxvSZmjfSMwL9=kbXpWxyU96Q@mail.gmail.com>
 <alpine.DEB.2.21.9999.1906170324250.19994@viisi.sifive.com>
In-Reply-To: <alpine.DEB.2.21.9999.1906170324250.19994@viisi.sifive.com>
From: Yash Shah <yash.shah@sifive.com>
Date: Mon, 17 Jun 2019 16:45:44 +0530
Message-ID: <CAJ2_jOEdejgb-ryx3og5gzWP7wSw0tp1Enk-pjD2rZqJ4JcO3A@mail.gmail.com>
Subject: Re: [PATCH v2 0/2] Add macb support for SiFive FU540-C000
To: Paul Walmsley <paul.walmsley@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_041622_128220_F86C8E59 
X-CRM114-Status: GOOD (  17.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Albert Ou <aou@eecs.berkeley.edu>, Andreas Schwab <schwab@suse.de>,
 Palmer Dabbelt <palmer@sifive.com>,
 =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>, linux-kernel@vger.kernel.org,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Sachin Ghadi <sachin.ghadi@sifive.com>, Rob Herring <robh+dt@kernel.org>,
 Sagar Kadam <sagar.kadam@sifive.com>, netdev <netdev@vger.kernel.org>,
 linux-riscv@lists.infradead.org, David Miller <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, Jun 17, 2019 at 3:58 PM Paul Walmsley <paul.walmsley@sifive.com> wrote:
>
> On Mon, 17 Jun 2019, Yash Shah wrote:
>
> > On Mon, Jun 17, 2019 at 3:28 PM Paul Walmsley <paul.walmsley@sifive.com> wrote:
> >
> > > On Mon, 17 Jun 2019, Andreas Schwab wrote:
> > >
> > > > On Jun 17 2019, Yash Shah <yash.shah@sifive.com> wrote:
> > > >
> > > > > - Add "MACB_SIFIVE_FU540" in Kconfig to support SiFive FU540 in macb
> > > > >   driver. This is needed because on FU540, the macb driver depends on
> > > > >   SiFive GPIO driver.
> > > >
> > > > This of course requires that the GPIO driver is upstreamed first.
> > >
> > > What's the impact of enabling CONFIG_MACB_SIFIVE_FU540 when the GPIO
> > > driver isn't present?  (After modifying the Kconfig "depends" line
> > > appropriately.)
> > >
> > > Looks to me that it shouldn't have an impact unless the DT string is
> > > present, and even then, the impact might simply be that the MACB driver
> > > may not work?
> >
> > Yes, there won't be an impact other than MACB driver not working.
>
> OK.  In that case, there doesn't seem much point to adding the Kconfig
> option.  Could you please post a new version without it?

Sure, will do that.

>
> > In any case, without GPIO driver, PHY won't get reset and the network
> > interface won't come up.
>
> Naturally, in the medium term, we want Linux to handle the reset.  But if
> there's no GPIO driver present, and the bootloader handles the PHY reset
> before the kernel starts, would the network driver work in that case?

Yes, if bootloader handles the PHY reset then the network driver will
work in that case.
I will post a new version without the GPIO driver dependency.

>
>
> - Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
