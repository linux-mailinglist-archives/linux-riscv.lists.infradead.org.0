Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B39D019EC26
	for <lists+linux-riscv@lfdr.de>; Sun,  5 Apr 2020 16:49:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nXH4d2ZrGxmOvTzCuOhkAYVCOKWY45ePsV8jvbvmK94=; b=JRGxIFPAQg90NP
	3ecMIojlaRPw69YWh0cVthUAlPiudb4hp1Vy6KLoDgGH8liPMJ8NU103Uwk85C2Hs9hyGSlwLAopw
	FSeg7VdtDtKBOphwMnTdJPMuqi96d4yVqKve3OHgIBsj21u7wtlRABwBo/04uxqUaf2zquJ8Z/RVS
	Vdu1+qdkUGw/bQGvTfG9vvP8jzdcPgYetGMUKC3BFZgdTcXjYQMuBpaWJibiKPyulUEjrAEQ2Wfqr
	ce9zPD0nTvIbzxAz7skN9Lm/9XuiDkCe+ZLcd7QbeIyForJnjAsjwHEXFcLaSWd6xnKFLC3aMEIgZ
	8a2ZF13Pi1sjHkIJBUMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jL6aq-0002VK-Ly; Sun, 05 Apr 2020 14:49:48 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jL6aZ-0002Kg-Po; Sun, 05 Apr 2020 14:49:33 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B6F6331B;
 Sun,  5 Apr 2020 07:49:30 -0700 (PDT)
Received: from [10.163.1.2] (unknown [10.163.1.2])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7CCD73F52E;
 Sun,  5 Apr 2020 07:49:21 -0700 (PDT)
Subject: Re: [mm/debug] f675f2f91d:
 WARNING:at_mm/debug_vm_pgtable.c:#debug_vm_pgtable
