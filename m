Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47AE1132AE4
	for <lists+linux-riscv@lfdr.de>; Tue,  7 Jan 2020 17:15:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=UDg0eNeYNik0riD/wNeMyF05b0WhnGxALiDXLyFPVc8=; b=VKe+MSziB4JM4wmabRGpYj2jF
	Avc8aap/wbNvprvJ/3Bwxby5rOOKU5GNNtiSuA4sTWpDew+2olyhtJDdrRf/i1SRJZtFiOMxjpd8x
	9wAjI82Xhc232frsBclwc+DpmRFkGhUzyxw+ayH5t293HwmcSv8QIp3M3LNN+hwoXQtkPu9zIOFzb
	IKQN3V7PiU4UCIneBDlzZoGAMq7ku/rKkEFK8fAZmQgy/QxNwOluva3+poNBUN0RIOYvQ0F0Uzimh
	pqAeCyGe/PHOnQ279xiX+QVw+GsfK6mQfTYPamzJSafCbQAB7XF8G1O/HtfUelb5RJTF9FMKftlDp
	tvPX6N1Qw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iorWG-0005KG-3K; Tue, 07 Jan 2020 16:15:48 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iorWA-0005Jg-Om
 for linux-riscv@lists.infradead.org; Tue, 07 Jan 2020 16:15:45 +0000
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com
 [209.85.167.53])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EF94A21744
 for <linux-riscv@lists.infradead.org>; Tue,  7 Jan 2020 16:15:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578413741;
 bh=TQnS700r1TVzgGIUvPzFS+mHZbxH2SsIzioMXyjFBok=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=FVQkJ0ja1GyNxobxbxTnAvyqRk8NNTkx1FUYHgVUfuXJn4Iri+qpIASE5q8+xUy2D
 VzOrtBi8rG5SMAVm8bjldVyIz8z0CrZI88xXoK22Ql/QTcuL8VUS9dgn1bIuoJj3K9
 NiyKbOiHRR8BoG3rZ5YKfN1sSf3LoqaA66Rua7Ik=
Received: by mail-lf1-f53.google.com with SMTP id v201so101619lfa.11
 for <linux-riscv@lists.infradead.org>; Tue, 07 Jan 2020 08:15:40 -0800 (PST)
X-Gm-Message-State: APjAAAUJcaznS5OTQwb0UOnIvU7ptF9HBUFWu5CCSsEFWrZrzU5su4Ux
 VbosdJfyxBt+LXli+w6Q387Yq1FIJ5kQCChthNM=
X-Google-Smtp-Source: APXvYqz0Ofaj51kiv+S8vVmTAKaDzQE0vGgSxwPjU0AGfzkBxvDu8sP1g5xqsVCz5pm7ng+v9MlUEAw83YuxDnDc4Gs=
X-Received: by 2002:ac2:4945:: with SMTP id o5mr127359lfi.93.1578413738995;
 Tue, 07 Jan 2020 08:15:38 -0800 (PST)
MIME-Version: 1.0
References: <20200105025215.2522-1-guoren@kernel.org>
 <20200105025215.2522-2-guoren@kernel.org>
 <CAAhSdy3FfpgrUwLJPrbpEXy7d_E4A2k+jVqF7LEToUaP6aUSTw@mail.gmail.com>
