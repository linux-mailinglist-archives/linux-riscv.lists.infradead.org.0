Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7496D1A72B4
	for <lists+linux-riscv@lfdr.de>; Tue, 14 Apr 2020 06:43:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2ByeoXTZYK2b2npVlLXrNpoG9O9U7ZE8twp8Ai1Z35M=; b=cqHRu1LXN0hnlh
	bVyU3hAHg5qX65hQQXVPVRW6L+CsFaF2omCCVAJ65N5RXQ47W/hqikJFujy428XIfBhfPTPB2PLYm
	NyF5wovyXnvZWrCSeIwfeKCX6980fl9qgxZY8/OVR2a0Y0lLLjgxSE5ghTZH57xGxW1NxLvzFOXD7
	44R4R7vF5q6uSy54Np22KwOBvfkQMm3RG15BDm5DBUbROI6cv3mg171gcsO/XhTUm8IiVUe20ro+1
	9YGi6LJ8nnfpmy3IQAswIMUyrr/T1XNSWbRA8w9rXtcq0ifW5P/4NafJxcD2yMrp+qlYeX6Wy9Qrz
	o/flg2f+QsPzX+Br1xog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jODQ8-000756-3E; Tue, 14 Apr 2020 04:43:36 +0000
Received: from esa3.hgst.iphmx.com ([216.71.153.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jODQ4-00071m-0y
 for linux-riscv@lists.infradead.org; Tue, 14 Apr 2020 04:43:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1586839412; x=1618375412;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=PsJombUVIraKHXjKHGu1wt3w3DFfiWCiJ7C8+Rosp/M=;
 b=HsFdaeAC72Cl8oPw18rbu5Am0Ab7PLNunlLy23dd/J0vhLEZ5EFV8wOE
 rwuqB8/JmboL/5e9b8wwtnRLKoGebbV14upZH7x6VvYQM+feWfc6hhhNE
 NwZTdci5X9J3GldqdK+6/dNsCrfa3MYaQFv6zYG1pS4+QRhAgPYasz9CE
 6qZbREk+j7SbT1KNj19ewOGUer9aOFJ63NeDPsAcjb8yGtioh1QuTyomH
 1vl9gzzf50Uw8fp7uut1qPhgUZkopyQbC/mczkhHOTn3kGMwjsZSUG8HL
 P4U9TIR5H+TdX7f23doDyAuJ/J2Yh3tl6qX+jTu+9TnBjAhstw0gemYtg A==;
IronPort-SDR: hrYGVZptsXCHoSr3Oo1SwHWc22kWfa+3+q4t688jh3vqf0mZ3Nr3GXHwTxZYX3tWferyFsC6d+
 05ig6KqMNqmZBILhi0iABxwY1l1IS06dJTNoknxf1hsAHUau+4rR6sFPEUb+3xOsaxfnsVaweU
 J0s1jwlf/wwz84nDFPB0CpbhONfzz3c+b5jsrNoG+SSammCd8wF4khJ5SWS1BuL2hyZe1d/44c
 +RQwMUWEV+gNSgfSFN4q9K0eNSX3IddYoTFm3ooGiKZZKCfFyINb54HWhYx3HZ/r3rV4Yxe1oD
 tf8=
X-IronPort-AV: E=Sophos;i="5.72,381,1580745600"; d="scan'208";a="139605673"
Received: from uls-op-cesaip02.wdc.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 14 Apr 2020 12:43:29 +0800
IronPort-SDR: CQ9ADsshfud/aeUOKUVcMlCMKTD3wIP4W/oqoEmYOodZ+YmSVU6DQ5lp43UKii+1hPs6jP5U/K
 /l3z4LDVLl/JANg8cGDNwEaD1MNnykRSUXiyzm9KtmzpMbfdgnybNN9bxzYy+GnmNhYtbN7jbQ
 VG2Q9svRj5hcdan3WqwXdK/XDXshf7pEzPsQmL4EfrQ5DTHqfFYftZc8EEFx5bgVaLp6EqWEDz
 KtVjOT1zw4fCIAxCZD4zi8CopVZ1WHT/5P/FUplGhnL+ygTRbw7zlEEqkRgNd6r/ciF/CQwSMi
 ZfnuoneSNWmanamv9pg6Z8mL
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2020 21:34:00 -0700
IronPort-SDR: Zjop+g8oc39/XSnlzJYSSy6byjt6kwu/CNm2R5X93QiOX2fSvOruVTnhDLHR7yghCsT4vITN+q
 Jaq5CVvX9kPZxdlZ9+cjLoZQMqZPJ+pR0WQxwUNUsVDuTnjSowS2KpKD0Y5fYO2VGQuK55e19j
 gvJgPrNZb8NAfVn4l1AVjGsJ6E5j0gRsTuJnGumQldCwtR9J1le4GExDNue64amOqDjuciMuHP
 +Tyg0fr5QzlptQiHA6xDuN7wkI4Q/r6k4NxyVDetI3lW+9GtPJPPFCZa0wnT99ljqBdpouEDG4
 uJY=
WDCIronportException: Internal
Received: from 2768r8lbtd9.hitachigst.global (HELO localhost.hgst.com)
 ([10.84.70.38])
 by uls-op-cesaip02.wdc.com with ESMTP; 13 Apr 2020 21:43:28 -0700
From: Damien Le Moal <damien.lemoal@wdc.com>
To: linux-riscv@lists.infradead.org,
	Palmer Dabbelt <palmer@dabbelt.com>
Subject: [PATCH 1/3] riscv: Allow device trees to be built into the kernel
Date: Tue, 14 Apr 2020 13:43:24 +0900
Message-Id: <20200414044326.103884-2-damien.lemoal@wdc.com>
X-Mailer: git-send-email 2.25.2
In-Reply-To: <20200414044326.103884-1-damien.lemoal@wdc.com>
References: <20200414044326.103884-1-damien.lemoal@wdc.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_214332_072455_C2980F50 
X-CRM114-Status: GOOD (  16.61  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.141 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Anup Patel <Anup.Patel@wdc.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

From: Palmer Dabbelt <palmerdabbelt@google.com>

Some systems don't provide a useful device tree to the kernel on boot.
Chasing around bootloaders for these systems is a headache, so instead
le't's just keep a device tree table in the kernel, keyed by the SOC's
unique identifier, that contains the relevant DTB.

This is only implemented for M mode right now. While we could implement
this via the SBI calls that allow access to these identifiers, we don't
have any systems that need this right now.

Signed-off-by: Palmer Dabbelt <palmerdabbelt@google.com>
Signed-off-by: Damien Le Moal <damien.lemoal@wdc.com>
---
 arch/riscv/Kbuild               |  1 +
 arch/riscv/Kconfig              |  5 +++++
 arch/riscv/include/asm/soc.h    | 39 +++++++++++++++++++++++++++++++++
 arch/riscv/kernel/setup.c       |  4 ++++
 arch/riscv/kernel/soc.c         | 27 +++++++++++++++++++++++
 arch/riscv/kernel/vmlinux.lds.S |  5 +++++
 arch/riscv/mm/init.c            |  9 ++++++++
 7 files changed, 90 insertions(+)

diff --git a/arch/riscv/Kbuild b/arch/riscv/Kbuild
index d1d0aa70fdf1..4614c01ba5b3 100644
--- a/arch/riscv/Kbuild
+++ b/arch/riscv/Kbuild
@@ -1,3 +1,4 @@
 # SPDX-License-Identifier: GPL-2.0-only
 
 obj-y += kernel/ mm/ net/
+obj-$(CONFIG_BUILTIN_DTB) += boot/dts/
diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index 47691a9e3fd0..757b74004e37 100644
--- a/arch/riscv/Kconfig
+++ b/arch/riscv/Kconfig
@@ -380,6 +380,11 @@ endchoice
 
 endmenu
 
+config BUILTIN_DTB
+	def_bool n
+	depends on RISCV_M_MODE
+	depends on OF
+
 menu "Power management options"
 
 source "kernel/power/Kconfig"
diff --git a/arch/riscv/include/asm/soc.h b/arch/riscv/include/asm/soc.h
index 7cec1968c8b4..136a442ef876 100644
--- a/arch/riscv/include/asm/soc.h
+++ b/arch/riscv/include/asm/soc.h
@@ -1,6 +1,7 @@
 /* SPDX-License-Identifier: GPL-2.0-or-later */
 /*
  * Copyright (C) 2020 Western Digital Corporation or its affiliates.
+ * Copyright (C) 2020 Google, Inc
  */
 
 #ifndef _ASM_RISCV_SOC_H
@@ -20,4 +21,42 @@ void soc_early_init(void);
 extern unsigned long __soc_early_init_table_start;
 extern unsigned long __soc_early_init_table_end;
 
+/*
+ * Allows Linux to provide a device tree, which is necessary for SOCs that
+ * don't provide a useful one on their own.
+ */
+struct soc_builtin_dtb {
+	unsigned long vendor_id;
+	unsigned long arch_id;
+	unsigned long imp_id;
+	void *(*dtb_func)(void);
+};
+
+/*
+ * The argument name must specify a valid DTS file name without the dts
+ * extension.
+ */
+#define SOC_BUILTIN_DTB_DECLARE(name, vendor, arch, impl)		\
+	extern void *__dtb_##name##_begin;				\
+									\
+	static __init __used						\
+	void *__soc_builtin_dtb_f__##name(void)				\
+	{								\
+		return (void *)&__dtb_##name##_begin;			\
+	}								\
+									\
+	static const struct soc_builtin_dtb __soc_builtin_dtb__##name	\
+		__used __section(__soc_builtin_dtb_table) =		\
+	{								\
+		.vendor_id = vendor,					\
+		.arch_id   = arch,					\
+		.imp_id    = impl,					\
+		.dtb_func  = __soc_builtin_dtb_f__##name,		\
+	}
+
+extern unsigned long __soc_builtin_dtb_table_start;
+extern unsigned long __soc_builtin_dtb_table_end;
+
+void *soc_lookup_builtin_dtb(void);
+
 #endif
diff --git a/arch/riscv/kernel/setup.c b/arch/riscv/kernel/setup.c
index 145128a7e560..3e528312f615 100644
--- a/arch/riscv/kernel/setup.c
+++ b/arch/riscv/kernel/setup.c
@@ -75,7 +75,11 @@ void __init setup_arch(char **cmdline_p)
 
 	setup_bootmem();
 	paging_init();
+#if IS_ENABLED(CONFIG_BUILTIN_DTB)
+	unflatten_and_copy_device_tree();
+#else
 	unflatten_device_tree();
+#endif
 	clint_init_boot_cpu();
 
 #ifdef CONFIG_SWIOTLB
diff --git a/arch/riscv/kernel/soc.c b/arch/riscv/kernel/soc.c
index 0b3b3dc9ad0f..1fc87621c728 100644
--- a/arch/riscv/kernel/soc.c
+++ b/arch/riscv/kernel/soc.c
@@ -26,3 +26,30 @@ void __init soc_early_init(void)
 		}
 	}
 }
