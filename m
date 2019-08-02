Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CCB6D7EAE1
	for <lists+linux-riscv@lfdr.de>; Fri,  2 Aug 2019 06:00:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5E5+ecHdYt4vHJP0NpQvqsWRR57i9/sspGJ6icUvFBg=; b=ACG7ptiHUiwwR6
	HO9e1khJg1BU7OPGk/dF6BKSA3Dg7H5lUHVSZZn4avbDCRJLKny3icUgreiK7TklDgCFBNSRxMOPP
	lw1AKDKzJNkLo1/VPdJDjVulzvCu57VrzjW/5KSNVWgFLQbTCHsas4Be6ImnVtVDFP74Uh+TsW9V6
	jODNACS3J+K9DjKtSr0ZpghMu3cczBmG1axQ35we3SBhHP8YqkVnWYc8NZCUgK9JbROk3YcODWw89
	kZVA3uDQWO07/m+elM9YlJyRHlBVwiKxJp40vfQKOVwPQQDszPgPLswDqtOMGrx3kLVcAz9jkDybH
	C4K+6z5RazReVAu8pB/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htOjo-0006Z9-Hu; Fri, 02 Aug 2019 04:00:16 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htOjl-0006Yh-8g
 for linux-riscv@lists.infradead.org; Fri, 02 Aug 2019 04:00:14 +0000
Received: by mail-wm1-x342.google.com with SMTP id g67so60867199wme.1
 for <linux-riscv@lists.infradead.org>; Thu, 01 Aug 2019 21:00:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=I/Kfc6ZbOZnKoxJL7rV1rbyTQYfEjNQbR94dlPzKkok=;
 b=RJKKjy4lH/3bgMCwOjm1J18wa06vOSJLnIfHMmvULIy2YSHW3G15WM/m7+XeVtQwTr
 UtiihTcbvICV40K4Nt5x73lPEsV6pBUGS2RPKA5G47fKyoSSsc05AlAuvBSyjU7yAX3Z
 UoEhsAOtv282G86OCYcLO5YN8helw4/uL1qOeUEBiTmpuinXLeVN3veX4kAGMwHIkC65
 EKZaEk2RjAR5n1/oURiPuFkOL29Vt+pAgswdD0zpyPv3xy2fYhEiWrtIozD6TCcfhHcV
 OMLP1cmi5mf327NBxa+CEE9sTtQnunCR/GUerMu62fmDkaROt4YIFVsA2qWBl2CNKsLY
 7Dvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=I/Kfc6ZbOZnKoxJL7rV1rbyTQYfEjNQbR94dlPzKkok=;
 b=kn8TXLwsBErcn94WVvrnw1o4dpsL289egb49o/pfSV0X2leUmxf/YDzk5QzFgcWquR
 JB/G94D91rAxlzf4SCSPOGR5NnXn3InfKj7SUV32EpIkulyYd8VzyuTJEkinxRyCMLp0
 uY2yLwLS5EzPG3qBfka3jqR/pixeQxn8QWBOfve1DB1QuwnvKSAu50XpPrKvbspFRrJM
 V8ZySiyJqHCyad51HEwMhJOI5aGdIVKA4OZbxjHT7n86CUWw4OyyhyRzluNms4MOk+VW
 xlLLD/VcezaLJH9mep/ElnTEmQ5B70zAAk+P8OpM+8VfRCqFIkhxEpnrbk9lTjVvh3/Y
 TSnA==
X-Gm-Message-State: APjAAAW7YWni8x7bmrUdfoebuWkB5QOLYp7rjEwsEITVwV7D9po8sJNM
 PqueKa5TRmR9iRbTOsulpZE90Uj1asn0KRYhU+baVQ==
X-Google-Smtp-Source: APXvYqyGKKA06Ook1nC1Ms5baz5sFRFDqfDRQkOGCbnR8q7MWD+Cy/I3+JJpDuoiot2nNz8c8O4OOUXtH5DkcbO6xGI=
X-Received: by 2002:a1c:cfc5:: with SMTP id f188mr1649160wmg.24.1564718409992; 
 Thu, 01 Aug 2019 21:00:09 -0700 (PDT)
MIME-Version: 1.0
References: <20190729115544.17895-1-anup.patel@wdc.com>
 <20190729115544.17895-6-anup.patel@wdc.com>
 <9f9d09e5-49bc-f8e3-cfe1-bd5221e3b683@redhat.com>
 <CAAhSdy3JZVEEnPnssALaxvCsyznF=rt=7-d5J_OgQEJv6cPhxQ@mail.gmail.com>
 <66c4e468-7a69-31e7-778b-228908f0e737@redhat.com>
 <CAAhSdy3b-o6y1fsYi1iQcCN=9ZuC98TLCqjHCYAzOCx+N+_89w@mail.gmail.com>
 <828f01a9-2f11-34b6-7753-dc8fa7aa0d18@redhat.com>
 <CAAhSdy19_dEL7e_sEFYi-hXvhVerm_cr3BdZ-TRw0aTTL-O9ZQ@mail.gmail.com>
 <816c70e7-0ea3-1dde-510e-f1d5c6a02dd5@redhat.com>
