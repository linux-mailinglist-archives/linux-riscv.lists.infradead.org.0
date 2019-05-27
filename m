Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7AE62B65E
	for <lists+linux-riscv@lfdr.de>; Mon, 27 May 2019 15:26:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z4dkZFHkvWUMbtZri/JMx5qh9ftkgFYHVD5uvtxTRQo=; b=cekdPhlokB41bY
	/mhpmIRVpiPVesCwllDqLXIsXCZq2iAblZk1kjTtL60Qt3LavQNc5wnhq1Fu1IZVhb4yNdVNQkkgs
	dFbrfsSzCsrKxIEIg5zl3DQOQ9PxLO1SMIZgZvTwlJC/e7Lz0sQi8nwa6dlTw/Fxr8TOeUrH7AhbU
	r2VZxT1GjIK+UMW+FgPJ0zIgYifmzB6rBo8LsQ4FG0ZViPXgFw1xiVwuBscbhL85qDyG89zjtv/2c
	UUxM7YACtzenNwt+udKL4/ep7WgdKmJ1jvxxYkN9iqyiwVfuk460YpX/YtYs/FDLwDecYM18M2mxW
	t8njVBbqzy/0eFCoFa6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVFdV-0006nm-BJ; Mon, 27 May 2019 13:25:57 +0000
Received: from mail-vs1-xe42.google.com ([2607:f8b0:4864:20::e42])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVFdR-0006ms-NU
 for linux-riscv@lists.infradead.org; Mon, 27 May 2019 13:25:55 +0000
Received: by mail-vs1-xe42.google.com with SMTP id k187so10506544vsk.12
 for <linux-riscv@lists.infradead.org>; Mon, 27 May 2019 06:25:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=TnqAkKZ/K76fAJWhEEPhgphkdIHfqKGIyyQzSf7jGME=;
 b=BbvtYWZg5ZkOTgXuU5uOKiPR9P+u1cNbjMcHQ0bPb8azbm/FfT4yBlauUVp3em1+1j
 WZu5L2UC9NKmnUmn7T7BTBAkJkeohU1meVLncwtcXjZrLZoknxGGqRxPxtBjRmJLoFoP
 i3PW+wuEJ4ShMtK0rWFE0ub1VEasVVK0DhewCXLc3hefACh3/1FYsoXBXrva2Azu8hRm
 63DpSp63Q2YukGWqGo/GUAUWjYsFjdj0kbxyGZ1jOfCgwHmbAbV9s4XNQJQLVRBKGMUS
 BpJqJsQk397yx+u6FjnmkEcDWJpZPd2qe7q/l06gW94TTsb9RmCOS5IFXIpZpnE2Sd2F
 RNjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=TnqAkKZ/K76fAJWhEEPhgphkdIHfqKGIyyQzSf7jGME=;
 b=ZZvYmWPGgsfFvpknDQ0fHkvoAhWH/D1OnftT2kLZfN1n55iN/jFRYxDQHKvLrnitcO
 UwS1VPYWeM+m42QAQeTVjvFjUEw9O11Z63J2Y9W6JR4QMds/lzHNx5QWJJBgios14UGV
 UQW9YizFXdQIauiASmRmqNZOttojsk7iFDjsuAQgL9ooRg/21vZYLNvlTAOYC2tPVdrf
 GZP8dJXHhx87cvd2CsUqznsWK/eZ0bxIs2876k3hDsypI76bBzy7y9ntzshxdbkwapo9
 7tj2rXjvBj7Gw9X3/iB/rIs+reeUO/+VDzqLBaxJW2xiq6SNW7RTYnan44ccLfd/7PIZ
 5f3w==
X-Gm-Message-State: APjAAAWNDiD2cGuKfEFUud6ckl770BQiHC0PxMyPbTUFK7dKw47sR2pf
 INBMPtU3JtflW9l/PmntXnHe1KmyA/VeUSNA2H3TUQ==
X-Google-Smtp-Source: APXvYqy4tUwxlDxM4P+E2AZD0QtkW0gxj57YCASYDfSgwOAeG101rQ0S+ov4VOwe/SZeF71qMCMhrXm9O39FqYVPGhM=
X-Received: by 2002:a67:f057:: with SMTP id q23mr57437576vsm.116.1558963552162; 
 Mon, 27 May 2019 06:25:52 -0700 (PDT)
