Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CF1113DE4
	for <lists+linux-riscv@lfdr.de>; Sun,  5 May 2019 08:24:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:In-Reply-To:MIME-Version:
	References:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m4uAif3t9h0ToOwqEJMA9pSfZxaNCqWiyYjXKBzsVO8=; b=s13j4NGBwu+9d8
	34sbZK0ISDKipH/L36LPbPUn5dLUfkBPA71adTma0YhBYXuZy9LSJQFwbcF/nmO2yXI2iYxFZ46pz
	HZfvtesulHW1BHpptCmLLgD6KHSkEMLrztWBlGKRoZ7HeVr6qjP9LwTolBr5zaeku/fqk8jO6tZLG
	QVAPWT0O9dkyUbfAu76/xNC+oPZRzcNILOG+HtZ/KQweZOmCgZq79tvmPbRbzJCIrqT11ylhN186c
	rZe9W8AbBMF2TU0a15jX/CxRixbY/XRNeIKoZkSKJQHjWSjEYgWXJDJjzDmXcajlJFUoSw+BdxLW9
	Owv6zxu5PYfrTEoUPXUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNAZM-00085W-91; Sun, 05 May 2019 06:24:16 +0000
Received: from mx0b-001b2d01.pphosted.com ([148.163.158.5]
 helo=mx0a-001b2d01.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNAZ1-0007ph-Fr
 for linux-riscv@lists.infradead.org; Sun, 05 May 2019 06:23:57 +0000
Received: from pps.filterd (m0098420.ppops.net [127.0.0.1])
 by mx0b-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x456LP4N007048
 for <linux-riscv@lists.infradead.org>; Sun, 5 May 2019 02:23:54 -0400
Received: from e06smtp05.uk.ibm.com (e06smtp05.uk.ibm.com [195.75.94.101])
 by mx0b-001b2d01.pphosted.com with ESMTP id 2s9r8x3she-1
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linux-riscv@lists.infradead.org>; Sun, 05 May 2019 02:23:54 -0400
Received: from localhost
 by e06smtp05.uk.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
 Violators will be prosecuted
 for <linux-riscv@lists.infradead.org> from <rppt@linux.ibm.com>;
 Sun, 5 May 2019 07:23:51 +0100
Received: from b06cxnps4076.portsmouth.uk.ibm.com (9.149.109.198)
 by e06smtp05.uk.ibm.com (192.168.101.135) with IBM ESMTP SMTP Gateway:
 Authorized Use Only! Violators will be prosecuted; 
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
 Sun, 5 May 2019 07:23:44 +0100
Received: from d06av22.portsmouth.uk.ibm.com (d06av22.portsmouth.uk.ibm.com
 [9.149.105.58])
 by b06cxnps4076.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 x456Nh9r52560040
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Sun, 5 May 2019 06:23:43 GMT
Received: from d06av22.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 40EC84C046;
 Sun,  5 May 2019 06:23:43 +0000 (GMT)
Received: from d06av22.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 1D4414C040;
 Sun,  5 May 2019 06:23:41 +0000 (GMT)
Received: from rapoport-lnx (unknown [9.148.8.112])
 by d06av22.portsmouth.uk.ibm.com (Postfix) with ESMTPS;
 Sun,  5 May 2019 06:23:41 +0000 (GMT)
Date: Sun, 5 May 2019 09:23:39 +0300
From: Mike Rapoport <rppt@linux.ibm.com>
To: Christophe Leroy <christophe.leroy@c-s.fr>
Subject: Re: [PATCH 12/15] powerpc/nohash/64: switch to generic version of
 pte allocation
References: <1556810922-20248-1-git-send-email-rppt@linux.ibm.com>
 <1556810922-20248-13-git-send-email-rppt@linux.ibm.com>
 <adcb6ae6-48d9-5ba9-2732-a0ab1d96667c@c-s.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <adcb6ae6-48d9-5ba9-2732-a0ab1d96667c@c-s.fr>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-TM-AS-GCONF: 00
x-cbid: 19050506-0020-0000-0000-000003397072
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 19050506-0021-0000-0000-0000218C0137
Message-Id: <20190505062339.GF15755@rapoport-lnx>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-05-05_04:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1810050000 definitions=main-1905050057
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190504_232355_646723_86A45C7F 
X-CRM114-Status: GOOD (  23.04  )
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
 Palmer Dabbelt <palmer@sifive.com>, linux-kernel@vger.kernel.org,
 Guo Ren <guoren@kernel.org>, linux-riscv@lists.infradead.org,
 linux-arch@vger.kernel.org, Richard Weinberger <richard@nod.at>,
 Helge Deller <deller@gmx.de>, x86@kernel.org,
 Russell King <linux@armlinux.org.uk>, Matthew Wilcox <willy@infradead.org>,
 Geert Uytterhoeven <geert@linux-m68k.org>, Matt Turner <mattst88@gmail.com>,
 Sam Creasey <sammy@sammy.net>, Arnd Bergmann <arnd@arndb.de>,
 linux-alpha@vger.kernel.org, linux-um@lists.infradead.org,
 linux-m68k@lists.linux-m68k.org, Greentime Hu <green.hu@gmail.com>,
 Ley Foon Tan <lftan@altera.com>, Guan Xuetao <gxt@pku.edu.cn>,
 linux-arm-kernel@lists.infradead.org, linux-parisc@vger.kernel.org,
 linux-mips@vger.kernel.org, Richard Kuo <rkuo@codeaurora.org>,
 Paul Burton <paul.burton@mips.com>, linux-hexagon@vger.kernel.org,
 nios2-dev@lists.rocketboards.org, Andrew Morton <akpm@linux-foundation.org>,
 linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, May 02, 2019 at 06:56:07PM +0200, Christophe Leroy wrote:
> =

> =

> Le 02/05/2019 =E0 17:28, Mike Rapoport a =E9crit=A0:
> >The 64-bit book-E powerpc implements pte_alloc_one(),
> >pte_alloc_one_kernel(), pte_free_kernel() and pte_free() the same way as
> >the generic version.
> =

> Will soon be converted to the same as the 3 other PPC subarches, see
> https://patchwork.ozlabs.org/patch/1091590/
 =

Thanks for the heads up. I'll drop this from the next re-spin.

> Christophe
> =

> >
> >Switch it to the generic version that does exactly the same thing.
> >
> >Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>
> >---
> >  arch/powerpc/include/asm/nohash/64/pgalloc.h | 35 ++------------------=
--------
> >  1 file changed, 2 insertions(+), 33 deletions(-)
> >
> >diff --git a/arch/powerpc/include/asm/nohash/64/pgalloc.h b/arch/powerpc=
/include/asm/nohash/64/pgalloc.h
> >index 66d086f..bfb53a0 100644
> >--- a/arch/powerpc/include/asm/nohash/64/pgalloc.h
> >+++ b/arch/powerpc/include/asm/nohash/64/pgalloc.h
> >@@ -11,6 +11,8 @@
> >  #include <linux/cpumask.h>
> >  #include <linux/percpu.h>
> >+#include <asm-generic/pgalloc.h>	/* for pte_{alloc,free}_one */
> >+
> >  struct vmemmap_backing {
> >  	struct vmemmap_backing *list;
> >  	unsigned long phys;
> >@@ -92,39 +94,6 @@ static inline void pmd_free(struct mm_struct *mm, pmd=
_t *pmd)
> >  	kmem_cache_free(PGT_CACHE(PMD_CACHE_INDEX), pmd);
> >  }
> >-
> >-static inline pte_t *pte_alloc_one_kernel(struct mm_struct *mm)
> >-{
> >-	return (pte_t *)__get_free_page(GFP_KERNEL | __GFP_ZERO);
> >-}
> >-
> >-static inline pgtable_t pte_alloc_one(struct mm_struct *mm)
> >-{
> >-	struct page *page;
> >-	pte_t *pte;
> >-
> >-	pte =3D (pte_t *)__get_free_page(GFP_KERNEL | __GFP_ZERO | __GFP_ACCOU=
NT);
> >-	if (!pte)
> >-		return NULL;
> >-	page =3D virt_to_page(pte);
> >-	if (!pgtable_page_ctor(page)) {
> >-		__free_page(page);
> >-		return NULL;
> >-	}
> >-	return page;
> >-}
> >-
> >-static inline void pte_free_kernel(struct mm_struct *mm, pte_t *pte)
> >-{
> >-	free_page((unsigned long)pte);
> >-}
> >-
> >-static inline void pte_free(struct mm_struct *mm, pgtable_t ptepage)
> >-{
> >-	pgtable_page_dtor(ptepage);
> >-	__free_page(ptepage);
> >-}
> >-
> >  static inline void pgtable_free(void *table, int shift)
> >  {
> >  	if (!shift) {
> >
> =


-- =

Sincerely yours,
Mike.


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
