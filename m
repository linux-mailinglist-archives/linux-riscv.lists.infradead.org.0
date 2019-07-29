Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55CE779B6F
	for <lists+linux-riscv@lfdr.de>; Mon, 29 Jul 2019 23:47:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZTH7+XC8BkK0QfODbwA2lcUEHZ/s6qqYs7MRpk3tthM=; b=Yszlmu8tRWOlCb
	n0Ob1ml0kMZTufbcSyqZDdQWCr1FhB23BcUKiQsVO3QUTHGWTGL2Jg0TledzlBYwDIGOY9VreAMC7
	npchRya5bvPsI2LRxi47XiKdJpEapcUEExreOD1wlK5y9Tr4n93/skyfZw1djP1/cTeYNwmfIKPGq
	fw39JZDiWg6NO4G9AcPpaECu3PK4Xmn4CVcfRKZrdtzSEaXiObKRRGI7d3HGumBAIzVbu5yk1abHr
	LRL9JPMhpkrSvgvVxx8DITTVbZxoj7/ekAeMHWbrHIkBb1536RcenMScpaA0XMt2rcAxMjumGsEDs
	3PJ8YQRDCgrjsd1UB8vQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsDUi-0002hY-Ec; Mon, 29 Jul 2019 21:47:48 +0000
Received: from mail-wr1-f68.google.com ([209.85.221.68])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsDUf-0002gs-1w
 for linux-riscv@lists.infradead.org; Mon, 29 Jul 2019 21:47:47 +0000
Received: by mail-wr1-f68.google.com with SMTP id g17so63445653wrr.5
 for <linux-riscv@lists.infradead.org>; Mon, 29 Jul 2019 14:47:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=fs6DqaPkVdpabTV7eVDMpkkqMV2tSACoEUD6qLq12GU=;
 b=BvRubcR7/rejNpmk+dv8eQMMvOZafu059L+wjdKxlldAFPlPMR3JPWjsf1SUZpqZYm
 C5O15fxeFzynpV7fbVp0tgKSV6+Z07j9YeBNtOfRadGzbMe+VHG/6hyc8FpI6ARG7X5C
 9eCKm61D6K1D6ZG+PtXjzpZPWMmboaOTYuqLWB5MK5L0vfPLRGPF6hiS+b/ICN2GPPk/
 rL7LvATs0rycUeRI/9/dSYEFYV3mRnn47Jotu/bK0hvkNZ3th1pEMi3fHn5tcLlxyvdi
 KTDBIhaNoGMf9Kr+tHXdki0fmfmOx8L1KDijFhYmLNEnzzG+24h/VVaAPL0ANldiJQyL
 gM3A==
X-Gm-Message-State: APjAAAXMOETLho3shUMrrJRTe4kQC4wrVS+frw0hA4TnKA9vp8OfOzrT
 hxeN51zjdYUocGf3HV02yo7RSw==
X-Google-Smtp-Source: APXvYqzkicAoyZTmOKsmhljX45DH08+jjxg+ycyAJ1txPY2OEAFtNlJaZLNV8RhuBBQphzUsKn5YqA==
X-Received: by 2002:adf:9f0e:: with SMTP id l14mr114120426wrf.23.1564436863522; 
 Mon, 29 Jul 2019 14:47:43 -0700 (PDT)
Received: from ?IPv6:2001:b07:6468:f312:29d3:6123:6d5f:2c04?
 ([2001:b07:6468:f312:29d3:6123:6d5f:2c04])
 by smtp.gmail.com with ESMTPSA id c78sm86396841wmd.16.2019.07.29.14.47.42
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Mon, 29 Jul 2019 14:47:42 -0700 (PDT)
Subject: Re: [RFC PATCH 00/16] KVM RISC-V Support
To: Anup Patel <Anup.Patel@wdc.com>, Palmer Dabbelt <palmer@sifive.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, Radim K <rkrcmar@redhat.com>
References: <20190729115544.17895-1-anup.patel@wdc.com>
From: Paolo Bonzini <pbonzini@redhat.com>
Openpgp: preference=signencrypt
Message-ID: <72e9f668-f496-3fca-a1a8-a3c3122a3fd9@redhat.com>
Date: Mon, 29 Jul 2019 23:47:45 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190729115544.17895-1-anup.patel@wdc.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_144745_129040_62AF9047 
X-CRM114-Status: GOOD (  18.63  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.68 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.68 listed in wl.mailspike.net]
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

On 29/07/19 13:56, Anup Patel wrote:
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
> More feature additions and enhancments will follow after this series and
> eventually KVM RISC-V will be at-par with other architectures.

This looks clean and it shouldn't take long to have it merged.  Please
sort out the MAINTAINERS additions.  It would also be nice if
tools/testing/selftests/kvm/ worked with RISC-V from the beginning;
there have been recent ARM and s390 ports that you can take some
inspiration from.

Paolo

> This series is based upon KVM pre-patches sent by Atish earlier
> (https://lkml.org/lkml/2019/7/26/1271) and it can be found in
> riscv_kvm_v1 branch at:
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
> Anup Patel (13):
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
> 
> Atish Patra (3):
>   RISC-V: KVM: Add timer functionality
>   RISC-V: KVM: FP lazy save/restore
>   RISC-V: KVM: Add SBI v0.1 support
> 
>  arch/riscv/Kconfig                      |   2 +
>  arch/riscv/Makefile                     |   2 +
>  arch/riscv/configs/defconfig            |  23 +-
>  arch/riscv/configs/rv32_defconfig       |  13 +
>  arch/riscv/include/asm/csr.h            |  58 ++
>  arch/riscv/include/asm/kvm_host.h       | 232 ++++++
>  arch/riscv/include/asm/kvm_vcpu_timer.h |  32 +
>  arch/riscv/include/asm/pgtable-bits.h   |   1 +
>  arch/riscv/include/uapi/asm/kvm.h       |  74 ++
>  arch/riscv/kernel/asm-offsets.c         | 148 ++++
>  arch/riscv/kvm/Kconfig                  |  34 +
>  arch/riscv/kvm/Makefile                 |  14 +
>  arch/riscv/kvm/main.c                   |  64 ++
>  arch/riscv/kvm/mmu.c                    | 904 ++++++++++++++++++++++++
>  arch/riscv/kvm/tlb.S                    |  42 ++
>  arch/riscv/kvm/vcpu.c                   | 817 +++++++++++++++++++++
>  arch/riscv/kvm/vcpu_exit.c              | 553 +++++++++++++++
>  arch/riscv/kvm/vcpu_sbi.c               | 118 ++++
>  arch/riscv/kvm/vcpu_switch.S            | 367 ++++++++++
>  arch/riscv/kvm/vcpu_timer.c             | 106 +++
>  arch/riscv/kvm/vm.c                     | 107 +++
>  arch/riscv/kvm/vmid.c                   | 130 ++++
>  drivers/clocksource/timer-riscv.c       |   6 +
>  include/clocksource/timer-riscv.h       |  14 +
>  include/uapi/linux/kvm.h                |   1 +
>  25 files changed, 3857 insertions(+), 5 deletions(-)
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
