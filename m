Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33F4CD0386
	for <lists+linux-riscv@lfdr.de>; Wed,  9 Oct 2019 00:44:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Mime-Version:Message-ID:To:From:In-Reply-To:Subject:
	Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	 bh=H+McSBeWNKWwchN6CM6a2+GbcA08Mj7g5Yxzjep7VKo=; b=PltZNV9wgDkb7VGU2dUFoHmQE
	CG8bKSC5aqma0NFcv76ayaWhWAc/l580aW+pTzsAFwIAuZA6oJx521rSHTDfZzoJ3B9wOVVPLOQ+V
	TNIzNZmkePZaoIU/K3Zekw7BgJuoJ27qlMWQmpRL734JZ0gjB00FD0SR7yTJ8N/IyLpxPo0MejEn4
	sD6igfNGeQlcih8aN2RZy+ZID+LxWIzE16bG0x3aes2BjsxxHd3dArtcgeZ0HaRbSz9NGqzepg2Ey
	7uIW2IT8NA6kx+7O/rZpBhkk+mm5mpUhYSuGZNBEH9H+D2auXtCI4WJxVymuonOdcMRwqa9DyVSsk
	dJHLGI2qA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHyDj-0004VT-1K; Tue, 08 Oct 2019 22:44:43 +0000
Received: from mail-pg1-f193.google.com ([209.85.215.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHyDd-0004Uo-Dg
 for linux-riscv@lists.infradead.org; Tue, 08 Oct 2019 22:44:40 +0000
Received: by mail-pg1-f193.google.com with SMTP id x10so102425pgi.5
 for <linux-riscv@lists.infradead.org>; Tue, 08 Oct 2019 15:44:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=cndTFj74XfBnpDccOgJNuNPCm40+KTjTKNcRCWrYPjw=;
 b=mezCOqQ+dSRKtoPe0XaGJM683RHnSYh6nxcN4wkFJeK1JFDca4Vch4SfaCDxxH/qEu
 PaHOJlRvTYPe68MrX5hbkyuR+v6ag6+TVvjP1NTdEq5m7TYvnW6muksqYalh1/9kZft2
 KphI9cNUdlijthfApbQCHpybEGT/kCK0MbUyzquM48D86laOT2aazeMG6ZdKVIhzweY5
 sQiBAkuiKTSBEqU8cXOt+xvrk+G7Mpz312anvJ764kV7vzo9yYio3u0pvl9WRZfvaoyX
 5MQsKVyX7ktVdE1Xi3bF0cT3UGXsfqUy8zXQ/1R5KjeGStBe/IQQAvU8J79P7xy7Iq0a
 Uxxg==
X-Gm-Message-State: APjAAAXblcnOtmVQtF8qYSAaIGbEb6Xw1Pu3MiiBp5G9mi0GCPII2XCc
 82lQRvoU6Xg5s50wqjxUv862/w==
X-Google-Smtp-Source: APXvYqzbPROLFSs4T1aXtA6U9+Ji/gPvV5RxYSzWGKITUh5jHj+7ZwDBnJNNvIdmj2qO/A5TfgUBgQ==
X-Received: by 2002:a17:90a:db4a:: with SMTP id
 u10mr242738pjx.30.1570574675860; 
 Tue, 08 Oct 2019 15:44:35 -0700 (PDT)
Received: from localhost ([12.206.222.5])
 by smtp.gmail.com with ESMTPSA id b22sm152902pfo.85.2019.10.08.15.44.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 08 Oct 2019 15:44:35 -0700 (PDT)
Date: Tue, 08 Oct 2019 15:44:35 -0700 (PDT)
X-Google-Original-Date: Tue, 08 Oct 2019 15:44:29 PDT (-0700)
Subject: Re: [PATCH v7 10/21] RISC-V: KVM: Handle MMIO exits for VCPU
In-Reply-To: <8c44ac8a-3fdc-b9dd-1815-06e86cb73047@redhat.com>
From: Palmer Dabbelt <palmer@sifive.com>
To: pbonzini@redhat.com
Message-ID: <mhng-610a5897-96ce-44fc-aa0f-82653808dd86@palmer-si-x1e>
Mime-Version: 1.0 (MHng)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_154437_463086_0F16E45A 
X-CRM114-Status: GOOD (  20.94  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.215.193 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.193 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Damien Le Moal <Damien.LeMoal@wdc.com>, daniel.lezcano@linaro.org,
 kvm@vger.kernel.org, rkrcmar@redhat.com, anup@brainfault.org,
 Anup Patel <Anup.Patel@wdc.com>, linux-kernel@vger.kernel.org,
 Christoph Hellwig <hch@infradead.org>, Atish Patra <Atish.Patra@wdc.com>,
 graf@amazon.com, Paul Walmsley <paul.walmsley@sifive.com>,
 Alistair Francis <Alistair.Francis@wdc.com>, tglx@linutronix.de,
 linux-riscv@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, 23 Sep 2019 04:12:17 PDT (-0700), pbonzini@redhat.com wrote:
> On 04/09/19 18:15, Anup Patel wrote:
>> +	unsigned long guest_sstatus =
>> +			vcpu->arch.guest_context.sstatus | SR_MXR;
>> +	unsigned long guest_hstatus =
>> +			vcpu->arch.guest_context.hstatus | HSTATUS_SPRV;
>> +	unsigned long guest_vsstatus, old_stvec, tmp;
>> +
>> +	guest_sstatus = csr_swap(CSR_SSTATUS, guest_sstatus);
>> +	old_stvec = csr_swap(CSR_STVEC, (ulong)&__kvm_riscv_unpriv_trap);
>> +
>> +	if (read_insn) {
>> +		guest_vsstatus = csr_read_set(CSR_VSSTATUS, SR_MXR);
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
>
> Also, you can drop the irq save/restore (which is already a save/restore
> of SSTATUS) since you already write 0 to SSTATUS.SIE in your csr_swap.
> Perhaps add a BUG_ON(guest_sstatus & SR_SIE) before the csr_swap?
>
>> +		asm volatile ("\n"
>> +			"csrrw %[hstatus], " STR(CSR_HSTATUS) ", %[hstatus]\n"
>> +			"li %[tilen], 4\n"
>> +			"li %[tscause], 0\n"
>> +			"lhu %[val], (%[addr])\n"
>> +			"andi %[tmp], %[val], 3\n"
>> +			"addi %[tmp], %[tmp], -3\n"
>> +			"bne %[tmp], zero, 2f\n"
>> +			"lhu %[tmp], 2(%[addr])\n"
>> +			"sll %[tmp], %[tmp], 16\n"
>> +			"add %[val], %[val], %[tmp]\n"
>> +			"2: csrw " STR(CSR_HSTATUS) ", %[hstatus]"
>> +		: [hstatus] "+&r"(guest_hstatus), [val] "=&r" (val),
>> +		  [tmp] "=&r" (tmp), [tilen] "+&r" (tilen),
>> +		  [tscause] "+&r" (tscause)
>> +		: [addr] "r" (addr));
>> +		csr_write(CSR_VSSTATUS, guest_vsstatus);
>
>>
>> +#ifndef CONFIG_RISCV_ISA_C
>> +			"li %[tilen], 4\n"
>> +#else
>> +			"li %[tilen], 2\n"
>> +#endif
>
> Can you use an assembler directive to force using a non-compressed
> format for ld and lw?  This would get rid of tilen, which is costing 6
> bytes (if I did the RVC math right) in order to save two. :)
>
> Paolo
>
>> +			"li %[tscause], 0\n"
>> +#ifdef CONFIG_64BIT
>> +			"ld %[val], (%[addr])\n"
>> +#else
>> +			"lw %[val], (%[addr])\n"
>> +#endif
To:          anup@brainfault.org
CC:          pbonzini@redhat.com
CC:          Anup Patel <Anup.Patel@wdc.com>
CC:          Paul Walmsley <paul.walmsley@sifive.com>
CC:          rkrcmar@redhat.com
CC:          daniel.lezcano@linaro.org
CC:          tglx@linutronix.de
CC:          graf@amazon.com
CC:          Atish Patra <Atish.Patra@wdc.com>
CC:          Alistair Francis <Alistair.Francis@wdc.com>
CC:          Damien Le Moal <Damien.LeMoal@wdc.com>
CC:          Christoph Hellwig <hch@infradead.org>
CC:          kvm@vger.kernel.org
CC:          linux-riscv@lists.infradead.org
CC:          linux-kernel@vger.kernel.org
Subject:     Re: [PATCH v7 10/21] RISC-V: KVM: Handle MMIO exits for VCPU
In-Reply-To: <CAAhSdy1-1yxMnjzppmUBxtSOAuwWaPtNZwW+QH1O7LAnEVP8pg@mail.gmail.com>

On Mon, 23 Sep 2019 06:09:43 PDT (-0700), anup@brainfault.org wrote:
> On Mon, Sep 23, 2019 at 4:42 PM Paolo Bonzini <pbonzini@redhat.com> wrote:
>>
>> On 04/09/19 18:15, Anup Patel wrote:
>> > +     unsigned long guest_sstatus =
>> > +                     vcpu->arch.guest_context.sstatus | SR_MXR;
>> > +     unsigned long guest_hstatus =
>> > +                     vcpu->arch.guest_context.hstatus | HSTATUS_SPRV;
>> > +     unsigned long guest_vsstatus, old_stvec, tmp;
>> > +
>> > +     guest_sstatus = csr_swap(CSR_SSTATUS, guest_sstatus);
>> > +     old_stvec = csr_swap(CSR_STVEC, (ulong)&__kvm_riscv_unpriv_trap);
>> > +
>> > +     if (read_insn) {
>> > +             guest_vsstatus = csr_read_set(CSR_VSSTATUS, SR_MXR);
>>
>> Is this needed?  IIUC SSTATUS.MXR encompasses a wider set of permissions:
>>
>>   The HS-level MXR bit makes any executable page readable.  {\tt
>>   vsstatus}.MXR makes readable those pages marked executable at the VS
>>   translation level, but only if readable at the guest-physical
>>   translation level.
>>
>> So it should be enough to set SSTATUS.MXR=1 I think.  But you also
>> shouldn't set SSTATUS.MXR=1 in the !read_insn case.
>
> I was being overly cautious here. Initially, I thought SSTATUS.MXR
> applies only to Stage2 and VSSTATUS.MXR applies only to Stage1.
>
> I agree with you. The HS-mode should only need to set SSTATUS.MXR.
>
>>
>> Also, you can drop the irq save/restore (which is already a save/restore
>> of SSTATUS) since you already write 0 to SSTATUS.SIE in your csr_swap.
>> Perhaps add a BUG_ON(guest_sstatus & SR_SIE) before the csr_swap?
>
> I had already dropped irq save/restore in v7 series and having BUG_ON()
> on guest_sstatus here would be better.
>
>>
>> > +             asm volatile ("\n"
>> > +                     "csrrw %[hstatus], " STR(CSR_HSTATUS) ", %[hstatus]\n"
>> > +                     "li %[tilen], 4\n"
>> > +                     "li %[tscause], 0\n"
>> > +                     "lhu %[val], (%[addr])\n"
>> > +                     "andi %[tmp], %[val], 3\n"
>> > +                     "addi %[tmp], %[tmp], -3\n"
>> > +                     "bne %[tmp], zero, 2f\n"
>> > +                     "lhu %[tmp], 2(%[addr])\n"
>> > +                     "sll %[tmp], %[tmp], 16\n"
>> > +                     "add %[val], %[val], %[tmp]\n"
>> > +                     "2: csrw " STR(CSR_HSTATUS) ", %[hstatus]"
>> > +             : [hstatus] "+&r"(guest_hstatus), [val] "=&r" (val),
>> > +               [tmp] "=&r" (tmp), [tilen] "+&r" (tilen),
>> > +               [tscause] "+&r" (tscause)
>> > +             : [addr] "r" (addr));
>> > +             csr_write(CSR_VSSTATUS, guest_vsstatus);
>>
>> >
>> > +#ifndef CONFIG_RISCV_ISA_C
>> > +                     "li %[tilen], 4\n"
>> > +#else
>> > +                     "li %[tilen], 2\n"
>> > +#endif
>>
>> Can you use an assembler directive to force using a non-compressed
>> format for ld and lw?  This would get rid of tilen, which is costing 6
>> bytes (if I did the RVC math right) in order to save two. :)
>
> I tried looking for it but could not find any assembler directive
> to selectively turn-off instruction compression.
>
>>
>> Paolo
>>
>> > +                     "li %[tscause], 0\n"
>> > +#ifdef CONFIG_64BIT
>> > +                     "ld %[val], (%[addr])\n"
>> > +#else
>> > +                     "lw %[val], (%[addr])\n"
>> > +#endif
>
> Regards,
> Anup
To:          pbonzini@redhat.com
CC:          anup@brainfault.org
CC:          Anup Patel <Anup.Patel@wdc.com>
CC:          Paul Walmsley <paul.walmsley@sifive.com>
CC:          rkrcmar@redhat.com
CC:          daniel.lezcano@linaro.org
CC:          tglx@linutronix.de
CC:          graf@amazon.com
CC:          Atish Patra <Atish.Patra@wdc.com>
CC:          Alistair Francis <Alistair.Francis@wdc.com>
CC:          Damien Le Moal <Damien.LeMoal@wdc.com>
CC:          Christoph Hellwig <hch@infradead.org>
CC:          kvm@vger.kernel.org
CC:          linux-riscv@lists.infradead.org
CC:          linux-kernel@vger.kernel.org
Subject:     Re: [PATCH v7 10/21] RISC-V: KVM: Handle MMIO exits for VCPU
In-Reply-To: <45fc3ee5-0f68-4e94-cfb3-0727ca52628f@redhat.com>

On Mon, 23 Sep 2019 06:33:14 PDT (-0700), pbonzini@redhat.com wrote:
> On 23/09/19 15:09, Anup Patel wrote:
>>>> +#ifndef CONFIG_RISCV_ISA_C
>>>> +                     "li %[tilen], 4\n"
>>>> +#else
>>>> +                     "li %[tilen], 2\n"
>>>> +#endif
>>>
>>> Can you use an assembler directive to force using a non-compressed
>>> format for ld and lw?  This would get rid of tilen, which is costing 6
>>> bytes (if I did the RVC math right) in order to save two. :)
>>
>> I tried looking for it but could not find any assembler directive
>> to selectively turn-off instruction compression.
>
> ".option norvc"?
>
> Paolo
To:          anup@brainfault.org
CC:          pbonzini@redhat.com
CC:          Anup Patel <Anup.Patel@wdc.com>
CC:          Paul Walmsley <paul.walmsley@sifive.com>
CC:          rkrcmar@redhat.com
CC:          daniel.lezcano@linaro.org
CC:          tglx@linutronix.de
CC:          graf@amazon.com
CC:          Atish Patra <Atish.Patra@wdc.com>
CC:          Alistair Francis <Alistair.Francis@wdc.com>
CC:          Damien Le Moal <Damien.LeMoal@wdc.com>
CC:          Christoph Hellwig <hch@infradead.org>
CC:          kvm@vger.kernel.org
CC:          linux-riscv@lists.infradead.org
CC:          linux-kernel@vger.kernel.org
Subject:     Re: [PATCH v7 10/21] RISC-V: KVM: Handle MMIO exits for VCPU
In-Reply-To: <CAAhSdy29gi2d9c9tumtO68QbB=_+yUYp+ikN3dQ-wa2e-Lesfw@mail.gmail.com>

On Mon, 23 Sep 2019 22:07:43 PDT (-0700), anup@brainfault.org wrote:
> On Mon, Sep 23, 2019 at 7:03 PM Paolo Bonzini <pbonzini@redhat.com> wrote:
>>
>> On 23/09/19 15:09, Anup Patel wrote:
>> >>> +#ifndef CONFIG_RISCV_ISA_C
>> >>> +                     "li %[tilen], 4\n"
>> >>> +#else
>> >>> +                     "li %[tilen], 2\n"
>> >>> +#endif
>> >>
>> >> Can you use an assembler directive to force using a non-compressed
>> >> format for ld and lw?  This would get rid of tilen, which is costing 6
>> >> bytes (if I did the RVC math right) in order to save two. :)
>> >
>> > I tried looking for it but could not find any assembler directive
>> > to selectively turn-off instruction compression.
>>
>> ".option norvc"?
>
> Thanks for the hint. I will try ".option norvc"

It should be something like

    .option push
    .option norvc
    ld ...
    .option pop

which preserves C support for the rest of the file.

>
> Regards,
> Anup
>
>>
>> Paolo

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
