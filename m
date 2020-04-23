Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 509901B5FC1
	for <lists+linux-riscv@lfdr.de>; Thu, 23 Apr 2020 17:43:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Mime-Version:Message-ID:To:From:
	In-Reply-To:Subject:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=naiEjarGJmHy037G60NXRczIZuNXv0o/OKI14B0jZVg=; b=PROlrI17aeyqLh
	jt2NI1c9KJvr5uqjh3swGnVvEi8FgHW3l46crU88ecMh5F0Y2I+FAk5Lc5G3FlcpqqHNTr9H8mVqs
	da4jLsTXdgxn4paC7b9qbo7fRuoJF89Wink8ScEAOTcjFkps4zJUzpsFaTc8GqZ0rYk8we1ovltJW
	9oeFnuZgiJ5pgaV3BqMrNj71XmfKScZ1UDpKLkESYQrhd7RVW2TereDUnoNT8l4tfySWNBqNWVruw
	7Y8n8nWI5jby8bKzcukfXL/Uci1dotCFUKDIgwY2cWAcx4lQv42RqUPcHOacrWspWKcpEN2zPMNV1
	NWQu3Qt1ZSHa97ABdzlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRe0z-0000kp-RR; Thu, 23 Apr 2020 15:43:49 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRe0Z-0000La-V9
 for linux-riscv@lists.infradead.org; Thu, 23 Apr 2020 15:43:31 +0000
Received: by mail-pl1-x641.google.com with SMTP id d24so2494717pll.8
 for <linux-riscv@lists.infradead.org>; Thu, 23 Apr 2020 08:43:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
 :content-transfer-encoding;
 bh=naiEjarGJmHy037G60NXRczIZuNXv0o/OKI14B0jZVg=;
 b=IhwBsvqCPzzzp1E+oRVvDL+D1p6d+q73df1F/elc1dKECwbpqSyjts4p+GfDM4PH0q
 F+LRndqkuPjILRlcC44Zw2kxXMlaYVQW5M9lueQu1BFNcoXV8U0232n4Mq0Lqe6c5Vha
 SJqYIdz9EHMbCUgvS2TJoawUZuonBXMRe2x3VcKBS1G27M0GS4XnH31Ra2cLv1b84TtN
 VyVDhZDvEFj39buQ7I9DhJj/+/fM44y1H/f8wNYSmyPft216pLRibRyk8H8vhtJNHna0
 0W5Ktq/ge/e+tIzrWpFvlncmyFhO9k30J2R2Ux4SD0rJ4xpCBNG5OM8n8ndn2j6ki7l+
 kLBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=naiEjarGJmHy037G60NXRczIZuNXv0o/OKI14B0jZVg=;
 b=PfUiCv7FohdOKDBe+DxwN54GvxMtU4hC4Yay2tCBZbI8yl+/Lskq1F2Zj5oE94cjfM
 AKPHyprsUyb09xBY1YuAnQFXevhD3o4ZbBxiw/H6ulIXyjihn3JFLYUadb0Nraa6fb8z
 iJ49MMbh5xiy5mIoNGIUIL7Wv8ODsmb6fSJxiq7gnP6ov3Ig2s+NldgFVgl8papRgoCj
 BECG3mnbAxvWp6XG3l9p1xGI5lSs+tUNATT9vHLYdyWkV21VWw977iCDizfdsg6+fIja
 +FCOAm2IdWJPWPtVn4HwKfJ1AU9YjWpXvV+SZZubegAMcTOTs+Ro++ec2Rx5/Dg9/Y2R
 Ldfw==
X-Gm-Message-State: AGi0PuaWDPcZU3AW0UuA/NAZanJJRGOMtTy7nE5T3NpTWWQco+pQOaNf
 ikA8zu3acSCE5kZFCrGkFqBtGw==
