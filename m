Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B3AC993C0
	for <lists+linux-riscv@lfdr.de>; Thu, 22 Aug 2019 14:33:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NXPyDemf9cl+3Qbfw8V0XVAt4r+4dx1gZQRpLx2LQ3M=; b=JxzvmBIPEMKJbp
	lWpOnNk/fwXN9rjy2rqQkOhgcZodet9E/WstZMSZuNpfqsFCJnmPVxKJ/9AxtCFbvX6I38vlarPRx
	vm8YNMP18JopmS/1t7BygE7fbiHF2Sjfeg68rcP7NzGXlspGZj+x8/OAOLq6qgizANGokWtuuEJQQ
	qVsJGbJyUaQCaJAOIUzaxeYtVJc3QMjSZU5AIVZE2wh+e3h5Gqn21oD8ZknV9rAicAEJzrXRnqZM4
	+apsJrAoNmpNWwNg+4+HI3Lmq79qThN2mvkCqQE10AZt7vJWQ5m8ncJxYqJFuor6dzMP/GypHpNqv
	BOttif1Dh6eX9qgJIfIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0mHh-0002gX-Nh; Thu, 22 Aug 2019 12:33:45 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0mHd-0002fO-Hq
 for linux-riscv@lists.infradead.org; Thu, 22 Aug 2019 12:33:43 +0000
Received: by mail-wm1-x343.google.com with SMTP id k1so5473763wmi.1
 for <linux-riscv@lists.infradead.org>; Thu, 22 Aug 2019 05:33:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Jo69w2Y5GpdPAOSdBd76ME+SCr5IL7+9j1PUyEP8Fhw=;
 b=TTe1RfnhK1hg+QfkErlN2RP9MHIiCIChj7XEEShaahOG92mWO23Dbhf3YTyC2/pYh0
 1VBHaLDH9Xnpyx9PEy1s0K2y2dE7ZYm9mZTwgvHzID/QSfJ8kwClW/l1376daHt0+Htv
 ObxFyKLz3AIxqZWEBsOYP8HJRHKCy1B6+8Qez34yOjp6RxXvl3GT9d/HhLsaGGI19bDJ
 Eg09JMdw/SEjwb52gq+r+YUIUbrcFbpck9l57dKOzSRf/nyaEsx8XsuzQxpYu5dnElRO
 sS5jcNOlabbvK5YIEMzn4WAYn0jP59mU2UW89Iitm8XGoUToTnxrjOBuEkhhTEcj3Hh3
 0OEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Jo69w2Y5GpdPAOSdBd76ME+SCr5IL7+9j1PUyEP8Fhw=;
 b=rXzMwJqFGZHiSTLExngaYRbWnuc4/IiEsqf0lWsx8300tYiegkaz3iPTuhTMsJ7KBN
 xnSa7Kp8/HZPX0JFvcJtKouzng8oal0dN9mXym57rl38Pbc68z+A0K5uGnpS6TrwhSVn
 FZAqITVqHXyszg7IYpRaHBJPwH9Q3g956Jj0+iVEOLcxOKviGBSkAig5PUZ1r7RhunQI
 YR394OkMWsivEtHLSUGF3/L8/28s0R6mxXrk+HanF8fH9gdvEXgPWhX25QeAaOWI17Bt
 6TfPXRDiCXaP52SeyYuH8o6RyH40zdsc/cHI8s/lnZ72Ly2ZyhzdylXrG6A/Ijlb+cyX
 1V3g==
X-Gm-Message-State: APjAAAW1RzMzWcOzbIyiwVif0HJjkoBjbW8OA3U/DIdMpHs9Q0ecFeU1
 2GRR4qVZ2F/138B0isjjfTAkfHI05oKSWLdDxZZaYw==
X-Google-Smtp-Source: APXvYqyvRbS1LTMkIIyQkE/41BHL0/shCFGOpXnrr89IwodQepgzOEABw/zX3m+WQygrU3cuaUl6Z6hqR6nXdBSbcF4=
X-Received: by 2002:a1c:3d89:: with SMTP id k131mr5691618wma.24.1566477218546; 
 Thu, 22 Aug 2019 05:33:38 -0700 (PDT)
