Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 330981151A4
	for <lists+linux-riscv@lfdr.de>; Fri,  6 Dec 2019 14:56:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ex82G6gYS1crw+YJCIjC4u3OW7Wo09p2wIY2iG4MNOk=; b=n9SDMlWeIpPQYq
	HNiw5hWX+OnwWzwafiA7MXLbXqLG0R2OBkqG5T0TqBywbk6eGm/6JEtzQ0yfSQAwf4zSAtB49xXy8
	TY1YeuHVCXxujxkkpSbc/y78JpGpsG+V/LnOjdiRtK4pKWLLTV7UgXo2b3WQ1Ly/viqte7J7cvExw
	VPgTq8UHrkFIq6u7gHpt4D+EoIgFesJ8eyMh5m07Qo+P9ehfJ4a+7oVzaT0Aiw0TbfDvfbhamWgWP
	8IaW2JiyPuU9Ff7Q1U6B0ujkGKJ/W7ZZgRImrQB0dcqiAHsAjXVWL6bt2Min8I0vLZlIrQIk6nWEe
	PrmJaH7OhJT9bPUeeUPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idE5f-0005pB-HU; Fri, 06 Dec 2019 13:56:15 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idE3Z-0002j9-3m; Fri, 06 Dec 2019 13:54:07 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 915941FB;
 Fri,  6 Dec 2019 05:54:04 -0800 (PST)
Received: from e112269-lin.cambridge.arm.com (e112269-lin.cambridge.arm.com
 [10.1.194.43])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6373D3F718;
 Fri,  6 Dec 2019 05:54:01 -0800 (PST)
From: Steven Price <steven.price@arm.com>
To: Andrew Morton <akpm@linux-foundation.org>,
	linux-mm@kvack.org
Subject: [PATCH v16 07/25] riscv: mm: Add p?d_leaf() definitions
Date: Fri,  6 Dec 2019 13:52:58 +0000
Message-Id: <20191206135316.47703-8-steven.price@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191206135316.47703-1-steven.price@arm.com>
References: <20191206135316.47703-1-steven.price@arm.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191206_055405_210421_9A1A9498 
X-CRM114-Status: GOOD (  10.34  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <Mark.Rutland@arm.com>, Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Dave Hansen <dave.hansen@linux.intel.com>, Zong Li <zong.li@sifive.com>,
 "H. Peter Anvin" <hpa@zytor.com>, linux-riscv@lists.infradead.org,
 Will Deacon <will@kernel.org>, "Liang, Kan" <kan.liang@linux.intel.com>,
 Alexandre Ghiti <alex@ghiti.fr>, x86@kernel.org,
 Steven Price <steven.price@arm.com>, Ingo Molnar <mingo@redhat.com>,
 Palmer Dabbelt <palmer@sifive.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Arnd Bergmann <arnd@arndb.de>,
 =?UTF-8?q?J=C3=A9r=C3=B4me=20Glisse?= <jglisse@redhat.com>,
 Borislav Petkov <bp@alien8.de>, Andy Lutomirski <luto@kernel.org>,
 Paul Walmsley <paul.walmsley@sifive.com>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, linux-kernel@vger.kernel.org,
 James Morse <james.morse@arm.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

walk_page_range() is going to be allowed to walk page tables other than
those of user space. For this it needs to know when it has reached a
'leaf' entry in the page tables. This information is provided by the
p?d_leaf() functions/macros.

For riscv a page is a leaf page when it has a read, write or execute bit
set on it.

CC: Palmer Dabbelt <palmer@sifive.com>
CC: Albert Ou <aou@eecs.berkeley.edu>
CC: linux-riscv@lists.infradead.org
Reviewed-by: Alexandre Ghiti <alex@ghiti.fr>
Reviewed-by: Zong Li <zong.li@sifive.com>
Acked-by: Paul Walmsley <paul.walmsley@sifive.com> # for arch/riscv
Signed-off-by: Steven Price <steven.price@arm.com>
---
 arch/riscv/include/asm/pgtable-64.h | 7 +++++++
 arch/riscv/include/asm/pgtable.h    | 7 +++++++
 2 files changed, 14 insertions(+)

diff --git a/arch/riscv/include/asm/pgtable-64.h b/arch/riscv/include/asm/pgtable-64.h
index 74630989006d..4c4d2c65ba6c 100644
--- a/arch/riscv/include/asm/pgtable-64.h
+++ b/arch/riscv/include/asm/pgtable-64.h
@@ -43,6 +43,13 @@ static inline int pud_bad(pud_t pud)
 	return !pud_present(pud);
 }
 
+#define pud_leaf	pud_leaf
+static inline int pud_leaf(pud_t pud)
+{
+	return pud_present(pud) &&
+	       (pud_val(pud) & (_PAGE_READ | _PAGE_WRITE | _PAGE_EXEC));
+}
+
 static inline void set_pud(pud_t *pudp, pud_t pud)
 {
 	*pudp = pud;
diff --git a/arch/riscv/include/asm/pgtable.h b/arch/riscv/include/asm/pgtable.h
index 7ff0ed4f292e..5cf96b2b4d5a 100644
--- a/arch/riscv/include/asm/pgtable.h
+++ b/arch/riscv/include/asm/pgtable.h
@@ -105,6 +105,13 @@ static inline int pmd_bad(pmd_t pmd)
 	return !pmd_present(pmd);
 }
 
+#define pmd_leaf	pmd_leaf
+static inline int pmd_leaf(pmd_t pmd)
+{
+	return pmd_present(pmd) &&
+	       (pmd_val(pmd) & (_PAGE_READ | _PAGE_WRITE | _PAGE_EXEC));
+}
+
 static inline void set_pmd(pmd_t *pmdp, pmd_t pmd)
 {
 	*pmdp = pmd;
-- 
2.20.1


