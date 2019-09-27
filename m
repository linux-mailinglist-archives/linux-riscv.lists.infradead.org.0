Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F508C0E43
	for <lists+linux-riscv@lfdr.de>; Sat, 28 Sep 2019 01:14:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=sKaDPoPSH2b9/MRuoMS1pOuGYNZP06gWUhpqXdHLUZI=; b=ro0rvO4dHuSjrh
	AiDBR/JkEYekUneLIL8n0LnoBk4AOE3MR3Il8pLgwqKHXReqDeO2CN4tO7LQ+u0SW/S/qah3WRVWv
	rdl6B2nL3vH1YZ4DBNyfrpw458m4TEp1JCAEkwMj3mGP8DDC7H0hc2jDUap/AMwc8RHYUT9QhTArb
	bVo/gPwYnnrqjhthAUI/ILQEnpY4EnoLBPCX0KY3QdjdxQomwoMqo1DjqXqQJec6oUCewrAt9xrMU
	d5c/22UwhNQDpk+50QCb6kLuj7/yKMJgys0qtfVRt/JXzLfo6E03UsUJkNJ4dWhS7sExOCzfbO0f7
	M0eCcqL8wwWKopDWBKSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDzRU-0003mN-Gz; Fri, 27 Sep 2019 23:14:28 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDzRN-0003ky-5t
 for linux-riscv@lists.infradead.org; Fri, 27 Sep 2019 23:14:25 +0000
Received: by mail-pf1-x443.google.com with SMTP id q10so2381848pfl.0
 for <linux-riscv@lists.infradead.org>; Fri, 27 Sep 2019 16:14:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=eecs-berkeley-edu.20150623.gappssmtp.com; s=20150623;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=AEwk+pfvJ/NxQE7TT/NJtc+kVH/rLevBvSCqqrAMyVE=;
 b=JsqAIGyLbB++dlViOxeZEZ0CAY7JyQFOukRDuHPKLwbtNbAmwGJmbnwkGGKpfgzpX3
 J6r72HB/CdzxXQwWgTJUH45KTh6KQ4Z0ZLfnScmVRC88cWhbBTjjKMqJXdAJ6vP+08Cs
 /nFClCIrJfjMG3amrzXy5LMk2MygAu4VFss1Ex/qplh++AaEyGXY7VV8S5UWgblnafdS
 3e5hvL33JMZfZfc2eiU1SrPcitjBEsMPIbRHj7Q2Nl9/t08IZI4OeFEReF0vGOm6LJGr
 S48kTQfoUcyt+1qAidVsY0xf51M4EF6nZ+toF4iZ8RtjUAyVGqfp5+GIIh3PBQAo2+CI
 GMOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=AEwk+pfvJ/NxQE7TT/NJtc+kVH/rLevBvSCqqrAMyVE=;
 b=oHgEF4Bayl+U1tw9IS9ossqXRxQieSREkUhx3L6mnVev6T/9oWfs11GrOhQO3Dx7ch
 uWJmUDCBtQgTlA2YcXkeII2Z7FAgQPWVi8nbw/pgGKsyQ8ABxS26Ap1tjb5Y38MXpwHU
 rJj4MKfxlt1O4Nz7jZhzAwCtpW40JEJygDfJgAVjTyYaT7ee9Iy7Lh1xSVZcHrsZ2qQX
 0cxiUOrkDVn3iDkXcklvY4w7OssdPH82yI3DOmaDEPATs7NgUQoq/WZCqF3m7mv31VRx
 C/o6W3La37txLrAYw2wXR+quOJCaifw8r1qcbzxUuHDWg9aQimP3XvEa2H15wr+M7D7E
 c/WA==
X-Gm-Message-State: APjAAAXex0CFfNoOnP13M4yGO2WuvYRR3vMA9mCrtk2PgS24Rxf19lwI
 x8Us1Q3XNnHmrtJ+lDDIZfAGnA==
X-Google-Smtp-Source: APXvYqz9yLvhSzccmdirQ0d3XuCrrfRXNj0FSEkBIC3bBTSso3EbUy7y4kg8LSEtYklZzqQpMPfavg==
X-Received: by 2002:a17:90b:294:: with SMTP id
 az20mr13215491pjb.16.1569626059318; 
 Fri, 27 Sep 2019 16:14:19 -0700 (PDT)
