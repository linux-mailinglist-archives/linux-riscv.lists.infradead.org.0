Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75B931517DE
	for <lists+linux-riscv@lfdr.de>; Tue,  4 Feb 2020 10:32:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rm8dKVG2yxfmK5W0yHhKdmY8AYtsDtPAQX6E8Cr/EJw=; b=sPfhLH7vbzc7hU
	On/aeC/exvJNDva/xZ+iplPrb+Dl3jP+LnhGgx0mPK7nt3TOugij4GH9RSl1iL/uHxk+Vep4YBHwQ
	0TsayqA+7vCTcIrv6CPoMkKqSYu2BL34v8mER8IjTMQ4Jn7asIYrv2LLKrovpOT0kNOw67xT7p4Sq
	9Ygb+jlw/eTwq4rMEPtDjabW9pcfMKNGwwSBV4QFyMyxyUHS2mG/HCSKXKSjkrNxKXxAGqI727TFo
	lLjslBPJn8N7lqRVUlCaV7MvJFg9N3pzaDVka7yFWL7fictbjlHY+uAcGgS/iItWA8+zPVEMX+Mqd
	y6yZdecCcAzFGFfSetPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyuZ9-0003pd-W9; Tue, 04 Feb 2020 09:32:20 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyuZ5-0003pE-BJ
 for linux-riscv@lists.infradead.org; Tue, 04 Feb 2020 09:32:17 +0000
Received: from [10.30.1.20] (lneuilly-657-1-5-103.w81-250.abo.wanadoo.fr
 [81.250.144.103]) (Authenticated sender: alex@ghiti.fr)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id F019924000B;
 Tue,  4 Feb 2020 09:32:00 +0000 (UTC)
Subject: Re: Error on loading some network Kernel modules
To: Zong Li <zongbox@gmail.com>
References: <CADnnUqfhxWN=cyyr0QQyKrrO13LuDFS9NTqOLwm10CnwB3sDXA@mail.gmail.com>
 <alpine.DEB.2.21.999.2001300259070.23963@utopia.booyaka.com>
 <CAEn-LToMfm=G80TmGQZefpmKhKvpGy_=XOoBLGU0a_77ahY+_w@mail.gmail.com>
 <20200131201118.GA4121429@aurel32.net>
 <CAAhSdy03C==7PmuXE441BtDJH8H07rOH-u+-_sZJG70tbTrJcA@mail.gmail.com>
 <d868acf5-7242-93dc-0051-f97e64dc4387@ghiti.fr>
 <33c9a276-6212-115c-c7c9-e62244f13c76@european-processor-initiative.eu>
 <CABvJ_xiWDZfO6fOd4Roiy-yaUVFKrGEcBDBSWsvj2TKGGMjy0g@mail.gmail.com>
 <CA+ZOyaj16M5q-g4wZ60MuUs4q1AfCB48wd+AN4TTJNu8K4NZRA@mail.gmail.com>
 <68bb87cb-50d7-5e85-37f4-ad2cc44865f1@ghiti.fr>
 <CA+ZOyahEPtuNqgSUHVcZpZp3WP3oX4jFOiqJvO827ye4+1DT8Q@mail.gmail.com>
