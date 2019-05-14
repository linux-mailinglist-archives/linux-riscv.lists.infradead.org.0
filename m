Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B92A1C906
	for <lists+linux-riscv@lfdr.de>; Tue, 14 May 2019 14:50:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L9htQf6uia+Wfvx213TXuKI19fmvT6h3R3DTXgrz2EI=; b=rfiuGlQIfsv0le
	UGdGtWCmRtGPR6SSLsAf33qi7ajB00waovfANU4jAIT8sYnn34gbUmSwqhhojHx74VClc+dpwP50F
	8H+Zy0H2GTi4oGTG6eSwsza1dJEYNfCyMpOunxTWNN8C6nGokckgMRe7CaE+Glv2P35wYXf5H0nHh
	EPsDTtT+WjJtdy8GJ56kVl6yf7uM4WLqO5eJDXB1/H9KbjlXtNWIaaextszSElOEnULJoZj2i2DhZ
	G7iOTZt3f+htNkYHyVXJFE2/KpDaPZeJnrnmHGpRW+YkCsDa+B3kr28yzGx803/EKUyXa/7SlGiZO
	0m+T3IQ/vjhs03egvcFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQWt9-0000VA-Ok; Tue, 14 May 2019 12:50:35 +0000
Received: from mail-vs1-xe44.google.com ([2607:f8b0:4864:20::e44])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQWt5-0000U0-IQ
 for linux-riscv@lists.infradead.org; Tue, 14 May 2019 12:50:33 +0000
Received: by mail-vs1-xe44.google.com with SMTP id j184so672627vsd.11
 for <linux-riscv@lists.infradead.org>; Tue, 14 May 2019 05:50:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=YpyAuaSZoUHmHgqCL0JrMDK/4+eoaePOQg+dGsDeL1Y=;
 b=MAWEzXx5qOA1QwYeqN6veTqPQLb/4+B2P5h8QxPYJRMmB1y1oMI8sLWFmX6BP6/QLs
 VUBaWuPfPS1KXulqH0sHLqI4Cfiw9oy9hoXmtV/zqdyiW92xllzX74sLSZSdh3S9Wq9d
 4P457sTJO8IU92CsF1vniHU08XY/teMwmxHDMgGGdER7KaMY7xSSF1NsXCO594nbhm0C
 1PsmVa4tN+PjH3E7jnI0BlNCC4ppWKVVJAqSyZJfvxbc7eNZD8SKTUF1cxO1vHnAh8sh
 gg9neERTPdzxWPmZJCUi9rAtMDbDUuXLa0yMV2M9oAtkQu7ftn0J66kT3gsa99q2OLh9
 vRWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=YpyAuaSZoUHmHgqCL0JrMDK/4+eoaePOQg+dGsDeL1Y=;
 b=DABI8WJTTYSPn6m0cu3jvjo/Y9wvOa6vZihhUveRcAEV5aRl0IXtFA1f73P+6qdlLA
 CNDxjklMixZJkqE0FU5HTPRNo64UXrORoQD4gcAHFUQPG9SRa32mQDwvCQ4inak6wME3
 dojtliU5yBmQrwlWGQISpCmrIp+7Nasjr+9vLs8HoGui7qvQnbhx33EGeHnEfNdnCP+8
 PDRZn3ziVZKK9oxQeo6xE9ZGyuHLvlke7GyZDGJ66z+FJ0KhBGWe4vecUXTo2CiqKVNG
 lWxTeBibL5OsZ9o8O9YwWCffEH2+o+ux5sHs9JfCWzU98xVP9N6fnZZ6pmv0t0H4y2e1
 gmkQ==
X-Gm-Message-State: APjAAAWf/dK6BG80MndW9AZg/0d6PjlKl0K5GOFmn7l3YQ+IXMXcgKVB
 IJXG1q3LXZ9nNz8UE6AB8FA9uEel+KlHbN1xsQ4Kwg==
X-Google-Smtp-Source: APXvYqz02W8Tl8ABmOcKNrSj4JOkabiO1hA1e7uKDCwhZhtelH9kj9SMsgerh3ZJ/AjW0izPMOm420t7EG/bszZ1lW0=
X-Received: by 2002:a67:ea45:: with SMTP id r5mr16171685vso.92.1557838228453; 
 Tue, 14 May 2019 05:50:28 -0700 (PDT)
MIME-Version: 1.0
References: <1557242108-13580-1-git-send-email-sagar.kadam@sifive.com>
 <1557242108-13580-2-git-send-email-sagar.kadam@sifive.com>
 <20190513205615.GA5844@bogus>
