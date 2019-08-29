Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3866A2B06
	for <lists+linux-riscv@lfdr.de>; Fri, 30 Aug 2019 01:39:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YTnOttxd3B2YotnBo4K6Iic9w7/TTXJRI1GJjwkkRRo=; b=mh2+qiDhhyAb0F
	WpS7EU90iKslYrnjalx0A+PaDcA+frSHGQqv63CiozAbeIFa+OEuWSWs3Yb/A7DDuFxuC4R1M8XHo
	mX4V8SIhmDl5P2alMtaKKq/4xyEe2m3HaS6fj6ZYzkkEu2VZpIzy8uVZEAOMSXOceHxAqqxhHN6L1
	jUnbQaazfqZT74k8YylMI17oZZKVcw0VpogJrWw+RaGDdAFybjP5lz7inyd9tLJlco/DC71hsVPqy
	ZFSpWn87zqSd8AhrUpxPnkhuxCorZXxzZhszHvo4O9ZtcBwTB78EsgYuvFWOiK3J8lAp60fgUjCcl
	xtnrkbOM+qEvmJSZf2Fw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3U0L-0003xM-NU; Thu, 29 Aug 2019 23:39:01 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3U0F-0003wg-AO
 for linux-riscv@lists.infradead.org; Thu, 29 Aug 2019 23:38:57 +0000
Received: by mail-pf1-x442.google.com with SMTP id w26so3187951pfq.12
 for <linux-riscv@lists.infradead.org>; Thu, 29 Aug 2019 16:38:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=MhwlPzIY2kWdj4huKVrX0QedBuBaf5TUkq7wJBwSziA=;
 b=AjbYn0rj8UN1t0FpZhBmRkqOqbbIpSyRF97SiXdd323h7jqjLTxHrT2CURedxxVGyJ
 RopFDkKd7XDYAb3INqyhjgV6Yz+AOQnkl9c9y4m4FsQR3n5MNpSSGgMLJPL0f+SnFVzf
 rHyM7FCGbstRrPIoI0w4x+hzphrG+kS13qKDxTNahqjhS6xhsvEkyCPkyTzL9HaeskGX
 KvL1a8X16f4c0JGi9Coi3lfRTMGAgbmxnYPLnlGAtOA4y4elVcWv/cu1DSnHUNqhT4Qy
 ojx63ov5E7LdzIm46wX3AP+/tyUMlOVQULWaXzy2l6tUWzHxyS59dt0S0EBgC2EbaSU+
 fAcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=MhwlPzIY2kWdj4huKVrX0QedBuBaf5TUkq7wJBwSziA=;
 b=oVY4iFclLjYWcRHf2G4SfnSPCMimdQQ3eqjvgJI+NIG9npxE8JyXSx1blvdKAgZRbH
 qAE5G0Luo7oe1i0MGHbjmHsM2Lr2nmyhfRJK+4Hn4lGgz0VIZqmDrY6k/uAT1ETxwLxh
 Ygi8fFAIVhpbCLg3iiyMFmKDWmxmFXBcBThlFzoaVhzTuyKOZS1kAXMcxMt7HqsFTLAE
 jn6B8e+ljRb/v5c65O5AwFfetYEyPPVm/mhRDpN5U3coqrggdoiHENozDPxC2/tDbqn3
 dS/0OYY9VgvOP8T8a0gRhl0aoOa0qJ89wcS2pV9e49sKymDO0ZroFpdtacwWRPUKXKao
 AUdg==
X-Gm-Message-State: APjAAAUzjX8kBAwgPSqI0Ajx1GORij4OZ+WHELZI7Ab1NRJjpDbYqS5z
 nDbfqq7H6busRHWGAwN/J2UbZQ==
X-Google-Smtp-Source: APXvYqyKyJFMV4QNWMqW6ChFYPOX0fBiVWJM8o9mEdQt2BxufNattcY7BM6Mgq9CbYsoGq04plM9/w==
X-Received: by 2002:a17:90a:22f0:: with SMTP id
 s103mr13216264pjc.56.1567121933242; 
 Thu, 29 Aug 2019 16:38:53 -0700 (PDT)
Received: from localhost ([12.206.222.5])
 by smtp.gmail.com with ESMTPSA id a1sm2881310pgh.61.2019.08.29.16.38.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 29 Aug 2019 16:38:52 -0700 (PDT)
