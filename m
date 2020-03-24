Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47B99190FDF
	for <lists+linux-riscv@lfdr.de>; Tue, 24 Mar 2020 14:30:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4ikSg4p6PP+bNqmA8W5EMUgiZFHBG0mP9JOo9AGSpUA=; b=A/I7pm8Ctlg3zCqDLKeE4PtEL
	4CTAsBjhYz5OTkb9mWLIQ5OYyFsv9LenbOvbghFA01ZXu9/Gg1/IFfFXacxgzeo4D8luBIFILd5TX
	+AC9wkw3ohiKiKXWM811IAqJTMQBUrV86lFwUZrXmaxhc6qt/kB6y53zhZrOQtxMsLGHwxVPtru8e
	GeGH/d6cBh4/xwwLI4qpj7GcQOFwYtvB7Quzc8mqEljt8RrYoyL6nZ/W8lbSYpeAzVYkNG8uTIRkK
	vz+u+ZySM5VojpujU3yHBFMSZNlLxVUwHsACtRp93hf444qtZRfhIiSAD+po8agDIgDP3jru73rSO
	U1ZGV2P2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGjcx-0006mR-QK; Tue, 24 Mar 2020 13:29:55 +0000
Received: from hqnvemgate24.nvidia.com ([216.228.121.143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGjcs-0006l1-Lc; Tue, 24 Mar 2020 13:29:52 +0000
Received: from hqpgpgate102.nvidia.com (Not Verified[216.228.121.13]) by
 hqnvemgate24.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5e7a0af10000>; Tue, 24 Mar 2020 06:28:17 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate102.nvidia.com (PGP Universal service);
 Tue, 24 Mar 2020 06:29:47 -0700
X-PGP-Universal: processed;
 by hqpgpgate102.nvidia.com on Tue, 24 Mar 2020 06:29:47 -0700
Received: from [10.2.172.201] (172.20.13.39) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Tue, 24 Mar
 2020 13:29:44 +0000
From: Zi Yan <ziy@nvidia.com>
To: Anshuman Khandual <anshuman.khandual@arm.com>
Subject: Re: [PATCH V2 1/3] mm/debug: Add tests validating arch page table
 helpers for core features
Date: Tue, 24 Mar 2020 09:29:42 -0400
X-Mailer: MailMate (1.13.1r5680)
Message-ID: <89E72C74-A32F-4A5B-B5F3-8A63428507A5@nvidia.com>
In-Reply-To: <1585027375-9997-2-git-send-email-anshuman.khandual@arm.com>
References: <1585027375-9997-1-git-send-email-anshuman.khandual@arm.com>
 <1585027375-9997-2-git-send-email-anshuman.khandual@arm.com>
MIME-Version: 1.0
X-Originating-IP: [172.20.13.39]
X-ClientProxiedBy: HQMAIL107.nvidia.com (172.20.187.13) To
 HQMAIL107.nvidia.com (172.20.187.13)
Content-Type: multipart/signed;
 boundary="=_MailMate_046CEE80-FCB0-4D68-A105-63926BAC0137_=";
 micalg=pgp-sha512; protocol="application/pgp-signature"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1585056497; bh=4ikSg4p6PP+bNqmA8W5EMUgiZFHBG0mP9JOo9AGSpUA=;
 h=X-PGP-Universal:From:To:CC:Subject:Date:X-Mailer:Message-ID:
 In-Reply-To:References:MIME-Version:X-Originating-IP:
 X-ClientProxiedBy:Content-Type;
 b=aB0bcyZjHyC+Dp4OM7g3sK+HlwK3q5o5rw87wA+9nPRiyZifhbmSMDZfvbDwUSnsq
 paubw3nd6jr4NBtTitJmDFuuqWiBZfh4pZmJIC8Lttc+sRvGI25Ph/6GGr9LTZ21bz
 2vr3Us6kMw01ZE/1jrDItYZ+/z0TBz6pGQ1qN6Oi+LJCI0TE0Ou29nuyvV7Ohzr+Ga
 HXsfztGJjRu+1bcEIhb6x3aqKfsc6MdqAg+joWUXOOe7/JZ3zkBrz9D4DXbQCxWoL4
 4ZsYHoLi6n61vtECtmppTn5fZP/9bhnew1Q5wHRMEPogY8E7pOxiMXL2sjFsonY2vC
 5m1fnUCWZqDsQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_062950_724131_E330B799 
X-CRM114-Status: GOOD (  20.26  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.143 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, linux-mm@kvack.org,
 Paul Mackerras <paulus@samba.org>, "H. Peter Anvin" <hpa@zytor.com>,
 linux-riscv@lists.infradead.org, Will Deacon <will@kernel.org>,
 linux-arch@vger.kernel.org, linux-s390@vger.kernel.org,
 Michael Ellerman <mpe@ellerman.id.au>, x86@kernel.org,
 Mike Rapoport <rppt@linux.ibm.com>,
 Christian Borntraeger <borntraeger@de.ibm.com>, Ingo Molnar <mingo@redhat.com>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-snps-arc@lists.infradead.org,
 Vasily Gorbik <gor@linux.ibm.com>, Borislav Petkov <bp@alien8.de>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 "Kirill A . Shutemov" <kirill@shutemov.name>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 christophe.leroy@c-s.fr, Vineet Gupta <vgupta@synopsys.com>,
 linux-kernel@vger.kernel.org, Palmer Dabbelt <palmer@dabbelt.com>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

--=_MailMate_046CEE80-FCB0-4D68-A105-63926BAC0137_=
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On 24 Mar 2020, at 1:22, Anshuman Khandual wrote:

> This adds new tests validating arch page table helpers for these follow=
ing
> core memory features. These tests create and test specific mapping type=
s at
> various page table levels.
>
> 1. SPECIAL mapping
> 2. PROTNONE mapping
> 3. DEVMAP mapping
> 4. SOFTDIRTY mapping
> 5. SWAP mapping
> 6. MIGRATION mapping
> 7. HUGETLB mapping
> 8. THP mapping
>
> Cc: Andrew Morton <akpm@linux-foundation.org>
> Cc: Mike Rapoport <rppt@linux.ibm.com>
> Cc: Vineet Gupta <vgupta@synopsys.com>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Will Deacon <will@kernel.org>
> Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>
> Cc: Paul Mackerras <paulus@samba.org>
> Cc: Michael Ellerman <mpe@ellerman.id.au>
> Cc: Heiko Carstens <heiko.carstens@de.ibm.com>
> Cc: Vasily Gorbik <gor@linux.ibm.com>
> Cc: Christian Borntraeger <borntraeger@de.ibm.com>
> Cc: Thomas Gleixner <tglx@linutronix.de>
> Cc: Ingo Molnar <mingo@redhat.com>
> Cc: Borislav Petkov <bp@alien8.de>
> Cc: "H. Peter Anvin" <hpa@zytor.com>
> Cc: Kirill A. Shutemov <kirill@shutemov.name>
> Cc: Paul Walmsley <paul.walmsley@sifive.com>
> Cc: Palmer Dabbelt <palmer@dabbelt.com>
> Cc: linux-snps-arc@lists.infradead.org
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linuxppc-dev@lists.ozlabs.org
> Cc: linux-s390@vger.kernel.org
> Cc: linux-riscv@lists.infradead.org
> Cc: x86@kernel.org
> Cc: linux-arch@vger.kernel.org
> Cc: linux-kernel@vger.kernel.org
> Suggested-by: Catalin Marinas <catalin.marinas@arm.com>
> Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>
> ---
>  mm/debug_vm_pgtable.c | 291 +++++++++++++++++++++++++++++++++++++++++-=

>  1 file changed, 290 insertions(+), 1 deletion(-)
>
> diff --git a/mm/debug_vm_pgtable.c b/mm/debug_vm_pgtable.c
> index 98990a515268..15055a8f6478 100644
> --- a/mm/debug_vm_pgtable.c
> +++ b/mm/debug_vm_pgtable.c
> @@ -289,6 +289,267 @@ static void __init pmd_populate_tests(struct mm_s=
truct *mm, pmd_t *pmdp,
>  	WARN_ON(pmd_bad(pmd));
>  }
>
> +static void __init pte_special_tests(unsigned long pfn, pgprot_t prot)=

> +{
> +	pte_t pte =3D pfn_pte(pfn, prot);
> +
> +	if (!IS_ENABLED(CONFIG_ARCH_HAS_PTE_SPECIAL))
> +		return;
> +
> +	WARN_ON(!pte_special(pte_mkspecial(pte)));
> +}
> +
> +static void __init pte_protnone_tests(unsigned long pfn, pgprot_t prot=
)
> +{
> +	pte_t pte =3D pfn_pte(pfn, prot);
> +
> +	if (!IS_ENABLED(CONFIG_NUMA_BALANCING))
> +		return;
> +
> +	WARN_ON(!pte_protnone(pte));
> +	WARN_ON(!pte_present(pte));
> +}
> +
> +#ifdef CONFIG_TRANSPARENT_HUGEPAGE
> +static void __init pmd_protnone_tests(unsigned long pfn, pgprot_t prot=
)
> +{
> +	pmd_t pmd =3D pfn_pmd(pfn, prot);
> +
> +	if (!IS_ENABLED(CONFIG_NUMA_BALANCING))
> +		return;
> +
> +	WARN_ON(!pmd_protnone(pmd));
> +	WARN_ON(!pmd_present(pmd));
> +}
> +#else
> +static void __init pmd_protnone_tests(unsigned long pfn, pgprot_t prot=
) { }
> +#endif
> +
> +#ifdef CONFIG_ARCH_HAS_PTE_DEVMAP
> +static void __init pte_devmap_tests(unsigned long pfn, pgprot_t prot)
> +{
> +	pte_t pte =3D pfn_pte(pfn, prot);
> +
> +	WARN_ON(!pte_devmap(pte_mkdevmap(pte)));
> +}
> +
> +#ifdef CONFIG_TRANSPARENT_HUGEPAGE
> +static void __init pmd_devmap_tests(unsigned long pfn, pgprot_t prot)
> +{
> +	pmd_t pmd =3D pfn_pmd(pfn, prot);
> +
> +	WARN_ON(!pmd_devmap(pmd_mkdevmap(pmd)));
> +}
> +
> +#ifdef CONFIG_HAVE_ARCH_TRANSPARENT_HUGEPAGE_PUD
> +static void __init pud_devmap_tests(unsigned long pfn, pgprot_t prot)
> +{
> +	pud_t pud =3D pfn_pud(pfn, prot);
> +
> +	WARN_ON(!pud_devmap(pud_mkdevmap(pud)));
> +}
> +#else
> +static void __init pud_devmap_tests(unsigned long pfn, pgprot_t prot) =
{ }
> +#endif
> +#else
> +static void __init pmd_devmap_tests(unsigned long pfn, pgprot_t prot) =
{ }
> +static void __init pud_devmap_tests(unsigned long pfn, pgprot_t prot) =
{ }
> +#endif
> +#else
> +static void __init pte_devmap_tests(unsigned long pfn, pgprot_t prot) =
{ }
> +static void __init pmd_devmap_tests(unsigned long pfn, pgprot_t prot) =
{ }
> +static void __init pud_devmap_tests(unsigned long pfn, pgprot_t prot) =
{ }
> +#endif
> +
> +static void __init pte_soft_dirty_tests(unsigned long pfn, pgprot_t pr=
ot)
> +{
> +	pte_t pte =3D pfn_pte(pfn, prot);
> +
> +	if (!IS_ENABLED(CONFIG_HAVE_ARCH_SOFT_DIRTY))
> +		return;
> +
> +	WARN_ON(!pte_soft_dirty(pte_mksoft_dirty(pte)));
> +	WARN_ON(pte_soft_dirty(pte_clear_soft_dirty(pte)));
> +}
> +
> +static void __init pte_swap_soft_dirty_tests(unsigned long pfn, pgprot=
_t prot)
> +{
> +	pte_t pte =3D pfn_pte(pfn, prot);
> +
> +	if (!IS_ENABLED(CONFIG_HAVE_ARCH_SOFT_DIRTY))
> +		return;
> +
> +	WARN_ON(!pte_swp_soft_dirty(pte_swp_mksoft_dirty(pte)));
> +	WARN_ON(pte_swp_soft_dirty(pte_swp_clear_soft_dirty(pte)));
> +}
> +
> +#ifdef CONFIG_TRANSPARENT_HUGEPAGE
> +static void __init pmd_soft_dirty_tests(unsigned long pfn, pgprot_t pr=
ot)
> +{
> +	pmd_t pmd =3D pfn_pmd(pfn, prot);
> +
> +	if (!IS_ENABLED(CONFIG_HAVE_ARCH_SOFT_DIRTY))
> +		return;
> +
> +	WARN_ON(!pmd_soft_dirty(pmd_mksoft_dirty(pmd)));
> +	WARN_ON(pmd_soft_dirty(pmd_clear_soft_dirty(pmd)));
> +}
> +
> +static void __init pmd_swap_soft_dirty_tests(unsigned long pfn, pgprot=
_t prot)
> +{
> +	pmd_t pmd =3D pfn_pmd(pfn, prot);
> +
> +	if (!IS_ENABLED(CONFIG_HAVE_ARCH_SOFT_DIRTY) ||
> +		!IS_ENABLED(CONFIG_ARCH_ENABLE_THP_MIGRATION))
> +		return;
> +
> +	WARN_ON(!pmd_swp_soft_dirty(pmd_swp_mksoft_dirty(pmd)));
> +	WARN_ON(pmd_swp_soft_dirty(pmd_swp_clear_soft_dirty(pmd)));
> +}
> +#else
> +static void __init pmd_soft_dirty_tests(unsigned long pfn, pgprot_t pr=
ot) { }
> +static void __init pmd_swap_soft_dirty_tests(unsigned long pfn, pgprot=
_t prot)
> +{
> +}
> +#endif
> +
> +static void __init pte_swap_tests(unsigned long pfn, pgprot_t prot)
> +{
> +	swp_entry_t swp;
> +	pte_t pte;
> +
> +	pte =3D pfn_pte(pfn, prot);
> +	swp =3D __pte_to_swp_entry(pte);
> +	WARN_ON(!pte_same(pte, __swp_entry_to_pte(swp)));
> +}
> +
> +#ifdef CONFIG_ARCH_ENABLE_THP_MIGRATION
> +static void __init pmd_swap_tests(unsigned long pfn, pgprot_t prot)
> +{
> +	swp_entry_t swp;
> +	pmd_t pmd;
> +
> +	pmd =3D pfn_pmd(pfn, prot);
> +	swp =3D __pmd_to_swp_entry(pmd);
> +	WARN_ON(!pmd_same(pmd, __swp_entry_to_pmd(swp)));
> +}
> +#else
> +static void __init pmd_swap_tests(unsigned long pfn, pgprot_t prot) { =
}
> +#endif
> +
> +static void __init swap_migration_tests(void)
> +{
> +	struct page *page;
> +	swp_entry_t swp;
> +
> +	if (!IS_ENABLED(CONFIG_MIGRATION))
> +		return;
> +	/*
> +	 * swap_migration_tests() requires a dedicated page as it needs to
> +	 * be locked before creating a migration entry from it. Locking the
> +	 * page that actually maps kernel text ('start_kernel') can be real
> +	 * problematic. Lets allocate a dedicated page explicitly for this
> +	 * purpose that will be freed subsequently.
> +	 */
> +	page =3D alloc_page(GFP_KERNEL);
> +	if (!page) {
> +		pr_err("page allocation failed\n");
> +		return;
> +	}
> +
> +	/*
> +	 * make_migration_entry() expects given page to be
> +	 * locked, otherwise it stumbles upon a BUG_ON().
> +	 */
> +	__SetPageLocked(page);
> +	swp =3D make_migration_entry(page, 1);
> +	WARN_ON(!is_migration_entry(swp));
> +	WARN_ON(!is_write_migration_entry(swp));
> +
> +	make_migration_entry_read(&swp);
> +	WARN_ON(!is_migration_entry(swp));
> +	WARN_ON(is_write_migration_entry(swp));
> +
> +	swp =3D make_migration_entry(page, 0);
> +	WARN_ON(!is_migration_entry(swp));
> +	WARN_ON(is_write_migration_entry(swp));
> +	__ClearPageLocked(page);
> +	__free_page(page);
> +}
> +
> +#ifdef CONFIG_HUGETLB_PAGE
> +static void __init hugetlb_basic_tests(unsigned long pfn, pgprot_t pro=
t)
> +{
> +	struct page *page;
> +	pte_t pte;
> +
> +	/*
> +	 * Accessing the page associated with the pfn is safe here,
> +	 * as it was previously derived from a real kernel symbol.
> +	 */
> +	page =3D pfn_to_page(pfn);
> +	pte =3D mk_huge_pte(page, prot);
> +
> +	WARN_ON(!huge_pte_dirty(huge_pte_mkdirty(pte)));
> +	WARN_ON(!huge_pte_write(huge_pte_mkwrite(huge_pte_wrprotect(pte))));
> +	WARN_ON(huge_pte_write(huge_pte_wrprotect(huge_pte_mkwrite(pte))));
> +
> +#ifdef CONFIG_ARCH_WANT_GENERAL_HUGETLB
> +	pte =3D pfn_pte(pfn, prot);
> +
> +	WARN_ON(!pte_huge(pte_mkhuge(pte)));
> +#endif
> +}
> +#else
> +static void __init hugetlb_basic_tests(unsigned long pfn, pgprot_t pro=
t) { }
> +#endif
> +
> +#ifdef CONFIG_TRANSPARENT_HUGEPAGE
> +static void __init pmd_thp_tests(unsigned long pfn, pgprot_t prot)
> +{
> +	pmd_t pmd;
> +
> +	/*
> +	 * pmd_trans_huge() and pmd_present() must return positive
> +	 * after MMU invalidation with pmd_mknotpresent().
> +	 */
> +	pmd =3D pfn_pmd(pfn, prot);
> +	WARN_ON(!pmd_trans_huge(pmd_mkhuge(pmd)));
> +
> +#ifndef __HAVE_ARCH_PMDP_INVALIDATE
> +	WARN_ON(!pmd_trans_huge(pmd_mknotpresent(pmd_mkhuge(pmd))));
> +	WARN_ON(!pmd_present(pmd_mknotpresent(pmd_mkhuge(pmd))));
> +#endif

I think we need a better comment here, because requiring pmd_trans_huge()=
 and
pmd_present() returning true after pmd_mknotpresent() is not straightforw=
ard.

According to Andrea Arcangeli=E2=80=99s email (https://lore.kernel.org/li=
nux-mm/20181017020930.GN30832@redhat.com/),
This behavior is an optimization for transparent huge page.
pmd_trans_huge() must be true if pmd_page() returns you a valid THP to av=
oid
taking the pmd_lock when others walk over non transhuge pmds (i.e. there =
are no
THP allocated). Especially when we split a THP, removing the present bit =
from
the pmd, pmd_trans_huge() still needs to return true. pmd_present() shoul=
d
be true whenever pmd_trans_huge() returns true.

I think it is also worth either putting Andres=E2=80=99s email or the lin=
k to it
in the rst file in your 3rd patch. It is a good documentation for this sp=
ecial
case.

=E2=80=94
Best Regards,
Yan Zi

--=_MailMate_046CEE80-FCB0-4D68-A105-63926BAC0137_=
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQJDBAEBCgAtFiEEh7yFAW3gwjwQ4C9anbJR82th+ooFAl56C0YPHHppeUBudmlk
aWEuY29tAAoJEJ2yUfNrYfqKW00P/iN1ZY08hQbVe4FKHPJo1Zbcvcn3uCy8z7CF
/Fm9KlppaM+oRtB9H57botPd2+3+zwCPLHc0lZfHDICSbrrunnTTimytEXs/wh4C
d08kXSEQD8bJPmFgNq/DWNkXe1YNuInKUmIVvi4nblXCFphhfHQfxY6PsxDrB/Zh
BadAUxxtrn9e5DvCiNaVkvN4BGuFV8rLfE7StLVmkH0E5cv2ogEogkvklP4UWEip
I1PSOmxsldp45EGMVPJ0RrVxGfh+jDXRz3YyfiT+1uv4zaZUhg+wPcJvzYVd+M7N
zNVYBQcyByQrQCkmIDqzMCmEkxd5Uu4BX37zTA7sEb7CnY/9lBNU8e+WbG6Mobcp
bQP3ln/664NVejeSQIGYMN+GtntwcrxJLPxNybmcZgAcDBEd6xnueNLexlI5TvrP
u/pVo/MyKeAoPyf2behwcaLVmvfr9x+7rI+8LyQ7NIrusQySczhsmeUcZ2es5QiN
cH09sDzAon0zei0ExCfqJS4g2i2SnKZW+sU7t53AD+XkxJ+9A2mybWVFLkknxvr9
bunUy0+43b4H88j4EIuzsosFmCiQadUGaxxyfBA6pdnVkbxQFWIf5L+qOjFVgZYs
u1TcgS2BPI3/f24ogKamrk3EOGphnS/+AUVpQD3P6WMAg8mL8hhTTCo9Hll0hP9Q
+ljdSslj
=pDdF
-----END PGP SIGNATURE-----

--=_MailMate_046CEE80-FCB0-4D68-A105-63926BAC0137_=--

