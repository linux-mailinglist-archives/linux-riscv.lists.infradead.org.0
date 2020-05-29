Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FAF01E7C90
	for <lists+linux-riscv@lfdr.de>; Fri, 29 May 2020 14:05:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3y7LTD9AD7dxyNaYLN2SnZdb5ROvk4Iq8+UPh7UEJMs=; b=A2IqV/f4dlOIcdF3R1E1/O121
	YC0qmGKXp1F4P9TlCaOUSZkuLPu6tW/oA8Hk9A+cAxiCwSkwDqx454iH+yTwQxsfjxUvIjBBgbn9E
	rqBg0SPNh7QHBibe/LttgKjSBZEIhOtvayH9NDnNx/117TrbILFDvdZ3bAQ/NZrt9pU1HfBYSuuju
	iewJ1iePGoW2fWEhUbGyR10J7rt97mNrktp6kNHYnH4MosRIKgWU1ppxVFrmy1imRQ8041dkjg3ZH
	4d9hR73vCKGx6cYTtmAdPQE5ZB0A3JTCtxfrKT22hQR2peyG8ct017jDxSvTjqTHYFwmWaFAqjLx+
	E/dQcLYkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jedkv-0003GX-4r; Fri, 29 May 2020 12:04:57 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jedkr-0003GD-RQ
 for linux-riscv@lists.infradead.org; Fri, 29 May 2020 12:04:55 +0000
Received: by mail-wr1-x444.google.com with SMTP id x14so3317194wrp.2
 for <linux-riscv@lists.infradead.org>; Fri, 29 May 2020 05:04:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=3y7LTD9AD7dxyNaYLN2SnZdb5ROvk4Iq8+UPh7UEJMs=;
 b=jjNIyjfDdBX8IhWI95CzoJFu/QkJ14S3qwoQ2yB9sTd61kHsspVkpnnE+D2DZpk9SF
 W9G+xLk31DBnvVaTBlvcLlj/qW5Ay0xhRt+oq2RoKccBmTq/ru25RFKI9LPOMNKcw9Z6
 bTj1IWg9NhvrEDqtyZbDjuQKiWyDILoOkirAhZBFKIt7GBoODZGwap2X1+Oef3bOAlH3
 pfSWpgY/bMr9sm1EKdKtfUqJytJh1BZhDXmfw/bIsCkxFWU8MykI5zRjozfGtCm90MXx
 3Z8edoPkygb+dSLolXuiRocn+LfHXvGMppA4R5kuCm12OUMVWeFrWWTSgup1V/QcWPzq
 dsOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3y7LTD9AD7dxyNaYLN2SnZdb5ROvk4Iq8+UPh7UEJMs=;
 b=apqs211Xw2C8lB5VjNlgZ0+f6NeHs0hLrSte88wcpwPnQrNPk6ebKA3LjljJeae67g
 qO3rmOFt43XY2r0di3JdilrwUbBWdbUnMrDU+JUP9ljNauP1ROxRNMUC1q8d3P+vry6n
 nA+NYlyDTNO/1ZJ4IKk91Id8aGHhvab3qjZO6jZr9PhUriOgEZc2WsPMgPtV7uXhWJcM
 /QBArZifQjSDKCpT3n0nHM9LkeRa9CdDXp++O7ZCBD1oG97NIO5LwxSA2+7DvgbPFn5Q
 SQhvxCMQHdEuUk00U6fAmtSRcS9FTxVB4WCheOqrtxSjszhJxQEcnx+m1vqM24/RmhSg
 msKg==
X-Gm-Message-State: AOAM531kB7gfm6XSMBV0OoKTsvDpVeoEuUjg7CC2oV3pNI+UjQhEvcPX
 nPLiZy7mfjzhTqjHLuMAia6ig3SoIsVPlXz51O8abw==
X-Google-Smtp-Source: ABdhPJzg+ym/y98ybnXUfydVlHFoxgm/PTrRkwy7qy7w9T+TbpcEM1hFNm66mrIrKKBKjbD6TgkVe95KZTZnt4T6kfE=
X-Received: by 2002:a05:6000:12c4:: with SMTP id
 l4mr9011300wrx.128.1590753892041; 
 Fri, 29 May 2020 05:04:52 -0700 (PDT)
MIME-Version: 1.0
References: <20200524085259.24784-1-alex@ghiti.fr>
 <20200524085259.24784-3-alex@ghiti.fr>
