Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A383BFC1F
	for <lists+linux-riscv@lfdr.de>; Fri, 27 Sep 2019 02:09:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rBZ8nAnhbdLA/vsSGv3T6ryblM7H673LJkGPr/jMRnc=; b=W1+KXoRh6DO0eN
	xgmMSipaH5iVWxoWj9tELSbaU1TLXV5tYcXrZbOSKFdsemixEtJg6Sdsb4uVBqu9WdlFNBXwM5j8j
	StJtVZXDr7VP+JuCC9WCDnAsv/edQRG9Rcw/+CuxWD6HvnTEbSoWDSyFWV/89l0t2SMcw+UdgSr0H
	+kZWFaEAH2P3/aJJyNEnMxFqA2kMF6OaFrz3KgfYbl26gUGDaDmqNm1xITV3sQ+LUujNHFwDwSJ/K
	XgsjCIA1Bn81OetuJOiVjA8oIdp8wsYpmhsRKXutOoHfQTVzLuYJ2ZiVx9Z1G88q7DqmK3eJlZfzD
	Q+I5bpQUJoWZMV76pWrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDdpM-0006nC-6y; Fri, 27 Sep 2019 00:09:40 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDdpD-0006iS-JJ
 for linux-riscv@lists.infradead.org; Fri, 27 Sep 2019 00:09:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1569542973; x=1601078973;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=bDArMe9M2L91Z/CR0UnsmHQJUCaE4qjpImR1YxVjjj4=;
 b=UbcchuZDzvI74kjiUx832jliUVL8RpB6PgcFhYczwAkT3b/nRz+Ti9XR
 JNezJ4C7fjv2e3JK/wXKASx2BVCfGHRk+oRu5egBQiyvPm88ilC4wZD4S
 WkgFYoTzSVv+myC28KczrLkn/xKyAmEzQvJHaTU+tVwUqx0iSEvK2gGsl
 90nO5ygrl7tZ0dZLb3CxErfFTiewf7xByMzjJUi1PFEBno+e49tBmL3I1
 wvEa3bHsfwGjlE4u67CujqkDwH13MJtGW6DTY95S6YuSHxzNGWjccElo6
 1F91XWaC7v1dyYQUNGgLZ7adn9bq2YjrX9lB3IloAxbqs5giBXq7Q59Mu g==;
IronPort-SDR: y9Ijr7BHEkfhnf9knVbUPFPCJZNeL+TLxPrh7TGXWzmdVTCBFPZHY4ItjEoakbx6bGRo0Dx2ev
 k/Td4wmXNjLfesmLxCheB8ZsVtBSbhIRQV2oaCNe6AyyuQc9wPP/xvmZK0F9ncdbuTWNlEXcOO
 Y6oRJFoApGc9PpAb+K5Vtldm64IKjGymVopnlplxH6l9M/aljuYD3v2orfhofeBH776UGl8dxs
 AlTvWXwOGnP/+ZMHVjUeJkS/JoCRlSxumKX+GL1rKpiLaj1zLE1YozD8QR74tuOfH3DU8VIcFw
 Gnc=
