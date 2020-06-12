Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8AC41F7836
	for <lists+linux-riscv@lfdr.de>; Fri, 12 Jun 2020 15:00:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:Subject:From:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vMmUlnQYIenZVb7vfsB9rwEwiCvjAMPl/ObAHoSlM/8=; b=XeMzvDA5UlOhbE
	3wx+AmPuPEPJ65RFCIvPqYLaf4NDOwmt5rw+El3u9MvrOQUgs8oToAxGeyAjjUH/lIKqrk8ZDd6pr
	EktZC4n79Er3SzSca+QXcfWhlNA6Smxs1LpVPL31q5jKvcjXBljReqG1Sq7Yk6g+Z5fmXHzIoLigs
	W9uhZ9wUScOsLWpJM5zWdde4WDXF8J3GJnOHZ47AhUnPA3fX/A26BX5fU0v1bXUurgU56tA7gF6lt
	Uv56jjJTEbv7GH2O0lzh44OhbYLon5VdDquYVLBSWuM2JbZGepNtACRUJKlaFG5zURwY9fL68rCWR
	zi5HS/wgcmtViIOgeXuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjjI1-0002m4-8h; Fri, 12 Jun 2020 13:00:09 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjjHw-0001Hk-47
 for linux-riscv@lists.infradead.org; Fri, 12 Jun 2020 13:00:06 +0000
Received: from [192.168.1.11] (lfbn-gre-1-325-105.w90-112.abo.wanadoo.fr
 [90.112.45.105]) (Authenticated sender: alex@ghiti.fr)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id 70976240005;
 Fri, 12 Jun 2020 12:59:54 +0000 (UTC)
From: Alex Ghiti <alex@ghiti.fr>
Subject: Re: [PATCH 0/2] PUD/PGDIR entries for linear mapping
To: Atish Patra <atishp@atishpatra.org>
References: <20200603153608.30056-1-alex@ghiti.fr>
 <CAOnJCUJSKvLDsXC8+wyO1xsZDzLJmjY2kwMKhjz0t+uS8h0pDw@mail.gmail.com>
 <7ad7057e-fdab-14ef-9bdb-c77ccefd208a@ghiti.fr>
 <CAOnJCUKcMmchxgeHNx997EH5JM_OAJFUDCNT6Ca2B-xHE4YT5A@mail.gmail.com>
Message-ID: <36739fc4-21ea-14f4-f2a6-52614b602dea@ghiti.fr>
Date: Fri, 12 Jun 2020 08:59:54 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <CAOnJCUKcMmchxgeHNx997EH5JM_OAJFUDCNT6Ca2B-xHE4YT5A@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: fr
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_060004_461928_27B1C617 
X-CRM114-Status: GOOD (  24.95  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.178.230 listed in wl.mailspike.net]
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
Cc: Anup Patel <anup@brainfault.org>,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 Atish Patra <Atish.Patra@wdc.com>, Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv <linux-riscv@lists.infradead.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi Atish,

Le 6/11/20 à 1:29 PM, Atish Patra a écrit :
> On Wed, Jun 10, 2020 at 11:51 PM Alex Ghiti<alex@ghiti.fr>  wrote:
>> Hi Atish,
>>
>> Le 6/10/20 à 2:32 PM, Atish Patra a écrit :
>>> On Wed, Jun 3, 2020 at 8:36 AM Alexandre Ghiti<alex@ghiti.fr>  wrote:
>>>> This small patchset intends to use PUD/PGDIR entries for linear mapping
>>>> in order to better utilize TLB.
>>>>
>>>> At the moment, only PMD entries can be used since on common platforms
>>>> (qemu/unleashed), the kernel is loaded at DRAM + 2MB which dealigns virtual
>>>> and physical addresses and then prevents the use of PUD/PGDIR entries.
>>>> So the kernel must be able to get those 2MB for PAGE_OFFSET to map the
>>>> beginning of the DRAM: this is achieved in patch 1.
>>>>
>>> I don't have in depth knowledge of how mm code works so this question
>>> may be a completely
>>> stupid one :). Just for my understanding,
>>> As per my understanding, kernel will map those 2MB of memory but never use it.
>>> How does the kernel ensure that it doesn't allocate any memory from those 2MB
>>> memory if it is not marked as reserved?
>> Yes, a 1GB hugepage will cover those 2MB: I rely on the previous boot
>> stage to mark this region
>> as reserved if there is something there (like opensbi). Otherwise, the
>> kernel will indeed try to
>> allocate memory from there :)
>>
> In that case, this patch mandates that the firmware region has to be
> mark "reserved"
> the device tree so that the Linux kernel doesn't try to allocate
> memory from there.
> OpenSBI is already doing it from v0.7. Thus, any user using latest
> OpenSBI can leverage
> this patch for a better TLB utilization.