MIME-Version: 1.0
References: <20190822084131.114764-1-anup.patel@wdc.com>
 <20190822084131.114764-11-anup.patel@wdc.com>
 <917cea87-42c0-e50a-6508-d5b577c8b702@amazon.com>
In-Reply-To: <917cea87-42c0-e50a-6508-d5b577c8b702@amazon.com>
From: Anup Patel <anup@brainfault.org>
Date: Thu, 22 Aug 2019 18:03:27 +0530
Message-ID: <CAAhSdy2QtZRKvs0Hr-mZuVsb7sVkweeW-RpvhObZR009UbA7KA@mail.gmail.com>
Subject: Re: [PATCH v5 10/20] RISC-V: KVM: Handle MMIO exits for VCPU
To: Alexander Graf <graf@amazon.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_053341_593864_0D213E6C 
X-CRM114-Status: GOOD (  23.11  )
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
 Paul Walmsley <paul.walmsley@sifive.com>, Paolo Bonzini <pbonzini@redhat.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, Aug 22, 2019 at 5:44 PM Alexander Graf <graf@amazon.com> wrote:
>
> On 22.08.19 10:44, Anup Patel wrote:
> > We will get stage2 page faults whenever Guest/VM access SW emulated
> > MMIO device or unmapped Guest RAM.
> >
> > This patch implements MMIO read/write emulation by extracting MMIO
> > details from the trapped load/store instruction and forwarding the
> > MMIO read/write to user-space. The actual MMIO emulation will happen
> > in user-space and KVM kernel module will only take care of register
> > updates before resuming the trapped VCPU.
> >
> > The handling for stage2 page faults for unmapped Guest RAM will be
> > implemeted by a separate patch later.
> >
> > Signed-off-by: Anup Patel <anup.patel@wdc.com>
> > Acked-by: Paolo Bonzini <pbonzini@redhat.com>
> > Reviewed-by: Paolo Bonzini <pbonzini@redhat.com>
> > ---
> >   arch/riscv/include/asm/kvm_host.h |  11 +
> >   arch/riscv/kvm/mmu.c              |   7 +
> >   arch/riscv/kvm/vcpu_exit.c        | 436 +++++++++++++++++++++++++++++-
> >   3 files changed, 451 insertions(+), 3 deletions(-)
> >
> > diff --git a/arch/riscv/include/asm/kvm_host.h b/arch/riscv/include/asm/kvm_host.h
> > index 18f1097f1d8d..4388bace6d70 100644
> > --- a/arch/riscv/include/asm/kvm_host.h
> > +++ b/arch/riscv/include/asm/kvm_host.h
> > @@ -53,6 +53,12 @@ struct kvm_arch {
> >       phys_addr_t pgd_phys;
> >   };
> >
> > +struct kvm_mmio_decode {
> > +     unsigned long insn;
> > +     int len;
> > +     int shift;
> > +};
> > +
> >   struct kvm_cpu_context {
> >       unsigned long zero;
> >       unsigned long ra;
> > @@ -141,6 +147,9 @@ struct kvm_vcpu_arch {
> >       unsigned long irqs_pending;
> >       unsigned long irqs_pending_mask;
> >
> > +     /* MMIO instruction details */
> > +     struct kvm_mmio_decode mmio_decode;
> > +
> >       /* VCPU power-off state */
> >       bool power_off;
> >
> > @@ -160,6 +169,8 @@ static inline void kvm_arch_vcpu_block_finish(struct kvm_vcpu *vcpu) {}
> >   int kvm_riscv_setup_vsip(void);
> >   void kvm_riscv_cleanup_vsip(void);
> >
> > +int kvm_riscv_stage2_map(struct kvm_vcpu *vcpu, gpa_t gpa, unsigned long hva,
> > +                      bool is_write);
> >   void kvm_riscv_stage2_flush_cache(struct kvm_vcpu *vcpu);
> >   int kvm_riscv_stage2_alloc_pgd(struct kvm *kvm);
> >   void kvm_riscv_stage2_free_pgd(struct kvm *kvm);
> > diff --git a/arch/riscv/kvm/mmu.c b/arch/riscv/kvm/mmu.c
> > index 04dd089b86ff..2b965f9aac07 100644
> > --- a/arch/riscv/kvm/mmu.c
> > +++ b/arch/riscv/kvm/mmu.c
> > @@ -61,6 +61,13 @@ int kvm_arch_prepare_memory_region(struct kvm *kvm,
> >       return 0;
> >   }
> >
> > +int kvm_riscv_stage2_map(struct kvm_vcpu *vcpu, gpa_t gpa, unsigned long hva,
> > +                      bool is_write)
> > +{
> > +     /* TODO: */
> > +     return 0;
> > +}
> > +
> >   void kvm_riscv_stage2_flush_cache(struct kvm_vcpu *vcpu)
> >   {
> >       /* TODO: */
> > diff --git a/arch/riscv/kvm/vcpu_exit.c b/arch/riscv/kvm/vcpu_exit.c
> > index e4d7c8f0807a..efc06198c259 100644
> > --- a/arch/riscv/kvm/vcpu_exit.c
> > +++ b/arch/riscv/kvm/vcpu_exit.c
> > @@ -6,9 +6,371 @@
> >    *     Anup Patel <anup.patel@wdc.com>
> >    */
> >
> > +#include <linux/bitops.h>
> >   #include <linux/errno.h>
> >   #include <linux/err.h>
> >   #include <linux/kvm_host.h>
> > +#include <asm/csr.h>
> > +
> > +#define INSN_MATCH_LB                0x3
> > +#define INSN_MASK_LB         0x707f
> > +#define INSN_MATCH_LH                0x1003
> > +#define INSN_MASK_LH         0x707f
> > +#define INSN_MATCH_LW                0x2003
> > +#define INSN_MASK_LW         0x707f
> > +#define INSN_MATCH_LD                0x3003
> > +#define INSN_MASK_LD         0x707f
> > +#define INSN_MATCH_LBU               0x4003
> > +#define INSN_MASK_LBU                0x707f
> > +#define INSN_MATCH_LHU               0x5003
> > +#define INSN_MASK_LHU                0x707f
> > +#define INSN_MATCH_LWU               0x6003
> > +#define INSN_MASK_LWU                0x707f
> > +#define INSN_MATCH_SB                0x23
> > +#define INSN_MASK_SB         0x707f
> > +#define INSN_MATCH_SH                0x1023
> > +#define INSN_MASK_SH         0x707f
> > +#define INSN_MATCH_SW                0x2023
> > +#define INSN_MASK_SW         0x707f
> > +#define INSN_MATCH_SD                0x3023
> > +#define INSN_MASK_SD         0x707f
> > +
> > +#define INSN_MATCH_C_LD              0x6000
> > +#define INSN_MASK_C_LD               0xe003
> > +#define INSN_MATCH_C_SD              0xe000
> > +#define INSN_MASK_C_SD               0xe003
> > +#define INSN_MATCH_C_LW              0x4000
> > +#define INSN_MASK_C_LW               0xe003
> > +#define INSN_MATCH_C_SW              0xc000
> > +#define INSN_MASK_C_SW               0xe003
> > +#define INSN_MATCH_C_LDSP    0x6002
> > +#define INSN_MASK_C_LDSP     0xe003
> > +#define INSN_MATCH_C_SDSP    0xe002
> > +#define INSN_MASK_C_SDSP     0xe003
> > +#define INSN_MATCH_C_LWSP    0x4002
> > +#define INSN_MASK_C_LWSP     0xe003
> > +#define INSN_MATCH_C_SWSP    0xc002
> > +#define INSN_MASK_C_SWSP     0xe003
> > +
> > +#define INSN_LEN(insn)               ((((insn) & 0x3) < 0x3) ? 2 : 4)
> > +
> > +#ifdef CONFIG_64BIT
> > +#define LOG_REGBYTES         3
> > +#else
> > +#define LOG_REGBYTES         2
> > +#endif
> > +#define REGBYTES             (1 << LOG_REGBYTES)
> > +
> > +#define SH_RD                        7
> > +#define SH_RS1                       15
> > +#define SH_RS2                       20
> > +#define SH_RS2C                      2
> > +
> > +#define RV_X(x, s, n)                (((x) >> (s)) & ((1 << (n)) - 1))
> > +#define RVC_LW_IMM(x)                ((RV_X(x, 6, 1) << 2) | \
> > +                              (RV_X(x, 10, 3) << 3) | \
> > +                              (RV_X(x, 5, 1) << 6))
> > +#define RVC_LD_IMM(x)                ((RV_X(x, 10, 3) << 3) | \
> > +                              (RV_X(x, 5, 2) << 6))
> > +#define RVC_LWSP_IMM(x)              ((RV_X(x, 4, 3) << 2) | \
> > +                              (RV_X(x, 12, 1) << 5) | \
> > +                              (RV_X(x, 2, 2) << 6))
> > +#define RVC_LDSP_IMM(x)              ((RV_X(x, 5, 2) << 3) | \
> > +                              (RV_X(x, 12, 1) << 5) | \
> > +                              (RV_X(x, 2, 3) << 6))
> > +#define RVC_SWSP_IMM(x)              ((RV_X(x, 9, 4) << 2) | \
> > +                              (RV_X(x, 7, 2) << 6))
> > +#define RVC_SDSP_IMM(x)              ((RV_X(x, 10, 3) << 3) | \
> > +                              (RV_X(x, 7, 3) << 6))
> > +#define RVC_RS1S(insn)               (8 + RV_X(insn, SH_RD, 3))
> > +#define RVC_RS2S(insn)               (8 + RV_X(insn, SH_RS2C, 3))
> > +#define RVC_RS2(insn)                RV_X(insn, SH_RS2C, 5)
> > +
> > +#define SHIFT_RIGHT(x, y)            \
> > +     ((y) < 0 ? ((x) << -(y)) : ((x) >> (y)))
> > +
> > +#define REG_MASK                     \
> > +     ((1 << (5 + LOG_REGBYTES)) - (1 << LOG_REGBYTES))
> > +
> > +#define REG_OFFSET(insn, pos)                \
> > +     (SHIFT_RIGHT((insn), (pos) - LOG_REGBYTES) & REG_MASK)
> > +
> > +#define REG_PTR(insn, pos, regs)     \
> > +     (ulong *)((ulong)(regs) + REG_OFFSET(insn, pos))
> > +
> > +#define GET_RM(insn)         (((insn) >> 12) & 7)
> > +
> > +#define GET_RS1(insn, regs)  (*REG_PTR(insn, SH_RS1, regs))
> > +#define GET_RS2(insn, regs)  (*REG_PTR(insn, SH_RS2, regs))
> > +#define GET_RS1S(insn, regs) (*REG_PTR(RVC_RS1S(insn), 0, regs))
> > +#define GET_RS2S(insn, regs) (*REG_PTR(RVC_RS2S(insn), 0, regs))
> > +#define GET_RS2C(insn, regs) (*REG_PTR(insn, SH_RS2C, regs))
> > +#define GET_SP(regs)         (*REG_PTR(2, 0, regs))
> > +#define SET_RD(insn, regs, val)      (*REG_PTR(insn, SH_RD, regs) = (val))
> > +#define IMM_I(insn)          ((s32)(insn) >> 20)
> > +#define IMM_S(insn)          (((s32)(insn) >> 25 << 5) | \
> > +                              (s32)(((insn) >> 7) & 0x1f))
> > +#define MASK_FUNCT3          0x7000
> > +
> > +#define STR(x)                       XSTR(x)
> > +#define XSTR(x)                      #x
> > +
> > +/* TODO: Handle traps due to unpriv load and redirect it back to VS-mode */
> > +static ulong get_insn(struct kvm_vcpu *vcpu)
> > +{
> > +     ulong __sepc = vcpu->arch.guest_context.sepc;
> > +     ulong __hstatus, __sstatus, __vsstatus;
> > +#ifdef CONFIG_RISCV_ISA_C
> > +     ulong rvc_mask = 3, tmp;
> > +#endif
> > +     ulong flags, val;
> > +
> > +     local_irq_save(flags);
> > +
> > +     __vsstatus = csr_read(CSR_VSSTATUS);
> > +     __sstatus = csr_read(CSR_SSTATUS);
> > +     __hstatus = csr_read(CSR_HSTATUS);
> > +
> > +     csr_write(CSR_VSSTATUS, __vsstatus | SR_MXR);
> > +     csr_write(CSR_SSTATUS, vcpu->arch.guest_context.sstatus | SR_MXR);
> > +     csr_write(CSR_HSTATUS, vcpu->arch.guest_context.hstatus | HSTATUS_SPRV);
>
> What happens when the insn load triggers a page fault, maybe because the
> guest was malicious and did
>
>    1) Run on page 0x1000
>    2) Remove map for 0x1000, do *not* flush TLB
>    3) Trigger MMIO
>
> That would DOS the host here, as the host kernel would continue running
> in guest address space, right?

