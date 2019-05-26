Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E2F32AA1D
	for <lists+linux-riscv@lfdr.de>; Sun, 26 May 2019 16:00:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GDhaz+YFZy0z1HncxdfYTV6tbt7vFDl33ALd6u40BsM=; b=gtbIC9P+nGKWqY
	RpgoGsQsyvVDrYwO3Q6R+HsjzCcRjVxuUWGpyDStWVcQAeRZoh6ZZjn0xWrYPocjIjY2G0U0I3dRe
	iyV2gLSbapFDXQ9FBJ9GRufXoaw9TBbUBJSR2K6flEZ227oIlFDZgN/mwBiYXvCeNh3ctq2XdtEI7
	nMxJAJffdao566G1i6fTKS7K2SolpDXKYBW3eu5RjRdVfSartT1UGj5/XyLWoNuu8wGooMAvvhBTG
	15nK2xzvmisDmaHRpR/hbS8Kh2d17yc1LgmlvWfNsww6ZRnbYy/Wj4hZBL0BubacorMhRRAm2qC/P
	pt5t2pzkrGhUZsSb19Hg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUthQ-0002YZ-Rh; Sun, 26 May 2019 14:00:32 +0000
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUthG-0002RA-6D; Sun, 26 May 2019 14:00:23 +0000
X-Originating-IP: 79.86.19.127
Received: from alex.numericable.fr (127.19.86.79.rev.sfr.net [79.86.19.127])
 (Authenticated sender: alex@ghiti.fr)
 by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id 1A2206000A;
 Sun, 26 May 2019 14:00:15 +0000 (UTC)
From: Alexandre Ghiti <alex@ghiti.fr>
To: Andrew Morton <akpm@linux-foundation.org>
Subject: [PATCH v4 11/14] mips: Adjust brk randomization offset to fit generic
 version
Date: Sun, 26 May 2019 09:47:43 -0400
Message-Id: <20190526134746.9315-12-alex@ghiti.fr>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190526134746.9315-1-alex@ghiti.fr>
References: <20190526134746.9315-1-alex@ghiti.fr>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190526_070022_381380_69A306A9 
X-CRM114-Status: GOOD (  10.64  )
X-Spam-Score: -1.1 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.195 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.4 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.195 listed in wl.mailspike.net]
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Kees Cook <keescook@chromium.org>,
 Alexandre Ghiti <alex@ghiti.fr>, Catalin Marinas <catalin.marinas@arm.com>,
 Palmer Dabbelt <palmer@sifive.com>, Will Deacon <will.deacon@arm.com>,
 Russell King <linux@armlinux.org.uk>, Ralf Baechle <ralf@linux-mips.org>,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 Paul Burton <paul.burton@mips.com>, Alexander Viro <viro@zeniv.linux.org.uk>,
 James Hogan <jhogan@kernel.org>, linux-fsdevel@vger.kernel.org,
 linux-riscv@lists.infradead.org, linux-mips@vger.kernel.org,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org,
 Luis Chamberlain <mcgrof@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

This commit simply bumps up to 32MB and 1GB the random offset
of brk, compared to 8MB and 256MB, for 32bit and 64bit respectively.

Suggested-by: Kees Cook <keescook@chromium.org>
Signed-off-by: Alexandre Ghiti <alex@ghiti.fr>
---
 arch/mips/mm/mmap.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/arch/mips/mm/mmap.c b/arch/mips/mm/mmap.c
index ffbe69f3a7d9..c052565b76fb 100644
--- a/arch/mips/mm/mmap.c
+++ b/arch/mips/mm/mmap.c
@@ -16,6 +16,7 @@
 #include <linux/random.h>
 #include <linux/sched/signal.h>
 #include <linux/sched/mm.h>
+#include <linux/sizes.h>
 
 unsigned long shm_align_mask = PAGE_SIZE - 1;	/* Sane caches */
 EXPORT_SYMBOL(shm_align_mask);
@@ -189,11 +190,11 @@ static inline unsigned long brk_rnd(void)
 	unsigned long rnd = get_random_long();
 
 	rnd = rnd << PAGE_SHIFT;
-	/* 8MB for 32bit, 256MB for 64bit */
+	/* 32MB for 32bit, 1GB for 64bit */
 	if (TASK_IS_32BIT_ADDR)
-		rnd = rnd & 0x7ffffful;
+		rnd = rnd & SZ_32M;
 	else
-		rnd = rnd & 0xffffffful;
+		rnd = rnd & SZ_1G;
 
 	return rnd;
 }
-- 
2.20.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