+
+static bool soc_builtin_dtb_match(unsigned long vendor_id,
+				unsigned long arch_id, unsigned long imp_id,
+				const struct soc_builtin_dtb *entry)
+{
+	return entry->vendor_id == vendor_id &&
+	       entry->arch_id == arch_id &&
+	       entry->imp_id == imp_id;
+}
+
+void * __init soc_lookup_builtin_dtb(void)
+{
+	unsigned long vendor_id, arch_id, imp_id;
+	const struct soc_builtin_dtb *s;
+
+	__asm__ ("csrr %0, mvendorid" : "=r"(vendor_id));
+	__asm__ ("csrr %0, marchid" : "=r"(arch_id));
+	__asm__ ("csrr %0, mimpid" : "=r"(imp_id));
+
+	for (s = (void *)&__soc_builtin_dtb_table_start;
+	     (void *)s < (void *)&__soc_builtin_dtb_table_end; s++) {
+		if (soc_builtin_dtb_match(vendor_id, arch_id, imp_id, s))
+			return s->dtb_func();
+	}
+
+	return NULL;
+}
diff --git a/arch/riscv/kernel/vmlinux.lds.S b/arch/riscv/kernel/vmlinux.lds.S
index 0339b6bbe11a..e6f8016b366a 100644
--- a/arch/riscv/kernel/vmlinux.lds.S
+++ b/arch/riscv/kernel/vmlinux.lds.S
@@ -34,6 +34,11 @@ SECTIONS
 		KEEP(*(__soc_early_init_table))
 		__soc_early_init_table_end = .;
 	}
