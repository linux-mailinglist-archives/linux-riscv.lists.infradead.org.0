Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98138BE8ED
	for <lists+linux-riscv@lfdr.de>; Thu, 26 Sep 2019 01:29:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V+jsR22KTPbbwawcHAflkicxf6CtFZD5DcqiZW5oMVA=; b=d42aCZR7xL6gs0
	YJA1pdqq4tmoC5K4iYLg524fjfVAFwYKi1TWHgUzubxZhCR6ChJhgWpnP4g/HybGvELlvQb61Tl0x
	5stsBdm3qMl4AbrUgXg1rgeClIHRT5FUy80Mtoz/WJPOkFU8oZ2SYdER3R9jkSUmP+silwNw/DTpV
	Sqzz9dBSsqniWmFXL1UgRW1/Repc7rEsBSs3oiuODSq66hjqNpHfJC3K3wc/oShpLrm17Tobr7BMB
	btW+zdJb3BjHauXQRZptrw1UKDdBOxP+XpoVA+74oMOwm5xGdmFklqv7pYRFKHm7EXC8OpJiW5gq0
	8LJxV67lvrRsM5SYl+sg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDGiv-0004eL-Oa; Wed, 25 Sep 2019 23:29:29 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDGiq-0004dv-7y
 for linux-riscv@lists.infradead.org; Wed, 25 Sep 2019 23:29:26 +0000
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com
 [209.85.160.181])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5444E21D7F
 for <linux-riscv@lists.infradead.org>; Wed, 25 Sep 2019 23:29:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1569454163;
 bh=Ogg+uhTUXRNcF6bTJQEM/wrb2sVSMMLx7Q3Fdy6eWac=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=0jz1v3MjS3mMCH8E6uViwYWmbwPNI1iTIFvCgg2g+HqOWPkCtIOwT01xXy6cy/+il
 keRrKEhT6RTgKwp14lw2Eo27EFSeq6flnQMyNKfJ3UqFtnZfyWPEkzwWxmIDzaMkSQ
 lRLbhLNprKDr74pstGkHjAsyUs3aUShzL9/yKEn0=
Received: by mail-qt1-f181.google.com with SMTP id r5so657756qtd.0
 for <linux-riscv@lists.infradead.org>; Wed, 25 Sep 2019 16:29:23 -0700 (PDT)
X-Gm-Message-State: APjAAAW7kpuWiN2e9mVf8NVYmmUMsVOjTZ7hX1O1Dn2p+nfnrRxzKMW/
 YBmk83FHA5MA8rfNTPMGyMa5FD8nJ7g1HjZqiw==
X-Google-Smtp-Source: APXvYqyVnFfKD4/M5dyzxw92n4hx9dvyADlYPxaSGLejDMBQ+TSPDAwfcMApLzsyRir8CgdchHqVSeqSR5dpXSyyVWI=
X-Received: by 2002:ac8:444f:: with SMTP id m15mr1101854qtn.110.1569454162399; 
 Wed, 25 Sep 2019 16:29:22 -0700 (PDT)
MIME-Version: 1.0
References: <20190925131252.19359-1-robh@kernel.org>
 <mhng-c69fa4ff-9752-4ded-8a4f-ae86113bd9ae@palmer-si-x1e>
