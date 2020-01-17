Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF7EA140455
	for <lists+linux-riscv@lfdr.de>; Fri, 17 Jan 2020 08:11:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ZLepqW8dLmltYvdXrbA9+W1/VBG23QMwPgItTpaSVW8=; b=Ll4MQHQWrPhH48ZpwjXF1wHFe
	4pN4E1mGoVTvW9XKlptVzNCBLwg6M/d10qrgJIY/f+lOAdQx2NzTArpZKHcmSa8eR+3jkof/rwIOU
	CPpaeqIgo9+bsz5hc+6c/e9ASUMk70SB1zqYR4fIhrERbr8tYK3H0ii0vyIh97F+uPrQVUHyKazDp
	p6QETEJ45zlZwea1bGy7yaXvdYm+L+xG2DZdrXUyHunrAGb7IHxYmi0WYu9fPaCexRi/mT7xEh+zg
	d+hQjfvybupRv3fy81eeSABEsECQCITvw5LBpC9Y5LZykSTGD/2cqN9Pfgp1S21311i6RikQJloKI
	vgeY6xcIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isLmx-00044D-3I; Fri, 17 Jan 2020 07:11:27 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isLmr-000431-E7
 for linux-riscv@lists.infradead.org; Fri, 17 Jan 2020 07:11:25 +0000
Received: by mail-wr1-x441.google.com with SMTP id w15so21626306wru.4
 for <linux-riscv@lists.infradead.org>; Thu, 16 Jan 2020 23:11:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ZLepqW8dLmltYvdXrbA9+W1/VBG23QMwPgItTpaSVW8=;
 b=J0fud2LPJZe6GGCfiCeAyoembRlo2aFEwdSxY4ESy/vJeZIiInR00inKL1acJDVr/q
 tiKq/yRiBF7i72vwgq3HtuD8W3CXGfY5rqT05ZdDTFUC6a+LS34oooIOwf/nukaNzLP4
 Y/DEFEA3wZADVuMyoKeas3Kjqd1RnE21itUthIuUPnr8w+lHlUqz7N3YXihmu4JihiBx
 p8wFBkqGC0yYs7V+aoNsx80Z+fn/5DuVYsqP2cYj9sBOl795/Tt3+2IT8tGumXvHTokl
 dRmELyp0RadYIbXl4NVMsizUXnussyjV9yxhznJPW7H+m50D3Wn3cLgwIq/7aMwfzMQ6
 xqiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ZLepqW8dLmltYvdXrbA9+W1/VBG23QMwPgItTpaSVW8=;
 b=i2NXGV5GIvwHx4EXkIBY/77+za/7Jb4Lz0ZHn7oSQWUPnA/c2f4kTHZidbAn6+brf8
 Vk4ZkDYZGTjMYADBLK9vXeDchcmGu7MZ79uJ8yDqPT6MRVDXLFk3EDHKfl7VsiO6ZixP
 hJlSlKKLk7LFlDNg47ShVjy6UPRAAJI8EqoYmyW5J7/uAhGWSl86bc7GXJ1VhIPa+Ij5
 WZFMILwJY0cVxEKJWncNv5rg/pOUyalBF/UcNIqKF7JIi1vYGiCu3PEowETPvZRH2sVK
 5m+MVhefMTNej5ulRG7jvB9xXY0lXtCMkJXIVvppRwRK9GPVF73qyhQX64mbXNs2BLUE
 Kbsg==
X-Gm-Message-State: APjAAAVJJkO0srI1sZWbIjhXkgJaFmlBIuWudoTURT0UOKDRCPvsbYBB
 jQ0IVdzAraY/bKllWuUAwQmFscOVlxdcpP/xFdgOZA==
X-Google-Smtp-Source: APXvYqy1pVjIOBXiFg1bGo2txgn61oPNKSPz1K5so3vyThHakz17TFDqWEhtXVipmfr1pVkspiQTBQXxs8f6ilNQtQA=
X-Received: by 2002:adf:eb09:: with SMTP id s9mr1462373wrn.61.1579245079471;
 Thu, 16 Jan 2020 23:11:19 -0800 (PST)
MIME-Version: 1.0
References: <20191223113443.68969-1-anup.patel@wdc.com>
 <20191223113443.68969-5-anup.patel@wdc.com>
 <mhng-a8f4479e-52c7-4291-9683-a75f81905903@palmerdabbelt-glaptop>
