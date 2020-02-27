Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30F61172A94
	for <lists+linux-riscv@lfdr.de>; Thu, 27 Feb 2020 22:56:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=5T6k5q01q4YIvowq7YdQfV6dfzM8f/qHUFQ4ywQ+nOc=; b=osjNHzK2ODYwxaUcJjBApHAQF
	jCegDZa/PIRt1gTtTXMUfUmmncqw5I7Vgvyvt6iUJwK8sqxvX8sZoybwTnSfyeQffCQur1ORyRcB8
	S2xckypiKtwfKVWdB2NVmuFflnzMHwFmnNpbgvKp0Hm57S+juk7nKET267VFtkvwUPMkVzUURtwKm
	4fV3o94XoONT3/CKeEDxjLea+8T3PMlmjaGwzQBKT1me0LA1qaIViW6NpgTpGP/FWk7fe4PzfK59r
	gM7xtc/K7AQPO2jrvUQ3oiGNZhd8YUTXnkJkSZMkfyMDmEJfGNdicLsSpoM2XmA1EA8wT+3cudPCY
	Ww4gV5rFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7R90-0007HD-AA; Thu, 27 Feb 2020 21:56:34 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7R8v-0007Gf-PM
 for linux-riscv@lists.infradead.org; Thu, 27 Feb 2020 21:56:31 +0000
Received: by mail-pj1-x1042.google.com with SMTP id dw13so358369pjb.4
 for <linux-riscv@lists.infradead.org>; Thu, 27 Feb 2020 13:56:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=5T6k5q01q4YIvowq7YdQfV6dfzM8f/qHUFQ4ywQ+nOc=;
 b=ZKfVxa6KMhqZoDBjHH7R+E6EbxoOrIcornvMeduzjbN+C96GVl11QGhEJJ4U9Jn+UF
 x1hKVa3N3tld77XX5YRc+IPnFNc4LbCHflgVrpFzY7976AiHyrmKZThu0OG1S9mRgYYU
 cV4rsPOQA3QVr0Tvx6GRK/TLEW8xe0+cgamT68z6jMO5rvmMuWJ+IdYhF+PgPMeMjztR
 ijQXRMNB4ccd6iyhPYmlgheEguygiueGHxaklZwHaaO+663NRqtf6l6j6DNrAy4dKTUh
 DJW0gjOd7zy/q5rheuiHLMBaSV8nrzKIHHvd+B1+o5xEwsIqcOMJKInIg7ZppJqzu9Aw
 BOnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=5T6k5q01q4YIvowq7YdQfV6dfzM8f/qHUFQ4ywQ+nOc=;
 b=MQeueL5N/Fpe2YOKS3PAF1755eTGGIO+l8k7fPqM2U19Y4rS5ZhXZZCBTsmbqzThfY
 VEtPd8SKyj221ZF71hAQOjWNQ8RkUwRU8yKz725FYELfESR2ktONXzF2/vxbrvvYSeY2
 QPrB67Yejwws33BHz6HMmnTxZMHuDo4WscfAV/J2DBgFDs7SZuCE+iMM3Ol3YubDrZrl
 KEWW4HJCdLOug8mFIJBW3wk3/1XqcRQOQIfkf1dEoKGKwQe7RXrnRcINNZ1oW6Dn2bKn
 LEUxIvcUC3Fe7gCjE25JURLPC+s18BpveE8jjOJP9ap2RO68Qr1QbRcSzoouHw5ZzWzy
 ikmA==
X-Gm-Message-State: APjAAAUPmrKjsNYxQ5paKfgu9REK9V6HY0J7//NzGUoxXepPxDxm2UJy
 DiABpz7s31XJAzBTR2TnQZERVJtt0b1M0UhXjO3dvw==
X-Google-Smtp-Source: APXvYqx+34Knx0Xfn/PJVMqHz2HBDIVoEsVqamIFpGJT2uJBk+pJ+MgmBZhmwPglxIRFx0hs8yg40DRDDIjUMI4XQT4=
X-Received: by 2002:a17:90a:3745:: with SMTP id
 u63mr1051565pjb.123.1582840586461; 
 Thu, 27 Feb 2020 13:56:26 -0800 (PST)
MIME-Version: 1.0
References: <20200227213450.87194-1-palmer@dabbelt.com>
 <20200227213450.87194-2-palmer@dabbelt.com>
In-Reply-To: <20200227213450.87194-2-palmer@dabbelt.com>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Thu, 27 Feb 2020 13:56:15 -0800
Message-ID: <CAKwvOd=co2R+gVGQmCGWj8U4iV2djFHLDiQRFwhEW8M_V4AeHw@mail.gmail.com>
Subject: Re: [PATCH 1/3] RISC-V: Stop relying on GCC's register allocator's
 hueristics
