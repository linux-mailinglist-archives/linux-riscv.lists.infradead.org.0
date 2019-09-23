Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F651BACEE
	for <lists+linux-riscv@lfdr.de>; Mon, 23 Sep 2019 05:43:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pt4D23RuogTUoJR62vEs8tGR/J2jbcJjFoRoVbap+ls=; b=R5upl+BjV7mM9Z
	kSNTCtnNg+4XIxJMxuKT2ycE8Ys2eyxp0EqsMjh2gQ2BLQTzouVfzVEgKwqyxzICWPWzaZFuMJgeJ
	H27ZEFiFwUZpmO63jRar0HPMF6ATPjAh3FMADLhjvau9aKhJnt3YORKA3V9cBGZuAg8zUwGXOLytI
	jE/OtOpV6l3EmagG3RUSmnWa3qJV/aSUVSpK6kPdksDw6F6NhH7pBiwBBzmzBYYW+zRaitLCOOueE
	TENALROkYzMx6ZmNKumd2yBnaYsQnMLv+nh8eoXGwN7DEANyJCcqieOQJxNJLd7kNFahy4W+yCoux
	X2ZBYPLaB8fhi2pQlYrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCFFe-0005qR-L3; Mon, 23 Sep 2019 03:43:02 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCFFb-0005q2-0p
 for linux-riscv@lists.infradead.org; Mon, 23 Sep 2019 03:43:00 +0000
Received: by mail-wr1-x442.google.com with SMTP id r3so12187851wrj.6
 for <linux-riscv@lists.infradead.org>; Sun, 22 Sep 2019 20:42:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=9+a8eglVXevMoD1Tojjjkc1G0+vejdfTstL86XSetKs=;
 b=F9c7YDGLKppYwwsO10SVV1YeQq5ZEYYdI62OYKCAhOa+toTWJ6kYNv0nqsaorBYGr2
 dp4eWslwO3T61yXcRpkfrRRzVr7kb1YQ3+rAJKbIKSNaRm4jKdQ8aH/RVVEthOFKVlXW
 zgZ/86JyOAfozgV6fiWop0ERJUW3LxnCROck9HggqoeRjPPLkZQSrhXBWyyFuyOcPRUd
 H0WB6DgDdJT48/l2lh1xOctmoFCHli56KZsWP2qiuL4S57WrkpN+OHD6v9vI9kyKb0B8
 PDnIImZni7wNOP3dMbhBdjiJwdhv0ZLdZ1IMub0OEGcUKdZAb7E02qhN66MZfsoE0usG
 2A8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=9+a8eglVXevMoD1Tojjjkc1G0+vejdfTstL86XSetKs=;
 b=rUV7zQwcv9uGE3drmJdtcEh5FNE2UFFwd9fx6gH88MsaezBA3HZ4mTdxfBvIrODUbc
 1fCvGObBpXdSyDlsWtMlUVj4lIukOjh/21NIQK3q97oKQY18fxb2OEM4N0YWw2oi4nge
 0uwfkZZSD4onLMhhKUc/hp3aUOfHKq5TjGTllNY8xGjg2+ot5RI3n3p7XDDng9n5comP
 2svI3Bebg6dvCUUDFyhrNJVO5zhX72mJ4qKYSS1wX6waV1l91vraW0tZ+w1f2u2H0S3S
 28L2wiKZQURmUtjIG1mtP5rtcWyxzu0W8J/LVHZNjdA/tITvAGAd84P6j3mXh4M5k09h
 JV/A==
X-Gm-Message-State: APjAAAXh8pYuA9YkxI7bukY/qKFS2QnJGmDck38ikFWEXVuQE486g+QK
 uRs6tfkY2fYImxVlSqHrEe0eCXXy722rljI+yC6Iyw==
X-Google-Smtp-Source: APXvYqyWRolAHgHGdPovHvXEiAmGNYIBinr5rhUDl+aZiuKKNYuD/A+wWAKUs+NuHxAEJOOnDLoKT8lRCjZ8qBOOfMc=
X-Received: by 2002:adf:f1d1:: with SMTP id z17mr20173583wro.330.1569210176021; 
 Sun, 22 Sep 2019 20:42:56 -0700 (PDT)
MIME-Version: 1.0
References: <20190904161245.111924-1-anup.patel@wdc.com>
 <20190904161245.111924-10-anup.patel@wdc.com>
