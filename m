Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06978172C79
	for <lists+linux-riscv@lfdr.de>; Fri, 28 Feb 2020 00:46:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=LzzbaK5ffPqqLu56Wte6fsejhTyDoPVxJ2aXgnrUUQU=; b=ehlifiH09DArLf658dmUN7ZRw
	ajPCQpP7pWYzNR84g1JGQqi++L1VhPkXGCJfmEntTszTXclDdkLFMwpdtmpca3jUnq8PWecUg7760
	/0/BuCUHQzlgZ+hmaFRKn5oUvh7UcMmL4wNfq2UHnkRqHREIGP30FVmU7KP7kfMB4yYCbi1wlDt2m
	E97wSDowmxiBFYwMVtmaDUn7HwY/R+A6a1zdpXABG+3jt/mQavtwlufBjv8R13TQdaWvnPmrmc7km
	yovfFe5mQEXWxTUoimrPZGI95QDzQP+qzZ54vSAsVIDdMZIT1qRnFEG6DHG4B0j5uWjmKCHTWIEfL
	d2UxOv7iw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7Sr2-0005sW-U8; Thu, 27 Feb 2020 23:46:08 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7Sqz-0005s0-A4
 for linux-riscv@lists.infradead.org; Thu, 27 Feb 2020 23:46:07 +0000
Received: by mail-pf1-x441.google.com with SMTP id s1so676441pfh.10
 for <linux-riscv@lists.infradead.org>; Thu, 27 Feb 2020 15:46:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=LzzbaK5ffPqqLu56Wte6fsejhTyDoPVxJ2aXgnrUUQU=;
 b=JhAIx8vlp0ApzO1FIiiXsxT6OvkHnTXeEZHR6xVUsV7zqwn+f1afSYdVRLMcCVxhY4
 Iu4bjKYaNM4/m7yNZaLMjlZgacN89kRfVsSjBOG3K9yt8O9qB3WYLYyg5DnLPDLMkCb6
 3mDsDlOVWgbUCUAgZ8AOJOTajaDmDyNmOtRQngtnWj7Rw+YsghrnBEECZ7zmpuGPV8Km
 QiHSW/GjVcuvkP2mQif1yNFdKKSljY6Wlb/no9V55E0TrzUDaVFXNFXmwzjZNFGeS3DZ
 9DG5hjRG7SLYO6B/Aip92tWyJqQ1C+xxsHvpcNYbML2XM2e/eXGTEAT154gL877/diX0
 XmQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=LzzbaK5ffPqqLu56Wte6fsejhTyDoPVxJ2aXgnrUUQU=;
 b=ZR+DEMuS5dwYlvcFUYdQexZ3eq4Y7nZNVWCNRNxKT9NXDEcMPKPbvSsbGnEecG8Swj
 j7hnCpUu34SzUIvco5WEe64aZLdOr4kELXGhT4zJ5GNIRAd2X+Q5ulDsKgoXwC54PUBy
 9+m0toiu1ZuhadY8ShiPigRlrn4RQAmzzsFx/keAqdEn8EpIjSsRvFRRR5P8Dlxxhvo3
 Ltkvkg0GK+rA8eJmSLaKvmEdmvrGpTb7xbkN85bVXcon0rI1o4Fa2/486DbmAYNEKa4/
 eM1ImCTghpxgrxkQawmsD64sUC6t5d/jdUJZS7nf/aguARHajeRRuRb9RLjtrAy1SlnR
 pDtw==
X-Gm-Message-State: APjAAAV5I3WNh0tzthkbdx3mnzP5RYC9VdHGgK8m5cHHpxAGHYAK1xfl
 2IxQRzS7WFNtlNDbpJM/8wT2+MykVetRyAYCVrBxNg==
X-Google-Smtp-Source: APXvYqx0Zv9D+S254/U59PSRYolR6bUTnSnLMlEsMkxLxzmoaAvYO1aFKF7/fhfOqdhqW9Ye958CnkQISf7FUeQA8Qg=
X-Received: by 2002:a62:1615:: with SMTP id 21mr1525986pfw.84.1582847163613;
 Thu, 27 Feb 2020 15:46:03 -0800 (PST)
MIME-Version: 1.0
References: <20200227213450.87194-1-palmer@dabbelt.com>
 <20200227213450.87194-3-palmer@dabbelt.com>
