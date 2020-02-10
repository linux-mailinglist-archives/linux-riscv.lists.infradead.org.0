Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CEFA156E84
	for <lists+linux-riscv@lfdr.de>; Mon, 10 Feb 2020 05:52:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Mime-Version:References:In-Reply-To:
	Message-Id:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z9Z4NIxtIGWeYB2ZJCjYQftlzskrGsI+blKakE6cLuk=; b=J9oXn6vol4ifTd
	iLm4JMlAGTidApCqvsSSXQ3AGsRRh4E+fL6H70+65LxEhPWeUw4Vapcg/EOpl1o7XdbnbP9AlxBpZ
	B4Povah2wtWIrAqnB6kddx6f9O046zZVMVtx5SPuQRtC8zbEVlNwGHul70/Hc1tRhxeT7MWnUgmTr
	p6CpB7TkEua17BJkCZx3Axoc8+9maBvJCDIhzCHAOTS8b2xYuNChV9Ag5AxAKnmkCoZiorOpHThC/
	iKT+bljPkYrMUEc014ZZRiV8aH8PQNQ8AeVkQ29WwNv/mJN/XZZJ9JmBr3EcfwL3tbwgrikMf5nvF
	KcYMFKA6QwlD9Wcce26g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j113p-0001Pm-V9; Mon, 10 Feb 2020 04:52:41 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j113l-0001P7-Cx; Mon, 10 Feb 2020 04:52:39 +0000
Received: from localhost.localdomain (c-73-231-172-41.hsd1.ca.comcast.net
 [73.231.172.41])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6A05D208C4;
 Mon, 10 Feb 2020 04:52:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581310354;
 bh=2W/dmgTJj6413Xr7wihmGcYdSzIEeuWsZRG1pj9rho0=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=fpI8skXkWSRkM2Z7t+IumpNpNlIyF35fF7t+yGEA67BDAAqSWhx6bv4mO/yn0SyDF
 TmUxgUc36bRm998D0NbvswNWlliaFKrJH88Mwv6jTUy1ILklfKpB9gT2jSQppuhH+2
 hH7M1ataalYtvJe9O809m6u56bYNF8WwzVrYPDcM=
Date: Sun, 9 Feb 2020 20:52:31 -0800
From: Andrew Morton <akpm@linux-foundation.org>
To: Anshuman Khandual <anshuman.khandual@arm.com>
Subject: Re: [PATCH V13] mm/debug: Add tests validating architecture page
 table helpers
Message-Id: <20200209205231.44d098f8749e88190b8ba10c@linux-foundation.org>
In-Reply-To: <78d3ce6b-e100-2561-6b09-124c29731d1a@arm.com>
References: <1580897674-16456-1-git-send-email-anshuman.khandual@arm.com>
 <202002060619.wEOdAZU1%lkp@intel.com>
 <78d3ce6b-e100-2561-6b09-124c29731d1a@arm.com>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.31; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200209_205237_487811_A03E45FA 