In-Reply-To: <20190904161245.111924-10-anup.patel@wdc.com>
From: Anup Patel <anup@brainfault.org>
Date: Mon, 23 Sep 2019 09:12:44 +0530
Message-ID: <CAAhSdy3ij--wR+=7gFQ03PFCiAA5OFBJfayU=Z7ODAwbP+pBaw@mail.gmail.com>
Subject: Re: [PATCH v7 08/21] RISC-V: KVM: Implement
 KVM_GET_ONE_REG/KVM_SET_ONE_REG ioctls
To: Anup Patel <Anup.Patel@wdc.com>, Alexander Graf <graf@amazon.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190922_204259_068968_74D18A89 
X-CRM114-Status: GOOD (  21.63  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

On Wed, Sep 4, 2019 at 9:44 PM Anup Patel <Anup.Patel@wdc.com> wrote:
>
> For KVM RISC-V, we use KVM_GET_ONE_REG/KVM_SET_ONE_REG ioctls to access
> VCPU config and registers from user-space.
>
> We have three types of VCPU registers:
> 1. CONFIG - these are VCPU config and capabilities
> 2. CORE   - these are VCPU general purpose registers
> 3. CSR    - these are VCPU control and status registers
>
> The CONFIG registers available to user-space are ISA and TIMEBASE. Out
> of these, TIMEBASE is a read-only register which inform user-space about
> VCPU timer base frequency. The ISA register is a read and write register
> where user-space can only write the desired VCPU ISA capabilities before
> running the VCPU.
>
> The CORE registers available to user-space are PC, RA, SP, GP, TP, A0-A7,
> T0-T6, S0-S11 and MODE. Most of these are RISC-V general registers except
> PC and MODE. The PC register represents program counter whereas the MODE
> register represent VCPU privilege mode (i.e. S/U-mode).
>
> The CSRs available to user-space are SSTATUS, SIE, STVEC, SSCRATCH, SEPC,
> SCAUSE, STVAL, SIP, and SATP. All of these are read/write registers.
>
> In future, more VCPU register types will be added (such as FP) for the
> KVM_GET_ONE_REG/KVM_SET_ONE_REG ioctls.
>
> Signed-off-by: Anup Patel <anup.patel@wdc.com>
> Acked-by: Paolo Bonzini <pbonzini@redhat.com>
> Reviewed-by: Paolo Bonzini <pbonzini@redhat.com>
> ---
>  arch/riscv/include/uapi/asm/kvm.h |  46 +++++-
>  arch/riscv/kvm/vcpu.c             | 235 +++++++++++++++++++++++++++++-
>  2 files changed, 278 insertions(+), 3 deletions(-)
>
> diff --git a/arch/riscv/include/uapi/asm/kvm.h b/arch/riscv/include/uapi/asm/kvm.h
> index 6dbc056d58ba..08c4515ad71b 100644
> --- a/arch/riscv/include/uapi/asm/kvm.h
> +++ b/arch/riscv/include/uapi/asm/kvm.h
> @@ -23,8 +23,15 @@
>
>  /* for KVM_GET_REGS and KVM_SET_REGS */
>  struct kvm_regs {
> +       /* out (KVM_GET_REGS) / in (KVM_SET_REGS) */
> +       struct user_regs_struct regs;
> +       unsigned long mode;
>  };

As discussed in LPC 2019 with Alex Graf, I will add separate
struct for CORE registers instead of re-using "struct kvm_regs".

>
> +/* Possible privilege modes for kvm_regs */
> +#define KVM_RISCV_MODE_S       1
> +#define KVM_RISCV_MODE_U       0
> +
>  /* for KVM_GET_FPU and KVM_SET_FPU */
>  struct kvm_fpu {
>  };
> @@ -41,10 +48,47 @@ struct kvm_guest_debug_arch {
>  struct kvm_sync_regs {
>  };
>
> -/* dummy definition */
> +/* for KVM_GET_SREGS and KVM_SET_SREGS */
>  struct kvm_sregs {
> +       unsigned long sstatus;
> +       unsigned long sie;
> +       unsigned long stvec;
> +       unsigned long sscratch;
> +       unsigned long sepc;
> +       unsigned long scause;
> +       unsigned long stval;
> +       unsigned long sip;
> +       unsigned long satp;
> +};

Same as above, I will add separate struct for CSR registers instead
of re-using "struct kvm_sregs".

> +
> +/* for KVM_GET_ONE_REG and KVM_SET_ONE_REG */
> +struct kvm_riscv_config {
> +       unsigned long isa;
> +       unsigned long tbfreq;
>  };
>
> +#define KVM_REG_SIZE(id)               \
> +       (1U << (((id) & KVM_REG_SIZE_MASK) >> KVM_REG_SIZE_SHIFT))
> +
> +/* If you need to interpret the index values, here is the key: */
> +#define KVM_REG_RISCV_TYPE_MASK                0x00000000FF000000
> +#define KVM_REG_RISCV_TYPE_SHIFT       24
> +
> +/* Config registers are mapped as type 1 */
> +#define KVM_REG_RISCV_CONFIG           (0x01 << KVM_REG_RISCV_TYPE_SHIFT)
> +#define KVM_REG_RISCV_CONFIG_REG(name) \
> +       (offsetof(struct kvm_riscv_config, name) / sizeof(unsigned long))
> +
> +/* Core registers are mapped as type 2 */
> +#define KVM_REG_RISCV_CORE             (0x02 << KVM_REG_RISCV_TYPE_SHIFT)
> +#define KVM_REG_RISCV_CORE_REG(name)   \
> +               (offsetof(struct kvm_regs, name) / sizeof(unsigned long))
> +
> +/* Control and status registers are mapped as type 3 */
> +#define KVM_REG_RISCV_CSR              (0x03 << KVM_REG_RISCV_TYPE_SHIFT)
> +#define KVM_REG_RISCV_CSR_REG(name)    \
> +               (offsetof(struct kvm_sregs, name) / sizeof(unsigned long))
> +
>  #endif
>
>  #endif /* __LINUX_KVM_RISCV_H */
> diff --git a/arch/riscv/kvm/vcpu.c b/arch/riscv/kvm/vcpu.c
> index 3223f723f79e..b95dfc959009 100644
> --- a/arch/riscv/kvm/vcpu.c
> +++ b/arch/riscv/kvm/vcpu.c
> @@ -165,6 +165,215 @@ vm_fault_t kvm_arch_vcpu_fault(struct kvm_vcpu *vcpu, struct vm_fault *vmf)
>         return VM_FAULT_SIGBUS;
>  }
>
> +static int kvm_riscv_vcpu_get_reg_config(struct kvm_vcpu *vcpu,
> +                                        const struct kvm_one_reg *reg)
> +{
> +       unsigned long __user *uaddr =
> +                       (unsigned long __user *)(unsigned long)reg->addr;
> +       unsigned long reg_num = reg->id & ~(KVM_REG_ARCH_MASK |
> +                                           KVM_REG_SIZE_MASK |
> +                                           KVM_REG_RISCV_CONFIG);
> +       unsigned long reg_val;
> +
> +       if (KVM_REG_SIZE(reg->id) != sizeof(unsigned long))
> +               return -EINVAL;
> +
> +       switch (reg_num) {
> +       case KVM_REG_RISCV_CONFIG_REG(isa):
> +               reg_val = vcpu->arch.isa;
> +               break;
> +       case KVM_REG_RISCV_CONFIG_REG(tbfreq):
> +               reg_val = riscv_timebase;
> +               break;
> +       default:
> +               return -EINVAL;
> +       };
> +
> +       if (copy_to_user(uaddr, &reg_val, KVM_REG_SIZE(reg->id)))
> +               return -EFAULT;
> +
> +       return 0;
> +}
> +
> +static int kvm_riscv_vcpu_set_reg_config(struct kvm_vcpu *vcpu,
> +                                        const struct kvm_one_reg *reg)
> +{
> +       unsigned long __user *uaddr =
> +                       (unsigned long __user *)(unsigned long)reg->addr;
> +       unsigned long reg_num = reg->id & ~(KVM_REG_ARCH_MASK |
> +                                           KVM_REG_SIZE_MASK |
> +                                           KVM_REG_RISCV_CONFIG);
> +       unsigned long reg_val;
> +
> +       if (KVM_REG_SIZE(reg->id) != sizeof(unsigned long))
> +               return -EINVAL;
> +
> +       if (copy_from_user(&reg_val, uaddr, KVM_REG_SIZE(reg->id)))
> +               return -EFAULT;
> +
> +       switch (reg_num) {
> +       case KVM_REG_RISCV_CONFIG_REG(isa):
> +               if (!vcpu->arch.ran_atleast_once) {
> +                       vcpu->arch.isa = reg_val;
> +                       vcpu->arch.isa &= riscv_isa_extension_base(NULL);
> +                       vcpu->arch.isa &= KVM_RISCV_ISA_ALLOWED;
> +               } else {
> +                       return -ENOTSUPP;
> +               }
> +               break;
> +       case KVM_REG_RISCV_CONFIG_REG(tbfreq):
> +               return -ENOTSUPP;
> +       default:
> +               return -EINVAL;
> +       };
> +
> +       return 0;
> +}
> +
> +static int kvm_riscv_vcpu_get_reg_core(struct kvm_vcpu *vcpu,
> +                                      const struct kvm_one_reg *reg)
> +{
> +       struct kvm_cpu_context *cntx = &vcpu->arch.guest_context;
> +       unsigned long __user *uaddr =
> +                       (unsigned long __user *)(unsigned long)reg->addr;
> +       unsigned long reg_num = reg->id & ~(KVM_REG_ARCH_MASK |
> +                                           KVM_REG_SIZE_MASK |
> +                                           KVM_REG_RISCV_CORE);
> +       unsigned long reg_val;
> +
> +       if (KVM_REG_SIZE(reg->id) != sizeof(unsigned long))
> +               return -EINVAL;
> +
> +       if (reg_num == KVM_REG_RISCV_CORE_REG(regs.pc))
> +               reg_val = cntx->sepc;
> +       else if (KVM_REG_RISCV_CORE_REG(regs.pc) < reg_num &&
> +                reg_num <= KVM_REG_RISCV_CORE_REG(regs.t6))
> +               reg_val = ((unsigned long *)cntx)[reg_num];
> +       else if (reg_num == KVM_REG_RISCV_CORE_REG(mode))
> +               reg_val = (cntx->sstatus & SR_SPP) ?
> +                               KVM_RISCV_MODE_S : KVM_RISCV_MODE_U;
> +       else
> +               return -EINVAL;
> +
> +       if (copy_to_user(uaddr, &reg_val, KVM_REG_SIZE(reg->id)))
> +               return -EFAULT;
> +
> +       return 0;
> +}
> +
> +static int kvm_riscv_vcpu_set_reg_core(struct kvm_vcpu *vcpu,
> +                                      const struct kvm_one_reg *reg)
> +{
> +       struct kvm_cpu_context *cntx = &vcpu->arch.guest_context;
> +       unsigned long __user *uaddr =
> +                       (unsigned long __user *)(unsigned long)reg->addr;
> +       unsigned long reg_num = reg->id & ~(KVM_REG_ARCH_MASK |
> +                                           KVM_REG_SIZE_MASK |
> +                                           KVM_REG_RISCV_CORE);
> +       unsigned long reg_val;
> +
> +       if (KVM_REG_SIZE(reg->id) != sizeof(unsigned long))
> +               return -EINVAL;
> +
> +       if (copy_from_user(&reg_val, uaddr, KVM_REG_SIZE(reg->id)))
> +               return -EFAULT;
> +
> +       if (reg_num == KVM_REG_RISCV_CORE_REG(regs.pc))
> +               cntx->sepc = reg_val;
> +       else if (KVM_REG_RISCV_CORE_REG(regs.pc) < reg_num &&
> +                reg_num <= KVM_REG_RISCV_CORE_REG(regs.t6))
> +               ((unsigned long *)cntx)[reg_num] = reg_val;
> +       else if (reg_num == KVM_REG_RISCV_CORE_REG(mode)) {
> +               if (reg_val == KVM_RISCV_MODE_S)
> +                       cntx->sstatus |= SR_SPP;
> +               else
> +                       cntx->sstatus &= ~SR_SPP;
> +       } else
> +               return -EINVAL;
> +
> +       return 0;
> +}
> +
> +static int kvm_riscv_vcpu_get_reg_csr(struct kvm_vcpu *vcpu,
> +                                     const struct kvm_one_reg *reg)
> +{
> +       struct kvm_vcpu_csr *csr = &vcpu->arch.guest_csr;
> +       unsigned long __user *uaddr =
> +                       (unsigned long __user *)(unsigned long)reg->addr;
> +       unsigned long reg_num = reg->id & ~(KVM_REG_ARCH_MASK |
> +                                           KVM_REG_SIZE_MASK |
> +                                           KVM_REG_RISCV_CSR);
> +       unsigned long reg_val;
> +
> +       if (KVM_REG_SIZE(reg->id) != sizeof(unsigned long))
> +               return -EINVAL;
> +       if (reg_num >= sizeof(struct kvm_sregs) / sizeof(unsigned long))
> +               return -EINVAL;
> +
> +       if (reg_num == KVM_REG_RISCV_CSR_REG(sip))
> +               kvm_riscv_vcpu_flush_interrupts(vcpu);
> +
> +       reg_val = ((unsigned long *)csr)[reg_num];
> +
> +       if (copy_to_user(uaddr, &reg_val, KVM_REG_SIZE(reg->id)))
> +               return -EFAULT;
> +
> +       return 0;
> +}
> +
> +static int kvm_riscv_vcpu_set_reg_csr(struct kvm_vcpu *vcpu,
> +                                     const struct kvm_one_reg *reg)
> +{
> +       struct kvm_vcpu_csr *csr = &vcpu->arch.guest_csr;
> +       unsigned long __user *uaddr =
> +                       (unsigned long __user *)(unsigned long)reg->addr;
> +       unsigned long reg_num = reg->id & ~(KVM_REG_ARCH_MASK |
> +                                           KVM_REG_SIZE_MASK |
> +                                           KVM_REG_RISCV_CSR);
> +       unsigned long reg_val;
> +
> +       if (KVM_REG_SIZE(reg->id) != sizeof(unsigned long))
> +               return -EINVAL;
> +       if (reg_num >= sizeof(struct kvm_sregs) / sizeof(unsigned long))
> +               return -EINVAL;
> +
> +       if (copy_from_user(&reg_val, uaddr, KVM_REG_SIZE(reg->id)))
> +               return -EFAULT;
> +
> +       ((unsigned long *)csr)[reg_num] = reg_val;
> +
> +       if (reg_num == KVM_REG_RISCV_CSR_REG(sip))
> +               WRITE_ONCE(vcpu->arch.irqs_pending_mask, 0);
> +
> +       return 0;
> +}
> +
> +static int kvm_riscv_vcpu_set_reg(struct kvm_vcpu *vcpu,
> +                                 const struct kvm_one_reg *reg)
> +{
> +       if ((reg->id & KVM_REG_RISCV_TYPE_MASK) == KVM_REG_RISCV_CONFIG)
> +               return kvm_riscv_vcpu_set_reg_config(vcpu, reg);
> +       else if ((reg->id & KVM_REG_RISCV_TYPE_MASK) == KVM_REG_RISCV_CORE)
> +               return kvm_riscv_vcpu_set_reg_core(vcpu, reg);
> +       else if ((reg->id & KVM_REG_RISCV_TYPE_MASK) == KVM_REG_RISCV_CSR)
> +               return kvm_riscv_vcpu_set_reg_csr(vcpu, reg);
> +
> +       return -EINVAL;
> +}
> +
> +static int kvm_riscv_vcpu_get_reg(struct kvm_vcpu *vcpu,
> +                                 const struct kvm_one_reg *reg)
> +{
> +       if ((reg->id & KVM_REG_RISCV_TYPE_MASK) == KVM_REG_RISCV_CONFIG)
> +               return kvm_riscv_vcpu_get_reg_config(vcpu, reg);
> +       else if ((reg->id & KVM_REG_RISCV_TYPE_MASK) == KVM_REG_RISCV_CORE)
> +               return kvm_riscv_vcpu_get_reg_core(vcpu, reg);
> +       else if ((reg->id & KVM_REG_RISCV_TYPE_MASK) == KVM_REG_RISCV_CSR)
> +               return kvm_riscv_vcpu_get_reg_csr(vcpu, reg);
> +
> +       return -EINVAL;
> +}
> +
>  long kvm_arch_vcpu_async_ioctl(struct file *filp,
>                                unsigned int ioctl, unsigned long arg)
>  {
> @@ -189,8 +398,30 @@ long kvm_arch_vcpu_async_ioctl(struct file *filp,
>  long kvm_arch_vcpu_ioctl(struct file *filp,
>                          unsigned int ioctl, unsigned long arg)
>  {
> -       /* TODO: */
> -       return -EINVAL;
> +       struct kvm_vcpu *vcpu = filp->private_data;
> +       void __user *argp = (void __user *)arg;
> +       long r = -EINVAL;
> +
> +       switch (ioctl) {
> +       case KVM_SET_ONE_REG:
> +       case KVM_GET_ONE_REG: {
> +               struct kvm_one_reg reg;
> +
> +               r = -EFAULT;
> +               if (copy_from_user(&reg, argp, sizeof(reg)))
> +                       break;
> +
> +               if (ioctl == KVM_SET_ONE_REG)
> +                       r = kvm_riscv_vcpu_set_reg(vcpu, &reg);
> +               else
> +                       r = kvm_riscv_vcpu_get_reg(vcpu, &reg);
> +               break;
> +       }
> +       default:
> +               break;
> +       }
> +
> +       return r;
>  }
>
>  int kvm_arch_vcpu_ioctl_get_sregs(struct kvm_vcpu *vcpu,
> --
> 2.17.1
>

Regards,
Anup

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
