Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E04C7A6B7
	for <lists+linux-riscv@lfdr.de>; Tue, 30 Jul 2019 13:17:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jchJEW/8ZJc1aQ8U2p9fYJQGY0TbMWsJb7rG2rjFlVI=; b=RL0aEFu2QLnODJ
	GidqbcgvGaA8ciRp6HLNT9fdwy7q1KTiGIHOijOpfQM/LbzHdaNnP+pYK32Y4spJlj3mPcckJrXxO
	qytQ7lYNtSSVzRrpJ3JPZ15k/6+UUgTLWSPhpZc48LdKP5dqgu+WNxG5xqNkOntxQ5ydpZx51w9JR
	25B8nlv5yRcqCL6h+mTdWes3sAily067zi2oSAL7tTwij/PXoUu1/qymKFSfMk7Gf6W551yXrvFVm
	GQ/Ifzr1SnC0TItnzHe2eaRULnMcjtVyX19ZUVUSC2vH3ZsKD07ji/OylN7khbdnWCRmmz2C1uLQ/
	BACDNGr9Hs1OYtzH+SDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsQ8P-00048j-Vs; Tue, 30 Jul 2019 11:17:38 +0000
Received: from mail-wm1-f68.google.com ([209.85.128.68])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsQ8K-00047r-Mz
 for linux-riscv@lists.infradead.org; Tue, 30 Jul 2019 11:17:35 +0000
Received: by mail-wm1-f68.google.com with SMTP id u25so45915833wmc.4
 for <linux-riscv@lists.infradead.org>; Tue, 30 Jul 2019 04:17:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=ZvgPUBGV/7rlprGq2UKvQw64RD69l3r+T5crm34cB+M=;
 b=UiewaHDp0rlev8MzW9xn1rT1agymF20IwzAp46igFU4SMQJc8+SJU29VM7Je/H+ODK
 0AfzD07LMUM10TJN7jyHtITPPtRMC6nffy2zufFdZ+n8mJxy+3is8vn1jG83btONGsLo
 6Uz2pI9jSmvBYfKMlqryvt5ZnfyPe0xsG5kOmDOKBby7okMYpZSiiXT32i1RHe6NEQSl
 ezpGMnt8/aqQ6o8v3oDaHr02U74sntevW/g93JQLkraLQdvSrW9taLOBAk8Lbvs+Dfmp
 SDIodFWjJjMshi0zdsotnQnlVgpEcbAvVoGnNZCkpHqvMrld0vkBh/E8C4Z5gOOt7cTI
 vnrQ==
X-Gm-Message-State: APjAAAWenY2R6bh8NhEIj+hI00t16vVu1SCWtFBg/leTNcaJRIzxXtac
 +v2rcoEScn4Vpxmd4TXbb2Crxw==
X-Google-Smtp-Source: APXvYqw1KI7sUmp8Sdn4ayOXJmdRYtU432fiBUYC6ad6hlnK6fthEw1AC7gy+vYWxxfF/ync6NcJCA==
X-Received: by 2002:a1c:a6c8:: with SMTP id p191mr2101800wme.99.1564485449180; 
 Tue, 30 Jul 2019 04:17:29 -0700 (PDT)
Received: from [192.168.10.150] ([93.56.166.5])
 by smtp.gmail.com with ESMTPSA id b203sm78741169wmd.41.2019.07.30.04.17.27
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Tue, 30 Jul 2019 04:17:28 -0700 (PDT)
Subject: Re: [RFC PATCH 05/16] RISC-V: KVM: Implement VCPU interrupts and
 requests handling
To: Anup Patel <Anup.Patel@wdc.com>, Palmer Dabbelt <palmer@sifive.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, Radim K <rkrcmar@redhat.com>
References: <20190729115544.17895-1-anup.patel@wdc.com>
 <20190729115544.17895-6-anup.patel@wdc.com>
