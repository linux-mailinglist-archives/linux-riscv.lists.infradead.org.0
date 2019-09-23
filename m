Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E4D4BB49C
	for <lists+linux-riscv@lfdr.de>; Mon, 23 Sep 2019 14:59:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YMcEGiFKwuTb1HffpIn0NkiO07HpBN3EblRgBQn9e5o=; b=UY8b17f+N3pyM+
	ILaBQHQOxzFlC/rtppHSqNRhZDj12YKOYGh5m/CUA2rLO3vphh9l3Ps7MLJeupp4u6bFxRvmAuuk8
	E/LeeyN/9irz4SATxkuIMXbuM1xlAZyBaFJ1asS/Bq5O4rLM/qCbNjwXRj4eIcnZbTQ5dD2EB80mc
	6//eLHq+Z/zHWAAUR9hkolfZoXSV1erjwmhpzXG0Sq0pZPGRhHPs7bU7BCYmiEeEchP2uSCFzSPdg
	+J/lC0Ulml9B1vzfUWYNztucSTGPpj7Y0253Y+SbNo5tFxf0NKHTZxegYvVCArFOpHRYlFMQcp5Ns
	OuTAw2AvXm+8BD2BCaYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCNvy-0002Mh-Mb; Mon, 23 Sep 2019 12:59:18 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCNvv-0002M1-BP
 for linux-riscv@lists.infradead.org; Mon, 23 Sep 2019 12:59:16 +0000
Received: by mail-wm1-x343.google.com with SMTP id x2so9840669wmj.2
 for <linux-riscv@lists.infradead.org>; Mon, 23 Sep 2019 05:59:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=HTuM7/0UVWYw13uPzi+JxNLECRLsoMfgODIyjcc3VMA=;
 b=KHxg3sfhcAxqdoLBIjcXRxE8lVWuEiR3G6gv/GECDpR+XLvkcYfONyKgPhyWO12Pxx
 bsoM3Ln/JaM6ElP9GokIc9e7ZaT3JRpe00aXBJLKz3S4DQXQNxqU1l5bED1DlOzaKfAv
 bowzzJgpS8ooLWUkfNkTWPTGzDerYIiFNVxEUOuSQPrnOmYZkyF5nz8STB5vOw1hPANL
 RdGwHspHWsGCDayIoY4pNRNM5sBD17QO/DUasnMzcH5w71bpRyAYsL1/b/Gwe8Qff8yx
 3zGBlhk93p7X7uGHGWFiHM7aznecCqdV8N0avWMGCiIzzgAX63kBE6zAC3k7q6TJLyit
 E2rQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=HTuM7/0UVWYw13uPzi+JxNLECRLsoMfgODIyjcc3VMA=;
 b=H4ysiBqDqjCI9Sekbs0lFFXK2ahpx6OUwjD2rhZcD3LX6eNNoIiSYpiv+O7zhzXw5Y
 dOqRqTJJF8WO9XHTZXgtnKwrfhPpSVGSeoXKEPtcwKOMPZr+9ky+8hWG/sINQER1KgCR
 r9lEO22esV4LowRsa5wOx6g+n1cGifBkuI3NqyCREaMkQYaiuc091uFDajtvc5wBrqfr
 KeChy3qsYuH5FnRjda1k6Q0UEjwSL6PyC1UpRf2PU8zcadHGQ8g3QSSeyWuatUHsSu+9
 Egd/HlJiv3WrCcVuVmHsTHTtKNCgsckRDu6/dXtVsEAhfP3rk1np+LA1Iqkd8UHwm5kB
 3BdA==
X-Gm-Message-State: APjAAAXivuPvytZFj7/hlIS7h5iL6dsumEuNt8eRCphQ+CpQJYtMiDJP
 A8NRs32Dmwa9Z6BpOsTzjQeHlNI1M/Tl/ejAUA69IA==
X-Google-Smtp-Source: APXvYqzh2IBz0cIlPb7hv46bd1P8/dI9ldz/B7wmwEcTK3TnZ6Hf8lVRsJVYT/tG4aQeI5ajqHIpCC6rKKf/Oh9nAIE=
X-Received: by 2002:a1c:5451:: with SMTP id p17mr13776037wmi.103.1569243552938; 
 Mon, 23 Sep 2019 05:59:12 -0700 (PDT)
MIME-Version: 1.0
References: <20190904161245.111924-1-anup.patel@wdc.com>
 <20190904161245.111924-20-anup.patel@wdc.com>
 <d144652e-898b-bf6b-dc73-352fb1fffd40@amazon.com>
