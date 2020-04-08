Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89E281A279B
	for <lists+linux-riscv@lfdr.de>; Wed,  8 Apr 2020 18:58:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:From:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=nE5vctDSuQN5rOCACQ5CjGA7LBmsmXsS0oy2lHDvu38=; b=OfV/Vffk7z7ffLOVz2iqhyEWz
	TXnQor8DsQxQzPHagAWEFKamp0R71kTXzxi1GflqUdGL/TuHL4qJmeilfXclMlz37MhL+w6Kmj4IM
	4ffFL9zJUd3vjfgBW0Il6sB/Qg9ryBUj5rtb9NuPPHcbn2Wgpc2nwPKQAcRfn45+DqTsQy40qJ95C
	hyX/9oCLbht+hrI8svJjzbmoXPC65Lhnrtg6HPmErCqsHkQRGGADhcMW8mitZ4td64WhQ87g82sKb
	8GbGL/hpmu/ygKX2nOZgJfGG1iKKDKFOBD6ESEoGtT8BeU7h3smJcoV37/XRLKj7nLPTJrYEgHlFX
	XDxbnEN3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jME2R-0003on-77; Wed, 08 Apr 2020 16:58:55 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jME2M-0003m8-Fg
 for linux-riscv@lists.infradead.org; Wed, 08 Apr 2020 16:58:52 +0000
Received: by mail-pj1-x1043.google.com with SMTP id a32so70418pje.5
 for <linux-riscv@lists.infradead.org>; Wed, 08 Apr 2020 09:58:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
 h=subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding:cc:from:to;
 bh=nE5vctDSuQN5rOCACQ5CjGA7LBmsmXsS0oy2lHDvu38=;
 b=xnFP7Ovra92iTlA0zgKcCemQUIs33bVKKhwoIosOc0NM+/1xX0Qrm0FDKnsluRpQY1
 XExSRZJXhjrNmfTStrnT7xGUktSDgtcXC8HX1O7jOIzRGPIsS8o+JiIeHxdJLglCvzbt
 Q5hH21b+ggz72gqgFi6H7k33qrL/kXmB1EOdmaCdsd7tSYP4xl80Z30ecoXeDdsEOg+X
 ec9kZsPgeDcEAA9pEnGDO1w9z5qbCJINxOUMNOgqtdw4yFWi5rCvSv4gK2pdaktNSgog
 HXT6DkLo4xEA2mp5uK89G3dGATe9urljI4KiSol4wHLL34PWKpvA8NQqSziTKjl4CvD8
 q0Fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding:cc:from:to;
 bh=nE5vctDSuQN5rOCACQ5CjGA7LBmsmXsS0oy2lHDvu38=;
 b=RnLSg2MR6TO1wvN3RDJmBXwOMNFO/yTade7ruQd/TIcf6Pi65Vah+ZYkRv1U0e/YS+
 eGg8FX/P+wCAozXFpyvIPkLnB7HJc05+Y2vNMiNadTm3hdRAQ4UYSUtCpg+qnR8zXk/f
 puXscr5//b939H+mU9k9V6laiUmKOX+7s3EitgcH1ehyHofrzms62p+SYeoElh+VbWxL
 o6sI8tCmM4t6RhMr0nAyqwf1J3em4jykiZiMjimYm5YEzeOjIhuy2TSIGsylpXtYsqT5
 8A+LgY64UpwMF1j+LBoVf1IrJsVRIjKP1ooK+2B4BVjnLH+NqxhbMvd9eHJuNphe999B
 WREQ==
X-Gm-Message-State: AGi0PuaoIYFdr1TbQu0zShzua8hY1fR4ihlaGs/+5RpReDG7iR4H1F8M
 vcu+AgJmxMbup5p7NrTfQ9jS5A==
X-Google-Smtp-Source: APiQypLJ11cHDrkmTZL8II1lH+LkjuSV0RRzf8aggogY9osKFdJwzGuBmpFO8wyu9eV27pL9zfM09A==
X-Received: by 2002:a17:90a:208f:: with SMTP id
 f15mr6290845pjg.60.1586365129685; 
 Wed, 08 Apr 2020 09:58:49 -0700 (PDT)
