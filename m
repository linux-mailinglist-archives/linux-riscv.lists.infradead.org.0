Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F18E3817BE
	for <lists+linux-riscv@lfdr.de>; Mon,  5 Aug 2019 13:01:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X9ePZ7J9R0nNICQa0GR+EkEHGFzu4UBtrdxcgcqdl1k=; b=dmSZm+FV5RN8zl
	zINs5SxAU286HFpU4sgNyT7p/+R5nNJ8voU/Khs6mlzOBTMXx3X/v2WeKyLJMIk63ikZw2Gl+py0X
	+BZAZWOI8Axmttz1ObGkvwea21QZxLirVYauJY9BqsZFkaZu4+k+UC2RZgNW5DS2/LT1Zbsfh6Nfi
	ad+9iHHGH5xtOGYxG+x3uPbMdm+fu28wUJYe/zicbT4O1SpgjF/kmNCPYYkfURcb80MgL42CJ42I4
	Y4EoGIImxa4e2thXfd6UF7blsxtcFXnFCAEj9LCtO5GlJt+AvvzVam+Bmmq2+DD2pYtPX6XXGBG9w
	Yr9DrmKz6fyJ+dyQlU4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huajj-0000gl-Uy; Mon, 05 Aug 2019 11:01:09 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huajd-0000dT-E5
 for linux-riscv@lists.infradead.org; Mon, 05 Aug 2019 11:01:03 +0000
Received: by mail-wm1-x342.google.com with SMTP id s15so51206491wmj.3
 for <linux-riscv@lists.infradead.org>; Mon, 05 Aug 2019 04:01:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=wZ16p44zX6BsUqQEiRSnvBzZIECW5PSakjHNftFjOBk=;
 b=yz+iCyAl+dnC1lNGF63iT4hG6Snr1vZTr+21dxkBq/PP6APi3K9ouNdtZ1gyZxa4dV
 H1KiJ/jritMN7/OHeoQ5hKT/N+jrGbpfAOX+pVNrv5yecM2mBSqTArJ6sIYozs/Akket
 rmqCmNOGSuytfOnn9yuRBFGJXNloFqwFsV5ELGI2nkPxPKxRxYQxHm+KPNqgO2BCzUNk
 Xr+GepU09j8ms0i+FufpiANUi7tWiggOmd6vt0ehfCKOfTJtymOn0SoXJdlKGE2ppc12
 b7SNr/tDm1k0UEaaJDDvBCz8ALxO1ytLpVPInguGASB6+nn7i20aXC82Gegxol8ow1JA
 MBZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=wZ16p44zX6BsUqQEiRSnvBzZIECW5PSakjHNftFjOBk=;
 b=rlsAv1oyicsjo4Akx/h3ZpPFQ2YJnOX5FQhuS4FY5Ykgnc3vngp3XxHJVreXjFW7tr
 jqeRWPp7cJTLInHkHw05rs9vq/PC61rM1+wtXLHDfZS01i6AfkgWlnaB52R0FYrv4Qv6
 ZcAu1vp0ilGwATzjhek9XsS21bBTOkvbJ4kps1ZkDtSxlpDNbGQ0zLDRQzP3IF99bf5v
 RNYXzvHth/br1tkJz8TuPlEhvY6HOjj8UN7sVXCtBz50plGMrWoHt23pHwuvOr/2IMUD
 p2O9lilg6wz6ulFk8+gpIvkAIIgLQ/d/g0CZNTWEWII8hldIV1bLNREoeZkhqQacxgAc
 9Tmw==
X-Gm-Message-State: APjAAAXIcWLC1vGhRbaxIGjOUs05uy89BMsPVL9WfdGxEXcFwpZdX6TI
 TY8ssiLioQBejutYGGOEATfBXNqQ8Atu5jdOzxss0w==
X-Google-Smtp-Source: APXvYqz34Q/xVI4eQb/2CKtKth4SKfYxoFgUBbvnqYoT+yhEvkuS12fehfgsIK53Wqdh20YSj8xbldgiXF9f88P5xgs=
X-Received: by 2002:a1c:cfc5:: with SMTP id f188mr16866948wmg.24.1565002858876; 
 Mon, 05 Aug 2019 04:00:58 -0700 (PDT)
MIME-Version: 1.0
References: <20190802074620.115029-1-anup.patel@wdc.com>
 <20190802074620.115029-8-anup.patel@wdc.com>
 <03f60f3a-bb50-9210-8352-da16cca322b9@redhat.com>
 <CAAhSdy3hdWfUCUEK-idoTzgB2hKeAd3FzsHEH1DK_BTC_KGdJw@mail.gmail.com>
 <eb964565-10e1-bd44-c37c-774bf2f58049@redhat.com>