In-Reply-To: <d144652e-898b-bf6b-dc73-352fb1fffd40@amazon.com>
From: Anup Patel <anup@brainfault.org>
Date: Mon, 23 Sep 2019 18:29:01 +0530
Message-ID: <CAAhSdy3HE_s5mqGmC0w8WWxJ4C6HJPyo-9Pdc-7snQ4aN9vKOA@mail.gmail.com>
Subject: Re: [PATCH v7 18/21] RISC-V: KVM: Add SBI v0.1 support
To: Alexander Graf <graf@amazon.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_055915_394326_510F080F 
X-CRM114-Status: GOOD (  25.84  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

On Mon, Sep 23, 2019 at 12:31 PM Alexander Graf <graf@amazon.com> wrote:
>
>
>
> On 04.09.19 18:16, Anup Patel wrote:
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
> >   arch/riscv/kvm/vcpu_sbi.c         | 104 ++++++++++++++++++++++++++++++
> >   4 files changed, 110 insertions(+), 1 deletion(-)
> >   create mode 100644 arch/riscv/kvm/vcpu_sbi.c
> >
> > diff --git a/arch/riscv/include/asm/kvm_host.h b/arch/riscv/include/asm/kvm_host.h
> > index 928c67828b1b..269bfa5641b1 100644
> > --- a/arch/riscv/include/asm/kvm_host.h
> > +++ b/arch/riscv/include/asm/kvm_host.h
> > @@ -250,4 +250,6 @@ bool kvm_riscv_vcpu_has_interrupt(struct kvm_vcpu *vcpu);
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
> > index 39469f67b241..0ee4e8943f4f 100644
> > --- a/arch/riscv/kvm/vcpu_exit.c
> > +++ b/arch/riscv/kvm/vcpu_exit.c
> > @@ -594,6 +594,9 @@ int kvm_riscv_vcpu_exit(struct kvm_vcpu *vcpu, struct kvm_run *run,
> >                   (vcpu->arch.guest_context.hstatus & HSTATUS_STL))
> >                       ret = stage2_page_fault(vcpu, run, scause, stval);
> >               break;
> > +     case EXC_SUPERVISOR_SYSCALL:
> > +             if (vcpu->arch.guest_context.hstatus & HSTATUS_SPV)
> > +                     ret = kvm_riscv_vcpu_sbi_ecall(vcpu);
>
> implicit fall-through

Okay, I will add break here.

>
> >       default:
> >               break;
> >       };
> > diff --git a/arch/riscv/kvm/vcpu_sbi.c b/arch/riscv/kvm/vcpu_sbi.c
> > new file mode 100644
> > index 000000000000..b415b8b54bb1
> > --- /dev/null
> > +++ b/arch/riscv/kvm/vcpu_sbi.c
> > @@ -0,0 +1,104 @@
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
>
> Is there a particular reason this has to be implemented in kernel space?

It's not implemented in kernel space. We are forwarding it to user space
using exit reason KVM_EXIT_SYSTEM_EVENT. These exit reason is
arch independent and both QEMU and KVMTOOL already implement
it in arch independent way.

> It's not performance critical and all stopping vcpus is something user
> space should be able to do as well, no?

Yes, it's not performance critical but it's done in user space.

>
> > +}
> > +
> > +int kvm_riscv_vcpu_sbi_ecall(struct kvm_vcpu *vcpu)
> > +{
> > +     int i, ret = 1;
> > +     u64 next_cycle;
> > +     struct kvm_vcpu *rvcpu;
> > +     bool next_sepc = true;
> > +     ulong hmask, ut_scause = 0;
> > +     struct kvm_cpu_context *cp = &vcpu->arch.guest_context;
> > +
> > +     if (!cp)
> > +             return -EINVAL;
> > +
> > +     switch (cp->a7) {
> > +     case SBI_SET_TIMER:
> > +#if __riscv_xlen == 32
> > +             next_cycle = ((u64)cp->a1 << 32) | (u64)cp->a0;
> > +#else
> > +             next_cycle = (u64)cp->a0;
> > +#endif
> > +             kvm_riscv_vcpu_timer_next_event(vcpu, next_cycle);
> > +             break;
> > +     case SBI_CLEAR_IPI:
> > +             kvm_riscv_vcpu_unset_interrupt(vcpu, IRQ_S_SOFT);
> > +             break;
> > +     case SBI_SEND_IPI:
> > +             hmask = kvm_riscv_vcpu_unpriv_read(vcpu, false, cp->a0,
> > +                                                &ut_scause);
> > +             if (ut_scause) {
> > +                     kvm_riscv_vcpu_trap_redirect(vcpu, ut_scause,
> > +                                                  cp->a0);
> > +                     next_sepc = false;
> > +             } else {
> > +                     for_each_set_bit(i, &hmask, BITS_PER_LONG) {
> > +                             rvcpu = kvm_get_vcpu_by_id(vcpu->kvm, i);
> > +                             kvm_riscv_vcpu_set_interrupt(rvcpu, IRQ_S_SOFT);
> > +                     }
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
> > +             /* TODO: Parse vma range. */
> > +             sbi_remote_sfence_vma(NULL, 0, 0);
> > +             break;
> > +     case SBI_REMOTE_SFENCE_VMA_ASID:
> > +             /* TODO: Parse vma range for given ASID */
> > +             sbi_remote_sfence_vma(NULL, 0, 0);
> > +             break;
> > +     default:
> > +             /*
> > +              * For now, just return error to Guest.
> > +              * TODO: In-future, we will route unsupported SBI calls
> > +              * to user-space.
> > +              */
> > +             cp->a0 = -ENOTSUPP;
> > +             break;
> > +     };
> > +
> > +     if (ret >= 0)
> > +             cp->sepc += 4;
>
> I don't see you ever setting ret except for shutdown?
>
> Really, now is the time to plumb SBI calls down to user space. It allows
> you to have a clean shutdown story from day 1.

I agree with you.

I will implement unsupported SBI call forwarding to user-space in v8 series.

Regards,
Anup

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
