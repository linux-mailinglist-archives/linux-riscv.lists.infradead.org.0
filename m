Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D63411A0613
	for <lists+linux-riscv@lfdr.de>; Tue,  7 Apr 2020 07:09:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:References:To:Subject:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YHE4c6IKOwYRhVt2fIp0aoBpyxtE9WTcARydhGO8veA=; b=U6wBVvMuJj8UDOeP8LPj+JdkEJ
	Jkxaopujz/cOStAs1+XEroqCFPdcymsQluLuI30r4PJlmBW0YRQLSLLYGtzCDRkZz0vFz6Xe2XV3w
	pxi9IV8jc2ZXLHPBw3ZLCzlOxbfpg1F/28D6egWKmLbt3saxVhtNhwAxkCXSlXg5XfZ0uT1ebv+ux
	o+fq6H8xncmoThrSiqASrtHzG/TKkkBBkZJ18OP7RLKMr2ZKoAYJZo0Q5ifzuUxqYMcGY43jjIrSf
	gy2NGFHo7mdd3m2jGWH0yTLCN1ZKp312a+KL7YKwChPlQKyVOOvqunXgpI1uKWNWVkWzQEUfdLgrZ
	n9YPjM8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLgU3-0006Bx-51; Tue, 07 Apr 2020 05:09:11 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLgTz-0006B2-CC
 for linux-riscv@lists.infradead.org; Tue, 07 Apr 2020 05:09:09 +0000
Received: from [192.168.1.101] (lfbn-lyo-1-453-25.w2-7.abo.wanadoo.fr
 [2.7.45.25]) (Authenticated sender: alex@ghiti.fr)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id 657E0240005;
 Tue,  7 Apr 2020 05:09:03 +0000 (UTC)
From: Alex Ghiti <alex@ghiti.fr>
Subject: Re: [PATCH RFC 2/8] riscv/kaslr: introduce functions to clear page
 table
To: Zong Li <zong.li@sifive.com>, palmer@dabbelt.com,
 paul.walmsley@sifive.com, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <cover.1584352425.git.zong.li@sifive.com>
 <286a940ef8fbc4480c63679271eea440d167a258.1584352425.git.zong.li@sifive.com>
Message-ID: <507f88a2-63c0-f615-2684-a200dd44c34a@ghiti.fr>
Date: Tue, 7 Apr 2020 01:09:02 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <286a940ef8fbc4480c63679271eea440d167a258.1584352425.git.zong.li@sifive.com>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_220907_689589_9A84EF8B 
X-CRM114-Status: GOOD (  18.05  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
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
> In KASLR, we need to re-create page table after getting a random
> destination. Introduce clear function to clear old content. Also, the
> page table entries allow writing value when it's empty, so we have to
> clear the early page table.
> 
> This patch is a preparation to support KASLR.
> 
> Signed-off-by: Zong Li <zong.li@sifive.com>
> ---
>   arch/riscv/mm/init.c | 54 ++++++++++++++++++++++++++++++++++++++++++++
>   1 file changed, 54 insertions(+)
> 
> diff --git a/arch/riscv/mm/init.c b/arch/riscv/mm/init.c
> index ace5d74fd939..51e263c04fa2 100644
> --- a/arch/riscv/mm/init.c
> +++ b/arch/riscv/mm/init.c
> @@ -315,6 +315,7 @@ static void __init create_pmd_mapping(pmd_t *pmdp,
>   #define get_pgd_next_virt(__pa)	get_pmd_virt(__pa)
>   #define create_pgd_next_mapping(__nextp, __va, __pa, __sz, __prot)	\
>   	create_pmd_mapping(__nextp, __va, __pa, __sz, __prot)
> +#define clear_pgd_next_mapping(__nextp)	clear_pmd(__nextp)
>   #define fixmap_pgd_next		fixmap_pmd
>   #else
>   #define pgd_next_t		pte_t
> @@ -322,6 +323,7 @@ static void __init create_pmd_mapping(pmd_t *pmdp,
>   #define get_pgd_next_virt(__pa)	get_pte_virt(__pa)
>   #define create_pgd_next_mapping(__nextp, __va, __pa, __sz, __prot)	\
>   	create_pte_mapping(__nextp, __va, __pa, __sz, __prot)
> +#define clear_pgd_next_mapping(__nextp)	clear_pte(__nextp)
>   #define fixmap_pgd_next		fixmap_pte
>   #endif
>   
> @@ -361,6 +363,58 @@ static uintptr_t __init best_map_size(phys_addr_t base, phys_addr_t size)
>   	return PMD_SIZE;
>   }
>   
> +#ifdef CONFIG_RANDOMIZE_BASE
> +static void __init clear_pte(pte_t *ptep)
> +{
> +	unsigned int i;
> +
> +	for (i = 0; i < PTRS_PER_PTE; i++)
> +		if (!pte_none(ptep[i]))
> +			ptep[i] = __pte(0);
> +}
> +
> +static void __init clear_pmd(pmd_t *pmdp)
> +{
> +	unsigned int i;
> +	pte_t *ptep;
> +	phys_addr_t pte_phys;
> +	uintptr_t kaslr_offset = get_kaslr_offset();
> +
> +	for (i = 0; i < PTRS_PER_PMD; i++)
> +		if (!pmd_none(pmdp[i])) {
> +			if (pmd_leaf(pmdp[i])) {
> +				pmd_clear(&pmdp[i]);
> +			} else {
> +				pte_phys = PFN_PHYS(_pmd_pfn(pmdp[i]));
> +				ptep = get_pte_virt(pte_phys + kaslr_offset);
> +				clear_pte(ptep);
> +				pmd_clear(&pmdp[i]);
> +			}
> +		}
> +}
> +
> +static void __init clear_pgd(pgd_t *pgdp)
> +{
> +	unsigned int i;
> +	pgd_next_t *nextp;
> +	phys_addr_t next_phys;
> +	uintptr_t kaslr_offset = get_kaslr_offset();
> +
> +	for (i = 0; i < PTRS_PER_PGD; i++)
> +		if (pgd_val(pgdp[i]) != 0) {
> +			if (pgd_leaf(pgd_val(pgdp[i]))) {
> +				set_pgd(&pgdp[i], __pgd(0));
> +			} else {
> +				next_phys = PFN_PHYS(_pgd_pfn(pgdp[i]));
> +				nextp = get_pgd_next_virt(next_phys +
> +							  kaslr_offset);
> +				clear_pgd_next_mapping(nextp);
> +				set_pgd(&pgdp[i], __pgd(0));
> +			}
> +		}
> +}
> +#endif
> +
>   /*
>    * setup_vm() is called from head.S with MMU-off.
>    *
> 

If this is only for clearing early page tables, a memset is way easier 
as there is only one page per level to clear.

Alex