To: Palmer Dabbelt <palmer@dabbelt.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_135629_878236_80E805AB 
X-CRM114-Status: GOOD (  20.80  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: clang-built-linux <clang-built-linux@googlegroups.com>,
 linux-riscv@lists.infradead.org, Palmer Dabbelt <palmerdabbelt@google.com>,
 kernel-team <kernel-team@android.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, Feb 27, 2020 at 1:35 PM Palmer Dabbelt <palmer@dabbelt.com> wrote:
>
> From: Palmer Dabbelt <palmerdabbelt@google.com>
>
> GCC allows users to hint to the register allocation that a variable should be
> placed in a register by using a syntax along the lines of
>
>     function(...) {
>         register long in_REG __asm__("REG");
>     }
>
> We've abused this a bit throughout the RISC-V port to access fixed registers
> directly as C variables.  In practice it's never going to blow up because GCC
> isn't going to allocate these registers, but it's not a well defined syntax so
> we really shouldn't be relying upon this.  Luckily there is a very similar but
> well defined syntax that allows us to still access these registers directly as
> C variables, which is to simply declare the register variables globally.  For
> fixed variables this doesn't change the ABI.
>
> LLVM disallows this ambiguous syntax, so this isn't just strictly a formatting
> change.
>
> Signed-off-by: Palmer Dabbelt <palmerdabbelt@google.com>

Thanks for the patches!
Indeed, looks like the local register variables are very much intended
to be used as inputs & outputs to extended inline assembly, which in
these cases are not.
Link: https://gcc.gnu.org/onlinedocs/gcc/Local-Register-Variables.html
Link: https://gcc.gnu.org/onlinedocs/gcc/Global-Register-Variables.html
One fixup, below:

> ---
>  arch/riscv/include/asm/current.h | 5 +++--
>  arch/riscv/kernel/process.c      | 5 +++--
>  arch/riscv/kernel/stacktrace.c   | 7 ++++---
>  3 files changed, 10 insertions(+), 7 deletions(-)
>
> diff --git a/arch/riscv/include/asm/current.h b/arch/riscv/include/asm/current.h
> index dd973efe5d7c..1de233d8e8de 100644
> --- a/arch/riscv/include/asm/current.h
> +++ b/arch/riscv/include/asm/current.h
> @@ -17,6 +17,8 @@
>
>  struct task_struct;
>
> +register struct task_struct *riscv_current_is_tp __asm__("tp");
> +
>  /*
>   * This only works because "struct thread_info" is at offset 0 from "struct
>   * task_struct".  This constraint seems to be necessary on other architectures
> @@ -26,8 +28,7 @@ struct task_struct;
>   */
>  static __always_inline struct task_struct *get_current(void)
>  {
> -       register struct task_struct *tp __asm__("tp");
> -       return tp;
> +       return riscv_current_is_tp;
>  }
>
>  #define current get_current()
> diff --git a/arch/riscv/kernel/process.c b/arch/riscv/kernel/process.c
> index 817cf7b0974c..610c11e91606 100644
> --- a/arch/riscv/kernel/process.c
> +++ b/arch/riscv/kernel/process.c
> @@ -22,6 +22,8 @@
>  #include <asm/switch_to.h>
>  #include <asm/thread_info.h>
>
> +unsigned long gp_in_global __asm__("gp");
> +
>  extern asmlinkage void ret_from_fork(void);
>  extern asmlinkage void ret_from_kernel_thread(void);
>
> @@ -107,9 +109,8 @@ int copy_thread_tls(unsigned long clone_flags, unsigned long usp,
>         /* p->thread holds context to be restored by __switch_to() */
>         if (unlikely(p->flags & PF_KTHREAD)) {
>                 /* Kernel thread */
> -               const register unsigned long gp __asm__ ("gp");
>                 memset(childregs, 0, sizeof(struct pt_regs));
> -               childregs->gp = gp;
> +               childregs->gp = gp_in_global;
>                 /* Supervisor/Machine, irqs on: */
>                 childregs->status = SR_PP | SR_PIE;
>
> diff --git a/arch/riscv/kernel/stacktrace.c b/arch/riscv/kernel/stacktrace.c
> index 0940681d2f68..02087fe539c6 100644
> --- a/arch/riscv/kernel/stacktrace.c
> +++ b/arch/riscv/kernel/stacktrace.c
> @@ -19,6 +19,8 @@ struct stackframe {
>         unsigned long ra;
>  };
>
> +register unsigned long sp_in_global __asm__("sp");
> +
>  void notrace walk_stackframe(struct task_struct *task, struct pt_regs *regs,
>                              bool (*fn)(unsigned long, void *), void *arg)
>  {
> @@ -29,7 +31,7 @@ void notrace walk_stackframe(struct task_struct *task, struct pt_regs *regs,
>                 sp = user_stack_pointer(regs);
>                 pc = instruction_pointer(regs);
>         } else if (task == NULL || task == current) {
> -               const register unsigned long current_sp __asm__ ("sp");
> +               const register unsigned long current_sp = sp_in_global;
>                 fp = (unsigned long)__builtin_frame_address(0);
>                 sp = current_sp;

^ probably this should just be:
sp = sp_in_global;

>                 pc = (unsigned long)walk_stackframe;
> @@ -73,8 +75,7 @@ static void notrace walk_stackframe(struct task_struct *task,
>                 sp = user_stack_pointer(regs);
>                 pc = instruction_pointer(regs);
>         } else if (task == NULL || task == current) {
> -               const register unsigned long current_sp __asm__ ("sp");
> -               sp = current_sp;
> +               sp = sp_in_global;
>                 pc = (unsigned long)walk_stackframe;
>         } else {
>                 /* task blocked in __switch_to */
> --
> 2.25.1.481.gfbce0eb801-goog
>
> --

-- 
Thanks,
~Nick Desaulniers

