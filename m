Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AB1F57007
	for <lists+linux-riscv@lfdr.de>; Wed, 26 Jun 2019 19:52:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BQTIl2M2LElv/Ao1/zXNTWoiyFjGBhUiJIKEogTjkik=; b=PrBYmcDO7hvH+C
	Vtt/HMNzsHLstwG4T3wXHYYkftbYZrTXScLGa8F43U5OzhFIds2VCrsC6vwW4/9flErE1bm+10/Ga
	ArglyzMJGkQqijylENuRT4YswOPXFJhzSNPvO/L3PNQMT+oazEaOMcYklApgV5EhlCQK+GFNHx8Yh
	gxh/61KiFpC+ibKCNc2AfrUH6gywTe5rLvMVYvzUrNZFtn33ENg4fjVaDlCaAIIUyJxGyWniBhSde
	++TB7uiqCcFHidvVt7CWm039TTJfTOJANQf+gUfmalFg+oOJHNG/6u7OEsFQOl7oFgPNKXqTw2KFV
	ChKSDwkOwx09etCF1zpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgC5x-0005Sk-Gg; Wed, 26 Jun 2019 17:52:33 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgC5s-0005SF-Ht
 for linux-riscv@lists.infradead.org; Wed, 26 Jun 2019 17:52:30 +0000
Received: from mail-qk1-f177.google.com (mail-qk1-f177.google.com
 [209.85.222.177])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E78A821743
 for <linux-riscv@lists.infradead.org>; Wed, 26 Jun 2019 17:52:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561571548;
 bh=S4bu6cwTK6G6hRMIv9GnhZMiK0UIi3WZJaspSurZK8c=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=iTGLj9aHRqtXaoP5kL+6QCzw5thEdaa1+j11XVbxBG4Xkir9g9ETqPKwLPjOnFrtb
 dPSzi7QPpH3sx0BlkgIrs0kdLYCzA9MHJSn3bbfpR1/yrVvWvuPjkt1W2a/6P4cA5q
 4NerJND/1KUOAE4bg7+g2SrLx6VU0Q1YF/aUlksU=
Received: by mail-qk1-f177.google.com with SMTP id c70so2402664qkg.7
 for <linux-riscv@lists.infradead.org>; Wed, 26 Jun 2019 10:52:27 -0700 (PDT)
X-Gm-Message-State: APjAAAUcmQDejO1/rIUD350obpoEearnl7b4K5lbIcmDkKZjmk1X8lBJ
 1AF6S/2yvkzbJzgfS3sPROQouYBblxGi59H6nA==
X-Google-Smtp-Source: APXvYqzYhMv6rHrklns2vFmg1wcR2zD/R9gJFkeBnxKK/fLi2eSyCZ0bHo4Q8sz4Of0SuTqILRJ4kcOafVCphnT/TOk=
X-Received: by 2002:ae9:ebd1:: with SMTP id b200mr5212035qkg.152.1561571547170; 
 Wed, 26 Jun 2019 10:52:27 -0700 (PDT)
MIME-Version: 1.0
References: <alpine.DEB.2.21.9999.1906260829030.21507@viisi.sifive.com>
In-Reply-To: <alpine.DEB.2.21.9999.1906260829030.21507@viisi.sifive.com>
From: Rob Herring <robh@kernel.org>
Date: Wed, 26 Jun 2019 11:52:15 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJs6MtvmuyAknsUxQymbmoV=G+=JfS1PQj9kNHV7fjC9g@mail.gmail.com>
Message-ID: <CAL_JsqJs6MtvmuyAknsUxQymbmoV=G+=JfS1PQj9kNHV7fjC9g@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: riscv: resolve 'make dt_binding_check'
 warnings
To: Paul Walmsley <paul.walmsley@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_105228_624371_591487C2 
X-CRM114-Status: GOOD (  15.93  )
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

On Wed, Jun 26, 2019 at 9:30 AM Paul Walmsley <paul.walmsley@sifive.com> wrote:
>
>
> Rob pointed out that one of the examples in the RISC-V 'cpus' YAML schema
> results in warnings from 'make dt_binding_check'.  Fix these.
>
> While here, make the whitespace in the second example consistent with the
> first example.
>
> Signed-off-by: Paul Walmsley <paul.walmsley@sifive.com>
> Cc: Rob Herring <robh@kernel.org>
> ---
>  .../devicetree/bindings/riscv/cpus.yaml       | 26 ++++++++++---------
>  1 file changed, 14 insertions(+), 12 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/riscv/cpus.yaml b/Documentation/devicetree/bindings/riscv/cpus.yaml
> index 27f02ec4bb45..f97a4ecd7b91 100644
> --- a/Documentation/devicetree/bindings/riscv/cpus.yaml
> +++ b/Documentation/devicetree/bindings/riscv/cpus.yaml
> @@ -152,17 +152,19 @@ examples:
>    - |
>      // Example 2: Spike ISA Simulator with 1 Hart
>      cpus {
> -            cpu@0 {
> -                    device_type = "cpu";
> -                    reg = <0>;
> -                    compatible = "riscv";
> -                    riscv,isa = "rv64imafdc";
> -                    mmu-type = "riscv,sv48";
> -                    interrupt-controller {
> -                            #interrupt-cells = <1>;
> -                            interrupt-controller;
> -                            compatible = "riscv,cpu-intc";
> -                    };
> -            };
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +        cpu@0 {

This only works because you removed 'cpus' and therefore none of this
schema is applied.

> +                device_type = "cpu";
> +                reg = <0>;
> +                compatible = "riscv";

According to the schema, this is wrong. It should have 2 strings. Or
the schema needs to allow this case, but 'riscv' is too vague to be
very useful.

Also, I noticed that there's still a riscv/cpus.txt. That should be
removed and replaced with this file. Looks like the hart description
at least should be copied over (into top-level 'description').

> +                riscv,isa = "rv64imafdc";
> +                mmu-type = "riscv,sv48";
> +                interrupt-controller {
> +                        #interrupt-cells = <1>;
> +                        interrupt-controller;
> +                        compatible = "riscv,cpu-intc";
> +                };
> +        };
>      };
>  ...
> --
> 2.20.1
>

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
