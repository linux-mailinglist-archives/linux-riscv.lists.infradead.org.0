Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47508DFCFA
	for <lists+linux-riscv@lfdr.de>; Tue, 22 Oct 2019 07:09:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QDQaHSj2awhLzMLq0RbqrCK+fttD1mgOg1ZPp57hNpw=; b=My5dDnpxvCJfOU
	kVcCJqsbvDYc1tJhwp3ar5MtiZrtoNr4r816Csux2TjuLkaXR03UG7gSUBKCC48corlphGsK3xKH/
	AWaVoda6ah2QaS9QOSQflQD6hIpoq1qYTaxGnYYAqJW+K6yeS4GzM/wKaoT1AC1cR7KCgGDBNChT4
	6zm6yP563lZyJku1ORM49Vsyjxfp/gZZ+kVFm3Rtn4SGv4f19wK/TpRPHK6Oj4LrorNKwIX+UYEXR
	/lfYFf6guQXsJKyz9cbiOlk8YpXMR51NyqGfXBruHp/d6LTuNrwEkgvE6ssw5inoczHfWETQuLOwz
	+cGkkzJNU8FQe3tKyNsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMmQW-00029D-1G; Tue, 22 Oct 2019 05:09:48 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMmQS-00028f-Un
 for linux-riscv@lists.infradead.org; Tue, 22 Oct 2019 05:09:46 +0000
Received: by mail-wr1-x443.google.com with SMTP id s1so7623431wro.0
 for <linux-riscv@lists.infradead.org>; Mon, 21 Oct 2019 22:09:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=u/quP6H3t0vd+EUHeiV1XtwPAgHpe/L6SdgFukt3v7I=;
 b=UJDKA2KXuJEpZjuCE7M0A4TYaHJwXeoBaS3iWDPtUSt7GpqUGQrS3O4k6DvdgSb0bN
 redzX4NV6SW/+egZUr2DuF4GQmoqZw7FDbnKJCBzFeU7rWxVQouA5kFncvAehzf3jKqK
 gdTnn7FZd+1uzTx9c+42X/rn+kUbhA3rerOGp02RJnWesekdrGx8kquK5lfH4pNSvvKR
 8hVX21GmgbEXHn5F9CCMPTbdlfTnvqE7OfjMz7MWDEo2qd4NIV6VUFFGdpo6bdcurrUX
 vG60tTnjBqx+BZ1xWISIV0eIeEvBvPOMyy/oxA+ZGo7xMeMx3TYp231RgISwQayeJOpK
 MH+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=u/quP6H3t0vd+EUHeiV1XtwPAgHpe/L6SdgFukt3v7I=;
 b=dY9corYNdFK5ypf5u4/q4nO35nR6zRgjBe9wRvczsWaTlQ9S/QuSztLElpsq3E3yTP
 Y8uVv5UBicMcSVHI2ALprpAlNlxLc4Qu8X4IGfHUybbQjjmok3ZOVKC6sGwsTpprkHmn
 Lts9vJ89w6L2jEvC0eKklabfonztjrAJKP0ATjA1bcAqJB3v041k3xrxei5ChuZIaGhW
 yjIL+zwhVDB1R7hYVe04tLjaahailx2dkNQOOcxsaBdyWLvhjfg1GbPo11DHq+ecsDjq
 QQuVeFnG2ezCIm6S/eL+VV52FvE4HfthzMDxLVA3Pr50woRos8XH0sBQUzieuJ/4kwIm
 A8lQ==
X-Gm-Message-State: APjAAAXe0pgNZdCkaIkxxgK5vAicEyixxGGGUDPIZcyGCYc73Mq4EIJe
 y59EYyJIejV1mHUlhHjxQN3T+onEVI1GJdANxwIWAw==
X-Google-Smtp-Source: APXvYqwZD1j8xJWElPYHYhi9Zjt/MS9g2ikbsI1900bS88lRyEawqVJJ6EO8O2gyxOTlf+Gdd0g0pZutNuTIzTbuOe4=
X-Received: by 2002:adf:e850:: with SMTP id d16mr1439791wrn.251.1571720981754; 
 Mon, 21 Oct 2019 22:09:41 -0700 (PDT)
MIME-Version: 1.0
References: <20191016160649.24622-1-anup.patel@wdc.com>
 <20191016160649.24622-20-anup.patel@wdc.com>
 <7381057d-a3f3-e79a-bb2c-b078fc918b1f@redhat.com>
In-Reply-To: <7381057d-a3f3-e79a-bb2c-b078fc918b1f@redhat.com>
From: Anup Patel <anup@brainfault.org>
Date: Tue, 22 Oct 2019 10:39:30 +0530
Message-ID: <CAAhSdy0E02VC0+Qb8Tczcs1YFMdFRRhM2VsGqNu1ZFLmohUAdw@mail.gmail.com>
Subject: Re: [PATCH v9 19/22] RISC-V: KVM: Remove per-CPU vsip_shadow variable
To: Paolo Bonzini <pbonzini@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_220944_995580_B646D999 
X-CRM114-Status: GOOD (  15.48  )
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
 Alexander Graf <graf@amazon.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 Alistair Francis <Alistair.Francis@wdc.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, Oct 21, 2019 at 10:58 PM Paolo Bonzini <pbonzini@redhat.com> wrote:
>
> On 16/10/19 18:12, Anup Patel wrote:
> > Currently, we track last value wrote to VSIP CSR using per-CPU
> > vsip_shadow variable but this easily goes out-of-sync because
> > Guest can update VSIP.SSIP bit directly.
> >
> > To simplify things, we remove per-CPU vsip_shadow variable and
> > unconditionally write vcpu->arch.guest_csr.vsip to VSIP CSR in
> > run-loop.
> >
> > Signed-off-by: Anup Patel <anup.patel@wdc.com>
>
> Please squash this and patch 20 into the corresponding patches earlier
> in the series.

