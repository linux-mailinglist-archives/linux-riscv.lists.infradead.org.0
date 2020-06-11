Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E01231F61EE
	for <lists+linux-riscv@lfdr.de>; Thu, 11 Jun 2020 08:51:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tbJl5NpkttSSenveSLH9NqSabcADVzNkB1DVL4clxc8=; b=vCYKvf782+aVQU
	uUOYOKGPgB5Cv58wWzYGqjSVbSrRrsGDqCZcFZdE9KJe8zMSPdByQmO9MX/pBvQ3btm3TKFZ4wAUw
	tuB+yq7Ar6cCLWWQNfzczGR2/+iwmg8kDhqkPV7AwStjpSKjM4/56+MoTG7wtCpEsZt+JYl9yJDeb
	4gniuG2X7yDdl+g2s+6JGqNt7ZHR6wXTokuA4im29hdZQwhftLk+AmaAauZ1zAxVFF3mSZlH9IhKV
	JCWNz/ZSlkNMmGpAlUYUtXQYsrAE2l4V9VD53x3NRJofPkIbLolzyn6Ar1lmXYIkcTOqNSxwXQ1Ri
	yPVte5gEJ+E+Bghdl65g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjH3f-0002VK-DB; Thu, 11 Jun 2020 06:51:27 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjH3b-0002UA-4D
 for linux-riscv@lists.infradead.org; Thu, 11 Jun 2020 06:51:25 +0000
X-Originating-IP: 81.250.144.103
Received: from [10.30.1.142] (lneuilly-657-1-5-103.w81-250.abo.wanadoo.fr
 [81.250.144.103]) (Authenticated sender: alex@ghiti.fr)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id A5406E0007;
 Thu, 11 Jun 2020 06:51:18 +0000 (UTC)
Subject: Re: [PATCH 0/2] PUD/PGDIR entries for linear mapping
To: Atish Patra <atishp@atishpatra.org>
References: <20200603153608.30056-1-alex@ghiti.fr>
 <CAOnJCUJSKvLDsXC8+wyO1xsZDzLJmjY2kwMKhjz0t+uS8h0pDw@mail.gmail.com>
From: Alex Ghiti <alex@ghiti.fr>
Message-ID: <7ad7057e-fdab-14ef-9bdb-c77ccefd208a@ghiti.fr>
Date: Thu, 11 Jun 2020 02:51:18 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <CAOnJCUJSKvLDsXC8+wyO1xsZDzLJmjY2kwMKhjz0t+uS8h0pDw@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: fr
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_235123_437627_EB7AD129 
X-CRM114-Status: GOOD (  17.43  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.196 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.196 listed in wl.mailspike.net]
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
Cc: Anup Patel <anup@brainfault.org>,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 Atish Patra <Atish.Patra@wdc.com>, Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv <linux-riscv@lists.infradead.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi Atish,

Le 6/10/20 à 2:32 PM, Atish Patra a écrit :
> On Wed, Jun 3, 2020 at 8:36 AM Alexandre Ghiti <alex@ghiti.fr> wrote:
>> This small patchset intends to use PUD/PGDIR entries for linear mapping
>> in order to better utilize TLB.
>>
>> At the moment, only PMD entries can be used since on common platforms
>> (qemu/unleashed), the kernel is loaded at DRAM + 2MB which dealigns virtual
>> and physical addresses and then prevents the use of PUD/PGDIR entries.
>> So the kernel must be able to get those 2MB for PAGE_OFFSET to map the
>> beginning of the DRAM: this is achieved in patch 1.
>>
> I don't have in depth knowledge of how mm code works so this question
> may be a completely
> stupid one :). Just for my understanding,
> As per my understanding, kernel will map those 2MB of memory but never use it.
> How does the kernel ensure that it doesn't allocate any memory from those 2MB
> memory if it is not marked as reserved?

Yes, a 1GB hugepage will cover those 2MB: I rely on the previous boot 
stage to mark this region
as reserved if there is something there (like opensbi). Otherwise, the 
kernel will indeed try to
allocate memory from there :)

Alex


>> But furthermore, at the moment, the firmware (opensbi) explicitly asks the
>> kernel not to map the region it occupies, which is on those common
>> platforms at the very beginning of the DRAM and then it also dealigns
>> virtual and physical addresses. I proposed a patch here:
>>
>> https://github.com/riscv/opensbi/pull/167
>>
>> that removes this 'constraint' but *not* all the time as it offers some
>> kind of protection in case PMP is not available. So sometimes, we may
>> have a part of the memory below the kernel that is removed creating a
>> misalignment between virtual and physical addresses. So for performance
>> reasons, we must at least make sure that PMD entries can be used: that
>> is guaranteed by patch 1 too.
>>
>> Finally the second patch simply improves best_map_size so that whenever
>> possible, PUD/PGDIR entries are used.
>>
>> Below is the kernel page table without this patch on a 6G platform:
>>
>> ---[ Linear mapping ]---
>> 0xffffc00000000000-0xffffc00176e00000    0x0000000080200000 5998M PMD     D A . . . W R V
>>
>> And with this patchset + opensbi patch:
>>
>> ---[ Linear mapping ]---
>> 0xffffc00000000000-0xffffc00140000000 0x0000000080000000         5G PUD     D A . . . W R V
>> 0xffffc00140000000-0xffffc00177000000    0x00000001c0000000 880M PMD     D A . . . W R V
>>
>> Alexandre Ghiti (2):
>>    riscv: Get memory below load_pa while ensuring linear mapping is PMD
>>      aligned
>>    riscv: Use PUD/PGDIR entries for linear mapping when possible
>>
>>   arch/riscv/include/asm/page.h |  8 ++++
>>   arch/riscv/mm/init.c          | 69 +++++++++++++++++++++++++++++------
>>   2 files changed, 65 insertions(+), 12 deletions(-)
>>
>> --
>> 2.20.1
>>
>>
>