In-Reply-To: <CAAhSdy3FfpgrUwLJPrbpEXy7d_E4A2k+jVqF7LEToUaP6aUSTw@mail.gmail.com>
From: Guo Ren <guoren@kernel.org>
Date: Wed, 8 Jan 2020 00:15:26 +0800
X-Gmail-Original-Message-ID: <CAJF2gTQ-5Tk3j6sjHZuJpDvUQnstC7-n8Si+=gJt7iriec_6Mw@mail.gmail.com>
Message-ID: <CAJF2gTQ-5Tk3j6sjHZuJpDvUQnstC7-n8Si+=gJt7iriec_6Mw@mail.gmail.com>
Subject: Re: [PATCH 2/2] riscv: Add vector ISA support
To: Anup Patel <anup@brainfault.org>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_081542_854867_275B2F85 
X-CRM114-Status: GOOD (  26.98  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-arch <linux-arch@vger.kernel.org>, Albert Ou <aou@eecs.berkeley.edu>,
 Guo Ren <ren_guo@c-sky.com>, Arnd Bergmann <arnd@arndb.de>,
 Atish Patra <atish.patra@wdc.com>, Anup Patel <Anup.Patel@wdc.com>,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 linux-csky@vger.kernel.org, Vincent Chen <vincent.chen@sifive.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Zong Li <zong.li@sifive.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Greentime Hu <greentime.hu@sifive.com>,
 linux-riscv <linux-riscv@lists.infradead.org>, Bin Meng <bmeng.cn@gmail.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Thx Anup,

On Mon, Jan 6, 2020 at 5:25 PM Anup Patel <anup@brainfault.org> wrote:
>
> On Sun, Jan 5, 2020 at 8:22 AM <guoren@kernel.org> wrote:
> >
> > From: Guo Ren <ren_guo@c-sky.com>
> >
> > The implementation follow the RISC-V "V" Vector Extension draft v0.8 with
> > 128bit-vlen and it's based on linux-5.5-rc4.
> >
> > The patch implement basic context switch, signal and ptrace interface
> > with a new regset NT_RISCV_VECTOR. Only fixed 128bit-vlen is implemented.
> > We need to discuss about the abi for libc sigcontext. (The maximum size of
> > vlen for libc signal context structure 128/256/512 ?)
>
> This patch certainly needs to be broken down into
> more granular patches. I already see quite a few
> changes not directly related to RISC-V V-extension.
>
> >
> > Signed-off-by: Guo Ren <ren_guo@c-sky.com>
> > Cc: Paul Walmsley <paul.walmsley@sifive.com>
> > Cc: Palmer Dabbelt <palmer@dabbelt.com>
> > Cc: Albert Ou <aou@eecs.berkeley.edu>
> > ---
> >  arch/riscv/Kconfig                       |   9 ++
> >  arch/riscv/Makefile                      |  19 ++-
> >  arch/riscv/include/asm/csr.h             |  17 +-
> >  arch/riscv/include/asm/processor.h       |   1 +
> >  arch/riscv/include/asm/switch_to.h       |  54 ++++++-
> >  arch/riscv/include/uapi/asm/elf.h        |   1 +
> >  arch/riscv/include/uapi/asm/hwcap.h      |   1 +
> >  arch/riscv/include/uapi/asm/ptrace.h     |   9 ++
> >  arch/riscv/include/uapi/asm/sigcontext.h |   1 +
> >  arch/riscv/kernel/Makefile               |   1 +
> >  arch/riscv/kernel/asm-offsets.c          | 190 +++++++++++++++++++++++
> >  arch/riscv/kernel/cpufeature.c           |  12 +-
> >  arch/riscv/kernel/entry.S                |   2 +-
> >  arch/riscv/kernel/head.S                 |  49 +++++-
> >  arch/riscv/kernel/process.c              |  10 ++
> >  arch/riscv/kernel/ptrace.c               |  41 +++++
> >  arch/riscv/kernel/signal.c               |  40 +++++
> >  arch/riscv/kernel/vector.S               |  84 ++++++++++
> >  include/uapi/linux/elf.h                 |   1 +
> >  19 files changed, 527 insertions(+), 15 deletions(-)
> >  create mode 100644 arch/riscv/kernel/vector.S
> >
> > diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
> > index d8efbaa78d67..3d336f869ffe 100644
> > --- a/arch/riscv/Kconfig
> > +++ b/arch/riscv/Kconfig
> > @@ -286,6 +286,15 @@ config FPU
> >
> >           If you don't know what to do here, say Y.
> >
> > +config VECTOR
> > +       bool "VECTOR support"
> > +       default n
> > +       help
> > +         Say N here if you want to disable all vecotr related procedure
> > +         in the kernel.
> > +
> > +         If you don't know what to do here, say Y.
> > +
> >  endmenu
> >
> >  menu "Kernel features"
> > diff --git a/arch/riscv/Makefile b/arch/riscv/Makefile
> > index b9009a2fbaf5..071eb1148e01 100644
> > --- a/arch/riscv/Makefile
> > +++ b/arch/riscv/Makefile
> > @@ -35,12 +35,19 @@ else
> >  endif
> >
> >  # ISA string setting
> > -riscv-march-$(CONFIG_ARCH_RV32I)       := rv32ima
> > -riscv-march-$(CONFIG_ARCH_RV64I)       := rv64ima
> > -riscv-march-$(CONFIG_FPU)              := $(riscv-march-y)fd
> > -riscv-march-$(CONFIG_RISCV_ISA_C)      := $(riscv-march-y)c
> > -KBUILD_CFLAGS += -march=$(subst fd,,$(riscv-march-y))
> > -KBUILD_AFLAGS += -march=$(riscv-march-y)
> > +riscv-march-cflags-$(CONFIG_ARCH_RV32I)                := rv32ima
> > +riscv-march-cflags-$(CONFIG_ARCH_RV64I)                := rv64ima
> > +riscv-march-$(CONFIG_FPU)                      := $(riscv-march-y)fd
> > +riscv-march-cflags-$(CONFIG_RISCV_ISA_C)       := $(riscv-march-cflags-y)c
> > +
> > +riscv-march-aflags-$(CONFIG_ARCH_RV32I)                := rv32ima
> > +riscv-march-aflags-$(CONFIG_ARCH_RV64I)                := rv64ima
> > +riscv-march-aflags-$(CONFIG_FPU)               := $(riscv-march-aflags-y)fd
> > +riscv-march-aflags-$(CONFIG_RISCV_ISA_C)       := $(riscv-march-aflags-y)c
>
> Please have separate patch for adding riscv-march-cflags and
> riscv-march-aflags with reasoning on why we need separate flags.
>
> > +riscv-march-aflags-$(CONFIG_VECTOR)            := $(riscv-march-aflags-y)v
> > +
> > +KBUILD_CFLAGS += -march=$(riscv-march-cflags-y)
> > +KBUILD_AFLAGS += -march=$(riscv-march-aflags-y)
> >
> >  KBUILD_CFLAGS += -mno-save-restore
> >  KBUILD_CFLAGS += -DCONFIG_PAGE_OFFSET=$(CONFIG_PAGE_OFFSET)
> > diff --git a/arch/riscv/include/asm/csr.h b/arch/riscv/include/asm/csr.h
> > index 0a62d2d68455..8438ee8d51ff 100644
> > --- a/arch/riscv/include/asm/csr.h
> > +++ b/arch/riscv/include/asm/csr.h
> > @@ -24,6 +24,12 @@
> >  #define SR_FS_CLEAN    _AC(0x00004000, UL)
> >  #define SR_FS_DIRTY    _AC(0x00006000, UL)
> >
> > +#define SR_VS           _AC(0x01800000, UL) /* Vector Status */
> > +#define SR_VS_OFF       _AC(0x00000000, UL)
> > +#define SR_VS_INITIAL   _AC(0x00800000, UL)
> > +#define SR_VS_CLEAN     _AC(0x01000000, UL)
> > +#define SR_VS_DIRTY     _AC(0x01800000, UL)
> > +
> >  #define SR_XS          _AC(0x00018000, UL) /* Extension Status */
> >  #define SR_XS_OFF      _AC(0x00000000, UL)
> >  #define SR_XS_INITIAL  _AC(0x00008000, UL)
> > @@ -31,9 +37,9 @@
> >  #define SR_XS_DIRTY    _AC(0x00018000, UL)
> >
> >  #ifndef CONFIG_64BIT
> > -#define SR_SD          _AC(0x80000000, UL) /* FS/XS dirty */
> > +#define SR_SD          _AC(0x80000000, UL) /* FS/VS/XS dirty */
> >  #else
> > -#define SR_SD          _AC(0x8000000000000000, UL) /* FS/XS dirty */
> > +#define SR_SD          _AC(0x8000000000000000, UL) /* FS/VS/XS dirty */
> >  #endif
> >
> >  /* SATP flags */
> > @@ -102,6 +108,13 @@
> >  #define CSR_MIP                        0x344
> >  #define CSR_MHARTID            0xf14
> >
> > +#define CSR_VSTART             0x8
> > +#define CSR_VXSAT              0x9
> > +#define CSR_VXRM               0xa
> > +#define CSR_VL                 0xc20
> > +#define CSR_VTYPE              0xc21
> > +#define CSR_VLENB              0xc22
> > +
> >  #ifdef CONFIG_RISCV_M_MODE
> >  # define CSR_STATUS    CSR_MSTATUS
> >  # define CSR_IE                CSR_MIE
> > diff --git a/arch/riscv/include/asm/processor.h b/arch/riscv/include/asm/processor.h
> > index 3ddb798264f1..217273375cfb 100644
> > --- a/arch/riscv/include/asm/processor.h
> > +++ b/arch/riscv/include/asm/processor.h
> > @@ -32,6 +32,7 @@ struct thread_struct {
> >         unsigned long sp;       /* Kernel mode stack */
> >         unsigned long s[12];    /* s[0]: frame pointer */
> >         struct __riscv_d_ext_state fstate;
> > +       struct __riscv_v_state vstate;
> >  };
> >
> >  #define INIT_THREAD {                                  \
> > diff --git a/arch/riscv/include/asm/switch_to.h b/arch/riscv/include/asm/switch_to.h
> > index 407bcc96a710..6e1c7fa599be 100644
> > --- a/arch/riscv/include/asm/switch_to.h
> > +++ b/arch/riscv/include/asm/switch_to.h
> > @@ -44,7 +44,7 @@ static inline void fstate_restore(struct task_struct *task,
> >         }
> >  }
> >
> > -static inline void __switch_to_aux(struct task_struct *prev,
> > +static inline void __switch_to_fpu(struct task_struct *prev,
> >                                    struct task_struct *next)
> >  {
> >         struct pt_regs *regs;
> > @@ -60,7 +60,53 @@ extern bool has_fpu;
> >  #define has_fpu false
> >  #define fstate_save(task, regs) do { } while (0)
> >  #define fstate_restore(task, regs) do { } while (0)
> > -#define __switch_to_aux(__prev, __next) do { } while (0)
> > +#define __switch_to_fpu(__prev, __next) do { } while (0)
>
> Renaming __switch_to_aux() to __switch_to_fpu() should
> be a separate patch.
ok

>
> > +#endif
> > +
> > +#ifdef CONFIG_VECTOR
> > +extern void __vstate_save(struct task_struct *save_to);
> > +extern void __vstate_restore(struct task_struct *restore_from);
> > +
> > +static inline void __vstate_clean(struct pt_regs *regs)
> > +{
> > +       regs->status |= (regs->status & ~(SR_VS)) | SR_VS_CLEAN;
> > +}
> > +
> > +static inline void vstate_save(struct task_struct *task,
> > +                              struct pt_regs *regs)
> > +{
> > +       if ((regs->status & SR_VS) == SR_VS_DIRTY) {
> > +               __vstate_save(task);
> > +               __vstate_clean(regs);
> > +       }
> > +}
> > +
> > +static inline void vstate_restore(struct task_struct *task,
> > +                                 struct pt_regs *regs)
> > +{
> > +       if ((regs->status & SR_VS) != SR_VS_OFF) {
> > +               __vstate_restore(task);
> > +               __vstate_clean(regs);
> > +       }
> > +}
> > +
> > +static inline void __switch_to_vector(struct task_struct *prev,
> > +                                  struct task_struct *next)
> > +{
> > +       struct pt_regs *regs;
> > +
> > +       regs = task_pt_regs(prev);
> > +       if (unlikely(regs->status & SR_SD))
> > +               vstate_save(prev, regs);
> > +       vstate_restore(next, task_pt_regs(next));
> > +}
> > +
> > +extern bool has_vector;
> > +#else
> > +#define has_vector false
> > +#define vstate_save(task, regs) do { } while (0)
> > +#define vstate_restore(task, regs) do { } while (0)
> > +#define __switch_to_vector(__prev, __next) do { } while (0)
> >  #endif
> >
> >  extern struct task_struct *__switch_to(struct task_struct *,
> > @@ -71,7 +117,9 @@ do {                                                 \
> >         struct task_struct *__prev = (prev);            \
> >         struct task_struct *__next = (next);            \
> >         if (has_fpu)                                    \
> > -               __switch_to_aux(__prev, __next);        \
> > +               __switch_to_fpu(__prev, __next);        \
>
> Above has to part of patch which renames
> __switch_to_aux() to __switch_to_fpu()
>
> > +       if (has_vector)                                 \
> > +               __switch_to_vector(__prev, __next);     \
> >         ((last) = __switch_to(__prev, __next));         \
> >  } while (0)
> >
> > diff --git a/arch/riscv/include/uapi/asm/elf.h b/arch/riscv/include/uapi/asm/elf.h
> > index d696d6610231..099434d075a7 100644
> > --- a/arch/riscv/include/uapi/asm/elf.h
> > +++ b/arch/riscv/include/uapi/asm/elf.h
> > @@ -23,6 +23,7 @@ typedef struct user_regs_struct elf_gregset_t;
> >  typedef __u64 elf_fpreg_t;
> >  typedef union __riscv_fp_state elf_fpregset_t;
> >  #define ELF_NFPREG (sizeof(struct __riscv_d_ext_state) / sizeof(elf_fpreg_t))
> > +#define ELF_NVREG  (sizeof(struct __riscv_v_state) / sizeof(elf_greg_t))
> >
> >  #if __riscv_xlen == 64
> >  #define ELF_RISCV_R_SYM(r_info)                ELF64_R_SYM(r_info)
> > diff --git a/arch/riscv/include/uapi/asm/hwcap.h b/arch/riscv/include/uapi/asm/hwcap.h
> > index dee98ee28318..a913e9a38819 100644
> > --- a/arch/riscv/include/uapi/asm/hwcap.h
> > +++ b/arch/riscv/include/uapi/asm/hwcap.h
> > @@ -21,5 +21,6 @@
> >  #define COMPAT_HWCAP_ISA_F     (1 << ('F' - 'A'))
> >  #define COMPAT_HWCAP_ISA_D     (1 << ('D' - 'A'))
> >  #define COMPAT_HWCAP_ISA_C     (1 << ('C' - 'A'))
> > +#define COMPAT_HWCAP_ISA_V     (1 << ('V' - 'A'))
> >
> >  #endif /* _UAPI_ASM_RISCV_HWCAP_H */
> > diff --git a/arch/riscv/include/uapi/asm/ptrace.h b/arch/riscv/include/uapi/asm/ptrace.h
> > index 882547f6bd5c..d913e8949b87 100644
> > --- a/arch/riscv/include/uapi/asm/ptrace.h
> > +++ b/arch/riscv/include/uapi/asm/ptrace.h
> > @@ -71,6 +71,15 @@ struct __riscv_q_ext_state {
> >         __u32 reserved[3];
> >  };
> >
> > +struct __riscv_v_state {
> > +       __uint128_t v[32];
> > +       unsigned long vstart;
> > +       unsigned long vxsat;
> > +       unsigned long vxrm;
> > +       unsigned long vl;
> > +       unsigned long vtype;
> > +};
> > +
> >  union __riscv_fp_state {
> >         struct __riscv_f_ext_state f;
> >         struct __riscv_d_ext_state d;
> > diff --git a/arch/riscv/include/uapi/asm/sigcontext.h b/arch/riscv/include/uapi/asm/sigcontext.h
> > index 84f2dfcfdbce..f74b3c814423 100644
> > --- a/arch/riscv/include/uapi/asm/sigcontext.h
> > +++ b/arch/riscv/include/uapi/asm/sigcontext.h
> > @@ -17,6 +17,7 @@
> >  struct sigcontext {
> >         struct user_regs_struct sc_regs;
> >         union __riscv_fp_state sc_fpregs;
> > +       struct __riscv_v_state sc_vregs;
> >  };
> >
> >  #endif /* _UAPI_ASM_RISCV_SIGCONTEXT_H */
> > diff --git a/arch/riscv/kernel/Makefile b/arch/riscv/kernel/Makefile
> > index f40205cb9a22..e5276c3bdffc 100644
> > --- a/arch/riscv/kernel/Makefile
> > +++ b/arch/riscv/kernel/Makefile
> > @@ -30,6 +30,7 @@ obj-$(CONFIG_MMU) += vdso.o vdso/
> >
> >  obj-$(CONFIG_RISCV_M_MODE)     += clint.o
> >  obj-$(CONFIG_FPU)              += fpu.o
> > +obj-$(CONFIG_VECTOR)           += vector.o
> >  obj-$(CONFIG_SMP)              += smpboot.o
> >  obj-$(CONFIG_SMP)              += smp.o
> >  obj-$(CONFIG_MODULES)          += module.o
> > diff --git a/arch/riscv/kernel/asm-offsets.c b/arch/riscv/kernel/asm-offsets.c
> > index 07cb9c10de4e..3332dc69d809 100644
> > --- a/arch/riscv/kernel/asm-offsets.c
> > +++ b/arch/riscv/kernel/asm-offsets.c
> > @@ -70,6 +70,45 @@ void asm_offsets(void)
> >         OFFSET(TASK_THREAD_F31, task_struct, thread.fstate.f[31]);
> >         OFFSET(TASK_THREAD_FCSR, task_struct, thread.fstate.fcsr);
> >
> > +       OFFSET(TASK_THREAD_V0,  task_struct, thread.vstate.v[0]);
> > +       OFFSET(TASK_THREAD_V1,  task_struct, thread.vstate.v[1]);
> > +       OFFSET(TASK_THREAD_V2,  task_struct, thread.vstate.v[2]);
> > +       OFFSET(TASK_THREAD_V3,  task_struct, thread.vstate.v[3]);
> > +       OFFSET(TASK_THREAD_V4,  task_struct, thread.vstate.v[4]);
> > +       OFFSET(TASK_THREAD_V5,  task_struct, thread.vstate.v[5]);
> > +       OFFSET(TASK_THREAD_V6,  task_struct, thread.vstate.v[6]);
> > +       OFFSET(TASK_THREAD_V7,  task_struct, thread.vstate.v[7]);
> > +       OFFSET(TASK_THREAD_V8,  task_struct, thread.vstate.v[8]);
> > +       OFFSET(TASK_THREAD_V9,  task_struct, thread.vstate.v[9]);
> > +       OFFSET(TASK_THREAD_V10, task_struct, thread.vstate.v[10]);
> > +       OFFSET(TASK_THREAD_V11, task_struct, thread.vstate.v[11]);
> > +       OFFSET(TASK_THREAD_V12, task_struct, thread.vstate.v[12]);
> > +       OFFSET(TASK_THREAD_V13, task_struct, thread.vstate.v[13]);
> > +       OFFSET(TASK_THREAD_V14, task_struct, thread.vstate.v[14]);
> > +       OFFSET(TASK_THREAD_V15, task_struct, thread.vstate.v[15]);
> > +       OFFSET(TASK_THREAD_V16, task_struct, thread.vstate.v[16]);
> > +       OFFSET(TASK_THREAD_V17, task_struct, thread.vstate.v[17]);
> > +       OFFSET(TASK_THREAD_V18, task_struct, thread.vstate.v[18]);
> > +       OFFSET(TASK_THREAD_V19, task_struct, thread.vstate.v[19]);
> > +       OFFSET(TASK_THREAD_V20, task_struct, thread.vstate.v[20]);
> > +       OFFSET(TASK_THREAD_V21, task_struct, thread.vstate.v[21]);
> > +       OFFSET(TASK_THREAD_V22, task_struct, thread.vstate.v[22]);
> > +       OFFSET(TASK_THREAD_V23, task_struct, thread.vstate.v[23]);
> > +       OFFSET(TASK_THREAD_V24, task_struct, thread.vstate.v[24]);
> > +       OFFSET(TASK_THREAD_V25, task_struct, thread.vstate.v[25]);
> > +       OFFSET(TASK_THREAD_V26, task_struct, thread.vstate.v[26]);
> > +       OFFSET(TASK_THREAD_V27, task_struct, thread.vstate.v[27]);
> > +       OFFSET(TASK_THREAD_V28, task_struct, thread.vstate.v[28]);
> > +       OFFSET(TASK_THREAD_V29, task_struct, thread.vstate.v[29]);
> > +       OFFSET(TASK_THREAD_V30, task_struct, thread.vstate.v[30]);
> > +       OFFSET(TASK_THREAD_V31, task_struct, thread.vstate.v[31]);
> > +       OFFSET(TASK_THREAD_VSTART, task_struct, thread.vstate.vstart);
> > +       OFFSET(TASK_THREAD_VXSAT, task_struct, thread.vstate.vxsat);
> > +       OFFSET(TASK_THREAD_VXRM, task_struct, thread.vstate.vxrm);
> > +       OFFSET(TASK_THREAD_VL, task_struct, thread.vstate.vl);
> > +       OFFSET(TASK_THREAD_VTYPE, task_struct, thread.vstate.vtype);
> > +       DEFINE(RISCV_VECTOR_VLENB, sizeof(__uint128_t));
> > +
> >         DEFINE(PT_SIZE, sizeof(struct pt_regs));
> >         OFFSET(PT_EPC, pt_regs, epc);
> >         OFFSET(PT_RA, pt_regs, ra);
> > @@ -171,6 +210,7 @@ void asm_offsets(void)
> >                 - offsetof(struct task_struct, thread.ra)
> >         );
> >
> > +       /* Float Point */
>
> Again, this is not related to RISC-V V-extension.
ok

>
> >         DEFINE(TASK_THREAD_F0_F0,
> >                   offsetof(struct task_struct, thread.fstate.f[0])
> >                 - offsetof(struct task_struct, thread.fstate.f[0])
> > @@ -304,6 +344,156 @@ void asm_offsets(void)
> >                 - offsetof(struct task_struct, thread.fstate.f[0])
> >         );
> >
> > +       /* Vector */
> > +       DEFINE(TASK_THREAD_V0_V0,
> > +                 offsetof(struct task_struct, thread.vstate.v[0])
> > +               - offsetof(struct task_struct, thread.vstate.v[0])
> > +       );
> > +       DEFINE(TASK_THREAD_V1_V0,
> > +                 offsetof(struct task_struct, thread.vstate.v[1])
> > +               - offsetof(struct task_struct, thread.vstate.v[0])
> > +       );
> > +       DEFINE(TASK_THREAD_V2_V0,
> > +                 offsetof(struct task_struct, thread.vstate.v[2])
> > +               - offsetof(struct task_struct, thread.vstate.v[0])
> > +       );
> > +       DEFINE(TASK_THREAD_V3_V0,
> > +                 offsetof(struct task_struct, thread.vstate.v[3])
> > +               - offsetof(struct task_struct, thread.vstate.v[0])
> > +       );
> > +       DEFINE(TASK_THREAD_V4_V0,
> > +                 offsetof(struct task_struct, thread.vstate.v[4])
> > +               - offsetof(struct task_struct, thread.vstate.v[0])
> > +       );
> > +       DEFINE(TASK_THREAD_V5_V0,
> > +                 offsetof(struct task_struct, thread.vstate.v[5])
> > +               - offsetof(struct task_struct, thread.vstate.v[0])
> > +       );
> > +       DEFINE(TASK_THREAD_V6_V0,
> > +                 offsetof(struct task_struct, thread.vstate.v[6])
> > +               - offsetof(struct task_struct, thread.vstate.v[0])
> > +       );
> > +       DEFINE(TASK_THREAD_V7_V0,
> > +                 offsetof(struct task_struct, thread.vstate.v[7])
> > +               - offsetof(struct task_struct, thread.vstate.v[0])
> > +       );
> > +       DEFINE(TASK_THREAD_V8_V0,
> > +                 offsetof(struct task_struct, thread.vstate.v[8])
> > +               - offsetof(struct task_struct, thread.vstate.v[0])
> > +       );
> > +       DEFINE(TASK_THREAD_V9_V0,
> > +                 offsetof(struct task_struct, thread.vstate.v[9])
> > +               - offsetof(struct task_struct, thread.vstate.v[0])
> > +       );
> > +       DEFINE(TASK_THREAD_V10_V0,
> > +                 offsetof(struct task_struct, thread.vstate.v[10])
> > +               - offsetof(struct task_struct, thread.vstate.v[0])
> > +       );
> > +       DEFINE(TASK_THREAD_V11_V0,
> > +                 offsetof(struct task_struct, thread.vstate.v[11])
> > +               - offsetof(struct task_struct, thread.vstate.v[0])
> > +       );
> > +       DEFINE(TASK_THREAD_V12_V0,
> > +                 offsetof(struct task_struct, thread.vstate.v[12])
> > +               - offsetof(struct task_struct, thread.vstate.v[0])
> > +       );
> > +       DEFINE(TASK_THREAD_V13_V0,
> > +                 offsetof(struct task_struct, thread.vstate.v[13])
> > +               - offsetof(struct task_struct, thread.vstate.v[0])
> > +       );
> > +       DEFINE(TASK_THREAD_V14_V0,
> > +                 offsetof(struct task_struct, thread.vstate.v[14])
> > +               - offsetof(struct task_struct, thread.vstate.v[0])
> > +       );
> > +       DEFINE(TASK_THREAD_V15_V0,
> > +                 offsetof(struct task_struct, thread.vstate.v[15])
> > +               - offsetof(struct task_struct, thread.vstate.v[0])
> > +       );
> > +       DEFINE(TASK_THREAD_V16_V0,
> > +                 offsetof(struct task_struct, thread.vstate.v[16])
> > +               - offsetof(struct task_struct, thread.vstate.v[0])
> > +       );
> > +       DEFINE(TASK_THREAD_V17_V0,
> > +                 offsetof(struct task_struct, thread.vstate.v[17])
> > +               - offsetof(struct task_struct, thread.vstate.v[0])
> > +       );
> > +       DEFINE(TASK_THREAD_V18_V0,
> > +                 offsetof(struct task_struct, thread.vstate.v[18])
> > +               - offsetof(struct task_struct, thread.vstate.v[0])
> > +       );
> > +       DEFINE(TASK_THREAD_V19_V0,
> > +                 offsetof(struct task_struct, thread.vstate.v[19])
> > +               - offsetof(struct task_struct, thread.vstate.v[0])
> > +       );
> > +       DEFINE(TASK_THREAD_V20_V0,
> > +                 offsetof(struct task_struct, thread.vstate.v[20])
> > +               - offsetof(struct task_struct, thread.vstate.v[0])
> > +       );
> > +       DEFINE(TASK_THREAD_V21_V0,
> > +                 offsetof(struct task_struct, thread.vstate.v[21])
> > +               - offsetof(struct task_struct, thread.vstate.v[0])
> > +       );
> > +       DEFINE(TASK_THREAD_V22_V0,
> > +                 offsetof(struct task_struct, thread.vstate.v[22])
> > +               - offsetof(struct task_struct, thread.vstate.v[0])
> > +       );
> > +       DEFINE(TASK_THREAD_V23_V0,
> > +                 offsetof(struct task_struct, thread.vstate.v[23])
> > +               - offsetof(struct task_struct, thread.vstate.v[0])
> > +       );
> > +       DEFINE(TASK_THREAD_V24_V0,
> > +                 offsetof(struct task_struct, thread.vstate.v[24])
> > +               - offsetof(struct task_struct, thread.vstate.v[0])
> > +       );
> > +       DEFINE(TASK_THREAD_V25_V0,
> > +                 offsetof(struct task_struct, thread.vstate.v[25])
> > +               - offsetof(struct task_struct, thread.vstate.v[0])
> > +       );
> > +       DEFINE(TASK_THREAD_V26_V0,
> > +                 offsetof(struct task_struct, thread.vstate.v[26])
> > +               - offsetof(struct task_struct, thread.vstate.v[0])
> > +       );
> > +       DEFINE(TASK_THREAD_V27_V0,
> > +                 offsetof(struct task_struct, thread.vstate.v[27])
> > +               - offsetof(struct task_struct, thread.vstate.v[0])
> > +       );
> > +       DEFINE(TASK_THREAD_V28_V0,
> > +                 offsetof(struct task_struct, thread.vstate.v[28])
> > +               - offsetof(struct task_struct, thread.vstate.v[0])
> > +       );
> > +       DEFINE(TASK_THREAD_V29_V0,
> > +                 offsetof(struct task_struct, thread.vstate.v[29])
> > +               - offsetof(struct task_struct, thread.vstate.v[0])
> > +       );
> > +       DEFINE(TASK_THREAD_V30_V0,
> > +                 offsetof(struct task_struct, thread.vstate.v[30])
> > +               - offsetof(struct task_struct, thread.vstate.v[0])
> > +       );
> > +       DEFINE(TASK_THREAD_V31_V0,
> > +                 offsetof(struct task_struct, thread.vstate.v[31])
> > +               - offsetof(struct task_struct, thread.vstate.v[0])
> > +       );
> > +       DEFINE(TASK_THREAD_VSTART_V0,
> > +                 offsetof(struct task_struct, thread.vstate.vstart)
> > +               - offsetof(struct task_struct, thread.vstate.v[0])
> > +       );
> > +       DEFINE(TASK_THREAD_VXSAT_V0,
> > +                 offsetof(struct task_struct, thread.vstate.vxsat)
> > +               - offsetof(struct task_struct, thread.vstate.v[0])
> > +       );
> > +       DEFINE(TASK_THREAD_VXRM_V0,
> > +                 offsetof(struct task_struct, thread.vstate.vxrm)
> > +               - offsetof(struct task_struct, thread.vstate.v[0])
> > +       );
> > +       DEFINE(TASK_THREAD_VL_V0,
> > +                 offsetof(struct task_struct, thread.vstate.vl)
> > +               - offsetof(struct task_struct, thread.vstate.v[0])
> > +       );
> > +       DEFINE(TASK_THREAD_VTYPE_V0,
> > +                 offsetof(struct task_struct, thread.vstate.vtype)
> > +               - offsetof(struct task_struct, thread.vstate.v[0])
> > +       );
> > +
> >         /*
> >          * We allocate a pt_regs on the stack when entering the kernel.  This
> >          * ensures the alignment is sane.
> > diff --git a/arch/riscv/kernel/cpufeature.c b/arch/riscv/kernel/cpufeature.c
> > index a5ad00043104..c9ab24e3c79e 100644
> > --- a/arch/riscv/kernel/cpufeature.c
> > +++ b/arch/riscv/kernel/cpufeature.c
> > @@ -16,6 +16,9 @@ unsigned long elf_hwcap __read_mostly;
> >  #ifdef CONFIG_FPU
> >  bool has_fpu __read_mostly;
> >  #endif
> > +#ifdef CONFIG_VECTOR
> > +bool has_vector __read_mostly;
> > +#endif
> >
> >  void riscv_fill_hwcap(void)
> >  {
> > @@ -30,6 +33,7 @@ void riscv_fill_hwcap(void)
> >         isa2hwcap['f'] = isa2hwcap['F'] = COMPAT_HWCAP_ISA_F;
> >         isa2hwcap['d'] = isa2hwcap['D'] = COMPAT_HWCAP_ISA_D;
> >         isa2hwcap['c'] = isa2hwcap['C'] = COMPAT_HWCAP_ISA_C;
> > +       isa2hwcap['v'] = isa2hwcap['V'] = COMPAT_HWCAP_ISA_V;
> >
> >         elf_hwcap = 0;
> >
> > @@ -44,7 +48,8 @@ void riscv_fill_hwcap(void)
> >                         continue;
> >                 }
> >
> > -               for (i = 0; i < strlen(isa); ++i)
> > +               /* Skip rv64/rv32 to support v/V:vector */
> > +               for (i = 4; i < strlen(isa); ++i)
> >                         this_hwcap |= isa2hwcap[(unsigned char)(isa[i])];
> >
> >                 /*
> > @@ -71,4 +76,9 @@ void riscv_fill_hwcap(void)
> >         if (elf_hwcap & (COMPAT_HWCAP_ISA_F | COMPAT_HWCAP_ISA_D))
> >                 has_fpu = true;
> >  #endif
> > +
> > +#ifdef CONFIG_VECTOR
> > +       if (elf_hwcap & COMPAT_HWCAP_ISA_V)
> > +               has_vector = true;
> > +#endif
>
> I think extending riscv/kernel/cpufeature.c to detect
> V-extension should be a separate patch.
ok

>
> >  }
> > diff --git a/arch/riscv/kernel/entry.S b/arch/riscv/kernel/entry.S
> > index e163b7b64c86..828f0ebce4b5 100644
> > --- a/arch/riscv/kernel/entry.S
> > +++ b/arch/riscv/kernel/entry.S
> > @@ -76,7 +76,7 @@ _save_context:
> >          * Disable the FPU to detect illegal usage of floating point in kernel
> >          * space.
> >          */
> > -       li t0, SR_SUM | SR_FS
> > +       li t0, SR_SUM | SR_FS | SR_VS
> >
> >         REG_L s0, TASK_TI_USER_SP(tp)
> >         csrrc s1, CSR_STATUS, t0
> > diff --git a/arch/riscv/kernel/head.S b/arch/riscv/kernel/head.S
> > index 2227db63f895..fab03292284e 100644
> > --- a/arch/riscv/kernel/head.S
> > +++ b/arch/riscv/kernel/head.S
> > @@ -72,10 +72,10 @@ _start_kernel:
> >  .option pop
> >
> >         /*
> > -        * Disable FPU to detect illegal usage of
> > +        * Disable FPU & VECTOR to detect illegal usage of
> >          * floating point in kernel space
> >          */
> > -       li t0, SR_FS
> > +       li t0, SR_FS | SR_VS
> >         csrc CSR_STATUS, t0
> >
> >  #ifdef CONFIG_SMP
> > @@ -290,6 +290,51 @@ ENTRY(reset_regs)
> >         csrw    fcsr, 0
> >         /* note that the caller must clear SR_FS */
> >  #endif /* CONFIG_FPU */
> > +
> > +#ifdef CONFIG_VECTOR
> > +       csrr    t0, CSR_MISA
> > +       li      t1, (COMPAT_HWCAP_ISA_V >> 16)
> > +       slli    t1, t1, 16
> > +       and     t0, t0, t1
> > +       beqz    t0, .Lreset_regs_done
> > +
> > +       li      t1, SR_VS
> > +       csrs    CSR_STATUS, t1
> > +       vmv.v.i v0, 0
> > +       vmv.v.i v1, 0
> > +       vmv.v.i v2, 0
> > +       vmv.v.i v3, 0
> > +       vmv.v.i v4, 0
> > +       vmv.v.i v5, 0
> > +       vmv.v.i v6, 0
> > +       vmv.v.i v7, 0
> > +       vmv.v.i v8, 0
> > +       vmv.v.i v9, 0
> > +       vmv.v.i v10, 0
> > +       vmv.v.i v11, 0
> > +       vmv.v.i v12, 0
> > +       vmv.v.i v13, 0
> > +       vmv.v.i v14, 0
> > +       vmv.v.i v15, 0
> > +       vmv.v.i v16, 0
> > +       vmv.v.i v17, 0
> > +       vmv.v.i v18, 0
> > +       vmv.v.i v19, 0
> > +       vmv.v.i v20, 0
> > +       vmv.v.i v21, 0
> > +       vmv.v.i v22, 0
> > +       vmv.v.i v23, 0
> > +       vmv.v.i v24, 0
> > +       vmv.v.i v25, 0
> > +       vmv.v.i v26, 0
> > +       vmv.v.i v27, 0
> > +       vmv.v.i v28, 0
> > +       vmv.v.i v29, 0
> > +       vmv.v.i v30, 0
> > +       vmv.v.i v31, 0
> > +       /* note that the caller must clear SR_VS */
> > +#endif /* CONFIG_VECTOR */
> > +
> >  .Lreset_regs_done:
> >         ret
> >  END(reset_regs)
> > diff --git a/arch/riscv/kernel/process.c b/arch/riscv/kernel/process.c
> > index 95a3031e5c7c..3665f8c1a2c1 100644
> > --- a/arch/riscv/kernel/process.c
> > +++ b/arch/riscv/kernel/process.c
> > @@ -74,6 +74,16 @@ void start_thread(struct pt_regs *regs, unsigned long pc,
> >                  */
> >                 fstate_restore(current, regs);
> >         }
> > +
> > +       if (has_vector) {
> > +               regs->status |= SR_VS_INITIAL;
> > +               /*
> > +                * Restore the initial value to the vector register
> > +                * before starting the user program.
> > +                */
> > +               vstate_restore(current, regs);
> > +       }
> > +
> >         regs->epc = pc;
> >         regs->sp = sp;
> >         set_fs(USER_DS);
> > diff --git a/arch/riscv/kernel/ptrace.c b/arch/riscv/kernel/ptrace.c
> > index 407464201b91..0e3c3543476c 100644
> > --- a/arch/riscv/kernel/ptrace.c
> > +++ b/arch/riscv/kernel/ptrace.c
> > @@ -26,6 +26,9 @@ enum riscv_regset {
> >  #ifdef CONFIG_FPU
> >         REGSET_F,
> >  #endif
> > +#ifdef CONFIG_VECTOR
> > +       REGSET_V,
> > +#endif
> >  };
> >
> >  static int riscv_gpr_get(struct task_struct *target,
> > @@ -92,6 +95,34 @@ static int riscv_fpr_set(struct task_struct *target,
> >  }
> >  #endif
> >
> > +#ifdef CONFIG_VECTOR
> > +static int riscv_vr_get(struct task_struct *target,
> > +                        const struct user_regset *regset,
> > +                        unsigned int pos, unsigned int count,
> > +                        void *kbuf, void __user *ubuf)
> > +{
> > +       int ret;
> > +       struct __riscv_v_state *vstate = &target->thread.vstate;
> > +
> > +       ret = user_regset_copyout(&pos, &count, &kbuf, &ubuf, vstate, 0,
> > +                                 offsetof(struct __riscv_v_state, vtype));
> > +       return ret;
> > +}
> > +
> > +static int riscv_vr_set(struct task_struct *target,
> > +                        const struct user_regset *regset,
> > +                        unsigned int pos, unsigned int count,
> > +                        const void *kbuf, const void __user *ubuf)
> > +{
> > +       int ret;
> > +       struct __riscv_v_state *vstate = &target->thread.vstate;
> > +
> > +       ret = user_regset_copyin(&pos, &count, &kbuf, &ubuf, vstate, 0,
> > +                                offsetof(struct __riscv_v_state, vtype));
> > +       return ret;
> > +}
> > +#endif
> > +
> >  static const struct user_regset riscv_user_regset[] = {
> >         [REGSET_X] = {
> >                 .core_note_type = NT_PRSTATUS,
> > @@ -111,6 +142,16 @@ static const struct user_regset riscv_user_regset[] = {
> >                 .set = &riscv_fpr_set,
> >         },
> >  #endif
> > +#ifdef CONFIG_VECTOR
> > +       [REGSET_V] = {
> > +               .core_note_type = NT_RISCV_VECTOR,
> > +               .n = ELF_NVREG,
> > +               .size = sizeof(elf_greg_t),
> > +               .align = sizeof(elf_greg_t),
> > +               .get = &riscv_vr_get,
> > +               .set = &riscv_vr_set,
> > +       },
> > +#endif
> >  };
> >
> >  static const struct user_regset_view riscv_user_native_view = {
> > diff --git a/arch/riscv/kernel/signal.c b/arch/riscv/kernel/signal.c
> > index 17ba190e84a5..17d1b3514d4b 100644
> > --- a/arch/riscv/kernel/signal.c
> > +++ b/arch/riscv/kernel/signal.c
> > @@ -83,6 +83,40 @@ static long save_fp_state(struct pt_regs *regs,
> >  #define restore_fp_state(task, regs) (0)
> >  #endif
> >
> > +#ifdef CONFIG_VECTOR
> > +static long restore_v_state(struct pt_regs *regs,
> > +                           struct __riscv_v_state *sc_vregs)
> > +{
> > +       long err;
> > +       struct __riscv_v_state __user *state = sc_vregs;
> > +
> > +       err = __copy_from_user(&current->thread.vstate, state, sizeof(*state));
> > +       if (unlikely(err))
> > +               return err;
> > +
> > +       vstate_restore(current, regs);
> > +
> > +       return err;
> > +}
> > +
> > +static long save_v_state(struct pt_regs *regs,
> > +                        struct __riscv_v_state *sc_vregs)
> > +{
> > +       long err;
> > +       struct __riscv_v_state __user *state = sc_vregs;
> > +
> > +       fstate_save(current, regs);
>
> Hmm, strange. Why fstate_save() ??
>
> I guess this is a typo.
Oops, thx for the correct: vstate_save()


Best Regards
 Guo Ren

ML: https://lore.kernel.org/linux-csky/

