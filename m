Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FEF51CC77
	for <lists+linux-riscv@lfdr.de>; Tue, 14 May 2019 18:05:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0E0spvQaY3xXvRYwT7iLtc1Nyro3T+qW5YZszmRkkPU=; b=qUwODXDk5DAeBu
	ga0wp1G1EvTfXQpuyF/rwsOBmwZfDX/On3xbQnb9lUSUCbf0YTAB+x/4P12OHyUFg6+LEbOFS9H/9
	YyzTpUGBWoCe+sRWGZSn6o/FwDB7JxjAyvQp9IFwmwpHbeIuxub+FPZSnCcz+zP/XAtOpCXQ1c7Bu
	d36/3vFWBYE9OAYxLzMToWOF755MkaoNjQZnAq/pCTjIzyDd1kqnzmqTmfMNKifzGEiK2vw8nf4jW
	DDxfFFCa4XnVWLPAlCzroklaczhPxDKEeWzYO1T5WZCR1w+HFEeso/bBznRDL0Y3urw2bbpgDeBY7
	3WFPP5VrPnxuLtEhKoXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQZvu-00032w-7I; Tue, 14 May 2019 16:05:38 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQZvq-00032W-Tg
 for linux-riscv@lists.infradead.org; Tue, 14 May 2019 16:05:36 +0000
Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com
 [209.85.222.182])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EBFF821473
 for <linux-riscv@lists.infradead.org>; Tue, 14 May 2019 16:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1557849934;
 bh=hJfCCKi48RIVVVurf1uzxJpTYl+ZKJvrpl7smCiMk9k=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=L/wizO1rm2m1f3c8ycsczry1ZMHkYklOT9Gq7r7ANgmAWG7SPyj+kYOKF6euRdbrx
 wnhQ5cTM2ga4WLXvJJTNjoPZJB9vXsnQi4TGoyVi25FNKPa5rTjlUmXomMuoYKhpUX
 NLTRYAu76AZITv/M6gd7lOt+AV7PEEx0CALj3o2Q=
Received: by mail-qk1-f182.google.com with SMTP id g190so8505987qkf.8
 for <linux-riscv@lists.infradead.org>; Tue, 14 May 2019 09:05:33 -0700 (PDT)
X-Gm-Message-State: APjAAAXy8ujV47CL7MNgVv6ZhCBDcIEUC72n7QdDs28duOETXeFGQTjG
 ZMgdCd3Fr+pXIA7NbjUr2bkJ4lYG4KJoJaiCYQ==
X-Google-Smtp-Source: APXvYqyglETLbb45wrJNIfZkmNqcgXRPRw5CeGZBc+AinbWKI/we4U8bnbDm+n/32ilz11VUASlMrGHWERgv4MMTLb8=
X-Received: by 2002:a37:c42:: with SMTP id 63mr27440583qkm.326.1557849933158; 
 Tue, 14 May 2019 09:05:33 -0700 (PDT)
MIME-Version: 1.0
References: <1557242108-13580-1-git-send-email-sagar.kadam@sifive.com>
 <1557242108-13580-2-git-send-email-sagar.kadam@sifive.com>
 <20190513205615.GA5844@bogus>
 <CAARK3HkTCGWg4CAo1LmQHmf4_NFukjTwO1LAHjgSTS+R_5CRSg@mail.gmail.com>
In-Reply-To: <CAARK3HkTCGWg4CAo1LmQHmf4_NFukjTwO1LAHjgSTS+R_5CRSg@mail.gmail.com>
From: Rob Herring <robh@kernel.org>
Date: Tue, 14 May 2019 11:05:19 -0500
X-Gmail-Original-Message-ID: <CAL_JsqKGyq-GaAXWqb=8DGCPYd-2kHWaOyNO9rC9dZkx2Z=LeQ@mail.gmail.com>
Message-ID: <CAL_JsqKGyq-GaAXWqb=8DGCPYd-2kHWaOyNO9rC9dZkx2Z=LeQ@mail.gmail.com>
Subject: Re: [PATCH v2 v2 1/3] dt-bindings: i2c: extend existing opencore
 bindings.
