Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A7B4159FE1
	for <lists+linux-riscv@lfdr.de>; Wed, 12 Feb 2020 05:18:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ArsqRBwFCDQFmJjaAOG0lbeuON4s+vxOWLsIsCpXzF0=; b=EQVvRKx3BSYPKx85FL88Ft69D
	ge+uqZlE41bO2ZqRs/ccoqWR3zHZ+Yt37Ufxkaso5qzS+lY5SsGpezC3KXY967ghhD/pzYPnD1AEy
	xVvgzZ/rprdHO9Q0+w/ssxixcl2hE9JvPbp7CQ5w/t1B9iGku3HoM1ocpFH3RAjfwSv6NtScB2Yas
	rfVsVY5titVmH/TAtq3NXQw/0UD/6cauuUMLlaoKzFAdz5g4ILTjDfOKIgyxbJseP3k1iYWLGkWrU
	k5nVWMvl+yhYtyyx3Y10U45f17vp0pXEL7YJRfVPwqkw0GlWR3RWnQGXL+xJdOT01sha/wRQINHAT
	V1zENsp5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1jU5-0006kP-9g; Wed, 12 Feb 2020 04:18:45 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1jU1-0006j9-Ik
 for linux-riscv@lists.infradead.org; Wed, 12 Feb 2020 04:18:43 +0000
Received: by mail-wm1-x341.google.com with SMTP id a6so506248wme.2
 for <linux-riscv@lists.infradead.org>; Tue, 11 Feb 2020 20:18:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ArsqRBwFCDQFmJjaAOG0lbeuON4s+vxOWLsIsCpXzF0=;
 b=yq7kEkwR6yY/A2mPTK/4zRGYThBBXDWZg/iJGRToSHTKqdAufRzywXK14/y36SzTrv
 1DpaVzzpHdTK+mb5VG/P8a7FEYUAWWF+ydzUfOl3LoAIS71WuyJvoiry78POty+r9hTK
 icBPnB5vfdZ0QC88DGUNOjK94JkpswUBn+aLY4XPpiLo4wZhQyELFSskVu9iNv2toorY
 Cme25ynBkxlYdUCl75FT2dOgL2Ep91xryKykdmCsjfNhkBbXpGYZAGE41WqXkU3YwvnR
 zXmoZoIbYhvCsLitQAQdahsUC+s/7V0lfD6wWJlTtB5rFikllQZvpYTtxG+8arZFhMCm
 M4qQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ArsqRBwFCDQFmJjaAOG0lbeuON4s+vxOWLsIsCpXzF0=;
 b=fGKxjHw3Xd5Z6iLEZInz/q08Ozkuvxmbd84c7zH5kH8nFnN7kady+dyEcDwNwc8DVk
 vttl4XZsDD5+qSDFzo0oMg1Pkrp6gAWREdPVxYzLis81O1WTIW7w8te3YOdze+3vYqVP
 qdsMsc5si5vjmdOWWzDJi/s3QipHJMpj3oCtiuvFdPxEn+d8HMHdW0OoHPjBzxEAI2oE
 Ub3yy+FG+LPNQcrRGKMwu4BHWt7BWXBdBosBH4rND7/SFZmX9lyEHHaK1HYJuBa5vGmi
 s+/UabzsOBhEipxOPTrP96jSTYcljJLYUyaxqZZL64W9fyvYt+zLJoH75/j8DhG91ZGu
 +TTw==
X-Gm-Message-State: APjAAAUGmPxHl8heDQ5hYV0saO+7OVFEspoA2CuPYxZ9Yj38rF9E57vY
 KrO4JZ11YqjFiko63Ja/GaY8VEzAh6/vTLYYXDLhVA==
X-Google-Smtp-Source: APXvYqwpUiS2Lp1rXar8NZkoeRDlVYsmEIzb/nDeNhHXRHRIEhoz9uavRNS4rW+lM4L0mSmDnuWdqhb6m+s/ADOD/gw=
X-Received: by 2002:a1c:6246:: with SMTP id w67mr9682916wmb.141.1581481118704; 
 Tue, 11 Feb 2020 20:18:38 -0800 (PST)
MIME-Version: 1.0
References: <20200212014822.28684-1-atish.patra@wdc.com>
 <20200212014822.28684-7-atish.patra@wdc.com>
