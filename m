Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 040D9B4D9C
	for <lists+linux-riscv@lfdr.de>; Tue, 17 Sep 2019 14:15:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/JbJMvmj5QBnd2uUGERwnaxmWeWcbAAEwZ06IIRA3YE=; b=mc6QDkR856tLKI
	qNp+cSUd3N5HNwa80DpurHxANoJolJ/VewsJ4H+Wjya1jGqHHtzFUgEfBE1ZnCgkU+byMdp4Uz9gL
	Cpt0QlN8uTlRxWLLWb+7vsuDWUsmeEZD2q8LhGttDHiRDQVywB50Rnr5Y4ML7kYnCt0sVy6Q4qCTI
	RTlfhrhOKsvp5CknsqCl9Kx7rWbX/Haz6pzXO11uaITC6VYSr+vWuqSvSWZ40CWT3bMY1OmT12MER
	VB4j5mMGg4huB5lAXvW3OG+EneQUcZlu5JEF/14wuAYJPWzYQxXF6b8I3UrUJL6twjkQt9tZDpmME
	Pc99Y8BQt/3ri2sevzYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iACOO-0002gg-5X; Tue, 17 Sep 2019 12:15:36 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iACOJ-0002fm-5J
 for linux-riscv@lists.infradead.org; Tue, 17 Sep 2019 12:15:32 +0000
Received: by mail-wr1-x442.google.com with SMTP id v8so2940082wrt.2
 for <linux-riscv@lists.infradead.org>; Tue, 17 Sep 2019 05:15:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=XTkEiDr+Efjwc1YXx3Nos3anR5keJEKk4IdJ0xKDQqQ=;
 b=Z9hnNWDFFYfXXZtUmieLU1+17tbedb1QQZe6lQmZlJi2KQTfmukKD4mYpdD87AKp8f
 v70NBwT1bNf0l7pPBtJvRwMbn7MYuKKKse4TSQISZwzayJC9r8gAKN1GrfvJSpGbK4Uo
 GBJK4yaLWvNwxUgm7MCh4HBPOox79mFdatyuKM/5FekdfhyBWmA4WUDaUWaRr9e6kgTv
 jDwR02MeGt/Xy7yV59hUfxxvUUW6pVx5yexGyMQQJnVvoyxRh0Y+8dc0O4qz+qHYQMF6
 W3/hvjexZH5ZkAGfaKExu73hfGrho6DTILoKAqHFq2saAtrhIzT8FBGHMakAm1Hf09Tk
 ubQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=XTkEiDr+Efjwc1YXx3Nos3anR5keJEKk4IdJ0xKDQqQ=;
 b=O+dseDYcF6Y2aa+LABybkHLJODZuBROoJ9CwX9XbM7V93xklZln15CdAeD8U+yK85G
 6tDpE3L29V/y+quFDk6Olry6rLak7oi4805/ZBtQX5OOT0y0yySwoZxEDEvgMpB9WZUa
 I2MV/MAf8wTSjDBb5Fc3NLEMlYJfCttuPWg3nWtybWP+OewRl3TC4YFURG80kmZSQiVR
 uZk91JA0cPmtQxwNDQha4NVHZXruNARIHZVC/Fuub1gAjVPDP+QpUczfNZmITHbsWo9j
 IhhSUp80+xgDxvWgOMyrRA5EFdzNq6QkQClTES0m6JqCUlrL5R1vnEes70Ja4PAolltb
 rQhA==
X-Gm-Message-State: APjAAAUme5cWVjS0EtI6peizNy0je3h2zUoBYkigXtmRyoLW/Bj+E5tk
 /sqPg2qIDn84k5gNYyef9sL6zw==
X-Google-Smtp-Source: APXvYqybIIJ4Qs9uNxPcmswpxKdrs6cGATqMPNepsGv9voMWM8blurF16GmXEfIxIJJPNBriP4ED2Q==
X-Received: by 2002:adf:f150:: with SMTP id y16mr2587728wro.71.1568722528223; 
 Tue, 17 Sep 2019 05:15:28 -0700 (PDT)
Received: from localhost ([195.200.173.126])
 by smtp.gmail.com with ESMTPSA id y186sm4139994wmb.41.2019.09.17.05.15.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Sep 2019 05:15:27 -0700 (PDT)
Date: Tue, 17 Sep 2019 05:15:26 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Baolin Wang <baolin.wang@linaro.org>, 
 Aurabindo Jayamohanan <mail@aurabindo.in>
Subject: Re: [PATCH] spi: sifive: check return value for
 platform_get_resource()
In-Reply-To: <CAMz4kuJczzjTPSohQ=kbZ0Pr7U_9-hzXk-jPgKk79PENOM1-dA@mail.gmail.com>
Message-ID: <alpine.DEB.2.21.9999.1909170514130.11980@viisi.sifive.com>
References: <20190917085627.4562-1-mail@aurabindo.in>
 <CAMz4kuJczzjTPSohQ=kbZ0Pr7U_9-hzXk-jPgKk79PENOM1-dA@mail.gmail.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_051531_275323_9C5A2E71 
X-CRM114-Status: GOOD (  12.56  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.7 URIBL_BLACK            Contains an URL listed in the URIBL blacklist
 [URIs: aurabindo.in]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-riscv@lists.infradead.org, Mark Brown <broonie@kernel.org>,
 palmer@sifive.com, LKML <linux-kernel@vger.kernel.org>,
 linux-spi <linux-spi@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, 17 Sep 2019, Baolin Wang wrote:

> On Tue, 17 Sep 2019 at 17:12, Aurabindo Jayamohanan <mail@aurabindo.in> wrote:
> >
> > platform_get_resource() may return NULL. If it is so, return -ENXIO
> >
> > Signed-off-by: Aurabindo Jayamohanan <mail@aurabindo.in>
> > ---
> >  drivers/spi/spi-sifive.c | 6 ++++++
> >  1 file changed, 6 insertions(+)
> >
> > diff --git a/drivers/spi/spi-sifive.c b/drivers/spi/spi-sifive.c
> > index 93ec2c6cdbfd..67485067a694 100644
> > --- a/drivers/spi/spi-sifive.c
> > +++ b/drivers/spi/spi-sifive.c
> > @@ -308,6 +308,12 @@ static int sifive_spi_probe(struct platform_device *pdev)
> >         platform_set_drvdata(pdev, master);
> >
> >         res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> > +       if (!res) {
> > +               dev_err(&pdev->dev, "no IOMEM resource found\n");
> > +               ret = -ENXIO;
> > +               goto put_master;
> > +       }
> 
> Seems unnecessary, the devm_ioremap_resource() already validated if
> the resource is available.

Just doublechecked lib/devres.c and I agree with you.

Aurobindo, is this a patch for a real problem that you've encountered?


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