From: Alexandre Ghiti <alex@ghiti.fr>
Message-ID: <c12ed63e-c717-9fa0-7a6c-74d6d4a83a04@ghiti.fr>
Date: Tue, 4 Feb 2020 10:32:00 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <CA+ZOyahEPtuNqgSUHVcZpZp3WP3oX4jFOiqJvO827ye4+1DT8Q@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_013215_668500_568EFD46 
X-CRM114-Status: GOOD (  23.75  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
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
Cc: Paul Walmsley <paul@pwsan.com>,
 David Abdurachmanov <david.abdurachmanov@gmail.com>,
 Anup Patel <anup@brainfault.org>, Carlos Eduardo de Paula <me@carlosedp.com>,
 Vincent Chen <vincent.chen@sifive.com>,
 Romain Dolbeau <romain.dolbeau@european-processor-initiative.eu>,
 Zong Li <zong.li@sifive.com>, linux-riscv <linux-riscv@lists.infradead.org>,
 Aurelien Jarno <aurelien@aurel32.net>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org


On 2/4/20 8:19 AM, Zong Li wrote:
> Alex Ghiti <alex@ghiti.fr> 於 2020年2月4日 週二 下午2:50寫道：
>> Hi Zong,
>>
>> On 2/3/20 10:55 PM, Zong Li wrote:
>>> Vincent Chen <vincent.chen@sifive.com> 於 2020年2月3日 週一 下午6:04寫道：
>>>> On Mon, Feb 3, 2020 at 12:27 AM Romain Dolbeau
>>>> <romain.dolbeau@european-processor-initiative.eu> wrote:
>>>>> On 2020-02-01 14:59, Alex Ghiti wrote:
>>>>>> Why restrict to 128M whereas we have 2GB offset available to the end of
>>>>>> the kernel ?
>>>>> Isn't that 2 GiB offset to whatever the module requires in the kernel,
>>>>> rather than to the end of the kernel space?
>>>>>
>>>>> Is there some guarantee that symbols accessible by modules are at the
>>>>> end of the kernel? If so, wouldn't the maximum offset for this patch
>>>>> still be (2 GiB - <total size of accessible symbols>)?
>>>>>
>>>>> Cordially,
>>>>>
>>>>> --
>>>>> Romain Dolbeau
>>>> It took me some time to find the root cause of this problem, please
>>>> allow me to share some observations before the discussion.
>>>> The root cause of this issue is that the percpu data is declared as a
>>>> static variable. The "static" attribute will make the compiler think
>>>> that this symbol is close to the .text section at runtime. Hence, the
>>>> compiler uses "auipc" to access this percpu data instead of using GOT.
>>>> In this case,  the access range is limited to + -2G. However, in
>>>> practice, these percpu data are placed at a pre-allocated region
>>>> created by the memblock_allocate() function. In other words, the
>>>> distance between the pre-allocated region (>PAGE_OFFSET ) and the
>>>> .text section of the kernel module (in VMALLOC region) is much larger
>>>> than 2G.
>>>> I agree that the original patch,
>>>> https://github.com/bjoto/linux/commit/8a56d1c8e8e91c1bc3893946d52b9217c96e1589,
>>>> can solve most cases. However, I do not think the patch still works if
>>>> the kernel module region is determined by _end or <total size of
>>>> accessible symbols>. The reason is that the pre-allocated region for
>>>> module percpu data comes from the memblock function at runtime. Hence,
>>>> we cannot know the actual address of this region at compile-time, and
>>>> this issue probably may occur again in this case.
>>>>
>>>> By the way, I think maybe we can refer to the implementation of MIPS.
>>>> 1. For general cases, we can use this patch to solve this issue.
>>>> 2. For a large kernel image (>2G) or enabling the KASLR feature, we
>>>> may need a new code mode to deal with this issue.
>>>>
>>> The range [&_end - 2G, VMALLOC_END] won't be suitable when KASLR is
>>> enabled. Unless we limit the randomized range in small area, the
>>> module region start address will be bigger than VMALLOC_END.
>>
>> Actually, the relocatable patch I proposed already moves "everything" up
>> at the same
>> time: the kernel itself but also all the "zones" below (vmalloc,
>> vmemmap, fixup...etc)
>> since all those zones are defined from PAGE_OFFSET that is now dynamic.
>> So the modules
>> ill remain at the same offset to the kernel, unless explicitly
>> randomized in the vmalloc zone.
>>
> OK, it makes sense. The module region moves along with kernel seems to
> stay away from the concern I mentioned.
>
> So now, the problem is that the pre-allocated region of percpu data is
> located after _end symbol as Vincent mentioned, the 2G distance seems
> to be too far for module region start address. (i.e. &_end - 2G).


Actually, I don't understand this issue: we are limited to addressing 
symbols within +/- 2GB
from PC. So as long as the percpu symbol exists in the kernel, it is 
below _end and then we don't
care that its content is initialized dynamically, as long as we can 
'compute' its address from PC,
right ?

Can you point out where I can take a look at this pre-allocated region 
for percpu data please ?

Thanks,

Alex


>
>>> So if we
>>> divide a region into module use, we also have to provide module
>>> randomization at the same time when KASLR is enabled. It good to me if
>>> there is a new code model to use GOT for static variable, everything
>>> will be easy.
>>
>> GOT usage seems indeed to be easier, but it seems a bit overkill to me:
>> arm64 already
>> uses the range I proposed for modules (arch/arm64/kernel/kaslr.c,
>> module_alloc_base
>> definition).
>>
>> Anyway, even if GOT is chosen, it won't be anytime soon right ? So we
>> could, for the moment,
>> constraint the modules to be close to the kernel with any range you like
>> and that will still
>> work with our implementation of KASLR.
> Yes, I'm with you on that, we need a resolution in kernel first.
>
>> It seems urgent to fix those modules loading issues for 5.6.
>>
>> Alex
>>

