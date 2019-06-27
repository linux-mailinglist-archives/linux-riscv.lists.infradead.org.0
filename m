Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80EB257C5C
	for <lists+linux-riscv@lfdr.de>; Thu, 27 Jun 2019 08:44:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=SUKe2s1FLKLWD3h5TTAuN3/IWImuONyWWLjh3INLyGE=; b=k6RbRXNT4tCu3D
	C9IA2N8O9fKW2aGmBwJ6fiAT2M8+hQPE0QZPDoE71uInsh7+J7gixTCwC736lpktbIIQ7qHeGVxfi
	pRgAJv0e+qWM4/ALO4uqZfs96ox7ndfkHBKiKior3rT4XZ3sEpbNw4+b1CBX/m6LEDHwzPnVjn99O
	/ID7jpZlH0a/w3GsMBrF80gdK4Wf5067xnfyI+8CFWUCBrLNVxGM3w21nv7Wh2eSV3IrL/qplJ839
	OgnCNKUybUuziLiUzRgrtRcIEJ175iFmFAzP8qtE1Sv3ucJ754fpfEMupAVYeZFtbFDa8kKs38ez8
	BxCmncpVkTJCbI+6FKkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgO93-00077i-P1; Thu, 27 Jun 2019 06:44:33 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgO83-0006KM-5f
 for linux-riscv@bombadil.infradead.org; Thu, 27 Jun 2019 06:43:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:MIME-Version:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=OqQio5SkalDs3TzrE767eUg//ZrNCITQGL3nEQjuWgM=; b=BGq7Q0RMqheNaJsjFnI1KsSD8u
 HcVn5bsLP527Hj0fduKtPlhVqtOhj8ySPo1JjbMRPT+VUkOekF4eNLAkWnaxmEEs2oHFwEN4XJ+uI
 c++6iTR5qKH6+XB9pkHe0xAIS5mpt2wgyh5f6CbltozcRS3HagdRxcHBOnHFrCeFNnmHIRMl9JnwU
 MdgXsiiBIG20GhyFrrDSCF07IUgEQAr3RJcms7laBUSSp8h5GS6ggftHFbAINeCqsKk8OuuRS8oOn
 k/szOiNHfH8ytCDPxDsjWqm8ZmLL6aZgqPO+h+ID480kjWmjP+b6BQZ67O4O78KYvgVhoqzQC0iKG
 NPBYEgew==;
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgMIn-0006co-Ur
 for linux-riscv@lists.infradead.org; Thu, 27 Jun 2019 04:46:31 +0000
Received: from localhost (c-67-180-165-146.hsd1.ca.comcast.net
 [67.180.165.146])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 73C7421855;
 Thu, 27 Jun 2019 04:46:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561610786;
 bh=6vzbfhIZQItZusxbZ3B57FOIszhglW9mEe2rAHhF5WM=;
 h=From:To:Cc:Subject:Date:From;
 b=fAqrKeDD6m3OuCXa06TjEPKMTd3nBbvFSLBNgp8BK3LRGdkZrn/QAGhK9wUuM6QHU
 JLkYUtA+5Dkw2HqEtkzHGSlXADBsgBew5H3RrF7NZik1mL8rs4WIBwaH/0cOkqQ/Yz
 R8IMmQHPQWAijAv1G9zOUYktvvX4XfU58+MPJAng=
From: Andy Lutomirski <luto@kernel.org>
To: LKML <linux-kernel@vger.kernel.org>
Subject: [PATCH] riscv: Remove gate area stubs
Date: Wed, 26 Jun 2019 21:46:18 -0700
Message-Id: <d7f5a3b26eb4f7a41a24baf89ad70b3f37894a6e.1561610736.git.luto@kernel.org>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Florian Weimer <fweimer@redhat.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Kees Cook <keescook@chromium.org>, Jann Horn <jannh@google.com>,
 x86@kernel.org, Palmer Dabbelt <palmer@dabbelt.com>,
 Andy Lutomirski <luto@kernel.org>, linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Since commit a6c19dfe3994 ("arm64,ia64,ppc,s390,sh,tile,um,x86,mm:
remove default gate area"), which predates riscv's inclusion in
Linux by almost three years, the default behavior wrt the gate area
is sane.  Remove riscv's gate area stubs.

Cc: Palmer Dabbelt <palmer@dabbelt.com>
Cc: Albert Ou <aou@eecs.berkeley.edu>
Cc: linux-riscv@lists.infradead.org
Signed-off-by: Andy Lutomirski <luto@kernel.org>
---
 arch/riscv/include/asm/page.h |  4 ----
 arch/riscv/kernel/vdso.c      | 19 -------------------
 2 files changed, 23 deletions(-)

diff --git a/arch/riscv/include/asm/page.h b/arch/riscv/include/asm/page.h
index 8ddb6c7fedac..d3e5f6c0c21a 100644
--- a/arch/riscv/include/asm/page.h
+++ b/arch/riscv/include/asm/page.h
@@ -115,8 +115,4 @@ extern unsigned long min_low_pfn;
 #include <asm-generic/memory_model.h>
 #include <asm-generic/getorder.h>
 
-/* vDSO support */
-/* We do define AT_SYSINFO_EHDR but don't use the gate mechanism */
-#define __HAVE_ARCH_GATE_AREA
-
 #endif /* _ASM_RISCV_PAGE_H */
diff --git a/arch/riscv/kernel/vdso.c b/arch/riscv/kernel/vdso.c
index a0084c36d270..c9c21e0d5641 100644
--- a/arch/riscv/kernel/vdso.c
+++ b/arch/riscv/kernel/vdso.c
@@ -92,22 +92,3 @@ const char *arch_vma_name(struct vm_area_struct *vma)
 		return "[vdso]";
 	return NULL;
 }
-
-/*
- * Function stubs to prevent linker errors when AT_SYSINFO_EHDR is defined
- */
-
-int in_gate_area_no_mm(unsigned long addr)
-{
-	return 0;
-}
-
-int in_gate_area(struct mm_struct *mm, unsigned long addr)
-{
-	return 0;
-}
-
-struct vm_area_struct *get_gate_vma(struct mm_struct *mm)
-{
-	return NULL;
-}
-- 
2.21.0


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
