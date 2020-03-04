Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E8E31789FB
	for <lists+linux-riscv@lfdr.de>; Wed,  4 Mar 2020 06:19:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4KDzSK80m6YmsGPn3+llWWQ9jLS3X/lPSiN8UhHCUGk=; b=XhifMX01MIlav5
	/FxS8Q5zv0QvfdctndONYWJ6FBm/hMoCENVW27PshCKur6hEiirXbHVjvvo4JdGsVrLvFp1bcj8U/
	th7aJacofiw5bdkPVheg97QlebR2IU8CA+PyF4bQ3yQGTCEedLjBN8QW6L/3VQw7PYVCpn/F4ze9G
	pe2EbTJSfqibLoe7C188ik+wJyrKkuYMXPawANw7OAGZLtivXXoaR6HuYE0dQ0dGe8kIqhSk+kA+g
	neAtoZOitsEh2cRinQfg71/eZbcnrFs0kR/N4dnlA9XuF/JeyA3O0vI/qfPYtQZ40zV7sA+uMM+iu
	DqmbZ4KaYR+LOFLKkSaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9MRe-0003iy-G3; Wed, 04 Mar 2020 05:19:46 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9MRR-0003cJ-Kf; Wed, 04 Mar 2020 05:19:35 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3EE0E31B;
 Tue,  3 Mar 2020 21:19:31 -0800 (PST)
Received: from [10.163.1.88] (unknown [10.163.1.88])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5DDBA3F6CF;
 Tue,  3 Mar 2020 21:19:16 -0800 (PST)
Subject: Re: [RFC 1/3] mm/vma: Define a default value for VM_DATA_DEFAULT_FLAGS
To: Vlastimil Babka <vbabka@suse.cz>, linux-mm@kvack.org
References: <1583131666-15531-1-git-send-email-anshuman.khandual@arm.com>
 <1583131666-15531-2-git-send-email-anshuman.khandual@arm.com>
 <b243be54-7b5e-c6e9-fb68-46369d7d7aa4@suse.cz>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <8b0f4c1b-f693-e139-4f66-ee4e1e88b95c@arm.com>
