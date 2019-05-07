Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5BAF164DB
	for <lists+linux-riscv@lfdr.de>; Tue,  7 May 2019 15:45:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TGuPc/dRLJzdfLevYg6N3QmooAtolJqaq6Hua+CeTBE=; b=HK0QqMkasSyheG
	WiFBOQNl9eCUFYayGNXBXLsPUdUGIBOcz1WAosMTbhCejqc6LFd/HKwRVMGtnp4zPX0C1IuIH7yye
	462ckz3KgcaxFL/PXQ777yUnLPfCZKqXsmaLokAGoKINfCNWCiWq7jlL8vjG5Qls3WLwQ9pes7rB6
	oSLGkEK4ruMC6df/x7M6MicyssqnU/5nlFZaoJ400g8zl5U33nUuw73sggmglh6BNxru3KaaxoXuH
	haYpipcuuLqh1VAhVomgIQRUPcl7T77Lnnk3bFdHdNF68oAZG2Pftzcilv7yq8WvpifFMLL2rswNe
	povmiD42iS4GhseLzRMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO0P6-0007Bc-5P; Tue, 07 May 2019 13:45:08 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO0P2-0006M6-8F
 for linux-riscv@lists.infradead.org; Tue, 07 May 2019 13:45:06 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id x47Diw8m012273;
 Tue, 7 May 2019 08:44:58 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1557236698;
 bh=E6////DJtGhtMBQIUz9ZeWa9IxXTY2D3IVy0VJeXBn0=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=SR3iR6hD6PQTcZFAHKS/lIKonY5lEBBz9JMNO/JwSCZivaqFa/AJQiXjf3Hb87o4o
 NpV3BJK07HH0WLqSaJAYv+UQnozq1grYVP1SdREu9WZaz1J3iyFoEeA8cPcnNMeT01
 oxrFr0d5It8Fuy+9ih+R7MNQV33neeIg8VIqvfvM=
