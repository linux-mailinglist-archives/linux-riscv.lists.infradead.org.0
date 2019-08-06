Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62100829F6
	for <lists+linux-riscv@lfdr.de>; Tue,  6 Aug 2019 05:18:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P8dvbq7Zqgy4/VglWns4x/KGhEtejc/TrXHscPh7W8s=; b=FEYAQEc2vdzLgO
	BESe2fE13px9HjTTAcy8OhYJabJxc3NRyzoVDErkC4Wmffa3GHDGx95ttj3drG5W64m4soIMDow81
	30T28GK4Sbz/xoAFsnpYIyPSiFSUupb1rylqKtgE7x0v1cvTjp1JGztrLeD7uxEwWusz3LQTTYyxk
	h/XzJSmVCWZBEfkldFTR1a8WjnJMfvrvLEOH3gMjD8KuTCqTCwArFK7kRMtlW0DaeXb686OOXb323
	HagfR1/SCMOHfY8kNWyUz+nqL/wGBv4y8l+tCIlZ5GKbKamTIL6Y2OwGqoGchjqSms7vw6CandW7+
	XVi7GmTuX6YfVtuOhVfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hupzn-0007MU-Vk; Tue, 06 Aug 2019 03:18:43 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hupzk-0007M7-85
 for linux-riscv@lists.infradead.org; Tue, 06 Aug 2019 03:18:42 +0000
Received: by mail-wm1-x342.google.com with SMTP id p74so76578358wme.4
 for <linux-riscv@lists.infradead.org>; Mon, 05 Aug 2019 20:18:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=9WdX0XMG2S7fDcfkCJTHw9xGBvKSmDVfdtRc7QiEtGY=;
 b=bp9/uA6ssbL8dEE2OdPmV9H3xwB3PRdKoQQ+p67oKkdVACmRigPzjKTj4gQTj8i0ix
 6TDmTPXSbe1/UlD2PYIlTAIsLy+9RLD5aTN8WZ/76mTtnruX8ON6SUYI84fGBQECahlr
 tQxixOWmy7PALDpww5naUIzWUp/UIKX8MXGCiY/624SEUmGA/BupUAo5njomjfKdlHMV
 LeY6XbqSpiKlGZ3OOyWrMaDiiEp1BNrGav+q5hEpzZg1t5rF6XG2jdvb/nYTd0JSLm9D
 cEtjbw3JPeLV+ESYo/HcI3TPvXBZ6zY42dkwAKRqNSD28+tG6NCPG7m+AixB3gRah6yo
 xOCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=9WdX0XMG2S7fDcfkCJTHw9xGBvKSmDVfdtRc7QiEtGY=;
 b=EhqEqGnjqioVphYZprBfRmNK7LWwP7MyCLo9tIGiyVxHyJh9IVyHbK876wlPgCReOw
 POHPNlEokkEmHzvlXBZf8HA4M8mImQwriPM79YipKetk9bX59V5JYVoXsHL1kqzkMSmT
 egG5MS6Q6YqOe7FJofoDwHE/HvAeBg5gEQ+5CKRcilqH3if37zVQPy+jqvUfpGgJ2iDu
 fhSyUGAIEE7Mec9Nc3tpzciHkHYBGG8xXWF0j8aQuAdDPL2OqXmq56Arc6DXgFl7g44w
 BvkF68OwO7yjGWxZsNv1dhSJ+KVjgHN5CDN0y/G8RO44OjeagL4EywI8fP1Gq/1Si5iu
 tzag==
X-Gm-Message-State: APjAAAUfTP+/vPOFvyAs/KnQK3UHAGlYP0ef1kCm+HC4x/H8RXQ4LOz8
 Q/Vl9XwAlw44vFg9CjCfDlDVHl9QMbIvhtf1ePvRBg==
X-Google-Smtp-Source: APXvYqz1dyWEhdZkssF2bQXdfUVDniOoOYNHMIsKON13LS/Q/uh/jxaOfyi41copyAtKoTwNtR8VZR6/qV5ZQP7ztcE=
X-Received: by 2002:a1c:cfc5:: with SMTP id f188mr1329437wmg.24.1565061518244; 
 Mon, 05 Aug 2019 20:18:38 -0700 (PDT)
MIME-Version: 1.0
References: <20190805134201.2814-1-anup.patel@wdc.com>
 <20190805134201.2814-7-anup.patel@wdc.com>
