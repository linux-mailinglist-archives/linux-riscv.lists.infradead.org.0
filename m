Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C2855023E
	for <lists+linux-riscv@lfdr.de>; Mon, 24 Jun 2019 08:25:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:From:To:
	Subject:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ORPqcXVhfTKupdxf8cqzghRiynRkgOYoLDKAdBNH90o=; b=TQqA3f3dOIntiZ
	ZqBd96dC7PNyEVoR0K8925fbjRqo+plFmTh0wG+xDHfVWTlpzOa8u0vXGIu3YcB/Tb//ZDeRr26mA
	gn5DnuWADTJssh/Qxph00b2CQP0dTJ4IZU8umwmabON6yGqi3lEvzw5cpa6miez1YDX/xRuGg3IYg
	0hPudmE2450EfGuDp/lkv6sdkQDFBfPtM9fh3TQXdzo+ynhVC/ye0B6/5xOudLl+PvlxDXHWNBL1K
	ImCrV0G11CAyatzG1XpRGVuN8dTJ3dW2cucomZH2ZlEhs17MZ9/zkFHaofyMcy+QpNvbXBs6Wxl8p
	YM55ic8d7qkl+rrL4LQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfIQL-0004gO-Ky; Mon, 24 Jun 2019 06:25:54 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfIQF-0004fR-Mx
 for linux-riscv@lists.infradead.org; Mon, 24 Jun 2019 06:25:49 +0000
Received: from localhost (unknown [116.247.127.123])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B14DC21655;
 Mon, 24 Jun 2019 06:25:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561357547;
 bh=U2OnTu5Pqo6U7vuk+TJ/sa1sv7KyRA5heOMHaaChH0Q=;
 h=Subject:To:Cc:From:Date:From;
 b=qWxKavgyk3fuwomQ2QMQO6S0hNHNr1bkUF/1gLmoun+7X/m9k1IVHeGXDgg9nlHm5
 CurLFr7WjmFsudR9GygF3eAyj7Ptk4b0Fa5I2CSIc0Gb9wtFPoKpgO4D6M6VNrh/tg
 u0nNYyy4ZDuhwalL+4TEHcf7iG89CURwkn07iJUM=
Subject: Patch "riscv: mm: synchronize MMU after pte change" has been added to
 the 5.1-stable tree
To: aou@eecs.berkeley.edu, gregkh@linuxfoundation.org,
 linux-riscv@lists.infradead.org, palmer@sifive.com, paul.walmsley@sifive.com,
 shihpo.hung@sifive.com
From: <gregkh@linuxfoundation.org>
Date: Sun, 23 Jun 2019 22:35:26 +0200
Message-ID: <15613221268152@kroah.com>
MIME-Version: 1.0
X-stable: commit
X-Patchwork-Hint: ignore 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190623_232547_783157_F18A731F 
X-CRM114-Status: GOOD (  10.09  )
X-Spam-Score: -1.4 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.1 DATE_IN_PAST_06_12     Date: is 6 to 12 hours before Received: date
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: stable-commits@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org


This is a note to let you know that I've just added the patch titled

    riscv: mm: synchronize MMU after pte change

to the 5.1-stable tree which can be found at:
    http://www.kernel.org/git/?p=linux/kernel/git/stable/stable-queue.git;a=summary

The filename of the patch is:
     riscv-mm-synchronize-mmu-after-pte-change.patch
and it can be found in the queue-5.1 subdirectory.

If you, or anyone else, feels it should not be added to the stable tree,
please let <stable@vger.kernel.org> know about it.


From bf587caae305ae3b4393077fb22c98478ee55755 Mon Sep 17 00:00:00 2001
From: ShihPo Hung <shihpo.hung@sifive.com>
Date: Mon, 17 Jun 2019 12:26:17 +0800
Subject: riscv: mm: synchronize MMU after pte change

From: ShihPo Hung <shihpo.hung@sifive.com>

commit bf587caae305ae3b4393077fb22c98478ee55755 upstream.

Because RISC-V compliant implementations can cache invalid entries
in TLB, an SFENCE.VMA is necessary after changes to the page table.
This patch adds an SFENCE.vma for the vmalloc_fault path.

Signed-off-by: ShihPo Hung <shihpo.hung@sifive.com>
[paul.walmsley@sifive.com: reversed tab->whitespace conversion,
 wrapped comment lines]
Signed-off-by: Paul Walmsley <paul.walmsley@sifive.com>
Cc: Palmer Dabbelt <palmer@sifive.com>
Cc: Albert Ou <aou@eecs.berkeley.edu>
Cc: Paul Walmsley <paul.walmsley@sifive.com>
Cc: linux-riscv@lists.infradead.org
Cc: stable@vger.kernel.org
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

---
 arch/riscv/mm/fault.c |   13 +++++++++++++
 1 file changed, 13 insertions(+)

--- a/arch/riscv/mm/fault.c
+++ b/arch/riscv/mm/fault.c
@@ -29,6 +29,7 @@
 
 #include <asm/pgalloc.h>
 #include <asm/ptrace.h>
+#include <asm/tlbflush.h>
 
 /*
  * This routine handles page faults.  It determines the address and the
@@ -281,6 +282,18 @@ vmalloc_fault:
 		pte_k = pte_offset_kernel(pmd_k, addr);
 		if (!pte_present(*pte_k))
 			goto no_context;
+
+		/*
+		 * The kernel assumes that TLBs don't cache invalid
+		 * entries, but in RISC-V, SFENCE.VMA specifies an
+		 * ordering constraint, not a cache flush; it is
+		 * necessary even after writing invalid entries.
+		 * Relying on flush_tlb_fix_spurious_fault would
+		 * suffice, but the extra traps reduce
+		 * performance. So, eagerly SFENCE.VMA.
+		 */
+		local_flush_tlb_page(addr);
+
 		return;
 	}
 }


Patches currently in stable-queue which might be from shihpo.hung@sifive.com are

queue-5.1/riscv-mm-synchronize-mmu-after-pte-change.patch

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
