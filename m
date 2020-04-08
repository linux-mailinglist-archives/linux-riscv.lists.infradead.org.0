Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 042801A1B5E
	for <lists+linux-riscv@lfdr.de>; Wed,  8 Apr 2020 07:06:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=z/ePRfvQD4L1dWzvuHioRCxAOk7nssaG7Y3hyfiPxqY=; b=Y8znP4ICNWV3F7Xw3yn/L5VVL
	3JhELoDwxcU0F84ZL9y5AD/Jl9V1lW8ln5MFfZeLPeB/6JgvoaJSQb7vW0JaRByV8ptS8zpwUl0Hm
	Yfzj9f19p/jEcQoL5JcgZFdvl37N4fsH7IboaqlY6JHna+4FKP3krXuZB0XS2RxLEXszP1/l+MUM2
	uKlheHy5c4LEO7VR9o+WmWrQz3LkLMUaQCF/k+LlLj1jevcr0HH0mEYtcUtdclVjQ2+IVMhoRBppb
	YAMJsJXbiAm5HCOFdYgdfvE9GcS2rlRhzMt+gMAgwS2MZc/mpSE9EnZkr6wjFLwsqYZ10DZ2iQo7o
	XXmISlVPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jM2vL-00058R-LF; Wed, 08 Apr 2020 05:06:51 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jM2vE-000579-U3
 for linux-riscv@lists.infradead.org; Wed, 08 Apr 2020 05:06:49 +0000
Received: by mail-wr1-x442.google.com with SMTP id p10so6258798wrt.6
 for <linux-riscv@lists.infradead.org>; Tue, 07 Apr 2020 22:06:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=z/ePRfvQD4L1dWzvuHioRCxAOk7nssaG7Y3hyfiPxqY=;
 b=Lk4DJcfbQgMw7jpaVoZ3/PzZG/DH2ixOPlxTxA+I8ndRxNEBgm/vSN/FW6ml2hf6Et
 aIL/vWxz05Qn+E+Pi+IPkoR2RfLLLlGuyJn5v5K1Zr1fozc/UcVMrfHLCd9WP0YJmfzZ
 hLp2fkpZXGUdTPl/RRH0pMgWhMEFi15L1dmqql27jlb+xIUZiFxHZbb8hMeeA8vocg5y
 XgP+QpqXdLnRjKrL9dPXW2IzXCXT8fvyk4GYXORg7lSoXTirJPPvdZltpgdXfWEO4YVa
 x+hg8YYD3Yp1XI9d2IP4cvybhF7KegM1uv9/2XHh2IvgTZVkE6Eu7IJ3OHJs4s4FQ/Jn
 TjZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=z/ePRfvQD4L1dWzvuHioRCxAOk7nssaG7Y3hyfiPxqY=;
 b=Y+oFKcrvKKvDfUygjJdL8AUKsBOFfNmiNWke27F7bQyvHmgtPT/Og1kYFoQGdNx7IZ
 lzIhrPXQmU8WAH5IpnR05RUujmH3G3iOeBU52XpJk0jQ9BFavWOZxGFTWpzglhxbvds+
 W6egeFr0GKTAet3rCnAuTVuddJJ0csKdyAlBjul6PvSy5S2+AJvkughJ+FuzVoJG7t4+
 KnWy1f+GdATJgWQFTOoju0gVrBsG7TvVyBStDT1LUu2cHNBNJ0v8K/NkwN+eHEzJPMu0
 i+bwlEhd1d+b2d4yEPbx5TciRwGpaVfjxEzapqt3D1OAN8xGi1RG/iAJmAW6dHP89ZWc
 Wz0A==
X-Gm-Message-State: AGi0PuYjJXPeDBvbgZgokxUAq4q81QGkjOrlRNy6ml3aeIIFCSiTXiWB
 t+0S6vt4PwR9CLFruje4ROsAstgB998rt0UJkkibDg==
X-Google-Smtp-Source: APiQypKTl0gHn9DPfwF8RC2646S/Yuwvd1CdHfBkLiDr8eG9jXY64QtpyUhrXg/C3HDUG02vWdS8GNcPM/wM0/GF9xc=
X-Received: by 2002:adf:f841:: with SMTP id d1mr5982601wrq.381.1586322402645; 
 Tue, 07 Apr 2020 22:06:42 -0700 (PDT)
MIME-Version: 1.0
References: <mhng-938dc4d2-df13-48cf-a53e-4db7f23d52a5@palmerdabbelt-glaptop1>
 <04fed5f4-799b-94f4-731b-81475f8a73ba@ghiti.fr>
 <CAAhSdy0cxa0dUE2CV-t6G=fYO-UMJCJ9g-Y=KTZep1p+bPt6_A@mail.gmail.com>
 <d014cd26-fe6c-3534-bfaf-e07bc91ae25e@ghiti.fr>
