Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4076A16061C
	for <lists+linux-riscv@lfdr.de>; Sun, 16 Feb 2020 20:57:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0hygdLSQyKpuNCZ2nNcsv6ZXL/HMFWaaoEQfXMDSh88=; b=ko6PJSs6ppJFru
	sm5j8qYUXR6DfkxomTV9QVlP8VTbfjJf8cQOx2s7v9hwhQegF8ZF+9rDhujAEITDjzYWIixyOZaJW
	9rkvg1YRMN79ztOUZErITp5Q39rnGesyZVV8wvvh/RR0NLmO+wz7CnI12jEcBNzL1Gbv3zbDzI2Sd
	J8yN1sRTaKzX5Ce6NrtIVKKyanlHlavMM7wM+v54T4XxigsixrrlhIwIeWUtD2uLSL7Kkbf4QuU9r
	X7ry5VUntfOnSZ5PxiHTSg9Rn5om82G4agBuHzqGPBRYJTql+XCcoviGVjFpjKRwZuqv09YjVy8YP
	FnvzRgUIdZyGYrBzbYpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3Q2R-0000MM-8f; Sun, 16 Feb 2020 19:57:11 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3Q2O-0000Lp-Ad
 for linux-riscv@lists.infradead.org; Sun, 16 Feb 2020 19:57:09 +0000
X-Originating-IP: 79.86.19.127
Received: from [192.168.0.12] (127.19.86.79.rev.sfr.net [79.86.19.127])
 (Authenticated sender: alex@ghiti.fr)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id CA948C0002;
 Sun, 16 Feb 2020 19:57:05 +0000 (UTC)
Subject: Re: [PATCH v2 2/3] riscv: End kernel region search in setup_bootmem
 earlier
To: Jan Kiszka <jan.kiszka@web.de>, Paul Walmsley <paul.walmsley@sifive.com>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
 linux-riscv@lists.infradead.org
References: <cover.1581767384.git.jan.kiszka@web.de>
 <b11898805c2f9f01b10867a05701aa0fafeaa886.1581767384.git.jan.kiszka@web.de>
 <8f0ddf1f-1ea9-8bde-76a0-ba60788c2a2d@ghiti.fr>
 <f64451c2-48b4-c998-c89f-29b11b371e55@web.de>
From: Alex Ghiti <alex@ghiti.fr>
Message-ID: <45d6b6a1-c0a9-df9e-e4a6-05b1dde27877@ghiti.fr>
Date: Sun, 16 Feb 2020 14:57:04 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <f64451c2-48b4-c998-c89f-29b11b371e55@web.de>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_115708_507237_03F77A06 
X-CRM114-Status: GOOD (  11.05  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-kernel@vger.kernel.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org


On 2/16/20 11:06 AM, Jan Kiszka wrote:
> On 16.02.20 15:42, Alex Ghiti wrote:
>> Hi Jan,
>>
>> On 2/15/20 6:49 AM, Jan Kiszka wrote:
>>> From: Jan Kiszka <jan.kiszka@siemens.com>
>>>
>>> No need to look further when that single region is found.
>>>
>>> Signed-off-by: Jan Kiszka <jan.kiszka@siemens.com>
>>> =2D--
>>>   arch/riscv/mm/init.c | 2 ++
>>>   1 file changed, 2 insertions(+)
>>>
>>> diff --git a/arch/riscv/mm/init.c b/arch/riscv/mm/init.c
>>> index aec39a56d6cf..a774547e9021 100644
>>> =2D-- a/arch/riscv/mm/init.c
>>> +++ b/arch/riscv/mm/init.c
>>> @@ -160,6 +160,8 @@ void __init setup_bootmem(void)
>>>               if (reg->base + mem_size < end)
>>>                   memblock_remove(reg->base + mem_size,
>>>                           end - reg->base - mem_size);
>>> +
>>> +            break;
>>>           }
>>>       }
>>>       BUG_ON(mem_size =3D=3D 0);
>>> =2D-
>>> 2.16.4
>>>
>>>
>>
>> I was looking at the test above that determines if the current memblock
>> contains the kernel:
>>
>> if (reg->base <= vmlinux_end && vmlinux_end <= end)
>>
>> Shouldn't it be:
>>
>> if (reg->base <= vmlinux_start && vmlinux_end <= end)
>>
>> ?
> 
> Yes, I think you are right. Would you like to send a patch that fixes this?

Thanks for confirming, I'll send a patch tomorrow and cc stable too.

Alex

> 
>>
>> Otherwise, we can indeed stop as soon as we found the region containing
>> the kernel, so feel free to add:
>>
>> Reviewed-by: Alexandre Ghiti <alex@ghiti.fr>
>>
> 
> Thanks,
> Jan
> 

