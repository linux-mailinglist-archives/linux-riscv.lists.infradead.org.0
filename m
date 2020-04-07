Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3684A1A0623
	for <lists+linux-riscv@lfdr.de>; Tue,  7 Apr 2020 07:11:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:
	Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZoZfmJT37kGR5rQt8lLJFWs/S1Gai4wOM4m/qOLx60Y=; b=jGacLJWerZDSFvj3Qed7PA4WUA
	+Nt9h/j3GU6c38Gu2xoxEEbUisDWk1AxBeLLaXlIyKkOx7XQ8BSENZQBwlpr4c4hAUmHQasJsyaFn
	EJVXvTM5iuAJPOAvJnLVeBS4qxm58eUi+a6KOnHxRDQQC8JZceaGeBzfkBHQS1vFooVH1EhMRv6We
	aVXNCCB60+OYRsgjogbAEh1vyv7TrlqiN0DoDoSs7o94p90Pp6Mcx01dOUUSE8bnyyAWfoFjAwPAD
	xMPXK+NXeYXLkNjlobURgqc0iZpXvavH3qpwKu4S6nECuW4VUENT7zl/iVRoXLdn1AJpEKBXepb84
	l8iKWP6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLgWg-0000Vs-2h; Tue, 07 Apr 2020 05:11:54 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLgWc-0000VF-S6
 for linux-riscv@lists.infradead.org; Tue, 07 Apr 2020 05:11:52 +0000
X-Originating-IP: 2.7.45.25
Received: from [192.168.1.101] (lfbn-lyo-1-453-25.w2-7.abo.wanadoo.fr
 [2.7.45.25]) (Authenticated sender: alex@ghiti.fr)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id 753ADC0003;
 Tue,  7 Apr 2020 05:11:48 +0000 (UTC)
Subject: Re: [PATCH RFC 6/8] riscv/kaslr: clear the original kernel image
To: Zong Li <zong.li@sifive.com>, palmer@dabbelt.com,
 paul.walmsley@sifive.com, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <cover.1584352425.git.zong.li@sifive.com>
 <8373a9d18958b99b72ed9499786dffe45adf9617.1584352425.git.zong.li@sifive.com>
From: Alex Ghiti <alex@ghiti.fr>
Message-ID: <772ee8e0-f5ff-cf40-4e84-3f703953cd08@ghiti.fr>
Date: Tue, 7 Apr 2020 01:11:48 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <8373a9d18958b99b72ed9499786dffe45adf9617.1584352425.git.zong.li@sifive.com>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_221151_043518_1E079875 
X-CRM114-Status: GOOD (  18.68  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 3/24/20 3:30 AM, Zong Li wrote:
> After completing final page table, we can clear original kernel image
> and remove executable permission.
> 
> Signed-off-by: Zong Li <zong.li@sifive.com>
> ---
>   arch/riscv/include/asm/kaslr.h | 12 ++++++++++++
>   arch/riscv/kernel/kaslr.c      | 12 ++++++++++++
>   arch/riscv/mm/init.c           |  6 ++++++
>   3 files changed, 30 insertions(+)
>   create mode 100644 arch/riscv/include/asm/kaslr.h
> 
> diff --git a/arch/riscv/include/asm/kaslr.h b/arch/riscv/include/asm/kaslr.h
> new file mode 100644
> index 000000000000..b165fe71dd4a
> --- /dev/null
> +++ b/arch/riscv/include/asm/kaslr.h
> @@ -0,0 +1,12 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
> +/*
> + * Copyright (C) 2020 SiFive
> + * Copyright (C) 2020 Zong Li <zong.li@sifive.com>
> + */
> +
> +#ifndef _ASM_RISCV_KASLR_H
> +#define _ASM_RISCV_KASLR_H
> +
> +void __init kaslr_late_init(void);
> +
> +#endif /* _ASM_RISCV_KASLR_H */
> diff --git a/arch/riscv/kernel/kaslr.c b/arch/riscv/kernel/kaslr.c
> index 59001d6fdfc3..0bd30831c455 100644
> --- a/arch/riscv/kernel/kaslr.c
> +++ b/arch/riscv/kernel/kaslr.c
> @@ -356,6 +356,18 @@ static __init uintptr_t get_random_offset(u64 seed, uintptr_t kernel_size)
>   	return get_legal_offset(random, kernel_size_align);
>   }
>   
> +void __init kaslr_late_init(void)
> +{
> +	uintptr_t kernel_size;
> +
> +	/* Clear original kernel image. */
> +	if (kaslr_offset) {
> +		kernel_size = (uintptr_t) _end - (uintptr_t) _start;

kernel_size = (uintptr_t) _end - (uintptr_t) _start + 1;

> +		memset((void *)PAGE_OFFSET, 0, kernel_size);

I have been thinking again about our discussion regarding PAGE_OFFSET: 
PAGE_OFFSET actually points to the address where the kernel was loaded, 
not the beginning of memory, that's a bit weird.

Just saying that here, because it took me a few seconds to remember that 
and understand what you were doing here.

> +		set_memory_nx(PAGE_OFFSET, kaslr_offset >> PAGE_SHIFT);

Again, I certainly missed something but when do you use old kernel 
mappings ?

> +	}
> +}
> +
>   uintptr_t __init kaslr_early_init(void)
>   {
>   	u64 seed;
> diff --git a/arch/riscv/mm/init.c b/arch/riscv/mm/init.c
> index 34c6ecf2c599..08e2ce170533 100644
> --- a/arch/riscv/mm/init.c
> +++ b/arch/riscv/mm/init.c
> @@ -15,6 +15,7 @@
>   #include <linux/set_memory.h>
>   #ifdef CONFIG_RELOCATABLE
>   #include <linux/elf.h>
> +#include <asm/kaslr.h>
>   #endif
>   
>   #include <asm/fixmap.h>
> @@ -649,6 +650,11 @@ static void __init setup_vm_final(void)
>   	/* Move to swapper page table */
>   	csr_write(CSR_SATP, PFN_DOWN(__pa_symbol(swapper_pg_dir)) | SATP_MODE);
>   	local_flush_tlb_all();
> +
> +#ifdef CONFIG_RANDOMIZE_BASE
> +	/* Clear orignial kernel image and set the right permission. */
> +	kaslr_late_init();
> +#endif
>   }
>   
>   void free_initmem(void)
> 

Alex

