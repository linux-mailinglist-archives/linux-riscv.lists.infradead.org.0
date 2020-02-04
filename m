Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E21FF1520CB
	for <lists+linux-riscv@lfdr.de>; Tue,  4 Feb 2020 20:11:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QSfbc9XmIC3/j60EROgt/nHgu5K/Rnh6+cUcg6EnKJg=; b=mrXKetC+bfMIjo
	dMfl8w+tJbT3lWZP3Cplr5rogwkE99QHyooNwxFhiVnSCeBpSg/n2oliRmSPQW1EC4VPNEwiNLvE+
	rGhatk+1PvyTk3ehJOJUscOm1RQum8INOEj4Q1NYVr2ZTf50Mmiq/9CbV8IuE9f/eAYquqIrlFwcx
	FnS+nuo+IxX3WA7Bhm2RfX8CNIbx3nrFBhKxABjOsqP+ytIO4neEq6aY4ZnJukJ9yUFhUBhMex6fV
	iJgrJ1zT7p/bY3j94UWHpJ4AkAOBswMnp83EKF0s9bvnDx2e/0A2yYfwCt/v7Ot4CRCDSNhj5B85J
	eT6UHk5Mm/n2E6Z/JZBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iz3bN-00070r-Fk; Tue, 04 Feb 2020 19:11:13 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iz3bJ-000709-3c
 for linux-riscv@lists.infradead.org; Tue, 04 Feb 2020 19:11:11 +0000
Received: from [192.168.43.237] (20.168.185.81.rev.sfr.net [81.185.168.20])
 (Authenticated sender: alex@ghiti.fr)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id 73E81240004;
 Tue,  4 Feb 2020 19:10:49 +0000 (UTC)
Subject: Re: Error on loading some network Kernel modules
To: Vincent Chen <vincent.chen@sifive.com>, Anup Patel <anup@brainfault.org>
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
 <c12ed63e-c717-9fa0-7a6c-74d6d4a83a04@ghiti.fr>
 <CABvJ_xiBVQjfJfZU0Dfp0fc9n_zAoc=DSHPFuDMKu4k5n0qJtQ@mail.gmail.com>
 <CAAhSdy2gEK++MtyV9=o9r_-6CkaWMsQ0YZwB-TAkCCe3B4qTFg@mail.gmail.com>
 <CABvJ_xjc+ojwqgMhxZ2a0Q+BvxzxUR6ab__+8iA6zx65GMKkxA@mail.gmail.com>
From: Alex Ghiti <alex@ghiti.fr>
Message-ID: <6ccf2b22-c106-5eec-f8a3-228068d8660b@ghiti.fr>
Date: Tue, 4 Feb 2020 14:10:48 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <CABvJ_xjc+ojwqgMhxZ2a0Q+BvxzxUR6ab__+8iA6zx65GMKkxA@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_111109_432628_BD08764D 
X-CRM114-Status: GOOD (  33.51  )
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
Cc: Carlos Eduardo de Paula <me@carlosedp.com>,
 David Abdurachmanov <david.abdurachmanov@gmail.com>,
 Paul Walmsley <paul@pwsan.com>, Zong Li <zongbox@gmail.com>,
 Romain Dolbeau <romain.dolbeau@european-processor-initiative.eu>,
 Zong Li <zong.li@sifive.com>, linux-riscv <linux-riscv@lists.infradead.org>,
 Aurelien Jarno <aurelien@aurel32.net>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org