X-Google-Smtp-Source: APiQypIBgt3Ye6Uizvw379STfEYPTggCrYbyxj+uJi6i6O9VgGeXWIU7StKFAdfK1F6UiyMb033pVQ==
X-Received: by 2002:a17:90a:2450:: with SMTP id
 h74mr1303260pje.57.1587656599117; 
 Thu, 23 Apr 2020 08:43:19 -0700 (PDT)
Received: from localhost (76-210-143-223.lightspeed.sntcca.sbcglobal.net.
 [76.210.143.223])
 by smtp.gmail.com with ESMTPSA id 23sm2730724pjb.11.2020.04.23.08.43.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 23 Apr 2020 08:43:18 -0700 (PDT)
Date: Thu, 23 Apr 2020 08:43:18 -0700 (PDT)
X-Google-Original-Date: Thu, 23 Apr 2020 08:42:24 PDT (-0700)
Subject: Re: [PATCH v11 00/20] KVM RISC-V Support
In-Reply-To: <CAAhSdy32E_aTPqij3Lgs3mekMWcHw0VfXSwFc=0K8j+GrC+Kug@mail.gmail.com>
From: Palmer Dabbelt <palmerdabbelt@google.com>
To: anup@brainfault.org
Message-ID: <mhng-fc3ce6fc-01a4-45b7-92c5-370d2d6a0f9e@palmerdabbelt-glaptop1>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_084324_026684_B5B72DCD 
X-CRM114-Status: GOOD (  14.56  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Alistair Francis <Alistair.Francis@wdc.com>, aou@eecs.berkeley.edu,
 kvm@vger.kernel.org, rkrcmar@redhat.com, Anup Patel <Anup.Patel@wdc.com>,
 Damien Le Moal <Damien.LeMoal@wdc.com>, linux-kernel@vger.kernel.org,
 Atish Patra <Atish.Patra@wdc.com>, graf@amazon.com,
 kvm-riscv@lists.infradead.org, Paul Walmsley <paul.walmsley@sifive.com>,
 pbonzini@redhat.com, linux-riscv@lists.infradead.org,
 Christoph Hellwig <hch@lst.de>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, 17 Apr 2020 05:45:31 PDT (-0700), anup@brainfault.org wrote:
> Hi Palmer,
>
> On Fri, Mar 13, 2020 at 1:22 PM Anup Patel <anup.patel@wdc.com> wrote:
>>
>> This series adds initial KVM RISC-V support. Currently, we are able to boot
>> RISC-V 64bit Linux Guests with multiple VCPUs.
>>
>> Few key aspects of KVM RISC-V added by this series are:
>> 1. Minimal possible KVM world-switch which touches only GPRs and few CSRs.
>> 2. Full Guest/VM switch is done via vcpu_get/vcpu_put infrastructure.
>> 3. KVM ONE_REG interface for VCPU register access from user-space.
>> 4. PLIC emulation is done in user-space.
>> 5. Timer and IPI emuation is done in-kernel.
>> 6. MMU notifiers supported.
>> 7. FP lazy save/restore supported.
>> 8. SBI v0.1 emulation for KVM Guest available.
>> 9. Forward unhandled SBI calls to KVM userspace.
>> 10. Hugepage support for Guest/VM
>>
>> Here's a brief TODO list which we will work upon after this series:
>> 1. SBI v0.2 emulation in-kernel
>> 2. SBI v0.2 hart state management emulation in-kernel
>> 3. In-kernel PLIC emulation
>> 4. ..... and more .....
>>
>> This series can be found in riscv_kvm_v11 branch at:
>> https//github.com/avpatel/linux.git
>>
>> Our work-in-progress KVMTOOL RISC-V port can be found in riscv_v2 branch
>> at: https//github.com/avpatel/kvmtool.git
>>
>> The QEMU RISC-V hypervisor emulation is done by Alistair and is available
>> in mainline/anup/riscv-hyp-ext-v0.5.3 branch at:
>> https://github.com/kvm-riscv/qemu.git
>>
>> To play around with KVM RISC-V, refer KVM RISC-V wiki at:
>> https://github.com/kvm-riscv/howto/wiki
>> https://github.com/kvm-riscv/howto/wiki/KVM-RISCV64-on-QEMU
>>
>> Changes since v10:
>>  - Rebased patches on Linux-5.6-rc5
>>  - Reduce RISCV_ISA_EXT_MAX from 256 to 64
>>  - Separate PATCH for removing N-extension related defines
>>  - Added comments as requested by Palmer
>>  - Fixed HIDELEG CSR programming
>>
>> Changes since v9:
>>  - Squash PATCH19 and PATCH20 into PATCH5
>>  - Squash PATCH18 into PATCH11
>>  - Squash PATCH17 into PATCH16
>>  - Added ONE_REG interface for VCPU timer in PATCH13
>>  - Use HTIMEDELTA for VCPU timer in PATCH13
>>  - Updated KVM RISC-V mailing list in MAINTAINERS entry
>>  - Update KVM kconfig option to depend on RISCV_SBI and MMU
>>  - Check for SBI v0.2 and SBI v0.2 RFENCE extension at boot-time
>>  - Use SBI v0.2 RFENCE extension in VMID implementation
>>  - Use SBI v0.2 RFENCE extension in Stage2 MMU implementation
>>  - Use SBI v0.2 RFENCE extension in SBI implementation
>>  - Moved to RISC-V Hypervisor v0.5 draft spec
>>  - Updated Documentation/virt/kvm/api.txt for timer ONE_REG interface
>>  - Rebased patches on Linux-5.5-rc3
>>
>> Changes since v8:
>>  - Rebased series on Linux-5.4-rc3 and Atish's SBI v0.2 patches
>>  - Use HRTIMER_MODE_REL instead of HRTIMER_MODE_ABS in timer emulation
>>  - Fixed kvm_riscv_stage2_map() to handle hugepages
>>  - Added patch to forward unhandled SBI calls to user-space
>>  - Added patch for iterative/recursive stage2 page table programming
>>  - Added patch to remove per-CPU vsip_shadow variable
>>  - Added patch to fix race-condition in kvm_riscv_vcpu_sync_interrupts()
>>
>> Changes since v7:
>> - Rebased series on Linux-5.4-rc1 and Atish's SBI v0.2 patches
>> - Removed PATCH1, PATCH3, and PATCH20 because these already merged
>> - Use kernel doc style comments for ISA bitmap functions
>> - Don't parse X, Y, and Z extension in riscv_fill_hwcap() because it will
>>   be added in-future
>> - Mark KVM RISC-V kconfig option as EXPERIMENTAL
>> - Typo fix in commit description of PATCH6 of v7 series
>> - Use separate structs for CORE and CSR registers of ONE_REG interface
>> - Explicitly include asm/sbi.h in kvm/vcpu_sbi.c
>> - Removed implicit switch-case fall-through in kvm_riscv_vcpu_exit()
>> - No need to set VSSTATUS.MXR bit in kvm_riscv_vcpu_unpriv_read()
>> - Removed register for instruction length in kvm_riscv_vcpu_unpriv_read()
>> - Added defines for checking/decoding instruction length
>> - Added separate patch to forward unhandled SBI calls to userspace tool
>>
>> Changes since v6:
>> - Rebased patches on Linux-5.3-rc7
>> - Added "return_handled" in struct kvm_mmio_decode to ensure that
>>   kvm_riscv_vcpu_mmio_return() updates SEPC only once
>> - Removed trap_stval parameter from kvm_riscv_vcpu_unpriv_read()
>> - Updated git repo URL in MAINTAINERS entry
>>
>> Changes since v5:
>> - Renamed KVM_REG_RISCV_CONFIG_TIMEBASE register to
>>   KVM_REG_RISCV_CONFIG_TBFREQ register in ONE_REG interface
>> - Update SPEC in kvm_riscv_vcpu_mmio_return() for MMIO exits
>> - Use switch case instead of illegal instruction opcode table for simplicity
>> - Improve comments in stage2_remote_tlb_flush() for a potential remote TLB
>>   flush optimization
>> - Handle all unsupported SBI calls in default case of
>>   kvm_riscv_vcpu_sbi_ecall() function
>> - Fixed kvm_riscv_vcpu_sync_interrupts() for software interrupts
>> - Improved unprivilege reads to handle traps due to Guest stage1 page table
>> - Added separate patch to document RISC-V specific things in
>>   Documentation/virt/kvm/api.txt
>>
>> Changes since v4:
>> - Rebased patches on Linux-5.3-rc5
>> - Added Paolo's Acked-by and Reviewed-by
>> - Updated mailing list in MAINTAINERS entry
>>
>> Changes since v3:
>> - Moved patch for ISA bitmap from KVM prep series to this series
>> - Make vsip_shadow as run-time percpu variable instead of compile-time
>> - Flush Guest TLBs on all Host CPUs whenever we run-out of VMIDs
>>
>> Changes since v2:
>> - Removed references of KVM_REQ_IRQ_PENDING from all patches
>> - Use kvm->srcu within in-kernel KVM run loop
>> - Added percpu vsip_shadow to track last value programmed in VSIP CSR
>> - Added comments about irqs_pending and irqs_pending_mask
>> - Used kvm_arch_vcpu_runnable() in-place-of kvm_riscv_vcpu_has_interrupt()
>>   in system_opcode_insn()
>> - Removed unwanted smp_wmb() in kvm_riscv_stage2_vmid_update()
>> - Use kvm_flush_remote_tlbs() in kvm_riscv_stage2_vmid_update()
>> - Use READ_ONCE() in kvm_riscv_stage2_update_hgatp() for vmid
>>
>> Changes since v1:
>> - Fixed compile errors in building KVM RISC-V as module
>> - Removed unused kvm_riscv_halt_guest() and kvm_riscv_resume_guest()
>> - Set KVM_CAP_SYNC_MMU capability only after MMU notifiers are implemented
>> - Made vmid_version as unsigned long instead of atomic
>> - Renamed KVM_REQ_UPDATE_PGTBL to KVM_REQ_UPDATE_HGATP
>> - Renamed kvm_riscv_stage2_update_pgtbl() to kvm_riscv_stage2_update_hgatp()
>> - Configure HIDELEG and HEDELEG in kvm_arch_hardware_enable()
>> - Updated ONE_REG interface for CSR access to user-space
>> - Removed irqs_pending_lock and use atomic bitops instead
>> - Added separate patch for FP ONE_REG interface
>> - Added separate patch for updating MAINTAINERS file
>>
>> Anup Patel (16):
>>   RISC-V: Export riscv_cpuid_to_hartid_mask() API
>>   RISC-V: Add bitmap reprensenting ISA features common across CPUs
>>   RISC-V: Remove N-extension related defines
>>   RISC-V: Add hypervisor extension related CSR defines
>>   RISC-V: Add initial skeletal KVM support
>>   RISC-V: KVM: Implement VCPU create, init and destroy functions
>>   RISC-V: KVM: Implement VCPU interrupts and requests handling
>>   RISC-V: KVM: Implement KVM_GET_ONE_REG/KVM_SET_ONE_REG ioctls
>>   RISC-V: KVM: Implement VCPU world-switch
>>   RISC-V: KVM: Handle MMIO exits for VCPU
>>   RISC-V: KVM: Handle WFI exits for VCPU
>>   RISC-V: KVM: Implement VMID allocator
>>   RISC-V: KVM: Implement stage2 page table programming
>>   RISC-V: KVM: Implement MMU notifiers
>>   RISC-V: KVM: Document RISC-V specific parts of KVM API
>>   RISC-V: KVM: Add MAINTAINERS entry
>>
>> Atish Patra (4):
>>   RISC-V: KVM: Add timer functionality
>>   RISC-V: KVM: FP lazy save/restore
>>   RISC-V: KVM: Implement ONE REG interface for FP registers
>>   RISC-V: KVM: Add SBI v0.1 support
>>
>>  Documentation/virt/kvm/api.rst          | 193 ++++-
>>  MAINTAINERS                             |  11 +
>>  arch/riscv/Kconfig                      |   2 +
>>  arch/riscv/Makefile                     |   2 +
>>  arch/riscv/include/asm/csr.h            |  78 +-
>>  arch/riscv/include/asm/hwcap.h          |  22 +
>>  arch/riscv/include/asm/kvm_host.h       | 264 +++++++
>>  arch/riscv/include/asm/kvm_vcpu_timer.h |  44 ++
>>  arch/riscv/include/asm/pgtable-bits.h   |   1 +
>>  arch/riscv/include/uapi/asm/kvm.h       | 127 +++
>>  arch/riscv/kernel/asm-offsets.c         | 148 ++++
>>  arch/riscv/kernel/cpufeature.c          |  83 +-
>>  arch/riscv/kernel/smp.c                 |   2 +
>>  arch/riscv/kvm/Kconfig                  |  34 +
>>  arch/riscv/kvm/Makefile                 |  14 +
>>  arch/riscv/kvm/main.c                   |  97 +++
>>  arch/riscv/kvm/mmu.c                    | 762 ++++++++++++++++++
>>  arch/riscv/kvm/tlb.S                    |  43 +
>>  arch/riscv/kvm/vcpu.c                   | 997 ++++++++++++++++++++++++
>>  arch/riscv/kvm/vcpu_exit.c              | 639 +++++++++++++++
>>  arch/riscv/kvm/vcpu_sbi.c               | 171 ++++
>>  arch/riscv/kvm/vcpu_switch.S            | 382 +++++++++
>>  arch/riscv/kvm/vcpu_timer.c             | 225 ++++++
>>  arch/riscv/kvm/vm.c                     |  86 ++
>>  arch/riscv/kvm/vmid.c                   | 120 +++
>>  drivers/clocksource/timer-riscv.c       |   8 +
>>  include/clocksource/timer-riscv.h       |  16 +
>>  include/uapi/linux/kvm.h                |   8 +
>>  28 files changed, 4564 insertions(+), 15 deletions(-)
>>  create mode 100644 arch/riscv/include/asm/kvm_host.h
>>  create mode 100644 arch/riscv/include/asm/kvm_vcpu_timer.h
>>  create mode 100644 arch/riscv/include/uapi/asm/kvm.h
>>  create mode 100644 arch/riscv/kvm/Kconfig
>>  create mode 100644 arch/riscv/kvm/Makefile
>>  create mode 100644 arch/riscv/kvm/main.c
>>  create mode 100644 arch/riscv/kvm/mmu.c
>>  create mode 100644 arch/riscv/kvm/tlb.S
>>  create mode 100644 arch/riscv/kvm/vcpu.c
>>  create mode 100644 arch/riscv/kvm/vcpu_exit.c
>>  create mode 100644 arch/riscv/kvm/vcpu_sbi.c
>>  create mode 100644 arch/riscv/kvm/vcpu_switch.S
>>  create mode 100644 arch/riscv/kvm/vcpu_timer.c
>>  create mode 100644 arch/riscv/kvm/vm.c
>>  create mode 100644 arch/riscv/kvm/vmid.c
>>  create mode 100644 include/clocksource/timer-riscv.h
>>
>> --
>> 2.17.1
>>
>
> Can you please consider PATCH1, PATCH2, and PATCH3 of
> this series for Linux-5.7-rcX ??

Sure.  Can you send them as their own patch set, based on a recent RC?

