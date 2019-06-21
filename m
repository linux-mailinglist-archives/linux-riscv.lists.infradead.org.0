Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 754534E5D3
	for <lists+linux-riscv@lfdr.de>; Fri, 21 Jun 2019 12:23:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5CW2EFP4cUMoR5XssD/PAIa8ut2ajVKXcVoXYKLU2zk=; b=TiYFgNSh5iKFjF
	BfLXTFBl7Qj/aRCAzw3nnxdt+x/sa0eTCbn47G8Kwg52fV+Lr8hCI3ucNuarLJLodY5AWL/sc++mM
	TF7CXVlm+LrxgUczHxMnVtZydfAWxxxXzpf6YIb1UlZ/EuE3QRziDdRPJ9IKdOjkbJnk2fsnme4PA
	R2fvjobesg919GQujHiGMK+2eHBrzoAcJY3+6vH6kTAQ4nKbTkQObrW0KVNxrQtvGN3kknf0+9q7B
	1gRwC9MQ0cuzrdCmlSLmJq4e34YS6NQ77SdAnsqaDP62HGczyEXDW+6u93ErnqCqGe/993AMli42q
	nXcuTQBzsQeVW+RdQhmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heGhV-0003G6-O6; Fri, 21 Jun 2019 10:23:21 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heGKs-0001r0-GL
 for linux-riscv@lists.infradead.org; Fri, 21 Jun 2019 10:00:00 +0000
Received: by mail-lf1-x142.google.com with SMTP id p24so4599258lfo.6
 for <linux-riscv@lists.infradead.org>; Fri, 21 Jun 2019 02:59:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=97030ehdzrNq8foq07+AWlHk1qrrPe5jsC3Gs0TUlzM=;
 b=HVP6sfaP9Gc2v9i5Jjb8nzD8V6DHQyvjJiS4s0FEPn47BcAFqzpye5nAY7ylHt5pKF
 LvmU5+g67BbcvhGBPiJP3Ff4UIrRJSEgC/sv9ePTwhltpbmaXhQfgGjfwAkaXu1QkKps
 yZYBpzw5RAIMJ1yZvkikCYw7YRkR+g5qJm82SMVIa+frJXh76qD9japXT2/dQrnWMoEB
 nlrA/FhwXjnJn8MKpOOX15Ix1Yzf19VGV+rs3wVUqSdi7//UKJBEytIkmxVmPReVzn9p
 ApMOZn+Yp3652PGvQrz7phLyT0vTGenI1AuXrRsae8IMbmBhidNTTYm98nzaVHt9eL25
 rFfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=97030ehdzrNq8foq07+AWlHk1qrrPe5jsC3Gs0TUlzM=;
 b=ELJ64H4s1grLNnxQBSwGUptlJAp06njQUp+H2TCnMZ2DPFiaqu0I6Njf7FnXxUaib8
 pI3Ak3SKcSp8g1zTM3+kYvix0MbVQK1ODRoKTFv/RCKqczmUed99cZ3P6klb5LANbI18
 5ZH4R5ECtTeZThvnOYhq08XzZ8bIRQr52sZfUAyWhaEvhjEKXg9W4mkF3lw6jtSWWfXA
 AjITnz4qeGRUNv7hxhXwfHQLJpBB6/p/YrU0PgsN6zt0Fnj3oogJOHjL7LKg+7bdbZNC
 cxXsvIrcsgoXFMrhMmhDO62VSgVNB5p22T4Umf3724+tqhQOi3krkf41djKsQc+0b3W1
 3yGg==
X-Gm-Message-State: APjAAAXiywdqrSjH8wtticGJbEFyly9ldBCpEvGT97Itw5P8AawEI4ok
 Mwl4OmWbuKsWo/Hhgz/vjrbaKLEWN7QyLcJQoFZeTQ==
X-Google-Smtp-Source: APXvYqwakQoUYvkQWF0oN/90aJTMVyVOxBQx5u/5NG+eG198vhWKO1eioYF/oNR7gcqsOGkPnn05VWv2jTHPm/NjjoU=
X-Received: by 2002:a19:5046:: with SMTP id z6mr20312857lfj.185.1561111196510; 
 Fri, 21 Jun 2019 02:59:56 -0700 (PDT)