Received: from localhost (76-210-143-223.lightspeed.sntcca.sbcglobal.net.
 [76.210.143.223])
 by smtp.gmail.com with ESMTPSA id l22sm80490pjq.15.2020.04.08.09.58.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Apr 2020 09:58:49 -0700 (PDT)
Subject: [PATCH 1/3] RISC-V: Allow device trees to be built into the kernel
Date: Wed,  8 Apr 2020 09:57:39 -0700
Message-Id: <20200408165802.167546-2-palmer@dabbelt.com>
X-Mailer: git-send-email 2.26.0.292.g33ef6b2f38-goog
In-Reply-To: <20200408165802.167546-1-palmer@dabbelt.com>
References: <20200408165802.167546-1-palmer@dabbelt.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: Palmer Dabbelt <palmer@dabbelt.com>
To: linux-riscv@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_095850_525674_A496229B 
X-CRM114-Status: GOOD (  19.44  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1043 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Damien Le Moal <Damien.LeMoal@wdc.com>,
 Palmer Dabbelt <palmerdabbelt@google.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

From: Palmer Dabbelt <palmerdabbelt@google.com>

Some systems don't provide a useful device tree to the kernel on boot.
Chasing around bootloaders for these systems is a headache, so instead
le't's just keep device tree table in the kernel, keyed by the SOC's
unique identifier, that contains the relevant DTB.

This is only implemented for M mode right now.  While we could implement
this via the SBI calls that allow access to these identifiers, we don't
have any systems that need this right now.

Signed-off-by: Palmer Dabbelt <palmerdabbelt@google.com>
---
 arch/riscv/Kconfig                    |  5 +++++
 arch/riscv/include/asm/soc.h          | 27 +++++++++++++++++++++++++++
 arch/riscv/kernel/Makefile            |  3 +++
 arch/riscv/kernel/builtin-dtb-table.c |  6 ++++++
 arch/riscv/kernel/builtin-dtb.S       |  3 +++
 arch/riscv/kernel/soc.c               | 25 +++++++++++++++++++++++++
 arch/riscv/kernel/vmlinux.lds.S       |  5 +++++
 arch/riscv/mm/init.c                  | 14 ++++++++++++++
 8 files changed, 88 insertions(+)
 create mode 100644 arch/riscv/kernel/builtin-dtb-table.c
 create mode 100644 arch/riscv/kernel/builtin-dtb.S

diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index bc713666f00a..7572afc43bd8 100644
--- a/arch/riscv/Kconfig
+++ b/arch/riscv/Kconfig
@@ -380,6 +380,11 @@ endchoice
 
 endmenu
 
+config BUILTIN_DTB
+	def_bool y
+	depends on RISCV_M_MODE
+	depends on OF
+
 menu "Power management options"
 
 source "kernel/power/Kconfig"
diff --git a/arch/riscv/include/asm/soc.h b/arch/riscv/include/asm/soc.h
index 18bd1253ea18..c232e57bb356 100644
--- a/arch/riscv/include/asm/soc.h
+++ b/arch/riscv/include/asm/soc.h
@@ -1,6 +1,7 @@
 /* SPDX-License-Identifier: GPL-2.0-or-later */
 /*
  * Copyright (C) 2020 Western Digital Corporation or its affiliates.
+ * Copyright (C) 2020 Google, Inc
  */
 
 #ifndef _ASM_RISCV_SOC_H
@@ -22,5 +23,31 @@
 
 void soc_early_init(void);
 
+/*
+ * Allows Linux to provide a device tree, which is necessary for SOCs that
+ * don't provide a useful one on their own.
+ */
+struct soc_builtin_dtb_table_entry {
+	long vendor_id;
+	long arch_id;
+	long imp_id;
+	void *(*dtb_func)(void);
+};
+
+#define SOC_BUILTIN_DTB_DECLARE(name, vendor, impl, arch, dtb)		\
+	static __init __used						\
+	void *__soc_builtin_dtb_f__##name(void) { return dtb; }		\
+									\
+	static const struct soc_builtin_dtb_table_entry			\
+	__soc_builtin_dtb__##name __used				\
+	__section(__soc_builtin_dtb_table)				\
+	= {								\
+		.vendor_id = vendor,					\
+		.arch_id   = arch,					\
+		.imp_id    = impl,					\
+		.dtb_func  = __soc_builtin_dtb_f__##name,		\
+	}
+
+void *soc_lookup_builtin_dtb(long vendor_id, long arch_id, long imp_id);
 
 #endif
diff --git a/arch/riscv/kernel/Makefile b/arch/riscv/kernel/Makefile
index 86c83081044f..f40516b6e6c1 100644
--- a/arch/riscv/kernel/Makefile
+++ b/arch/riscv/kernel/Makefile
@@ -52,4 +52,7 @@ obj-$(CONFIG_SMP) += cpu_ops_sbi.o
 endif
 obj-$(CONFIG_HOTPLUG_CPU)	+= cpu-hotplug.o
 
+obj-$(CONFIG_BUILTIN_DTB) += builtin-dtb.o
+obj-$(CONFIG_BUILTIN_DTB) += builtin-dtb-table.o
+
 clean:
diff --git a/arch/riscv/kernel/builtin-dtb-table.c b/arch/riscv/kernel/builtin-dtb-table.c
new file mode 100644
index 000000000000..7ad6fe93b8a6
--- /dev/null
+++ b/arch/riscv/kernel/builtin-dtb-table.c
@@ -0,0 +1,6 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Table of built-in device trees
+ */
+
+#include <asm/soc.h>
diff --git a/arch/riscv/kernel/builtin-dtb.S b/arch/riscv/kernel/builtin-dtb.S
new file mode 100644
index 000000000000..3d459ad86948
--- /dev/null
+++ b/arch/riscv/kernel/builtin-dtb.S
@@ -0,0 +1,3 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+
+.section .dtb.init.rodata,"a"
diff --git a/arch/riscv/kernel/soc.c b/arch/riscv/kernel/soc.c
index c32e7c8e7870..3a05110a2447 100644
--- a/arch/riscv/kernel/soc.c
+++ b/arch/riscv/kernel/soc.c
@@ -32,3 +32,28 @@ void __init soc_early_init(void)
 		}
 	}
 }
