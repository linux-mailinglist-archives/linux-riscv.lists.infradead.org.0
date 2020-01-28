Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6339814AEB7
	for <lists+linux-riscv@lfdr.de>; Tue, 28 Jan 2020 05:38:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=82xCouEOgXgPfafFApuTdamqdwWO/M5ipkbPri7A61c=; b=jow1O72sQJR8MhtAdf2eINfbl
	Vh9f6gHvuHIupSMys/Qgk3iH1mxbarpEOE79Pl2KzatYMshIytbmCtyxhCRlK0HNCphReivpUNx4T
	bhOk+1jUUgoEnNh6qZn3pFsorIu04WP+oar+twznKfNbQxS/RUnU+71cVYkbs0icSOWm1+cDZ+APT
	n0/vOFbjKQ9FIElJGXin6lxIazpJn0abfjLA4C/Cq8mb6Yr3MGSJLjAVCQYCiPa7KgM2DqTWslvoc
	CF8r6JjXRRzo1O3bvq+ZJHMQsVQb70yqXjzSByyLLm8KAlIDWufoC3PYMIr6S5v8ktIGmJIov0W2a
	S8+OnTsmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwIe9-0004BU-1C; Tue, 28 Jan 2020 04:38:41 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwIe5-0004BB-95
 for linux-riscv@lists.infradead.org; Tue, 28 Jan 2020 04:38:38 +0000
Received: by mail-wm1-x342.google.com with SMTP id b2so1056237wma.0
 for <linux-riscv@lists.infradead.org>; Mon, 27 Jan 2020 20:38:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=82xCouEOgXgPfafFApuTdamqdwWO/M5ipkbPri7A61c=;
 b=CAVtxB1BNJdIHFMnLatJjaTjN4FMrHmK93B+RuvgOCQRHWDRsa+D/DhsicZrJKj7Du
 6EpyeNlMr2QH/pd7f9jRmhAA8F8WY4CajMUQc+1m7BuuJC4loIn2E7b+MaxIQY3VByLr
 M5Lx795Lh9A2+gH6zuT3XrI2Uc6mxy+/Br2lKtWBRJJ/tc6wrluyEYIOTDEBDkOrmF7N
 SgC5I612/I+y6bcNvcW7zv8CoG0i5tZrUfkqbIMgWcuj65rJGDixGieyjK4p2WFqtLlM
 HiAzhUFkxHW6s5Ms+rLFqsbmCL57mC/yWX6WjqqfeNU13TLdyUMQ0sGiaKsvSmLBsQvg
 flKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=82xCouEOgXgPfafFApuTdamqdwWO/M5ipkbPri7A61c=;
 b=pxMzDsqbpz2dT6koFjcTwf6ly5zws+lQV15Lq8/id2TNBXXv+ugYRyTz0t/5dCcHsJ
 sEgSjsTxyYmTBS+QCUudDmQ3n/fQfI1FZenfd8d7dvBN4SYEib+1R0N9E8/nzljcyy9x
 vXZk+ABDQfg+/nyAKy14jWKWfZAIDBs5+HHyVPtLR4uZ06K3Y/inBEXIIaR6IXjrK2Fd
 1UTFicyXa/6gUguVheDQEndKKIFwYzKxVQZTJZzBT9dF8vJmWFvWpFazg33t4CueYhMJ
 qMAbQ9dCEn+5An43a3Ko2QafSahndr64n2AnHKJD462nk3WV4uZ/konkdyr4ciwgz4yV
 +/Pg==
X-Gm-Message-State: APjAAAUNRvL0p8EN7TZPSTOI168/yk/x0aowtcpnE6kvCKySSmd6MpNF
 PKYo7ztc10tTOPGO/iAfuiQDPKpdz6ysQoX1MNczRg==
X-Google-Smtp-Source: APXvYqx/wXFQrz8wNVMwNwG5fd0Jha10J/uWXlKUsq619TFZrzwtpIZEhcqTgeNb/24uvbt7H/ma4vl+kGx04mxsBFg=
X-Received: by 2002:a05:600c:10cd:: with SMTP id
 l13mr2434517wmd.102.1580186315507; 
 Mon, 27 Jan 2020 20:38:35 -0800 (PST)
