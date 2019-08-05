Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 731B282139
	for <lists+linux-riscv@lfdr.de>; Mon,  5 Aug 2019 18:05:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZZgStfH8xUmymCG0DRnVpikVLIz5sGBYnHQ41YB/B4w=; b=dSYtLTIV+YJD6j
	fV7+wSGV+X4JLShgvkJci51zKL2Cf8c5F/n4HKWQtVRG23lRmNNTaPML1CJ063oE3t/MfjDjH9L5c
	AxjQErWnf302muNGlexXWwTUJ534eakqrDxjx/57D53uj9a8h6nmjlOyr9D/jKs25ZyHXmyfasu9b
	o6McsSQEFndEB12mRV1Co+0Oj7Kd3YggqqAKF5x4Pj0zosBJauy83XMO7qPK5JRl6xRP7iRUO4vJo
	bw6gtDrXGy/oba19yGMv2LwRh2iB8s6TUb+i4Qna4qobcShnMynbcjFcpLKUIa/HGRIFr60mXCgaS
	MoEC3PVL/wBhPwmzpyEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hufUY-00008U-7X; Mon, 05 Aug 2019 16:05:46 +0000
Received: from mail-wr1-f65.google.com ([209.85.221.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hufUR-0008Vg-DE
 for linux-riscv@lists.infradead.org; Mon, 05 Aug 2019 16:05:42 +0000
Received: by mail-wr1-f65.google.com with SMTP id 31so85001433wrm.1
 for <linux-riscv@lists.infradead.org>; Mon, 05 Aug 2019 09:05:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=F30R4qg1ehN1CROeEQ4O0h0Y95Idm2w6D1zzJAIh5ac=;
 b=PqVMZY6wYvUC2656CrHInkM247iwF3OPpcRK+Jvl4Go07/pC7BQk/ZxAAF+zP9tw6Z
 m2vqCGuA7aw+v1yo4HUza9AsNDEMWsaYOJPCte1at9+0jhgD7KW/BN4xkFPKNcx1+xGq
 kqEbwevyImWt9qpkPioIv9S5pUU0tWxbT59+nOe+xsjVGMt0O+UkxBc9rEkhaZuqTtjK
 pQiMKHddffjn4YrCvP4IQRT7tTBG5WVJuSe/bolxQECQukK+tje9vV6/OhWsOYtEgNy9
 Z24RaMEaZ4GFUHfQ5YOWRbWzH9QmyfUjPiw29UrvXgm5a0p735VYCQodbBnu7xwpuQKi
 gaCg==
X-Gm-Message-State: APjAAAW7LhYrvVGH8tw2fENTdR1Guax/nimsBN1PpYbopZ01PboLQMg+
 rug5GpZxPt0i8BRDHRxDi1fAjw==
X-Google-Smtp-Source: APXvYqy7A9JkVqAMIMky+gYE7j+6NzxtekmRVJCCCasvFXTPDZNrK+JWKAporAiSAWY+bNgMyEHjGg==
X-Received: by 2002:adf:f646:: with SMTP id x6mr18935724wrp.18.1565021137746; 
 Mon, 05 Aug 2019 09:05:37 -0700 (PDT)
Received: from [192.168.178.40] ([151.21.165.91])
 by smtp.gmail.com with ESMTPSA id 2sm121528630wrn.29.2019.08.05.09.05.36
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Mon, 05 Aug 2019 09:05:37 -0700 (PDT)
Subject: Re: [PATCH v3 00/19] KVM RISC-V Support
To: Anup Patel <Anup.Patel@wdc.com>, Palmer Dabbelt <palmer@sifive.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, Radim K <rkrcmar@redhat.com>
References: <20190805134201.2814-1-anup.patel@wdc.com>
From: Paolo Bonzini <pbonzini@redhat.com>
Openpgp: preference=signencrypt
Message-ID: <c8ea136f-b34b-c7b4-c319-93906fa595bd@redhat.com>
Date: Mon, 5 Aug 2019 18:05:36 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190805134201.2814-1-anup.patel@wdc.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_090539_476582_36BBE5BF 
X-CRM114-Status: GOOD (  18.68  )
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
Cc: Damien Le Moal <Damien.LeMoal@wdc.com>, Albert Ou <aou@eecs.berkeley.edu>,
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

On 05/08/19 15:42, Anup Patel wrote:
> This series adds initial KVM RISC-V support. Currently, we are able to boot
> RISC-V 64bit Linux Guests with multiple VCPUs.
> 
> Few key aspects of KVM RISC-V added by this series are:
> 1. Minimal possible KVM world-switch which touches only GPRs and few CSRs.
> 2. Full Guest/VM switch is done via vcpu_get/vcpu_put infrastructure.
> 3. KVM ONE_REG interface for VCPU register access from user-space.
> 4. PLIC emulation is done in user-space. In-kernel PLIC emulation, will
>    be added in future.
> 5. Timer and IPI emuation is done in-kernel.
> 6. MMU notifiers supported.
> 7. FP lazy save/restore supported.
> 8. SBI v0.1 emulation for KVM Guest available.
> 
> Here's a brief TODO list which we will work upon after this series:
> 1. Handle trap from unpriv access in reading Guest instruction
> 2. Handle trap from unpriv access in SBI v0.1 emulation
> 3. Implement recursive stage2 page table programing
> 4. SBI v0.2 emulation in-kernel
> 5. SBI v0.2 hart hotplug emulation in-kernel
> 6. In-kernel PLIC emulation
> 7. ..... and more .....
> 
> This series is based upon KVM pre-patches sent by Atish earlier
> (https://lkml.org/lkml/2019/8/3/3) and it can be found in
> riscv_kvm_v3 branch at:
> https//github.com/avpatel/linux.git
> 
> Our work-in-progress KVMTOOL RISC-V port can be found in riscv_v1 branch at:
> https//github.com/avpatel/kvmtool.git
> 
> We need OpenSBI with RISC-V hypervisor extension support which can be
> found in hyp_ext_changes_v1 branch at:
> https://github.com/riscv/opensbi.git
> 
> The QEMU RISC-V hypervisor emulation is done by Alistair and is available
> in riscv-hyp-work.next branch at:
> https://github.com/alistair23/qemu.git
> 
> To play around with KVM RISC-V, here are few reference commands:
> 1) To cross-compile KVMTOOL:
>    $ make lkvm-static
> 2) To launch RISC-V Host Linux:
>    $ qemu-system-riscv64 -monitor null -cpu rv64,h=true -M virt \
>    -m 512M -display none -serial mon:stdio \
>    -kernel opensbi/build/platform/qemu/virt/firmware/fw_jump.elf \
>    -device loader,file=build-riscv64/arch/riscv/boot/Image,addr=0x80200000 \
>    -initrd ./rootfs_kvm_riscv64.img \
>    -append "root=/dev/ram rw console=ttyS0 earlycon=sbi"
> 3) To launch RISC-V Guest Linux with 9P rootfs:
>    $ ./apps/lkvm-static run -m 128 -c2 --console serial \
>    -p "console=ttyS0 earlycon=uart8250,mmio,0x3f8" -k ./apps/Image --debug
> 4) To launch RISC-V Guest Linux with initrd:
>    $ ./apps/lkvm-static run -m 128 -c2 --console serial \
>    -p "console=ttyS0 earlycon=uart8250,mmio,0x3f8" -k ./apps/Image \
>    -i ./apps/rootfs.img --debug
> 
> Changes since v2:
> - Removed references of KVM_REQ_IRQ_PENDING from all patches
> - Use kvm->srcu within in-kernel KVM run loop
> - Added percpu vsip_shadow to track last value programmed in VSIP CSR
> - Added comments about irqs_pending and irqs_pending_mask
> - Used kvm_arch_vcpu_runnable() in-place-of kvm_riscv_vcpu_has_interrupt()
>   in system_opcode_insn()
> - Removed unwanted smp_wmb() in kvm_riscv_stage2_vmid_update()
> - Use kvm_flush_remote_tlbs() in kvm_riscv_stage2_vmid_update()
> - Use READ_ONCE() in kvm_riscv_stage2_update_hgatp() for vmid
> 
> Changes since v1:
> - Fixed compile errors in building KVM RISC-V as module
> - Removed unused kvm_riscv_halt_guest() and kvm_riscv_resume_guest()
> - Set KVM_CAP_SYNC_MMU capability only after MMU notifiers are implemented
> - Made vmid_version as unsigned long instead of atomic
> - Renamed KVM_REQ_UPDATE_PGTBL to KVM_REQ_UPDATE_HGATP
> - Renamed kvm_riscv_stage2_update_pgtbl() to kvm_riscv_stage2_update_hgatp()
> - Configure HIDELEG and HEDELEG in kvm_arch_hardware_enable()
> - Updated ONE_REG interface for CSR access to user-space
> - Removed irqs_pending_lock and use atomic bitops instead
> - Added separate patch for FP ONE_REG interface
> - Added separate patch for updating MAINTAINERS file

