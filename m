Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DFDF3BB4FF
	for <lists+linux-riscv@lfdr.de>; Mon, 23 Sep 2019 15:10:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=87F1C4QgDvCpJEANg55M4aoewxFrCUBW5N+Bj6rUY4Q=; b=T+u3nScQepw5c/
	ChndP+ADfr8erFfN/q+xotD16UX7mVV8Potg6Vcjb8QYgyqBJ0swwA1v61kzOX4EFilTeUELGlVsz
	RLT3HKZrP4H4IbHsX+Qgjm1HVXVgGQy5ETBmW/MtvEFkfF8QQy0x5GIccJctCb2L/UB5ESaZeqJk5
	sqjuqmjH/uze5eV3q2Kur9eUiFvvehx8tyElqEtCM9JVdJATl0NEbJ/3/HW752FLGmPWHNKGQl6ma
	B6nlUWemqZz76bm2YJjdKrd/iHuihT8oU7FlZZILDBcYQN/H2nk9jxmUM5Szidz8FIhd/Q9zDkqw0
	xCyzn7CzxqjqaMTFJHwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCO6P-0006Sc-6K; Mon, 23 Sep 2019 13:10:05 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCO6K-0006EW-RH
 for linux-riscv@lists.infradead.org; Mon, 23 Sep 2019 13:10:02 +0000
Received: by mail-wm1-x344.google.com with SMTP id p7so9893638wmp.4
 for <linux-riscv@lists.infradead.org>; Mon, 23 Sep 2019 06:09:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=POQzEF32pJw+JcJGYwatIQLE1EclVL51HgsgtLA7Qmw=;
 b=BX0d9fUZ89UyQbARi+EIiuQz7/skB03FkmvzPaRZR3ZECUUjvMHRyuchQCs+a9LAea
 2G+PIK23wzO+ITkoV9HFRLsgbyKRheMT1vim2zYSLgpWoWWc768/w/OGIxA96QWxNPvq
 SJEKRVfFuMmfOJ4unliQJ5+TqqUvYFiIxrGMrgtRcVF3bmfjsXCvhjEXGeLH1u++HYAe
 qbVfRinf3ErfTk1H3EIgzb+9pP38kcbHr+3YQCq6Js11GuGfHHbjTYGjPwlL63q3Y4/U
 SKvhbtyKQWs8UXSHYGStv9Jl55kLNR8viy0MdL8sHCwy11YhD12ccd5rFMgoUxtK2ykE
 sItA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=POQzEF32pJw+JcJGYwatIQLE1EclVL51HgsgtLA7Qmw=;
 b=MyYde0FuFzTZcxUwnlcUp4YhiyGgqBd3eBXVBUE2wMpEmeLgUntXuk4pruVXiFIGne
 QObo7yFH+dN13NOZiyShpZJWLqssthaujtl+2LPXVi/PAKOZi+6dhJXxKMnz+6M0/0B/
 18Tkx4yGYcrfXCWQfYMnDZcKPWUZbP00dkmS7KGW/ch1zJsm5o+CrWNUxvx2YxAwOl+Y
 g1iZAfdCgvIxRsU8X4aWXxv7KFWQRG142DIUd3d6ESWve9xRAFpXuv8/1Rc/iCaHyMl+
 qFiD6dYeG8cQaeyPmPeR609bHZz7sbjZwtiKlrcfPSOSRnAC30RpXL3vMju8nsKo3Hfo
 QK8A==
X-Gm-Message-State: APjAAAXzXB0hUeTEsOdTY7jshn5fIAZJMNIRA5yQSfpvk6m6Hjt7lIO5
 Df6PjLGCd3HiBBmKM95LlT60Vbg+5ZfyN9l5U5fxig==
X-Google-Smtp-Source: APXvYqxmSBlwd2lVkFWxE9RTK2LVohXpZcBHo1U2r2gpRoUOnN9IsM4d5615+AEz4vMLdLGhar/FgZSJ+9bVZz2tU3M=
X-Received: by 2002:a7b:c84f:: with SMTP id c15mr12094316wml.52.1569244194712; 
 Mon, 23 Sep 2019 06:09:54 -0700 (PDT)
MIME-Version: 1.0
References: <20190904161245.111924-1-anup.patel@wdc.com>
 <20190904161245.111924-12-anup.patel@wdc.com>
 <8c44ac8a-3fdc-b9dd-1815-06e86cb73047@redhat.com>
