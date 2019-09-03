Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7447A6B57
	for <lists+linux-riscv@lfdr.de>; Tue,  3 Sep 2019 16:24:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=83JNOwciwN5vxmDavH5k27ckGrWrIvuv1lraQA+O3L0=; b=F7eDioPWqN01Em
	eIMVU/R9BOhgvtUa8dvN1gmNEdWYrj9t/sgn7VM2fUBhTN2rEJSNYqmKlH+swnrdexP6WXRskYCHz
	UH+yJynWs77E+vmoRguEUrb4ycep3XNVFfrzRoRH4acfythdZbo92l2DxorCTtIRy81Eh3OO34HiV
	j8M0Tb57zyhq/sWJNaQJeTVqCiYOJbUQdDVyh/wuJXfl+pFVO17HTVzqO1NLmfmI8Cjx/MZsoxE/l
	JVIFqWuP/5oy/zefHbixQwIfL65A0zFYU4+FuCBxurYoFTJ+3rF0LK2C7ybCALMCAvlsTZH+SFioE
	HDFjUkXyRK1DW6ApdVzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i59jT-0003dM-NL; Tue, 03 Sep 2019 14:24:32 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i59jO-0003cm-0e
 for linux-riscv@lists.infradead.org; Tue, 03 Sep 2019 14:24:27 +0000
Received: from mail-qt1-f177.google.com (mail-qt1-f177.google.com
 [209.85.160.177])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3F24523717
 for <linux-riscv@lists.infradead.org>; Tue,  3 Sep 2019 14:24:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567520665;
 bh=8p5CNP6BskSbrJouAkp8CPkNDKbbnxS4GqAgIpkH6xI=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=B2R+gSM9rCpwwImgfy85EdsLDtBELWH16KyE5jnVu6rMk/fnE90aUQem6v2XWvhGf
 k187E2P7dJzAQq21/bxqLFjTfcDwxI4s0zB0DI1KjPrC3bTJke79uRme6/hIbw95Qo
 Jr37leZG9ug9RjQwyWe1JTR6as0m6fgK8FKGiZcg=
Received: by mail-qt1-f177.google.com with SMTP id r5so14876504qtd.0
 for <linux-riscv@lists.infradead.org>; Tue, 03 Sep 2019 07:24:25 -0700 (PDT)
X-Gm-Message-State: APjAAAXn9jxmT1lRNZaeZYYnkIa+xzyReDGh+tCO9e9KeEd+AcVrXRLJ
 BBsUICpAmCqFgdbwkf+RpfY8d/6h2oNTHpg8LQ==
X-Google-Smtp-Source: APXvYqyf66U1enOSZroZ3NfqFTeBGuG/63QoHRuWUDZSe6k7+SHykxn/1jfwi/0yDstZK2RJ2ui8y0/4Bnql3UfknIs=
X-Received: by 2002:a05:6214:1042:: with SMTP id
 l2mr4516540qvr.39.1567520664326; 
 Tue, 03 Sep 2019 07:24:24 -0700 (PDT)
MIME-Version: 1.0
References: <1567321765-3738-1-git-send-email-pragnesh.patel@sifive.com>
 <5d6d1b81.1c69fb81.7eabb.cabd@mx.google.com>
 <CAN8ut8KMjo4KVcgLp6AhZOpuLwWMJ8HeiecH70RgYnLQQ05M9w@mail.gmail.com>
In-Reply-To: <CAN8ut8KMjo4KVcgLp6AhZOpuLwWMJ8HeiecH70RgYnLQQ05M9w@mail.gmail.com>
From: Rob Herring <robh@kernel.org>
Date: Tue, 3 Sep 2019 15:24:12 +0100
X-Gmail-Original-Message-ID: <CAL_Jsq+Y3=xXuaqO=UoAShw5OxJA4wDBZVUE3=OT_DL9kw9t-Q@mail.gmail.com>
Message-ID: <CAL_Jsq+Y3=xXuaqO=UoAShw5OxJA4wDBZVUE3=OT_DL9kw9t-Q@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: serial: Convert riscv,
 sifive-serial to json-schema
