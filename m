Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91C3017642C
	for <lists+linux-riscv@lfdr.de>; Mon,  2 Mar 2020 20:41:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Mime-Version:Content-Type:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fpur9odzhdIzgZKAdXT5OufUWZiXDywyFJGHnsjLJuo=; b=f+8juKIrLdgqqu
	3tzrhahKmtt4XkWqHM3pyJSriqgI23ympRe2rNWoZhE4W4ZjhPRqWUc6esnZB0FDbBLCUmOWqGScV
	IO3N8PWybob/ORkJWXQ9VOY+pfiug9SWvLwygYx5PuK3T8BQtQ910z7qDhqzYUyA2S0eOoQmRdjEy
	lJjPDGkwSMqlp8nsqBbGOCQUiu+wU379qqIr79W1QoebEGVqbikIVb3FmCza9ssSV2PzG3Rv0rJB0
	DM8quEEWBmY6qWJfJzdTi1xlYg0cVNVlpFttlqhvnTykX7EARz+2mcO58GPfW/23gUy1RG9rKzDNR
	HLVzF6cOPqp+GPlwl82w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8qvz-000743-5k; Mon, 02 Mar 2020 19:40:59 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8qvq-0006wz-QO
 for linux-riscv@lists.infradead.org; Mon, 02 Mar 2020 19:40:52 +0000
Received: by mail-qk1-x742.google.com with SMTP id 11so942035qkd.1
 for <linux-riscv@lists.infradead.org>; Mon, 02 Mar 2020 11:40:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lca.pw; s=google;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Fpur9odzhdIzgZKAdXT5OufUWZiXDywyFJGHnsjLJuo=;
 b=dWCEq9TbdtlIn4IlSjT7wsgDMqKSoAKLzae3C569gQfG+p+Vk79gjYDp0p50OXn9hR
 Xm7x5cNfSGrA7pZOqbIyHB6YbB5olZ4ep8KMLse+bohRCUq99hLzFTyhfizQ0g1MVv9z
 PDB5fH+ahTLkKU8vUdes9sSXGelGjiIZoAKN6HTkKzUfig+h5pTHRYeWb9NP7s3wdS9t
 Tt4WNgQv8yFdtznernPNmQzDX+ip0C+UgbaM/+RzUP5kH1SCJgpVi8ZPrt/2QDdNj0Vc
 NTeqpeeYYjJCxNEWEDDoAqM078dLwnuNGGPGzRM4Bt0EmoCaK9xyew4usRNSVcQzIQqy
 2SAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Fpur9odzhdIzgZKAdXT5OufUWZiXDywyFJGHnsjLJuo=;
 b=oBrdc1A2TBVJd2w7UjqVZhTcVpeioNJEMwYX9B4/FhYkQLaYNs8itjL9tMBqvtnI8t
 0QQYkDNl18nPsvE+BPOUZfecO4p1rna4eBAuy0PzOs+xtq21P/rfeTb4qrht1/aZLrJQ
 +7hN3SkizawCSNLQ5eEdF5d0e4Vh+aCCNd7l7/6zclyGHJbCHPRTYlu4BEbxt7W2acsb
 NnEl6FM27Sxdit61ss+qhMoB7a8G7MgoUDTfzgmY4YjVjE9gA+iI9IoKuGZJTGSiKVEn
 D3oD/WONhCZtjaP5UfQUtO98Zad5I6FutqJPXPkWdCtWCc73YV554w9j8cTGb9xsj1pc
 +2+w==
X-Gm-Message-State: ANhLgQ23wfdHIlhxBqtZjwccvEmVIMVgZdhVj9JbFknYl1B703ecFEdg
 mz85iHCrUBUr71iHbIzzQzwQqw==
X-Google-Smtp-Source: ADFU+vvIre6Pknx1npljKo6V/87YN9X3Pm++i6mQcGcNAIn71bgolvXPcuZTIRGu9NVtwEvKfxAUQw==
X-Received: by 2002:ae9:f205:: with SMTP id m5mr857097qkg.152.1583178047563;
 Mon, 02 Mar 2020 11:40:47 -0800 (PST)