In-Reply-To: <20200227213450.87194-3-palmer@dabbelt.com>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Thu, 27 Feb 2020 15:45:52 -0800
Message-ID: <CAKwvOdm65wmFQE6_wkVFFE6us99xXoqS8E-qORX9XmsD2uJ1dQ@mail.gmail.com>
Subject: Re: [PATCH 2/3] RISC-V: Inline the assembly register save/restore
 macros
To: Palmer Dabbelt <palmer@dabbelt.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_154605_378616_C5061AB4 
X-CRM114-Status: GOOD (  27.16  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
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
> These are only used once, and when reading the code I've always found them to

Looks like there's SAVE_ALL/RESTORE_ALL macros in
arch/riscv/kernel/mcount-dyn.S as well that could probably be
refactored to do the saving/restoring of just the GPRs (since the two
similarly named macros share quite a bit of code between the two
source files, but aren't 100% the same), but this patch is fine, too.
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

> be more of a headache than a benefit.  While they were never worth removing
> before, LLVM's integrated assembler doesn't support LOCAL so rather that trying
> to figure out how to refactor the macros it seems saner to just inline them.
>
> Signed-off-by: Palmer Dabbelt <palmerdabbelt@google.com>
> ---
>  arch/riscv/kernel/entry.S | 143 ++++++++++++++++----------------------
>  1 file changed, 61 insertions(+), 82 deletions(-)
>
> diff --git a/arch/riscv/kernel/entry.S b/arch/riscv/kernel/entry.S
> index bad4d85b5e91..f2e8e7c8089d 100644
> --- a/arch/riscv/kernel/entry.S
> +++ b/arch/riscv/kernel/entry.S
> @@ -13,17 +13,11 @@
>  #include <asm/thread_info.h>
>  #include <asm/asm-offsets.h>
>
> -       .text
> -       .altmacro
> -
> -/*
> - * Prepares to enter a system call or exception by saving all registers to the
> - * stack.
> - */
> -       .macro SAVE_ALL
> -       LOCAL _restore_kernel_tpsp
> -       LOCAL _save_context
> +#if !IS_ENABLED(CONFIG_PREEMPTION)
> +.set resume_kernel, restore_all
> +#endif
>
> +ENTRY(handle_exception)
>         /*
>          * If coming from userspace, preserve the user thread pointer and load
>          * the kernel thread pointer.  If we came from the kernel, the scratch
> @@ -90,77 +84,6 @@ _save_context:
>         REG_S s3, PT_BADADDR(sp)
>         REG_S s4, PT_CAUSE(sp)
>         REG_S s5, PT_TP(sp)
> -       .endm
> -
> -/*
> - * Prepares to return from a system call or exception by restoring all
> - * registers from the stack.
> - */
> -       .macro RESTORE_ALL
> -       REG_L a0, PT_STATUS(sp)
> -       /*
> -        * The current load reservation is effectively part of the processor's
> -        * state, in the sense that load reservations cannot be shared between
> -        * different hart contexts.  We can't actually save and restore a load
> -        * reservation, so instead here we clear any existing reservation --
> -        * it's always legal for implementations to clear load reservations at
> -        * any point (as long as the forward progress guarantee is kept, but
> -        * we'll ignore that here).
> -        *
> -        * Dangling load reservations can be the result of taking a trap in the
> -        * middle of an LR/SC sequence, but can also be the result of a taken
> -        * forward branch around an SC -- which is how we implement CAS.  As a
> -        * result we need to clear reservations between the last CAS and the
> -        * jump back to the new context.  While it is unlikely the store
> -        * completes, implementations are allowed to expand reservations to be
> -        * arbitrarily large.
> -        */
> -       REG_L  a2, PT_EPC(sp)
> -       REG_SC x0, a2, PT_EPC(sp)
> -
> -       csrw CSR_STATUS, a0
> -       csrw CSR_EPC, a2
> -
> -       REG_L x1,  PT_RA(sp)
> -       REG_L x3,  PT_GP(sp)
> -       REG_L x4,  PT_TP(sp)
> -       REG_L x5,  PT_T0(sp)
> -       REG_L x6,  PT_T1(sp)
> -       REG_L x7,  PT_T2(sp)
> -       REG_L x8,  PT_S0(sp)
> -       REG_L x9,  PT_S1(sp)
> -       REG_L x10, PT_A0(sp)
> -       REG_L x11, PT_A1(sp)
> -       REG_L x12, PT_A2(sp)
> -       REG_L x13, PT_A3(sp)
> -       REG_L x14, PT_A4(sp)
> -       REG_L x15, PT_A5(sp)
> -       REG_L x16, PT_A6(sp)
> -       REG_L x17, PT_A7(sp)
> -       REG_L x18, PT_S2(sp)
> -       REG_L x19, PT_S3(sp)
> -       REG_L x20, PT_S4(sp)
> -       REG_L x21, PT_S5(sp)
> -       REG_L x22, PT_S6(sp)
> -       REG_L x23, PT_S7(sp)
> -       REG_L x24, PT_S8(sp)
> -       REG_L x25, PT_S9(sp)
> -       REG_L x26, PT_S10(sp)
> -       REG_L x27, PT_S11(sp)
> -       REG_L x28, PT_T3(sp)
> -       REG_L x29, PT_T4(sp)
> -       REG_L x30, PT_T5(sp)
> -       REG_L x31, PT_T6(sp)
> -
> -       REG_L x2,  PT_SP(sp)
> -       .endm
> -
> -#if !IS_ENABLED(CONFIG_PREEMPTION)
> -.set resume_kernel, restore_all
> -#endif
> -
> -ENTRY(handle_exception)
> -       SAVE_ALL
>
>         /*
>          * Set the scratch register to 0, so that if a recursive exception
> @@ -298,7 +221,63 @@ resume_userspace:
>         csrw CSR_SCRATCH, tp
>
>  restore_all:
> -       RESTORE_ALL
> +       REG_L a0, PT_STATUS(sp)
> +       /*
> +        * The current load reservation is effectively part of the processor's
> +        * state, in the sense that load reservations cannot be shared between
> +        * different hart contexts.  We can't actually save and restore a load
> +        * reservation, so instead here we clear any existing reservation --
> +        * it's always legal for implementations to clear load reservations at
> +        * any point (as long as the forward progress guarantee is kept, but
> +        * we'll ignore that here).
> +        *
> +        * Dangling load reservations can be the result of taking a trap in the
> +        * middle of an LR/SC sequence, but can also be the result of a taken
> +        * forward branch around an SC -- which is how we implement CAS.  As a
> +        * result we need to clear reservations between the last CAS and the
> +        * jump back to the new context.  While it is unlikely the store
> +        * completes, implementations are allowed to expand reservations to be
> +        * arbitrarily large.
> +        */
> +       REG_L  a2, PT_EPC(sp)
> +       REG_SC x0, a2, PT_EPC(sp)
> +
> +       csrw CSR_STATUS, a0
> +       csrw CSR_EPC, a2
> +
> +       REG_L x1,  PT_RA(sp)
> +       REG_L x3,  PT_GP(sp)
> +       REG_L x4,  PT_TP(sp)
> +       REG_L x5,  PT_T0(sp)
> +       REG_L x6,  PT_T1(sp)
> +       REG_L x7,  PT_T2(sp)
> +       REG_L x8,  PT_S0(sp)
> +       REG_L x9,  PT_S1(sp)
> +       REG_L x10, PT_A0(sp)
> +       REG_L x11, PT_A1(sp)
> +       REG_L x12, PT_A2(sp)
> +       REG_L x13, PT_A3(sp)
> +       REG_L x14, PT_A4(sp)
> +       REG_L x15, PT_A5(sp)
> +       REG_L x16, PT_A6(sp)
> +       REG_L x17, PT_A7(sp)
> +       REG_L x18, PT_S2(sp)
> +       REG_L x19, PT_S3(sp)
> +       REG_L x20, PT_S4(sp)
> +       REG_L x21, PT_S5(sp)
> +       REG_L x22, PT_S6(sp)
> +       REG_L x23, PT_S7(sp)
> +       REG_L x24, PT_S8(sp)
> +       REG_L x25, PT_S9(sp)
> +       REG_L x26, PT_S10(sp)
> +       REG_L x27, PT_S11(sp)
> +       REG_L x28, PT_T3(sp)
> +       REG_L x29, PT_T4(sp)
> +       REG_L x30, PT_T5(sp)
> +       REG_L x31, PT_T6(sp)
> +
> +       REG_L x2,  PT_SP(sp)
> +
>  #ifdef CONFIG_RISCV_M_MODE
>         mret
>  #else
> --
> 2.25.1.481.gfbce0eb801-goog
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200227213450.87194-3-palmer%40dabbelt.com.



-- 
Thanks,
~Nick Desaulniers