In-Reply-To: <20200524085259.24784-3-alex@ghiti.fr>
From: Anup Patel <anup@brainfault.org>
Date: Fri, 29 May 2020 17:34:39 +0530
Message-ID: <CAAhSdy0XX8dAa8Ebm7CBgjxCejqA=GN_3n04K3hsNiwCrW7U3A@mail.gmail.com>
Subject: Re: [PATCH v3 2/3] riscv: Introduce CONFIG_RELOCATABLE
To: Alexandre Ghiti <alex@ghiti.fr>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_050453_886787_B7AC0B71 
X-CRM114-Status: GOOD (  26.99  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Albert Ou <aou@eecs.berkeley.edu>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Michael Ellerman <mpe@ellerman.id.au>, Anup Patel <Anup.Patel@wdc.com>,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 Atish Patra <Atish.Patra@wdc.com>, Paul Mackerras <paulus@samba.org>,
 Zong Li <zong.li@sifive.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 Palmer Dabbelt <palmer@dabbelt.com>,
 linux-riscv <linux-riscv@lists.infradead.org>, linuxppc-dev@lists.ozlabs.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Sun, May 24, 2020 at 2:25 PM Alexandre Ghiti <alex@ghiti.fr> wrote:
>
> This config allows to compile the kernel as PIE and to relocate it at
> any virtual address at runtime: this paves the way to KASLR and to 4-level
> page table folding at runtime. Runtime relocation is possible since
> relocation metadata are embedded into the kernel.
>
> Note that relocating at runtime introduces an overhead even if the
> kernel is loaded at the same address it was linked at and that the compiler
> options are those used in arm64 which uses the same RELA relocation
> format.
>
> Signed-off-by: Alexandre Ghiti <alex@ghiti.fr>
> ---
>  arch/riscv/Kconfig              | 12 +++++++
>  arch/riscv/Makefile             |  5 ++-
>  arch/riscv/kernel/vmlinux.lds.S |  6 ++--
>  arch/riscv/mm/Makefile          |  4 +++
>  arch/riscv/mm/init.c            | 63 +++++++++++++++++++++++++++++++++
>  5 files changed, 87 insertions(+), 3 deletions(-)
>
> diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
> index a31e1a41913a..93127d5913fe 100644
> --- a/arch/riscv/Kconfig
> +++ b/arch/riscv/Kconfig
> @@ -170,6 +170,18 @@ config PGTABLE_LEVELS
>         default 3 if 64BIT
>         default 2
>
> +config RELOCATABLE
> +       bool
> +       depends on MMU
> +       help
> +          This builds a kernel as a Position Independent Executable (PIE),
> +          which retains all relocation metadata required to relocate the
> +          kernel binary at runtime to a different virtual address than the
> +          address it was linked at.
> +          Since RISCV uses the RELA relocation format, this requires a
> +          relocation pass at runtime even if the kernel is loaded at the
> +          same address it was linked at.
> +
>  source "arch/riscv/Kconfig.socs"
>
>  menu "Platform type"
> diff --git a/arch/riscv/Makefile b/arch/riscv/Makefile
> index fb6e37db836d..1406416ea743 100644
> --- a/arch/riscv/Makefile
> +++ b/arch/riscv/Makefile
> @@ -9,7 +9,10 @@
>  #
>
>  OBJCOPYFLAGS    := -O binary
> -LDFLAGS_vmlinux :=
> +ifeq ($(CONFIG_RELOCATABLE),y)
> +LDFLAGS_vmlinux := -shared -Bsymbolic -z notext -z norelro
> +KBUILD_CFLAGS += -fPIE
> +endif
>  ifeq ($(CONFIG_DYNAMIC_FTRACE),y)
>         LDFLAGS_vmlinux := --no-relax
>  endif
> diff --git a/arch/riscv/kernel/vmlinux.lds.S b/arch/riscv/kernel/vmlinux.lds.S
> index a9abde62909f..e8ffba8c2044 100644
> --- a/arch/riscv/kernel/vmlinux.lds.S
> +++ b/arch/riscv/kernel/vmlinux.lds.S
> @@ -85,8 +85,10 @@ SECTIONS
>
>         BSS_SECTION(PAGE_SIZE, PAGE_SIZE, 0)
>
> -       .rel.dyn : {
> -               *(.rel.dyn*)
> +       .rela.dyn : ALIGN(8) {
> +               __rela_dyn_start = .;
> +               *(.rela .rela*)
> +               __rela_dyn_end = .;
>         }
>
>         _end = .;
> diff --git a/arch/riscv/mm/Makefile b/arch/riscv/mm/Makefile
> index 363ef01c30b1..dc5cdaa80bc1 100644
> --- a/arch/riscv/mm/Makefile
> +++ b/arch/riscv/mm/Makefile
> @@ -1,6 +1,10 @@
>  # SPDX-License-Identifier: GPL-2.0-only
>
>  CFLAGS_init.o := -mcmodel=medany
> +ifdef CONFIG_RELOCATABLE
> +CFLAGS_init.o += -fno-pie
> +endif
> +
>  ifdef CONFIG_FTRACE
>  CFLAGS_REMOVE_init.o = -pg
>  endif
> diff --git a/arch/riscv/mm/init.c b/arch/riscv/mm/init.c
> index 17f108baec4f..7074522d40c6 100644
> --- a/arch/riscv/mm/init.c
> +++ b/arch/riscv/mm/init.c
> @@ -13,6 +13,9 @@
>  #include <linux/of_fdt.h>
>  #include <linux/libfdt.h>
>  #include <linux/set_memory.h>
> +#ifdef CONFIG_RELOCATABLE
> +#include <linux/elf.h>
> +#endif
>
>  #include <asm/fixmap.h>
>  #include <asm/tlbflush.h>
> @@ -379,6 +382,53 @@ static uintptr_t __init best_map_size(phys_addr_t base, phys_addr_t size)
>  #error "setup_vm() is called from head.S before relocate so it should not use absolute addressing."
>  #endif
>
> +#ifdef CONFIG_RELOCATABLE
> +extern unsigned long __rela_dyn_start, __rela_dyn_end;
> +
> +#ifdef CONFIG_64BIT
> +#define Elf_Rela Elf64_Rela
> +#define Elf_Addr Elf64_Addr
> +#else
> +#define Elf_Rela Elf32_Rela
> +#define Elf_Addr Elf32_Addr
> +#endif
> +
> +void __init relocate_kernel(uintptr_t load_pa)
> +{
> +       Elf_Rela *rela = (Elf_Rela *)&__rela_dyn_start;
> +       /*
> +        * This holds the offset between the linked virtual address and the
> +        * relocated virtual address.
> +        */
> +       uintptr_t reloc_offset = kernel_virt_addr - KERNEL_LINK_ADDR;
> +       /*
> +        * This holds the offset between kernel linked virtual address and
> +        * physical address.
> +        */
> +       uintptr_t va_kernel_link_pa_offset = KERNEL_LINK_ADDR - load_pa;
> +
> +       for ( ; rela < (Elf_Rela *)&__rela_dyn_end; rela++) {
> +               Elf_Addr addr = (rela->r_offset - va_kernel_link_pa_offset);
> +               Elf_Addr relocated_addr = rela->r_addend;
> +
> +               if (rela->r_info != R_RISCV_RELATIVE)
> +                       continue;
> +
> +               /*
> +                * Make sure to not relocate vdso symbols like rt_sigreturn
> +                * which are linked from the address 0 in vmlinux since
> +                * vdso symbol addresses are actually used as an offset from
> +                * mm->context.vdso in VDSO_OFFSET macro.
> +                */
> +               if (relocated_addr >= KERNEL_LINK_ADDR)
> +                       relocated_addr += reloc_offset;
> +
> +               *(Elf_Addr *)addr = relocated_addr;
> +       }
> +}
> +
> +#endif
> +
>  static uintptr_t load_pa, load_sz;
>
>  void create_kernel_page_table(pgd_t *pgdir, uintptr_t map_size)
> @@ -405,6 +455,19 @@ asmlinkage void __init setup_vm(uintptr_t dtb_pa)
>
>         pfn_base = PFN_DOWN(load_pa);
>
> +#ifdef CONFIG_RELOCATABLE
> +#ifdef CONFIG_64BIT
> +       /*
> +        * Early page table uses only one PGDIR, which makes it possible
> +        * to map PGDIR_SIZE aligned on PGDIR_SIZE: if the relocation offset
> +        * makes the kernel cross over a PGDIR_SIZE boundary, raise a bug
> +        * since a part of the kernel would not get mapped.
> +        * This cannot happen on rv32 as we use the entire page directory level.
> +        */
> +       BUG_ON(PGDIR_SIZE - (kernel_virt_addr & (PGDIR_SIZE - 1)) < load_sz);
> +#endif
> +       relocate_kernel(load_pa);
> +#endif
>         /*
>          * Enforce boot alignment requirements of RV32 and
>          * RV64 by only allowing PMD or PGD mappings.
> --
> 2.20.1
>
>

Looks good to me as well.

Reviewed-by: Anup Patel <anup@brainfault.org>

Regards,
Anup