Date: Thu, 29 Aug 2019 16:38:51 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Logan Gunthorpe <logang@deltatee.com>
Subject: Re: [PATCH v6] RISC-V: Implement sparsemem
In-Reply-To: <20190828214054.3562-1-logang@deltatee.com>
Message-ID: <alpine.DEB.2.21.9999.1908291542160.12266@viisi.sifive.com>
References: <20190828214054.3562-1-logang@deltatee.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_163855_394843_A8E6832B 
X-CRM114-Status: GOOD (  21.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Rob Herring <robh@kernel.org>, Albert Ou <aou@eecs.berkeley.edu>,
 Andrew Waterman <andrew@sifive.com>, Palmer Dabbelt <palmer@sifive.com>,
 linux-kernel@vger.kernel.org, Mike Rapoport <rppt@linux.ibm.com>,
 Zong Li <zong@andestech.com>, Olof Johansson <olof@lixom.net>,
 Greentime Hu <greentime.hu@sifive.com>, linux-riscv@lists.infradead.org,
 Michael Clark <michaeljclark@mac.com>, Christoph Hellwig <hch@lst.de>,
 Stephen Bates <sbates@raithlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi Logan,

On Wed, 28 Aug 2019, Logan Gunthorpe wrote:

> Implement sparsemem support for Risc-v which helps pave the
> way for memory hotplug and eventually P2P support.

Thanks very much for following up on this patch set.

One question:

> diff --git a/arch/riscv/include/asm/sparsemem.h b/arch/riscv/include/asm/sparsemem.h
> new file mode 100644
> index 000000000000..b58ba2d9ed6e
> --- /dev/null
> +++ b/arch/riscv/include/asm/sparsemem.h
> @@ -0,0 +1,11 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +
> +#ifndef __ASM_SPARSEMEM_H
> +#define __ASM_SPARSEMEM_H
> +
> +#ifdef CONFIG_SPARSEMEM
> +#define MAX_PHYSMEM_BITS	CONFIG_PA_BITS
> +#define SECTION_SIZE_BITS	27

Do you have a specific rationale behind this selection, or is this simply 
a reasonable starting point?

> +#endif /* CONFIG_SPARSEMEM */
> +
> +#endif /* __ASM_SPARSEMEM_H */

The following is what I'm getting ready to queue.


- Paul


From: Logan Gunthorpe <logang@deltatee.com>
Date: Wed, 28 Aug 2019 15:40:54 -0600
Subject: [PATCH] RISC-V: Implement sparsemem

Implement sparsemem support for Risc-v which helps pave the
way for memory hotplug and eventually P2P support.

Introduce Kconfig options for virtual and physical address bits which
are used to calculate the size of the vmemmap and set the
MAX_PHYSMEM_BITS.

The vmemmap is located directly before the VMALLOC region and sized
such that we can allocate enough pages to populate all the virtual
address space in the system (similar to the way it's done in arm64).

During initialization, call memblocks_present() and sparse_init(),
and provide a stub for vmemmap_populate() (all of which is similar to
arm64).

[greentime.hu@sifive.com: fixed pfn_valid, FIXADDR_TOP and fixed a bug
 rebasing onto v5.3]
Signed-off-by: Greentime Hu <greentime.hu@sifive.com>
Signed-off-by: Logan Gunthorpe <logang@deltatee.com>
Reviewed-by: Palmer Dabbelt <palmer@sifive.com>
Reviewed-by: Christoph Hellwig <hch@lst.de>
Cc: Albert Ou <aou@eecs.berkeley.edu>
Cc: Andrew Waterman <andrew@sifive.com>
Cc: Olof Johansson <olof@lixom.net>
Cc: Michael Clark <michaeljclark@mac.com>
Cc: Rob Herring <robh@kernel.org>
Cc: Zong Li <zong@andestech.com>
Reviewed-by: Mike Rapoport <rppt@linux.ibm.com>
[paul.walmsley@sifive.com: updated to apply; minor commit message
 reformat]
Signed-off-by: Paul Walmsley <paul.walmsley@sifive.com>
---
 arch/riscv/Kconfig                 | 21 +++++++++++++++++++++
 arch/riscv/include/asm/page.h      |  2 ++
 arch/riscv/include/asm/pgtable.h   | 13 +++++++++++++
 arch/riscv/include/asm/sparsemem.h | 11 +++++++++++
 arch/riscv/mm/init.c               | 10 ++++++++++
 5 files changed, 57 insertions(+)
 create mode 100644 arch/riscv/include/asm/sparsemem.h

diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index 59a4727ecd6c..53b7556beb4a 100644
--- a/arch/riscv/Kconfig
+++ b/arch/riscv/Kconfig
@@ -54,6 +54,7 @@ config RISCV
 	select EDAC_SUPPORT
 	select ARCH_HAS_GIGANTIC_PAGE
 	select ARCH_WANT_HUGE_PMD_SHARE if 64BIT
+	select SPARSEMEM_STATIC if 32BIT
 
 config MMU
 	def_bool y
@@ -62,12 +63,32 @@ config ZONE_DMA32
 	bool
 	default y if 64BIT
 
+config VA_BITS
+	int
+	default 32 if 32BIT
+	default 39 if 64BIT
+
+config PA_BITS
+	int
+	default 34 if 32BIT
+	default 56 if 64BIT
+
 config PAGE_OFFSET
 	hex
 	default 0xC0000000 if 32BIT && MAXPHYSMEM_2GB
 	default 0xffffffff80000000 if 64BIT && MAXPHYSMEM_2GB
 	default 0xffffffe000000000 if 64BIT && MAXPHYSMEM_128GB
 
+config ARCH_FLATMEM_ENABLE
+	def_bool y
+
+config ARCH_SPARSEMEM_ENABLE
+	def_bool y
+	select SPARSEMEM_VMEMMAP_ENABLE
+
+config ARCH_SELECT_MEMORY_MODEL
+	def_bool ARCH_SPARSEMEM_ENABLE
+
 config ARCH_WANT_GENERAL_HUGETLB
 	def_bool y
 
diff --git a/arch/riscv/include/asm/page.h b/arch/riscv/include/asm/page.h
index 707e00a8430b..3db261c4810f 100644
--- a/arch/riscv/include/asm/page.h
+++ b/arch/riscv/include/asm/page.h
@@ -110,8 +110,10 @@ extern unsigned long min_low_pfn;
 #define page_to_bus(page)	(page_to_phys(page))
 #define phys_to_page(paddr)	(pfn_to_page(phys_to_pfn(paddr)))
 
+#ifdef CONFIG_FLATMEM
 #define pfn_valid(pfn) \
 	(((pfn) >= pfn_base) && (((pfn)-pfn_base) < max_mapnr))
+#endif
 
 #define ARCH_PFN_OFFSET		(pfn_base)
 
diff --git a/arch/riscv/include/asm/pgtable.h b/arch/riscv/include/asm/pgtable.h
index c24a083b3e12..80905b27ee98 100644
--- a/arch/riscv/include/asm/pgtable.h
+++ b/arch/riscv/include/asm/pgtable.h
@@ -83,6 +83,19 @@ extern pgd_t swapper_pg_dir[];
 #define __S110	PAGE_SHARED_EXEC
 #define __S111	PAGE_SHARED_EXEC
 
+/*
+ * Roughly size the vmemmap space to be large enough to fit enough
+ * struct pages to map half the virtual address space. Then
+ * position vmemmap directly below the VMALLOC region.
+ */
+#define VMEMMAP_SHIFT \
+	(CONFIG_VA_BITS - PAGE_SHIFT - 1 + STRUCT_PAGE_MAX_SHIFT)
+#define VMEMMAP_SIZE	BIT(VMEMMAP_SHIFT)
+#define VMEMMAP_END	(VMALLOC_START - 1)
+#define VMEMMAP_START	(VMALLOC_START - VMEMMAP_SIZE)
+
+#define vmemmap		((struct page *)VMEMMAP_START)
+
 /*
  * ZERO_PAGE is a global shared page that is always zero,
  * used for zero-mapped memory areas, etc.
diff --git a/arch/riscv/include/asm/sparsemem.h b/arch/riscv/include/asm/sparsemem.h
new file mode 100644
index 000000000000..b58ba2d9ed6e
--- /dev/null
+++ b/arch/riscv/include/asm/sparsemem.h
@@ -0,0 +1,11 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+
+#ifndef __ASM_SPARSEMEM_H
+#define __ASM_SPARSEMEM_H
+
+#ifdef CONFIG_SPARSEMEM
+#define MAX_PHYSMEM_BITS	CONFIG_PA_BITS
+#define SECTION_SIZE_BITS	27
+#endif /* CONFIG_SPARSEMEM */
+
+#endif /* __ASM_SPARSEMEM_H */
diff --git a/arch/riscv/mm/init.c b/arch/riscv/mm/init.c
index 42bf939693d3..73f40c9d3dee 100644
--- a/arch/riscv/mm/init.c
+++ b/arch/riscv/mm/init.c
@@ -442,6 +442,16 @@ static void __init setup_vm_final(void)
 void __init paging_init(void)
 {
 	setup_vm_final();
+	memblocks_present();
+	sparse_init();
 	setup_zero_page();
 	zone_sizes_init();
 }
+
+#ifdef CONFIG_SPARSEMEM
+int __meminit vmemmap_populate(unsigned long start, unsigned long end, int node,
+			       struct vmem_altmap *altmap)
+{
+	return vmemmap_populate_basepages(start, end, node);
+}
+#endif
-- 
2.23.0


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
