Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0063217B2BB
	for <lists+linux-riscv@lfdr.de>; Fri,  6 Mar 2020 01:21:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Mime-Version:Message-ID:To:From:
	In-Reply-To:Subject:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=+dCROxXm63kuCRbzO1bF7hZyQIUcAyqsydyhewMMbBw=; b=Eqi6CYSBxmwSQs
	cDDIjsRpd7kN2eYlLWPAyHncLdWWZ3If0eYQJcIRlG5yYaT6/twCzjrJb/DDjr1dadGSjf2Vfdmny
	jwW9ruWHGZGhoexvWzmY999n/1h3SX0EcSDJTf/74hEyFnYmSOZig/bnai3YCMOK+hXsOMSVh1kRg
	rXy12vG8c+/Bb8ab8nubzV7wHBS2goiUKOdoyYJXJFX/7YGv4SCe4fZ8hq7VYg+i4FH9dwJV1Xyuk
	teYKUUFOvraV9BpadipjYez3YKXSzNzz4kKyGWs0HMPlIWb5sE7D2EHfYansXI0K4mQR8H5Y3b0qS
	Zf39OJRpS7NE43qrn1DA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jA0jT-0008FC-Tu; Fri, 06 Mar 2020 00:20:51 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jA0jQ-0008Eg-Ly
 for linux-riscv@lists.infradead.org; Fri, 06 Mar 2020 00:20:50 +0000
Received: by mail-pg1-x544.google.com with SMTP id y30so204673pga.13
 for <linux-riscv@lists.infradead.org>; Thu, 05 Mar 2020 16:20:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
 :content-transfer-encoding;
 bh=+dCROxXm63kuCRbzO1bF7hZyQIUcAyqsydyhewMMbBw=;
 b=kh+6yTOH1gzY1+UGxl6/tLwd3WUSdBX6z+0MJbIfsJrZPJKCZwQ1nl5/w2ayfW3hK9
 rXa0sYXQ3NE3snlJUPYT6m/TsZz7ydNK07iMLsSKn2SRsPeEI3FyOTStRzeUm1asuNmf
 9kQVKZLkKYabobiJgwh6KEinUO4cXCqr+3tX1ZQ2lLEcpmYK6cKlgLU+Ofnoj9BcJ5zY
 1Ss5epn3soowrunfvbqeJ/7re1TNmf2U4Q/lEuz0Ua3fRCW4nMDIa/iIyxRHPk1Z+DxU
 kSiQFN7oqNuT4d3YOKiV3/UQ/lmXCFovF33BXiBqpuzo88O0FV/JXSrZk89Voy8fMrjJ
 F33w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=+dCROxXm63kuCRbzO1bF7hZyQIUcAyqsydyhewMMbBw=;
 b=MLpLCNzQEoLVAmHEtX2F9vnA6dMJ5Mh7qsSdZlHDwrTIQ6mWASmSFaw7UuRH7Lmjjh
 F4lKlO7684343o65Dw0dInfj08m7GbvxhNnh/bPLcnZNboB5KlfR//Q6DEGEdWqLaLnt
 TZkJ+5PhGGVpLHI67vggD/kY7zyk24b6p+p/Tjxf9QQSvC6TtZjBzg2v7whW4hbM728E
 hvYPK5UAtO5lYH9xYcnLzcGcZwy9hPwGo8FYB1yIBRj3Xk2WoT69anw9A3h4R1Oa5YKo
 pGde2vtb3FEvb5LL+MjRERYUZeh0XBEcfn6gdeWt6moh0e6maKr2uPBE6kpvN4FVAa8x
 22Rg==
X-Gm-Message-State: ANhLgQ0mglkr01qcnDRFUBRcrCqTaCXb/K+U2VslyjmFmnkssasuVNzO
 K9d6dANTVrXR6NlBPtKbMtBKMQ==
X-Google-Smtp-Source: ADFU+vs+C9XuIWtDzAx8P7eOzB45RGv02fBsZj/MUVzvOPEc71OPJW685bvI9k0bOR8S5rzecFfNQA==
X-Received: by 2002:a63:5a23:: with SMTP id o35mr728844pgb.60.1583454044037;
 Thu, 05 Mar 2020 16:20:44 -0800 (PST)