Yes, we can certainly fault while accessing Guest instruction. We will
be fixing this issue in a followup series. We have mentioned this in cover
letter as well.

BTW, RISC-V spec is going to further improve to provide easy
access of faulting instruction to Hypervisor.
(Refer, https://github.com/riscv/riscv-isa-manual/issues/431)

Regards,
Anup

>
>
> Alex
>
> > +
> > +#ifndef CONFIG_RISCV_ISA_C
> > +     asm ("\n"
> > +#ifdef CONFIG_64BIT
> > +             STR(LWU) " %[insn], (%[addr])\n"
> > +#else
> > +             STR(LW) " %[insn], (%[addr])\n"
> > +#endif
> > +             : [insn] "=&r" (val) : [addr] "r" (__sepc));
> > +#else
> > +     asm ("and %[tmp], %[addr], 2\n"
> > +             "bnez %[tmp], 1f\n"
> > +#ifdef CONFIG_64BIT
> > +             STR(LWU) " %[insn], (%[addr])\n"
> > +#else
> > +             STR(LW) " %[insn], (%[addr])\n"
> > +#endif
> > +             "and %[tmp], %[insn], %[rvc_mask]\n"
> > +             "beq %[tmp], %[rvc_mask], 2f\n"
> > +             "sll %[insn], %[insn], %[xlen_minus_16]\n"
> > +             "srl %[insn], %[insn], %[xlen_minus_16]\n"
> > +             "j 2f\n"
> > +             "1:\n"
> > +             "lhu %[insn], (%[addr])\n"
> > +             "and %[tmp], %[insn], %[rvc_mask]\n"
> > +             "bne %[tmp], %[rvc_mask], 2f\n"
> > +             "lhu %[tmp], 2(%[addr])\n"
> > +             "sll %[tmp], %[tmp], 16\n"
> > +             "add %[insn], %[insn], %[tmp]\n"
> > +             "2:"
> > +     : [vsstatus] "+&r" (__vsstatus), [insn] "=&r" (val),
> > +       [tmp] "=&r" (tmp)
> > +     : [addr] "r" (__sepc), [rvc_mask] "r" (rvc_mask),
> > +       [xlen_minus_16] "i" (__riscv_xlen - 16));
> > +#endif
> > +
> > +     csr_write(CSR_HSTATUS, __hstatus);
> > +     csr_write(CSR_SSTATUS, __sstatus);
> > +     csr_write(CSR_VSSTATUS, __vsstatus);
> > +
> > +     local_irq_restore(flags);
> > +
> > +     return val;
> > +}
>

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
