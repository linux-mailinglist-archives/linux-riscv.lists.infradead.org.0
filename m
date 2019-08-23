Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0833A9ADF8
	for <lists+linux-riscv@lfdr.de>; Fri, 23 Aug 2019 13:18:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DLLpvwGti0ZZ6VFKsfAd9opk1vkvZ2n7cWkZRl/SWLk=; b=ZOauyZGb6C3Fur
	ukjzu2/yw7pAi3r2LQBkwzvQJ7u1vWCaB2LKHsH+NowBr95ybBNPndK3HRuckVo+JvGZEVYtzdZlZ
	ZvzIsyWE2K4A7UsqvBkiTKdcb0qFPacnf0Ce4WtxHIWnPO46bs+uIfDH8A4Z0KfGHwO1r1IjKHXpb
	zwlD8XFnp8JzYlVn4qNoSUmeHmDPGC3tiH/NLx/MEO4yJoFftk80+GbHOsXUvGeBUSPx14rdDIoYs
	5Q+DifyCB+ewtk2C7wl3qWbsbS/1cHY29VTVHHytt2GUWAWv/1c1Ksu9ShxAMB68aBDNHxAwFppcN
	UH4DCeToUNptUByidQYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i17a6-0001wF-4K; Fri, 23 Aug 2019 11:18:10 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i17a2-0001vq-LH
 for linux-riscv@lists.infradead.org; Fri, 23 Aug 2019 11:18:08 +0000
Received: by mail-wm1-x341.google.com with SMTP id k1so8575748wmi.1
 for <linux-riscv@lists.infradead.org>; Fri, 23 Aug 2019 04:18:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=D4bfHJMc+od3gVmmzNLx7edtrak7/Bvmp1LGu9HgOdM=;
 b=AZJAEH9517UhuvDXTWJs+2RA6hy4ub9gH0qKK1kRI0+PQZQQMHtNjMY5atJA9fVokF
 THdvte2sUvC+gPdp1jY/XGfwovwobQuNg6nuvGQZpU99MNEQagOFtZgh9UbKuHKmyZ0l
 6ayjXXI8ESH7DQN8eCnThFkBTi7baA78W0we4eYSCEtVLUup9X84AFlAAw97xBsbkSDy
 K6wHDtfGf8FUIyc8LveWAmhgm8VU/soKeYRtim9Fochz4CIkc5V70BGhjTOOobB2D3FA
 k2nak7orqPs/1ztBaIObr4P1cjxHuxGoLOTO6UAZgldKyhBMKy7I6OervnY4z+oCxanb
 aBFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=D4bfHJMc+od3gVmmzNLx7edtrak7/Bvmp1LGu9HgOdM=;
 b=b+lJYt67cFXMRkWoJhhvYa/iT9qsj6LXUu78oAjdnnETO5Vk9L27W4OFwZwFd7FGR/
 QxufHT7j0tOkuDM3tpAk3u/zKl5Ri+EUiHxZtYWCvbQbSRpIlfIO10Thf7x477X6ZLqO
 UmPqB2+2gxh7VhuQyYuOCkHmqxYJux7osakZu8ppCogAdAmIOMelXjrWazi04L7fTzAk
 F/C4TLKKDnfJIxbaSiSclyV9Ay0sBEZJdETeI0jdAcfLtReQ0jDlnGo9510GRafelDQL
 PzOT4rp2YEalgEKEsA+NGvXdnppw33+z5y9siDgg/BSeCoQqoAuXr+z424sC9PWH3lFM
 v+ZQ==
X-Gm-Message-State: APjAAAVMchMxOHxtp7bBZ2iDN8f0gXOMeEl9L2l0darxZM6sJbCXxvPL
 kLDXh6JkzDzf1S/z9fp0/D3RZoaR0dcQg2M2bVxNHA==
X-Google-Smtp-Source: APXvYqwxX2a3RoQkBzcp9UA9Ovjb1vIhNK6s7T6MjjuTfKB5wdJys4VDSOyx/tWegC4FdFasEZINiLZwsA7JCmQznjc=
X-Received: by 2002:a7b:c933:: with SMTP id h19mr4379000wml.177.1566559084783; 
 Fri, 23 Aug 2019 04:18:04 -0700 (PDT)