MIME-Version: 1.0
References: <20200128022737.15371-1-atish.patra@wdc.com>
 <20200128022737.15371-8-atish.patra@wdc.com>
In-Reply-To: <20200128022737.15371-8-atish.patra@wdc.com>
From: Anup Patel <anup@brainfault.org>
Date: Tue, 28 Jan 2020 10:08:24 +0530
Message-ID: <CAAhSdy3oktrDNZ01Um5wE8cy2PC5SZdeNDMWjRTmm7k1aHkk_A@mail.gmail.com>
Subject: Re: [PATCH v7 07/10] RISC-V: Move relocate and few other functions
 out of __init
To: Atish Patra <atish.patra@wdc.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_203837_318050_4E7111BF 
X-CRM114-Status: GOOD (  17.85  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Thomas Gleixner <tglx@linutronix.de>,
 Kees Cook <keescook@chromium.org>, Abner Chang <abner.chang@hpe.com>,
 nickhu@andestech.com, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Palmer Dabbelt <palmerdabbelt@google.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 Mike Rapoport <rppt@linux.ibm.com>, Chester Lin <clin@suse.com>,
 Vincent Chen <vincent.chen@sifive.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 "Eric W. Biederman" <ebiederm@xmission.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Greentime Hu <greentime.hu@sifive.com>,
 linux-riscv <linux-riscv@lists.infradead.org>, Borislav Petkov <bp@suse.de>,
 Palmer Dabbelt <palmer@dabbelt.com>, Mao Han <han_mao@c-sky.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, Jan 28, 2020 at 7:58 AM Atish Patra <atish.patra@wdc.com> wrote:
>
> The secondary hart booting and relocation code are under .init section.
> As a result, it will be freed once kernel booting is done. However,
> ordered booting protocol and CPU hotplug always requires these sections
> to be present to bringup harts after initial kernel boot.
>
> Move the required sections to a different section and make sure that
> they are in memory within first 2MB offset as trampoline page directory
> only maps first 2MB.
>
> Signed-off-by: Atish Patra <atish.patra@wdc.com>
> ---
>  arch/riscv/kernel/head.S        | 73 +++++++++++++++++++--------------
>  arch/riscv/kernel/vmlinux.lds.S |  9 +++-
>  2 files changed, 50 insertions(+), 32 deletions(-)
>
> diff --git a/arch/riscv/kernel/head.S b/arch/riscv/kernel/head.S
> index a4242be66966..9d7f084a50cc 100644
> --- a/arch/riscv/kernel/head.S
> +++ b/arch/riscv/kernel/head.S
> @@ -14,7 +14,7 @@
>  #include <asm/hwcap.h>
>  #include <asm/image.h>
>
> -__INIT
> +__HEAD
>  ENTRY(_start)
>         /*
>          * Image header expected by Linux boot-loaders. The image header data
> @@ -44,9 +44,10 @@ ENTRY(_start)
>         .balign 4
>         .ascii RISCV_IMAGE_MAGIC2
>         .word 0
> +END(_start)
>
> -.global _start_kernel
> -_start_kernel:
> +       __INIT
> +ENTRY(_start_kernel)
>         /* Mask all interrupts */
>         csrw CSR_IE, zero
>         csrw CSR_IP, zero
> @@ -125,6 +126,37 @@ clear_bss_done:
>         call parse_dtb
>         tail start_kernel
>
> +.Lsecondary_start:
> +#ifdef CONFIG_SMP
> +       /* Set trap vector to spin forever to help debug */
> +       la a3, .Lsecondary_park
> +       csrw CSR_TVEC, a3
> +
> +       slli a3, a0, LGREG
> +       la a1, __cpu_up_stack_pointer
> +       la a2, __cpu_up_task_pointer
> +       add a1, a3, a1
> +       add a2, a3, a2
> +
> +       /*
> +        * This hart didn't win the lottery, so we wait for the winning hart to
> +        * get far enough along the boot process that it should continue.
> +        */
> +.Lwait_for_cpu_up:
> +       /* FIXME: We should WFI to save some energy here. */
> +       REG_L sp, (a1)
> +       REG_L tp, (a2)
> +       beqz sp, .Lwait_for_cpu_up
> +       beqz tp, .Lwait_for_cpu_up
> +       fence
> +
> +       tail secondary_start_common
> +#endif
> +
> +END(_start_kernel)
> +
> +.section ".noinit.text","ax",@progbits
> +.align 2

Try to use __HEAD here (if possible).

>  #ifdef CONFIG_MMU
>  relocate:
>         /* Relocate return address */
> @@ -177,41 +209,27 @@ relocate:
>
>         ret
>  #endif /* CONFIG_MMU */
> -
> -.Lsecondary_start:
>  #ifdef CONFIG_SMP
>         /* Set trap vector to spin forever to help debug */
>         la a3, .Lsecondary_park
>         csrw CSR_TVEC, a3
>
>         slli a3, a0, LGREG
> -       la a1, __cpu_up_stack_pointer
> -       la a2, __cpu_up_task_pointer
> -       add a1, a3, a1
> -       add a2, a3, a2
> -
> -       /*
> -        * This hart didn't win the lottery, so we wait for the winning hart to
> -        * get far enough along the boot process that it should continue.
> -        */
> -.Lwait_for_cpu_up:
> -       /* FIXME: We should WFI to save some energy here. */
> -       REG_L sp, (a1)
> -       REG_L tp, (a2)
> -       beqz sp, .Lwait_for_cpu_up
> -       beqz tp, .Lwait_for_cpu_up
> -       fence
> +       .global secondary_start_common
> +secondary_start_common:
>
>  #ifdef CONFIG_MMU
>         /* Enable virtual memory and relocate to virtual address */
>         la a0, swapper_pg_dir
>         call relocate
>  #endif
> -
>         tail smp_callin
> -#endif
> +#endif /* CONFIG_SMP */
>
> -END(_start)
> +.Lsecondary_park:
> +       /* We lack SMP support or have too many harts, so park this hart */
> +       wfi
> +       j .Lsecondary_park
>
>  #ifdef CONFIG_RISCV_M_MODE
>  ENTRY(reset_regs)
> @@ -292,13 +310,6 @@ ENTRY(reset_regs)
>  END(reset_regs)
>  #endif /* CONFIG_RISCV_M_MODE */
>
> -.section ".text", "ax",@progbits
> -.align 2
> -.Lsecondary_park:
> -       /* We lack SMP support or have too many harts, so park this hart */
> -       wfi
> -       j .Lsecondary_park
> -
>  __PAGE_ALIGNED_BSS
>         /* Empty zero page */
>         .balign PAGE_SIZE
> diff --git a/arch/riscv/kernel/vmlinux.lds.S b/arch/riscv/kernel/vmlinux.lds.S
> index 12f42f96d46e..c8a88326df9e 100644
> --- a/arch/riscv/kernel/vmlinux.lds.S
> +++ b/arch/riscv/kernel/vmlinux.lds.S
> @@ -10,6 +10,7 @@
>  #include <asm/cache.h>
>  #include <asm/thread_info.h>
>
> +#include <linux/sizes.h>
>  OUTPUT_ARCH(riscv)
>  ENTRY(_start)
>
> @@ -20,8 +21,14 @@ SECTIONS
>         /* Beginning of code and text segment */
>         . = LOAD_OFFSET;
>         _start = .;
> -       __init_begin = .;
>         HEAD_TEXT_SECTION
> +       .noinit.text :
> +       {
> +               *(.noinit.text)
> +       }

Can we try using HEAD_TEXT_SECTION for SMP booting
related functions instead of new ".noinit.text" section ??

> +       . = ALIGN(SZ_4K);

Change this to PAGE aligned:
    . = ALIGN(PAGE_SIZE)

> +
> +       __init_begin = .;
>         INIT_TEXT_SECTION(PAGE_SIZE)
>         INIT_DATA_SECTION(16)
>         /* we have to discard exit text and such at runtime, not link time */
> --
> 2.24.0
>

Regards,
Anup

