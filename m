Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75A1DCF90B
	for <lists+linux-riscv@lfdr.de>; Tue,  8 Oct 2019 13:59:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=IyfmHFJPlT5e5/je7e5iYNh52E/V1oMfoOUMXisJOLQ=; b=nTE17rXDmkDNtfMCQf37q0GO/
	TBem1qpVFmeUCQP192QwF4Q1pQd6G/qfdCgsVw6IHVp2b/hoT4hgyLVuqYlTU5M9x4Vq3k/DCFZFx
	g/uUjmR57FrfXcQGTAmrqL3ap7zK4lywXiPfnbtHToLE9KfvM+d0u7s5OFn8myqLT3VHSVdNvUt3d
	4GFAY7t24BeKdhBOsXih/bfw3/lqlmC6yTc+k31uaxc3HmxT7aPBs1q7MY4oaOty/ZISIfWkmRzq5
	uuKqP9v2hcDnq2U5smMYnOJEPsjZcENsEG6IoIzk1p5Zz2XKFfT6QGIROwDYhVhB9qMcy7xf+NE9l
	LMVQPcTWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHo8e-0001PS-MY; Tue, 08 Oct 2019 11:58:48 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHo8O-0001DF-47; Tue, 08 Oct 2019 11:58:34 +0000
X-Originating-IP: 81.185.168.180
Received: from [192.168.43.237] (180.168.185.81.rev.sfr.net [81.185.168.180])
 (Authenticated sender: alex@ghiti.fr)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id 2154FC0014;
 Tue,  8 Oct 2019 11:58:18 +0000 (UTC)
Subject: Re: [PATCH v6 14/14] riscv: Make mmap allocation top-down by default
To: Atish Patra <Atish.Patra@wdc.com>
References: <20190808061756.19712-1-alex@ghiti.fr>
 <20190808061756.19712-15-alex@ghiti.fr>
 <208433f810b5b07b1e679d7eedb028697dff851b.camel@wdc.com>
 <60b52f20-a2c7-dee9-7cf3-a727f07400b9@ghiti.fr>
 <daeb33415751ef16a717f6ff6a29486110c503d7.camel@wdc.com>
