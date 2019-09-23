Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B453BB476
	for <lists+linux-riscv@lfdr.de>; Mon, 23 Sep 2019 14:54:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QqDUtOMZcZXQ2PCTUawnBJqH3uwLQXCHq/t7Wg1CUfA=; b=AXQdpzvwbcIgPW
	iTSUPo/luJ0ZSUp7964KXg82TJWoqu0oa4xkdZqvYddnWcZ/xAM9tlOSMOHP7FXCIdF2OqqnruIT9
	1gGq5trHyObIsNAmHgXCj8xgFgODyCndJzl6aML5e8ZTPBk2OuUlOYutAtUJHBby5UqGUavZC7LpR
	Vv53OG63UPP0E8aFCq0qnR7g8fCm7cqf+/eqGX98x++9oJMSqzyTmhzhgHPnZ6U3l+ytWfgeGQ01P
	NjCoejCa3StW4S7fPmzdykFfMBZu/wHL/LQABVEZv8xBjdbQhWQn1sShknAYfDuNKx4GrlEv6nHrX
	9+d16ceNsLTV5ONsLzfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCNrB-0000nQ-5C; Mon, 23 Sep 2019 12:54:21 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCNr6-0000mD-V6
 for linux-riscv@lists.infradead.org; Mon, 23 Sep 2019 12:54:18 +0000
Received: by mail-wr1-x443.google.com with SMTP id i1so13813069wro.4
 for <linux-riscv@lists.infradead.org>; Mon, 23 Sep 2019 05:54:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=AovsfvrkVC8KgehdY4+Z592P7dBIQY37LqoSTZ8Zeho=;
 b=HYeBM2QpSXqbmldBl/VrqKVlCePEW918eFcjyJyHTWUNdbLCTZvsYKhdc8gAKYhMQ3
 onS/RCKaAqam1IA/rnrzUrG+d7bZJr2jWsdDZkfh4si4j5R5w4HYXf0LAGhhfEQta0VH
 kOBETSMUfxF4BbeVChawSoHw5c/AqsVpt+ZYrtYpzU7nRnQBVA20F3pvTns/+ea10zfQ
 3lBnqyOgUJHfGIr8j6LZs4YD/QrIBGZVH71lwS4eH1TSI15nbdNFNbGMZDcU0+pPHYDb
 fKiRaH3Q7y7oQ6BZr9K95rEDYWpXA3J7EJA9gsU8++gi2Mp8u0O7xXR4hJuREj8UxXok
 ifZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=AovsfvrkVC8KgehdY4+Z592P7dBIQY37LqoSTZ8Zeho=;
 b=UW66ye2Um7IxMYAIHaf/5jGJ2anTKQSP+vE0dcoBtwmdj3C4U+bWp/GXRkobcd39rz
 fvxRYKPTfrMSe1jXxWtMhWpLp5gFS3yUInLtU0bUj/oehJX+JJjnSZvno7It3et+0Yl/
 Lo9/dee3AXs2npJtgdY+dLYDfVKCuPSNX6vEi69yORFxSZuFhFLi4o7bywVnCDps6D5E
 wb3FJUifOZZnBDBZZAtU9KXIw7xgCW0IaF/FniD8jNySVLtUvs9E80KzhYEgZYtl7D2j
 N2GWguvRZQXx0xjs29JT0rUy5RdI/gpY7sJ3x+KZujHcReZ2cImwLCrOg3RZEFtryquO
 G8Bg==
X-Gm-Message-State: APjAAAWbJ90ZYNTLp8J0p6cXgjGeFtXE1uRSt0v9OM0OogR1FUz/9Xd8
 7OQp9ySyI0B6jObwr2tlhwAw9FMC4JzgdB5CSfk1qA==
X-Google-Smtp-Source: APXvYqwsHYbO+9L86VnJoBwoB8mk7eZ22lokkO725a1cKAw31Hv4kO0LqdHgIV0+Yju7xAlyzJlQVzY0aMbR9OJm2Ec=
X-Received: by 2002:a05:6000:2:: with SMTP id
 h2mr20587928wrx.309.1569243255021; 
 Mon, 23 Sep 2019 05:54:15 -0700 (PDT)
