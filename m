Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E3091461C9
	for <lists+linux-riscv@lfdr.de>; Thu, 23 Jan 2020 07:05:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=VW7o+7oZ3IFGcowWxTloXzeog29yqXO8P2k+C9FNOc0=; b=mADbN2wYvnGts0b2fcR+UaCNi
	wQMm8T8E/ZfkZzT8i1sJYmB9HfhAx8EunjoU8VJgOtdqIQ4j97eHie2BlvFsk3NZgPx5eIzHcJMel
	xUxhWaQwkjh2fYNynhFNinBYHsuM8FyPtbrvJ8Vf1RjCr8mdiCXuRi0eyPNmwCmzz6hq0j8et9iZr
	9aZzXFDNxfIq4Twu7eWkJakAVB538Bdqmu1/ke5hQEYEt67wlTX6iJyGfEapMrRG7kXFoHmXtLlwG
	xtJjKxC/je44T/qGCBPic7mYWUY5kjK5WlCjiT6BQbmbobs0rlmqFEFvFzCDlVC3wKXummc5g47aC
	bLAGIaJuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuVc5-0006h2-0C; Thu, 23 Jan 2020 06:05:09 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuVbx-00064Y-Q5
 for linux-riscv@lists.infradead.org; Thu, 23 Jan 2020 06:05:04 +0000
Received: by mail-wr1-x441.google.com with SMTP id y17so1718023wrh.5
 for <linux-riscv@lists.infradead.org>; Wed, 22 Jan 2020 22:05:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=VW7o+7oZ3IFGcowWxTloXzeog29yqXO8P2k+C9FNOc0=;
 b=ZY+RlfS1TTkHHNxahenHVxF0q0jzsBg+zfpvjuAF/QJ0XFynp4Os0v7k8XcjFjhj5i
 ZFM+VUwHtm5ox8YPyUMT1xaytre5ZssLEk1f+OW6tYtaTl+1ad5t8nJ3a0340GIvMuKs
 roKdk64q/VQ2BZM+rvI29PQ2jrcgGsIhtOBawjoDqW3glvJXvF/2WxkBTcyu/CF4XhAW
 1PpXzZI7pDnhpaVqvGtypgJ/BkSoZ5jG82D/sHPfRedcvwUqizxcC4oeaFocqGnJmI9B
 uE+NIYPogebrnA5YyOhauXq4NjxbH63EyjOSBleYLfrIeXH1FefkJZ5aRlInoy8tgSOh
 O3Sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=VW7o+7oZ3IFGcowWxTloXzeog29yqXO8P2k+C9FNOc0=;
 b=CdFUT2kDOjY7r0CGAlh33jAfnOjZrS63XsqAUij9BBAa/2sHjSQIDhDPgMoRJBiU8Z
 x8wjyk2cHlnUTd/5WWsvabTmXV0ZTK1qf+1IqRV527pojohmybLAoQaVIBSy8pqCcve8
 iiM6Btpxw//kk8daIDK/54qaAUvsaojs+f2kXdpnYc5NuNu16ggXZtY6CVoktquXbS2n
 FE7RCJk21j/Fqx5w5K9k1f6/HW+yZe7xBjEoKLqRS5Xy+onVJznYrykOM7AMsEOs4s01
 Bhcd04K66/DGgo62xRXb0CQIlFzL+Eidf+vxfTB7Zb9X+NchprcGKWx/66oZNw4Z9UZI
 8+3A==
X-Gm-Message-State: APjAAAWcKHIfHD3ZVFgkcVtxQPgEtZtq+U3ycB/Tc5I/a/IvTsVwZaI2
 pLh70e01zjXTumRzvKSzBuNqUfFC/Isc5/+LLf7FZg==
X-Google-Smtp-Source: APXvYqwGqWwqzfEVtfmrtwTsMzwvvaeBxQyzfsr+wuuj+l+FhceAVsCHWwu2PBvKq1xER7fcHhKpQe1UUo7Rqv1DXOM=
X-Received: by 2002:a5d:5345:: with SMTP id t5mr16557967wrv.0.1579759498810;
 Wed, 22 Jan 2020 22:04:58 -0800 (PST)
MIME-Version: 1.0
References: <20200116143029.31441-1-guoren@kernel.org>
 <20200116143029.31441-4-guoren@kernel.org>