In-Reply-To: <816c70e7-0ea3-1dde-510e-f1d5c6a02dd5@redhat.com>
From: Anup Patel <anup@brainfault.org>
Date: Fri, 2 Aug 2019 09:29:59 +0530
Message-ID: <CAAhSdy0Er92SCPSyYj-59PAwXvZkgfWbJQwr_qQKGXp3s43xqA@mail.gmail.com>
Subject: Re: [RFC PATCH 05/16] RISC-V: KVM: Implement VCPU interrupts and
 requests handling
To: Paolo Bonzini <pbonzini@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_210013_368999_D47C4F2F 
X-CRM114-Status: GOOD (  21.98  )
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

On Tue, Jul 30, 2019 at 7:38 PM Paolo Bonzini <pbonzini@redhat.com> wrote:
>
> On 30/07/19 15:35, Anup Patel wrote:
> > On Tue, Jul 30, 2019 at 6:48 PM Paolo Bonzini <pbonzini@redhat.com> wrote:
> >>
> >> On 30/07/19 14:45, Anup Patel wrote:
> >>> Here's some text from RISC-V spec regarding SIP CSR:
> >>> "software interrupt-pending (SSIP) bit in the sip register. A pending
> >>> supervisor-level software interrupt can be cleared by writing 0 to the SSIP bit
> >>> in sip. Supervisor-level software interrupts are disabled when the SSIE bit in
> >>> the sie register is clear."
> >>>
> >>> Without RISC-V hypervisor extension, the SIP is essentially a restricted
> >>> view of MIP CSR. Also as-per above, S-mode SW can only write 0 to SSIP
> >>> bit in SIP CSR whereas it can only be set by M-mode SW or some HW
> >>> mechanism (such as S-mode CLINT).
> >>
> >> But that's not what the spec says.  It just says (just before the
> >> sentence you quoted):
> >>
> >>    A supervisor-level software interrupt is triggered on the current
> >>    hart by writing 1 to its supervisor software interrupt-pending (SSIP)
> >>    bit in the sip register.
> >
> > Unfortunately, this statement does not state who is allowed to write 1
> > in SIP.SSIP bit.
>
> If it doesn't state who is allowed to write 1, whoever has access to sip
> can.
>
> > I quoted MIP CSR documentation to highlight the fact that only M-mode
> > SW can set SSIP bit.
> >
> > In fact, I had same understanding as you have regarding SSIP bit
> > until we had MSIP issue in OpenSBI.
> > (https://github.com/riscv/opensbi/issues/128)
> >
> >> and it's not written anywhere that S-mode SW cannot write 1.  In fact
> >> that text is even under sip, not under mip, so IMO there's no doubt that
> >> S-mode SW _can_ write 1, and the hypervisor must operate accordingly.
> >
> > Without hypervisor support, SIP CSR is nothing but a restricted view of
> > MIP CSR thats why MIP CSR documentation applies here.
>
> But the privileged spec says mip.MSIP is read-only, it cannot be cleared
> (as in the above OpenSBI issue).  So mip.MSIP and sip.SSIP are already
> different in that respect, and I don't see how the spec says that S-mode
> SW cannot set sip.SSIP.
>
> (As an aside, why would M-mode even bother using sip and not mip to
> write 1 to SSIP?).
>
> > I think this discussion deserves a Github issue on RISC-V ISA manual.
>
> Perhaps, but I think it makes more sense this way.  The question remains
> of why M-mode is not allowed to write to MSIP/MEIP/MTIP.  My guess is
> that then MSIP/MEIP/MTIP are simply a read-only view of an external pin,
> so it simplifies hardware a tiny bit by forcing acks to go through the
> MMIO registers.
>
> > If my interpretation is incorrect then it would be really strange that
> > HART in S-mode SW can inject IPI to itself by writing 1 to SIP.SSIP bit.
>
> Well, it can be useful, for example Windows does it when interrupt
> handlers want to schedule some work to happen out of interrupt context.
>  Going through SBI would be unpleasant if it causes an HS-mode trap.

Another way of artificially injecting interrupt would be using interrupt
controller, where Windows can just write to some pending register of
interrupt controller.

I have raised a new Github issue on GitHub for clarity on this. You can
add your comments to this issue as well.
https://github.com/riscv/riscv-isa-manual/issues/425

Also, I have raised a proposal to support mechanism for external entity
(such as PLICv2 with virtualization support) to inject virtual interrupts.
https://github.com/riscv/riscv-isa-manual/issues/429

Regards,
Anup

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
