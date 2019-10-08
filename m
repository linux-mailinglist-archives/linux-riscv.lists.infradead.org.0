Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3B45D0237
	for <lists+linux-riscv@lfdr.de>; Tue,  8 Oct 2019 22:36:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GkRBlMvXcd9KDunPWp4eSS6IiqQWD3qQPqoooTWH+tA=; b=hyELCG2BGYGqSA
	oxBjOkBUYGO3PUdUktUIjY3qqJwS8JHCQj6wMLpUkZLRL/lJfX98Yv+lPDE9aVC5u6mZifsVtSEp+
	WY4Pi3NEWZe9PjqWg9lY7u63b8KEZnS/chhgconTOE9D+yVk9jkiCBQTvCbCimE+61KZe3RblZm67
	wStQA/I/lXPs+Zl8wtKpToyRCMbPcCxmGs7YjneIikhQN14p1qCvKff5OupkSJ7pPpP+RTj6W0enc
	ADMeW+m3oA+uHNnZzDE3wfDR50xNceBgf99KvSlDILE/jXIqw9F2P8sCZKOaAHIA5Ttndlg9dhlRq
	O5J6x4DS1v/0Y53ez1tw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHwDf-00026P-73; Tue, 08 Oct 2019 20:36:31 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHwDa-00025H-CE
 for linux-riscv@lists.infradead.org; Tue, 08 Oct 2019 20:36:28 +0000
Received: by mail-io1-xd42.google.com with SMTP id z19so33894ior.0
 for <linux-riscv@lists.infradead.org>; Tue, 08 Oct 2019 13:36:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=8OWcoGS3BEEoyWgrBo7bn7YYjPQqdrXR3vAw8gPm390=;
 b=EuCNcLZVNf49hDvCPEgJMlmxJKp6smESQklkNVCOknnb3tENPXH9DS2w2K6gUPaD9p
 mxOpyyAZ5mCYKmDxd6VdYLB4IFs962l+pZaSzoDSReYOXxT4vGkjjYvR5d/dfOdCrbcA
 PISeEiH+FfU7yJSOO9NgNqCV3rdSNXCW9aBXyGLAwfb/gHS+LfHDwOxxA4Dvw7ELV58L
 PIBBH+NOOSwq0FQ6LVfO+QdFvli5+QaXowwSSBNxCwrUJ3ssW7u9Tx++WWogJ0noAeeG
 d6E5GsIWbfSA/ALTqgEOdvj+RG0a/5q5RQdR0mn3/l6sLMYPIyWoYoBjVGsierSY4FYs
 jibw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=8OWcoGS3BEEoyWgrBo7bn7YYjPQqdrXR3vAw8gPm390=;
 b=CLwLmpciYhsumjflk33A9fODfwrasf+4SfGkzDmLcixZtzwTLb3FZEmpuNUQ9tGS0z
 bz3NSaF4B55OkCrRR57O9QKt80Nti5rjgf64Q98ZtelDScZrgnNkKeUvxV0ETv8v60M2
 apS4CtUzL0RJjxfxoQ7Fq7NP0X/XJGr+7rnd/i9VSJRKm9zgG6rfGgOGVRescwCqUHrA
 YnkoCVZwF+7I3E4j1Bil2c4d+7j9Brai6deKzIMd/facYgyfMwsHGOPFWDggLRyzvktY
 qt/4q+NbQJutilL0qwHh+ARS4d+/G4hVzqglO01nvukk9p+nIePP295Tlx9JoDtUvKzF
 fmrw==
X-Gm-Message-State: APjAAAXSE0T9DxSFxIMLIz72i2A6oLyC2EpAriz36wl5iIplhQpPlQ6j
 FOKFdzythqXm594qvzjRFd5dZg==
X-Google-Smtp-Source: APXvYqwBqjyeU3Cg2keKhMlMOaj+hMyVHG3lx22lajI0kyUD1bGOC51pzjYdIC3h69pazyBEnAbR2Q==
X-Received: by 2002:a92:d7ce:: with SMTP id g14mr23019363ilq.269.1570566982399; 
 Tue, 08 Oct 2019 13:36:22 -0700 (PDT)
Received: from localhost ([64.62.168.194])
 by smtp.gmail.com with ESMTPSA id m9sm39438ion.65.2019.10.08.13.36.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 08 Oct 2019 13:36:21 -0700 (PDT)
Date: Tue, 8 Oct 2019 13:36:20 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v2] dt-bindings: riscv: Fix CPU schema errors
In-Reply-To: <CAL_JsqJH59Hh6SkQyyAGkK21dR5DJxzja8GPYd3mg+kEVQ-0EQ@mail.gmail.com>
Message-ID: <alpine.DEB.2.21.9999.1910081329160.11044@viisi.sifive.com>
References: <20190925131252.19359-1-robh@kernel.org>
 <mhng-c69fa4ff-9752-4ded-8a4f-ae86113bd9ae@palmer-si-x1e>
 <CAL_JsqJH59Hh6SkQyyAGkK21dR5DJxzja8GPYd3mg+kEVQ-0EQ@mail.gmail.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_133626_418117_52201F66 
