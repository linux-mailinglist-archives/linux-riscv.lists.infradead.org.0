Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98DCF50B7D
	for <lists+linux-riscv@lfdr.de>; Mon, 24 Jun 2019 15:08:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xo3B0G8hVrwqNyjHknlvHB3evVzIvLu7eZeqDC0xBc8=; b=P3SoHVpOnI33h4
	7rym0lg1RRspgsx26FX5ViQM2U6PzFEJoHKfxNPAQG8CdeLFforAeKx1h/RNZ999M6ZrNAVwucZjz
	jSRDum0IBIF5LD3H6SUl3s56Ww/77bfoYffDJb4jMX0IEK5C5WOgLKmgZl7tlwaczbcmSSpPYlJnm
	gzbO8tt5eH8x8n9hnSX6ibspaHUJwz9RnvUmzHywTALOxgQPWET+znS1gJuj7SsArRQfGAU9zQ2+X
	JVHedOmAteYztDXrHtIM+WJGUMNFAifb2VvgqEtKohKIUB8a3x4MkF9YYioGRFlj8ajmOWRUA8X/Q
	ilVFZezGclaNMyThuwHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfOhQ-0005PM-Q3; Mon, 24 Jun 2019 13:07:56 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfOh7-0004zh-Gw; Mon, 24 Jun 2019 13:07:39 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x5OD7R5P017486;
 Mon, 24 Jun 2019 08:07:27 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1561381647;
 bh=H46VUliW+A0t7K83Z0CbWl1N3ks6sZT+q0tMS4MbV9M=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=XKTJZNkziTZ7+Rqw5Ei+zTfc5yDQtwt+BM8x6utpQOZEmHmghXrjgy4V2mRm7KWP3
 OZ+0E+Utnhmm4VIrtkQPu9MFZF9Di+HGvChR0/E3Kp6f73pZgajPBVrncnXdTL68d9
 KVUcYyRwe4uGQsIkKXe+ZY7x+qT2OxUSydZIYHac=
