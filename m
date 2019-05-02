Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B04C116BA
	for <lists+linux-riscv@lfdr.de>; Thu,  2 May 2019 11:50:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UOdFxLUqwix5IviFh7Wf7MIgdYvtrST+LAbh9JGNffk=; b=bRWVY2IccSj7Kh
	wOeSCgFo3tEIDVAGCEIYJzxj6bfS7kqMrq/xyPnxBRnOGT2/pBr3kqDb2mECR2w1QzWC33ZlAPCD9
	xS+irU9VL6FkpnZePV6KQtyCsbyuK2qpVRxU4RYc8qis+bBha/IznaBAUDFhFcCOxA+owQAkLdiCh
	8vWasyvo3b+a5M64UR3D129lcKIgxk84GRhxCbLLjDK6rM95i6T6+W3dXZOhswNgqRd1or7PR6jE2
	tKHMv6rKH9cZVe8Uer+bPAc5jO83e7EClERbDUFJte9FA+DQUTI5Lwzsj/T00BqFT5q2ckdD60T28
	powSo6q/yJPV8WAMT1og==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hM8MM-0007k8-5r; Thu, 02 May 2019 09:50:34 +0000
Received: from mail-vs1-xe42.google.com ([2607:f8b0:4864:20::e42])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hM8MB-0007b5-NF
 for linux-riscv@lists.infradead.org; Thu, 02 May 2019 09:50:25 +0000
Received: by mail-vs1-xe42.google.com with SMTP id b23so1009662vso.1
 for <linux-riscv@lists.infradead.org>; Thu, 02 May 2019 02:50:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=keAes192gnrFcSFqXV1m3IUSUAMiPAOK4rQjZDjH5pI=;
 b=BX4nZWabL1FBUgQQIP5xUtBD0Ydn1/qRre827GC5X0v65wAictFYc2/JYEV1utJ2R/
 8ovvH6UcxqPuFoKh70cJGDwl30VleX42wVx3XPO3SjKfCQR2TiiDK8GHPCc8SfjAzMv0
 JAX6VElspWsKr7ZY/OkmPgh1Kw+7lAoPFTcLVgkRulhmQmXYN38TCXqdx0osl3j5Wkxn
 hmpSUSHvgtkOoq5C0zDP0nBKjqozOXKVuVsna4xb90+qznOzIS/fcHe1LF4ggVdhPJNZ
 unTHUdxSjrhDgjuQYQOyrtRVRVn7Xd4gBViun011N4h6aGP0IRfcw2JXd7FmICRUppKn
 DyVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=keAes192gnrFcSFqXV1m3IUSUAMiPAOK4rQjZDjH5pI=;
 b=pP7ncoZHS2vt0Jo4E0R6ftWcwhIrVoYQhKwoEghqHfEjblelPrHhZsEHDq6cEVdJ3A
 uNy2F+Lp9vExWyubmnCYIG2NWqjhsroGFTn1SzkPBimYCW3QY/awekYEWUZ/au170VFV
 VbKEQYQOTJLIXN+EGg8HiRrpYNnvQfvcHKt9D+mLjttdCSuCqm/k0r1Df2eVsIWp5OVO
 4WuTp71BtvcHK/92CggL5hE1jr7HMoXCq2glAg2b69F+Sp37KCWnYb9FrjGyhEumkRGE
 rvFIXgYbs8jJXsXt0AYuT0RY2Gzc64m9zvfkGLB2F0gxwaw1fl8X9zYlZLu1e+CgRuzF
 fRaA==
X-Gm-Message-State: APjAAAXwPHb3d1WXhUabPrzE2xz5ysFkQVSTh6bqhnn4smglk0n1tSam
 7FEaH7bXxXjpeofD7exM16p5OwsbShpn+MS9PO+e2Q==
X-Google-Smtp-Source: APXvYqxx/FX3/IKosWRbFNCh1CRrGqLdhXbBkxySTU2eoGaeDFJ6o+ccMLi1ZJecmMwPjn5xTCeXYWtfZMqlG3yh9LQ=
X-Received: by 2002:a67:ea45:: with SMTP id r5mr1312876vso.92.1556790621948;
 Thu, 02 May 2019 02:50:21 -0700 (PDT)
MIME-Version: 1.0
References: <1556474956-27786-1-git-send-email-sagar.kadam@sifive.com>
 <1556474956-27786-2-git-send-email-sagar.kadam@sifive.com>
 <alpine.DEB.2.21.9999.1904301002170.7063@viisi.sifive.com>
