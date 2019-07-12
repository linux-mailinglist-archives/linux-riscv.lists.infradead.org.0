Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D61C46646B
	for <lists+linux-riscv@lfdr.de>; Fri, 12 Jul 2019 04:27:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SiP69VND/VYg6XA2hO7yISl9dAPXnnSZ5AF+cWaFNHs=; b=ny/VC75w1RdVU4
	0kN8htaHr1F+Vd+HEOVK+Ouo0RhjvopN0E7M5OkCUC7T6oBrJxsWBXZj1/hXRkVSZXoQyuugo/Dfn
	9KmDi1qcLgLR0CYqMJMdDvnHAiOQGim5QJyEBEKLVZsc6drgEQaKxRpHWHXUp3wyz3li2oUT6K28w
	1PPhUmwdJ4zZpAm9suqXa5MoL20t2n19zvgGbNtkviE02u+dkFRF50mehjGkhANozPkcZ0mB9Pvej
	wk+1/7JOP08Qjpv+bhW/Yg/S2ezMxeLhWLRJ7gcRYuIdQ4oSe7OAHpGL9q+bN7UsKSCLzN2lFtqs2
	gMq5xbPvH4Y9Pc1ANPAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hllGw-00049a-Bl; Fri, 12 Jul 2019 02:26:54 +0000
Received: from out30-132.freemail.mail.aliyun.com ([115.124.30.132])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hllBl-0007xO-1l; Fri, 12 Jul 2019 02:21:34 +0000
X-Alimail-AntiSpam: AC=PASS; BC=-1|-1; BR=01201311R961e4; CH=green; DM=||false|;
 FP=0|-1|-1|-1|0|-1|-1|-1; HT=e01e04426; MF=alex.shi@linux.alibaba.com; NM=1;
 PH=DS; RN=22; SR=0; TI=SMTPD_---0TWfV4.F_1562898033; 
Received: from localhost(mailfrom:alex.shi@linux.alibaba.com
 fp:SMTPD_---0TWfV4.F_1562898033) by smtp.aliyun-inc.com(127.0.0.1);
 Fri, 12 Jul 2019 10:20:33 +0800
From: Alex Shi <alex.shi@linux.alibaba.com>
To: linux-doc@vger.kernel.org,
	Jonathan Corbet <corbet@lwn.net>
Subject: [PATCH 08/12] Dcumentation/powerpc: repointer docs to
 Documentation/arch/