In-Reply-To: <20200212014822.28684-7-atish.patra@wdc.com>
From: Anup Patel <anup@brainfault.org>
Date: Wed, 12 Feb 2020 09:48:27 +0530
Message-ID: <CAAhSdy2YRnmdxYu7zSYOUxMvFDbEz1Cwg69FgnYz3Rd8wEwQfw@mail.gmail.com>
Subject: Re: [PATCH v8 06/11] RISC-V: Move relocate and few other functions
 out of __init
To: Atish Patra <atish.patra@wdc.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_201841_673444_FD71FDDB 
X-CRM114-Status: GOOD (  21.15  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Jason Cooper <jason@lakedaemon.net>,
 Marc Zyngier <maz@kernel.org>, Daniel Lezcano <daniel.lezcano@linaro.org>,
 Heiko Carstens <heiko.carstens@de.ibm.com>,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 Mike Rapoport <rppt@linux.ibm.com>, Vincent Chen <vincent.chen@sifive.com>,
 Mao Han <han_mao@c-sky.com>, Geert Uytterhoeven <geert@linux-m68k.org>,
 "Eric W. Biederman" <ebiederm@xmission.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Michael Ellerman <mpe@ellerman.id.au>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Palmer Dabbelt <palmer@dabbelt.com>,
 linux-riscv <linux-riscv@lists.infradead.org>, Borislav Petkov <bp@suse.de>,
 Thomas Gleixner <tglx@linutronix.de>, Allison Randal <allison@lohutok.net>,
 Kees Cook <keescook@chromium.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, Feb 12, 2020 at 7:21 AM Atish Patra <atish.patra@wdc.com> wrote:
>
> The secondary hart booting and relocation code are under .init section.
> As a result, it will be freed once kernel booting is done. However,
> ordered booting protocol and CPU hotplug always requires these sections

I think you meant "... require these functions" here.

> to be present to bringup harts after initial kernel boot.
>
> Move the required sections to a different section and make sure that

Same here, I think you meant "... the required functions to a
different section ..."

> they are in memory within first 2MB offset as trampoline page directory
> only maps first 2MB.
>
> Signed-off-by: Atish Patra <atish.patra@wdc.com>
> ---
>  arch/riscv/kernel/head.S        | 153 +++++++++++++++++---------------
>  arch/riscv/kernel/vmlinux.lds.S |   5 +-
>  2 files changed, 86 insertions(+), 72 deletions(-)
>
> diff --git a/arch/riscv/kernel/head.S b/arch/riscv/kernel/head.S
> index a4242be66966..c1be597d22a1 100644
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
> @@ -45,8 +45,85 @@ ENTRY(_start)
>         .ascii RISCV_IMAGE_MAGIC2
>         .word 0
>
> -.global _start_kernel
> -_start_kernel:
> +.align 2
> +#ifdef CONFIG_MMU
> +relocate:
> +       /* Relocate return address */
> +       li a1, PAGE_OFFSET
> +       la a2, _start
> +       sub a1, a1, a2
> +       add ra, ra, a1
> +
> +       /* Point stvec to virtual address of intruction after satp write */
> +       la a2, 1f
> +       add a2, a2, a1
> +       csrw CSR_TVEC, a2
> +
> +       /* Compute satp for kernel page tables, but don't load it yet */
> +       srl a2, a0, PAGE_SHIFT
> +       li a1, SATP_MODE
> +       or a2, a2, a1
> +
> +       /*
> +        * Load trampoline page directory, which will cause us to trap to
> +        * stvec if VA != PA, or simply fall through if VA == PA.  We need a
> +        * full fence here because setup_vm() just wrote these PTEs and we need
> +        * to ensure the new translations are in use.
> +        */
> +       la a0, trampoline_pg_dir
> +       srl a0, a0, PAGE_SHIFT
> +       or a0, a0, a1
> +       sfence.vma
> +       csrw CSR_SATP, a0
> +.align 2
> +1:
> +       /* Set trap vector to spin forever to help debug */
> +       la a0, .Lsecondary_park
> +       csrw CSR_TVEC, a0
> +
> +       /* Reload the global pointer */
> +.option push
> +.option norelax
> +       la gp, __global_pointer$
> +.option pop
> +
> +       /*
> +        * Switch to kernel page tables.  A full fence is necessary in order to
> +        * avoid using the trampoline translations, which are only correct for
> +        * the first superpage.  Fetching the fence is guarnteed to work
> +        * because that first superpage is translated the same way.
> +        */
> +       csrw CSR_SATP, a2
> +       sfence.vma
> +
> +       ret
> +#endif /* CONFIG_MMU */
> +#ifdef CONFIG_SMP
> +       /* Set trap vector to spin forever to help debug */
> +       la a3, .Lsecondary_park
> +       csrw CSR_TVEC, a3
> +
> +       slli a3, a0, LGREG
> +       .global secondary_start_common
> +secondary_start_common:
> +
> +#ifdef CONFIG_MMU
> +       /* Enable virtual memory and relocate to virtual address */
> +       la a0, swapper_pg_dir
> +       call relocate
> +#endif
> +       tail smp_callin
> +#endif /* CONFIG_SMP */
> +
> +.Lsecondary_park:
> +       /* We lack SMP support or have too many harts, so park this hart */
> +       wfi
> +       j .Lsecondary_park
> +
> +END(_start)
> +
> +       __INIT
> +ENTRY(_start_kernel)
>         /* Mask all interrupts */
>         csrw CSR_IE, zero
>         csrw CSR_IP, zero
> @@ -125,59 +202,6 @@ clear_bss_done:
>         call parse_dtb
>         tail start_kernel
>
> -#ifdef CONFIG_MMU
> -relocate:
> -       /* Relocate return address */
> -       li a1, PAGE_OFFSET
> -       la a2, _start
> -       sub a1, a1, a2
> -       add ra, ra, a1
> -
> -       /* Point stvec to virtual address of intruction after satp write */
> -       la a2, 1f
> -       add a2, a2, a1
> -       csrw CSR_TVEC, a2
> -
> -       /* Compute satp for kernel page tables, but don't load it yet */
> -       srl a2, a0, PAGE_SHIFT
> -       li a1, SATP_MODE
> -       or a2, a2, a1
> -
> -       /*
> -        * Load trampoline page directory, which will cause us to trap to
> -        * stvec if VA != PA, or simply fall through if VA == PA.  We need a
> -        * full fence here because setup_vm() just wrote these PTEs and we need
> -        * to ensure the new translations are in use.
> -        */
> -       la a0, trampoline_pg_dir
> -       srl a0, a0, PAGE_SHIFT
> -       or a0, a0, a1
> -       sfence.vma
> -       csrw CSR_SATP, a0
> -.align 2
> -1:
> -       /* Set trap vector to spin forever to help debug */
> -       la a0, .Lsecondary_park
> -       csrw CSR_TVEC, a0
> -
> -       /* Reload the global pointer */
> -.option push
> -.option norelax
> -       la gp, __global_pointer$
> -.option pop
> -
> -       /*
> -        * Switch to kernel page tables.  A full fence is necessary in order to
> -        * avoid using the trampoline translations, which are only correct for
> -        * the first superpage.  Fetching the fence is guarnteed to work
> -        * because that first superpage is translated the same way.
> -        */
> -       csrw CSR_SATP, a2
> -       sfence.vma
> -
> -       ret
> -#endif /* CONFIG_MMU */
> -
>  .Lsecondary_start:
>  #ifdef CONFIG_SMP
>         /* Set trap vector to spin forever to help debug */
> @@ -202,16 +226,10 @@ relocate:
>         beqz tp, .Lwait_for_cpu_up
>         fence
>
> -#ifdef CONFIG_MMU
> -       /* Enable virtual memory and relocate to virtual address */
> -       la a0, swapper_pg_dir
> -       call relocate
> +       tail secondary_start_common
>  #endif
>
> -       tail smp_callin
> -#endif
> -
> -END(_start)
> +END(_start_kernel)
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
> index 12f42f96d46e..18c397953bfc 100644
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
> @@ -20,8 +21,10 @@ SECTIONS
>         /* Beginning of code and text segment */
>         . = LOAD_OFFSET;
>         _start = .;
> -       __init_begin = .;
>         HEAD_TEXT_SECTION
> +       . = ALIGN(PAGE_SIZE);
> +
> +       __init_begin = .;
>         INIT_TEXT_SECTION(PAGE_SIZE)
>         INIT_DATA_SECTION(16)
>         /* we have to discard exit text and such at runtime, not link time */
> --
> 2.24.0
>

Apart from above nit in commit description, looks good to me.

Reviewed-by: Anup Patel <anup@brainfault.org>

Regards,
Anup