In-Reply-To: <d014cd26-fe6c-3534-bfaf-e07bc91ae25e@ghiti.fr>
From: Anup Patel <anup@brainfault.org>
Date: Wed, 8 Apr 2020 10:36:29 +0530
Message-ID: <CAAhSdy13WCo-0VoaHYBFNVnDtozimZpZrou795aqiM0WeN4saA@mail.gmail.com>
Subject: Re: [RFC PATCH 4/7] riscv: Implement sv48 support
To: Alex Ghiti <alex@ghiti.fr>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_220645_002257_190762D5 
X-CRM114-Status: GOOD (  37.62  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 Palmer Dabbelt <palmer@dabbelt.com>, Zong Li <zong.li@sifive.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv <linux-riscv@lists.infradead.org>, Christoph Hellwig <hch@lst.de>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, Apr 8, 2020 at 10:09 AM Alex Ghiti <alex@ghiti.fr> wrote:
>
> Hi Anup,
>
> On 4/7/20 1:56 AM, Anup Patel wrote:
> > On Tue, Apr 7, 2020 at 10:44 AM Alex Ghiti <alex@ghiti.fr> wrote:
> >>
> >>
> >> On 4/3/20 11:53 AM, Palmer Dabbelt wrote:
> >>> On Sun, 22 Mar 2020 04:00:25 PDT (-0700), alex@ghiti.fr wrote:
> >>>> By adding a new 4th level of page table, give the possibility to 64bit
> >>>> kernel to address 2^48 bytes of virtual address: in practice, that
> >>>> roughly
> >>>> offers ~160TB of virtual address space to userspace and allows up to 64TB
> >>>> of physical memory.
> >>>>
> >>>> By default, the kernel will try to boot with a 4-level page table. If the
> >>>> underlying hardware does not support it, we will automatically
> >>>> fallback to
> >>>> a standard 3-level page table by folding the new PUD level into PGDIR
> >>>> level.
> >>>>
> >>>> Early page table preparation is too early in the boot process to use any
> >>>> device-tree entry, then in order to detect HW capabilities at runtime, we
> >>>> use SATP feature that ignores writes with an unsupported mode. The
> >>>> current
> >>>> mode used by the kernel is then made available through cpuinfo.
> >>>
> >>> Ya, I think that's the right way to go about this.  There's no reason to
> >>> rely on duplicate DT mechanisms for things the ISA defines for us.
> >>>
> >>>>
> >>>> Signed-off-by: Alexandre Ghiti <alex@ghiti.fr>
> >>>> ---
> >>>>   arch/riscv/Kconfig                  |   6 +-
> >>>>   arch/riscv/include/asm/csr.h        |   3 +-
> >>>>   arch/riscv/include/asm/fixmap.h     |   1 +
> >>>>   arch/riscv/include/asm/page.h       |  15 +++-
> >>>>   arch/riscv/include/asm/pgalloc.h    |  36 ++++++++
> >>>>   arch/riscv/include/asm/pgtable-64.h |  98 ++++++++++++++++++++-
> >>>>   arch/riscv/include/asm/pgtable.h    |   5 +-
> >>>>   arch/riscv/kernel/head.S            |  37 ++++++--
> >>>>   arch/riscv/mm/context.c             |   4 +-
> >>>>   arch/riscv/mm/init.c                | 128 +++++++++++++++++++++++++---
> >>>>   10 files changed, 302 insertions(+), 31 deletions(-)
> >>>>
> >>>> diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
> >>>> index a475c78e66bc..79560e94cc7c 100644
> >>>> --- a/arch/riscv/Kconfig
> >>>> +++ b/arch/riscv/Kconfig
> >>>> @@ -66,6 +66,7 @@ config RISCV
> >>>>       select ARCH_HAS_GCOV_PROFILE_ALL
> >>>>       select HAVE_COPY_THREAD_TLS
> >>>>       select HAVE_ARCH_KASAN if MMU && 64BIT
> >>>> +    select RELOCATABLE if 64BIT
> >>>>
> >>>>   config ARCH_MMAP_RND_BITS_MIN
> >>>>       default 18 if 64BIT
> >>>> @@ -104,7 +105,7 @@ config PAGE_OFFSET
> >>>>       default 0xC0000000 if 32BIT && MAXPHYSMEM_2GB
> >>>>       default 0x80000000 if 64BIT && !MMU
> >>>>       default 0xffffffff80000000 if 64BIT && MAXPHYSMEM_2GB
> >>>> -    default 0xffffffe000000000 if 64BIT && !MAXPHYSMEM_2GB
> >>>> +    default 0xffffc00000000000 if 64BIT && !MAXPHYSMEM_2GB
> >>>>
> >>>>   config ARCH_FLATMEM_ENABLE
> >>>>       def_bool y
> >>>> @@ -148,8 +149,11 @@ config GENERIC_HWEIGHT
> >>>>   config FIX_EARLYCON_MEM
> >>>>       def_bool MMU
> >>>>
> >>>> +# On a 64BIT relocatable kernel, the 4-level page table is at runtime
> >>>> folded
> >>>> +# on a 3-level page table when sv48 is not supported.
> >>>>   config PGTABLE_LEVELS
> >>>>       int
> >>>> +    default 4 if 64BIT && RELOCATABLE
> >>>>       default 3 if 64BIT
> >>>>       default 2
> >>>
> >>> I assume this means you're relying on relocation to move the kernel around
> >>> independently of PAGE_OFFSET in order to fold in the missing page table
> >>> level?
> >>
> >> Yes, relocation is needed to fallback to 3-level and move PAGE_OFFSET
> >> accordingly.
> >>
> >>> That seems reasonable, but it does impose a performance penalty as
> >>> relocatable
> >>> kernels necessitate slower generated code.  Additionally, there will
> >>> likely be
> >>> a performance penalty due to the extra memory access on TLB misses that is
> >>> unnecessary for workloads that don't necessitate the longer VA width on
> >>> machines that support it.
> >>
> >> Sorry, I had no time to answer your previous mail regarding performance:
> >> I have no number. But the only penalty caused by this patchset on
> >> 3-level page table is the check in page table management functions to
> >> know if 4-level is activated or not. And as you said, the extra cost of
> >> relocatable kernel that I had ignored since necessary anyway.
> >
> > I guess we don't need relocation if we can avoid page table folding by
> > detecting Sv48 mode very early in setup_vm(). Is there any other place
> > where relocation would be required ?
>
> Folding the 4th level is only a part of the problem, we also have to
> dynamically change the virtual address of the kernel: how can we achieve
> that without relocations ?
>
> KASLR also uses relocations, see Zong's recent patchset.

Good to know that relocation is not just for page table folding.

Thanks,
Anup

>
> Thanks,
>
> Alex
>
> >
> > If we can totally avoid relocation then it will certainly help in performance.
> >
> > Regards,
> > Anup
> >
> >>
> >>>
> >>> I think the best bet here would be to have a Kconfig option for the
> >>> number of
> >>> page table levels (which could be MAXPHYSMEM or a second partially free
> >>> parameter) and then another boolean argument along the lines of "also
> >>> support
> >>> machines with smaller VA widths".  It seems best to turn on the largest VA
> >>> width and support for folding by default, as I assume that's what
> >>> distros would
> >>> do.
> >>
> >> I'm not a big fan of a new Kconfig option to allow people to have a
> >> 3-level page table because that implies maintaining a new kernel, even
> >> for us, having to compile 2 kernels each time we change something to mm
> >> code will be painful.
> >>
> >> I have just reviewed Zong's KASLR patchset: he needs to parse the dtb to
> >> find out the reserved regions in order to not override one of them when
> >> copying the kernel to its new destination. And after that, he loops back
> >> to setup_vm to re-create the mapping to the new kernel.
> >> If that's the way we take for KASLR, we can follow the same path here:
> >> boot with 4-level by default, go to check what is wanted in the device
> >> tree and if it is 3-level, loop back to setup_vm.
> >>
> >>>
> >>> I didn't really look closely at the rest of this, but it generally
> >>> smells OK.
> >>> The diff will need to be somewhat different for the next version, anyway :)
> >>>
> >>> Thanks for doing this!
> >>>
> >>>> diff --git a/arch/riscv/include/asm/csr.h b/arch/riscv/include/asm/csr.h
> >>>> index 435b65532e29..3828d55af85e 100644
> >>>> --- a/arch/riscv/include/asm/csr.h
> >>>> +++ b/arch/riscv/include/asm/csr.h
> >>>> @@ -40,11 +40,10 @@
> >>>>   #ifndef CONFIG_64BIT
> >>>>   #define SATP_PPN    _AC(0x003FFFFF, UL)
> >>>>   #define SATP_MODE_32    _AC(0x80000000, UL)
> >>>> -#define SATP_MODE    SATP_MODE_32
> >>>>   #else
> >>>>   #define SATP_PPN    _AC(0x00000FFFFFFFFFFF, UL)
> >>>>   #define SATP_MODE_39    _AC(0x8000000000000000, UL)
> >>>> -#define SATP_MODE    SATP_MODE_39
> >>>> +#define SATP_MODE_48    _AC(0x9000000000000000, UL)
> >>>>   #endif
> >>>>
> >>>>   /* Exception cause high bit - is an interrupt if set */
> >>>> diff --git a/arch/riscv/include/asm/fixmap.h
> >>>> b/arch/riscv/include/asm/fixmap.h
> >>>> index 42d2c42f3cc9..26e7799c5675 100644
> >>>> --- a/arch/riscv/include/asm/fixmap.h
> >>>> +++ b/arch/riscv/include/asm/fixmap.h
> >>>> @@ -27,6 +27,7 @@ enum fixed_addresses {
> >>>>       FIX_FDT = FIX_FDT_END + FIX_FDT_SIZE / PAGE_SIZE - 1,
> >>>>       FIX_PTE,
> >>>>       FIX_PMD,
> >>>> +    FIX_PUD,
> >>>>       FIX_EARLYCON_MEM_BASE,
> >>>>       __end_of_fixed_addresses
> >>>>   };
> >>>> diff --git a/arch/riscv/include/asm/page.h
> >>>> b/arch/riscv/include/asm/page.h
> >>>> index 691f2f9ded2f..f1a26a0690ef 100644
> >>>> --- a/arch/riscv/include/asm/page.h
> >>>> +++ b/arch/riscv/include/asm/page.h
> >>>> @@ -32,11 +32,19 @@
> >>>>    * physical memory (aligned on a page boundary).
> >>>>    */
> >>>>   #ifdef CONFIG_RELOCATABLE
> >>>> -extern unsigned long kernel_virt_addr;
> >>>>   #define PAGE_OFFSET        kernel_virt_addr
> >>>> +
> >>>> +#ifdef CONFIG_64BIT
> >>>> +/*
> >>>> + * By default, CONFIG_PAGE_OFFSET value corresponds to SV48 address
> >>>> space so
> >>>> + * define the PAGE_OFFSET value for SV39.
> >>>> + */
> >>>> +#define PAGE_OFFSET_L3        0xffffffe000000000
> >>>> +#define PAGE_OFFSET_L4        _AC(CONFIG_PAGE_OFFSET, UL)
> >>>> +#endif /* CONFIG_64BIT */
> >>>>   #else
> >>>>   #define PAGE_OFFSET        _AC(CONFIG_PAGE_OFFSET, UL)
> >>>> -#endif
> >>>> +#endif /* CONFIG_RELOCATABLE */
> >>>>
> >>>>   #define KERN_VIRT_SIZE        -PAGE_OFFSET
> >>>>
> >>>> @@ -104,6 +112,9 @@ extern unsigned long pfn_base;
> >>>>
> >>>>   extern unsigned long max_low_pfn;
> >>>>   extern unsigned long min_low_pfn;
> >>>> +#ifdef CONFIG_RELOCATABLE
> >>>> +extern unsigned long kernel_virt_addr;
> >>>> +#endif
> >>>>
> >>>>   #define __pa_to_va_nodebug(x)    ((void *)((unsigned long) (x) +
> >>>> va_pa_offset))
> >>>>   #define __va_to_pa_nodebug(x)    ((unsigned long)(x) - va_pa_offset)
> >>>> diff --git a/arch/riscv/include/asm/pgalloc.h
> >>>> b/arch/riscv/include/asm/pgalloc.h
> >>>> index 3f601ee8233f..540eaa5a8658 100644
> >>>> --- a/arch/riscv/include/asm/pgalloc.h
> >>>> +++ b/arch/riscv/include/asm/pgalloc.h
> >>>> @@ -36,6 +36,42 @@ static inline void pud_populate(struct mm_struct
> >>>> *mm, pud_t *pud, pmd_t *pmd)
> >>>>
> >>>>       set_pud(pud, __pud((pfn << _PAGE_PFN_SHIFT) | _PAGE_TABLE));
> >>>>   }
> >>>> +
> >>>> +static inline void p4d_populate(struct mm_struct *mm, p4d_t *p4d,
> >>>> pud_t *pud)
> >>>> +{
> >>>> +    if (pgtable_l4_enabled) {
> >>>> +        unsigned long pfn = virt_to_pfn(pud);
> >>>> +
> >>>> +        set_p4d(p4d, __p4d((pfn << _PAGE_PFN_SHIFT) | _PAGE_TABLE));
> >>>> +    }
> >>>> +}
> >>>> +
> >>>> +static inline void p4d_populate_safe(struct mm_struct *mm, p4d_t *p4d,
> >>>> +                     pud_t *pud)
> >>>> +{
> >>>> +    if (pgtable_l4_enabled) {
> >>>> +        unsigned long pfn = virt_to_pfn(pud);
> >>>> +
> >>>> +        set_p4d_safe(p4d,
> >>>> +                 __p4d((pfn << _PAGE_PFN_SHIFT) | _PAGE_TABLE));
> >>>> +    }
> >>>> +}
> >>>> +
> >>>> +static inline pud_t *pud_alloc_one(struct mm_struct *mm, unsigned
> >>>> long addr)
> >>>> +{
> >>>> +    if (pgtable_l4_enabled)
> >>>> +        return (pud_t *)__get_free_page(
> >>>> +                GFP_KERNEL | __GFP_RETRY_MAYFAIL | __GFP_ZERO);
> >>>> +    return NULL;
> >>>> +}
> >>>> +
> >>>> +static inline void pud_free(struct mm_struct *mm, pud_t *pud)
> >>>> +{
> >>>> +    if (pgtable_l4_enabled)
> >>>> +        free_page((unsigned long)pud);
> >>>> +}
> >>>> +
> >>>> +#define __pud_free_tlb(tlb, pud, addr)  pud_free((tlb)->mm, pud)
> >>>>   #endif /* __PAGETABLE_PMD_FOLDED */
> >>>>
> >>>>   #define pmd_pgtable(pmd)    pmd_page(pmd)
> >>>> diff --git a/arch/riscv/include/asm/pgtable-64.h
> >>>> b/arch/riscv/include/asm/pgtable-64.h
> >>>> index b15f70a1fdfa..cc4ffbe778f3 100644
> >>>> --- a/arch/riscv/include/asm/pgtable-64.h
> >>>> +++ b/arch/riscv/include/asm/pgtable-64.h
> >>>> @@ -8,16 +8,32 @@
> >>>>
> >>>>   #include <linux/const.h>
> >>>>
> >>>> -#define PGDIR_SHIFT     30
> >>>> +extern bool pgtable_l4_enabled;
> >>>> +
> >>>> +#define PGDIR_SHIFT     (pgtable_l4_enabled ? 39 : 30)
> >>>>   /* Size of region mapped by a page global directory */
> >>>>   #define PGDIR_SIZE      (_AC(1, UL) << PGDIR_SHIFT)
> >>>>   #define PGDIR_MASK      (~(PGDIR_SIZE - 1))
> >>>>
> >>>> +/* pud is folded into pgd in case of 3-level page table */
> >>>> +#define PUD_SHIFT    30
> >>>> +#define PUD_SIZE    (_AC(1, UL) << PUD_SHIFT)
> >>>> +#define PUD_MASK    (~(PUD_SIZE - 1))
> >>>> +
> >>>>   #define PMD_SHIFT       21
> >>>>   /* Size of region mapped by a page middle directory */
> >>>>   #define PMD_SIZE        (_AC(1, UL) << PMD_SHIFT)
> >>>>   #define PMD_MASK        (~(PMD_SIZE - 1))
> >>>>
> >>>> +/* Page Upper Directory entry */
> >>>> +typedef struct {
> >>>> +    unsigned long pud;
> >>>> +} pud_t;
> >>>> +
> >>>> +#define pud_val(x)      ((x).pud)
> >>>> +#define __pud(x)        ((pud_t) { (x) })
> >>>> +#define PTRS_PER_PUD    (PAGE_SIZE / sizeof(pud_t))
> >>>> +
> >>>>   /* Page Middle Directory entry */
> >>>>   typedef struct {
> >>>>       unsigned long pmd;
> >>>> @@ -25,7 +41,6 @@ typedef struct {
> >>>>
> >>>>   #define pmd_val(x)      ((x).pmd)
> >>>>   #define __pmd(x)        ((pmd_t) { (x) })
> >>>> -
> >>>>   #define PTRS_PER_PMD    (PAGE_SIZE / sizeof(pmd_t))
> >>>>
> >>>>   static inline int pud_present(pud_t pud)
> >>>> @@ -60,6 +75,16 @@ static inline void pud_clear(pud_t *pudp)
> >>>>       set_pud(pudp, __pud(0));
> >>>>   }
> >>>>
> >>>> +static inline pud_t pfn_pud(unsigned long pfn, pgprot_t prot)
> >>>> +{
> >>>> +    return __pud((pfn << _PAGE_PFN_SHIFT) | pgprot_val(prot));
> >>>> +}
> >>>> +
> >>>> +static inline unsigned long _pud_pfn(pud_t pud)
> >>>> +{
> >>>> +    return pud_val(pud) >> _PAGE_PFN_SHIFT;
> >>>> +}
> >>>> +
> >>>>   static inline unsigned long pud_page_vaddr(pud_t pud)
> >>>>   {
> >>>>       return (unsigned long)pfn_to_virt(pud_val(pud) >> _PAGE_PFN_SHIFT);
> >>>> @@ -70,6 +95,15 @@ static inline struct page *pud_page(pud_t pud)
> >>>>       return pfn_to_page(pud_val(pud) >> _PAGE_PFN_SHIFT);
> >>>>   }
> >>>>
> >>>> +#define mm_pud_folded    mm_pud_folded
> >>>> +static inline bool mm_pud_folded(struct mm_struct *mm)
> >>>> +{
> >>>> +    if (pgtable_l4_enabled)
> >>>> +        return false;
> >>>> +
> >>>> +    return true;
> >>>> +}
> >>>> +
> >>>>   #define pmd_index(addr) (((addr) >> PMD_SHIFT) & (PTRS_PER_PMD - 1))
> >>>>
> >>>>   static inline pmd_t *pmd_offset(pud_t *pud, unsigned long addr)
> >>>> @@ -90,4 +124,64 @@ static inline unsigned long _pmd_pfn(pmd_t pmd)
> >>>>   #define pmd_ERROR(e) \
> >>>>       pr_err("%s:%d: bad pmd %016lx.\n", __FILE__, __LINE__, pmd_val(e))
> >>>>
> >>>> +#define pud_ERROR(e)    \
> >>>> +    pr_err("%s:%d: bad pud %016lx.\n", __FILE__, __LINE__, pud_val(e))
> >>>> +
> >>>> +static inline void set_p4d(p4d_t *p4dp, p4d_t p4d)
> >>>> +{
> >>>> +    if (pgtable_l4_enabled)
> >>>> +        *p4dp = p4d;
> >>>> +    else
> >>>> +        set_pud((pud_t *)p4dp, (pud_t){ p4d_val(p4d) });
> >>>> +}
> >>>> +
> >>>> +static inline int p4d_none(p4d_t p4d)
> >>>> +{
> >>>> +    if (pgtable_l4_enabled)
> >>>> +        return (p4d_val(p4d) == 0);
> >>>> +
> >>>> +    return 0;
> >>>> +}
> >>>> +
> >>>> +static inline int p4d_present(p4d_t p4d)
> >>>> +{
> >>>> +    if (pgtable_l4_enabled)
> >>>> +        return (p4d_val(p4d) & _PAGE_PRESENT);
> >>>> +
> >>>> +    return 1;
> >>>> +}
> >>>> +
> >>>> +static inline int p4d_bad(p4d_t p4d)
> >>>> +{
> >>>> +    if (pgtable_l4_enabled)
> >>>> +        return !p4d_present(p4d);
> >>>> +
> >>>> +    return 0;
> >>>> +}
> >>>> +
> >>>> +static inline void p4d_clear(p4d_t *p4d)
> >>>> +{
> >>>> +    if (pgtable_l4_enabled)
> >>>> +        set_p4d(p4d, __p4d(0));
> >>>> +}
> >>>> +
> >>>> +static inline unsigned long p4d_page_vaddr(p4d_t p4d)
> >>>> +{
> >>>> +    if (pgtable_l4_enabled)
> >>>> +        return (unsigned long)pfn_to_virt(
> >>>> +                p4d_val(p4d) >> _PAGE_PFN_SHIFT);
> >>>> +
> >>>> +    return pud_page_vaddr((pud_t) { p4d_val(p4d) });
> >>>> +}
> >>>> +
> >>>> +#define pud_index(addr) (((addr) >> PUD_SHIFT) & (PTRS_PER_PUD - 1))
> >>>> +
> >>>> +static inline pud_t *pud_offset(p4d_t *p4d, unsigned long address)
> >>>> +{
> >>>> +    if (pgtable_l4_enabled)
> >>>> +        return (pud_t *)p4d_page_vaddr(*p4d) + pud_index(address);
> >>>> +
> >>>> +    return (pud_t *)p4d;
> >>>> +}
> >>>> +
> >>>>   #endif /* _ASM_RISCV_PGTABLE_64_H */
> >>>> diff --git a/arch/riscv/include/asm/pgtable.h
> >>>> b/arch/riscv/include/asm/pgtable.h
> >>>> index dce401eed1d3..06361db3f486 100644
> >>>> --- a/arch/riscv/include/asm/pgtable.h
> >>>> +++ b/arch/riscv/include/asm/pgtable.h
> >>>> @@ -13,8 +13,7 @@
> >>>>
> >>>>   #ifndef __ASSEMBLY__
> >>>>
> >>>> -/* Page Upper Directory not used in RISC-V */
> >>>> -#include <asm-generic/pgtable-nopud.h>
> >>>> +#include <asm-generic/pgtable-nop4d.h>
> >>>>   #include <asm/page.h>
> >>>>   #include <asm/tlbflush.h>
> >>>>   #include <linux/mm_types.h>
> >>>> @@ -27,7 +26,7 @@
> >>>>
> >>>>   #ifdef CONFIG_MMU
> >>>>   #ifdef CONFIG_64BIT
> >>>> -#define VA_BITS        39
> >>>> +#define VA_BITS        (pgtable_l4_enabled ? 48 : 39)
> >>>>   #define PA_BITS        56
> >>>>   #else
> >>>>   #define VA_BITS        32
> >>>> diff --git a/arch/riscv/kernel/head.S b/arch/riscv/kernel/head.S
> >>>> index 1c2fbefb8786..22617bd7477f 100644
> >>>> --- a/arch/riscv/kernel/head.S
> >>>> +++ b/arch/riscv/kernel/head.S
> >>>> @@ -113,6 +113,8 @@ clear_bss_done:
> >>>>       call setup_vm
> >>>>   #ifdef CONFIG_MMU
> >>>>       la a0, early_pg_dir
> >>>> +    la a1, satp_mode
> >>>> +    REG_L a1, (a1)
> >>>>       call relocate
> >>>>   #endif /* CONFIG_MMU */
> >>>>
> >>>> @@ -131,24 +133,28 @@ clear_bss_done:
> >>>>   #ifdef CONFIG_MMU
> >>>>   relocate:
> >>>>   #ifdef CONFIG_RELOCATABLE
> >>>> -    /* Relocate return address */
> >>>> -    la a1, kernel_virt_addr
> >>>> -    REG_L a1, 0(a1)
> >>>> +    /*
> >>>> +     * Relocate return address but save it in case 4-level page table is
> >>>> +     * not supported.
> >>>> +     */
> >>>> +    mv s1, ra
> >>>> +    la a3, kernel_virt_addr
> >>>> +    REG_L a3, 0(a3)
> >>>>   #else
> >>>> -    li a1, PAGE_OFFSET
> >>>> +    li a3, PAGE_OFFSET
> >>>>   #endif
> >>>>       la a2, _start
> >>>> -    sub a1, a1, a2
> >>>> -    add ra, ra, a1
> >>>> +    sub a3, a3, a2
> >>>> +    add ra, ra, a3
> >>>>
> >>>>       /* Point stvec to virtual address of intruction after satp write */
> >>>>       la a2, 1f
> >>>> -    add a2, a2, a1
> >>>> +    add a2, a2, a3
> >>>>       csrw CSR_TVEC, a2
> >>>>
> >>>> +    /* First try with a 4-level page table */
> >>>>       /* Compute satp for kernel page tables, but don't load it yet */
> >>>>       srl a2, a0, PAGE_SHIFT
> >>>> -    li a1, SATP_MODE
> >>>>       or a2, a2, a1
> >>>>
> >>>>       /*
> >>>> @@ -162,6 +168,19 @@ relocate:
> >>>>       or a0, a0, a1
> >>>>       sfence.vma
> >>>>       csrw CSR_SATP, a0
> >>>> +#if defined(CONFIG_RELOCATABLE) && defined(CONFIG_64BIT)
> >>>> +    /*
> >>>> +     * If we fall through here, that means the HW does not support SV48.
> >>>> +     * We need a 3-level page table then simply fold pud into pgd level
> >>>> +     * and finally jump back to relocate with 3-level parameters.
> >>>> +     */
> >>>> +    call setup_vm_fold_pud
> >>>> +
> >>>> +    la a0, early_pg_dir
> >>>> +    li a1, SATP_MODE_39
> >>>> +    mv ra, s1
> >>>> +    tail relocate
> >>>> +#endif
> >>>>   .align 2
> >>>>   1:
> >>>>       /* Set trap vector to spin forever to help debug */
> >>>> @@ -213,6 +232,8 @@ relocate:
> >>>>   #ifdef CONFIG_MMU
> >>>>       /* Enable virtual memory and relocate to virtual address */
> >>>>       la a0, swapper_pg_dir
> >>>> +    la a1, satp_mode
> >>>> +    REG_L a1, (a1)
> >>>>       call relocate
> >>>>   #endif
> >>>>
> >>>> diff --git a/arch/riscv/mm/context.c b/arch/riscv/mm/context.c
> >>>> index 613ec81a8979..152b423c02ea 100644
> >>>> --- a/arch/riscv/mm/context.c
> >>>> +++ b/arch/riscv/mm/context.c
> >>>> @@ -9,6 +9,8 @@
> >>>>   #include <asm/cacheflush.h>
> >>>>   #include <asm/mmu_context.h>
> >>>>
> >>>> +extern uint64_t satp_mode;
> >>>> +
> >>>>   /*
> >>>>    * When necessary, performs a deferred icache flush for the given MM
> >>>> context,
> >>>>    * on the local CPU.  RISC-V has no direct mechanism for instruction
> >>>> cache
> >>>> @@ -59,7 +61,7 @@ void switch_mm(struct mm_struct *prev, struct
> >>>> mm_struct *next,
> >>>>       cpumask_set_cpu(cpu, mm_cpumask(next));
> >>>>
> >>>>   #ifdef CONFIG_MMU
> >>>> -    csr_write(CSR_SATP, virt_to_pfn(next->pgd) | SATP_MODE);
> >>>> +    csr_write(CSR_SATP, virt_to_pfn(next->pgd) | satp_mode);
> >>>>       local_flush_tlb_all();
> >>>>   #endif
> >>>>
> >>>> diff --git a/arch/riscv/mm/init.c b/arch/riscv/mm/init.c
> >>>> index 18bbb426848e..ad96667d2ab6 100644
> >>>> --- a/arch/riscv/mm/init.c
> >>>> +++ b/arch/riscv/mm/init.c
> >>>> @@ -24,6 +24,17 @@
> >>>>
> >>>>   #include "../kernel/head.h"
> >>>>
> >>>> +#ifdef CONFIG_64BIT
> >>>> +uint64_t satp_mode = IS_ENABLED(CONFIG_MAXPHYSMEM_2GB) ?
> >>>> +                SATP_MODE_39 : SATP_MODE_48;
> >>>> +bool pgtable_l4_enabled = IS_ENABLED(CONFIG_MAXPHYSMEM_2GB) ? false :
> >>>> true;
> >>>> +#else
> >>>> +uint64_t satp_mode = SATP_MODE_32;
> >>>> +bool pgtable_l4_enabled = false;
> >>>> +#endif
> >>>> +EXPORT_SYMBOL(pgtable_l4_enabled);
> >>>> +EXPORT_SYMBOL(satp_mode);
> >>>> +
> >>>>   unsigned long empty_zero_page[PAGE_SIZE / sizeof(unsigned long)]
> >>>>                               __page_aligned_bss;
> >>>>   EXPORT_SYMBOL(empty_zero_page);
> >>>> @@ -245,9 +256,12 @@ static void __init create_pte_mapping(pte_t *ptep,
> >>>>
> >>>>   #ifndef __PAGETABLE_PMD_FOLDED
> >>>>
> >>>> +pud_t trampoline_pud[PTRS_PER_PUD] __page_aligned_bss;
> >>>>   pmd_t trampoline_pmd[PTRS_PER_PMD] __page_aligned_bss;
> >>>> +pud_t fixmap_pud[PTRS_PER_PUD] __page_aligned_bss;
> >>>>   pmd_t fixmap_pmd[PTRS_PER_PMD] __page_aligned_bss;
> >>>>   pmd_t early_pmd[PTRS_PER_PMD] __initdata __aligned(PAGE_SIZE);
> >>>> +pud_t early_pud[PTRS_PER_PUD] __initdata __aligned(PAGE_SIZE);
> >>>>
> >>>>   static pmd_t *__init get_pmd_virt(phys_addr_t pa)
> >>>>   {
> >>>> @@ -264,7 +278,8 @@ static phys_addr_t __init alloc_pmd(uintptr_t va)
> >>>>       if (mmu_enabled)
> >>>>           return memblock_phys_alloc(PAGE_SIZE, PAGE_SIZE);
> >>>>
> >>>> -    BUG_ON((va - PAGE_OFFSET) >> PGDIR_SHIFT);
> >>>> +    /* Only one PMD is available for early mapping */
> >>>> +    BUG_ON((va - PAGE_OFFSET) >> PUD_SHIFT);
> >>>>
> >>>>       return (uintptr_t)early_pmd;
> >>>>   }
> >>>> @@ -296,19 +311,70 @@ static void __init create_pmd_mapping(pmd_t *pmdp,
> >>>>       create_pte_mapping(ptep, va, pa, sz, prot);
> >>>>   }
> >>>>
> >>>> -#define pgd_next_t        pmd_t
> >>>> -#define alloc_pgd_next(__va)    alloc_pmd(__va)
> >>>> -#define get_pgd_next_virt(__pa)    get_pmd_virt(__pa)
> >>>> +static pud_t *__init get_pud_virt(phys_addr_t pa)
> >>>> +{
> >>>> +    if (mmu_enabled) {
> >>>> +        clear_fixmap(FIX_PUD);
> >>>> +        return (pud_t *)set_fixmap_offset(FIX_PUD, pa);
> >>>> +    } else {
> >>>> +        return (pud_t *)((uintptr_t)pa);
> >>>> +    }
> >>>> +}
> >>>> +
> >>>> +static phys_addr_t __init alloc_pud(uintptr_t va)
> >>>> +{
> >>>> +    if (mmu_enabled)
> >>>> +        return memblock_phys_alloc(PAGE_SIZE, PAGE_SIZE);
> >>>> +
> >>>> +    /* Only one PUD is available for early mapping */
> >>>> +    BUG_ON((va - PAGE_OFFSET) >> PGDIR_SHIFT);
> >>>> +
> >>>> +    return (uintptr_t)early_pud;
> >>>> +}
> >>>> +
> >>>> +static void __init create_pud_mapping(pud_t *pudp,
> >>>> +                      uintptr_t va, phys_addr_t pa,
> >>>> +                      phys_addr_t sz, pgprot_t prot)
> >>>> +{
> >>>> +    pmd_t *nextp;
> >>>> +    phys_addr_t next_phys;
> >>>> +    uintptr_t pud_index = pud_index(va);
> >>>> +
> >>>> +    if (sz == PUD_SIZE) {
> >>>> +        if (pud_val(pudp[pud_index]) == 0)
> >>>> +            pudp[pud_index] = pfn_pud(PFN_DOWN(pa), prot);
> >>>> +        return;
> >>>> +    }
> >>>> +
> >>>> +    if (pud_val(pudp[pud_index]) == 0) {
> >>>> +        next_phys = alloc_pmd(va);
> >>>> +        pudp[pud_index] = pfn_pud(PFN_DOWN(next_phys), PAGE_TABLE);
> >>>> +        nextp = get_pmd_virt(next_phys);
> >>>> +        memset(nextp, 0, PAGE_SIZE);
> >>>> +    } else {
> >>>> +        next_phys = PFN_PHYS(_pud_pfn(pudp[pud_index]));
> >>>> +        nextp = get_pmd_virt(next_phys);
> >>>> +    }
> >>>> +
> >>>> +    create_pmd_mapping(nextp, va, pa, sz, prot);
> >>>> +}
> >>>> +
> >>>> +#define pgd_next_t        pud_t
> >>>> +#define alloc_pgd_next(__va)    alloc_pud(__va)
> >>>> +#define get_pgd_next_virt(__pa)    get_pud_virt(__pa)
> >>>>   #define create_pgd_next_mapping(__nextp, __va, __pa, __sz, __prot)    \
> >>>> -    create_pmd_mapping(__nextp, __va, __pa, __sz, __prot)
> >>>> -#define fixmap_pgd_next        fixmap_pmd
> >>>> +    create_pud_mapping(__nextp, __va, __pa, __sz, __prot)
> >>>> +#define fixmap_pgd_next        (pgtable_l4_enabled ?            \
> >>>> +            (uintptr_t)fixmap_pud : (uintptr_t)fixmap_pmd)
> >>>> +#define trampoline_pgd_next    (pgtable_l4_enabled ?            \
> >>>> +            (uintptr_t)trampoline_pud : (uintptr_t)trampoline_pmd)
> >>>>   #else
> >>>>   #define pgd_next_t        pte_t
> >>>>   #define alloc_pgd_next(__va)    alloc_pte(__va)
> >>>>   #define get_pgd_next_virt(__pa)    get_pte_virt(__pa)
> >>>>   #define create_pgd_next_mapping(__nextp, __va, __pa, __sz, __prot)    \
> >>>>       create_pte_mapping(__nextp, __va, __pa, __sz, __prot)
> >>>> -#define fixmap_pgd_next        fixmap_pte
> >>>> +#define fixmap_pgd_next        ((uintptr_t)fixmap_pte)
> >>>>   #endif
> >>>>
> >>>>   static void __init create_pgd_mapping(pgd_t *pgdp,
> >>>> @@ -319,6 +385,13 @@ static void __init create_pgd_mapping(pgd_t *pgdp,
> >>>>       phys_addr_t next_phys;
> >>>>       uintptr_t pgd_index = pgd_index(va);
> >>>>
> >>>> +#ifndef __PAGETABLE_PMD_FOLDED
> >>>> +    if (!pgtable_l4_enabled) {
> >>>> +        create_pud_mapping((pud_t *)pgdp, va, pa, sz, prot);
> >>>> +        return;
> >>>> +    }
> >>>> +#endif
> >>>> +
> >>>>       if (sz == PGDIR_SIZE) {
> >>>>           if (pgd_val(pgdp[pgd_index]) == 0)
> >>>>               pgdp[pgd_index] = pfn_pgd(PFN_DOWN(pa), prot);
> >>>> @@ -449,15 +522,22 @@ asmlinkage void __init setup_vm(uintptr_t dtb_pa)
> >>>>
> >>>>       /* Setup early PGD for fixmap */
> >>>>       create_pgd_mapping(early_pg_dir, FIXADDR_START,
> >>>> -               (uintptr_t)fixmap_pgd_next, PGDIR_SIZE, PAGE_TABLE);
> >>>> +               fixmap_pgd_next, PGDIR_SIZE, PAGE_TABLE);
> >>>>
> >>>>   #ifndef __PAGETABLE_PMD_FOLDED
> >>>> -    /* Setup fixmap PMD */
> >>>> +    /* Setup fixmap PUD and PMD */
> >>>> +    if (pgtable_l4_enabled)
> >>>> +        create_pud_mapping(fixmap_pud, FIXADDR_START,
> >>>> +               (uintptr_t)fixmap_pmd, PUD_SIZE, PAGE_TABLE);
> >>>>       create_pmd_mapping(fixmap_pmd, FIXADDR_START,
> >>>>                  (uintptr_t)fixmap_pte, PMD_SIZE, PAGE_TABLE);
> >>>> +
> >>>>       /* Setup trampoline PGD and PMD */
> >>>>       create_pgd_mapping(trampoline_pg_dir, PAGE_OFFSET,
> >>>> -               (uintptr_t)trampoline_pmd, PGDIR_SIZE, PAGE_TABLE);
> >>>> +               trampoline_pgd_next, PGDIR_SIZE, PAGE_TABLE);
> >>>> +    if (pgtable_l4_enabled)
> >>>> +        create_pud_mapping(trampoline_pud, PAGE_OFFSET,
> >>>> +               (uintptr_t)trampoline_pmd, PUD_SIZE, PAGE_TABLE);
> >>>>       create_pmd_mapping(trampoline_pmd, PAGE_OFFSET,
> >>>>                  load_pa, PMD_SIZE, PAGE_KERNEL_EXEC);
> >>>>   #else
> >>>> @@ -490,6 +570,29 @@ asmlinkage void __init setup_vm(uintptr_t dtb_pa)
> >>>>       dtb_early_pa = dtb_pa;
> >>>>   }
> >>>>
> >>>> +#if defined(CONFIG_RELOCATABLE) && defined(CONFIG_64BIT)
> >>>> +/*
> >>>> + * This function is called only if the current kernel is 64bit and
> >>>> the HW
> >>>> + * does not support sv48.
> >>>> + */
> >>>> +asmlinkage __init void setup_vm_fold_pud(void)
> >>>> +{
> >>>> +    pgtable_l4_enabled = false;
> >>>> +    kernel_virt_addr = PAGE_OFFSET_L3;
> >>>> +    satp_mode = SATP_MODE_39;
> >>>> +
> >>>> +    /*
> >>>> +     * PTE/PMD levels do not need to be cleared as they are common
> >>>> between
> >>>> +     * 3- and 4-level page tables: the 30 least significant bits
> >>>> +     * (2 * 9 + 12) are common.
> >>>> +     */
> >>>> +    memset(trampoline_pg_dir, 0, sizeof(pgd_t) * PTRS_PER_PGD);
> >>>> +    memset(early_pg_dir, 0, sizeof(pgd_t) * PTRS_PER_PGD);
> >>>> +
> >>>> +    setup_vm(dtb_early_pa);
> >>>> +}
> >>>> +#endif
> >>>> +
> >>>>   static void __init setup_vm_final(void)
> >>>>   {
> >>>>       uintptr_t va, map_size;
> >>>> @@ -525,12 +628,13 @@ static void __init setup_vm_final(void)
> >>>>           }
> >>>>       }
> >>>>
> >>>> -    /* Clear fixmap PTE and PMD mappings */
> >>>> +    /* Clear fixmap page table mappings */
> >>>>       clear_fixmap(FIX_PTE);
> >>>>       clear_fixmap(FIX_PMD);
> >>>> +    clear_fixmap(FIX_PUD);
> >>>>
> >>>>       /* Move to swapper page table */
> >>>> -    csr_write(CSR_SATP, PFN_DOWN(__pa_symbol(swapper_pg_dir)) |
> >>>> SATP_MODE);
> >>>> +    csr_write(CSR_SATP, PFN_DOWN(__pa_symbol(swapper_pg_dir)) |
> >>>> satp_mode);
> >>>>       local_flush_tlb_all();
> >>>>   }
> >>>>   #else
> >>
> >> Alex

