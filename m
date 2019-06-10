Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6EE73BF58
	for <lists+linux-riscv@lfdr.de>; Tue, 11 Jun 2019 00:17:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3ab/vn0H+oAeV/milaoPwNHonEc/Hfg+Lultd/xZyYw=; b=Thj1ANzWOwxVW6
	CeSNPEtANbKNP9kYb7evjMXBohBntMY9pnwqJktr1wIEs7XMw5YYhjuDAbSICKitSLEy1mm9mi5F3
	+KOO5GoKhf/i19EQjsLxeSVN3emT9gVlZ5EhXkCboCSwrOs0JmElBcgDxpwTS6zcy1BZOiBwPzoeM
	qgsUM67RM65OFEXsoOS0105UHEzKnCIRbSLRaj2Vl1aHvsCSBOqxnm5I4LUxKvK/C4Dj/dW4OPHAL
	gcCDaa01PrZ5GaAGgXPeFUKQmzyGs2+e4j6mm8lQqxl03MmOYGxRZkm+AytdQmB6yaxkc/kYt5Rid
	3nB0hjNO/Nda57KIUPfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haSbN-000497-EP; Mon, 10 Jun 2019 22:17:17 +0000
Received: from 089144193064.atnat0002.highway.a1.net ([89.144.193.64]
 helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1haSbF-0003z5-Cy; Mon, 10 Jun 2019 22:17:09 +0000
From: Christoph Hellwig <hch@lst.de>
To: Palmer Dabbelt <palmer@sifive.com>
Subject: [PATCH 17/17] riscv: add nommu support
Date: Tue, 11 Jun 2019 00:16:21 +0200
Message-Id: <20190610221621.10938-18-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190610221621.10938-1-hch@lst.de>
References: <20190610221621.10938-1-hch@lst.de>
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
Cc: linux-mm@kvack.org, Damien Le Moal <damien.lemoal@wdc.com>,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
 uclinux-dev@uclinux.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

The kernel runs in M-mode without using page tables, and thus doesn't
can run bare metal without help from additional firmware.

Most of the patch is just stubbing out code not needed without page
tables, but there is an interesting detail in the signals implementation:

 - The normal RISC-V syscall ABI only implements rt_sigreturn as VDSO
   entry point, but the ELF VDSO is not supported for nommu Linux.
   We instead copy the code to call the syscall onto the stack.

In addition to enabling the nommu code a new defconfig for a small
kernel image that can run in nommu mode on qemu is also provided, to run
a kernel in qemu you can use the following command line:

qemu-system-riscv64 -smp 2 -m 64 -machine virt -nographic \
	-kernel arch/riscv/boot/loader \
	-drive file=rootfs.ext2,format=raw,id=hd0 \
	-device virtio-blk-device,drive=hd0

Contains contributions from Damien Le Moal <Damien.LeMoal@wdc.com>.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 arch/riscv/Kconfig                      | 24 +++++---
 arch/riscv/configs/nommu_virt_defconfig | 78 +++++++++++++++++++++++++
 arch/riscv/include/asm/elf.h            |  4 +-
 arch/riscv/include/asm/futex.h          |  6 ++
 arch/riscv/include/asm/io.h             |  4 ++
 arch/riscv/include/asm/mmu.h            |  3 +
 arch/riscv/include/asm/page.h           | 12 +++-
 arch/riscv/include/asm/pgalloc.h        |  2 +
 arch/riscv/include/asm/pgtable.h        | 38 ++++++++----
 arch/riscv/include/asm/tlbflush.h       |  7 ++-
 arch/riscv/include/asm/uaccess.h        |  4 ++
 arch/riscv/kernel/Makefile              |  3 +-
 arch/riscv/kernel/entry.S               | 11 ++++
 arch/riscv/kernel/head.S                |  6 ++
 arch/riscv/kernel/signal.c              | 17 +++++-
 arch/riscv/lib/Makefile                 |  8 +--
 arch/riscv/mm/Makefile                  |  3 +-
 arch/riscv/mm/cacheflush.c              |  2 +
 arch/riscv/mm/context.c                 |  2 +
 arch/riscv/mm/init.c                    |  2 +
 20 files changed, 200 insertions(+), 36 deletions(-)
 create mode 100644 arch/riscv/configs/nommu_virt_defconfig

diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index 9f2ebd035e80..41edb314ec67 100644
--- a/arch/riscv/Kconfig
+++ b/arch/riscv/Kconfig
@@ -27,13 +27,13 @@ config RISCV
 	select GENERIC_IRQ_SHOW
 	select GENERIC_PCI_IOMAP
 	select GENERIC_SCHED_CLOCK
-	select GENERIC_STRNCPY_FROM_USER
-	select GENERIC_STRNLEN_USER
+	select GENERIC_STRNCPY_FROM_USER if MMU
+	select GENERIC_STRNLEN_USER if MMU
 	select GENERIC_SMP_IDLE_THREAD
 	select GENERIC_ATOMIC64 if !64BIT
 	select HAVE_ARCH_AUDITSYSCALL
 	select HAVE_MEMBLOCK_NODE_MAP
-	select HAVE_DMA_CONTIGUOUS
+	select HAVE_DMA_CONTIGUOUS if MMU
 	select HAVE_FUTEX_CMPXCHG if FUTEX
 	select HAVE_PERF_EVENTS
 	select HAVE_SYSCALL_TRACEPOINTS
@@ -48,6 +48,7 @@ config RISCV
 	select PCI_DOMAINS_GENERIC if PCI
 	select PCI_MSI if PCI
 	select RISCV_TIMER
+	select UACCESS_MEMCPY if !MMU
 	select GENERIC_IRQ_MULTI_HANDLER
 	select ARCH_HAS_PTE_SPECIAL
 	select ARCH_HAS_MMIOWB
@@ -56,9 +57,14 @@ config RISCV
 # set if we run in machine mode, cleared if we run in supervisor mode
 config M_MODE
 	bool
+	default y if !MMU
 
 config MMU
-	def_bool y
+	bool "MMU-based Paged Memory Management Support"
+	default y
+	help
+	  Select if you want MMU-based virtualised addressing space
+	  support by paged memory management. If unsure, say 'Y'.
 
 config ZONE_DMA32
 	bool
@@ -67,6 +73,7 @@ config ZONE_DMA32
 config PAGE_OFFSET
 	hex
 	default 0xC0000000 if 32BIT && MAXPHYSMEM_2GB
+	default 0x80000000 if 64BIT && !MMU
 	default 0xffffffff80000000 if 64BIT && MAXPHYSMEM_2GB
 	default 0xffffffe000000000 if 64BIT && MAXPHYSMEM_128GB
 
@@ -94,7 +101,7 @@ config GENERIC_HWEIGHT
 	def_bool y
 
 config FIX_EARLYCON_MEM
-	def_bool y
+	def_bool CONFIG_MMU
 
 config PGTABLE_LEVELS
 	int
@@ -117,6 +124,7 @@ config ARCH_RV32I
 	select GENERIC_LIB_ASHRDI3
 	select GENERIC_LIB_LSHRDI3
 	select GENERIC_LIB_UCMPDI2
+	select MMU
 
 config ARCH_RV64I
 	bool "RV64I"
@@ -125,9 +133,9 @@ config ARCH_RV64I
 	select HAVE_FUNCTION_TRACER
 	select HAVE_FUNCTION_GRAPH_TRACER
 	select HAVE_FTRACE_MCOUNT_RECORD
-	select HAVE_DYNAMIC_FTRACE
-	select HAVE_DYNAMIC_FTRACE_WITH_REGS
-	select SWIOTLB
+	select HAVE_DYNAMIC_FTRACE if MMU
+	select HAVE_DYNAMIC_FTRACE_WITH_REGS if HAVE_DYNAMIC_FTRACE
+	select SWIOTLB if MMU
 
 endchoice
 
diff --git a/arch/riscv/configs/nommu_virt_defconfig b/arch/riscv/configs/nommu_virt_defconfig
new file mode 100644
index 000000000000..cf74e179bf90
--- /dev/null
+++ b/arch/riscv/configs/nommu_virt_defconfig
@@ -0,0 +1,78 @@
+# CONFIG_CPU_ISOLATION is not set
+CONFIG_LOG_BUF_SHIFT=16
+CONFIG_PRINTK_SAFE_LOG_BUF_SHIFT=12
+CONFIG_BLK_DEV_INITRD=y
+# CONFIG_RD_BZIP2 is not set
+# CONFIG_RD_LZMA is not set
+# CONFIG_RD_XZ is not set
+# CONFIG_RD_LZO is not set
+# CONFIG_RD_LZ4 is not set
+CONFIG_CC_OPTIMIZE_FOR_SIZE=y
+CONFIG_EXPERT=y
+# CONFIG_SYSFS_SYSCALL is not set
+# CONFIG_FHANDLE is not set
+# CONFIG_BASE_FULL is not set
+# CONFIG_EPOLL is not set
+# CONFIG_SIGNALFD is not set
+# CONFIG_TIMERFD is not set
+# CONFIG_EVENTFD is not set
+# CONFIG_AIO is not set
+# CONFIG_IO_URING is not set
+# CONFIG_ADVISE_SYSCALLS is not set
+# CONFIG_MEMBARRIER is not set
+# CONFIG_KALLSYMS is not set
+# CONFIG_VM_EVENT_COUNTERS is not set
+# CONFIG_COMPAT_BRK is not set
+CONFIG_SLOB=y
+# CONFIG_SLAB_MERGE_DEFAULT is not set
+# CONFIG_MMU is not set
+CONFIG_MAXPHYSMEM_2GB=y
+CONFIG_SMP=y
+CONFIG_CMDLINE="root=/dev/vda rw earlycon=uart8250,mmio,0x10000000,115200n8 console=ttyS0"
+CONFIG_CMDLINE_FORCE=y
+# CONFIG_BLK_DEV_BSG is not set
+CONFIG_PARTITION_ADVANCED=y
+# CONFIG_MSDOS_PARTITION is not set
+# CONFIG_EFI_PARTITION is not set
+# CONFIG_MQ_IOSCHED_DEADLINE is not set
+# CONFIG_MQ_IOSCHED_KYBER is not set
+CONFIG_BINFMT_FLAT=y
+# CONFIG_COREDUMP is not set
+CONFIG_DEVTMPFS=y
+CONFIG_DEVTMPFS_MOUNT=y
+# CONFIG_FW_LOADER is not set
+# CONFIG_ALLOW_DEV_COREDUMP is not set
+CONFIG_VIRTIO_BLK=y
+# CONFIG_INPUT_KEYBOARD is not set
+# CONFIG_INPUT_MOUSE is not set
+# CONFIG_SERIO is not set
+# CONFIG_LEGACY_PTYS is not set
+# CONFIG_LDISC_AUTOLOAD is not set
+# CONFIG_DEVMEM is not set
+CONFIG_SERIAL_8250=y
+# CONFIG_SERIAL_8250_DEPRECATED_OPTIONS is not set
+CONFIG_SERIAL_8250_CONSOLE=y
+CONFIG_SERIAL_8250_NR_UARTS=1
+CONFIG_SERIAL_8250_RUNTIME_UARTS=1
+CONFIG_SERIAL_OF_PLATFORM=y
+# CONFIG_HW_RANDOM is not set
+# CONFIG_HWMON is not set
+# CONFIG_LCD_CLASS_DEVICE is not set
+# CONFIG_BACKLIGHT_CLASS_DEVICE is not set
+# CONFIG_VGA_CONSOLE is not set
+# CONFIG_HID is not set
+# CONFIG_USB_SUPPORT is not set
+CONFIG_VIRTIO_MMIO=y
+CONFIG_VIRTIO_MMIO_CMDLINE_DEVICES=y
+CONFIG_SIFIVE_PLIC=y
+# CONFIG_VALIDATE_FS_PARSER is not set
+CONFIG_EXT2_FS=y
+# CONFIG_DNOTIFY is not set
+# CONFIG_INOTIFY_USER is not set
+# CONFIG_MISC_FILESYSTEMS is not set
+CONFIG_LSM="[]"
+CONFIG_PRINTK_TIME=y
+# CONFIG_SCHED_DEBUG is not set
+# CONFIG_RCU_TRACE is not set
+# CONFIG_FTRACE is not set
+# CONFIG_RUNTIME_TESTING_MENU is not set
diff --git a/arch/riscv/include/asm/elf.h b/arch/riscv/include/asm/elf.h
index ef04084bf0de..d83a4efd052b 100644
--- a/arch/riscv/include/asm/elf.h
+++ b/arch/riscv/include/asm/elf.h
@@ -56,16 +56,16 @@ extern unsigned long elf_hwcap;
  */
 #define ELF_PLATFORM	(NULL)
 
+#ifdef CONFIG_MMU
 #define ARCH_DLINFO						\
 do {								\
 	NEW_AUX_ENT(AT_SYSINFO_EHDR,				\
 		(elf_addr_t)current->mm->context.vdso);		\
 } while (0)
-
-
 #define ARCH_HAS_SETUP_ADDITIONAL_PAGES
 struct linux_binprm;
 extern int arch_setup_additional_pages(struct linux_binprm *bprm,
 	int uses_interp);
+#endif /* CONFIG_MMU */
 
 #endif /* _ASM_RISCV_ELF_H */
diff --git a/arch/riscv/include/asm/futex.h b/arch/riscv/include/asm/futex.h
index 4ad6409c4647..418564b96dc4 100644
--- a/arch/riscv/include/asm/futex.h
+++ b/arch/riscv/include/asm/futex.h
@@ -12,6 +12,12 @@
 #include <linux/errno.h>
 #include <asm/asm.h>
 
+/* We don't even really need the extable code, but for now keep it simple */
+#ifndef CONFIG_MMU
+#define __enable_user_access()		do { } while (0)
+#define __disable_user_access()		do { } while (0)
+#endif
+
 #define __futex_atomic_op(insn, ret, oldval, uaddr, oparg)	\
 {								\
 	uintptr_t tmp;						\
diff --git a/arch/riscv/include/asm/io.h b/arch/riscv/include/asm/io.h
index fc1189ad3777..d39a8f03e85e 100644
--- a/arch/riscv/include/asm/io.h
+++ b/arch/riscv/include/asm/io.h
@@ -14,6 +14,7 @@
 #include <linux/types.h>
 #include <asm/mmiowb.h>
 
+#ifdef CONFIG_MMU
 extern void __iomem *ioremap(phys_addr_t offset, unsigned long size);
 
 /*
@@ -26,6 +27,9 @@ extern void __iomem *ioremap(phys_addr_t offset, unsigned long size);
 #define ioremap_wt(addr, size) ioremap((addr), (size))
 
 extern void iounmap(volatile void __iomem *addr);
+#else
+#define pgprot_noncached(x)	(x)
+#endif /* CONFIG_MMU */
 
 /* Generic IO read/write.  These perform native-endian accesses. */
 #define __raw_writeb __raw_writeb
diff --git a/arch/riscv/include/asm/mmu.h b/arch/riscv/include/asm/mmu.h
index 151476fb58cb..967eacb01ab5 100644
--- a/arch/riscv/include/asm/mmu.h
+++ b/arch/riscv/include/asm/mmu.h
@@ -10,6 +10,9 @@
 #ifndef __ASSEMBLY__
 
 typedef struct {
+#ifndef CONFIG_MMU
+	unsigned long	end_brk;
+#endif
 	void *vdso;
 #ifdef CONFIG_SMP
 	/* A local icache flush is needed before user execution can resume. */
diff --git a/arch/riscv/include/asm/page.h b/arch/riscv/include/asm/page.h
index 8ddb6c7fedac..df0256a9a965 100644
--- a/arch/riscv/include/asm/page.h
+++ b/arch/riscv/include/asm/page.h
@@ -78,8 +78,14 @@ typedef struct page *pgtable_t;
 #define PTE_FMT "%08lx"
 #endif
 
+#ifdef CONFIG_MMU
 extern unsigned long va_pa_offset;
 extern unsigned long pfn_base;
+#define ARCH_PFN_OFFSET		(pfn_base)
+#else
+#define va_pa_offset		0
+#define ARCH_PFN_OFFSET		(PAGE_OFFSET >> PAGE_SHIFT)
+#endif /* CONFIG_MMU */
 
 extern unsigned long max_low_pfn;
 extern unsigned long min_low_pfn;
@@ -101,9 +107,7 @@ extern unsigned long min_low_pfn;
 #define phys_to_page(paddr)	(pfn_to_page(phys_to_pfn(paddr)))
 
 #define pfn_valid(pfn) \
-	(((pfn) >= pfn_base) && (((pfn)-pfn_base) < max_mapnr))
-
-#define ARCH_PFN_OFFSET		(pfn_base)
+	(((pfn) >= ARCH_PFN_OFFSET) && (((pfn) - ARCH_PFN_OFFSET) < max_mapnr))
 
 #endif /* __ASSEMBLY__ */
 
@@ -115,8 +119,10 @@ extern unsigned long min_low_pfn;
 #include <asm-generic/memory_model.h>
 #include <asm-generic/getorder.h>
 
+#ifdef CONFIG_MMU
 /* vDSO support */
 /* We do define AT_SYSINFO_EHDR but don't use the gate mechanism */
 #define __HAVE_ARCH_GATE_AREA
+#endif /* CONFIG_MMU */
 
 #endif /* _ASM_RISCV_PAGE_H */
diff --git a/arch/riscv/include/asm/pgalloc.h b/arch/riscv/include/asm/pgalloc.h
index eb8b0195f27f..8d60c862d2f9 100644
--- a/arch/riscv/include/asm/pgalloc.h
+++ b/arch/riscv/include/asm/pgalloc.h
@@ -10,6 +10,7 @@
 #include <linux/mm.h>
 #include <asm/tlb.h>
 
+#ifdef CONFIG_MMU
 static inline void pmd_populate_kernel(struct mm_struct *mm,
 	pmd_t *pmd, pte_t *pte)
 {
@@ -106,6 +107,7 @@ do {                                    \
 	pgtable_page_dtor(pte);         \
 	tlb_remove_page((tlb), pte);    \
 } while (0)
+#endif /* CONFIG_MMU */
 
 static inline void check_pgt_cache(void)
 {
diff --git a/arch/riscv/include/asm/pgtable.h b/arch/riscv/include/asm/pgtable.h
index f7c3f7de15f2..dd6a63648e4a 100644
--- a/arch/riscv/include/asm/pgtable.h
+++ b/arch/riscv/include/asm/pgtable.h
@@ -24,6 +24,7 @@
 #include <asm/pgtable-32.h>
 #endif /* CONFIG_64BIT */
 
+#ifdef CONFIG_MMU
 /* Number of entries in the page global directory */
 #define PTRS_PER_PGD    (PAGE_SIZE / sizeof(pgd_t))
 /* Number of entries in the page table */
@@ -31,7 +32,6 @@
 
 /* Number of PGD entries that a user-mode program can use */
 #define USER_PTRS_PER_PGD   (TASK_SIZE / PGDIR_SIZE)
-#define FIRST_USER_ADDRESS  0
 
 /* Page protection bits */
 #define _PAGE_BASE	(_PAGE_PRESENT | _PAGE_ACCESSED | _PAGE_USER)
@@ -81,13 +81,6 @@ extern pgd_t swapper_pg_dir[];
 #define __S110	PAGE_SHARED_EXEC
 #define __S111	PAGE_SHARED_EXEC
 
-/*
- * ZERO_PAGE is a global shared page that is always zero,
- * used for zero-mapped memory areas, etc.
- */
-extern unsigned long empty_zero_page[PAGE_SIZE / sizeof(unsigned long)];
-#define ZERO_PAGE(vaddr) (virt_to_page(empty_zero_page))
-
 static inline int pmd_present(pmd_t pmd)
 {
 	return (pmd_val(pmd) & (_PAGE_PRESENT | _PAGE_PROT_NONE));
@@ -392,6 +385,18 @@ static inline int ptep_clear_flush_young(struct vm_area_struct *vma,
 #define __pte_to_swp_entry(pte)	((swp_entry_t) { pte_val(pte) })
 #define __swp_entry_to_pte(x)	((pte_t) { (x).val })
 
+#define VMALLOC_SIZE		(KERN_VIRT_SIZE >> 1)
+#define VMALLOC_END		(PAGE_OFFSET - 1)
+#define VMALLOC_START		(PAGE_OFFSET - VMALLOC_SIZE)
+
+#else /* CONFIG_MMU */
+
+#define PAGE_KERNEL		__pgprot(0)
+#define swapper_pg_dir		NULL
+#define VMALLOC_START		0
+
+#endif /* CONFIG_MMU */
+
 #ifdef CONFIG_FLATMEM
 #define kern_addr_valid(addr)   (1) /* FIXME */
 #endif
@@ -404,10 +409,7 @@ static inline void pgtable_cache_init(void)
 	/* No page table caches to initialize */
 }
 
-#define VMALLOC_SIZE     (KERN_VIRT_SIZE >> 1)
-#define VMALLOC_END      (PAGE_OFFSET - 1)
-#define VMALLOC_START    (PAGE_OFFSET - VMALLOC_SIZE)
-
+#ifdef CONFIG_MMU
 /*
  * Task size is 0x40000000000 for RV64 or 0xb800000 for RV32.
  * Note that PGDIR_SIZE must evenly divide TASK_SIZE.
@@ -417,6 +419,18 @@ static inline void pgtable_cache_init(void)
 #else
 #define TASK_SIZE VMALLOC_START
 #endif
+#else /* CONFIG_MMU */
+#define TASK_SIZE 0xffffffffUL
+#endif /* !CONFIG_MMU */
+
+#define FIRST_USER_ADDRESS  0
+
+/*
+ * ZERO_PAGE is a global shared page that is always zero,
+ * used for zero-mapped memory areas, etc.
+ */
+extern unsigned long empty_zero_page[PAGE_SIZE / sizeof(unsigned long)];
+#define ZERO_PAGE(vaddr) (virt_to_page(empty_zero_page))
 
 #include <asm-generic/pgtable.h>
 
diff --git a/arch/riscv/include/asm/tlbflush.h b/arch/riscv/include/asm/tlbflush.h
index 687dd19735a7..f127b3d17ec2 100644
--- a/arch/riscv/include/asm/tlbflush.h
+++ b/arch/riscv/include/asm/tlbflush.h
@@ -10,6 +10,7 @@
 #include <linux/mm_types.h>
 #include <asm/smp.h>
 
+#ifdef CONFIG_MMU
 /*
  * Flush entire local TLB.  'sfence.vma' implicitly fences with the instruction
  * cache as well, so a 'fence.i' is not necessary.
@@ -24,8 +25,12 @@ static inline void local_flush_tlb_page(unsigned long addr)
 {
 	__asm__ __volatile__ ("sfence.vma %0" : : "r" (addr) : "memory");
 }
+#else /* CONFIG_MMU */
+#define local_flush_tlb_all()			do { } while (0)
+#define local_flush_tlb_page(addr)		do { } while (0)
+#endif /* CONFIG_MMU */
 
-#ifndef CONFIG_SMP
+#if !defined(CONFIG_SMP) || !defined(CONFIG_MMU)
 
 #define flush_tlb_all() local_flush_tlb_all()
 #define flush_tlb_page(vma, addr) local_flush_tlb_page(addr)
diff --git a/arch/riscv/include/asm/uaccess.h b/arch/riscv/include/asm/uaccess.h
index e076437cfafe..f462a183a9c2 100644
--- a/arch/riscv/include/asm/uaccess.h
+++ b/arch/riscv/include/asm/uaccess.h
@@ -11,6 +11,7 @@
 /*
  * User space memory access functions
  */
+#ifdef CONFIG_MMU
 #include <linux/errno.h>
 #include <linux/compiler.h>
 #include <linux/thread_info.h>
@@ -475,4 +476,7 @@ unsigned long __must_check clear_user(void __user *to, unsigned long n)
 	__ret;							\
 })
 
+#else /* CONFIG_MMU */
+#include <asm-generic/uaccess.h>
+#endif /* CONFIG_MMU */
 #endif /* _ASM_RISCV_UACCESS_H */
diff --git a/arch/riscv/kernel/Makefile b/arch/riscv/kernel/Makefile
index f933c04f89db..d720666283d6 100644
--- a/arch/riscv/kernel/Makefile
+++ b/arch/riscv/kernel/Makefile
@@ -25,9 +25,8 @@ obj-y	+= time.o
 obj-y	+= traps.o
 obj-y	+= riscv_ksyms.o
 obj-y	+= stacktrace.o
-obj-y	+= vdso.o
 obj-y	+= cacheinfo.o
-obj-y	+= vdso/
+obj-$(CONFIG_MMU) += vdso.o vdso/
 
 obj-$(CONFIG_M_MODE)		+= clint.o
 obj-$(CONFIG_FPU)		+= fpu.o
diff --git a/arch/riscv/kernel/entry.S b/arch/riscv/kernel/entry.S
index 18eeb1eec9d5..953c64b0b2b9 100644
--- a/arch/riscv/kernel/entry.S
+++ b/arch/riscv/kernel/entry.S
@@ -370,6 +370,10 @@ ENTRY(__switch_to)
 	ret
 ENDPROC(__switch_to)
 
+#ifndef CONFIG_MMU
+#define do_page_fault do_trap_unknown
+#endif
+
 	.section ".rodata"
 	/* Exception vector table */
 ENTRY(excp_vect_table)
@@ -391,3 +395,10 @@ ENTRY(excp_vect_table)
 	RISCV_PTR do_page_fault   /* store page fault */
 excp_vect_table_end:
 END(excp_vect_table)
+
+#ifndef CONFIG_MMU
+ENTRY(__user_rt_sigreturn)
+	li a7, __NR_rt_sigreturn
+	scall
+END(__user_rt_sigreturn)
+#endif
diff --git a/arch/riscv/kernel/head.S b/arch/riscv/kernel/head.S
index e05379fd8b64..d869cc7c6a12 100644
--- a/arch/riscv/kernel/head.S
+++ b/arch/riscv/kernel/head.S
@@ -68,10 +68,12 @@ clear_bss_done:
 	la a2, boot_cpu_hartid
 	REG_S a0, (a2)
 
+#ifdef CONFIG_MMU
 	/* Initialize page tables and relocate to virtual addresses */
 	la sp, init_thread_union + THREAD_SIZE
 	call setup_vm
 	call relocate
+#endif /* CONFIG_MMU */
 
 	/* Restore C environment */
 	la tp, init_task
@@ -83,6 +85,7 @@ clear_bss_done:
 	call parse_dtb
 	tail start_kernel
 
+#ifdef CONFIG_MMU
 relocate:
 	/* Relocate return address */
 	li a1, PAGE_OFFSET
@@ -134,6 +137,7 @@ relocate:
 	sfence.vma
 
 	ret
+#endif /* CONFIG_MMU */
 
 .Lsecondary_start:
 #ifdef CONFIG_SMP
@@ -162,8 +166,10 @@ relocate:
 	beqz tp, .Lwait_for_cpu_up
 	fence
 
+#ifdef CONFIG_MMU
 	/* Enable virtual memory and relocate to virtual address */
 	call relocate
+#endif
 
 	tail smp_callin
 #endif
diff --git a/arch/riscv/kernel/signal.c b/arch/riscv/kernel/signal.c
index dfb26b64e17a..7de7e539b25b 100644
--- a/arch/riscv/kernel/signal.c
+++ b/arch/riscv/kernel/signal.c
@@ -17,11 +17,16 @@
 #include <asm/switch_to.h>
 #include <asm/csr.h>
 
+extern u32 __user_rt_sigreturn[2];
+
 #define DEBUG_SIG 0
 
 struct rt_sigframe {
 	struct siginfo info;
 	struct ucontext uc;
+#ifndef CONFIG_MMU
+	u32 sigreturn_code[2];
+#endif
 };
 
 #ifdef CONFIG_FPU
@@ -166,7 +171,6 @@ static inline void __user *get_sigframe(struct ksignal *ksig,
 	return (void __user *)sp;
 }
 
-
 static int setup_rt_frame(struct ksignal *ksig, sigset_t *set,
 	struct pt_regs *regs)
 {
@@ -189,8 +193,19 @@ static int setup_rt_frame(struct ksignal *ksig, sigset_t *set,
 		return -EFAULT;
 
 	/* Set up to return from userspace. */
+#ifdef CONFIG_MMU
 	regs->ra = (unsigned long)VDSO_SYMBOL(
 		current->mm->context.vdso, rt_sigreturn);
+#else
+	/*
+	 * For the nommu case we don't have a VDSO.  Instead we push two
+	 * instructions to call the rt_sigreturn syscall onto the user stack.
+	 */
+	if (copy_to_user(&frame->sigreturn_code, __user_rt_sigreturn,
+			sizeof(frame->sigreturn_code)))
+		return -EFAULT;
+	regs->ra = (unsigned long)&frame->sigreturn_code;;
+#endif /* CONFIG_MMU */
 
 	/*
 	 * Set up registers for signal handler.
diff --git a/arch/riscv/lib/Makefile b/arch/riscv/lib/Makefile
index 8e364ebf37de..5382e42d0cba 100644
--- a/arch/riscv/lib/Makefile
+++ b/arch/riscv/lib/Makefile
@@ -2,8 +2,6 @@
 lib-y	+= delay.o
 lib-y	+= memcpy.o
 lib-y	+= memset.o
-lib-y	+= uaccess.o
-
-lib-$(CONFIG_64BIT) += tishift.o
-
-lib-$(CONFIG_32BIT) += udivdi3.o
+lib-$(CONFIG_MMU)	+= uaccess.o
+lib-$(CONFIG_64BIT)	+= tishift.o
+lib-$(CONFIG_32BIT)	+= udivdi3.o
diff --git a/arch/riscv/mm/Makefile b/arch/riscv/mm/Makefile
index fc51d3b7876e..8fc2fd148b06 100644
--- a/arch/riscv/mm/Makefile
+++ b/arch/riscv/mm/Makefile
@@ -6,9 +6,8 @@ CFLAGS_REMOVE_init.o = -pg
 endif
 
 obj-y += init.o
-obj-y += fault.o
 obj-y += extable.o
-obj-y += ioremap.o
+obj-$(CONFIG_MMU) += fault.o ioremap.o
 obj-y += cacheflush.o
 obj-y += context.o
 obj-y += sifive_l2_cache.o
diff --git a/arch/riscv/mm/cacheflush.c b/arch/riscv/mm/cacheflush.c
index 10875ea1065e..0fc69eedc921 100644
--- a/arch/riscv/mm/cacheflush.c
+++ b/arch/riscv/mm/cacheflush.c
@@ -90,6 +90,7 @@ void flush_icache_mm(struct mm_struct *mm, bool local)
 
 #endif /* CONFIG_SMP */
 
+#ifdef CONFIG_MMU
 void flush_icache_pte(pte_t pte)
 {
 	struct page *page = pte_page(pte);
@@ -97,3 +98,4 @@ void flush_icache_pte(pte_t pte)
 	if (!test_and_set_bit(PG_dcache_clean, &page->flags))
 		flush_icache_all();
 }
+#endif /* CONFIG_MMU */
diff --git a/arch/riscv/mm/context.c b/arch/riscv/mm/context.c
index beeb5d7f92ea..073ff12a838a 100644
--- a/arch/riscv/mm/context.c
+++ b/arch/riscv/mm/context.c
@@ -57,8 +57,10 @@ void switch_mm(struct mm_struct *prev, struct mm_struct *next,
 	cpumask_clear_cpu(cpu, mm_cpumask(prev));
 	cpumask_set_cpu(cpu, mm_cpumask(next));
 
+#ifdef CONFIG_MMU
 	csr_write(CSR_SATP, virt_to_pfn(next->pgd) | SATP_MODE);
 	local_flush_tlb_all();
+#endif
 
 	flush_icache_deferred(next);
 }
diff --git a/arch/riscv/mm/init.c b/arch/riscv/mm/init.c
index 84747d7a1e85..782be273e714 100644
--- a/arch/riscv/mm/init.c
+++ b/arch/riscv/mm/init.c
@@ -142,6 +142,7 @@ void __init setup_bootmem(void)
 	}
 }
 
+#ifdef CONFIG_MMU
 unsigned long va_pa_offset;
 EXPORT_SYMBOL(va_pa_offset);
 unsigned long pfn_base;
@@ -247,3 +248,4 @@ asmlinkage void __init setup_vm(void)
 				__pgprot(_PAGE_TABLE));
 #endif
 }
+#endif /* CONFIG_MMU */
-- 
2.20.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
