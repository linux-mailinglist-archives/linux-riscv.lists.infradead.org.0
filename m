Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3CB81EA09D
	for <lists+linux-riscv@lfdr.de>; Mon,  1 Jun 2020 11:13:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/Pfse9mbeWSNQuLUQwFW4Ydg2LfIjVlLtSoelbI4Eyc=; b=KrDYROOWqNZTAppyVa/zAKPdY
	pnHf6GkM+fS++Kjbwu/qxgeGjxdK7PuLtSXmpfiO+b3RD5WQQvYPHU9Y6n9qPuzHVhhrXr7u51LCG
	czBAp4+Kg+goJuQYQSR/oq+Wa9RaAJJYNCUxGjJRWObeip/30yTpYMyYLTvrDG9hoCKJ7X4bi3MgD
	3Kuz2rHXOdpNIaS6umobyExqh368c0+faB8PZQA5k0PYGVKSwDJ5AMKYcS81bpfSuHduZuK//Y3fk
	JQkT4sg2nHzaiWM3ovyXgGOmUtHB8nXQKOhBXrzmEa17PcQayMTVzsgeYwogjMAIPTECDQejYn11/
	K3F0aoTyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfgVZ-0004bu-Ny; Mon, 01 Jun 2020 09:13:25 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfgVU-0004af-Vn
 for linux-riscv@lists.infradead.org; Mon, 01 Jun 2020 09:13:22 +0000
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com
 [209.85.167.51])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4A282207BC
 for <linux-riscv@lists.infradead.org>; Mon,  1 Jun 2020 09:13:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591002800;
 bh=w1slmTZZ2876sYev0ELMlVITFxKpVczZEcUyQH8mdqE=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=cDRie4a/jnxwrnbpGFeojoCrPqDBNUKUWE5vvo1CR+zCMWbeMQ02VsP3Q9pf7q++h
 AfWfVz8haNVuVZJYriWSarmdn2FMjprIHjniWV4OBHO+S0FmCdBVvaBpbl1xBjRYO0
 POg6pqPB0yeZWCUXg88uKqE5Mju5PU3fzdS1MhcU=
Received: by mail-lf1-f51.google.com with SMTP id c21so3508249lfb.3
 for <linux-riscv@lists.infradead.org>; Mon, 01 Jun 2020 02:13:20 -0700 (PDT)
X-Gm-Message-State: AOAM5322dZWfU7QMmNRXXg1/peNKIiYgwqFH9JQPcM6m8ve0ys9/Yt/C
 3sSeeGB7QvaPj7/QNNLNhgJPPxnZl86+IHq4rT8=
X-Google-Smtp-Source: ABdhPJz7eGyh5VsWr8t8LIfLMDwvO7lk89fQWhe5jtwj6TXEgrbTzrgWNF7maXhOQFWLeH+5CjECc64TPimaNfjr7vw=
X-Received: by 2002:a19:7fd6:: with SMTP id a205mr10631870lfd.70.1591002798508; 
 Mon, 01 Jun 2020 02:13:18 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1590474856.git.greentime.hu@sifive.com>
 <8dd3e441842d2b0fb63da82ecc04b08f99930e6a.1590474856.git.greentime.hu@sifive.com>
In-Reply-To: <8dd3e441842d2b0fb63da82ecc04b08f99930e6a.1590474856.git.greentime.hu@sifive.com>
From: Guo Ren <guoren@kernel.org>
Date: Mon, 1 Jun 2020 17:13:07 +0800
X-Gmail-Original-Message-ID: <CAJF2gTSaiymJOGGYqseQMzsnFb_zKeEKPF-Gvgyy2Et_KDbYCA@mail.gmail.com>
Message-ID: <CAJF2gTSaiymJOGGYqseQMzsnFb_zKeEKPF-Gvgyy2Et_KDbYCA@mail.gmail.com>
Subject: Re: [RFC PATCH v4 12/13] riscv: Add sigcontext save/restore for vector
To: Greentime Hu <greentime.hu@sifive.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_021321_082950_D6CE0572 
X-CRM114-Status: GOOD (  21.09  )
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
Cc: Guo Ren <guoren@linux.alibaba.com>,
 Palmer Dabbelt <palmerdabbelt@google.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Oleg Nesterov <oleg@redhat.com>, Vincent Chen <vincent.chen@sifive.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv <linux-riscv@lists.infradead.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Since it has been redesigned with new version spec, please change the
first-author :)

And add me as Co-developed.

