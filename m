Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BD3ADF44C
	for <lists+linux-riscv@lfdr.de>; Mon, 21 Oct 2019 19:31:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BCJJXXT6S/TtAm88bGZ5+UxOe35TeEUR2e4qwKB1EOw=; b=WRUcQlu/w/hfcz
	wpvyVAC0WbxWg1L9AIqj9NqMFndGU9sl0mDBTaxr5zB7EV8DQc2xM8d3oWE26fBWXrqi666GEnnR9
	+zoWx9ji7pyVM/xjDwPrLRmLYCoLtQnubeyzbGZk42S21WPGS4UL4GvRVS1bd4EmszG3JLgJtMw6e
	kuXOSB60uYKrkeXInIMD1upI6GKb9niJ/FHOnfNQNsU1rqcrrDJDuV4yI5TjILQ/jNAXwrhiJ9N8l
	jAmiI6cku3iEDwU9SjzgwFINWqo+gwsAWS7o3XOrV+/HaB0rD/HkA2H2BVRROngeN2v4w/lCC+HZt
	XGpI8kg0MykULKv3/pjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMbWZ-00015g-M5; Mon, 21 Oct 2019 17:31:19 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMbWW-00015N-2b
 for linux-riscv@lists.infradead.org; Mon, 21 Oct 2019 17:31:18 +0000
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 6B6A685543
 for <linux-riscv@lists.infradead.org>; Mon, 21 Oct 2019 17:31:15 +0000 (UTC)
Received: by mail-wm1-f69.google.com with SMTP id m16so4892484wmg.8
 for <linux-riscv@lists.infradead.org>; Mon, 21 Oct 2019 10:31:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=4D2VKt+kllxMWKoWP+vVhwNUvgm4lqRx81IFDkro7Hk=;
 b=P13R9s0rwi0KtWeIWpClYLcUjRYrLkyT+PJ/ZAFUQObpFO2C59m1nOGJjOwLrMY3OJ
 0pOYcLzTsajnEi0X8//CLke319LxrwZKmmTJSmIR7bLFp03BxVL4MfgFRMsZbd4nbUIr
 VocaaIO7EQTZpZ7bKA8hpmGHM838nQh0cUfesJfQtKWAg1+1f1K4EtQCBTCIeZ7JlsWP
 lYzJBBiRNwmVIh2M6WQvfuOEIHhdlzzNl2tpbDq9+2LgOs1Z/whSLURY2FN8c6uxp4bx
 pwPPp44wA4uWoX9TZSg5a8FzxMWcDL7Whdnujote05v271C+sgqkxHY3F9OoFsGvQCTC
 wzEg==
X-Gm-Message-State: APjAAAXymu4azLLsTKpPSVo9n1Ayqz4g5RUztSOXbNmWUqwrg8MVhffF
 BQutR2HXYY4pfJDvfQoFb0eE8vUjvBi5Dmbxyh9e4+9KYGnHf0Aht3WYE2d3F4XgG6jMyruILwN
 tJBw8I+FSE7+xXQjuaLTTah5tuARh
X-Received: by 2002:a05:600c:3cb:: with SMTP id
 z11mr20710700wmd.138.1571679073720; 
 Mon, 21 Oct 2019 10:31:13 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzHYoGDTajCGgLXV9Sq6VstfoyOKu97nIqy6JdLpf7HDaXYVzYlQ+vjp/SsUixDYO53H5yggg==
X-Received: by 2002:a05:600c:3cb:: with SMTP id
 z11mr20710654wmd.138.1571679073202; 
 Mon, 21 Oct 2019 10:31:13 -0700 (PDT)
Received: from ?IPv6:2001:b07:6468:f312:847b:6afc:17c:89dd?
 ([2001:b07:6468:f312:847b:6afc:17c:89dd])
 by smtp.gmail.com with ESMTPSA id q124sm28485875wma.5.2019.10.21.10.31.10
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 21 Oct 2019 10:31:12 -0700 (PDT)
Subject: Re: [PATCH v9 18/22] RISC-V: KVM: Simplify stage2 page table
 programming
