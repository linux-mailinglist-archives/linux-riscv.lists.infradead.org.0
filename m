Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 422ED1572FE
	for <lists+linux-riscv@lfdr.de>; Mon, 10 Feb 2020 11:46:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3VdT8leEAlfSLQpPQKoxenZVPWjYs1yN+U09thgTRJA=; b=Q4Nz7P5o1dkqXf
	CnqA7NtxI1vbGS477frKK8n56twajPJ1xuHZYYE5nDauUSUPBdoxJ40v4S20x3Fwf/3PPrKlXKQl6
	QoyAKLZYfUpy8vVSiD/uwXRYpkYz6pJa0+sfoZLFscj5W4H539DEG2Kg8mZ301tmIfZ8qh5dXmCzO
	4pcWIfXAzfLEnTQmRWHkRf/nXYwHohsS/jQZ5pv6gvSZeK7UefGkHKYAhHsRp3NjE0P29C0Hf+TqB
	PFAqOVWCkqBkfcdafBHb2rcRBlaCM3AQF9ppQVnwLnla4SzCw2w8Mhy26u8lPn/iihix9LrthyMjq
	u17RxGuyQ32UT8RBJtnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j16aV-0008Cl-UI; Mon, 10 Feb 2020 10:46:47 +0000
Received: from pegase1.c-s.fr ([93.17.236.30])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j16aQ-0008C2-Uc; Mon, 10 Feb 2020 10:46:45 +0000
Received: from localhost (mailhub1-int [192.168.12.234])
 by localhost (Postfix) with ESMTP id 48GMyn4XNDzB09b8;
 Mon, 10 Feb 2020 11:46:25 +0100 (CET)
Authentication-Results: localhost; dkim=pass
 reason="1024-bit key; insecure key"
 header.d=c-s.fr header.i=@c-s.fr header.b=RdSNVpl3; dkim-adsp=pass;
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at c-s.fr
Received: from pegase1.c-s.fr ([192.168.12.234])
 by localhost (pegase1.c-s.fr [192.168.12.234]) (amavisd-new, port 10024)
 with ESMTP id 2YKBWszaeG8b; Mon, 10 Feb 2020 11:46:25 +0100 (CET)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
 by pegase1.c-s.fr (Postfix) with ESMTP id 48GMyn31lmzB09b6;
 Mon, 10 Feb 2020 11:46:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c-s.fr; s=mail;
 t=1581331585; bh=3VdT8leEAlfSLQpPQKoxenZVPWjYs1yN+U09thgTRJA=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=RdSNVpl3eRdV3gPJ7XDvUegm6wZGug8ejVpKq74HLxDjFS3pwYqC+BZGFoUQ1Oq78
 SVulkxR8i/NmQfPxXj9q1ZP6MDJ4/eVa8ThwXr9rdv9XZ0ODywoTCAXN5cQTc5KVGa
 aEm6pzX4mgbIsgNXEcKTlXONuuV1vYFncq9hDwgQ=
Received: from localhost (localhost [127.0.0.1])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id 295478B7B8;
 Mon, 10 Feb 2020 11:46:29 +0100 (CET)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
 by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
 with ESMTP id VHUUj31ZCU6T; Mon, 10 Feb 2020 11:46:29 +0100 (CET)
Received: from [172.25.230.102] (po15451.idsi0.si.c-s.fr [172.25.230.102])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id 6A8808B7B5;
 Mon, 10 Feb 2020 11:46:23 +0100 (CET)
Subject: Re: [PATCH V13] mm/debug: Add tests validating architecture page
 table helpers
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
References: <1580897674-16456-1-git-send-email-anshuman.khandual@arm.com>
 <202002060619.wEOdAZU1%lkp@intel.com>
 <78d3ce6b-e100-2561-6b09-124c29731d1a@arm.com>
 <20200209205231.44d098f8749e88190b8ba10c@linux-foundation.org>
 <955229f7-f161-f720-0e75-a3163f63817d@arm.com>
 <aef1048f-68c4-d14f-e669-8f288ba9ac7a@c-s.fr>
 <20200210100200.GB25745@shell.armlinux.org.uk>
