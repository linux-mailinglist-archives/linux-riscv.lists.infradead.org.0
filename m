Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AF1819517E
	for <lists+linux-riscv@lfdr.de>; Fri, 27 Mar 2020 07:47:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tXfFC7mvA4o6E42n6AYE8VUP9PPuL/YgGvGdv6m5w/U=; b=EJxn3knTO82uml
	HIHJonyIYlOhoUcQusyGnlGpDOxsFAzhRJ5VlhL0hJBpeK71xiemjvAKfVsFiBgALXaBC0XaO+am3
	CNLedqEkTvvsd43X/fd4uhrSKK+Kjv3Vo3tgIf9d5lCPUrKmMKlzmGgFItp3mDDBjODahjOHBTiRR
	zTs+ml8zZyDDXxd35aJsTiaCB1qGh6QljnAw7fNy6NnuTy5s8HzGCXXeVG/aHUBlGQeDpndfVAmQd
	wOyF7L3oXCzeWi6LeTrI0QebNEj+dY+zmcQy1xqHRmTlDVY+yc+G6oeDdHQEuVroo8uYuXvEiV/NF
	D0oaDqcMoPiJ3vzMrvZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHilm-0000ha-Tm; Fri, 27 Mar 2020 06:47:06 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHila-0000Zi-F9; Fri, 27 Mar 2020 06:46:56 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id EC7317FA;
 Thu, 26 Mar 2020 23:46:50 -0700 (PDT)
Received: from [10.163.1.31] (unknown [10.163.1.31])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6B53F3F71F;
 Thu, 26 Mar 2020 23:50:47 -0700 (PDT)
Subject: Re: [PATCH V2 0/3] mm/debug: Add more arch page table helper tests
To: Christophe Leroy <christophe.leroy@c-s.fr>, linux-mm@kvack.org
References: <1585027375-9997-1-git-send-email-anshuman.khandual@arm.com>
 <2bb4badc-2b7a-e15d-a99b-b1bd38c9d9bf@arm.com>
 <a46d18ed-8911-1ec3-c32f-58b6e0d959d7@c-s.fr>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <9675882f-0ec5-5e46-551f-dd3aa38bf8d8@arm.com>