In-Reply-To: <mhng-c69fa4ff-9752-4ded-8a4f-ae86113bd9ae@palmer-si-x1e>
From: Rob Herring <robh@kernel.org>
Date: Wed, 25 Sep 2019 18:29:10 -0500
X-Gmail-Original-Message-ID: <CAL_JsqJH59Hh6SkQyyAGkK21dR5DJxzja8GPYd3mg+kEVQ-0EQ@mail.gmail.com>
Message-ID: <CAL_JsqJH59Hh6SkQyyAGkK21dR5DJxzja8GPYd3mg+kEVQ-0EQ@mail.gmail.com>
Subject: Re: [PATCH v2] dt-bindings: riscv: Fix CPU schema errors
To: Palmer Dabbelt <palmer@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_162924_328564_0EB97120 
X-CRM114-Status: GOOD (  25.56  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
 Albert Ou <aou@eecs.berkeley.edu>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Paul Walmsley <paul.walmsley@sifive.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, Sep 25, 2019 at 4:24 PM Palmer Dabbelt <palmer@sifive.com> wrote:
>
> On Wed, 25 Sep 2019 06:12:52 PDT (-0700), robh@kernel.org wrote:
> > Fix the errors in the RiscV CPU DT schema:
> >
> > Documentation/devicetree/bindings/riscv/cpus.example.dt.yaml: cpu@0: 'timebase-frequency' is a required property
> > Documentation/devicetree/bindings/riscv/cpus.example.dt.yaml: cpu@1: 'timebase-frequency' is a required property
> > Documentation/devicetree/bindings/riscv/cpus.example.dt.yaml: cpu@0: compatible:0: 'riscv' is not one of ['sifive,rocket0', 'sifive,e5', 'sifive,e51', 'sifive,u54-mc', 'sifive,u54', 'sifive,u5']
> > Documentation/devicetree/bindings/riscv/cpus.example.dt.yaml: cpu@0: compatible: ['riscv'] is too short
> > Documentation/devicetree/bindings/riscv/cpus.example.dt.yaml: cpu@0: 'timebase-frequency' is a required property
> >
> > Fixes: 4fd669a8c487 ("dt-bindings: riscv: convert cpu binding to json-schema")
> > Cc: Paul Walmsley <paul.walmsley@sifive.com>
> > Cc: Palmer Dabbelt <palmer@sifive.com>
> > Cc: Albert Ou <aou@eecs.berkeley.edu>
> > Cc: linux-riscv@lists.infradead.org
> > Signed-off-by: Rob Herring <robh@kernel.org>
> > ---
> > v2:
> >  - Add timebase-frequency to simulator example.
> >
> >  .../devicetree/bindings/riscv/cpus.yaml       | 26 ++++++++++---------
> >  1 file changed, 14 insertions(+), 12 deletions(-)
> >
> > diff --git a/Documentation/devicetree/bindings/riscv/cpus.yaml b/Documentation/devicetree/bindings/riscv/cpus.yaml
> > index b261a3015f84..eb0ef19829b6 100644
> > --- a/Documentation/devicetree/bindings/riscv/cpus.yaml
> > +++ b/Documentation/devicetree/bindings/riscv/cpus.yaml
> > @@ -24,15 +24,17 @@ description: |
> >
> >  properties:
> >    compatible:
> > -    items:
> > -      - enum:
> > -          - sifive,rocket0
> > -          - sifive,e5
> > -          - sifive,e51
> > -          - sifive,u54-mc
> > -          - sifive,u54
> > -          - sifive,u5
> > -      - const: riscv
> > +    oneOf:
> > +      - items:
> > +          - enum:
> > +              - sifive,rocket0
> > +              - sifive,e5
> > +              - sifive,e51
> > +              - sifive,u54-mc
> > +              - sifive,u54
> > +              - sifive,u5
> > +          - const: riscv
> > +      - const: riscv    # Simulator only
> >      description:
> >        Identifies that the hart uses the RISC-V instruction set
> >        and identifies the type of the hart.
> > @@ -67,8 +69,6 @@ properties:
> >        lowercase to simplify parsing.
> >
> >    timebase-frequency:
> > -    type: integer
> > -    minimum: 1
> >      description:
> >        Specifies the clock frequency of the system timer in Hz.
> >        This value is common to all harts on a single system image.
> > @@ -102,9 +102,9 @@ examples:
> >      cpus {
> >          #address-cells = <1>;
> >          #size-cells = <0>;
> > -        timebase-frequency = <1000000>;
> >          cpu@0 {
> >                  clock-frequency = <0>;
> > +                timebase-frequency = <1000000>;
> >                  compatible = "sifive,rocket0", "riscv";
> >                  device_type = "cpu";
> >                  i-cache-block-size = <64>;
> > @@ -120,6 +120,7 @@ examples:
> >          };
> >          cpu@1 {
> >                  clock-frequency = <0>;
> > +                timebase-frequency = <1000000>;
> >                  compatible = "sifive,rocket0", "riscv";
> >                  d-cache-block-size = <64>;
> >                  d-cache-sets = <64>;
> > @@ -153,6 +154,7 @@ examples:
> >                  device_type = "cpu";
> >                  reg = <0>;
> >                  compatible = "riscv";
> > +                timebase-frequency = <1000000>;
> >                  riscv,isa = "rv64imafdc";
> >                  mmu-type = "riscv,sv48";
> >                  interrupt-controller {
>
> Looking at this spec
>
>     https://github.com/devicetree-org/devicetree-specification/releases/download/v0.2/devicetree-specification-v0.2.pdf
>
> section 3.7 says
>
>     Properties that have identical values across cpu nodes may be placed in the
>     /cpus node instead. A client program must
>     first examine a specific cpu node, but if an expected property is not found
>     then it should look at the parent /cpus node.
>     This results in a less verbose representation of properties which are
>     identical across all CPUs.

The cpu sections of the spec are certainly not perfect. They are
largely from PPC with only the most obviously things wrong fixed...

> I can never figure out if I'm looking at the right DT specifications so it's
> possible that is defunct,

Why? What's not clear which one to look at? If you start at
devicetree.org the above is where you end up.

> I just bring this up because we've got an outstanding
> bug in our port where we're not respecting what section 3.7 says and are only
> looking at /cpus/timebase-frequency instead of /cpus/cpu@*/timebase-frequency,
> and I'm wondering if the fix should allow for looking at
> /cpus/timebase-frequency or just not bother.

It's perfectly fine for some deviation for each arch or being more
restrictive. For Arm, we've generally gone the direction of everything
goes into the cpu nodes. So tell me what you want, I just need the
warnings gone.

Rob

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
