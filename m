Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E297E812C5
	for <lists+linux-riscv@lfdr.de>; Mon,  5 Aug 2019 09:10:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JEth7zSxhIpXmlr6KAjeudDzpJMNJFAx+9gWzscAS8s=; b=AsacKNZQDu2juT
	acCNzXicpHW8KW5udnSEYVEIE1bEUNlRJR/dXGS27/h2mNU1nyqmm45VIForx4bzWNFFdYz3yXBAM
	G+yocTdagzhCSQjFG4/83mun1lupUGlLqC/5CVzF8T6NAEg0TPeYWz5ey5h0xvpe/L+tvM0BAxMKy
	bGziup821jwtPhSYSL5ItqEXs45MRj0W0YpZCdtFpFrmbE6xIfwpIncuwnebEfyS1AuHrhAQ/4ibd
	mfcwBoH7Q1joUwHkd72pdS3NWzuH6qgTuXiMuLVmXhBPBRSp1LphjGloyu4mxhtOQvchiyjI27zuM
	kLx5ZDYciX9RWLXxuZ0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huX8j-0002mW-IT; Mon, 05 Aug 2019 07:10:41 +0000
Received: from mail-wr1-f65.google.com ([209.85.221.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huX8d-0002mA-Lz
 for linux-riscv@lists.infradead.org; Mon, 05 Aug 2019 07:10:37 +0000
Received: by mail-wr1-f65.google.com with SMTP id n9so83352368wru.0
 for <linux-riscv@lists.infradead.org>; Mon, 05 Aug 2019 00:10:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=ZevUiv8uwSdDDjAx9KzB+mkgl2A2MlBAMqJYEcYxJb4=;
 b=KoBW6wNNYE3nA/0SYNiQWv2J7W0SqwZuFxAxrZEtPyWu/+ukbXbBEKr9XYfrdaVs7M
 Vj1oDAhbiIvyOz+rXS1D9qHd+QEIF8D6qI0rx+IkSFScyVAmtUz20VQB0MBJIPc0B0Pu
 fEsL6CwPBqUnjj25hTRslGcp7wyUuKORpajrmiJcjKZnOr6w3zDQHgCe95SDOZgjnbcm
 HQR7qe1iKUvN56SorpV6IUUgkbiOkl5le0ziNaOGVOzDAda930f3Ce1ypJmn2TREgvGG
 a+L0/Z1I+p/p3AXC9QnabtUA5roeqnVeQp1kPWZOdsPeVNpN71b+1v3C8qmbCJu77O+l
 I4iA==
X-Gm-Message-State: APjAAAVti06YK97umwdejMg+p5HBudfZUPyrUuyDFtVmY3Y9JnxIV4sL
 rM1TxUfoJejcnqXUqE2MZ7ouuw==
X-Google-Smtp-Source: APXvYqz4JZD0IeqwiFL5mBQ4rS9FPy4QrJF8r1CcIFwbr3gterh7TeHwGfJ0MlgqppwBX5w6DpgFdg==
X-Received: by 2002:a05:6000:42:: with SMTP id
 k2mr38385884wrx.80.1564989033079; 
 Mon, 05 Aug 2019 00:10:33 -0700 (PDT)
Received: from ?IPv6:2001:b07:6468:f312:4013:e920:9388:c3ff?
 ([2001:b07:6468:f312:4013:e920:9388:c3ff])
 by smtp.gmail.com with ESMTPSA id t185sm74525739wma.11.2019.08.05.00.10.31
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Mon, 05 Aug 2019 00:10:32 -0700 (PDT)
Subject: Re: [RFC PATCH v2 07/19] RISC-V: KVM: Implement
 KVM_GET_ONE_REG/KVM_SET_ONE_REG ioctls
To: Anup Patel <anup@brainfault.org>
References: <20190802074620.115029-1-anup.patel@wdc.com>
 <20190802074620.115029-8-anup.patel@wdc.com>
 <03f60f3a-bb50-9210-8352-da16cca322b9@redhat.com>
 <CAAhSdy3hdWfUCUEK-idoTzgB2hKeAd3FzsHEH1DK_BTC_KGdJw@mail.gmail.com>
From: Paolo Bonzini <pbonzini@redhat.com>
Openpgp: preference=signencrypt
Message-ID: <eb964565-10e1-bd44-c37c-774bf2f58049@redhat.com>
Date: Mon, 5 Aug 2019 09:10:31 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAAhSdy3hdWfUCUEK-idoTzgB2hKeAd3FzsHEH1DK_BTC_KGdJw@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_001035_720911_8AFA3E04 
X-CRM114-Status: GOOD (  19.23  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.65 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

On 05/08/19 08:55, Anup Patel wrote:
> On Fri, Aug 2, 2019 at 2:33 PM Paolo Bonzini <pbonzini@redhat.com> wrote:
>>
>> On 02/08/19 09:47, Anup Patel wrote:
>>> +     if (reg_num == KVM_REG_RISCV_CSR_REG(sip))
>>> +             kvm_riscv_vcpu_flush_interrupts(vcpu, false);
>>
>> Not updating the vsip CSR here can cause an interrupt to be lost, if the
>> next call to kvm_riscv_vcpu_flush_interrupts finds a zero mask.
> 
> Thanks for catching this issue. I will address it in v3.
> 
> If we think more on similar lines then we also need to handle the case
> where Guest VCPU had pending interrupts and we suddenly stopped it
> for Guest migration. In this case, we would eventually use SET_ONE_REG
> ioctl on destination Host which should set vsip_shadow instead of vsip so
> that we force update HW after resuming Guest VCPU on destination host.

I think it's simpler than that.

vcpu->vsip_shadow is just the current value of CSR_VSIP so that you do
not need to update it unconditionally on every vmentry.  That is,
kvm_vcpu_arch_load should do

	csr_write(CSR_VSIP, vcpu->arch.guest_csr.vsip);
	vcpu->vsip_shadow = vcpu->arch.guest_csr.vsip;

while every other write can go through kvm_riscv_update_vsip.  But
vsip_shadow is completely disconnected from SET_ONE_REG; SET_ONE_REG can
just write vcpu->arch.guest_csr.vsip and clear irqs_pending_mask, the
next entry will write CSR_VSIP and vsip_shadow if needed.

In fact, instead of placing it in kvm_vcpu, vsip_shadow could be a
percpu variable; on hardware_enable you write 0 to both vsip_shadow and
CSR_VSIP, and then kvm_arch_vcpu_load does not have to touch CSR_VSIP at
all (only kvm_riscv_vcpu_flush_interrupts).  I think this makes the
purpose of vsip_shadow even clearer, so I highly suggest doing that.

>> You could add a new field vcpu->vsip_shadow that is updated every time
>> CSR_VSIP is written (including kvm_arch_vcpu_load) with a function like
>>
>> void kvm_riscv_update_vsip(struct kvm_vcpu *vcpu)
>> {
>>         if (vcpu->vsip_shadow != vcpu->arch.guest_csr.vsip) {
>>                 csr_write(CSR_VSIP, vcpu->arch.guest_csr.vsip);
>>                 vcpu->vsip_shadow = vcpu->arch.guest_csr.vsip;
>>         }
>> }
>>
>> And just call this unconditionally from kvm_vcpu_ioctl_run.  The cost is
>> just a memory load per VS-mode entry, it should hardly be measurable.
> 
> I think we can do this at start of kvm_riscv_vcpu_flush_interrupts() as well.

Did you mean at the end?  (That is, after modifying
vcpu->arch.guest_csr.vsip based on mask and val).  With the above switch
to percpu, the only write of CSR_VSIP and vsip_shadow should be in
kvm_riscv_vcpu_flush_interrupts, which in turn is only called from
kvm_vcpu_ioctl_run.

Thanks,

Paolo

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
