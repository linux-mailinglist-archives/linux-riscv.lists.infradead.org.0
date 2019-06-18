Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C73B497DE
	for <lists+linux-riscv@lfdr.de>; Tue, 18 Jun 2019 05:55:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1s7h7rKs3WnaFXrSBz4whaDxiAnpSvspRz1ObOB04Wk=; b=C5tuH473LNQEi2
	GOOFEcHvPJyoXk/GiXagqK7p8PCsZXoi5HqJbHSE/ns9gKy0NDFwKx/DkGS+ta3X4HmgOjCcJrys0
	ksOEPbpNdIzlU8gfkU5nwcTjz5Q7fAz34KG4082XdVGI6pK4N9jHM7u6DVYyZrVuCdSaqE6Iy0cNQ
	meUROijJSee21WNlXkNed25U32kUOJ2RzN+TV+JoCd2ZSRN98Gw1RwRItV8xmWw3Tdj7mLyxy9+0Q
	F3h5kOcbHVLQhX/q+8jzO2FDGjKwOmINAYXdPlKwJXH1aEeNkozjD3iQoHQ87GwKJR73HLI8swXkr
	PR13l5hlE2m37osLpJUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hd5Dk-0005q0-3c; Tue, 18 Jun 2019 03:55:44 +0000
Received: from mail-ua1-x942.google.com ([2607:f8b0:4864:20::942])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hd5Dg-0005pB-KO
 for linux-riscv@lists.infradead.org; Tue, 18 Jun 2019 03:55:41 +0000
Received: by mail-ua1-x942.google.com with SMTP id r7so4475419ual.2
 for <linux-riscv@lists.infradead.org>; Mon, 17 Jun 2019 20:55:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=hbfLnulmtVwAqcwjBVQHbsEOQQi7C7z9WxtDTCZnrSI=;
 b=Re+YlSEGCfJ1SB3VhHEwCwAT+I6ygr7MjUUslXWdDU+dVyBdMjbbUUINT+gn0f95Gt
 gg9fFMRoUhdyB6aOwVFzTZ3x9HpJzIfrsQQmJYlKO1ckg+tr2CWBpsvsicjNlcfcOZPh
 Jjo2Ollxxgw1eq8cCXM6IblE9BTSEwKlx+gLpDFZZml6K9kj5sixbtZvglbkm5NeO1FJ
 pn3L7N/EWqLXNXzMgN2GKO0YoOCHfJV7awJALwiImDvE42Anq00vY7lL2mf79V5hV7EE
 WHb1h4xgcSiq4zEuMJvXyznw1cgR1HYOomy/E98TBj9AOe7bTOU1woffrfzuLkYRRzhz
 SzBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=hbfLnulmtVwAqcwjBVQHbsEOQQi7C7z9WxtDTCZnrSI=;
 b=naMi3Zpb6/9WaAFYxdqhUB7y3SYk9/ar9fsT5A8420HO1/9J8y1I1F/ejfPKqdZPxu
 B+EB7P5dYQ1WupIKwxc3fYJDPxANtCpVjvJcSFoD+COHi/Rhx4Wc8ACIIh6946MguG3d
 HGo25li3Byhf+7+cN7G80NcDteBUYpnainNCWzUe87CQLdHx1ZOtDdgrXOFHrqWXM4Ec
 ErdRIvvEfh8yiVHXNhvzy8DzUxWCaFraFTrgiclQSe54aI7f552KXkEc7+1m245xHhvZ
 Elbko2C6q/PBM7uB/nyQ0QBtbaaPPlume/2Q8GrC5humUQWRXJZogIoYNZh2NuLsBiOQ
 FPaw==
X-Gm-Message-State: APjAAAWFYYjdNXNz6UlUAIMeIpp/T+8Ez3duelX0ZsyNGQIoMKuTwfYv
 57/KC5N57HoK0q/BRFB+Noxu7HGGoABey7lDP83plQ==
X-Google-Smtp-Source: APXvYqy1BIINnP7iB/p/G3CX4qFC0WhpHRsPDZZFp+sb3Ovjpawek1cuOI5hDkFHe03zqioI/wdd62UnpITKNKUex9w=
X-Received: by 2002:a67:c84:: with SMTP id 126mr54621301vsm.178.1560830139405; 
 Mon, 17 Jun 2019 20:55:39 -0700 (PDT)
MIME-Version: 1.0
References: <1560336476-31763-1-git-send-email-sagar.kadam@sifive.com>
 <1560336476-31763-3-git-send-email-sagar.kadam@sifive.com>
 <70732c8e-111f-7c46-9e93-11894d944a1d@ti.com>
 <CAARK3HmFg=v+cMGAykPPpwxDGaSKk5k+Gz4fSHQPQmg-rCjPhQ@mail.gmail.com>
 <547e251d87e307fa4d1e31dfc61b496c152f0905.camel@perches.com>
In-Reply-To: <547e251d87e307fa4d1e31dfc61b496c152f0905.camel@perches.com>
From: Sagar Kadam <sagar.kadam@sifive.com>
Date: Tue, 18 Jun 2019 09:25:27 +0530
Message-ID: <CAARK3H=4QjWr3D7GpNbw9YbFm9C+t5CDcMU=o6_O7rb1ofHuMA@mail.gmail.com>
Subject: Re: [PATCH v5 2/3] mtd: spi-nor: add support to unlock flash device
To: Joe Perches <joe@perches.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_205540_679904_2D179072 
X-CRM114-Status: GOOD (  11.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:942 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: aou@eecs.berkeley.edu, Vignesh Raghavendra <vigneshr@ti.com>,
 tudor.ambarus@microchip.com, Wesley Terpstra <wesley@sifive.com>,
 richard@nod.at, Palmer Dabbelt <palmer@sifive.com>,
 linux-kernel@vger.kernel.org, marek.vasut@gmail.com,
 linux-mtd@lists.infradead.org, Paul Walmsley <paul.walmsley@sifive.com>,
 miquel.raynal@bootlin.com, linux-riscv@lists.infradead.org,
 computersforpeace@gmail.com, dwmw2@infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hello Joe,

Thanks for reviewing the patch.

On Tue, Jun 18, 2019 at 5:55 AM Joe Perches <joe@perches.com> wrote:
>
> On Mon, 2019-06-17 at 21:10 +0530, Sagar Kadam wrote:
> > On Sun, Jun 16, 2019 at 6:35 PM Vignesh Raghavendra <vigneshr@ti.com> wrote:
> []
> > > > +static int issi_unlock(struct spi_nor *nor, loff_t ofs, uint64_t len)
> > > > +{
> []
> > > > +     if (ret > 0 && !(ret & mask)) {
> > > > +             dev_info(nor->dev,
> > > > +                     "ISSI Block Protection Bits cleared SR=0x%x", ret);
>
> Please use '\n' terminations on formats
>
I will include this in v6.

> > > > +             ret = 0;
> > > > +     } else {
> > > > +             dev_err(nor->dev, "ISSI Block Protection Bits not cleared\n");
>
> like this one
>
> > > > +             ret = -EINVAL;
> > > > +     }
> > > > +     return ret;
> > > > +}
> > > > +
> > > > +/**
> > > >   * spansion_quad_enable() - set QE bit in Configuraiton Register.
>
> s/Configuraiton/Configuration/
>
>
Thanks & BR,
Sagar Kadam

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
