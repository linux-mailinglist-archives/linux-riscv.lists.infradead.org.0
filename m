Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87508995D4
	for <lists+linux-riscv@lfdr.de>; Thu, 22 Aug 2019 16:06:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h4o3M9KafdWQLU1/HVTTGKACcYtjlUOGQLNhYNqD7lA=; b=CgDiRsJ8T6xtzt
	CzR+/oLnu6GyOpvHpg/DzrxX88oeu0Sgshf95lMG+XVaRvgp35wSSSMkrYn+Y2AZxgZqZ+IT9L4mA
	WO5DUYufjtt8BNcR6W5kbpVawkMGpT5nhG9+F8kYrreorLgULLSzKIybMfDRFB1c36vk/n0uj9sHA
	zoEwUvzsEKgWV8qN9cj0Z0ibZPAwgG+mU1zgZn81Nuz8ZuuXyPEnnCyc5clGJT/Gbl074N7GLDwPy
	KqMhYU8Hk8MvJalidHFON1zgtUfoYCrOM721302Z53tNRWZdb2cXFmAFdLHd8CLKo/obfW37EE2sk
	O3UpJda6vb13dCQbX7UA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0njD-0002QU-BF; Thu, 22 Aug 2019 14:06:15 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0nj9-0002Q2-75
 for linux-riscv@lists.infradead.org; Thu, 22 Aug 2019 14:06:13 +0000
Received: by mail-wm1-x344.google.com with SMTP id d16so5934412wme.2
 for <linux-riscv@lists.infradead.org>; Thu, 22 Aug 2019 07:06:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=UhoJNwk+jD3IPeIWcY04TZ0CQ+4XcqjycjVm4Ee5JqM=;
 b=aA9ctZLv1KSZzykJqRoxgVFGFR8QZAa8YQnkcKF4MiB5Q0ftjEMtJHhJeTe6IZhRpU
 GgFZBDuAguqnMKN8CWXPkt+Z+WaDCV/k1cLdewkTeAHjD5BbQCBMayQ8IVXj1Ha34mCM
 Z7Fa1cdNMMLBSZ7iKjM83NRrNiclr5Oj+hzM9kRdyVNXjLcW95IQmQn9HuPdMvseke0B
 fupSB091l/7cRMYwfZ6zYJMBZ9WXx2GWgnN9utyXYlLm0v2if0jLIq2nId3u73L26VwB
 KueBieSDp1TTJeNZIXgmjN1QyDzvcTa4XktsLQgNtneT3LrYWqi39m88TVOvoUPo0h3O
 T98g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=UhoJNwk+jD3IPeIWcY04TZ0CQ+4XcqjycjVm4Ee5JqM=;
 b=RK5sMWC03tKcHWfGXCegOJaTrLFUB9MEEhoQnT+AsUBlM3mrJs840hoo0jClKpJsrC
 o1IQ67ildua1kkiTg+ADfedomXbPE/kXqfOKlpW2iQjH+KwraqzM5E01lpWICHrkLQkZ
 9rbGQKrmosj+dYgfJKvWovWFe+0lRph0dSZO4hvLOv/m0mhAemnG7m/zl2l63qLsQt4C
 d4kaBvgKuK3x8rJBaS88hpz8f1VkCy/Yt9gDL1fMY4kv/YGDsxLen7jOay+52f9jpk2n
 KMI4Ps8s899tjNgcax5cWSj8ue/D2LryMHgHeztNHu0Te8MpxICmpOXXqDG5NjYFCOJb
 FmeA==
X-Gm-Message-State: APjAAAXOiv5lF3qB/Fn6ivd9jJ3rzBV0xsYXtfBZEJYy2ab1FKtKa+xE
 vj7kDVzupj2UCK5qMtxnZ/BwluC2qWqNzXInE0plQw==
X-Google-Smtp-Source: APXvYqyrQnFiJb8lAHnaPDWf5G+Ck0+0M5Z1aUnQf8yzsNtKJP+DsVOzfNGS84Yq2DYEOOGkZTCgtv8cYLwXU7yyMyY=
X-Received: by 2002:a7b:c933:: with SMTP id h19mr6380815wml.177.1566482769663; 
 Thu, 22 Aug 2019 07:06:09 -0700 (PDT)
