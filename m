Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A1B1E17C734
	for <lists+linux-riscv@lfdr.de>; Fri,  6 Mar 2020 21:45:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Mime-Version:Content-Type:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VIytyDCq7f0kiHtZyAPYuhAfxkdQ6oPpVlPc91ezlzw=; b=EaKSvqU+SMFVIa
	zw+aJtaSJpSOtiu4inPk1N2w5bT9w2Ls7sc/Iinzhe8ogqJuuwoYuwF6H86o3cGerKTuMrYIjlDJA
	wkxacy4OBnYu0bGoTlw9EL3WamConX6SpVvK1tqTd5jnpD/hWHwMX9uWfubBnM61VEe3OnGIfj4lg
	TSNtqh5g6QTb6d7fF9AzaY2OykQsGAZ30JRSkcNO5mBSptxFL87eCzDmqA/loDEIxVHXyno35gHBA
	Yie8nRo6y/Sl6F1JvU8fIdTmIQ+fboH05zxGLz3tgutl+4lBB/kgXL1CO1u2fX9Xobuv4/o/Q3Yt3
	H8dJl5wzifYL98rwrl5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAJpz-0000Vw-1s; Fri, 06 Mar 2020 20:44:51 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAJpu-0000UN-NP
 for linux-riscv@lists.infradead.org; Fri, 06 Mar 2020 20:44:48 +0000
Received: by mail-qt1-x842.google.com with SMTP id d22so2776408qtn.0
 for <linux-riscv@lists.infradead.org>; Fri, 06 Mar 2020 12:44:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lca.pw; s=google;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=VIytyDCq7f0kiHtZyAPYuhAfxkdQ6oPpVlPc91ezlzw=;
 b=sVQp0SNzavyEmQgQgPO7gOzbjdxNHOBGOKLb2+i6xH5nTB6ZP6ociRcsHZFKZahWzv
 lVQMhT0TucKZE0jr1svRTaAecWqS9Lak/5QCDTaDSkOc6vq9y74In5QZ3C0vju5Y/YSJ
 seKiYzybOes0y2OWOOVvb45ZEYoBXTTL7/NQZvUeV5Umj/iFPmYuELjQmpwwRG/RbM00
 WMRsRryr0bUnfhZtTUXyLUc60zizY1/bRX7olknPmplQ8VZG+HU7CqTLWPWwICtR5QAk
 sPbgocfLtbClg6uijm1uY7WawL446OXTMUcERTf+StMaVG507VDTlm1AAJaTPJabMPKz
 9fdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=VIytyDCq7f0kiHtZyAPYuhAfxkdQ6oPpVlPc91ezlzw=;
 b=J1JLuME795zmv8pB/nPnsavmBLBy1macn8gVBpuhjzONMWzSGVecjXickMvZNqXuf2
 W5r6jDHidWA+euZ+imnkLHms70UXLvyz+YpjqBL/Gju1gMzg0/XxKUh7mN5O27KfjYXk
 AWBUCHlMy6M4Tq5gQF6M/pTsfz5iyXL1z1XewU8nPkrf+z3fYeWVGIqOgR5xDrQY3zEI
 2mHsDATpCr5GQTUE5EJDpB5zokCYm2Re/bAdhZxEZ18dKSt6mdkEmGotNV2rMZiA/KnH
 sRYETrfnvFhiq0mN77PAtqGz/Jzq3BOq6aRpro2wp2xjNpgCyk4WL8DujFjh7AKhIbL8
 xppg==
X-Gm-Message-State: ANhLgQ2xFIyfxyt9oL6NNiLIWk7RMKBh7nUHqXYhmniEYPpqFkAKkCIJ
 2esV6bvlUZHmUT09VXfbl6/1CQ==
X-Google-Smtp-Source: ADFU+vtc3atgWoG361itKB4xApBMGrMUExpxNIdab4Ow4UUWS5fC6T+QADXDozQS4OkwoR392p5sKA==
X-Received: by 2002:ac8:43c1:: with SMTP id w1mr4780630qtn.381.1583527484932; 
 Fri, 06 Mar 2020 12:44:44 -0800 (PST)
Received: from dhcp-41-57.bos.redhat.com (nat-pool-bos-t.redhat.com.
 [66.187.233.206])
 by smtp.gmail.com with ESMTPSA id g15sm14611541qtq.71.2020.03.06.12.44.42
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 06 Mar 2020 12:44:44 -0800 (PST)
Message-ID: <1583527481.7365.165.camel@lca.pw>
Subject: Re: [PATCH V15] mm/debug: Add tests validating architecture page
 table helpers