Received: from dhcp-41-57.bos.redhat.com (nat-pool-bos-t.redhat.com.
 [66.187.233.206])
 by smtp.gmail.com with ESMTPSA id s139sm6748558qke.70.2020.03.02.11.40.42
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 02 Mar 2020 11:40:46 -0800 (PST)
Message-ID: <1583178042.7365.146.camel@lca.pw>
Subject: Re: [PATCH V14] mm/debug: Add tests validating architecture page
 table helpers
From: Qian Cai <cai@lca.pw>
To: Christophe Leroy <christophe.leroy@c-s.fr>, Anshuman Khandual
 <anshuman.khandual@arm.com>, linux-mm@kvack.org
Date: Mon, 02 Mar 2020 14:40:42 -0500
In-Reply-To: <1582732318.7365.129.camel@lca.pw>
References: <1581909460-19148-1-git-send-email-anshuman.khandual@arm.com>
 <1582726182.7365.123.camel@lca.pw>
 <7c707b7f-ce3d-993b-8042-44fdc1ed28bf@c-s.fr>
 <1582732318.7365.129.camel@lca.pw>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.22.6 (3.22.6-10.el7) 
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_114050_859593_89FE6048 
X-CRM114-Status: GOOD (  23.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, Paul Mackerras <paulus@samba.org>,
 "H. Peter Anvin" <hpa@zytor.com>, linux-riscv@lists.infradead.org,
 Will Deacon <will@kernel.org>, linux-arch@vger.kernel.org,
 linux-s390@vger.kernel.org, Michael Ellerman <mpe@ellerman.id.au>,
 x86@kernel.org, Mike Rapoport <rppt@linux.ibm.com>,
 Christian Borntraeger <borntraeger@de.ibm.com>, Ingo Molnar <mingo@redhat.com>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 linux-snps-arc@lists.infradead.org, Vasily Gorbik <gor@linux.ibm.com>,
 Borislav Petkov <bp@alien8.de>, Paul Walmsley <paul.walmsley@sifive.com>,
 "Kirill A . Shutemov" <kirill@shutemov.name>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Vineet Gupta <vgupta@synopsys.com>, linux-kernel@vger.kernel.org,
 Palmer Dabbelt <palmer@dabbelt.com>, Andrew Morton <akpm@linux-foundation.org>,
 linuxppc-dev@lists.ozlabs.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, 2020-02-26 at 10:51 -0500, Qian Cai wrote:
> On Wed, 2020-02-26 at 15:45 +0100, Christophe Leroy wrote:
> > 
> > Le 26/02/2020 à 15:09, Qian Cai a écrit :
> > > On Mon, 2020-02-17 at 08:47 +0530, Anshuman Khandual wrote:
> > > > This adds tests which will validate architecture page table helpers and
> > > > other accessors in their compliance with expected generic MM semantics.
> > > > This will help various architectures in validating changes to existing
> > > > page table helpers or addition of new ones.
> > > > 
> > > > This test covers basic page table entry transformations including but not
> > > > limited to old, young, dirty, clean, write, write protect etc at various
> > > > level along with populating intermediate entries with next page table page
> > > > and validating them.
> > > > 
> > > > Test page table pages are allocated from system memory with required size
> > > > and alignments. The mapped pfns at page table levels are derived from a
> > > > real pfn representing a valid kernel text symbol. This test gets called
> > > > inside kernel_init() right after async_synchronize_full().
> > > > 
> > > > This test gets built and run when CONFIG_DEBUG_VM_PGTABLE is selected. Any
> > > > architecture, which is willing to subscribe this test will need to select
> > > > ARCH_HAS_DEBUG_VM_PGTABLE. For now this is limited to arc, arm64, x86, s390
> > > > and ppc32 platforms where the test is known to build and run successfully.
> > > > Going forward, other architectures too can subscribe the test after fixing
> > > > any build or runtime problems with their page table helpers. Meanwhile for
> > > > better platform coverage, the test can also be enabled with CONFIG_EXPERT
> > > > even without ARCH_HAS_DEBUG_VM_PGTABLE.
> > > > 
> > > > Folks interested in making sure that a given platform's page table helpers
> > > > conform to expected generic MM semantics should enable the above config
> > > > which will just trigger this test during boot. Any non conformity here will
> > > > be reported as an warning which would need to be fixed. This test will help
> > > > catch any changes to the agreed upon semantics expected from generic MM and
> > > > enable platforms to accommodate it thereafter.
> > > 
> > > How useful is this that straightly crash the powerpc?
> > > 
> > > [   23.263425][    T1] debug_vm_pgtable: debug_vm_pgtable: Validating
> > > architecture page table helpers
> > > [   23.263625][    T1] ------------[ cut here ]------------
> > > [   23.263649][    T1] kernel BUG at arch/powerpc/mm/pgtable.c:274!
> > 
> > The problem on PPC64 is known and has to be investigated and fixed.
> 
> It might be interesting to hear what powerpc64 maintainers would say about it
> and if it is actually worth "fixing" in the arch code, but that BUG_ON() was
> there since 2009 and had not been exposed until this patch comes alone?

This patch below makes it works on powerpc64 in order to dodge the BUG_ON()s in 
assert_pte_locked() triggered by pte_clear_tests().


diff --git a/mm/debug_vm_pgtable.c b/mm/debug_vm_pgtable.c
index 96dd7d574cef..50b385233971 100644
--- a/mm/debug_vm_pgtable.c
+++ b/mm/debug_vm_pgtable.c
@@ -55,6 +55,8 @@
 #define RANDOM_ORVALUE	GENMASK(BITS_PER_LONG - 1, S390_MASK_BITS)
 #define RANDOM_NZVALUE	GENMASK(7, 0)
 
+unsigned long vaddr;
+
 static void __init pte_basic_tests(unsigned long pfn, pgprot_t prot)
 {
 	pte_t pte = pfn_pte(pfn, prot);
@@ -256,7 +258,7 @@ static void __init pte_clear_tests(struct mm_struct *mm,
pte_t *ptep)
 
 	pte = __pte(pte_val(pte) | RANDOM_ORVALUE);
 	WRITE_ONCE(*ptep, pte);
-	pte_clear(mm, 0, ptep);
+	pte_clear(mm, vaddr, ptep);
 	pte = READ_ONCE(*ptep);
 	WARN_ON(!pte_none(pte));
 }
@@ -310,8 +312,9 @@ void __init debug_vm_pgtable(void)
 	pgtable_t saved_ptep;
 	pgprot_t prot;
 	phys_addr_t paddr;
-	unsigned long vaddr, pte_aligned, pmd_aligned;
+	unsigned long pte_aligned, pmd_aligned;
 	unsigned long pud_aligned, p4d_aligned, pgd_aligned;
+	spinlock_t *ptl;
 
 	pr_info("Validating architecture page table helpers\n");
 	prot = vm_get_page_prot(VMFLAGS);
@@ -344,7 +347,7 @@ void __init debug_vm_pgtable(void)
 	p4dp = p4d_alloc(mm, pgdp, vaddr);
 	pudp = pud_alloc(mm, p4dp, vaddr);
 	pmdp = pmd_alloc(mm, pudp, vaddr);
-	ptep = pte_alloc_map(mm, pmdp, vaddr);
+	ptep = pte_alloc_map_lock(mm, pmdp, vaddr, &ptl);
 
 	/*
 	 * Save all the page table page addresses as the page table
@@ -370,7 +373,7 @@ void __init debug_vm_pgtable(void)
 	p4d_clear_tests(mm, p4dp);
 	pgd_clear_tests(mm, pgdp);
 
-	pte_unmap(ptep);
+	pte_unmap_unlock(ptep, ptl);
 
 	pmd_populate_tests(mm, pmdp, saved_ptep);
 	pud_populate_tests(mm, pudp, saved_pmdp);

