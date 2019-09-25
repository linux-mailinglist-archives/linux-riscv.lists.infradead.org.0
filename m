Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D247BE703
	for <lists+linux-riscv@lfdr.de>; Wed, 25 Sep 2019 23:24:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Mime-Version:Message-ID:To:From:In-Reply-To:Subject:
	Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	 bh=ydLRHEdDwiXwR7gBclEGd2zt6dNUUdLwySJ5gt/edIg=; b=H+kwuV+POkKzLrlmBHw0s4dJ+
	vuDo7MfYCXbSKS4yNHM8G4k0IgrjWJI9YX+9NbAV61z3+iGbn4jzxrwDQq0E+W5O22h6gcxDrJJvy
	cj4zQbfw+HiGfALZSo0ZPUSzzPwCwd0vuM5c90xA7O2zxXZ7DPfYfw+3w3k+gzFPsV9aE12kZv16q
	r1/Nlo5j1FbyRdJMRkIYHvQCsoXo3Pkhd7DOygIwgD/xx76tcEyF8FBuDVB1pLl/2vGpFdCzb/nuT
	YWSE+CqNh5c84fUpRlRlcH66cx990dOY6MEFCNggH0IpUkCP7hPqc8+d1HyXtvh9wvZOxfBY4rJZk
	wLwpix8uw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDEls-00049m-Js; Wed, 25 Sep 2019 21:24:24 +0000
