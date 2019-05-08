Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 752941715B
	for <lists+linux-riscv@lfdr.de>; Wed,  8 May 2019 08:20:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:
	References:In-Reply-To:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=MXQfyp562NCs5XWtvFo+cJqlKYFD7bIdA5fL+rktL7Y=; b=dmLXsJSR2sRpbcRwm9WD9BZXhj
	z1VbFEvi/bZqBgBDo5knmRsTjsEFDKChKkrsXStz34YIttvzkRIoIKESxHYwV0mPGhY5eEHG3ZZKN
	WZCbJ5M+xJcSZw7ea3gjWNe9XKVsQ5OKPnH4olir58sWf9Pvg1mk47HxbB4m083M0ixd2cGHZRmFe
	imV/Xj9E/NSBILfBS8q7zjsmk2nJhxVRDefRPsfPieFjbTESUvkNx+uuSDdxnh5B3ND86v0fPMzYr
	Cpr4XA1bMN4Syq2H+s3b3m+UDfW3qnOr0khRwJ3HDmE3weKk8CVmz2jT8s+CdwOL88K4MjpEsEdav
	3eOkNweg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOFw0-0002yR-6l; Wed, 08 May 2019 06:20:08 +0000
Received: from mx0b-001b2d01.pphosted.com ([148.163.158.5]
 helo=mx0a-001b2d01.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOFuH-0000pL-Rx
 for linux-riscv@lists.infradead.org; Wed, 08 May 2019 06:18:52 +0000
Received: from pps.filterd (m0098421.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x486GVFH075912
 for <linux-riscv@lists.infradead.org>; Wed, 8 May 2019 02:18:21 -0400
Received: from e06smtp04.uk.ibm.com (e06smtp04.uk.ibm.com [195.75.94.100])
 by mx0a-001b2d01.pphosted.com with ESMTP id 2sbqa5x4ct-1
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linux-riscv@lists.infradead.org>; Wed, 08 May 2019 02:18:20 -0400
Received: from localhost
 by e06smtp04.uk.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
 Violators will be prosecuted
 for <linux-riscv@lists.infradead.org> from <rppt@linux.ibm.com>;
 Wed, 8 May 2019 07:18:18 +0100
Received: from b06cxnps3075.portsmouth.uk.ibm.com (9.149.109.195)
 by e06smtp04.uk.ibm.com (192.168.101.134) with IBM ESMTP SMTP Gateway:
 Authorized Use Only! Violators will be prosecuted; 
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
 Wed, 8 May 2019 07:18:09 +0100
Received: from d06av23.portsmouth.uk.ibm.com (d06av23.portsmouth.uk.ibm.com
 [9.149.105.59])
 by b06cxnps3075.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 x486I8L347317072
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 8 May 2019 06:18:08 GMT
Received: from d06av23.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 2F8CAA4053;
 Wed,  8 May 2019 06:18:08 +0000 (GMT)
Received: from d06av23.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id D7771A4040;
 Wed,  8 May 2019 06:18:04 +0000 (GMT)
Received: from rapoport-lnx (unknown [9.148.8.112])
 by d06av23.portsmouth.uk.ibm.com (Postfix) with ESMTPS;
 Wed,  8 May 2019 06:18:04 +0000 (GMT)
Received: by rapoport-lnx (sSMTP sendmail emulation);
 Wed, 08 May 2019 09:18:04 +0300
From: Mike Rapoport <rppt@linux.ibm.com>
To: Andrew Morton <akpm@linux-foundation.org>
Subject: [PATCH v2 13/14] um: switch to generic version of pte allocation
Date: Wed,  8 May 2019 09:17:10 +0300
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1557296232-15361-1-git-send-email-rppt@linux.ibm.com>
References: <1557296232-15361-1-git-send-email-rppt@linux.ibm.com>
X-TM-AS-GCONF: 00
x-cbid: 19050806-0016-0000-0000-000002796FE5
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 19050806-0017-0000-0000-000032D61D38
Message-Id: <1557296232-15361-14-git-send-email-rppt@linux.ibm.com>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-05-08_05:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=2 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=919 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1810050000 definitions=main-1905080040
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_231822_762336_4A6E1973 
X-CRM114-Status: GOOD (  22.92  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.158.5 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-riscv@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-riscv.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-riscv/>
List-Post: <mailto:linux-riscv@lists.infradead.org>
List-Help: <mailto:linux-riscv-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=subscribe>
Cc: Michal Hocko <mhocko@suse.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Palmer Dabbelt <palmer@sifive.com>, linux-mips@vger.kernel.org,
 linux-mm@kvack.org, Guo Ren <guoren@kernel.org>, linux-hexagon@vger.kernel.org,
 linux-riscv@lists.infradead.org, linux-arch@vger.kernel.org,
 Michael Ellerman <mpe@ellerman.id.au>, Helge Deller <deller@gmx.de>,
 x86@kernel.org, Russell King <linux@armlinux.org.uk>,
 Matthew Wilcox <willy@infradead.org>, Mike Rapoport <rppt@linux.ibm.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>, Matt Turner <mattst88@gmail.com>,
 Sam Creasey <sammy@sammy.net>, Arnd Bergmann <arnd@arndb.de>,
 Anshuman Khandual <anshuman.khandual@arm.com>, linux-um@lists.infradead.org,
 Richard Weinberger <richard@nod.at>, linux-m68k@lists.linux-m68k.org,
 Greentime Hu <green.hu@gmail.com>, nios2-dev@lists.rocketboards.org,
 Guan Xuetao <gxt@pku.edu.cn>, linux-arm-kernel@lists.infradead.org,
 linux-parisc@vger.kernel.org, linux-kernel@vger.kernel.org,
 Richard Kuo <rkuo@codeaurora.org>, Paul Burton <paul.burton@mips.com>,
 linux-alpha@vger.kernel.org, Ley Foon Tan <lftan@altera.com>,
 linuxppc-dev@lists.ozlabs.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

um allocates PTE pages with __get_free_page() and uses
GFP_KERNEL | __GFP_ZERO for the allocations.

Switch it to the generic version that does exactly the same thing for the
kernel page tables and adds __GFP_ACCOUNT for the user PTEs.

The pte_free() and pte_free_kernel() versions are identical to the generic
ones and can be simply dropped.

Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>
Reviewed-by: Anton Ivanov <anton.ivanov@cambridgegreys.com>
Acked-by: Anton Ivanov <anton.ivanov@cambridgegreys.com>
---
 arch/um/include/asm/pgalloc.h | 16 ++--------------
 arch/um/kernel/mem.c          | 22 ----------------------
 2 files changed, 2 insertions(+), 36 deletions(-)

diff --git a/arch/um/include/asm/pgalloc.h b/arch/um/include/asm/pgalloc.h
index 99eb568..d7b282e 100644
--- a/arch/um/include/asm/pgalloc.h
+++ b/arch/um/include/asm/pgalloc.h
@@ -10,6 +10,8 @@
 
 #include <linux/mm.h>
 
+#include <asm-generic/pgalloc.h>	/* for pte_{alloc,free}_one */
+
 #define pmd_populate_kernel(mm, pmd, pte) \
 	set_pmd(pmd, __pmd(_PAGE_TABLE + (unsigned long) __pa(pte)))
 
@@ -25,20 +27,6 @@
 extern pgd_t *pgd_alloc(struct mm_struct *);
 extern void pgd_free(struct mm_struct *mm, pgd_t *pgd);
 
-extern pte_t *pte_alloc_one_kernel(struct mm_struct *);
-extern pgtable_t pte_alloc_one(struct mm_struct *);
-
-static inline void pte_free_kernel(struct mm_struct *mm, pte_t *pte)
-{
-	free_page((unsigned long) pte);
-}
-
-static inline void pte_free(struct mm_struct *mm, pgtable_t pte)
-{
-	pgtable_page_dtor(pte);
-	__free_page(pte);
-}
-
 #define __pte_free_tlb(tlb,pte, address)		\
 do {							\
 	pgtable_page_dtor(pte);				\
diff --git a/arch/um/kernel/mem.c b/arch/um/kernel/mem.c
index 99aa11b..2280374 100644
--- a/arch/um/kernel/mem.c
+++ b/arch/um/kernel/mem.c
@@ -215,28 +215,6 @@ void pgd_free(struct mm_struct *mm, pgd_t *pgd)
 	free_page((unsigned long) pgd);
 }
 
-pte_t *pte_alloc_one_kernel(struct mm_struct *mm)
-{
-	pte_t *pte;
-
-	pte = (pte_t *)__get_free_page(GFP_KERNEL|__GFP_ZERO);
-	return pte;
-}
-
-pgtable_t pte_alloc_one(struct mm_struct *mm)
-{
-	struct page *pte;
-
-	pte = alloc_page(GFP_KERNEL|__GFP_ZERO);
-	if (!pte)
-		return NULL;
-	if (!pgtable_page_ctor(pte)) {
-		__free_page(pte);
-		return NULL;
-	}
-	return pte;
-}
-
 #ifdef CONFIG_3_LEVEL_PGTABLES
 pmd_t *pmd_alloc_one(struct mm_struct *mm, unsigned long address)
 {
-- 
2.7.4


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
