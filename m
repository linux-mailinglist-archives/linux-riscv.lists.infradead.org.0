Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C94F9993F6
	for <lists+linux-riscv@lfdr.de>; Thu, 22 Aug 2019 14:38:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jpSUGiEMZC6+ayhnSkh5ztNqVVjGWgcUsTM63wmMjyQ=; b=u8JZeYjj2zwtQy
	9dbOaqRQDORYDNlxG9SBjKC7DHDh09+FZRgEHImN3PA7DZ3gWtIVO3hNYMX9L/wka1MjYBDg/ykMI
	mAYs/I/eL+UE++iFprnnYHhaaZhTTYHVo/EP520v367rl9RrIhDcQxIBthvUCOZ0mh4IRRK5iHUHb
	MKA04a3x68F6Nbvkk94l3dJqNNoSrQUnm/7VTpr9iFI8iTutMulIalKFa9yZgkqHNQvPpxLQwAdzc
	EHbTYuORoC8XPQju7u2VrfYq0JwQis1CknFx5pZ77FAf2gIjLj2mPxRAgZVtgEeSlFXGVMCtl8ZkB
	1PrFudF1pLTrfPhTCZow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0mMd-0005Kf-Nk; Thu, 22 Aug 2019 12:38:51 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0mMZ-0005Ju-Dj
 for linux-riscv@lists.infradead.org; Thu, 22 Aug 2019 12:38:48 +0000
Received: by mail-wr1-x442.google.com with SMTP id q12so5246340wrj.12
 for <linux-riscv@lists.infradead.org>; Thu, 22 Aug 2019 05:38:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=BnFwQaeHO9BwaDaPDs30ViOA3PYpNnt8DXjyb7utwWk=;
 b=Qg8jr2yWOLGcPOOts1J5YDswgaDhv2IKEGB6uG/dpPewlZixUmhziVkFuGIHuajdda
 gTepf4bkcV/X96wxwDEW5TutP6blq3MrJKOtjDZaDC1hBqeuln5N0N5AaM1mlvedjnd+
 rmFgPP4Nwn5+CwnFqhI/ogR5nGw7oQ8OxuuuyS1PaNVD+KAdItTbB1ew6xbd+zm2+ocr
 7CNtzkP3EtQXqybSQFOANXOiBnXZ5tJMUKzRarkt4W3CyvtrM0W/G4eteBzXY9TBDoGs
 3nTtfpHwAZFZduYVg7KBikEcycQXr2P/BrDUlumgBk84Sa0dK8tqxO0Mt1nnOiGsHUAO
 Rxfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=BnFwQaeHO9BwaDaPDs30ViOA3PYpNnt8DXjyb7utwWk=;
 b=V3/QbPV3GSNVIecG25xwoxaLyCuu7dDIKwSIkgoBNY4iY7jGGJUlQNVFeF4Ck3YKeR
 2ltcNjvtA+j7Uhjx8uSd/SCKxu+WlpMVWEi9jywxXryjM58C8U/BUdUpXmCPmq3PLTGk
 k9sXZKBYFTQ7n7DtnEqkyFH4k61BZQa+/lAJwCdxdKxdetzO3xeCFAmF7KMy6IbdRi54
 CvFJweY+i4lP5EeTWyBHpqgcDwWRYtbjp+JmBIBDDrcnHbqRlzIk6DE13P6i6dCyXYCY
 3LAqPP3NIsYsm0975lLboPsbOrAvWd3aew958lSqrW3ll2uucSrZDgy16YYP8STYmQil
 3dgg==
X-Gm-Message-State: APjAAAXuKfCyuwe18A1j8StlEgt+nRj7gzU0I54RCOkMWXt+Xml5uMEp
 n9NKM4uexmjYwaD/sjshs3cxdNAQVZh4zEBWaCQ1DOHx
X-Google-Smtp-Source: APXvYqxliBRuaaMcL1lknjwgrVUrKd1aZkJOJwxxfHvTC3naTZb/hSNSUzJP45WaEW+UG6yIhAMbUhJTS+QRL7uN2pc=
X-Received: by 2002:a5d:4ecb:: with SMTP id s11mr20341742wrv.323.1566477524109; 
 Thu, 22 Aug 2019 05:38:44 -0700 (PDT)