From: Alex Ghiti <alex@ghiti.fr>
Message-ID: <9e9a3fea-d8a3-ae62-317a-740773f0725c@ghiti.fr>
Date: Tue, 8 Oct 2019 07:58:18 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <daeb33415751ef16a717f6ff6a29486110c503d7.camel@wdc.com>
Content-Language: sv-FI
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_045832_436480_0D2C52F0 
X-CRM114-Status: GOOD (  22.92  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
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
Cc: "aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>,
 "keescook@chromium.org" <keescook@chromium.org>,
 "jhogan@kernel.org" <jhogan@kernel.org>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "palmer@sifive.com" <palmer@sifive.com>,
 "will.deacon@arm.com" <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "ralf@linux-mips.org" <ralf@linux-mips.org>,
 "linux@armlinux.org.uk" <linux@armlinux.org.uk>,
 "linux-mm@kvack.org" <linux-mm@kvack.org>,
 "paul.burton@mips.com" <paul.burton@mips.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "viro@zeniv.linux.org.uk" <viro@zeniv.linux.org.uk>,
 "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
 "linux-fsdevel@vger.kernel.org" <linux-fsdevel@vger.kernel.org>,
 "akpm@linux-foundation.org" <akpm@linux-foundation.org>,
 "hch@lst.de" <hch@lst.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "mcgrof@kernel.org" <mcgrof@kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 10/7/19 8:46 PM, Atish Patra wrote:
> On Mon, 2019-10-07 at 05:11 -0400, Alex Ghiti wrote:
>> On 10/4/19 10:12 PM, Atish Patra wrote:
>>> On Thu, 2019-08-08 at 02:17 -0400, Alexandre Ghiti wrote:
>>>> In order to avoid wasting user address space by using bottom-up
>>>> mmap
>>>> allocation scheme, prefer top-down scheme when possible.
>>>>
>>>> Before:
>>>> root@qemuriscv64:~# cat /proc/self/maps
>>>> 00010000-00016000 r-xp 00000000 fe:00
>>>> 6389       /bin/cat.coreutils
>>>> 00016000-00017000 r--p 00005000 fe:00
>>>> 6389       /bin/cat.coreutils
>>>> 00017000-00018000 rw-p 00006000 fe:00
>>>> 6389       /bin/cat.coreutils
>>>> 00018000-00039000 rw-p 00000000 00:00 0          [heap]
>>>> 1555556000-155556d000 r-xp 00000000 fe:00 7193   /lib/ld-2.28.so
>>>> 155556d000-155556e000 r--p 00016000 fe:00 7193   /lib/ld-2.28.so
>>>> 155556e000-155556f000 rw-p 00017000 fe:00 7193   /lib/ld-2.28.so
>>>> 155556f000-1555570000 rw-p 00000000 00:00 0
>>>> 1555570000-1555572000 r-xp 00000000 00:00 0      [vdso]
>>>> 1555574000-1555576000 rw-p 00000000 00:00 0
>>>> 1555576000-1555674000 r-xp 00000000 fe:00 7187   /lib/libc-
>>>> 2.28.so
>>>> 1555674000-1555678000 r--p 000fd000 fe:00 7187   /lib/libc-
>>>> 2.28.so
>>>> 1555678000-155567a000 rw-p 00101000 fe:00 7187   /lib/libc-
>>>> 2.28.so
>>>> 155567a000-15556a0000 rw-p 00000000 00:00 0
>>>> 3fffb90000-3fffbb1000 rw-p 00000000 00:00 0      [stack]
>>>>
>>>> After:
>>>> root@qemuriscv64:~# cat /proc/self/maps
>>>> 00010000-00016000 r-xp 00000000 fe:00
>>>> 6389       /bin/cat.coreutils
>>>> 00016000-00017000 r--p 00005000 fe:00
>>>> 6389       /bin/cat.coreutils
>>>> 00017000-00018000 rw-p 00006000 fe:00
>>>> 6389       /bin/cat.coreutils
>>>> 2de81000-2dea2000 rw-p 00000000 00:00 0          [heap]
>>>> 3ff7eb6000-3ff7ed8000 rw-p 00000000 00:00 0
>>>> 3ff7ed8000-3ff7fd6000 r-xp 00000000 fe:00 7187   /lib/libc-
>>>> 2.28.so
>>>> 3ff7fd6000-3ff7fda000 r--p 000fd000 fe:00 7187   /lib/libc-
>>>> 2.28.so
>>>> 3ff7fda000-3ff7fdc000 rw-p 00101000 fe:00 7187   /lib/libc-
>>>> 2.28.so
>>>> 3ff7fdc000-3ff7fe2000 rw-p 00000000 00:00 0
>>>> 3ff7fe4000-3ff7fe6000 r-xp 00000000 00:00 0      [vdso]
>>>> 3ff7fe6000-3ff7ffd000 r-xp 00000000 fe:00 7193   /lib/ld-2.28.so
>>>> 3ff7ffd000-3ff7ffe000 r--p 00016000 fe:00 7193   /lib/ld-2.28.so
>>>> 3ff7ffe000-3ff7fff000 rw-p 00017000 fe:00 7193   /lib/ld-2.28.so
>>>> 3ff7fff000-3ff8000000 rw-p 00000000 00:00 0
>>>> 3fff888000-3fff8a9000 rw-p 00000000 00:00 0      [stack]
>>>>
>>>> Signed-off-by: Alexandre Ghiti <alex@ghiti.fr>
>>>> Acked-by: Paul Walmsley <paul.walmsley@sifive.com>
>>>> Reviewed-by: Christoph Hellwig <hch@lst.de>
>>>> Reviewed-by: Kees Cook <keescook@chromium.org>
>>>> Reviewed-by: Luis Chamberlain <mcgrof@kernel.org>
>>>> ---
>>>>    arch/riscv/Kconfig | 12 ++++++++++++
>>>>    1 file changed, 12 insertions(+)
>>>>
>>>> diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
>>>> index 59a4727ecd6c..87dc5370becb 100644
>>>> --- a/arch/riscv/Kconfig
>>>> +++ b/arch/riscv/Kconfig
>>>> @@ -54,6 +54,18 @@ config RISCV
>>>>    	select EDAC_SUPPORT
>>>>    	select ARCH_HAS_GIGANTIC_PAGE
>>>>    	select ARCH_WANT_HUGE_PMD_SHARE if 64BIT
>>>> +	select ARCH_WANT_DEFAULT_TOPDOWN_MMAP_LAYOUT if MMU
>>>> +	select HAVE_ARCH_MMAP_RND_BITS
>>>> +
>>>> +config ARCH_MMAP_RND_BITS_MIN
>>>> +	default 18 if 6legacy_va_layout4BIT
>>>> +	default 8
>>>> +
>>>> +# max bits determined by the following formula:
>>>> +#  VA_BITS - PAGE_SHIFT - 3
>>>> +config ARCH_MMAP_RND_BITS_MAX
>>>> +	default 24 if 64BIT # SV39 based
>>>> +	default 17
>>>>    
>>>>    config MMU
>>>>    	def_bool y
>>> With this patch, I am not able to boot a Fedora Linux(a Gnome
>>> desktop
>>> image) on RISC-V hardware (Unleashed + Microsemi Expansion board).
>>> The
>>> booting gets stuck right after systemd starts.
>>>
>>> https://paste.fedoraproject.org/paste/TOrUMqqKH-pGFX7CnfajDg
>>>
>>> Reverting just this patch allow to boot Fedora successfully on
>>> specific
>>> RISC-V hardware. I have not root caused the issue but it looks like
>>> it
>>> might have messed userpsace mapping.
>> It might have messed userspace mapping but not enough to make
>> userspace
>> completely broken
>> as systemd does some things. I would try to boot in legacy layout:
>> if
>> you can try to set sysctl legacy_va_layout
>> at boottime, it will map userspace as it was before (bottom-up). If
>> that
>> does not work, the problem could
>> be the randomization that is activated by default now.
> Randomization may not be the issue. I just removed
> ARCH_WANT_DEFAULT_TOPDOWN_MMAP_LAYOUT from the config and that seems to
> work. Here is the bottom-up layout with randomization on.

Oups, sorry for my previous answer, I missed yours that landed in 
another folder.

Removing ARCH_WANT_DEFAULT_TOPDOWN_MMAP_LAYOUT also removes randomization
as this config selects ARCH_HAS_ELF_RANDOMIZE.
You could remove ARCH_WANT_DEFAULT_TOPDOWN_MMAP_LAYOUT and selects by hand
ARCH_HAS_ELF_RANDOMIZE but you would have to implement arch_mmap_rnd and
arch_randomize_brk (elf-randomize.h).

The simplest would be to boot in legacy layout: I did not find a way to 
set this in kernel
command line, but you can by modifying it directly in the code:

https://elixir.bootlin.com/linux/v5.4-rc2/source/kernel/sysctl.c#L269

> [root@fedora-riscv ~]# cat /proc/self/maps
> 1555556000-1555570000 r-xp 00000000 103:01
> 280098                        /usr/lib64/ld-2.28.so
> 1555570000-1555571000 r--p 00019000 103:01
> 280098                        /usr/lib64/ld-2.28.so
> 1555571000-1555572000 rw-p 0001a000 103:01
> 280098                        /usr/lib64/ld-2.28.so
> 1555572000-1555573000 rw-p 00000000 00:00 0
> 1555573000-1555575000 r-xp 00000000 00:00
> 0                              [vdso]
> 1555575000-1555576000 r--p 00000000 103:01
> 50936                         /usr/lib/locale/en_US.utf8/LC_IDENTIFICAT
> ION
> 1555576000-155557d000 r--s 00000000 103:01
> 280826                        /usr/lib64/gconv/gconv-modules.cache
> 155557d000-155557e000 r--p 00000000 103:01
> 50937                         /usr/lib/locale/en_US.utf8/LC_MEASUREMENT
> 155557e000-155557f000 r--p 00000000 103:01
> 50939                         /usr/lib/locale/en_US.utf8/LC_TELEPHONE
> 155557f000-1555580000 r--p 00000000 103:01
> 3706                          /usr/lib/locale/en_US.utf8/LC_ADDRESS
> 1555580000-1555581000 r--p 00000000 103:01
> 50944                         /usr/lib/locale/en_US.utf8/LC_NAME
> 1555581000-1555582000 r--p 00000000 103:01
> 3775                          /usr/lib/locale/en_US.utf8/LC_PAPER
> 1555582000-1555583000 r--p 00000000 103:01
> 3758                          /usr/lib/locale/en_US.utf8/LC_MESSAGES/SY
> S_LC_MESSAGES
> 1555583000-1555584000 r--p 00000000 103:01
> 50938                         /usr/lib/locale/en_US.utf8/LC_MONETARY
> 1555584000-1555585000 r--p 00000000 103:01
> 50940                         /usr/lib/locale/en_US.utf8/LC_TIME
> 1555585000-1555586000 r--p 00000000 103:01
> 50945                         /usr/lib/locale/en_US.utf8/LC_NUMERIC
> 1555590000-1555592000 rw-p 00000000 00:00 0
> 1555592000-15556b1000 r-xp 00000000 103:01
> 280105                        /usr/lib64/libc-2.28.so
> 15556b1000-15556b5000 r--p 0011e000 103:01
> 280105                        /usr/lib64/libc-2.28.so
> 15556b5000-15556b7000 rw-p 00122000 103:01
> 280105                        /usr/lib64/libc-2.28.so
> 15556b7000-15556bb000 rw-p 00000000 00:00 0
> 15556bb000-1555933000 r--p 00000000 103:01
> 3755                          /usr/lib/locale/en_US.utf8/LC_COLLATE
> 1555933000-1555986000 r--p 00000000 103:01
> 50942                         /usr/lib/locale/en_US.utf8/LC_CTYPE
> 1555986000-15559a8000 rw-p 00000000 00:00 0
> 2aaaaaa000-2aaaab1000 r-xp 00000000 103:01
> 283975                        /usr/bin/cat
> 2aaaab1000-2aaaab2000 r--p 00006000 103:01
> 283975                        /usr/bin/cat
> 2aaaab2000-2aaaab3000 rw-p 00007000 103:01
> 283975                        /usr/bin/cat
> 2aaaab3000-2aaaad4000 rw-p 00000000 00:00
> 0                              [heap]
> 3fffc97000-3fffcb8000 rw-p 00000000 00:00
> 0                              [stack]
>
>
>> Anyway, it's weird since userspace should not depend on how the
>> mapping is.
>>
>> If you can identify the program that stalls, that would be fantastic
>> :)
>>
> It stucks while booting. So I am not sure how to figure out which
> program stalls. It is difficult to figure out from boot log as it
> stucks at different places but soon after systemd starts.

If you can attach the running kernel, I would use vmlinux-gdb.py commands
to figure out which processes are running (lx-ps command in particular could
give us a hint). You can also add traces directly in the kernel and 
either use
lx-dmesg command to print them from gdb or use your standard serial output:
I would then print task_struct->comm at context switch to see which process
is stuck.
To use the python script, you need to recompile with DEBUG_INFO and
GDB_SCRIPTS enabled.

FYI, I have just booted a custom buildroot image based on kernel 5.4-rc2.

Let me know if I can do anything.

Alex

>> As the code is common to mips and arm now and I did not hear from
>> them,
>> I imagine the problem comes
>> from us.
>>
>> Alex

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