On 2/4/20 9:03 AM, Vincent Chen wrote:
> On Tue, Feb 4, 2020 at 7:31 PM Anup Patel <anup@brainfault.org> wrote:
>>
>> On Tue, Feb 4, 2020 at 4:16 PM Vincent Chen <vincent.chen@sifive.com> wrote:
>>>
>>> On Tue, Feb 4, 2020 at 5:32 PM Alexandre Ghiti <alex@ghiti.fr> wrote:
>>>>
>>>>
>>>> On 2/4/20 8:19 AM, Zong Li wrote:
>>>>> Alex Ghiti <alex@ghiti.fr> 於 2020年2月4日 週二 下午2:50寫道：
>>>>>> Hi Zong,
>>>>>>
>>>>>> On 2/3/20 10:55 PM, Zong Li wrote:
>>>>>>> Vincent Chen <vincent.chen@sifive.com> 於 2020年2月3日 週一 下午6:04寫道：
>>>>>>>> On Mon, Feb 3, 2020 at 12:27 AM Romain Dolbeau
>>>>>>>> <romain.dolbeau@european-processor-initiative.eu> wrote:
>>>>>>>>> On 2020-02-01 14:59, Alex Ghiti wrote:
>>>>>>>>>> Why restrict to 128M whereas we have 2GB offset available to the end of
>>>>>>>>>> the kernel ?
>>>>>>>>> Isn't that 2 GiB offset to whatever the module requires in the kernel,
>>>>>>>>> rather than to the end of the kernel space?
>>>>>>>>>
>>>>>>>>> Is there some guarantee that symbols accessible by modules are at the
>>>>>>>>> end of the kernel? If so, wouldn't the maximum offset for this patch
>>>>>>>>> still be (2 GiB - <total size of accessible symbols>)?
>>>>>>>>>
>>>>>>>>> Cordially,
>>>>>>>>>
>>>>>>>>> --
>>>>>>>>> Romain Dolbeau
>>>>>>>> It took me some time to find the root cause of this problem, please
>>>>>>>> allow me to share some observations before the discussion.
>>>>>>>> The root cause of this issue is that the percpu data is declared as a
>>>>>>>> static variable. The "static" attribute will make the compiler think
>>>>>>>> that this symbol is close to the .text section at runtime. Hence, the
>>>>>>>> compiler uses "auipc" to access this percpu data instead of using GOT.
>>>>>>>> In this case,  the access range is limited to + -2G. However, in
>>>>>>>> practice, these percpu data are placed at a pre-allocated region
>>>>>>>> created by the memblock_allocate() function. In other words, the
>>>>>>>> distance between the pre-allocated region (>PAGE_OFFSET ) and the
>>>>>>>> .text section of the kernel module (in VMALLOC region) is much larger
>>>>>>>> than 2G.
>>>>>>>> I agree that the original patch,
>>>>>>>> https://github.com/bjoto/linux/commit/8a56d1c8e8e91c1bc3893946d52b9217c96e1589,
>>>>>>>> can solve most cases. However, I do not think the patch still works if
>>>>>>>> the kernel module region is determined by _end or <total size of
>>>>>>>> accessible symbols>. The reason is that the pre-allocated region for
>>>>>>>> module percpu data comes from the memblock function at runtime. Hence,
>>>>>>>> we cannot know the actual address of this region at compile-time, and
>>>>>>>> this issue probably may occur again in this case.
>>>>>>>>
>>>>>>>> By the way, I think maybe we can refer to the implementation of MIPS.
>>>>>>>> 1. For general cases, we can use this patch to solve this issue.
>>>>>>>> 2. For a large kernel image (>2G) or enabling the KASLR feature, we
>>>>>>>> may need a new code mode to deal with this issue.
>>>>>>>>
>>>>>>> The range [&_end - 2G, VMALLOC_END] won't be suitable when KASLR is
>>>>>>> enabled. Unless we limit the randomized range in small area, the
>>>>>>> module region start address will be bigger than VMALLOC_END.
>>>>>>
>>>>>> Actually, the relocatable patch I proposed already moves "everything" up
>>>>>> at the same
>>>>>> time: the kernel itself but also all the "zones" below (vmalloc,
>>>>>> vmemmap, fixup...etc)
>>>>>> since all those zones are defined from PAGE_OFFSET that is now dynamic.
>>>>>> So the modules
>>>>>> ill remain at the same offset to the kernel, unless explicitly
>>>>>> randomized in the vmalloc zone.
>>>>>>
>>>>> OK, it makes sense. The module region moves along with kernel seems to
>>>>> stay away from the concern I mentioned.
>>>>>
>>>>> So now, the problem is that the pre-allocated region of percpu data is
>>>>> located after _end symbol as Vincent mentioned, the 2G distance seems
>>>>> to be too far for module region start address. (i.e. &_end - 2G).
>>>>
>>>>
>>>> Actually, I don't understand this issue: we are limited to addressing
>>>> symbols within +/- 2GB
>>>> from PC. So as long as the percpu symbol exists in the kernel, it is
>>>> below _end and then we don't
>>>> care that its content is initialized dynamically, as long as we can
>>>> 'compute' its address from PC,
>>>> right ?
>>>
>>> In this case, the static percpu symbols of this issue are declared in
>>> the kernel module, not in the kernel image.
>>> When kernel loads the kernel module, in general, it continuously
>>> places all the module sections in the VMALLOC memory area. However,
>>> the ".data..percpu" section is an exception. The kernel places the
>>> ".data..percpu" section in a pre-allocated memory region. This region
>>> is used to place the percpu data instances for each CPU and is created
>>> by the memblock(). Hence, the instance of these per-cpu symbols is
>>> above the _end.  In this case, if we make the module region locate at
>>> [_end-2G, PAGE_OFFSET], the distance between these percpu symbols (its
>>> address >_end) and module text section will probably exceed the 2G
>>> limitation.
>>
>> The static percpu symbols are particularly problem for loadable modules
>> on RISC-V but dynamic percpu variable are perfectly fine. I had faced this
>> issue with KVM RISC-V module and I converted static percpu symbol into
>> dynamic percpu variable. In fact, in Linux kernel dynamic percpu variables
>> are preferred over static percpu symbols so wherever we see issue with
>> static perpcu symbol in any module we should just send patch to convert
>> it into dynamic percpu.
>>
>> In general, any memory access via pointers (just like dynamic percpu
>> variables) are fine as long as the pointer itself is within 2GB of relative
>> addressing.
>>
> 
> As far as I know, the kernel module uses PIC as the code mode instead
> of medany. Therefore, I don't think most pointers in kernel modules
> have a 2GB limit. That is why the modules without static percpu
> variables do not encounter the 32-bit offset issue.
> 
>> Overall, Alex's suggestion will address most cases of loadable modules
>> except modules having static percpu symbols and for such modules just
>> convert these percpu symbols into dynamic percpu variables.
>>
>>>
>>>>
>>>> Can you point out where I can take a look at this pre-allocated region
>>>> for percpu data please ?
>>>>
>>> In mm/percpu.c, you can find how the kernel allocates the percpu data
>>> region during the initialization phase.
>>> In kernel/module.c's simplify_symbols function, you can find kernel
>>> treats .data.percpu section as an exception when loading module.
>>>

