Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B04E8F048C
	for <lists+linux-riscv@lfdr.de>; Tue,  5 Nov 2019 18:57:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zHade6eV6Q5GI44CJrST0eRr0J3myvpaHgaEMSntjts=; b=G7KF6FLenT8Gp5
	v4NpWvozu22n/GN+z72wdTxGnu9EKkXy/giNSMz67FJkOLfeD0/5XriZOeuucdKcz/hHUFxLDOj8N
	7Re0F6d+vv13SRMT5REOwRQyrr11FkjQvRkrOLO+yJqARw0dlqHPndDDOv6CTzGC7VKoOfu3dlZs/
	SYdl454mDwAkWPC8+I/Z/x7fmUhmmuz6e8QEN7QbFLAPEvgq06LJVxH2p1t6XYN/nSNI01alT1j4l
	6Og2P8yIaoKcgdL7B9PO5SBFyfoTmphT8RpoF/4e1hyZGVZqZsu0TZ6h9JSEGgEFFd3jAw4YAKdt/
	x4PUb/scZEIW5bpGRnYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS35L-00077u-Vr; Tue, 05 Nov 2019 17:57:43 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS35G-00076v-7q
 for linux-riscv@lists.infradead.org; Tue, 05 Nov 2019 17:57:41 +0000
Received: by mail-pf1-x443.google.com with SMTP id v19so16118318pfm.3
 for <linux-riscv@lists.infradead.org>; Tue, 05 Nov 2019 09:57:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=c0mtHUCtv4Yo3jGG/+KHkyMmGtxcfes6cDs+e6Frq+s=;
 b=UphG7W/P8xgSpCGuYHEcZ08huUl9wAKSpHkU0pRF86YW294robH5U3MqecxtxB6oCK
 ghmshSzuPxqNIEl0pRmOpXhK+JSdeuXBMZZQdliIvGmY2WqMTsFI6YmHrUUay0m0vLMj
 pRMc5fpSk002fCAh6WlyuKjsF8CsUEM8ZJ/sJBnSNzNw3rXWKdj9orqY/NeOL2oQRzAZ
 LsEjB0XebUQfcm9HTSmJIBzjhjugpgtWWRPshwVCz70zoxvT2rMb/DFd0Ax1y8Doi6eP
 JK6Hv3mAdWvnViOeiZID2I+GewsXsn0du7KlL9Zc3Sigzl6ksqY7oJdjTg2w3pXfAW1X
 mUQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=c0mtHUCtv4Yo3jGG/+KHkyMmGtxcfes6cDs+e6Frq+s=;
 b=SQY+e11Vy3IcgPQkFsnwpNUHWvf/mX8Aktg0V+uWwnSMgk5U77VF3xhMkMcnsrS6cA
 q5NYlRqhnLpC+YpJjybiudpGw0t/hBL35+34kXKz/+hqspq4WTHZTEeHvaRGnsI54EQJ
 q/9vaO1T7j1/0FTiaLXvGdVv+Y8RK+KbGW19L7I19pVY93dYIm5eYDy8AuJPjelARl1T
 +dTUtSZHk3PQNWLADnYephsy7AysXq5II09/RGtIo0azuxE+f0pS/gatOm/bliu9em4N
 q7AvheIFhjf47Ek0RJFC/0MMSftnBAAEyDRGl4kNqBLFdFknd6TI8Tq1aHPb+jyBlr/H
 B7fQ==
X-Gm-Message-State: APjAAAVcE3c2yfjGJdGItp4QlmWi8/S8M3vlh7j1iCDl2wdObxWRTk5g
 L2LgcwgxUOdEBiY3CH2DdU8veA==
X-Google-Smtp-Source: APXvYqy3wwWydxrHeyjc6Eb35cWY/2/qFcCcpx8amSpa/BE+rR4sVcHxNi9WoyJzsyrfNormQeSjWw==
X-Received: by 2002:a63:fa0d:: with SMTP id y13mr25432401pgh.18.1572976657179; 
 Tue, 05 Nov 2019 09:57:37 -0800 (PST)
Received: from localhost ([64.62.168.194])
 by smtp.gmail.com with ESMTPSA id w15sm6061286pfn.13.2019.11.05.09.57.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Nov 2019 09:57:36 -0800 (PST)
Date: Tue, 5 Nov 2019 09:57:35 -0800 (PST)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: tglx@linutronix.de, jason@lakedaemon.net, maz@kernel.org
Subject: Re: [PATCH 01/12] riscv: abstract out CSR names for supervisor vs
 machine mode
In-Reply-To: <20191028121043.22934-2-hch@lst.de>
Message-ID: <alpine.DEB.2.21.9999.1911050956230.20606@viisi.sifive.com>
References: <20191028121043.22934-1-hch@lst.de>
 <20191028121043.22934-2-hch@lst.de>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_095738_315327_36B0C470 
