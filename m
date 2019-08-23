Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 665A89AE4C
	for <lists+linux-riscv@lfdr.de>; Fri, 23 Aug 2019 13:42:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3MLvFErhE9ZJM1NgHe7VTB2GC9whzYhrC2y0OsPuh2I=; b=kd9aapqzr490js
	23Loxx32/Arxpk4O58EFtlmE9tc7OQMuGBoDLuJFBtSokHGtr4kgxAqsqsx1p0G7E+TjS1cKE1/7d
	EpGnP4HtxuLxA0RCdDycJUJKJLzrikpzTw5EBCrrfpEYYeO/t4ThuvpHcKzb/WL+CpyPZDDiX2GgM
	sbWMPJdb00D59kXAZynducd6A7ZB5Pw/u8W60VMNDC7JumvqROMbnWS8LPIK682dx/0xU+ezBL6cq
	3OAhWj2wTE1Vz3kn55+4gqkmvOqy8wF2KtUKV4g7wJP2UYt9rf+53C0GHWSTgMrCRNEq0gjuj5h9e
	+2TZaj55ijfw1u85iQog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i17xf-00039V-4O; Fri, 23 Aug 2019 11:42:31 +0000
Received: from smtp-fw-4101.amazon.com ([72.21.198.25])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i17xb-00039C-W0
 for linux-riscv@lists.infradead.org; Fri, 23 Aug 2019 11:42:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
 t=1566560547; x=1598096547;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=efWf68RHTEU5jfUDP/jimurqpfPCyrlIgwD0X4wcJVg=;
 b=vFkF2h6Nr/ecemEKbelP6HXIzJcVknnzaYUHX+F3VU6oApPIwG6U2I4S
 Ta6I0BhvD9zFypbvura2UDaQ62tphuQrL2uzV+N+WURy0JsBisOhs9y8v
 bQrtbWBy4hyUykjmn+IJsgU5zoA55IO7NzJ/6QxpRKfr3u8uB5QKbXP2b g=;
X-IronPort-AV: E=Sophos;i="5.64,421,1559520000"; d="scan'208";a="780987669"
Received: from iad6-co-svc-p1-lb1-vlan3.amazon.com (HELO
 email-inbound-relay-2b-baacba05.us-west-2.amazon.com) ([10.124.125.6])
 by smtp-border-fw-out-4101.iad4.amazon.com with ESMTP;
 23 Aug 2019 11:42:25 +0000
Received: from EX13MTAUWC001.ant.amazon.com
 (pdx4-ws-svc-p6-lb7-vlan2.pdx.amazon.com [10.170.41.162])
 by email-inbound-relay-2b-baacba05.us-west-2.amazon.com (Postfix) with ESMTPS
 id 7EE04A1EAF; Fri, 23 Aug 2019 11:42:24 +0000 (UTC)
Received: from EX13D20UWC001.ant.amazon.com (10.43.162.244) by
 EX13MTAUWC001.ant.amazon.com (10.43.162.135) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Fri, 23 Aug 2019 11:42:23 +0000
Received: from EX13D20UWC001.ant.amazon.com (10.43.162.244) by
 EX13D20UWC001.ant.amazon.com (10.43.162.244) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Fri, 23 Aug 2019 11:42:23 +0000
Received: from EX13D20UWC001.ant.amazon.com ([10.43.162.244]) by
 EX13D20UWC001.ant.amazon.com ([10.43.162.244]) with mapi id 15.00.1367.000;
 Fri, 23 Aug 2019 11:42:23 +0000
From: "Graf (AWS), Alexander" <graf@amazon.com>
To: Anup Patel <anup@brainfault.org>
Subject: Re: [PATCH v5 08/20] RISC-V: KVM: Implement
 KVM_GET_ONE_REG/KVM_SET_ONE_REG ioctls
Thread-Topic: [PATCH v5 08/20] RISC-V: KVM: Implement
 KVM_GET_ONE_REG/KVM_SET_ONE_REG ioctls