MIME-Version: 1.0
References: <20190904161245.111924-1-anup.patel@wdc.com>
 <20190904161245.111924-13-anup.patel@wdc.com>
 <3c149ec4-38df-9073-2880-b28148d3c059@amazon.com>
In-Reply-To: <3c149ec4-38df-9073-2880-b28148d3c059@amazon.com>
From: Anup Patel <anup@brainfault.org>
Date: Mon, 23 Sep 2019 18:24:02 +0530
Message-ID: <CAAhSdy1A-FZJ5DeyzFzZn8h-Vs4QR16uFgeeCNpJi2KMQMbPmQ@mail.gmail.com>
Subject: Re: [PATCH v7 11/21] RISC-V: KVM: Handle WFI exits for VCPU
To: Alexander Graf <graf@amazon.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_055417_003536_2A2F6353 
X-CRM114-Status: GOOD (  16.53  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
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
 Paul Walmsley <paul.walmsley@sifive.com>, Paolo Bonzini <pbonzini@redhat.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, Sep 23, 2019 at 12:24 PM Alexander Graf <graf@amazon.com> wrote:
>
>
>
> On 04.09.19 18:15, Anup Patel wrote:
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
> >   arch/riscv/kvm/vcpu_exit.c | 72 ++++++++++++++++++++++++++++++++++++++
> >   1 file changed, 72 insertions(+)
> >
> > diff --git a/arch/riscv/kvm/vcpu_exit.c b/arch/riscv/kvm/vcpu_exit.c
> > index d75a6c35b6c7..39469f67b241 100644
> > --- a/arch/riscv/kvm/vcpu_exit.c
> > +++ b/arch/riscv/kvm/vcpu_exit.c
> > @@ -12,6 +12,13 @@
> >   #include <linux/kvm_host.h>
> >   #include <asm/csr.h>
> >
> > +#define INSN_OPCODE_MASK     0x007c
> > +#define INSN_OPCODE_SHIFT    2
> > +#define INSN_OPCODE_SYSTEM   28
> > +
> > +#define INSN_MASK_WFI                0xffffff00
> > +#define INSN_MATCH_WFI               0x10500000
> > +
> >   #define INSN_MATCH_LB               0x3
> >   #define INSN_MASK_LB                0x707f
> >   #define INSN_MATCH_LH               0x1003
> > @@ -112,6 +119,67 @@
> >                                (s32)(((insn) >> 7) & 0x1f))
> >   #define MASK_FUNCT3         0x7000
> >
> > +static int truly_illegal_insn(struct kvm_vcpu *vcpu,
> > +                           struct kvm_run *run,
> > +                           ulong insn)
> > +{
> > +     /* Redirect trap to Guest VCPU */
> > +     kvm_riscv_vcpu_trap_redirect(vcpu, EXC_INST_ILLEGAL, insn);
> > +
> > +     return 1;
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
> > +static int illegal_inst_fault(struct kvm_vcpu *vcpu, struct kvm_run *run,
> > +                           unsigned long insn)
> > +{
> > +     unsigned long ut_scause = 0;
> > +     struct kvm_cpu_context *ct;
> > +
> > +     if (unlikely((insn & 3) != 3)) {
>
> What do the low 2 bits mean here? Maybe you can use a define instead?

These bits are for instruction length (16bit or 32bit).

I will add appropriate defines for these bits.

Regards,
Anup

>
>
> Alex
>
>
>
>
> Amazon Development Center Germany GmbH
> Krausenstr. 38
> 10117 Berlin
> Geschaeftsfuehrung: Christian Schlaeger, Ralf Herbrich
> Eingetragen am Amtsgericht Charlottenburg unter HRB 149173 B
> Sitz: Berlin
> Ust-ID: DE 289 237 879
>
>

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