To: Pragnesh Patel <pragnesh.patel@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_072426_103485_8F56B442 
X-CRM114-Status: GOOD (  23.00  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Albert Ou <aou@eecs.berkeley.edu>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Palmer Dabbelt <palmer@sifive.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:SERIAL DRIVERS" <linux-serial@vger.kernel.org>,
 Paul Walmsley <paul.walmsley@sifive.com>, linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, Sep 3, 2019 at 7:52 AM Pragnesh Patel <pragnesh.patel@sifive.com> wrote:
>
> On Mon, Sep 2, 2019 at 7:09 PM Rob Herring <robh@kernel.org> wrote:
> >
> > On Sun, Sep 01, 2019 at 12:39:21PM +0530, Pragnesh Patel wrote:
> > > Convert the riscv,sifive-serial binding to DT schema using json-schema.
> > >
> > > Signed-off-by: Pragnesh Patel <pragnesh.patel@sifive.com>
> > > ---
> > >  .../devicetree/bindings/serial/sifive-serial.txt   | 33 ------------
> > >  .../devicetree/bindings/serial/sifive-serial.yaml  | 62 ++++++++++++++++++++++
> > >  2 files changed, 62 insertions(+), 33 deletions(-)
> > >  delete mode 100644 Documentation/devicetree/bindings/serial/sifive-serial.txt
> > >  create mode 100644 Documentation/devicetree/bindings/serial/sifive-serial.yaml
> > >
> > > diff --git a/Documentation/devicetree/bindings/serial/sifive-serial.txt b/Documentation/devicetree/bindings/serial/sifive-serial.txt
> > > deleted file mode 100644
> > > index c86b1e5..0000000
> > > --- a/Documentation/devicetree/bindings/serial/sifive-serial.txt
> > > +++ /dev/null
> > > @@ -1,33 +0,0 @@
> > > -SiFive asynchronous serial interface (UART)
> > > -
> > > -Required properties:
> > > -
> > > -- compatible: should be something similar to
> > > -           "sifive,<chip>-uart" for the UART as integrated
> > > -           on a particular chip, and "sifive,uart<version>" for the
> > > -           general UART IP block programming model.  Supported
> > > -           compatible strings as of the date of this writing are:
> > > -           "sifive,fu540-c000-uart" for the SiFive UART v0 as
> > > -           integrated onto the SiFive FU540 chip, or "sifive,uart0"
> > > -           for the SiFive UART v0 IP block with no chip integration
> > > -           tweaks (if any)
> > > -- reg: address and length of the register space
> > > -- interrupts: Should contain the UART interrupt identifier
> > > -- clocks: Should contain a clock identifier for the UART's parent clock
> > > -
> > > -
> > > -UART HDL that corresponds to the IP block version numbers can be found
> > > -here:
> > > -
> > > -https://github.com/sifive/sifive-blocks/tree/master/src/main/scala/devices/uart
> > > -
> > > -
> > > -Example:
> > > -
> > > -uart0: serial@10010000 {
> > > -     compatible = "sifive,fu540-c000-uart", "sifive,uart0";
> > > -     interrupt-parent = <&plic0>;
> > > -     interrupts = <80>;
> > > -     reg = <0x0 0x10010000 0x0 0x1000>;
> > > -     clocks = <&prci PRCI_CLK_TLCLK>;
> > > -};
> > > diff --git a/Documentation/devicetree/bindings/serial/sifive-serial.yaml b/Documentation/devicetree/bindings/serial/sifive-serial.yaml
> > > new file mode 100644
> > > index 0000000..56fa935
> > > --- /dev/null
> > > +++ b/Documentation/devicetree/bindings/serial/sifive-serial.yaml
> > > @@ -0,0 +1,62 @@
> > > +# SPDX-License-Identifier: GPL-2.0
> > > +%YAML 1.2
> > > +---
> > > +$id: http://devicetree.org/schemas/serial/sifive-serial.yaml#
> > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > +
> > > +title: SiFive asynchronous serial interface (UART)
> > > +
> > > +maintainers:
> > > +  - Pragnesh Patel <pragnesh.patel@sifive.com>
> > > +  - Paul Walmsley  <paul.walmsley@sifive.com>
> > > +  - Palmer Dabbelt <palmer@sifive.com>
> > > +
> > > +allOf:
> > > +  - $ref: /schemas/serial.yaml#
> > > +
> > > +properties:
> > > +  compatible:
> > > +    enum:
> > > +      - sifive,fu540-c000-uart
> > > +      - sifive,uart0
> >
> > This is wrong and should have warned if you tested this on 5.3.
> >
> > items:
> >   - const: sifive,fu540-c000-uart
> >   - const: sifive,uart0
> >
>
> Thanks for the correction, i will update this in v2 patch.
>
> I haven't got any warnings due to my patch.
> For your reference, following is the list of warnings when i did "make
> dtbs_check" (kernel version - 5.3.0-rc7)

Thanks for the confirmation. I've now fixed it to correctly catch
that. Update your dtschema to the latest.

Rob

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
