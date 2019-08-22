Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0771994E8
	for <lists+linux-riscv@lfdr.de>; Thu, 22 Aug 2019 15:26:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=iKFRdAtRcm3ZTH31HxHbsViVnz6bHWkC5rD8qzRKScM=; b=PKBNBI5z4aAWDRsmAqNWYMPfE
	bEd2FOLNtDx8x3AW09c9ZTJU763oU6Y6qJVXQfBUTdP61wsNN7GGbHGa8tDluq27izlbfgrdgy4dN
	vFBRgbsloE1Yby9lxyULpxZk8MnjC0MrG9HkEtyatsOuMcU3wvcnX6i4Ls5YneaWQGq2jbBuX4CLT
	9my9fNZ0vl2a0t1KkCgQC4oX4vCAPIKIddO44TPFlqEwFmjfK8ZR6u6FMhNRbi21NcFLKNJM1JVWJ
	rvfaXGrJi+7C5H6ZyrhFnYtVq/t13IRRgABkQjMZeLLa5O46BgEeMFIx2TsZo5xCeRuYCZX62WjUH
	eLGMrYetA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0n6D-0001Gl-Go; Thu, 22 Aug 2019 13:25:57 +0000
Received: from smtp-fw-4101.amazon.com ([72.21.198.25])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0n69-0001G0-UH
 for linux-riscv@lists.infradead.org; Thu, 22 Aug 2019 13:25:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
 t=1566480353; x=1598016353;
 h=subject:to:cc:references:from:message-id:date:
 mime-version:in-reply-to:content-transfer-encoding;
 bh=mwRBD9EOb8uY+yv27uyHzIbJidcw7vRlBY9lRrGCTsk=;
 b=ZhMe53JtdCZAjEGXPBmNL0/hgFzkTebpSWo87COs7/04fxoYM7VgSLlI
 Srm3tTbxtnVrn+UspFsUYbS4opTi42CXvbl4E9RcoLXVuLfJbzmwtvJTf
 kIhVIXYu38bquKBe4wv+POdeSVGAuFCHwaAC8fb5pQi+R63PqKYbSw27A I=;
X-IronPort-AV: E=Sophos;i="5.64,416,1559520000"; d="scan'208";a="780765399"
Received: from iad6-co-svc-p1-lb1-vlan3.amazon.com (HELO
 email-inbound-relay-2c-168cbb73.us-west-2.amazon.com) ([10.124.125.6])
 by smtp-border-fw-out-4101.iad4.amazon.com with ESMTP;
 22 Aug 2019 13:25:49 +0000
Received: from EX13MTAUWC001.ant.amazon.com
 (pdx4-ws-svc-p6-lb7-vlan2.pdx.amazon.com [10.170.41.162])
 by email-inbound-relay-2c-168cbb73.us-west-2.amazon.com (Postfix) with ESMTPS
 id 97A39A2796; Thu, 22 Aug 2019 13:25:48 +0000 (UTC)
Received: from EX13D20UWC001.ant.amazon.com (10.43.162.244) by
 EX13MTAUWC001.ant.amazon.com (10.43.162.135) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Thu, 22 Aug 2019 13:25:48 +0000
Received: from 38f9d3867b82.ant.amazon.com (10.43.162.125) by
 EX13D20UWC001.ant.amazon.com (10.43.162.244) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Thu, 22 Aug 2019 13:25:43 +0000
Subject: Re: [PATCH v5 10/20] RISC-V: KVM: Handle MMIO exits for VCPU
To: Anup Patel <anup@brainfault.org>
References: <20190822084131.114764-1-anup.patel@wdc.com>
 <20190822084131.114764-11-anup.patel@wdc.com>
 <917cea87-42c0-e50a-6508-d5b577c8b702@amazon.com>
 <CAAhSdy2QtZRKvs0Hr-mZuVsb7sVkweeW-RpvhObZR009UbA7KA@mail.gmail.com>
From: Alexander Graf <graf@amazon.com>
Message-ID: <4fe83f28-3a55-e74c-0d40-1cd556015fea@amazon.com>
Date: Thu, 22 Aug 2019 15:25:41 +0200
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAAhSdy2QtZRKvs0Hr-mZuVsb7sVkweeW-RpvhObZR009UbA7KA@mail.gmail.com>
Content-Language: en-US
X-Originating-IP: [10.43.162.125]
X-ClientProxiedBy: EX13D18UWC004.ant.amazon.com (10.43.162.77) To
 EX13D20UWC001.ant.amazon.com (10.43.162.244)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_062554_176514_2E740444 
