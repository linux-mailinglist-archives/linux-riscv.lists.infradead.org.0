Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87AB71712C
	for <lists+linux-riscv@lfdr.de>; Wed,  8 May 2019 08:18:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:
	References:In-Reply-To:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=914Rg4bz2a7HdFTCyFkmITmkFaIn3SAnngRJlGxhOAI=; b=co+FgIyyC/aW9GdLPLr3nmdkLR
	mO3qEEUdyJEopXIaXq3VaWWomURzKROtVe2eGS3SFF8cwUE8jw5fQox1/hIB1k9fYX5cJlD5KsTwH
	YzO7Faof2u/oinv6AlQVbwjVigC9tnZ9CjKJQXx7q+DO+YJPaFv3or/VzIr/bkt53jDxJDdN8o1Ym
	VMGEhT0DJoc5Jxj8F5f9EAsythsdwhH2WTp1M3fZwVW6lPk9VOhOXjy43fT4SswTehrZm7Y6+a+n5
	AVpzKNS3G0/tQ/rITx9jXsMpD+EoE3pGmNbNhSgqav2jqw9jSGc4APzFdApbirJC2G67387+HSFq0
	+PAPSIdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOFuf-0001K8-OZ; Wed, 08 May 2019 06:18:45 +0000
Received: from mx0b-001b2d01.pphosted.com ([148.163.158.5]
 helo=mx0a-001b2d01.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOFtl-0008Ua-TL
 for linux-riscv@lists.infradead.org; Wed, 08 May 2019 06:17:58 +0000
Received: from pps.filterd (m0098420.ppops.net [127.0.0.1])
 by mx0b-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x486Ga0p131206
 for <linux-riscv@lists.infradead.org>; Wed, 8 May 2019 02:17:49 -0400
Received: from e06smtp07.uk.ibm.com (e06smtp07.uk.ibm.com [195.75.94.103])
 by mx0b-001b2d01.pphosted.com with ESMTP id 2sbr09vfew-1
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linux-riscv@lists.infradead.org>; Wed, 08 May 2019 02:17:48 -0400
Received: from localhost
 by e06smtp07.uk.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
 Violators will be prosecuted
 for <linux-riscv@lists.infradead.org> from <rppt@linux.ibm.com>;
 Wed, 8 May 2019 07:17:46 +0100
Received: from b06cxnps3074.portsmouth.uk.ibm.com (9.149.109.194)
 by e06smtp07.uk.ibm.com (192.168.101.137) with IBM ESMTP SMTP Gateway:
 Authorized Use Only! Violators will be prosecuted; 
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
 Wed, 8 May 2019 07:17:37 +0100
Received: from d06av22.portsmouth.uk.ibm.com (d06av22.portsmouth.uk.ibm.com
 [9.149.105.58])
 by b06cxnps3074.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 x486HaIa31326456
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 8 May 2019 06:17:36 GMT
Received: from d06av22.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 6AFE14C044;
 Wed,  8 May 2019 06:17:36 +0000 (GMT)
Received: from d06av22.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 25EBD4C040;
 Wed,  8 May 2019 06:17:33 +0000 (GMT)
Received: from rapoport-lnx (unknown [9.148.8.112])
 by d06av22.portsmouth.uk.ibm.com (Postfix) with ESMTPS;
 Wed,  8 May 2019 06:17:33 +0000 (GMT)
Received: by rapoport-lnx (sSMTP sendmail emulation);
 Wed, 08 May 2019 09:17:32 +0300
From: Mike Rapoport <rppt@linux.ibm.com>
To: Andrew Morton <akpm@linux-foundation.org>
Subject: [PATCH v2 05/14] csky: switch to generic version of pte allocation
Date: Wed,  8 May 2019 09:17:02 +0300
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1557296232-15361-1-git-send-email-rppt@linux.ibm.com>
References: <1557296232-15361-1-git-send-email-rppt@linux.ibm.com>
X-TM-AS-GCONF: 00
x-cbid: 19050806-0028-0000-0000-0000036B6E57
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 19050806-0029-0000-0000-0000242AEA20
Message-Id: <1557296232-15361-6-git-send-email-rppt@linux.ibm.com>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-05-08_05:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=2 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=831 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1810050000 definitions=main-1905080040
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_231750_580636_A6568089 
X-CRM114-Status: GOOD (  22.49  )
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

The csky implementation pte_alloc_one(), pte_free_kernel() and pte_free()
is identical to the generic except of lack of __GFP_ACCOUNT for the user
PTEs allocation.

Switch csky to use generic version of these functions.

The csky implementation of pte_alloc_one_kernel() is not replaced because
it does not clear the allocated page but rather sets each PTE in it to a
non-zero value.

The pte_free_kernel() and pte_free() versions on csky are identical to the
generic ones and can be simply dropped.

Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>
Acked-by: Guo Ren <ren_guo@c-sky.com>
---
 arch/csky/include/asm/pgalloc.h | 30 +++---------------------------
 1 file changed, 3 insertions(+), 27 deletions(-)

diff --git a/arch/csky/include/asm/pgalloc.h b/arch/csky/include/asm/pgalloc.h
index d213bb4..98c571670 100644
--- a/arch/csky/include/asm/pgalloc.h
+++ b/arch/csky/include/asm/pgalloc.h
@@ -8,6 +8,9 @@
 #include <linux/mm.h>
 #include <linux/sched.h>
 
+#define __HAVE_ARCH_PTE_ALLOC_ONE_KERNEL
+#include <asm-generic/pgalloc.h>	/* for pte_{alloc,free}_one */
+
 static inline void pmd_populate_kernel(struct mm_struct *mm, pmd_t *pmd,
 					pte_t *pte)
 {
@@ -39,33 +42,6 @@ static inline pte_t *pte_alloc_one_kernel(struct mm_struct *mm)
 	return pte;
 }
 
-static inline struct page *pte_alloc_one(struct mm_struct *mm)
-{
-	struct page *pte;
-
-	pte = alloc_pages(GFP_KERNEL | __GFP_ZERO, 0);
-	if (!pte)
-		return NULL;
-
-	if (!pgtable_page_ctor(pte)) {
-		__free_page(pte);
-		return NULL;
-	}
-
-	return pte;
-}
-
-static inline void pte_free_kernel(struct mm_struct *mm, pte_t *pte)
-{
-	free_pages((unsigned long)pte, PTE_ORDER);
-}
-
-static inline void pte_free(struct mm_struct *mm, pgtable_t pte)
-{
-	pgtable_page_dtor(pte);
-	__free_pages(pte, PTE_ORDER);
-}
-
 static inline void pgd_free(struct mm_struct *mm, pgd_t *pgd)
 {
 	free_pages((unsigned long)pgd, PGD_ORDER);
-- 
2.7.4


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
