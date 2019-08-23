Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2559F9A92A
	for <lists+linux-riscv@lfdr.de>; Fri, 23 Aug 2019 09:53:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3CpaWOdFNMyBSxxpAq3zTBbiMxNd+0T8oRMSPhixnbs=; b=mW/cp8QIOTCpFXWItQeltJZnm
	HVLBYa2nIzuOQp0fQqAC8NTDEn0GVpaXDnv8/MbZqMT1g3Cyr4ROJwkZy3hnUs1EucQCbvhk57Vwt
	thLMeARzO6gsicvMMyEWJhsZY1Wa0Ib4mh1VnD8fDzcCofOz5vTcGA9qVrInHkVnAC7fIbFS9JYbb
	4SI58D4jpdIb4WdBWjDvGHtVEzDeabX6o1UC8d+DSCbYh9EfTGlDSMUdgJcWKg0U07AJF6XEXUPu4
	mQn0ja/Y5o8yw/GFeYQ9Lk16lGFwMiFOj2gyVWV9MEmf9u3dkq7HDJhB4dbXAIh3Xurhb2wXPrsw9
	5OcT+YPag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i14Nh-0004aE-Kk; Fri, 23 Aug 2019 07:53:09 +0000
Received: from smtp-fw-6001.amazon.com ([52.95.48.154])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i14Nc-0004Zr-5a
 for linux-riscv@lists.infradead.org; Fri, 23 Aug 2019 07:53:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
 t=1566546784; x=1598082784;
 h=subject:to:cc:references:from:message-id:date:
 mime-version:in-reply-to:content-transfer-encoding;
 bh=09Znot9poc8XaBH1wWZcsG68wcVBqQsZ/zN0uPdHxv8=;
 b=rCrMuRGR1CL6r50I8VAlCfHsf/D2NqhkJ65Ug2x2wqpXEyS5ji3uUd6g
 0OVk8nmX0wPFVs5GqNayWoiLiPpHIDKASju6aVEOS1rwYHVTN8ljFv/pS
 aB92SLHKgNltmMf/Mt+Ez4qP4edmZXP4/JbbF3jXTKj5frb27SGZO814x g=;
X-IronPort-AV: E=Sophos;i="5.64,420,1559520000"; d="scan'208";a="411287387"
Received: from iad6-co-svc-p1-lb1-vlan3.amazon.com (HELO
 email-inbound-relay-2b-5bdc5131.us-west-2.amazon.com) ([10.124.125.6])
 by smtp-border-fw-out-6001.iad6.amazon.com with ESMTP;
 23 Aug 2019 07:52:50 +0000
Received: from EX13MTAUWC001.ant.amazon.com
 (pdx4-ws-svc-p6-lb7-vlan3.pdx.amazon.com [10.170.41.166])
 by email-inbound-relay-2b-5bdc5131.us-west-2.amazon.com (Postfix) with ESMTPS
 id B5A6FA1DEB; Fri, 23 Aug 2019 07:52:49 +0000 (UTC)
Received: from EX13D20UWC001.ant.amazon.com (10.43.162.244) by
 EX13MTAUWC001.ant.amazon.com (10.43.162.135) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Fri, 23 Aug 2019 07:52:49 +0000
Received: from 38f9d3867b82.ant.amazon.com (10.43.162.191) by
 EX13D20UWC001.ant.amazon.com (10.43.162.244) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Fri, 23 Aug 2019 07:52:45 +0000
Subject: Re: [PATCH v5 15/20] RISC-V: KVM: Add timer functionality
To: Anup Patel <Anup.Patel@wdc.com>, Palmer Dabbelt <palmer@sifive.com>, "Paul
 Walmsley" <paul.walmsley@sifive.com>, Paolo Bonzini <pbonzini@redhat.com>, 
 Radim K <rkrcmar@redhat.com>
References: <20190822084131.114764-1-anup.patel@wdc.com>
 <20190822084131.114764-16-anup.patel@wdc.com>
From: Alexander Graf <graf@amazon.com>
Message-ID: <09d74212-4fa3-d64c-5a63-d556e955b88c@amazon.com>
Date: Fri, 23 Aug 2019 09:52:42 +0200
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190822084131.114764-16-anup.patel@wdc.com>
Content-Language: en-US
X-Originating-IP: [10.43.162.191]
X-ClientProxiedBy: EX13D13UWB004.ant.amazon.com (10.43.161.218) To
 EX13D20UWC001.ant.amazon.com (10.43.162.244)