Received: from DFLE111.ent.ti.com (dfle111.ent.ti.com [10.64.6.32])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x47DiwGF060905
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 7 May 2019 08:44:58 -0500
Received: from DFLE113.ent.ti.com (10.64.6.34) by DFLE111.ent.ti.com
 (10.64.6.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 7 May
 2019 08:44:57 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE113.ent.ti.com
 (10.64.6.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Tue, 7 May 2019 08:44:57 -0500
Received: from [10.250.67.168] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id x47DivCN106703;
 Tue, 7 May 2019 08:44:57 -0500
Subject: Re: [PATCH v3 2/2] RISC-V: sifive_l2_cache: Add L2 cache controller
 driver for SiFive SoCs
To: Yash Shah <yash.shah@sifive.com>
References: <1557139720-12384-1-git-send-email-yash.shah@sifive.com>
 <1557139720-12384-3-git-send-email-yash.shah@sifive.com>
 <d36b7a74-0d08-0143-b479-45f760c347ba@ti.com>
 <CAJ2_jOFZjTNA3Nf=zNwLT+St21Q2_TPx_XYhggU=yef6LPkLdg@mail.gmail.com>
From: "Andrew F. Davis" <afd@ti.com>
Message-ID: <ba1481d0-f21b-5b0d-e3d5-ecb9faf42407@ti.com>
Date: Tue, 7 May 2019 09:44:58 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CAJ2_jOFZjTNA3Nf=zNwLT+St21Q2_TPx_XYhggU=yef6LPkLdg@mail.gmail.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_064504_524213_6280EB57 
X-CRM114-Status: GOOD (  19.68  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, aou@eecs.berkeley.edu,
 Palmer Dabbelt <palmer@sifive.com>, linux-kernel@vger.kernel.org,
 Sachin Ghadi <sachin.ghadi@sifive.com>, robh+dt@kernel.org,
 Paul Walmsley <paul.walmsley@sifive.com>, linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 5/7/19 2:48 AM, Yash Shah wrote:
> On Mon, May 6, 2019 at 5:48 PM Andrew F. Davis <afd@ti.com> wrote:
>>
>> On 5/6/19 6:48 AM, Yash Shah wrote:
>>> The driver currently supports only SiFive FU540-C000 platform.
>>>
>>> The initial version of L2 cache controller driver includes:
>>> - Initial configuration reporting at boot up.
>>> - Support for ECC related functionality.
>>>
>>> Signed-off-by: Yash Shah <yash.shah@sifive.com>
>>> ---
>>>  arch/riscv/include/asm/sifive_l2_cache.h |  16 +++
>>>  arch/riscv/mm/Makefile                   |   1 +
>>>  arch/riscv/mm/sifive_l2_cache.c          | 175 +++++++++++++++++++++++++++++++
>>>  3 files changed, 192 insertions(+)
>>>  create mode 100644 arch/riscv/include/asm/sifive_l2_cache.h
>>>  create mode 100644 arch/riscv/mm/sifive_l2_cache.c
>>>
>>> diff --git a/arch/riscv/include/asm/sifive_l2_cache.h b/arch/riscv/include/asm/sifive_l2_cache.h
>>> new file mode 100644
>>> index 0000000..04f6748
>>> --- /dev/null
>>> +++ b/arch/riscv/include/asm/sifive_l2_cache.h
>>> @@ -0,0 +1,16 @@
>>> +/* SPDX-License-Identifier: GPL-2.0 */
>>> +/*
>>> + * SiFive L2 Cache Controller header file
>>> + *
>>> + */
>>> +
>>> +#ifndef _ASM_RISCV_SIFIVE_L2_CACHE_H
>>> +#define _ASM_RISCV_SIFIVE_L2_CACHE_H
>>> +
>>> +extern int register_sifive_l2_error_notifier(struct notifier_block *nb);
>>> +extern int unregister_sifive_l2_error_notifier(struct notifier_block *nb);
>>> +
>>> +#define SIFIVE_L2_ERR_TYPE_CE 0
>>> +#define SIFIVE_L2_ERR_TYPE_UE 1
>>> +
>>> +#endif /* _ASM_RISCV_SIFIVE_L2_CACHE_H */
>>> diff --git a/arch/riscv/mm/Makefile b/arch/riscv/mm/Makefile
>>> index eb22ab4..1523ee5 100644
>>> --- a/arch/riscv/mm/Makefile
>>> +++ b/arch/riscv/mm/Makefile
>>> @@ -3,3 +3,4 @@ obj-y += fault.o
>>>  obj-y += extable.o
>>>  obj-y += ioremap.o
>>>  obj-y += cacheflush.o
>>> +obj-y += sifive_l2_cache.o
>>> diff --git a/arch/riscv/mm/sifive_l2_cache.c b/arch/riscv/mm/sifive_l2_cache.c
>>> new file mode 100644
>>> index 0000000..4eb6461
>>> --- /dev/null
>>> +++ b/arch/riscv/mm/sifive_l2_cache.c
>>> @@ -0,0 +1,175 @@
>>> +// SPDX-License-Identifier: GPL-2.0
>>> +/*
>>> + * SiFive L2 cache controller Driver
>>> + *
>>> + * Copyright (C) 2018-2019 SiFive, Inc.
>>> + *
>>> + */
> [...]
>>> +
>>> +#ifdef CONFIG_DEBUG_FS
>>> +static struct dentry *sifive_test;
>>> +
>>> +static ssize_t l2_write(struct file *file, const char __user *data,
>>> +                     size_t count, loff_t *ppos)
>>> +{
>>> +     unsigned int val;
>>> +
>>> +     if (kstrtouint_from_user(data, count, 0, &val))
>>> +             return -EINVAL;
>>> +     if ((val >= 0 && val < 0xFF) || (val >= 0x10000 && val < 0x100FF))
>>
>> I'm guessing bit 16 is the enable and the lower 8 are some kind of
>> region to enable the error? This is probably a bad interface, it looks
>> useful for testing but doesn't provide any debugging info useful for
>> running systems. Do you really want userspace to be able to do this?
> 
> Bit 16 selects the type of ECC error (0=data or 1=directory error).
> The lower 8 bits toggles (corrupt) that bit index.
> Are you suggesting to remove this debug interface altogether or you
> want me to improve the current interface?
> Something like providing 2 separate debugfs files for data and
> directory errors. And create a separate 8-bit debugfs variable to
> select the bit index to toggle.
> 

I was suggesting to remove the whole thing. I don't see it being all
that useful, but it is up to you.

Andrew

> - Yash
> 
>>
>> Andrew
>>
> 

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