Thanks for your explanations, I was miles away from understanding the 
real problem,
good finding Vincent.

>>> If I have any misunderstandings, please let me know. Thanks
>>
>> Please see above comment. We should prefer dynamic percpu variable
>> in loadable modules over static percpu symbols. I am sure there will
>> be very few kernel loadable modules having static percpu symbols.
>>
> Thanks for your comments.
> I agree that Alex's suggestion can address most cases of loadable
> modules. The reason why I pointed out the static percpu variable case
> is that the percpu variable is declared as a static symbol in the
> reduced case provided by Romain in
> https://lore.kernel.org/linux-riscv/1572281840733.3517@european-processor-initiative.eu/.
> Also, I found two static percpu variables declared in openvswitch
> module. After removing the static attribute, the kernel can insert
> them successfully. Hence, I think the static percpu variable causes
> the issue.
> 
> (According to the result of 'grep', very few kernel loadable modules
> use static percpu data, as you mentioned. However, I'm not sure this
> might be a reason to prohibit RISC-V users from using static percpu
> variables in kernel modules. Therefore, I have no comment on this.)
> If we can ignore the existence of static percpu variable in the
> kernels module, I agree with Alex's suggestions. The reason is not
> that we can use it to solve bugs, but that we can change the code
> model from PIC to medany by creating a specific kernel module region
> to improve the access performance.


If I understand well, you mean that having this module zone at the end 
of vmalloc zone
does not allow to fix the bug regarding static percpu variables but 
allows to have better
performance than PIC which uses an additional redirection using the GOT, 
right ?

> (Maybe we can keep the current implementation for some corner cases
> such as the size of the kernel image is close to 2GB)
> 

Either we follow Anup's advice and we don't care about those static 
percpu variables and
if ever they fall behind the 2GB limit, we can not load the module, or 
we find a way to make
sure that the module range comprises the area for module percpu 
variables which is allocated
in setup_per_cpu_areas. I'm taking a look at this solution and how other 
architectures with
same code model handle that.

Thanks again,
Alex
  	