MIME-Version: 1.0
References: <1558515574-11155-1-git-send-email-sagar.kadam@sifive.com>
 <1558515574-11155-2-git-send-email-sagar.kadam@sifive.com>
 <20190524204012.GA2580@bogus>
In-Reply-To: <20190524204012.GA2580@bogus>
From: Sagar Kadam <sagar.kadam@sifive.com>
Date: Mon, 27 May 2019 18:55:41 +0530
Message-ID: <CAARK3H=qGkKodSdMe+e9N6A-t1cZoiJLatZfcv+A1G1Zuw5VVQ@mail.gmail.com>
Subject: Re: [PATCH v7 1/3] dt-bindings: i2c: extend existing opencore
 bindings.
To: Rob Herring <robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_062553_790587_BCF071DF 
X-CRM114-Status: GOOD (  18.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Andrew Lunn <andrew@lunn.ch>,
 peter@korsgaard.com, devicetree@vger.kernel.org,
 Palmer Dabbelt <palmer@sifive.com>, linux-kernel@vger.kernel.org,
 Linux I2C <linux-i2c@vger.kernel.org>,
 Paul Walmsley <paul.walmsley@sifive.com>, linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi Rob,

On Sat, May 25, 2019 at 2:10 AM Rob Herring <robh@kernel.org> wrote:
>
> On Wed, May 22, 2019 at 02:29:32PM +0530, Sagar Shrikant Kadam wrote:
> > Reformatted compatibility strings to one valid combination on
> > each line.
> > Add FU540-C000 specific device tree bindings to already available
> > i2-ocores file. This device is available on
> > HiFive Unleashed Rev A00 board. Move interrupt under optional
> > property list as this can be optional.
> >
> > The FU540-C000 SoC from sifive, has an Opencore's I2C block
> > reimplementation.
> >
> > The DT compatibility string for this IP is present in HDL and available at.
> > https://github.com/sifive/sifive-blocks/blob/master/src/main/scala/devices/i2c/I2C.scala#L73
> >
> > Signed-off-by: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
> > ---
> >  Documentation/devicetree/bindings/i2c/i2c-ocores.txt | 9 +++++++--
> >  1 file changed, 7 insertions(+), 2 deletions(-)
> >
> > diff --git a/Documentation/devicetree/bindings/i2c/i2c-ocores.txt b/Documentation/devicetree/bindings/i2c/i2c-ocores.txt
> > index 17bef9a..db96951 100644
> > --- a/Documentation/devicetree/bindings/i2c/i2c-ocores.txt
> > +++ b/Documentation/devicetree/bindings/i2c/i2c-ocores.txt
> > @@ -1,9 +1,13 @@
> >  Device tree configuration for i2c-ocores
> >
> >  Required properties:
> > -- compatible      : "opencores,i2c-ocores" or "aeroflexgaisler,i2cmst"
> > +- compatible      : "opencores,i2c-ocores",
> > +                    "aeroflexgaisler,i2cmst",
> > +                    "sifive,fu540-c000-i2c","sifive,i2c0".
>
> space needed                                   ^
>
> And drop the end of line commas and period.
>
>
> > +                    For Opencore based I2C IP block reimplemented in
> > +                    FU540-C000 SoC.Please refer sifive-blocks-ip-versioning.txt
>
> And here too.
>
> And 'refer to'
I will incorporate the changes you have suggested.

Thanks,
Sagar Kadam
>
> > +                    for additional details.
> >  - reg             : bus address start and address range size of device
> > -- interrupts      : interrupt number
> >  - clocks          : handle to the controller clock; see the note below.
> >                      Mutually exclusive with opencores,ip-clock-frequency
> >  - opencores,ip-clock-frequency: frequency of the controller clock in Hz;
> > @@ -12,6 +16,7 @@ Required properties:
> >  - #size-cells     : should be <0>
> >
> >  Optional properties:
> > +- interrupts      : interrupt number.
> >  - clock-frequency : frequency of bus clock in Hz; see the note below.
> >                      Defaults to 100 KHz when the property is not specified
> >  - reg-shift       : device register offsets are shifted by this value
> > --
> > 1.9.1
> >

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