Received: from localhost ([2620:0:1000:2514:23a5:d584:6a92:3e3c])
 by smtp.gmail.com with ESMTPSA id a22sm244247pfo.56.2020.03.05.16.20.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Mar 2020 16:20:43 -0800 (PST)
Date: Thu, 05 Mar 2020 16:20:43 -0800 (PST)
X-Google-Original-Date: Thu, 05 Mar 2020 16:20:40 PST (-0800)
Subject: Re: [PATCH] RISC-V: Move all address space definition macros to one
 place
In-Reply-To: <20200224193436.26860-1-atish.patra@wdc.com>
From: Palmer Dabbelt <palmerdabbelt@google.com>
To: Atish Patra <Atish.Patra@wdc.com>
Message-ID: <mhng-a36eb560-2fbf-4fba-8416-8181a2c8ad5b@palmerdabbelt-glaptop1>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_162048_744743_2EFCAA97 
X-CRM114-Status: GOOD (  19.05  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: aou@eecs.berkeley.edu, nickhu@andestech.com, david.abdurachmanov@gmail.com,
 Bjorn Topel <bjorn.topel@gmail.com>, Anup Patel <Anup.Patel@wdc.com>,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org, rppt@linux.ibm.com,
 Atish Patra <Atish.Patra@wdc.com>, linux-riscv@lists.infradead.org,
 Paul Walmsley <paul.walmsley@sifive.com>, greentime.hu@sifive.com,
 tglx@linutronix.de, akpm@linux-foundation.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, 24 Feb 2020 11:34:36 PST (-0800), Atish Patra wrote:
> If both CONFIG_KASAN and CONFIG_SPARSEMEM_VMEMMAP are set, we get the
> following compilation error.
>
> ---------------------------------------------------------------
> ./arch/riscv/include/asm/pgtable-64.h: In function ‘pud_page’:
> ./include/asm-generic/memory_model.h:54:29: error: ‘vmemmap’ undeclared
> (first use in this function); did you mean ‘mem_map’?
>  #define __pfn_to_page(pfn) (vmemmap + (pfn))
>                              ^~~~~~~
> ./include/asm-generic/memory_model.h:82:21: note: in expansion of
> macro ‘__pfn_to_page’
>
>  #define pfn_to_page __pfn_to_page
>                      ^~~~~~~~~~~~~
> ./arch/riscv/include/asm/pgtable-64.h:70:9: note: in expansion of macro
> ‘pfn_to_page’
>   return pfn_to_page(pud_val(pud) >> _PAGE_PFN_SHIFT);
> ---------------------------------------------------------------
>
> Fix the compliation errors by moving all the address space definition
> macros before including pgtable-64.h.
>
> Cc: stable@vger.kernel.org
> Fixes: 8ad8b72721d0 (riscv: Add KASAN support)
>
> Signed-off-by: Atish Patra <atish.patra@wdc.com>
> ---
>  arch/riscv/include/asm/pgtable.h | 78 +++++++++++++++++---------------
>  1 file changed, 41 insertions(+), 37 deletions(-)
>
> diff --git a/arch/riscv/include/asm/pgtable.h b/arch/riscv/include/asm/pgtable.h
> index 453afb0a570a..4f6ee48a42e8 100644
> --- a/arch/riscv/include/asm/pgtable.h
> +++ b/arch/riscv/include/asm/pgtable.h
> @@ -19,6 +19,47 @@
>  #include <asm/tlbflush.h>
>  #include <linux/mm_types.h>
>
> +#ifdef CONFIG_MMU
> +
> +#define VMALLOC_SIZE     (KERN_VIRT_SIZE >> 1)
> +#define VMALLOC_END      (PAGE_OFFSET - 1)
> +#define VMALLOC_START    (PAGE_OFFSET - VMALLOC_SIZE)
> +
> +#define BPF_JIT_REGION_SIZE	(SZ_128M)
> +#define BPF_JIT_REGION_START	(PAGE_OFFSET - BPF_JIT_REGION_SIZE)
> +#define BPF_JIT_REGION_END	(VMALLOC_END)
> +
> +/*
> + * Roughly size the vmemmap space to be large enough to fit enough
> + * struct pages to map half the virtual address space. Then
> + * position vmemmap directly below the VMALLOC region.
> + */
> +#define VMEMMAP_SHIFT \
> +	(CONFIG_VA_BITS - PAGE_SHIFT - 1 + STRUCT_PAGE_MAX_SHIFT)
> +#define VMEMMAP_SIZE	BIT(VMEMMAP_SHIFT)
> +#define VMEMMAP_END	(VMALLOC_START - 1)
> +#define VMEMMAP_START	(VMALLOC_START - VMEMMAP_SIZE)
> +
> +/*
> + * Define vmemmap for pfn_to_page & page_to_pfn calls. Needed if kernel
> + * is configured with CONFIG_SPARSEMEM_VMEMMAP enabled.
> + */
> +#define vmemmap		((struct page *)VMEMMAP_START)
> +
> +#define PCI_IO_SIZE      SZ_16M
> +#define PCI_IO_END       VMEMMAP_START
> +#define PCI_IO_START     (PCI_IO_END - PCI_IO_SIZE)
> +
> +#define FIXADDR_TOP      PCI_IO_START
> +#ifdef CONFIG_64BIT
> +#define FIXADDR_SIZE     PMD_SIZE
> +#else
> +#define FIXADDR_SIZE     PGDIR_SIZE
> +#endif
> +#define FIXADDR_START    (FIXADDR_TOP - FIXADDR_SIZE)
> +
> +#endif
> +
>  #ifdef CONFIG_64BIT
>  #include <asm/pgtable-64.h>
>  #else
> @@ -90,31 +131,6 @@ extern pgd_t swapper_pg_dir[];
>  #define __S110	PAGE_SHARED_EXEC
>  #define __S111	PAGE_SHARED_EXEC
>
> -#define VMALLOC_SIZE     (KERN_VIRT_SIZE >> 1)
> -#define VMALLOC_END      (PAGE_OFFSET - 1)
> -#define VMALLOC_START    (PAGE_OFFSET - VMALLOC_SIZE)
> -
> -#define BPF_JIT_REGION_SIZE	(SZ_128M)
> -#define BPF_JIT_REGION_START	(PAGE_OFFSET - BPF_JIT_REGION_SIZE)
> -#define BPF_JIT_REGION_END	(VMALLOC_END)
> -
> -/*
> - * Roughly size the vmemmap space to be large enough to fit enough
> - * struct pages to map half the virtual address space. Then
> - * position vmemmap directly below the VMALLOC region.
> - */
> -#define VMEMMAP_SHIFT \
> -	(CONFIG_VA_BITS - PAGE_SHIFT - 1 + STRUCT_PAGE_MAX_SHIFT)
> -#define VMEMMAP_SIZE	BIT(VMEMMAP_SHIFT)
> -#define VMEMMAP_END	(VMALLOC_START - 1)
> -#define VMEMMAP_START	(VMALLOC_START - VMEMMAP_SIZE)
> -
> -/*
> - * Define vmemmap for pfn_to_page & page_to_pfn calls. Needed if kernel
> - * is configured with CONFIG_SPARSEMEM_VMEMMAP enabled.
> - */
> -#define vmemmap		((struct page *)VMEMMAP_START)
> -
>  static inline int pmd_present(pmd_t pmd)
>  {
>  	return (pmd_val(pmd) & (_PAGE_PRESENT | _PAGE_PROT_NONE));
> @@ -452,18 +468,6 @@ static inline int ptep_clear_flush_young(struct vm_area_struct *vma,
>  #define __pte_to_swp_entry(pte)	((swp_entry_t) { pte_val(pte) })
>  #define __swp_entry_to_pte(x)	((pte_t) { (x).val })
>
> -#define PCI_IO_SIZE      SZ_16M
> -#define PCI_IO_END       VMEMMAP_START
> -#define PCI_IO_START     (PCI_IO_END - PCI_IO_SIZE)
> -
> -#define FIXADDR_TOP      PCI_IO_START
> -#ifdef CONFIG_64BIT
> -#define FIXADDR_SIZE     PMD_SIZE
> -#else
> -#define FIXADDR_SIZE     PGDIR_SIZE
> -#endif
> -#define FIXADDR_START    (FIXADDR_TOP - FIXADDR_SIZE)
> -
>  /*
>   * Task size is 0x4000000000 for RV64 or 0x9fc00000 for RV32.
>   * Note that PGDIR_SIZE must evenly divide TASK_SIZE.

While this isn't technically a fix, I'm inclined to target it for the RCs just
to avoid conflicts.  I've put it on for-next now so the builders have some time
to chew on things, as I don't want to put in a non-fix too quickly.

Thanks!