X-CRM114-Status: GOOD (  21.27  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 linux-mm@kvack.org, Dave Hansen <dave.hansen@intel.com>,
 Paul Mackerras <paulus@samba.org>, sparclinux@vger.kernel.org,
 linux-hexagon@vger.kernel.org, linux-riscv@lists.infradead.org,
 Dan Williams <dan.j.williams@intel.com>, linux-s390@vger.kernel.org,
 kbuild test robot <lkp@intel.com>, Yoshinori Sato <ysato@users.sourceforge.jp>,
 Max Filippov <jcmvbkbc@gmail.com>, Michael Ellerman <mpe@ellerman.id.au>,
 x86@kernel.org, Russell King - ARM Linux <linux@armlinux.org.uk>,
 Matthew Wilcox <willy@infradead.org>, Steven Price <Steven.Price@arm.com>,
 Jason Gunthorpe <jgg@ziepe.ca>, Geert Uytterhoeven <geert@linux-m68k.org>,
 Gerald Schaefer <gerald.schaefer@de.ibm.com>, Mark Salter <msalter@redhat.com>,
 Matt Turner <mattst88@gmail.com>, linux-snps-arc@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Ingo Molnar <mingo@kernel.org>,
 linux-xtensa@linux-xtensa.org, Kees Cook <keescook@chromium.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>, linux-alpha@vger.kernel.org,
 Aurelien Jacquiot <jacquiot.aurelien@gmail.com>, linux-c6x-dev@linux-c6x.org,
 Mark Brown <broonie@kernel.org>, Ivan Kokshaysky <ink@jurassic.park.msu.ru>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 "Kirill A . Shutemov" <kirill@shutemov.name>,
 Thomas Gleixner <tglx@linutronix.de>, Guan Xuetao <gxt@pku.edu.cn>,
 Vlastimil Babka <vbabka@suse.cz>, Richard Henderson <rth@twiddle.net>,
 Christophe Leroy <christophe.leroy@c-s.fr>, Chris Zankel <chris@zankel.net>,
 Michal Simek <monstr@monstr.eu>, kbuild-all@lists.01.org,
 Brian Cain <bcain@codeaurora.org>, Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-mips@vger.kernel.org,
 Ralf Baechle <ralf@linux-mips.org>, linux-kernel@vger.kernel.org,
 Paul Burton <paul.burton@mips.com>, Mike Rapoport <rppt@linux.vnet.ibm.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Vineet Gupta <vgupta@synopsys.com>,
 Martin Schwidefsky <schwidefsky@de.ibm.com>, Qian Cai <cai@lca.pw>,
 linuxppc-dev@lists.ozlabs.org, "David S. Miller" <davem@davemloft.net>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, 6 Feb 2020 13:49:35 +0530 Anshuman Khandual <anshuman.khandual@arm.com> wrote:

> 
> On 02/06/2020 04:40 AM, kbuild test robot wrote:
> > Hi Anshuman,
> > 
> > Thank you for the patch! Yet something to improve:
> > 
> > [auto build test ERROR on powerpc/next]
> > [also build test ERROR on s390/features linus/master arc/for-next v5.5]
> > [cannot apply to mmotm/master tip/x86/core arm64/for-next/core next-20200205]
> > [if your patch is applied to the wrong git tree, please drop us a note to help
> > improve the system. BTW, we also suggest to use '--base' option to specify the
> > base tree in git format-patch, please see https://stackoverflow.com/a/37406982]
> > 
> > url:    https://github.com/0day-ci/linux/commits/Anshuman-Khandual/mm-debug-Add-tests-validating-architecture-page-table-helpers/20200205-215507
> > base:   https://git.kernel.org/pub/scm/linux/kernel/git/powerpc/linux.git next
> > config: ia64-allmodconfig (attached as .config)
> > compiler: ia64-linux-gcc (GCC) 7.5.0
> > reproduce:
> >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         # save the attached .config to linux build tree
> >         GCC_VERSION=7.5.0 make.cross ARCH=ia64 
> > 
> > If you fix the issue, kindly add following tag
> > Reported-by: kbuild test robot <lkp@intel.com>
> > 
> > All error/warnings (new ones prefixed by >>):
> > 
> >    In file included from include/asm-generic/pgtable-nopud.h:8:0,
> >                     from arch/ia64/include/asm/pgtable.h:586,
> >                     from include/linux/mm.h:99,
> >                     from include/linux/highmem.h:8,
> >                     from mm/debug_vm_pgtable.c:14:
> >    mm/debug_vm_pgtable.c: In function 'pud_clear_tests':
> >>> include/asm-generic/pgtable-nop4d-hack.h:47:32: error: implicit declaration of function '__pgd'; did you mean '__p4d'? [-Werror=implicit-function-declaration]
> >     #define __pud(x)    ((pud_t) { __pgd(x) })
> >                                    ^
> >>> mm/debug_vm_pgtable.c:141:8: note: in expansion of macro '__pud'
> >      pud = __pud(pud_val(pud) | RANDOM_ORVALUE);
> >            ^~~~~
> >>> include/asm-generic/pgtable-nop4d-hack.h:47:22: warning: missing braces around initializer [-Wmissing-braces]
> >     #define __pud(x)    ((pud_t) { __pgd(x) })
> >                          ^
> >>> mm/debug_vm_pgtable.c:141:8: note: in expansion of macro '__pud'
> >      pud = __pud(pud_val(pud) | RANDOM_ORVALUE);
> >            ^~~~~
> >    cc1: some warnings being treated as errors
> 
> This build failure is expected now given that we have allowed DEBUG_VM_PGTABLE
> with EXPERT without platform requiring ARCH_HAS_DEBUG_VM_PGTABLE. This problem
> i.e build failure caused without a platform __pgd(), is known to exist both on
> ia64 and arm (32bit) platforms. Please refer https://lkml.org/lkml/2019/9/24/314
> for details where this was discussed earlier.
> 

I'd prefer not to merge a patch which is known to cause build
regressions.  Is there some temporary thing we can do to prevent these
errors until arch maintainers(?) get around to implementing the
long-term fixes?



