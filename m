Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7391F7A767
	for <lists+linux-riscv@lfdr.de>; Tue, 30 Jul 2019 14:00:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NB7GB+D7k6kf5i6K/6dvkZJ419osgrwQe1QwTtMCtB4=; b=sofCnF/XrETLDY
	fPR75p5R4/LgLRQoKqZVLMZ+fxrOwTyGEGD9lYPX3IzzUmNu5UqptOHNYInhOWUgEKUajUsgn4wHH
	1S0xgjMyk657ReZzJOwG5OXzDHo4TinX5IE+HrNH09F58lZwFU21PnKZ+2IH35FuUoHkqo8lKHAtq
	yokg1HHaUeZv6MIM59aYKNBlRCl/36Lv5vIFs9P2jNI0pOnAtcnMaogJUV7rvmfcUM60L8UaytXR4
	s2vMtXSeni0cHvlPxPrrz8LfI3Vvm/S1zs2AorFoRanMHRqXKgkw6RYl6OXzrTXUHj/vv+22gDTch
	bCnRggdlFAaB6h01IjLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsQny-0007zl-FZ; Tue, 30 Jul 2019 12:00:34 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsQnp-0007yJ-67
 for linux-riscv@lists.infradead.org; Tue, 30 Jul 2019 12:00:26 +0000
Received: by mail-wr1-x444.google.com with SMTP id x1so15560673wrr.9
 for <linux-riscv@lists.infradead.org>; Tue, 30 Jul 2019 05:00:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=n/JJxoSHKvaru38fIGlmwaHlnuxMxh6jpy0Kuq5lmmE=;
 b=Sl72/4E2kqtDZ2CQIMMfomIbhFZDZDSCqUCB+R4H7uJSODB8IQnLn5GgZEZ5fShul4
 b8zn3xuhCVjR16uUHRlBKI+jKBAUgRYXeMtoFwC8z+gIlDJZVWCP3jM504guxcVTvzLP
 fYQwNm74kcCX4M7eMly/p7M+P9RiJW9QBkMOutLsLrApJDeWgjwJ/iDNbb/gZufDTAGU
 rNoKlvBwDliEOVi3jOqIklKVRYOQVQTzoGeOwWLK6zKLI7UKqD991GvjbFAD09/D1HXg
 ONKN2qH0FVKuNIRfa8SpTV62TzfkoXcJhFg6zQjdpI/jBmCaPoInWqiPyYf+LGwBSfyW
 ug6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=n/JJxoSHKvaru38fIGlmwaHlnuxMxh6jpy0Kuq5lmmE=;
 b=UIVq5y30SPP16RjEYwwhYXL2c9o9uT3zMsXNHT17qHlhm3NvyO1JpyhOG/JyAFclwT
 FtLRNAMtFb8P0yb1mke/Y+GzO0cRG6pT38Cv89641p7/BgBCkhes0KP21k/XFEboiuMU
 2O/09ihX6x9WXhbtmZ0nF8HYhfVnDFDl1HiFauvajktZmSEc601+5VFtzbPZqo0clMDA
 YRf1+t5rHmkVS29eeChNasamziAuMNa/oMWUPSWFPT2UHM/z114jC3p0h9QBb2sSE9sN
 dM6+uPeiwxQOqNYUqqLwjy+r+1hbPerJYvnX5sLlhY5ro7SLHmUbBNE6Vc7+2XSZ0Iwe
 Payg==
X-Gm-Message-State: APjAAAVjdbF2YmjpsT92OO1vjqK9egRi+N0t9DeL0t6tTRq2zSAgrxRH
 0q4G3M/8nq5U9UHz/PSGYcVQBguOkW+QFYhbcg0wPuVgvmPmJA==
X-Google-Smtp-Source: APXvYqwdGj8tn+Lc+jdWqVTEGuaT6OEVtpsGQreyIcF1DxNxjXt75IZwoWbIPt3vCU8A0lK4eiedRhBfqabA/jYv85k=
X-Received: by 2002:a5d:6b11:: with SMTP id v17mr50383530wrw.323.1564488022522; 
 Tue, 30 Jul 2019 05:00:22 -0700 (PDT)
MIME-Version: 1.0
References: <20190729115544.17895-1-anup.patel@wdc.com>
 <20190729115544.17895-6-anup.patel@wdc.com>
 <9f9d09e5-49bc-f8e3-cfe1-bd5221e3b683@redhat.com>
In-Reply-To: <9f9d09e5-49bc-f8e3-cfe1-bd5221e3b683@redhat.com>
From: Anup Patel <anup@brainfault.org>
Date: Tue, 30 Jul 2019 17:30:10 +0530
Message-ID: <CAAhSdy3JZVEEnPnssALaxvCsyznF=rt=7-d5J_OgQEJv6cPhxQ@mail.gmail.com>
Subject: Re: [RFC PATCH 05/16] RISC-V: KVM: Implement VCPU interrupts and
 requests handling