In-Reply-To: <20200116143029.31441-4-guoren@kernel.org>
From: Anup Patel <anup@brainfault.org>
Date: Thu, 23 Jan 2020 11:34:47 +0530
Message-ID: <CAAhSdy0ZGOgg4NOKc9eheS8wAJSDRi3oZoGVfQNdLyavedTZAg@mail.gmail.com>
Subject: Re: [PATCH V2 4/4] riscv: Add vector ISA support
To: Guo Ren <guoren@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200122_220501_887023_12F1085C 
X-CRM114-Status: GOOD (  21.27  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-arch@vger.kernel.org, Albert Ou <aou@eecs.berkeley.edu>,
 Guo Ren <ren_guo@c-sky.com>, Arnd Bergmann <arnd@arndb.de>,
 Atish Patra <atish.patra@wdc.com>, Andreas Schwab <schwab@linux-m68k.org>,
 Anup Patel <Anup.Patel@wdc.com>,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 linux-csky@vger.kernel.org, Alan Kao <alankao@andestech.com>,
 Vincent Chen <vincent.chen@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>,
 Zong Li <zong.li@sifive.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 Greentime Hu <greentime.hu@sifive.com>,
 linux-riscv <linux-riscv@lists.infradead.org>, Bin Meng <bmeng.cn@gmail.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, Jan 16, 2020 at 8:01 PM <guoren@kernel.org> wrote:
>
> From: Guo Ren <ren_guo@c-sky.com>
>
> The implementation follow the RISC-V "V" Vector Extension draft v0.8 with
> 128bit-vlen and it's based on linux-5.5-rc4.
>
> The patch implement basic context switch, signal and ptrace interface
> with a new regset NT_RISCV_VECTOR. Only fixed 128bit-vlen is implemented.
> We need to discuss about the abi for libc sigcontext. (The maximum size of
> vlen for libc signal context structure 128/256/512 ?)

I think this can be further broken down into smaller & bisectable patches:
1. First patch for CSR defines related to VECTOR extension
arch/riscv/include/asm/csr.h
2. Second patch just to add Kconfig option and update Makefile
arch/riscv/Kconfig
arch/riscv/Makefile
3. Third patch to detect "has_vector" at time of CPU feature parsing
arch/riscv/kernel/cpufeature.c
4. Fourth patch to reset VECTOR registers at boot-time
arch/riscv/kernel/head.S
5. Fifth patch to task switch support for VECTOR
6. Sixth and last patch for ptrace support for VECTOR

Above is just some tentative patch breakup, you can come-up
with your own patch breakup as well.

Regards,
Anup

>
> Signed-off-by: Guo Ren <ren_guo@c-sky.com>
> Cc: Paul Walmsley <paul.walmsley@sifive.com>
> Cc: Palmer Dabbelt <palmer@dabbelt.com>
> Cc: Albert Ou <aou@eecs.berkeley.edu>
> Cc: Alan Kao <alankao@andestech.com>
> Cc: Anup Patel <Anup.Patel@wdc.com>
> CC: Andreas Schwab <schwab@linux-m68k.org>
>
> ---
> Changelog V2:
>  - Fixup typo "vecotr, fstate_save->vstate_save".
>  - Fixup wrong saved registers' length in vector.S.
>  - Seperate unrelated patches from this one.
> ---
>  arch/riscv/Kconfig                       |   9 ++
>  arch/riscv/Makefile                      |   1 +
>  arch/riscv/include/asm/csr.h             |  17 +-
>  arch/riscv/include/asm/processor.h       |   1 +
>  arch/riscv/include/asm/switch_to.h       |  48 ++++++
>  arch/riscv/include/uapi/asm/elf.h        |   1 +
>  arch/riscv/include/uapi/asm/ptrace.h     |   9 ++
>  arch/riscv/include/uapi/asm/sigcontext.h |   1 +
>  arch/riscv/kernel/Makefile               |   1 +
>  arch/riscv/kernel/asm-offsets.c          | 188 +++++++++++++++++++++++
>  arch/riscv/kernel/cpufeature.c           |   8 +
>  arch/riscv/kernel/entry.S                |   2 +-
>  arch/riscv/kernel/head.S                 |  49 +++++-
>  arch/riscv/kernel/process.c              |  10 ++
>  arch/riscv/kernel/ptrace.c               |  41 +++++
>  arch/riscv/kernel/signal.c               |  40 +++++
>  arch/riscv/kernel/vector.S               |  84 ++++++++++
>  include/uapi/linux/elf.h                 |   1 +
>  18 files changed, 506 insertions(+), 5 deletions(-)
>  create mode 100644 arch/riscv/kernel/vector.S
>
> diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
> index b16954229c96..c5b2e5df1349 100644
> --- a/arch/riscv/Kconfig
> +++ b/arch/riscv/Kconfig
> @@ -292,6 +292,15 @@ config FPU
>
>           If you don't know what to do here, say Y.
>
> +config VECTOR
> +       bool "VECTOR support"
> +       default n
> +       help
> +         Say N here if you want to disable all vector related procedure
> +         in the kernel.
> +
> +         If you don't know what to do here, say Y.
> +
>  endmenu
>
>  menu "Kernel features"
> diff --git a/arch/riscv/Makefile b/arch/riscv/Makefile
> index 6d09b53cf106..071eb1148e01 100644
> --- a/arch/riscv/Makefile
> +++ b/arch/riscv/Makefile
> @@ -44,6 +44,7 @@ riscv-march-aflags-$(CONFIG_ARCH_RV32I)               := rv32ima
>  riscv-march-aflags-$(CONFIG_ARCH_RV64I)                := rv64ima
>  riscv-march-aflags-$(CONFIG_FPU)               := $(riscv-march-aflags-y)fd
>  riscv-march-aflags-$(CONFIG_RISCV_ISA_C)       := $(riscv-march-aflags-y)c
> +riscv-march-aflags-$(CONFIG_VECTOR)            := $(riscv-march-aflags-y)v
>
>  KBUILD_CFLAGS += -march=$(riscv-march-cflags-y)
>  KBUILD_AFLAGS += -march=$(riscv-march-aflags-y)
> diff --git a/arch/riscv/include/asm/csr.h b/arch/riscv/include/asm/csr.h
> index 6a06277a84d6..ce3aa826bb16 100644
> --- a/arch/riscv/include/asm/csr.h
> +++ b/arch/riscv/include/asm/csr.h
> @@ -24,6 +24,12 @@
>  #define SR_FS_CLEAN    _AC(0x00004000, UL)
>  #define SR_FS_DIRTY    _AC(0x00006000, UL)
>
> +#define SR_VS           _AC(0x01800000, UL) /* Vector Status */
> +#define SR_VS_OFF       _AC(0x00000000, UL)
> +#define SR_VS_INITIAL   _AC(0x00800000, UL)
> +#define SR_VS_CLEAN     _AC(0x01000000, UL)
> +#define SR_VS_DIRTY     _AC(0x01800000, UL)
> +
>  #define SR_XS          _AC(0x00018000, UL) /* Extension Status */
>  #define SR_XS_OFF      _AC(0x00000000, UL)
>  #define SR_XS_INITIAL  _AC(0x00008000, UL)
> @@ -31,9 +37,9 @@
>  #define SR_XS_DIRTY    _AC(0x00018000, UL)
>
>  #ifndef CONFIG_64BIT
> -#define SR_SD          _AC(0x80000000, UL) /* FS/XS dirty */
> +#define SR_SD          _AC(0x80000000, UL) /* FS/VS/XS dirty */
>  #else
> -#define SR_SD          _AC(0x8000000000000000, UL) /* FS/XS dirty */
> +#define SR_SD          _AC(0x8000000000000000, UL) /* FS/VS/XS dirty */
>  #endif
>
>  /* SATP flags */
> @@ -108,6 +114,13 @@
>  #define CSR_MIP                        0x344
>  #define CSR_MHARTID            0xf14
>
> +#define CSR_VSTART             0x8
> +#define CSR_VXSAT              0x9
> +#define CSR_VXRM               0xa
> +#define CSR_VL                 0xc20
> +#define CSR_VTYPE              0xc21
> +#define CSR_VLENB              0xc22
> +
>  #ifdef CONFIG_RISCV_M_MODE
>  # define CSR_STATUS    CSR_MSTATUS
>  # define CSR_IE                CSR_MIE
> diff --git a/arch/riscv/include/asm/processor.h b/arch/riscv/include/asm/processor.h
> index 3ddb798264f1..217273375cfb 100644
> --- a/arch/riscv/include/asm/processor.h
> +++ b/arch/riscv/include/asm/processor.h
> @@ -32,6 +32,7 @@ struct thread_struct {
>         unsigned long sp;       /* Kernel mode stack */
>         unsigned long s[12];    /* s[0]: frame pointer */
>         struct __riscv_d_ext_state fstate;
> +       struct __riscv_v_state vstate;
>  };
>
>  #define INIT_THREAD {                                  \
> diff --git a/arch/riscv/include/asm/switch_to.h b/arch/riscv/include/asm/switch_to.h
> index b9234e7178d0..6e1c7fa599be 100644
> --- a/arch/riscv/include/asm/switch_to.h
> +++ b/arch/riscv/include/asm/switch_to.h
> @@ -63,6 +63,52 @@ extern bool has_fpu;
>  #define __switch_to_fpu(__prev, __next) do { } while (0)
>  #endif
>
> +#ifdef CONFIG_VECTOR
> +extern void __vstate_save(struct task_struct *save_to);
> +extern void __vstate_restore(struct task_struct *restore_from);
> +
> +static inline void __vstate_clean(struct pt_regs *regs)
> +{
> +       regs->status |= (regs->status & ~(SR_VS)) | SR_VS_CLEAN;
> +}
> +
> +static inline void vstate_save(struct task_struct *task,
> +                              struct pt_regs *regs)
> +{
> +       if ((regs->status & SR_VS) == SR_VS_DIRTY) {
> +               __vstate_save(task);
> +               __vstate_clean(regs);
> +       }
> +}
> +
> +static inline void vstate_restore(struct task_struct *task,
> +                                 struct pt_regs *regs)
> +{
> +       if ((regs->status & SR_VS) != SR_VS_OFF) {
> +               __vstate_restore(task);
> +               __vstate_clean(regs);
> +       }
> +}
> +
> +static inline void __switch_to_vector(struct task_struct *prev,
> +                                  struct task_struct *next)
> +{
> +       struct pt_regs *regs;
> +
> +       regs = task_pt_regs(prev);
> +       if (unlikely(regs->status & SR_SD))
> +               vstate_save(prev, regs);
> +       vstate_restore(next, task_pt_regs(next));
> +}
> +
> +extern bool has_vector;
> +#else
> +#define has_vector false
> +#define vstate_save(task, regs) do { } while (0)
> +#define vstate_restore(task, regs) do { } while (0)
> +#define __switch_to_vector(__prev, __next) do { } while (0)
> +#endif
> +
>  extern struct task_struct *__switch_to(struct task_struct *,
>                                        struct task_struct *);
>
> @@ -72,6 +118,8 @@ do {                                                 \
>         struct task_struct *__next = (next);            \
>         if (has_fpu)                                    \
>                 __switch_to_fpu(__prev, __next);        \
> +       if (has_vector)                                 \
> +               __switch_to_vector(__prev, __next);     \
>         ((last) = __switch_to(__prev, __next));         \
>  } while (0)
>
> diff --git a/arch/riscv/include/uapi/asm/elf.h b/arch/riscv/include/uapi/asm/elf.h
> index d696d6610231..099434d075a7 100644
> --- a/arch/riscv/include/uapi/asm/elf.h
> +++ b/arch/riscv/include/uapi/asm/elf.h
> @@ -23,6 +23,7 @@ typedef struct user_regs_struct elf_gregset_t;
>  typedef __u64 elf_fpreg_t;
>  typedef union __riscv_fp_state elf_fpregset_t;
>  #define ELF_NFPREG (sizeof(struct __riscv_d_ext_state) / sizeof(elf_fpreg_t))
> +#define ELF_NVREG  (sizeof(struct __riscv_v_state) / sizeof(elf_greg_t))
>
>  #if __riscv_xlen == 64
>  #define ELF_RISCV_R_SYM(r_info)                ELF64_R_SYM(r_info)
> diff --git a/arch/riscv/include/uapi/asm/ptrace.h b/arch/riscv/include/uapi/asm/ptrace.h
> index 882547f6bd5c..d913e8949b87 100644
> --- a/arch/riscv/include/uapi/asm/ptrace.h
> +++ b/arch/riscv/include/uapi/asm/ptrace.h
> @@ -71,6 +71,15 @@ struct __riscv_q_ext_state {
>         __u32 reserved[3];
>  };
>
> +struct __riscv_v_state {
> +       __uint128_t v[32];
> +       unsigned long vstart;
> +       unsigned long vxsat;
> +       unsigned long vxrm;
> +       unsigned long vl;
> +       unsigned long vtype;
> +};
> +
>  union __riscv_fp_state {
>         struct __riscv_f_ext_state f;
>         struct __riscv_d_ext_state d;
> diff --git a/arch/riscv/include/uapi/asm/sigcontext.h b/arch/riscv/include/uapi/asm/sigcontext.h
> index 84f2dfcfdbce..f74b3c814423 100644
> --- a/arch/riscv/include/uapi/asm/sigcontext.h
> +++ b/arch/riscv/include/uapi/asm/sigcontext.h
> @@ -17,6 +17,7 @@
>  struct sigcontext {
>         struct user_regs_struct sc_regs;
>         union __riscv_fp_state sc_fpregs;
> +       struct __riscv_v_state sc_vregs;
>  };
>
>  #endif /* _UAPI_ASM_RISCV_SIGCONTEXT_H */
> diff --git a/arch/riscv/kernel/Makefile b/arch/riscv/kernel/Makefile
> index f40205cb9a22..e5276c3bdffc 100644
> --- a/arch/riscv/kernel/Makefile
> +++ b/arch/riscv/kernel/Makefile
> @@ -30,6 +30,7 @@ obj-$(CONFIG_MMU) += vdso.o vdso/
>
>  obj-$(CONFIG_RISCV_M_MODE)     += clint.o
>  obj-$(CONFIG_FPU)              += fpu.o
> +obj-$(CONFIG_VECTOR)           += vector.o
>  obj-$(CONFIG_SMP)              += smpboot.o
>  obj-$(CONFIG_SMP)              += smp.o
>  obj-$(CONFIG_MODULES)          += module.o
> diff --git a/arch/riscv/kernel/asm-offsets.c b/arch/riscv/kernel/asm-offsets.c
> index 07cb9c10de4e..b662db7c71c0 100644
> --- a/arch/riscv/kernel/asm-offsets.c
> +++ b/arch/riscv/kernel/asm-offsets.c
> @@ -70,6 +70,45 @@ void asm_offsets(void)
>         OFFSET(TASK_THREAD_F31, task_struct, thread.fstate.f[31]);
>         OFFSET(TASK_THREAD_FCSR, task_struct, thread.fstate.fcsr);
>
> +       OFFSET(TASK_THREAD_V0,  task_struct, thread.vstate.v[0]);
> +       OFFSET(TASK_THREAD_V1,  task_struct, thread.vstate.v[1]);
> +       OFFSET(TASK_THREAD_V2,  task_struct, thread.vstate.v[2]);
> +       OFFSET(TASK_THREAD_V3,  task_struct, thread.vstate.v[3]);
> +       OFFSET(TASK_THREAD_V4,  task_struct, thread.vstate.v[4]);
> +       OFFSET(TASK_THREAD_V5,  task_struct, thread.vstate.v[5]);
> +       OFFSET(TASK_THREAD_V6,  task_struct, thread.vstate.v[6]);
> +       OFFSET(TASK_THREAD_V7,  task_struct, thread.vstate.v[7]);
> +       OFFSET(TASK_THREAD_V8,  task_struct, thread.vstate.v[8]);
> +       OFFSET(TASK_THREAD_V9,  task_struct, thread.vstate.v[9]);
> +       OFFSET(TASK_THREAD_V10, task_struct, thread.vstate.v[10]);
> +       OFFSET(TASK_THREAD_V11, task_struct, thread.vstate.v[11]);
> +       OFFSET(TASK_THREAD_V12, task_struct, thread.vstate.v[12]);
> +       OFFSET(TASK_THREAD_V13, task_struct, thread.vstate.v[13]);
> +       OFFSET(TASK_THREAD_V14, task_struct, thread.vstate.v[14]);
> +       OFFSET(TASK_THREAD_V15, task_struct, thread.vstate.v[15]);
> +       OFFSET(TASK_THREAD_V16, task_struct, thread.vstate.v[16]);
> +       OFFSET(TASK_THREAD_V17, task_struct, thread.vstate.v[17]);
> +       OFFSET(TASK_THREAD_V18, task_struct, thread.vstate.v[18]);
> +       OFFSET(TASK_THREAD_V19, task_struct, thread.vstate.v[19]);
> +       OFFSET(TASK_THREAD_V20, task_struct, thread.vstate.v[20]);
> +       OFFSET(TASK_THREAD_V21, task_struct, thread.vstate.v[21]);
> +       OFFSET(TASK_THREAD_V22, task_struct, thread.vstate.v[22]);
> +       OFFSET(TASK_THREAD_V23, task_struct, thread.vstate.v[23]);
> +       OFFSET(TASK_THREAD_V24, task_struct, thread.vstate.v[24]);
> +       OFFSET(TASK_THREAD_V25, task_struct, thread.vstate.v[25]);
> +       OFFSET(TASK_THREAD_V26, task_struct, thread.vstate.v[26]);
> +       OFFSET(TASK_THREAD_V27, task_struct, thread.vstate.v[27]);
> +       OFFSET(TASK_THREAD_V28, task_struct, thread.vstate.v[28]);
> +       OFFSET(TASK_THREAD_V29, task_struct, thread.vstate.v[29]);
> +       OFFSET(TASK_THREAD_V30, task_struct, thread.vstate.v[30]);
> +       OFFSET(TASK_THREAD_V31, task_struct, thread.vstate.v[31]);
> +       OFFSET(TASK_THREAD_VSTART, task_struct, thread.vstate.vstart);
> +       OFFSET(TASK_THREAD_VXSAT, task_struct, thread.vstate.vxsat);
> +       OFFSET(TASK_THREAD_VXRM, task_struct, thread.vstate.vxrm);
> +       OFFSET(TASK_THREAD_VL, task_struct, thread.vstate.vl);
> +       OFFSET(TASK_THREAD_VTYPE, task_struct, thread.vstate.vtype);
> +       DEFINE(RISCV_VECTOR_VLENB, sizeof(__uint128_t));
> +
>         DEFINE(PT_SIZE, sizeof(struct pt_regs));
>         OFFSET(PT_EPC, pt_regs, epc);
>         OFFSET(PT_RA, pt_regs, ra);
> @@ -304,6 +343,155 @@ void asm_offsets(void)
>                 - offsetof(struct task_struct, thread.fstate.f[0])
>         );
>
> +       DEFINE(TASK_THREAD_V0_V0,
> +                 offsetof(struct task_struct, thread.vstate.v[0])
> +               - offsetof(struct task_struct, thread.vstate.v[0])
> +       );
> +       DEFINE(TASK_THREAD_V1_V0,
> +                 offsetof(struct task_struct, thread.vstate.v[1])
> +               - offsetof(struct task_struct, thread.vstate.v[0])
> +       );
> +       DEFINE(TASK_THREAD_V2_V0,
> +                 offsetof(struct task_struct, thread.vstate.v[2])
> +               - offsetof(struct task_struct, thread.vstate.v[0])
> +       );
> +       DEFINE(TASK_THREAD_V3_V0,
> +                 offsetof(struct task_struct, thread.vstate.v[3])
> +               - offsetof(struct task_struct, thread.vstate.v[0])
> +       );
> +       DEFINE(TASK_THREAD_V4_V0,
> +                 offsetof(struct task_struct, thread.vstate.v[4])
> +               - offsetof(struct task_struct, thread.vstate.v[0])
> +       );
> +       DEFINE(TASK_THREAD_V5_V0,
> +                 offsetof(struct task_struct, thread.vstate.v[5])
> +               - offsetof(struct task_struct, thread.vstate.v[0])
> +       );
> +       DEFINE(TASK_THREAD_V6_V0,
> +                 offsetof(struct task_struct, thread.vstate.v[6])
> +               - offsetof(struct task_struct, thread.vstate.v[0])
> +       );
> +       DEFINE(TASK_THREAD_V7_V0,
> +                 offsetof(struct task_struct, thread.vstate.v[7])
> +               - offsetof(struct task_struct, thread.vstate.v[0])
> +       );
> +       DEFINE(TASK_THREAD_V8_V0,
> +                 offsetof(struct task_struct, thread.vstate.v[8])
> +               - offsetof(struct task_struct, thread.vstate.v[0])
> +       );
> +       DEFINE(TASK_THREAD_V9_V0,
> +                 offsetof(struct task_struct, thread.vstate.v[9])
> +               - offsetof(struct task_struct, thread.vstate.v[0])
> +       );
> +       DEFINE(TASK_THREAD_V10_V0,
> +                 offsetof(struct task_struct, thread.vstate.v[10])
> +               - offsetof(struct task_struct, thread.vstate.v[0])
> +       );
> +       DEFINE(TASK_THREAD_V11_V0,
> +                 offsetof(struct task_struct, thread.vstate.v[11])
> +               - offsetof(struct task_struct, thread.vstate.v[0])
> +       );
> +       DEFINE(TASK_THREAD_V12_V0,
> +                 offsetof(struct task_struct, thread.vstate.v[12])
> +               - offsetof(struct task_struct, thread.vstate.v[0])
> +       );
> +       DEFINE(TASK_THREAD_V13_V0,
> +                 offsetof(struct task_struct, thread.vstate.v[13])
> +               - offsetof(struct task_struct, thread.vstate.v[0])
> +       );
> +       DEFINE(TASK_THREAD_V14_V0,
> +                 offsetof(struct task_struct, thread.vstate.v[14])
> +               - offsetof(struct task_struct, thread.vstate.v[0])
> +       );
> +       DEFINE(TASK_THREAD_V15_V0,
> +                 offsetof(struct task_struct, thread.vstate.v[15])
> +               - offsetof(struct task_struct, thread.vstate.v[0])
> +       );
> +       DEFINE(TASK_THREAD_V16_V0,
> +                 offsetof(struct task_struct, thread.vstate.v[16])
> +               - offsetof(struct task_struct, thread.vstate.v[0])
> +       );
> +       DEFINE(TASK_THREAD_V17_V0,
> +                 offsetof(struct task_struct, thread.vstate.v[17])
> +               - offsetof(struct task_struct, thread.vstate.v[0])
> +       );
> +       DEFINE(TASK_THREAD_V18_V0,
> +                 offsetof(struct task_struct, thread.vstate.v[18])
> +               - offsetof(struct task_struct, thread.vstate.v[0])
> +       );
> +       DEFINE(TASK_THREAD_V19_V0,
> +                 offsetof(struct task_struct, thread.vstate.v[19])
> +               - offsetof(struct task_struct, thread.vstate.v[0])
> +       );
> +       DEFINE(TASK_THREAD_V20_V0,
> +                 offsetof(struct task_struct, thread.vstate.v[20])
> +               - offsetof(struct task_struct, thread.vstate.v[0])
> +       );
> +       DEFINE(TASK_THREAD_V21_V0,
> +                 offsetof(struct task_struct, thread.vstate.v[21])
> +               - offsetof(struct task_struct, thread.vstate.v[0])
> +       );
> +       DEFINE(TASK_THREAD_V22_V0,
> +                 offsetof(struct task_struct, thread.vstate.v[22])
> +               - offsetof(struct task_struct, thread.vstate.v[0])
> +       );
> +       DEFINE(TASK_THREAD_V23_V0,
> +                 offsetof(struct task_struct, thread.vstate.v[23])
> +               - offsetof(struct task_struct, thread.vstate.v[0])
> +       );
> +       DEFINE(TASK_THREAD_V24_V0,
> +                 offsetof(struct task_struct, thread.vstate.v[24])
> +               - offsetof(struct task_struct, thread.vstate.v[0])
> +       );
> +       DEFINE(TASK_THREAD_V25_V0,
> +                 offsetof(struct task_struct, thread.vstate.v[25])
> +               - offsetof(struct task_struct, thread.vstate.v[0])
> +       );
> +       DEFINE(TASK_THREAD_V26_V0,
> +                 offsetof(struct task_struct, thread.vstate.v[26])
> +               - offsetof(struct task_struct, thread.vstate.v[0])
> +       );
> +       DEFINE(TASK_THREAD_V27_V0,
> +                 offsetof(struct task_struct, thread.vstate.v[27])
> +               - offsetof(struct task_struct, thread.vstate.v[0])
> +       );
> +       DEFINE(TASK_THREAD_V28_V0,
> +                 offsetof(struct task_struct, thread.vstate.v[28])
> +               - offsetof(struct task_struct, thread.vstate.v[0])
> +       );
> +       DEFINE(TASK_THREAD_V29_V0,
> +                 offsetof(struct task_struct, thread.vstate.v[29])
> +               - offsetof(struct task_struct, thread.vstate.v[0])
> +       );
> +       DEFINE(TASK_THREAD_V30_V0,
> +                 offsetof(struct task_struct, thread.vstate.v[30])
> +               - offsetof(struct task_struct, thread.vstate.v[0])
> +       );
> +       DEFINE(TASK_THREAD_V31_V0,
> +                 offsetof(struct task_struct, thread.vstate.v[31])
> +               - offsetof(struct task_struct, thread.vstate.v[0])
> +       );
> +       DEFINE(TASK_THREAD_VSTART_V0,
> +                 offsetof(struct task_struct, thread.vstate.vstart)
> +               - offsetof(struct task_struct, thread.vstate.v[0])
> +       );
> +       DEFINE(TASK_THREAD_VXSAT_V0,
> +                 offsetof(struct task_struct, thread.vstate.vxsat)
> +               - offsetof(struct task_struct, thread.vstate.v[0])
> +       );
> +       DEFINE(TASK_THREAD_VXRM_V0,
> +                 offsetof(struct task_struct, thread.vstate.vxrm)
> +               - offsetof(struct task_struct, thread.vstate.v[0])
> +       );
> +       DEFINE(TASK_THREAD_VL_V0,
> +                 offsetof(struct task_struct, thread.vstate.vl)
> +               - offsetof(struct task_struct, thread.vstate.v[0])
> +       );
> +       DEFINE(TASK_THREAD_VTYPE_V0,
> +                 offsetof(struct task_struct, thread.vstate.vtype)
> +               - offsetof(struct task_struct, thread.vstate.v[0])
> +       );
> +
>         /*
>          * We allocate a pt_regs on the stack when entering the kernel.  This
>          * ensures the alignment is sane.
> diff --git a/arch/riscv/kernel/cpufeature.c b/arch/riscv/kernel/cpufeature.c
> index c8527d770c98..c9ab24e3c79e 100644
> --- a/arch/riscv/kernel/cpufeature.c
> +++ b/arch/riscv/kernel/cpufeature.c
> @@ -16,6 +16,9 @@ unsigned long elf_hwcap __read_mostly;
>  #ifdef CONFIG_FPU
>  bool has_fpu __read_mostly;
>  #endif
> +#ifdef CONFIG_VECTOR
> +bool has_vector __read_mostly;
> +#endif
>
>  void riscv_fill_hwcap(void)
>  {
> @@ -73,4 +76,9 @@ void riscv_fill_hwcap(void)
>         if (elf_hwcap & (COMPAT_HWCAP_ISA_F | COMPAT_HWCAP_ISA_D))
>                 has_fpu = true;
>  #endif
> +
> +#ifdef CONFIG_VECTOR
> +       if (elf_hwcap & COMPAT_HWCAP_ISA_V)
> +               has_vector = true;
> +#endif
>  }
> diff --git a/arch/riscv/kernel/entry.S b/arch/riscv/kernel/entry.S
> index e163b7b64c86..828f0ebce4b5 100644
> --- a/arch/riscv/kernel/entry.S
> +++ b/arch/riscv/kernel/entry.S
> @@ -76,7 +76,7 @@ _save_context:
>          * Disable the FPU to detect illegal usage of floating point in kernel
>          * space.
>          */
> -       li t0, SR_SUM | SR_FS
> +       li t0, SR_SUM | SR_FS | SR_VS
>
>         REG_L s0, TASK_TI_USER_SP(tp)
>         csrrc s1, CSR_STATUS, t0
> diff --git a/arch/riscv/kernel/head.S b/arch/riscv/kernel/head.S
> index 2227db63f895..fab03292284e 100644
> --- a/arch/riscv/kernel/head.S
> +++ b/arch/riscv/kernel/head.S
> @@ -72,10 +72,10 @@ _start_kernel:
>  .option pop
>
>         /*
> -        * Disable FPU to detect illegal usage of
> +        * Disable FPU & VECTOR to detect illegal usage of
>          * floating point in kernel space
>          */
> -       li t0, SR_FS
> +       li t0, SR_FS | SR_VS
>         csrc CSR_STATUS, t0
>
>  #ifdef CONFIG_SMP
> @@ -290,6 +290,51 @@ ENTRY(reset_regs)
>         csrw    fcsr, 0
>         /* note that the caller must clear SR_FS */
>  #endif /* CONFIG_FPU */
> +
> +#ifdef CONFIG_VECTOR
> +       csrr    t0, CSR_MISA
> +       li      t1, (COMPAT_HWCAP_ISA_V >> 16)
> +       slli    t1, t1, 16
> +       and     t0, t0, t1
> +       beqz    t0, .Lreset_regs_done
> +
> +       li      t1, SR_VS
> +       csrs    CSR_STATUS, t1
> +       vmv.v.i v0, 0
> +       vmv.v.i v1, 0
> +       vmv.v.i v2, 0
> +       vmv.v.i v3, 0
> +       vmv.v.i v4, 0
> +       vmv.v.i v5, 0
> +       vmv.v.i v6, 0
> +       vmv.v.i v7, 0
> +       vmv.v.i v8, 0
> +       vmv.v.i v9, 0
> +       vmv.v.i v10, 0
> +       vmv.v.i v11, 0
> +       vmv.v.i v12, 0
> +       vmv.v.i v13, 0
> +       vmv.v.i v14, 0
> +       vmv.v.i v15, 0
> +       vmv.v.i v16, 0
> +       vmv.v.i v17, 0
> +       vmv.v.i v18, 0
> +       vmv.v.i v19, 0
> +       vmv.v.i v20, 0
> +       vmv.v.i v21, 0
> +       vmv.v.i v22, 0
> +       vmv.v.i v23, 0
> +       vmv.v.i v24, 0
> +       vmv.v.i v25, 0
> +       vmv.v.i v26, 0
> +       vmv.v.i v27, 0
> +       vmv.v.i v28, 0
> +       vmv.v.i v29, 0
> +       vmv.v.i v30, 0
> +       vmv.v.i v31, 0
> +       /* note that the caller must clear SR_VS */
> +#endif /* CONFIG_VECTOR */
> +
>  .Lreset_regs_done:
>         ret
>  END(reset_regs)
> diff --git a/arch/riscv/kernel/process.c b/arch/riscv/kernel/process.c
> index 95a3031e5c7c..3665f8c1a2c1 100644
> --- a/arch/riscv/kernel/process.c
> +++ b/arch/riscv/kernel/process.c
> @@ -74,6 +74,16 @@ void start_thread(struct pt_regs *regs, unsigned long pc,
>                  */
>                 fstate_restore(current, regs);
>         }
> +
> +       if (has_vector) {
> +               regs->status |= SR_VS_INITIAL;
> +               /*
> +                * Restore the initial value to the vector register
> +                * before starting the user program.
> +                */
> +               vstate_restore(current, regs);
> +       }
> +
>         regs->epc = pc;
>         regs->sp = sp;
>         set_fs(USER_DS);
> diff --git a/arch/riscv/kernel/ptrace.c b/arch/riscv/kernel/ptrace.c
> index 407464201b91..0e3c3543476c 100644
> --- a/arch/riscv/kernel/ptrace.c
> +++ b/arch/riscv/kernel/ptrace.c
> @@ -26,6 +26,9 @@ enum riscv_regset {
>  #ifdef CONFIG_FPU
>         REGSET_F,
>  #endif
> +#ifdef CONFIG_VECTOR
> +       REGSET_V,
> +#endif
>  };
>
>  static int riscv_gpr_get(struct task_struct *target,
> @@ -92,6 +95,34 @@ static int riscv_fpr_set(struct task_struct *target,
>  }
>  #endif
>
> +#ifdef CONFIG_VECTOR
> +static int riscv_vr_get(struct task_struct *target,
> +                        const struct user_regset *regset,
> +                        unsigned int pos, unsigned int count,
> +                        void *kbuf, void __user *ubuf)
> +{
> +       int ret;
> +       struct __riscv_v_state *vstate = &target->thread.vstate;
> +
> +       ret = user_regset_copyout(&pos, &count, &kbuf, &ubuf, vstate, 0,
> +                                 offsetof(struct __riscv_v_state, vtype));
> +       return ret;
> +}
> +
> +static int riscv_vr_set(struct task_struct *target,
> +                        const struct user_regset *regset,
> +                        unsigned int pos, unsigned int count,
> +                        const void *kbuf, const void __user *ubuf)
> +{
> +       int ret;
> +       struct __riscv_v_state *vstate = &target->thread.vstate;
> +
> +       ret = user_regset_copyin(&pos, &count, &kbuf, &ubuf, vstate, 0,
> +                                offsetof(struct __riscv_v_state, vtype));
> +       return ret;
> +}
> +#endif
> +
>  static const struct user_regset riscv_user_regset[] = {
>         [REGSET_X] = {
>                 .core_note_type = NT_PRSTATUS,
> @@ -111,6 +142,16 @@ static const struct user_regset riscv_user_regset[] = {
>                 .set = &riscv_fpr_set,
>         },
>  #endif
> +#ifdef CONFIG_VECTOR
> +       [REGSET_V] = {
> +               .core_note_type = NT_RISCV_VECTOR,
> +               .n = ELF_NVREG,
> +               .size = sizeof(elf_greg_t),
> +               .align = sizeof(elf_greg_t),
> +               .get = &riscv_vr_get,
> +               .set = &riscv_vr_set,
> +       },
> +#endif
>  };
>
>  static const struct user_regset_view riscv_user_native_view = {
> diff --git a/arch/riscv/kernel/signal.c b/arch/riscv/kernel/signal.c
> index 17ba190e84a5..4295c00e8934 100644
> --- a/arch/riscv/kernel/signal.c
> +++ b/arch/riscv/kernel/signal.c
> @@ -83,6 +83,40 @@ static long save_fp_state(struct pt_regs *regs,
>  #define restore_fp_state(task, regs) (0)
>  #endif
>
> +#ifdef CONFIG_VECTOR
> +static long restore_v_state(struct pt_regs *regs,
> +                           struct __riscv_v_state *sc_vregs)
> +{
> +       long err;
> +       struct __riscv_v_state __user *state = sc_vregs;
> +
> +       err = __copy_from_user(&current->thread.vstate, state, sizeof(*state));
> +       if (unlikely(err))
> +               return err;
> +
> +       vstate_restore(current, regs);
> +
> +       return err;
> +}
> +
> +static long save_v_state(struct pt_regs *regs,
> +                        struct __riscv_v_state *sc_vregs)
> +{
> +       long err;
> +       struct __riscv_v_state __user *state = sc_vregs;
> +
> +       vstate_save(current, regs);
> +       err = __copy_to_user(state, &current->thread.vstate, sizeof(*state));
> +       if (unlikely(err))
> +               return err;
> +
> +       return err;
> +}
> +#else
> +#define save_v_state(task, regs) (0)
> +#define restore_v_state(task, regs) (0)
> +#endif
> +
>  static long restore_sigcontext(struct pt_regs *regs,
>         struct sigcontext __user *sc)
>  {
> @@ -92,6 +126,9 @@ static long restore_sigcontext(struct pt_regs *regs,
>         /* Restore the floating-point state. */
>         if (has_fpu)
>                 err |= restore_fp_state(regs, &sc->sc_fpregs);
> +       /* Restore the vector state. */
> +       if (has_vector)
> +               err |= restore_v_state(regs, &sc->sc_vregs);
>         return err;
>  }
>
> @@ -145,6 +182,9 @@ static long setup_sigcontext(struct rt_sigframe __user *frame,
>         /* Save the floating-point state. */
>         if (has_fpu)
>                 err |= save_fp_state(regs, &sc->sc_fpregs);
> +       /* Save the vector state. */
> +       if (has_vector)
> +               err |= save_v_state(regs, &sc->sc_vregs);
>         return err;
>  }
>
> diff --git a/arch/riscv/kernel/vector.S b/arch/riscv/kernel/vector.S
> new file mode 100644
> index 000000000000..0afc308a6e02
> --- /dev/null
> +++ b/arch/riscv/kernel/vector.S
> @@ -0,0 +1,84 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/*
> + * Copyright (C) 2012 Regents of the University of California
> + * Copyright (C) 2017 SiFive
> + * Copyright (C) 2019 T-HEAD
> + *
> + *   This program is free software; you can redistribute it and/or
> + *   modify it under the terms of the GNU General Public License
> + *   as published by the Free Software Foundation, version 2.
> + *
> + *   This program is distributed in the hope that it will be useful,
> + *   but WITHOUT ANY WARRANTY; without even the implied warranty of
> + *   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + *   GNU General Public License for more details.
> + */
> +
> +#include <linux/linkage.h>
> +
> +#include <asm/asm.h>
> +#include <asm/csr.h>
> +#include <asm/asm-offsets.h>
> +
> +ENTRY(__vstate_save)
> +       li      a2,  TASK_THREAD_V0
> +       add     a0,  a0, a2
> +
> +       li      t1, (SR_VS | SR_FS)
> +       csrs    sstatus, t1
> +
> +       csrr    t0,  CSR_VSTART
> +       sd      t0,  TASK_THREAD_VSTART_V0(a0)
> +       csrr    t0,  CSR_VXSAT
> +       sd      t0,  TASK_THREAD_VXSAT_V0(a0)
> +       csrr    t0,  CSR_VXRM
> +       sd      t0,  TASK_THREAD_VXRM_V0(a0)
> +       csrr    t0,  CSR_VL
> +       sd      t0,  TASK_THREAD_VL_V0(a0)
> +       csrr    t0,  CSR_VTYPE
> +       sd      t0,  TASK_THREAD_VTYPE_V0(a0)
> +
> +       vsetvli t0, x0, e8,m8
> +       vsb.v   v0,  (a0)
> +       addi    a0, a0, RISCV_VECTOR_VLENB*8
> +       vsb.v   v8,  (a0)
> +       addi    a0, a0, RISCV_VECTOR_VLENB*8
> +       vsb.v   v16, (a0)
> +       addi    a0, a0, RISCV_VECTOR_VLENB*8
> +       vsb.v   v24, (a0)
> +
> +       csrc    sstatus, t1
> +       ret
> +ENDPROC(__vstate_save)
> +
> +ENTRY(__vstate_restore)
> +       li      a2,  TASK_THREAD_V0
> +       add     a0,  a0, a2
> +       mv      t2,  a0
> +
> +       li      t1, (SR_VS | SR_FS)
> +       csrs    sstatus, t1
> +
> +       vsetvli t0, x0, e8,m8
> +       vlb.v   v0,  (a0)
> +       addi    a0, a0, RISCV_VECTOR_VLENB*8
> +       vlb.v   v8,  (a0)
> +       addi    a0, a0, RISCV_VECTOR_VLENB*8
> +       vlb.v   v16, (a0)
> +       addi    a0, a0, RISCV_VECTOR_VLENB*8
> +       vlb.v   v24, (a0)
> +
> +       mv      a0,  t2
> +       ld      t0,  TASK_THREAD_VSTART_V0(a0)
> +       csrw    CSR_VSTART, t0
> +       ld      t0,  TASK_THREAD_VXSAT_V0(a0)
> +       csrw    CSR_VXSAT, t0
> +       ld      t0,  TASK_THREAD_VXRM_V0(a0)
> +       csrw    CSR_VXRM, t0
> +       ld      t0,  TASK_THREAD_VL_V0(a0)
> +       ld      t2,  TASK_THREAD_VTYPE_V0(a0)
> +       vsetvl  t0, t0, t2
> +
> +       csrc    sstatus, t1
> +       ret
> +ENDPROC(__vstate_restore)
> diff --git a/include/uapi/linux/elf.h b/include/uapi/linux/elf.h
> index 34c02e4290fe..e428f9e8710a 100644
> --- a/include/uapi/linux/elf.h
> +++ b/include/uapi/linux/elf.h
> @@ -428,6 +428,7 @@ typedef struct elf64_shdr {
>  #define NT_MIPS_DSP    0x800           /* MIPS DSP ASE registers */
>  #define NT_MIPS_FP_MODE        0x801           /* MIPS floating-point mode */
>  #define NT_MIPS_MSA    0x802           /* MIPS SIMD registers */
> +#define NT_RISCV_VECTOR        0x900           /* RISC-V vector registers */
>
>  /* Note header in a PT_NOTE section */
>  typedef struct elf32_note {
> --
> 2.17.0
>