Note that *currently* OpenSBI v0.7 still adds the "no-map" property 
which prevents such optimization.

> However, legacy previous boot stages(BBL) do not reserve this area via
> DT which may
> result in an unexpected crash. I am not sure how many developers still
> use BBL though.
>
> Few general suggestions to tackle this problem:
> 1. This mandatory requirement should be added to the booting document
> so that any other
> SBI implementation is also aware of it.
> 2. You may have to move the patch1 to a separate config so that any
> users of legacy boot stages
> can disable this feature.


IMHO, the region occupied by runtime services should be marked as 
reserved in the device-tree. So it seems redundant to add this as a 
requirement, I would rather consider its absence as a bug.

Even if I understand that this might break some system, I don't like the 
idea of a new config to support old "buggy" bootloaders: when will we be 
able to remove it ? We'll never know when people will stop using those 
bootloaders, so it will stay here forever...Where can I find the boot 
document you are talking about ? Can we simply state here that this 
kernel version will not be compatible with those bootloaders (we'll draw 
an exhaustive list here) ?

Alex


>> Alex
>>
>>
>>>> But furthermore, at the moment, the firmware (opensbi) explicitly asks the
>>>> kernel not to map the region it occupies, which is on those common
>>>> platforms at the very beginning of the DRAM and then it also dealigns
>>>> virtual and physical addresses. I proposed a patch here:
>>>>
>>>> https://github.com/riscv/opensbi/pull/167
>>>>
>>>> that removes this 'constraint' but *not* all the time as it offers some
>>>> kind of protection in case PMP is not available. So sometimes, we may
>>>> have a part of the memory below the kernel that is removed creating a
>>>> misalignment between virtual and physical addresses. So for performance
>>>> reasons, we must at least make sure that PMD entries can be used: that
>>>> is guaranteed by patch 1 too.
>>>>
>>>> Finally the second patch simply improves best_map_size so that whenever
>>>> possible, PUD/PGDIR entries are used.
>>>>
>>>> Below is the kernel page table without this patch on a 6G platform:
>>>>
>>>> ---[ Linear mapping ]---
>>>> 0xffffc00000000000-0xffffc00176e00000    0x0000000080200000 5998M PMD     D A . . . W R V
>>>>
>>>> And with this patchset + opensbi patch:
>>>>
>>>> ---[ Linear mapping ]---
>>>> 0xffffc00000000000-0xffffc00140000000 0x0000000080000000         5G PUD     D A . . . W R V
>>>> 0xffffc00140000000-0xffffc00177000000    0x00000001c0000000 880M PMD     D A . . . W R V
>>>>
>>>> Alexandre Ghiti (2):
>>>>     riscv: Get memory below load_pa while ensuring linear mapping is PMD
>>>>       aligned
>>>>     riscv: Use PUD/PGDIR entries for linear mapping when possible
>>>>
>>>>    arch/riscv/include/asm/page.h |  8 ++++
>>>>    arch/riscv/mm/init.c          | 69 +++++++++++++++++++++++++++++------
>>>>    2 files changed, 65 insertions(+), 12 deletions(-)
>>>>
>>>> --
>>>> 2.20.1
>>>>
>>>>
>