From: Qian Cai <cai@lca.pw>
To: Anshuman Khandual <anshuman.khandual@arm.com>, linux-mm@kvack.org
Date: Fri, 06 Mar 2020 15:44:41 -0500
In-Reply-To: <1583452659-11801-1-git-send-email-anshuman.khandual@arm.com>
References: <1583452659-11801-1-git-send-email-anshuman.khandual@arm.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.22.6 (3.22.6-10.el7) 
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_124446_819796_F0B54F37 
X-CRM114-Status: GOOD (  15.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Christophe Leroy <christophe.leroy@c-s.fr>, Vineet Gupta <vgupta@synopsys.com>,
 linux-kernel@vger.kernel.org, Palmer Dabbelt <palmer@dabbelt.com>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, 2020-03-06 at 05:27 +0530, Anshuman Khandual wrote:
> This adds tests which will validate architecture page table helpers and
> other accessors in their compliance with expected generic MM semantics.
> This will help various architectures in validating changes to existing
> page table helpers or addition of new ones.
> 
> This test covers basic page table entry transformations including but not
> limited to old, young, dirty, clean, write, write protect etc at various
> level along with populating intermediate entries with next page table page
> and validating them.
> 
> Test page table pages are allocated from system memory with required size
> and alignments. The mapped pfns at page table levels are derived from a
> real pfn representing a valid kernel text symbol. This test gets called
> inside kernel_init() right after async_synchronize_full().
> 
> This test gets built and run when CONFIG_DEBUG_VM_PGTABLE is selected. Any
> architecture, which is willing to subscribe this test will need to select
> ARCH_HAS_DEBUG_VM_PGTABLE. For now this is limited to arc, arm64, x86, s390
> and ppc32 platforms where the test is known to build and run successfully.
> Going forward, other architectures too can subscribe the test after fixing
> any build or runtime problems with their page table helpers. Meanwhile for
> better platform coverage, the test can also be enabled with CONFIG_EXPERT
> even without ARCH_HAS_DEBUG_VM_PGTABLE.
> 
> Folks interested in making sure that a given platform's page table helpers
> conform to expected generic MM semantics should enable the above config
> which will just trigger this test during boot. Any non conformity here will
> be reported as an warning which would need to be fixed. This test will help
> catch any changes to the agreed upon semantics expected from generic MM and
> enable platforms to accommodate it thereafter.

OK, I get this working on powerpc hash MMU as well, so this?

diff --git a/Documentation/features/debug/debug-vm-pgtable/arch-support.txt
b/Documentation/features/debug/debug-vm-pgtable/arch-support.txt
index 64d0f9b15c49..c527d05c0459 100644
--- a/Documentation/features/debug/debug-vm-pgtable/arch-support.txt
+++ b/Documentation/features/debug/debug-vm-pgtable/arch-support.txt
@@ -22,8 +22,7 @@
     |       nios2: | TODO |
     |    openrisc: | TODO |
     |      parisc: | TODO |
-    |  powerpc/32: |  ok  |
-    |  powerpc/64: | TODO |
+    |     powerpc: |  ok  |
     |       riscv: | TODO |
     |        s390: |  ok  |
     |          sh: | TODO |
diff --git a/arch/powerpc/Kconfig b/arch/powerpc/Kconfig
index 2e7eee523ba1..176930f40e07 100644
--- a/arch/powerpc/Kconfig
+++ b/arch/powerpc/Kconfig
@@ -116,7 +116,7 @@ config PPC
 	#
 	select ARCH_32BIT_OFF_T if PPC32
 	select ARCH_HAS_DEBUG_VIRTUAL
-	select ARCH_HAS_DEBUG_VM_PGTABLE if PPC32
+	select ARCH_HAS_DEBUG_VM_PGTABLE
 	select ARCH_HAS_DEVMEM_IS_ALLOWED
 	select ARCH_HAS_ELF_RANDOMIZE
 	select ARCH_HAS_FORTIFY_SOURCE
diff --git a/mm/debug_vm_pgtable.c b/mm/debug_vm_pgtable.c
index 96a91bda3a85..98990a515268 100644
--- a/mm/debug_vm_pgtable.c
+++ b/mm/debug_vm_pgtable.c
@@ -256,7 +256,8 @@ static void __init pte_clear_tests(struct mm_struct *mm,
pte_t *ptep,
 	pte_t pte = READ_ONCE(*ptep);
 
 	pte = __pte(pte_val(pte) | RANDOM_ORVALUE);
-	WRITE_ONCE(*ptep, pte);
+	set_pte_at(mm, vaddr, ptep, pte);
+	barrier();
 	pte_clear(mm, vaddr, ptep);
 	pte = READ_ONCE(*ptep);
 	WARN_ON(!pte_none(pte));

