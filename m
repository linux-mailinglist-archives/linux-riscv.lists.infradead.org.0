Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FC8182FDE
	for <lists+linux-riscv@lfdr.de>; Tue,  6 Aug 2019 12:44:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WS7SYq1gH6UZTLs0F2TCA+Vrdqfsi0pz1TF9o6XJ8Sc=; b=Zys3KiGhqqYdo4
	wUueZ+0YQxJ7z0G0vUtQDv/dpOqPTFtEOU1Eclr8KOBZas4KgM2Gw2w7HElKNjQmICzJwGZFQiunp
	Tu8Mfm/Qf3S5QzWALvBXLmklV3jfFM/qA5DIPcvLlL/UmPUsjCsglYPLJ+KFYPHcnYlajOxwPuB3q
	Bm8uZuZj5DFOCKVAvFh83M091PH9vPqGXpqgXKz7a3rtlYk3sG4REk0isZGqz7b5F8FEorSfBGRTc
	kB3IIh9qLNHIOur/k2ZOZ4a7Z7GbKueKn29BvvXI8WmeAhMPnKuExox8whvUpfhPXyezK5FJkOCHB
	+x3zoWdh3SjdsCfwDt4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huwx8-0003O6-Pj; Tue, 06 Aug 2019 10:44:26 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huwx5-0003Ng-BB
 for linux-riscv@lists.infradead.org; Tue, 06 Aug 2019 10:44:25 +0000
Received: by mail-wr1-x443.google.com with SMTP id z1so87396969wru.13
 for <linux-riscv@lists.infradead.org>; Tue, 06 Aug 2019 03:44:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Ap1rrVlPYTOqnh4GnsE+49LzAyDM0X2cnywI59s+Owk=;
 b=PUK3bgt9LN15lKwN2Jd3tl6/+EkQUmDLcV1zX3Hh3vuwHA1bRch5y2l9rWN8Oxxofz
 ip4hsgOxco1e4EicK7GCXFAywyOagtEO8jJQzCZXrNAaRdysL1kC+yEyGnmMv1tmAePm
 woae0Zfdad0bDY2DuXQVdl9o1bKXP5YWkSJsK0Nb+PQZQGeJNQirm3K3SQ8uWO3rE4rz
 /AbzLp5D8ZxrcImoFo/Lgyt6niIhABzGb1r9IH+OWFs3fuZjmRw/PvHokh/zzdDLDaXh
 2wGx+C2frteIuH4fXXOHP+isxxL3pdfuJMCsjGkyqMiNtJDnSeSBbWGaN3E4R4A70DwK
 g6Bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Ap1rrVlPYTOqnh4GnsE+49LzAyDM0X2cnywI59s+Owk=;
 b=S0FubXYHrvFbYP9zf4Oyf50SOgvRBi2sedlw2m5o9mBx3zRI5ETa5SbtMf1cX/bMx0
 I9wVjNaoap/jMrY8jz6UOGzfSQtiKtDEIeHyTw3xB+cv9XdQJoETM2VZsfv39uge4s7/
 WX+/1T2DT9Di9awS0NlsB6AO/ithhJeC+aoOd6H/xLq71mDdfb3JT0VjwAro8pUFvi2n
 qEpXL6ga+t1e29Sur4b8+dGldCmwH0O8ESqR4yFsVuaiC1PmHFOjj98/408oogTy1Orr
 iZ0hBxNgOsing8ReqzLFlAlrsKsP2cVv7IYkIds+oA09S0WnPF/iL1UUWTTqb2fFGZEq
 hPkw==
X-Gm-Message-State: APjAAAWg+xme1H9tJA9fsI0jY4S9swcn6bJgilF7EIyePk0DYn8vqMhD
 CcsnBLLb0bTyQB7onQzY7r9CUbuaiUM1FNjyfOjFzQ==
X-Google-Smtp-Source: APXvYqw8pCy2L4QcERMvh9GGdnbDVzrlF5puNqWqPnItasLroRVDvcG+Igm2zZhH3ymn55I6mI+5KkXPMR9lf4JqMk4=
X-Received: by 2002:a5d:6b11:: with SMTP id v17mr3995721wrw.323.1565088260316; 
 Tue, 06 Aug 2019 03:44:20 -0700 (PDT)