In-Reply-To: <20190805134201.2814-7-anup.patel@wdc.com>
From: Anup Patel <anup@brainfault.org>
Date: Tue, 6 Aug 2019 08:48:27 +0530
Message-ID: <CAAhSdy0mcxWJ=-vKYnKR+MfqDL-Mdc8Bg+=qpLp40Kb0zGwmQA@mail.gmail.com>
Subject: Re: [PATCH v3 06/19] RISC-V: KVM: Implement VCPU interrupts and
 requests handling
To: Anup Patel <Anup.Patel@wdc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_201840_371202_6E85954B 
X-CRM114-Status: GOOD (  27.38  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
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
> This patch implements VCPU interrupts and requests which are both
> asynchronous events.
>
> The VCPU interrupts can be set/unset using KVM_INTERRUPT ioctl from
> user-space. In future, the in-kernel IRQCHIP emulation will use
> kvm_riscv_vcpu_set_interrupt() and kvm_riscv_vcpu_unset_interrupt()
> functions to set/unset VCPU interrupts.
>
> Important VCPU requests implemented by this patch are:
> KVM_REQ_SLEEP       - set whenever VCPU itself goes to sleep state
> KVM_REQ_VCPU_RESET  - set whenever VCPU reset is requested
>
> The WFI trap-n-emulate (added later) will use KVM_REQ_SLEEP request
> and kvm_riscv_vcpu_has_interrupt() function.
>
> The KVM_REQ_VCPU_RESET request will be used by SBI emulation (added
> later) to power-up a VCPU in power-off state. The user-space can use
> the GET_MPSTATE/SET_MPSTATE ioctls to get/set power state of a VCPU.
>
> Signed-off-by: Anup Patel <anup.patel@wdc.com>
> ---
>  arch/riscv/include/asm/kvm_host.h |  23 ++++
>  arch/riscv/include/uapi/asm/kvm.h |   3 +
>  arch/riscv/kvm/main.c             |   2 +
>  arch/riscv/kvm/vcpu.c             | 169 +++++++++++++++++++++++++++---
>  4 files changed, 184 insertions(+), 13 deletions(-)
>
> diff --git a/arch/riscv/include/asm/kvm_host.h b/arch/riscv/include/asm/kvm_host.h
> index dab32c9c3470..04804f14f760 100644
> --- a/arch/riscv/include/asm/kvm_host.h
> +++ b/arch/riscv/include/asm/kvm_host.h
> @@ -122,6 +122,21 @@ struct kvm_vcpu_arch {
>         /* CPU CSR context upon Guest VCPU reset */
>         struct kvm_vcpu_csr guest_reset_csr;
>
> +       /*
> +        * VCPU interrupts
> +        *
> +        * We have a lockless approach for tracking pending VCPU interrupts
> +        * implemented using atomic bitops. The irqs_pending bitmap represent
> +        * pending interrupts whereas irqs_pending_mask represent bits changed
> +        * in irqs_pending. Our approach is modeled around multiple producer
> +        * and single consumer problem where the consumer is the VCPU itself.
> +        */
> +       unsigned long irqs_pending;
> +       unsigned long irqs_pending_mask;
> +
> +       /* VCPU power-off state */
> +       bool power_off;
> +
>         /* Don't run the VCPU (blocked) */
>         bool pause;
>
> @@ -146,4 +161,12 @@ int kvm_riscv_vcpu_exit(struct kvm_vcpu *vcpu, struct kvm_run *run,
>
>  static inline void __kvm_riscv_switch_to(struct kvm_vcpu_arch *vcpu_arch) {}
>
> +int kvm_riscv_vcpu_set_interrupt(struct kvm_vcpu *vcpu, unsigned int irq);
> +int kvm_riscv_vcpu_unset_interrupt(struct kvm_vcpu *vcpu, unsigned int irq);
> +void kvm_riscv_vcpu_flush_interrupts(struct kvm_vcpu *vcpu);
> +void kvm_riscv_vcpu_sync_interrupts(struct kvm_vcpu *vcpu);
> +bool kvm_riscv_vcpu_has_interrupt(struct kvm_vcpu *vcpu);
> +void kvm_riscv_vcpu_power_off(struct kvm_vcpu *vcpu);
> +void kvm_riscv_vcpu_power_on(struct kvm_vcpu *vcpu);
> +
>  #endif /* __RISCV_KVM_HOST_H__ */
> diff --git a/arch/riscv/include/uapi/asm/kvm.h b/arch/riscv/include/uapi/asm/kvm.h
> index d15875818b6e..6dbc056d58ba 100644
> --- a/arch/riscv/include/uapi/asm/kvm.h
> +++ b/arch/riscv/include/uapi/asm/kvm.h
> @@ -18,6 +18,9 @@
>
>  #define KVM_COALESCED_MMIO_PAGE_OFFSET 1
>
> +#define KVM_INTERRUPT_SET      -1U
> +#define KVM_INTERRUPT_UNSET    -2U
> +
>  /* for KVM_GET_REGS and KVM_SET_REGS */
>  struct kvm_regs {
>  };
> diff --git a/arch/riscv/kvm/main.c b/arch/riscv/kvm/main.c
> index a26a68df7cfc..f4a7a3c67f8e 100644
> --- a/arch/riscv/kvm/main.c
> +++ b/arch/riscv/kvm/main.c
> @@ -48,6 +48,8 @@ int kvm_arch_hardware_enable(void)
>         hideleg |= SIE_SEIE;
>         csr_write(CSR_HIDELEG, hideleg);
>
> +       csr_write(CSR_VSIP, 0);
> +
>         return 0;
>  }
>
> diff --git a/arch/riscv/kvm/vcpu.c b/arch/riscv/kvm/vcpu.c
> index ff08d138f7c3..455b0f40832b 100644
> --- a/arch/riscv/kvm/vcpu.c
> +++ b/arch/riscv/kvm/vcpu.c
> @@ -40,6 +40,8 @@ struct kvm_stats_debugfs_item debugfs_entries[] = {
>                                  RISCV_ISA_EXT_s | \
>                                  RISCV_ISA_EXT_u)
>
> +static DEFINE_PER_CPU(unsigned long, vsip_shadow);
> +

With introduction of compile-time percpu variable here, the insmod
fails to insert KVM RISC-V as loadable module. This looks like some
issue with arch/riscv/kernel/module.c.

I tried run-time percpu variables using alloc_percpu() API and it
works perfectly fine with it. I will make vsip_shadow as run-time
percpu variable instead of compile-time in v4 series.

>  static void kvm_riscv_reset_vcpu(struct kvm_vcpu *vcpu)
>  {
>         struct kvm_vcpu_csr *csr = &vcpu->arch.guest_csr;
> @@ -50,6 +52,9 @@ static void kvm_riscv_reset_vcpu(struct kvm_vcpu *vcpu)
>         memcpy(csr, reset_csr, sizeof(*csr));
>
>         memcpy(cntx, reset_cntx, sizeof(*cntx));
> +
> +       WRITE_ONCE(vcpu->arch.irqs_pending, 0);
> +       WRITE_ONCE(vcpu->arch.irqs_pending_mask, 0);
>  }
>
>  struct kvm_vcpu *kvm_arch_vcpu_create(struct kvm *kvm, unsigned int id)
> @@ -116,8 +121,7 @@ void kvm_arch_vcpu_destroy(struct kvm_vcpu *vcpu)
>
>  int kvm_cpu_has_pending_timer(struct kvm_vcpu *vcpu)
>  {
> -       /* TODO: */
> -       return 0;
> +       return READ_ONCE(vcpu->arch.irqs_pending) & (1UL << IRQ_S_TIMER);
>  }
>
>  void kvm_arch_vcpu_blocking(struct kvm_vcpu *vcpu)
> @@ -130,20 +134,18 @@ void kvm_arch_vcpu_unblocking(struct kvm_vcpu *vcpu)
>
>  int kvm_arch_vcpu_runnable(struct kvm_vcpu *vcpu)
>  {
> -       /* TODO: */
> -       return 0;
> +       return (kvm_riscv_vcpu_has_interrupt(vcpu) &&
> +               !vcpu->arch.power_off && !vcpu->arch.pause);
>  }
>
>  int kvm_arch_vcpu_should_kick(struct kvm_vcpu *vcpu)
>  {
> -       /* TODO: */
> -       return 0;
> +       return kvm_vcpu_exiting_guest_mode(vcpu) == IN_GUEST_MODE;
>  }
>
>  bool kvm_arch_vcpu_in_kernel(struct kvm_vcpu *vcpu)
>  {
> -       /* TODO: */
> -       return false;
> +       return (vcpu->arch.guest_context.sstatus & SR_SPP) ? true : false;
>  }
>
>  bool kvm_arch_has_vcpu_debugfs(void)
> @@ -164,7 +166,21 @@ vm_fault_t kvm_arch_vcpu_fault(struct kvm_vcpu *vcpu, struct vm_fault *vmf)
>  long kvm_arch_vcpu_async_ioctl(struct file *filp,
>                                unsigned int ioctl, unsigned long arg)
>  {
> -       /* TODO; */
> +       struct kvm_vcpu *vcpu = filp->private_data;
> +       void __user *argp = (void __user *)arg;
> +
> +       if (ioctl == KVM_INTERRUPT) {
> +               struct kvm_interrupt irq;
> +
> +               if (copy_from_user(&irq, argp, sizeof(irq)))
> +                       return -EFAULT;
> +
> +               if (irq.irq == KVM_INTERRUPT_SET)
> +                       return kvm_riscv_vcpu_set_interrupt(vcpu, IRQ_S_EXT);
> +               else
> +                       return kvm_riscv_vcpu_unset_interrupt(vcpu, IRQ_S_EXT);
> +       }
> +
>         return -ENOIOCTLCMD;
>  }
>
> @@ -213,18 +229,103 @@ int kvm_arch_vcpu_ioctl_set_regs(struct kvm_vcpu *vcpu, struct kvm_regs *regs)
>         return -EINVAL;
>  }
>
> +void kvm_riscv_vcpu_flush_interrupts(struct kvm_vcpu *vcpu)
> +{
> +       struct kvm_vcpu_csr *csr = &vcpu->arch.guest_csr;
> +       unsigned long mask, val;
> +
> +       if (READ_ONCE(vcpu->arch.irqs_pending_mask)) {
> +               mask = xchg_acquire(&vcpu->arch.irqs_pending_mask, 0);
> +               val = READ_ONCE(vcpu->arch.irqs_pending) & mask;
> +
> +               csr->vsip &= ~mask;
> +               csr->vsip |= val;
> +       }
> +}
> +
> +void kvm_riscv_vcpu_sync_interrupts(struct kvm_vcpu *vcpu)
> +{
> +       vcpu->arch.guest_csr.vsip = csr_read(CSR_VSIP);
> +       vcpu->arch.guest_csr.vsie = csr_read(CSR_VSIE);
> +}
> +
> +int kvm_riscv_vcpu_set_interrupt(struct kvm_vcpu *vcpu, unsigned int irq)
> +{
> +       if (irq != IRQ_S_SOFT &&
> +           irq != IRQ_S_TIMER &&
> +           irq != IRQ_S_EXT)
> +               return -EINVAL;
> +
> +       set_bit(irq, &vcpu->arch.irqs_pending);
> +       smp_mb__before_atomic();
> +       set_bit(irq, &vcpu->arch.irqs_pending_mask);
> +
> +       kvm_vcpu_kick(vcpu);
> +
> +       return 0;
> +}
> +
> +int kvm_riscv_vcpu_unset_interrupt(struct kvm_vcpu *vcpu, unsigned int irq)
> +{
> +       if (irq != IRQ_S_SOFT &&
> +           irq != IRQ_S_TIMER &&
> +           irq != IRQ_S_EXT)
> +               return -EINVAL;
> +
> +       clear_bit(irq, &vcpu->arch.irqs_pending);
> +       smp_mb__before_atomic();
> +       set_bit(irq, &vcpu->arch.irqs_pending_mask);
> +
> +       return 0;
> +}
> +
> +bool kvm_riscv_vcpu_has_interrupt(struct kvm_vcpu *vcpu)
> +{
> +       return (READ_ONCE(vcpu->arch.irqs_pending) &
> +               vcpu->arch.guest_csr.vsie) ? true : false;
> +}
> +
> +void kvm_riscv_vcpu_power_off(struct kvm_vcpu *vcpu)
> +{
> +       vcpu->arch.power_off = true;
> +       kvm_make_request(KVM_REQ_SLEEP, vcpu);
> +       kvm_vcpu_kick(vcpu);
> +}
> +
> +void kvm_riscv_vcpu_power_on(struct kvm_vcpu *vcpu)
> +{
> +       vcpu->arch.power_off = false;
> +       kvm_vcpu_wake_up(vcpu);
> +}
> +
>  int kvm_arch_vcpu_ioctl_get_mpstate(struct kvm_vcpu *vcpu,
>                                     struct kvm_mp_state *mp_state)
>  {
> -       /* TODO: */
> +       if (vcpu->arch.power_off)
> +               mp_state->mp_state = KVM_MP_STATE_STOPPED;
> +       else
> +               mp_state->mp_state = KVM_MP_STATE_RUNNABLE;
> +
>         return 0;
>  }
>
>  int kvm_arch_vcpu_ioctl_set_mpstate(struct kvm_vcpu *vcpu,
>                                     struct kvm_mp_state *mp_state)
>  {
> -       /* TODO: */
> -       return 0;
> +       int ret = 0;
> +
> +       switch (mp_state->mp_state) {
> +       case KVM_MP_STATE_RUNNABLE:
> +               vcpu->arch.power_off = false;
> +               break;
> +       case KVM_MP_STATE_STOPPED:
> +               kvm_riscv_vcpu_power_off(vcpu);
> +               break;
> +       default:
> +               ret = -EINVAL;
> +       }
> +
> +       return ret;
>  }
>
>  int kvm_arch_vcpu_ioctl_set_guest_debug(struct kvm_vcpu *vcpu,
> @@ -248,7 +349,37 @@ void kvm_arch_vcpu_put(struct kvm_vcpu *vcpu)
>
>  static void kvm_riscv_check_vcpu_requests(struct kvm_vcpu *vcpu)
>  {
> -       /* TODO: */
> +       struct swait_queue_head *wq = kvm_arch_vcpu_wq(vcpu);
> +
> +       if (kvm_request_pending(vcpu)) {
> +               if (kvm_check_request(KVM_REQ_SLEEP, vcpu)) {
> +                       swait_event_interruptible_exclusive(*wq,
> +                                               ((!vcpu->arch.power_off) &&
> +                                               (!vcpu->arch.pause)));
> +
> +                       if (vcpu->arch.power_off || vcpu->arch.pause) {
> +                               /*
> +                                * Awaken to handle a signal, request to
> +                                * sleep again later.
> +                                */
> +                               kvm_make_request(KVM_REQ_SLEEP, vcpu);
> +                       }
> +               }
> +
> +               if (kvm_check_request(KVM_REQ_VCPU_RESET, vcpu))
> +                       kvm_riscv_reset_vcpu(vcpu);
> +       }
> +}
> +
> +static void kvm_riscv_update_vsip(struct kvm_vcpu *vcpu)
> +{
> +       struct kvm_vcpu_csr *csr = &vcpu->arch.guest_csr;
> +       unsigned long *vsip = this_cpu_ptr(&vsip_shadow);
> +
> +       if (*vsip != csr->vsip) {
> +               csr_write(CSR_VSIP, csr->vsip);
> +               *vsip = csr->vsip;
> +       }
>  }
>
>  int kvm_arch_vcpu_ioctl_run(struct kvm_vcpu *vcpu, struct kvm_run *run)
> @@ -311,6 +442,15 @@ int kvm_arch_vcpu_ioctl_run(struct kvm_vcpu *vcpu, struct kvm_run *run)
>                 srcu_read_unlock(&vcpu->kvm->srcu, vcpu->arch.srcu_idx);
>                 smp_mb__after_srcu_read_unlock();
>
> +               /*
> +                * We might have got VCPU interrupts updated asynchronously
> +                * so update it in HW.
> +                */
> +               kvm_riscv_vcpu_flush_interrupts(vcpu);
> +
> +               /* Update VSIP CSR for current CPU */
> +               kvm_riscv_update_vsip(vcpu);
> +
>                 if (ret <= 0 ||
>                     kvm_request_pending(vcpu)) {
>                         vcpu->mode = OUTSIDE_GUEST_MODE;
> @@ -334,6 +474,9 @@ int kvm_arch_vcpu_ioctl_run(struct kvm_vcpu *vcpu, struct kvm_run *run)
>                 scause = csr_read(CSR_SCAUSE);
>                 stval = csr_read(CSR_STVAL);
>
> +               /* Syncup interrupts state with HW */
> +               kvm_riscv_vcpu_sync_interrupts(vcpu);
> +
>                 /*
>                  * We may have taken a host interrupt in VS/VU-mode (i.e.
>                  * while executing the guest). This interrupt is still
> --
> 2.17.1
>

Regards,
Anup

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
