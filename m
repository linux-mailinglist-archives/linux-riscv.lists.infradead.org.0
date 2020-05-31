Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 696DE1E98C0
	for <lists+linux-riscv@lfdr.de>; Sun, 31 May 2020 18:09:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xzY5ozpZYniGRrvgjgZkkrrWRvhTYLYZY3fsFA5GGUM=; b=KtDR6FgmiYQygEaL7arO6fNZV
	0FMgsmV8hQJokLJrbsl8CIPoBliFJruU/4novebxRExYKOfoS6xcWBDnVFqbi89WBo7BVyJHL2YJ/
	X2o5CIE620Ssg8V4Qb4Psrhi+m6WLpY6y9j8Bw0t9JEvykLaLPJFhvRizwhFYBb7bAJU80MZB/a2V
	iryD2vYndu8zwe158AC/fUV3XlHtlNQUUh3wxV+5TGGM3pC9jGIcR07SYPu2Ra51QIIf8bhelyild
	+h4BaVjwzC9l1d73lB6LI/xoI5drMX7rwx0Aqsga1bQX6NatXaLxeL6wemoXDVA/9D/wJGlAFIDME
	K4z6dLI/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfQW8-0002DY-Bl; Sun, 31 May 2020 16:08:56 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfQW4-0002D3-I4
 for linux-riscv@lists.infradead.org; Sun, 31 May 2020 16:08:54 +0000
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com
 [209.85.167.45])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C2204206C3
 for <linux-riscv@lists.infradead.org>; Sun, 31 May 2020 16:08:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590941332;
 bh=8/dgsJqZeIXCmll1SWxWRt0R4G9FeiIEZ5sCELb6XNk=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=sM2L0pdXLcDcERJL9HQRqnq+mWPESZYAiRXbR196FkhBL8VcnKO++BoE5Mp+ZeGNB
 offXrMbA+zpIRO3igPf4lW0ndzkKr3ycM7R13IVYC27qw6vPQGCgAotZuH2zndlEx8
 OQ9iyfjM3X8D+T9fZ2ks8k26Cafm6U4KfbhtP07M=
Received: by mail-lf1-f45.google.com with SMTP id x22so2508928lfd.4
 for <linux-riscv@lists.infradead.org>; Sun, 31 May 2020 09:08:51 -0700 (PDT)
X-Gm-Message-State: AOAM530MckUqkokWoa85FzZ9luyje0zCMsGPMKTTEZRAd00eqyMsMjgz
 LiD1dCZoCgrmOoHmwUD7gAvDYb3zE6WGvF7VbO0=
X-Google-Smtp-Source: ABdhPJyweAKziGEW9Z5dmrhvFP4PObUQXOr0qSOJ4bYXplJff8NXkWoOLVIgi5ap4EO+TEtYr5yUTO0GQLq5EVZV/SY=
X-Received: by 2002:a19:4206:: with SMTP id p6mr9162301lfa.52.1590941329986;
 Sun, 31 May 2020 09:08:49 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1590474856.git.greentime.hu@sifive.com>
 <10df8031a761f950e4989f9402d3f4856c1ca56e.1590474856.git.greentime.hu@sifive.com>