In-Reply-To: <alpine.DEB.2.21.9999.1904301002170.7063@viisi.sifive.com>
From: Sagar Kadam <sagar.kadam@sifive.com>
Date: Thu, 2 May 2019 15:20:11 +0530
Message-ID: <CAARK3HmQvACXvySfwTWSss_DKqwX_oUF3gwxQuu5am0DoLh+jA@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] mtd: spi-nor: add support for is25wp256
To: Paul Walmsley <paul.walmsley@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_025023_812315_D1209056 
X-CRM114-Status: GOOD (  20.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Palmer Dabbelt <palmer@sifive.com>, bbrezillon@kernel.org, richard@nod.at,
 tudor.ambarus@microchip.com, linux-kernel@vger.kernel.org,
 marek.vasut@gmail.com, linux-mtd@lists.infradead.org,
 linux-riscv@lists.infradead.org, computersforpeace@gmail.com,
 dwmw2@infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Thank you Paul, for your review comments.

On Tue, Apr 30, 2019 at 10:33 PM Paul Walmsley <paul.walmsley@sifive.com> wrote:
>
> On Sun, 28 Apr 2019, Sagar Shrikant Kadam wrote:
>
> > Update spi_nor_id tablet for is25wp256 (32MB)device from ISSI,
> > present on HiFive Unleashed dev board (Rev: A00).
> >
> > Set method to enable quad mode for ISSI device in flash parameters
> > table.
>
> This patch was based on one originally written by Wes and/or Palmer:
> https://github.com/riscv/riscv-linux/commit/c94e267766d62bc9a669611c3d0c8ed5ea26569b
>
> The right thing to do is to note this in the commit message.
>
Yes true, this is important as well.
I had mentioned this in the covering letter, but I missed to add the
details into the commit message,
I will submit V3 for this.


> > Signed-off-by: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
> > ---
> >  drivers/mtd/spi-nor/spi-nor.c | 10 +++++++++-
> >  include/linux/mtd/spi-nor.h   |  1 +
> >  2 files changed, 10 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
> > index fae1474..c5408ed 100644
> > --- a/drivers/mtd/spi-nor/spi-nor.c
> > +++ b/drivers/mtd/spi-nor/spi-nor.c
> > @@ -1834,6 +1834,10 @@ static int sr2_bit7_quad_enable(struct spi_nor *nor)
> >                       SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
> >       { "is25wp128",  INFO(0x9d7018, 0, 64 * 1024, 256,
> >                       SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
> > +     { "is25wp256", INFO(0x9d7019, 0, 64 * 1024, 1024,
> > +                     SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
> > +                     SPI_NOR_4B_OPCODES)
> > +     },
> >
> >       /* Macronix */
> >       { "mx25l512e",   INFO(0xc22010, 0, 64 * 1024,   1, SECT_4K) },
> > @@ -3650,6 +3654,10 @@ static int spi_nor_init_params(struct spi_nor *nor,
> >               case SNOR_MFR_MACRONIX:
> >                       params->quad_enable = macronix_quad_enable;
> >                       break;
> > +             case SNOR_MFR_ISSI:
> > +                     params->quad_enable = macronix_quad_enable;
> > +                     break;
> > +
> >
> >               case SNOR_MFR_ST:
> >               case SNOR_MFR_MICRON:
> > @@ -4127,7 +4135,7 @@ int spi_nor_scan(struct spi_nor *nor, const char *name,
> >       if (ret)
> >               return ret;
> >
> > -     if (nor->addr_width) {
> > +     if (nor->addr_width && JEDEC_MFR(info) != SNOR_MFR_ISSI) {
> >               /* already configured from SFDP */
> >       } else if (info->addr_width) {
> >               nor->addr_width = info->addr_width;
> > diff --git a/include/linux/mtd/spi-nor.h b/include/linux/mtd/spi-nor.h
> > index b3d360b..ff13297 100644
> > --- a/include/linux/mtd/spi-nor.h
> > +++ b/include/linux/mtd/spi-nor.h
> > @@ -19,6 +19,7 @@
> >  #define SNOR_MFR_ATMEL               CFI_MFR_ATMEL
> >  #define SNOR_MFR_GIGADEVICE  0xc8
> >  #define SNOR_MFR_INTEL               CFI_MFR_INTEL
> > +#define SNOR_MFR_ISSI                0x9d            /* ISSI */
> >  #define SNOR_MFR_ST          CFI_MFR_ST      /* ST Micro */
> >  #define SNOR_MFR_MICRON              CFI_MFR_MICRON  /* Micron */
> >  #define SNOR_MFR_MACRONIX    CFI_MFR_MACRONIX
> > --
> > 1.9.1
> >
> >

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
