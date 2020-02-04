Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FF40151627
	for <lists+linux-riscv@lfdr.de>; Tue,  4 Feb 2020 07:51:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oOt5NmGgJL0snMCWFXNiUXNgrwDelcPDcdm3FLlkTzc=; b=og5ALDeRAPzyF+
	MCuUTqAcZvwj1NVlTHNh93fV+ZGXA7/whXAxwxvYEIPlsdTzGlTRCeQAX3ynGZ3o9LBVcguEsyQ7q
	YdVEhH6YghFprELzkQPC5BiuEuut6XbwNWORQD7hs88eub2XmUo6tM05COPHjuMLYKDmAKiFfTsLY
	s1uKSdFY5Hll9xPXHg4FMZscTR+9nwmnFaT9+Zi5AtBP8E7HPsOHBBi+AcktW5/rODA0RSWCFjdI9
	H5ES/in2q8xKcJMva/UMEL8hp6SNK/XIbqDCHiifXOXho74vkodRq4cwsVAC/SE+hkRBypqkQRU+g
	4MgzmOGQyPgFheeKeX6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iys3E-0006M8-Ju; Tue, 04 Feb 2020 06:51:12 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iys3D-0006M0-CM
 for linux-riscv@bombadil.infradead.org; Tue, 04 Feb 2020 06:51:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender
 :Reply-To:Content-ID:Content-Description;
 bh=oOt5NmGgJL0snMCWFXNiUXNgrwDelcPDcdm3FLlkTzc=; b=SvrGzcws7vr+giIUyjlApnOo+k
 UtjOr5tEMGevHySEU3TDcSMU5rnZkSwekXQ/BBxrl7KnnzHh2+oSez3oogEt94hithfGF3pHboMMO
 XXGe1mo91JSeWjNBAQJId61ng9UHxwffASS7AXwtD2HpjSTMtzTpgWG9GcyHOOX55XTAMkeHWM+qK
 bJFZvnYBXSB1RAV/GAsqa/0I9JtAtw6lu7LAx61nwkUv64Bf7yiyJA4afMBYlT2UPlsCQRaFgYgzX
 jofGhXegOkgpKAPlsNsMk9wE5evyYB/eg7w+X8FCH1b7zKmUwrabMaJy5kjAG5BqXxGO+1ChLUHhd
 DypUa37g==;
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iys3A-0006xe-4q
 for linux-riscv@lists.infradead.org; Tue, 04 Feb 2020 06:51:09 +0000
X-Originating-IP: 79.86.19.127
Received: from [192.168.0.12] (127.19.86.79.rev.sfr.net [79.86.19.127])
 (Authenticated sender: alex@ghiti.fr)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 7B934240005;
 Tue,  4 Feb 2020 06:50:35 +0000 (UTC)
Subject: Re: Error on loading some network Kernel modules
To: Zong Li <zongbox@gmail.com>, Vincent Chen <vincent.chen@sifive.com>
References: <CADnnUqfhxWN=cyyr0QQyKrrO13LuDFS9NTqOLwm10CnwB3sDXA@mail.gmail.com>
 <alpine.DEB.2.21.999.2001300259070.23963@utopia.booyaka.com>
 <CAEn-LToMfm=G80TmGQZefpmKhKvpGy_=XOoBLGU0a_77ahY+_w@mail.gmail.com>
 <20200131201118.GA4121429@aurel32.net>
 <CAAhSdy03C==7PmuXE441BtDJH8H07rOH-u+-_sZJG70tbTrJcA@mail.gmail.com>
 <d868acf5-7242-93dc-0051-f97e64dc4387@ghiti.fr>
 <33c9a276-6212-115c-c7c9-e62244f13c76@european-processor-initiative.eu>
 <CABvJ_xiWDZfO6fOd4Roiy-yaUVFKrGEcBDBSWsvj2TKGGMjy0g@mail.gmail.com>
 <CA+ZOyaj16M5q-g4wZ60MuUs4q1AfCB48wd+AN4TTJNu8K4NZRA@mail.gmail.com>