X-CRM114-Status: GOOD (  20.63  )
X-Spam-Score: -12.7 (------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-12.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [72.21.198.25 listed in list.dnswl.org]
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
 Alistair Francis <Alistair.Francis@wdc.com>, Paul
 Walmsley <paul.walmsley@sifive.com>, Paolo Bonzini <pbonzini@redhat.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org



On 22.08.19 14:33, Anup Patel wrote:
> On Thu, Aug 22, 2019 at 5:44 PM Alexander Graf <graf@amazon.com> wrote:
>>
>> On 22.08.19 10:44, Anup Patel wrote:
>>> We will get stage2 page faults whenever Guest/VM access SW emulated
>>> MMIO device or unmapped Guest RAM.
>>>
>>> This patch implements MMIO read/write emulation by extracting MMIO
>>> details from the trapped load/store instruction and forwarding the
>>> MMIO read/write to user-space. The actual MMIO emulation will happen
>>> in user-space and KVM kernel module will only take care of register
>>> updates before resuming the trapped VCPU.
>>>
>>> The handling for stage2 page faults for unmapped Guest RAM will be
>>> implemeted by a separate patch later.
>>>
>>> Signed-off-by: Anup Patel <anup.patel@wdc.com>
>>> Acked-by: Paolo Bonzini <pbonzini@redhat.com>
>>> Reviewed-by: Paolo Bonzini <pbonzini@redhat.com>
>>> ---
>>>    arch/riscv/include/asm/kvm_host.h |  11 +
>>>    arch/riscv/kvm/mmu.c              |   7 +
>>>    arch/riscv/kvm/vcpu_exit.c        | 436 +++++++++++++++++++++++++++++-
>>>    3 files changed, 451 insertions(+), 3 deletions(-)
>>>
>>> diff --git a/arch/riscv/include/asm/kvm_host.h b/arch/riscv/include/asm/kvm_host.h
>>> index 18f1097f1d8d..4388bace6d70 100644
>>> --- a/arch/riscv/include/asm/kvm_host.h
>>> +++ b/arch/riscv/include/asm/kvm_host.h
>>> @@ -53,6 +53,12 @@ struct kvm_arch {
>>>        phys_addr_t pgd_phys;
>>>    };
>>>
>>> +struct kvm_mmio_decode {
>>> +     unsigned long insn;
>>> +     int len;
>>> +     int shift;
>>> +};
>>> +
>>>    struct kvm_cpu_context {
>>>        unsigned long zero;
>>>        unsigned long ra;
>>> @@ -141,6 +147,9 @@ struct kvm_vcpu_arch {
>>>        unsigned long irqs_pending;
>>>        unsigned long irqs_pending_mask;
>>>
>>> +     /* MMIO instruction details */
>>> +     struct kvm_mmio_decode mmio_decode;
>>> +
>>>        /* VCPU power-off state */
>>>        bool power_off;
>>>
>>> @@ -160,6 +169,8 @@ static inline void kvm_arch_vcpu_block_finish(struct kvm_vcpu *vcpu) {}
>>>    int kvm_riscv_setup_vsip(void);
>>>    void kvm_riscv_cleanup_vsip(void);
>>>
>>> +int kvm_riscv_stage2_map(struct kvm_vcpu *vcpu, gpa_t gpa, unsigned long hva,
>>> +                      bool is_write);
>>>    void kvm_riscv_stage2_flush_cache(struct kvm_vcpu *vcpu);
>>>    int kvm_riscv_stage2_alloc_pgd(struct kvm *kvm);
>>>    void kvm_riscv_stage2_free_pgd(struct kvm *kvm);
>>> diff --git a/arch/riscv/kvm/mmu.c b/arch/riscv/kvm/mmu.c
>>> index 04dd089b86ff..2b965f9aac07 100644
>>> --- a/arch/riscv/kvm/mmu.c
>>> +++ b/arch/riscv/kvm/mmu.c
>>> @@ -61,6 +61,13 @@ int kvm_arch_prepare_memory_region(struct kvm *kvm,
>>>        return 0;
>>>    }
>>>
>>> +int kvm_riscv_stage2_map(struct kvm_vcpu *vcpu, gpa_t gpa, unsigned long hva,
>>> +                      bool is_write)
>>> +{
>>> +     /* TODO: */
>>> +     return 0;
>>> +}
>>> +
>>>    void kvm_riscv_stage2_flush_cache(struct kvm_vcpu *vcpu)
>>>    {
>>>        /* TODO: */
>>> diff --git a/arch/riscv/kvm/vcpu_exit.c b/arch/riscv/kvm/vcpu_exit.c
>>> index e4d7c8f0807a..efc06198c259 100644
>>> --- a/arch/riscv/kvm/vcpu_exit.c
>>> +++ b/arch/riscv/kvm/vcpu_exit.c
>>> @@ -6,9 +6,371 @@
>>>     *     Anup Patel <anup.patel@wdc.com>
>>>     */
>>>
>>> +#include <linux/bitops.h>
>>>    #include <linux/errno.h>
>>>    #include <linux/err.h>
>>>    #include <linux/kvm_host.h>
>>> +#include <asm/csr.h>
>>> +
>>> +#define INSN_MATCH_LB                0x3
>>> +#define INSN_MASK_LB         0x707f
>>> +#define INSN_MATCH_LH                0x1003
>>> +#define INSN_MASK_LH         0x707f
>>> +#define INSN_MATCH_LW                0x2003
>>> +#define INSN_MASK_LW         0x707f
>>> +#define INSN_MATCH_LD                0x3003
>>> +#define INSN_MASK_LD         0x707f
>>> +#define INSN_MATCH_LBU               0x4003
>>> +#define INSN_MASK_LBU                0x707f
>>> +#define INSN_MATCH_LHU               0x5003
>>> +#define INSN_MASK_LHU                0x707f
>>> +#define INSN_MATCH_LWU               0x6003
>>> +#define INSN_MASK_LWU                0x707f
>>> +#define INSN_MATCH_SB                0x23
>>> +#define INSN_MASK_SB         0x707f
>>> +#define INSN_MATCH_SH                0x1023
>>> +#define INSN_MASK_SH         0x707f
>>> +#define INSN_MATCH_SW                0x2023
>>> +#define INSN_MASK_SW         0x707f
>>> +#define INSN_MATCH_SD                0x3023
>>> +#define INSN_MASK_SD         0x707f
>>> +
>>> +#define INSN_MATCH_C_LD              0x6000
>>> +#define INSN_MASK_C_LD               0xe003
>>> +#define INSN_MATCH_C_SD              0xe000
>>> +#define INSN_MASK_C_SD               0xe003
>>> +#define INSN_MATCH_C_LW              0x4000
>>> +#define INSN_MASK_C_LW               0xe003
>>> +#define INSN_MATCH_C_SW              0xc000
>>> +#define INSN_MASK_C_SW               0xe003
>>> +#define INSN_MATCH_C_LDSP    0x6002
>>> +#define INSN_MASK_C_LDSP     0xe003
>>> +#define INSN_MATCH_C_SDSP    0xe002
>>> +#define INSN_MASK_C_SDSP     0xe003
>>> +#define INSN_MATCH_C_LWSP    0x4002
>>> +#define INSN_MASK_C_LWSP     0xe003
>>> +#define INSN_MATCH_C_SWSP    0xc002
>>> +#define INSN_MASK_C_SWSP     0xe003
>>> +
>>> +#define INSN_LEN(insn)               ((((insn) & 0x3) < 0x3) ? 2 : 4)
>>> +
>>> +#ifdef CONFIG_64BIT
>>> +#define LOG_REGBYTES         3
>>> +#else
>>> +#define LOG_REGBYTES         2
>>> +#endif
>>> +#define REGBYTES             (1 << LOG_REGBYTES)
>>> +
>>> +#define SH_RD                        7
>>> +#define SH_RS1                       15
>>> +#define SH_RS2                       20
>>> +#define SH_RS2C                      2
>>> +
>>> +#define RV_X(x, s, n)                (((x) >> (s)) & ((1 << (n)) - 1))
>>> +#define RVC_LW_IMM(x)                ((RV_X(x, 6, 1) << 2) | \
>>> +                              (RV_X(x, 10, 3) << 3) | \
>>> +                              (RV_X(x, 5, 1) << 6))
>>> +#define RVC_LD_IMM(x)                ((RV_X(x, 10, 3) << 3) | \
>>> +                              (RV_X(x, 5, 2) << 6))
>>> +#define RVC_LWSP_IMM(x)              ((RV_X(x, 4, 3) << 2) | \
>>> +                              (RV_X(x, 12, 1) << 5) | \
>>> +                              (RV_X(x, 2, 2) << 6))
>>> +#define RVC_LDSP_IMM(x)              ((RV_X(x, 5, 2) << 3) | \
>>> +                              (RV_X(x, 12, 1) << 5) | \
>>> +                              (RV_X(x, 2, 3) << 6))
>>> +#define RVC_SWSP_IMM(x)              ((RV_X(x, 9, 4) << 2) | \
>>> +                              (RV_X(x, 7, 2) << 6))
>>> +#define RVC_SDSP_IMM(x)              ((RV_X(x, 10, 3) << 3) | \
>>> +                              (RV_X(x, 7, 3) << 6))
>>> +#define RVC_RS1S(insn)               (8 + RV_X(insn, SH_RD, 3))
>>> +#define RVC_RS2S(insn)               (8 + RV_X(insn, SH_RS2C, 3))
>>> +#define RVC_RS2(insn)                RV_X(insn, SH_RS2C, 5)
>>> +
>>> +#define SHIFT_RIGHT(x, y)            \
>>> +     ((y) < 0 ? ((x) << -(y)) : ((x) >> (y)))
>>> +
>>> +#define REG_MASK                     \
>>> +     ((1 << (5 + LOG_REGBYTES)) - (1 << LOG_REGBYTES))
>>> +
>>> +#define REG_OFFSET(insn, pos)                \
>>> +     (SHIFT_RIGHT((insn), (pos) - LOG_REGBYTES) & REG_MASK)
>>> +
>>> +#define REG_PTR(insn, pos, regs)     \
>>> +     (ulong *)((ulong)(regs) + REG_OFFSET(insn, pos))
>>> +
>>> +#define GET_RM(insn)         (((insn) >> 12) & 7)
>>> +
>>> +#define GET_RS1(insn, regs)  (*REG_PTR(insn, SH_RS1, regs))
>>> +#define GET_RS2(insn, regs)  (*REG_PTR(insn, SH_RS2, regs))
>>> +#define GET_RS1S(insn, regs) (*REG_PTR(RVC_RS1S(insn), 0, regs))
>>> +#define GET_RS2S(insn, regs) (*REG_PTR(RVC_RS2S(insn), 0, regs))
>>> +#define GET_RS2C(insn, regs) (*REG_PTR(insn, SH_RS2C, regs))
>>> +#define GET_SP(regs)         (*REG_PTR(2, 0, regs))
>>> +#define SET_RD(insn, regs, val)      (*REG_PTR(insn, SH_RD, regs) = (val))
>>> +#define IMM_I(insn)          ((s32)(insn) >> 20)
>>> +#define IMM_S(insn)          (((s32)(insn) >> 25 << 5) | \
>>> +                              (s32)(((insn) >> 7) & 0x1f))
>>> +#define MASK_FUNCT3          0x7000
>>> +
>>> +#define STR(x)                       XSTR(x)
>>> +#define XSTR(x)                      #x
>>> +
>>> +/* TODO: Handle traps due to unpriv load and redirect it back to VS-mode */
>>> +static ulong get_insn(struct kvm_vcpu *vcpu)
>>> +{
>>> +     ulong __sepc = vcpu->arch.guest_context.sepc;
>>> +     ulong __hstatus, __sstatus, __vsstatus;
>>> +#ifdef CONFIG_RISCV_ISA_C
>>> +     ulong rvc_mask = 3, tmp;
>>> +#endif
>>> +     ulong flags, val;
>>> +
>>> +     local_irq_save(flags);
>>> +
>>> +     __vsstatus = csr_read(CSR_VSSTATUS);
>>> +     __sstatus = csr_read(CSR_SSTATUS);
>>> +     __hstatus = csr_read(CSR_HSTATUS);
>>> +
>>> +     csr_write(CSR_VSSTATUS, __vsstatus | SR_MXR);
>>> +     csr_write(CSR_SSTATUS, vcpu->arch.guest_context.sstatus | SR_MXR);
>>> +     csr_write(CSR_HSTATUS, vcpu->arch.guest_context.hstatus | HSTATUS_SPRV);
>>
>> What happens when the insn load triggers a page fault, maybe because the
>> guest was malicious and did
>>
>>     1) Run on page 0x1000
>>     2) Remove map for 0x1000, do *not* flush TLB
>>     3) Trigger MMIO
>>
>> That would DOS the host here, as the host kernel would continue running
>> in guest address space, right?
> 
> Yes, we can certainly fault while accessing Guest instruction. We will
> be fixing this issue in a followup series. We have mentioned this in cover
> letter as well.

I don't think the cover letter is the right place for such a comment. 
Please definitely put it into the code as well, pointing out that this 
is a known bug. Or even better yet: Fix it up properly :).

In fact, with a bug that dramatic, I'm not even sure we can safely 
include the code. We're consciously allowing user space to DOS the kernel.

> 
> BTW, RISC-V spec is going to further improve to provide easy
> access of faulting instruction to Hypervisor.
> (Refer, https://github.com/riscv/riscv-isa-manual/issues/431)

Yes, we have similar extensions on other archs. Is this going to be an 
optional addition or a mandatory bit of the hypervisor spec? If it's not 
mandatory, we can not rely on it, so the current path has to be safe.


Alex

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
