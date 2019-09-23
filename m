Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4321CBAE43
	for <lists+linux-riscv@lfdr.de>; Mon, 23 Sep 2019 09:02:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=cZC4HeAta71Jdjxa51Qu0yr++Y3Lns/u1vZEsOKTdTc=; b=AB3s1AOCdAe3Dk37tZEQkTCcF
	ddWtwzGM3o0aP3S7Ka/NCMJSqG6sr3j1vNErmPjHIHFXqIrshQPs0pKFu6AtXQCP76SiI3RREXXv4
	Rx5hhvPwexMeHHwpUY0WQNlLtqzH8RHelaKnVw7Kl0/pECQ9gFqWEo6GdPtlyqAt5kHsAttCPqPj/
	lP3T8G8VvtYkB/HaCPSfE5ilC3s4Gp7UdpExzZ5ERv8M0MaWpHNOocZh5RVc2GyEUz+Sm+Tmu0nDY
	aYdog6qGWrV8fYYDqj3Hf9eF1IAU7HJpi0lsTmdGB0cYfYBoRJ8xvY6Gse/Db/2/iTW3amP6p/lt0
	BBf3AO5lg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCIMe-0006pp-Th; Mon, 23 Sep 2019 07:02:30 +0000
Received: from smtp-fw-4101.amazon.com ([72.21.198.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCIM5-0006oN-7H
 for linux-riscv@lists.infradead.org; Mon, 23 Sep 2019 07:01:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
 t=1569222113; x=1600758113;
 h=subject:to:cc:references:from:message-id:date:
 mime-version:in-reply-to:content-transfer-encoding;
 bh=lxoGkydS2xlQnZCbAG1BhC8FukhUIw2MKznZ0p4xXWc=;
 b=KqB8MWwcXDU/OH946nrn7yDVbAJ8UO5rnCYb3kz0J4KcRL0EneRq7dCh
 aQS5liKrxaaLoSCI8KDqM41gotQ5NYHvfcTFhffG4SEk4p99f8unFpIeQ
 1W6w7RMMPvLWWmiEaiNkRIL0vjheSK04xZOoPZEELZbgXY5k0P5uIj/Ab M=;
X-IronPort-AV: E=Sophos;i="5.64,539,1559520000"; d="scan'208";a="786630338"
Received: from iad6-co-svc-p1-lb1-vlan3.amazon.com (HELO
 email-inbound-relay-2b-5bdc5131.us-west-2.amazon.com) ([10.124.125.6])
 by smtp-border-fw-out-4101.iad4.amazon.com with ESMTP;
 23 Sep 2019 07:01:49 +0000
Received: from EX13MTAUWC001.ant.amazon.com
 (pdx4-ws-svc-p6-lb7-vlan3.pdx.amazon.com [10.170.41.166])
 by email-inbound-relay-2b-5bdc5131.us-west-2.amazon.com (Postfix) with ESMTPS
 id B7EE7A1C97; Mon, 23 Sep 2019 07:01:44 +0000 (UTC)
Received: from EX13D20UWC001.ant.amazon.com (10.43.162.244) by
 EX13MTAUWC001.ant.amazon.com (10.43.162.135) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Mon, 23 Sep 2019 07:01:43 +0000
Received: from 38f9d3867b82.ant.amazon.com (10.43.160.5) by
 EX13D20UWC001.ant.amazon.com (10.43.162.244) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Mon, 23 Sep 2019 07:01:39 +0000
Subject: Re: [PATCH v7 18/21] RISC-V: KVM: Add SBI v0.1 support
To: Anup Patel <Anup.Patel@wdc.com>, Palmer Dabbelt <palmer@sifive.com>, "Paul
 Walmsley" <paul.walmsley@sifive.com>, Paolo Bonzini <pbonzini@redhat.com>, 
 Radim K <rkrcmar@redhat.com>
References: <20190904161245.111924-1-anup.patel@wdc.com>
 <20190904161245.111924-20-anup.patel@wdc.com>
From: Alexander Graf <graf@amazon.com>
Message-ID: <d144652e-898b-bf6b-dc73-352fb1fffd40@amazon.com>
Date: Mon, 23 Sep 2019 09:01:36 +0200
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20190904161245.111924-20-anup.patel@wdc.com>
Content-Language: en-US
X-Originating-IP: [10.43.160.5]
X-ClientProxiedBy: EX13D27UWA002.ant.amazon.com (10.43.160.30) To
 EX13D20UWC001.ant.amazon.com (10.43.162.244)
Precedence: Bulk
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_000153_574803_C952635B 
X-CRM114-Status: GOOD (  21.99  )
X-Spam-Score: -4.9 (----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-4.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [72.21.198.25 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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



On 04.09.19 18:16, Anup Patel wrote:
> From: Atish Patra <atish.patra@wdc.com>
> 
> The KVM host kernel running in HS-mode needs to handle SBI calls coming
> from guest kernel running in VS-mode.
> 
> This patch adds SBI v0.1 support in KVM RISC-V. All the SBI calls are
> implemented correctly except remote tlb flushes. For remote TLB flushes,
> we are doing full TLB flush and this will be optimized in future.
> 
> Signed-off-by: Atish Patra <atish.patra@wdc.com>
> Signed-off-by: Anup Patel <anup.patel@wdc.com>
> Acked-by: Paolo Bonzini <pbonzini@redhat.com>
> Reviewed-by: Paolo Bonzini <pbonzini@redhat.com>
> ---
>   arch/riscv/include/asm/kvm_host.h |   2 +
>   arch/riscv/kvm/Makefile           |   2 +-
>   arch/riscv/kvm/vcpu_exit.c        |   3 +
>   arch/riscv/kvm/vcpu_sbi.c         | 104 ++++++++++++++++++++++++++++++
>   4 files changed, 110 insertions(+), 1 deletion(-)
>   create mode 100644 arch/riscv/kvm/vcpu_sbi.c
> 
> diff --git a/arch/riscv/include/asm/kvm_host.h b/arch/riscv/include/asm/kvm_host.h
> index 928c67828b1b..269bfa5641b1 100644
> --- a/arch/riscv/include/asm/kvm_host.h
> +++ b/arch/riscv/include/asm/kvm_host.h
> @@ -250,4 +250,6 @@ bool kvm_riscv_vcpu_has_interrupt(struct kvm_vcpu *vcpu);
>   void kvm_riscv_vcpu_power_off(struct kvm_vcpu *vcpu);
>   void kvm_riscv_vcpu_power_on(struct kvm_vcpu *vcpu);
>   
> +int kvm_riscv_vcpu_sbi_ecall(struct kvm_vcpu *vcpu);
> +
>   #endif /* __RISCV_KVM_HOST_H__ */
> diff --git a/arch/riscv/kvm/Makefile b/arch/riscv/kvm/Makefile
> index 3e0c7558320d..b56dc1650d2c 100644
> --- a/arch/riscv/kvm/Makefile
> +++ b/arch/riscv/kvm/Makefile
> @@ -9,6 +9,6 @@ ccflags-y := -Ivirt/kvm -Iarch/riscv/kvm
>   kvm-objs := $(common-objs-y)
>   
>   kvm-objs += main.o vm.o vmid.o tlb.o mmu.o
> -kvm-objs += vcpu.o vcpu_exit.o vcpu_switch.o vcpu_timer.o
> +kvm-objs += vcpu.o vcpu_exit.o vcpu_switch.o vcpu_timer.o vcpu_sbi.o
>   
>   obj-$(CONFIG_KVM)	+= kvm.o
> diff --git a/arch/riscv/kvm/vcpu_exit.c b/arch/riscv/kvm/vcpu_exit.c
> index 39469f67b241..0ee4e8943f4f 100644
> --- a/arch/riscv/kvm/vcpu_exit.c
> +++ b/arch/riscv/kvm/vcpu_exit.c
> @@ -594,6 +594,9 @@ int kvm_riscv_vcpu_exit(struct kvm_vcpu *vcpu, struct kvm_run *run,
>   		    (vcpu->arch.guest_context.hstatus & HSTATUS_STL))
>   			ret = stage2_page_fault(vcpu, run, scause, stval);
>   		break;
> +	case EXC_SUPERVISOR_SYSCALL:
> +		if (vcpu->arch.guest_context.hstatus & HSTATUS_SPV)
> +			ret = kvm_riscv_vcpu_sbi_ecall(vcpu);

implicit fall-through

>   	default:
>   		break;
>   	};
> diff --git a/arch/riscv/kvm/vcpu_sbi.c b/arch/riscv/kvm/vcpu_sbi.c
> new file mode 100644
> index 000000000000..b415b8b54bb1
> --- /dev/null
> +++ b/arch/riscv/kvm/vcpu_sbi.c
> @@ -0,0 +1,104 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/**
> + * Copyright (c) 2019 Western Digital Corporation or its affiliates.
> + *
> + * Authors:
> + *     Atish Patra <atish.patra@wdc.com>
> + */
> +
> +#include <linux/errno.h>
> +#include <linux/err.h>
> +#include <linux/kvm_host.h>
> +#include <asm/csr.h>
> +#include <asm/kvm_vcpu_timer.h>
> +
> +#define SBI_VERSION_MAJOR			0
> +#define SBI_VERSION_MINOR			1
> +
> +static void kvm_sbi_system_shutdown(struct kvm_vcpu *vcpu, u32 type)
> +{
> +	int i;
> +	struct kvm_vcpu *tmp;
> +
> +	kvm_for_each_vcpu(i, tmp, vcpu->kvm)
> +		tmp->arch.power_off = true;
> +	kvm_make_all_cpus_request(vcpu->kvm, KVM_REQ_SLEEP);
> +
> +	memset(&vcpu->run->system_event, 0, sizeof(vcpu->run->system_event));
> +	vcpu->run->system_event.type = type;
> +	vcpu->run->exit_reason = KVM_EXIT_SYSTEM_EVENT;

Is there a particular reason this has to be implemented in kernel space? 
It's not performance critical and all stopping vcpus is something user 
space should be able to do as well, no?

> +}
> +
> +int kvm_riscv_vcpu_sbi_ecall(struct kvm_vcpu *vcpu)
> +{
> +	int i, ret = 1;
> +	u64 next_cycle;
> +	struct kvm_vcpu *rvcpu;
> +	bool next_sepc = true;
> +	ulong hmask, ut_scause = 0;
> +	struct kvm_cpu_context *cp = &vcpu->arch.guest_context;
> +
> +	if (!cp)
> +		return -EINVAL;
> +
> +	switch (cp->a7) {
> +	case SBI_SET_TIMER:
> +#if __riscv_xlen == 32
> +		next_cycle = ((u64)cp->a1 << 32) | (u64)cp->a0;
> +#else
> +		next_cycle = (u64)cp->a0;
> +#endif
> +		kvm_riscv_vcpu_timer_next_event(vcpu, next_cycle);
> +		break;
> +	case SBI_CLEAR_IPI:
> +		kvm_riscv_vcpu_unset_interrupt(vcpu, IRQ_S_SOFT);
> +		break;
> +	case SBI_SEND_IPI:
> +		hmask = kvm_riscv_vcpu_unpriv_read(vcpu, false, cp->a0,
> +						   &ut_scause);
> +		if (ut_scause) {
> +			kvm_riscv_vcpu_trap_redirect(vcpu, ut_scause,
> +						     cp->a0);
> +			next_sepc = false;
> +		} else {
> +			for_each_set_bit(i, &hmask, BITS_PER_LONG) {
> +				rvcpu = kvm_get_vcpu_by_id(vcpu->kvm, i);
> +				kvm_riscv_vcpu_set_interrupt(rvcpu, IRQ_S_SOFT);
> +			}
> +		}
> +		break;
> +	case SBI_SHUTDOWN:
> +		kvm_sbi_system_shutdown(vcpu, KVM_SYSTEM_EVENT_SHUTDOWN);
> +		ret = 0;
> +		break;
> +	case SBI_REMOTE_FENCE_I:
> +		sbi_remote_fence_i(NULL);
> +		break;
> +	/*
> +	 * TODO: There should be a way to call remote hfence.bvma.
> +	 * Preferred method is now a SBI call. Until then, just flush
> +	 * all tlbs.
> +	 */
> +	case SBI_REMOTE_SFENCE_VMA:
> +		/* TODO: Parse vma range. */
> +		sbi_remote_sfence_vma(NULL, 0, 0);
> +		break;
> +	case SBI_REMOTE_SFENCE_VMA_ASID:
> +		/* TODO: Parse vma range for given ASID */
> +		sbi_remote_sfence_vma(NULL, 0, 0);
> +		break;
> +	default:
> +		/*
> +		 * For now, just return error to Guest.
> +		 * TODO: In-future, we will route unsupported SBI calls
> +		 * to user-space.
> +		 */
> +		cp->a0 = -ENOTSUPP;
> +		break;
> +	};
> +
> +	if (ret >= 0)
> +		cp->sepc += 4;

I don't see you ever setting ret except for shutdown?

Really, now is the time to plumb SBI calls down to user space. It allows 
you to have a clean shutdown story from day 1.


Alex



Amazon Development Center Germany GmbH
Krausenstr. 38
10117 Berlin
Geschaeftsfuehrung: Christian Schlaeger, Ralf Herbrich
Eingetragen am Amtsgericht Charlottenburg unter HRB 149173 B
Sitz: Berlin
Ust-ID: DE 289 237 879


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