In-Reply-To: <10df8031a761f950e4989f9402d3f4856c1ca56e.1590474856.git.greentime.hu@sifive.com>
From: Guo Ren <guoren@kernel.org>
Date: Mon, 1 Jun 2020 00:08:38 +0800
X-Gmail-Original-Message-ID: <CAJF2gTSGF-vR5WnbH0Tm_vHmJ0ZmcAeo-v7LB5f769g-yFL5iA@mail.gmail.com>
Message-ID: <CAJF2gTSGF-vR5WnbH0Tm_vHmJ0ZmcAeo-v7LB5f769g-yFL5iA@mail.gmail.com>
Subject: Re: [RFC PATCH v4 10/13] riscv: Add task switch support for vector
To: Greentime Hu <greentime.hu@sifive.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200531_090852_642323_2AAC923B 
X-CRM114-Status: GOOD (  29.09  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Guo Ren <guoren@linux.alibaba.com>, Nick Knight <nick.knight@sifive.com>,
 palmerdabbelt@google.com,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, oleg@redhat.com,
 Vincent Chen <vincent.chen@sifive.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv <linux-riscv@lists.infradead.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi Greentime,

Here, we could detect the task has used vector or not with VS_DIRTY:

We could define another flag in struct vs state of thread to
illustrate the task have vector or not.
When we found VS_DIRTY is set in pt_regs in swith_context or
rt_sigreturn syscall, we will set the flag.

We only need switch_context or sigcontext vector when the flag is set.

On Tue, May 26, 2020 at 3:03 PM Greentime Hu <greentime.hu@sifive.com> wrote:
>
> From: Guo Ren <guoren@linux.alibaba.com>
>
> This patch adds task switch support for vector. It supports lazy
> save and restore mechanism. It also supports all lengths of vlen.
>
> [greentime.hu@sifive.com: add support for dynamic vlen, fix
> __vstate_clean() and lazy save/restore bug]
> [nick.knight@sifive.com: Rewrite vector.S to support dynamic vlen, xlen and
> code refine]
> Signed-off-by: Nick Knight <nick.knight@sifive.com>
> Signed-off-by: Greentime Hu <greentime.hu@sifive.com>
> Signed-off-by: Guo Ren <guoren@linux.alibaba.com>
> ---
>  arch/riscv/include/asm/switch_to.h | 71 +++++++++++++++++++++++++
>  arch/riscv/kernel/Makefile         |  1 +
>  arch/riscv/kernel/process.c        | 40 ++++++++++++++
>  arch/riscv/kernel/vector.S         | 84 ++++++++++++++++++++++++++++++
>  4 files changed, 196 insertions(+)
>  create mode 100644 arch/riscv/kernel/vector.S
>
> diff --git a/arch/riscv/include/asm/switch_to.h b/arch/riscv/include/asm/switch_to.h
> index b9234e7178d0..a047dd75e09d 100644
> --- a/arch/riscv/include/asm/switch_to.h
> +++ b/arch/riscv/include/asm/switch_to.h
> @@ -6,10 +6,12 @@
>  #ifndef _ASM_RISCV_SWITCH_TO_H
>  #define _ASM_RISCV_SWITCH_TO_H
>
> +#include <linux/slab.h>
>  #include <linux/sched/task_stack.h>
>  #include <asm/processor.h>
>  #include <asm/ptrace.h>
>  #include <asm/csr.h>
> +#include <asm/asm-offsets.h>
>
>  #ifdef CONFIG_FPU
>  extern void __fstate_save(struct task_struct *save_to);
> @@ -63,6 +65,73 @@ extern bool has_fpu;
>  #define __switch_to_fpu(__prev, __next) do { } while (0)
>  #endif
>
> +#ifdef CONFIG_VECTOR
> +extern bool has_vector;
> +extern unsigned long riscv_vsize;
> +extern void __vstate_save(struct __riscv_v_state *save_to, void *datap);
> +extern void __vstate_restore(struct __riscv_v_state *restore_from, void *datap);
> +
> +static inline void __vstate_clean(struct pt_regs *regs)
> +{
> +       regs->status = (regs->status & ~(SR_VS)) | SR_VS_CLEAN;
> +}
> +
> +static inline void vstate_off(struct task_struct *task,
> +                             struct pt_regs *regs)
> +{
> +       regs->status = (regs->status & ~SR_VS) | SR_VS_OFF;
> +}
> +
> +static inline void vstate_save(struct task_struct *task,
> +                              struct pt_regs *regs)
> +{
> +       if ((regs->status & SR_VS) == SR_VS_DIRTY) {
> +               struct __riscv_v_state *vstate = &(task->thread.vstate);
> +
> +               /* Allocate space for vector registers. */
> +               if (!vstate->datap) {
> +                       vstate->datap = kzalloc(riscv_vsize, GFP_KERNEL);
> +                       vstate->size = riscv_vsize;
> +               }
> +               __vstate_save(vstate, vstate->datap);
> +               __vstate_clean(regs);
> +       }
> +}
> +
> +static inline void vstate_restore(struct task_struct *task,
> +                                 struct pt_regs *regs)
> +{
> +       if ((regs->status & SR_VS) != SR_VS_OFF) {
> +               struct __riscv_v_state *vstate = &(task->thread.vstate);
> +
> +               /* Allocate space for vector registers. */
> +               if (!vstate->datap) {
> +                       vstate->datap = kzalloc(riscv_vsize, GFP_KERNEL);
> +                       vstate->size = riscv_vsize;
> +               }
> +               __vstate_restore(vstate, vstate->datap);
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
> @@ -72,6 +141,8 @@ do {                                                 \
>         struct task_struct *__next = (next);            \
>         if (has_fpu)                                    \
>                 __switch_to_fpu(__prev, __next);        \
> +       if (has_vector)                                 \
> +               __switch_to_vector(__prev, __next);     \
>         ((last) = __switch_to(__prev, __next));         \
>  } while (0)
>
> diff --git a/arch/riscv/kernel/Makefile b/arch/riscv/kernel/Makefile
> index 86c83081044f..dee489a1a526 100644
> --- a/arch/riscv/kernel/Makefile
> +++ b/arch/riscv/kernel/Makefile
> @@ -33,6 +33,7 @@ obj-$(CONFIG_MMU) += vdso.o vdso/
>
>  obj-$(CONFIG_RISCV_M_MODE)     += clint.o traps_misaligned.o
>  obj-$(CONFIG_FPU)              += fpu.o
> +obj-$(CONFIG_VECTOR)           += vector.o
>  obj-$(CONFIG_SMP)              += smpboot.o
>  obj-$(CONFIG_SMP)              += smp.o
>  obj-$(CONFIG_SMP)              += cpu_ops.o
> diff --git a/arch/riscv/kernel/process.c b/arch/riscv/kernel/process.c
> index 610c11e91606..fc8761c04e9f 100644
> --- a/arch/riscv/kernel/process.c
> +++ b/arch/riscv/kernel/process.c
> @@ -76,6 +76,16 @@ void start_thread(struct pt_regs *regs, unsigned long pc,
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
> @@ -92,15 +102,45 @@ void flush_thread(void)
>         fstate_off(current, task_pt_regs(current));
>         memset(&current->thread.fstate, 0, sizeof(current->thread.fstate));
>  #endif
> +#ifdef CONFIG_VECTOR
> +       /* Reset vector state */
> +       vstate_off(current, task_pt_regs(current));
> +       memset(&current->thread.vstate, 0, sizeof(current->thread.vstate));
> +#endif
>  }
>
>  int arch_dup_task_struct(struct task_struct *dst, struct task_struct *src)
>  {
>         fstate_save(src, task_pt_regs(src));
> +       if (has_vector)
> +               /* To make sure every dirty vector context is saved. */
> +               vstate_save(src, task_pt_regs(src));
>         *dst = *src;
> +       if (has_vector) {
> +               /* Copy vector context to the forked task from parent. */
> +               if ((task_pt_regs(src)->status & SR_VS) != SR_VS_OFF) {
> +                       unsigned long size = src->thread.vstate.size;
> +
> +                       dst->thread.vstate.datap = kzalloc(size, GFP_KERNEL);
> +                       /* Failed to allocate memory. */
> +                       if (!dst->thread.vstate.datap)
> +                               return -ENOMEM;
> +                       /* Copy the src vector context to dst. */
> +                       memcpy(dst->thread.vstate.datap,
> +                              src->thread.vstate.datap, size);
> +               }
> +       }
> +
>         return 0;
>  }
>
> +void arch_release_task_struct(struct task_struct *tsk)
> +{
> +       /* Free the vector context of datap. */
> +       if (has_vector)
> +               kfree(tsk->thread.vstate.datap);
> +}
> +
>  int copy_thread_tls(unsigned long clone_flags, unsigned long usp,
>         unsigned long arg, struct task_struct *p, unsigned long tls)
>  {
> diff --git a/arch/riscv/kernel/vector.S b/arch/riscv/kernel/vector.S
> new file mode 100644
> index 000000000000..91d5dd29cd0f
> --- /dev/null
> +++ b/arch/riscv/kernel/vector.S
> @@ -0,0 +1,84 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/*
> + * Copyright (C) 2012 Regents of the University of California
> + * Copyright (C) 2017 SiFive
> + * Copyright (C) 2019 Alibaba Group Holding Limited
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
> +#define vstatep  a0
> +#define datap    a1
> +#define x_vstart t0
> +#define x_vtype  t1
> +#define x_vl     t2
> +#define x_vcsr   t3
> +#define incr     t4
> +#define m_one    t5
> +#define status   t6
> +
> +ENTRY(__vstate_save)
> +       li      status, SR_VS
> +       csrs    sstatus, status
> +
> +       csrr    x_vstart, CSR_VSTART
> +       csrr    x_vtype, CSR_VTYPE
> +       csrr    x_vl, CSR_VL
> +       csrr    x_vcsr, CSR_VCSR
> +       li      m_one, -1
> +       vsetvli incr, m_one, e8, m8
> +       vse.v   v0, (datap)
> +       add     datap, datap, incr
> +       vse.v   v8, (datap)
> +       add     datap, datap, incr
> +       vse.v   v16, (datap)
> +       add     datap, datap, incr
> +       vse.v   v24, (datap)
> +
> +       REG_S   x_vstart, RISCV_V_STATE_VSTART(vstatep)
> +       REG_S   x_vtype, RISCV_V_STATE_VTYPE(vstatep)
> +       REG_S   x_vl, RISCV_V_STATE_VL(vstatep)
> +       REG_S   x_vcsr, RISCV_V_STATE_VCSR(vstatep)
> +
> +       csrc    sstatus, status
> +       ret
> +ENDPROC(__vstate_save)
> +
> +ENTRY(__vstate_restore)
> +       li      status, SR_VS
> +       csrs    sstatus, status
> +
> +       li      m_one, -1
> +       vsetvli incr, m_one, e8, m8
> +       vle.v   v0, (datap)
> +       add     datap, datap, incr
> +       vle.v   v8, (datap)
> +       add     datap, datap, incr
> +       vle.v   v16, (datap)
> +       add     datap, datap, incr
> +       vle.v   v24, (datap)
> +
> +       REG_L   x_vstart, RISCV_V_STATE_VSTART(vstatep)
> +       REG_L   x_vtype, RISCV_V_STATE_VTYPE(vstatep)
> +       REG_L   x_vl, RISCV_V_STATE_VL(vstatep)
> +       REG_L   x_vcsr, RISCV_V_STATE_VCSR(vstatep)
> +       vsetvl  x0, x_vl, x_vtype
> +       csrw    CSR_VSTART, x_vstart
> +       csrw    CSR_VCSR, x_vcsr
> +
> +       csrc    sstatus, status
> +       ret
> +ENDPROC(__vstate_restore)
> --
> 2.26.2
>
>


-- 
Best Regards
 Guo Ren

ML: https://lore.kernel.org/linux-csky/

