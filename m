Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A18AA654B8
	for <lists+linux-riscv@lfdr.de>; Thu, 11 Jul 2019 12:50:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pAOn9jfMm5gg+ZxW/6gXfqs0JMtxFH/CX9de6AZezno=; b=uxCDD32DlKyMxZ
	HwyVJ2sIYj4l2lgSwsnY9ElhHRO/Qq0nKI7A5igqxNDgX/WzuBt/dYdMVzDG8pl9e5CSRwbhK5r4Q
	FTs6OZ32Z+3sHMxNjSF2Cbf3iAnrbgwHD9KlL+Gs/kFLKGR7w5hkp4AZ9AOMM+TNsZ45ncTvkH/Y4
	S/+/TihMFBprOMxdHtpgJ7sYlUn9KkSfveipcJhHnqTIoNbS7GO0bt9BKlV/nqEcB2wg5LxLln0b7
	IZRus2i4bc8JjoXRxEMniCxuiFCnmoNZEblrS7C34DqRiMqXJLU5oplP2ASo4VZ8Aev3OB2yDqBsr
	WPspZztYenQ0Jgrfa1vg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlWeK-0001Tv-PD; Thu, 11 Jul 2019 10:50:04 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlWeH-000170-EN
 for linux-riscv@lists.infradead.org; Thu, 11 Jul 2019 10:50:03 +0000
Received: by mail-wr1-x442.google.com with SMTP id x4so5749533wrt.6
 for <linux-riscv@lists.infradead.org>; Thu, 11 Jul 2019 03:50:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=u/WCWA0I7NqCU5bjXJHGvWcf6ebyNz+yk1s4ErApgMA=;
 b=YYaCNnsFKASirzoie+mGGKyeLflwZ0WYyi3V643QBG9XY4+fxxUJHkdJtW8mvCcimj
 7F2ZC8wxhBhMOpbeVXOIItLZuAcfs6851TmQiNB8tySOPgerWsUFAcW3NJa66Dnf/FHz
 tK2QQcSje3+Km7QjdOZP2+XLAz/8rcSBr327H7x3q5W0Bh915qNJ2oRBBbK0o5wfrP6c
 ENzEfXvTYWGOR+fv5jsc7LST26MxBSgC7qk1raW5nbsne+czPnT8FINmiLt/DjzdSojj
 6UufH6abIP5rK0dU0IJd+grElZgcJ5n9c0aKXpUvuNQ4biZxbpEgJHxhQcW6Q41V5jIa
 7vnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=u/WCWA0I7NqCU5bjXJHGvWcf6ebyNz+yk1s4ErApgMA=;
 b=id7yfsswSq1cXYUlu0+x3DSDf2d5gjayuCO4qZNmXpJycP9BbiPtSa8ucUGZwPujlX
 jReF3Fj0z0BNLTlgnBuo/ql3HBT0BHgs1/g60veY+Pmys0TWIPNy56PNvO9Nljh8gVnZ
 CLGTsCmCfm4skgolddL1CmyvCg0xaU+VhkT4VQ/PVHXU+O98CcASZVdwr9PbOYYKsrNL
 5Kx/GMW1jS5d92g8sNmJSImhxU2evMYdSTuG9Nw7SMEmiFVYEGu0lhrs7N3FD1pIP/Yb
 BQRBhxvRwZk2GYAeQOONrFPa4naLoBCbCFwyAYMxai5xVR/TwTfdpMVB07ppharOCJZs
 Ruog==
X-Gm-Message-State: APjAAAWEi4AqFvXyRTDrQBRUN5+RalOFWkfj4FIXB67Koq5H+rwAGsax
 ez0yX6KvxpO8UfKESmrxfhBZjHuTmCFMID8dE0w=
X-Google-Smtp-Source: APXvYqzpnUuKZvzo8SQaIHvUpq+Dru2QtiP8z9G7g6+MhmnibkZKNlML4Il51IxPkB40f2YNDSwdU5c7XtFxPBrm4Dc=
X-Received: by 2002:a5d:4e50:: with SMTP id r16mr4547905wrt.227.1562842199078; 
 Thu, 11 Jul 2019 03:49:59 -0700 (PDT)
