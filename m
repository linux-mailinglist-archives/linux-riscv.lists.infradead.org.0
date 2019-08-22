Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C976198BCA
	for <lists+linux-riscv@lfdr.de>; Thu, 22 Aug 2019 08:56:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kJHgMMCHfulH9VaME+gqizFTF2aT8BBCa2FRP0zYqgU=; b=Neb1+SEleJa1r4
	cufzg9UcB2pdapXR9fqexFSV4z78S1c/jQk/kbBJIqnenVxUKAXxK8wwAkFq1rfuGEyYsvsJzZp8l
	Hm/0Qya/Xi9NT8Vs8H10gnLuN0ihARr/Q9QPf4fJ0pmxlxP44kOMqw6tQwWVsC93ClAn3StJkMQYA
	NYgDZuFRssiFEdE9R9h0Ydg0J+3Y/paUrJ8tYLAlqWY5OqSkTRg5W+3KyqixETQ+ip6DzuV5hMZxp
	8f1+NCyiBj4LPhj0+rRHW/yhC+k0hfupepy3nDJkqh/1NBkoIu6B3y6DHPbL4Z+aafJcz4rmtuOU/
	oEvS3ykPhgdwshHWcjng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0h1D-0008ID-5C; Thu, 22 Aug 2019 06:56:23 +0000
Received: from rap-us.hgst.com ([199.255.44.250] helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1i0h16-0008GU-Rq; Thu, 22 Aug 2019 06:56:17 +0000
From: Christoph Hellwig <hch@lst.de>
To: Palmer Dabbelt <palmer@sifive.com>,
 Paul Walmsley <paul.walmsley@sifive.com>
Subject: [PATCH 1/8] riscv: fix the flags argument type for
 riscv_riscv_flush_icache
Date: Thu, 22 Aug 2019 15:56:05 +0900
Message-Id: <20190822065612.28634-2-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190822065612.28634-1-hch@lst.de>
References: <20190822065612.28634-1-hch@lst.de>
MIME-Version: 1.0
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
Cc: linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

While uinptr_t is identical to unsigned long for all Linux platforms,
defining a flags argument as an uinptr_t doesn't make any sense, so
change it to an unsigned long instead.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 arch/riscv/include/asm/vdso.h | 2 +-
 arch/riscv/kernel/sys_riscv.c | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/riscv/include/asm/vdso.h b/arch/riscv/include/asm/vdso.h
index 7a7fce63c474..a87a9d106220 100644
--- a/arch/riscv/include/asm/vdso.h
+++ b/arch/riscv/include/asm/vdso.h
@@ -27,6 +27,6 @@ struct vdso_data {
 	(void __user *)((unsigned long)(base) + __vdso_##name);			\
 })
 
-asmlinkage long sys_riscv_flush_icache(uintptr_t, uintptr_t, uintptr_t);
+asmlinkage long sys_riscv_flush_icache(uintptr_t, uintptr_t, unsigned long);
 
 #endif /* _ASM_RISCV_VDSO_H */
diff --git a/arch/riscv/kernel/sys_riscv.c b/arch/riscv/kernel/sys_riscv.c
index f3619f59d85c..61f100acbd4c 100644
--- a/arch/riscv/kernel/sys_riscv.c
+++ b/arch/riscv/kernel/sys_riscv.c
@@ -55,7 +55,7 @@ SYSCALL_DEFINE6(mmap2, unsigned long, addr, unsigned long, len,
  * in there for forwards compatibility.
  */
 SYSCALL_DEFINE3(riscv_flush_icache, uintptr_t, start, uintptr_t, end,
-	uintptr_t, flags)
+		unsigned long, flags)
 {
 	/* Check the reserved flags. */
 	if (unlikely(flags & ~SYS_RISCV_FLUSH_ICACHE_ALL))
-- 
2.20.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
