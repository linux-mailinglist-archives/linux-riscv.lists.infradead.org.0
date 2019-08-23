Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B30609AF16
	for <lists+linux-riscv@lfdr.de>; Fri, 23 Aug 2019 14:20:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=epo5RZcwWwYlr4lmQfjr3I/WtXaLmOtNN8UlCiDxsEI=; b=oTXipSlO6050p2GJgHBy6GeAg
	L7luEEmDm/FDW2nrMVu1cdiciBkDBlbfLcTNsuZUOUTHkWKsK4d+swK3x0Y3DSG6B8wZZg2Vtsb83
	f1A3deZcDV+XMTIHraEsH2VokSJTAojG+z9FPxediXq2bE8YxSlqprZIjdwqUTr2fA9IPq8DfCxnM
	AFxjcOEv6OexGmbiap+xJsC0l0omFEainoadSMf7Q2UX6b9GZYApLfq6wgxLZX/BHHC6KrxzDffzY
	tWIovy3SKVH0Vanfc2MJ3v5kXhXGqgPlBhX3tTgi92RpTmljFxvK71A79R3JbfKErP8YL6JCzDhqr
	fWb5JjjuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i18Y1-0006JF-VF; Fri, 23 Aug 2019 12:20:06 +0000
Received: from smtp-fw-4101.amazon.com ([72.21.198.25])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i18Xx-0005oX-Gx
 for linux-riscv@lists.infradead.org; Fri, 23 Aug 2019 12:20:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
 t=1566562801; x=1598098801;
 h=subject:to:cc:references:from:message-id:date:
 mime-version:in-reply-to:content-transfer-encoding;
 bh=oQ3SLOXnyDIrdnDqQtKX12htazF7VCNxY5rdgk07Gms=;
 b=SoTe7HmhUn+L+JY5kTyJvIL4NTJiDzUeyyMYA5wfGYnXnxpN8Y59/2Bj
 7KAK2ubwpx4ATuKmeGH/ZONp4J2ft3FA70LmVwIasVjDNKuDyBqahma/i
 T+WCV4C54nh7mvonsLa5LhNkoonmcaZgUqlWh7Muj53O6o6EmUudL2m07 s=;
X-IronPort-AV: E=Sophos;i="5.64,421,1559520000"; d="scan'208";a="781000484"
Received: from iad6-co-svc-p1-lb1-vlan3.amazon.com (HELO
 email-inbound-relay-1a-16acd5e0.us-east-1.amazon.com) ([10.124.125.6])
 by smtp-border-fw-out-4101.iad4.amazon.com with ESMTP;
 23 Aug 2019 12:19:59 +0000
Received: from EX13MTAUWC001.ant.amazon.com
 (iad55-ws-svc-p15-lb9-vlan2.iad.amazon.com [10.40.159.162])
 by email-inbound-relay-1a-16acd5e0.us-east-1.amazon.com (Postfix) with ESMTPS
 id 597AAA2C68; Fri, 23 Aug 2019 12:19:55 +0000 (UTC)
Received: from EX13D20UWC001.ant.amazon.com (10.43.162.244) by
 EX13MTAUWC001.ant.amazon.com (10.43.162.135) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Fri, 23 Aug 2019 12:19:54 +0000
Received: from 38f9d3867b82.ant.amazon.com (10.43.161.214) by
 EX13D20UWC001.ant.amazon.com (10.43.162.244) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Fri, 23 Aug 2019 12:19:50 +0000
Subject: Re: [PATCH v5 18/20] RISC-V: KVM: Add SBI v0.1 support
To: Anup Patel <anup@brainfault.org>
References: <20190822084131.114764-1-anup.patel@wdc.com>
 <20190822084131.114764-19-anup.patel@wdc.com>
 <40911e08-e0ce-a2b8-24d4-9cf357432850@amazon.com>
 <CAAhSdy3CvvYh59c=OomLZgweWREBhJj_eeH80OkU=7MMCwyiCQ@mail.gmail.com>
 <B29D1609-18FC-4327-8B34-33CB914042E7@amazon.com>
 <CAAhSdy2eVDqCDnFT9WrboQn+ERhwDFU6UtBaCQp_C7HshLZ+Yw@mail.gmail.com>
