Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C74757366
	for <lists+linux-riscv@lfdr.de>; Wed, 26 Jun 2019 23:13:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UsIFcQ5NoH+YzOqyKFLOckIxmX5SpgG5o6W2FrJbPPQ=; b=NChQ5CCnN83FNZ
	1dJq0bJz/yiOEKefqSNnnLY+cANR58055N01nEvo3VU3g/CuwrGksxiQryhJgv/YxckxS3e3d5TUi
	+WdpuXReDtjkJoe7xzaV9Bu4OcCuDUcf9bd0IjSB20doWbZD4rAFkDiVJBjobIq2rL6uBOMNb24rx
	jPBCWIhH7c640DUMzaN+KNXCxztrm6zRb9osDOcGbXibz7scAjZAXOHD9PFAHfyXq2m05MbOLQ6/T
	n5hs8Ovu/rM3w3ul0olB8kPcMH2fO+KT+rMt7yLqlwN36/kVVpU/tygD6Oyok2NChQb1224boOI99
	YZEVqiPGfN/tbZeVoZsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgFEG-0007Dw-DH; Wed, 26 Jun 2019 21:13:20 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgFED-0007D0-I5
 for linux-riscv@lists.infradead.org; Wed, 26 Jun 2019 21:13:18 +0000
Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com
 [209.85.160.182])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1CB8E216FD
 for <linux-riscv@lists.infradead.org>; Wed, 26 Jun 2019 21:13:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561583595;
 bh=7SVWpkHfE1YSV+N/YHXLrqpwi2xY8ZGPFSN0/F5f1z8=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=P6KTBhC+F/EO0xRie2KzrytWpnbthLtNnNcA1O1CHoYOufReynLjrbUKH8tP/IJyf
 YkW2CU0ajlyohcTpRA4LAs/gR5EYFi0dDz3ERe7xEn2XYFO8OcKNGTsbThatT6r7iW
 kTu0yyk/dFkfOHidfUTo/tsM122g0lW4nM1Jrk44=
Received: by mail-qt1-f182.google.com with SMTP id s15so146931qtk.9
 for <linux-riscv@lists.infradead.org>; Wed, 26 Jun 2019 14:13:15 -0700 (PDT)
X-Gm-Message-State: APjAAAWEuElK1DF5pa5Rq1a6eBxBPN19zqWFQaHdYCHk090VVyoYsI1x
 kQZcK0PLRf1qaxe5h8SUYy7v0tzKzkQvhc59dQ==
X-Google-Smtp-Source: APXvYqwnbzOwxsMo5plFFHnNkc3/fBWExNYMCSeiPhxlbzm/rEHvIW7+gT0AVvZYTT1kJJVR0/T5TqwLnDTpuk+biqg=
X-Received: by 2002:ac8:36b9:: with SMTP id a54mr15141qtc.300.1561583594362;
 Wed, 26 Jun 2019 14:13:14 -0700 (PDT)
MIME-Version: 1.0
References: <alpine.DEB.2.21.9999.1906260829030.21507@viisi.sifive.com>
 <CAL_JsqJs6MtvmuyAknsUxQymbmoV=G+=JfS1PQj9kNHV7fjC9g@mail.gmail.com>
 <alpine.DEB.2.21.9999.1906261325290.23534@viisi.sifive.com>
In-Reply-To: <alpine.DEB.2.21.9999.1906261325290.23534@viisi.sifive.com>
From: Rob Herring <robh@kernel.org>
Date: Wed, 26 Jun 2019 15:13:03 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+r08p7ZSt=2XMfR5eZna26wKvG6j-7aBa2Cxbbg6hCHw@mail.gmail.com>
Message-ID: <CAL_Jsq+r08p7ZSt=2XMfR5eZna26wKvG6j-7aBa2Cxbbg6hCHw@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: riscv: resolve 'make dt_binding_check'
 warnings
To: Paul Walmsley <paul.walmsley@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_141317_635510_AD623B6C 
X-CRM114-Status: GOOD (  15.66  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-riscv@lists.infradead.org,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, Jun 26, 2019 at 2:27 PM Paul Walmsley <paul.walmsley@sifive.com> wrote:
>
> On Wed, 26 Jun 2019, Rob Herring wrote:
>
> > On Wed, Jun 26, 2019 at 9:30 AM Paul Walmsley <paul.walmsley@sifive.com> wrote:
> > >
> > > Rob pointed out that one of the examples in the RISC-V 'cpus' YAML schema
> > > results in warnings from 'make dt_binding_check'.  Fix these.
> > >
> > > While here, make the whitespace in the second example consistent with the
> > > first example.
> > >
> > > Signed-off-by: Paul Walmsley <paul.walmsley@sifive.com>
> > > Cc: Rob Herring <robh@kernel.org>
> > > ---
> > >  .../devicetree/bindings/riscv/cpus.yaml       | 26 ++++++++++---------
> > >  1 file changed, 14 insertions(+), 12 deletions(-)
> > >
> > > diff --git a/Documentation/devicetree/bindings/riscv/cpus.yaml b/Documentation/devicetree/bindings/riscv/cpus.yaml
> > > index 27f02ec4bb45..f97a4ecd7b91 100644
> > > --- a/Documentation/devicetree/bindings/riscv/cpus.yaml
> > > +++ b/Documentation/devicetree/bindings/riscv/cpus.yaml
> > > @@ -152,17 +152,19 @@ examples:
> > >    - |
> > >      // Example 2: Spike ISA Simulator with 1 Hart
> > >      cpus {
> > > -            cpu@0 {
> > > -                    device_type = "cpu";
> > > -                    reg = <0>;
> > > -                    compatible = "riscv";
> > > -                    riscv,isa = "rv64imafdc";
> > > -                    mmu-type = "riscv,sv48";
> > > -                    interrupt-controller {
> > > -                            #interrupt-cells = <1>;
> > > -                            interrupt-controller;
> > > -                            compatible = "riscv,cpu-intc";
> > > -                    };
> > > -            };
> > > +        #address-cells = <1>;
> > > +        #size-cells = <0>;
> > > +        cpu@0 {
> >
> > This only works because you removed 'cpus' and therefore none of this
> > schema is applied.
>
> I'm not following you - could you point out where "cpus" was removed?

Sorry, I guess the indentation change threw me off...

For fixing the dtc warnings:

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