Sure, I will squash patch20 and patch19 onto patch5.

Regards,
Anup


>
> Paolo
>
> > ---
> >  arch/riscv/include/asm/kvm_host.h |  3 ---
> >  arch/riscv/kvm/main.c             |  6 ------
> >  arch/riscv/kvm/vcpu.c             | 24 +-----------------------
> >  3 files changed, 1 insertion(+), 32 deletions(-)
> >
> > diff --git a/arch/riscv/include/asm/kvm_host.h b/arch/riscv/include/asm/kvm_host.h
> > index ec1ca4bc98f2..cd86acaed055 100644
> > --- a/arch/riscv/include/asm/kvm_host.h
> > +++ b/arch/riscv/include/asm/kvm_host.h
> > @@ -202,9 +202,6 @@ static inline void kvm_arch_vcpu_uninit(struct kvm_vcpu *vcpu) {}
> >  static inline void kvm_arch_sched_in(struct kvm_vcpu *vcpu, int cpu) {}
> >  static inline void kvm_arch_vcpu_block_finish(struct kvm_vcpu *vcpu) {}
> >
> > -int kvm_riscv_setup_vsip(void);
> > -void kvm_riscv_cleanup_vsip(void);
> > -
> >  #define KVM_ARCH_WANT_MMU_NOTIFIER
> >  int kvm_unmap_hva_range(struct kvm *kvm,
> >                       unsigned long start, unsigned long end);
> > diff --git a/arch/riscv/kvm/main.c b/arch/riscv/kvm/main.c
> > index 55df85184241..002301a27d29 100644
> > --- a/arch/riscv/kvm/main.c
> > +++ b/arch/riscv/kvm/main.c
> > @@ -61,17 +61,11 @@ void kvm_arch_hardware_disable(void)
> >
> >  int kvm_arch_init(void *opaque)
> >  {
> > -     int ret;
> > -
> >       if (!riscv_isa_extension_available(NULL, h)) {
> >               kvm_info("hypervisor extension not available\n");
> >               return -ENODEV;
> >       }
> >
> > -     ret = kvm_riscv_setup_vsip();
> > -     if (ret)
> > -             return ret;
> > -
> >       kvm_riscv_stage2_vmid_detect();
> >
> >       kvm_info("hypervisor extension available\n");
> > diff --git a/arch/riscv/kvm/vcpu.c b/arch/riscv/kvm/vcpu.c
> > index fd77cd39dd8c..f1a218d3a8cf 100644
> > --- a/arch/riscv/kvm/vcpu.c
> > +++ b/arch/riscv/kvm/vcpu.c
> > @@ -111,8 +111,6 @@ static void kvm_riscv_vcpu_host_fp_restore(struct kvm_cpu_context *cntx) {}
> >                                riscv_isa_extension_mask(s) | \
> >                                riscv_isa_extension_mask(u))
> >
> > -static unsigned long __percpu *vsip_shadow;
> > -
> >  static void kvm_riscv_reset_vcpu(struct kvm_vcpu *vcpu)
> >  {
> >       struct kvm_vcpu_csr *csr = &vcpu->arch.guest_csr;
> > @@ -765,7 +763,6 @@ int kvm_arch_vcpu_ioctl_set_guest_debug(struct kvm_vcpu *vcpu,
> >  void kvm_arch_vcpu_load(struct kvm_vcpu *vcpu, int cpu)
> >  {
> >       struct kvm_vcpu_csr *csr = &vcpu->arch.guest_csr;
> > -     unsigned long *vsip = raw_cpu_ptr(vsip_shadow);
> >
> >       csr_write(CSR_VSSTATUS, csr->vsstatus);
> >       csr_write(CSR_VSIE, csr->vsie);
> > @@ -775,7 +772,6 @@ void kvm_arch_vcpu_load(struct kvm_vcpu *vcpu, int cpu)
> >       csr_write(CSR_VSCAUSE, csr->vscause);
> >       csr_write(CSR_VSTVAL, csr->vstval);
> >       csr_write(CSR_VSIP, csr->vsip);
> > -     *vsip = csr->vsip;
> >       csr_write(CSR_VSATP, csr->vsatp);
> >
> >       kvm_riscv_stage2_update_hgatp(vcpu);
> > @@ -843,26 +839,8 @@ static void kvm_riscv_check_vcpu_requests(struct kvm_vcpu *vcpu)
> >  static void kvm_riscv_update_vsip(struct kvm_vcpu *vcpu)
> >  {
> >       struct kvm_vcpu_csr *csr = &vcpu->arch.guest_csr;
> > -     unsigned long *vsip = raw_cpu_ptr(vsip_shadow);
> > -
> > -     if (*vsip != csr->vsip) {
> > -             csr_write(CSR_VSIP, csr->vsip);
> > -             *vsip = csr->vsip;
> > -     }
> > -}
> > -
> > -int kvm_riscv_setup_vsip(void)
> > -{
> > -     vsip_shadow = alloc_percpu(unsigned long);
> > -     if (!vsip_shadow)
> > -             return -ENOMEM;
> >
> > -     return 0;
> > -}
> > -
> > -void kvm_riscv_cleanup_vsip(void)
> > -{
> > -     free_percpu(vsip_shadow);
> > +     csr_write(CSR_VSIP, csr->vsip);
> >  }
> >
> >  int kvm_arch_vcpu_ioctl_run(struct kvm_vcpu *vcpu, struct kvm_run *run)
> >
>

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
