Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F8061589A0
	for <lists+linux-riscv@lfdr.de>; Tue, 11 Feb 2020 06:34:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mwmnj2Mh3WwfnwZCWtQm8v+ZNM5AU+v+3fKB+Vt+2i0=; b=F3a/zO2JTWGdCJ
	miwEytUPvBf2VCMINkj5EwlXhXKb0umJ9W1SR/0OneLzNKYhGegUHFpqAByFXXwWr81c4d7sonkvT
	4Tl2efrMSYde3nw2zPIWrTQ5vI2UDyfVXxG+eXoMhDSjFXQX7vlHICnFBXLEMQ3SZY1RuwxonQkgN
	AHCX7jBDeyNLBhAOSSZmnwjvv+jbh6MjzlDSg6bFjnJrOjf0ARyMrvFdoA6E5IZ6+pw4ptY0Zx4Qf
	cAa+LiP0TEIgjJjvbcIjfW0uM0wY/n9c/Fo5shBN3ir+4pXKsLOTFdNXVgwqqyoD1JrJyBUbovUYh
	ImiD6D5117u6k/smrmtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1OBO-0004IT-R9; Tue, 11 Feb 2020 05:34:02 +0000
Received: from pegase1.c-s.fr ([93.17.236.30])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1OBK-0004HU-MT; Tue, 11 Feb 2020 05:34:00 +0000
Received: from localhost (mailhub1-int [192.168.12.234])
 by localhost (Postfix) with ESMTP id 48Grzf3xCbz9v3Zl;
 Tue, 11 Feb 2020 06:33:50 +0100 (CET)
Authentication-Results: localhost; dkim=pass
 reason="1024-bit key; insecure key"
 header.d=c-s.fr header.i=@c-s.fr header.b=eiJDqafS; dkim-adsp=pass;
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at c-s.fr
Received: from pegase1.c-s.fr ([192.168.12.234])
 by localhost (pegase1.c-s.fr [192.168.12.234]) (amavisd-new, port 10024)
 with ESMTP id zkhy9QdmXM9w; Tue, 11 Feb 2020 06:33:50 +0100 (CET)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
 by pegase1.c-s.fr (Postfix) with ESMTP id 48Grzf2Rpnz9v3ZZ;
 Tue, 11 Feb 2020 06:33:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c-s.fr; s=mail;
 t=1581399230; bh=Mwmnj2Mh3WwfnwZCWtQm8v+ZNM5AU+v+3fKB+Vt+2i0=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=eiJDqafSfDYphjROC10Vnz8Xn4zZIPklngVdYVaguBX5QmUxSbROO5kAJ30wvAhzg
 0fV39U/k7ykq9c6fVHRsjt4aiC/Qv+CenzoBQFemfXJIaflYEGRvsm8/278XrXInkJ
 zdjMm7FlftlG1Bdd/ww1KQhN8+LUDsKmilPkcQWI=
Received: from localhost (localhost [127.0.0.1])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id 112868B787;
 Tue, 11 Feb 2020 06:33:51 +0100 (CET)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
 by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
 with ESMTP id fAOO4UrrOOMa; Tue, 11 Feb 2020 06:33:50 +0100 (CET)
Received: from [192.168.4.90] (unknown [192.168.4.90])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id D691D8B776;
 Tue, 11 Feb 2020 06:33:47 +0100 (CET)
Subject: Re: [PATCH V13] mm/debug: Add tests validating architecture page
 table helpers
To: Anshuman Khandual <anshuman.khandual@arm.com>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>
References: <1580897674-16456-1-git-send-email-anshuman.khandual@arm.com>
 <202002060619.wEOdAZU1%lkp@intel.com>
 <78d3ce6b-e100-2561-6b09-124c29731d1a@arm.com>
 <20200209205231.44d098f8749e88190b8ba10c@linux-foundation.org>
 <955229f7-f161-f720-0e75-a3163f63817d@arm.com>
 <aef1048f-68c4-d14f-e669-8f288ba9ac7a@c-s.fr>
 <20200210100200.GB25745@shell.armlinux.org.uk>
 <7cb3a5bb-eaea-a01c-4047-e3c000b7ad1d@c-s.fr>
 <20200210110639.GC25745@shell.armlinux.org.uk>
 <82317d50-57a2-ce84-7557-21635d57448e@arm.com>
