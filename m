Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EDF4E5012D
	for <lists+linux-riscv@lfdr.de>; Mon, 24 Jun 2019 07:43:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hvQHwvKudK7+6E7gz3arr6E1XZ5vc/0n3U+ATsuv3Og=; b=Hy9RD6LXaLNa8U
	I5mpuxEOXI8v2+RXmNvgGotzBeEEuLFL62qm4ggHJoY+8SHaZIZ+5bmUIN9zinxn2/u3DvF9/FupR
	QN+BKQkpluEU57pM7257LfT/l5bPdOJKGHpaXOSdBS6JsfkDbAWYOTVNa9UqpUATguNU9mr1FHrGL
	vukEt3FRyF98bWRhM73Sah0HfqT+uPXM4u12d2PoPMcIAca4H9A8K9VvE5v18F4JvKUc97VM8St9R
	19XKtfqA8eO1R9tp8E7p2Ua1hLfSHgpuazvqAGr4+PUfkgN+V3Bt0a5zO1965hLeC05mUHOgBtriU
	qdoGYDAabhcn20C8Ha8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfHle-0006ZJ-PC; Mon, 24 Jun 2019 05:43:50 +0000
Received: from 213-225-6-159.nat.highway.a1.net ([213.225.6.159]
 helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hfHlZ-0006UH-Uw; Mon, 24 Jun 2019 05:43:46 +0000
From: Christoph Hellwig <hch@lst.de>
To: Palmer Dabbelt <palmer@sifive.com>,
 Paul Walmsley <paul.walmsley@sifive.com>
Subject: [PATCH 09/17] riscv: provide a flat entry loader
Date: Mon, 24 Jun 2019 07:43:03 +0200
Message-Id: <20190624054311.30256-10-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190624054311.30256-1-hch@lst.de>
References: <20190624054311.30256-1-hch@lst.de>
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
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

This allows just loading the kernel at a pre-set address without
qemu going bonkers trying to map the ELF file.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 arch/riscv/Makefile        | 13 +++++++++----
 arch/riscv/boot/Makefile   |  7 ++++++-
 arch/riscv/boot/loader.S   |  8 ++++++++
 arch/riscv/boot/loader.lds | 14 ++++++++++++++
 4 files changed, 37 insertions(+), 5 deletions(-)
 create mode 100644 arch/riscv/boot/loader.S
 create mode 100644 arch/riscv/boot/loader.lds

diff --git a/arch/riscv/Makefile b/arch/riscv/Makefile
index 6b0741c9f348..69dbb6cb72f3 100644
--- a/arch/riscv/Makefile
+++ b/arch/riscv/Makefile
@@ -84,13 +84,18 @@ PHONY += vdso_install
 vdso_install:
 	$(Q)$(MAKE) $(build)=arch/riscv/kernel/vdso $@
 
-all: Image.gz
+ifeq ($(CONFIG_M_MODE),y)
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
index 0990a9fdbe5d..32d2addeddba 100644
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
+$(obj)/loader: $(obj)/loader.o $(obj)/Image FORCE
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
diff --git a/arch/riscv/boot/loader.lds b/arch/riscv/boot/loader.lds
new file mode 100644
index 000000000000..da9efd57bf44
--- /dev/null
+++ b/arch/riscv/boot/loader.lds
@@ -0,0 +1,14 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+
+OUTPUT_ARCH(riscv)
+ENTRY(_start)
+
+SECTIONS
+{
+	. = 0x80000000;
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