Thread-Index: AQHVWOFJW41zI61GkUGV/QWGSrKC3acHMjmAgAADPoCAAWIugIAABkF9
Date: Fri, 23 Aug 2019 11:42:23 +0000
Message-ID: <D4DA3654-9297-4CE4-8FF6-9BE6E13A89AD@amazon.com>
References: <20190822084131.114764-1-anup.patel@wdc.com>
 <20190822084131.114764-9-anup.patel@wdc.com>
 <d306ffaf-c9ac-4a9f-4382-95001487364d@amazon.com>
 <CAAhSdy0t7P1a_eYmLo9sSYTCbumCqqWcvuv4yJXGCBQOXvw5TQ@mail.gmail.com>
 <2871ee6a-ae7c-6937-e8ef-38a8c318638a@amazon.com>,
 <CAAhSdy05EWBP5Y5oTpW_J6AT=fe=E1UNGXVncsBRWTrr_sgjWw@mail.gmail.com>
In-Reply-To: <CAAhSdy05EWBP5Y5oTpW_J6AT=fe=E1UNGXVncsBRWTrr_sgjWw@mail.gmail.com>
Accept-Language: en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
MIME-Version: 1.0
Precedence: Bulk
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_044228_228944_C025FB05 
X-CRM114-Status: GOOD (  15.63  )
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
 Christoph Hellwig <hch@infradead.org>, Atish Patra <Atish.Patra@wdc.com>,
 Alistair Francis <Alistair.Francis@wdc.com>, Paul
 Walmsley <paul.walmsley@sifive.com>, Paolo Bonzini <pbonzini@redhat.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org



