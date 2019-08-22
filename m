Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 574BD99438
	for <lists+linux-riscv@lfdr.de>; Thu, 22 Aug 2019 14:50:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XYOBjbuyWXdZsIvgKkCTzc/KQXaZbHpgX02pI31vIsA=; b=jbf3y/H2YWEjl3
	vhD3Zm7+Bv6WsmrU0IkUiyfGtLCItp55RjwF4P6I9NFWOWQhj396EVaQ11jFd/kJ25u2W7azxDXMx
	btkyTzV/pz2wpN3LOiWzAKK0hZHap3TQgh7LRcrIXXT7ka1X5ri1OlEJ/CSFYpauGFkB5P//zyIOb
	VRJBb+GUcRM8kBamDiFF8EPKYTqZIKEwJouH+a+mB6fDJk+y10x717InQZC+QromFCXiJ4l5Bzudi
	gxcQHLAX4OrFrzHmLGsQnKKQrlwRRdoL3cFKW/fWgAwrLZQXntYYZtFWIDSHAoOZdNLQ+UAeFWH67
	H4pkCt404CM/FoHT5Sjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0mXi-0002oT-9G; Thu, 22 Aug 2019 12:50:18 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0mXf-0002nq-1t
 for linux-riscv@lists.infradead.org; Thu, 22 Aug 2019 12:50:16 +0000
Received: by mail-wr1-x444.google.com with SMTP id c3so5297143wrd.7
 for <linux-riscv@lists.infradead.org>; Thu, 22 Aug 2019 05:50:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ROB4gx4OGB1CpDcKjvU71ET9FrwtUSFzAVqfUnfvjig=;
 b=Tjz6zp1luUYbfqgLHs8u1XU3r21rRiuHFjEEE445sTZjPTG1K1TbEO655UT3JDH3uL
 sC9vFssy7r4wfHsKKF/jvniljfpEfBFwOrQchEZDTPX3FFboKQyRluqtt46Kzkw0x8XG
 yKutR8H6zkflJqqRKMFoQNCPwDuLl5c3EUDnFRNxl1fIpcQ6/JjEJYLu2fsFzhRNkdkC
 T6RMZHoZAvxRZ25l7eXoVO73Em9ogqkTFCN2UVljQt/8eRLrTATgzUwrfpw6Zd6lqKRY
 g9WxpB32AOgs0olEMDJsyZyRztxQnxlRzFtFxz+8PJQyQWvuhTE7hN6yS2Wz9XivJaJq
 D+sQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ROB4gx4OGB1CpDcKjvU71ET9FrwtUSFzAVqfUnfvjig=;
 b=nknVGBA21gT4a4NF7ZiyEaqRy/QKbBH2kJg0jeAu2PrQ55oW9JrSM847mDISvikk61
 1SJe8LqcLIzwuh+M1lalInAvPPr3dim7xviukf5wvBAi9K5llPzWwU1LOQJTp8RvoysU
 MeDK8MRFrP/Uu2jvPd2ODDC4Pt5GJG1qtMoEokQhOm5bw0+brB/1M0oWWg0bVWsk2jFi
 vqi41IfC9jOfp4kXWsLXpXjYShHaTExzWKTRa/PaDcfOmg4KSVXEyxGDKW650m+SGwjU
 q5Ppa1lpDb3FSv8dSdDYtIPGMDcp/0+QeDnqBXt7cTS7Uo0GgHltfhoY6QUnWogB5RX5
 aVVg==
X-Gm-Message-State: APjAAAW4V/KYl6YN0+dtAZEGSDWwQwKJLdQ2qmBfELEtakY8Yqj/v3QL
 HJu1mDvtVtDNQCwtedOBO/Zku3ym20KPeuf8fnmZEw==
X-Google-Smtp-Source: APXvYqzQ1TjSFQOix3vHo2hOrSZgy2endTM2XhjVhF8ByOGg0ehcvHXulptQXEetr33hXvAwYdNbyFGI7JnPGcIt6sU=
X-Received: by 2002:a05:6000:104c:: with SMTP id
 c12mr42632777wrx.328.1566478213090; 
 Thu, 22 Aug 2019 05:50:13 -0700 (PDT)
