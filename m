Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1B541B7C7B
	for <lists+linux-riscv@lfdr.de>; Fri, 24 Apr 2020 19:13:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xapoJs4m/WZhJG2TZ1NYDyunMNrcWXcQKm7kNEAuI24=; b=tryt8csfp3B0DV
	RlaIoSJEmnDZlBcsT6eZQCrIMC2+8EoxIoy5AqucjhgtQZfE3qt0hOR2AGOHPpLVkOhvTwrSIIoKl
	2bLrU9XWBbRn+5PDVmGn/S6XEdEDfMMlb7jbPBs3TBDW9HsbiLBR7CIgdmRGr9EmdV6RgrLj15dGK
	71VPaMceE8Ly7TB1GixshOMJJ7M2MAvi2x859Ci9EDbCRuOgaA9NATJmSBON9gSuR+tnmK/SYynsO
	WvOOXz5DFQhr/eLpbIHRP5aLoysJbY0LaWcqsLwfwP1YIb7uUziddlAvO+prsp545z8hFRk08tvy4
	nNsPZRDakh/TbNgZhtDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS1sl-0004Lc-OE; Fri, 24 Apr 2020 17:12:55 +0000
Received: from mailgate-2.ics.forth.gr ([139.91.1.5])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS1si-0004JQ-6U
 for linux-riscv@lists.infradead.org; Fri, 24 Apr 2020 17:12:54 +0000
Received: from av3.ics.forth.gr (av3in [139.91.1.77])
 by mailgate-2.ics.forth.gr (8.14.4/ICS-FORTH/V10-1.8-GATE) with ESMTP id
 03OHCN0W020368; Fri, 24 Apr 2020 17:12:25 GMT
X-AuditID: 8b5b014d-241ff700000045c5-bf-5ea31df70979
Received: from enigma.ics.forth.gr (enigma-2.ics.forth.gr [139.91.151.35])
 by av3.ics.forth.gr (Symantec Messaging Gateway) with SMTP id
 78.23.17861.7FD13AE5; Fri, 24 Apr 2020 20:12:23 +0300 (EEST)
X-ICS-AUTH-INFO: Authenticated user: mick@ics.forth.gr at ics.forth.gr
From: Nick Kossifidis <mick@ics.forth.gr>
To: linux-riscv@lists.infradead.org
Subject: [PATCH 3/3] RISC-V: Add crash kernel support
Date: Fri, 24 Apr 2020 20:12:14 +0300
Message-Id: <20200424171214.1515457-4-mick@ics.forth.gr>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200424171214.1515457-1-mick@ics.forth.gr>
References: <20200424171214.1515457-1-mick@ics.forth.gr>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrELMWRmVeSWpSXmKPExsXSHT1dWfe77OI4g9X3tCxaPrxjtVi04juL
 xZbDj5gttn1uYbNofneO3eLl5R5mi7ZZ/BZNL64zO3B4TP19hsWj68cMVo83L1+yeDzcdInJ
 Y/OSeo9LzdfZPdoPdDMFsEdx2aSk5mSWpRbp2yVwZbSc7GcveOZc0XVSoIHxrnkXIyeHhICJ
 xNcdE1m6GLk4hASOM0o8PniOHSLhJnH7/k5WEJtNQFNi/qWDQEUcHCICyhLz77mC1DMLHGOU
 2LNiPhNIjbCAqcTLua8ZQWwWAVWJBdc3MoPYvAIWEs/et7BCzJSX2PrtE5jNKWApMWfuHBYQ
 Wwio5szBvewQ9YISJ2c+AYszA9U3b53NPIGRbxaS1CwkqQWMTKsYBRLLjPUyk4v10vKLSjL0
 0os2MYKDldF3B+PtzW/1DjEycTAeYpTgYFYS4Y0pWRQnxJuSWFmVWpQfX1Sak1p8iFGag0VJ
 nDePe3mskEB6YklqdmpqQWoRTJaJg1OqgenEhvcHt8wWafpV/y5h0YmG/0vzXUPf2e7d6CSk
 oL5FfafMP54ij4M7lp5WOsvaz6vmpO1+9LXgv5WO+6YIbouPLpnf6nxk1TyL2iPaBnvdt5px
 B1/u17ddY3DgrfKqnVYqUVvWvX44yZ7v6PJPZzhNQ/d6cgZt1L9XUnGR66xr4zTRoql3mvOm
 1bjKPZx3+tviBfGvVBP7J07izduSwLhQ+vvU+Q+XTqo+IWIdzXuuYcucOyt+d5ZVTZLi9opp
 FPJaVCQc9b/DuSyy9zxf4e/KHbPyLxoL5SzS5w7auLkkWHR+LGeP2lbDL1VG368FKHolHl6z
 fEvX7Xqxrcu3nwztP3yx/aa12vyF0QKV/6YqsRRnJBpqMRcVJwIAEDQOdMUCAAA=
