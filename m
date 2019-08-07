Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93A6D84592
	for <lists+linux-riscv@lfdr.de>; Wed,  7 Aug 2019 09:20:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YUhDRB1zVOPxKaaLtso1cnZy440GgCG/xe+furkmVp8=; b=CzjkH45mwc+Zaz
	AtUfq0K/4Q+f79GiG4z/hSuMK1CwW6gBceZsNNnjZ43PVvG3UhPR3OdragoDNuVa9acZ2V+WCjlW0
	C5rA3rm8NtUEzmkANp8X2FSSll91FAFufJq0gr8m1dDwUdBBWyDqgrhtMdFloWYqikXWqEWfJAasm
	m9nh9WX8se804XGtmhHc+XBZH+Yl8NcpGFDp2KdzlkRTsiV0dq+lhbB6cTR44dBKRYHi+h6VTkXxS
	LLA9O1TjHAu9jtoZTL0yKStAJcFIIaDrZlzIJ5yUO5WaPB3U+Tso7pj1CMXgupB/BKsez7t/2GTOi
	W9DjAlIini1W0py5+jGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvGFE-0004Xb-7N; Wed, 07 Aug 2019 07:20:24 +0000
Received: from 59-120-53-16.hinet-ip.hinet.net ([59.120.53.16]
 helo=ATCSQR.andestech.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvGF8-0004VS-27
 for linux-riscv@lists.infradead.org; Wed, 07 Aug 2019 07:20:19 +0000
Received: from mail.andestech.com (atcpcs16.andestech.com [10.0.1.222])
 by ATCSQR.andestech.com with ESMTP id x7778SIa027025;
 Wed, 7 Aug 2019 15:08:28 +0800 (GMT-8)
 (envelope-from nickhu@andestech.com)
Received: from atcsqa06.andestech.com (10.0.15.65) by ATCPCS16.andestech.com
 (10.0.1.222) with Microsoft SMTP Server id 14.3.123.3; Wed, 7 Aug 2019
 15:19:27 +0800
From: Nick Hu <nickhu@andestech.com>
To: <alankao@andestech.com>, <paul.walmsley@sifive.com>, <palmer@sifive.com>, 
 <aou@eecs.berkeley.edu>, <green.hu@gmail.com>, <deanbo422@gmail.com>,
 <tglx@linutronix.de>, <linux-riscv@lists.infradead.org>,
 <linux-kernel@vger.kernel.org>, <aryabinin@virtuozzo.com>,
 <glider@google.com>, <dvyukov@google.com>, <Anup.Patel@wdc.com>,
 <gregkh@linuxfoundation.org>, <alexios.zavras@intel.com>,
 <atish.patra@wdc.com>, <zong@andestech.com>, <kasan-dev@googlegroups.com>
Subject: [PATCH 1/2] riscv: Add memmove string operation.
Date: Wed, 7 Aug 2019 15:19:14 +0800
Message-ID: <a6c24ce01dc40da10d58fdd30bc3e1316035c832.1565161957.git.nickhu@andestech.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1565161957.git.nickhu@andestech.com>
References: <cover.1565161957.git.nickhu@andestech.com>
MIME-Version: 1.0
X-Originating-IP: [10.0.15.65]
X-DNSRBL: 
X-MAIL: ATCSQR.andestech.com x7778SIa027025
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_002018_368509_2DADB1BA 
X-CRM114-Status: GOOD (  10.07  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 TVD_RCVD_IP            Message was received from an IP address
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.4 RDNS_DYNAMIC           Delivered to internal network by host with
 dynamic-looking rDNS
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
Cc: Nick Hu <nickhu@andestech.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

There are some features which need this string operation for compilation,
like KASAN. So the purpose of this porting is for the features like KASAN
which cannot be compiled without it.

KASAN's string operations would replace the original string operations and
call for the architecture defined string operations. Since we don't have
this in current kernel, this patch provides the implementation.

This porting refers to the 'arch/nds32/lib/memmove.S'.

Signed-off-by: Nick Hu <nickhu@andestech.com>
---
 arch/riscv/include/asm/string.h |    3 ++
 arch/riscv/kernel/riscv_ksyms.c |    1 +
 arch/riscv/lib/Makefile         |    1 +
 arch/riscv/lib/memmove.S        |   63 +++++++++++++++++++++++++++++++++++++++
 4 files changed, 68 insertions(+), 0 deletions(-)
 create mode 100644 arch/riscv/lib/memmove.S

diff --git a/arch/riscv/include/asm/string.h b/arch/riscv/include/asm/string.h
index 1b5d445..11210f1 100644
--- a/arch/riscv/include/asm/string.h
+++ b/arch/riscv/include/asm/string.h
@@ -15,4 +15,7 @@
 #define __HAVE_ARCH_MEMCPY
 extern asmlinkage void *memcpy(void *, const void *, size_t);
 
+#define __HAVE_ARCH_MEMMOVE
+extern asmlinkage void *memmove(void *, const void *, size_t);
+
 #endif /* _ASM_RISCV_STRING_H */
diff --git a/arch/riscv/kernel/riscv_ksyms.c b/arch/riscv/kernel/riscv_ksyms.c
index 4800cf7..ffabaf1 100644
--- a/arch/riscv/kernel/riscv_ksyms.c
+++ b/arch/riscv/kernel/riscv_ksyms.c
@@ -14,3 +14,4 @@
 EXPORT_SYMBOL(__asm_copy_from_user);
 EXPORT_SYMBOL(memset);
 EXPORT_SYMBOL(memcpy);
+EXPORT_SYMBOL(memmove);
diff --git a/arch/riscv/lib/Makefile b/arch/riscv/lib/Makefile
index 8e364eb..9a4d5b3 100644
--- a/arch/riscv/lib/Makefile
+++ b/arch/riscv/lib/Makefile
@@ -2,6 +2,7 @@
 lib-y	+= delay.o
 lib-y	+= memcpy.o
 lib-y	+= memset.o
+lib-y	+= memmove.o
 lib-y	+= uaccess.o
 
 lib-$(CONFIG_64BIT) += tishift.o
diff --git a/arch/riscv/lib/memmove.S b/arch/riscv/lib/memmove.S
new file mode 100644
index 0000000..3657a06
--- /dev/null
+++ b/arch/riscv/lib/memmove.S
@@ -0,0 +1,63 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+
+#include <linux/linkage.h>
+#include <asm/asm.h>
+
+ENTRY(memmove)
+	move	t0, a0
+	move	t1, a1
+
+	beq 	a0, a1, exit_memcpy
+	beqz	a2, exit_memcpy
+	srli	t2, a2, 0x2
+
+	slt	t3, a0, a1
+	beqz	t3, do_reverse
+
+	andi	a2, a2, 0x3
+	li	t4, 1
+	beqz	t2, byte_copy
+
+word_copy:
+	lw	t3, 0(a1)
+	addi	t2, t2, -1
+	addi	a1, a1, 4
+	sw	t3, 0(a0)
+	addi	a0, a0, 4
+	bnez	t2, word_copy
+	beqz	a2, exit_memcpy
+	j	byte_copy
+
+do_reverse:
+	add	a0, a0, a2
+	add	a1, a1, a2
+	andi	a2, a2, 0x3
+	li	t4, -1
+	beqz	t2, reverse_byte_copy
+
+reverse_word_copy:
+	addi	a1, a1, -4
+	addi	t2, t2, -1
+	lw	t3, 0(a1)
+	addi	a0, a0, -4
+	sw	t3, 0(a0)
+	bnez	t2, reverse_word_copy
+	beqz	a2, exit_memcpy
+
+reverse_byte_copy:
+	addi	a0, a0, -1
+	addi	a1, a1, -1
+byte_copy:
+	lb	t3, 0(a1)
+	addi	a2, a2, -1
+	sb	t3, 0(a0)
+	add	a1, a1, t4
+	add	a0, a0, t4
+	bnez	a2, byte_copy
+
+exit_memcpy:
+	move a0, t0
+	move a1, t1
+	ret
+
+END(memmove)
-- 
1.7.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
