Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 324411DDF87
	for <lists+linux-riscv@lfdr.de>; Fri, 22 May 2020 07:54:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=aIk25yXFBXzVd2JD01BBzYOv1Gg6yn56UGtgn996fw0=; b=sJXv+4mhc44Wm1Wbq1DOJ/8Q/
	3b2t0Vsc0THAbo3drSvRAy4R+Ntf0vA5elbapOrxEmmhUXkrbafLi+8ilvRsgDH7a+hwbENomwg4z
	GMZa6vc5Q2zpmP1y09Nxy15allxZ6v0OHtTexmtG/Ci2546Pczk0PfWqe1JpBSeDKYLV82LD6AyMJ
	l71uZRvica0Mc+0Ip+eL+MYf3YmYchXVWlrY2MJ1qBcrYmFSrcVcc5UFBBy+uAvguhbdod+5svK/u
	NkBd8zopHZbQ645J69bQMVb/KcC80TCfcKPv/vfLvF2PdPwQtYmFCw7JAu7aqWqoqexhMGtOVoy+2
	wuXsTnoMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc0dV-0006k3-Cu; Fri, 22 May 2020 05:54:25 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc0dR-0006jT-E2
 for linux-riscv@lists.infradead.org; Fri, 22 May 2020 05:54:22 +0000
Received: by mail-wm1-x341.google.com with SMTP id g14so3647919wme.1
 for <linux-riscv@lists.infradead.org>; Thu, 21 May 2020 22:54:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=aIk25yXFBXzVd2JD01BBzYOv1Gg6yn56UGtgn996fw0=;
 b=JT1BLyDzBfEuLHxkQaZ3XLCFkoZmRsT1N912PHah3lVhoqoq8JLyx4QkKZsoPUywUl
 E8PjWS0l/TEp1xK0mrl7UoiGv0RIkC4oZIhGYEYhQwMuD2/uXOdMLL2IkSjV5JEGLgEu
 hj4YoPe4YprgbTbrKfT1Nu4aNFpoW8dgf0B3kbjxNFXc4BsbKku9MqU5Q1RXnbJtzvI5
 xk7NFC/3TEqxST4kdWTIpy40xEPajjPX9ncrzUYWfeR0bEFQS+jRN5+P16lXMnvzUr41
 awxZth5SCE6kzfOWGlFHf1t/Wjx8G4cPS2di/vbxuQSFpkN9iBmP1ZYvg94K/83Lijpl
 Y6Dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=aIk25yXFBXzVd2JD01BBzYOv1Gg6yn56UGtgn996fw0=;
 b=Aubx0OdeuNMpH8b0ASSrsTOEt5yHQwliIkrcPGfEokL2rLsV0ZKe680Koyg9m78udM
 ia//IU0gk1gVDgJVQl+cAOLVhGIXswkX8vPvtDd4Jqtf2aUkJy6CaJYpngW4jnfZM6wA
 jUEO7A73Eb7f4xA1iG+g2GIScegwbHn7vJGPSXheOTLwsjFM3R9euwBdY9pFGHvE5DpE
 ZnrV7Iwuk0EIFoThyOhrs8I8/lLeEWmENuS9Jpptu9oWFdhg4rtiy0H4u0rUXefbIeKh
 iq7LQk3G5z5rp9902//HSsbuC8O6ToVfDt5VgR2cgD9D8ox2W65hc2HbEzHp9P0EKrSp
 hdqw==
X-Gm-Message-State: AOAM530pSAlBsUv6luRm1+UqccTz8XUvrYU3bJj0Dmlo0J3RhU5zk2Iq
 iJxa/b6nwZWLIKSxXA4r9G7zBgSvI4llC0gkuRB2pw==
X-Google-Smtp-Source: ABdhPJynY0OTAvvIBrM+2Ad3FdHSwp7eR2/+LIesoKwApFshfRqfP2uvsUvf/GyYJKsRhjNqdIuaVpXMiLoV/07JSRc=
X-Received: by 2002:a7b:c4da:: with SMTP id g26mr11532873wmk.3.1590126858584; 
 Thu, 21 May 2020 22:54:18 -0700 (PDT)
MIME-Version: 1.0
References: <20200521134544.816918-1-anup.patel@wdc.com>
 <20200521134544.816918-6-anup.patel@wdc.com>
 <2aec08b7-7197-4b60-89d9-c3b0d5a8a258@gmail.com>