In-Reply-To: <mhng-a8f4479e-52c7-4291-9683-a75f81905903@palmerdabbelt-glaptop>
From: Anup Patel <anup@brainfault.org>
Date: Fri, 17 Jan 2020 12:41:07 +0530
Message-ID: <CAAhSdy3WLUTYN8gNxOpgx+Jh+ShPD2yAdgOngeb=4poFJ+3Cxw@mail.gmail.com>
Subject: Re: [PATCH v10 04/19] RISC-V: Add initial skeletal KVM support
To: Palmer Dabbelt <palmerdabbelt@google.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_231121_491564_670A6FB4 
X-CRM114-Status: GOOD (  27.57  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Alistair Francis <Alistair.Francis@wdc.com>,
 Albert Ou <aou@eecs.berkeley.edu>, KVM General <kvm@vger.kernel.org>,
 Radim K <rkrcmar@redhat.com>, Anup Patel <Anup.Patel@wdc.com>,
 Damien Le Moal <Damien.LeMoal@wdc.com>,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 Atish Patra <Atish.Patra@wdc.com>, Alexander Graf <graf@amazon.com>,
 kvm-riscv@lists.infradead.org, Paul Walmsley <paul.walmsley@sifive.com>,
 Paolo Bonzini <pbonzini@redhat.com>,
 linux-riscv <linux-riscv@lists.infradead.org>, Christoph Hellwig <hch@lst.de>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, Jan 17, 2020 at 5:07 AM Palmer Dabbelt <palmerdabbelt@google.com> wrote:
>
> On Mon, 23 Dec 2019 03:35:46 PST (-0800), Anup Patel wrote:
> > This patch adds initial skeletal KVM RISC-V support which has:
> > 1. A simple implementation of arch specific VM functions
> >    except kvm_vm_ioctl_get_dirty_log() which will implemeted
> >    in-future as part of stage2 page loging.
> > 2. Stubs of required arch specific VCPU functions except
> >    kvm_arch_vcpu_ioctl_run() which is semi-complete and
> >    extended by subsequent patches.
> > 3. Stubs for required arch specific stage2 MMU functions.
> >
> > Signed-off-by: Anup Patel <anup.patel@wdc.com>
> > Acked-by: Paolo Bonzini <pbonzini@redhat.com>
> > Reviewed-by: Paolo Bonzini <pbonzini@redhat.com>
> > Reviewed-by: Alexander Graf <graf@amazon.com>
> > ---
> >  arch/riscv/Kconfig                |   2 +
> >  arch/riscv/Makefile               |   2 +
> >  arch/riscv/include/asm/kvm_host.h |  82 ++++++++
> >  arch/riscv/include/uapi/asm/kvm.h |  47 +++++
> >  arch/riscv/kvm/Kconfig            |  33 ++++
> >  arch/riscv/kvm/Makefile           |  13 ++
> >  arch/riscv/kvm/main.c             |  93 +++++++++
> >  arch/riscv/kvm/mmu.c              |  83 ++++++++
> >  arch/riscv/kvm/vcpu.c             | 316 ++++++++++++++++++++++++++++++
> >  arch/riscv/kvm/vcpu_exit.c        |  36 ++++
> >  arch/riscv/kvm/vm.c               |  79 ++++++++
> >  11 files changed, 786 insertions(+)
> >  create mode 100644 arch/riscv/include/asm/kvm_host.h
> >  create mode 100644 arch/riscv/include/uapi/asm/kvm.h
> >  create mode 100644 arch/riscv/kvm/Kconfig
> >  create mode 100644 arch/riscv/kvm/Makefile
> >  create mode 100644 arch/riscv/kvm/main.c
> >  create mode 100644 arch/riscv/kvm/mmu.c
> >  create mode 100644 arch/riscv/kvm/vcpu.c
> >  create mode 100644 arch/riscv/kvm/vcpu_exit.c
> >  create mode 100644 arch/riscv/kvm/vm.c
> >
> > diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
> > index baf0943c80d0..2e8551a9cd32 100644
> > --- a/arch/riscv/Kconfig
> > +++ b/arch/riscv/Kconfig
> > @@ -366,3 +366,5 @@ menu "Power management options"
> >  source "kernel/power/Kconfig"
> >
> >  endmenu
> > +
> > +source "arch/riscv/kvm/Kconfig"
> > diff --git a/arch/riscv/Makefile b/arch/riscv/Makefile
> > index b9009a2fbaf5..65b58cec9abd 100644
> > --- a/arch/riscv/Makefile
> > +++ b/arch/riscv/Makefile
> > @@ -77,6 +77,8 @@ head-y := arch/riscv/kernel/head.o
> >
> >  core-y += arch/riscv/
> >
> > +core-$(CONFIG_KVM) += arch/riscv/kvm/
> > +
> >  libs-y += arch/riscv/lib/
> >
> >  PHONY += vdso_install
> > diff --git a/arch/riscv/include/asm/kvm_host.h b/arch/riscv/include/asm/kvm_host.h
> > new file mode 100644
> > index 000000000000..e0b633f616a4
> > --- /dev/null
> > +++ b/arch/riscv/include/asm/kvm_host.h
> > @@ -0,0 +1,82 @@
> > +/* SPDX-License-Identifier: GPL-2.0-only */
> > +/*
> > + * Copyright (C) 2019 Western Digital Corporation or its affiliates.
> > + *
> > + * Authors:
> > + *     Anup Patel <anup.patel@wdc.com>
> > + */
> > +
> > +#ifndef __RISCV_KVM_HOST_H__
> > +#define __RISCV_KVM_HOST_H__
> > +
> > +#include <linux/types.h>
> > +#include <linux/kvm.h>
> > +#include <linux/kvm_types.h>
> > +
> > +#ifdef CONFIG_64BIT
> > +#define KVM_MAX_VCPUS                        (1U << 16)
> > +#else
> > +#define KVM_MAX_VCPUS                        (1U << 9)
> > +#endif
> > +
> > +#define KVM_USER_MEM_SLOTS           512
> > +#define KVM_HALT_POLL_NS_DEFAULT     500000
> > +
> > +#define KVM_VCPU_MAX_FEATURES                0
> > +
> > +#define KVM_REQ_SLEEP \
> > +     KVM_ARCH_REQ_FLAGS(0, KVM_REQUEST_WAIT | KVM_REQUEST_NO_WAKEUP)
> > +#define KVM_REQ_VCPU_RESET           KVM_ARCH_REQ(1)
> > +
> > +struct kvm_vm_stat {
> > +     ulong remote_tlb_flush;
> > +};
> > +
> > +struct kvm_vcpu_stat {
> > +     u64 halt_successful_poll;
> > +     u64 halt_attempted_poll;
> > +     u64 halt_poll_invalid;
> > +     u64 halt_wakeup;
> > +     u64 ecall_exit_stat;
> > +     u64 wfi_exit_stat;
> > +     u64 mmio_exit_user;
> > +     u64 mmio_exit_kernel;
> > +     u64 exits;
> > +};
>
> Presumably at least this came from arm64, as it's exactly the same.  If that's
> the case then this file, and probably a bunch of others, should be attributed
> somehow.  IIRC we left the copyrights in our copied files and it looks like
> arch/arm64 has done the same:

The KVM/riscv port was created after studying KVM/x86, KVM/arm64, and
KVM/mips. It is not based on KVM/arm64 port.

The struct kvm_vcpu_stat looks similar to arm64 kvm_host.h because we
implement the same set of VCPU stats. If you look at subsequent patches
then you will realize that riscv/include/asm/kvm_host.h is very specific to
RISC-V and very different from arm64/include/asm/kvm_host.h.

Further, a lot of members in struct kvm_vcpu_stat are expected by the
core KVM at virt/kvm/kvm_main.c hence you will see these members in
kvm_host.h for all architectures.

>
>     $ head -n10 arch/arm64/include/asm/kvm_host.h
>     /* SPDX-License-Identifier: GPL-2.0-only */
>     /*
>      * Copyright (C) 2012,2013 - ARM Ltd
>      * Author: Marc Zyngier <marc.zyngier@arm.com>
>      *
>      * Derived from arch/arm/include/asm/kvm_host.h:
>      * Copyright (C) 2012 - Virtual Open Systems and Columbia University
>      * Author: Christoffer Dall <c.dall@virtualopensystems.com>
>      */

Based on the above rationale, I think we don't require need this
copyright notice.

The KVM/arm64 kvm_host.h has above notice because:
1. KVM/arm64 actually shares a lot of code with KVM/arm under
   virt/kvm/arm directory
2. Initial KVM/arm64 port was actaully based on KVM/arm port.

>
> > +
> > +struct kvm_arch_memory_slot {
> > +};
> > +
> > +struct kvm_arch {
> > +     /* stage2 page table */
> > +     pgd_t *pgd;
> > +     phys_addr_t pgd_phys;
> > +};
> > +
> > +struct kvm_vcpu_arch {
> > +     /* Don't run the VCPU (blocked) */
> > +     bool pause;
> > +
> > +     /* SRCU lock index for in-kernel run loop */
> > +     int srcu_idx;
> > +};
> > +
> > +static inline void kvm_arch_hardware_unsetup(void) {}
> > +static inline void kvm_arch_sync_events(struct kvm *kvm) {}
> > +static inline void kvm_arch_vcpu_uninit(struct kvm_vcpu *vcpu) {}
> > +static inline void kvm_arch_sched_in(struct kvm_vcpu *vcpu, int cpu) {}
> > +static inline void kvm_arch_vcpu_block_finish(struct kvm_vcpu *vcpu) {}
> > +
> > +void kvm_riscv_stage2_flush_cache(struct kvm_vcpu *vcpu);
> > +int kvm_riscv_stage2_alloc_pgd(struct kvm *kvm);
> > +void kvm_riscv_stage2_free_pgd(struct kvm *kvm);
> > +void kvm_riscv_stage2_update_hgatp(struct kvm_vcpu *vcpu);
> > +
> > +int kvm_riscv_vcpu_mmio_return(struct kvm_vcpu *vcpu, struct kvm_run *run);
> > +int kvm_riscv_vcpu_exit(struct kvm_vcpu *vcpu, struct kvm_run *run,
> > +                     unsigned long scause, unsigned long stval,
> > +                     unsigned long htval, unsigned long htinst);
> > +
> > +static inline void __kvm_riscv_switch_to(struct kvm_vcpu_arch *vcpu_arch) {}
> > +
> > +#endif /* __RISCV_KVM_HOST_H__ */
> > diff --git a/arch/riscv/include/uapi/asm/kvm.h b/arch/riscv/include/uapi/asm/kvm.h
> > new file mode 100644
> > index 000000000000..d15875818b6e
> > --- /dev/null
> > +++ b/arch/riscv/include/uapi/asm/kvm.h
> > @@ -0,0 +1,47 @@
> > +/* SPDX-License-Identifier: GPL-2.0 */
> > +/*
> > + * Copyright (C) 2019 Western Digital Corporation or its affiliates.
> > + *
> > + * Authors:
> > + *     Anup Patel <anup.patel@wdc.com>
> > + */
> > +
> > +#ifndef __LINUX_KVM_RISCV_H
> > +#define __LINUX_KVM_RISCV_H
> > +
> > +#ifndef __ASSEMBLY__
> > +
> > +#include <linux/types.h>
> > +#include <asm/ptrace.h>
> > +
> > +#define __KVM_HAVE_READONLY_MEM
> > +
> > +#define KVM_COALESCED_MMIO_PAGE_OFFSET 1
> > +
> > +/* for KVM_GET_REGS and KVM_SET_REGS */
> > +struct kvm_regs {
> > +};
> > +
> > +/* for KVM_GET_FPU and KVM_SET_FPU */
> > +struct kvm_fpu {
> > +};
> > +
> > +/* KVM Debug exit structure */
> > +struct kvm_debug_exit_arch {
> > +};
> > +
> > +/* for KVM_SET_GUEST_DEBUG */
> > +struct kvm_guest_debug_arch {
> > +};
> > +
> > +/* definition of registers in kvm_run */
> > +struct kvm_sync_regs {
> > +};
> > +
> > +/* dummy definition */
> > +struct kvm_sregs {
> > +};
> > +
> > +#endif
> > +
> > +#endif /* __LINUX_KVM_RISCV_H */
> > diff --git a/arch/riscv/kvm/Kconfig b/arch/riscv/kvm/Kconfig
> > new file mode 100644
> > index 000000000000..88edd477b3a8
> > --- /dev/null
> > +++ b/arch/riscv/kvm/Kconfig
> > @@ -0,0 +1,33 @@
> > +# SPDX-License-Identifier: GPL-2.0
> > +#
> > +# KVM configuration
> > +#
> > +
> > +source "virt/kvm/Kconfig"
> > +
> > +menuconfig VIRTUALIZATION
> > +     bool "Virtualization"
> > +     help
> > +       Say Y here to get to see options for using your Linux host to run
> > +       other operating systems inside virtual machines (guests).
> > +       This option alone does not add any kernel code.
> > +
> > +       If you say N, all options in this submenu will be skipped and
> > +       disabled.
> > +
> > +if VIRTUALIZATION
> > +
> > +config KVM
> > +     tristate "Kernel-based Virtual Machine (KVM) support (EXPERIMENTAL)"
> > +     depends on RISCV_SBI && MMU
> > +     select PREEMPT_NOTIFIERS
> > +     select ANON_INODES
> > +     select KVM_MMIO
> > +     select HAVE_KVM_VCPU_ASYNC_IOCTL
> > +     select SRCU
> > +     help
> > +       Support hosting virtualized guest machines.
> > +
> > +       If unsure, say N.
> > +
> > +endif # VIRTUALIZATION
> > diff --git a/arch/riscv/kvm/Makefile b/arch/riscv/kvm/Makefile
> > new file mode 100644
> > index 000000000000..37b5a59d4f4f
> > --- /dev/null
> > +++ b/arch/riscv/kvm/Makefile
> > @@ -0,0 +1,13 @@
> > +# SPDX-License-Identifier: GPL-2.0
> > +# Makefile for RISC-V KVM support
> > +#
> > +
> > +common-objs-y = $(addprefix ../../../virt/kvm/, kvm_main.o coalesced_mmio.o)
> > +
> > +ccflags-y := -Ivirt/kvm -Iarch/riscv/kvm
> > +
> > +kvm-objs := $(common-objs-y)
> > +
> > +kvm-objs += main.o vm.o mmu.o vcpu.o vcpu_exit.o
> > +
> > +obj-$(CONFIG_KVM)    += kvm.o
> > diff --git a/arch/riscv/kvm/main.c b/arch/riscv/kvm/main.c
> > new file mode 100644
> > index 000000000000..f29768c82fbe
> > --- /dev/null
> > +++ b/arch/riscv/kvm/main.c
> > @@ -0,0 +1,93 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +/*
> > + * Copyright (C) 2019 Western Digital Corporation or its affiliates.
> > + *
> > + * Authors:
> > + *     Anup Patel <anup.patel@wdc.com>
> > + */
> > +
> > +#include <linux/errno.h>
> > +#include <linux/err.h>
> > +#include <linux/module.h>
> > +#include <linux/kvm_host.h>
> > +#include <asm/csr.h>
> > +#include <asm/hwcap.h>
> > +#include <asm/sbi.h>
> > +
> > +long kvm_arch_dev_ioctl(struct file *filp,
> > +                     unsigned int ioctl, unsigned long arg)
> > +{
> > +     return -EINVAL;
> > +}
> > +
> > +int kvm_arch_check_processor_compat(void)
> > +{
> > +     return 0;
> > +}
> > +
> > +int kvm_arch_hardware_setup(void)
> > +{
> > +     return 0;
> > +}
> > +
> > +int kvm_arch_hardware_enable(void)
> > +{
> > +     unsigned long hideleg, hedeleg;
> > +
> > +     hedeleg = 0;
> > +     hedeleg |= (1UL << EXC_INST_MISALIGNED);
> > +     hedeleg |= (1UL << EXC_BREAKPOINT);
> > +     hedeleg |= (1UL << EXC_SYSCALL);
> > +     hedeleg |= (1UL << EXC_INST_PAGE_FAULT);
> > +     hedeleg |= (1UL << EXC_LOAD_PAGE_FAULT);
> > +     hedeleg |= (1UL << EXC_STORE_PAGE_FAULT);
> > +     csr_write(CSR_HEDELEG, hedeleg);
> > +
> > +     hideleg = 0;
> > +     hideleg |= (1UL << IRQ_S_SOFT);
> > +     hideleg |= (1UL << IRQ_S_TIMER);
> > +     hideleg |= (1UL << IRQ_S_EXT);
> > +     csr_write(CSR_HIDELEG, hideleg);
> > +
> > +     csr_write(CSR_HIP, 0);
> > +
> > +     return 0;
> > +}
> > +
> > +void kvm_arch_hardware_disable(void)
> > +{
> > +     csr_write(CSR_HEDELEG, 0);
> > +     csr_write(CSR_HIDELEG, 0);
> > +}
> > +
> > +int kvm_arch_init(void *opaque)
> > +{
> > +     if (!riscv_isa_extension_available(NULL, h)) {
> > +             kvm_info("hypervisor extension not available\n");
> > +             return -ENODEV;
> > +     }
> > +
> > +     if (sbi_spec_is_0_1()) {
> > +             kvm_info("require SBI v0.2 or higher\n");
> > +             return -ENODEV;
> > +     }
> > +
> > +     if (sbi_probe_extension(SBI_EXT_RFENCE) <= 0) {
> > +             kvm_info("require SBI RFENCE extension\n");
> > +             return -ENODEV;
> > +     }
> > +
> > +     kvm_info("hypervisor extension available\n");
> > +
> > +     return 0;
> > +}
> > +
> > +void kvm_arch_exit(void)
> > +{
> > +}
> > +
> > +static int riscv_kvm_init(void)
> > +{
> > +     return kvm_init(NULL, sizeof(struct kvm_vcpu), 0, THIS_MODULE);
> > +}
> > +module_init(riscv_kvm_init);
> > diff --git a/arch/riscv/kvm/mmu.c b/arch/riscv/kvm/mmu.c
> > new file mode 100644
> > index 000000000000..04dd089b86ff
> > --- /dev/null
> > +++ b/arch/riscv/kvm/mmu.c
> > @@ -0,0 +1,83 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +/*
> > + * Copyright (C) 2019 Western Digital Corporation or its affiliates.
> > + *
> > + * Authors:
> > + *     Anup Patel <anup.patel@wdc.com>
> > + */
> > +
> > +#include <linux/bitops.h>
> > +#include <linux/errno.h>
> > +#include <linux/err.h>
> > +#include <linux/hugetlb.h>
> > +#include <linux/module.h>
> > +#include <linux/uaccess.h>
> > +#include <linux/vmalloc.h>
> > +#include <linux/kvm_host.h>
> > +#include <linux/sched/signal.h>
> > +#include <asm/page.h>
> > +#include <asm/pgtable.h>
> > +
> > +void kvm_arch_free_memslot(struct kvm *kvm, struct kvm_memory_slot *free,
> > +                        struct kvm_memory_slot *dont)
> > +{
> > +}
> > +
> > +int kvm_arch_create_memslot(struct kvm *kvm, struct kvm_memory_slot *slot,
> > +                         unsigned long npages)
> > +{
> > +     return 0;
> > +}
> > +
> > +void kvm_arch_memslots_updated(struct kvm *kvm, u64 gen)
> > +{
> > +}
> > +
> > +void kvm_arch_flush_shadow_all(struct kvm *kvm)
> > +{
> > +     /* TODO: */
> > +}
> > +
> > +void kvm_arch_flush_shadow_memslot(struct kvm *kvm,
> > +                                struct kvm_memory_slot *slot)
> > +{
> > +}
> > +
> > +void kvm_arch_commit_memory_region(struct kvm *kvm,
> > +                             const struct kvm_userspace_memory_region *mem,
> > +                             const struct kvm_memory_slot *old,
> > +                             const struct kvm_memory_slot *new,
> > +                             enum kvm_mr_change change)
> > +{
> > +     /* TODO: */
> > +}
> > +
> > +int kvm_arch_prepare_memory_region(struct kvm *kvm,
> > +                             struct kvm_memory_slot *memslot,
> > +                             const struct kvm_userspace_memory_region *mem,
> > +                             enum kvm_mr_change change)
> > +{
> > +     /* TODO: */
> > +     return 0;
> > +}
> > +
> > +void kvm_riscv_stage2_flush_cache(struct kvm_vcpu *vcpu)
> > +{
> > +     /* TODO: */
> > +}
> > +
> > +int kvm_riscv_stage2_alloc_pgd(struct kvm *kvm)
> > +{
> > +     /* TODO: */
> > +     return 0;
> > +}
> > +
> > +void kvm_riscv_stage2_free_pgd(struct kvm *kvm)
> > +{
> > +     /* TODO: */
> > +}
> > +
> > +void kvm_riscv_stage2_update_hgatp(struct kvm_vcpu *vcpu)
> > +{
> > +     /* TODO: */
> > +}
> > diff --git a/arch/riscv/kvm/vcpu.c b/arch/riscv/kvm/vcpu.c
> > new file mode 100644
> > index 000000000000..bd7d6b154f61
> > --- /dev/null
> > +++ b/arch/riscv/kvm/vcpu.c
> > @@ -0,0 +1,316 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +/*
> > + * Copyright (C) 2019 Western Digital Corporation or its affiliates.
> > + *
> > + * Authors:
> > + *     Anup Patel <anup.patel@wdc.com>
> > + */
> > +
> > +#include <linux/bitops.h>
> > +#include <linux/errno.h>
> > +#include <linux/err.h>
> > +#include <linux/kdebug.h>
> > +#include <linux/module.h>
> > +#include <linux/uaccess.h>
> > +#include <linux/vmalloc.h>
> > +#include <linux/sched/signal.h>
> > +#include <linux/fs.h>
> > +#include <linux/kvm_host.h>
> > +#include <asm/csr.h>
> > +#include <asm/delay.h>
> > +#include <asm/hwcap.h>
> > +
> > +#define VCPU_STAT(x) { #x, offsetof(struct kvm_vcpu, stat.x), KVM_STAT_VCPU }
> > +
> > +struct kvm_stats_debugfs_item debugfs_entries[] = {
> > +     VCPU_STAT(ecall_exit_stat),
> > +     VCPU_STAT(wfi_exit_stat),
> > +     VCPU_STAT(mmio_exit_user),
> > +     VCPU_STAT(mmio_exit_kernel),
> > +     VCPU_STAT(exits),
> > +     { NULL }
> > +};
> > +
> > +struct kvm_vcpu *kvm_arch_vcpu_create(struct kvm *kvm, unsigned int id)
> > +{
> > +     /* TODO: */
> > +     return NULL;
> > +}
> > +
> > +int kvm_arch_vcpu_setup(struct kvm_vcpu *vcpu)
> > +{
> > +     return 0;
> > +}
> > +
> > +void kvm_arch_vcpu_postcreate(struct kvm_vcpu *vcpu)
> > +{
> > +}
> > +
> > +int kvm_arch_vcpu_init(struct kvm_vcpu *vcpu)
> > +{
> > +     /* TODO: */
> > +     return 0;
> > +}
> > +
> > +void kvm_arch_vcpu_destroy(struct kvm_vcpu *vcpu)
> > +{
> > +     /* TODO: */
> > +}
> > +
> > +int kvm_cpu_has_pending_timer(struct kvm_vcpu *vcpu)
> > +{
> > +     /* TODO: */
> > +     return 0;
> > +}
> > +
> > +void kvm_arch_vcpu_blocking(struct kvm_vcpu *vcpu)
> > +{
> > +}
> > +
> > +void kvm_arch_vcpu_unblocking(struct kvm_vcpu *vcpu)
> > +{
> > +}
> > +
> > +int kvm_arch_vcpu_runnable(struct kvm_vcpu *vcpu)
> > +{
> > +     /* TODO: */
> > +     return 0;
> > +}
> > +
> > +int kvm_arch_vcpu_should_kick(struct kvm_vcpu *vcpu)
> > +{
> > +     /* TODO: */
> > +     return 0;
> > +}
> > +
> > +bool kvm_arch_vcpu_in_kernel(struct kvm_vcpu *vcpu)
> > +{
> > +     /* TODO: */
> > +     return false;
> > +}
> > +
> > +bool kvm_arch_has_vcpu_debugfs(void)
> > +{
> > +     return false;
> > +}
> > +
> > +int kvm_arch_create_vcpu_debugfs(struct kvm_vcpu *vcpu)
> > +{
> > +     return 0;
> > +}
> > +
> > +vm_fault_t kvm_arch_vcpu_fault(struct kvm_vcpu *vcpu, struct vm_fault *vmf)
> > +{
> > +     return VM_FAULT_SIGBUS;
> > +}
> > +
> > +long kvm_arch_vcpu_async_ioctl(struct file *filp,
> > +                            unsigned int ioctl, unsigned long arg)
> > +{
> > +     /* TODO; */
> > +     return -ENOIOCTLCMD;
> > +}
> > +
> > +long kvm_arch_vcpu_ioctl(struct file *filp,
> > +                      unsigned int ioctl, unsigned long arg)
> > +{
> > +     /* TODO: */
> > +     return -EINVAL;
> > +}
> > +
> > +int kvm_arch_vcpu_ioctl_get_sregs(struct kvm_vcpu *vcpu,
> > +                               struct kvm_sregs *sregs)
> > +{
> > +     return -EINVAL;
> > +}
> > +
> > +int kvm_arch_vcpu_ioctl_set_sregs(struct kvm_vcpu *vcpu,
> > +                               struct kvm_sregs *sregs)
> > +{
> > +     return -EINVAL;
> > +}
> > +
> > +int kvm_arch_vcpu_ioctl_get_fpu(struct kvm_vcpu *vcpu, struct kvm_fpu *fpu)
> > +{
> > +     return -EINVAL;
> > +}
> > +
> > +int kvm_arch_vcpu_ioctl_set_fpu(struct kvm_vcpu *vcpu, struct kvm_fpu *fpu)
> > +{
> > +     return -EINVAL;
> > +}
> > +
> > +int kvm_arch_vcpu_ioctl_translate(struct kvm_vcpu *vcpu,
> > +                               struct kvm_translation *tr)
> > +{
> > +     return -EINVAL;
> > +}
> > +
> > +int kvm_arch_vcpu_ioctl_get_regs(struct kvm_vcpu *vcpu, struct kvm_regs *regs)
> > +{
> > +     return -EINVAL;
> > +}
> > +
> > +int kvm_arch_vcpu_ioctl_set_regs(struct kvm_vcpu *vcpu, struct kvm_regs *regs)
> > +{
> > +     return -EINVAL;
> > +}
> > +
> > +int kvm_arch_vcpu_ioctl_get_mpstate(struct kvm_vcpu *vcpu,
> > +                                 struct kvm_mp_state *mp_state)
> > +{
> > +     /* TODO: */
> > +     return 0;
> > +}
> > +
> > +int kvm_arch_vcpu_ioctl_set_mpstate(struct kvm_vcpu *vcpu,
> > +                                 struct kvm_mp_state *mp_state)
> > +{
> > +     /* TODO: */
> > +     return 0;
> > +}
> > +
> > +int kvm_arch_vcpu_ioctl_set_guest_debug(struct kvm_vcpu *vcpu,
> > +                                     struct kvm_guest_debug *dbg)
> > +{
> > +     /* TODO; To be implemented later. */
> > +     return -EINVAL;
> > +}
> > +
> > +void kvm_arch_vcpu_load(struct kvm_vcpu *vcpu, int cpu)
> > +{
> > +     /* TODO: */
> > +
> > +     kvm_riscv_stage2_update_hgatp(vcpu);
> > +}
> > +
> > +void kvm_arch_vcpu_put(struct kvm_vcpu *vcpu)
> > +{
> > +     /* TODO: */
> > +}
> > +
> > +static void kvm_riscv_check_vcpu_requests(struct kvm_vcpu *vcpu)
> > +{
> > +     /* TODO: */
> > +}
> > +
> > +int kvm_arch_vcpu_ioctl_run(struct kvm_vcpu *vcpu, struct kvm_run *run)
> > +{
> > +     int ret;
> > +     unsigned long scause, stval, htval, htinst;
> > +
> > +     vcpu->arch.srcu_idx = srcu_read_lock(&vcpu->kvm->srcu);
> > +
> > +     /* Process MMIO value returned from user-space */
> > +     if (run->exit_reason == KVM_EXIT_MMIO) {
> > +             ret = kvm_riscv_vcpu_mmio_return(vcpu, vcpu->run);
> > +             if (ret) {
> > +                     srcu_read_unlock(&vcpu->kvm->srcu, vcpu->arch.srcu_idx);
> > +                     return ret;
> > +             }
> > +     }
> > +
> > +     if (run->immediate_exit) {
> > +             srcu_read_unlock(&vcpu->kvm->srcu, vcpu->arch.srcu_idx);
> > +             return -EINTR;
> > +     }
> > +
> > +     vcpu_load(vcpu);
> > +
> > +     kvm_sigset_activate(vcpu);
> > +
> > +     ret = 1;
> > +     run->exit_reason = KVM_EXIT_UNKNOWN;
> > +     while (ret > 0) {
> > +             /* Check conditions before entering the guest */
> > +             cond_resched();
> > +
> > +             kvm_riscv_check_vcpu_requests(vcpu);
> > +
> > +             preempt_disable();
> > +
> > +             local_irq_disable();
> > +
> > +             /*
> > +              * Exit if we have a signal pending so that we can deliver
> > +              * the signal to user space.
> > +              */
> > +             if (signal_pending(current)) {
> > +                     ret = -EINTR;
> > +                     run->exit_reason = KVM_EXIT_INTR;
> > +             }
> > +
> > +             /*
> > +              * Ensure we set mode to IN_GUEST_MODE after we disable
> > +              * interrupts and before the final VCPU requests check.
> > +              * See the comment in kvm_vcpu_exiting_guest_mode() and
> > +              * Documentation/virtual/kvm/vcpu-requests.rst
> > +              */
> > +             vcpu->mode = IN_GUEST_MODE;
> > +
> > +             srcu_read_unlock(&vcpu->kvm->srcu, vcpu->arch.srcu_idx);
> > +             smp_mb__after_srcu_read_unlock();
> > +
> > +             if (ret <= 0 ||
> > +                 kvm_request_pending(vcpu)) {
> > +                     vcpu->mode = OUTSIDE_GUEST_MODE;
> > +                     local_irq_enable();
> > +                     preempt_enable();
> > +                     vcpu->arch.srcu_idx = srcu_read_lock(&vcpu->kvm->srcu);
> > +                     continue;
> > +             }
> > +
> > +             guest_enter_irqoff();
> > +
> > +             __kvm_riscv_switch_to(&vcpu->arch);
> > +
> > +             vcpu->mode = OUTSIDE_GUEST_MODE;
> > +             vcpu->stat.exits++;
> > +
> > +             /*
> > +              * Save SCAUSE, STVAL, HTVAL, and HTINST because we might
> > +              * get an interrupt between __kvm_riscv_switch_to() and
> > +              * local_irq_enable() which can potentially change CSRs.
> > +              */
> > +             scause = csr_read(CSR_SCAUSE);
> > +             stval = csr_read(CSR_STVAL);
> > +             htval = csr_read(CSR_HTVAL);
> > +             htinst = csr_read(CSR_HTINST);
> > +
> > +             /*
> > +              * We may have taken a host interrupt in VS/VU-mode (i.e.
> > +              * while executing the guest). This interrupt is still
> > +              * pending, as we haven't serviced it yet!
> > +              *
> > +              * We're now back in HS-mode with interrupts disabled
> > +              * so enabling the interrupts now will have the effect
> > +              * of taking the interrupt again, in HS-mode this time.
> > +              */
> > +             local_irq_enable();
> > +
> > +             /*
> > +              * We do local_irq_enable() before calling guest_exit() so
> > +              * that if a timer interrupt hits while running the guest
> > +              * we account that tick as being spent in the guest. We
> > +              * enable preemption after calling guest_exit() so that if
> > +              * we get preempted we make sure ticks after that is not
> > +              * counted as guest time.
> > +              */
> > +             guest_exit();
> > +
> > +             preempt_enable();
> > +
> > +             vcpu->arch.srcu_idx = srcu_read_lock(&vcpu->kvm->srcu);
> > +
> > +             ret = kvm_riscv_vcpu_exit(vcpu, run,
> > +                                       scause, stval, htval, htinst);
> > +     }
> > +
> > +     kvm_sigset_deactivate(vcpu);
> > +
> > +     vcpu_put(vcpu);
> > +
> > +     srcu_read_unlock(&vcpu->kvm->srcu, vcpu->arch.srcu_idx);
> > +
> > +     return ret;
> > +}
> > diff --git a/arch/riscv/kvm/vcpu_exit.c b/arch/riscv/kvm/vcpu_exit.c
> > new file mode 100644
> > index 000000000000..dcea9ce4e728
> > --- /dev/null
> > +++ b/arch/riscv/kvm/vcpu_exit.c
> > @@ -0,0 +1,36 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +/*
> > + * Copyright (C) 2019 Western Digital Corporation or its affiliates.
> > + *
> > + * Authors:
> > + *     Anup Patel <anup.patel@wdc.com>
> > + */
> > +
> > +#include <linux/errno.h>
> > +#include <linux/err.h>
> > +#include <linux/kvm_host.h>
> > +
> > +/**
> > + * kvm_riscv_vcpu_mmio_return -- Handle MMIO loads after user space emulation
> > + *                        or in-kernel IO emulation
> > + *
> > + * @vcpu: The VCPU pointer
> > + * @run:  The VCPU run struct containing the mmio data
> > + */
> > +int kvm_riscv_vcpu_mmio_return(struct kvm_vcpu *vcpu, struct kvm_run *run)
> > +{
> > +     /* TODO: */
> > +     return 0;
> > +}
> > +
> > +/*
> > + * Return > 0 to return to guest, < 0 on error, 0 (and set exit_reason) on
> > + * proper exit to userspace.
> > + */
> > +int kvm_riscv_vcpu_exit(struct kvm_vcpu *vcpu, struct kvm_run *run,
> > +                     unsigned long scause, unsigned long stval,
> > +                     unsigned long htval, unsigned long htinst)
> > +{
> > +     /* TODO: */
> > +     return 0;
> > +}
> > diff --git a/arch/riscv/kvm/vm.c b/arch/riscv/kvm/vm.c
> > new file mode 100644
> > index 000000000000..ac0211820521
> > --- /dev/null
> > +++ b/arch/riscv/kvm/vm.c
> > @@ -0,0 +1,79 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +/*
> > + * Copyright (C) 2019 Western Digital Corporation or its affiliates.
> > + *
> > + * Authors:
> > + *     Anup Patel <anup.patel@wdc.com>
> > + */
> > +
> > +#include <linux/errno.h>
> > +#include <linux/err.h>
> > +#include <linux/module.h>
> > +#include <linux/uaccess.h>
> > +#include <linux/kvm_host.h>
> > +
> > +int kvm_vm_ioctl_get_dirty_log(struct kvm *kvm, struct kvm_dirty_log *log)
> > +{
> > +     /* TODO: To be added later. */
> > +     return -ENOTSUPP;
> > +}
> > +
> > +int kvm_arch_init_vm(struct kvm *kvm, unsigned long type)
> > +{
> > +     int r;
> > +
> > +     r = kvm_riscv_stage2_alloc_pgd(kvm);
> > +     if (r)
> > +             return r;
> > +
> > +     return 0;
> > +}
> > +
> > +void kvm_arch_destroy_vm(struct kvm *kvm)
> > +{
> > +     int i;
> > +
> > +     for (i = 0; i < KVM_MAX_VCPUS; ++i) {
> > +             if (kvm->vcpus[i]) {
> > +                     kvm_arch_vcpu_destroy(kvm->vcpus[i]);
> > +                     kvm->vcpus[i] = NULL;
> > +             }
> > +     }
> > +}
> > +
> > +int kvm_vm_ioctl_check_extension(struct kvm *kvm, long ext)
> > +{
> > +     int r;
> > +
> > +     switch (ext) {
> > +     case KVM_CAP_DEVICE_CTRL:
> > +     case KVM_CAP_USER_MEMORY:
> > +     case KVM_CAP_DESTROY_MEMORY_REGION_WORKS:
> > +     case KVM_CAP_ONE_REG:
> > +     case KVM_CAP_READONLY_MEM:
> > +     case KVM_CAP_MP_STATE:
> > +     case KVM_CAP_IMMEDIATE_EXIT:
> > +             r = 1;
> > +             break;
> > +     case KVM_CAP_NR_VCPUS:
> > +             r = num_online_cpus();
> > +             break;
> > +     case KVM_CAP_MAX_VCPUS:
> > +             r = KVM_MAX_VCPUS;
> > +             break;
> > +     case KVM_CAP_NR_MEMSLOTS:
> > +             r = KVM_USER_MEM_SLOTS;
> > +             break;
> > +     default:
> > +             r = 0;
> > +             break;
> > +     }
> > +
> > +     return r;
> > +}
> > +
> > +long kvm_arch_vm_ioctl(struct file *filp,
> > +                    unsigned int ioctl, unsigned long arg)
> > +{
> > +     return -EINVAL;
> > +}
> > --
> > 2.17.1

Regards,
Anup