X-Greylist: inspected by milter-greylist-4.6.2 (mailgate-2.ics.forth.gr
 [139.91.1.5]);
 Fri, 24 Apr 2020 17:12:25 +0000 (GMT) for IP:'139.91.1.77' DOMAIN:'av3in'
 HELO:'av3.ics.forth.gr' FROM:'mick@ics.forth.gr' RCPT:''
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mailgate-2.ics.forth.gr [139.91.1.5]); Fri, 24 Apr 2020 17:12:25 +0000 (GMT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_101252_609207_1620CC57 
X-CRM114-Status: GOOD (  21.76  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [139.91.1.5 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: david.abdurachmanov@sifive.com, anup@brainfault.org, atish.patra@wdc.com,
 yibin_liu@c-sky.com, palmer@dabbelt.com, paul.walmsley@sifive.com,
 Nick Kossifidis <mick@ics.forth.gr>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

This patch allows Linux to act as a crash kernel for use with
kdump. Userspace will let the crash kernel know about the
memory region it can use through linux,usable-memory-range
property, and about the memory region where the elf core
header of the previous kernel is saved, through the
linux,elfcorehdr property (both on /chosen). These dtb bindings
are also used on arm64.

I tested this on riscv64 qemu and it works as expected, you
may test it by retrieving the dmesg of the previous kernel
through /proc/vmcore, using the vmcore-dmesg utility from
kexec-tools.

Signed-off-by: Nick Kossifidis <mick@ics.forth.gr>
---
 arch/riscv/Kconfig             | 10 ++++
 arch/riscv/kernel/Makefile     |  4 +-
 arch/riscv/kernel/crash_dump.c | 46 ++++++++++++++++
 arch/riscv/kernel/setup.c      | 13 +++++
 arch/riscv/mm/init.c           | 97 +++++++++++++++++++++++++++++++++-
 5 files changed, 167 insertions(+), 3 deletions(-)
 create mode 100644 arch/riscv/kernel/crash_dump.c

diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index 4934b2f62..3802c8888 100644
--- a/arch/riscv/Kconfig
+++ b/arch/riscv/Kconfig
@@ -344,6 +344,16 @@ config KEXEC
 
 	  The name comes from the similarity to the exec system call.
 
+config CRASH_DUMP
+	bool "Build kdump crash kernel"
+	help
+	  Generate crash dump after being started by kexec. This should
+	  be normally only set in special crash dump kernels which are
+	  loaded in the main kernel with kexec-tools into a specially
+	  reserved region and then later executed after a crash by
+	  kdump/kexec.
+
+	  For more details see Documentation/admin-guide/kdump/kdump.rst
 
 endmenu
 
diff --git a/arch/riscv/kernel/Makefile b/arch/riscv/kernel/Makefile
index 65f6c9f1d..6374b0db5 100644
--- a/arch/riscv/kernel/Makefile
+++ b/arch/riscv/kernel/Makefile
@@ -51,6 +51,6 @@ ifeq ($(CONFIG_RISCV_SBI), y)
 obj-$(CONFIG_SMP) += cpu_ops_sbi.o
 endif
 obj-$(CONFIG_HOTPLUG_CPU)	+= cpu-hotplug.o
-obj-${CONFIG_KEXEC}		+= kexec_relocate.o crash_save_regs.o machine_kexec.o
-
+obj-$(CONFIG_KEXEC)		+= kexec_relocate.o crash_save_regs.o machine_kexec.o
+obj-$(CONFIG_CRASH_DUMP)	+= crash_dump.o
 clean:
diff --git a/arch/riscv/kernel/crash_dump.c b/arch/riscv/kernel/crash_dump.c
new file mode 100644
index 000000000..81b9d2a71
--- /dev/null
+++ b/arch/riscv/kernel/crash_dump.c
@@ -0,0 +1,46 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * This code is taken from arch/arm64/kernel/crash_dump.c
+ * Created by: AKASHI Takahiro <takahiro.akashi@linaro.org>
+ * Copyright (C) 2017 Linaro Limited
+ */
+
+#include <linux/crash_dump.h>
+#include <linux/io.h>
+
+/**
+ * copy_oldmem_page() - copy one page from old kernel memory
+ * @pfn: page frame number to be copied
+ * @buf: buffer where the copied page is placed
+ * @csize: number of bytes to copy
+ * @offset: offset in bytes into the page
+ * @userbuf: if set, @buf is in a user address space
+ *
+ * This function copies one page from old kernel memory into buffer pointed by
+ * @buf. If @buf is in userspace, set @userbuf to %1. Returns number of bytes
+ * copied or negative error in case of failure.
+ */
+ssize_t copy_oldmem_page(unsigned long pfn, char *buf,
+			 size_t csize, unsigned long offset,
+			 int userbuf)
+{
+	void *vaddr;
+
+	if (!csize)
+		return 0;
+
+	vaddr = memremap(__pfn_to_phys(pfn), PAGE_SIZE, MEMREMAP_WB);
+	if (!vaddr)
+		return -ENOMEM;
+
+	if (userbuf) {
+		if (copy_to_user((char __user *)buf, vaddr + offset, csize)) {
+			memunmap(vaddr);
+			return -EFAULT;
+		}
+	} else
+		memcpy(buf, vaddr + offset, csize);
+
+	memunmap(vaddr);
+	return csize;
+}
diff --git a/arch/riscv/kernel/setup.c b/arch/riscv/kernel/setup.c
index 52d057bde..cbd8c8ba6 100644
--- a/arch/riscv/kernel/setup.c
+++ b/arch/riscv/kernel/setup.c
@@ -64,6 +64,9 @@ static struct resource code_res = { .name = "Kernel code", };
 static struct resource data_res = { .name = "Kernel data", };
 static struct resource rodata_res = { .name = "Kernel rodata", };
 static struct resource bss_res = { .name = "Kernel bss", };
+#ifdef CONFIG_CRASH_DUMP
+static struct resource elfcorehdr_res = { .name = "ELF Core hdr", };
+#endif
 
 static void __init kdump_resource_init(void)
 {
@@ -97,6 +100,16 @@ static void __init kdump_resource_init(void)
 	if (crashk_res.end > crashk_res.start)
 		insert_resource(&sysram_res, &crashk_res);
 #endif
+
+#ifdef CONFIG_CRASH_DUMP
+	if (elfcorehdr_size) {
+		elfcorehdr_res.start = elfcorehdr_addr;
+		elfcorehdr_res.end = elfcorehdr_addr + elfcorehdr_size;
+		elfcorehdr_res.flags = IORESOURCE_BUSY | IORESOURCE_SYSTEM_RAM;
+		insert_resource(&sysram_res, &elfcorehdr_res);
+	}
+#endif
+
 }
 
 void __init parse_dtb(void)
diff --git a/arch/riscv/mm/init.c b/arch/riscv/mm/init.c
index 1c4461590..93cd434c5 100644
--- a/arch/riscv/mm/init.c
+++ b/arch/riscv/mm/init.c
@@ -123,6 +123,80 @@ static void __init setup_initrd(void)
 }
 #endif /* CONFIG_BLK_DEV_INITRD */
 
+#ifdef CONFIG_CRASH_DUMP
+/*
+ * These come from arm64
+ */
+static int __init early_init_dt_scan_elfcorehdr(unsigned long node,
+		const char *uname, int depth, void *data)
+{
+	struct memblock_region *elfcorehdr_mem = data;
+	const __be32 *reg;
+	int len;
+
+	if (depth != 1 || strcmp(uname, "chosen") != 0)
+		return 0;
+
+	reg = of_get_flat_dt_prop(node, "linux,elfcorehdr", &len);
+	if (!reg || (len < (dt_root_addr_cells + dt_root_size_cells)))
+		return 1;
+
+	elfcorehdr_mem->base = dt_mem_next_cell(dt_root_addr_cells, &reg);
+	elfcorehdr_mem->size = dt_mem_next_cell(dt_root_size_cells, &reg);
+
+	return 1;
+}
+
+static void __init reserve_elfcorehdr(void)
+{
+	struct memblock_region elfcorehdr_region = {0};
+
+	of_scan_flat_dt(early_init_dt_scan_elfcorehdr, &elfcorehdr_region);
+
+	if (elfcorehdr_region.size) {
+		memblock_reserve(elfcorehdr_region.base,
+				 elfcorehdr_region.size);
+
+		pr_info("Reserving %lldKB of memory at 0x%llx for elfcorehdr\n",
+			elfcorehdr_region.size >> 10, elfcorehdr_region.base);
+
+		elfcorehdr_addr = elfcorehdr_region.base;
+		elfcorehdr_size = elfcorehdr_region.size;
+	}
+}
+
+static int __init early_init_dt_scan_usablemem(unsigned long node,
+		const char *uname, int depth, void *data)
+{
+	struct memblock_region *usable_mem = data;
+	const __be32 *reg;
+	int len;
+
+	if (depth != 1 || strcmp(uname, "chosen") != 0)
+		return 0;
+
+	reg = of_get_flat_dt_prop(node, "linux,usable-memory-range", &len);
+	if (!reg || (len < (dt_root_addr_cells + dt_root_size_cells)))
+		return 1;
+
+	usable_mem->base = dt_mem_next_cell(dt_root_addr_cells, &reg);
+	usable_mem->size = dt_mem_next_cell(dt_root_size_cells, &reg);
+
+	return 1;
+}
+
+static void __init fdt_enforce_memory_region(void)
+{
+	struct memblock_region usablemem_region = {0};
+
+	of_scan_flat_dt(early_init_dt_scan_usablemem, &usablemem_region);
+
+	if (usablemem_region.size)
+		memblock_cap_memory_range(usablemem_region.base,
+					  usablemem_region.size);
+}
+#endif
+
 static phys_addr_t dtb_early_pa __initdata;
 
 void __init setup_bootmem(void)
@@ -132,6 +206,9 @@ void __init setup_bootmem(void)
 	phys_addr_t vmlinux_end = __pa_symbol(&_end);
 	phys_addr_t vmlinux_start = __pa_symbol(&_start);
 
+#ifdef CONFIG_CRASH_DUMP
+	fdt_enforce_memory_region();
+#endif
 	/* Find the memory region containing the kernel */
 	for_each_memblock(memory, reg) {
 		phys_addr_t end = reg->base + reg->size;
@@ -166,6 +243,13 @@ void __init setup_bootmem(void)
 	 */
 	memblock_reserve(dtb_early_pa, fdt_totalsize(dtb_early_va));
 
+	/*
+	 * We need to reserve elfcorehdr here so that it doesn't
+	 * get overwritten later on.
+	 */
+#ifdef CONFIG_CRASH_DUMP
+	reserve_elfcorehdr();
+#endif
 	early_init_fdt_scan_reserved_mem();
 	memblock_allow_resize();
 	memblock_dump_all();
@@ -559,9 +643,20 @@ static void __init reserve_crashkernel(void)
 	unsigned long start_pfn = find_min_pfn_with_active_regions();
 	unsigned long search_start = start_pfn << PAGE_SHIFT;
 	unsigned long search_end = (unsigned long) PFN_PHYS(max_low_pfn) - 1;
-
 	int ret = 0;
 
+	/*
+	 * Don't reserve a region for a crash kernel on a crash kernel
+	 * since it doesn't make much sense and we have limited memory
+	 * resources.
+	 */
+#ifdef CONFIG_CRASH_DUMP
+	if (is_kdump_kernel()) {
+		pr_info("crashkernel: ignore reservation request\n");
+		return;
+	}
+#endif
+
 	ret = parse_crashkernel(boot_command_line, memblock_phys_mem_size(),
 				&crash_size, &crash_base);
 	if (ret || !crash_size)
-- 
2.24.1


