Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8BDE8166F
	for <lists+linux-riscv@lfdr.de>; Mon,  5 Aug 2019 12:07:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fjri+Q21qEp8WM9i4ZkkCW2Yb3FVu+1Xxdve9rGlpbg=; b=W9xMRScQtTWB5i
	2WsL62UMilfa+0giyinb/3ELlAkc3Wvv/JN9Vu6jktgAraG/5UTuQmBdOFbMDycJoAPHMCe3HmoEZ
	yb4JHvky8GRmSpsGtyarl7z+kLNavfOBjz7K2XGZCRczrObjOxeCGPLoEk+u+rQr8AXsAy7NjhsCz
	ev7gTQGTND9kp+I0WEEZ3EpKtbEiQcGzVlXBOBsAKQWIHKMgzt2wi0azsrzAX7oQ8econ+VCpJPwa
	iErYIpgGuiGVeXRh149rPB9szB95MAo6IEmtArUOswoTftmB10Lt005F3sLzxubfVFVCDqqY6dP7e
	56kYntxOO+Juq5QIbPYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huZts-0007np-75; Mon, 05 Aug 2019 10:07:32 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huZtl-0007jl-P7
 for linux-riscv@lists.infradead.org; Mon, 05 Aug 2019 10:07:27 +0000
Received: by mail-wm1-x342.google.com with SMTP id u25so62045224wmc.4
 for <linux-riscv@lists.infradead.org>; Mon, 05 Aug 2019 03:07:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=tSUXfM1GBDtf8d32fnO2t1HSYdqv9TrCrzBesx2Y2r4=;
 b=WoKh7uXp2eFvRFtfyoLMbFxpofblGAbjiJeO/5jm2jytnH6nWtmyKskqrbx75YeQWG
 V5X7FxP/4rjog38emeYGlmLnkeMOnf/BovPbxPMYUu1xq8C06dJClKqTkSefpyeXPPOR
 dloeYq+6c+Bto8i7g08vh6qO6tGk3b03w48RVdW9q29kxiHA8HgPPAV4mLyCLFVVpCLz
 kGN3tWenMO7frIPuKlDOwk2KIxPb19lqRl/xDfpWxOpa4a5PkBCTuNuc7hBrXfCcpfdY
 xve9XgkFXCe7koQs7AwdgsJb3Ahy04Zm5nfaceawYlnZHHLDT4nMuItmA2DL0whAfhXI
 ly9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=tSUXfM1GBDtf8d32fnO2t1HSYdqv9TrCrzBesx2Y2r4=;
 b=oQ7X8BmWyUCvQ/TUOj41kKRhyUiu7upqkozUBs2K8PbAZI/WIIC3iTtt8opGrtJC7g
 l/q5Q5LjtGmCoVjbJHWYoI79OwnutJ3OWKnIfAmGJRAeifGwptbBrrEyqUKfs8M0tmuk
 fkqZU7zy8m1Dbdr8e/RmU4aVcHm6/9Zx+f53UZmvN+jppszXROljiCj1Vo2nJ62yl5ba
 Zx420RlWUAysglxNvyhFPZEG8XCSPbA8u6fzYf/uIn9DPV/T18vAs0+9zzsICR2VFqc2
 YoZIQwb1V7mp63MMbbZMVC/xJjCZ4k5RaZipyFt1G00Ewd17MOm+37MuigEZTjip6z5H
 3jCQ==
X-Gm-Message-State: APjAAAXxjEfdW/Y17Sx3GCCEJ4CGPi9U/R3NV5Lr9CTNhrf6oLDhTIpS
 /M0iwcLekX5ua5p9c9VINjA7B78HiYm8oCEbsKC1cnRG9LQ=
X-Google-Smtp-Source: APXvYqyaxuGvgZY+LJ4vNWfPOtT80YRzrJxZJ6KszUHbn8NrKf0wYNwoLXDFfS7cWakR5cKffBu7arak9gV7Z9wXleg=
X-Received: by 2002:a1c:cfc5:: with SMTP id f188mr16590824wmg.24.1564999643825; 
 Mon, 05 Aug 2019 03:07:23 -0700 (PDT)
MIME-Version: 1.0
References: <20190802074620.115029-1-anup.patel@wdc.com>
 <20190802074620.115029-12-anup.patel@wdc.com>
 <ef688903-ff49-ffeb-1f95-ef995942d5dc@redhat.com>
In-Reply-To: <ef688903-ff49-ffeb-1f95-ef995942d5dc@redhat.com>
From: Anup Patel <anup@brainfault.org>
Date: Mon, 5 Aug 2019 15:37:12 +0530
Message-ID: <CAAhSdy2y+DfV0b7dG_V43AL_MVz2R+LzEsE0y8YuiJY_EBeabg@mail.gmail.com>
Subject: Re: [RFC PATCH v2 11/19] RISC-V: KVM: Implement VMID allocator
To: Paolo Bonzini <pbonzini@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_030725_930079_6C659705 
X-CRM114-Status: GOOD (  15.70  )
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

On Fri, Aug 2, 2019 at 2:49 PM Paolo Bonzini <pbonzini@redhat.com> wrote:
>
> On 02/08/19 09:48, Anup Patel wrote:
> > +struct kvm_vmid {
> > +     unsigned long vmid_version;
> > +     unsigned long vmid;
> > +};
> > +
>
> Please document that both fields are written under vmid_lock, and read
> outside it.

Sure, will add comments in asm/kvm_host.h

>
> > +             /*
> > +              * On SMP we know no other CPUs can use this CPU's or
> > +              * each other's VMID after forced exit returns since the
> > +              * vmid_lock blocks them from re-entry to the guest.
> > +              */
> > +             force_exit_and_guest_tlb_flush(cpu_all_mask);
>
> Please use kvm_flush_remote_tlbs(kvm) instead.  All you need to do to
> support it is check for KVM_REQ_TLB_FLUSH and handle it by calling
> __kvm_riscv_hfence_gvma_all.  Also, since your spinlock is global you
> probably should release it around the call to kvm_flush_remote_tlbs.
> (Think of an implementation that has a very small number of VMID bits).

Sure, I will use kvm_flush_remote_tlbs() here.

>
> > +     if (unlikely(vmid_next == 0)) {
> > +             WRITE_ONCE(vmid_version, READ_ONCE(vmid_version) + 1);
> > +             vmid_next = 1;
> > +             /*
> > +              * On SMP we know no other CPUs can use this CPU's or
> > +              * each other's VMID after forced exit returns since the
> > +              * vmid_lock blocks them from re-entry to the guest.
> > +              */
> > +             force_exit_and_guest_tlb_flush(cpu_all_mask);
> > +     }
> > +
> > +     vmid->vmid = vmid_next;
> > +     vmid_next++;
> > +     vmid_next &= (1 << vmid_bits) - 1;
> > +
> > +     /* Ensure VMID next update is completed */
> > +     smp_wmb();
>
> This barrier is not necessary.  Writes to vmid->vmid need not be ordered
> with writes to vmid->vmid_version, because the accesses happen in
> completely different places.

Yes, your right. There is already a WRITE_ONCE after it.
>
> (As a rule of thumb, each smp_wmb() should have a matching smp_rmb()
> somewhere, and this one doesn't).

Sure, thanks for the hint.

>
> Paolo
>
> > +     WRITE_ONCE(vmid->vmid_version, READ_ONCE(vmid_version));
> > +

Regards,
Anup

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
