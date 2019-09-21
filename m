Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00E5DB9C4B
	for <lists+linux-riscv@lfdr.de>; Sat, 21 Sep 2019 06:35:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2N2cK4o3ec30tFoHah/2mhjW3s2PXa8ZPnRrHm7jwPY=; b=hkDR4JWfmJCZEr
	+GsMaL1yNbIB1H4dggegQqsIyJuccu9yPuRGemqBbAM4QoFsg7zwW98K7pX6j5chfBeuzf/D6i6UC
	1zKtjH/CKGIVlEcqINOGDgoeOrgmOcxthVpEGQjb+RVs7B8jGah4KiUJq7PtA8BTimi1xwUhQWaqH
	Ebp2XQQdATVcORx/IRmAjw2nMI2Mt1qx9CVFRaZwZk6f0OnYD+H6nBzuoCI+spQ266PoDeNiafW3a
	TVFpJySR5ersM49w2LxIz79s3Ptt4ecIomMZ2E7OtYza1y0MLg4GsyK00GhXphdgciGnfOrHgtltQ
	kU9jsmLuQ3wjOdNgNkpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBX76-000604-FU; Sat, 21 Sep 2019 04:35:16 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBX73-0005zi-3w
 for linux-riscv@lists.infradead.org; Sat, 21 Sep 2019 04:35:14 +0000
Received: by mail-wm1-x344.google.com with SMTP id m18so4026935wmc.1
 for <linux-riscv@lists.infradead.org>; Fri, 20 Sep 2019 21:35:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=pGKiDGF7pcSXfE/kXL5zm3CUq0K5jLTeFExSKLR0vc0=;
 b=yqJ3L9P0c2mDdv0+ntW2WM0jo5HFKquFuU36IwxqO8xkVoiET+QUZ9DAmfBIPONPxZ
 Zy7dSSNhnzJeRAuplQwrb7c5am6JBUou1wSYba8U6qoeMZEgqaduhJpGxLUAOcDtHsHS
 by7/5mjC1/ioJHGEPU2PplfjqD9t1TawkOZeLxG8oFL0EGdNh1OD4FDoboE4542o16bx
 DBw6St20spsXZ1Eiw2m3nWIi/NTDLsNAUe0e+qn0XQxImOHhLhVsFxaVhK8A6i/Lft6F
 +osnK/bjjn8LSs4xb6Jxu3XxBPXob9XLMZPc0kc2Oz8oJtJwxmMAVqYu0+UgqSXp5UWj
 h/4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=pGKiDGF7pcSXfE/kXL5zm3CUq0K5jLTeFExSKLR0vc0=;
 b=hK9Dmi2hp2NyfnJ/eyYXGxXgdjSORBGvFALrKY9GZWMIgdKvj8EAlhBGnI1iArsncP
 KhUlPWS0FkRrzAd/sM/RKCDnZZ6mBc32TvNtOauIG1X2zJSirpJL/tHGBOZKyHtn36VO
 QRrPbT3SCcGtzuNCt0YycGrFC8qEZgZnVUb7Q3fWj0ssYJslgqYp8CwNLcABJwMIswE+
 KBS0bBzERtmfaoHUs9bungcA682YdKpZRJcjyP6yrl3PbSxVLxpDTGTUdW92kibR5F4I
 lPv95I32wfE/gSf9F7LvMTAdD+ZgVgMkJzLvVwcJE1d8+ZiWRHKnI6HqQ3RSnChB5CW1
 FjPQ==
X-Gm-Message-State: APjAAAVDecPx5XtdGXfZoz5Iqd9CIJLtbs8UBUlvCJqnDBKAVPzDDOgL
 HqtmDjbZopvyYoGbUM1dq9jZ1hbFfl/2Quo0E5dYeg==
X-Google-Smtp-Source: APXvYqwZD5IWYiY39/ejS1DIfSMyd7f1VHWu0q0kwqBJZrxWeQyC+5jzlEApT/9Nt2UxRbi8CQZihLGKPqlM4A+5p/M=
X-Received: by 2002:a1c:80ca:: with SMTP id b193mr5263971wmd.171.1569040509087; 
 Fri, 20 Sep 2019 21:35:09 -0700 (PDT)