In-Reply-To: <eb964565-10e1-bd44-c37c-774bf2f58049@redhat.com>
From: Anup Patel <anup@brainfault.org>
Date: Mon, 5 Aug 2019 16:30:47 +0530
Message-ID: <CAAhSdy1Voxuq=70Qkf__57MwE+DWEVayxLwu09Evnko=2kcweQ@mail.gmail.com>
Subject: Re: [RFC PATCH v2 07/19] RISC-V: KVM: Implement
 KVM_GET_ONE_REG/KVM_SET_ONE_REG ioctls
To: Paolo Bonzini <pbonzini@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_040101_575724_7DC0F297 
X-CRM114-Status: GOOD (  24.43  )
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

On Mon, Aug 5, 2019 at 12:40 PM Paolo Bonzini <pbonzini@redhat.com> wrote:
>
> On 05/08/19 08:55, Anup Patel wrote:
> > On Fri, Aug 2, 2019 at 2:33 PM Paolo Bonzini <pbonzini@redhat.com> wrote:
> >>
> >> On 02/08/19 09:47, Anup Patel wrote:
> >>> +     if (reg_num == KVM_REG_RISCV_CSR_REG(sip))
> >>> +             kvm_riscv_vcpu_flush_interrupts(vcpu, false);
> >>
> >> Not updating the vsip CSR here can cause an interrupt to be lost, if the
> >> next call to kvm_riscv_vcpu_flush_interrupts finds a zero mask.
> >
> > Thanks for catching this issue. I will address it in v3.
> >
> > If we think more on similar lines then we also need to handle the case
> > where Guest VCPU had pending interrupts and we suddenly stopped it
> > for Guest migration. In this case, we would eventually use SET_ONE_REG
> > ioctl on destination Host which should set vsip_shadow instead of vsip so
> > that we force update HW after resuming Guest VCPU on destination host.
>
> I think it's simpler than that.
>
> vcpu->vsip_shadow is just the current value of CSR_VSIP so that you do
> not need to update it unconditionally on every vmentry.  That is,
> kvm_vcpu_arch_load should do
>
>         csr_write(CSR_VSIP, vcpu->arch.guest_csr.vsip);
>         vcpu->vsip_shadow = vcpu->arch.guest_csr.vsip;
>
> while every other write can go through kvm_riscv_update_vsip.  But
> vsip_shadow is completely disconnected from SET_ONE_REG; SET_ONE_REG can
> just write vcpu->arch.guest_csr.vsip and clear irqs_pending_mask, the
> next entry will write CSR_VSIP and vsip_shadow if needed.
>
> In fact, instead of placing it in kvm_vcpu, vsip_shadow could be a
> percpu variable; on hardware_enable you write 0 to both vsip_shadow and
> CSR_VSIP, and then kvm_arch_vcpu_load does not have to touch CSR_VSIP at
> all (only kvm_riscv_vcpu_flush_interrupts).  I think this makes the
> purpose of vsip_shadow even clearer, so I highly suggest doing that.

Yes, having vsip_shadow as percpu variable makes sense. I will update
accordingly.

>
> >> You could add a new field vcpu->vsip_shadow that is updated every time
> >> CSR_VSIP is written (including kvm_arch_vcpu_load) with a function like
> >>
> >> void kvm_riscv_update_vsip(struct kvm_vcpu *vcpu)
> >> {
> >>         if (vcpu->vsip_shadow != vcpu->arch.guest_csr.vsip) {
> >>                 csr_write(CSR_VSIP, vcpu->arch.guest_csr.vsip);
> >>                 vcpu->vsip_shadow = vcpu->arch.guest_csr.vsip;
> >>         }
> >> }
> >>
> >> And just call this unconditionally from kvm_vcpu_ioctl_run.  The cost is
> >> just a memory load per VS-mode entry, it should hardly be measurable.
> >
> > I think we can do this at start of kvm_riscv_vcpu_flush_interrupts() as well.
>
> Did you mean at the end?  (That is, after modifying
> vcpu->arch.guest_csr.vsip based on mask and val).  With the above switch
> to percpu, the only write of CSR_VSIP and vsip_shadow should be in
> kvm_riscv_vcpu_flush_interrupts, which in turn is only called from
> kvm_vcpu_ioctl_run.

Yes, I meant at the end of kvm_riscv_vcpu_flush_interrupts() but I am
fine having separate kvm_riscv_update_vsip() function as well.

Regards,
Anup

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
