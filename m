Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A86F727D7
	for <lists+linux-riscv@lfdr.de>; Wed, 24 Jul 2019 08:06:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+Oupy3zFsrdbmZBmvw/1UgoA+apWaJuWCMurQzu0qR4=; b=lt09B6Ek4rhhs1
	TjVDRBPGS4AlUJ2P5WWxO63G6WQaXzuSJnIZ2YXKKHKfyDiL8ZvKMAnrepMTdo8mgL7/bYVoIui5A
	bPnLG4zgg/cS2d3/ojwZw22lcze2BeIl0nHJRu6yd6xH6yn+dylzTfsJNVjIWFVCtPb+HlFXzk+h8
	4JTjTIwOOTQT2Z2vz9kGCEcVT8GiBMOD3k1w4HGGJh7Kc9LT1lyPDxg0reWoiqEgvMHE+yOZg9oyJ
	6szJuUAQL5XLBcS9kC/12n+UGsCjuZ/QlJ41UliMS98cDkIwcwF9etB3zJwHZuYOWtmDb5i0QjvG0
	SH9ucnHBgkI+e0WpT9Nw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqAPX-00081G-1l; Wed, 24 Jul 2019 06:05:59 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqAPD-0007dw-16; Wed, 24 Jul 2019 06:05:40 +0000
X-Originating-IP: 79.86.19.127
Received: from alex.numericable.fr (127.19.86.79.rev.sfr.net [79.86.19.127])
 (Authenticated sender: alex@ghiti.fr)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 7E8472000C;
 Wed, 24 Jul 2019 06:05:32 +0000 (UTC)
From: Alexandre Ghiti <alex@ghiti.fr>
To: Andrew Morton <akpm@linux-foundation.org>
Subject: [PATCH REBASE v4 06/14] arm: Properly account for stack randomization
 and stack guard gap
Date: Wed, 24 Jul 2019 01:58:42 -0400
Message-Id: <20190724055850.6232-7-alex@ghiti.fr>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190724055850.6232-1-alex@ghiti.fr>
References: <20190724055850.6232-1-alex@ghiti.fr>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_230539_226595_FDF9A8D3 
X-CRM114-Status: GOOD (  10.72  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.200 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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

This commit takes care of stack randomization and stack guard gap when
computing mmap base address and checks if the task asked for randomization.
This fixes the problem uncovered and not fixed for arm here:
https://lkml.kernel.org/r/20170622200033.25714-1-riel@redhat.com

Signed-off-by: Alexandre Ghiti <alex@ghiti.fr>
Acked-by: Kees Cook <keescook@chromium.org>
---
 arch/arm/mm/mmap.c | 14 ++++++++++++--
 1 file changed, 12 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mm/mmap.c b/arch/arm/mm/mmap.c
index f866870db749..bff3d00bda5b 100644
--- a/arch/arm/mm/mmap.c
+++ b/arch/arm/mm/mmap.c
@@ -18,8 +18,9 @@
 	 (((pgoff)<<PAGE_SHIFT) & (SHMLBA-1)))
 
 /* gap between mmap and stack */
-#define MIN_GAP (128*1024*1024UL)
-#define MAX_GAP ((TASK_SIZE)/6*5)
+#define MIN_GAP		(128*1024*1024UL)
+#define MAX_GAP		((TASK_SIZE)/6*5)
+#define STACK_RND_MASK	(0x7ff >> (PAGE_SHIFT - 12))
 
 static int mmap_is_legacy(struct rlimit *rlim_stack)
 {
@@ -35,6 +36,15 @@ static int mmap_is_legacy(struct rlimit *rlim_stack)
 static unsigned long mmap_base(unsigned long rnd, struct rlimit *rlim_stack)
 {
 	unsigned long gap = rlim_stack->rlim_cur;
+	unsigned long pad = stack_guard_gap;
+
+	/* Account for stack randomization if necessary */
+	if (current->flags & PF_RANDOMIZE)
+		pad += (STACK_RND_MASK << PAGE_SHIFT);
+
+	/* Values close to RLIM_INFINITY can overflow. */
+	if (gap + pad > gap)
+		gap += pad;
 
 	if (gap < MIN_GAP)
 		gap = MIN_GAP;
-- 
2.20.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
