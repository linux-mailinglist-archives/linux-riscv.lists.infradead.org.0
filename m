Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01823811C5
	for <lists+linux-riscv@lfdr.de>; Mon,  5 Aug 2019 07:49:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZL83AqEzIGcA4aR3DWXooQhkOmNwkoVfTY4zkoTLiIw=; b=l2NMRbxS8kNDwU
	xE2eIb80yE4Tzh2lNGO4ZP+0ZDUwdeWYVh8UXtjeoHdHm9wgCMVBGtXC8Ce46hJinx9uN79U5uT2Y
	FNBh6dOeRGpog04N45sGWAX0fkIvF0yEqyQX4CSQYRPhsQbceRbaVdqXRjfHfH5LGpEQahLaVRsm4
	M7EobgXHyjB7WvnhB5Qr9nLgk9G9cVIo47X7DoYE9ErJgaaOYq0H6/O/T1K6gEjCLAIiDX868RlHY
	4CW3twRiBs79c/nY2ACnnRFp0g9bmg0fTmnzfkP9yDVRj/bDDnZFvIOIHVFfFG6dLIeEgKkOmWFZe
	B3G1PwWEBK+rW3ISLtKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huVra-0001uY-4f; Mon, 05 Aug 2019 05:48:54 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huVrV-0001u9-76
 for linux-riscv@lists.infradead.org; Mon, 05 Aug 2019 05:48:50 +0000
Received: by mail-wm1-x343.google.com with SMTP id s15so50352084wmj.3
 for <linux-riscv@lists.infradead.org>; Sun, 04 Aug 2019 22:48:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=1TgAgMN1acZNwv5Q61grmXOTBBeUYwY88MxdxlFsIgo=;
 b=sVnmdtBTLTowplyB43mPn9+XoIJom4npEqgCUIIA9I6z56mRtxYVMUUcDlq+XvFMl0
 SN6cLhPICpsyH32V+Pk3fcQsMLNfI8XWZHZwK35OZEmkchXkHZuB2R7U9Eo2vMf+8eZc
 4Wk2w/b2Q0K+QYb5s/FZZ++0Zu4jh5eYgUzfhRNP9nUtl1LG1eQPQyDFiTN+gW2fkht3
 ukkGxL+AVLE41Lp2MCbJZ4PFjOU7foC7WwD4VgSBd9EkBfKFfqO9aH43GMaCxkzPcyb/
 i8QUc3Pb1e8jaxMzV8q1CdLlAQE0pQlf87lWDs3irHeCIAkKkcaq6jEhhjCJ03SVqrDK
 gISQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=1TgAgMN1acZNwv5Q61grmXOTBBeUYwY88MxdxlFsIgo=;
 b=QAqmG1oIYs1O3j5BcWSacPykdkBBQw8/lQzNkVL13shb3cdrqN9s5PiYo5IcJ44EFA
 /ZPToLRxqdiAud9DVa+US4aaSemQZxjwoeu+ftAI11F+nApoER6sjP2o5SZR3CNG6Jk5
 aaw3iOqPzsE5VL+75sgTCcJfxgyzTGck2AwWc+VStExLnI99Pq80lOA6YgaPs4PonWtx
 MNN9F7cVDWELGf3EAIpG+Zhk/WH1mQBKWB6MwlDf7G5+KS21lnN4cscejHFUmuue3s39
 oB7qCqYUk/5iMJRBLT6hbZNfYZo3ArJRkwP3L9Vk2Yxf5ljzOLEFN+xzBma31RKLw5jE
 xj1g==
X-Gm-Message-State: APjAAAXD0QlntgX2bV442O6n54Nycr3HLQWXpkXx8mixXRAemdqHMuAP
 gdUM3uwGTT3c5Wb5gUbWsuM1hNtELWBaoRdNAyY6cw==
X-Google-Smtp-Source: APXvYqzW3IowkTSrn4nUEPSacemcxGVfBVssQwFtqtRFmO8Phkuhnd8lGP7wGdYpat5rhVK2w/B0MXCPFoNEYeOkEz4=
X-Received: by 2002:a1c:cfc5:: with SMTP id f188mr15160196wmg.24.1564984126543; 
 Sun, 04 Aug 2019 22:48:46 -0700 (PDT)
MIME-Version: 1.0
References: <20190802074620.115029-1-anup.patel@wdc.com>
 <20190802074620.115029-5-anup.patel@wdc.com>
 <9f30d2b6-fa2c-22ff-e597-b9fbd1c700ff@redhat.com>
In-Reply-To: <9f30d2b6-fa2c-22ff-e597-b9fbd1c700ff@redhat.com>
From: Anup Patel <anup@brainfault.org>
Date: Mon, 5 Aug 2019 11:18:34 +0530
Message-ID: <CAAhSdy16w+98VB7+DtVJOngABu2uUDmYmqURMsRBqzvKCQfGUQ@mail.gmail.com>
Subject: Re: [RFC PATCH v2 04/19] RISC-V: Add initial skeletal KVM support
To: Paolo Bonzini <pbonzini@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190804_224849_396041_0257582A 
X-CRM114-Status: GOOD (  19.01  )
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
 Paul Walmsley <paul.walmsley@sifive.com>, Thomas Gleixner <tglx@linutronix.de>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, Aug 2, 2019 at 2:31 PM Paolo Bonzini <pbonzini@redhat.com> wrote:
>
> On 02/08/19 09:47, Anup Patel wrote:
> > +static void kvm_riscv_check_vcpu_requests(struct kvm_vcpu *vcpu)
> > +{
> > +     if (kvm_request_pending(vcpu)) {
> > +             /* TODO: */
> > +
> > +             /*
> > +              * Clear IRQ_PENDING requests that were made to guarantee
> > +              * that a VCPU sees new virtual interrupts.
> > +              */
> > +             kvm_check_request(KVM_REQ_IRQ_PENDING, vcpu);
> > +     }
> > +}
>
> This kvm_check_request can go away (as it does in patch 6).

Argh, I should have removed it in v2 itself.

Thanks for catching. I will update.

>
> > +int kvm_arch_vcpu_ioctl_run(struct kvm_vcpu *vcpu, struct kvm_run *run)
> > +{
> > +     int ret;
> > +     unsigned long scause, stval;
>
> You need to wrap this with srcu_read_lock/srcu_read_unlock, otherwise
> stage2_page_fault can access freed memslot arrays.  (ARM doesn't have
> this issue because it does not have to decode instructions on MMIO faults).

Looking at KVM ARM/ARM64, I was not sure about use of kvm->srcu. Thanks
for clarifying. I will use kvm->srcu like you suggested.

>
> That is,
>
>         vcpu->srcu_idx = srcu_read_lock(&vcpu->kvm->srcu);
>
> > +     /* Process MMIO value returned from user-space */
> > +     if (run->exit_reason == KVM_EXIT_MMIO) {
> > +             ret = kvm_riscv_vcpu_mmio_return(vcpu, vcpu->run);
> > +             if (ret)
> > +                     return ret;
> > +     }
> > +
> > +     if (run->immediate_exit)
> > +             return -EINTR;
> > +
> > +     vcpu_load(vcpu);
> > +
> > +     kvm_sigset_activate(vcpu);
> > +
> > +     ret = 1;
> > +     run->exit_reason = KVM_EXIT_UNKNOWN;
> > +     while (ret > 0) {
> > +             /* Check conditions before entering the guest */
> > +             cond_resched();
> > +
> > +             kvm_riscv_check_vcpu_requests(vcpu);
> > +
> > +             preempt_disable();
> > +
> > +             local_irq_disable();
> > +
> > +             /*
> > +              * Exit if we have a signal pending so that we can deliver
> > +              * the signal to user space.
> > +              */
> > +             if (signal_pending(current)) {
> > +                     ret = -EINTR;
> > +                     run->exit_reason = KVM_EXIT_INTR;
> > +             }
>
> Add an srcu_read_unlock here (and then the smp_store_mb can become
> smp_mb__after_srcu_read_unlock + WRITE_ONCE).

Sure, I will update.

>
>
> > +             /*
> > +              * Ensure we set mode to IN_GUEST_MODE after we disable
> > +              * interrupts and before the final VCPU requests check.
> > +              * See the comment in kvm_vcpu_exiting_guest_mode() and
> > +              * Documentation/virtual/kvm/vcpu-requests.rst
> > +              */
> > +             smp_store_mb(vcpu->mode, IN_GUEST_MODE);
> > +
> > +             if (ret <= 0 ||
> > +                 kvm_request_pending(vcpu)) {
> > +                     vcpu->mode = OUTSIDE_GUEST_MODE;
> > +                     local_irq_enable();
> > +                     preempt_enable();
> > +                     continue;
> > +             }
> > +
> > +             guest_enter_irqoff();
> > +
> > +             __kvm_riscv_switch_to(&vcpu->arch);
> > +
> > +             vcpu->mode = OUTSIDE_GUEST_MODE;
> > +             vcpu->stat.exits++;
> > +
> > +             /* Save SCAUSE and STVAL because we might get an interrupt
> > +              * between __kvm_riscv_switch_to() and local_irq_enable()
> > +              * which can potentially overwrite SCAUSE and STVAL.
> > +              */
> > +             scause = csr_read(CSR_SCAUSE);
> > +             stval = csr_read(CSR_STVAL);
> > +
> > +             /*
> > +              * We may have taken a host interrupt in VS/VU-mode (i.e.
> > +              * while executing the guest). This interrupt is still
> > +              * pending, as we haven't serviced it yet!
> > +              *
> > +              * We're now back in HS-mode with interrupts disabled
> > +              * so enabling the interrupts now will have the effect
> > +              * of taking the interrupt again, in HS-mode this time.
> > +              */
> > +             local_irq_enable();
> > +
> > +             /*
> > +              * We do local_irq_enable() before calling guest_exit() so
> > +              * that if a timer interrupt hits while running the guest
> > +              * we account that tick as being spent in the guest. We
> > +              * enable preemption after calling guest_exit() so that if
> > +              * we get preempted we make sure ticks after that is not
> > +              * counted as guest time.
> > +              */
> > +             guest_exit();
> > +
> > +             preempt_enable();
>
> And another srcu_read_lock here.  Using vcpu->srcu_idx instead of a
> local variable also allows system_opcode_insn to wrap kvm_vcpu_block
> with a srcu_read_unlock/srcu_read_lock pair.

Okay.

>
> > +             ret = kvm_riscv_vcpu_exit(vcpu, run, scause, stval);
> > +     }
> > +
> > +     kvm_sigset_deactivate(vcpu);
>
> And finally srcu_read_unlock here.

Okay.

Regards,
Anup

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