MIME-Version: 1.0
References: <1562831376-21255-1-git-send-email-bmeng.cn@gmail.com>
In-Reply-To: <1562831376-21255-1-git-send-email-bmeng.cn@gmail.com>
From: Anup Patel <anup@brainfault.org>
Date: Thu, 11 Jul 2019 16:19:48 +0530
Message-ID: <CAAhSdy0K-QnXrYetxWuwNRysvkSyspGzGH8Kr4GoDzJ0aVe2PQ@mail.gmail.com>
Subject: Re: [PATCH] riscv: Using CSR numbers to access CSRs
To: Bin Meng <bmeng.cn@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_035001_511693_58AEC2CB 
X-CRM114-Status: GOOD (  16.05  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: linux-riscv <linux-riscv@lists.infradead.org>,
 Anup Patel <anup.patel@wdc.com>, Palmer Dabbelt <palmer@sifive.com>,
 Albert Ou <aou@eecs.berkeley.edu>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, Jul 11, 2019 at 1:19 PM Bin Meng <bmeng.cn@gmail.com> wrote:
>
> Since commit a3182c91ef4e ("RISC-V: Access CSRs using CSR numbers"),
> we should prefer accessing CSRs using their CSR numbers, but there
> are several leftovers like sstatus / sptbr we missed.
>
> Signed-off-by: Bin Meng <bmeng.cn@gmail.com>
> ---
>
>  arch/riscv/kernel/entry.S |  6 +++---
>  arch/riscv/kernel/fpu.S   |  8 ++++----
>  arch/riscv/kernel/head.S  |  2 +-
>  arch/riscv/lib/uaccess.S  | 12 ++++++------
>  arch/riscv/mm/context.c   |  7 +------
>  5 files changed, 15 insertions(+), 20 deletions(-)
>
> diff --git a/arch/riscv/kernel/entry.S b/arch/riscv/kernel/entry.S
> index bc7a56e..74ccfd4 100644
> --- a/arch/riscv/kernel/entry.S
> +++ b/arch/riscv/kernel/entry.S
> @@ -167,7 +167,7 @@ ENTRY(handle_exception)
>         tail do_IRQ
>  1:
>         /* Exceptions run with interrupts enabled */
> -       csrs sstatus, SR_SIE
> +       csrs CSR_SSTATUS, SR_SIE
>
>         /* Handle syscalls */
>         li t0, EXC_SYSCALL
> @@ -222,7 +222,7 @@ ret_from_syscall:
>
>  ret_from_exception:
>         REG_L s0, PT_SSTATUS(sp)
> -       csrc sstatus, SR_SIE
> +       csrc CSR_SSTATUS, SR_SIE
>         andi s0, s0, SR_SPP
>         bnez s0, resume_kernel
>
> @@ -265,7 +265,7 @@ work_pending:
>         bnez s1, work_resched
>  work_notifysig:
>         /* Handle pending signals and notify-resume requests */
> -       csrs sstatus, SR_SIE /* Enable interrupts for do_notify_resume() */
> +       csrs CSR_SSTATUS, SR_SIE /* Enable interrupts for do_notify_resume() */
>         move a0, sp /* pt_regs */
>         move a1, s0 /* current_thread_info->flags */
>         tail do_notify_resume
> diff --git a/arch/riscv/kernel/fpu.S b/arch/riscv/kernel/fpu.S
> index 1defb06..631d315 100644
> --- a/arch/riscv/kernel/fpu.S
> +++ b/arch/riscv/kernel/fpu.S
> @@ -23,7 +23,7 @@ ENTRY(__fstate_save)
>         li  a2,  TASK_THREAD_F0
>         add a0, a0, a2
>         li t1, SR_FS
> -       csrs sstatus, t1
> +       csrs CSR_SSTATUS, t1
>         frcsr t0
>         fsd f0,  TASK_THREAD_F0_F0(a0)
>         fsd f1,  TASK_THREAD_F1_F0(a0)
> @@ -58,7 +58,7 @@ ENTRY(__fstate_save)
>         fsd f30, TASK_THREAD_F30_F0(a0)
>         fsd f31, TASK_THREAD_F31_F0(a0)
>         sw t0, TASK_THREAD_FCSR_F0(a0)
> -       csrc sstatus, t1
> +       csrc CSR_SSTATUS, t1
>         ret
>  ENDPROC(__fstate_save)
>
> @@ -67,7 +67,7 @@ ENTRY(__fstate_restore)
>         add a0, a0, a2
>         li t1, SR_FS
>         lw t0, TASK_THREAD_FCSR_F0(a0)
> -       csrs sstatus, t1
> +       csrs CSR_SSTATUS, t1
>         fld f0,  TASK_THREAD_F0_F0(a0)
>         fld f1,  TASK_THREAD_F1_F0(a0)
>         fld f2,  TASK_THREAD_F2_F0(a0)
> @@ -101,6 +101,6 @@ ENTRY(__fstate_restore)
>         fld f30, TASK_THREAD_F30_F0(a0)
>         fld f31, TASK_THREAD_F31_F0(a0)
>         fscsr t0
> -       csrc sstatus, t1
> +       csrc CSR_SSTATUS, t1
>         ret
>  ENDPROC(__fstate_restore)
> diff --git a/arch/riscv/kernel/head.S b/arch/riscv/kernel/head.S
> index 4e46f31..95010d7 100644
> --- a/arch/riscv/kernel/head.S
> +++ b/arch/riscv/kernel/head.S
> @@ -29,7 +29,7 @@ ENTRY(_start)
>          * floating point in kernel space
>          */
>         li t0, SR_FS
> -       csrc sstatus, t0
> +       csrc CSR_SSTATUS, t0
>
>         /* Pick one hart to run the main boot sequence */
>         la a3, hart_lottery
> diff --git a/arch/riscv/lib/uaccess.S b/arch/riscv/lib/uaccess.S
> index 399e6f0..ed2696c 100644
> --- a/arch/riscv/lib/uaccess.S
> +++ b/arch/riscv/lib/uaccess.S
> @@ -18,7 +18,7 @@ ENTRY(__asm_copy_from_user)
>
>         /* Enable access to user memory */
>         li t6, SR_SUM
> -       csrs sstatus, t6
> +       csrs CSR_SSTATUS, t6
>
>         add a3, a1, a2
>         /* Use word-oriented copy only if low-order bits match */
> @@ -47,7 +47,7 @@ ENTRY(__asm_copy_from_user)
>
>  3:
>         /* Disable access to user memory */
> -       csrc sstatus, t6
> +       csrc CSR_SSTATUS, t6
>         li a0, 0
>         ret
>  4: /* Edge case: unalignment */
> @@ -72,7 +72,7 @@ ENTRY(__clear_user)
>
>         /* Enable access to user memory */
>         li t6, SR_SUM
> -       csrs sstatus, t6
> +       csrs CSR_SSTATUS, t6
>
>         add a3, a0, a1
>         addi t0, a0, SZREG-1
> @@ -94,7 +94,7 @@ ENTRY(__clear_user)
>
>  3:
>         /* Disable access to user memory */
> -       csrc sstatus, t6
> +       csrc CSR_SSTATUS, t6
>         li a0, 0
>         ret
>  4: /* Edge case: unalignment */
> @@ -114,11 +114,11 @@ ENDPROC(__clear_user)
>         /* Fixup code for __copy_user(10) and __clear_user(11) */
>  10:
>         /* Disable access to user memory */
> -       csrs sstatus, t6
> +       csrs CSR_SSTATUS, t6
>         mv a0, a2
>         ret
>  11:
> -       csrs sstatus, t6
> +       csrs CSR_SSTATUS, t6
>         mv a0, a1
>         ret
>         .previous
> diff --git a/arch/riscv/mm/context.c b/arch/riscv/mm/context.c
> index 89ceb3c..beeb5d7 100644
> --- a/arch/riscv/mm/context.c
> +++ b/arch/riscv/mm/context.c
> @@ -57,12 +57,7 @@ void switch_mm(struct mm_struct *prev, struct mm_struct *next,
>         cpumask_clear_cpu(cpu, mm_cpumask(prev));
>         cpumask_set_cpu(cpu, mm_cpumask(next));
>
> -       /*
> -        * Use the old spbtr name instead of using the current satp
> -        * name to support binutils 2.29 which doesn't know about the
> -        * privileged ISA 1.10 yet.
> -        */
> -       csr_write(sptbr, virt_to_pfn(next->pgd) | SATP_MODE);
> +       csr_write(CSR_SATP, virt_to_pfn(next->pgd) | SATP_MODE);
>         local_flush_tlb_all();
>
>         flush_icache_deferred(next);
> --
> 2.7.4
>
>
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv

Thanks for this cleanup.

Reviewed-by: Anup Patel <anup@brainfault.org>

Regards,
Anup

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