MIME-Version: 1.0
References: <20190822084131.114764-1-anup.patel@wdc.com>
 <20190822084131.114764-14-anup.patel@wdc.com>
 <77b9ff3c-292f-ee17-ddbb-134c0666fde7@amazon.com>
In-Reply-To: <77b9ff3c-292f-ee17-ddbb-134c0666fde7@amazon.com>
From: Anup Patel <anup@brainfault.org>
Date: Thu, 22 Aug 2019 18:08:32 +0530
Message-ID: <CAAhSdy1h+m0gA2pro-XAb4qhe0Q+8knjW+8+6jaz3efOdKWskA@mail.gmail.com>
Subject: Re: [PATCH v5 13/20] RISC-V: KVM: Implement stage2 page table
 programming
To: Alexander Graf <graf@amazon.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_053847_459646_4E88EBE3 
X-CRM114-Status: GOOD (  22.49  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Damien Le Moal <Damien.LeMoal@wdc.com>, Palmer Dabbelt <palmer@sifive.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "kvm@vger.kernel.org" <kvm@vger.kernel.org>, Radim K <rkrcmar@redhat.com>,
 Anup Patel <Anup.Patel@wdc.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Christoph Hellwig <hch@infradead.org>, Atish Patra <Atish.Patra@wdc.com>,
 Alistair Francis <Alistair.Francis@wdc.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, Paolo Bonzini <pbonzini@redhat.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, Aug 22, 2019 at 5:58 PM Alexander Graf <graf@amazon.com> wrote:
>
> On 22.08.19 10:45, Anup Patel wrote:
> > This patch implements all required functions for programming
> > the stage2 page table for each Guest/VM.
> >
> > At high-level, the flow of stage2 related functions is similar
> > from KVM ARM/ARM64 implementation but the stage2 page table
> > format is quite different for KVM RISC-V.
> >
> > Signed-off-by: Anup Patel <anup.patel@wdc.com>
> > Acked-by: Paolo Bonzini <pbonzini@redhat.com>
> > Reviewed-by: Paolo Bonzini <pbonzini@redhat.com>
> > ---
> >   arch/riscv/include/asm/kvm_host.h     |  10 +
> >   arch/riscv/include/asm/pgtable-bits.h |   1 +
> >   arch/riscv/kvm/mmu.c                  | 637 +++++++++++++++++++++++++-
> >   3 files changed, 638 insertions(+), 10 deletions(-)
> >
> > diff --git a/arch/riscv/include/asm/kvm_host.h b/arch/riscv/include/asm/kvm_host.h
> > index 3b09158f80f2..a37775c92586 100644
> > --- a/arch/riscv/include/asm/kvm_host.h
> > +++ b/arch/riscv/include/asm/kvm_host.h
> > @@ -72,6 +72,13 @@ struct kvm_mmio_decode {
> >       int shift;
> >   };
> >
> > +#define KVM_MMU_PAGE_CACHE_NR_OBJS   32
> > +
> > +struct kvm_mmu_page_cache {
> > +     int nobjs;
> > +     void *objects[KVM_MMU_PAGE_CACHE_NR_OBJS];
> > +};
> > +
> >   struct kvm_cpu_context {
> >       unsigned long zero;
> >       unsigned long ra;
> > @@ -163,6 +170,9 @@ struct kvm_vcpu_arch {
> >       /* MMIO instruction details */
> >       struct kvm_mmio_decode mmio_decode;
> >
> > +     /* Cache pages needed to program page tables with spinlock held */
> > +     struct kvm_mmu_page_cache mmu_page_cache;
> > +
> >       /* VCPU power-off state */
> >       bool power_off;
> >
> > diff --git a/arch/riscv/include/asm/pgtable-bits.h b/arch/riscv/include/asm/pgtable-bits.h
> > index bbaeb5d35842..be49d62fcc2b 100644
> > --- a/arch/riscv/include/asm/pgtable-bits.h
> > +++ b/arch/riscv/include/asm/pgtable-bits.h
> > @@ -26,6 +26,7 @@
> >
> >   #define _PAGE_SPECIAL   _PAGE_SOFT
> >   #define _PAGE_TABLE     _PAGE_PRESENT
> > +#define _PAGE_LEAF      (_PAGE_READ | _PAGE_WRITE | _PAGE_EXEC)
> >
> >   /*
> >    * _PAGE_PROT_NONE is set on not-present pages (and ignored by the hardware) to
> > diff --git a/arch/riscv/kvm/mmu.c b/arch/riscv/kvm/mmu.c
> > index 2b965f9aac07..9e95ab6769f6 100644
> > --- a/arch/riscv/kvm/mmu.c
> > +++ b/arch/riscv/kvm/mmu.c
> > @@ -18,6 +18,432 @@
> >   #include <asm/page.h>
> >   #include <asm/pgtable.h>
> >
> > +#ifdef CONFIG_64BIT
> > +#define stage2_have_pmd              true
> > +#define stage2_gpa_size              ((phys_addr_t)(1ULL << 39))
> > +#define stage2_cache_min_pages       2
> > +#else
> > +#define pmd_index(x)         0
> > +#define pfn_pmd(x, y)                ({ pmd_t __x = { 0 }; __x; })
> > +#define stage2_have_pmd              false
> > +#define stage2_gpa_size              ((phys_addr_t)(1ULL << 32))
> > +#define stage2_cache_min_pages       1
> > +#endif
> > +
> > +static int stage2_cache_topup(struct kvm_mmu_page_cache *pcache,
> > +                           int min, int max)
> > +{
> > +     void *page;
> > +
> > +     BUG_ON(max > KVM_MMU_PAGE_CACHE_NR_OBJS);
> > +     if (pcache->nobjs >= min)
> > +             return 0;
> > +     while (pcache->nobjs < max) {
> > +             page = (void *)__get_free_page(GFP_KERNEL | __GFP_ZERO);
> > +             if (!page)
> > +                     return -ENOMEM;
> > +             pcache->objects[pcache->nobjs++] = page;
> > +     }
> > +
> > +     return 0;
> > +}
> > +
> > +static void stage2_cache_flush(struct kvm_mmu_page_cache *pcache)
> > +{
> > +     while (pcache && pcache->nobjs)
> > +             free_page((unsigned long)pcache->objects[--pcache->nobjs]);
> > +}
> > +
> > +static void *stage2_cache_alloc(struct kvm_mmu_page_cache *pcache)
> > +{
> > +     void *p;
> > +
> > +     if (!pcache)
> > +             return NULL;
> > +
> > +     BUG_ON(!pcache->nobjs);
> > +     p = pcache->objects[--pcache->nobjs];
> > +
> > +     return p;
> > +}
> > +
> > +struct local_guest_tlb_info {
> > +     struct kvm_vmid *vmid;
> > +     gpa_t addr;
> > +};
> > +
> > +static void local_guest_tlb_flush_vmid_gpa(void *info)
> > +{
> > +     struct local_guest_tlb_info *infop = info;
> > +
> > +     __kvm_riscv_hfence_gvma_vmid_gpa(READ_ONCE(infop->vmid->vmid_version),
> > +                                      infop->addr);
> > +}
> > +
> > +static void stage2_remote_tlb_flush(struct kvm *kvm, gpa_t addr)
> > +{
> > +     struct local_guest_tlb_info info;
> > +     struct kvm_vmid *vmid = &kvm->arch.vmid;
> > +
> > +     /* TODO: This should be SBI call */
> > +     info.vmid = vmid;
> > +     info.addr = addr;
> > +     preempt_disable();
> > +     smp_call_function_many(cpu_all_mask, local_guest_tlb_flush_vmid_gpa,
> > +                            &info, true);
>
> This is all nice and dandy on the toy 4 core systems we have today, but
> it will become a bottleneck further down the road.
>
> How many VMIDs do you have? Could you just allocate a new one every time
> you switch host CPUs? Then you know exactly which CPUs to flush by
> looking at all your vcpu structs and a local field that tells you which
> pCPU they're on at this moment.
>
> Either way, it's nothing that should block inclusion. For today, we're fine.

We are not happy about this either.

Other two options, we have are:
1. Have SBI calls for remote HFENCEs
2. Propose RISC-V ISA extension for remote FENCEs

Option1 is mostly extending SBI spec and implementing it in runtime
firmware.

Option2 is ideal solution but requires consensus among wider audience
in RISC-V foundation.

At this point, we are fine with a simple solution.

Regards,
Anup

>
>
> Alex

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