Received: from DLEE107.ent.ti.com (dlee107.ent.ti.com [157.170.170.37])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x5OD7RDZ061359
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 24 Jun 2019 08:07:27 -0500
Received: from DLEE101.ent.ti.com (157.170.170.31) by DLEE107.ent.ti.com
 (157.170.170.37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Mon, 24
 Jun 2019 08:07:26 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE101.ent.ti.com
 (157.170.170.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Mon, 24 Jun 2019 08:07:26 -0500
Received: from [172.24.190.89] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id x5OD7Mfp029217;
 Mon, 24 Jun 2019 08:07:23 -0500
Subject: Re: [PATCH v5 1/3] mtd: spi-nor: add support for is25wp256
To: Sagar Kadam <sagar.kadam@sifive.com>
References: <1560336476-31763-1-git-send-email-sagar.kadam@sifive.com>
 <1560336476-31763-2-git-send-email-sagar.kadam@sifive.com>
 <325855d0-00f9-df8a-ea57-c140d39dd6ef@ti.com>
 <CAARK3H=O=h1VDgOMxs_0ThcisrH=2tzpW5pQqt0O9oYs=MFFVw@mail.gmail.com>
 <93b9c5fd-8f59-96d7-5e40-2b9d540965dd@ti.com>
 <CAARK3H=CmxSG2srUaoxN1HF6W7CVKtpATrf89n6kuht2Paqp8A@mail.gmail.com>
 <3fe68154-5d1e-a395-4c53-d8e806b2cc6d@ti.com>
 <CAARK3HmNSOqhv_+Y2dMTRTyg=Jtry7J-j419CS5GTAiPiPLLdw@mail.gmail.com>
From: Vignesh Raghavendra <vigneshr@ti.com>
Message-ID: <8edce82b-5b3e-fccd-4748-457fe86f36be@ti.com>
Date: Mon, 24 Jun 2019 18:38:07 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <CAARK3HmNSOqhv_+Y2dMTRTyg=Jtry7J-j419CS5GTAiPiPLLdw@mail.gmail.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_060737_645496_E0D024FF 
X-CRM114-Status: GOOD (  19.49  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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



On 24/06/19 6:10 PM, Sagar Kadam wrote:
> Hello Vignesh,
> 
> On Mon, Jun 24, 2019 at 3:04 PM Vignesh Raghavendra <vigneshr@ti.com> wrote:
>>
>> Hi,
>>
>> On 21/06/19 3:58 PM, Sagar Kadam wrote:
>>> Hello Vignesh,
>>>
>>> On Fri, Jun 21, 2019 at 11:33 AM Vignesh Raghavendra <vigneshr@ti.com> wrote:
>>>>
>>>> Hi,
>>>>
>>>> On 17/06/19 8:48 PM, Sagar Kadam wrote:
>>>>> Hello Vignesh,
>>>>>
>>>>> Thanks for your review comments.
>>>>>
>>>>> On Sun, Jun 16, 2019 at 6:14 PM Vignesh Raghavendra <vigneshr@ti.com> wrote:
>>>>>>
>>>>>> Hi,
>>>>>>
>>>>>> On 12-Jun-19 4:17 PM, Sagar Shrikant Kadam wrote:
>>>>>> [...]
>>>>>>
>>>>>>> @@ -4129,7 +4137,7 @@ int spi_nor_scan(struct spi_nor *nor, const char *name,
>>>>>>>       if (ret)
>>>>>>>               return ret;
>>>>>>>
>>>>>>> -     if (nor->addr_width) {
>>>>>>> +     if (nor->addr_width && JEDEC_MFR(info) != SNOR_MFR_ISSI) {
>>>>>>>               /* already configured from SFDP */
>>>>>>
>>>>>> Hmm, why would you want to ignore addr_width that's read from SFDP table?
>>>>>
>>>>> The SFDP table for ISSI device considered here, has addr_width set to
>>>>> 3 byte, and the flash considered
>>>>> here is 32MB. With 3 byte address width we won't be able to access
>>>>> flash memories higher address range.
>>>>
>>>> Is it specific to a particular ISSI part as indicated here[1]? If so,
>>>> please submit solution agreed there i.e. use spi_nor_fixups callback
>>>>
>>>> [1]https://patchwork.ozlabs.org/patch/1056049/
>>>>
>>>
>>> Thanks for sharing the link.
>>> From what I understand here, it seems that "Address Bytes" of SFDP
>>> table for the device under
>>> consideration (is25lp256) supports 3 byte only Addressing mode
>>> (DWORD1[18:17] = 0b00.
>>> where as that of ISSI device (is25LP/WP 256Mb/512/Mb/1Gb) support 3 or
>>> 4 byte Addressing mode DWORD1[18:17] = 0b01.
>>>
>>
>> Okay, so that SFDP table entry is correct. SPI NOR framework should
>> using 4 byte addressing if WORD1[18:17] = 0b01. Could you see if below
>> diff helps:
>>
> Thank-you for the suggestion.
> I applied it, and observed, that data in SFDP table mentioned in
> document received
> from ISSI support doesn't match with what is actually present on the
> device (I have raised a query with issi support for the same)
> The WP device also has the same SFDP entry as the LP device (the one
> which you shared).
> So, will submit V7 with the solution agreed in the link you shared above.
>      https://patchwork.ozlabs.org/patch/1056049/
> Apologies for the confusion, so please excuse the v6 which I submitted earlier.
> 

There is an updated version of the patch:
https://patchwork.ozlabs.org/patch/1071453/

You may want to align with Liu Xiang to avoid duplication of effort

> Thanks & BR,
> Sagar Kadam
> 
>> --->8---
>> diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
>> index c0a8837c0575..ebf32aebe5e9 100644
>> --- a/drivers/mtd/spi-nor/spi-nor.c
>> +++ b/drivers/mtd/spi-nor/spi-nor.c
>> @@ -2808,6 +2808,7 @@ static int spi_nor_parse_bfpt(struct spi_nor *nor,
>>                 break;
>>
>>         case BFPT_DWORD1_ADDRESS_BYTES_4_ONLY:
>> +       case BFPT_DWORD1_ADDRESS_BYTES_3_OR_4:
>>                 nor->addr_width = 4;
>>                 break;
> 
> 
>>
>>
>>
>>
>> --
>> Regards
>> Vignesh

-- 
Regards
Vignesh

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