Date: Fri, 12 Jul 2019 10:20:14 +0800
Message-Id: <20190712022018.27989-8-alex.shi@linux.alibaba.com>
X-Mailer: git-send-email 2.19.1.856.g8858448bb
In-Reply-To: <20190712022018.27989-1-alex.shi@linux.alibaba.com>
References: <20190712022018.27989-1-alex.shi@linux.alibaba.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_192133_295438_9DF5E915 
X-CRM114-Status: GOOD (  10.84  )
X-Spam-Score: -8.0 (--------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-8.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [115.124.30.132 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [115.124.30.132 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: "Manoj N. Kumar" <manoj@linux.ibm.com>, linux-s390@vger.kernel.org,
 linux-fbdev@vger.kernel.org, linux-omap@vger.kernel.org,
 linux-ia64@vger.kernel.org, linux-scsi@vger.kernel.org,
 linux-parisc@vger.kernel.org, linux-sh@vger.kernel.org,
 Sam Bobroff <sbobroff@linux.ibm.com>, linux-kernel@vger.kernel.org,
 linux-mips@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 Uma Krishnan <ukrishn@linux.ibm.com>, kvm@vger.kernel.org,
 linux-riscv@lists.infradead.org, Alex Shi <alex.shi@linux.alibaba.com>,
 linuxppc-dev@lists.ozlabs.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, "Matthew R. Ochs" <mrochs@linux.ibm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Since we move Documentation/powerpc docs to Documentation/arch/powerpc
dir, redirect the doc pointer to them.

Signed-off-by: Alex Shi <alex.shi@linux.alibaba.com>
Cc: Sam Bobroff <sbobroff@linux.ibm.com>
Cc: Jonathan Corbet <corbet@lwn.net>
Cc: "Manoj N. Kumar" <manoj@linux.ibm.com>
Cc: "Matthew R. Ochs" <mrochs@linux.ibm.com>
Cc: Uma Krishnan <ukrishn@linux.ibm.com>
Cc: linuxppc-dev@lists.ozlabs.org
Cc: linux-doc@vger.kernel.org
Cc: linux-kernel@vger.kernel.org
---
 Documentation/PCI/pci-error-recovery.txt | 2 +-
 Documentation/arch/powerpc/cxlflash.txt  | 2 +-
 MAINTAINERS                              | 8 ++++----
 arch/powerpc/kernel/exceptions-64s.S     | 2 +-
 drivers/soc/fsl/qe/qe.c                  | 2 +-
 drivers/tty/hvc/hvcs.c                   | 2 +-
 include/soc/fsl/qe/qe.h                  | 2 +-
 7 files changed, 10 insertions(+), 10 deletions(-)

diff --git a/Documentation/PCI/pci-error-recovery.txt b/Documentation/PCI/pci-error-recovery.txt
index 0b6bb3ef449e..339e7394ef1d 100644
--- a/Documentation/PCI/pci-error-recovery.txt
+++ b/Documentation/PCI/pci-error-recovery.txt
@@ -389,7 +389,7 @@ platforms aren't supposed to share interrupts between many devices
 anyway :)
 
 >>> Implementation details for the powerpc platform are discussed in
->>> the file Documentation/powerpc/eeh-pci-error-recovery.txt
+>>> the file Documentation/arch/powerpc/eeh-pci-error-recovery.txt
 
 >>> As of this writing, there is a growing list of device drivers with
 >>> patches implementing error recovery. Not all of these patches are in
diff --git a/Documentation/arch/powerpc/cxlflash.txt b/Documentation/arch/powerpc/cxlflash.txt
index a64bdaa0a1cf..479cdb9a44f4 100644
--- a/Documentation/arch/powerpc/cxlflash.txt
+++ b/Documentation/arch/powerpc/cxlflash.txt
@@ -28,7 +28,7 @@ Introduction
     responsible for the initialization of the adapter, setting up the
     special path for user space access, and performing error recovery. It
     communicates directly the Flash Accelerator Functional Unit (AFU)
-    as described in Documentation/powerpc/cxl.txt.
+    as described in Documentation/arch/powerpc/cxl.txt.
 
     The cxlflash driver supports two, mutually exclusive, modes of
     operation at the device (LUN) level:
diff --git a/MAINTAINERS b/MAINTAINERS
index e1aad1b8224c..7a245d3f02fd 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -4420,7 +4420,7 @@ F:	arch/powerpc/platforms/powernv/pci-cxl.c
 F:	drivers/misc/cxl/
 F:	include/misc/cxl*
 F:	include/uapi/misc/cxl.h
-F:	Documentation/powerpc/cxl.txt
+F:	Documentation/arch/powerpc/cxl.txt
 F:	Documentation/ABI/testing/sysfs-class-cxl
 
 CXLFLASH (IBM Coherent Accelerator Processor Interface CAPI Flash) SCSI DRIVER
@@ -4431,7 +4431,7 @@ L:	linux-scsi@vger.kernel.org
 S:	Supported
 F:	drivers/scsi/cxlflash/
 F:	include/uapi/scsi/cxlflash_ioctl.h
-F:	Documentation/powerpc/cxlflash.txt
+F:	Documentation/arch/powerpc/cxlflash.txt
 
 CYBERPRO FB DRIVER
 M:	Russell King <linux@armlinux.org.uk>
@@ -9101,7 +9101,7 @@ F:	Documentation/ABI/stable/sysfs-firmware-opal-*
 F:	Documentation/devicetree/bindings/powerpc/
 F:	Documentation/devicetree/bindings/rtc/rtc-opal.txt
 F:	Documentation/devicetree/bindings/i2c/i2c-opal.txt
-F:	Documentation/powerpc/
+F:	Documentation/arch/powerpc/
 F:	arch/powerpc/
 F:	drivers/char/tpm/tpm_ibmvtpm*
 F:	drivers/crypto/nx/
@@ -12235,7 +12235,7 @@ F:	Documentation/PCI/pci-error-recovery.txt
 F:	drivers/pci/pcie/aer.c
 F:	drivers/pci/pcie/dpc.c
 F:	drivers/pci/pcie/err.c
-F:	Documentation/powerpc/eeh-pci-error-recovery.txt
+F:	Documentation/arch/powerpc/eeh-pci-error-recovery.txt
 F:	arch/powerpc/kernel/eeh*.c
 F:	arch/powerpc/platforms/*/eeh*.c
 F:	arch/powerpc/include/*/eeh*.h
diff --git a/arch/powerpc/kernel/exceptions-64s.S b/arch/powerpc/kernel/exceptions-64s.S
index 73ba246ca11d..5fa2a348a28e 100644
--- a/arch/powerpc/kernel/exceptions-64s.S
+++ b/arch/powerpc/kernel/exceptions-64s.S
@@ -910,7 +910,7 @@ EXC_COMMON(trap_0b_common, 0xb00, unknown_exception)
  *
  * Call convention:
  *
- * syscall register convention is in Documentation/powerpc/syscall64-abi.txt
+ * syscall register convention is in Documentation/arch/powerpc/syscall64-abi.txt
  *
  * For hypercalls, the register convention is as follows:
  * r0 volatile
diff --git a/drivers/soc/fsl/qe/qe.c b/drivers/soc/fsl/qe/qe.c
index 62c6ba17991a..c83467942b70 100644
--- a/drivers/soc/fsl/qe/qe.c
+++ b/drivers/soc/fsl/qe/qe.c
@@ -419,7 +419,7 @@ static void qe_upload_microcode(const void *base,
 /*
  * Upload a microcode to the I-RAM at a specific address.
  *
- * See Documentation/powerpc/qe_firmware.txt for information on QE microcode
+ * See Documentation/arch/powerpc/qe_firmware.txt for information on QE microcode
  * uploading.
  *
  * Currently, only version 1 is supported, so the 'version' field must be
diff --git a/drivers/tty/hvc/hvcs.c b/drivers/tty/hvc/hvcs.c
index cb4db1b3ca3c..5a1c76055117 100644
--- a/drivers/tty/hvc/hvcs.c
+++ b/drivers/tty/hvc/hvcs.c
@@ -47,7 +47,7 @@
  * using the 2.6 Linux kernel kref construct.
  *
  * For direction on installation and usage of this driver please reference
- * Documentation/powerpc/hvcs.txt.
+ * Documentation/arch/powerpc/hvcs.txt.
  */
 
 #include <linux/device.h>
diff --git a/include/soc/fsl/qe/qe.h b/include/soc/fsl/qe/qe.h
index 3f9d6b6a5691..c07872582b30 100644
--- a/include/soc/fsl/qe/qe.h
+++ b/include/soc/fsl/qe/qe.h
@@ -259,7 +259,7 @@ static inline int qe_alive_during_sleep(void)
 
 /* Structure that defines QE firmware binary files.
  *
- * See Documentation/powerpc/qe_firmware.txt for a description of these
+ * See Documentation/arch/powerpc/qe_firmware.txt for a description of these
  * fields.
  */
 struct qe_firmware {
-- 
2.19.1.856.g8858448bb


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
