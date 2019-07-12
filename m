Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 440FC66459
	for <lists+linux-riscv@lfdr.de>; Fri, 12 Jul 2019 04:23:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d/ZmhXPBe00nj9yMyCsFo7xAUqjm2zZxfmf96eTeVGs=; b=lXyvqfskbNTbxx
	y9rcC6oMvj2m9XJnWVl+g0AiPzUQ2vnrWa16vT79dja/xmbMDWePcoyJtoPqbhQveB1gqRiofFOMO
	H85cxmnkZHJZuLCmo8h6NkNFKsbq4KX0jA8iZ2gfp7ytObcWvGRD387bJZT5/2DA+oqekIGKOmQ7u
	gEiGAUj7lbgjBnlk+OcmzffrYuUL60anzhTs77ppLJNNKeQKF/O22WHtxtXvVH98gBpOVBHcdCUyF
	33rA6Js6AtyxT1fhKbt94plYHnjMFq3//5BklbigA/MmysxPOhTqz9kOux+goF0vnwOCLlrJ/1W/n
	r8pnIu9OWFU1pRKN2ahA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hllD9-0000Ym-BI; Fri, 12 Jul 2019 02:22:59 +0000
Received: from out30-42.freemail.mail.aliyun.com ([115.124.30.42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hllAo-0007RV-JC; Fri, 12 Jul 2019 02:20:38 +0000
X-Alimail-AntiSpam: AC=PASS; BC=-1|-1; BR=01201311R131e4; CH=green; DM=||false|;
 FP=0|-1|-1|-1|0|-1|-1|-1; HT=e01e04400; MF=alex.shi@linux.alibaba.com; NM=1;
 PH=DS; RN=21; SR=0; TI=SMTPD_---0TWfJjLT_1562898031; 
Received: from localhost(mailfrom:alex.shi@linux.alibaba.com
 fp:SMTPD_---0TWfJjLT_1562898031) by smtp.aliyun-inc.com(127.0.0.1);
 Fri, 12 Jul 2019 10:20:32 +0800
From: Alex Shi <alex.shi@linux.alibaba.com>
To: linux-doc@vger.kernel.org,
	Jonathan Corbet <corbet@lwn.net>
Subject: [PATCH 05/12] Documentation/s390: repointer docs to
 Documentation/arch/
Date: Fri, 12 Jul 2019 10:20:11 +0800
Message-Id: <20190712022018.27989-5-alex.shi@linux.alibaba.com>
X-Mailer: git-send-email 2.19.1.856.g8858448bb
In-Reply-To: <20190712022018.27989-1-alex.shi@linux.alibaba.com>
References: <20190712022018.27989-1-alex.shi@linux.alibaba.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_192034_770907_30B2E69D 
X-CRM114-Status: GOOD (  12.22  )
X-Spam-Score: -8.0 (--------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-8.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [115.124.30.42 listed in list.dnswl.org]
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
Cc: Vasily Gorbik <gor@linux.ibm.com>, linux-s390@vger.kernel.org,
 linux-fbdev@vger.kernel.org, linux-omap@vger.kernel.org,
 linux-ia64@vger.kernel.org, linux-scsi@vger.kernel.org,
 linux-parisc@vger.kernel.org, linux-sh@vger.kernel.org,
 Heiko Carstens <heiko.carstens@de.ibm.com>, linux-kernel@vger.kernel.org,
 linux-mips@vger.kernel.org, Christian Borntraeger <borntraeger@de.ibm.com>,
 linux-samsung-soc@vger.kernel.org, kvm@vger.kernel.org,
 linux-riscv@lists.infradead.org, Alex Shi <alex.shi@linux.alibaba.com>,
 linuxppc-dev@lists.ozlabs.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Since we move Documentation/s390 docs to Documentation/arch/s390
dir, redirect the doc pointer to them.

Signed-off-by: Alex Shi <alex.shi@linux.alibaba.com>
Cc: Jonathan Corbet <corbet@lwn.net>
Cc: Heiko Carstens <heiko.carstens@de.ibm.com>
Cc: Vasily Gorbik <gor@linux.ibm.com>
Cc: Christian Borntraeger <borntraeger@de.ibm.com>
Cc: linux-doc@vger.kernel.org
Cc: linux-kernel@vger.kernel.org
Cc: linux-s390@vger.kernel.org
Cc: kvm@vger.kernel.org
---
 Documentation/admin-guide/kernel-parameters.txt | 4 ++--
 Documentation/arch/s390/cds.rst                 | 2 +-
 Documentation/arch/s390/common_io.rst           | 2 +-
 Documentation/arch/s390/vfio-ccw.rst            | 2 +-
 Documentation/driver-api/s390-drivers.rst       | 4 ++--
 MAINTAINERS                                     | 6 +++---
 arch/s390/Kconfig                               | 4 ++--
 arch/s390/include/asm/debug.h                   | 4 ++--
 drivers/s390/char/zcore.c                       | 2 +-
 9 files changed, 15 insertions(+), 15 deletions(-)

diff --git a/Documentation/admin-guide/kernel-parameters.txt b/Documentation/admin-guide/kernel-parameters.txt
index f1c433daef6b..4ceb4691245b 100644
--- a/Documentation/admin-guide/kernel-parameters.txt
+++ b/Documentation/admin-guide/kernel-parameters.txt
@@ -478,7 +478,7 @@
 			others).
 
 	ccw_timeout_log	[S390]
-			See Documentation/s390/common_io.rst for details.
+			See Documentation/arch/s390/common_io.rst for details.
 
 	cgroup_disable=	[KNL] Disable a particular controller
 			Format: {name of the controller(s) to disable}
@@ -516,7 +516,7 @@
 				/selinux/checkreqprot.
 
 	cio_ignore=	[S390]
-			See Documentation/s390/common_io.rst for details.
+			See Documentation/arch/s390/common_io.rst for details.
 	clk_ignore_unused
 			[CLK]
 			Prevents the clock framework from automatically gating
diff --git a/Documentation/arch/s390/cds.rst b/Documentation/arch/s390/cds.rst
index 7006d8209d2e..bcad2a14244a 100644
--- a/Documentation/arch/s390/cds.rst
+++ b/Documentation/arch/s390/cds.rst
@@ -39,7 +39,7 @@ some of them are ESA/390 platform specific.
 
 Note:
   In order to write a driver for S/390, you also need to look into the interface
-  described in Documentation/s390/driver-model.rst.
+  described in Documentation/arch/s390/driver-model.rst.
 
 Note for porting drivers from 2.4:
 
diff --git a/Documentation/arch/s390/common_io.rst b/Documentation/arch/s390/common_io.rst
index 846485681ce7..6dcb40cb7145 100644
--- a/Documentation/arch/s390/common_io.rst
+++ b/Documentation/arch/s390/common_io.rst
@@ -136,5 +136,5 @@ debugfs entries
 
   The level of logging can be changed to be more or less verbose by piping to
   /sys/kernel/debug/s390dbf/cio_*/level a number between 0 and 6; see the
-  documentation on the S/390 debug feature (Documentation/s390/s390dbf.rst)
+  documentation on the S/390 debug feature (Documentation/arch/s390/s390dbf.rst)
   for details.
diff --git a/Documentation/arch/s390/vfio-ccw.rst b/Documentation/arch/s390/vfio-ccw.rst
index 1f6d0b56d53e..2e15139e9189 100644
--- a/Documentation/arch/s390/vfio-ccw.rst
+++ b/Documentation/arch/s390/vfio-ccw.rst
@@ -321,6 +321,6 @@ Reference
 1. ESA/s390 Principles of Operation manual (IBM Form. No. SA22-7832)
 2. ESA/390 Common I/O Device Commands manual (IBM Form. No. SA22-7204)
 3. https://en.wikipedia.org/wiki/Channel_I/O
-4. Documentation/s390/cds.rst
+4. Documentation/arch/s390/cds.rst
 5. Documentation/vfio.txt
 6. Documentation/vfio-mediated-device.txt
diff --git a/Documentation/driver-api/s390-drivers.rst b/Documentation/driver-api/s390-drivers.rst
index 5158577bc29b..8c0845c4eee7 100644
--- a/Documentation/driver-api/s390-drivers.rst
+++ b/Documentation/driver-api/s390-drivers.rst
@@ -27,7 +27,7 @@ not strictly considered I/O devices. They are considered here as well,
 although they are not the focus of this document.
 
 Some additional information can also be found in the kernel source under
-Documentation/s390/driver-model.rst.
+Documentation/arch/s390/driver-model.rst.
 
 The css bus
 ===========
@@ -38,7 +38,7 @@ into several categories:
 * Standard I/O subchannels, for use by the system. They have a child
   device on the ccw bus and are described below.
 * I/O subchannels bound to the vfio-ccw driver. See
-  Documentation/s390/vfio-ccw.rst.
+  Documentation/arch/s390/vfio-ccw.rst.
 * Message subchannels. No Linux driver currently exists.
 * CHSC subchannels (at most one). The chsc subchannel driver can be used
   to send asynchronous chsc commands.
diff --git a/MAINTAINERS b/MAINTAINERS
index 583c35cba7bc..2c1e65c236db 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -13717,7 +13717,7 @@ T:	git git://git.kernel.org/pub/scm/linux/kernel/git/s390/linux.git
 S:	Supported
 F:	arch/s390/
 F:	drivers/s390/
-F:	Documentation/s390/
+F:	Documentation/arch/s390/
 F:	Documentation/driver-api/s390-drivers.rst
 
 S390 COMMON I/O LAYER
@@ -13780,7 +13780,7 @@ L:	linux-s390@vger.kernel.org
 L:	kvm@vger.kernel.org
 S:	Supported
 F:	drivers/s390/cio/vfio_ccw*
-F:	Documentation/s390/vfio-ccw.rst
+F:	Documentation/arch/s390/vfio-ccw.rst
 F:	include/uapi/linux/vfio_ccw.h
 
 S390 ZCRYPT DRIVER
@@ -13800,7 +13800,7 @@ S:	Supported
 F:	drivers/s390/crypto/vfio_ap_drv.c
 F:	drivers/s390/crypto/vfio_ap_private.h
 F:	drivers/s390/crypto/vfio_ap_ops.c
-F:	Documentation/s390/vfio-ap.rst
+F:	Documentation/arch/s390/vfio-ap.rst
 
 S390 ZFCP DRIVER
 M:	Steffen Maier <maier@linux.ibm.com>
diff --git a/arch/s390/Kconfig b/arch/s390/Kconfig
index fdb4246265a5..63d1b9cd4de9 100644
--- a/arch/s390/Kconfig
+++ b/arch/s390/Kconfig
@@ -815,9 +815,9 @@ config CRASH_DUMP
 	  Crash dump kernels are loaded in the main kernel with kexec-tools
 	  into a specially reserved region and then later executed after
 	  a crash by kdump/kexec.
-	  Refer to <file:Documentation/s390/zfcpdump.rst> for more details on this.
+	  Refer to <file:Documentation/arch/s390/zfcpdump.rst> for more details on this.
 	  This option also enables s390 zfcpdump.
-	  See also <file:Documentation/s390/zfcpdump.rst>
+	  See also <file:Documentation/arch/s390/zfcpdump.rst>
 
 endmenu
 
diff --git a/arch/s390/include/asm/debug.h b/arch/s390/include/asm/debug.h
index 310134015541..97f6ef690159 100644
--- a/arch/s390/include/asm/debug.h
+++ b/arch/s390/include/asm/debug.h
@@ -212,7 +212,7 @@ static inline debug_entry_t *debug_text_event(debug_info_t *id, int level,
 
 /*
  * IMPORTANT: Use "%s" in sprintf format strings with care! Only pointers are
- * stored in the s390dbf. See Documentation/s390/s390dbf.rst for more details!
+ * stored in the s390dbf. See Documentation/arch/s390/s390dbf.rst for more details!
  */
 extern debug_entry_t *
 __debug_sprintf_event(debug_info_t *id, int level, char *string, ...)
@@ -340,7 +340,7 @@ static inline debug_entry_t *debug_text_exception(debug_info_t *id, int level,
 
 /*
  * IMPORTANT: Use "%s" in sprintf format strings with care! Only pointers are
- * stored in the s390dbf. See Documentation/s390/s390dbf.rst for more details!
+ * stored in the s390dbf. See Documentation/arch/s390/s390dbf.rst for more details!
  */
 extern debug_entry_t *
 __debug_sprintf_exception(debug_info_t *id, int level, char *string, ...)
diff --git a/drivers/s390/char/zcore.c b/drivers/s390/char/zcore.c
index 08f812475f5e..3b00dfeeba49 100644
--- a/drivers/s390/char/zcore.c
+++ b/drivers/s390/char/zcore.c
@@ -4,7 +4,7 @@
  * dumps on SCSI disks (zfcpdump). The "zcore/mem" debugfs file shows the same
  * dump format as s390 standalone dumps.
  *
- * For more information please refer to Documentation/s390/zfcpdump.rst
+ * For more information please refer to Documentation/arch/s390/zfcpdump.rst
  *
  * Copyright IBM Corp. 2003, 2008
  * Author(s): Michael Holzheu
-- 
2.19.1.856.g8858448bb


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