From: Christophe Leroy <christophe.leroy@c-s.fr>
Message-ID: <aa540cd6-93a0-1be4-cdff-c9af43ed7d8e@c-s.fr>
Date: Tue, 11 Feb 2020 06:33:47 +0100
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.2
MIME-Version: 1.0
In-Reply-To: <82317d50-57a2-ce84-7557-21635d57448e@arm.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: fr
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_213359_032215_4C55D186 
X-CRM114-Status: GOOD (  14.27  )
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
 linux-mm@kvack.org, Dave Hansen <dave.hansen@intel.com>,
 Paul Mackerras <paulus@samba.org>, sparclinux@vger.kernel.org,
 linux-hexagon@vger.kernel.org, linux-riscv@lists.infradead.org,
 Thomas Gleixner <tglx@linutronix.de>, linux-s390@vger.kernel.org,
 kbuild test robot <lkp@intel.com>, Yoshinori Sato <ysato@users.sourceforge.jp>,
 Max Filippov <jcmvbkbc@gmail.com>, Michael Ellerman <mpe@ellerman.id.au>,
 x86@kernel.org, Matthew Wilcox <willy@infradead.org>,
 Steven Price <Steven.Price@arm.com>, Jason Gunthorpe <jgg@ziepe.ca>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 Gerald Schaefer <gerald.schaefer@de.ibm.com>, Mark Salter <msalter@redhat.com>,
 Matt Turner <mattst88@gmail.com>, linux-snps-arc@lists.infradead.org,
 Ingo Molnar <mingo@kernel.org>, linux-xtensa@linux-xtensa.org,
 Kees Cook <keescook@chromium.org>,
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
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-mips@vger.kernel.org,
 Ralf Baechle <ralf@linux-mips.org>, linux-kernel@vger.kernel.org,
 Paul Burton <paul.burton@mips.com>, Mike Rapoport <rppt@linux.vnet.ibm.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Vineet Gupta <vgupta@synopsys.com>,
 Martin Schwidefsky <schwidefsky@de.ibm.com>, Qian Cai <cai@lca.pw>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org,
 "David S. Miller" <davem@davemloft.net>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org



Le 11/02/2020 à 03:25, Anshuman Khandual a écrit :
> 
> 
> On 02/10/2020 04:36 PM, Russell King - ARM Linux admin wrote:
>> There are good reasons for the way ARM does stuff.  The generic crap was
>> written without regard for the circumstances that ARM has, and thus is
>> entirely unsuitable for 32-bit ARM.
> 
> Since we dont have an agreement here, lets just settle with disabling the
> test for now on platforms where the build fails. CONFIG_EXPERT is enabling
> this test for better adaptability and coverage, hence how about re framing
> the config like this ? This at the least conveys the fact that EXPERT only
> works when platform is neither IA64 or ARM.

Agreed

> 
> config DEBUG_VM_PGTABLE
> 	bool "Debug arch page table for semantics compliance"
> 	depends on MMU
> 	depends on ARCH_HAS_DEBUG_VM_PGTABLE || (EXPERT &&  !(IA64 || ARM))

I think it's maybe better to have a dedicated depends line:

depends on !IA64 && !ARM
depends on ARCH_HAS_DEBUG_VM_PGTABLE || EXPERT

The day arm and/or ia64 is ready for building the test, we can remove 
that depends.

> 	default n if !ARCH_HAS_DEBUG_VM_PGTABLE
> 	default y if DEBUG_VM
> 

Christophe