+	__soc_builtin_dtb_table : {
+		__soc_builtin_dtb_table_start = .;
+		KEEP(*(__soc_builtin_dtb_table))
+		__soc_builtin_dtb_table_end = .;
+	}
 	/* we have to discard exit text and such at runtime, not link time */
 	.exit.text :
 	{
diff --git a/arch/riscv/mm/init.c b/arch/riscv/mm/init.c
index b55be44ff9bd..9d7dfc9863ab 100644
--- a/arch/riscv/mm/init.c
+++ b/arch/riscv/mm/init.c
@@ -17,6 +17,7 @@
 #include <asm/fixmap.h>
 #include <asm/tlbflush.h>
 #include <asm/sections.h>
+#include <asm/soc.h>
 #include <asm/pgtable.h>
 #include <asm/io.h>
 
@@ -492,7 +493,15 @@ void free_initmem(void)
 #else
 asmlinkage void __init setup_vm(uintptr_t dtb_pa)
 {
+#ifdef CONFIG_BUILTIN_DTB
+	dtb_early_va = soc_lookup_builtin_dtb();
+	if (!dtb_early_va) {
+		/* Fallback to first available DTS */
+		dtb_early_va = (void *) __dtb_start;
+	}
+#else
 	dtb_early_va = (void *)dtb_pa;
+#endif
 }
 
 static inline void setup_vm_final(void)
-- 
2.25.2


