Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3821211D1F
	for <lists+linux-riscv@lfdr.de>; Thu,  2 May 2019 17:29:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=ATIaB2ujHdKzTgket5z1SH4Of3Njlv99zhu3/NiTfQg=; b=q8s
	8HM2D97RzHvVDyw2W+hXcT5O9LCS0mmh+XsH6vbnX5L63tt0JwdHxf8Ozj6eWcj3uTm4RblfNbqtp
	OCtLgpliF+mo8QPUAzEJCBDTDGBqccrIS30nktzyR44tVZSkPTjeik0kFdgg3oLdV04FgF/D6tSfI
	OXlvTzN+iVU2E2zo8qhTxjhijAys7LmreLfTjneA3bA87eK93FlwHm3TlA+tK8lQIfDiJfrA9gUTJ
	P3pLhXyaOplGKQsj4+TP8YmsPTh2yWt7gN9taBCp9N5AERR+qk9XGPkWgIj1knDATUmOr4eabyxlo
	gMoX6S7brcYlBH4yODPJzXks8Of1+Tg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMDdz-0002B3-1w; Thu, 02 May 2019 15:29:07 +0000
Received: from mx0a-001b2d01.pphosted.com ([148.163.156.1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMDdv-00025K-7V
 for linux-riscv@lists.infradead.org; Thu, 02 May 2019 15:29:05 +0000
Received: from pps.filterd (m0098409.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x42FSLpA046275
 for <linux-riscv@lists.infradead.org>; Thu, 2 May 2019 11:29:02 -0400
Received: from e06smtp02.uk.ibm.com (e06smtp02.uk.ibm.com [195.75.94.98])
 by mx0a-001b2d01.pphosted.com with ESMTP id 2s81yqbhp5-1
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linux-riscv@lists.infradead.org>; Thu, 02 May 2019 11:29:01 -0400
Received: from localhost
 by e06smtp02.uk.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
 Violators will be prosecuted
 for <linux-riscv@lists.infradead.org> from <rppt@linux.ibm.com>;
 Thu, 2 May 2019 16:28:58 +0100
Received: from b06cxnps4076.portsmouth.uk.ibm.com (9.149.109.198)
 by e06smtp02.uk.ibm.com (192.168.101.132) with IBM ESMTP SMTP Gateway:
 Authorized Use Only! Violators will be prosecuted; 
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
 Thu, 2 May 2019 16:28:50 +0100
Received: from d06av23.portsmouth.uk.ibm.com (d06av23.portsmouth.uk.ibm.com
 [9.149.105.59])
 by b06cxnps4076.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 x42FSnXd45023486
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 2 May 2019 15:28:49 GMT
Received: from d06av23.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 830D5A4051;
 Thu,  2 May 2019 15:28:49 +0000 (GMT)
Received: from d06av23.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 12855A404D;
 Thu,  2 May 2019 15:28:45 +0000 (GMT)
Received: from rapoport-lnx (unknown [9.148.205.209])
 by d06av23.portsmouth.uk.ibm.com (Postfix) with ESMTPS;
 Thu,  2 May 2019 15:28:44 +0000 (GMT)
Received: by rapoport-lnx (sSMTP sendmail emulation);
 Thu, 02 May 2019 18:28:43 +0300
From: Mike Rapoport <rppt@linux.ibm.com>
To: Andrew Morton <akpm@linux-foundation.org>
Subject: [PATCH 00/15] introduce generic pte_{alloc,free}_one[_kernel]
Date: Thu,  2 May 2019 18:28:27 +0300
X-Mailer: git-send-email 2.7.4
X-TM-AS-GCONF: 00
x-cbid: 19050215-0008-0000-0000-000002E29914
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 19050215-0009-0000-0000-0000224F082B
Message-Id: <1556810922-20248-1-git-send-email-rppt@linux.ibm.com>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-05-02_08:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=1
 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=1
 clxscore=1015 lowpriorityscore=0 mlxscore=1 impostorscore=0
 mlxlogscore=211 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1810050000 definitions=main-1905020103
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_082903_382488_26351DB6 
X-CRM114-Status: GOOD (  17.71  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.156.1 listed in list.dnswl.org]
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
 Guo Ren <guoren@kernel.org>, linux-hexagon@vger.kernel.org,
 linux-riscv@lists.infradead.org, linux-arch@vger.kernel.org,
 Michael Ellerman <mpe@ellerman.id.au>, Helge Deller <deller@gmx.de>,
 x86@kernel.org, Russell King <linux@armlinux.org.uk>,
 Matthew Wilcox <willy@infradead.org>, Mike Rapoport <rppt@linux.ibm.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>, Matt Turner <mattst88@gmail.com>,
 Sam Creasey <sammy@sammy.net>, Arnd Bergmann <arnd@arndb.de>,
 linux-um@lists.infradead.org, Richard Weinberger <richard@nod.at>,
 linux-m68k@lists.linux-m68k.org, Greentime Hu <green.hu@gmail.com>,
 nios2-dev@lists.rocketboards.org, Guan Xuetao <gxt@pku.edu.cn>,
 linux-arm-kernel@lists.infradead.org, linux-parisc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Richard Kuo <rkuo@codeaurora.org>,
 Paul Burton <paul.burton@mips.com>, linux-alpha@vger.kernel.org,
 Ley Foon Tan <lftan@altera.com>, linuxppc-dev@lists.ozlabs.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi,

I've tried to trim down the recipients list, but it's still quite long, so
sorry for the spam.

Many architectures have similar, if not identical implementation of
pte_alloc_one_kernel(), pte_alloc_one(), pte_free_kernel() and pte_free().

A while ago Anshuman suggested to introduce a common definition of
GFP_PGTABLE and during the discussion it was suggested to rather
consolidate the allocators.

These patches introduce generic version of PTE allocation and free and
enable their use on several architectures.

The conversion introduces some changes for some of the architectures.
Here's the executive summary and the details are described at each patch.

* Most architectures do not set __GFP_ACCOUNT for the user page tables.
Switch to the generic functions is "spreading that goodness to all other
architectures"
* arm, arm64 and unicore32 used to check if the pte is not NULL before
freeing its memory in pte_free_kernel(). It's dropped during the
conversion as it seems superfluous.
* x86 used to BUG_ON() is pte was not page aligned duirng
pte_free_kernel(), the generic version simply frees the memory without any
checks.

This set only performs the straightforward conversion, the architectures
with different logic in pte_alloc_one() and pte_alloc_one_kernel() are not
touched, as well as architectures that have custom page table allocators.

[1] https://lore.kernel.org/lkml/1547619692-7946-1-git-send-email-anshuman.khandual@arm.com

 asm-generic, x86: introduce generic pte_{alloc,free}_one[_kernel]

Mike Rapoport (15):
  asm-generic, x86: introduce generic pte_{alloc,free}_one[_kernel]
  alpha: switch to generic version of pte allocation
  arm: switch to generic version of pte allocation
  arm64: switch to generic version of pte allocation
  csky: switch to generic version of pte allocation
  hexagon: switch to generic version of pte allocation
  m68k: sun3: switch to generic version of pte allocation
  mips: switch to generic version of pte allocation
  nds32: switch to generic version of pte allocation
  nios2: switch to generic version of pte allocation
  parisc: switch to generic version of pte allocation
  powerpc/nohash/64: switch to generic version of pte allocation
  riscv: switch to generic version of pte allocation
  um: switch to generic version of pte allocation
  unicore32: switch to generic version of pte allocation

 arch/alpha/include/asm/pgalloc.h             |  40 +---------
 arch/arm/include/asm/pgalloc.h               |  41 ++++------
 arch/arm/mm/mmu.c                            |   2 +-
 arch/arm64/include/asm/pgalloc.h             |  43 +----------
 arch/arm64/mm/mmu.c                          |   2 +-
 arch/arm64/mm/pgd.c                          |   4 +-
 arch/csky/include/asm/pgalloc.h              |  30 +-------
 arch/hexagon/include/asm/pgalloc.h           |  34 +--------
 arch/m68k/include/asm/sun3_pgalloc.h         |  41 +---------
 arch/mips/include/asm/pgalloc.h              |  33 +--------
 arch/nds32/include/asm/pgalloc.h             |  31 +-------
 arch/nios2/include/asm/pgalloc.h             |  37 +--------
 arch/parisc/include/asm/pgalloc.h            |  33 +--------
 arch/powerpc/include/asm/nohash/64/pgalloc.h |  35 +--------
 arch/riscv/include/asm/pgalloc.h             |  29 +-------
 arch/um/include/asm/pgalloc.h                |  16 +---
 arch/um/kernel/mem.c                         |  22 ------
 arch/unicore32/include/asm/pgalloc.h         |  36 ++-------
 arch/x86/include/asm/pgalloc.h               |  19 +----
 arch/x86/mm/pgtable.c                        |  33 +++------
 include/asm-generic/pgalloc.h                | 107 ++++++++++++++++++++++++++-
 virt/kvm/arm/mmu.c                           |   2 +-
 22 files changed, 171 insertions(+), 499 deletions(-)

-- 
2.7.4


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