X-CRM114-Status: GOOD (  27.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
 Palmer Dabbelt <palmer@sifive.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Albert Ou <aou@eecs.berkeley.edu>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, 25 Sep 2019, Rob Herring wrote:

> On Wed, Sep 25, 2019 at 4:24 PM Palmer Dabbelt <palmer@sifive.com> wrote:
> >
> > On Wed, 25 Sep 2019 06:12:52 PDT (-0700), robh@kernel.org wrote:
> > > Fix the errors in the RiscV CPU DT schema:
> > >
> > > Documentation/devicetree/bindings/riscv/cpus.example.dt.yaml: cpu@0: 'timebase-frequency' is a required property
> > > Documentation/devicetree/bindings/riscv/cpus.example.dt.yaml: cpu@1: 'timebase-frequency' is a required property
> > > Documentation/devicetree/bindings/riscv/cpus.example.dt.yaml: cpu@0: compatible:0: 'riscv' is not one of ['sifive,rocket0', 'sifive,e5', 'sifive,e51', 'sifive,u54-mc', 'sifive,u54', 'sifive,u5']
> > > Documentation/devicetree/bindings/riscv/cpus.example.dt.yaml: cpu@0: compatible: ['riscv'] is too short
> > > Documentation/devicetree/bindings/riscv/cpus.example.dt.yaml: cpu@0: 'timebase-frequency' is a required property
> > >
> > > Fixes: 4fd669a8c487 ("dt-bindings: riscv: convert cpu binding to json-schema")
> > > Cc: Paul Walmsley <paul.walmsley@sifive.com>
> > > Cc: Palmer Dabbelt <palmer@sifive.com>
> > > Cc: Albert Ou <aou@eecs.berkeley.edu>
> > > Cc: linux-riscv@lists.infradead.org
> > > Signed-off-by: Rob Herring <robh@kernel.org>
> > > ---
> > > v2:
> > >  - Add timebase-frequency to simulator example.
> > >
> > >  .../devicetree/bindings/riscv/cpus.yaml       | 26 ++++++++++---------
> > >  1 file changed, 14 insertions(+), 12 deletions(-)
> > >
> > > diff --git a/Documentation/devicetree/bindings/riscv/cpus.yaml b/Documentation/devicetree/bindings/riscv/cpus.yaml
> > > index b261a3015f84..eb0ef19829b6 100644
> > > --- a/Documentation/devicetree/bindings/riscv/cpus.yaml
> > > +++ b/Documentation/devicetree/bindings/riscv/cpus.yaml
> > > @@ -24,15 +24,17 @@ description: |
> > >
> > >  properties:
> > >    compatible:
> > > -    items:
> > > -      - enum:
> > > -          - sifive,rocket0
> > > -          - sifive,e5
> > > -          - sifive,e51
> > > -          - sifive,u54-mc
> > > -          - sifive,u54
> > > -          - sifive,u5
> > > -      - const: riscv
> > > +    oneOf:
> > > +      - items:
> > > +          - enum:
> > > +              - sifive,rocket0
> > > +              - sifive,e5
> > > +              - sifive,e51
> > > +              - sifive,u54-mc
> > > +              - sifive,u54
> > > +              - sifive,u5
> > > +          - const: riscv
> > > +      - const: riscv    # Simulator only
> > >      description:
> > >        Identifies that the hart uses the RISC-V instruction set
> > >        and identifies the type of the hart.

The above part of this patch looks fine to me, and please consider that 
portion of this patch acked.

> > > @@ -67,8 +69,6 @@ properties:
> > >        lowercase to simplify parsing.
> > >
> > >    timebase-frequency:
> > > -    type: integer
> > > -    minimum: 1
> > >      description:
> > >        Specifies the clock frequency of the system timer in Hz.
> > >        This value is common to all harts on a single system image.
> > > @@ -102,9 +102,9 @@ examples:
> > >      cpus {
> > >          #address-cells = <1>;
> > >          #size-cells = <0>;
> > > -        timebase-frequency = <1000000>;
> > >          cpu@0 {
> > >                  clock-frequency = <0>;
> > > +                timebase-frequency = <1000000>;
> > >                  compatible = "sifive,rocket0", "riscv";
> > >                  device_type = "cpu";
> > >                  i-cache-block-size = <64>;
> > > @@ -120,6 +120,7 @@ examples:
> > >          };
> > >          cpu@1 {
> > >                  clock-frequency = <0>;
> > > +                timebase-frequency = <1000000>;
> > >                  compatible = "sifive,rocket0", "riscv";
> > >                  d-cache-block-size = <64>;
> > >                  d-cache-sets = <64>;
> > > @@ -153,6 +154,7 @@ examples:
> > >                  device_type = "cpu";
> > >                  reg = <0>;
> > >                  compatible = "riscv";
> > > +                timebase-frequency = <1000000>;
> > >                  riscv,isa = "rv64imafdc";
> > >                  mmu-type = "riscv,sv48";
> > >                  interrupt-controller {
> >
> > Looking at this spec
> >
> >     https://github.com/devicetree-org/devicetree-specification/releases/download/v0.2/devicetree-specification-v0.2.pdf
> >
> > section 3.7 says
> >
> >     Properties that have identical values across cpu nodes may be placed in the
> >     /cpus node instead. A client program must
> >     first examine a specific cpu node, but if an expected property is not found
> >     then it should look at the parent /cpus node.
> >     This results in a less verbose representation of properties which are
> >     identical across all CPUs.
> 
> The cpu sections of the spec are certainly not perfect. They are
> largely from PPC with only the most obviously things wrong fixed...

[ ... ]

> > I just bring this up because we've got an outstanding
> > bug in our port where we're not respecting what section 3.7 says and are only
> > looking at /cpus/timebase-frequency instead of /cpus/cpu@*/timebase-frequency,
> > and I'm wondering if the fix should allow for looking at
> > /cpus/timebase-frequency or just not bother.
> 
> It's perfectly fine for some deviation for each arch or being more
> restrictive. For Arm, we've generally gone the direction of everything
> goes into the cpu nodes. So tell me what you want, I just need the
> warnings gone.

We probably should keep the timebase-frequency at the /cpus level, since 
that's how the current public silicon behaves, and that's how our kernel 
code currently works.  Do you want to patch the schemas for that, or would 
you like us to?


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