From: Alexander Graf <graf@amazon.com>
Message-ID: <aa686ffb-d70e-2838-6dd9-6a1193470a11@amazon.com>
Date: Fri, 23 Aug 2019 14:19:48 +0200
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAAhSdy2eVDqCDnFT9WrboQn+ERhwDFU6UtBaCQp_C7HshLZ+Yw@mail.gmail.com>
Content-Language: en-US
X-Originating-IP: [10.43.161.214]
X-ClientProxiedBy: EX13D13UWB001.ant.amazon.com (10.43.161.156) To
 EX13D20UWC001.ant.amazon.com (10.43.162.244)
Precedence: Bulk
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_052001_769777_777DA067 
X-CRM114-Status: GOOD (  26.95  )
X-Spam-Score: -12.7 (------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-12.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [72.21.198.25 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-riscv@lists.infradead.org
X-Mailman-Version: 2.1.29
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
 Christoph Hellwig <hch@infradead.org>, Atish
 Patra <Atish.Patra@wdc.com>, Alistair Francis <Alistair.Francis@wdc.com>, Paul
 Walmsley <paul.walmsley@sifive.com>, Paolo Bonzini <pbonzini@redhat.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org



On 23.08.19 14:00, Anup Patel wrote:
> On Fri, Aug 23, 2019 at 5:09 PM Graf (AWS), Alexander <graf@amazon.com> wrote:
>>
>>
>>
>>> Am 23.08.2019 um 13:18 schrieb Anup Patel <anup@brainfault.org>:
>>>
>>>> On Fri, Aug 23, 2019 at 1:34 PM Alexander Graf <graf@amazon.com> wrote:
>>>>
>>>>> On 22.08.19 10:46, Anup Patel wrote:
>>>>> From: Atish Patra <atish.patra@wdc.com>
>>>>>
>>>>> The KVM host kernel running in HS-mode needs to handle SBI calls coming
>>>>> from guest kernel running in VS-mode.
>>>>>
>>>>> This patch adds SBI v0.1 support in KVM RISC-V. All the SBI calls are
>>>>> implemented correctly except remote tlb flushes. For remote TLB flushes,
>>>>> we are doing full TLB flush and this will be optimized in future.
>>>>>
>>>>> Signed-off-by: Atish Patra <atish.patra@wdc.com>
>>>>> Signed-off-by: Anup Patel <anup.patel@wdc.com>
>>>>> Acked-by: Paolo Bonzini <pbonzini@redhat.com>
>>>>> Reviewed-by: Paolo Bonzini <pbonzini@redhat.com>
>>>>> ---
>>>>>   arch/riscv/include/asm/kvm_host.h |   2 +
>>>>>   arch/riscv/kvm/Makefile           |   2 +-
>>>>>   arch/riscv/kvm/vcpu_exit.c        |   3 +
>>>>>   arch/riscv/kvm/vcpu_sbi.c         | 119 ++++++++++++++++++++++++++++++
>>>>>   4 files changed, 125 insertions(+), 1 deletion(-)
>>>>>   create mode 100644 arch/riscv/kvm/vcpu_sbi.c
>>>>>
>>>>> diff --git a/arch/riscv/include/asm/kvm_host.h b/arch/riscv/include/asm/kvm_host.h
>>>>> index 2af3a179c08e..0b1eceaef59f 100644
>>>>> --- a/arch/riscv/include/asm/kvm_host.h
>>>>> +++ b/arch/riscv/include/asm/kvm_host.h
>>>>> @@ -241,4 +241,6 @@ bool kvm_riscv_vcpu_has_interrupt(struct kvm_vcpu *vcpu);
>>>>>   void kvm_riscv_vcpu_power_off(struct kvm_vcpu *vcpu);
>>>>>   void kvm_riscv_vcpu_power_on(struct kvm_vcpu *vcpu);
>>>>>
>>>>> +int kvm_riscv_vcpu_sbi_ecall(struct kvm_vcpu *vcpu);
>>>>> +
>>>>>   #endif /* __RISCV_KVM_HOST_H__ */
>>>>> diff --git a/arch/riscv/kvm/Makefile b/arch/riscv/kvm/Makefile
>>>>> index 3e0c7558320d..b56dc1650d2c 100644
>>>>> --- a/arch/riscv/kvm/Makefile
>>>>> +++ b/arch/riscv/kvm/Makefile
>>>>> @@ -9,6 +9,6 @@ ccflags-y := -Ivirt/kvm -Iarch/riscv/kvm
>>>>>   kvm-objs := $(common-objs-y)
>>>>>
>>>>>   kvm-objs += main.o vm.o vmid.o tlb.o mmu.o
>>>>> -kvm-objs += vcpu.o vcpu_exit.o vcpu_switch.o vcpu_timer.o
>>>>> +kvm-objs += vcpu.o vcpu_exit.o vcpu_switch.o vcpu_timer.o vcpu_sbi.o
>>>>>
>>>>>   obj-$(CONFIG_KVM)   += kvm.o
>>>>> diff --git a/arch/riscv/kvm/vcpu_exit.c b/arch/riscv/kvm/vcpu_exit.c
>>>>> index fbc04fe335ad..87b83fcf9a14 100644
>>>>> --- a/arch/riscv/kvm/vcpu_exit.c
>>>>> +++ b/arch/riscv/kvm/vcpu_exit.c
>>>>> @@ -534,6 +534,9 @@ int kvm_riscv_vcpu_exit(struct kvm_vcpu *vcpu, struct kvm_run *run,
>>>>>                   (vcpu->arch.guest_context.hstatus & HSTATUS_STL))
>>>>>                       ret = stage2_page_fault(vcpu, run, scause, stval);
>>>>>               break;
>>>>> +     case EXC_SUPERVISOR_SYSCALL:
>>>>> +             if (vcpu->arch.guest_context.hstatus & HSTATUS_SPV)
>>>>> +                     ret = kvm_riscv_vcpu_sbi_ecall(vcpu);
>>>>>       default:
>>>>>               break;
>>>>>       };
>>>>> diff --git a/arch/riscv/kvm/vcpu_sbi.c b/arch/riscv/kvm/vcpu_sbi.c
>>>>> new file mode 100644
>>>>> index 000000000000..5793202eb514
>>>>> --- /dev/null
>>>>> +++ b/arch/riscv/kvm/vcpu_sbi.c
>>>>> @@ -0,0 +1,119 @@
>>>>> +// SPDX-License-Identifier: GPL-2.0
>>>>> +/**
>>>>> + * Copyright (c) 2019 Western Digital Corporation or its affiliates.
>>>>> + *
>>>>> + * Authors:
>>>>> + *     Atish Patra <atish.patra@wdc.com>
>>>>> + */
>>>>> +
>>>>> +#include <linux/errno.h>
>>>>> +#include <linux/err.h>
>>>>> +#include <linux/kvm_host.h>
>>>>> +#include <asm/csr.h>
>>>>> +#include <asm/kvm_vcpu_timer.h>
>>>>> +
>>>>> +#define SBI_VERSION_MAJOR                    0
>>>>> +#define SBI_VERSION_MINOR                    1
>>>>> +
>>>>> +/* TODO: Handle traps due to unpriv load and redirect it back to VS-mode */
>>>>
>>>> Ugh, another one of those? Can't you just figure out a way to recover
>>>> from the page fault? Also, you want to combine this with the instruction
>>>> load logic, so that we have a single place that guest address space
>>>> reads go through.
>>>
>>> Walking Guest page table would be more expensive compared to implementing
>>> a trap handling mechanism.
>>>
>>> We will be adding trap handling mechanism for reading instruction and reading
>>> load.
>>>
>>> Both these operations are different in following ways:
>>> 1. RISC-V instructions are variable length. We get to know exact instruction
>>>     length only after reading first 16bits
>>> 2. We need to set VSSTATUS.MXR bit when reading instruction for
>>>     execute-only Guest pages.
>>
>> Yup, sounds like you could solve that with a trivial if() based on "read instruction" or not, no? If you want to, feel free to provide short versions that do only read ins/data, but I would really like to see the whole "data reads become guest reads" magic to be funneled through a single function (in C, can be inline unrolled in asm of course)
>>
>>>
>>>>
>>>>> +static unsigned long kvm_sbi_unpriv_load(const unsigned long *addr,
>>>>> +                                      struct kvm_vcpu *vcpu)
>>>>> +{
>>>>> +     unsigned long flags, val;
>>>>> +     unsigned long __hstatus, __sstatus;
>>>>> +
>>>>> +     local_irq_save(flags);
>>>>> +     __hstatus = csr_read(CSR_HSTATUS);
>>>>> +     __sstatus = csr_read(CSR_SSTATUS);
>>>>> +     csr_write(CSR_HSTATUS, vcpu->arch.guest_context.hstatus | HSTATUS_SPRV);
>>>>> +     csr_write(CSR_SSTATUS, vcpu->arch.guest_context.sstatus);
>>>>> +     val = *addr;
>>>>> +     csr_write(CSR_HSTATUS, __hstatus);
>>>>> +     csr_write(CSR_SSTATUS, __sstatus);
>>>>> +     local_irq_restore(flags);
>>>>> +
>>>>> +     return val;
>>>>> +}
>>>>> +
>>>>> +static void kvm_sbi_system_shutdown(struct kvm_vcpu *vcpu, u32 type)
>>>>> +{
>>>>> +     int i;
>>>>> +     struct kvm_vcpu *tmp;
>>>>> +
>>>>> +     kvm_for_each_vcpu(i, tmp, vcpu->kvm)
>>>>> +             tmp->arch.power_off = true;
>>>>> +     kvm_make_all_cpus_request(vcpu->kvm, KVM_REQ_SLEEP);
>>>>> +
>>>>> +     memset(&vcpu->run->system_event, 0, sizeof(vcpu->run->system_event));
>>>>> +     vcpu->run->system_event.type = type;
>>>>> +     vcpu->run->exit_reason = KVM_EXIT_SYSTEM_EVENT;
>>>>> +}
>>>>> +
>>>>> +int kvm_riscv_vcpu_sbi_ecall(struct kvm_vcpu *vcpu)
>>>>> +{
>>>>> +     int ret = 1;
>>>>> +     u64 next_cycle;
>>>>> +     int vcpuid;
>>>>> +     struct kvm_vcpu *remote_vcpu;
>>>>> +     ulong dhart_mask;
>>>>> +     struct kvm_cpu_context *cp = &vcpu->arch.guest_context;
>>>>> +
>>>>> +     if (!cp)
>>>>> +             return -EINVAL;
>>>>> +     switch (cp->a7) {
>>>>> +     case SBI_SET_TIMER:
>>>>> +#if __riscv_xlen == 32
>>>>> +             next_cycle = ((u64)cp->a1 << 32) | (u64)cp->a0;
>>>>> +#else
>>>>> +             next_cycle = (u64)cp->a0;
>>>>> +#endif
>>>>> +             kvm_riscv_vcpu_timer_next_event(vcpu, next_cycle);
>>>>
>>>> Ah, this is where the timer set happens. I still don't understand how
>>>> this takes the frequency bit into account?
>>>
>>> Explained it in PATCH17 comments.
>>>
>>>>
>>>>> +             break;
>>>>> +     case SBI_CONSOLE_PUTCHAR:
>>>>> +             /* Not implemented */
>>>>> +             cp->a0 = -ENOTSUPP;
>>>>> +             break;
>>>>> +     case SBI_CONSOLE_GETCHAR:
>>>>> +             /* Not implemented */
>>>>> +             cp->a0 = -ENOTSUPP;
>>>>> +             break;
>>>>
>>>> These two should be covered by the default case.
>>>
>>> Sure, I will update.
>>>
>>>>
>>>>> +     case SBI_CLEAR_IPI:
>>>>> +             kvm_riscv_vcpu_unset_interrupt(vcpu, IRQ_S_SOFT);
>>>>> +             break;
>>>>> +     case SBI_SEND_IPI:
>>>>> +             dhart_mask = kvm_sbi_unpriv_load((unsigned long *)cp->a0, vcpu);
>>>>> +             for_each_set_bit(vcpuid, &dhart_mask, BITS_PER_LONG) {
>>>>> +                     remote_vcpu = kvm_get_vcpu_by_id(vcpu->kvm, vcpuid);
>>>>> +                     kvm_riscv_vcpu_set_interrupt(remote_vcpu, IRQ_S_SOFT);
>>>>> +             }
>>>>> +             break;
>>>>> +     case SBI_SHUTDOWN:
>>>>> +             kvm_sbi_system_shutdown(vcpu, KVM_SYSTEM_EVENT_SHUTDOWN);
>>>>> +             ret = 0;
>>>>> +             break;
>>>>> +     case SBI_REMOTE_FENCE_I:
>>>>> +             sbi_remote_fence_i(NULL);
>>>>> +             break;
>>>>> +     /*
>>>>> +      * TODO: There should be a way to call remote hfence.bvma.
>>>>> +      * Preferred method is now a SBI call. Until then, just flush
>>>>> +      * all tlbs.
>>>>> +      */
>>>>> +     case SBI_REMOTE_SFENCE_VMA:
>>>>> +             /*TODO: Parse vma range.*/
>>>>> +             sbi_remote_sfence_vma(NULL, 0, 0);
>>>>> +             break;
>>>>> +     case SBI_REMOTE_SFENCE_VMA_ASID:
>>>>> +             /*TODO: Parse vma range for given ASID */
>>>>> +             sbi_remote_sfence_vma(NULL, 0, 0);
>>>>> +             break;
>>>>> +     default:
>>>>> +             cp->a0 = ENOTSUPP;
>>>>> +             break;
>>>>
>>>> Please just send unsupported SBI events into user space.
>>>
>>> For unsupported SBI calls, we should be returning error to the
>>> Guest Linux so that do something about it. This is in accordance
>>> with the SBI spec.
>>
>> That's up to user space (QEMU / kvmtool) to decide. If user space wants to implement the  console functions (like we do on s390), it should have the chance to do so.
> 
> The SBI_CONSOLE_PUTCHAR and SBI_CONSOLE_GETCHAR are
> for debugging only. These calls are deprecated in SBI v0.2 onwards
> because we now have earlycon for early prints in Linux RISC-V.
> 
> The RISC-V Guest will generally have it's own MMIO based UART
> which will be the default console.
> 
> Due to these reasons, we have not implemented these SBI calls.

I'm not saying we should implement them. I'm saying we should leave a 
policy decision like that up to user space. By terminating the SBI in 
kernel space, you can not quickly debug something going wrong.

> If we still want user-space to implement this then we will require
> separate exit reasons and we are trying to avoid adding RISC-V
> specific exit reasons/ioctls in KVM user-space ABI.

Why?

I had so many occasions where I would have loved to have user space 
exits for MSR access, SPR access, hypercalls, etc etc. It really makes 
life so much easier when you can quickly hack something up in user space 
rather than modify the kernel.

> The absence of SBI_CONSOLE_PUTCHAR/GETCHAR certainly
> does not block anyone in debugging Guest Linux because we have
> earlycon support in Linux RISC-V.

I'm not hung on on the console. What I'm trying to express is a general 
sentiment that terminating extensible hypervisor <-> guest interfaces in 
kvm is not a great idea. Some times we can't get around it (like on page 
tables), but some times we do. And this is a case where we could.

At the end of the day this is your call though :).


Alex

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
