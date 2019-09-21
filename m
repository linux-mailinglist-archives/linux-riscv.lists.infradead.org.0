Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97A0EB9BC1
	for <lists+linux-riscv@lfdr.de>; Sat, 21 Sep 2019 03:00:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jv4/COig1yWB6OEvGRFLu24zA+CKILfgiHJCy9d9X0M=; b=tB/Ovx31u34R5v
	I6J4MhEosndvI650MFsItR7gyMbnw+55BF9NhQ3R6oTJeLFz85Gpq38EO5//pm/ZqN/x+Xa7wkZL9
	QuuA7y5KGTYaGbt+eayK3Fjv0pRLSlsV/B4zx9OoK5Ggcxw79M5CY58s0eY5QZ34W520hFV8B5gds
	LSZMGiqxEpxeuo12rZsZd3RH+84ZxuZqZgoIbnBm9LjIJly9uj+OmPKPXieb/YJaLM5K4oRYRqAst
	t5F80SipNXyBG22nqm4VVh6GYWi4AYHNhu1nWXTm0p0jd/YV0PEvcuimz3JuD2FYPoPVgEQ/T/elp
	YFMvhjJCUw6sl1NlPBGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBTkz-0002Wr-FY; Sat, 21 Sep 2019 01:00:13 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBTku-0001Hv-2U
 for linux-riscv@lists.infradead.org; Sat, 21 Sep 2019 01:00:11 +0000
Received: by mail-pf1-x444.google.com with SMTP id q12so5667615pff.9
 for <linux-riscv@lists.infradead.org>; Fri, 20 Sep 2019 18:00:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=eecs-berkeley-edu.20150623.gappssmtp.com; s=20150623;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=akrFEhXOEhjjNsFA2n/lMwPsnj11zAdFvp8IXUT8xe4=;
 b=TWPxe23oSrRfaWMw7X3pg1d8S7BsqmV/cTrGYIVKKy5TYTrmNuWtFFzhialiNBvIt8
 wO9LR4ked246/nnwkOvzHi4lcErObALKlZLBKByeG/4O02vWKT6nRi0/zuMA2Q/ZDzPA
 SefiLs0FA6an72vmJWbPKrFUP+oi8MAfrWC3WywJyoQqjExxzAE5ojSsQwpD3HylDKDJ
 WZsDeG5ZILOxFHJ0tyIcd/k2G9Qd1gOAG03dDmhvqGrN1R8QSuWvoUFtFnBLW6L8A9QH
 r1RSK2ihA5p2Bli+BHXBN8c3J/YrBaUJ2aC2CwNYtUh8eGJyESJ7SWMoVLjeAToRLFs4
 2aQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=akrFEhXOEhjjNsFA2n/lMwPsnj11zAdFvp8IXUT8xe4=;
 b=nhEsSTKKqBvGG0AXwpsw8UjwDMUFfKBz9Nlh8s8wwysDWxc1/35w4tFf5u5P4Xe9z4
 atYlriW894GJJ/Bhy4kZIe4N1BeT61hXqB+eBpC8NNK2D6vLuVjORtej4fUXkV+2ouUw
 6GijuCTaucBkzbVgX0Zo8NiOnK9z0pkUTVwAoficGfiPCGwGHEc2nTAuOu28ch0dxe+n
 rGRkwhMJPwMsbFh2fPf/iJwzp/8kXj5v0Kid/KtJ8JrONw+5ri/atw15/pOp5lf5J3Vf
 T2+7tixVvahKlcNBMymENKEwCx7AuaD3oyCUruOD69mTc231a2xUkEMa6f0SeWyRHAlH
 FXfg==
X-Gm-Message-State: APjAAAXVBcTf5PEi9VUR4XjOIyb/TtihxrgEWuee9RtDofAEr/WOHRv0
 LUSWaejXrMPKn5u9wQWtK4KJ5w==
X-Google-Smtp-Source: APXvYqxLMyNOzhaBhc+PHHGAxEu0KCiTcVlM8Gl9/Vmd7F5Uzgp3WIFFxFjlE0pDcnrU877C5qJXbA==
X-Received: by 2002:aa7:8edd:: with SMTP id b29mr20586708pfr.138.1569027604422; 
 Fri, 20 Sep 2019 18:00:04 -0700 (PDT)
Received: from localhost (dhcp-35-38.EECS.Berkeley.EDU. [128.32.35.38])
 by smtp.gmail.com with ESMTPSA id d10sm3549344pfh.8.2019.09.20.18.00.03
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 20 Sep 2019 18:00:03 -0700 (PDT)
From: Albert Ou <aou@eecs.berkeley.edu>
To: Palmer Dabbelt <palmer@sifive.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, Anup Patel <Anup.Patel@wdc.com>,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] riscv: Fix memblock reservation for device tree blob
Date: Fri, 20 Sep 2019 18:00:02 -0700
Message-Id: <20190921010002.61006-1-aou@eecs.berkeley.edu>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_180008_567547_4216E31B 
X-CRM114-Status: GOOD (  13.91  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
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
 arch/riscv/mm/init.c | 13 ++++++++++++-
 1 file changed, 12 insertions(+), 1 deletion(-)

diff --git a/arch/riscv/mm/init.c b/arch/riscv/mm/init.c
index f0ba713..52d007c 100644
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
 
+static phys_addr_t __dtb_pa __initdata;
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
+	memblock_reserve(__dtb_pa, fdt_totalsize(dtb_early_va));
+
 	early_init_fdt_scan_reserved_mem();
 	memblock_allow_resize();
 	memblock_dump_all();
@@ -333,6 +341,7 @@ static uintptr_t __init best_map_size(phys_addr_t base, phys_addr_t size)
 	"not use absolute addressing."
 #endif
 
+
 asmlinkage void __init setup_vm(uintptr_t dtb_pa)
 {
 	uintptr_t va, end_va;
@@ -393,6 +402,8 @@ asmlinkage void __init setup_vm(uintptr_t dtb_pa)
 
 	/* Save pointer to DTB for early FDT parsing */
 	dtb_early_va = (void *)fix_to_virt(FIX_FDT) + (dtb_pa & ~PAGE_MASK);
+	/* Save physical address for memblock reservation */
+	__dtb_pa = dtb_pa;
 }
 
 static void __init setup_vm_final(void)
-- 
2.7.4


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