MIME-Version: 1.0
References: <20190805134201.2814-1-anup.patel@wdc.com>
 <20190805134201.2814-12-anup.patel@wdc.com>
In-Reply-To: <20190805134201.2814-12-anup.patel@wdc.com>
From: Anup Patel <anup@brainfault.org>
Date: Tue, 6 Aug 2019 16:14:09 +0530
Message-ID: <CAAhSdy1iOjj0fC8y5sXoPkFBWgf-hgpX6nUyNfCSBr0gtrB2+w@mail.gmail.com>
Subject: Re: [PATCH v3 11/19] RISC-V: KVM: Implement VMID allocator
To: Anup Patel <Anup.Patel@wdc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_034423_448706_455DAA56 
X-CRM114-Status: GOOD (  26.00  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
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
Cc: Damien Le Moal <Damien.LeMoal@wdc.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "kvm@vger.kernel.org" <kvm@vger.kernel.org>, Radim K <rkrcmar@redhat.com>,
 Palmer Dabbelt <palmer@sifive.com>,
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

On Mon, Aug 5, 2019 at 7:13 PM Anup Patel <Anup.Patel@wdc.com> wrote:
>
> We implement a simple VMID allocator for Guests/VMs which:
> 1. Detects number of VMID bits at boot-time
> 2. Uses atomic number to track VMID version and increments
>    VMID version whenever we run-out of VMIDs
> 3. Flushes Guest TLBs on all host CPUs whenever we run-out
>    of VMIDs
> 4. Force updates HW Stage2 VMID for each Guest VCPU whenever
>    VMID changes using VCPU request KVM_REQ_UPDATE_HGATP
>
> Signed-off-by: Anup Patel <anup.patel@wdc.com>
> ---
>  arch/riscv/include/asm/kvm_host.h |  25 +++++++
>  arch/riscv/kvm/Makefile           |   3 +-
>  arch/riscv/kvm/main.c             |   4 ++
>  arch/riscv/kvm/tlb.S              |  43 ++++++++++++
>  arch/riscv/kvm/vcpu.c             |   9 +++
>  arch/riscv/kvm/vm.c               |   6 ++
>  arch/riscv/kvm/vmid.c             | 111 ++++++++++++++++++++++++++++++
>  7 files changed, 200 insertions(+), 1 deletion(-)
>  create mode 100644 arch/riscv/kvm/tlb.S
>  create mode 100644 arch/riscv/kvm/vmid.c
>
> diff --git a/arch/riscv/include/asm/kvm_host.h b/arch/riscv/include/asm/kvm_host.h
> index 947bf488f15a..a850c33634bd 100644
> --- a/arch/riscv/include/asm/kvm_host.h
> +++ b/arch/riscv/include/asm/kvm_host.h
> @@ -27,6 +27,7 @@
>  #define KVM_REQ_SLEEP \
>         KVM_ARCH_REQ_FLAGS(0, KVM_REQUEST_WAIT | KVM_REQUEST_NO_WAKEUP)
>  #define KVM_REQ_VCPU_RESET             KVM_ARCH_REQ(1)
> +#define KVM_REQ_UPDATE_HGATP           KVM_ARCH_REQ(2)
>
>  struct kvm_vm_stat {
>         ulong remote_tlb_flush;
> @@ -47,7 +48,19 @@ struct kvm_vcpu_stat {
>  struct kvm_arch_memory_slot {
>  };
>
> +struct kvm_vmid {
> +       /*
> +        * Writes to vmid_version and vmid happen with vmid_lock held
> +        * whereas reads happen without any lock held.
> +        */
> +       unsigned long vmid_version;
> +       unsigned long vmid;
> +};
> +
>  struct kvm_arch {
> +       /* stage2 vmid */
> +       struct kvm_vmid vmid;
> +
>         /* stage2 page table */
>         pgd_t *pgd;
>         phys_addr_t pgd_phys;
> @@ -166,6 +179,12 @@ static inline void kvm_arch_vcpu_uninit(struct kvm_vcpu *vcpu) {}
>  static inline void kvm_arch_sched_in(struct kvm_vcpu *vcpu, int cpu) {}
>  static inline void kvm_arch_vcpu_block_finish(struct kvm_vcpu *vcpu) {}
>
> +extern void __kvm_riscv_hfence_gvma_vmid_gpa(unsigned long vmid,
> +                                            unsigned long gpa);
> +extern void __kvm_riscv_hfence_gvma_vmid(unsigned long vmid);
> +extern void __kvm_riscv_hfence_gvma_gpa(unsigned long gpa);
> +extern void __kvm_riscv_hfence_gvma_all(void);
> +
>  int kvm_riscv_stage2_map(struct kvm_vcpu *vcpu, gpa_t gpa, unsigned long hva,
>                          bool is_write);
>  void kvm_riscv_stage2_flush_cache(struct kvm_vcpu *vcpu);
> @@ -173,6 +192,12 @@ int kvm_riscv_stage2_alloc_pgd(struct kvm *kvm);
>  void kvm_riscv_stage2_free_pgd(struct kvm *kvm);
>  void kvm_riscv_stage2_update_hgatp(struct kvm_vcpu *vcpu);
>
> +void kvm_riscv_stage2_vmid_detect(void);
> +unsigned long kvm_riscv_stage2_vmid_bits(void);
> +int kvm_riscv_stage2_vmid_init(struct kvm *kvm);
> +bool kvm_riscv_stage2_vmid_ver_changed(struct kvm_vmid *vmid);
> +void kvm_riscv_stage2_vmid_update(struct kvm_vcpu *vcpu);
> +
>  int kvm_riscv_vcpu_mmio_return(struct kvm_vcpu *vcpu, struct kvm_run *run);
>  int kvm_riscv_vcpu_exit(struct kvm_vcpu *vcpu, struct kvm_run *run,
>                         unsigned long scause, unsigned long stval);
> diff --git a/arch/riscv/kvm/Makefile b/arch/riscv/kvm/Makefile
> index 845579273727..c0f57f26c13d 100644
> --- a/arch/riscv/kvm/Makefile
> +++ b/arch/riscv/kvm/Makefile
> @@ -8,6 +8,7 @@ ccflags-y := -Ivirt/kvm -Iarch/riscv/kvm
>
>  kvm-objs := $(common-objs-y)
>
> -kvm-objs += main.o vm.o mmu.o vcpu.o vcpu_exit.o vcpu_switch.o
> +kvm-objs += main.o vm.o vmid.o tlb.o mmu.o
> +kvm-objs += vcpu.o vcpu_exit.o vcpu_switch.o
>
>  obj-$(CONFIG_KVM)      += kvm.o
> diff --git a/arch/riscv/kvm/main.c b/arch/riscv/kvm/main.c
> index f4a7a3c67f8e..927d232ee0a1 100644
> --- a/arch/riscv/kvm/main.c
> +++ b/arch/riscv/kvm/main.c
> @@ -66,8 +66,12 @@ int kvm_arch_init(void *opaque)
>                 return -ENODEV;
>         }
>
> +       kvm_riscv_stage2_vmid_detect();
> +
>         kvm_info("hypervisor extension available\n");
>
> +       kvm_info("host has %ld VMID bits\n", kvm_riscv_stage2_vmid_bits());
> +
>         return 0;
>  }
>
> diff --git a/arch/riscv/kvm/tlb.S b/arch/riscv/kvm/tlb.S
> new file mode 100644
> index 000000000000..453fca8d7940
> --- /dev/null
> +++ b/arch/riscv/kvm/tlb.S
> @@ -0,0 +1,43 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/*
> + * Copyright (C) 2019 Western Digital Corporation or its affiliates.
> + *
> + * Authors:
> + *     Anup Patel <anup.patel@wdc.com>
> + */
> +
> +#include <linux/linkage.h>
> +#include <asm/asm.h>
> +
> +       .text
> +       .altmacro
> +       .option norelax
> +
> +       /*
> +        * Instruction encoding of hfence.gvma is:
> +        * 0110001 rs2(5) rs1(5) 000 00000 1110011
> +        */
> +
> +ENTRY(__kvm_riscv_hfence_gvma_vmid_gpa)
> +       /* hfence.gvma a1, a0 */
> +       .word 0x62a60073
> +       ret
> +ENDPROC(__kvm_riscv_hfence_gvma_vmid_gpa)
> +
> +ENTRY(__kvm_riscv_hfence_gvma_vmid)
> +       /* hfence.gvma zero, a0 */
> +       .word 0x62a00073
> +       ret
> +ENDPROC(__kvm_riscv_hfence_gvma_vmid)
> +
> +ENTRY(__kvm_riscv_hfence_gvma_gpa)
> +       /* hfence.gvma a0 */
> +       .word 0x62050073
> +       ret
> +ENDPROC(__kvm_riscv_hfence_gvma_gpa)
> +
> +ENTRY(__kvm_riscv_hfence_gvma_all)
> +       /* hfence.gvma */
> +       .word 0x62000073
> +       ret
> +ENDPROC(__kvm_riscv_hfence_gvma_all)
> diff --git a/arch/riscv/kvm/vcpu.c b/arch/riscv/kvm/vcpu.c
> index b1591d962cee..1cba8d3af63a 100644
> --- a/arch/riscv/kvm/vcpu.c
> +++ b/arch/riscv/kvm/vcpu.c
> @@ -626,6 +626,12 @@ static void kvm_riscv_check_vcpu_requests(struct kvm_vcpu *vcpu)
>
>                 if (kvm_check_request(KVM_REQ_VCPU_RESET, vcpu))
>                         kvm_riscv_reset_vcpu(vcpu);
> +
> +               if (kvm_check_request(KVM_REQ_UPDATE_HGATP, vcpu))
> +                       kvm_riscv_stage2_update_hgatp(vcpu);
> +
> +               if (kvm_check_request(KVM_REQ_TLB_FLUSH, vcpu))
> +                       __kvm_riscv_hfence_gvma_all();
>         }
>  }
>
> @@ -674,6 +680,8 @@ int kvm_arch_vcpu_ioctl_run(struct kvm_vcpu *vcpu, struct kvm_run *run)
>                 /* Check conditions before entering the guest */
>                 cond_resched();
>
> +               kvm_riscv_stage2_vmid_update(vcpu);
> +
>                 kvm_riscv_check_vcpu_requests(vcpu);
>
>                 preempt_disable();
> @@ -710,6 +718,7 @@ int kvm_arch_vcpu_ioctl_run(struct kvm_vcpu *vcpu, struct kvm_run *run)
>                 kvm_riscv_update_vsip(vcpu);
>
>                 if (ret <= 0 ||
> +                   kvm_riscv_stage2_vmid_ver_changed(&vcpu->kvm->arch.vmid) ||
>                     kvm_request_pending(vcpu)) {
>                         vcpu->mode = OUTSIDE_GUEST_MODE;
>                         local_irq_enable();
> diff --git a/arch/riscv/kvm/vm.c b/arch/riscv/kvm/vm.c
> index ac0211820521..c5aab5478c38 100644
> --- a/arch/riscv/kvm/vm.c
> +++ b/arch/riscv/kvm/vm.c
> @@ -26,6 +26,12 @@ int kvm_arch_init_vm(struct kvm *kvm, unsigned long type)
>         if (r)
>                 return r;
>
> +       r = kvm_riscv_stage2_vmid_init(kvm);
> +       if (r) {
> +               kvm_riscv_stage2_free_pgd(kvm);
> +               return r;
> +       }
> +
>         return 0;
>  }
>
> diff --git a/arch/riscv/kvm/vmid.c b/arch/riscv/kvm/vmid.c
> new file mode 100644
> index 000000000000..df19a44e1a4b
> --- /dev/null
> +++ b/arch/riscv/kvm/vmid.c
> @@ -0,0 +1,111 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright (C) 2019 Western Digital Corporation or its affiliates.
> + *
> + * Authors:
> + *     Anup Patel <anup.patel@wdc.com>
> + */
> +
> +#include <linux/bitops.h>
> +#include <linux/cpumask.h>
> +#include <linux/errno.h>
> +#include <linux/err.h>
> +#include <linux/module.h>
> +#include <linux/kvm_host.h>
> +#include <asm/csr.h>
> +
> +static unsigned long vmid_version = 1;
> +static unsigned long vmid_next;
> +static unsigned long vmid_bits;
> +static DEFINE_SPINLOCK(vmid_lock);
> +
> +void kvm_riscv_stage2_vmid_detect(void)
> +{
> +       unsigned long old;
> +
> +       /* Figure-out number of VMID bits in HW */
> +       old = csr_read(CSR_HGATP);
> +       csr_write(CSR_HGATP, old | HGATP_VMID_MASK);
> +       vmid_bits = csr_read(CSR_HGATP);
> +       vmid_bits = (vmid_bits & HGATP_VMID_MASK) >> HGATP_VMID_SHIFT;
> +       vmid_bits = fls_long(vmid_bits);
> +       csr_write(CSR_HGATP, old);
> +
> +       /* We polluted local TLB so flush all guest TLB */
> +       __kvm_riscv_hfence_gvma_all();
> +
> +       /* We don't use VMID bits if they are not sufficient */
> +       if ((1UL << vmid_bits) < num_possible_cpus())
> +               vmid_bits = 0;
> +}
> +
> +unsigned long kvm_riscv_stage2_vmid_bits(void)
> +{
> +       return vmid_bits;
> +}
> +
> +int kvm_riscv_stage2_vmid_init(struct kvm *kvm)
> +{
> +       /* Mark the initial VMID and VMID version invalid */
> +       kvm->arch.vmid.vmid_version = 0;
> +       kvm->arch.vmid.vmid = 0;
> +
> +       return 0;
> +}
> +
> +bool kvm_riscv_stage2_vmid_ver_changed(struct kvm_vmid *vmid)
> +{
> +       if (!vmid_bits)
> +               return false;
> +
> +       return unlikely(READ_ONCE(vmid->vmid_version) !=
> +                       READ_ONCE(vmid_version));
> +}
> +
> +void kvm_riscv_stage2_vmid_update(struct kvm_vcpu *vcpu)
> +{
> +       int i;
> +       struct kvm_vcpu *v;
> +       struct kvm_vmid *vmid = &vcpu->kvm->arch.vmid;
> +
> +       if (!kvm_riscv_stage2_vmid_ver_changed(vmid))
> +               return;
> +
> +       spin_lock(&vmid_lock);
> +
> +       /*
> +        * We need to re-check the vmid_version here to ensure that if
> +        * another vcpu already allocated a valid vmid for this vm.
> +        */
> +       if (!kvm_riscv_stage2_vmid_ver_changed(vmid)) {
> +               spin_unlock(&vmid_lock);
> +               return;
> +       }
> +
> +       /* First user of a new VMID version? */
> +       if (unlikely(vmid_next == 0)) {
> +               WRITE_ONCE(vmid_version, READ_ONCE(vmid_version) + 1);
> +               vmid_next = 1;
> +
> +               /*
> +                * On SMP, we know no other CPUs can use this CPU's or
> +                * each other's VMID after forced exit returns since the
> +                * vmid_lock blocks them from re-entry to the guest.
> +                */
> +               spin_unlock(&vmid_lock);
> +               kvm_flush_remote_tlbs(vcpu->kvm);
> +               spin_lock(&vmid_lock);

I looked at the VMID allocator again. The intention here was to force
exit on all Host CPUs and not just CPUs on which given Guest/VM
is running whenever we run-out of VMIDs.

To further explain above, let's say we have four Guests with single VCPU
and only four possible VMIDs. Also, let's assume Guest0 to Guest2 are
assigned VMID 1 to 3 respectively with VMID_VERSION = 1. Now when
Guest3 starts running we run-out of VMIDs (i.e. vmid_next == 0) so
kvm_riscv_stage2_vmid_update() (called for Guest3) will make the
VMID_VERSION = 2 and it will be assigned VMID = 1. The previous
VMID and VMID_VERSION assigned to Guest0, Guest1, and Guest2
are not out-of-date so we have to force exit for all running Guest
instances so that kvm_riscv_stage2_vmid_update() is called for
all Guest instances.

Due to above reasons, we had an explicit IPI call previously (upto v2)
instead of kvm_flush_remote_tlbs().

Regards,
Anup


> +       }
> +
> +       vmid->vmid = vmid_next;
> +       vmid_next++;
> +       vmid_next &= (1 << vmid_bits) - 1;
> +
> +       WRITE_ONCE(vmid->vmid_version, READ_ONCE(vmid_version));
> +
> +       spin_unlock(&vmid_lock);
> +
> +       /* Request stage2 page table update for all VCPUs */
> +       kvm_for_each_vcpu(i, v, vcpu->kvm)
> +               kvm_make_request(KVM_REQ_UPDATE_HGATP, v);
> +}
> --
> 2.17.1
>

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
