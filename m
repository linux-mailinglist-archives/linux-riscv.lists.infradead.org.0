Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A915260C4
	for <lists+linux-riscv@lfdr.de>; Wed, 22 May 2019 11:53:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Fl9ufM20gg7G2oruyHeBvgJK4A3NYT1wtD3rPr5nwag=; b=M5gT6JWP+G5RTCOAlRnHXykRv
	C7rX37U/csUc9gxCtN2qVjGY69rq2O0mh9LGa7Ktv48LmBAVm+PqV4+UKfgeHZI9NyEyYTMUOPfFb
	NRuSqGKP0AjRdAoyl4gB6fPZYoYOGuD58J1Nijwo2oELpmsy/ScjXS9BbioQzZQsS1+jGmlQzuaSS
	etEDH99aY1iLpjXODzTKWs8vbHPBDATY4Skza7Tm2BpYlgczY6/XMEgJaYA2PwIAoVBO95SeymQ0k
	2XhTG97N5rYIsYHA+2uU2FiCiaCfwswC6x1ngVxwRJjW02bMVvblOkuZ50J4pJvEAU8HuNr/vcAB1
	197W68CyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTNwC-0000iy-QI; Wed, 22 May 2019 09:53:32 +0000
Received: from esa3.hgst.iphmx.com ([216.71.153.141])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTNw8-0000iG-8s
 for linux-riscv@lists.infradead.org; Wed, 22 May 2019 09:53:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1558518809; x=1590054809;
 h=subject:to:cc:references:from:message-id:date:
 mime-version:in-reply-to:content-transfer-encoding;
 bh=InHI8CgTI4NENDHlnNiMTTSIZNzkdoXKXQJZj4yGT/E=;
 b=mXuZDFH6m/FxJuC3l8i9appopuUjn0VSjI6NQIayzdfTTohh/fQOjOxb
 alCNLOmDL9SZMNjAPxsxC2AGK2FTmxmX8MUkPAn8rl8T8nyjnE0FVo7Z6
 9Kqt7+sAPjGPsq1a/46pbAvWDQwlZgUu/ib2i4+IY3hiq6HpfC0MtBy/k
 5sULA3+p1zepua4FamyuYc6vdeUsFbCKI7dKNsIh66siKmuAKCWLRql+x
 8E/Spsj/Nj7PolOg9WPDEenrWeJtfpZBgFQ5EPCPXldl8bsO4z+oJ6EGD
 8H+I5FK8q3Uzgcidg0RCFNc5GJ+7FLY3dQnjAwAv15FPSCFlrx6iu/6Qz w==;
X-IronPort-AV: E=Sophos;i="5.60,498,1549900800"; d="scan'208";a="113775926"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 22 May 2019 17:53:24 +0800
IronPort-SDR: AUHu2UOEG0LKGtbh/1Fgbvj/VmmMJrkzOkQ0xFdoNc95wXQtIEmYjJNpZ7V4SYU7bBM/ro6kzM
 +ZRmoahziVTWY2D4koEsOL/gOQrMU+r4o7Ccc5GrxjB9LjbrrxWLdd8KpQ6yBpSdDs1iE/H1/C
 KiQEyqA+qiDtuusLfu9n9oqZHs7PLrZOJsOjoocYvQ6KfaCT6/en79WXwFnHT4axnkeg4Fqh6s
 3FU8CAxAxn35bPadouE8+9t1K+qNVNBBpKVQpks9q4WYkV/LVysMXlZ315ikgD2HGzBWM6uCTr
 pd2cuqJ43LUWGFL+UBE6t97K
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep01.wdc.com with ESMTP; 22 May 2019 02:28:47 -0700
IronPort-SDR: LvqYjBiYDTvxzRutiZlnOFIiNtawdmRM5KWEaHcQoGMnc9yK24gK8+3Tjecn67mD0VaFCPjy1C
 njOS+pVPKhYDvghUNmVvWeoK1eY8NXlRasg3vUI7yCW0vD0IISEC7aYnCbQn11/PXSf5q9hpoF
 j8mYM/y0co7NeQw5aZNZsVrD7AIAlAU1dT+TsbAqaskGUPEiSq6NTrefHQYhbjorHBbSv7ujKB
 RJfMmuHgD8zY+paVVqYMbIx+GJmWMzA/KR3LwPGltbJhI/I2WQNNEb0++E0RGe3LrfmYVSaDo6
 oOQ=
Received: from 65r6g12.ad.shared (HELO [10.86.58.92]) ([10.86.58.92])
 by uls-op-cesaip01.wdc.com with ESMTP; 22 May 2019 02:53:24 -0700