Date: Fri, 27 Mar 2020 12:16:34 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <a46d18ed-8911-1ec3-c32f-58b6e0d959d7@c-s.fr>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_234654_596930_8CFBCDF9 
X-CRM114-Status: GOOD (  15.21  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: linux-doc@vger.kernel.org,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, Paul Mackerras <paulus@samba.org>,
 "H. Peter Anvin" <hpa@zytor.com>, linux-riscv@lists.infradead.org,
 Will Deacon <will@kernel.org>, linux-arch@vger.kernel.org,
 linux-s390@vger.kernel.org, Jonathan Corbet <corbet@lwn.net>,
 Michael Ellerman <mpe@ellerman.id.au>, x86@kernel.org,
 Mike Rapoport <rppt@linux.ibm.com>,
 Christian Borntraeger <borntraeger@de.ibm.com>, Ingo Molnar <mingo@redhat.com>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-snps-arc@lists.infradead.org,
 Vasily Gorbik <gor@linux.ibm.com>, Borislav Petkov <bp@alien8.de>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 "Kirill A . Shutemov" <kirill@shutemov.name>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Vineet Gupta <vgupta@synopsys.com>, linux-kernel@vger.kernel.org,
 Palmer Dabbelt <palmer@dabbelt.com>, Andrew Morton <akpm@linux-foundation.org>,
 linuxppc-dev@lists.ozlabs.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org


On 03/26/2020 08:53 PM, Christophe Leroy wrote:
> 
> 
> Le 26/03/2020 à 03:23, Anshuman Khandual a écrit :
>>
>>
>> On 03/24/2020 10:52 AM, Anshuman Khandual wrote:
>>> This series adds more arch page table helper tests. The new tests here are
>>> either related to core memory functions and advanced arch pgtable helpers.
>>> This also creates a documentation file enlisting all expected semantics as
>>> suggested by Mike Rapoport (https://lkml.org/lkml/2020/1/30/40).
>>>
>>> This series has been tested on arm64 and x86 platforms.
>>
>> If folks can test these patches out on remaining ARCH_HAS_DEBUG_VM_PGTABLE
>> enabled platforms i.e s390, arc, powerpc (32 and 64), that will be really
>> appreciated. Thank you.
>>
> 
> On powerpc 8xx (PPC32), I get:
> 
> [   53.338368] debug_vm_pgtable: debug_vm_pgtable: Validating architecture page table helpers
> [   53.347403] ------------[ cut here ]------------
> [   53.351832] WARNING: CPU: 0 PID: 1 at mm/debug_vm_pgtable.c:647 debug_vm_pgtable+0x280/0x3f4

mm/debug_vm_pgtable.c:647 ?

With the following commits in place

53a8338ce (HEAD) Documentation/mm: Add descriptions for arch page table helper
5d4913fc1 mm/debug: Add tests validating arch advanced page table helpers
bcaf120a7 mm/debug: Add tests validating arch page table helpers for core features
d6ed5a4a5 x86/memory: Drop pud_mknotpresent()
0739d1f8d mm/debug: Add tests validating architecture page table helpers
16fbf79b0 (tag: v5.6-rc7) Linux 5.6-rc7

mm/debug_vm_pgtable.c:647 is here.

#ifdef CONFIG_ARCH_ENABLE_THP_MIGRATION
static void __init pmd_swap_tests(unsigned long pfn, pgprot_t prot)
{
        swp_entry_t swp;
        pmd_t pmd;  -----------------------------> Line #647

        pmd = pfn_pmd(pfn, prot);
        swp = __pmd_to_swp_entry(pmd);
        WARN_ON(!pmd_same(pmd, __swp_entry_to_pmd(swp)));
}
#else
static void __init pmd_swap_tests(unsigned long pfn, pgprot_t prot) { }
#end

Did I miss something ?

> [   53.360140] CPU: 0 PID: 1 Comm: swapper Not tainted 5.6.0-rc7-s3k-dev-01090-g92710e99881f #3544
> [   53.368718] NIP:  c0777c04 LR: c0777bb8 CTR: 00000000
> [   53.373720] REGS: c9023df0 TRAP: 0700   Not tainted (5.6.0-rc7-s3k-dev-01090-g92710e99881f)
> [   53.382042] MSR:  00029032 <EE,ME,IR,DR,RI>  CR: 22000222  XER: 20000000
> [   53.388667]
> [   53.388667] GPR00: c0777bb8 c9023ea8 c6120000 00000001 1e410000 00000000 00000000 007641c9
> [   53.388667] GPR08: 00000000 00000001 00000000 ffffffff 82000222 00000000 c00039b8 00000000
> [   53.388667] GPR16: 00000000 00000000 00000000 fffffff0 065fc000 1e410000 c6600000 000001e4
> [   53.388667] GPR24: 000001d9 c062d14c c65fc000 c642d448 000006c9 00000000 c65f8000 c65fc040
> [   53.423400] NIP [c0777c04] debug_vm_pgtable+0x280/0x3f4
> [   53.428559] LR [c0777bb8] debug_vm_pgtable+0x234/0x3f4
> [   53.433593] Call Trace:
> [   53.436048] [c9023ea8] [c0777bb8] debug_vm_pgtable+0x234/0x3f4 (unreliable)
> [   53.442936] [c9023f28] [c00039e0] kernel_init+0x28/0x124
> [   53.448184] [c9023f38] [c000f174] ret_from_kernel_thread+0x14/0x1c
> [   53.454245] Instruction dump:
> [   53.457180] 41a20008 4bea3ed9 62890021 7d36b92e 7d36b82e 71290fd0 3149ffff 7d2a4910
> [   53.464838] 0f090000 5789077e 3149ffff 7d2a4910 <0f090000> 38c00000 38a00000 38800000
> [   53.472671] ---[ end trace fd5dd92744dc0065 ]---
Could you please point me to the exact test which is failing ?

> [   53.519778] Freeing unused kernel memory: 608K
> 
> 
So I assume that the system should have come till runtime just fine apart from
the above warning message because.

