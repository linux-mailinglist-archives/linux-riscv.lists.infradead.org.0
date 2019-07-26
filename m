Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D009B764DA
	for <lists+linux-riscv@lfdr.de>; Fri, 26 Jul 2019 13:49:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Sd4oc/67d8Uz/UL43injzz3+CRQCQ/s9EdTc7ZWZRCs=; b=eEzbiFh1rrStSIDKSx+bVaDR3
	J3IF/Rx4+EA+sMEg6n50bnBgJH9IdG5hl2A0sqmpmDhapQx6pQ/36tcHRpW97ABUzEyG9eMmQRWhX
	dHDA21/eoHCHX5J0W/4ZFkGbQ8bTsFl9Ow3JxLe9evxxk9Vo9izPaA/S34dYYDLgn7XRy9C8CWGqD
	3RsIvC6/hxnPkpXy7e6Tqous3+fpjExbvJ3W9qD1TX6zrdUcZXyZvFPzQcT7iG6RTOziiiA3QJkGp
	OtW3667ZJX2pOn8s89QeeqL76SBh79cQXE2GH8ay40c1HA+p6jZ+eOhqhiXpXVeM2GRSawphjSXhc
	hOclSSXxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqyiT-00040u-Ro; Fri, 26 Jul 2019 11:48:53 +0000
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqyi8-0003nY-71; Fri, 26 Jul 2019 11:48:34 +0000
X-Originating-IP: 81.250.144.103
Received: from [10.30.1.20] (lneuilly-657-1-5-103.w81-250.abo.wanadoo.fr
 [81.250.144.103]) (Authenticated sender: alex@ghiti.fr)
 by relay8-d.mail.gandi.net (Postfix) with ESMTPSA id 3CAE81BF207;
 Fri, 26 Jul 2019 11:48:08 +0000 (UTC)
Subject: Re: [PATCH REBASE v4 14/14] riscv: Make mmap allocation top-down by
 default
To: Paul Walmsley <paul.walmsley@sifive.com>
References: <20190724055850.6232-1-alex@ghiti.fr>
 <20190724055850.6232-15-alex@ghiti.fr>
 <alpine.DEB.2.21.9999.1907251655310.32766@viisi.sifive.com>
From: Alexandre Ghiti <alex@ghiti.fr>
Message-ID: <6b2b45a5-0ac4-db73-8f50-ab182a0cb621@ghiti.fr>
Date: Fri, 26 Jul 2019 13:48:08 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <alpine.DEB.2.21.9999.1907251655310.32766@viisi.sifive.com>
Content-Language: fr
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_044832_564133_5B03736B 
X-CRM114-Status: GOOD (  20.49  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.201 listed in list.dnswl.org]
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
 Catalin Marinas <catalin.marinas@arm.com>,
 Daniel Cashman <dcashman@google.com>, Palmer Dabbelt <palmer@sifive.com>,
 Will Deacon <will.deacon@arm.com>, Russell King <linux@armlinux.org.uk>,
 Ralf Baechle <ralf@linux-mips.org>, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, Paul Burton <paul.burton@mips.com>,
 linux-riscv@lists.infradead.org, Alexander Viro <viro@zeniv.linux.org.uk>,
 James Hogan <jhogan@kernel.org>, linux-fsdevel@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>, linux-mips@vger.kernel.org,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org,
 Luis Chamberlain <mcgrof@kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 7/26/19 2:20 AM, Paul Walmsley wrote:
