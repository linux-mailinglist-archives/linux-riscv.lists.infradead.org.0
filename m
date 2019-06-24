Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44AA151034
	for <lists+linux-riscv@lfdr.de>; Mon, 24 Jun 2019 17:23:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i9fa4CB05RT6XWm3SI+f36j4K+kYo5KHxiGGuCW1RYE=; b=huBT6xOSJxithc
	ezTQKZadAPT5F4fyPK6nUUbQo4BUI5kqBKfj0dhFvbP5F2cwzg8N+1sXfGwoJvGJX5DBZnvHFAa6C
	sAA9Bd4xcA7SN9waDJrPc6LFp5BvBa+q5AYW7umNFdeQQ99nWfQ2Zu2MuWCmB4OiKDYuyA3XSmwtS
	bQXyOMwtvQd6wx58YfgBUn9TLhupSHNMLCSnUCr/zt/g+ZiMGXDiT8CZU8f5WdVEjln34wns/1i0T
	QOVbFzLQUUFD49jJJQJTGh8777RRf8s0wgLDuYRr2aU5RgYfzr5J4nsX1oeicmct/KLpWrmFepP/S
	ln02AqkQLgCjhqYS6KRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfQoB-0002DG-1X; Mon, 24 Jun 2019 15:23:03 +0000
Received: from mail-ua1-x944.google.com ([2607:f8b0:4864:20::944])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfQny-000225-41
 for linux-riscv@lists.infradead.org; Mon, 24 Jun 2019 15:22:51 +0000
Received: by mail-ua1-x944.google.com with SMTP id f20so5862888ual.0
 for <linux-riscv@lists.infradead.org>; Mon, 24 Jun 2019 08:22:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=fw9ocu3ILyh7JW9RCJOLuVWP36rPco7a/hj0+uZNVSw=;
 b=ngW23tj/e1XwHQlTa4Tw6C+p8n/7+Ufead5lPUbuPNXOt6W4//TGJUU5NiGiCMX+tU
 xEAijs0zH1ZHE2FvWTYiyEcNLGzo3w2B9rwxQJAAZeRR0Ijn6zyyZbeuB1EzWnfJmok4
 MVQCUExm9K9JQwQBvyMh1slqbqh+gynGXkEx6N5uxXakXFBhtaDP41rY0wgdW7Wr+uyp
 Vw+Pn8/3GO0Vef61M1ccX/ma6I15iadkPOAV2gOWfuNiZmGPdN2QJtWX9WExVcvAvryp
 jSOL0QrTSChaioxqc2oZIaziSBTCAzXuu3O9+d5AFbVMiyw+I659238WJe3B6Vl5C7sA
 aciA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=fw9ocu3ILyh7JW9RCJOLuVWP36rPco7a/hj0+uZNVSw=;
 b=LNTSHlFUgfl+Ej4SahwiFJdZUqXKycYj5axK1vQSaBs5Mxrysx85zGdIcgiwkjXKWV
 B+Rq1Lo6XuRPkA++lcaoYfoGKcceUf7DmjIrkhGrVnYmUNAggtVJL24ECAsxmWyYe8uu
 nhTgvlekzcx6oR5d2EhW5FvWXwX92HfBve5qeoiTGTc30YRawQ7gSmsoAczg6u6aMv0a
 IOegq0Rj0C8lfoXr853UawxFxdy3xlK1RMaGT9vbZfVBVOoQ8pybXhhVD2hzolZg610t
 VqkP7mom/MzmEGms60BmxR3WHfMLLM/ye36hyP9XmezhvvRxf4fazoGZ7T+Mf8BHpEoT
 D48g==
X-Gm-Message-State: APjAAAUpEfoqWkCZy+7jX1/f2hnSNJb4nY/6lNYbw/90azbfXntCCyip
 K4puJztSKqNUnoOUhRnkQIGlZxmNhiwJeVm+bWUf/w==
X-Google-Smtp-Source: APXvYqxlvUS8caqcECDPWhbA2qx/n2Bpa/ec5duzMYEONa5Dfw6bcGRS4DgVoeSBWILBIgDsl4sAMxormx+BZFRAt/c=
X-Received: by 2002:a9f:2265:: with SMTP id 92mr638135uad.121.1561389767357;
 Mon, 24 Jun 2019 08:22:47 -0700 (PDT)
MIME-Version: 1.0
References: <1560336476-31763-1-git-send-email-sagar.kadam@sifive.com>
 <1560336476-31763-2-git-send-email-sagar.kadam@sifive.com>
 <325855d0-00f9-df8a-ea57-c140d39dd6ef@ti.com>
 <CAARK3H=O=h1VDgOMxs_0ThcisrH=2tzpW5pQqt0O9oYs=MFFVw@mail.gmail.com>
 <93b9c5fd-8f59-96d7-5e40-2b9d540965dd@ti.com>
 <CAARK3H=CmxSG2srUaoxN1HF6W7CVKtpATrf89n6kuht2Paqp8A@mail.gmail.com>
 <3fe68154-5d1e-a395-4c53-d8e806b2cc6d@ti.com>
 <CAARK3HmNSOqhv_+Y2dMTRTyg=Jtry7J-j419CS5GTAiPiPLLdw@mail.gmail.com>
 <8edce82b-5b3e-fccd-4748-457fe86f36be@ti.com>