MIME-Version: 1.0
References: <20190822084131.114764-1-anup.patel@wdc.com>
 <20190822084131.114764-19-anup.patel@wdc.com>
 <40911e08-e0ce-a2b8-24d4-9cf357432850@amazon.com>
In-Reply-To: <40911e08-e0ce-a2b8-24d4-9cf357432850@amazon.com>
From: Anup Patel <anup@brainfault.org>
Date: Fri, 23 Aug 2019 16:47:53 +0530
Message-ID: <CAAhSdy3CvvYh59c=OomLZgweWREBhJj_eeH80OkU=7MMCwyiCQ@mail.gmail.com>
Subject: Re: [PATCH v5 18/20] RISC-V: KVM: Add SBI v0.1 support
To: Alexander Graf <graf@amazon.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_041806_695161_ADDDA7AF 
X-CRM114-Status: GOOD (  26.98  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
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

On Fri, Aug 23, 2019 at 1:34 PM Alexander Graf <graf@amazon.com> wrote:
>
> On 22.08.19 10:46, Anup Patel wrote:
> > From: Atish Patra <atish.patra@wdc.com>
> >
> > The KVM host kernel running in HS-mode needs to handle SBI calls coming
> > from guest kernel running in VS-mode.
> >
> > This patch adds SBI v0.1 support in KVM RISC-V. All the SBI calls are
> > implemented correctly except remote tlb flushes. For remote TLB flushes,
> > we are doing full TLB flush and this will be optimized in future.
> >
> > Signed-off-by: Atish Patra <atish.patra@wdc.com>
> > Signed-off-by: Anup Patel <anup.patel@wdc.com>
> > Acked-by: Paolo Bonzini <pbonzini@redhat.com>
> > Reviewed-by: Paolo Bonzini <pbonzini@redhat.com>
> > ---
> >   arch/riscv/include/asm/kvm_host.h |   2 +
> >   arch/riscv/kvm/Makefile           |   2 +-
> >   arch/riscv/kvm/vcpu_exit.c        |   3 +
> >   arch/riscv/kvm/vcpu_sbi.c         | 119 ++++++++++++++++++++++++++++++
> >   4 files changed, 125 insertions(+), 1 deletion(-)
> >   create mode 100644 arch/riscv/kvm/vcpu_sbi.c
> >
> > diff --git a/arch/riscv/include/asm/kvm_host.h b/arch/riscv/include/asm/kvm_host.h
> > index 2af3a179c08e..0b1eceaef59f 100644
> > --- a/arch/riscv/include/asm/kvm_host.h
> > +++ b/arch/riscv/include/asm/kvm_host.h
> > @@ -241,4 +241,6 @@ bool kvm_riscv_vcpu_has_interrupt(struct kvm_vcpu *vcpu);
> >   void kvm_riscv_vcpu_power_off(struct kvm_vcpu *vcpu);
> >   void kvm_riscv_vcpu_power_on(struct kvm_vcpu *vcpu);
> >
> > +int kvm_riscv_vcpu_sbi_ecall(struct kvm_vcpu *vcpu);
> > +
> >   #endif /* __RISCV_KVM_HOST_H__ */
> > diff --git a/arch/riscv/kvm/Makefile b/arch/riscv/kvm/Makefile
> > index 3e0c7558320d..b56dc1650d2c 100644
> > --- a/arch/riscv/kvm/Makefile
> > +++ b/arch/riscv/kvm/Makefile
> > @@ -9,6 +9,6 @@ ccflags-y := -Ivirt/kvm -Iarch/riscv/kvm
> >   kvm-objs := $(common-objs-y)
> >
> >   kvm-objs += main.o vm.o vmid.o tlb.o mmu.o
> > -kvm-objs += vcpu.o vcpu_exit.o vcpu_switch.o vcpu_timer.o
> > +kvm-objs += vcpu.o vcpu_exit.o vcpu_switch.o vcpu_timer.o vcpu_sbi.o
> >
> >   obj-$(CONFIG_KVM)   += kvm.o
> > diff --git a/arch/riscv/kvm/vcpu_exit.c b/arch/riscv/kvm/vcpu_exit.c
> > index fbc04fe335ad..87b83fcf9a14 100644
> > --- a/arch/riscv/kvm/vcpu_exit.c
> > +++ b/arch/riscv/kvm/vcpu_exit.c
> > @@ -534,6 +534,9 @@ int kvm_riscv_vcpu_exit(struct kvm_vcpu *vcpu, struct kvm_run *run,
> >                   (vcpu->arch.guest_context.hstatus & HSTATUS_STL))
> >                       ret = stage2_page_fault(vcpu, run, scause, stval);
> >               break;
> > +     case EXC_SUPERVISOR_SYSCALL:
> > +             if (vcpu->arch.guest_context.hstatus & HSTATUS_SPV)
> > +                     ret = kvm_riscv_vcpu_sbi_ecall(vcpu);
> >       default:
> >               break;
> >       };
> > diff --git a/arch/riscv/kvm/vcpu_sbi.c b/arch/riscv/kvm/vcpu_sbi.c
> > new file mode 100644
> > index 000000000000..5793202eb514
> > --- /dev/null
> > +++ b/arch/riscv/kvm/vcpu_sbi.c
> > @@ -0,0 +1,119 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +/**
> > + * Copyright (c) 2019 Western Digital Corporation or its affiliates.
> > + *
> > + * Authors:
> > + *     Atish Patra <atish.patra@wdc.com>
> > + */
> > +
> > +#include <linux/errno.h>
> > +#include <linux/err.h>
> > +#include <linux/kvm_host.h>
> > +#include <asm/csr.h>
> > +#include <asm/kvm_vcpu_timer.h>
> > +
> > +#define SBI_VERSION_MAJOR                    0
> > +#define SBI_VERSION_MINOR                    1
> > +
> > +/* TODO: Handle traps due to unpriv load and redirect it back to VS-mode */
>
> Ugh, another one of those? Can't you just figure out a way to recover
> from the page fault? Also, you want to combine this with the instruction
> load logic, so that we have a single place that guest address space
> reads go through.