+
+static int builtin_dtb_match(long vendor_id, long arch_id, long imp_id,
+			     const struct soc_builtin_dtb_table_entry *entry)
+{
+	return (entry->vendor_id == vendor_id)
+	       && (entry->arch_id == arch_id)
+	       && (entry->imp_id == imp_id);
+}
+
+extern unsigned long __soc_builtin_dtb_table_start;
+extern unsigned long __soc_builtin_dtb_table_end;
+
+void * __init soc_lookup_builtin_dtb(long vendor_id, long arch_id, long imp_id)
+{
+	const struct soc_builtin_dtb_table_entry *s;
+
+	for (s = (void *)&__soc_early_init_table_start;
+	     (void *)s < (void *)&__soc_early_init_table_end; s++) {
+		if (builtin_dtb_match(vendor_id, arch_id, imp_id, s)) {
+			return s->dtb_func();
+		}
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
index 0c625a5e98db..ad07d931bca8 100644
--- a/arch/riscv/mm/init.c
+++ b/arch/riscv/mm/init.c
@@ -17,6 +17,7 @@
 #include <asm/fixmap.h>
 #include <asm/tlbflush.h>
 #include <asm/sections.h>
+#include <asm/soc.h>
 #include <asm/pgtable.h>
 #include <asm/io.h>
 
@@ -492,7 +493,20 @@ void free_initmem(void)
 #else
 asmlinkage void __init setup_vm(uintptr_t dtb_pa)
 {
+#ifdef CONFIG_RISCV_M_MODE
+	void *builtin_dtb;
+	long mvendorid, marchid, mimpid;
+
+	__asm__ ("csrr %0, mvendorid" : "=r"(mvendorid));
+	__asm__ ("csrr %0, marchid" : "=r"(marchid));
+	__asm__ ("csrr %0, mimpid" : "=r"(mimpid));
+
+	builtin_dtb = soc_lookup_builtin_dtb(mvendorid, marchid, mimpid);
+	if (builtin_dtb != NULL)
+		dtb_early_va = builtin_dtb;
+#else
 	dtb_early_va = (void *)dtb_pa;
+#endif
 }
 
 static inline void setup_vm_final(void)
-- 
2.26.0.292.g33ef6b2f38-goog


