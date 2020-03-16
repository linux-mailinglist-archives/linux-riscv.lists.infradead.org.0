Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2062186292
	for <lists+linux-riscv@lfdr.de>; Mon, 16 Mar 2020 03:39:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GJeQlWvuzgs43FhrGkDV3Sumgdf2CBvqYLxzM+G+Psc=; b=Qzr2kD88/BfRcw
	zoitEw19Asqrr6r6oa7ntG+k4OVJc292zVKBC9b4pL/KPuuUdyBPH1FODzlY2xJfFRGf/4DJJL4ag
	IDWxMQx14ChemRUSTblhUhI8dnSn1gzWHcR1Kh4ErwApSLJQmsDZdwVTNE7HahiGb+qurEyRFVh0P
	fjb/QueKfwYobGGK8+XkUzDdImo1IHoBZwYm1qTmZz7w6KG6Esyp5ZM6NqRBqa0b/2p5C3uSxk1up
	VTyrSqJ99nA/bFvV4DzRagDGx1+Caf/e2Rxn/eHQ3n98zHl2yBRzIjUIr4FSbQs5718CYF/WZUAqE
	6vGkF5FTgINfglui/79g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDfeX-00082b-2P; Mon, 16 Mar 2020 02:38:53 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDfZi-0002Uk-9I
 for linux-riscv@lists.infradead.org; Mon, 16 Mar 2020 02:33:56 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 97ECB20737;
 Mon, 16 Mar 2020 02:33:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584326033;
 bh=uqsP2dN8vW/yN9dmAvxrzeEo6UosA6daNFnTZ48jmfQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=vs4QkR/WUQBMtN13FRaqmXV+gfLLp2LItdjqcaTrvgRVLRjfdz4OuB305wtPeA/c+
 ujbsk4DZN37maJYAxVhUv4gX0DdrcLZ17/V+PbqKptF2Bi2i4Md4V5kj5eU78ZRwZq
 8wXW3RVUGthdGIBZ8tiEmNoOjPLNcxPi4b5Vcjy8=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.5 28/41] riscv: avoid the PIC offset of static
 percpu data in module beyond 2G limits
Date: Sun, 15 Mar 2020 22:33:06 -0400
Message-Id: <20200316023319.749-28-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200316023319.749-1-sashal@kernel.org>
References: <20200316023319.749-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200315_193354_509151_10CA021A 
X-CRM114-Status: GOOD (  11.71  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Sasha Levin <sashal@kernel.org>, Carlos de Paula <me@carlosedp.com>,
 Alexandre Ghiti <alex@ghiti.fr>, Anup Patel <anup@brainfault.org>,
 Palmer Dabbelt <palmerdabbelt@google.com>,
 Vincent Chen <vincent.chen@sifive.com>, linux-riscv@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

From: Vincent Chen <vincent.chen@sifive.com>

[ Upstream commit 0cff8bff7af886af0923d5c91776cd51603e531f ]

The compiler uses the PIC-relative method to access static variables
instead of GOT when the code model is PIC. Therefore, the limitation of
the access range from the instruction to the symbol address is +-2GB.
Under this circumstance, the kernel cannot load a kernel module if this
module has static per-CPU symbols declared by DEFINE_PER_CPU(). The reason
is that kernel relocates the .data..percpu section of the kernel module to
the end of kernel's .data..percpu. Hence, the distance between the per-CPU
symbols and the instruction will exceed the 2GB limits. To solve this
problem, the kernel should place the loaded module in the memory area
[&_end-2G, VMALLOC_END].

Signed-off-by: Vincent Chen <vincent.chen@sifive.com>
Suggested-by: Alexandre Ghiti <alex@ghiti.fr>
Suggested-by: Anup Patel <anup@brainfault.org>
Tested-by: Alexandre Ghiti <alex@ghiti.fr>
Tested-by: Carlos de Paula <me@carlosedp.com>
Signed-off-by: Palmer Dabbelt <palmerdabbelt@google.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/riscv/kernel/module.c | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/arch/riscv/kernel/module.c b/arch/riscv/kernel/module.c
index b7401858d872f..8bbe5dbe1341b 100644
--- a/arch/riscv/kernel/module.c
+++ b/arch/riscv/kernel/module.c
@@ -8,6 +8,10 @@
 #include <linux/err.h>
 #include <linux/errno.h>
 #include <linux/moduleloader.h>
+#include <linux/vmalloc.h>
+#include <linux/sizes.h>
+#include <asm/pgtable.h>
+#include <asm/sections.h>
 
 static int apply_r_riscv_32_rela(struct module *me, u32 *location, Elf_Addr v)
 {
@@ -386,3 +390,15 @@ int apply_relocate_add(Elf_Shdr *sechdrs, const char *strtab,
 
 	return 0;
 }
+
+#if defined(CONFIG_MMU) && defined(CONFIG_64BIT)
+#define VMALLOC_MODULE_START \
+	 max(PFN_ALIGN((unsigned long)&_end - SZ_2G), VMALLOC_START)
+void *module_alloc(unsigned long size)
+{
+	return __vmalloc_node_range(size, 1, VMALLOC_MODULE_START,
+				    VMALLOC_END, GFP_KERNEL,
+				    PAGE_KERNEL_EXEC, 0, NUMA_NO_NODE,
+				    __builtin_return_address(0));
+}
+#endif
-- 
2.20.1


