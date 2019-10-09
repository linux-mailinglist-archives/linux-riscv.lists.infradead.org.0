Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C6ABD06CB
	for <lists+linux-riscv@lfdr.de>; Wed,  9 Oct 2019 06:59:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yCJXNhaPko2zPqwpWQplFxVrxdtLg3ay67vFb63za3Y=; b=gZsnCSMoKxj/Af
	Maq+UgjixNkHsWLZZR/l4mi9WI/Gsv/WMxV7i7Crj1950Y9d39gKVp3u+UfYLOOpdht1rHpefNBWO
	SHLFpqB8yM390ZfiP3eIOV8Vs369Szr256/HTgyKrdeDD+i0d1mzq3axS+kEcn/Up2bKB106Bd3kC
	bqlFiFYyDjzVLhU9woyYJ9MeQsBv3ThhdUq1JcQSprPG3aBhbLCr1hiXuqcNYJ3F4ijz2h/n4Nf63
	H4PXd0MumHsDHYvisxPZwLG2olP5H8LezegGto4btN4iP87ygeKpGfkTPlVoqwPM5aknXUZA1SE7Q
	l9U0uQLYefDfqhTSj2aA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iI43i-0006zr-Li; Wed, 09 Oct 2019 04:58:46 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iI43e-0006z2-DG
 for linux-riscv@lists.infradead.org; Wed, 09 Oct 2019 04:58:44 +0000
Received: by mail-wm1-x344.google.com with SMTP id v17so818298wml.4
 for <linux-riscv@lists.infradead.org>; Tue, 08 Oct 2019 21:58:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=6Th+89a5V8k+uKydsUbUW6spU9f1K+uJVHbWR12xq0U=;
 b=ogVzvixbP+uJxJej5W5+DjT4uNHQ/WOSKO6djitiFeatVfHpjeRJOfCr7eAGKGZLih
 f1ZdfUfrSQ1c756p6jtcplyJHvxxEgHFS2tdRFsLXt4G3jtWMIqYA0cUfNczPLWloYTe
 IP3mjojpp33DwQYBxRsOPicILJ42abyhaVPWyd1bArsRie+/mUJq9h/zg6PKml4rQVEd
 Yz27x153PzyOsLC0DvlKh4AJUKYfs2Nt1Xs4MWGkGJIzglF8dUkW23sxA8JVfwIL8vqH
 KUD+WZ5WXHPRvcM55FqU5yTVGB5w704q1swulrnc5/z6xEvws7fKe+s3ISr1kZ9A3HnR
 FAOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=6Th+89a5V8k+uKydsUbUW6spU9f1K+uJVHbWR12xq0U=;
 b=JFV4yw+ssOPhs4blvwj2BFgtuZi8vw78+PgkGIQlw3LLuXMgKkmNB3m+LFeC8RlMZi
 D1X/FY0/QWbhRzTpcSS1Vox69Hc8fcdADOBk1weo3Fcmcui/BmgyKYshnyb5F8AB7ctS
 btPKcVHOh8DaSksSLlrBo85uQATaCJFZBlXlZr6DKB+BPj9+BUz3X/Ry3vQsem1OKDuv
 tMrYTOo29apKAHAyuWQa2gZbBDobKI7ukWO5aODtGVOxYTjCBrxOhe6w0E7XWPRWRxDb
 kf36aIdG1TcwJ1SGawcfu8k67xl5fu0iFQaqwVJOxTl2d8TWAyt2jKnGJGc4XrEJHyHr
 LaOQ==
X-Gm-Message-State: APjAAAUfXVgDnawljXoAch7BXeCEu4OATlQsPrOv8FzIxcHIjGzTijEQ
 fgGvZEzYbZESwpe5NZNeiMxnmFYs46XV8criDiWnXw==
X-Google-Smtp-Source: APXvYqy5u6kq+4SJdMVdXnURdzYZT62+C9HNe8iqMeSCC4izfqlpzEOSHo7J+ufOxKrh7drq+MegcTV2iXdufEbb01c=
X-Received: by 2002:a7b:c775:: with SMTP id x21mr1012389wmk.52.1570597119427; 
 Tue, 08 Oct 2019 21:58:39 -0700 (PDT)
MIME-Version: 1.0
References: <8c44ac8a-3fdc-b9dd-1815-06e86cb73047@redhat.com>
 <mhng-610a5897-96ce-44fc-aa0f-82653808dd86@palmer-si-x1e>