To: Paolo Bonzini <pbonzini@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_050025_238776_4A0735A9 
X-CRM114-Status: GOOD (  20.14  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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
 Paul Walmsley <paul.walmsley@sifive.com>, Thomas Gleixner <tglx@linutronix.de>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, Jul 30, 2019 at 4:47 PM Paolo Bonzini <pbonzini@redhat.com> wrote:
>
> First, something that is not clear to me: how do you deal with a guest
> writing 1 to VSIP.SSIP?  I think that could lead to lost interrupts if
> you have the following sequence
>
> 1) guest writes 1 to VSIP.SSIP
>
> 2) guest leaves VS-mode
>
> 3) host syncs VSIP
>
> 4) user mode triggers interrupt
>
> 5) host reenters guest
>
> 6) host moves irqs_pending to VSIP and clears VSIP.SSIP in the process

This reasoning also apply to M-mode firmware (OpenSBI) providing timer
and IPI services to HS-mode software. We had some discussion around
it in a different context.
(Refer, https://github.com/riscv/opensbi/issues/128)

The thing is SIP CSR is supposed to be read-only for any S-mode SW. This
means HS-mode/VS-mode SW modifications to SIP CSR should have no
effect.

For HS-mode, only certain bits are writable from M-mode such as SSIP
and in-future even this will go away when we have specialized HW to
trigger S-mode IPIs without going through M-mode firmware.

For VS-mode, only HS-mode controls the pending bits writes to VSIP CSR.

If above is honored correctly by HW then the use-case you mentioned above
is not possible because Guest writing 1 to SIP.SSIP will be ignored.

It is possible that we have buggy HW which does allow Guest write to SIP
CSR bits then our current approach is to just overwrite VSIP whenver it
is different from irq_pending bits before entering Guest.

Do you still an issue here?

Regards,
Anup

>
> Perhaps irqs_pending needs to be split in two fields, irqs_pending and
> irqs_pending_mask, and then you can do this:
>
> /*
>  * irqs_pending and irqs_pending_mask have multiple-producer/single-
>  * consumer semantics; therefore bits can be set in the mask without
>  * a lock, but clearing the bits requires vcpu_lock.  Furthermore,
>  * consumers should never write to irqs_pending, and should not
>  * use bits of irqs_pending that weren't 1 in the mask.
>  */
>
> int kvm_riscv_vcpu_set_interrupt(struct kvm_vcpu *vcpu, unsigned int irq)
> {
>         ...
>         set_bit(irq, &vcpu->arch.irqs_pending);
>         smp_mb__before_atomic();
>         set_bit(irq, &vcpu->arch.irqs_pending_mask);
>         kvm_vcpu_kick(vcpu);
> }
>
> int kvm_riscv_vcpu_unset_interrupt(struct kvm_vcpu *vcpu, unsigned int irq)
> {
>         ...
>         clear_bit(irq, &vcpu->arch.irqs_pending);
>         smp_mb__before_atomic();
>         set_bit(irq, &vcpu->arch.irqs_pending_mask);
> }
>
> static void kvm_riscv_reset_vcpu(struct kvm_vcpu *vcpu)
> {
>         ...
>         WRITE_ONCE(vcpu->arch.irqs_pending_mask, 0);
> }
>
> and kvm_riscv_vcpu_flush_interrupts can leave aside VSIP bits that
> aren't in vcpu->arch.irqs_pending_mask:
>
>         if (atomic_read(&vcpu->arch.irqs_pending_mask)) {
>                 u32 mask, val;
>
>                 mask = xchg_acquire(&vcpu->arch.irqs_pending_mask, 0);
>                 val = READ_ONCE(vcpu->arch.irqs_pending) & mask;
>
>                 vcpu->arch.guest_csr.vsip &= ~mask;
>                 vcpu->arch.guest_csr.vsip |= val;
>                 csr_write(CSR_VSIP, vsip);
>         }
>
> Also, the getter of CSR_VSIP should call
> kvm_riscv_vcpu_flush_interrupts, while the setter should clear
> irqs_pending_mask.
>
> On 29/07/19 13:56, Anup Patel wrote:
> > +     kvm_make_request(KVM_REQ_IRQ_PENDING, vcpu);
> > +     kvm_vcpu_kick(vcpu);
>
> The request is not needed as long as kvm_riscv_vcpu_flush_interrupts is
> called *after* smp_store_mb(vcpu->mode, IN_GUEST_MODE) in
> kvm_arch_vcpu_ioctl_run.  This is the "request-less vCPU kick" pattern
> in Documentation/virtual/kvm/vcpu-requests.rst.  The smp_store_mb then
> orders the write of IN_GUEST_MODE before the read of irqs_pending (or
> irqs_pending_mask in my proposal above); in the producers, there is a
> dual memory barrier in kvm_vcpu_exiting_guest_mode(), ordering the write
> of irqs_pending(_mask) before the read of vcpu->mode.
>
> Similar to other VS* CSRs, I'd rather have a ONE_REG interface for VSIE
> and VSIP from the beginning as well.  Note that the VSIP setter would
> clear irqs_pending_mask, while the getter would call
> kvm_riscv_vcpu_flush_interrupts before reading.  It's up to userspace to
> ensure that no interrupt injections happen between the calls to the
> getter and the setter.
>
> Paolo
>
> > +             csr_write(CSR_VSIP, vcpu->arch.irqs_pending);
> > +             vcpu->arch.guest_csr.vsip = vcpu->arch.irqs_pending;
> > +     }
>

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