> Hi Alexandre,
>
> I have a few questions about this patch.  Sorry to be dense here ...
>
> On Wed, 24 Jul 2019, Alexandre Ghiti wrote:
>
>> In order to avoid wasting user address space by using bottom-up mmap
>> allocation scheme, prefer top-down scheme when possible.
>>
>> Before:
>> root@qemuriscv64:~# cat /proc/self/maps
>> 00010000-00016000 r-xp 00000000 fe:00 6389       /bin/cat.coreutils
>> 00016000-00017000 r--p 00005000 fe:00 6389       /bin/cat.coreutils
>> 00017000-00018000 rw-p 00006000 fe:00 6389       /bin/cat.coreutils
>> 00018000-00039000 rw-p 00000000 00:00 0          [heap]
>> 1555556000-155556d000 r-xp 00000000 fe:00 7193   /lib/ld-2.28.so
>> 155556d000-155556e000 r--p 00016000 fe:00 7193   /lib/ld-2.28.so
>> 155556e000-155556f000 rw-p 00017000 fe:00 7193   /lib/ld-2.28.so
>> 155556f000-1555570000 rw-p 00000000 00:00 0
>> 1555570000-1555572000 r-xp 00000000 00:00 0      [vdso]
>> 1555574000-1555576000 rw-p 00000000 00:00 0
>> 1555576000-1555674000 r-xp 00000000 fe:00 7187   /lib/libc-2.28.so
>> 1555674000-1555678000 r--p 000fd000 fe:00 7187   /lib/libc-2.28.so
>> 1555678000-155567a000 rw-p 00101000 fe:00 7187   /lib/libc-2.28.so
>> 155567a000-15556a0000 rw-p 00000000 00:00 0
>> 3fffb90000-3fffbb1000 rw-p 00000000 00:00 0      [stack]
>>
>> After:
>> root@qemuriscv64:~# cat /proc/self/maps
>> 00010000-00016000 r-xp 00000000 fe:00 6389       /bin/cat.coreutils
>> 00016000-00017000 r--p 00005000 fe:00 6389       /bin/cat.coreutils
>> 00017000-00018000 rw-p 00006000 fe:00 6389       /bin/cat.coreutils
>> 2de81000-2dea2000 rw-p 00000000 00:00 0          [heap]
>> 3ff7eb6000-3ff7ed8000 rw-p 00000000 00:00 0
>> 3ff7ed8000-3ff7fd6000 r-xp 00000000 fe:00 7187   /lib/libc-2.28.so
>> 3ff7fd6000-3ff7fda000 r--p 000fd000 fe:00 7187   /lib/libc-2.28.so
>> 3ff7fda000-3ff7fdc000 rw-p 00101000 fe:00 7187   /lib/libc-2.28.so
>> 3ff7fdc000-3ff7fe2000 rw-p 00000000 00:00 0
>> 3ff7fe4000-3ff7fe6000 r-xp 00000000 00:00 0      [vdso]
>> 3ff7fe6000-3ff7ffd000 r-xp 00000000 fe:00 7193   /lib/ld-2.28.so
>> 3ff7ffd000-3ff7ffe000 r--p 00016000 fe:00 7193   /lib/ld-2.28.so
>> 3ff7ffe000-3ff7fff000 rw-p 00017000 fe:00 7193   /lib/ld-2.28.so
>> 3ff7fff000-3ff8000000 rw-p 00000000 00:00 0
>> 3fff888000-3fff8a9000 rw-p 00000000 00:00 0      [stack]
>>
>> Signed-off-by: Alexandre Ghiti <alex@ghiti.fr>
>> Reviewed-by: Christoph Hellwig <hch@lst.de>
>> Reviewed-by: Kees Cook <keescook@chromium.org>
>> ---
>>   arch/riscv/Kconfig | 11 +++++++++++
>>   1 file changed, 11 insertions(+)
>>
>> diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
>> index 59a4727ecd6c..6a63973873fd 100644
>> --- a/arch/riscv/Kconfig
>> +++ b/arch/riscv/Kconfig
>> @@ -54,6 +54,17 @@ config RISCV
>>   	select EDAC_SUPPORT
>>   	select ARCH_HAS_GIGANTIC_PAGE
>>   	select ARCH_WANT_HUGE_PMD_SHARE if 64BIT
>> +	select ARCH_WANT_DEFAULT_TOPDOWN_MMAP_LAYOUT if MMU
>> +	select HAVE_ARCH_MMAP_RND_BITS
>> +
>> +config ARCH_MMAP_RND_BITS_MIN
>> +	default 18
> Could you help me understand the rationale behind this constant?


Indeed, I took that from arm64 code and I did not think enough about it: 
that's
great you spotted this because that's a way too large value for 32 bits 
as it would,
at minimum, make mmap random offset go up to 1GB (18 + 12), which is a 
big hole for
this small address space :)

arm and mips propose 8 as default value for 32bits systems which is 1MB 
offset at minimum.


>
>> +
>> +# max bits determined by the following formula:
>> +#  VA_BITS - PAGE_SHIFT - 3
> I realize that these lines are probably copied from arch/arm64/Kconfig.
> But the rationale behind the "- 3" is not immediately obvious.  This
> apparently originates from commit 8f0d3aa9de57 ("arm64: mm: support
> ARCH_MMAP_RND_BITS"). Can you provide any additional context here?


The formula comes from commit d07e22597d1d ("mm: mmap: add new /proc tunable
for mmap_base ASLR"), where the author states that "generally a 3-4 bits 
less than the
number of bits in the user-space accessible virtual address space 
[allows to] give the greatest
flexibility without generating an invalid mmap_base address".

In practice, that limits the mmap random offset to at maximum 1/8 (for - 
3) of the total address space.


>
>> +config ARCH_MMAP_RND_BITS_MAX
>> +	default 33 if 64BIT # SV48 based
> The rationale here is clear for Sv48, per the above formula:
>
>     (48 - 12 - 3) = 33
>
>> +	default 18
> However, here it is less clear to me.  For Sv39, shouldn't this be
>
>     (39 - 12 - 3) = 24
>
> ?  And what about Sv32?


You're right. Is there a way to distinguish between sv39 and sv48 here ?

Thanks Paul,

Alex

>   
>
> - Paul
>
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