To: Anup Patel <Anup.Patel@wdc.com>, Palmer Dabbelt <palmer@sifive.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, Radim K <rkrcmar@redhat.com>
References: <20191016160649.24622-1-anup.patel@wdc.com>
 <20191016160649.24622-19-anup.patel@wdc.com>
From: Paolo Bonzini <pbonzini@redhat.com>
Openpgp: preference=signencrypt
Message-ID: <b2056560-e0b8-821b-f38a-5f13704e205f@redhat.com>
Date: Mon, 21 Oct 2019 19:31:10 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20191016160649.24622-19-anup.patel@wdc.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_103116_157067_11A3E8E4 
X-CRM114-Status: GOOD (  26.80  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Damien Le Moal <Damien.LeMoal@wdc.com>,
 "kvm@vger.kernel.org" <kvm@vger.kernel.org>, Anup Patel <anup@brainfault.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Christoph Hellwig <hch@infradead.org>, Atish Patra <Atish.Patra@wdc.com>,
 Alexander Graf <graf@amazon.com>, Alistair Francis <Alistair.Francis@wdc.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 16/10/19 18:11, Anup Patel wrote:
> Instead of dealing with PGD, PMD, and PTE differently in stage2
> page table progamming, we can simply use iterative and recursive
> helper functions to program stage2 page tables of any level.
> 
> This patch re-implements stage2_get_leaf_entry(), stage2_set_pte(),
> stage2_map_page(), stage2_op_pte(), stage2_unmap_range(), and
> stage2_wp_range() helper functions as mentioned above.
> 
> Signed-off-by: Anup Patel <anup.patel@wdc.com>

I honestly haven't reviewed this in depth, but I definitely agree with
the idea.  Please squash it with the original implementation though.

Paolo

> ---
>  arch/riscv/kvm/mmu.c | 469 +++++++++++++++----------------------------
>  1 file changed, 164 insertions(+), 305 deletions(-)
> 
> diff --git a/arch/riscv/kvm/mmu.c b/arch/riscv/kvm/mmu.c
> index 5aa5ea5ef8f6..fe86cae4cf42 100644
> --- a/arch/riscv/kvm/mmu.c
> +++ b/arch/riscv/kvm/mmu.c
> @@ -21,15 +21,56 @@
>  #ifdef CONFIG_64BIT
>  #define stage2_have_pmd		true
>  #define stage2_gpa_size		((phys_addr_t)(1ULL << 39))
> -#define stage2_cache_min_pages	2
> +#define stage2_pgd_levels	3
> +#define stage2_index_bits	9
>  #else
> -#define pmd_index(x)		0
> -#define pfn_pmd(x, y)		({ pmd_t __x = { 0 }; __x; })
>  #define stage2_have_pmd		false
>  #define stage2_gpa_size		((phys_addr_t)(1ULL << 32))
> -#define stage2_cache_min_pages	1
> +#define stage2_pgd_levels	2
> +#define stage2_index_bits	10
>  #endif
>  
> +#define stage2_pte_index(addr, level) \
> +(((addr) >> (PAGE_SHIFT + stage2_index_bits * (level))) & (PTRS_PER_PTE - 1))
> +
> +static inline unsigned long stage2_pte_page_vaddr(pte_t pte)
> +{
> +	return (unsigned long)pfn_to_virt(pte_val(pte) >> _PAGE_PFN_SHIFT);
> +}
> +
> +static int stage2_page_size_to_level(unsigned long page_size, u32 *out_level)
> +{
> +	if (page_size == PAGE_SIZE)
> +		*out_level = 0;
> +	else if (page_size == PMD_SIZE)
> +		*out_level = 1;
> +	else if (page_size == PGDIR_SIZE)
> +		*out_level = (stage2_have_pmd) ? 2 : 1;
> +	else
> +		return -EINVAL;
> +
> +	return 0;
> +}
> +
> +static int stage2_level_to_page_size(u32 level, unsigned long *out_pgsize)
> +{
> +	switch (level) {
> +	case 0:
> +		*out_pgsize = PAGE_SIZE;
> +		break;
> +	case 1:
> +		*out_pgsize = (stage2_have_pmd) ? PMD_SIZE : PGDIR_SIZE;
> +		break;
> +	case 2:
> +		*out_pgsize = PGDIR_SIZE;
> +		break;
> +	default:
> +		return -EINVAL;
> +	}
> +
> +	return 0;
> +}
> +
>  static int stage2_cache_topup(struct kvm_mmu_page_cache *pcache,
>  			      int min, int max)
>  {
> @@ -67,61 +108,30 @@ static void *stage2_cache_alloc(struct kvm_mmu_page_cache *pcache)
>  	return p;
>  }
>  
> -static int stage2_pgdp_test_and_clear_young(pgd_t *pgd)
> -{
> -	return ptep_test_and_clear_young(NULL, 0, (pte_t *)pgd);
> -}
> -
> -static int stage2_pmdp_test_and_clear_young(pmd_t *pmd)
> -{
> -	return ptep_test_and_clear_young(NULL, 0, (pte_t *)pmd);
> -}
> -
> -static int stage2_ptep_test_and_clear_young(pte_t *pte)
> -{
> -	return ptep_test_and_clear_young(NULL, 0, pte);
> -}
> -
>  static bool stage2_get_leaf_entry(struct kvm *kvm, gpa_t addr,
> -				  pgd_t **pgdpp, pmd_t **pmdpp, pte_t **ptepp)
> +				  pte_t **ptepp, u32 *ptep_level)
>  {
> -	pgd_t *pgdp;
> -	pmd_t *pmdp;
>  	pte_t *ptep;
> -
> -	*pgdpp = NULL;
> -	*pmdpp = NULL;
> -	*ptepp = NULL;
> -
> -	pgdp = &kvm->arch.pgd[pgd_index(addr)];
> -	if (!pgd_val(*pgdp))
> -		return false;
> -	if (pgd_val(*pgdp) & _PAGE_LEAF) {
> -		*pgdpp = pgdp;
> -		return true;
> -	}
> -
> -	if (stage2_have_pmd) {
> -		pmdp = (void *)pgd_page_vaddr(*pgdp);
> -		pmdp = &pmdp[pmd_index(addr)];
> -		if (!pmd_present(*pmdp))
> -			return false;
> -		if (pmd_val(*pmdp) & _PAGE_LEAF) {
> -			*pmdpp = pmdp;
> +	u32 current_level = stage2_pgd_levels - 1;
> +
> +	*ptep_level = current_level;
> +	ptep = (pte_t *)kvm->arch.pgd;
> +	ptep = &ptep[stage2_pte_index(addr, current_level)];
> +	while (ptep && pte_val(*ptep)) {
> +		if (pte_val(*ptep) & _PAGE_LEAF) {
> +			*ptep_level = current_level;
> +			*ptepp = ptep;
>  			return true;
>  		}
>  
> -		ptep = (void *)pmd_page_vaddr(*pmdp);
> -	} else {
> -		ptep = (void *)pgd_page_vaddr(*pgdp);
> -	}
> -
> -	ptep = &ptep[pte_index(addr)];
> -	if (!pte_present(*ptep))
> -		return false;
> -	if (pte_val(*ptep) & _PAGE_LEAF) {
> -		*ptepp = ptep;
> -		return true;
> +		if (current_level) {
> +			current_level--;
> +			*ptep_level = current_level;
> +			ptep = (pte_t *)stage2_pte_page_vaddr(*ptep);
> +			ptep = &ptep[stage2_pte_index(addr, current_level)];
> +		} else {
> +			ptep = NULL;
> +		}
>  	}
>  
>  	return false;
> @@ -160,96 +170,37 @@ static void stage2_remote_tlb_flush(struct kvm *kvm, gpa_t addr)
>  	preempt_enable();
>  }
>  
> -static int stage2_set_pgd(struct kvm *kvm, gpa_t addr, const pgd_t *new_pgd)
> -{
> -	pgd_t *pgdp = &kvm->arch.pgd[pgd_index(addr)];
> -
> -	*pgdp = *new_pgd;
> -	if (pgd_val(*pgdp) & _PAGE_LEAF)
> -		stage2_remote_tlb_flush(kvm, addr);
> -
> -	return 0;
> -}
> -
> -static int stage2_set_pmd(struct kvm *kvm, struct kvm_mmu_page_cache *pcache,
> -			  gpa_t addr, const pmd_t *new_pmd)
> +static int stage2_set_pte(struct kvm *kvm, u32 level,
> +			   struct kvm_mmu_page_cache *pcache,
> +			   gpa_t addr, const pte_t *new_pte)
>  {
> -	int rc;
> -	pmd_t *pmdp;
> -	pgd_t new_pgd;
> -	pgd_t *pgdp = &kvm->arch.pgd[pgd_index(addr)];
> -
> -	if (!pgd_val(*pgdp)) {
> -		pmdp = stage2_cache_alloc(pcache);
> -		if (!pmdp)
> -			return -ENOMEM;
> -		new_pgd = pfn_pgd(PFN_DOWN(__pa(pmdp)), __pgprot(_PAGE_TABLE));
> -		rc = stage2_set_pgd(kvm, addr, &new_pgd);
> -		if (rc)
> -			return rc;
> -	}
> -
> -	if (pgd_val(*pgdp) & _PAGE_LEAF)
> -		return -EEXIST;
> +	u32 current_level = stage2_pgd_levels - 1;
> +	pte_t *next_ptep = (pte_t *)kvm->arch.pgd;
> +	pte_t *ptep = &next_ptep[stage2_pte_index(addr, current_level)];
>  
> -	pmdp = (void *)pgd_page_vaddr(*pgdp);
> -	pmdp = &pmdp[pmd_index(addr)];
> -
> -	*pmdp = *new_pmd;
> -	if (pmd_val(*pmdp) & _PAGE_LEAF)
> -		stage2_remote_tlb_flush(kvm, addr);
> -
> -	return 0;
> -}
> -
> -static int stage2_set_pte(struct kvm *kvm,
> -			  struct kvm_mmu_page_cache *pcache,
> -			  gpa_t addr, const pte_t *new_pte)
> -{
> -	int rc;
> -	pte_t *ptep;
> -	pmd_t new_pmd;
> -	pmd_t *pmdp;
> -	pgd_t new_pgd;
> -	pgd_t *pgdp = &kvm->arch.pgd[pgd_index(addr)];
> -
> -	if (!pgd_val(*pgdp)) {
> -		pmdp = stage2_cache_alloc(pcache);
> -		if (!pmdp)
> -			return -ENOMEM;
> -		new_pgd = pfn_pgd(PFN_DOWN(__pa(pmdp)), __pgprot(_PAGE_TABLE));
> -		rc = stage2_set_pgd(kvm, addr, &new_pgd);
> -		if (rc)
> -			return rc;
> -	}
> +	if (current_level < level)
> +		return -EINVAL;
>  
> -	if (pgd_val(*pgdp) & _PAGE_LEAF)
> -		return -EEXIST;
> +	while (current_level != level) {
> +		if (pte_val(*ptep) & _PAGE_LEAF)
> +			return -EEXIST;
>  
> -	if (stage2_have_pmd) {
> -		pmdp = (void *)pgd_page_vaddr(*pgdp);
> -		pmdp = &pmdp[pmd_index(addr)];
> -		if (!pmd_present(*pmdp)) {
> -			ptep = stage2_cache_alloc(pcache);
> -			if (!ptep)
> +		if (!pte_val(*ptep)) {
> +			next_ptep = stage2_cache_alloc(pcache);
> +			if (!next_ptep)
>  				return -ENOMEM;
> -			new_pmd = pfn_pmd(PFN_DOWN(__pa(ptep)),
> -					  __pgprot(_PAGE_TABLE));
> -			rc = stage2_set_pmd(kvm, pcache, addr, &new_pmd);
> -			if (rc)
> -				return rc;
> +			*ptep = pfn_pte(PFN_DOWN(__pa(next_ptep)),
> +					__pgprot(_PAGE_TABLE));
> +		} else {
> +			if (pte_val(*ptep) & _PAGE_LEAF)
> +				return -EEXIST;
> +			next_ptep = (pte_t *)stage2_pte_page_vaddr(*ptep);
>  		}
>  
> -		if (pmd_val(*pmdp) & _PAGE_LEAF)
> -			return -EEXIST;
> -
> -		ptep = (void *)pmd_page_vaddr(*pmdp);
> -	} else {
> -		ptep = (void *)pgd_page_vaddr(*pgdp);
> +		current_level--;
> +		ptep = &next_ptep[stage2_pte_index(addr, current_level)];
>  	}
>  
> -	ptep = &ptep[pte_index(addr)];
> -
>  	*ptep = *new_pte;
>  	if (pte_val(*ptep) & _PAGE_LEAF)
>  		stage2_remote_tlb_flush(kvm, addr);
> @@ -262,26 +213,16 @@ static int stage2_map_page(struct kvm *kvm,
>  			   gpa_t gpa, phys_addr_t hpa,
>  			   unsigned long page_size, pgprot_t prot)
>  {
> +	int ret;
> +	u32 level = 0;
>  	pte_t new_pte;
> -	pmd_t new_pmd;
> -	pgd_t new_pgd;
> -
> -	if (page_size == PAGE_SIZE) {
> -		new_pte = pfn_pte(PFN_DOWN(hpa), prot);
> -		return stage2_set_pte(kvm, pcache, gpa, &new_pte);
> -	}
>  
> -	if (stage2_have_pmd && page_size == PMD_SIZE) {
> -		new_pmd = pfn_pmd(PFN_DOWN(hpa), prot);
> -		return stage2_set_pmd(kvm, pcache, gpa, &new_pmd);
> -	}
> -
> -	if (page_size == PGDIR_SIZE) {
> -		new_pgd = pfn_pgd(PFN_DOWN(hpa), prot);
> -		return stage2_set_pgd(kvm, gpa, &new_pgd);
> -	}
> +	ret = stage2_page_size_to_level(page_size, &level);
> +	if (ret)
> +		return ret;
>  
> -	return -EINVAL;
> +	new_pte = pfn_pte(PFN_DOWN(hpa), prot);
> +	return stage2_set_pte(kvm, level, pcache, gpa, &new_pte);
>  }
>  
>  enum stage2_op {
> @@ -290,171 +231,100 @@ enum stage2_op {
>  	STAGE2_OP_WP,		/* Write-protect */
>  };
>  
> -static void stage2_op_pte(struct kvm *kvm, gpa_t addr, pte_t *ptep,
> -			  enum stage2_op op)
> -{
> -	BUG_ON(addr & (PAGE_SIZE - 1));
> -
> -	if (!pte_present(*ptep))
> -		return;
> -
> -	if (op == STAGE2_OP_CLEAR)
> -		set_pte(ptep, __pte(0));
> -	else if (op == STAGE2_OP_WP)
> -		set_pte(ptep, __pte(pte_val(*ptep) & ~_PAGE_WRITE));
> -	stage2_remote_tlb_flush(kvm, addr);
> -}
> -
> -static void stage2_op_pmd(struct kvm *kvm, gpa_t addr, pmd_t *pmdp,
> -			  enum stage2_op op)
> +static void stage2_op_pte(struct kvm *kvm, gpa_t addr,
> +			  pte_t *ptep, u32 ptep_level, enum stage2_op op)
>  {
> -	int i;
> -	pte_t *ptep;
> +	int i, ret;
> +	pte_t *next_ptep;
> +	u32 next_ptep_level;
> +	unsigned long next_page_size, page_size;
>  
> -	BUG_ON(addr & (PMD_SIZE - 1));
> -
> -	if (!pmd_present(*pmdp))
> +	ret = stage2_level_to_page_size(ptep_level, &page_size);
> +	if (ret)
>  		return;
>  
> -	if (pmd_val(*pmdp) & _PAGE_LEAF)
> -		ptep = NULL;
> -	else
> -		ptep = (pte_t *)pmd_page_vaddr(*pmdp);
> -
> -	if (op == STAGE2_OP_CLEAR)
> -		set_pmd(pmdp, __pmd(0));
> -
> -	if (ptep) {
> -		for (i = 0; i < PTRS_PER_PTE; i++)
> -			stage2_op_pte(kvm, addr + i * PAGE_SIZE, &ptep[i], op);
> -		if (op == STAGE2_OP_CLEAR)
> -			put_page(virt_to_page(ptep));
> -	} else {
> -		if (op == STAGE2_OP_WP)
> -			set_pmd(pmdp, __pmd(pmd_val(*pmdp) & ~_PAGE_WRITE));
> -		stage2_remote_tlb_flush(kvm, addr);
> -	}
> -}
> -
> -static void stage2_op_pgd(struct kvm *kvm, gpa_t addr, pgd_t *pgdp,
> -			  enum stage2_op op)
> -{
> -	int i;
> -	pte_t *ptep;
> -	pmd_t *pmdp;
> +	BUG_ON(addr & (page_size - 1));
>  
> -	BUG_ON(addr & (PGDIR_SIZE - 1));
> -
> -	if (!pgd_val(*pgdp))
> +	if (!pte_val(*ptep))
>  		return;
>  
> -	ptep = NULL;
> -	pmdp = NULL;
> -	if (!(pgd_val(*pgdp) & _PAGE_LEAF)) {
> -		if (stage2_have_pmd)
> -			pmdp = (pmd_t *)pgd_page_vaddr(*pgdp);
> -		else
> -			ptep = (pte_t *)pgd_page_vaddr(*pgdp);
> -	}
> -
> -	if (op == STAGE2_OP_CLEAR)
> -		set_pgd(pgdp, __pgd(0));
> +	if (ptep_level && !(pte_val(*ptep) & _PAGE_LEAF)) {
> +		next_ptep = (pte_t *)stage2_pte_page_vaddr(*ptep);
> +		next_ptep_level = ptep_level - 1;
> +		ret = stage2_level_to_page_size(next_ptep_level,
> +						&next_page_size);
> +		if (ret)
> +			return;
>  
> -	if (pmdp) {
> -		for (i = 0; i < PTRS_PER_PMD; i++)
> -			stage2_op_pmd(kvm, addr + i * PMD_SIZE, &pmdp[i], op);
>  		if (op == STAGE2_OP_CLEAR)
> -			put_page(virt_to_page(pmdp));
> -	} else if (ptep) {
> +			set_pte(ptep, __pte(0));
>  		for (i = 0; i < PTRS_PER_PTE; i++)
> -			stage2_op_pte(kvm, addr + i * PAGE_SIZE, &ptep[i], op);
> +			stage2_op_pte(kvm, addr + i * next_page_size,
> +					&next_ptep[i], next_ptep_level, op);
>  		if (op == STAGE2_OP_CLEAR)
> -			put_page(virt_to_page(ptep));
> +			put_page(virt_to_page(next_ptep));
>  	} else {
> -		if (op == STAGE2_OP_WP)
> -			set_pgd(pgdp, __pgd(pgd_val(*pgdp) & ~_PAGE_WRITE));
> +		if (op == STAGE2_OP_CLEAR)
> +			set_pte(ptep, __pte(0));
> +		else if (op == STAGE2_OP_WP)
> +			set_pte(ptep, __pte(pte_val(*ptep) & ~_PAGE_WRITE));
>  		stage2_remote_tlb_flush(kvm, addr);
>  	}
>  }
>  
>  static void stage2_unmap_range(struct kvm *kvm, gpa_t start, gpa_t size)
>  {
> -	pmd_t *pmdp;
> +	int ret;
>  	pte_t *ptep;
> -	pgd_t *pgdp;
> +	u32 ptep_level;
> +	bool found_leaf;
> +	unsigned long page_size;
>  	gpa_t addr = start, end = start + size;
>  
>  	while (addr < end) {
> -		pgdp = &kvm->arch.pgd[pgd_index(addr)];
> -		if (!pgd_val(*pgdp)) {
> -			addr += PGDIR_SIZE;
> -			continue;
> -		} else if (!(addr & (PGDIR_SIZE - 1)) &&
> -			  ((end - addr) >= PGDIR_SIZE)) {
> -			stage2_op_pgd(kvm, addr, pgdp, STAGE2_OP_CLEAR);
> -			addr += PGDIR_SIZE;
> -			continue;
> -		}
> +		found_leaf = stage2_get_leaf_entry(kvm, addr,
> +						   &ptep, &ptep_level);
> +		ret = stage2_level_to_page_size(ptep_level, &page_size);
> +		if (ret)
> +			break;
>  
> -		if (stage2_have_pmd) {
> -			pmdp = (pmd_t *)pgd_page_vaddr(*pgdp);
> -			if (!pmd_present(*pmdp)) {
> -				addr += PMD_SIZE;
> -				continue;
> -			} else if (!(addr & (PMD_SIZE - 1)) &&
> -				   ((end - addr) >= PMD_SIZE)) {
> -				stage2_op_pmd(kvm, addr, pmdp,
> -					      STAGE2_OP_CLEAR);
> -				addr += PMD_SIZE;
> -				continue;
> -			}
> -			ptep = (pte_t *)pmd_page_vaddr(*pmdp);
> -		} else {
> -			ptep = (pte_t *)pgd_page_vaddr(*pgdp);
> -		}
> +		if (!found_leaf)
> +			goto next;
> +
> +		if (!(addr & (page_size - 1)) && ((end - addr) >= page_size))
> +			stage2_op_pte(kvm, addr, ptep,
> +				      ptep_level, STAGE2_OP_CLEAR);
>  
> -		stage2_op_pte(kvm, addr, ptep, STAGE2_OP_CLEAR);
> -		addr += PAGE_SIZE;
> +next:
> +		addr += page_size;
>  	}
>  }
>  
>  static void stage2_wp_range(struct kvm *kvm, gpa_t start, gpa_t end)
>  {
> -	pmd_t *pmdp;
> +	int ret;
>  	pte_t *ptep;
> -	pgd_t *pgdp;
> +	u32 ptep_level;
> +	bool found_leaf;
>  	gpa_t addr = start;
> +	unsigned long page_size;
>  
>  	while (addr < end) {
> -		pgdp = &kvm->arch.pgd[pgd_index(addr)];
> -		if (!pgd_val(*pgdp)) {
> -			addr += PGDIR_SIZE;
> -			continue;
> -		} else if (!(addr & (PGDIR_SIZE - 1)) &&
> -			   ((end - addr) >= PGDIR_SIZE)) {
> -			stage2_op_pgd(kvm, addr, pgdp, STAGE2_OP_WP);
> -			addr += PGDIR_SIZE;
> -			continue;
> -		}
> +		found_leaf = stage2_get_leaf_entry(kvm, addr,
> +						   &ptep, &ptep_level);
> +		ret = stage2_level_to_page_size(ptep_level, &page_size);
> +		if (ret)
> +			break;
>  
> -		if (stage2_have_pmd) {
> -			pmdp = (pmd_t *)pgd_page_vaddr(*pgdp);
> -			if (!pmd_present(*pmdp)) {
> -				addr += PMD_SIZE;
> -				continue;
> -			} else if (!(addr & (PMD_SIZE - 1)) &&
> -				   ((end - addr) >= PMD_SIZE)) {
> -				stage2_op_pmd(kvm, addr, pmdp, STAGE2_OP_WP);
> -				addr += PMD_SIZE;
> -				continue;
> -			}
> -			ptep = (pte_t *)pmd_page_vaddr(*pmdp);
> -		} else {
> -			ptep = (pte_t *)pgd_page_vaddr(*pgdp);
> -		}
> +		if (!found_leaf)
> +			goto next;
> +
> +		if (!(addr & (page_size - 1)) && ((end - addr) >= page_size))
> +			stage2_op_pte(kvm, addr, ptep,
> +				      ptep_level, STAGE2_OP_WP);
>  
> -		stage2_op_pte(kvm, addr, ptep, STAGE2_OP_WP);
> -		addr += PAGE_SIZE;
> +next:
> +		addr += page_size;
>  	}
>  }
>  
> @@ -490,13 +360,13 @@ int stage2_ioremap(struct kvm *kvm, gpa_t gpa, phys_addr_t hpa,
>  			pte = pte_wrprotect(pte);
>  
>  		ret = stage2_cache_topup(&pcache,
> -					 stage2_cache_min_pages,
> +					 stage2_pgd_levels,
>  					 KVM_MMU_PAGE_CACHE_NR_OBJS);
>  		if (ret)
>  			goto out;
>  
>  		spin_lock(&kvm->mmu_lock);
> -		ret = stage2_set_pte(kvm, &pcache, addr, &pte);
> +		ret = stage2_set_pte(kvm, 0, &pcache, addr, &pte);
>  		spin_unlock(&kvm->mmu_lock);
>  		if (ret)
>  			goto out;
> @@ -698,7 +568,7 @@ static int kvm_set_spte_handler(struct kvm *kvm,
>  	pte_t *pte = (pte_t *)data;
>  
>  	WARN_ON(size != PAGE_SIZE);
> -	stage2_set_pte(kvm, NULL, gpa, pte);
> +	stage2_set_pte(kvm, 0, NULL, gpa, pte);
>  
>  	return 0;
>  }
> @@ -722,20 +592,15 @@ int kvm_set_spte_hva(struct kvm *kvm, unsigned long hva, pte_t pte)
>  static int kvm_age_hva_handler(struct kvm *kvm,
>  				gpa_t gpa, u64 size, void *data)
>  {
> -	pgd_t *pgd;
> -	pmd_t *pmd;
> -	pte_t *pte;
> +	pte_t *ptep;
> +	u32 ptep_level = 0;
>  
>  	WARN_ON(size != PAGE_SIZE && size != PMD_SIZE && size != PGDIR_SIZE);
> -	if (!stage2_get_leaf_entry(kvm, gpa, &pgd, &pmd, &pte))
> +
> +	if (!stage2_get_leaf_entry(kvm, gpa, &ptep, &ptep_level))
>  		return 0;
>  
> -	if (pgd)
> -		return stage2_pgdp_test_and_clear_young(pgd);
> -	else if (pmd)
> -		return stage2_pmdp_test_and_clear_young(pmd);
> -	else
> -		return stage2_ptep_test_and_clear_young(pte);
> +	return ptep_test_and_clear_young(NULL, 0, ptep);
>  }
>  
>  int kvm_age_hva(struct kvm *kvm, unsigned long start, unsigned long end)
> @@ -749,20 +614,14 @@ int kvm_age_hva(struct kvm *kvm, unsigned long start, unsigned long end)
>  static int kvm_test_age_hva_handler(struct kvm *kvm,
>  				    gpa_t gpa, u64 size, void *data)
>  {
> -	pgd_t *pgd;
> -	pmd_t *pmd;
> -	pte_t *pte;
> +	pte_t *ptep;
> +	u32 ptep_level = 0;
>  
>  	WARN_ON(size != PAGE_SIZE && size != PMD_SIZE);
> -	if (!stage2_get_leaf_entry(kvm, gpa, &pgd, &pmd, &pte))
> +	if (!stage2_get_leaf_entry(kvm, gpa, &ptep, &ptep_level))
>  		return 0;
>  
> -	if (pgd)
> -		return pte_young(*((pte_t *)pgd));
> -	else if (pmd)
> -		return pte_young(*((pte_t *)pmd));
> -	else
> -		return pte_young(*pte);
> +	return pte_young(*ptep);
>  }
>  
>  int kvm_test_age_hva(struct kvm *kvm, unsigned long hva)
> @@ -811,7 +670,7 @@ int kvm_riscv_stage2_map(struct kvm_vcpu *vcpu, gpa_t gpa, unsigned long hva,
>  	}
>  
>  	/* We need minimum second+third level pages */
> -	ret = stage2_cache_topup(pcache, stage2_cache_min_pages,
> +	ret = stage2_cache_topup(pcache, stage2_pgd_levels,
>  				 KVM_MMU_PAGE_CACHE_NR_OBJS);
>  	if (ret) {
>  		kvm_err("Failed to topup stage2 cache\n");
> 


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