In-Reply-To: <mhng-610a5897-96ce-44fc-aa0f-82653808dd86@palmer-si-x1e>
From: Anup Patel <anup@brainfault.org>
Date: Wed, 9 Oct 2019 10:28:28 +0530
Message-ID: <CAAhSdy3=Y7YjXJN5qJUQhpy2ZBaBSEJx7twafrVASi+5jBt33w@mail.gmail.com>
Subject: Re: [PATCH v7 10/21] RISC-V: KVM: Handle MMIO exits for VCPU
To: Palmer Dabbelt <palmer@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_215842_592397_68C34B33 
X-CRM114-Status: GOOD (  23.26  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
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
Cc: Alistair Francis <Alistair.Francis@wdc.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, KVM General <kvm@vger.kernel.org>,
 Radim K <rkrcmar@redhat.com>, Anup Patel <Anup.Patel@wdc.com>,
 Damien Le Moal <Damien.LeMoal@wdc.com>,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 Christoph Hellwig <hch@infradead.org>, Atish Patra <Atish.Patra@wdc.com>,
 Alexander Graf <graf@amazon.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 Paolo Bonzini <pbonzini@redhat.com>, Thomas Gleixner <tglx@linutronix.de>,
 linux-riscv <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, Oct 9, 2019 at 4:14 AM Palmer Dabbelt <palmer@sifive.com> wrote:
>
> On Mon, 23 Sep 2019 04:12:17 PDT (-0700), pbonzini@redhat.com wrote:
> > On 04/09/19 18:15, Anup Patel wrote:
> >> +    unsigned long guest_sstatus =
> >> +                    vcpu->arch.guest_context.sstatus | SR_MXR;
> >> +    unsigned long guest_hstatus =
> >> +                    vcpu->arch.guest_context.hstatus | HSTATUS_SPRV;
> >> +    unsigned long guest_vsstatus, old_stvec, tmp;
> >> +
> >> +    guest_sstatus = csr_swap(CSR_SSTATUS, guest_sstatus);
> >> +    old_stvec = csr_swap(CSR_STVEC, (ulong)&__kvm_riscv_unpriv_trap);
> >> +
> >> +    if (read_insn) {
> >> +            guest_vsstatus = csr_read_set(CSR_VSSTATUS, SR_MXR);
> >
> > Is this needed?  IIUC SSTATUS.MXR encompasses a wider set of permissions:
> >
> >   The HS-level MXR bit makes any executable page readable.  {\tt
> >   vsstatus}.MXR makes readable those pages marked executable at the VS
> >   translation level, but only if readable at the guest-physical
> >   translation level.
> >
> > So it should be enough to set SSTATUS.MXR=1 I think.  But you also
> > shouldn't set SSTATUS.MXR=1 in the !read_insn case.
> >
> > Also, you can drop the irq save/restore (which is already a save/restore
> > of SSTATUS) since you already write 0 to SSTATUS.SIE in your csr_swap.
> > Perhaps add a BUG_ON(guest_sstatus & SR_SIE) before the csr_swap?
> >
> >> +            asm volatile ("\n"
> >> +                    "csrrw %[hstatus], " STR(CSR_HSTATUS) ", %[hstatus]\n"
> >> +                    "li %[tilen], 4\n"
> >> +                    "li %[tscause], 0\n"
> >> +                    "lhu %[val], (%[addr])\n"
> >> +                    "andi %[tmp], %[val], 3\n"
> >> +                    "addi %[tmp], %[tmp], -3\n"
> >> +                    "bne %[tmp], zero, 2f\n"
> >> +                    "lhu %[tmp], 2(%[addr])\n"
> >> +                    "sll %[tmp], %[tmp], 16\n"
> >> +                    "add %[val], %[val], %[tmp]\n"
> >> +                    "2: csrw " STR(CSR_HSTATUS) ", %[hstatus]"
> >> +            : [hstatus] "+&r"(guest_hstatus), [val] "=&r" (val),
> >> +              [tmp] "=&r" (tmp), [tilen] "+&r" (tilen),
> >> +              [tscause] "+&r" (tscause)
> >> +            : [addr] "r" (addr));
> >> +            csr_write(CSR_VSSTATUS, guest_vsstatus);
> >
> >>
> >> +#ifndef CONFIG_RISCV_ISA_C
> >> +                    "li %[tilen], 4\n"
> >> +#else
> >> +                    "li %[tilen], 2\n"
> >> +#endif
> >
> > Can you use an assembler directive to force using a non-compressed
> > format for ld and lw?  This would get rid of tilen, which is costing 6
> > bytes (if I did the RVC math right) in order to save two. :)
> >
> > Paolo
> >
> >> +                    "li %[tscause], 0\n"
> >> +#ifdef CONFIG_64BIT
> >> +                    "ld %[val], (%[addr])\n"
> >> +#else
> >> +                    "lw %[val], (%[addr])\n"
> >> +#endif
> To:          anup@brainfault.org
> CC:          pbonzini@redhat.com
> CC:          Anup Patel <Anup.Patel@wdc.com>
> CC:          Paul Walmsley <paul.walmsley@sifive.com>
> CC:          rkrcmar@redhat.com
> CC:          daniel.lezcano@linaro.org
> CC:          tglx@linutronix.de
> CC:          graf@amazon.com
> CC:          Atish Patra <Atish.Patra@wdc.com>
> CC:          Alistair Francis <Alistair.Francis@wdc.com>
> CC:          Damien Le Moal <Damien.LeMoal@wdc.com>
> CC:          Christoph Hellwig <hch@infradead.org>
> CC:          kvm@vger.kernel.org
> CC:          linux-riscv@lists.infradead.org
> CC:          linux-kernel@vger.kernel.org
> Subject:     Re: [PATCH v7 10/21] RISC-V: KVM: Handle MMIO exits for VCPU
> In-Reply-To: <CAAhSdy1-1yxMnjzppmUBxtSOAuwWaPtNZwW+QH1O7LAnEVP8pg@mail.gmail.com>
>
> On Mon, 23 Sep 2019 06:09:43 PDT (-0700), anup@brainfault.org wrote:
> > On Mon, Sep 23, 2019 at 4:42 PM Paolo Bonzini <pbonzini@redhat.com> wrote:
> >>
> >> On 04/09/19 18:15, Anup Patel wrote:
> >> > +     unsigned long guest_sstatus =
> >> > +                     vcpu->arch.guest_context.sstatus | SR_MXR;
> >> > +     unsigned long guest_hstatus =
> >> > +                     vcpu->arch.guest_context.hstatus | HSTATUS_SPRV;
> >> > +     unsigned long guest_vsstatus, old_stvec, tmp;
> >> > +
> >> > +     guest_sstatus = csr_swap(CSR_SSTATUS, guest_sstatus);
> >> > +     old_stvec = csr_swap(CSR_STVEC, (ulong)&__kvm_riscv_unpriv_trap);
> >> > +
> >> > +     if (read_insn) {
> >> > +             guest_vsstatus = csr_read_set(CSR_VSSTATUS, SR_MXR);
> >>
> >> Is this needed?  IIUC SSTATUS.MXR encompasses a wider set of permissions:
> >>
> >>   The HS-level MXR bit makes any executable page readable.  {\tt
> >>   vsstatus}.MXR makes readable those pages marked executable at the VS
> >>   translation level, but only if readable at the guest-physical
> >>   translation level.
> >>
> >> So it should be enough to set SSTATUS.MXR=1 I think.  But you also
> >> shouldn't set SSTATUS.MXR=1 in the !read_insn case.
> >
> > I was being overly cautious here. Initially, I thought SSTATUS.MXR
> > applies only to Stage2 and VSSTATUS.MXR applies only to Stage1.
> >
> > I agree with you. The HS-mode should only need to set SSTATUS.MXR.
> >
> >>
> >> Also, you can drop the irq save/restore (which is already a save/restore
> >> of SSTATUS) since you already write 0 to SSTATUS.SIE in your csr_swap.
> >> Perhaps add a BUG_ON(guest_sstatus & SR_SIE) before the csr_swap?
> >
> > I had already dropped irq save/restore in v7 series and having BUG_ON()
> > on guest_sstatus here would be better.
> >
> >>
> >> > +             asm volatile ("\n"
> >> > +                     "csrrw %[hstatus], " STR(CSR_HSTATUS) ", %[hstatus]\n"
> >> > +                     "li %[tilen], 4\n"
> >> > +                     "li %[tscause], 0\n"
> >> > +                     "lhu %[val], (%[addr])\n"
> >> > +                     "andi %[tmp], %[val], 3\n"
> >> > +                     "addi %[tmp], %[tmp], -3\n"
> >> > +                     "bne %[tmp], zero, 2f\n"
> >> > +                     "lhu %[tmp], 2(%[addr])\n"
> >> > +                     "sll %[tmp], %[tmp], 16\n"
> >> > +                     "add %[val], %[val], %[tmp]\n"
> >> > +                     "2: csrw " STR(CSR_HSTATUS) ", %[hstatus]"
> >> > +             : [hstatus] "+&r"(guest_hstatus), [val] "=&r" (val),
> >> > +               [tmp] "=&r" (tmp), [tilen] "+&r" (tilen),
> >> > +               [tscause] "+&r" (tscause)
> >> > +             : [addr] "r" (addr));
> >> > +             csr_write(CSR_VSSTATUS, guest_vsstatus);
> >>
> >> >
> >> > +#ifndef CONFIG_RISCV_ISA_C
> >> > +                     "li %[tilen], 4\n"
> >> > +#else
> >> > +                     "li %[tilen], 2\n"
> >> > +#endif
> >>
> >> Can you use an assembler directive to force using a non-compressed
> >> format for ld and lw?  This would get rid of tilen, which is costing 6
> >> bytes (if I did the RVC math right) in order to save two. :)
> >
> > I tried looking for it but could not find any assembler directive
> > to selectively turn-off instruction compression.
> >
> >>
> >> Paolo
> >>
> >> > +                     "li %[tscause], 0\n"
> >> > +#ifdef CONFIG_64BIT
> >> > +                     "ld %[val], (%[addr])\n"
> >> > +#else
> >> > +                     "lw %[val], (%[addr])\n"
> >> > +#endif
> >
> > Regards,
> > Anup
> To:          pbonzini@redhat.com
> CC:          anup@brainfault.org
> CC:          Anup Patel <Anup.Patel@wdc.com>
> CC:          Paul Walmsley <paul.walmsley@sifive.com>
> CC:          rkrcmar@redhat.com
> CC:          daniel.lezcano@linaro.org
> CC:          tglx@linutronix.de
> CC:          graf@amazon.com
> CC:          Atish Patra <Atish.Patra@wdc.com>
> CC:          Alistair Francis <Alistair.Francis@wdc.com>
> CC:          Damien Le Moal <Damien.LeMoal@wdc.com>
> CC:          Christoph Hellwig <hch@infradead.org>
> CC:          kvm@vger.kernel.org
> CC:          linux-riscv@lists.infradead.org
> CC:          linux-kernel@vger.kernel.org
> Subject:     Re: [PATCH v7 10/21] RISC-V: KVM: Handle MMIO exits for VCPU
> In-Reply-To: <45fc3ee5-0f68-4e94-cfb3-0727ca52628f@redhat.com>
>
> On Mon, 23 Sep 2019 06:33:14 PDT (-0700), pbonzini@redhat.com wrote:
> > On 23/09/19 15:09, Anup Patel wrote:
> >>>> +#ifndef CONFIG_RISCV_ISA_C
> >>>> +                     "li %[tilen], 4\n"
> >>>> +#else
> >>>> +                     "li %[tilen], 2\n"
> >>>> +#endif
> >>>
> >>> Can you use an assembler directive to force using a non-compressed
> >>> format for ld and lw?  This would get rid of tilen, which is costing 6
> >>> bytes (if I did the RVC math right) in order to save two. :)
> >>
> >> I tried looking for it but could not find any assembler directive
> >> to selectively turn-off instruction compression.
> >
> > ".option norvc"?
> >
> > Paolo
> To:          anup@brainfault.org
> CC:          pbonzini@redhat.com
> CC:          Anup Patel <Anup.Patel@wdc.com>
> CC:          Paul Walmsley <paul.walmsley@sifive.com>
> CC:          rkrcmar@redhat.com
> CC:          daniel.lezcano@linaro.org
> CC:          tglx@linutronix.de
> CC:          graf@amazon.com
> CC:          Atish Patra <Atish.Patra@wdc.com>
> CC:          Alistair Francis <Alistair.Francis@wdc.com>
> CC:          Damien Le Moal <Damien.LeMoal@wdc.com>
> CC:          Christoph Hellwig <hch@infradead.org>
> CC:          kvm@vger.kernel.org
> CC:          linux-riscv@lists.infradead.org
> CC:          linux-kernel@vger.kernel.org
> Subject:     Re: [PATCH v7 10/21] RISC-V: KVM: Handle MMIO exits for VCPU
> In-Reply-To: <CAAhSdy29gi2d9c9tumtO68QbB=_+yUYp+ikN3dQ-wa2e-Lesfw@mail.gmail.com>
>
> On Mon, 23 Sep 2019 22:07:43 PDT (-0700), anup@brainfault.org wrote:
> > On Mon, Sep 23, 2019 at 7:03 PM Paolo Bonzini <pbonzini@redhat.com> wrote:
> >>
> >> On 23/09/19 15:09, Anup Patel wrote:
> >> >>> +#ifndef CONFIG_RISCV_ISA_C
> >> >>> +                     "li %[tilen], 4\n"
> >> >>> +#else
> >> >>> +                     "li %[tilen], 2\n"
> >> >>> +#endif
> >> >>
> >> >> Can you use an assembler directive to force using a non-compressed
> >> >> format for ld and lw?  This would get rid of tilen, which is costing 6
> >> >> bytes (if I did the RVC math right) in order to save two. :)
> >> >
> >> > I tried looking for it but could not find any assembler directive
> >> > to selectively turn-off instruction compression.
> >>
> >> ".option norvc"?
> >
> > Thanks for the hint. I will try ".option norvc"
>
> It should be something like
>
>     .option push
>     .option norvc
>     ld ...
>     .option pop
>
> which preserves C support for the rest of the file.

I have done exactly same thing in v8 patch series sent-out
last week.

Thanks,
Anup

>
> >
> > Regards,
> > Anup
> >
> >>
> >> Paolo

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