In-Reply-To: <8c44ac8a-3fdc-b9dd-1815-06e86cb73047@redhat.com>
From: Anup Patel <anup@brainfault.org>
Date: Mon, 23 Sep 2019 18:39:43 +0530
Message-ID: <CAAhSdy1-1yxMnjzppmUBxtSOAuwWaPtNZwW+QH1O7LAnEVP8pg@mail.gmail.com>
Subject: Re: [PATCH v7 10/21] RISC-V: KVM: Handle MMIO exits for VCPU
To: Paolo Bonzini <pbonzini@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_061000_887652_7C966634 
X-CRM114-Status: GOOD (  13.95  )
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
 Alexander Graf <graf@amazon.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 Alistair Francis <Alistair.Francis@wdc.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, Sep 23, 2019 at 4:42 PM Paolo Bonzini <pbonzini@redhat.com> wrote:
>
> On 04/09/19 18:15, Anup Patel wrote:
> > +     unsigned long guest_sstatus =
> > +                     vcpu->arch.guest_context.sstatus | SR_MXR;
> > +     unsigned long guest_hstatus =
> > +                     vcpu->arch.guest_context.hstatus | HSTATUS_SPRV;
> > +     unsigned long guest_vsstatus, old_stvec, tmp;
> > +
> > +     guest_sstatus = csr_swap(CSR_SSTATUS, guest_sstatus);
> > +     old_stvec = csr_swap(CSR_STVEC, (ulong)&__kvm_riscv_unpriv_trap);
> > +
> > +     if (read_insn) {
> > +             guest_vsstatus = csr_read_set(CSR_VSSTATUS, SR_MXR);
>
> Is this needed?  IIUC SSTATUS.MXR encompasses a wider set of permissions:
>
>   The HS-level MXR bit makes any executable page readable.  {\tt
>   vsstatus}.MXR makes readable those pages marked executable at the VS
>   translation level, but only if readable at the guest-physical
>   translation level.
>
> So it should be enough to set SSTATUS.MXR=1 I think.  But you also
> shouldn't set SSTATUS.MXR=1 in the !read_insn case.

I was being overly cautious here. Initially, I thought SSTATUS.MXR
applies only to Stage2 and VSSTATUS.MXR applies only to Stage1.

I agree with you. The HS-mode should only need to set SSTATUS.MXR.

>
> Also, you can drop the irq save/restore (which is already a save/restore
> of SSTATUS) since you already write 0 to SSTATUS.SIE in your csr_swap.
> Perhaps add a BUG_ON(guest_sstatus & SR_SIE) before the csr_swap?

I had already dropped irq save/restore in v7 series and having BUG_ON()
on guest_sstatus here would be better.

>
> > +             asm volatile ("\n"
> > +                     "csrrw %[hstatus], " STR(CSR_HSTATUS) ", %[hstatus]\n"
> > +                     "li %[tilen], 4\n"
> > +                     "li %[tscause], 0\n"
> > +                     "lhu %[val], (%[addr])\n"
> > +                     "andi %[tmp], %[val], 3\n"
> > +                     "addi %[tmp], %[tmp], -3\n"
> > +                     "bne %[tmp], zero, 2f\n"
> > +                     "lhu %[tmp], 2(%[addr])\n"
> > +                     "sll %[tmp], %[tmp], 16\n"
> > +                     "add %[val], %[val], %[tmp]\n"
> > +                     "2: csrw " STR(CSR_HSTATUS) ", %[hstatus]"
> > +             : [hstatus] "+&r"(guest_hstatus), [val] "=&r" (val),
> > +               [tmp] "=&r" (tmp), [tilen] "+&r" (tilen),
> > +               [tscause] "+&r" (tscause)
> > +             : [addr] "r" (addr));
> > +             csr_write(CSR_VSSTATUS, guest_vsstatus);
>
> >
> > +#ifndef CONFIG_RISCV_ISA_C
> > +                     "li %[tilen], 4\n"
> > +#else
> > +                     "li %[tilen], 2\n"
> > +#endif
>
> Can you use an assembler directive to force using a non-compressed
> format for ld and lw?  This would get rid of tilen, which is costing 6
> bytes (if I did the RVC math right) in order to save two. :)

I tried looking for it but could not find any assembler directive
to selectively turn-off instruction compression.

>
> Paolo
>
> > +                     "li %[tscause], 0\n"
> > +#ifdef CONFIG_64BIT
> > +                     "ld %[val], (%[addr])\n"
> > +#else
> > +                     "lw %[val], (%[addr])\n"
> > +#endif

Regards,
Anup

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