MIME-Version: 1.0
References: <1561097422-25130-1-git-send-email-yash.shah@sifive.com>
 <1561097422-25130-2-git-send-email-yash.shah@sifive.com>
 <CAAhSdy2zHozRnwAU6-+U+BE-5h5uNE67D_0TXHJnrHMi53gMog@mail.gmail.com>
In-Reply-To: <CAAhSdy2zHozRnwAU6-+U+BE-5h5uNE67D_0TXHJnrHMi53gMog@mail.gmail.com>
From: Yash Shah <yash.shah@sifive.com>
Date: Fri, 21 Jun 2019 15:29:20 +0530
Message-ID: <CAJ2_jOGWFaw6G6vjbfz9rwa3jceL0kmykM4B3zLhu0V+qBVZvw@mail.gmail.com>
Subject: Re: [PATCH] riscv: dts: Add DT node for SiFive FU540 Ethernet
 controller driver
To: Anup Patel <anup@brainfault.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_025958_751138_12AB2C67 
X-CRM114-Status: GOOD (  13.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Albert Ou <aou@eecs.berkeley.edu>, Palmer Dabbelt <palmer@sifive.com>,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 Sachin Ghadi <sachin.ghadi@sifive.com>, Rob Herring <robh+dt@kernel.org>,
 Paul Walmsley <paul.walmsley@sifive.com>, linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, Jun 21, 2019 at 2:31 PM Anup Patel <anup@brainfault.org> wrote:
>
> On Fri, Jun 21, 2019 at 11:40 AM Yash Shah <yash.shah@sifive.com> wrote:
> >
> > DT node for SiFive FU540-C000 GEMGXL Ethernet controller driver added
> >
> > Signed-off-by: Yash Shah <yash.shah@sifive.com>
> > ---
> >  arch/riscv/boot/dts/sifive/fu540-c000.dtsi | 20 ++++++++++++++++++++
> >  1 file changed, 20 insertions(+)
> >
> > diff --git a/arch/riscv/boot/dts/sifive/fu540-c000.dtsi b/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
> > index 4e8fbde..584e737 100644
> > --- a/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
> > +++ b/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
> > @@ -225,5 +225,25 @@
> >                         #address-cells = <1>;
> >                         #size-cells = <0>;
> >                 };
> > +               eth0: ethernet@10090000 {
> > +                       compatible = "sifive,fu540-macb";
> > +                       interrupt-parent = <&plic0>;
> > +                       interrupts = <53>;
> > +                       reg = <0x0 0x10090000 0x0 0x2000
> > +                              0x0 0x100a0000 0x0 0x1000>;
> > +                       reg-names = "control";
> > +                       local-mac-address = [00 00 00 00 00 00];
> > +                       phy-mode = "gmii";
> > +                       phy-handle = <&phy1>;
> > +                       clock-names = "pclk", "hclk";
> > +                       clocks = <&prci PRCI_CLK_GEMGXLPLL>,
> > +                                <&prci PRCI_CLK_GEMGXLPLL>;
> > +                       #address-cells = <1>;
> > +                       #size-cells = <0>;
>
> Have status = "disabled"; here and have
> status = "okay" in board DTS file.
>
> General convention for any SOC device with external
> connection (e.g. ethernet, SPI, SDHC, SATA, PCI, etc)
> is:
>
> 1. Define only device DT node in SOC DTSi file with
> status = "disabled"
> 2. Enable device in Board DTS file with
> status = "okay"
> 3. Define PHY or external PIN connection details
> in Board DTS file
>
> > +                       phy1: ethernet-phy@0 {
> > +                               reg = <0>;
> > +                       };
>
> The PHY DT node should be in Board DTS file.

Will move all PHY related nodes in board DTS file.

>
> Of course, same comments apply to SPI DT nodes as well
> but I missed reviewing those DT nodes. You can send separate
> DT patch to re-organize SPI DT nodes.

Sure, will send a separate patch for SPI DT nodes as well.
Thanks for your comments.

- Yash

>
> Regards,
> Anup

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