X-IronPort-AV: E=Sophos;i="5.64,553,1559491200"; d="scan'208";a="220096747"
Received: from h199-255-45-15.hgst.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 27 Sep 2019 08:09:46 +0800
IronPort-SDR: Qgj1tBCSpcNhHICEISXWgu6j6ri2eimH+/M6gXrV1C3gHzMjBOiKzg82yJgzNc1ZVmJ1USy3Ba
 cFoZKeLsSOdCoalixu5mpmfDBEgpWNvuCFTO+kH8b/iFTxpctDwCpcmDTwK/ozlK0RoUfEd/fP
 DzHCnkt6l0e4J96Mf8Zmv4ntU92zA6oANxrDObLUSUvHmh5kxbQh6t8lJJ78MnamoARU6YU9nj
 rUj/yDNrgpluwzgWziYmhL/B1/znXRwsBBJWnaAM9duSrWutaeMGqN+N7wPqMompI72UfjWkaR
 ah7fqmA54pq2QpPnQvsYHJfJ
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2019 17:05:45 -0700
IronPort-SDR: 5iiWTZJZcFIZLgZ/ptOBpHjaDkMGM/HJC4HUB7QiJCVOBj24JiCl63mi+A1hxuRHQRcx+bMRQQ
 p14dA785reRfFMxu8TZcc+xegP3+vhPgoECX0jWMVV0WJPpbwu5PdGQ6dGl0Z1EE0DbCKGr3L6
 tkBOE6j73OupEAxlVGMmtiwTOq7QMEWjue+yy2K2CQmXW10u4xtolQAZHZVceak+vb0xQ4nOdT
 wxISFKSoh9JSA+91eQGSybK3Ktqblh1HKv/WqpLSMmOm2IdYZ+AWmLeDYGwdEscdoQ25TcR6qx
 wSo=