On Tue, May 26, 2020 at 3:03 PM Greentime Hu <greentime.hu@sifive.com> wrote:
>
> From: Guo Ren <guoren@linux.alibaba.com>
>
> This patch adds sigcontext save/restore for vector. The vector registers
> will be saved in datap pointer. The datap pointer will be allocaed
> dynamically when the task needs in kernel space. The datap pointer will
> be set right after the __riscv_v_state data structure to save all the
> vector registers in the signal handler stack.
>
> [greentime.hu@sifive.com: add support for dynamic vlen]
> Signed-off-by: Greentime Hu <greentime.hu@sifive.com>
> Signed-off-by: Guo Ren <guoren@linux.alibaba.com>
> ---
>  arch/riscv/include/uapi/asm/sigcontext.h |  2 +
>  arch/riscv/kernel/signal.c               | 92 +++++++++++++++++++++++-
>  2 files changed, 91 insertions(+), 3 deletions(-)
>
> diff --git a/arch/riscv/include/uapi/asm/sigcontext.h b/arch/riscv/include/uapi/asm/sigcontext.h
> index 84f2dfcfdbce..4217f3f1c8ba 100644
> --- a/arch/riscv/include/uapi/asm/sigcontext.h
> +++ b/arch/riscv/include/uapi/asm/sigcontext.h
> @@ -8,6 +8,7 @@
>
>  #include <asm/ptrace.h>
>
> +#define RVV_MAGIC      0x53465457
>  /*
>   * Signal context structure
>   *
> @@ -17,6 +18,7 @@
>  struct sigcontext {
>         struct user_regs_struct sc_regs;
>         union __riscv_fp_state sc_fpregs;
> +       struct __riscv_v_state sc_vregs;
>  };
>
>  #endif /* _UAPI_ASM_RISCV_SIGCONTEXT_H */
> diff --git a/arch/riscv/kernel/signal.c b/arch/riscv/kernel/signal.c
> index 17ba190e84a5..9ada6f74bb95 100644
> --- a/arch/riscv/kernel/signal.c
> +++ b/arch/riscv/kernel/signal.c
> @@ -83,6 +83,80 @@ static long save_fp_state(struct pt_regs *regs,
>  #define restore_fp_state(task, regs) (0)
>  #endif
>
> +#ifdef CONFIG_VECTOR
> +static long restore_v_state(struct pt_regs *regs, struct sigcontext *sc)
> +{
> +       long err;
> +       struct __riscv_v_state __user *state = &sc->sc_vregs;
> +       void *datap;
> +       __u32 magic;
> +
> +       /* Get magic number and check it. */
> +       err = __get_user(magic, &state->magic);
> +       if (unlikely(err))
> +               return err;
> +
> +       if (magic != RVV_MAGIC)
> +               return -EINVAL;
> +
> +       /* Copy everything of __riscv_v_state except datap. */
> +       err = __copy_from_user(&current->thread.vstate, state,
> +                              RISCV_V_STATE_DATAP);
> +       if (unlikely(err))
> +               return err;
> +
> +       /* Copy the pointer datap itself. */
> +       err = __get_user(datap, &state->datap);
> +       if (unlikely(err))
> +               return err;
> +
> +
> +       /* Copy the whole vector content from user space datap. */
> +       err = __copy_from_user(current->thread.vstate.datap, datap,
> +                              current->thread.vstate.size);
> +       if (unlikely(err))
> +               return err;
> +
> +       vstate_restore(current, regs);
> +
> +       return err;
> +}
> +
> +static long save_v_state(struct pt_regs *regs, struct sigcontext *sc)
> +{
> +       long err;
> +       struct __riscv_v_state __user *state = &sc->sc_vregs;
> +       /* Set the datap right after the sigcntext structure. */
> +       void *datap = sc + 1;
> +
> +       vstate_save(current, regs);
> +       /* Copy everything of vstate but datap. */
> +       err = __copy_to_user(state, &current->thread.vstate,
> +                            RISCV_V_STATE_DATAP);
> +       if (unlikely(err))
> +               return err;
> +
> +       /* Copy the magic number. */
> +       err = __put_user(RVV_MAGIC, &state->magic);
> +       if (unlikely(err))
> +               return err;
> +
> +       /* Copy the pointer datap itself. */
> +       err = __put_user(datap, &state->datap);
> +       if (unlikely(err))
> +               return err;
> +
> +       /* Copy the whole vector content to user space datap. */
> +       err = __copy_to_user(datap, current->thread.vstate.datap,
> +                            current->thread.vstate.size);
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
> @@ -92,6 +166,9 @@ static long restore_sigcontext(struct pt_regs *regs,
>         /* Restore the floating-point state. */
>         if (has_fpu)
>                 err |= restore_fp_state(regs, &sc->sc_fpregs);
> +       /* Restore the vector state. */
> +       if (has_vector)
> +               err |= restore_v_state(regs, sc);
>         return err;
>  }
>
> @@ -101,13 +178,16 @@ SYSCALL_DEFINE0(rt_sigreturn)
>         struct rt_sigframe __user *frame;
>         struct task_struct *task;
>         sigset_t set;
> +       size_t frame_size = sizeof(*frame);
>
>         /* Always make any pending restarted system calls return -EINTR */
>         current->restart_block.fn = do_no_restart_syscall;
>
>         frame = (struct rt_sigframe __user *)regs->sp;
>
> -       if (!access_ok(frame, sizeof(*frame)))
> +       if (has_vector)
> +               frame_size += current->thread.vstate.size;
> +       if (!access_ok(frame, frame_size))
>                 goto badframe;
>
>         if (__copy_from_user(&set, &frame->uc.uc_sigmask, sizeof(set)))
> @@ -145,6 +225,9 @@ static long setup_sigcontext(struct rt_sigframe __user *frame,
>         /* Save the floating-point state. */
>         if (has_fpu)
>                 err |= save_fp_state(regs, &sc->sc_fpregs);
> +       /* Save the vector state. */
> +       if (has_vector)
> +               err |= save_v_state(regs, sc);
>         return err;
>  }
>
> @@ -176,9 +259,12 @@ static int setup_rt_frame(struct ksignal *ksig, sigset_t *set,
>  {
>         struct rt_sigframe __user *frame;
>         long err = 0;
> +       size_t frame_size = sizeof(*frame);
>
> -       frame = get_sigframe(ksig, regs, sizeof(*frame));
> -       if (!access_ok(frame, sizeof(*frame)))
> +       if (has_vector)
> +               frame_size += current->thread.vstate.size;
> +       frame = get_sigframe(ksig, regs, frame_size);
> +       if (!access_ok(frame, frame_size))
>                 return -EFAULT;
>
>         err |= copy_siginfo_to_user(&frame->info, &ksig->info);
> --
> 2.26.2
>
>


-- 
Best Regards
 Guo Ren

ML: https://lore.kernel.org/linux-csky/