MIME-Version: 1.0
References: <20190921010002.61006-1-aou@eecs.berkeley.edu>
In-Reply-To: <20190921010002.61006-1-aou@eecs.berkeley.edu>
From: Anup Patel <anup@brainfault.org>
Date: Sat, 21 Sep 2019 10:04:57 +0530
Message-ID: <CAAhSdy3iTBeQcG0D=J7nYYudnDsEw6GN5FJ4fPCftUwvgGwjwg@mail.gmail.com>
Subject: Re: [PATCH] riscv: Fix memblock reservation for device tree blob
To: Albert Ou <aou@eecs.berkeley.edu>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_213513_212241_A602A5D0 
X-CRM114-Status: GOOD (  23.33  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
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
Cc: "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 Anup Patel <Anup.Patel@wdc.com>, Palmer Dabbelt <palmer@sifive.com>,
 linux-riscv <linux-riscv@lists.infradead.org>,
 Paul Walmsley <paul.walmsley@sifive.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Sat, Sep 21, 2019 at 6:30 AM Albert Ou <aou@eecs.berkeley.edu> wrote:
>
> This fixes an error with how the FDT blob is reserved in memblock.
> An incorrect physical address calculation exposed the FDT header to
> unintended corruption, which typically manifested with of_fdt_raw_init()
> faulting during late boot after fdt_totalsize() returned a wrong value.
> Systems with smaller physical memory sizes more frequently trigger this
> issue, as the kernel is more likely to allocate from the DMA32 zone
> where bbl places the DTB after the kernel image.
>
> Commit 671f9a3e2e24 ("RISC-V: Setup initial page tables in two stages")
> changed the mapping of the DTB to reside in the fixmap area.
> Consequently, early_init_fdt_reserve_self() cannot be used anymore in
> setup_bootmem() since it relies on __pa() to derive a physical address,
> which does not work with dtb_early_va that is no longer a valid kernel
> logical address.
>
> The reserved[0x1] region shows the effect of the pointer underflow
> resulting from the __pa(initial_boot_params) offset subtraction:
>
> [    0.000000] MEMBLOCK configuration:
> [    0.000000]  memory size = 0x000000001fe00000 reserved size = 0x0000000000a2e514
> [    0.000000]  memory.cnt  = 0x1
> [    0.000000]  memory[0x0]     [0x0000000080200000-0x000000009fffffff], 0x000000001fe00000 bytes flags: 0x0
> [    0.000000]  reserved.cnt  = 0x2
> [    0.000000]  reserved[0x0]   [0x0000000080200000-0x0000000080c2dfeb], 0x0000000000a2dfec bytes flags: 0x0
> [    0.000000]  reserved[0x1]   [0xfffffff080100000-0xfffffff080100527], 0x0000000000000528 bytes flags: 0x0
>
> With the fix applied:
>
> [    0.000000] MEMBLOCK configuration:
> [    0.000000]  memory size = 0x000000001fe00000 reserved size = 0x0000000000a2e514
> [    0.000000]  memory.cnt  = 0x1
> [    0.000000]  memory[0x0]     [0x0000000080200000-0x000000009fffffff], 0x000000001fe00000 bytes flags: 0x0
> [    0.000000]  reserved.cnt  = 0x2
> [    0.000000]  reserved[0x0]   [0x0000000080200000-0x0000000080c2dfeb], 0x0000000000a2dfec bytes flags: 0x0
> [    0.000000]  reserved[0x1]   [0x0000000080e00000-0x0000000080e00527], 0x0000000000000528 bytes flags: 0x0

Thanks for catching this issue.

Most of us did not notice this issue most likely because:
1. We generally have good enough RAM on QEMU and SiFive Unleashed
2. Most of people use OpenSBI FW_JUMP on QEMU and U-Boot  on
    SiFive Unleashed to boot in Linux which places FDT quite far away
    from Linux kernel end

Linux ARM64 kernel also uses FIXMAP to access FDT and over there
as well early_init_fdt_reserve_self() is not used.

>
> Fixes: 671f9a3e2e24 ("RISC-V: Setup initial page tables in two stages")
> Signed-off-by: Albert Ou <aou@eecs.berkeley.edu>
> ---
>  arch/riscv/mm/init.c | 13 ++++++++++++-
>  1 file changed, 12 insertions(+), 1 deletion(-)
>
> diff --git a/arch/riscv/mm/init.c b/arch/riscv/mm/init.c
> index f0ba713..52d007c 100644
> --- a/arch/riscv/mm/init.c
> +++ b/arch/riscv/mm/init.c
> @@ -11,6 +11,7 @@
>  #include <linux/swap.h>
>  #include <linux/sizes.h>
>  #include <linux/of_fdt.h>
> +#include <linux/libfdt.h>
>
>  #include <asm/fixmap.h>
>  #include <asm/tlbflush.h>
> @@ -82,6 +83,8 @@ static void __init setup_initrd(void)
>  }
>  #endif /* CONFIG_BLK_DEV_INITRD */
>
> +static phys_addr_t __dtb_pa __initdata;

May be dtb_early_pa will be more consistent name
instead of __dtb_pa because it matches dtb_early_va
used below.

> +
>  void __init setup_bootmem(void)
>  {
>         struct memblock_region *reg;
> @@ -117,7 +120,12 @@ void __init setup_bootmem(void)
>         setup_initrd();
>  #endif /* CONFIG_BLK_DEV_INITRD */
>
> -       early_init_fdt_reserve_self();
> +       /*
> +        * Avoid using early_init_fdt_reserve_self() since __pa() does
> +        * not work for DTB pointers that are fixmap addresses
> +        */
> +       memblock_reserve(__dtb_pa, fdt_totalsize(dtb_early_va));
> +
>         early_init_fdt_scan_reserved_mem();
>         memblock_allow_resize();
>         memblock_dump_all();
> @@ -333,6 +341,7 @@ static uintptr_t __init best_map_size(phys_addr_t base, phys_addr_t size)
>         "not use absolute addressing."
>  #endif
>
> +

Please remove this newline addition.

>  asmlinkage void __init setup_vm(uintptr_t dtb_pa)
>  {
>         uintptr_t va, end_va;
> @@ -393,6 +402,8 @@ asmlinkage void __init setup_vm(uintptr_t dtb_pa)
>
>         /* Save pointer to DTB for early FDT parsing */
>         dtb_early_va = (void *)fix_to_virt(FIX_FDT) + (dtb_pa & ~PAGE_MASK);
> +       /* Save physical address for memblock reservation */
> +       __dtb_pa = dtb_pa;
>  }
>
>  static void __init setup_vm_final(void)
> --
> 2.7.4
>
>
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv

This deserves to be stable kernel fix as well.
You should add:
Cc: stable@vger.kernel.org
in your commit description.

Apart from minor nits above.

Reviewed-by: Anup Patel <anup@brainfault.org>

I tried this patch for both RV64 and RV32 on QEMU with
Yocto rootfs.

Tested-by: Anup Patel <anup@brainfault.org>

Regards,
Anup

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
