Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D39F9486D5
	for <lists+linux-riscv@lfdr.de>; Mon, 17 Jun 2019 17:18:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ouECYcMJIX1PZTX/uqzOJQEmdWcUgdHs9tMnES06DaA=; b=WBbk/TvJmTycaS
	NRfFOh0hy8a+k6cswh9s8qNEa904Q+TLyFfEkKOY6feRo+8md5Ow2rvKXPz5ZYNIEwNO4QYB/QcYV
	LB78WC+U5ZNsaxfpGB71g5l8jYXdhtDQEsRrvuR2AIE+BE7/wpi7WanVCryI4m1XXEtVizn1vwn3R
	w2AkNE+nQM6zoPb/Kk6DLfkSgnOJ5TMBrTEvycVySMFK60fJSExAmTuVoifwaYSmIZKdnZvDyWfF4
	Pl/v/Pfdj2GjTixHVZlsoX+1JWd9N/KVyxsU8BS8p+qnNnfn9s5fjaB0Ay596oD/fR3IX/s2goqYi
	YjpT7FyNRKig6c3OCBAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hctPF-0006PV-AM; Mon, 17 Jun 2019 15:18:49 +0000
Received: from mail-vk1-xa43.google.com ([2607:f8b0:4864:20::a43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hctPC-0006OB-5e
 for linux-riscv@lists.infradead.org; Mon, 17 Jun 2019 15:18:47 +0000
Received: by mail-vk1-xa43.google.com with SMTP id s16so2137324vke.7
 for <linux-riscv@lists.infradead.org>; Mon, 17 Jun 2019 08:18:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=avGzyCxZclKT79pADY4DKIxqTozcBYUh0WnJ9dBhi1E=;
 b=ed4ihMNWHG89e7Xaq5+FGLxCCA+5JtfbgMQTrutcVtIUFc/8Xc5p7ERp90dJ5a/5lF
 I3MGOvl69DQXjZF3l5qryq0cR5T9YK/n7VaKJIq8hQYccky5s/xwoqen9GCkilKTSuxr
 AOWz1z+0Y+6fxqgfwix4gWIl+ilS5v/XR8eTCycB790d93Cc9++z4t8IOSbvO5teSBI5
 lEEHEiIwabUNKwbt+MXom5V9VOXoBLX2Rxtf3aW4eo8I5FnOBSAc3SW5aWluQArodm2k
 qtImm0+eKkSivZ+3lgV2Y7j+JamcqthViHOiZj8EcoF25bQFpsL5ypPvdyqcBHiLMus1
 Ut0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=avGzyCxZclKT79pADY4DKIxqTozcBYUh0WnJ9dBhi1E=;
 b=r7sUjtdiZDjlVBFBR4KrGCdJd86aGSUtFY5qANdyafbLPMw6t3i6yS/4DhKPIhCNdX
 8909AvYWA2ht3f+dk7LRE8ZlziNYG9d/pYfq0gTDmGqJ8JTYgZ6sWlVvC/l1l8LleRHb
 JBWShCkACxLMjZUBCPURcG1A0wsIYxVJPKAlsEvXwe38PQjTXLXG2nigBTRnfb5Kf0p2
 smqO8So8oSR4i2emPPuuIIQ10s8bPELDnuv60BcyUvHpYK9XFDErc7+ghCJfafmCrJIQ
 XNWIdx3OLk8atDgqxv/2eIOsNdws4N5XgwmTH7y2fXqZJ9TRCiPyK8yp0hxslia7QEVB
 JMZg==
X-Gm-Message-State: APjAAAXXMXY98l3aHIwSnUAEtfNYG8rld3BgGyRm+5soWJNPs39WJCcK
 hHaGRUvraXCVvRrk8B1VuikdHcg+IrFYMRMeixkI+w==
X-Google-Smtp-Source: APXvYqybEt7W3M5qE6N0FBs9dBKJrhuavtDPLL4WFwFs7pHHWurEb3V/bgCHCADGQFV/vQ+BSWlb509dkOgV0n8YRMo=
X-Received: by 2002:a1f:2909:: with SMTP id p9mr27668514vkp.23.1560784724394; 
 Mon, 17 Jun 2019 08:18:44 -0700 (PDT)
MIME-Version: 1.0
References: <1560336476-31763-1-git-send-email-sagar.kadam@sifive.com>
 <1560336476-31763-2-git-send-email-sagar.kadam@sifive.com>
 <325855d0-00f9-df8a-ea57-c140d39dd6ef@ti.com>
In-Reply-To: <325855d0-00f9-df8a-ea57-c140d39dd6ef@ti.com>
From: Sagar Kadam <sagar.kadam@sifive.com>
Date: Mon, 17 Jun 2019 20:48:33 +0530
Message-ID: <CAARK3H=O=h1VDgOMxs_0ThcisrH=2tzpW5pQqt0O9oYs=MFFVw@mail.gmail.com>
Subject: Re: [PATCH v5 1/3] mtd: spi-nor: add support for is25wp256
To: Vignesh Raghavendra <vigneshr@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_081846_244144_FEC8D36C 
X-CRM114-Status: GOOD (  13.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a43 listed in]
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
Cc: aou@eecs.berkeley.edu, tudor.ambarus@microchip.com,
 Wesley Terpstra <wesley@sifive.com>, richard@nod.at,
 Palmer Dabbelt <palmer@sifive.com>, linux-kernel@vger.kernel.org,
 marek.vasut@gmail.com, linux-mtd@lists.infradead.org,
 Paul Walmsley <paul.walmsley@sifive.com>, miquel.raynal@bootlin.com,
 linux-riscv@lists.infradead.org, computersforpeace@gmail.com,
 dwmw2@infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hello Vignesh,

Thanks for your review comments.

On Sun, Jun 16, 2019 at 6:14 PM Vignesh Raghavendra <vigneshr@ti.com> wrote:
>
> Hi,
>
> On 12-Jun-19 4:17 PM, Sagar Shrikant Kadam wrote:
> [...]
>
> > @@ -4129,7 +4137,7 @@ int spi_nor_scan(struct spi_nor *nor, const char *name,
> >       if (ret)
> >               return ret;
> >
> > -     if (nor->addr_width) {
> > +     if (nor->addr_width && JEDEC_MFR(info) != SNOR_MFR_ISSI) {
> >               /* already configured from SFDP */
>
> Hmm, why would you want to ignore addr_width that's read from SFDP table?

The SFDP table for ISSI device considered here, has addr_width set to
3 byte, and the flash considered
here is 32MB. With 3 byte address width we won't be able to access
flash memories higher address range.
Hence I have ignored the addr width from SFDP.  I have verified that
with 3 byte address width, the
flascp util fails while verifying the written data.  Please let me
know your views on this?

BR,
Sagar Kadam

> Regards
> Vignesh
>
>
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
> >

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