In-Reply-To: <2aec08b7-7197-4b60-89d9-c3b0d5a8a258@gmail.com>
From: Anup Patel <anup@brainfault.org>
Date: Fri, 22 May 2020 11:24:07 +0530
Message-ID: <CAAhSdy0OuxCwMVPBrvPpYMfVrhUuY3pONysk75yognOM5-0U+g@mail.gmail.com>
Subject: Re: [PATCH 5/5] dt-bindings: timer: Add CLINT bindings
To: Sean Anderson <seanga2@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_225421_539636_823C2EBF 
X-CRM114-Status: GOOD (  19.20  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, Damien Le Moal <damien.lemoal@wdc.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Anup Patel <anup.patel@wdc.com>,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 Atish Patra <atish.patra@wdc.com>, Rob Herring <robh+dt@kernel.org>,
 Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 Alistair Francis <Alistair.Francis@wdc.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 linux-riscv <linux-riscv@lists.infradead.org>,
 Albert Ou <aou@eecs.berkeley.edu>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, May 22, 2020 at 1:35 AM Sean Anderson <seanga2@gmail.com> wrote:
>
> On 5/21/20 9:45 AM, Anup Patel wrote:
> > We add DT bindings documentation for CLINT device.
> >
> > Signed-off-by: Anup Patel <anup.patel@wdc.com>
> > ---
> >  .../bindings/timer/sifive,clint.txt           | 33 +++++++++++++++++++
> >  1 file changed, 33 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/timer/sifive,clint.txt
> >
> > diff --git a/Documentation/devicetree/bindings/timer/sifive,clint.txt b/Documentation/devicetree/bindings/timer/sifive,clint.txt
> > new file mode 100644
> > index 000000000000..cae2dad1223a
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/timer/sifive,clint.txt
> > @@ -0,0 +1,33 @@
> > +SiFive Core Local Interruptor (CLINT)
> > +-------------------------------------
> > +
> > +SiFive (and other RISC-V) SOCs include an implementation of the SiFive Core
> > +Local Interruptor (CLINT) for M-mode timer and inter-processor interrupts.
> > +
> > +It directly connects to the timer and inter-processor interrupt lines of
> > +various HARTs (or CPUs) so RISC-V per-HART (or per-CPU) local interrupt
> > +controller is the parent interrupt controller for CLINT device.
> > +
> > +The clock frequency of CLINT is specified via "timebase-frequency" DT
> > +property of "/cpus" DT node. The "timebase-frequency" DT property is
> > +described in: Documentation/devicetree/bindings/riscv/cpus.yaml
> > +
> > +Required properties:
> > +- compatible : "sifive,clint-1.0.0" and a string identifying the actual
> > +  detailed implementation in case that specific bugs need to be worked around.
>
> Should the "riscv,clint0" compatible string be documented here? This

Yes, I forgot to add this compatible string. I will add in v2.

> peripheral is not really specific to sifive, as it is present in most
> rocket-chip cores.

I agree that CLINT is present in a lot of non-SiFive RISC-V SOCs and
FPGAs but this IP is only documented as part of SiFive FU540 SOC.
(Refer, https://static.dev.sifive.com/FU540-C000-v1.0.pdf)

The RISC-V foundation should host the CLINT spec independently
under https://github.com/riscv and make CLINT spec totally open.

For now, I have documented it just like PLIC DT bindings found at:
Documentation/devicetree/bindings/interrupt-controller/sifive,plic-1.0.0.txt

If RISC-V maintainers agree then I will document it as "RISC-V CLINT".

@Palmer ?? @Paul ??

>
> > +- reg : Should contain 1 register range (address and length).
> > +- interrupts-extended : Specifies which HARTs (or CPUs) are connected to
> > +  the CLINT.  Each node pointed to should be a riscv,cpu-intc node, which
> > +  has a riscv node as parent.
> > +
> > +Example:
> > +
> > +     clint@2000000 {
> > +             compatible = "sifive,clint-1.0.0", "sifive,fu540-c000-clint";
> > +             interrupts-extended = <
> > +                     &cpu1-intc 3 &cpu1-intc 7
> > +                     &cpu2-intc 3 &cpu2-intc 7
> > +                     &cpu3-intc 3 &cpu3-intc 7
> > +                     &cpu4-intc 3 &cpu4-intc 7>;
> > +             reg = <0x2000000 0x4000000>;
> > +     };
> >
>
> --Sean

Regards,
Anup

