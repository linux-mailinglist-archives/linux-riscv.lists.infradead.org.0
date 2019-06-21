Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCE334E037
	for <lists+linux-riscv@lfdr.de>; Fri, 21 Jun 2019 08:04:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W2ApFp8PHHLlq+6ei6WjPMb/0flR+0Mio//6zWIgFOM=; b=cCq4w3w8IeqV3O
	pqX1gSJRB9Si2Q4r2lgqnpBOe/h75aHhtG02QeN6MDWE8UxENRxFuZdmd3VRZYYN+tfhy6TSjNtxf
	mL4m0ihHBBg034MHHNNi2mwPeKSVITU49jLooBrPiSLB1nUf2zKTufOsUCk2iUJVPDnZtSMObKQxU
	RjcB6Vr7IlSxKeIURtQumPKV2bOinJngLTH/6anaGuAGwRRMYLJsty/3pykTxRJfbNVce7SxvYQTZ
	HJd33ai65bNqVjUuuirYGe0X7yo6Goh4k8BQbzhx6MU2AmB5huuLyYCUoMrs85I82fHy2rDA5hXZe
	xwoQqQB4DYODS+1Oylgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heCed-0003dD-NB; Fri, 21 Jun 2019 06:04:07 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heCeP-0003TY-Ey; Fri, 21 Jun 2019 06:03:55 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x5L63e1g052776;
 Fri, 21 Jun 2019 01:03:40 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1561097020;
 bh=knqPMcLBSbI4UYjJA4Jgm6wkFZPBA7qaJCNQVhq+O70=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=gCdtSYmDm4ZMnVIobxAtOLMTCGHTDfqFxUgNSjDZy585rz1he7q0BtY4Hdyx0pOUS
 9kMlwROgfH0I9C78iynctb1A8yA47yI0dGFpKjnCUjF4s/uSLUtqVAymLAQdbv7e7B
 DYa3yL1HxnusHwKeW9YiQPuSvYLuLFESWu+mpmLI=
Received: from DFLE107.ent.ti.com (dfle107.ent.ti.com [10.64.6.28])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x5L63eQK115551
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 21 Jun 2019 01:03:40 -0500
Received: from DFLE115.ent.ti.com (10.64.6.36) by DFLE107.ent.ti.com
 (10.64.6.28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Fri, 21
 Jun 2019 01:03:40 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE115.ent.ti.com
 (10.64.6.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Fri, 21 Jun 2019 01:03:40 -0500
Received: from [172.24.190.89] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x5L63ZjE121278;
 Fri, 21 Jun 2019 01:03:36 -0500
Subject: Re: [PATCH v5 1/3] mtd: spi-nor: add support for is25wp256
To: Sagar Kadam <sagar.kadam@sifive.com>
References: <1560336476-31763-1-git-send-email-sagar.kadam@sifive.com>
 <1560336476-31763-2-git-send-email-sagar.kadam@sifive.com>
 <325855d0-00f9-df8a-ea57-c140d39dd6ef@ti.com>
 <CAARK3H=O=h1VDgOMxs_0ThcisrH=2tzpW5pQqt0O9oYs=MFFVw@mail.gmail.com>
From: Vignesh Raghavendra <vigneshr@ti.com>
Message-ID: <93b9c5fd-8f59-96d7-5e40-2b9d540965dd@ti.com>
Date: Fri, 21 Jun 2019 11:34:21 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <CAARK3H=O=h1VDgOMxs_0ThcisrH=2tzpW5pQqt0O9oYs=MFFVw@mail.gmail.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_230353_589655_7B54DA5D 
X-CRM114-Status: GOOD (  17.06  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Hi,

On 17/06/19 8:48 PM, Sagar Kadam wrote:
> Hello Vignesh,
> 
> Thanks for your review comments.
> 
> On Sun, Jun 16, 2019 at 6:14 PM Vignesh Raghavendra <vigneshr@ti.com> wrote:
>>
>> Hi,
>>
>> On 12-Jun-19 4:17 PM, Sagar Shrikant Kadam wrote:
>> [...]
>>
>>> @@ -4129,7 +4137,7 @@ int spi_nor_scan(struct spi_nor *nor, const char *name,
>>>       if (ret)
>>>               return ret;
>>>
>>> -     if (nor->addr_width) {
>>> +     if (nor->addr_width && JEDEC_MFR(info) != SNOR_MFR_ISSI) {
>>>               /* already configured from SFDP */
>>
>> Hmm, why would you want to ignore addr_width that's read from SFDP table?
> 
> The SFDP table for ISSI device considered here, has addr_width set to
> 3 byte, and the flash considered
> here is 32MB. With 3 byte address width we won't be able to access
> flash memories higher address range.

Is it specific to a particular ISSI part as indicated here[1]? If so,
please submit solution agreed there i.e. use spi_nor_fixups callback

[1]https://patchwork.ozlabs.org/patch/1056049/

> Hence I have ignored the addr width from SFDP.  I have verified that
> with 3 byte address width, the
> flascp util fails while verifying the written data.  Please let me
> know your views on this?
> 
If this affects multiple ISSI parts then:
Instead of checking for mfr code, look for SNOR_F_4B_OPCODES flag in
flash_info struct of the device and let it take precedence over SFDP in
case size is over 16MB

Regards
Vignesh

> BR,
> Sagar Kadam
> 
>> Regards
>> Vignesh
>>
>>
>>>       } else if (info->addr_width) {
>>>               nor->addr_width = info->addr_width;
>>> diff --git a/include/linux/mtd/spi-nor.h b/include/linux/mtd/spi-nor.h
>>> index b3d360b..ff13297 100644
>>> --- a/include/linux/mtd/spi-nor.h
>>> +++ b/include/linux/mtd/spi-nor.h
>>> @@ -19,6 +19,7 @@
>>>  #define SNOR_MFR_ATMEL               CFI_MFR_ATMEL
>>>  #define SNOR_MFR_GIGADEVICE  0xc8
>>>  #define SNOR_MFR_INTEL               CFI_MFR_INTEL
>>> +#define SNOR_MFR_ISSI                0x9d            /* ISSI */
>>>  #define SNOR_MFR_ST          CFI_MFR_ST      /* ST Micro */
>>>  #define SNOR_MFR_MICRON              CFI_MFR_MICRON  /* Micron */
>>>  #define SNOR_MFR_MACRONIX    CFI_MFR_MACRONIX
>>>

-- 
Regards
Vignesh

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