> Am 23.08.2019 um 13:21 schrieb Anup Patel <anup@brainfault.org>:
> 
>> On Thu, Aug 22, 2019 at 7:42 PM Alexander Graf <graf@amazon.com> wrote:
>> 
>> 
>> 
>>> On 22.08.19 16:00, Anup Patel wrote:
>>>> On Thu, Aug 22, 2019 at 5:31 PM Alexander Graf <graf@amazon.com> wrote:
>>>> 
>>>>> On 22.08.19 10:44, Anup Patel wrote:
>>>>> For KVM RISC-V, we use KVM_GET_ONE_REG/KVM_SET_ONE_REG ioctls to access
>>>>> VCPU config and registers from user-space.
>>>>> 
>>>>> We have three types of VCPU registers:
>>>>> 1. CONFIG - these are VCPU config and capabilities
>>>>> 2. CORE   - these are VCPU general purpose registers
>>>>> 3. CSR    - these are VCPU control and status registers
>>>>> 
>>>>> The CONFIG registers available to user-space are ISA and TIMEBASE. Out
>>>>> of these, TIMEBASE is a read-only register which inform user-space about
>>>>> VCPU timer base frequency. The ISA register is a read and write register
>>>>> where user-space can only write the desired VCPU ISA capabilities before
>>>>> running the VCPU.
>>>>> 
>>>>> The CORE registers available to user-space are PC, RA, SP, GP, TP, A0-A7,
>>>>> T0-T6, S0-S11 and MODE. Most of these are RISC-V general registers except
>>>>> PC and MODE. The PC register represents program counter whereas the MODE
>>>>> register represent VCPU privilege mode (i.e. S/U-mode).
>>>>> 
>>>>> The CSRs available to user-space are SSTATUS, SIE, STVEC, SSCRATCH, SEPC,
>>>>> SCAUSE, STVAL, SIP, and SATP. All of these are read/write registers.
>>>>> 
>>>>> In future, more VCPU register types will be added (such as FP) for the
>>>>> KVM_GET_ONE_REG/KVM_SET_ONE_REG ioctls.
>>>>> 
>>>>> Signed-off-by: Anup Patel <anup.patel@wdc.com>
>>>>> Acked-by: Paolo Bonzini <pbonzini@redhat.com>
>>>>> Reviewed-by: Paolo Bonzini <pbonzini@redhat.com>
>>>>> ---
>>>>>   arch/riscv/include/uapi/asm/kvm.h |  40 ++++-
>>>>>   arch/riscv/kvm/vcpu.c             | 235 +++++++++++++++++++++++++++++-
>>>>>   2 files changed, 272 insertions(+), 3 deletions(-)
>>>>> 
>>>>> diff --git a/arch/riscv/include/uapi/asm/kvm.h b/arch/riscv/include/uapi/asm/kvm.h
>>>>> index 6dbc056d58ba..024f220eb17e 100644
>>>>> --- a/arch/riscv/include/uapi/asm/kvm.h
>>>>> +++ b/arch/riscv/include/uapi/asm/kvm.h
>>>>> @@ -23,8 +23,15 @@
>>>>> 
>>>>>   /* for KVM_GET_REGS and KVM_SET_REGS */
>>>>>   struct kvm_regs {
>>>>> +     /* out (KVM_GET_REGS) / in (KVM_SET_REGS) */
>>>>> +     struct user_regs_struct regs;
>>>>> +     unsigned long mode;
>>>> 
>>>> Is there any particular reason you're reusing kvm_regs and don't invent
>>>> your own struct? kvm_regs is explicitly meant for the get_regs and
>>>> set_regs ioctls.
>>> 
>>> We are implementing only ONE_REG interface so most of these
>>> structs are unused hence we tried to reuse these struct instead
>>> of introducing new structs. (Similar to KVM ARM64)
>>> 
>>>> 
>>>>>   };
>>>>> 
>>>>> +/* Possible privilege modes for kvm_regs */
>>>>> +#define KVM_RISCV_MODE_S     1
>>>>> +#define KVM_RISCV_MODE_U     0
>>>>> +
>>>>>   /* for KVM_GET_FPU and KVM_SET_FPU */
>>>>>   struct kvm_fpu {
>>>>>   };
>>>>> @@ -41,10 +48,41 @@ struct kvm_guest_debug_arch {
>>>>>   struct kvm_sync_regs {
>>>>>   };
>>>>> 
>>>>> -/* dummy definition */
>>>>> +/* for KVM_GET_SREGS and KVM_SET_SREGS */
>>>>>   struct kvm_sregs {
>>>>> +     unsigned long sstatus;
>>>>> +     unsigned long sie;
>>>>> +     unsigned long stvec;
>>>>> +     unsigned long sscratch;
>>>>> +     unsigned long sepc;
>>>>> +     unsigned long scause;
>>>>> +     unsigned long stval;
>>>>> +     unsigned long sip;
>>>>> +     unsigned long satp;
>>>> 
>>>> Same comment here.
>>> 
>>> Same as above, we are trying to use unused struct.
>>> 
>>>> 
>>>>>   };
>>>>> 
>>>>> +#define KVM_REG_SIZE(id)             \
>>>>> +     (1U << (((id) & KVM_REG_SIZE_MASK) >> KVM_REG_SIZE_SHIFT))
>>>>> +
>>>>> +/* If you need to interpret the index values, here is the key: */
>>>>> +#define KVM_REG_RISCV_TYPE_MASK              0x00000000FF000000
>>>>> +#define KVM_REG_RISCV_TYPE_SHIFT     24
>>>>> +
>>>>> +/* Config registers are mapped as type 1 */
>>>>> +#define KVM_REG_RISCV_CONFIG         (0x01 << KVM_REG_RISCV_TYPE_SHIFT)
>>>>> +#define KVM_REG_RISCV_CONFIG_ISA     0x0
>>>>> +#define KVM_REG_RISCV_CONFIG_TIMEBASE        0x1
>>>>> +
>>>>> +/* Core registers are mapped as type 2 */
>>>>> +#define KVM_REG_RISCV_CORE           (0x02 << KVM_REG_RISCV_TYPE_SHIFT)
>>>>> +#define KVM_REG_RISCV_CORE_REG(name) \
>>>>> +             (offsetof(struct kvm_regs, name) / sizeof(unsigned long))
>>>> 
>>>> I see, you're trying to implicitly use the struct offsets as index.
>>>> 
>>>> I'm not a really big fan of it, but I can't pinpoint exactly why just
>>>> yet. It just seems too magical (read: potentially breaking down the
>>>> road) for me.
>>>> 
>>>>> +
>>>>> +/* Control and status registers are mapped as type 3 */
>>>>> +#define KVM_REG_RISCV_CSR            (0x03 << KVM_REG_RISCV_TYPE_SHIFT)
>>>>> +#define KVM_REG_RISCV_CSR_REG(name)  \
>>>>> +             (offsetof(struct kvm_sregs, name) / sizeof(unsigned long))
>>>>> +
>>>>>   #endif
>>>>> 
>>>>>   #endif /* __LINUX_KVM_RISCV_H */
>>>>> diff --git a/arch/riscv/kvm/vcpu.c b/arch/riscv/kvm/vcpu.c
>>>>> index 7f59e85c6af8..9396a83c0611 100644
>>>>> --- a/arch/riscv/kvm/vcpu.c
>>>>> +++ b/arch/riscv/kvm/vcpu.c
>>>>> @@ -164,6 +164,215 @@ vm_fault_t kvm_arch_vcpu_fault(struct kvm_vcpu *vcpu, struct vm_fault *vmf)
>>>>>       return VM_FAULT_SIGBUS;
>>>>>   }
>>>>> 
>>>>> +static int kvm_riscv_vcpu_get_reg_config(struct kvm_vcpu *vcpu,
>>>>> +                                      const struct kvm_one_reg *reg)
>>>>> +{
>>>>> +     unsigned long __user *uaddr =
>>>>> +                     (unsigned long __user *)(unsigned long)reg->addr;
>>>>> +     unsigned long reg_num = reg->id & ~(KVM_REG_ARCH_MASK |
>>>>> +                                         KVM_REG_SIZE_MASK |
>>>>> +                                         KVM_REG_RISCV_CONFIG);
>>>>> +     unsigned long reg_val;
>>>>> +
>>>>> +     if (KVM_REG_SIZE(reg->id) != sizeof(unsigned long))
>>>>> +             return -EINVAL;
>>>>> +
>>>>> +     switch (reg_num) {
>>>>> +     case KVM_REG_RISCV_CONFIG_ISA:
>>>>> +             reg_val = vcpu->arch.isa;
>>>>> +             break;
>>>>> +     case KVM_REG_RISCV_CONFIG_TIMEBASE:
>>>>> +             reg_val = riscv_timebase;
>>>> 
>>>> What does this reflect? The current guest time hopefully not? An offset?
>>>> Related to what?
>>> 
>>> riscv_timebase is the frequency in HZ of the system timer.
>>> 
>>> The name "timebase" is not appropriate but we have been
>>> carrying it since quite some time now.
>> 
>> What do you mean by "some time"? So far I only see a kernel internal
>> variable named after it. That's dramatically different from something
>> exposed via uapi.
>> 
>> Just name it tbfreq.
> 
> Sure, I will use TBFREQ name.
> 
>> 
>> So if this is the frequency, where is the offset? You will need it on
>> save/restore. If you're saying that's out of scope for now, that's fine
>> with me too :).
> 
> tbfreq is read-only and fixed.
> 
> The Guest tbfreq has to be same as Host tbfreq. This means we
> can only migrate Guest from Host A to Host B only if:
> 1. They have matching ISA capabilities

That's what we have on almost all archs, it's a fair statement.

> 2. They have matching tbfreq

This was true for most archs in the early virtualization days, but CPU vendors learned since then. It really makes people upset if they can not move their guests to a new CPU.

If you see bits in the spec that are missing (tb freq scaling / trapping on tb reads), please work with the ISA people to resolve them going forward.

Alex

> 
> Regards,
> Anup
> 
>> 
>> 
>> Alex

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