Date: Wed, 4 Mar 2020 10:49:13 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <b243be54-7b5e-c6e9-fb68-46369d7d7aa4@suse.cz>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_211933_767304_D8B1D833 
X-CRM114-Status: GOOD (  14.58  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Rich Felker <dalias@libc.org>, linux-ia64@vger.kernel.org,
 linux-sh@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, linux-mips@vger.kernel.org,
 "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
 Guo Ren <guoren@kernel.org>, sparclinux@vger.kernel.org,
 linux-hexagon@vger.kernel.org, linux-riscv@lists.infradead.org,
 Jonas Bonn <jonas@southpole.se>, linux-s390@vger.kernel.org,
 linux-snps-arc@lists.infradead.org, linux-c6x-dev@linux-c6x.org,
 Brian Cain <bcain@codeaurora.org>, Michael Ellerman <mpe@ellerman.id.au>,
 Russell King <linux@armlinux.org.uk>, Ley Foon Tan <ley.foon.tan@intel.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>, linux-parisc@vger.kernel.org,
 Mark Salter <msalter@redhat.com>, Paul Burton <paulburton@kernel.org>,
 uclinux-h8-devel@lists.sourceforge.jp, linux-xtensa@linux-xtensa.org,
 Jeff Dike <jdike@addtoit.com>, linux-um@lists.infradead.org,
 linux-m68k@lists.linux-m68k.org, openrisc@lists.librecores.org,
 Paul Walmsley <paul.walmsley@sifive.com>, Thomas Gleixner <tglx@linutronix.de>,
 Guan Xuetao <gxt@pku.edu.cn>, linux-arm-kernel@lists.infradead.org,
 Richard Henderson <rth@twiddle.net>, Chris Zankel <chris@zankel.net>,
 Michal Simek <monstr@monstr.eu>, Tony Luck <tony.luck@intel.com>,
 Yoshinori Sato <ysato@users.sourceforge.jp>, Nick Hu <nickhu@andestech.com>,
 Vineet Gupta <vgupta@synopsys.com>, linux-kernel@vger.kernel.org,
 Ralf Baechle <ralf@linux-mips.org>, linux-alpha@vger.kernel.org,
 nios2-dev@lists.rocketboards.org, Andrew Morton <akpm@linux-foundation.org>,
 linuxppc-dev@lists.ozlabs.org, "David S. Miller" <davem@davemloft.net>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org



On 03/03/2020 10:55 PM, Vlastimil Babka wrote:
> On 3/2/20 7:47 AM, Anshuman Khandual wrote:
>> There are many platforms with exact same value for VM_DATA_DEFAULT_FLAGS
>> This creates a default value for VM_DATA_DEFAULT_FLAGS in line with the
>> existing VM_STACK_DEFAULT_FLAGS. While here, also define some more macros
>> with standard VMA access flag combinations that are used frequently across
>> many platforms. Apart from simplification, this reduces code duplication
>> as well.
>>
>> Cc: Richard Henderson <rth@twiddle.net>
>> Cc: Vineet Gupta <vgupta@synopsys.com>
>> Cc: Russell King <linux@armlinux.org.uk>
>> Cc: Catalin Marinas <catalin.marinas@arm.com>
>> Cc: Mark Salter <msalter@redhat.com>
>> Cc: Guo Ren <guoren@kernel.org>
>> Cc: Yoshinori Sato <ysato@users.sourceforge.jp>
>> Cc: Brian Cain <bcain@codeaurora.org>
>> Cc: Tony Luck <tony.luck@intel.com>
>> Cc: Geert Uytterhoeven <geert@linux-m68k.org>
>> Cc: Michal Simek <monstr@monstr.eu>
>> Cc: Ralf Baechle <ralf@linux-mips.org>
>> Cc: Paul Burton <paulburton@kernel.org>
>> Cc: Nick Hu <nickhu@andestech.com>
>> Cc: Ley Foon Tan <ley.foon.tan@intel.com>
>> Cc: Jonas Bonn <jonas@southpole.se>
>> Cc: "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>
>> Cc: Michael Ellerman <mpe@ellerman.id.au>
>> Cc: Paul Walmsley <paul.walmsley@sifive.com>
>> Cc: Heiko Carstens <heiko.carstens@de.ibm.com>
>> Cc: Rich Felker <dalias@libc.org>
>> Cc: "David S. Miller" <davem@davemloft.net>
>> Cc: Guan Xuetao <gxt@pku.edu.cn>
>> Cc: Thomas Gleixner <tglx@linutronix.de>
>> Cc: Jeff Dike <jdike@addtoit.com>
>> Cc: Chris Zankel <chris@zankel.net>
>> Cc: Andrew Morton <akpm@linux-foundation.org>
>> Cc: linux-alpha@vger.kernel.org
>> Cc: linux-kernel@vger.kernel.org
>> Cc: linux-snps-arc@lists.infradead.org
>> Cc: linux-arm-kernel@lists.infradead.org
>> Cc: linux-c6x-dev@linux-c6x.org
>> Cc: uclinux-h8-devel@lists.sourceforge.jp
>> Cc: linux-hexagon@vger.kernel.org
>> Cc: linux-ia64@vger.kernel.org
>> Cc: linux-m68k@lists.linux-m68k.org
>> Cc: linux-mips@vger.kernel.org
>> Cc: nios2-dev@lists.rocketboards.org
>> Cc: openrisc@lists.librecores.org
>> Cc: linux-parisc@vger.kernel.org
>> Cc: linuxppc-dev@lists.ozlabs.org
>> Cc: linux-riscv@lists.infradead.org
>> Cc: linux-s390@vger.kernel.org
>> Cc: linux-sh@vger.kernel.org
>> Cc: sparclinux@vger.kernel.org
>> Cc: linux-um@lists.infradead.org
>> Cc: linux-xtensa@linux-xtensa.org
>> Cc: linux-mm@kvack.org
>> Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com
> Reviewed-by: Vlastimil Babka <vbabka@suse.cz>
> 
> Nit:
> 
>> diff --git a/include/linux/mm.h b/include/linux/mm.h
>> index b0e53ef13ff1..7a764ae6ab68 100644
>> --- a/include/linux/mm.h
>> +++ b/include/linux/mm.h
>> @@ -342,6 +342,21 @@ extern unsigned int kobjsize(const void *objp);
>>  /* Bits set in the VMA until the stack is in its final location */
>>  #define VM_STACK_INCOMPLETE_SETUP	(VM_RAND_READ | VM_SEQ_READ)
>>  
>> +#define TASK_EXEC ((current->personality & READ_IMPLIES_EXEC) ? VM_EXEC : 0)
>> +
>> +/* Common data flag combinations */
>> +#define VM_DATA_FLAGS_TSK_EXEC	(VM_READ | VM_WRITE | TASK_EXEC | \
>> +				 VM_MAYREAD | VM_MAYWRITE | VM_MAYEXEC)
>> +#define VM_DATA_FLAGS_NON_EXEC	(VM_READ | VM_WRITE | VM_MAYREAD | \
>> +				 VM_MAYWRITE | VM_MAYEXEC)
>> +#define VM_DATA_FLAGS_EXEC	(VM_READ | VM_WRITE | VM_EXEC | \
>> +				 VM_MAYREAD | VM_MAYWRITE | VM_MAYEXEC)
>> +
>> +#ifndef VM_DATA_DEFAULT_FLAGS		/* arch can override this */
>> +#define VM_DATA_DEFAULT_FLAGS	(VM_READ | VM_WRITE | VM_EXEC | \
>> +				 VM_MAYREAD | VM_MAYWRITE | VM_MAYEXEC)
> 
> Should you use VM_DATA_FLAGS_EXEC here? Yeah one more macro to expand, but it's
> right above this.

Sure, can do that.

> 
>> +#endif
>> +
>>  #ifndef VM_STACK_DEFAULT_FLAGS		/* arch can override this */
>>  #define VM_STACK_DEFAULT_FLAGS VM_DATA_DEFAULT_FLAGS
>>  #endif
>>
> 
> 
> 