In-Reply-To: <8edce82b-5b3e-fccd-4748-457fe86f36be@ti.com>
From: Sagar Kadam <sagar.kadam@sifive.com>
Date: Mon, 24 Jun 2019 20:52:35 +0530
Message-ID: <CAARK3HmWja2aY6ZPTANi1J6PE0iUmurkqwEjyEwQSfODQ-suDQ@mail.gmail.com>
Subject: Re: [PATCH v5 1/3] mtd: spi-nor: add support for is25wp256
To: Vignesh Raghavendra <vigneshr@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_082250_164042_FC38902A 
X-CRM114-Status: GOOD (  23.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:944 listed in]
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

Hi Vignesh,

On Mon, Jun 24, 2019 at 6:37 PM Vignesh Raghavendra <vigneshr@ti.com> wrote:
>
>
>
> On 24/06/19 6:10 PM, Sagar Kadam wrote:
> > Hello Vignesh,
> >
> > On Mon, Jun 24, 2019 at 3:04 PM Vignesh Raghavendra <vigneshr@ti.com> wrote:
> >>
> >> Hi,
> >>
> >> On 21/06/19 3:58 PM, Sagar Kadam wrote:
> >>> Hello Vignesh,
> >>>
> >>> On Fri, Jun 21, 2019 at 11:33 AM Vignesh Raghavendra <vigneshr@ti.com> wrote:
> >>>>
> >>>> Hi,
> >>>>
> >>>> On 17/06/19 8:48 PM, Sagar Kadam wrote:
> >>>>> Hello Vignesh,
> >>>>>
> >>>>> Thanks for your review comments.
> >>>>>
> >>>>> On Sun, Jun 16, 2019 at 6:14 PM Vignesh Raghavendra <vigneshr@ti.com> wrote:
> >>>>>>
> >>>>>> Hi,
> >>>>>>
> >>>>>> On 12-Jun-19 4:17 PM, Sagar Shrikant Kadam wrote:
> >>>>>> [...]
> >>>>>>
> >>>>>>> @@ -4129,7 +4137,7 @@ int spi_nor_scan(struct spi_nor *nor, const char *name,
> >>>>>>>       if (ret)
> >>>>>>>               return ret;
> >>>>>>>
> >>>>>>> -     if (nor->addr_width) {
> >>>>>>> +     if (nor->addr_width && JEDEC_MFR(info) != SNOR_MFR_ISSI) {
> >>>>>>>               /* already configured from SFDP */
> >>>>>>
> >>>>>> Hmm, why would you want to ignore addr_width that's read from SFDP table?
> >>>>>
> >>>>> The SFDP table for ISSI device considered here, has addr_width set to
> >>>>> 3 byte, and the flash considered
> >>>>> here is 32MB. With 3 byte address width we won't be able to access
> >>>>> flash memories higher address range.
> >>>>
> >>>> Is it specific to a particular ISSI part as indicated here[1]? If so,
> >>>> please submit solution agreed there i.e. use spi_nor_fixups callback
> >>>>
> >>>> [1]https://patchwork.ozlabs.org/patch/1056049/
> >>>>
> >>>
> >>> Thanks for sharing the link.
> >>> From what I understand here, it seems that "Address Bytes" of SFDP
> >>> table for the device under
> >>> consideration (is25lp256) supports 3 byte only Addressing mode
> >>> (DWORD1[18:17] = 0b00.
> >>> where as that of ISSI device (is25LP/WP 256Mb/512/Mb/1Gb) support 3 or
> >>> 4 byte Addressing mode DWORD1[18:17] = 0b01.
> >>>
> >>
> >> Okay, so that SFDP table entry is correct. SPI NOR framework should
> >> using 4 byte addressing if WORD1[18:17] = 0b01. Could you see if below
> >> diff helps:
> >>
> > Thank-you for the suggestion.
> > I applied it, and observed, that data in SFDP table mentioned in
> > document received
> > from ISSI support doesn't match with what is actually present on the
> > device (I have raised a query with issi support for the same)
> > The WP device also has the same SFDP entry as the LP device (the one
> > which you shared).
> > So, will submit V7 with the solution agreed in the link you shared above.
> >      https://patchwork.ozlabs.org/patch/1056049/
> > Apologies for the confusion, so please excuse the v6 which I submitted earlier.
> >
>
> There is an updated version of the patch:
> https://patchwork.ozlabs.org/patch/1071453/
>
> You may want to align with Liu Xiang to avoid duplication of effort
>

Ok. It seems Liu Xiang, is working on supporting is25LP256 device,
while the one considered here is WP
Although both are very similar devices, they differ a bit maybe with
Operating voltage, ID values, die revision etc..
I will sync-up with him about his v4 plan, and update you accordingly.
Thanks for the link.

BR,
Sagar Kadam


> > Thanks & BR,
> > Sagar Kadam
> >
> >> --->8---
> >> diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
> >> index c0a8837c0575..ebf32aebe5e9 100644
> >> --- a/drivers/mtd/spi-nor/spi-nor.c
> >> +++ b/drivers/mtd/spi-nor/spi-nor.c
> >> @@ -2808,6 +2808,7 @@ static int spi_nor_parse_bfpt(struct spi_nor *nor,
> >>                 break;
> >>
> >>         case BFPT_DWORD1_ADDRESS_BYTES_4_ONLY:
> >> +       case BFPT_DWORD1_ADDRESS_BYTES_3_OR_4:
> >>                 nor->addr_width = 4;
> >>                 break;
> >
> >
> >>
> >>
> >>
> >>
> >> --
> >> Regards
> >> Vignesh
>
> --
> Regards
> Vignesh

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