WDCIronportException: Internal
Received: from jedi-01.sdcorp.global.sandisk.com (HELO
 jedi-01.int.fusionio.com) ([10.11.143.218])
 by uls-op-cesaip01.wdc.com with ESMTP; 26 Sep 2019 17:09:25 -0700
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v2 3/3] RISC-V: Move SBI related macros under uapi.
Date: Thu, 26 Sep 2019 17:09:15 -0700
Message-Id: <20190927000915.31781-4-atish.patra@wdc.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190927000915.31781-1-atish.patra@wdc.com>
References: <20190927000915.31781-1-atish.patra@wdc.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_170931_678996_7A24DD65 
X-CRM114-Status: GOOD (  12.27  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.143.124 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Alan Kao <alankao@andestech.com>,
 Anup Patel <anup@brainfault.org>, Palmer Dabbelt <palmer@sifive.com>,
 Mike Rapoport <rppt@linux.ibm.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 Atish Patra <atish.patra@wdc.com>, Gary Guo <gary@garyguo.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-riscv@lists.infradead.org, Thomas Gleixner <tglx@linutronix.de>,
 Allison Randal <allison@lohutok.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

All SBI related macros can be reused by KVM RISC-V and userspace tools
such as kvmtool, qemu-kvm. SBI calls can also be emulated by userspace
if required. Any future vendor extensions can leverage this to emulate
the specific extension in userspace instead of kernel.

Signed-off-by: Atish Patra <atish.patra@wdc.com>
---
 arch/riscv/include/asm/sbi.h      | 37 +-----------------------
 arch/riscv/include/uapi/asm/sbi.h | 48 +++++++++++++++++++++++++++++++
 2 files changed, 49 insertions(+), 36 deletions(-)
 create mode 100644 arch/riscv/include/uapi/asm/sbi.h

diff --git a/arch/riscv/include/asm/sbi.h b/arch/riscv/include/asm/sbi.h
index 279b7f10b3c2..902b83041111 100644
--- a/arch/riscv/include/asm/sbi.h
+++ b/arch/riscv/include/asm/sbi.h
@@ -7,42 +7,7 @@
 #define _ASM_RISCV_SBI_H
 
 #include <linux/types.h>
-
-enum sbi_ext_id {
-	SBI_EXT_0_1_SET_TIMER = 0x0,
-	SBI_EXT_0_1_CONSOLE_PUTCHAR = 0x1,
-	SBI_EXT_0_1_CONSOLE_GETCHAR = 0x2,
-	SBI_EXT_0_1_CLEAR_IPI = 0x3,
-	SBI_EXT_0_1_SEND_IPI = 0x4,
-	SBI_EXT_0_1_REMOTE_FENCE_I = 0x5,
-	SBI_EXT_0_1_REMOTE_SFENCE_VMA = 0x6,
-	SBI_EXT_0_1_REMOTE_SFENCE_VMA_ASID = 0x7,
-	SBI_EXT_0_1_SHUTDOWN = 0x8,
-	SBI_EXT_BASE = 0x10,
-};
-
-enum sbi_ext_base_fid {
-	SBI_BASE_GET_SPEC_VERSION = 0,
-	SBI_BASE_GET_IMP_ID,
-	SBI_BASE_GET_IMP_VERSION,
-	SBI_BASE_PROBE_EXT,
-	SBI_BASE_GET_MVENDORID,
-	SBI_BASE_GET_MARCHID,
-	SBI_BASE_GET_MIMPID,
-};
-
-#define SBI_SPEC_VERSION_DEFAULT	0x1
-#define SBI_SPEC_VERSION_MAJOR_OFFSET	24
-#define SBI_SPEC_VERSION_MAJOR_MASK	0x7f
-#define SBI_SPEC_VERSION_MINOR_MASK	0xffffff
-
-/* SBI return error codes */
-#define SBI_SUCCESS		0
-#define SBI_ERR_FAILURE		-1
-#define SBI_ERR_NOT_SUPPORTED	-2
-#define SBI_ERR_INVALID_PARAM   -3
-#define SBI_ERR_DENIED		-4
-#define SBI_ERR_INVALID_ADDRESS -5
+#include <uapi/asm/sbi.h>
 
 extern unsigned long sbi_spec_version;
 struct sbiret {
diff --git a/arch/riscv/include/uapi/asm/sbi.h b/arch/riscv/include/uapi/asm/sbi.h
new file mode 100644
index 000000000000..2e09ee52c346
--- /dev/null
+++ b/arch/riscv/include/uapi/asm/sbi.h
@@ -0,0 +1,48 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Common SBI related defines and macros to be used by RISC-V kernel,
+ * RISC-V KVM and userspace.
+ *
+ * Copyright (c) 2019 Western Digital Corporation or its affiliates.
+ */
+
+#ifndef _UAPI_ASM_RISCV_SBI_H
+#define _UAPI_ASM_RISCV_SBI_H
+
+enum sbi_ext_id {
+	SBI_EXT_0_1_SET_TIMER = 0x0,
+	SBI_EXT_0_1_CONSOLE_PUTCHAR = 0x1,
+	SBI_EXT_0_1_CONSOLE_GETCHAR = 0x2,
+	SBI_EXT_0_1_CLEAR_IPI = 0x3,
+	SBI_EXT_0_1_SEND_IPI = 0x4,
+	SBI_EXT_0_1_REMOTE_FENCE_I = 0x5,
+	SBI_EXT_0_1_REMOTE_SFENCE_VMA = 0x6,
+	SBI_EXT_0_1_REMOTE_SFENCE_VMA_ASID = 0x7,
+	SBI_EXT_0_1_SHUTDOWN = 0x8,
+	SBI_EXT_BASE = 0x10,
+};
+
+enum sbi_ext_base_fid {
+	SBI_BASE_GET_SPEC_VERSION = 0,
+	SBI_BASE_GET_IMP_ID,
+	SBI_BASE_GET_IMP_VERSION,
+	SBI_BASE_PROBE_EXT,
+	SBI_BASE_GET_MVENDORID,
+	SBI_BASE_GET_MARCHID,
+	SBI_BASE_GET_MIMPID,
+};
+
+#define SBI_SPEC_VERSION_DEFAULT	0x1
+#define SBI_SPEC_VERSION_MAJOR_OFFSET	24
+#define SBI_SPEC_VERSION_MAJOR_MASK	0x7f
+#define SBI_SPEC_VERSION_MINOR_MASK	0xffffff
+
+/* SBI return error codes */
+#define SBI_SUCCESS		0
+#define SBI_ERR_FAILURE		-1
+#define SBI_ERR_NOT_SUPPORTED	-2
+#define SBI_ERR_INVALID_PARAM   -3
+#define SBI_ERR_DENIED		-4
+#define SBI_ERR_INVALID_ADDRESS -5
+
+#endif
-- 
2.21.0


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
