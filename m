Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71798FFC27
	for <lists+linux-riscv@lfdr.de>; Mon, 18 Nov 2019 00:13:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=duLiu4q43qFcFBs7jLaSO48aHFtXdl7BRbSXY2fN1ho=; b=CsylErrMw71+8h
	upoLWnIk5/YLnHt6NdOAV6zZTCqdqTc9jPyoMPIzSW4vgN2lrmUpVINSTZNUGUeQBBaxfy5jsy6zX
	wKNry66JMWshe4LOFQyvjHPYH690v41lI+JDTDimcfTlXurdKIrfi8t5jP68jM8xszwtLzfG/q60v
	MYGfcPczkU1v+QjbMLf+5hBHROB57OCNrHwsxFJ5zwyq5/PG1jTnkVSc655oS9ajO8ZSJyNI36WcA
	T0QmMmPfENP+uoNEkn9YRLgryPY8Ur+lP6sE7oqF9Af737MgBuH+PJdqTmXz/Ukr37q8tXHCYhvkd
	6cgub2Xza2x5slljCxSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWTjZ-0006m0-Su; Sun, 17 Nov 2019 23:13:33 +0000
Received: from mail-il1-x143.google.com ([2607:f8b0:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWTjU-0006lh-DW
 for linux-riscv@lists.infradead.org; Sun, 17 Nov 2019 23:13:31 +0000
Received: by mail-il1-x143.google.com with SMTP id o18so14252016ils.12
 for <linux-riscv@lists.infradead.org>; Sun, 17 Nov 2019 15:13:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=cCa1f1rOYDmYH2uLQVOAaA3UDXl5RVRd+ZVcah9xrEw=;
 b=nYNHx/tXlU2U9RowBGzwNzT19xpb8cSW+rGs6Z+19Fj/2l20thNiDimeYxBZVu5kEB
 ffUfT+8ys4YNNtB+8lgHCYPjf2KCHHNBBVIJfVJhkLFCL/T0EBvZFbddHedjZj84pIyP
 R8szmDLpeaxEnGUJNyCcstVOTzYNjuWdBycRlh3DgEYB2ZOPbT4SHljlRf49SZlX3ITa
 LNuNOtr4/aXxyYKXJiVEHQ7Gir//tKh/g7Bo7nLJabCBCA7JoZNis6h3MZnFY0pa5JwE
 uScUOWPeBmyokPYknI+uBdl1iDYPVHqeKD96qmX9XM28yGP6FZ6Wdz6/LxhF5or+coRz
 mpaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=cCa1f1rOYDmYH2uLQVOAaA3UDXl5RVRd+ZVcah9xrEw=;
 b=iqToPe9Mph0jJVxtAhUuzgB2x0BOFlOLzbazTBtIQgcMfmshoPhKr4jeN7d08MFf3d
 0tc1RieoVVV/De4d6dXDUDLHPiP9/wCzYa4VOsHMIsUOP/DsmtYOWei17vLF5OcaZ1lO
 Ik2XP2iSkAG7e8lzCZZ+yz8/iyAp7WSjGIQOrOoEsr8VG4M6eDrpnzDU1QNMsF1LaG6Z
 f4zvF9Ku0vpbfgdWbxPqxOsacBMq0Ajn0ORYEZ830wBUsmcAze4JJlkrELJ3rvspcbMk
 vy9BOU+l17BAJVPhnAdSMsI+4Pxxo9/U0ZbsQYgqTB4G5IzJq3a/JuwdANxqAWaeGomn
 QsvQ==
X-Gm-Message-State: APjAAAWrc1MSxmi42DR4DlLoAPvLunK0LPHREFrdl1kSDe7S0m70iY8n
 jbx8yw12X2SzGUZW4O1diW2fBPD3h6Y=
X-Google-Smtp-Source: APXvYqyx4Ajh/Nr7gyyrqv2j2BaXrtVVL1CmnL5eqF8UXpgEcPTK1QYxGYYDuTQRTUvBkoLmAkDcEw==
X-Received: by 2002:a92:1d08:: with SMTP id d8mr13037588ild.262.1574032407066; 
 Sun, 17 Nov 2019 15:13:27 -0800 (PST)
Received: from localhost ([2601:8c4:0:9294:cb6f:4cf:b239:2fee])
 by smtp.gmail.com with ESMTPSA id x18sm2980553iob.70.2019.11.17.15.13.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 17 Nov 2019 15:13:26 -0800 (PST)
Date: Sun, 17 Nov 2019 15:13:25 -0800 (PST)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH 10/12] riscv: add nommu support
In-Reply-To: <20191028121043.22934-11-hch@lst.de>
Message-ID: <alpine.DEB.2.21.9999.1911171511170.5296@viisi.sifive.com>
References: <20191028121043.22934-1-hch@lst.de>
 <20191028121043.22934-11-hch@lst.de>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191117_151328_496416_6E2B4BF6 
X-CRM114-Status: GOOD (  25.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:143 listed in]
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
Cc: Anup Patel <anup@brainfault.org>, Damien Le Moal <damien.lemoal@wdc.com>,
 Palmer Dabbelt <palmer@sifive.com>, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, 28 Oct 2019, Christoph Hellwig wrote:

> The kernel runs in M-mode without using page tables, and thus can't run
> bare metal without help from additional firmware.
> 
> Most of the patch is just stubbing out code not needed without page
> tables, but there is an interesting detail in the signals implementation:
> 
>  - The normal RISC-V syscall ABI only implements rt_sigreturn as VDSO
>    entry point, but the ELF VDSO is not supported for nommu Linux.
>    We instead copy the code to call the syscall onto the stack.
> 
> In addition to enabling the nommu code a new defconfig for a small
> kernel image that can run in nommu mode on qemu is also provided, to run
> a kernel in qemu you can use the following command line:
> 
> qemu-system-riscv64 -smp 2 -m 64 -machine virt -nographic \
> 	-kernel arch/riscv/boot/loader \
> 	-drive file=rootfs.ext2,format=raw,id=hd0 \
> 	-device virtio-blk-device,drive=hd0
> 
> Contains contributions from Damien Le Moal <Damien.LeMoal@wdc.com>.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> Reviewed-by: Anup Patel <anup@brainfault.org>

Thanks, queued the following for v5.5-rc1.


- Paul


From: Christoph Hellwig <hch@lst.de>
Date: Mon, 28 Oct 2019 13:10:41 +0100
Subject: [PATCH] riscv: add nommu support

The kernel runs in M-mode without using page tables, and thus can't run
bare metal without help from additional firmware.

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
Reviewed-by: Anup Patel <anup@brainfault.org>
[paul.walmsley@sifive.com: updated to apply; add CONFIG_MMU guards
 around PCI_IOBASE definition to fix build issues; fixed checkpatch
 issues; move the PCI_IO_* and VMEMMAP address space macros along
 with the others; resolve sparse warning]
Signed-off-by: Paul Walmsley <paul.walmsley@sifive.com>
---
 arch/riscv/Kconfig                      | 26 ++++---
 arch/riscv/configs/nommu_virt_defconfig | 78 ++++++++++++++++++++
 arch/riscv/include/asm/cache.h          |  8 +++
 arch/riscv/include/asm/elf.h            |  4 +-
 arch/riscv/include/asm/fixmap.h         |  2 +
 arch/riscv/include/asm/futex.h          |  6 ++
 arch/riscv/include/asm/io.h             |  2 +
 arch/riscv/include/asm/mmio.h           |  4 ++
 arch/riscv/include/asm/mmu.h            |  3 +
 arch/riscv/include/asm/page.h           | 10 ++-
 arch/riscv/include/asm/pgalloc.h        |  2 +
 arch/riscv/include/asm/pgtable.h        | 94 ++++++++++++++-----------
 arch/riscv/include/asm/tlbflush.h       | 12 +++-
 arch/riscv/include/asm/uaccess.h        |  4 ++
 arch/riscv/kernel/Makefile              |  3 +-
 arch/riscv/kernel/entry.S               | 11 +++
 arch/riscv/kernel/head.S                |  6 ++
 arch/riscv/kernel/signal.c              | 17 ++++-
 arch/riscv/lib/Makefile                 | 11 ++-
 arch/riscv/mm/Makefile                  |  3 +-
 arch/riscv/mm/cacheflush.c              |  2 +
 arch/riscv/mm/context.c                 |  2 +
 arch/riscv/mm/init.c                    | 15 +++-
 23 files changed, 254 insertions(+), 71 deletions(-)
 create mode 100644 arch/riscv/configs/nommu_virt_defconfig

diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index b85492c42ccb..babc8a0d3d2e 100644
--- a/arch/riscv/Kconfig
+++ b/arch/riscv/Kconfig
@@ -26,14 +26,14 @@ config RISCV
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
 	select HAVE_ASM_MODVERSIONS
 	select HAVE_MEMBLOCK_NODE_MAP
-	select HAVE_DMA_CONTIGUOUS
+	select HAVE_DMA_CONTIGUOUS if MMU
 	select HAVE_FUTEX_CMPXCHG if FUTEX
 	select HAVE_PERF_EVENTS
 	select HAVE_PERF_REGS
@@ -50,6 +50,7 @@ config RISCV
 	select PCI_DOMAINS_GENERIC if PCI
 	select PCI_MSI if PCI
 	select RISCV_TIMER
+	select UACCESS_MEMCPY if !MMU
 	select GENERIC_IRQ_MULTI_HANDLER
 	select GENERIC_ARCH_TOPOLOGY if SMP
 	select ARCH_HAS_PTE_SPECIAL
@@ -60,7 +61,7 @@ config RISCV
 	select ARCH_WANT_HUGE_PMD_SHARE if 64BIT
 	select SPARSEMEM_STATIC if 32BIT
 	select ARCH_WANT_DEFAULT_TOPDOWN_MMAP_LAYOUT if MMU
-	select HAVE_ARCH_MMAP_RND_BITS
+	select HAVE_ARCH_MMAP_RND_BITS if MMU
 
 config ARCH_MMAP_RND_BITS_MIN
 	default 18 if 64BIT
@@ -75,6 +76,7 @@ config ARCH_MMAP_RND_BITS_MAX
 # set if we run in machine mode, cleared if we run in supervisor mode
 config RISCV_M_MODE
 	bool
+	default !MMU
 
 # set if we are running in S-mode and can use SBI calls
 config RISCV_SBI
@@ -83,7 +85,11 @@ config RISCV_SBI
 	default y
 
 config MMU
-	def_bool y
+	bool "MMU-based Paged Memory Management Support"
+	default y
+	help
+	  Select if you want MMU-based virtualised addressing space
+	  support by paged memory management. If unsure, say 'Y'.
 
 config ZONE_DMA32
 	bool
@@ -102,6 +108,7 @@ config PA_BITS
 config PAGE_OFFSET
 	hex
 	default 0xC0000000 if 32BIT && MAXPHYSMEM_2GB
+	default 0x80000000 if 64BIT && !MMU
 	default 0xffffffff80000000 if 64BIT && MAXPHYSMEM_2GB
 	default 0xffffffe000000000 if 64BIT && MAXPHYSMEM_128GB
 
@@ -145,7 +152,7 @@ config GENERIC_HWEIGHT
 	def_bool y
 
 config FIX_EARLYCON_MEM
-	def_bool y
+	def_bool CONFIG_MMU
 
 config PGTABLE_LEVELS
 	int
@@ -170,6 +177,7 @@ config ARCH_RV32I
 	select GENERIC_LIB_ASHRDI3
 	select GENERIC_LIB_LSHRDI3
 	select GENERIC_LIB_UCMPDI2
+	select MMU
 
 config ARCH_RV64I
 	bool "RV64I"
@@ -178,9 +186,9 @@ config ARCH_RV64I
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
diff --git a/arch/riscv/include/asm/cache.h b/arch/riscv/include/asm/cache.h
index bfd523e8f0b2..9b58b104559e 100644
--- a/arch/riscv/include/asm/cache.h
+++ b/arch/riscv/include/asm/cache.h
@@ -11,4 +11,12 @@
 
 #define L1_CACHE_BYTES		(1 << L1_CACHE_SHIFT)
 
+/*
+ * RISC-V requires the stack pointer to be 16-byte aligned, so ensure that
+ * the flat loader aligns it accordingly.
+ */
+#ifndef CONFIG_MMU
+#define ARCH_SLAB_MINALIGN	16
+#endif
+
 #endif /* _ASM_RISCV_CACHE_H */
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
diff --git a/arch/riscv/include/asm/fixmap.h b/arch/riscv/include/asm/fixmap.h
index 161f28d04a07..42d2c42f3cc9 100644
--- a/arch/riscv/include/asm/fixmap.h
+++ b/arch/riscv/include/asm/fixmap.h
@@ -11,6 +11,7 @@
 #include <asm/page.h>
 #include <asm/pgtable.h>
 
+#ifdef CONFIG_MMU
 /*
  * Here we define all the compile-time 'special' virtual addresses.
  * The point is to have a constant address at compile time, but to
@@ -42,4 +43,5 @@ extern void __set_fixmap(enum fixed_addresses idx,
 
 #include <asm-generic/fixmap.h>
 
+#endif /* CONFIG_MMU */
 #endif /* _ASM_RISCV_FIXMAP_H */
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
index d5af79cd89db..0f477206a4ed 100644
--- a/arch/riscv/include/asm/io.h
+++ b/arch/riscv/include/asm/io.h
@@ -24,8 +24,10 @@
 /*
  *  I/O port access constants.
  */
+#ifdef CONFIG_MMU
 #define IO_SPACE_LIMIT		(PCI_IO_SIZE - 1)
 #define PCI_IOBASE		((void __iomem *)PCI_IO_START)
+#endif /* CONFIG_MMU */
 
 /*
  * Emulation routines for the port-mapped IO space used by some PCI drivers.
diff --git a/arch/riscv/include/asm/mmio.h b/arch/riscv/include/asm/mmio.h
index 308b98f85753..a297a835e402 100644
--- a/arch/riscv/include/asm/mmio.h
+++ b/arch/riscv/include/asm/mmio.h
@@ -14,6 +14,7 @@
 #include <linux/types.h>
 #include <asm/mmiowb.h>
 
+#ifdef CONFIG_MMU
 void __iomem *ioremap(phys_addr_t offset, unsigned long size);
 
 /*
@@ -26,6 +27,9 @@ void __iomem *ioremap(phys_addr_t offset, unsigned long size);
 #define ioremap_wt(addr, size) ioremap((addr), (size))
 
 void iounmap(volatile void __iomem *addr);
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
index 3db261c4810f..ac699246ae7e 100644
--- a/arch/riscv/include/asm/page.h
+++ b/arch/riscv/include/asm/page.h
@@ -88,8 +88,14 @@ typedef struct page *pgtable_t;
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
@@ -112,11 +118,9 @@ extern unsigned long min_low_pfn;
 
 #ifdef CONFIG_FLATMEM
 #define pfn_valid(pfn) \
-	(((pfn) >= pfn_base) && (((pfn)-pfn_base) < max_mapnr))
+	(((pfn) >= ARCH_PFN_OFFSET) && (((pfn) - ARCH_PFN_OFFSET) < max_mapnr))
 #endif
 
-#define ARCH_PFN_OFFSET		(pfn_base)
-
 #endif /* __ASSEMBLY__ */
 
 #define virt_addr_valid(vaddr)	(pfn_valid(virt_to_pfn(vaddr)))
diff --git a/arch/riscv/include/asm/pgalloc.h b/arch/riscv/include/asm/pgalloc.h
index d59ea92285ec..3f601ee8233f 100644
--- a/arch/riscv/include/asm/pgalloc.h
+++ b/arch/riscv/include/asm/pgalloc.h
@@ -10,6 +10,7 @@
 #include <linux/mm.h>
 #include <asm/tlb.h>
 
+#ifdef CONFIG_MMU
 #include <asm-generic/pgalloc.h>	/* for pte_{alloc,free}_one */
 
 static inline void pmd_populate_kernel(struct mm_struct *mm,
@@ -81,5 +82,6 @@ do {                                    \
 	pgtable_pte_page_dtor(pte);     \
 	tlb_remove_page((tlb), pte);    \
 } while (0)
+#endif /* CONFIG_MMU */
 
 #endif /* _ASM_RISCV_PGALLOC_H */
diff --git a/arch/riscv/include/asm/pgtable.h b/arch/riscv/include/asm/pgtable.h
index d3221017194d..beb5f0865e39 100644
--- a/arch/riscv/include/asm/pgtable.h
+++ b/arch/riscv/include/asm/pgtable.h
@@ -25,6 +25,7 @@
 #include <asm/pgtable-32.h>
 #endif /* CONFIG_64BIT */
 
+#ifdef CONFIG_MMU
 /* Number of entries in the page global directory */
 #define PTRS_PER_PGD    (PAGE_SIZE / sizeof(pgd_t))
 /* Number of entries in the page table */
@@ -32,7 +33,6 @@
 
 /* Number of PGD entries that a user-mode program can use */
 #define USER_PTRS_PER_PGD   (TASK_SIZE / PGDIR_SIZE)
-#define FIRST_USER_ADDRESS  0
 
 /* Page protection bits */
 #define _PAGE_BASE	(_PAGE_PRESENT | _PAGE_ACCESSED | _PAGE_USER)
@@ -84,42 +84,6 @@ extern pgd_t swapper_pg_dir[];
 #define __S110	PAGE_SHARED_EXEC
 #define __S111	PAGE_SHARED_EXEC
 
-#define VMALLOC_SIZE     (KERN_VIRT_SIZE >> 1)
-#define VMALLOC_END      (PAGE_OFFSET - 1)
-#define VMALLOC_START    (PAGE_OFFSET - VMALLOC_SIZE)
-#define PCI_IO_SIZE      SZ_16M
-
-/*
- * Roughly size the vmemmap space to be large enough to fit enough
- * struct pages to map half the virtual address space. Then
- * position vmemmap directly below the VMALLOC region.
- */
-#define VMEMMAP_SHIFT \
-	(CONFIG_VA_BITS - PAGE_SHIFT - 1 + STRUCT_PAGE_MAX_SHIFT)
-#define VMEMMAP_SIZE	BIT(VMEMMAP_SHIFT)
-#define VMEMMAP_END	(VMALLOC_START - 1)
-#define VMEMMAP_START	(VMALLOC_START - VMEMMAP_SIZE)
-
-#define vmemmap		((struct page *)VMEMMAP_START)
-
-#define PCI_IO_END       VMEMMAP_START
-#define PCI_IO_START     (PCI_IO_END - PCI_IO_SIZE)
-#define FIXADDR_TOP      PCI_IO_START
-
-#ifdef CONFIG_64BIT
-#define FIXADDR_SIZE     PMD_SIZE
-#else
-#define FIXADDR_SIZE     PGDIR_SIZE
-#endif
-#define FIXADDR_START    (FIXADDR_TOP - FIXADDR_SIZE)
-
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
@@ -430,11 +394,34 @@ static inline int ptep_clear_flush_young(struct vm_area_struct *vma,
 #define __pte_to_swp_entry(pte)	((swp_entry_t) { pte_val(pte) })
 #define __swp_entry_to_pte(x)	((pte_t) { (x).val })
 
-#define kern_addr_valid(addr)   (1) /* FIXME */
+#define VMALLOC_SIZE     (KERN_VIRT_SIZE >> 1)
+#define VMALLOC_END      (PAGE_OFFSET - 1)
+#define VMALLOC_START    (PAGE_OFFSET - VMALLOC_SIZE)
 
-extern void *dtb_early_va;
-extern void setup_bootmem(void);
-extern void paging_init(void);
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
+#define PCI_IO_SIZE      SZ_16M
+#define PCI_IO_END       VMEMMAP_START
+#define PCI_IO_START     (PCI_IO_END - PCI_IO_SIZE)
+
+#define FIXADDR_TOP      PCI_IO_START
+#ifdef CONFIG_64BIT
+#define FIXADDR_SIZE     PMD_SIZE
+#else
+#define FIXADDR_SIZE     PGDIR_SIZE
+#endif
+#define FIXADDR_START    (FIXADDR_TOP - FIXADDR_SIZE)
 
 /*
  * Task size is 0x4000000000 for RV64 or 0x9fc00000 for RV32.
@@ -446,6 +433,31 @@ extern void paging_init(void);
 #define TASK_SIZE FIXADDR_START
 #endif
 
+#else /* CONFIG_MMU */
+
+#define PAGE_KERNEL		__pgprot(0)
+#define swapper_pg_dir		NULL
+#define VMALLOC_START		0
+
+#define TASK_SIZE 0xffffffffUL
+
+#endif /* !CONFIG_MMU */
+
+#define kern_addr_valid(addr)   (1) /* FIXME */
+
+extern void *dtb_early_va;
+void setup_bootmem(void);
+void paging_init(void);
+
+#define FIRST_USER_ADDRESS  0
+
+/*
+ * ZERO_PAGE is a global shared page that is always zero,
+ * used for zero-mapped memory areas, etc.
+ */
+extern unsigned long empty_zero_page[PAGE_SIZE / sizeof(unsigned long)];
+#define ZERO_PAGE(vaddr) (virt_to_page(empty_zero_page))
+
 #include <asm-generic/pgtable.h>
 
 #endif /* !__ASSEMBLY__ */
diff --git a/arch/riscv/include/asm/tlbflush.h b/arch/riscv/include/asm/tlbflush.h
index f02188a5b0f4..394cfbccdcd9 100644
--- a/arch/riscv/include/asm/tlbflush.h
+++ b/arch/riscv/include/asm/tlbflush.h
@@ -10,6 +10,7 @@
 #include <linux/mm_types.h>
 #include <asm/smp.h>
 
+#ifdef CONFIG_MMU
 static inline void local_flush_tlb_all(void)
 {
 	__asm__ __volatile__ ("sfence.vma" : : : "memory");
@@ -20,14 +21,19 @@ static inline void local_flush_tlb_page(unsigned long addr)
 {
 	__asm__ __volatile__ ("sfence.vma %0" : : "r" (addr) : "memory");
 }
+#else /* CONFIG_MMU */
+#define local_flush_tlb_all()			do { } while (0)
+#define local_flush_tlb_page(addr)		do { } while (0)
+#endif /* CONFIG_MMU */
 
-#ifdef CONFIG_SMP
+#if defined(CONFIG_SMP) && defined(CONFIG_MMU)
 void flush_tlb_all(void);
 void flush_tlb_mm(struct mm_struct *mm);
 void flush_tlb_page(struct vm_area_struct *vma, unsigned long addr);
 void flush_tlb_range(struct vm_area_struct *vma, unsigned long start,
 		     unsigned long end);
-#else /* CONFIG_SMP */
+#else /* CONFIG_SMP && CONFIG_MMU */
+
 #define flush_tlb_all() local_flush_tlb_all()
 #define flush_tlb_page(vma, addr) local_flush_tlb_page(addr)
 
@@ -38,7 +44,7 @@ static inline void flush_tlb_range(struct vm_area_struct *vma,
 }
 
 #define flush_tlb_mm(mm) flush_tlb_all()
-#endif /* CONFIG_SMP */
+#endif /* !CONFIG_SMP || !CONFIG_MMU */
 
 /* Flush a range of kernel pages */
 static inline void flush_tlb_kernel_range(unsigned long start,
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
index 2dca51046899..f40205cb9a22 100644
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
 
 obj-$(CONFIG_RISCV_M_MODE)	+= clint.o
 obj-$(CONFIG_FPU)		+= fpu.o
diff --git a/arch/riscv/kernel/entry.S b/arch/riscv/kernel/entry.S
index b84f8d7f4911..89aecba63f49 100644
--- a/arch/riscv/kernel/entry.S
+++ b/arch/riscv/kernel/entry.S
@@ -398,6 +398,10 @@ ENTRY(__switch_to)
 	ret
 ENDPROC(__switch_to)
 
+#ifndef CONFIG_MMU
+#define do_page_fault do_trap_unknown
+#endif
+
 	.section ".rodata"
 	/* Exception vector table */
 ENTRY(excp_vect_table)
@@ -419,3 +423,10 @@ ENTRY(excp_vect_table)
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
index 64eb8beb228e..84a6f0a4b120 100644
--- a/arch/riscv/kernel/head.S
+++ b/arch/riscv/kernel/head.S
@@ -109,8 +109,10 @@ clear_bss_done:
 	la sp, init_thread_union + THREAD_SIZE
 	mv a0, s1
 	call setup_vm
+#ifdef CONFIG_MMU
 	la a0, early_pg_dir
 	call relocate
+#endif /* CONFIG_MMU */
 
 	/* Restore C environment */
 	la tp, init_task
@@ -121,6 +123,7 @@ clear_bss_done:
 	call parse_dtb
 	tail start_kernel
 
+#ifdef CONFIG_MMU
 relocate:
 	/* Relocate return address */
 	li a1, PAGE_OFFSET
@@ -171,6 +174,7 @@ relocate:
 	sfence.vma
 
 	ret
+#endif /* CONFIG_MMU */
 
 .Lsecondary_start:
 #ifdef CONFIG_SMP
@@ -196,9 +200,11 @@ relocate:
 	beqz tp, .Lwait_for_cpu_up
 	fence
 
+#ifdef CONFIG_MMU
 	/* Enable virtual memory and relocate to virtual address */
 	la a0, swapper_pg_dir
 	call relocate
+#endif
 
 	tail smp_callin
 #endif
diff --git a/arch/riscv/kernel/signal.c b/arch/riscv/kernel/signal.c
index b7f9a5565c4b..17ba190e84a5 100644
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
+			 sizeof(frame->sigreturn_code)))
+		return -EFAULT;
+	regs->ra = (unsigned long)&frame->sigreturn_code;
+#endif /* CONFIG_MMU */
 
 	/*
 	 * Set up registers for signal handler.
diff --git a/arch/riscv/lib/Makefile b/arch/riscv/lib/Makefile
index 267feaa10f6a..47e7a8204460 100644
--- a/arch/riscv/lib/Makefile
+++ b/arch/riscv/lib/Makefile
@@ -1,7 +1,6 @@
 # SPDX-License-Identifier: GPL-2.0-only
-lib-y	+= delay.o
-lib-y	+= memcpy.o
-lib-y	+= memset.o
-lib-y	+= uaccess.o
-
-lib-$(CONFIG_64BIT) += tishift.o
+lib-y			+= delay.o
+lib-y			+= memcpy.o
+lib-y			+= memset.o
+lib-$(CONFIG_MMU)	+= uaccess.o
+lib-$(CONFIG_64BIT)	+= tishift.o
diff --git a/arch/riscv/mm/Makefile b/arch/riscv/mm/Makefile
index 9d9a17335686..44ab8f28c3fa 100644
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
index 794c9ab256eb..8f1900686640 100644
--- a/arch/riscv/mm/cacheflush.c
+++ b/arch/riscv/mm/cacheflush.c
@@ -78,6 +78,7 @@ void flush_icache_mm(struct mm_struct *mm, bool local)
 
 #endif /* CONFIG_SMP */
 
+#ifdef CONFIG_MMU
 void flush_icache_pte(pte_t pte)
 {
 	struct page *page = pte_page(pte);
@@ -85,3 +86,4 @@ void flush_icache_pte(pte_t pte)
 	if (!test_and_set_bit(PG_dcache_clean, &page->flags))
 		flush_icache_all();
 }
+#endif /* CONFIG_MMU */
diff --git a/arch/riscv/mm/context.c b/arch/riscv/mm/context.c
index ca66d44156b6..613ec81a8979 100644
--- a/arch/riscv/mm/context.c
+++ b/arch/riscv/mm/context.c
@@ -58,8 +58,10 @@ void switch_mm(struct mm_struct *prev, struct mm_struct *next,
 	cpumask_clear_cpu(cpu, mm_cpumask(prev));
 	cpumask_set_cpu(cpu, mm_cpumask(next));
 
+#ifdef CONFIG_MMU
 	csr_write(CSR_SATP, virt_to_pfn(next->pgd) | SATP_MODE);
 	local_flush_tlb_all();
+#endif
 
 	flush_icache_deferred(next);
 }
diff --git a/arch/riscv/mm/init.c b/arch/riscv/mm/init.c
index 573463d1c799..6322ec82ec1d 100644
--- a/arch/riscv/mm/init.c
+++ b/arch/riscv/mm/init.c
@@ -26,6 +26,7 @@ unsigned long empty_zero_page[PAGE_SIZE / sizeof(unsigned long)]
 EXPORT_SYMBOL(empty_zero_page);
 
 extern char _start[];
+void *dtb_early_va;
 
 static void __init zone_sizes_init(void)
 {
@@ -40,7 +41,7 @@ static void __init zone_sizes_init(void)
 	free_area_init_nodes(max_zone_pfns);
 }
 
-void setup_zero_page(void)
+static void setup_zero_page(void)
 {
 	memset((void *)empty_zero_page, 0, PAGE_SIZE);
 }
@@ -142,12 +143,12 @@ void __init setup_bootmem(void)
 	}
 }
 
+#ifdef CONFIG_MMU
 unsigned long va_pa_offset;
 EXPORT_SYMBOL(va_pa_offset);
 unsigned long pfn_base;
 EXPORT_SYMBOL(pfn_base);
 
-void *dtb_early_va;
 pgd_t swapper_pg_dir[PTRS_PER_PGD] __page_aligned_bss;
 pgd_t trampoline_pg_dir[PTRS_PER_PGD] __page_aligned_bss;
 pte_t fixmap_pte[PTRS_PER_PTE] __page_aligned_bss;
@@ -449,6 +450,16 @@ static void __init setup_vm_final(void)
 	csr_write(CSR_SATP, PFN_DOWN(__pa(swapper_pg_dir)) | SATP_MODE);
 	local_flush_tlb_all();
 }
+#else
+asmlinkage void __init setup_vm(uintptr_t dtb_pa)
+{
+	dtb_early_va = (void *)dtb_pa;
+}
+
+static inline void setup_vm_final(void)
+{
+}
+#endif /* CONFIG_MMU */
 
 void __init paging_init(void)
 {
-- 
2.24.0.rc0


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