Walking Guest page table would be more expensive compared to implementing
a trap handling mechanism.

We will be adding trap handling mechanism for reading instruction and reading
load.

Both these operations are different in following ways:
1. RISC-V instructions are variable length. We get to know exact instruction
    length only after reading first 16bits
2. We need to set VSSTATUS.MXR bit when reading instruction for
    execute-only Guest pages.

>
> > +static unsigned long kvm_sbi_unpriv_load(const unsigned long *addr,
> > +                                      struct kvm_vcpu *vcpu)
> > +{
> > +     unsigned long flags, val;
> > +     unsigned long __hstatus, __sstatus;
> > +
> > +     local_irq_save(flags);
> > +     __hstatus = csr_read(CSR_HSTATUS);
> > +     __sstatus = csr_read(CSR_SSTATUS);
> > +     csr_write(CSR_HSTATUS, vcpu->arch.guest_context.hstatus | HSTATUS_SPRV);
> > +     csr_write(CSR_SSTATUS, vcpu->arch.guest_context.sstatus);
> > +     val = *addr;
> > +     csr_write(CSR_HSTATUS, __hstatus);
> > +     csr_write(CSR_SSTATUS, __sstatus);
> > +     local_irq_restore(flags);
> > +
> > +     return val;
> > +}
> > +
> > +static void kvm_sbi_system_shutdown(struct kvm_vcpu *vcpu, u32 type)
> > +{
> > +     int i;
> > +     struct kvm_vcpu *tmp;
> > +
> > +     kvm_for_each_vcpu(i, tmp, vcpu->kvm)
> > +             tmp->arch.power_off = true;
> > +     kvm_make_all_cpus_request(vcpu->kvm, KVM_REQ_SLEEP);
> > +
> > +     memset(&vcpu->run->system_event, 0, sizeof(vcpu->run->system_event));
> > +     vcpu->run->system_event.type = type;
> > +     vcpu->run->exit_reason = KVM_EXIT_SYSTEM_EVENT;
> > +}
> > +
> > +int kvm_riscv_vcpu_sbi_ecall(struct kvm_vcpu *vcpu)
> > +{
> > +     int ret = 1;
> > +     u64 next_cycle;
> > +     int vcpuid;
> > +     struct kvm_vcpu *remote_vcpu;
> > +     ulong dhart_mask;
> > +     struct kvm_cpu_context *cp = &vcpu->arch.guest_context;
> > +
> > +     if (!cp)
> > +             return -EINVAL;
> > +     switch (cp->a7) {
> > +     case SBI_SET_TIMER:
> > +#if __riscv_xlen == 32
> > +             next_cycle = ((u64)cp->a1 << 32) | (u64)cp->a0;
> > +#else
> > +             next_cycle = (u64)cp->a0;
> > +#endif
> > +             kvm_riscv_vcpu_timer_next_event(vcpu, next_cycle);
>
> Ah, this is where the timer set happens. I still don't understand how
> this takes the frequency bit into account?

Explained it in PATCH17 comments.

>
> > +             break;
> > +     case SBI_CONSOLE_PUTCHAR:
> > +             /* Not implemented */
> > +             cp->a0 = -ENOTSUPP;
> > +             break;
> > +     case SBI_CONSOLE_GETCHAR:
> > +             /* Not implemented */
> > +             cp->a0 = -ENOTSUPP;
> > +             break;
>
> These two should be covered by the default case.

Sure, I will update.

>
> > +     case SBI_CLEAR_IPI:
> > +             kvm_riscv_vcpu_unset_interrupt(vcpu, IRQ_S_SOFT);
> > +             break;
> > +     case SBI_SEND_IPI:
> > +             dhart_mask = kvm_sbi_unpriv_load((unsigned long *)cp->a0, vcpu);
> > +             for_each_set_bit(vcpuid, &dhart_mask, BITS_PER_LONG) {
> > +                     remote_vcpu = kvm_get_vcpu_by_id(vcpu->kvm, vcpuid);
> > +                     kvm_riscv_vcpu_set_interrupt(remote_vcpu, IRQ_S_SOFT);
> > +             }
> > +             break;
> > +     case SBI_SHUTDOWN:
> > +             kvm_sbi_system_shutdown(vcpu, KVM_SYSTEM_EVENT_SHUTDOWN);
> > +             ret = 0;
> > +             break;
> > +     case SBI_REMOTE_FENCE_I:
> > +             sbi_remote_fence_i(NULL);
> > +             break;
> > +     /*
> > +      * TODO: There should be a way to call remote hfence.bvma.
> > +      * Preferred method is now a SBI call. Until then, just flush
> > +      * all tlbs.
> > +      */
> > +     case SBI_REMOTE_SFENCE_VMA:
> > +             /*TODO: Parse vma range.*/
> > +             sbi_remote_sfence_vma(NULL, 0, 0);
> > +             break;
> > +     case SBI_REMOTE_SFENCE_VMA_ASID:
> > +             /*TODO: Parse vma range for given ASID */
> > +             sbi_remote_sfence_vma(NULL, 0, 0);
> > +             break;
> > +     default:
> > +             cp->a0 = ENOTSUPP;
> > +             break;
>
> Please just send unsupported SBI events into user space.

For unsupported SBI calls, we should be returning error to the
Guest Linux so that do something about it. This is in accordance
with the SBI spec.

The SBI v0.1 is quite primitive in design but we have SBI v0.2
base spec now available. The SBI v0.2 is extensible and people
can easily come-up with new set of SBI v0.2 calls (i.e. SBI v0.2
extensions).

We also have SBI v0.2 implementation coming-up in next
series.

Regards,
Anup

>
> Alex
>
> > +     };
> > +
> > +     if (ret >= 0)
> > +             cp->sepc += 4;
> > +
> > +     return ret;
> > +}
> >
>

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