From: Alex Ghiti <alex@ghiti.fr>
Message-ID: <68bb87cb-50d7-5e85-37f4-ad2cc44865f1@ghiti.fr>
Date: Tue, 4 Feb 2020 01:50:35 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <CA+ZOyaj16M5q-g4wZ60MuUs4q1AfCB48wd+AN4TTJNu8K4NZRA@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.193 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 Romain Dolbeau <romain.dolbeau@european-processor-initiative.eu>,
 Zong Li <zong.li@sifive.com>, linux-riscv <linux-riscv@lists.infradead.org>,
 Aurelien Jarno <aurelien@aurel32.net>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi Zong,

On 2/3/20 10:55 PM, Zong Li wrote:
> Vincent Chen <vincent.chen@sifive.com> 於 2020年2月3日 週一 下午6:04寫道：
>> On Mon, Feb 3, 2020 at 12:27 AM Romain Dolbeau
>> <romain.dolbeau@european-processor-initiative.eu> wrote:
>>> On 2020-02-01 14:59, Alex Ghiti wrote:
>>>> Why restrict to 128M whereas we have 2GB offset available to the end of
>>>> the kernel ?
>>> Isn't that 2 GiB offset to whatever the module requires in the kernel,
>>> rather than to the end of the kernel space?
>>>
>>> Is there some guarantee that symbols accessible by modules are at the
>>> end of the kernel? If so, wouldn't the maximum offset for this patch
>>> still be (2 GiB - <total size of accessible symbols>)?
>>>
>>> Cordially,
>>>
>>> --
>>> Romain Dolbeau
>> It took me some time to find the root cause of this problem, please
>> allow me to share some observations before the discussion.
>> The root cause of this issue is that the percpu data is declared as a
>> static variable. The "static" attribute will make the compiler think
>> that this symbol is close to the .text section at runtime. Hence, the
>> compiler uses "auipc" to access this percpu data instead of using GOT.
>> In this case,  the access range is limited to + -2G. However, in
>> practice, these percpu data are placed at a pre-allocated region
>> created by the memblock_allocate() function. In other words, the
>> distance between the pre-allocated region (>PAGE_OFFSET ) and the
>> .text section of the kernel module (in VMALLOC region) is much larger
>> than 2G.
>> I agree that the original patch,
>> https://github.com/bjoto/linux/commit/8a56d1c8e8e91c1bc3893946d52b9217c96e1589,
>> can solve most cases. However, I do not think the patch still works if
>> the kernel module region is determined by _end or <total size of
>> accessible symbols>. The reason is that the pre-allocated region for
>> module percpu data comes from the memblock function at runtime. Hence,
>> we cannot know the actual address of this region at compile-time, and
>> this issue probably may occur again in this case.
>>
>> By the way, I think maybe we can refer to the implementation of MIPS.
>> 1. For general cases, we can use this patch to solve this issue.
>> 2. For a large kernel image (>2G) or enabling the KASLR feature, we
>> may need a new code mode to deal with this issue.
>>
> The range [&_end - 2G, VMALLOC_END] won't be suitable when KASLR is
> enabled. Unless we limit the randomized range in small area, the
> module region start address will be bigger than VMALLOC_END.


Actually, the relocatable patch I proposed already moves "everything" up 
at the same
time: the kernel itself but also all the "zones" below (vmalloc, 
vmemmap, fixup...etc)
since all those zones are defined from PAGE_OFFSET that is now dynamic. 
So the modules
ill remain at the same offset to the kernel, unless explicitly 
randomized in the vmalloc zone.


> So if we
> divide a region into module use, we also have to provide module
> randomization at the same time when KASLR is enabled. It good to me if
> there is a new code model to use GOT for static variable, everything
> will be easy.


GOT usage seems indeed to be easier, but it seems a bit overkill to me: 
arm64 already
uses the range I proposed for modules (arch/arm64/kernel/kaslr.c, 
module_alloc_base
definition).

Anyway, even if GOT is chosen, it won't be anytime soon right ? So we 
could, for the moment,
constraint the modules to be close to the kernel with any range you like 
and that will still
work with our implementation of KASLR.

It seems urgent to fix those modules loading issues for 5.6.

Alex