In-Reply-To: <20190513205615.GA5844@bogus>
From: Sagar Kadam <sagar.kadam@sifive.com>
Date: Tue, 14 May 2019 18:20:17 +0530
Message-ID: <CAARK3HkTCGWg4CAo1LmQHmf4_NFukjTwO1LAHjgSTS+R_5CRSg@mail.gmail.com>
Subject: Re: [PATCH v2 v2 1/3] dt-bindings: i2c: extend existing opencore
 bindings.
To: Rob Herring <robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_055031_767213_85E8F89A 
X-CRM114-Status: GOOD (  25.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, Andrew Lunn <andrew@lunn.ch>, peter@korsgaard.com,
 devicetree@vger.kernel.org, Palmer Dabbelt <palmer@sifive.com>,
 linux-kernel@vger.kernel.org, linux-i2c@vger.kernel.org,
 Paul Walmsley <paul.walmsley@sifive.com>, linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hello Rob,

Thank you for the review.

On Tue, May 14, 2019 at 2:26 AM Rob Herring <robh@kernel.org> wrote:
>
> On Tue, May 07, 2019 at 08:45:06PM +0530, Sagar Shrikant Kadam wrote:
> > Add FU540-C000 specific device tree bindings to already
> > available i2-ocores file. This device is available on
> > HiFive Unleashed Rev A00 board.
> >
> > Signed-off-by: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
> > ---
> >  Documentation/devicetree/bindings/i2c/i2c-ocores.txt | 20 ++++++++++++++++++++
> >  1 file changed, 20 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/i2c/i2c-ocores.txt b/Documentation/devicetree/bindings/i2c/i2c-ocores.txt
> > index 17bef9a..f6bcf90 100644
> > --- a/Documentation/devicetree/bindings/i2c/i2c-ocores.txt
> > +++ b/Documentation/devicetree/bindings/i2c/i2c-ocores.txt
> > @@ -2,6 +2,7 @@ Device tree configuration for i2c-ocores
> >
> >  Required properties:
> >  - compatible      : "opencores,i2c-ocores" or "aeroflexgaisler,i2cmst"
> > +                    "sifive,fu540-c000-i2c" or "sifive,i2c0"
>
> If this is Opencores IP, does it really follow the Sifive versioning
> convention? If so, please reference sifive-blocks-ip-versioning.txt
> (which appears to have missed going upstream). Also, referencing the IP
> repository would be good too. If this IP block doesn't follow the same
> convention, then don't try using it for this binding.
>
Yes, the sifive,fu540-c000-i2c is a SoC specific compatibility string,
this way SoC specific
workaround's or bugs, can be handled in the software and the ip-block
specific compatibility
string "sifive,<ip-block-name><integer version number>" i.e.
sifive,i2c0 is IP block specific compatibility
string. Please let me know if I need some correction here?
I will also update reference for sifive-blocks-ip-versioning and the
ip repository into next version of patch.

> >  - reg             : bus address start and address range size of device
> >  - interrupts      : interrupt number
> >  - clocks          : handle to the controller clock; see the note below.
> > @@ -67,3 +68,22 @@ or
> >                       reg = <0x60>;
> >               };
> >       };
> > +or
>
> Just a new compatible isn't really a reason to add an example.
>
> > +     /*
> > +       An Opencore based I2C node in FU540-C000 chip from SiFive
> > +       This chip has a hardware erratum for broken IRQ
> > +       so it's recommended not to define interrupt in the device node
>
> Then interrupts needs to be optional.
True, I will move interrupts and interrupt parent into optional section
>
> > +     */
> > +     i2c@10030000 {
> > +                     compatible = "sifive,i2c0","sifive,fu540-c000-i2c";
> > +                     reg = <0x0 0x10030000 0x0 0x1000>;
> > +                     reg-names = "i2c-control";
>
> Not doucmented.
In v1, I had added a new binding file as sifive-i2c-ocores.txt for
SiFive i2c core.
After Andrew's suggestion,  extending the available i2c-ocores.txt
seemed to be a better idea rather than adding a new file.
so added an example node which is HiFive specific in the existing file.
Please let me know if I need to handle this in a different way.

>
> > +                     clocks = <&tlclk>;
> > +                     clock-frequency = <100000>;
> > +
> > +                     reg-shift = <2>;
> > +                     reg-io-width = <1>;
> > +
> > +                     #address-cells = <1>;
> > +                     #size-cells = <0>;
> > +     };
> > --
> > 1.9.1
> >
> >
> > --
> > The information transmitted is intended only for the person or entity to
> > which it is addressed and may contain confidential and/or privileged
> > material. If you are not the intended recipient of this message please do
> > not read, copy, use or disclose this communication and notify the sender
> > immediately. It should be noted that any review, retransmission,
> > dissemination or other use of, or taking action or reliance upon, this
> > information by persons or entities other than the intended recipient is
> > prohibited

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