X-CRM114-Status: GOOD (  22.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Damien Le Moal <damien.lemoal@wdc.com>, Palmer Dabbelt <palmer@sifive.com>,
 Christoph Hellwig <hch@lst.de>, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Jason, Marc, Thomas,

On Mon, 28 Oct 2019, Christoph Hellwig wrote:

> Many of the privileged CSRs exist in a supervisor and machine version
> that are used very similarly.  Provide versions of the CSR names and
> fields that map to either the S-mode or M-mode variant depending on
> a new CONFIG_RISCV_M_MODE kconfig symbol.
> 
> Contains contributions from Damien Le Moal <Damien.LeMoal@wdc.com>
> and Paul Walmsley <paul.walmsley@sifive.com>.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>

Care to give a quick ack to the drivers/irqchip changes?


thanks,

- Paul


> ---
>  arch/riscv/Kconfig                 |  4 ++
>  arch/riscv/include/asm/csr.h       | 72 +++++++++++++++++++++++++----
>  arch/riscv/include/asm/irqflags.h  | 12 ++---
>  arch/riscv/include/asm/processor.h |  2 +-
>  arch/riscv/include/asm/ptrace.h    | 16 +++----
>  arch/riscv/include/asm/switch_to.h | 10 ++--
>  arch/riscv/kernel/asm-offsets.c    |  8 ++--
>  arch/riscv/kernel/entry.S          | 74 +++++++++++++++++-------------
>  arch/riscv/kernel/fpu.S            |  8 ++--
>  arch/riscv/kernel/head.S           | 12 ++---
>  arch/riscv/kernel/irq.c            | 17 ++-----
>  arch/riscv/kernel/perf_callchain.c |  2 +-
>  arch/riscv/kernel/process.c        | 17 +++----
>  arch/riscv/kernel/signal.c         | 21 ++++-----
>  arch/riscv/kernel/smp.c            |  2 +-
>  arch/riscv/kernel/traps.c          | 16 +++----
>  arch/riscv/lib/uaccess.S           | 12 ++---
>  arch/riscv/mm/extable.c            |  4 +-
>  arch/riscv/mm/fault.c              |  6 +--
>  drivers/clocksource/timer-riscv.c  |  8 ++--
>  drivers/irqchip/irq-sifive-plic.c  | 11 +++--
>  21 files changed, 199 insertions(+), 135 deletions(-)
> 
> diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
> index 8eebbc8860bb..86b7e8b0471c 100644
> --- a/arch/riscv/Kconfig
> +++ b/arch/riscv/Kconfig
> @@ -72,6 +72,10 @@ config ARCH_MMAP_RND_BITS_MAX
>  	default 24 if 64BIT # SV39 based
>  	default 17
>  
> +# set if we run in machine mode, cleared if we run in supervisor mode
> +config RISCV_M_MODE
> +	bool
> +
>  config MMU
>  	def_bool y
>  
> diff --git a/arch/riscv/include/asm/csr.h b/arch/riscv/include/asm/csr.h
> index a18923fa23c8..0ab642811028 100644
> --- a/arch/riscv/include/asm/csr.h
> +++ b/arch/riscv/include/asm/csr.h
> @@ -11,8 +11,11 @@
>  
>  /* Status register flags */
>  #define SR_SIE		_AC(0x00000002, UL) /* Supervisor Interrupt Enable */
> +#define SR_MIE		_AC(0x00000008, UL) /* Machine Interrupt Enable */
>  #define SR_SPIE		_AC(0x00000020, UL) /* Previous Supervisor IE */
> +#define SR_MPIE		_AC(0x00000080, UL) /* Previous Machine IE */
>  #define SR_SPP		_AC(0x00000100, UL) /* Previously Supervisor */
> +#define SR_MPP		_AC(0x00001800, UL) /* Previously Machine */
>  #define SR_SUM		_AC(0x00040000, UL) /* Supervisor User Memory Access */
>  
>  #define SR_FS		_AC(0x00006000, UL) /* Floating-point Status */
> @@ -44,9 +47,10 @@
>  #define SATP_MODE	SATP_MODE_39
>  #endif
>  
> -/* SCAUSE */
> -#define SCAUSE_IRQ_FLAG		(_AC(1, UL) << (__riscv_xlen - 1))
> +/* Exception cause high bit - is an interrupt if set */
> +#define CAUSE_IRQ_FLAG		(_AC(1, UL) << (__riscv_xlen - 1))
>  
> +/* Interrupt causes (minus the high bit) */
>  #define IRQ_U_SOFT		0
>  #define IRQ_S_SOFT		1
>  #define IRQ_M_SOFT		3
> @@ -57,6 +61,7 @@
>  #define IRQ_S_EXT		9
>  #define IRQ_M_EXT		11
>  
> +/* Exception causes */
>  #define EXC_INST_MISALIGNED	0
>  #define EXC_INST_ACCESS		1
>  #define EXC_BREAKPOINT		3
> @@ -67,14 +72,14 @@
>  #define EXC_LOAD_PAGE_FAULT	13
>  #define EXC_STORE_PAGE_FAULT	15
>  
> -/* SIE (Interrupt Enable) and SIP (Interrupt Pending) flags */
> -#define SIE_SSIE		(_AC(0x1, UL) << IRQ_S_SOFT)
> -#define SIE_STIE		(_AC(0x1, UL) << IRQ_S_TIMER)
> -#define SIE_SEIE		(_AC(0x1, UL) << IRQ_S_EXT)
> -
> +/* symbolic CSR names: */
>  #define CSR_CYCLE		0xc00
>  #define CSR_TIME		0xc01
>  #define CSR_INSTRET		0xc02
> +#define CSR_CYCLEH		0xc80
> +#define CSR_TIMEH		0xc81
> +#define CSR_INSTRETH		0xc82
> +
>  #define CSR_SSTATUS		0x100
>  #define CSR_SIE			0x104
>  #define CSR_STVEC		0x105
> @@ -85,9 +90,56 @@
>  #define CSR_STVAL		0x143
>  #define CSR_SIP			0x144
>  #define CSR_SATP		0x180
> -#define CSR_CYCLEH		0xc80
> -#define CSR_TIMEH		0xc81
> -#define CSR_INSTRETH		0xc82
> +
> +#define CSR_MSTATUS		0x300
> +#define CSR_MIE			0x304
> +#define CSR_MTVEC		0x305
> +#define CSR_MSCRATCH		0x340
> +#define CSR_MEPC		0x341
> +#define CSR_MCAUSE		0x342
> +#define CSR_MTVAL		0x343
> +#define CSR_MIP			0x344
> +
> +#ifdef CONFIG_RISCV_M_MODE
> +# define CSR_STATUS	CSR_MSTATUS
> +# define CSR_IE		CSR_MIE
> +# define CSR_TVEC	CSR_MTVEC
> +# define CSR_SCRATCH	CSR_MSCRATCH
> +# define CSR_EPC	CSR_MEPC
> +# define CSR_CAUSE	CSR_MCAUSE
> +# define CSR_TVAL	CSR_MTVAL
> +# define CSR_IP		CSR_MIP
> +
> +# define SR_IE		SR_MIE
> +# define SR_PIE		SR_MPIE
> +# define SR_PP		SR_MPP
> +
> +# define IRQ_SOFT	IRQ_M_SOFT
> +# define IRQ_TIMER	IRQ_M_TIMER
> +# define IRQ_EXT	IRQ_M_EXT
> +#else /* CONFIG_RISCV_M_MODE */
> +# define CSR_STATUS	CSR_SSTATUS
> +# define CSR_IE		CSR_SIE
> +# define CSR_TVEC	CSR_STVEC
> +# define CSR_SCRATCH	CSR_SSCRATCH
> +# define CSR_EPC	CSR_SEPC
> +# define CSR_CAUSE	CSR_SCAUSE
> +# define CSR_TVAL	CSR_STVAL
> +# define CSR_IP		CSR_SIP
> +
> +# define SR_IE		SR_SIE
> +# define SR_PIE		SR_SPIE
> +# define SR_PP		SR_SPP
> +
> +# define IRQ_SOFT	IRQ_S_SOFT
> +# define IRQ_TIMER	IRQ_S_TIMER
> +# define IRQ_EXT	IRQ_S_EXT
> +#endif /* CONFIG_RISCV_M_MODE */
> +
> +/* IE/IP (Supervisor/Machine Interrupt Enable/Pending) flags */
> +#define IE_SIE		(_AC(0x1, UL) << IRQ_SOFT)
> +#define IE_TIE		(_AC(0x1, UL) << IRQ_TIMER)
> +#define IE_EIE		(_AC(0x1, UL) << IRQ_EXT)
>  
>  #ifndef __ASSEMBLY__
>  
> diff --git a/arch/riscv/include/asm/irqflags.h b/arch/riscv/include/asm/irqflags.h
> index e70f647ce3b7..08d4d6a5b7e9 100644
> --- a/arch/riscv/include/asm/irqflags.h
> +++ b/arch/riscv/include/asm/irqflags.h
> @@ -13,31 +13,31 @@
>  /* read interrupt enabled status */
>  static inline unsigned long arch_local_save_flags(void)
>  {
> -	return csr_read(CSR_SSTATUS);
> +	return csr_read(CSR_STATUS);
>  }
>  
>  /* unconditionally enable interrupts */
>  static inline void arch_local_irq_enable(void)
>  {
> -	csr_set(CSR_SSTATUS, SR_SIE);
> +	csr_set(CSR_STATUS, SR_IE);
>  }
>  
>  /* unconditionally disable interrupts */
>  static inline void arch_local_irq_disable(void)
>  {
> -	csr_clear(CSR_SSTATUS, SR_SIE);
> +	csr_clear(CSR_STATUS, SR_IE);
>  }
>  
>  /* get status and disable interrupts */
>  static inline unsigned long arch_local_irq_save(void)
>  {
> -	return csr_read_clear(CSR_SSTATUS, SR_SIE);
> +	return csr_read_clear(CSR_STATUS, SR_IE);
>  }
>  
>  /* test flags */
>  static inline int arch_irqs_disabled_flags(unsigned long flags)
>  {
> -	return !(flags & SR_SIE);
> +	return !(flags & SR_IE);
>  }
>  
>  /* test hardware interrupt enable bit */
> @@ -49,7 +49,7 @@ static inline int arch_irqs_disabled(void)
>  /* set interrupt enabled status */
>  static inline void arch_local_irq_restore(unsigned long flags)
>  {
> -	csr_set(CSR_SSTATUS, flags & SR_SIE);
> +	csr_set(CSR_STATUS, flags & SR_IE);
>  }
>  
>  #endif /* _ASM_RISCV_IRQFLAGS_H */
> diff --git a/arch/riscv/include/asm/processor.h b/arch/riscv/include/asm/processor.h
> index f539149d04c2..3ddb798264f1 100644
> --- a/arch/riscv/include/asm/processor.h
> +++ b/arch/riscv/include/asm/processor.h
> @@ -42,7 +42,7 @@ struct thread_struct {
>  	((struct pt_regs *)(task_stack_page(tsk) + THREAD_SIZE		\
>  			    - ALIGN(sizeof(struct pt_regs), STACK_ALIGN)))
>  
> -#define KSTK_EIP(tsk)		(task_pt_regs(tsk)->sepc)
> +#define KSTK_EIP(tsk)		(task_pt_regs(tsk)->epc)
>  #define KSTK_ESP(tsk)		(task_pt_regs(tsk)->sp)
>  
>  
> diff --git a/arch/riscv/include/asm/ptrace.h b/arch/riscv/include/asm/ptrace.h
> index d48d1e13973c..ee49f80c9533 100644
> --- a/arch/riscv/include/asm/ptrace.h
> +++ b/arch/riscv/include/asm/ptrace.h
> @@ -12,7 +12,7 @@
>  #ifndef __ASSEMBLY__
>  
>  struct pt_regs {
> -	unsigned long sepc;
> +	unsigned long epc;
>  	unsigned long ra;
>  	unsigned long sp;
>  	unsigned long gp;
> @@ -44,10 +44,10 @@ struct pt_regs {
>  	unsigned long t4;
>  	unsigned long t5;
>  	unsigned long t6;
> -	/* Supervisor CSRs */
> -	unsigned long sstatus;
> -	unsigned long sbadaddr;
> -	unsigned long scause;
> +	/* Supervisor/Machine CSRs */
> +	unsigned long status;
> +	unsigned long badaddr;
> +	unsigned long cause;
>  	/* a0 value before the syscall */
>  	unsigned long orig_a0;
>  };
> @@ -58,18 +58,18 @@ struct pt_regs {
>  #define REG_FMT "%08lx"
>  #endif
>  
> -#define user_mode(regs) (((regs)->sstatus & SR_SPP) == 0)
> +#define user_mode(regs) (((regs)->status & SR_PP) == 0)
>  
>  
>  /* Helpers for working with the instruction pointer */
>  static inline unsigned long instruction_pointer(struct pt_regs *regs)
>  {
> -	return regs->sepc;
> +	return regs->epc;
>  }
>  static inline void instruction_pointer_set(struct pt_regs *regs,
>  					   unsigned long val)
>  {
> -	regs->sepc = val;
> +	regs->epc = val;
>  }
>  
>  #define profile_pc(regs) instruction_pointer(regs)
> diff --git a/arch/riscv/include/asm/switch_to.h b/arch/riscv/include/asm/switch_to.h
> index f0227bdce0f0..8b5c5c8c36fa 100644
> --- a/arch/riscv/include/asm/switch_to.h
> +++ b/arch/riscv/include/asm/switch_to.h
> @@ -16,19 +16,19 @@ extern void __fstate_restore(struct task_struct *restore_from);
>  
>  static inline void __fstate_clean(struct pt_regs *regs)
>  {
> -	regs->sstatus = (regs->sstatus & ~SR_FS) | SR_FS_CLEAN;
> +	regs->status = (regs->status & ~SR_FS) | SR_FS_CLEAN;
>  }
>  
>  static inline void fstate_off(struct task_struct *task,
>  			      struct pt_regs *regs)
>  {
> -	regs->sstatus = (regs->sstatus & ~SR_FS) | SR_FS_OFF;
> +	regs->status = (regs->status & ~SR_FS) | SR_FS_OFF;
>  }
>  
>  static inline void fstate_save(struct task_struct *task,
>  			       struct pt_regs *regs)
>  {
> -	if ((regs->sstatus & SR_FS) == SR_FS_DIRTY) {
> +	if ((regs->status & SR_FS) == SR_FS_DIRTY) {
>  		__fstate_save(task);
>  		__fstate_clean(regs);
>  	}
> @@ -37,7 +37,7 @@ static inline void fstate_save(struct task_struct *task,
>  static inline void fstate_restore(struct task_struct *task,
>  				  struct pt_regs *regs)
>  {
> -	if ((regs->sstatus & SR_FS) != SR_FS_OFF) {
> +	if ((regs->status & SR_FS) != SR_FS_OFF) {
>  		__fstate_restore(task);
>  		__fstate_clean(regs);
>  	}
> @@ -49,7 +49,7 @@ static inline void __switch_to_aux(struct task_struct *prev,
>  	struct pt_regs *regs;
>  
>  	regs = task_pt_regs(prev);
> -	if (unlikely(regs->sstatus & SR_SD))
> +	if (unlikely(regs->status & SR_SD))
>  		fstate_save(prev, regs);
>  	fstate_restore(next, task_pt_regs(next));
>  }
> diff --git a/arch/riscv/kernel/asm-offsets.c b/arch/riscv/kernel/asm-offsets.c
> index 9f5628c38ac9..07cb9c10de4e 100644
> --- a/arch/riscv/kernel/asm-offsets.c
> +++ b/arch/riscv/kernel/asm-offsets.c
> @@ -71,7 +71,7 @@ void asm_offsets(void)
>  	OFFSET(TASK_THREAD_FCSR, task_struct, thread.fstate.fcsr);
>  
>  	DEFINE(PT_SIZE, sizeof(struct pt_regs));
> -	OFFSET(PT_SEPC, pt_regs, sepc);
> +	OFFSET(PT_EPC, pt_regs, epc);
>  	OFFSET(PT_RA, pt_regs, ra);
>  	OFFSET(PT_FP, pt_regs, s0);
>  	OFFSET(PT_S0, pt_regs, s0);
> @@ -105,9 +105,9 @@ void asm_offsets(void)
>  	OFFSET(PT_T6, pt_regs, t6);
>  	OFFSET(PT_GP, pt_regs, gp);
>  	OFFSET(PT_ORIG_A0, pt_regs, orig_a0);
> -	OFFSET(PT_SSTATUS, pt_regs, sstatus);
> -	OFFSET(PT_SBADADDR, pt_regs, sbadaddr);
> -	OFFSET(PT_SCAUSE, pt_regs, scause);
> +	OFFSET(PT_STATUS, pt_regs, status);
> +	OFFSET(PT_BADADDR, pt_regs, badaddr);
> +	OFFSET(PT_CAUSE, pt_regs, cause);
>  
>  	/*
>  	 * THREAD_{F,X}* might be larger than a S-type offset can handle, but
> diff --git a/arch/riscv/kernel/entry.S b/arch/riscv/kernel/entry.S
> index 8ca479831142..b84f8d7f4911 100644
> --- a/arch/riscv/kernel/entry.S
> +++ b/arch/riscv/kernel/entry.S
> @@ -26,14 +26,14 @@
>  
>  	/*
>  	 * If coming from userspace, preserve the user thread pointer and load
> -	 * the kernel thread pointer.  If we came from the kernel, sscratch
> -	 * will contain 0, and we should continue on the current TP.
> +	 * the kernel thread pointer.  If we came from the kernel, the scratch
> +	 * register will contain 0, and we should continue on the current TP.
>  	 */
> -	csrrw tp, CSR_SSCRATCH, tp
> +	csrrw tp, CSR_SCRATCH, tp
>  	bnez tp, _save_context
>  
>  _restore_kernel_tpsp:
> -	csrr tp, CSR_SSCRATCH
> +	csrr tp, CSR_SCRATCH
>  	REG_S sp, TASK_TI_KERNEL_SP(tp)
>  _save_context:
>  	REG_S sp, TASK_TI_USER_SP(tp)
> @@ -79,16 +79,16 @@ _save_context:
>  	li t0, SR_SUM | SR_FS
>  
>  	REG_L s0, TASK_TI_USER_SP(tp)
> -	csrrc s1, CSR_SSTATUS, t0
> -	csrr s2, CSR_SEPC
> -	csrr s3, CSR_STVAL
> -	csrr s4, CSR_SCAUSE
> -	csrr s5, CSR_SSCRATCH
> +	csrrc s1, CSR_STATUS, t0
> +	csrr s2, CSR_EPC
> +	csrr s3, CSR_TVAL
> +	csrr s4, CSR_CAUSE
> +	csrr s5, CSR_SCRATCH
>  	REG_S s0, PT_SP(sp)
> -	REG_S s1, PT_SSTATUS(sp)
> -	REG_S s2, PT_SEPC(sp)
> -	REG_S s3, PT_SBADADDR(sp)
> -	REG_S s4, PT_SCAUSE(sp)
> +	REG_S s1, PT_STATUS(sp)
> +	REG_S s2, PT_EPC(sp)
> +	REG_S s3, PT_BADADDR(sp)
> +	REG_S s4, PT_CAUSE(sp)
>  	REG_S s5, PT_TP(sp)
>  	.endm
>  
> @@ -97,7 +97,7 @@ _save_context:
>   * registers from the stack.
>   */
>  	.macro RESTORE_ALL
> -	REG_L a0, PT_SSTATUS(sp)
> +	REG_L a0, PT_STATUS(sp)
>  	/*
>  	 * The current load reservation is effectively part of the processor's
>  	 * state, in the sense that load reservations cannot be shared between
> @@ -115,11 +115,11 @@ _save_context:
>  	 * completes, implementations are allowed to expand reservations to be
>  	 * arbitrarily large.
>  	 */
> -	REG_L  a2, PT_SEPC(sp)
> -	REG_SC x0, a2, PT_SEPC(sp)
> +	REG_L  a2, PT_EPC(sp)
> +	REG_SC x0, a2, PT_EPC(sp)
>  
> -	csrw CSR_SSTATUS, a0
> -	csrw CSR_SEPC, a2
> +	csrw CSR_STATUS, a0
> +	csrw CSR_EPC, a2
>  
>  	REG_L x1,  PT_RA(sp)
>  	REG_L x3,  PT_GP(sp)
> @@ -163,10 +163,10 @@ ENTRY(handle_exception)
>  	SAVE_ALL
>  
>  	/*
> -	 * Set sscratch register to 0, so that if a recursive exception
> +	 * Set the scratch register to 0, so that if a recursive exception
>  	 * occurs, the exception vector knows it came from the kernel
>  	 */
> -	csrw CSR_SSCRATCH, x0
> +	csrw CSR_SCRATCH, x0
>  
>  	/* Load the global pointer */
>  .option push
> @@ -185,11 +185,13 @@ ENTRY(handle_exception)
>  	move a0, sp /* pt_regs */
>  	tail do_IRQ
>  1:
> -	/* Exceptions run with interrupts enabled or disabled
> -	   depending on the state of sstatus.SR_SPIE */
> -	andi t0, s1, SR_SPIE
> +	/*
> +	 * Exceptions run with interrupts enabled or disabled depending on the
> +	 * state of SR_PIE in m/sstatus.
> +	 */
> +	andi t0, s1, SR_PIE
>  	beqz t0, 1f
> -	csrs CSR_SSTATUS, SR_SIE
> +	csrs CSR_STATUS, SR_IE
>  
>  1:
>  	/* Handle syscalls */
> @@ -217,7 +219,7 @@ handle_syscall:
>  	 * scall instruction on sret
>  	 */
>  	addi s2, s2, 0x4
> -	REG_S s2, PT_SEPC(sp)
> +	REG_S s2, PT_EPC(sp)
>  	/* Trace syscalls, but only if requested by the user. */
>  	REG_L t0, TASK_TI_FLAGS(tp)
>  	andi t0, t0, _TIF_SYSCALL_WORK
> @@ -244,9 +246,15 @@ ret_from_syscall:
>  	bnez t0, handle_syscall_trace_exit
>  
>  ret_from_exception:
> -	REG_L s0, PT_SSTATUS(sp)
> -	csrc CSR_SSTATUS, SR_SIE
> +	REG_L s0, PT_STATUS(sp)
> +	csrc CSR_STATUS, SR_IE
> +#ifdef CONFIG_RISCV_M_MODE
> +	/* the MPP value is too large to be used as an immediate arg for addi */
> +	li t0, SR_MPP
> +	and s0, s0, t0
> +#else
>  	andi s0, s0, SR_SPP
> +#endif
>  	bnez s0, resume_kernel
>  
>  resume_userspace:
> @@ -260,14 +268,18 @@ resume_userspace:
>  	REG_S s0, TASK_TI_KERNEL_SP(tp)
>  
>  	/*
> -	 * Save TP into sscratch, so we can find the kernel data structures
> -	 * again.
> +	 * Save TP into the scratch register , so we can find the kernel data
> +	 * structures again.
>  	 */
> -	csrw CSR_SSCRATCH, tp
> +	csrw CSR_SCRATCH, tp
>  
>  restore_all:
>  	RESTORE_ALL
> +#ifdef CONFIG_RISCV_M_MODE
> +	mret
> +#else
>  	sret
> +#endif
>  
>  #if IS_ENABLED(CONFIG_PREEMPT)
>  resume_kernel:
> @@ -287,7 +299,7 @@ work_pending:
>  	bnez s1, work_resched
>  work_notifysig:
>  	/* Handle pending signals and notify-resume requests */
> -	csrs CSR_SSTATUS, SR_SIE /* Enable interrupts for do_notify_resume() */
> +	csrs CSR_STATUS, SR_IE /* Enable interrupts for do_notify_resume() */
>  	move a0, sp /* pt_regs */
>  	move a1, s0 /* current_thread_info->flags */
>  	tail do_notify_resume
> diff --git a/arch/riscv/kernel/fpu.S b/arch/riscv/kernel/fpu.S
> index 631d31540660..dd2205473de7 100644
> --- a/arch/riscv/kernel/fpu.S
> +++ b/arch/riscv/kernel/fpu.S
> @@ -23,7 +23,7 @@ ENTRY(__fstate_save)
>  	li  a2,  TASK_THREAD_F0
>  	add a0, a0, a2
>  	li t1, SR_FS
> -	csrs CSR_SSTATUS, t1
> +	csrs CSR_STATUS, t1
>  	frcsr t0
>  	fsd f0,  TASK_THREAD_F0_F0(a0)
>  	fsd f1,  TASK_THREAD_F1_F0(a0)
> @@ -58,7 +58,7 @@ ENTRY(__fstate_save)
>  	fsd f30, TASK_THREAD_F30_F0(a0)
>  	fsd f31, TASK_THREAD_F31_F0(a0)
>  	sw t0, TASK_THREAD_FCSR_F0(a0)
> -	csrc CSR_SSTATUS, t1
> +	csrc CSR_STATUS, t1
>  	ret
>  ENDPROC(__fstate_save)
>  
> @@ -67,7 +67,7 @@ ENTRY(__fstate_restore)
>  	add a0, a0, a2
>  	li t1, SR_FS
>  	lw t0, TASK_THREAD_FCSR_F0(a0)
> -	csrs CSR_SSTATUS, t1
> +	csrs CSR_STATUS, t1
>  	fld f0,  TASK_THREAD_F0_F0(a0)
>  	fld f1,  TASK_THREAD_F1_F0(a0)
>  	fld f2,  TASK_THREAD_F2_F0(a0)
> @@ -101,6 +101,6 @@ ENTRY(__fstate_restore)
>  	fld f30, TASK_THREAD_F30_F0(a0)
>  	fld f31, TASK_THREAD_F31_F0(a0)
>  	fscsr t0
> -	csrc CSR_SSTATUS, t1
> +	csrc CSR_STATUS, t1
>  	ret
>  ENDPROC(__fstate_restore)
> diff --git a/arch/riscv/kernel/head.S b/arch/riscv/kernel/head.S
> index 72f89b7590dd..5cfd2c582945 100644
> --- a/arch/riscv/kernel/head.S
> +++ b/arch/riscv/kernel/head.S
> @@ -47,8 +47,8 @@ ENTRY(_start)
>  .global _start_kernel
>  _start_kernel:
>  	/* Mask all interrupts */
> -	csrw CSR_SIE, zero
> -	csrw CSR_SIP, zero
> +	csrw CSR_IE, zero
> +	csrw CSR_IP, zero
>  
>  	/* Load the global pointer */
>  .option push
> @@ -61,7 +61,7 @@ _start_kernel:
>  	 * floating point in kernel space
>  	 */
>  	li t0, SR_FS
> -	csrc CSR_SSTATUS, t0
> +	csrc CSR_STATUS, t0
>  
>  #ifdef CONFIG_SMP
>  	li t0, CONFIG_NR_CPUS
> @@ -116,7 +116,7 @@ relocate:
>  	/* Point stvec to virtual address of intruction after satp write */
>  	la a2, 1f
>  	add a2, a2, a1
> -	csrw CSR_STVEC, a2
> +	csrw CSR_TVEC, a2
>  
>  	/* Compute satp for kernel page tables, but don't load it yet */
>  	srl a2, a0, PAGE_SHIFT
> @@ -138,7 +138,7 @@ relocate:
>  1:
>  	/* Set trap vector to spin forever to help debug */
>  	la a0, .Lsecondary_park
> -	csrw CSR_STVEC, a0
> +	csrw CSR_TVEC, a0
>  
>  	/* Reload the global pointer */
>  .option push
> @@ -161,7 +161,7 @@ relocate:
>  #ifdef CONFIG_SMP
>  	/* Set trap vector to spin forever to help debug */
>  	la a3, .Lsecondary_park
> -	csrw CSR_STVEC, a3
> +	csrw CSR_TVEC, a3
>  
>  	slli a3, a0, LGREG
>  	la a1, __cpu_up_stack_pointer
> diff --git a/arch/riscv/kernel/irq.c b/arch/riscv/kernel/irq.c
> index 6d8659388c49..7446b96f8575 100644
> --- a/arch/riscv/kernel/irq.c
> +++ b/arch/riscv/kernel/irq.c
> @@ -11,13 +11,6 @@
>  #include <linux/seq_file.h>
>  #include <asm/smp.h>
>  
> -/*
> - * Possible interrupt causes:
> - */
> -#define INTERRUPT_CAUSE_SOFTWARE	IRQ_S_SOFT
> -#define INTERRUPT_CAUSE_TIMER		IRQ_S_TIMER
> -#define INTERRUPT_CAUSE_EXTERNAL	IRQ_S_EXT
> -
>  int arch_show_interrupts(struct seq_file *p, int prec)
>  {
>  	show_ipi_stats(p, prec);
> @@ -29,12 +22,12 @@ asmlinkage void __irq_entry do_IRQ(struct pt_regs *regs)
>  	struct pt_regs *old_regs = set_irq_regs(regs);
>  
>  	irq_enter();
> -	switch (regs->scause & ~SCAUSE_IRQ_FLAG) {
> -	case INTERRUPT_CAUSE_TIMER:
> +	switch (regs->cause & ~CAUSE_IRQ_FLAG) {
> +	case IRQ_TIMER:
>  		riscv_timer_interrupt();
>  		break;
>  #ifdef CONFIG_SMP
> -	case INTERRUPT_CAUSE_SOFTWARE:
> +	case IRQ_SOFT:
>  		/*
>  		 * We only use software interrupts to pass IPIs, so if a non-SMP
>  		 * system gets one, then we don't know what to do.
> @@ -42,11 +35,11 @@ asmlinkage void __irq_entry do_IRQ(struct pt_regs *regs)
>  		riscv_software_interrupt();
>  		break;
>  #endif
> -	case INTERRUPT_CAUSE_EXTERNAL:
> +	case IRQ_EXT:
>  		handle_arch_irq(regs);
>  		break;
>  	default:
> -		pr_alert("unexpected interrupt cause 0x%lx", regs->scause);
> +		pr_alert("unexpected interrupt cause 0x%lx", regs->cause);
>  		BUG();
>  	}
>  	irq_exit();
> diff --git a/arch/riscv/kernel/perf_callchain.c b/arch/riscv/kernel/perf_callchain.c
> index 8d2804f05cf9..cf190197a22f 100644
> --- a/arch/riscv/kernel/perf_callchain.c
> +++ b/arch/riscv/kernel/perf_callchain.c
> @@ -67,7 +67,7 @@ void perf_callchain_user(struct perf_callchain_entry_ctx *entry,
>  		return;
>  
>  	fp = regs->s0;
> -	perf_callchain_store(entry, regs->sepc);
> +	perf_callchain_store(entry, regs->epc);
>  
>  	fp = user_backtrace(entry, fp, regs->ra);
>  	while (fp && !(fp & 0x3) && entry->nr < entry->max_stack)
> diff --git a/arch/riscv/kernel/process.c b/arch/riscv/kernel/process.c
> index fb3a082362eb..d8149d8c0207 100644
> --- a/arch/riscv/kernel/process.c
> +++ b/arch/riscv/kernel/process.c
> @@ -33,8 +33,8 @@ void show_regs(struct pt_regs *regs)
>  {
>  	show_regs_print_info(KERN_DEFAULT);
>  
> -	pr_cont("sepc: " REG_FMT " ra : " REG_FMT " sp : " REG_FMT "\n",
> -		regs->sepc, regs->ra, regs->sp);
> +	pr_cont("epc: " REG_FMT " ra : " REG_FMT " sp : " REG_FMT "\n",
> +		regs->epc, regs->ra, regs->sp);
>  	pr_cont(" gp : " REG_FMT " tp : " REG_FMT " t0 : " REG_FMT "\n",
>  		regs->gp, regs->tp, regs->t0);
>  	pr_cont(" t1 : " REG_FMT " t2 : " REG_FMT " s0 : " REG_FMT "\n",
> @@ -56,23 +56,23 @@ void show_regs(struct pt_regs *regs)
>  	pr_cont(" t5 : " REG_FMT " t6 : " REG_FMT "\n",
>  		regs->t5, regs->t6);
>  
> -	pr_cont("sstatus: " REG_FMT " sbadaddr: " REG_FMT " scause: " REG_FMT "\n",
> -		regs->sstatus, regs->sbadaddr, regs->scause);
> +	pr_cont("status: " REG_FMT " badaddr: " REG_FMT " cause: " REG_FMT "\n",
> +		regs->status, regs->badaddr, regs->cause);
>  }
>  
>  void start_thread(struct pt_regs *regs, unsigned long pc,
>  	unsigned long sp)
>  {
> -	regs->sstatus = SR_SPIE;
> +	regs->status = SR_PIE;
>  	if (has_fpu) {
> -		regs->sstatus |= SR_FS_INITIAL;
> +		regs->status |= SR_FS_INITIAL;
>  		/*
>  		 * Restore the initial value to the FP register
>  		 * before starting the user program.
>  		 */
>  		fstate_restore(current, regs);
>  	}
> -	regs->sepc = pc;
> +	regs->epc = pc;
>  	regs->sp = sp;
>  	set_fs(USER_DS);
>  }
> @@ -108,7 +108,8 @@ int copy_thread(unsigned long clone_flags, unsigned long usp,
>  		const register unsigned long gp __asm__ ("gp");
>  		memset(childregs, 0, sizeof(struct pt_regs));
>  		childregs->gp = gp;
> -		childregs->sstatus = SR_SPP | SR_SPIE; /* Supervisor, irqs on */
> +		/* Supervisor/Machine, irqs on: */
> +		childregs->status = SR_PP | SR_PIE;
>  
>  		p->thread.ra = (unsigned long)ret_from_kernel_thread;
>  		p->thread.s[0] = usp; /* fn */
> diff --git a/arch/riscv/kernel/signal.c b/arch/riscv/kernel/signal.c
> index b14d7647d800..c639d517bc03 100644
> --- a/arch/riscv/kernel/signal.c
> +++ b/arch/riscv/kernel/signal.c
> @@ -124,7 +124,7 @@ SYSCALL_DEFINE0(rt_sigreturn)
>  		pr_info_ratelimited(
>  			"%s[%d]: bad frame in %s: frame=%p pc=%p sp=%p\n",
>  			task->comm, task_pid_nr(task), __func__,
> -			frame, (void *)regs->sepc, (void *)regs->sp);
> +			frame, (void *)regs->epc, (void *)regs->sp);
>  	}
>  	force_sig(SIGSEGV);
>  	return 0;
> @@ -199,7 +199,7 @@ static int setup_rt_frame(struct ksignal *ksig, sigset_t *set,
>  	 * We always pass siginfo and mcontext, regardless of SA_SIGINFO,
>  	 * since some things rely on this (e.g. glibc's debug/segfault.c).
>  	 */
> -	regs->sepc = (unsigned long)ksig->ka.sa.sa_handler;
> +	regs->epc = (unsigned long)ksig->ka.sa.sa_handler;
>  	regs->sp = (unsigned long)frame;
>  	regs->a0 = ksig->sig;                     /* a0: signal number */
>  	regs->a1 = (unsigned long)(&frame->info); /* a1: siginfo pointer */
> @@ -208,7 +208,7 @@ static int setup_rt_frame(struct ksignal *ksig, sigset_t *set,
>  #if DEBUG_SIG
>  	pr_info("SIG deliver (%s:%d): sig=%d pc=%p ra=%p sp=%p\n",
>  		current->comm, task_pid_nr(current), ksig->sig,
> -		(void *)regs->sepc, (void *)regs->ra, frame);
> +		(void *)regs->epc, (void *)regs->ra, frame);
>  #endif
>  
>  	return 0;
> @@ -220,10 +220,9 @@ static void handle_signal(struct ksignal *ksig, struct pt_regs *regs)
>  	int ret;
>  
>  	/* Are we from a system call? */
> -	if (regs->scause == EXC_SYSCALL) {
> +	if (regs->cause == EXC_SYSCALL) {
>  		/* Avoid additional syscall restarting via ret_from_exception */
> -		regs->scause = -1UL;
> -
> +		regs->cause = -1UL;
>  		/* If so, check system call restarting.. */
>  		switch (regs->a0) {
>  		case -ERESTART_RESTARTBLOCK:
> @@ -239,7 +238,7 @@ static void handle_signal(struct ksignal *ksig, struct pt_regs *regs)
>  			/* fallthrough */
>  		case -ERESTARTNOINTR:
>                          regs->a0 = regs->orig_a0;
> -			regs->sepc -= 0x4;
> +			regs->epc -= 0x4;
>  			break;
>  		}
>  	}
> @@ -261,9 +260,9 @@ static void do_signal(struct pt_regs *regs)
>  	}
>  
>  	/* Did we come from a system call? */
> -	if (regs->scause == EXC_SYSCALL) {
> +	if (regs->cause == EXC_SYSCALL) {
>  		/* Avoid additional syscall restarting via ret_from_exception */
> -		regs->scause = -1UL;
> +		regs->cause = -1UL;
>  
>  		/* Restart the system call - no handlers present */
>  		switch (regs->a0) {
> @@ -271,12 +270,12 @@ static void do_signal(struct pt_regs *regs)
>  		case -ERESTARTSYS:
>  		case -ERESTARTNOINTR:
>                          regs->a0 = regs->orig_a0;
> -			regs->sepc -= 0x4;
> +			regs->epc -= 0x4;
>  			break;
>  		case -ERESTART_RESTARTBLOCK:
>                          regs->a0 = regs->orig_a0;
>  			regs->a7 = __NR_restart_syscall;
> -			regs->sepc -= 0x4;
> +			regs->epc -= 0x4;
>  			break;
>  		}
>  	}
> diff --git a/arch/riscv/kernel/smp.c b/arch/riscv/kernel/smp.c
> index b18cd6c8e8fb..51627c3aa4b8 100644
> --- a/arch/riscv/kernel/smp.c
> +++ b/arch/riscv/kernel/smp.c
> @@ -106,7 +106,7 @@ static void send_ipi_single(int cpu, enum ipi_message_type op)
>  
>  static inline void clear_ipi(void)
>  {
> -	csr_clear(CSR_SIP, SIE_SSIE);
> +	csr_clear(CSR_IP, IE_SIE);
>  }
>  
>  void riscv_software_interrupt(void)
> diff --git a/arch/riscv/kernel/traps.c b/arch/riscv/kernel/traps.c
> index 10a17e545f43..f218cf0c4f60 100644
> --- a/arch/riscv/kernel/traps.c
> +++ b/arch/riscv/kernel/traps.c
> @@ -40,7 +40,7 @@ void die(struct pt_regs *regs, const char *str)
>  	print_modules();
>  	show_regs(regs);
>  
> -	ret = notify_die(DIE_OOPS, str, regs, 0, regs->scause, SIGSEGV);
> +	ret = notify_die(DIE_OOPS, str, regs, 0, regs->cause, SIGSEGV);
>  
>  	bust_spinlocks(0);
>  	add_taint(TAINT_DIE, LOCKDEP_NOW_UNRELIABLE);
> @@ -85,7 +85,7 @@ static void do_trap_error(struct pt_regs *regs, int signo, int code,
>  #define DO_ERROR_INFO(name, signo, code, str)				\
>  asmlinkage void name(struct pt_regs *regs)				\
>  {									\
> -	do_trap_error(regs, signo, code, regs->sepc, "Oops - " str);	\
> +	do_trap_error(regs, signo, code, regs->epc, "Oops - " str);	\
>  }
>  
>  DO_ERROR_INFO(do_trap_unknown,
> @@ -123,9 +123,9 @@ static inline unsigned long get_break_insn_length(unsigned long pc)
>  asmlinkage void do_trap_break(struct pt_regs *regs)
>  {
>  	if (user_mode(regs))
> -		force_sig_fault(SIGTRAP, TRAP_BRKPT, (void __user *)regs->sepc);
> -	else if (report_bug(regs->sepc, regs) == BUG_TRAP_TYPE_WARN)
> -		regs->sepc += get_break_insn_length(regs->sepc);
> +		force_sig_fault(SIGTRAP, TRAP_BRKPT, (void __user *)regs->epc);
> +	else if (report_bug(regs->epc, regs) == BUG_TRAP_TYPE_WARN)
> +		regs->epc += get_break_insn_length(regs->epc);
>  	else
>  		die(regs, "Kernel BUG");
>  }
> @@ -152,9 +152,9 @@ void __init trap_init(void)
>  	 * Set sup0 scratch register to 0, indicating to exception vector
>  	 * that we are presently executing in the kernel
>  	 */
> -	csr_write(CSR_SSCRATCH, 0);
> +	csr_write(CSR_SCRATCH, 0);
>  	/* Set the exception vector address */
> -	csr_write(CSR_STVEC, &handle_exception);
> +	csr_write(CSR_TVEC, &handle_exception);
>  	/* Enable all interrupts */
> -	csr_write(CSR_SIE, -1);
> +	csr_write(CSR_IE, -1);
>  }
> diff --git a/arch/riscv/lib/uaccess.S b/arch/riscv/lib/uaccess.S
> index ed2696c0143d..fecd65657a6f 100644
> --- a/arch/riscv/lib/uaccess.S
> +++ b/arch/riscv/lib/uaccess.S
> @@ -18,7 +18,7 @@ ENTRY(__asm_copy_from_user)
>  
>  	/* Enable access to user memory */
>  	li t6, SR_SUM
> -	csrs CSR_SSTATUS, t6
> +	csrs CSR_STATUS, t6
>  
>  	add a3, a1, a2
>  	/* Use word-oriented copy only if low-order bits match */
> @@ -47,7 +47,7 @@ ENTRY(__asm_copy_from_user)
>  
>  3:
>  	/* Disable access to user memory */
> -	csrc CSR_SSTATUS, t6
> +	csrc CSR_STATUS, t6
>  	li a0, 0
>  	ret
>  4: /* Edge case: unalignment */
> @@ -72,7 +72,7 @@ ENTRY(__clear_user)
>  
>  	/* Enable access to user memory */
>  	li t6, SR_SUM
> -	csrs CSR_SSTATUS, t6
> +	csrs CSR_STATUS, t6
>  
>  	add a3, a0, a1
>  	addi t0, a0, SZREG-1
> @@ -94,7 +94,7 @@ ENTRY(__clear_user)
>  
>  3:
>  	/* Disable access to user memory */
> -	csrc CSR_SSTATUS, t6
> +	csrc CSR_STATUS, t6
>  	li a0, 0
>  	ret
>  4: /* Edge case: unalignment */
> @@ -114,11 +114,11 @@ ENDPROC(__clear_user)
>  	/* Fixup code for __copy_user(10) and __clear_user(11) */
>  10:
>  	/* Disable access to user memory */
> -	csrs CSR_SSTATUS, t6
> +	csrs CSR_STATUS, t6
>  	mv a0, a2
>  	ret
>  11:
> -	csrs CSR_SSTATUS, t6
> +	csrs CSR_STATUS, t6
>  	mv a0, a1
>  	ret
>  	.previous
> diff --git a/arch/riscv/mm/extable.c b/arch/riscv/mm/extable.c
> index 7aed9178d365..2fc729422151 100644
> --- a/arch/riscv/mm/extable.c
> +++ b/arch/riscv/mm/extable.c
> @@ -15,9 +15,9 @@ int fixup_exception(struct pt_regs *regs)
>  {
>  	const struct exception_table_entry *fixup;
>  
> -	fixup = search_exception_tables(regs->sepc);
> +	fixup = search_exception_tables(regs->epc);
>  	if (fixup) {
> -		regs->sepc = fixup->fixup;
> +		regs->epc = fixup->fixup;
>  		return 1;
>  	}
>  	return 0;
> diff --git a/arch/riscv/mm/fault.c b/arch/riscv/mm/fault.c
> index 96add1427a75..081fab3fbda9 100644
> --- a/arch/riscv/mm/fault.c
> +++ b/arch/riscv/mm/fault.c
> @@ -32,8 +32,8 @@ asmlinkage void do_page_fault(struct pt_regs *regs)
>  	int code = SEGV_MAPERR;
>  	vm_fault_t fault;
>  
> -	cause = regs->scause;
> -	addr = regs->sbadaddr;
> +	cause = regs->cause;
> +	addr = regs->badaddr;
>  
>  	tsk = current;
>  	mm = tsk->mm;
> @@ -51,7 +51,7 @@ asmlinkage void do_page_fault(struct pt_regs *regs)
>  		goto vmalloc_fault;
>  
>  	/* Enable interrupts if they were enabled in the parent context. */
> -	if (likely(regs->sstatus & SR_SPIE))
> +	if (likely(regs->status & SR_PIE))
>  		local_irq_enable();
>  
>  	/*
> diff --git a/drivers/clocksource/timer-riscv.c b/drivers/clocksource/timer-riscv.c
> index 470c7ef02ea4..d083bfb535f6 100644
> --- a/drivers/clocksource/timer-riscv.c
> +++ b/drivers/clocksource/timer-riscv.c
> @@ -19,7 +19,7 @@
>  static int riscv_clock_next_event(unsigned long delta,
>  		struct clock_event_device *ce)
>  {
> -	csr_set(sie, SIE_STIE);
> +	csr_set(CSR_IE, IE_TIE);
>  	sbi_set_timer(get_cycles64() + delta);
>  	return 0;
>  }
> @@ -61,13 +61,13 @@ static int riscv_timer_starting_cpu(unsigned int cpu)
>  	ce->cpumask = cpumask_of(cpu);
>  	clockevents_config_and_register(ce, riscv_timebase, 100, 0x7fffffff);
>  
> -	csr_set(sie, SIE_STIE);
> +	csr_set(CSR_IE, IE_TIE);
>  	return 0;
>  }
>  
>  static int riscv_timer_dying_cpu(unsigned int cpu)
>  {
> -	csr_clear(sie, SIE_STIE);
> +	csr_clear(CSR_IE, IE_TIE);
>  	return 0;
>  }
>  
> @@ -76,7 +76,7 @@ void riscv_timer_interrupt(void)
>  {
>  	struct clock_event_device *evdev = this_cpu_ptr(&riscv_clock_event);
>  
> -	csr_clear(sie, SIE_STIE);
> +	csr_clear(CSR_IE, IE_TIE);
>  	evdev->event_handler(evdev);
>  }
>  
> diff --git a/drivers/irqchip/irq-sifive-plic.c b/drivers/irqchip/irq-sifive-plic.c
> index 7d0a12fe2714..8df547d2d935 100644
> --- a/drivers/irqchip/irq-sifive-plic.c
> +++ b/drivers/irqchip/irq-sifive-plic.c
> @@ -181,7 +181,7 @@ static void plic_handle_irq(struct pt_regs *regs)
>  
>  	WARN_ON_ONCE(!handler->present);
>  
> -	csr_clear(sie, SIE_SEIE);
> +	csr_clear(CSR_IE, IE_EIE);
>  	while ((hwirq = readl(claim))) {
>  		int irq = irq_find_mapping(plic_irqdomain, hwirq);
>  
> @@ -191,7 +191,7 @@ static void plic_handle_irq(struct pt_regs *regs)
>  		else
>  			generic_handle_irq(irq);
>  	}
> -	csr_set(sie, SIE_SEIE);
> +	csr_set(CSR_IE, IE_EIE);
>  }
>  
>  /*
> @@ -252,8 +252,11 @@ static int __init plic_init(struct device_node *node,
>  			continue;
>  		}
>  
> -		/* skip contexts other than supervisor external interrupt */
> -		if (parent.args[0] != IRQ_S_EXT)
> +		/*
> +		 * Skip contexts other than external interrupts for our
> +		 * privilege level.
> +		 */
> +		if (parent.args[0] != IRQ_EXT)
>  			continue;
>  
>  		hartid = plic_find_hart_id(parent.np);
> -- 
> 2.20.1
> 
> 


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