Down to one comment, which can be addressed when applying (though I'd
prefer if you tested the one-token fix).

Palmer, Albert, can you give your Acked-by, especially for patches
2-3-18-19?

Thanks,

Paolo

> Anup Patel (14):
>   KVM: RISC-V: Add KVM_REG_RISCV for ONE_REG interface
>   RISC-V: Add hypervisor extension related CSR defines
>   RISC-V: Add initial skeletal KVM support
>   RISC-V: KVM: Implement VCPU create, init and destroy functions
>   RISC-V: KVM: Implement VCPU interrupts and requests handling
>   RISC-V: KVM: Implement KVM_GET_ONE_REG/KVM_SET_ONE_REG ioctls
>   RISC-V: KVM: Implement VCPU world-switch
>   RISC-V: KVM: Handle MMIO exits for VCPU
>   RISC-V: KVM: Handle WFI exits for VCPU
>   RISC-V: KVM: Implement VMID allocator
>   RISC-V: KVM: Implement stage2 page table programming
>   RISC-V: KVM: Implement MMU notifiers
>   RISC-V: Enable VIRTIO drivers in RV64 and RV32 defconfig
>   RISC-V: KVM: Add MAINTAINERS entry
> 
> Atish Patra (5):
>   RISC-V: Export few kernel symbols
>   RISC-V: KVM: Add timer functionality
>   RISC-V: KVM: FP lazy save/restore
>   RISC-V: KVM: Implement ONE REG interface for FP registers
>   RISC-V: KVM: Add SBI v0.1 support
> 
>  MAINTAINERS                             |  10 +
>  arch/riscv/Kconfig                      |   2 +
>  arch/riscv/Makefile                     |   2 +
>  arch/riscv/configs/defconfig            |  13 +
>  arch/riscv/configs/rv32_defconfig       |  13 +
>  arch/riscv/include/asm/csr.h            |  58 ++
>  arch/riscv/include/asm/kvm_host.h       | 243 ++++++
>  arch/riscv/include/asm/kvm_vcpu_timer.h |  32 +
>  arch/riscv/include/asm/pgtable-bits.h   |   1 +
>  arch/riscv/include/uapi/asm/kvm.h       |  98 +++
>  arch/riscv/kernel/asm-offsets.c         | 148 ++++
>  arch/riscv/kernel/smp.c                 |   2 +-
>  arch/riscv/kernel/time.c                |   1 +
>  arch/riscv/kvm/Kconfig                  |  34 +
>  arch/riscv/kvm/Makefile                 |  14 +
>  arch/riscv/kvm/main.c                   |  86 +++
>  arch/riscv/kvm/mmu.c                    | 905 ++++++++++++++++++++++
>  arch/riscv/kvm/tlb.S                    |  43 ++
>  arch/riscv/kvm/vcpu.c                   | 969 ++++++++++++++++++++++++
>  arch/riscv/kvm/vcpu_exit.c              | 556 ++++++++++++++
>  arch/riscv/kvm/vcpu_sbi.c               | 119 +++
>  arch/riscv/kvm/vcpu_switch.S            | 368 +++++++++
>  arch/riscv/kvm/vcpu_timer.c             | 106 +++
>  arch/riscv/kvm/vm.c                     |  86 +++
>  arch/riscv/kvm/vmid.c                   | 111 +++
>  drivers/clocksource/timer-riscv.c       |   8 +
>  include/clocksource/timer-riscv.h       |  16 +
>  include/uapi/linux/kvm.h                |   1 +
>  28 files changed, 4044 insertions(+), 1 deletion(-)
>  create mode 100644 arch/riscv/include/asm/kvm_host.h
>  create mode 100644 arch/riscv/include/asm/kvm_vcpu_timer.h
>  create mode 100644 arch/riscv/include/uapi/asm/kvm.h
>  create mode 100644 arch/riscv/kvm/Kconfig
>  create mode 100644 arch/riscv/kvm/Makefile
>  create mode 100644 arch/riscv/kvm/main.c
>  create mode 100644 arch/riscv/kvm/mmu.c
>  create mode 100644 arch/riscv/kvm/tlb.S
>  create mode 100644 arch/riscv/kvm/vcpu.c
>  create mode 100644 arch/riscv/kvm/vcpu_exit.c
>  create mode 100644 arch/riscv/kvm/vcpu_sbi.c
>  create mode 100644 arch/riscv/kvm/vcpu_switch.S
>  create mode 100644 arch/riscv/kvm/vcpu_timer.c
>  create mode 100644 arch/riscv/kvm/vm.c
>  create mode 100644 arch/riscv/kvm/vmid.c
>  create mode 100644 include/clocksource/timer-riscv.h
> 
> --
> 2.17.1
> 


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