MIME-Version: 1.0
References: <20190822084131.114764-1-anup.patel@wdc.com>
 <20190822084131.114764-9-anup.patel@wdc.com>
 <d306ffaf-c9ac-4a9f-4382-95001487364d@amazon.com>
In-Reply-To: <d306ffaf-c9ac-4a9f-4382-95001487364d@amazon.com>
From: Anup Patel <anup@brainfault.org>
Date: Thu, 22 Aug 2019 19:35:58 +0530
Message-ID: <CAAhSdy1zKY44BGjp0FQrnPpmMFr2AuS9osumCr8BmjF5TPX=gw@mail.gmail.com>
Subject: Re: [PATCH v5 08/20] RISC-V: KVM: Implement
 KVM_GET_ONE_REG/KVM_SET_ONE_REG ioctls
To: Alexander Graf <graf@amazon.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_070611_383054_4AE38F1F 
X-CRM114-Status: GOOD (  26.63  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
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

On Thu, Aug 22, 2019 at 5:31 PM Alexander Graf <graf@amazon.com> wrote:
>
> On 22.08.19 10:44, Anup Patel wrote:
> > For KVM RISC-V, we use KVM_GET_ONE_REG/KVM_SET_ONE_REG ioctls to access
> > VCPU config and registers from user-space.
> >
> > We have three types of VCPU registers:
> > 1. CONFIG - these are VCPU config and capabilities
> > 2. CORE   - these are VCPU general purpose registers
> > 3. CSR    - these are VCPU control and status registers
> >
> > The CONFIG registers available to user-space are ISA and TIMEBASE. Out
> > of these, TIMEBASE is a read-only register which inform user-space about
> > VCPU timer base frequency. The ISA register is a read and write register
> > where user-space can only write the desired VCPU ISA capabilities before
> > running the VCPU.
> >
> > The CORE registers available to user-space are PC, RA, SP, GP, TP, A0-A7,
> > T0-T6, S0-S11 and MODE. Most of these are RISC-V general registers except
> > PC and MODE. The PC register represents program counter whereas the MODE
> > register represent VCPU privilege mode (i.e. S/U-mode).
> >
> > The CSRs available to user-space are SSTATUS, SIE, STVEC, SSCRATCH, SEPC,
> > SCAUSE, STVAL, SIP, and SATP. All of these are read/write registers.
> >
> > In future, more VCPU register types will be added (such as FP) for the
> > KVM_GET_ONE_REG/KVM_SET_ONE_REG ioctls.
> >
> > Signed-off-by: Anup Patel <anup.patel@wdc.com>
> > Acked-by: Paolo Bonzini <pbonzini@redhat.com>
> > Reviewed-by: Paolo Bonzini <pbonzini@redhat.com>
> > ---
> >   arch/riscv/include/uapi/asm/kvm.h |  40 ++++-
> >   arch/riscv/kvm/vcpu.c             | 235 +++++++++++++++++++++++++++++-
> >   2 files changed, 272 insertions(+), 3 deletions(-)
> >
> > diff --git a/arch/riscv/include/uapi/asm/kvm.h b/arch/riscv/include/uapi/asm/kvm.h
> > index 6dbc056d58ba..024f220eb17e 100644
> > --- a/arch/riscv/include/uapi/asm/kvm.h
> > +++ b/arch/riscv/include/uapi/asm/kvm.h
> > @@ -23,8 +23,15 @@
> >
> >   /* for KVM_GET_REGS and KVM_SET_REGS */
> >   struct kvm_regs {
> > +     /* out (KVM_GET_REGS) / in (KVM_SET_REGS) */
> > +     struct user_regs_struct regs;
> > +     unsigned long mode;
>
> Is there any particular reason you're reusing kvm_regs and don't invent
> your own struct? kvm_regs is explicitly meant for the get_regs and
> set_regs ioctls.
>
> >   };
> >
> > +/* Possible privilege modes for kvm_regs */
> > +#define KVM_RISCV_MODE_S     1
> > +#define KVM_RISCV_MODE_U     0
> > +
> >   /* for KVM_GET_FPU and KVM_SET_FPU */
> >   struct kvm_fpu {
> >   };
> > @@ -41,10 +48,41 @@ struct kvm_guest_debug_arch {
> >   struct kvm_sync_regs {
> >   };
> >
> > -/* dummy definition */
> > +/* for KVM_GET_SREGS and KVM_SET_SREGS */
> >   struct kvm_sregs {
> > +     unsigned long sstatus;
> > +     unsigned long sie;
> > +     unsigned long stvec;
> > +     unsigned long sscratch;
> > +     unsigned long sepc;
> > +     unsigned long scause;
> > +     unsigned long stval;
> > +     unsigned long sip;
> > +     unsigned long satp;
>
> Same comment here.
>
> >   };
> >
> > +#define KVM_REG_SIZE(id)             \
> > +     (1U << (((id) & KVM_REG_SIZE_MASK) >> KVM_REG_SIZE_SHIFT))
> > +
> > +/* If you need to interpret the index values, here is the key: */
> > +#define KVM_REG_RISCV_TYPE_MASK              0x00000000FF000000
> > +#define KVM_REG_RISCV_TYPE_SHIFT     24
> > +
> > +/* Config registers are mapped as type 1 */
> > +#define KVM_REG_RISCV_CONFIG         (0x01 << KVM_REG_RISCV_TYPE_SHIFT)
> > +#define KVM_REG_RISCV_CONFIG_ISA     0x0
> > +#define KVM_REG_RISCV_CONFIG_TIMEBASE        0x1
> > +
> > +/* Core registers are mapped as type 2 */
> > +#define KVM_REG_RISCV_CORE           (0x02 << KVM_REG_RISCV_TYPE_SHIFT)
> > +#define KVM_REG_RISCV_CORE_REG(name) \
> > +             (offsetof(struct kvm_regs, name) / sizeof(unsigned long))
>
> I see, you're trying to implicitly use the struct offsets as index.
>
> I'm not a really big fan of it, but I can't pinpoint exactly why just
> yet. It just seems too magical (read: potentially breaking down the
> road) for me.
>
> > +
> > +/* Control and status registers are mapped as type 3 */
> > +#define KVM_REG_RISCV_CSR            (0x03 << KVM_REG_RISCV_TYPE_SHIFT)
> > +#define KVM_REG_RISCV_CSR_REG(name)  \
> > +             (offsetof(struct kvm_sregs, name) / sizeof(unsigned long))
> > +
> >   #endif
> >
> >   #endif /* __LINUX_KVM_RISCV_H */
> > diff --git a/arch/riscv/kvm/vcpu.c b/arch/riscv/kvm/vcpu.c
> > index 7f59e85c6af8..9396a83c0611 100644
> > --- a/arch/riscv/kvm/vcpu.c
> > +++ b/arch/riscv/kvm/vcpu.c
> > @@ -164,6 +164,215 @@ vm_fault_t kvm_arch_vcpu_fault(struct kvm_vcpu *vcpu, struct vm_fault *vmf)
> >       return VM_FAULT_SIGBUS;
> >   }
> >
> > +static int kvm_riscv_vcpu_get_reg_config(struct kvm_vcpu *vcpu,
> > +                                      const struct kvm_one_reg *reg)
> > +{
> > +     unsigned long __user *uaddr =
> > +                     (unsigned long __user *)(unsigned long)reg->addr;
> > +     unsigned long reg_num = reg->id & ~(KVM_REG_ARCH_MASK |
> > +                                         KVM_REG_SIZE_MASK |
> > +                                         KVM_REG_RISCV_CONFIG);
> > +     unsigned long reg_val;
> > +
> > +     if (KVM_REG_SIZE(reg->id) != sizeof(unsigned long))
> > +             return -EINVAL;
> > +
> > +     switch (reg_num) {
> > +     case KVM_REG_RISCV_CONFIG_ISA:
> > +             reg_val = vcpu->arch.isa;
> > +             break;
> > +     case KVM_REG_RISCV_CONFIG_TIMEBASE:
> > +             reg_val = riscv_timebase;
>
> What does this reflect? The current guest time hopefully not? An offset?
> Related to what?
>
> All ONE_REG registers should be documented in
> Documentation/virtual/kvm/api.txt. Please add them there.
>
> > +             break;
> > +     default:
> > +             return -EINVAL;
> > +     };
> > +
> > +     if (copy_to_user(uaddr, &reg_val, KVM_REG_SIZE(reg->id)))
> > +             return -EFAULT;
> > +
> > +     return 0;
> > +}
> > +
> > +static int kvm_riscv_vcpu_set_reg_config(struct kvm_vcpu *vcpu,
> > +                                      const struct kvm_one_reg *reg)
> > +{
> > +     unsigned long __user *uaddr =
> > +                     (unsigned long __user *)(unsigned long)reg->addr;
> > +     unsigned long reg_num = reg->id & ~(KVM_REG_ARCH_MASK |
> > +                                         KVM_REG_SIZE_MASK |
> > +                                         KVM_REG_RISCV_CONFIG);
> > +     unsigned long reg_val;
> > +
> > +     if (KVM_REG_SIZE(reg->id) != sizeof(unsigned long))
> > +             return -EINVAL;
> > +
> > +     if (copy_from_user(&reg_val, uaddr, KVM_REG_SIZE(reg->id)))
> > +             return -EFAULT;
> > +
> > +     switch (reg_num) {
> > +     case KVM_REG_RISCV_CONFIG_ISA:
> > +             if (!vcpu->arch.ran_atleast_once) {
> > +                     vcpu->arch.isa = reg_val;
> > +                     vcpu->arch.isa &= riscv_isa_extension_base(NULL);
> > +                     vcpu->arch.isa &= KVM_RISCV_ISA_ALLOWED;
>
> This register definitely needs proper documentation too ;). You may want
> to reconsider to put a few of the helper bits from patch 02/20 into
> uapi, so that user space can directly use them.
>
> > +             } else {
> > +                     return -ENOTSUPP;
> > +             }
> > +             break;
> > +     case KVM_REG_RISCV_CONFIG_TIMEBASE:
> > +             return -ENOTSUPP;
> > +     default:
> > +             return -EINVAL;
> > +     };
> > +
> > +     return 0;
> > +}
> > +
> > +static int kvm_riscv_vcpu_get_reg_core(struct kvm_vcpu *vcpu,
> > +                                    const struct kvm_one_reg *reg)
> > +{
> > +     struct kvm_cpu_context *cntx = &vcpu->arch.guest_context;
> > +     unsigned long __user *uaddr =
> > +                     (unsigned long __user *)(unsigned long)reg->addr;
> > +     unsigned long reg_num = reg->id & ~(KVM_REG_ARCH_MASK |
> > +                                         KVM_REG_SIZE_MASK |
> > +                                         KVM_REG_RISCV_CORE);
> > +     unsigned long reg_val;
> > +
> > +     if (KVM_REG_SIZE(reg->id) != sizeof(unsigned long))
> > +             return -EINVAL;
> > +
> > +     if (reg_num == KVM_REG_RISCV_CORE_REG(regs.pc))
> > +             reg_val = cntx->sepc;
> > +     else if (KVM_REG_RISCV_CORE_REG(regs.pc) < reg_num &&
> > +              reg_num <= KVM_REG_RISCV_CORE_REG(regs.t6))
> > +             reg_val = ((unsigned long *)cntx)[reg_num];
> > +     else if (reg_num == KVM_REG_RISCV_CORE_REG(mode))
> > +             reg_val = (cntx->sstatus & SR_SPP) ?
> > +                             KVM_RISCV_MODE_S : KVM_RISCV_MODE_U;
> > +     else
> > +             return -EINVAL;
> > +
> > +     if (copy_to_user(uaddr, &reg_val, KVM_REG_SIZE(reg->id)))
> > +             return -EFAULT;
> > +
> > +     return 0;
> > +}
> > +
> > +static int kvm_riscv_vcpu_set_reg_core(struct kvm_vcpu *vcpu,
> > +                                    const struct kvm_one_reg *reg)
> > +{
> > +     struct kvm_cpu_context *cntx = &vcpu->arch.guest_context;
> > +     unsigned long __user *uaddr =
> > +                     (unsigned long __user *)(unsigned long)reg->addr;
> > +     unsigned long reg_num = reg->id & ~(KVM_REG_ARCH_MASK |
> > +                                         KVM_REG_SIZE_MASK |
> > +                                         KVM_REG_RISCV_CORE);
> > +     unsigned long reg_val;
> > +
> > +     if (KVM_REG_SIZE(reg->id) != sizeof(unsigned long))
> > +             return -EINVAL;
> > +
> > +     if (copy_from_user(&reg_val, uaddr, KVM_REG_SIZE(reg->id)))
> > +             return -EFAULT;
> > +
> > +     if (reg_num == KVM_REG_RISCV_CORE_REG(regs.pc))
> > +             cntx->sepc = reg_val;
> > +     else if (KVM_REG_RISCV_CORE_REG(regs.pc) < reg_num &&
> > +              reg_num <= KVM_REG_RISCV_CORE_REG(regs.t6))
> > +             ((unsigned long *)cntx)[reg_num] = reg_val;
> > +     else if (reg_num == KVM_REG_RISCV_CORE_REG(mode)) {
> > +             if (reg_val == KVM_RISCV_MODE_S)
> > +                     cntx->sstatus |= SR_SPP;
> > +             else
> > +                     cntx->sstatus &= ~SR_SPP;
> > +     } else
> > +             return -EINVAL;
> > +
> > +     return 0;
> > +}
> > +
> > +static int kvm_riscv_vcpu_get_reg_csr(struct kvm_vcpu *vcpu,
> > +                                   const struct kvm_one_reg *reg)
> > +{
> > +     struct kvm_vcpu_csr *csr = &vcpu->arch.guest_csr;
> > +     unsigned long __user *uaddr =
> > +                     (unsigned long __user *)(unsigned long)reg->addr;
> > +     unsigned long reg_num = reg->id & ~(KVM_REG_ARCH_MASK |
> > +                                         KVM_REG_SIZE_MASK |
> > +                                         KVM_REG_RISCV_CSR);
> > +     unsigned long reg_val;
> > +
> > +     if (KVM_REG_SIZE(reg->id) != sizeof(unsigned long))
> > +             return -EINVAL;
> > +     if (reg_num >= sizeof(struct kvm_sregs) / sizeof(unsigned long))
> > +             return -EINVAL;
> > +
> > +     if (reg_num == KVM_REG_RISCV_CSR_REG(sip))
> > +             kvm_riscv_vcpu_flush_interrupts(vcpu);
> > +
> > +     reg_val = ((unsigned long *)csr)[reg_num];
> > +
> > +     if (copy_to_user(uaddr, &reg_val, KVM_REG_SIZE(reg->id)))
> > +             return -EFAULT;
> > +
> > +     return 0;
> > +}
> > +
> > +static int kvm_riscv_vcpu_set_reg_csr(struct kvm_vcpu *vcpu,
> > +                                   const struct kvm_one_reg *reg)
> > +{
> > +     struct kvm_vcpu_csr *csr = &vcpu->arch.guest_csr;
> > +     unsigned long __user *uaddr =
> > +                     (unsigned long __user *)(unsigned long)reg->addr;
> > +     unsigned long reg_num = reg->id & ~(KVM_REG_ARCH_MASK |
> > +                                         KVM_REG_SIZE_MASK |
> > +                                         KVM_REG_RISCV_CSR);
> > +     unsigned long reg_val;
> > +
> > +     if (KVM_REG_SIZE(reg->id) != sizeof(unsigned long))
> > +             return -EINVAL;
> > +     if (reg_num >= sizeof(struct kvm_sregs) / sizeof(unsigned long))
> > +             return -EINVAL;
> > +
> > +     if (copy_from_user(&reg_val, uaddr, KVM_REG_SIZE(reg->id)))
> > +             return -EFAULT;
> > +
> > +     ((unsigned long *)csr)[reg_num] = reg_val;
> > +
> > +     if (reg_num == KVM_REG_RISCV_CSR_REG(sip))
> > +             WRITE_ONCE(vcpu->arch.irqs_pending_mask, 0);
>
> Why does writing SIP clear all pending interrupts?

irqs_pending_mask represents bits changes in irqs_pending.

Once the SIP CSR is updated by user-space, the changes to
irqs_pending are no longer valid so we clear irqs_pending_mask.

If we don't clear irqs_pending_mask then value programmed by
user-space can get overwritten if there were interrupts after
we saved SIP CSR and before we restored it.

Regards,
Anup

>
>
> Alex

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