To: Sagar Kadam <sagar.kadam@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_090534_994741_C36EE863 
X-CRM114-Status: GOOD (  32.26  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, Andrew Lunn <andrew@lunn.ch>,
 peter@korsgaard.com, devicetree@vger.kernel.org,
 Palmer Dabbelt <palmer@sifive.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Linux I2C <linux-i2c@vger.kernel.org>,
 Paul Walmsley <paul.walmsley@sifive.com>, linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, May 14, 2019 at 7:50 AM Sagar Kadam <sagar.kadam@sifive.com> wrote:
>
> Hello Rob,
>
> Thank you for the review.
>
> On Tue, May 14, 2019 at 2:26 AM Rob Herring <robh@kernel.org> wrote:
> >
> > On Tue, May 07, 2019 at 08:45:06PM +0530, Sagar Shrikant Kadam wrote:
> > > Add FU540-C000 specific device tree bindings to already
> > > available i2-ocores file. This device is available on
> > > HiFive Unleashed Rev A00 board.
> > >
> > > Signed-off-by: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
> > > ---
> > >  Documentation/devicetree/bindings/i2c/i2c-ocores.txt | 20 ++++++++++++++++++++
> > >  1 file changed, 20 insertions(+)
> > >
> > > diff --git a/Documentation/devicetree/bindings/i2c/i2c-ocores.txt b/Documentation/devicetree/bindings/i2c/i2c-ocores.txt
> > > index 17bef9a..f6bcf90 100644
> > > --- a/Documentation/devicetree/bindings/i2c/i2c-ocores.txt
> > > +++ b/Documentation/devicetree/bindings/i2c/i2c-ocores.txt
> > > @@ -2,6 +2,7 @@ Device tree configuration for i2c-ocores
> > >
> > >  Required properties:
> > >  - compatible      : "opencores,i2c-ocores" or "aeroflexgaisler,i2cmst"
> > > +                    "sifive,fu540-c000-i2c" or "sifive,i2c0"
> >
> > If this is Opencores IP, does it really follow the Sifive versioning
> > convention? If so, please reference sifive-blocks-ip-versioning.txt
> > (which appears to have missed going upstream). Also, referencing the IP
> > repository would be good too. If this IP block doesn't follow the same
> > convention, then don't try using it for this binding.
> >
> Yes, the sifive,fu540-c000-i2c is a SoC specific compatibility string,
> this way SoC specific
> workaround's or bugs, can be handled in the software and the ip-block
> specific compatibility
> string "sifive,<ip-block-name><integer version number>" i.e.
> sifive,i2c0 is IP block specific compatibility
> string. Please let me know if I need some correction here?
> I will also update reference for sifive-blocks-ip-versioning and the
> ip repository into next version of patch.

My question is whether I can correlate v0 to a specific revision of
the IP and versions will be tracked in the same way as SiFive IP
blocks?

> > >  - reg             : bus address start and address range size of device
> > >  - interrupts      : interrupt number
> > >  - clocks          : handle to the controller clock; see the note below.
> > > @@ -67,3 +68,22 @@ or
> > >                       reg = <0x60>;
> > >               };
> > >       };
> > > +or
> >
> > Just a new compatible isn't really a reason to add an example.
> >
> > > +     /*
> > > +       An Opencore based I2C node in FU540-C000 chip from SiFive
> > > +       This chip has a hardware erratum for broken IRQ
> > > +       so it's recommended not to define interrupt in the device node
> >
> > Then interrupts needs to be optional.
> True, I will move interrupts and interrupt parent into optional section
> >
> > > +     */
> > > +     i2c@10030000 {
> > > +                     compatible = "sifive,i2c0","sifive,fu540-c000-i2c";
> > > +                     reg = <0x0 0x10030000 0x0 0x1000>;
> > > +                     reg-names = "i2c-control";
> >
> > Not doucmented.
> In v1, I had added a new binding file as sifive-i2c-ocores.txt for
> SiFive i2c core.
> After Andrew's suggestion,  extending the available i2c-ocores.txt
> seemed to be a better idea rather than adding a new file.
> so added an example node which is HiFive specific in the existing file.
> Please let me know if I need to handle this in a different way.

That has nothing to do with whether reg-names is documented. Being in
the example is not documented. You either need to add it to the
property list or drop it from the example. IMO, you should drop it as
it is not necessary with only 1 entry.

Rob

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
