Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 643E31A0654
	for <lists+linux-riscv@lfdr.de>; Tue,  7 Apr 2020 07:13:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:Subject:From:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WVPQyUKkawzhawwPCzVHVCvw6lB/elD1kxPmPfwQB3A=; b=E6vwzwj74BFX7I
	DcHLy1gt+3li6jvDRuwfNjkPa9NHiBTLSx0pXxngeJbV8AK2EKGdC9lXEK/8zC3TPde8HSgqNoxhN
	nQtYJlLmEtvQ092URnnF7m8PlSbmcrWDPknRvaZyyJpuR29OVcI300efSGe618264usBPm1lpeWUj
	zFKVpjGdsS+i39/XLhK4LzAxPFEINW98txIu93jSiwK8Rwpaz4dM9cGjWJ9iDlp6azZEgjNyouGT3
	nXpnDF/E4vrbqqwhVIKWoksQ4QvfdW2pQKycA5F65OCNhr3HDF48iVcNhq9xuhL1wvWxL5BiBdzS0
	Xue1+lPQ3CKMny9Rranw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLgY6-0001AK-Ie; Tue, 07 Apr 2020 05:13:22 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLgY3-00019J-AG
 for linux-riscv@lists.infradead.org; Tue, 07 Apr 2020 05:13:20 +0000
Received: from [192.168.1.101] (lfbn-lyo-1-453-25.w2-7.abo.wanadoo.fr
 [2.7.45.25]) (Authenticated sender: alex@ghiti.fr)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id 24AB9200004;
 Tue,  7 Apr 2020 05:13:10 +0000 (UTC)
From: Alex Ghiti <alex@ghiti.fr>
Subject: Re: [RFC PATCH 3/7] riscv: Simplify MAXPHYSMEM config
To: Palmer Dabbelt <palmer@dabbelt.com>
References: <mhng-f28ea5f1-ad10-4216-8612-f92863d20cca@palmerdabbelt-glaptop1>
Message-ID: <61d65afd-1650-4e16-b93d-f6d44c95ada7@ghiti.fr>
Date: Tue, 7 Apr 2020 01:13:10 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <mhng-f28ea5f1-ad10-4216-8612-f92863d20cca@palmerdabbelt-glaptop1>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_221319_489114_FF23CD98 
X-CRM114-Status: GOOD (  13.89  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
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
> On Sun, 22 Mar 2020 04:00:24 PDT (-0700), alex@ghiti.fr wrote:
>> Either the user specifies maximum physical memory size of 2GB or the
>> user lives with the system constraint which is 128GB in 64BIT for now.
>>
>> Signed-off-by: Alexandre Ghiti <alex@ghiti.fr>
>> ---
>>  arch/riscv/Kconfig | 20 ++++++--------------
>>  1 file changed, 6 insertions(+), 14 deletions(-)
>>
>> diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
>> index 8e4b1cbcf2c2..a475c78e66bc 100644
>> --- a/arch/riscv/Kconfig
>> +++ b/arch/riscv/Kconfig
>> @@ -104,7 +104,7 @@ config PAGE_OFFSET
>>      default 0xC0000000 if 32BIT && MAXPHYSMEM_2GB
>>      default 0x80000000 if 64BIT && !MMU
>>      default 0xffffffff80000000 if 64BIT && MAXPHYSMEM_2GB
>> -    default 0xffffffe000000000 if 64BIT && MAXPHYSMEM_128GB
>> +    default 0xffffffe000000000 if 64BIT && !MAXPHYSMEM_2GB
>>
>>  config ARCH_FLATMEM_ENABLE
>>      def_bool y
>> @@ -216,19 +216,11 @@ config MODULE_SECTIONS
>>      bool
>>      select HAVE_MOD_ARCH_SPECIFIC
>>
>> -choice
>> -    prompt "Maximum Physical Memory"
>> -    default MAXPHYSMEM_2GB if 32BIT
>> -    default MAXPHYSMEM_2GB if 64BIT && CMODEL_MEDLOW
>> -    default MAXPHYSMEM_128GB if 64BIT && CMODEL_MEDANY
>> -
>> -    config MAXPHYSMEM_2GB
>> -        bool "2GiB"
>> -    config MAXPHYSMEM_128GB
>> -        depends on 64BIT && CMODEL_MEDANY
>> -        bool "128GiB"
>> -endchoice
>> -
>> +config MAXPHYSMEM_2GB
>> +    bool "Maximum Physical Memory 2GiB"
>> +    default y if 32BIT
>> +    default y if 64BIT && CMODEL_MEDLOW
>> +    default n
>>
>>  config SMP
>>      bool "Symmetric Multi-Processing"
> 
> I'm not sure this actually helps with anything, but if it's all going 
> away then it's
> fine.  Originally the 2G/128G stuff was there to allow for larger VA 
> spaces in
> the future.

With runtime sv48 introduction, whatever we would have used here could 
have been wrong at runtime, so removing it was easier.

Alex

