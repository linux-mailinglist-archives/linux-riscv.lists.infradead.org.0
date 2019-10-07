Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C38FCDE0C
	for <lists+linux-riscv@lfdr.de>; Mon,  7 Oct 2019 11:12:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Va06907gj0Kp0ipcdp0pDSZOVLWcSLMoc8bLEWRHbf8=; b=utJs9YcIe7sO0QNukYJV82Sor
	QK525Epte2paYMqsw7O8rVl/igsfxo7FD44N8yOPtRDirOEDdmV5jMaZhNbmgr1czBejKvPi/R4CI
	53yXXwZtUBfWWmOvKDhTi2oFIZux4RsVe7O2hXldUNLkwCtNNF7iCL2B37AszwCSKvLGUNlSxiCOg
	4jzog7XJbevZ0VvUMt9F/J368usDcJUeK8C+mIbIuxXdw0M5y29asXHCZYn1cH6dNGhG0ydPT+5+F
	k+ZIbGERRvxatBvbwYJo3/ZHacd/9WQHCUbs2a7xBWDhx2hAE1nqhwq8P/qeE25kLhrGfD3QqlKZM
	ZGj7RBV8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHP3p-00032t-HU; Mon, 07 Oct 2019 09:12:09 +0000
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHP3c-0002u7-Fz; Mon, 07 Oct 2019 09:11:58 +0000
X-Originating-IP: 81.185.168.108
Received: from [192.168.43.237] (108.168.185.81.rev.sfr.net [81.185.168.108])
 (Authenticated sender: alex@ghiti.fr)
 by relay8-d.mail.gandi.net (Postfix) with ESMTPSA id E44E71BF20D;
 Mon,  7 Oct 2019 09:11:35 +0000 (UTC)
From: Alex Ghiti <alex@ghiti.fr>
To: Atish Patra <atish.patra@wdc.com>
Subject: Re: [PATCH v6 14/14] riscv: Make mmap allocation top-down by default
References: <20190808061756.19712-1-alex@ghiti.fr>
 <20190808061756.19712-15-alex@ghiti.fr>
 <208433f810b5b07b1e679d7eedb028697dff851b.camel@wdc.com>
Message-ID: <60b52f20-a2c7-dee9-7cf3-a727f07400b9@ghiti.fr>
Date: Mon, 7 Oct 2019 05:11:34 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <208433f810b5b07b1e679d7eedb028697dff851b.camel@wdc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_021156_804089_0908E025 
X-CRM114-Status: GOOD (  16.20  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.201 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.201 listed in wl.mailspike.net]
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
Cc: "aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>,
 "keescook@chromium.org" <keescook@chromium.org>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "palmer@sifive.com" <palmer@sifive.com>,
 "will.deacon@arm.com" <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "ralf@linux-mips.org" <ralf@linux-mips.org>,
 "linux@armlinux.org.uk" <linux@armlinux.org.uk>,
 "akpm@linux-foundation.org" <akpm@linux-foundation.org>,
 "linux-mm@kvack.org" <linux-mm@kvack.org>,
 "paul.burton@mips.com" <paul.burton@mips.com>,
 "viro@zeniv.linux.org.uk" <viro@zeniv.linux.org.uk>,
 "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
 "jhogan@kernel.org" <jhogan@kernel.org>,
 "linux-fsdevel@vger.kernel.org" <linux-fsdevel@vger.kernel.org>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "hch@lst.de" <hch@lst.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "mcgrof@kernel.org" <mcgrof@kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 10/4/19 10:12 PM, Atish Patra wrote:
> On Thu, 2019-08-08 at 02:17 -0400, Alexandre Ghiti wrote:
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
>> Acked-by: Paul Walmsley <paul.walmsley@sifive.com>
>> Reviewed-by: Christoph Hellwig <hch@lst.de>
>> Reviewed-by: Kees Cook <keescook@chromium.org>
>> Reviewed-by: Luis Chamberlain <mcgrof@kernel.org>
>> ---
>>   arch/riscv/Kconfig | 12 ++++++++++++
>>   1 file changed, 12 insertions(+)
>>
>> diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
>> index 59a4727ecd6c..87dc5370becb 100644
>> --- a/arch/riscv/Kconfig
>> +++ b/arch/riscv/Kconfig
>> @@ -54,6 +54,18 @@ config RISCV
>>   	select EDAC_SUPPORT
>>   	select ARCH_HAS_GIGANTIC_PAGE
>>   	select ARCH_WANT_HUGE_PMD_SHARE if 64BIT
>> +	select ARCH_WANT_DEFAULT_TOPDOWN_MMAP_LAYOUT if MMU
>> +	select HAVE_ARCH_MMAP_RND_BITS
>> +
>> +config ARCH_MMAP_RND_BITS_MIN
>> +	default 18 if 64BIT
>> +	default 8
>> +
>> +# max bits determined by the following formula:
>> +#  VA_BITS - PAGE_SHIFT - 3
>> +config ARCH_MMAP_RND_BITS_MAX
>> +	default 24 if 64BIT # SV39 based
>> +	default 17
>>   
>>   config MMU
>>   	def_bool y
> With this patch, I am not able to boot a Fedora Linux(a Gnome desktop
> image) on RISC-V hardware (Unleashed + Microsemi Expansion board). The
> booting gets stuck right after systemd starts.
>
> https://paste.fedoraproject.org/paste/TOrUMqqKH-pGFX7CnfajDg
>
> Reverting just this patch allow to boot Fedora successfully on specific
> RISC-V hardware. I have not root caused the issue but it looks like it
> might have messed userpsace mapping.

It might have messed userspace mapping but not enough to make userspace 
completely broken
as systemd does some things. I would try to boot in legacy layout: if 
you can try to set sysctl legacy_va_layout
at boottime, it will map userspace as it was before (bottom-up). If that 
does not work, the problem could
be the randomization that is activated by default now.
Anyway, it's weird since userspace should not depend on how the mapping is.

If you can identify the program that stalls, that would be fantastic :)

As the code is common to mips and arm now and I did not hear from them, 
I imagine the problem comes
from us.

Alex
>

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