To: kernel test robot <rong.a.chen@intel.com>
References: <20200330085636.GG11705@shao2-debian>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <282deb38-8ce1-3980-2549-4413c33b6062@arm.com>
Date: Sun, 5 Apr 2020 20:19:12 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20200330085636.GG11705@shao2-debian>
Content-Type: text/plain; charset=windows-1252
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200405_074931_924943_1BAB9DB7 
X-CRM114-Status: GOOD (  11.89  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, linux-mm@kvack.org,
 Paul Mackerras <paulus@samba.org>, "H. Peter Anvin" <hpa@zytor.com>,
 linux-riscv@lists.infradead.org, Will Deacon <will@kernel.org>,
 linux-arch@vger.kernel.org, linux-s390@vger.kernel.org,
 Michael Ellerman <mpe@ellerman.id.au>, x86@kernel.org,
 Mike Rapoport <rppt@linux.ibm.com>,
 Christian Borntraeger <borntraeger@de.ibm.com>, Ingo Molnar <mingo@redhat.com>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-snps-arc@lists.infradead.org,
 Vasily Gorbik <gor@linux.ibm.com>, lkp@lists.01.org,
 Borislav Petkov <bp@alien8.de>, Paul Walmsley <paul.walmsley@sifive.com>,
 "Kirill A . Shutemov" <kirill@shutemov.name>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 christophe.leroy@c-s.fr, Vineet Gupta <vgupta@synopsys.com>,
 linux-kernel@vger.kernel.org, Palmer Dabbelt <palmer@dabbelt.com>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 03/30/2020 02:26 PM, kernel test robot wrote:
> [  283.486118] WARNING: CPU: 1 PID: 1 at mm/debug_vm_pgtable.c:371 debug_vm_pgtable+0x4dc/0x7e3
> [  283.487342] Modules linked in:
> [  283.487752] CPU: 1 PID: 1 Comm: swapper/0 Not tainted 5.6.0-rc7-next-20200323-00001-gf675f2f91d045 #1
> [  283.488817] Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS 1.12.0-1 04/01/2014
> [  283.489794] RIP: 0010:debug_vm_pgtable+0x4dc/0x7e3
> [  283.490361] Code: b5 fd 48 8b 7d d0 be 20 01 00 00 e8 3d 9f b5 fd 48 8b 75 c8 48 8b 7d d0 e8 30 9f b5 fd 48 8b 75 c8 48 8b 7d d0 e8 23 9f b5 fd <0f> 0b 48 8b 75 c8 48 8b 7d d0 e8 14 9f b5 fd 0f 0b 48 8b 75 c8 48
> [  283.492577] RSP: 0000:ffff888236493ed8 EFLAGS: 00010202
> [  283.493235] RAX: 00000001e1d31025 RBX: ffff88823e7f6cd8 RCX: ffffffffffffffff
> [  283.494135] RDX: 0000000000000000 RSI: 0000000000000025 RDI: 00000001e1d31000
> [  283.495002] RBP: ffff888236493f38 R08: 0000000000000001 R09: 0000000000000001
> [  283.495858] R10: 0000000000000001 R11: 0000000000000000 R12: ffff88821d907000
> [  283.496748] R13: ffff88821d8fc498 R14: ffff88821d8fda90 R15: ffff88821d8fc000
> [  283.497614] FS:  0000000000000000(0000) GS:ffff888237800000(0000) knlGS:0000000000000000
> [  283.498585] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> [  283.499290] CR2: 00000000ffffffff CR3: 00000001e1222000 CR4: 00000000000406e0
> [  283.500165] Call Trace:
> [  283.500499]  ? rest_init+0x240/0x240
> [  283.500985]  kernel_init+0x13/0x110
> [  283.501433]  ret_from_fork+0x24/0x30
> [  283.501907] irq event stamp: 4760776
> [  283.502366] hardirqs last  enabled at (4760775): [<ffffffffb481e34d>] _raw_spin_unlock_irqrestore+0x4d/0x60
> [  283.511686] hardirqs last disabled at (4760776): [<ffffffffb3c038d4>] trace_hardirqs_off_thunk+0x1a/0x1c
> [  283.512914] softirqs last  enabled at (4760748): [<ffffffffb4c002cf>] __do_softirq+0x2cf/0x4ad
> [  283.514086] softirqs last disabled at (4760741): [<ffffffffb3cf4f4d>] irq_exit+0xcd/0xe0
> [  283.515114] ---[ end trace 7e3383c4261f8faa ]---

The above failure here and the one on the other thread can be solved with
the following change. The failure is caused by the fact that even though
the soft dirty helpers are defined within CONFIG_HAVE_ARCH_SOFT_DIRTY, the
required PTE bits (_PAGE_SOFT_DIRTY and _PAGE_SWP_SOFT_DIRTY) are available
only when CONFIG_MEM_SOFT_DIRTY is enabled. Hence these tests should not
proceed unless CONFIG_MEM_SOFT_DIRTY is enabled. Similar situation exists
in s390 (_PAGE_SOFT_DIRTY and _SEGMENT_ENTRY_SOFT_DIRTY) and powerpc (at
least with _PAGE_SWP_SOFT_DIRTY).

diff --git a/mm/debug_vm_pgtable.c b/mm/debug_vm_pgtable.c
index 87b4b495333b..2a75a51fed06 100644
--- a/mm/debug_vm_pgtable.c
+++ b/mm/debug_vm_pgtable.c
@@ -589,7 +589,7 @@ static void __init pte_soft_dirty_tests(unsigned long pfn, pgprot_t prot)
 {
        pte_t pte = pfn_pte(pfn, prot);
 
-       if (!IS_ENABLED(CONFIG_HAVE_ARCH_SOFT_DIRTY))
+       if (!IS_ENABLED(CONFIG_MEM_SOFT_DIRTY))
                return;
 
        WARN_ON(!pte_soft_dirty(pte_mksoft_dirty(pte)));
@@ -600,7 +600,7 @@ static void __init pte_swap_soft_dirty_tests(unsigned long pfn, pgprot_t prot)
 {
        pte_t pte = pfn_pte(pfn, prot);
 
-       if (!IS_ENABLED(CONFIG_HAVE_ARCH_SOFT_DIRTY))
+       if (!IS_ENABLED(CONFIG_MEM_SOFT_DIRTY))
                return;
 
        WARN_ON(!pte_swp_soft_dirty(pte_swp_mksoft_dirty(pte)));
@@ -612,7 +612,7 @@ static void __init pmd_soft_dirty_tests(unsigned long pfn, pgprot_t prot)
 {
        pmd_t pmd = pfn_pmd(pfn, prot);
 
-       if (!IS_ENABLED(CONFIG_HAVE_ARCH_SOFT_DIRTY))
+       if (!IS_ENABLED(CONFIG_MEM_SOFT_DIRTY))
                return;
 
        WARN_ON(!pmd_soft_dirty(pmd_mksoft_dirty(pmd)));
@@ -623,7 +623,7 @@ static void __init pmd_swap_soft_dirty_tests(unsigned long pfn, pgprot_t prot)
 {
        pmd_t pmd = pfn_pmd(pfn, prot);
 
-       if (!IS_ENABLED(CONFIG_HAVE_ARCH_SOFT_DIRTY) ||
+       if (!IS_ENABLED(CONFIG_MEM_SOFT_DIRTY) ||
                !IS_ENABLED(CONFIG_ARCH_ENABLE_THP_MIGRATION))
                return;

