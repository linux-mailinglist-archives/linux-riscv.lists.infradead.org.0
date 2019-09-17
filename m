Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC55DB4EC7
	for <lists+linux-riscv@lfdr.de>; Tue, 17 Sep 2019 15:08:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sUnFDWbjN5ojqV9xhdJov10suZJDs3n5xepXH6C3Dys=; b=QlnsI4RHQ4PgXL
	xEOoJLOh1pvmFc/ORqFkg0Pw+LV4oYWtf8FdKsYrjdUV7xqM82LQDsxrR4oH7Xe4jxwpANf5fVhU1
	xofHOW5aD2ch3AKLR8+BV7Ys+b+DBoF0ZsjUnNMbnY1CZkkkQ4z1BhbmuivUna4k1IYFMadRRcjT9
	xrDmCGInm+CQeqgvX/Z4mNl3pdTcYpAx6U0jQrm/hE9K3db7ugp8BOkKDY+fLkPVO0BGvw7rvM8Tt
	PygeMVn7dYBfGim+SFyWecInVN4q0spdVSomMN8GM4+2OKf9f7Ua+KKu/Z/F0hwoVyoGwgyvOf7ID
	RlMxWi0Yc3jae3sjo9lg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iADDE-0000Kx-AY; Tue, 17 Sep 2019 13:08:08 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iADD8-0000K5-Vi
 for linux-riscv@lists.infradead.org; Tue, 17 Sep 2019 13:08:05 +0000
Received: by mail-oi1-f193.google.com with SMTP id x3so1299527oig.2
 for <linux-riscv@lists.infradead.org>; Tue, 17 Sep 2019 06:08:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=g5v8FU71dAfo6AK8WTwyNN8dUr35hQbvr87IlwvE3Io=;
 b=V8xnicDxGWgleLbt1iFvpRt7tZ2DtduestlT47z/GdhRvUzdY7l4CSd6Nj7fclBBXe
 dsZVb/gyyZ6eMcm5ncpp8vk7cDlLP8yk4MGvb1Cq7tQLgKXjxaiqFrOdo2fqp6jm6D7l
 ip0ejLlELDlBPOccj0sSoX5/GU8F2WEl0fPI1Mn2PD5QhfgxXxn3lx3Y8WfccjoHJlgH
 KVP/KQjPlNw2ZIvATGQmJs1/OQ6W/l3k8IJvk42YrZtzdOgMAK9xJ1KC+r7kDUfoZDTU
 K/TDR6EnvLYAyu3VTSyuvH4UYO32UCp/qFKWLcFCO5BdAxaQEWHjOwM0vn9FYtlF0Vno
 FuPw==
X-Gm-Message-State: APjAAAWd82AQ3f19thgvgCIckkbBgwojq6iPlqMd3dZmO4hEUSw5YLxs
 H2BjJy+7qmVBf78jTL44jziUxl7XyE2plOaDEcjVNwhc
X-Google-Smtp-Source: APXvYqwaN0kfjgdIW7t8fVP0vFGof1Lyd2AQyOoUJABwhT7LNqO2zCq1HVMxQCezu3Iin5SuAjx5mTMktLbiN4Zh36M=
X-Received: by 2002:aca:f305:: with SMTP id r5mr3356423oih.131.1568725681893; 
 Tue, 17 Sep 2019 06:08:01 -0700 (PDT)
MIME-Version: 1.0
References: <20190917085627.4562-1-mail@aurabindo.in>
 <CAMz4kuJczzjTPSohQ=kbZ0Pr7U_9-hzXk-jPgKk79PENOM1-dA@mail.gmail.com>
 <alpine.DEB.2.21.9999.1909170514130.11980@viisi.sifive.com>
In-Reply-To: <alpine.DEB.2.21.9999.1909170514130.11980@viisi.sifive.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 17 Sep 2019 15:07:50 +0200
Message-ID: <CAMuHMdW5VgFG3NrYpPmr0VY-oG4AV3itT7mk6jbpT2w3BH0vOw@mail.gmail.com>
Subject: Re: [PATCH] spi: sifive: check return value for
 platform_get_resource()
To: Paul Walmsley <paul.walmsley@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_060803_021776_8B0C5703 
X-CRM114-Status: GOOD (  16.33  )
X-Spam-Score: 2.1 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 1.7 URIBL_BLACK            Contains an URL listed in the URIBL blacklist
 [URIs: aurabindo.in]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Baolin Wang <baolin.wang@linaro.org>, Palmer Dabbelt <palmer@sifive.com>,
 Aurabindo Jayamohanan <mail@aurabindo.in>, LKML <linux-kernel@vger.kernel.org>,
 linux-spi <linux-spi@vger.kernel.org>, Mark Brown <broonie@kernel.org>,
 linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi Paul,

On Tue, Sep 17, 2019 at 2:16 PM Paul Walmsley <paul.walmsley@sifive.com> wrote:
> On Tue, 17 Sep 2019, Baolin Wang wrote:
> > On Tue, 17 Sep 2019 at 17:12, Aurabindo Jayamohanan <mail@aurabindo.in> wrote:
> > > platform_get_resource() may return NULL. If it is so, return -ENXIO
> > >
> > > Signed-off-by: Aurabindo Jayamohanan <mail@aurabindo.in>
> > > ---
> > >  drivers/spi/spi-sifive.c | 6 ++++++
> > >  1 file changed, 6 insertions(+)
> > >
> > > diff --git a/drivers/spi/spi-sifive.c b/drivers/spi/spi-sifive.c
> > > index 93ec2c6cdbfd..67485067a694 100644
> > > --- a/drivers/spi/spi-sifive.c
> > > +++ b/drivers/spi/spi-sifive.c
> > > @@ -308,6 +308,12 @@ static int sifive_spi_probe(struct platform_device *pdev)
> > >         platform_set_drvdata(pdev, master);
> > >
> > >         res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> > > +       if (!res) {
> > > +               dev_err(&pdev->dev, "no IOMEM resource found\n");
> > > +               ret = -ENXIO;
> > > +               goto put_master;
> > > +       }
> >
> > Seems unnecessary, the devm_ioremap_resource() already validated if
> > the resource is available.
>
> Just doublechecked lib/devres.c and I agree with you.
>
> Aurobindo, is this a patch for a real problem that you've encountered?

Probably not.

The sequence can be replaced by a single call to
devm_platform_ioremap_resource(), which BTW also doesn't check the
intermediate result, as that's unneeded.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
