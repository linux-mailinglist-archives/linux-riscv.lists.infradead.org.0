Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5753E746DB
	for <lists+linux-riscv@lfdr.de>; Thu, 25 Jul 2019 08:09:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Q4IrjLBvSOpq6dDRCXwGwIgNQBuYQOHy4I1VC5w/Zvw=; b=hy4CVQpQrBke+jwt0TMSOD8+z
	Fe7kmykNrD7VbLifKw2Iuq3Z6jWQO3p/vSQ/IJ8WSWbH9pOdkZuJnXR2I4IgHmcjQxk78x/4QvOYC
	pc5go89x3ItPsrG8ecmrYfsVGJbptnkOjo2kQ0r7lWGMLwmz+QoXWNGu2hSiGkwXihlNp8WNaPXQl
	Bchg6D2pGQZnWAIEV3MtGV+mBRCKrfT6+Qjq0M+ra18codmEegPhzAsCjAnMwQ8I6OKGSlsBY0EQ0
	pnd4/odjtSf2SCz275FxSUsxy+xxB3ndeAoVBpMSWhd280R7t48DDMbNd3EdHDvk0QTESVpMx1NcE
	OB8jMfC/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqWwl-0006hB-45; Thu, 25 Jul 2019 06:09:47 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqWwS-0006UZ-VM; Thu, 25 Jul 2019 06:09:30 +0000
X-Originating-IP: 81.250.144.103
Received: from [10.30.1.20] (lneuilly-657-1-5-103.w81-250.abo.wanadoo.fr
 [81.250.144.103]) (Authenticated sender: alex@ghiti.fr)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 761F0E0008;
 Thu, 25 Jul 2019 06:09:11 +0000 (UTC)
Subject: Re: [PATCH REBASE v4 12/14] mips: Replace arch specific way to
 determine 32bit task with generic version
To: Luis Chamberlain <mcgrof@kernel.org>
References: <20190724055850.6232-1-alex@ghiti.fr>
 <20190724055850.6232-13-alex@ghiti.fr>
 <20190724171648.GW19023@42.do-not-panic.com>
From: Alexandre Ghiti <alex@ghiti.fr>
Message-ID: <17fa5d60-2417-70cb-36b0-203b30b27624@ghiti.fr>
Date: Thu, 25 Jul 2019 08:09:11 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190724171648.GW19023@42.do-not-panic.com>
Content-Language: fr
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_230929_168021_AA46CBB0 
X-CRM114-Status: GOOD (  16.73  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.196 listed in list.dnswl.org]
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Kees Cook <keescook@chromium.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Palmer Dabbelt <palmer@sifive.com>,
 Will Deacon <will.deacon@arm.com>, Russell King <linux@armlinux.org.uk>,
 Ralf Baechle <ralf@linux-mips.org>, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, Paul Burton <paul.burton@mips.com>,
 Alexander Viro <viro@zeniv.linux.org.uk>, James Hogan <jhogan@kernel.org>,
 linux-fsdevel@vger.kernel.org, linux-riscv@lists.infradead.org,
 linux-mips@vger.kernel.org, Christoph Hellwig <hch@lst.de>,
 Andrew Morton <akpm@linux-foundation.org>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 7/24/19 7:16 PM, Luis Chamberlain wrote:
> On Wed, Jul 24, 2019 at 01:58:48AM -0400, Alexandre Ghiti wrote:
>> Mips uses TASK_IS_32BIT_ADDR to determine if a task is 32bit, but
>> this define is mips specific and other arches do not have it: instead,
>> use !IS_ENABLED(CONFIG_64BIT) || is_compat_task() condition.
>>
>> Signed-off-by: Alexandre Ghiti <alex@ghiti.fr>
>> Reviewed-by: Kees Cook <keescook@chromium.org>
>> ---
>>   arch/mips/mm/mmap.c | 3 ++-
>>   1 file changed, 2 insertions(+), 1 deletion(-)
>>
>> diff --git a/arch/mips/mm/mmap.c b/arch/mips/mm/mmap.c
>> index faa5aa615389..d4eafbb82789 100644
>> --- a/arch/mips/mm/mmap.c
>> +++ b/arch/mips/mm/mmap.c
>> @@ -17,6 +17,7 @@
>>   #include <linux/sched/signal.h>
>>   #include <linux/sched/mm.h>
>>   #include <linux/sizes.h>
>> +#include <linux/compat.h>
>>   
>>   unsigned long shm_align_mask = PAGE_SIZE - 1;	/* Sane caches */
>>   EXPORT_SYMBOL(shm_align_mask);
>> @@ -191,7 +192,7 @@ static inline unsigned long brk_rnd(void)
>>   
>>   	rnd = rnd << PAGE_SHIFT;
>>   	/* 32MB for 32bit, 1GB for 64bit */
>> -	if (TASK_IS_32BIT_ADDR)
>> +	if (!IS_ENABLED(CONFIG_64BIT) || is_compat_task())
>>   		rnd = rnd & SZ_32M;
>>   	else
>>   		rnd = rnd & SZ_1G;
>> -- 
> Since there are at least two users why not just create an inline for
> this which describes what we are looking for and remove the comments?


Actually this is a preparatory patch, this will get merged with the 
generic version in the next patch.

Alex


>
>    Luis
>
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
