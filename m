Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6237DB384
	for <lists+linux-riscv@lfdr.de>; Thu, 17 Oct 2019 19:38:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fugmFedJx/sBM2J00O5rQM2mwHhUgUAwy879ZQquG2s=; b=QWB2kY4QU44h6/
	4HVBdS4KhjO59NTqedA1lCaE4qyhFd5B2kLmWCAUllykLLspYPQdNz3qrqbVB2WW22N6OdA8S180M
	UqryMZ6C6dYuzn1I3yG3jC5//JwOB2CyqBQgKQjyIe/ulm2P7tLKY0pjibnHhk+xVLyMYDQ6wAZ5Z
	HZtgUdc9U1ZlTEXFgdQXIeGhz9yxquIN8t2d8f86iSxlAzx/Bcmvk3i7VA0kE2qbHrd89rXMRcl3J
	l4tmH/xX4ff3wz4GjqL/goiH0BDR/MFFOEgQ90ZR4NpaNKrh1GUkqg/PcJKIYZ468qX8M4A4XZozH
	tBv9XR1j/x3oaEE0h6Gw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL9jT-0008SR-CT; Thu, 17 Oct 2019 17:38:39 +0000
Received: from [2001:4bb8:18c:d7b:c70:4a89:bc61:3] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL9jB-00089A-3v; Thu, 17 Oct 2019 17:38:21 +0000
From: Christoph Hellwig <hch@lst.de>
To: Palmer Dabbelt <palmer@sifive.com>,
 Paul Walmsley <paul.walmsley@sifive.com>
Subject: [PATCH 14/15] riscv: provide a flat image loader
Date: Thu, 17 Oct 2019 19:37:42 +0200
Message-Id: <20191017173743.5430-15-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191017173743.5430-1-hch@lst.de>
References: <20191017173743.5430-1-hch@lst.de>
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
Cc: Damien Le Moal <damien.lemoal@wdc.com>, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

This allows just loading the kernel at a pre-set address without
qemu going bonkers trying to map the ELF file.

Contains a controbution from Aurabindo Jayamohanan to reuse the
PAGE_OFFSET definition.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 arch/riscv/Makefile          | 13 +++++++++----
 arch/riscv/boot/Makefile     |  7 ++++++-
 arch/riscv/boot/loader.S     |  8 ++++++++
 arch/riscv/boot/loader.lds.S | 16 ++++++++++++++++
 4 files changed, 39 insertions(+), 5 deletions(-)
 create mode 100644 arch/riscv/boot/loader.S
 create mode 100644 arch/riscv/boot/loader.lds.S

diff --git a/arch/riscv/Makefile b/arch/riscv/Makefile
index f5e914210245..b9009a2fbaf5 100644
--- a/arch/riscv/Makefile
+++ b/arch/riscv/Makefile
@@ -83,13 +83,18 @@ PHONY += vdso_install
 vdso_install:
 	$(Q)$(MAKE) $(build)=arch/riscv/kernel/vdso $@
 
-all: Image.gz
+ifeq ($(CONFIG_RISCV_M_MODE),y)
+KBUILD_IMAGE := $(boot)/loader
+else
+KBUILD_IMAGE := $(boot)/Image.gz
+endif
+BOOT_TARGETS := Image Image.gz loader
 
-Image: vmlinux
-	$(Q)$(MAKE) $(build)=$(boot) $(boot)/$@
+all:	$(notdir $(KBUILD_IMAGE))
 
-Image.%: Image
+$(BOOT_TARGETS): vmlinux
 	$(Q)$(MAKE) $(build)=$(boot) $(boot)/$@
+	@$(kecho) '  Kernel: $(boot)/$@ is ready'
 
 zinstall install:
 	$(Q)$(MAKE) $(build)=$(boot) $@
diff --git a/arch/riscv/boot/Makefile b/arch/riscv/boot/Makefile
index 0990a9fdbe5d..8639e0dd2cdf 100644
--- a/arch/riscv/boot/Makefile
+++ b/arch/riscv/boot/Makefile
@@ -16,7 +16,7 @@
 
 OBJCOPYFLAGS_Image :=-O binary -R .note -R .note.gnu.build-id -R .comment -S
 
-targets := Image
+targets := Image loader
 
 $(obj)/Image: vmlinux FORCE
 	$(call if_changed,objcopy)
@@ -24,6 +24,11 @@ $(obj)/Image: vmlinux FORCE
 $(obj)/Image.gz: $(obj)/Image FORCE
 	$(call if_changed,gzip)
 
+loader.o: $(src)/loader.S $(obj)/Image
+
+$(obj)/loader: $(obj)/loader.o $(obj)/Image $(obj)/loader.lds FORCE
+	$(Q)$(LD) -T $(src)/loader.lds -o $@ $(obj)/loader.o
+
 install:
 	$(CONFIG_SHELL) $(srctree)/$(src)/install.sh $(KERNELRELEASE) \
 	$(obj)/Image System.map "$(INSTALL_PATH)"
diff --git a/arch/riscv/boot/loader.S b/arch/riscv/boot/loader.S
new file mode 100644
index 000000000000..5586e2610dbb
--- /dev/null
+++ b/arch/riscv/boot/loader.S
@@ -0,0 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0
+
+	.align 4
+	.section .payload, "ax", %progbits
+	.globl _start
+_start:
+	.incbin "arch/riscv/boot/Image"
+
diff --git a/arch/riscv/boot/loader.lds.S b/arch/riscv/boot/loader.lds.S
new file mode 100644
index 000000000000..47a5003c2e28
--- /dev/null
+++ b/arch/riscv/boot/loader.lds.S
@@ -0,0 +1,16 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+
+#include <asm/page.h>
+
+OUTPUT_ARCH(riscv)
+ENTRY(_start)
+
+SECTIONS
+{
+	. = PAGE_OFFSET;
+
+	.payload : {
+		*(.payload)
+		. = ALIGN(8);
+	}
+}
-- 
2.20.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