Subject: Re: 5.2-rc1 boot on Unleashed
To: Sagar Kadam <sagar.kadam@sifive.com>
References: <5c1ffb76-b18a-dbae-d3ad-f3d2cd41ee44@wdc.com>
 <CAARK3HmewOZzv-p4JxTb-Cb2PT4qqJoxFO8mhHtz=qDq8XGS9Q@mail.gmail.com>
From: Atish Patra <atish.patra@wdc.com>
Message-ID: <bd86729a-8993-4021-99a3-b0a50e9efdc5@wdc.com>
Date: Wed, 22 May 2019 02:51:27 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CAARK3HmewOZzv-p4JxTb-Cb2PT4qqJoxFO8mhHtz=qDq8XGS9Q@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_025328_618951_7C03BC30 
X-CRM114-Status: GOOD (  18.61  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.141 listed in list.dnswl.org]
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
Cc: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@gmail.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 Palmer Dabbelt <palmer@sifive.com>,
 "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 5/21/19 9:42 PM, Sagar Kadam wrote:
> Hi Atish,
> 
> 
> On Tue, May 21, 2019 at 5:03 AM Atish Patra <atish.patra@wdc.com> wrote:
>>
>> Hi,
>>
>> 5.2-rc1 still requires some out-of-tree driver patches.
>>
>> Here is my tree (successfully tested on Unleashed.)
>> https://github.com/atishp04/linux/tree/5.2-rc1_unleashed
>>
>> Issues:
>>
>> 1. Thanks to Paul, uart & clock drivers are merged. However,
>>          a. upstream clock drivers require DT changes
>>          b. Those DT changes are still being reviewed.
>>          c. FSBL need to be rebuild & updated for these DT changes.
>>
>> That's why I am still using the old out-of-tree clock drivers for now.
>>
>> @Paul, @Palmer: Can SiFive share the updated FSBL binary so that
>> everybody can use the upstream clock drivers without having to rebuild
>> FSBL by hand?
>>
>>
>> 2. We still need the following networking hack. I had to rebase the
>> patch on top of 5.2-rc1.
>> -----------------------------------------------------------------
>> commit 1cae94e4f38f (HEAD -> 5.2-rc1_unleashed, atishp04/5.2-rc1_unleashed)
>> Author: Atish Patra <atish.patra@wdc.com>
>> Date:   Fri Sep 7 10:22:27 2018 -0700
>>
>>       RISC-V: Networking fix Hack
>>
>>       It looks like that kernel driver now supports reseting the
>>       signal one additional time. As it had been  already reset
>>       twice in FSBL, PHY gets into incorrect state causing below error.
>>
>>       ----------------------------------------------------------------------
>>       macb 10090000.ethernet (unnamed net_device) (uninitialized): Could
>> not attach to PHY
>>       macb: probe of 10090000.ethernet failed with error -110
>>       ----------------------------------------------------------------------
>>
>>       This patch is just a temporary fix until we have a fix a FSBL.
>>       It is just a **HACK** and **NOT TO BE MERGED** into mainline.
>>
>>       Signed-off-by: Atish Patra <atish.patra@wdc.com>
>>
>> diff --git a/drivers/net/phy/mdio_bus.c b/drivers/net/phy/mdio_bus.c
>> index bd04fe762056..4b99b226c885 100644
>> --- a/drivers/net/phy/mdio_bus.c
>> +++ b/drivers/net/phy/mdio_bus.c
>> @@ -94,9 +94,6 @@ int mdiobus_register_device(struct mdio_device *mdiodev)
>>                   err = mdiobus_register_reset(mdiodev);
>>                   if (err)
>>                           return err;
>> -
>> -               /* Assert the reset signal */
>> -               mdio_device_reset(mdiodev, 1);
>>           }
>>
>>           mdiodev->bus->mdio_map[mdiodev->addr] = mdiodev;
>> -----------------------------------------------------------------
>>
>> Can somebody please look into this so that we can avoid this ugly hack ?
>>
> Yes, I will look into this and submit a patch for the same.
> 

Thanks. Are you or anybody else form SiFive looking to upstream the GPIO 
driver?

I think that's the only driver remaining.

> Thanks & BR,
> Sagar Kadam
> 
>> --
>> Regards,
>> Atish
>>
>> _______________________________________________
>> linux-riscv mailing list
>> linux-riscv@lists.infradead.org
>> http://lists.infradead.org/mailman/listinfo/linux-riscv
> 


-- 
Regards,
Atish

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