MIME-Version: 1.0
References: <20190822084131.114764-1-anup.patel@wdc.com>
 <20190822084131.114764-12-anup.patel@wdc.com>
 <29b8f7c6-4b9d-91fc-61e7-82ecfd26ff88@amazon.com>
In-Reply-To: <29b8f7c6-4b9d-91fc-61e7-82ecfd26ff88@amazon.com>
From: Anup Patel <anup@brainfault.org>
Date: Thu, 22 Aug 2019 18:20:01 +0530
Message-ID: <CAAhSdy2=6gC6fe_VtsnbQVXZnJMm_2Hc_qG3xS3nSnn5j8H1cQ@mail.gmail.com>
Subject: Re: [PATCH v5 11/20] RISC-V: KVM: Handle WFI exits for VCPU
To: Alexander Graf <graf@amazon.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_055015_103421_BED72154 
X-CRM114-Status: GOOD (  19.12  )
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

On Thu, Aug 22, 2019 at 5:49 PM Alexander Graf <graf@amazon.com> wrote:
>
> On 22.08.19 10:45, Anup Patel wrote:
> > We get illegal instruction trap whenever Guest/VM executes WFI
> > instruction.
> >
> > This patch handles WFI trap by blocking the trapped VCPU using
> > kvm_vcpu_block() API. The blocked VCPU will be automatically
> > resumed whenever a VCPU interrupt is injected from user-space
> > or from in-kernel IRQCHIP emulation.
> >
> > Signed-off-by: Anup Patel <anup.patel@wdc.com>
> > Acked-by: Paolo Bonzini <pbonzini@redhat.com>
> > Reviewed-by: Paolo Bonzini <pbonzini@redhat.com>
> > ---
> >   arch/riscv/kvm/vcpu_exit.c | 88 ++++++++++++++++++++++++++++++++++++++
> >   1 file changed, 88 insertions(+)
> >
> > diff --git a/arch/riscv/kvm/vcpu_exit.c b/arch/riscv/kvm/vcpu_exit.c
> > index efc06198c259..fbc04fe335ad 100644
> > --- a/arch/riscv/kvm/vcpu_exit.c
> > +++ b/arch/riscv/kvm/vcpu_exit.c
> > @@ -12,6 +12,9 @@
> >   #include <linux/kvm_host.h>
> >   #include <asm/csr.h>
> >
> > +#define INSN_MASK_WFI                0xffffff00
> > +#define INSN_MATCH_WFI               0x10500000
> > +
> >   #define INSN_MATCH_LB               0x3
> >   #define INSN_MASK_LB                0x707f
> >   #define INSN_MATCH_LH               0x1003
> > @@ -179,6 +182,87 @@ static ulong get_insn(struct kvm_vcpu *vcpu)
> >       return val;
> >   }
> >
> > +typedef int (*illegal_insn_func)(struct kvm_vcpu *vcpu,
> > +                              struct kvm_run *run,
> > +                              ulong insn);
> > +
> > +static int truly_illegal_insn(struct kvm_vcpu *vcpu,
> > +                           struct kvm_run *run,
> > +                           ulong insn)
> > +{
> > +     /* TODO: Redirect trap to Guest VCPU */
> > +     return -ENOTSUPP;
> > +}
> > +
> > +static int system_opcode_insn(struct kvm_vcpu *vcpu,
> > +                           struct kvm_run *run,
> > +                           ulong insn)
> > +{
> > +     if ((insn & INSN_MASK_WFI) == INSN_MATCH_WFI) {
> > +             vcpu->stat.wfi_exit_stat++;
> > +             if (!kvm_arch_vcpu_runnable(vcpu)) {
> > +                     srcu_read_unlock(&vcpu->kvm->srcu, vcpu->arch.srcu_idx);
> > +                     kvm_vcpu_block(vcpu);
> > +                     vcpu->arch.srcu_idx = srcu_read_lock(&vcpu->kvm->srcu);
> > +                     kvm_clear_request(KVM_REQ_UNHALT, vcpu);
> > +             }
> > +             vcpu->arch.guest_context.sepc += INSN_LEN(insn);
> > +             return 1;
> > +     }
> > +
> > +     return truly_illegal_insn(vcpu, run, insn);
> > +}
> > +
> > +static illegal_insn_func illegal_insn_table[32] = {
>
> Every time I did experiments on PowerPC with indirect tables like this
> over switch() in C, the switch() code won. CPUs are pretty good at
> predicting branches. Predicting indirect jumps however, they are
> terrible at.
>
> So unless you consider the jump table more readable / maintainable, I
> would suggest to use a simple switch() statement. It will be faster and
> smaller.

Yes, readability was the reason why we choose jump table but
I see your point. Most of the entries in jump table point to
truly_illegal_insn() so I guess switch case will be quite simple
here.

I will update this in next revision.

Regards,
Anup

>
>
> Alex
>
>
> > +     truly_illegal_insn, /* 0 */
> > +     truly_illegal_insn, /* 1 */
> > +     truly_illegal_insn, /* 2 */
> > +     truly_illegal_insn, /* 3 */
> > +     truly_illegal_insn, /* 4 */
> > +     truly_illegal_insn, /* 5 */
> > +     truly_illegal_insn, /* 6 */
> > +     truly_illegal_insn, /* 7 */
> > +     truly_illegal_insn, /* 8 */
> > +     truly_illegal_insn, /* 9 */
> > +     truly_illegal_insn, /* 10 */
> > +     truly_illegal_insn, /* 11 */
> > +     truly_illegal_insn, /* 12 */
> > +     truly_illegal_insn, /* 13 */
> > +     truly_illegal_insn, /* 14 */
> > +     truly_illegal_insn, /* 15 */
> > +     truly_illegal_insn, /* 16 */
> > +     truly_illegal_insn, /* 17 */
> > +     truly_illegal_insn, /* 18 */
> > +     truly_illegal_insn, /* 19 */
> > +     truly_illegal_insn, /* 20 */
> > +     truly_illegal_insn, /* 21 */
> > +     truly_illegal_insn, /* 22 */
> > +     truly_illegal_insn, /* 23 */
> > +     truly_illegal_insn, /* 24 */
> > +     truly_illegal_insn, /* 25 */
> > +     truly_illegal_insn, /* 26 */
> > +     truly_illegal_insn, /* 27 */
> > +     system_opcode_insn, /* 28 */
> > +     truly_illegal_insn, /* 29 */
> > +     truly_illegal_insn, /* 30 */
> > +     truly_illegal_insn  /* 31 */
> > +};
> > +
> > +static int illegal_inst_fault(struct kvm_vcpu *vcpu, struct kvm_run *run,
> > +                           unsigned long stval)
> > +{
> > +     ulong insn = stval;
> > +
> > +     if (unlikely((insn & 3) != 3)) {
> > +             if (insn == 0)
> > +                     insn = get_insn(vcpu);
> > +             if ((insn & 3) != 3)
> > +                     return truly_illegal_insn(vcpu, run, insn);
> > +     }
> > +
> > +     return illegal_insn_table[(insn & 0x7c) >> 2](vcpu, run, insn);
> > +}
> > +
> >   static int emulate_load(struct kvm_vcpu *vcpu, struct kvm_run *run,
> >                       unsigned long fault_addr)
> >   {
> > @@ -439,6 +523,10 @@ int kvm_riscv_vcpu_exit(struct kvm_vcpu *vcpu, struct kvm_run *run,
> >       ret = -EFAULT;
> >       run->exit_reason = KVM_EXIT_UNKNOWN;
> >       switch (scause) {
> > +     case EXC_INST_ILLEGAL:
> > +             if (vcpu->arch.guest_context.hstatus & HSTATUS_SPV)
> > +                     ret = illegal_inst_fault(vcpu, run, stval);
> > +             break;
> >       case EXC_INST_PAGE_FAULT:
> >       case EXC_LOAD_PAGE_FAULT:
> >       case EXC_STORE_PAGE_FAULT:
> >
>

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
