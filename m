Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 217471A065B
	for <lists+linux-riscv@lfdr.de>; Tue,  7 Apr 2020 07:15:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:Subject:From:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dkMqS7o7so/I8B5e4CmOHgpG2yB3ZF+HcBpx1dqcVG8=; b=HPGRzA8DB7OqZh
	X6LJttirGDyBnBteo2jJL7Cataar/236A/ZkKCBFIm1MtoZ3RvD4u6OK0jVJ26Ey4rSVZu+gR27jE
	JKMONL9gw98UKG7pK7IyUjvw7UKczdlZUlrccn+/DLI3e6OLq9NPhL3YsV8kiTL/XjeDVNrNYxEMG
	atyZqyDPkoNq/GXMJE1wo20FiQAoSbfheoQQ1sS0G2R2HBnOv3U7jlP6LVVN1lzxKjZhhFOYEjnF0
	H2kmmyEssSPzKWy7DsVbXnSazooxupsnqXHLcpAJCGETT34LOHq14yM+wcnefaRgfP12NYedKCzjo
	BetJQCCFFzHqH+W1JhRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLgZt-0003nZ-37; Tue, 07 Apr 2020 05:15:13 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLgZp-00033Q-29
 for linux-riscv@lists.infradead.org; Tue, 07 Apr 2020 05:15:10 +0000
Received: from [192.168.1.101] (lfbn-lyo-1-453-25.w2-7.abo.wanadoo.fr
 [2.7.45.25]) (Authenticated sender: alex@ghiti.fr)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id 5AEB0240006;
 Tue,  7 Apr 2020 05:15:05 +0000 (UTC)
From: Alex Ghiti <alex@ghiti.fr>
Subject: Re: [RFC PATCH 7/7] riscv: Explicit comment about user virtual
 address space size
To: Palmer Dabbelt <palmer@dabbelt.com>
References: <mhng-85bee1c4-d1ea-4370-8940-2e35c5eb6d4b@palmerdabbelt-glaptop1>
Message-ID: <29eb893f-1432-e75a-cf4a-7b97037dc50b@ghiti.fr>
Date: Tue, 7 Apr 2020 01:15:05 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <mhng-85bee1c4-d1ea-4370-8940-2e35c5eb6d4b@palmerdabbelt-glaptop1>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_221509_246064_2D66EA30 
X-CRM114-Status: GOOD (  12.26  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: anup@brainfault.org, linux-kernel@vger.kernel.org, zong.li@sifive.com,
 Paul Walmsley <paul.walmsley@sifive.com>, linux-riscv@lists.infradead.org,
 Christoph Hellwig <hch@lst.de>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org



On 4/3/20 11:53 AM, Palmer Dabbelt wrote:
> On Sun, 22 Mar 2020 04:00:28 PDT (-0700), alex@ghiti.fr wrote:
>> Define precisely the size of the user accessible virtual space size
>> for sv32/39/48 mmu types and explain why the whole virtual address
>> space is split into 2 equal chunks between kernel and user space.
>>
>> Signed-off-by: Alexandre Ghiti <alex@ghiti.fr>
>> ---
>>  arch/riscv/include/asm/pgtable.h | 11 +++++++++--
>>  1 file changed, 9 insertions(+), 2 deletions(-)
>>
>> diff --git a/arch/riscv/include/asm/pgtable.h 
>> b/arch/riscv/include/asm/pgtable.h
>> index 06361db3f486..be117a0b4ea1 100644
>> --- a/arch/riscv/include/asm/pgtable.h
>> +++ b/arch/riscv/include/asm/pgtable.h
>> @@ -456,8 +456,15 @@ static inline int ptep_clear_flush_young(struct 
>> vm_area_struct *vma,
>>  #define FIXADDR_START    (FIXADDR_TOP - FIXADDR_SIZE)
>>
>>  /*
>> - * Task size is 0x4000000000 for RV64 or 0x9fc00000 for RV32.
>> - * Note that PGDIR_SIZE must evenly divide TASK_SIZE.
>> + * Task size is:
>> + * -     0x9fc00000 (~2.5GB) for RV32.
>> + * -   0x4000000000 ( 256GB) for RV64 using SV39 mmu
>> + * - 0x800000000000 ( 128TB) for RV64 using SV48 mmu
>> + *
>> + * Note that PGDIR_SIZE must evenly divide TASK_SIZE since "RISC-V
>> + * Instruction Set Manual Volume II: Privileged Architecture" states 
>> that
>> + * "load and store effective addresses, which are 64bits, must have bits
>> + * 63–48 all equal to bit 47, or else a page-fault exception will 
>> occur."
>>   */
>>  #ifdef CONFIG_64BIT
>>  #define TASK_SIZE (PGDIR_SIZE * PTRS_PER_PGD / 2)
> 
> Reviewed-by: Palmer Dabbelt <palmerdabbelt@google.com>

Thanks,

Alex