Received: from mail-pl1-f194.google.com ([209.85.214.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDElo-00048n-Li
 for linux-riscv@lists.infradead.org; Wed, 25 Sep 2019 21:24:22 +0000
Received: by mail-pl1-f194.google.com with SMTP id d22so187138pll.7
 for <linux-riscv@lists.infradead.org>; Wed, 25 Sep 2019 14:24:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=Bg76ABOLDvzkhoqAzUmInH7lsqAvMASqxxpTEuCtlfU=;
 b=rlq2G/af2JWHiXooAL0clCDavIjsDgnze2UdE6yVWgXuF5XJUCcq6DXqA3UJXIXc7C
 gZzHLrI9e4U2zHKfR9NNKf2sTE1CmbiGervzkS0Y8I62djTPSY29GEj8Tr7XMAyl5ovs
 gX6U6I4CEZSvm5Cw8UBtABF1D0foKDUt1/rLFw5vrmW1jbQaoNowRDzAcYlT7lLc3l15
 Q8pjn/rsmxz6n5YxLL2IcO57Slx6mpZ4mqolOZz8yzh6JypNZ/V5j67zGRWDzc21deq/
 etMgUwCT1KKXZN9qJviv4/9Cxe1f4SSpl7HL9/lRkAYuD+I7bORGsMGTV74hre6+hKg3
 ZGbA==
X-Gm-Message-State: APjAAAVTndbxXxioeEOmd5zuBSk+rFzizEcOZsTjSL6oAFvPQ/Deb5vM
 szkDOy9PurpHfWBdKqulTV2J3A==
X-Google-Smtp-Source: APXvYqzV3+50+lIHsJuDERolqp33oVDd9PnCnXIDA8KlRQf10bOdvBbQaagf0eDhLQIEFnn5zkKabw==
X-Received: by 2002:a17:902:b40b:: with SMTP id
 x11mr133569plr.87.1569446658383; 
 Wed, 25 Sep 2019 14:24:18 -0700 (PDT)
Received: from localhost ([12.206.222.5])
 by smtp.gmail.com with ESMTPSA id q204sm5011083pfc.11.2019.09.25.14.24.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 25 Sep 2019 14:24:17 -0700 (PDT)
Date: Wed, 25 Sep 2019 14:24:17 -0700 (PDT)
X-Google-Original-Date: Wed, 25 Sep 2019 14:24:16 PDT (-0700)
Subject: Re: [PATCH v2] dt-bindings: riscv: Fix CPU schema errors
In-Reply-To: <20190925131252.19359-1-robh@kernel.org>
From: Palmer Dabbelt <palmer@sifive.com>
To: robh@kernel.org
Message-ID: <mhng-c69fa4ff-9752-4ded-8a4f-ae86113bd9ae@palmer-si-x1e>
Mime-Version: 1.0 (MHng)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_142420_714161_B83385CF 
X-CRM114-Status: GOOD (  20.10  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.194 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.194 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 aou@eecs.berkeley.edu, linux-kernel@vger.kernel.org,
 Paul Walmsley <paul.walmsley@sifive.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, 25 Sep 2019 06:12:52 PDT (-0700), robh@kernel.org wrote:
> Fix the errors in the RiscV CPU DT schema:
>
> Documentation/devicetree/bindings/riscv/cpus.example.dt.yaml: cpu@0: 'timebase-frequency' is a required property
> Documentation/devicetree/bindings/riscv/cpus.example.dt.yaml: cpu@1: 'timebase-frequency' is a required property
> Documentation/devicetree/bindings/riscv/cpus.example.dt.yaml: cpu@0: compatible:0: 'riscv' is not one of ['sifive,rocket0', 'sifive,e5', 'sifive,e51', 'sifive,u54-mc', 'sifive,u54', 'sifive,u5']
> Documentation/devicetree/bindings/riscv/cpus.example.dt.yaml: cpu@0: compatible: ['riscv'] is too short
> Documentation/devicetree/bindings/riscv/cpus.example.dt.yaml: cpu@0: 'timebase-frequency' is a required property
>
> Fixes: 4fd669a8c487 ("dt-bindings: riscv: convert cpu binding to json-schema")
> Cc: Paul Walmsley <paul.walmsley@sifive.com>
> Cc: Palmer Dabbelt <palmer@sifive.com>
> Cc: Albert Ou <aou@eecs.berkeley.edu>
> Cc: linux-riscv@lists.infradead.org
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---
> v2:
>  - Add timebase-frequency to simulator example.
>
>  .../devicetree/bindings/riscv/cpus.yaml       | 26 ++++++++++---------
>  1 file changed, 14 insertions(+), 12 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/riscv/cpus.yaml b/Documentation/devicetree/bindings/riscv/cpus.yaml
> index b261a3015f84..eb0ef19829b6 100644
> --- a/Documentation/devicetree/bindings/riscv/cpus.yaml
> +++ b/Documentation/devicetree/bindings/riscv/cpus.yaml
> @@ -24,15 +24,17 @@ description: |
>
>  properties:
>    compatible:
> -    items:
> -      - enum:
> -          - sifive,rocket0
> -          - sifive,e5
> -          - sifive,e51
> -          - sifive,u54-mc
> -          - sifive,u54
> -          - sifive,u5
> -      - const: riscv
> +    oneOf:
> +      - items:
> +          - enum:
> +              - sifive,rocket0
> +              - sifive,e5
> +              - sifive,e51
> +              - sifive,u54-mc
> +              - sifive,u54
> +              - sifive,u5
> +          - const: riscv
> +      - const: riscv    # Simulator only
>      description:
>        Identifies that the hart uses the RISC-V instruction set
>        and identifies the type of the hart.
> @@ -67,8 +69,6 @@ properties:
>        lowercase to simplify parsing.
>
>    timebase-frequency:
> -    type: integer
> -    minimum: 1
>      description:
>        Specifies the clock frequency of the system timer in Hz.
>        This value is common to all harts on a single system image.
> @@ -102,9 +102,9 @@ examples:
>      cpus {
>          #address-cells = <1>;
>          #size-cells = <0>;
> -        timebase-frequency = <1000000>;
>          cpu@0 {
>                  clock-frequency = <0>;
> +                timebase-frequency = <1000000>;
>                  compatible = "sifive,rocket0", "riscv";
>                  device_type = "cpu";
>                  i-cache-block-size = <64>;
> @@ -120,6 +120,7 @@ examples:
>          };
>          cpu@1 {
>                  clock-frequency = <0>;
> +                timebase-frequency = <1000000>;
>                  compatible = "sifive,rocket0", "riscv";
>                  d-cache-block-size = <64>;
>                  d-cache-sets = <64>;
> @@ -153,6 +154,7 @@ examples:
>                  device_type = "cpu";
>                  reg = <0>;
>                  compatible = "riscv";
> +                timebase-frequency = <1000000>;
>                  riscv,isa = "rv64imafdc";
>                  mmu-type = "riscv,sv48";
>                  interrupt-controller {

Looking at this spec

    https://github.com/devicetree-org/devicetree-specification/releases/download/v0.2/devicetree-specification-v0.2.pdf

section 3.7 says

    Properties that have identical values across cpu nodes may be placed in the 
    /cpus node instead. A client program must
    first examine a specific cpu node, but if an expected property is not found 
    then it should look at the parent /cpus node.
    This results in a less verbose representation of properties which are 
    identical across all CPUs.

I can never figure out if I'm looking at the right DT specifications so it's 
possible that is defunct, I just bring this up because we've got an outstanding 
bug in our port where we're not respecting what section 3.7 says and are only 
looking at /cpus/timebase-frequency instead of /cpus/cpu@*/timebase-frequency, 
and I'm wondering if the fix should allow for looking at 
/cpus/timebase-frequency or just not bother.

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
