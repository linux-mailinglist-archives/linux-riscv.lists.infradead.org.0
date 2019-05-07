Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 139B715E4F
	for <lists+linux-riscv@lfdr.de>; Tue,  7 May 2019 09:36:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=w4P+BYmGg4WLQxU7y5x7iNJshs7x/8LnG/qIXZtOLP0=; b=i1PrLPqtIIqzQT
	SLDYLPSPJlqdkqkudloINRbrrQlzcNR8PLERyf62gOuAzuRXDtqqzWHiQpQDihPvMbcnueXnXqKDS
	AXrRTy2cIi0bJxfRVlieAjdKr7/71/4kuZJgthyzZOpSwViGX3VRiMtCDyAGBzq6wPd39GD+bZBUT
	VEIr0+i4PiCJU9uSGlCpZXroK9Y1hFQ5RWqsCvr7v7qW2P1sN90Wc2Q50syo/J09/oRZI6oHFQDKD
	+4G38AWquiLlDZnYdfnBqg8Koq9QDeAumlcqN7Dg7QpLBRfVjjwuZ2HDpbQ4YgpblcP4GKqhv5DL+
	XW3fQvWHYUEmZkQDNy6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNuej-0000T9-AK; Tue, 07 May 2019 07:36:53 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNuef-0000SR-J1
 for linux-riscv@lists.infradead.org; Tue, 07 May 2019 07:36:50 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 83F24AD17;
 Tue,  7 May 2019 07:36:46 +0000 (UTC)
From: Andreas Schwab <schwab@suse.de>
To: linux-riscv@lists.infradead.org
Subject: [PATCH] riscv: fix locking violation in page fault handler
X-Yow: I'm rated PG-34!!
Date: Tue, 07 May 2019 09:36:46 +0200
Message-ID: <mvm5zqmu35d.fsf@suse.de>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.2 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_003649_766304_5881E3C7 
X-CRM114-Status: GOOD (  11.10  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
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
Cc: linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

When a user mode process accesses an address in the vmalloc area
do_page_fault tries to unlock the mmap semaphore when it isn't locked.

Signed-off-by: Andreas Schwab <schwab@suse.de>
---
 arch/riscv/mm/fault.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/riscv/mm/fault.c b/arch/riscv/mm/fault.c
index 88401d5125bc..c51878e5a66a 100644
--- a/arch/riscv/mm/fault.c
+++ b/arch/riscv/mm/fault.c
@@ -181,6 +181,7 @@ asmlinkage void do_page_fault(struct pt_regs *regs)
 	up_read(&mm->mmap_sem);
 	/* User mode accesses just cause a SIGSEGV */
 	if (user_mode(regs)) {
+bad_area_do_trap:
 		do_trap(regs, SIGSEGV, code, addr, tsk);
 		return;
 	}
@@ -230,7 +231,7 @@ asmlinkage void do_page_fault(struct pt_regs *regs)
 		int index;
 
 		if (user_mode(regs))
-			goto bad_area;
+			goto bad_area_do_trap;
 
 		/*
 		 * Synchronize this task's top level page-table
-- 
2.21.0


-- 
Andreas Schwab, SUSE Labs, schwab@suse.de
GPG Key fingerprint = 0196 BAD8 1CE9 1970 F4BE  1748 E4D4 88E3 0EEA B9D7
"And now for something completely different."

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
