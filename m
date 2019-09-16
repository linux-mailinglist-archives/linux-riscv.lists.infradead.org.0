Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A39FB3939
	for <lists+linux-riscv@lfdr.de>; Mon, 16 Sep 2019 13:19:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=smEWuRmeR+jPMmbrxjRuxOH6KJ/8MuUE4Eub2+aZLIM=; b=WTpOKCEnaT9/Af
	WuDl9XYLQjJZ4ElaejgFQWjCxo5k0r38j0Q3QVUafY9vmDYSMGmlA30TkaESQsSd4TsS5gXpykpb0
	Zi11tQYD7vGEZelLfC/Z2J8uiKteV+aUZNnwH+xXXbQR6CqXfRWXHTpNa5qCelAQzhmzqIIQfxX2N
	ADZ06seba8rQbtpmIqW9xKOPbxESgB5GgsWM2PG8Q+5hMmn50IQdv5EGBTvuFjawm1rmjU4+jaqsc
	+hFYKAwx1vnj1sXXNp6y9FJhHcGk/XEyT3weShY9bBBuLAefT7nlPwhCesKpKknxAfRWH1CoShpO3
	xk5aTb7stu9Wi6Xch/sw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9p2R-00043Y-LB; Mon, 16 Sep 2019 11:19:23 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9p2O-00042c-DU
 for linux-riscv@lists.infradead.org; Mon, 16 Sep 2019 11:19:21 +0000
Received: by mail-lj1-x241.google.com with SMTP id y23so32984886ljn.5
 for <linux-riscv@lists.infradead.org>; Mon, 16 Sep 2019 04:19:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=kBaeJfwfLppWDTN+c6Xvp7a5lgEjyq6CvqRjPSkCSsE=;
 b=cPJCYXpgljA0EuMpwlRYgb88hmtm+Zkd2PS4bdnP81XMW+yr9JYKQSAbNKNwxpt6at
 4PBcfW5bxEba2Tx5Sj3WwXWjz2azW8gO95W5Xi7jd3m2hwXZHpgullc+s5IzY2TfEm9V
 i4vYgOzSm5xR9z0hofUO7ZU/IcbXCQaJTXQ7dnXY7N8YIxMm5ac7qqYtp8larQie7Gx8
 JpWFAm4Uckdb1l4benKPwBRAv06azKk87xvEjm6KRLZq12ik3m5yutAbrWYwNsm9ng3V
 ulWYAkmwDNkw9l0coapQBWCETEbgrMyaIsKRyFec52KeYwd4DLO22lDOa2cmBxNCcEvc
 +l8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=kBaeJfwfLppWDTN+c6Xvp7a5lgEjyq6CvqRjPSkCSsE=;
 b=WzFKoeU8rCixMGuBoW8cYrY3KcDOGV4AFe9qhpmeM7jDQOFg2Rp6NHx7ACt5kSWSWZ
 1cTJry+HLmiSzzpzl/lRwD1NmFUoZ5QyNbFRg6W60HZjVDSGudJTVAHfxMZg3rUfzfEM
 O3q4/yLzsNBBgeU7ITn/HJLonnOAYVI0ELaTxxvDsykSLm0u6KZRs3A7fe6skLuQ3chl
 hvuX5KmyPvGPx7QhRoIPeAdB/0KkxxxBD6ghxxJcd6hPXK0LZVgMk8MUubI2nBaQGxGx
 Vt9CnJok/RK35626HGXVnO0gydLABxqRkl490HPP4yfteq+i64sGOdu/TzKbRaalsbe+
 ox+g==
X-Gm-Message-State: APjAAAUzasQMtZSMqAB03NStcoVlLpPSzK77M0KOWX7K9WSMcXRvYFfZ
 qlfHRyYmkRdQwNmxBN9HvqR1cr+MTBeukyQih6DX7w==
X-Google-Smtp-Source: APXvYqzOtuwatIM/fN0oMz9nahH5wOlxzjhK7WDQLmP/Km/rbyCRcFoqvVU/Rdd5uxZhJR9bw/zv3oHPCEVO+AqNIpc=
X-Received: by 2002:a2e:a408:: with SMTP id p8mr5099774ljn.54.1568632756996;
 Mon, 16 Sep 2019 04:19:16 -0700 (PDT)