Received: from localhost (dhcp-35-38.EECS.Berkeley.EDU. [128.32.35.38])
 by smtp.gmail.com with ESMTPSA id o195sm5104208pfg.21.2019.09.27.16.14.18
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 27 Sep 2019 16:14:18 -0700 (PDT)
From: Albert Ou <aou@eecs.berkeley.edu>
To: Palmer Dabbelt <palmer@sifive.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, Anup Patel <Anup.Patel@wdc.com>,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2] riscv: Fix memblock reservation for device tree blob
Date: Fri, 27 Sep 2019 16:14:18 -0700
Message-Id: <20190927231418.83100-1-aou@eecs.berkeley.edu>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190927_161421_290322_B8C257C3 
X-CRM114-Status: GOOD (  14.19  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

This fixes an error with how the FDT blob is reserved in memblock.
An incorrect physical address calculation exposed the FDT header to
unintended corruption, which typically manifested with of_fdt_raw_init()
faulting during late boot after fdt_totalsize() returned a wrong value.
Systems with smaller physical memory sizes more frequently trigger this
issue, as the kernel is more likely to allocate from the DMA32 zone
where bbl places the DTB after the kernel image.

Commit 671f9a3e2e24 ("RISC-V: Setup initial page tables in two stages")
changed the mapping of the DTB to reside in the fixmap area.
Consequently, early_init_fdt_reserve_self() cannot be used anymore in
setup_bootmem() since it relies on __pa() to derive a physical address,
which does not work with dtb_early_va that is no longer a valid kernel
logical address.

The reserved[0x1] region shows the effect of the pointer underflow
resulting from the __pa(initial_boot_params) offset subtraction:

[    0.000000] MEMBLOCK configuration:
[    0.000000]  memory size = 0x000000001fe00000 reserved size = 0x0000000000a2e514
[    0.000000]  memory.cnt  = 0x1
[    0.000000]  memory[0x0]     [0x0000000080200000-0x000000009fffffff], 0x000000001fe00000 bytes flags: 0x0
[    0.000000]  reserved.cnt  = 0x2
[    0.000000]  reserved[0x0]   [0x0000000080200000-0x0000000080c2dfeb], 0x0000000000a2dfec bytes flags: 0x0
[    0.000000]  reserved[0x1]   [0xfffffff080100000-0xfffffff080100527], 0x0000000000000528 bytes flags: 0x0

With the fix applied:

[    0.000000] MEMBLOCK configuration:
[    0.000000]  memory size = 0x000000001fe00000 reserved size = 0x0000000000a2e514
[    0.000000]  memory.cnt  = 0x1
[    0.000000]  memory[0x0]     [0x0000000080200000-0x000000009fffffff], 0x000000001fe00000 bytes flags: 0x0
[    0.000000]  reserved.cnt  = 0x2
[    0.000000]  reserved[0x0]   [0x0000000080200000-0x0000000080c2dfeb], 0x0000000000a2dfec bytes flags: 0x0
[    0.000000]  reserved[0x1]   [0x0000000080e00000-0x0000000080e00527], 0x0000000000000528 bytes flags: 0x0

Fixes: 671f9a3e2e24 ("RISC-V: Setup initial page tables in two stages")
Signed-off-by: Albert Ou <aou@eecs.berkeley.edu>
---

Changes in v2:
* Changed variable identifier to dtb_early_pa per reviewer feedback.
* Removed whitespace change.

 arch/riscv/mm/init.c | 12 +++++++++++-
 1 file changed, 11 insertions(+), 1 deletion(-)

diff --git a/arch/riscv/mm/init.c b/arch/riscv/mm/init.c
index f0ba713..83f7d12 100644
--- a/arch/riscv/mm/init.c
+++ b/arch/riscv/mm/init.c
@@ -11,6 +11,7 @@
 #include <linux/swap.h>
 #include <linux/sizes.h>
 #include <linux/of_fdt.h>
+#include <linux/libfdt.h>
 
 #include <asm/fixmap.h>
 #include <asm/tlbflush.h>
@@ -82,6 +83,8 @@ static void __init setup_initrd(void)
 }
 #endif /* CONFIG_BLK_DEV_INITRD */
 
+static phys_addr_t dtb_early_pa __initdata;
+
 void __init setup_bootmem(void)
 {
 	struct memblock_region *reg;
@@ -117,7 +120,12 @@ void __init setup_bootmem(void)
 	setup_initrd();
 #endif /* CONFIG_BLK_DEV_INITRD */
 
-	early_init_fdt_reserve_self();
+	/*
+	 * Avoid using early_init_fdt_reserve_self() since __pa() does
+	 * not work for DTB pointers that are fixmap addresses
+	 */
+	memblock_reserve(dtb_early_pa, fdt_totalsize(dtb_early_va));
+
 	early_init_fdt_scan_reserved_mem();
 	memblock_allow_resize();
 	memblock_dump_all();
@@ -393,6 +401,8 @@ asmlinkage void __init setup_vm(uintptr_t dtb_pa)
 
 	/* Save pointer to DTB for early FDT parsing */
 	dtb_early_va = (void *)fix_to_virt(FIX_FDT) + (dtb_pa & ~PAGE_MASK);
+	/* Save physical address for memblock reservation */
+	dtb_early_pa = dtb_pa;
 }
 
 static void __init setup_vm_final(void)
-- 
2.7.4


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
