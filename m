Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6C85A61E4
	for <lists+linux-riscv@lfdr.de>; Tue,  3 Sep 2019 08:54:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Pz55aM9msPOLta8Gw5Feea7fPxG+Fi2yIIPRkAqlPyc=; b=dDjWzw+UdV6N2e
	pM/ejzIulUEYgvwTU3iCtX84JNHZZdX7af0NlyoiLUrOfBZDfSI5cTvquNN6iYF6oqxKaW/gxXTnx
	+6xGiiP6l8JZA7GTURY1ouXaytqNSaJG+AAAMieJhLDbNXkTqkcjjjW9AZuVOW8tFOaLf5qmTHQz6
	auQqaALoRRrDFI6bmWm6J47Jk1KKXBsCrOS81ncj+aiw11jKg4GAHup6HGgQ8RATKZ8OBm9Yk6spS
	9+aK1L5IhI8rMR0Atm7S1SM8k3MpwTXHdTORxsB1S0nFrNcO13sVEAtp67mvVM6UcJg1wxQ3qhWCn
	o1K34RWB58XQyQS2sibQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i52hy-0000nO-HF; Tue, 03 Sep 2019 06:54:31 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i52fb-0007mZ-S1
 for linux-riscv@lists.infradead.org; Tue, 03 Sep 2019 06:52:06 +0000
Received: by mail-io1-xd41.google.com with SMTP id j5so33453922ioj.8
 for <linux-riscv@lists.infradead.org>; Mon, 02 Sep 2019 23:52:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=0F9dHVWqGS8pUXJgoGylFO0BRrE92SZVgNyvb5o+ce8=;
 b=Rb9snEpQ7SvC+b9oG9ag30UFSjulOK5Q7VYo24KhNE4ndEiW127L6VDsWso4nAaiWY
 Gkmfx96iNGy+MKCfw6VvEhxFwrr1QHd4XQeFucutBfqo4UILDU3OmUmAhDxk5yU9nIIM
 1RSCyjZ3XOQMS7iJvz6jt7lqYUb53ha+HBQZByisz3YcwKICC4WvXDU0LNciP2gzO3KC
 OfW57Z5IQyE5YThgotILbUkKItoVs7SYt/j6LEFDvAupjI0oy4lM5jfm28uHSvgseKJk
 FwHvsQHQEEOa34V+jVhrdQgAAJ1zN/2rJcruvgq8wjr4kSk7rA6Bk8Rfx2/6WazDBypQ
 LL/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0F9dHVWqGS8pUXJgoGylFO0BRrE92SZVgNyvb5o+ce8=;
 b=WqXRLq8tnZGZdsHSR6sGjqfO1l8/mCNepx25wF1gnv/b/OIYidSiX9D4ZfckTpEQIJ
 Qo3PoOdEOUU9nDLYndwSOPDxRUl/nIPfahpj+jqVLtSMT6xLsk96ascOuGwbgYPm9+qi
 mYskwcYbww1nHPgrXXp22SCeOrWsHiGayw+EnWzy4L3QYRfqjTu1tyvf3SPt/st5VKho
 4oSmfn+JfTZ9DRXckxPbnnTyJXlnVJIMUKRT8PYtv1jiiCPCo799INYR9CAPafxFqqWJ
 wWpkXNW6a/tykt27HW74RAWsvawQdhQtKzA/S97T8CImvnAj3ugogt7jT8vAuGudfx/8
 q8tg==
X-Gm-Message-State: APjAAAX5wonnwVeAXwS0Omq+0ecCewq5uZqROC23oE9cm/+/3SyMreHW
 LsF0KcKjhyQrijSXobcZJC7WCBX/PBoRtPXB7sGU0lNbXSc=
X-Google-Smtp-Source: APXvYqzaomYalEUMi0UtKAc6wlYG9J1JwC+gFONN+ZRF3rN5gAzYpDYlZkeEBuPHh200MECf4otHjQ3RpjlIGEVlVd4=
X-Received: by 2002:a6b:b714:: with SMTP id h20mr1071770iof.302.1567493522612; 
 Mon, 02 Sep 2019 23:52:02 -0700 (PDT)
MIME-Version: 1.0
References: <1567321765-3738-1-git-send-email-pragnesh.patel@sifive.com>
 <5d6d1b81.1c69fb81.7eabb.cabd@mx.google.com>
In-Reply-To: <5d6d1b81.1c69fb81.7eabb.cabd@mx.google.com>
From: Pragnesh Patel <pragnesh.patel@sifive.com>
Date: Tue, 3 Sep 2019 12:21:51 +0530
Message-ID: <CAN8ut8KMjo4KVcgLp6AhZOpuLwWMJ8HeiecH70RgYnLQQ05M9w@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: serial: Convert riscv,
 sifive-serial to json-schema