Precedence: Bulk
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_005304_408502_22DC8857 
X-CRM114-Status: GOOD (  22.01  )
X-Spam-Score: -10.0 (----------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-10.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [52.95.48.154 listed in list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-riscv@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 22.08.19 10:46, Anup Patel wrote:
> From: Atish Patra <atish.patra@wdc.com>
> 
> The RISC-V hypervisor specification doesn't have any virtual timer
> feature.
> 
> Due to this, the guest VCPU timer will be programmed via SBI calls.
> The host will use a separate hrtimer event for each guest VCPU to
> provide timer functionality. We inject a virtual timer interrupt to
> the guest VCPU whenever the guest VCPU hrtimer event expires.
> 
> The following features are not supported yet and will be added in
> future:
> 1. A time offset to adjust guest time from host time
> 2. A saved next event in guest vcpu for vm migration

Implementing these 2 bits right now should be trivial. Why wait?

> 
> Signed-off-by: Atish Patra <atish.patra@wdc.com>
> Signed-off-by: Anup Patel <anup.patel@wdc.com>
> Acked-by: Paolo Bonzini <pbonzini@redhat.com>
> Reviewed-by: Paolo Bonzini <pbonzini@redhat.com>
> ---
>   arch/riscv/include/asm/kvm_host.h       |   4 +
>   arch/riscv/include/asm/kvm_vcpu_timer.h |  32 +++++++
>   arch/riscv/kvm/Makefile                 |   2 +-
>   arch/riscv/kvm/vcpu.c                   |   6 ++
>   arch/riscv/kvm/vcpu_timer.c             | 106 ++++++++++++++++++++++++
>   drivers/clocksource/timer-riscv.c       |   8 ++
>   include/clocksource/timer-riscv.h       |  16 ++++
>   7 files changed, 173 insertions(+), 1 deletion(-)
>   create mode 100644 arch/riscv/include/asm/kvm_vcpu_timer.h
>   create mode 100644 arch/riscv/kvm/vcpu_timer.c
>   create mode 100644 include/clocksource/timer-riscv.h
> 
> diff --git a/arch/riscv/include/asm/kvm_host.h b/arch/riscv/include/asm/kvm_host.h
> index ab33e59a3d88..d2a2e45eefc0 100644
> --- a/arch/riscv/include/asm/kvm_host.h
> +++ b/arch/riscv/include/asm/kvm_host.h
> @@ -12,6 +12,7 @@
>   #include <linux/types.h>
>   #include <linux/kvm.h>
>   #include <linux/kvm_types.h>
> +#include <asm/kvm_vcpu_timer.h>
>   
>   #ifdef CONFIG_64BIT
>   #define KVM_MAX_VCPUS			(1U << 16)
> @@ -167,6 +168,9 @@ struct kvm_vcpu_arch {
>   	unsigned long irqs_pending;
>   	unsigned long irqs_pending_mask;
>   
> +	/* VCPU Timer */
> +	struct kvm_vcpu_timer timer;
> +
>   	/* MMIO instruction details */
>   	struct kvm_mmio_decode mmio_decode;
>   
> diff --git a/arch/riscv/include/asm/kvm_vcpu_timer.h b/arch/riscv/include/asm/kvm_vcpu_timer.h
> new file mode 100644
> index 000000000000..df67ea86988e
> --- /dev/null
> +++ b/arch/riscv/include/asm/kvm_vcpu_timer.h
> @@ -0,0 +1,32 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
> +/*
> + * Copyright (C) 2019 Western Digital Corporation or its affiliates.
> + *
> + * Authors:
> + *	Atish Patra <atish.patra@wdc.com>
> + */
> +
> +#ifndef __KVM_VCPU_RISCV_TIMER_H
> +#define __KVM_VCPU_RISCV_TIMER_H
> +
> +#include <linux/hrtimer.h>
> +
> +#define VCPU_TIMER_PROGRAM_THRESHOLD_NS		1000
> +
> +struct kvm_vcpu_timer {
> +	bool init_done;
> +	/* Check if the timer is programmed */
> +	bool is_set;
> +	struct hrtimer hrt;
> +	/* Mult & Shift values to get nanosec from cycles */
> +	u32 mult;
> +	u32 shift;
> +};
> +
> +int kvm_riscv_vcpu_timer_init(struct kvm_vcpu *vcpu);
> +int kvm_riscv_vcpu_timer_deinit(struct kvm_vcpu *vcpu);
> +int kvm_riscv_vcpu_timer_reset(struct kvm_vcpu *vcpu);
> +int kvm_riscv_vcpu_timer_next_event(struct kvm_vcpu *vcpu,
> +				    unsigned long ncycles);

This function never gets called?

> +
> +#endif
> diff --git a/arch/riscv/kvm/Makefile b/arch/riscv/kvm/Makefile
> index c0f57f26c13d..3e0c7558320d 100644
> --- a/arch/riscv/kvm/Makefile
> +++ b/arch/riscv/kvm/Makefile
> @@ -9,6 +9,6 @@ ccflags-y := -Ivirt/kvm -Iarch/riscv/kvm
>   kvm-objs := $(common-objs-y)
>   
>   kvm-objs += main.o vm.o vmid.o tlb.o mmu.o
> -kvm-objs += vcpu.o vcpu_exit.o vcpu_switch.o
> +kvm-objs += vcpu.o vcpu_exit.o vcpu_switch.o vcpu_timer.o
>   
>   obj-$(CONFIG_KVM)	+= kvm.o
> diff --git a/arch/riscv/kvm/vcpu.c b/arch/riscv/kvm/vcpu.c
> index 6124077d154f..018fca436776 100644
> --- a/arch/riscv/kvm/vcpu.c
> +++ b/arch/riscv/kvm/vcpu.c
> @@ -54,6 +54,8 @@ static void kvm_riscv_reset_vcpu(struct kvm_vcpu *vcpu)
>   
>   	memcpy(cntx, reset_cntx, sizeof(*cntx));
>   
> +	kvm_riscv_vcpu_timer_reset(vcpu);
> +
>   	WRITE_ONCE(vcpu->arch.irqs_pending, 0);
>   	WRITE_ONCE(vcpu->arch.irqs_pending_mask, 0);
>   }
> @@ -108,6 +110,9 @@ int kvm_arch_vcpu_init(struct kvm_vcpu *vcpu)
>   	cntx->hstatus |= HSTATUS_SP2P;
>   	cntx->hstatus |= HSTATUS_SPV;
>   
> +	/* Setup VCPU timer */
> +	kvm_riscv_vcpu_timer_init(vcpu);
> +
>   	/* Reset VCPU */
>   	kvm_riscv_reset_vcpu(vcpu);
>   
> @@ -116,6 +121,7 @@ int kvm_arch_vcpu_init(struct kvm_vcpu *vcpu)
>   
>   void kvm_arch_vcpu_destroy(struct kvm_vcpu *vcpu)
>   {
> +	kvm_riscv_vcpu_timer_deinit(vcpu);
>   	kvm_riscv_stage2_flush_cache(vcpu);
>   	kmem_cache_free(kvm_vcpu_cache, vcpu);
>   }
> diff --git a/arch/riscv/kvm/vcpu_timer.c b/arch/riscv/kvm/vcpu_timer.c
> new file mode 100644
> index 000000000000..a45ca06e1aa6
> --- /dev/null
> +++ b/arch/riscv/kvm/vcpu_timer.c
> @@ -0,0 +1,106 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright (C) 2019 Western Digital Corporation or its affiliates.
> + *
> + * Authors:
> + *     Atish Patra <atish.patra@wdc.com>
> + */
> +
> +#include <linux/errno.h>
> +#include <linux/err.h>
> +#include <linux/kvm_host.h>
> +#include <clocksource/timer-riscv.h>
> +#include <asm/csr.h>
> +#include <asm/kvm_vcpu_timer.h>
> +
> +static enum hrtimer_restart kvm_riscv_vcpu_hrtimer_expired(struct hrtimer *h)
> +{
> +	struct kvm_vcpu_timer *t = container_of(h, struct kvm_vcpu_timer, hrt);
> +	struct kvm_vcpu *vcpu = container_of(t, struct kvm_vcpu, arch.timer);
> +
> +	t->is_set = false;
> +	kvm_riscv_vcpu_set_interrupt(vcpu, IRQ_S_TIMER);
> +
> +	return HRTIMER_NORESTART;
> +}
> +
> +static u64 kvm_riscv_delta_cycles2ns(u64 cycles, struct kvm_vcpu_timer *t)
> +{
> +	unsigned long flags;
> +	u64 cycles_now, cycles_delta, delta_ns;
> +
> +	local_irq_save(flags);
> +	cycles_now = get_cycles64();
> +	if (cycles_now < cycles)
> +		cycles_delta = cycles - cycles_now;
> +	else
> +		cycles_delta = 0;
> +	delta_ns = (cycles_delta * t->mult) >> t->shift;
> +	local_irq_restore(flags);
> +
> +	return delta_ns;
> +}
> +
> +static int kvm_riscv_vcpu_timer_cancel(struct kvm_vcpu_timer *t)
> +{
> +	if (!t->init_done || !t->is_set)
> +		return -EINVAL;
> +
> +	hrtimer_cancel(&t->hrt);
> +	t->is_set = false;
> +
> +	return 0;
> +}
> +
> +int kvm_riscv_vcpu_timer_next_event(struct kvm_vcpu *vcpu,
> +				    unsigned long ncycles)
> +{
> +	struct kvm_vcpu_timer *t = &vcpu->arch.timer;
> +	u64 delta_ns = kvm_riscv_delta_cycles2ns(ncycles, t);

... in fact, I feel like I'm missing something obvious here. How does 
the guest trigger the timer event? What is the argument it uses for that 
and how does that play with the tbfreq in the earlier patch?


Alex


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