MIME-Version: 1.0
References: <CAJ2_jOGO-isv52rnwRusV7jtyCY_JWYWAj9opN3Zg6ZbZr-8-w@mail.gmail.com>
 <mhng-c8b87e96-987e-4577-acc2-1e22c9b81b10@palmer-si-x1e>
In-Reply-To: <mhng-c8b87e96-987e-4577-acc2-1e22c9b81b10@palmer-si-x1e>
From: Yash Shah <yash.shah@sifive.com>
Date: Mon, 16 Sep 2019 16:48:40 +0530
Message-ID: <CAJ2_jOHJ5zuxDc6gsFiZou+-yVg=pr+uSHGJB8VPT1O-Bu3idg@mail.gmail.com>
Subject: Re: [PATCH] riscv: dts: Add DT support for SiFive FU540 PWM driver
To: Palmer Dabbelt <palmer@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_041920_469021_287167FC 
X-CRM114-Status: GOOD (  17.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Albert Ou <aou@eecs.berkeley.edu>,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 Sachin Ghadi <sachin.ghadi@sifive.com>, Rob Herring <robh+dt@kernel.org>,
 Sagar Kadam <sagar.kadam@sifive.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv@lists.infradead.org, Bin Meng <bmeng.cn@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Sat, Sep 14, 2019 at 2:50 AM Palmer Dabbelt <palmer@sifive.com> wrote:
>
> On Tue, 10 Sep 2019 02:52:07 PDT (-0700), yash.shah@sifive.com wrote:
> > Hi,
> >
> > Any comments on this patch?
>
> I don't see "sifive,pwm0" in the DT bindings documentation, and it doesn't
> match our standard way of doing these things (which would have at least
> "sifive,fu540-c000-pwm").

"sifive,pwm0" is present in the DT bindings documentation at
Documentation/devicetree/bindings/pwm/pwm-sifive.txt
Yes, I agree that this patch is missing "sifive,fu540-c000-pwm". I
will add it along with "sifive,pwm0" and repost as version 2.

Thanks for your comment.

- Yash
>
> >
> > - Yash
> >
> > On Wed, Aug 21, 2019 at 2:53 PM Yash Shah <yash.shah@sifive.com> wrote:
> >>
> >> Add the PWM DT node in SiFive FU540 soc-specific DT file.
> >> Enable the PWM nodes in HiFive Unleashed board-specific DT file.
> >>
> >> Signed-off-by: Yash Shah <yash.shah@sifive.com>
> >> ---
> >>  arch/riscv/boot/dts/sifive/fu540-c000.dtsi          | 19 +++++++++++++++++++
> >>  arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts |  8 ++++++++
> >>  2 files changed, 27 insertions(+)
> >>
> >> diff --git a/arch/riscv/boot/dts/sifive/fu540-c000.dtsi b/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
> >> index 42b5ec2..bb422db 100644
> >> --- a/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
> >> +++ b/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
> >> @@ -230,6 +230,25 @@
> >>                         #size-cells = <0>;
> >>                         status = "disabled";
> >>                 };
> >> +               pwm0: pwm@10020000 {
> >> +                       compatible = "sifive,pwm0";
> >> +                       reg = <0x0 0x10020000 0x0 0x1000>;
> >> +                       interrupt-parent = <&plic0>;
> >> +                       interrupts = <42 43 44 45>;
> >> +                       clocks = <&prci PRCI_CLK_TLCLK>;
> >> +                       #pwm-cells = <3>;
> >> +                       status = "disabled";
> >> +               };
> >> +               pwm1: pwm@10021000 {
> >> +                       compatible = "sifive,pwm0";
> >> +                       reg = <0x0 0x10021000 0x0 0x1000>;
> >> +                       interrupt-parent = <&plic0>;
> >> +                       interrupts = <46 47 48 49>;
> >> +                       reg-names = "control";
> >> +                       clocks = <&prci PRCI_CLK_TLCLK>;
> >> +                       #pwm-cells = <3>;
> >> +                       status = "disabled";
> >> +               };
> >>
> >>         };
> >>  };
> >> diff --git a/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts b/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
> >> index 93d68cb..104d334 100644
> >> --- a/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
> >> +++ b/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
> >> @@ -85,3 +85,11 @@
> >>                 reg = <0>;
> >>         };
> >>  };
> >> +
> >> +&pwm0 {
> >> +       status = "okay";
> >> +};
> >> +
> >> +&pwm1 {
> >> +       status = "okay";
> >> +};
> >> --
> >> 1.9.1
> >>

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