To: Rob Herring <robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_235203_988795_451828A1 
X-CRM114-Status: GOOD (  21.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Albert Ou <aou@eecs.berkeley.edu>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Palmer Dabbelt <palmer@sifive.com>, linux-kernel@vger.kernel.org,
 linux-serial@vger.kernel.org, Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, Sep 2, 2019 at 7:09 PM Rob Herring <robh@kernel.org> wrote:
>
> On Sun, Sep 01, 2019 at 12:39:21PM +0530, Pragnesh Patel wrote:
> > Convert the riscv,sifive-serial binding to DT schema using json-schema.
> >
> > Signed-off-by: Pragnesh Patel <pragnesh.patel@sifive.com>
> > ---
> >  .../devicetree/bindings/serial/sifive-serial.txt   | 33 ------------
> >  .../devicetree/bindings/serial/sifive-serial.yaml  | 62 ++++++++++++++++++++++
> >  2 files changed, 62 insertions(+), 33 deletions(-)
> >  delete mode 100644 Documentation/devicetree/bindings/serial/sifive-serial.txt
> >  create mode 100644 Documentation/devicetree/bindings/serial/sifive-serial.yaml
> >
> > diff --git a/Documentation/devicetree/bindings/serial/sifive-serial.txt b/Documentation/devicetree/bindings/serial/sifive-serial.txt
> > deleted file mode 100644
> > index c86b1e5..0000000
> > --- a/Documentation/devicetree/bindings/serial/sifive-serial.txt
> > +++ /dev/null
> > @@ -1,33 +0,0 @@
> > -SiFive asynchronous serial interface (UART)
> > -
> > -Required properties:
> > -
> > -- compatible: should be something similar to
> > -           "sifive,<chip>-uart" for the UART as integrated
> > -           on a particular chip, and "sifive,uart<version>" for the
> > -           general UART IP block programming model.  Supported
> > -           compatible strings as of the date of this writing are:
> > -           "sifive,fu540-c000-uart" for the SiFive UART v0 as
> > -           integrated onto the SiFive FU540 chip, or "sifive,uart0"
> > -           for the SiFive UART v0 IP block with no chip integration
> > -           tweaks (if any)
> > -- reg: address and length of the register space
> > -- interrupts: Should contain the UART interrupt identifier
> > -- clocks: Should contain a clock identifier for the UART's parent clock
> > -
> > -
> > -UART HDL that corresponds to the IP block version numbers can be found
> > -here:
> > -
> > -https://github.com/sifive/sifive-blocks/tree/master/src/main/scala/devices/uart
> > -
> > -
> > -Example:
> > -
> > -uart0: serial@10010000 {
> > -     compatible = "sifive,fu540-c000-uart", "sifive,uart0";
> > -     interrupt-parent = <&plic0>;
> > -     interrupts = <80>;
> > -     reg = <0x0 0x10010000 0x0 0x1000>;
> > -     clocks = <&prci PRCI_CLK_TLCLK>;
> > -};
> > diff --git a/Documentation/devicetree/bindings/serial/sifive-serial.yaml b/Documentation/devicetree/bindings/serial/sifive-serial.yaml
> > new file mode 100644
> > index 0000000..56fa935
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/serial/sifive-serial.yaml
> > @@ -0,0 +1,62 @@
> > +# SPDX-License-Identifier: GPL-2.0
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/serial/sifive-serial.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: SiFive asynchronous serial interface (UART)
> > +
> > +maintainers:
> > +  - Pragnesh Patel <pragnesh.patel@sifive.com>
> > +  - Paul Walmsley  <paul.walmsley@sifive.com>
> > +  - Palmer Dabbelt <palmer@sifive.com>
> > +
> > +allOf:
> > +  - $ref: /schemas/serial.yaml#
> > +
> > +properties:
> > +  compatible:
> > +    enum:
> > +      - sifive,fu540-c000-uart
> > +      - sifive,uart0
>
> This is wrong and should have warned if you tested this on 5.3.
>
> items:
>   - const: sifive,fu540-c000-uart
>   - const: sifive,uart0
>

Thanks for the correction, i will update this in v2 patch.

I haven't got any warnings due to my patch.
For your reference, following is the list of warnings when i did "make
dtbs_check" (kernel version - 5.3.0-rc7)

/home/pragneshp/opensource/linux/Documentation/devicetree/bindings/riscv/cpus.example.dt.yaml:
cpu@0: compatible:0: 'riscv' is not one of ['sifive,rocket0',
'sifive,e5', 'sifive,e51', 'sifive,u54-mc', 'sifive,u54', 'sifive,u5']
/home/pragneshp/opensource/linux/Documentation/devicetree/bindings/riscv/cpus.example.dt.yaml:
cpu@0: compatible: ['riscv'] is too short
/home/pragneshp/opensource/linux/Documentation/devicetree/bindings/riscv/cpus.example.dt.yaml:
cpu@0: 'timebase-frequency' is a required property
/home/pragneshp/opensource/linux/Documentation/devicetree/bindings/riscv/cpus.example.dt.yaml:
cpu@0: 'timebase-frequency' is a required property
/home/pragneshp/opensource/linux/Documentation/devicetree/bindings/riscv/cpus.example.dt.yaml:
cpu@1: 'timebase-frequency' is a required property

/home/pragneshp/opensource/linux/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dt.yaml:
/: compatible: ['sifive,hifive-unleashed-a00', 'sifive,fu540-c000'] is
too short
/home/pragneshp/opensource/linux/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dt.yaml:
cpu@3: 'timebase-frequency' is a required property
/home/pragneshp/opensource/linux/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dt.yaml:
cpu@3: compatible: Additional items are not allowed ('riscv' was
unexpected)
/home/pragneshp/opensource/linux/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dt.yaml:
cpu@3: compatible:1: 'riscv' was expected
/home/pragneshp/opensource/linux/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dt.yaml:
cpu@3: compatible: ['sifive,u54-mc', 'sifive,rocket0', 'riscv'] is too
long
/home/pragneshp/opensource/linux/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dt.yaml:
cpu@1: 'timebase-frequency' is a required property
/home/pragneshp/opensource/linux/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dt.yaml:
cpu@1: compatible: Additional items are not allowed ('riscv' was
unexpected)
/home/pragneshp/opensource/linux/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dt.yaml:
cpu@1: compatible:1: 'riscv' was expected
/home/pragneshp/opensource/linux/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dt.yaml:
cpu@1: compatible: ['sifive,u54-mc', 'sifive,rocket0', 'riscv'] is too
long
/home/pragneshp/opensource/linux/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dt.yaml:
cpu@4: 'timebase-frequency' is a required property
/home/pragneshp/opensource/linux/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dt.yaml:
cpu@4: compatible: Additional items are not allowed ('riscv' was
unexpected)
/home/pragneshp/opensource/linux/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dt.yaml:
cpu@4: compatible:1: 'riscv' was expected
/home/pragneshp/opensource/linux/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dt.yaml:
cpu@4: compatible: ['sifive,u54-mc', 'sifive,rocket0', 'riscv'] is too
long
/home/pragneshp/opensource/linux/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dt.yaml:
cpu@2: 'timebase-frequency' is a required property
/home/pragneshp/opensource/linux/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dt.yaml:
cpu@2: compatible: Additional items are not allowed ('riscv' was
unexpected)
/home/pragneshp/opensource/linux/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dt.yaml:
cpu@2: compatible:1: 'riscv' was expected
/home/pragneshp/opensource/linux/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dt.yaml:
cpu@2: compatible: ['sifive,u54-mc', 'sifive,rocket0', 'riscv'] is too
long
/home/pragneshp/opensource/linux/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dt.yaml:
cpu@0: compatible: Additional items are not allowed ('riscv' was
unexpected)
/home/pragneshp/opensource/linux/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dt.yaml:
cpu@0: compatible:1: 'riscv' was expected
/home/pragneshp/opensource/linux/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dt.yaml:
cpu@0: compatible: ['sifive,e51', 'sifive,rocket0', 'riscv'] is too
long
/home/pragneshp/opensource/linux/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dt.yaml:
soc: compatible:0: 'sifive,fu540-c000' is not one of
['sifive,hifive-unleashed-a00']
/home/pragneshp/opensource/linux/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dt.yaml:
soc: compatible:1: 'sifive,fu540-c000' was expected
/home/pragneshp/opensource/linux/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dt.yaml:
soc: compatible:2: 'sifive,fu540' was expected
/home/pragneshp/opensource/linux/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dt.yaml:
soc: $nodename:0: '/' was expected
/home/pragneshp/opensource/linux/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dt.yaml:
soc: spi@10041000:reg:0: [0, 268701696, 0, 4096, 0, 805306368, 0,
268435456] is too long
/home/pragneshp/opensource/linux/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dt.yaml:
soc: ethernet@10090000:reg:0: [0, 269025280, 0, 8192, 0, 269090816, 0,
4096] is too long
/home/pragneshp/opensource/linux/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dt.yaml:
soc: spi@10040000:reg:0: [0, 268697600, 0, 4096, 0, 536870912, 0,
268435456] is too long


>
> > +
> > +    description:
> > +      Should be something similar to "sifive,<chip>-uart"
> > +      for the UART as integrated on a particular chip,
> > +      and "sifive,uart<version>" for the general UART IP
> > +      block programming model.
> > +
> > +      UART HDL that corresponds to the IP block version
> > +      numbers can be found here -
> > +
> > +      https://github.com/sifive/sifive-blocks/tree/master/src/main/scala/devices/uart
> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +  interrupts:
> > +    maxItems: 1
> > +
> > +  clocks:
> > +    maxItems: 1
> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +  - interrupts
> > +  - clocks
> > +
> > +additionalProperties: false
> > +
> > +examples:
> > +  - |
> > +      #include <dt-bindings/clock/sifive-fu540-prci.h>
> > +      serial@10010000 {
> > +        compatible = "sifive,fu540-c000-uart", "sifive,uart0";
> > +        interrupt-parent = <&plic0>;
> > +        interrupts = <80>;
> > +        reg = <0x0 0x10010000 0x0 0x1000>;
> > +        clocks = <&prci PRCI_CLK_TLCLK>;
> > +      };
> > +
> > +...
> > --
> > 2.7.4
> >
>

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