From: Christophe Leroy <christophe.leroy@c-s.fr>
Message-ID: <7cb3a5bb-eaea-a01c-4047-e3c000b7ad1d@c-s.fr>
Date: Mon, 10 Feb 2020 11:46:23 +0100
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.2
MIME-Version: 1.0
In-Reply-To: <20200210100200.GB25745@shell.armlinux.org.uk>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: fr
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_024643_287587_21BDA9E7 
X-CRM114-Status: GOOD (  23.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [93.17.236.30 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, uclinux-h8-devel@lists.sourceforge.jp,
 linux-m68k@vger.kernel.org, linux-ia64@vger.kernel.org,
 linux-sh@vger.kernel.org, Peter Zijlstra <peterz@infradead.org>,
 James Hogan <jhogan@kernel.org>,
 Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, Michal Hocko <mhocko@kernel.org>,
 linux-mm@kvack.org, Paul Mackerras <paulus@samba.org>,
 sparclinux@vger.kernel.org, linux-hexagon@vger.kernel.org,
 linux-riscv@lists.infradead.org, Thomas Gleixner <tglx@linutronix.de>,
 linux-s390@vger.kernel.org, kbuild test robot <lkp@intel.com>,
 Yoshinori Sato <ysato@users.sourceforge.jp>, Max Filippov <jcmvbkbc@gmail.com>,
 Michael Ellerman <mpe@ellerman.id.au>, x86@kernel.org,
 Matthew Wilcox <willy@infradead.org>, Steven Price <Steven.Price@arm.com>,
 Jason Gunthorpe <jgg@ziepe.ca>, Geert Uytterhoeven <geert@linux-m68k.org>,
 Gerald Schaefer <gerald.schaefer@de.ibm.com>, Mark Salter <msalter@redhat.com>,
 Matt Turner <mattst88@gmail.com>, linux-snps-arc@lists.infradead.org,
 Ingo Molnar <mingo@kernel.org>, linux-xtensa@linux-xtensa.org,
 Kees Cook <keescook@chromium.org>,
 Anshuman Khandual <anshuman.khandual@arm.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>, linux-alpha@vger.kernel.org,
 Aurelien Jacquiot <jacquiot.aurelien@gmail.com>, linux-c6x-dev@linux-c6x.org,
 Mark Brown <broonie@kernel.org>, Ivan Kokshaysky <ink@jurassic.park.msu.ru>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 "Kirill A . Shutemov" <kirill@shutemov.name>,
 Dan Williams <dan.j.williams@intel.com>, Guan Xuetao <gxt@pku.edu.cn>,
 Vlastimil Babka <vbabka@suse.cz>, Richard Henderson <rth@twiddle.net>,
 linux-arm-kernel@lists.infradead.org, Chris Zankel <chris@zankel.net>,
 Michal Simek <monstr@monstr.eu>, kbuild-all@lists.01.org,
 Brian Cain <bcain@codeaurora.org>, Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dave Hansen <dave.hansen@intel.com>, linux-mips@vger.kernel.org,
 Ralf Baechle <ralf@linux-mips.org>, linux-kernel@vger.kernel.org,
 Paul Burton <paul.burton@mips.com>, Mike Rapoport <rppt@linux.vnet.ibm.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Vineet Gupta <vgupta@synopsys.com>,
 Martin Schwidefsky <schwidefsky@de.ibm.com>, Qian Cai <cai@lca.pw>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org,
 "David S. Miller" <davem@davemloft.net>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org



Le 10/02/2020 à 11:02, Russell King - ARM Linux admin a écrit :
> On Mon, Feb 10, 2020 at 07:38:38AM +0100, Christophe Leroy wrote:
>>
>>
>> Le 10/02/2020 à 06:35, Anshuman Khandual a écrit :
>>>
>>>
>>> On 02/10/2020 10:22 AM, Andrew Morton wrote:
>>>> On Thu, 6 Feb 2020 13:49:35 +0530 Anshuman Khandual <anshuman.khandual@arm.com> wrote:
>>>>
>>>>>
>>>>> On 02/06/2020 04:40 AM, kbuild test robot wrote:
>>>>>> Hi Anshuman,
>>>>>>
>>>>>> Thank you for the patch! Yet something to improve:
>>>>>>
>>>>>> [auto build test ERROR on powerpc/next]
>>>>>> [also build test ERROR on s390/features linus/master arc/for-next v5.5]
>>>>>> [cannot apply to mmotm/master tip/x86/core arm64/for-next/core next-20200205]
>>>>>> [if your patch is applied to the wrong git tree, please drop us a note to help
>>>>>> improve the system. BTW, we also suggest to use '--base' option to specify the
>>>>>> base tree in git format-patch, please see https://stackoverflow.com/a/37406982]
>>>>>>
>>>>>> url:    https://github.com/0day-ci/linux/commits/Anshuman-Khandual/mm-debug-Add-tests-validating-architecture-page-table-helpers/20200205-215507
>>>>>> base:   https://git.kernel.org/pub/scm/linux/kernel/git/powerpc/linux.git next
>>>>>> config: ia64-allmodconfig (attached as .config)
>>>>>> compiler: ia64-linux-gcc (GCC) 7.5.0
>>>>>> reproduce:
>>>>>>           wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>>>>>>           chmod +x ~/bin/make.cross
>>>>>>           # save the attached .config to linux build tree
>>>>>>           GCC_VERSION=7.5.0 make.cross ARCH=ia64
>>>>>>
>>>>>> If you fix the issue, kindly add following tag
>>>>>> Reported-by: kbuild test robot <lkp@intel.com>
>>>>>>
>>>>>> All error/warnings (new ones prefixed by >>):
>>>>>>
>>>>>>      In file included from include/asm-generic/pgtable-nopud.h:8:0,
>>>>>>                       from arch/ia64/include/asm/pgtable.h:586,
>>>>>>                       from include/linux/mm.h:99,
>>>>>>                       from include/linux/highmem.h:8,
>>>>>>                       from mm/debug_vm_pgtable.c:14:
>>>>>>      mm/debug_vm_pgtable.c: In function 'pud_clear_tests':
>>>>>>>> include/asm-generic/pgtable-nop4d-hack.h:47:32: error: implicit declaration of function '__pgd'; did you mean '__p4d'? [-Werror=implicit-function-declaration]
>>>>>>       #define __pud(x)    ((pud_t) { __pgd(x) })
>>>>>>                                      ^
>>>>>>>> mm/debug_vm_pgtable.c:141:8: note: in expansion of macro '__pud'
>>>>>>        pud = __pud(pud_val(pud) | RANDOM_ORVALUE);
>>>>>>              ^~~~~
>>>>>>>> include/asm-generic/pgtable-nop4d-hack.h:47:22: warning: missing braces around initializer [-Wmissing-braces]
>>>>>>       #define __pud(x)    ((pud_t) { __pgd(x) })
>>>>>>                            ^
>>>>>>>> mm/debug_vm_pgtable.c:141:8: note: in expansion of macro '__pud'
>>>>>>        pud = __pud(pud_val(pud) | RANDOM_ORVALUE);
>>>>>>              ^~~~~
>>>>>>      cc1: some warnings being treated as errors
>>>>>
>>>>> This build failure is expected now given that we have allowed DEBUG_VM_PGTABLE
>>>>> with EXPERT without platform requiring ARCH_HAS_DEBUG_VM_PGTABLE. This problem
>>>>> i.e build failure caused without a platform __pgd(), is known to exist both on
>>>>> ia64 and arm (32bit) platforms. Please refer https://lkml.org/lkml/2019/9/24/314
>>>>> for details where this was discussed earlier.
>>>>>
>>>>
>>>> I'd prefer not to merge a patch which is known to cause build
>>>> regressions.  Is there some temporary thing we can do to prevent these
>>>> errors until arch maintainers(?) get around to implementing the
>>>> long-term fixes?
>>>
>>> We could explicitly disable CONFIG_DEBUG_VM_PGTABLE on ia64 and arm platforms
>>> which will ensure that others can still use the EXPERT path.
>>>
>>> config DEBUG_VM_PGTABLE
>>> 	bool "Debug arch page table for semantics compliance"
>>> 	depends on MMU
>>> 	depends on !(IA64 || ARM)
>>> 	depends on ARCH_HAS_DEBUG_VM_PGTABLE || EXPERT
>>> 	default n if !ARCH_HAS_DEBUG_VM_PGTABLE
>>> 	default y if DEBUG_VM
>>>
>>
>> On both ia32 and arm, the fix is trivial.
>>
>> Can we include the fix within this patch, just the same way as the
>> mm_p4d_folded() fix for x86 ?
> 
> Why should arm include a macro for something that nothing (apart from
> this checker) requires?  If the checker requires it but the rest of
> the kernel does not, it suggests that the checker isn't actually
> correct, and the results can't be relied upon.
> 

As far as I can see, the problem is that arm opencodes part of the API 
instead of including asm-generic/pgtable-nopmd.h

Here, the ARM has 2 levels, ie only PGD and PTE. But instead of defining 
__pgd and __pte and getting everything else from asm-generic, it defines 
a __pmd then redefines the folded levels like the pud, etc ...

That's exactly what the checker aims at detecting: architectures than do 
not properly use the standard linux page table structures.

Christophe