From: Paolo Bonzini <pbonzini@redhat.com>
Message-ID: <9f9d09e5-49bc-f8e3-cfe1-bd5221e3b683@redhat.com>
Date: Tue, 30 Jul 2019 13:17:26 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190729115544.17895-6-anup.patel@wdc.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_041732_938907_9669AF28 
X-CRM114-Status: GOOD (  13.23  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.68 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.68 listed in wl.mailspike.net]
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
Cc: Damien Le Moal <Damien.LeMoal@wdc.com>,
 "kvm@vger.kernel.org" <kvm@vger.kernel.org>, Anup Patel <anup@brainfault.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Christoph Hellwig <hch@infradead.org>, Atish Patra <Atish.Patra@wdc.com>,
 Alistair Francis <Alistair.Francis@wdc.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

First, something that is not clear to me: how do you deal with a guest
writing 1 to VSIP.SSIP?  I think that could lead to lost interrupts if
you have the following sequence

1) guest writes 1 to VSIP.SSIP

2) guest leaves VS-mode

3) host syncs VSIP

4) user mode triggers interrupt

5) host reenters guest

6) host moves irqs_pending to VSIP and clears VSIP.SSIP in the process

Perhaps irqs_pending needs to be split in two fields, irqs_pending and
irqs_pending_mask, and then you can do this:

/*
 * irqs_pending and irqs_pending_mask have multiple-producer/single-
 * consumer semantics; therefore bits can be set in the mask without
 * a lock, but clearing the bits requires vcpu_lock.  Furthermore,
 * consumers should never write to irqs_pending, and should not
 * use bits of irqs_pending that weren't 1 in the mask.
 */

int kvm_riscv_vcpu_set_interrupt(struct kvm_vcpu *vcpu, unsigned int irq)
{
	...
	set_bit(irq, &vcpu->arch.irqs_pending);
	smp_mb__before_atomic();
	set_bit(irq, &vcpu->arch.irqs_pending_mask);
	kvm_vcpu_kick(vcpu);
}

int kvm_riscv_vcpu_unset_interrupt(struct kvm_vcpu *vcpu, unsigned int irq)
{
	...
	clear_bit(irq, &vcpu->arch.irqs_pending);
	smp_mb__before_atomic();
	set_bit(irq, &vcpu->arch.irqs_pending_mask);
}

static void kvm_riscv_reset_vcpu(struct kvm_vcpu *vcpu)
{
	...
	WRITE_ONCE(vcpu->arch.irqs_pending_mask, 0);
}

and kvm_riscv_vcpu_flush_interrupts can leave aside VSIP bits that
aren't in vcpu->arch.irqs_pending_mask:

	if (atomic_read(&vcpu->arch.irqs_pending_mask)) {
		u32 mask, val;

		mask = xchg_acquire(&vcpu->arch.irqs_pending_mask, 0);
		val = READ_ONCE(vcpu->arch.irqs_pending) & mask;

		vcpu->arch.guest_csr.vsip &= ~mask;
		vcpu->arch.guest_csr.vsip |= val;
		csr_write(CSR_VSIP, vsip);
	}

Also, the getter of CSR_VSIP should call
kvm_riscv_vcpu_flush_interrupts, while the setter should clear
irqs_pending_mask.

On 29/07/19 13:56, Anup Patel wrote:
> +	kvm_make_request(KVM_REQ_IRQ_PENDING, vcpu);
> +	kvm_vcpu_kick(vcpu);

The request is not needed as long as kvm_riscv_vcpu_flush_interrupts is
called *after* smp_store_mb(vcpu->mode, IN_GUEST_MODE) in
kvm_arch_vcpu_ioctl_run.  This is the "request-less vCPU kick" pattern
in Documentation/virtual/kvm/vcpu-requests.rst.  The smp_store_mb then
orders the write of IN_GUEST_MODE before the read of irqs_pending (or
irqs_pending_mask in my proposal above); in the producers, there is a
dual memory barrier in kvm_vcpu_exiting_guest_mode(), ordering the write
of irqs_pending(_mask) before the read of vcpu->mode.

Similar to other VS* CSRs, I'd rather have a ONE_REG interface for VSIE
and VSIP from the beginning as well.  Note that the VSIP setter would
clear irqs_pending_mask, while the getter would call
kvm_riscv_vcpu_flush_interrupts before reading.  It's up to userspace to
ensure that no interrupt injections happen between the calls to the
getter and the setter.

Paolo

> +		csr_write(CSR_VSIP, vcpu->arch.irqs_pending);
> +		vcpu->arch.guest_csr.vsip = vcpu->arch.irqs_pending;
> +	}


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
