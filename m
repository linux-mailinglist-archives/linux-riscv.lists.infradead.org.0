Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D737C1AB5F3
	for <lists+linux-riscv@lfdr.de>; Thu, 16 Apr 2020 04:38:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:MIME-Version:
	Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rajEbHr2QltbIbsyjipdsOXP2ySPviNQ40WkpXodLV8=; b=R0ncQsBJxlyvaL
	AlMsH/70/nrG47VKzEBSftVvlLA51r8ODHBbmGI1Ne8xME9H3vAbc9g5F34H2PBRoqlv0GIy7fNia
	7+9f40Iea3JqMretoES6siDFVblyxRa6nOm7bjYb4pLC+ND22+dsyFxGgKRJ7hmSrKi5ovD2Javmw
	umadxf1+P5IoxsIq0MuCfwT8pX7nraH52AwCVBrtCYNDOC+VNkrtFJg4HxobTeQoYOg0+DbZtjp/+
	rI4lMAM6lgKvem105LGZGkaqNrun1tfPuTGU2kKRS77VMOc+i7QTUwzC7zDOOi/JtyaNzfz8cgShl
	dv8jsTdmzTuBbQQ1dTjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOuQT-00007K-KZ; Thu, 16 Apr 2020 02:38:49 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOuQJ-0008RH-4i
 for linux-riscv@lists.infradead.org; Thu, 16 Apr 2020 02:38:41 +0000
Received: by mail-pl1-x644.google.com with SMTP id d24so807568pll.8
 for <linux-riscv@lists.infradead.org>; Wed, 15 Apr 2020 19:38:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=rajEbHr2QltbIbsyjipdsOXP2ySPviNQ40WkpXodLV8=;
 b=CM70+l5c6ABl1IFRetPVaSol4qT9ngB9/Z7UZvxKYkrI/yXwEYxZOYXYoSfynG1lEf
 tuekPe76zjgdXIxlIs3kJwIgd72FEQf9hL096wBsa+9YoxdUTv6xw6R/xcwCu8PDabeI
 Fp8bLO/7FJvf+S/G176ds6bIREuR57X44SkFWrdUfFYMIncPMo47sJRgwLjLsdM9R0AP
 JxW/rAUl3zINGfO4c1KZb0Bri8z4DB94QqIJDbxCchf2qtbPgpjAnEfq0MB+CNn+R3pF
 5QThoSorJub8DyP1Rsoo7I9Kc9iXUvAEDHM1TNwms+/oisaVoi9WDJk/l7krE4g+GbMe
 8EHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=rajEbHr2QltbIbsyjipdsOXP2ySPviNQ40WkpXodLV8=;
 b=VfAayUZzjRjcUCah2t9sXCLD8W272e4DzklxwHyrDL036wIV/l8YMCOfN875aEayUN
 wmFDKBJrlML8TvKT0pW22YhCA1+tYigxkYipPZrBRyoW4yqw1W5hWk+033fXb5XPJ1AM
 CKapoUwkz7DEFibKAK/WvQEcWfsw4jIh3FRORCSWafTboJmwqKt76dPHWHDvkxuhoGbG
 RMfey19SlQhKsXwUZ4Wv3p8363Nwm6MTvY2kUx1Ak+tThmZv2f3SGX9yCu09iC8s1x9i
 z7FWqMAKvW7kuJrwka/No9a4slU0p1gKNamem/JxwRYXnyKnuSZS2HHPFFp8HRGVzxZI
 yuEA==
X-Gm-Message-State: AGi0Pub0lDibG7XZC6OO63bE7tNWPLCKgE9DMxQ7LPbMAmT/YItSzbRs
 aHPJizog6srzZeane8qO2bKFgQ==
X-Google-Smtp-Source: APiQypIw5WWM51ps8juevmwvzDKKeCO0EPN3v+l9v3tDBcatBgDnZCNy/1bm4GqcowGoY5lL9LUkZg==
X-Received: by 2002:a17:902:704a:: with SMTP id
 h10mr7802061plt.235.1587004717836; 
 Wed, 15 Apr 2020 19:38:37 -0700 (PDT)
Received: from VincentChen-ThinkPad-T480s.internal.sifive.com
 (114-34-229-221.HINET-IP.hinet.net. [114.34.229.221])
 by smtp.gmail.com with ESMTPSA id i25sm11347536pfd.140.2020.04.15.19.38.36
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 15 Apr 2020 19:38:37 -0700 (PDT)
From: Vincent Chen <vincent.chen@sifive.com>
To: paul.walmsley@sifive.com, palmer@dabbelt.com, daniel.thompson@linaro.org
Subject: [PATCH v4 4/5] riscv: Use the XML target descriptions to report 3
 system registers
Date: Thu, 16 Apr 2020 10:38:07 +0800
Message-Id: <1587004688-19788-5-git-send-email-vincent.chen@sifive.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1587004688-19788-1-git-send-email-vincent.chen@sifive.com>
References: <1587004688-19788-1-git-send-email-vincent.chen@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_193839_185499_CB27CB7E 
X-CRM114-Status: GOOD (  14.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: kgdb-bugreport@lists.sourceforge.net, linux-riscv@lists.infradead.org,
 Vincent Chen <vincent.chen@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

The $status, $badaddr, and $cause registers belong to the thread context,
so KGDB can obtain their contents from pt_regs in each trap. However, the
sequential number of these registers in the gdb register list is far from
the general-purpose registers. If riscv port uses the existing method to
report these three registers, many trivial registers with sequence numbers
in the middle of them will also be packaged to the reply packets. To solve
this problem, the riscv port wants to introduce the GDB target description
mechanism to customize the reported register list. By the list, the KGDB
can ignore the intermediate registers and just reports the general-purpose
registers and these three system registers.

Signed-off-by: Vincent Chen <vincent.chen@sifive.com>
---
 arch/riscv/Kconfig               |   1 +
 arch/riscv/include/asm/gdb_xml.h | 117 +++++++++++++++++++++++++++++++++++++++
 arch/riscv/include/asm/kgdb.h    |   8 ++-
 arch/riscv/kernel/kgdb.c         |  15 +++++
 4 files changed, 140 insertions(+), 1 deletion(-)
 create mode 100644 arch/riscv/include/asm/gdb_xml.h

diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index 7db9a81cda75..6730468e8b92 100644
--- a/arch/riscv/Kconfig
+++ b/arch/riscv/Kconfig
@@ -69,6 +69,7 @@ config RISCV
 	select HAVE_COPY_THREAD_TLS
 	select HAVE_ARCH_KASAN if MMU && 64BIT
 	select HAVE_ARCH_KGDB
+	select HAVE_ARCH_KGDB_QXFER_PKT
 
 config ARCH_MMAP_RND_BITS_MIN
 	default 18 if 64BIT
diff --git a/arch/riscv/include/asm/gdb_xml.h b/arch/riscv/include/asm/gdb_xml.h
new file mode 100644
index 000000000000..041b45f5b997
--- /dev/null
+++ b/arch/riscv/include/asm/gdb_xml.h
@@ -0,0 +1,117 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
+#ifndef __ASM_GDB_XML_H_
+#define __ASM_GDB_XML_H_
+
+#define kgdb_arch_gdb_stub_feature riscv_gdb_stub_feature
+static const char riscv_gdb_stub_feature[64] =
+			"PacketSize=800;qXfer:features:read+;";
+
+static const char gdb_xfer_read_target[31] = "qXfer:features:read:target.xml:";
+
+#ifdef CONFIG_64BIT
+static const char gdb_xfer_read_cpuxml[39] =
+			"qXfer:features:read:riscv-64bit-cpu.xml";
+
+static const char riscv_gdb_stub_target_desc[256] =
+"l<?xml version=\"1.0\"?>"
+"<!DOCTYPE target SYSTEM \"gdb-target.dtd\">"
+"<target>"
+"<xi:include href=\"riscv-64bit-cpu.xml\"/>"
+"</target>";
+
+static const char riscv_gdb_stub_cpuxml[2048] =
+"l<?xml version=\"1.0\"?>"
+"<!DOCTYPE feature SYSTEM \"gdb-target.dtd\">"
+"<feature name=\"org.gnu.gdb.riscv.cpu\">"
+"<reg name=\""DBG_REG_ZERO"\" bitsize=\"64\" type=\"int\" regnum=\"0\"/>"
+"<reg name=\""DBG_REG_RA"\" bitsize=\"64\" type=\"code_ptr\"/>"
+"<reg name=\""DBG_REG_SP"\" bitsize=\"64\" type=\"data_ptr\"/>"
+"<reg name=\""DBG_REG_GP"\" bitsize=\"64\" type=\"data_ptr\"/>"
+"<reg name=\""DBG_REG_TP"\" bitsize=\"64\" type=\"data_ptr\"/>"
+"<reg name=\""DBG_REG_T0"\" bitsize=\"64\" type=\"int\"/>"
+"<reg name=\""DBG_REG_T1"\" bitsize=\"64\" type=\"int\"/>"
+"<reg name=\""DBG_REG_T2"\" bitsize=\"64\" type=\"int\"/>"
+"<reg name=\""DBG_REG_FP"\" bitsize=\"64\" type=\"data_ptr\"/>"
+"<reg name=\""DBG_REG_S1"\" bitsize=\"64\" type=\"int\"/>"
+"<reg name=\""DBG_REG_A0"\" bitsize=\"64\" type=\"int\"/>"
+"<reg name=\""DBG_REG_A1"\" bitsize=\"64\" type=\"int\"/>"
+"<reg name=\""DBG_REG_A2"\" bitsize=\"64\" type=\"int\"/>"
+"<reg name=\""DBG_REG_A3"\" bitsize=\"64\" type=\"int\"/>"
+"<reg name=\""DBG_REG_A4"\" bitsize=\"64\" type=\"int\"/>"
+"<reg name=\""DBG_REG_A5"\" bitsize=\"64\" type=\"int\"/>"
+"<reg name=\""DBG_REG_A6"\" bitsize=\"64\" type=\"int\"/>"
+"<reg name=\""DBG_REG_A7"\" bitsize=\"64\" type=\"int\"/>"
+"<reg name=\""DBG_REG_S2"\" bitsize=\"64\" type=\"int\"/>"
+"<reg name=\""DBG_REG_S3"\" bitsize=\"64\" type=\"int\"/>"
+"<reg name=\""DBG_REG_S4"\" bitsize=\"64\" type=\"int\"/>"
+"<reg name=\""DBG_REG_S5"\" bitsize=\"64\" type=\"int\"/>"
+"<reg name=\""DBG_REG_S6"\" bitsize=\"64\" type=\"int\"/>"
+"<reg name=\""DBG_REG_S7"\" bitsize=\"64\" type=\"int\"/>"
+"<reg name=\""DBG_REG_S8"\" bitsize=\"64\" type=\"int\"/>"
+"<reg name=\""DBG_REG_S9"\" bitsize=\"64\" type=\"int\"/>"
+"<reg name=\""DBG_REG_S10"\" bitsize=\"64\" type=\"int\"/>"
+"<reg name=\""DBG_REG_S11"\" bitsize=\"64\" type=\"int\"/>"
+"<reg name=\""DBG_REG_T3"\" bitsize=\"64\" type=\"int\"/>"
+"<reg name=\""DBG_REG_T4"\" bitsize=\"64\" type=\"int\"/>"
+"<reg name=\""DBG_REG_T5"\" bitsize=\"64\" type=\"int\"/>"
+"<reg name=\""DBG_REG_T6"\" bitsize=\"64\" type=\"int\"/>"
+"<reg name=\""DBG_REG_EPC"\" bitsize=\"64\" type=\"code_ptr\"/>"
+"<reg name=\""DBG_REG_STATUS"\" bitsize=\"64\" type=\"int\"/>"
+"<reg name=\""DBG_REG_BADADDR"\" bitsize=\"64\" type=\"int\"/>"
+"<reg name=\""DBG_REG_CAUSE"\" bitsize=\"64\" type=\"int\"/>"
+"</feature>";
+#else
+static const char gdb_xfer_read_cpuxml[39] =
+			"qXfer:features:read:riscv-32bit-cpu.xml";
+
+static const char riscv_gdb_stub_target_desc[256] =
+"l<?xml version=\"1.0\"?>"
+"<!DOCTYPE target SYSTEM \"gdb-target.dtd\">"
+"<target>"
+"<xi:include href=\"riscv-32bit-cpu.xml\"/>"
+"</target>";
+
+static const char riscv_gdb_stub_cpuxml[2048] =
+"l<?xml version=\"1.0\"?>"
+"<!DOCTYPE feature SYSTEM \"gdb-target.dtd\">"
+"<feature name=\"org.gnu.gdb.riscv.cpu\">"
+"<reg name=\""DBG_REG_ZERO"\" bitsize=\"32\" type=\"int\" regnum=\"0\"/>"
+"<reg name=\""DBG_REG_RA"\" bitsize=\"32\" type=\"code_ptr\"/>"
+"<reg name=\""DBG_REG_SP"\" bitsize=\"32\" type=\"data_ptr\"/>"
+"<reg name=\""DBG_REG_GP"\" bitsize=\"32\" type=\"data_ptr\"/>"
+"<reg name=\""DBG_REG_TP"\" bitsize=\"32\" type=\"data_ptr\"/>"
+"<reg name=\""DBG_REG_T0"\" bitsize=\"32\" type=\"int\"/>"
+"<reg name=\""DBG_REG_T1"\" bitsize=\"32\" type=\"int\"/>"
+"<reg name=\""DBG_REG_T2"\" bitsize=\"32\" type=\"int\"/>"
+"<reg name=\""DBG_REG_FP"\" bitsize=\"32\" type=\"data_ptr\"/>"
+"<reg name=\""DBG_REG_S1"\" bitsize=\"32\" type=\"int\"/>"
+"<reg name=\""DBG_REG_A0"\" bitsize=\"32\" type=\"int\"/>"
+"<reg name=\""DBG_REG_A1"\" bitsize=\"32\" type=\"int\"/>"
+"<reg name=\""DBG_REG_A2"\" bitsize=\"32\" type=\"int\"/>"
+"<reg name=\""DBG_REG_A3"\" bitsize=\"32\" type=\"int\"/>"
+"<reg name=\""DBG_REG_A4"\" bitsize=\"32\" type=\"int\"/>"
+"<reg name=\""DBG_REG_A5"\" bitsize=\"32\" type=\"int\"/>"
+"<reg name=\""DBG_REG_A6"\" bitsize=\"32\" type=\"int\"/>"
+"<reg name=\""DBG_REG_A7"\" bitsize=\"32\" type=\"int\"/>"
+"<reg name=\""DBG_REG_S2"\" bitsize=\"32\" type=\"int\"/>"
+"<reg name=\""DBG_REG_S3"\" bitsize=\"32\" type=\"int\"/>"
+"<reg name=\""DBG_REG_S4"\" bitsize=\"32\" type=\"int\"/>"
+"<reg name=\""DBG_REG_S5"\" bitsize=\"32\" type=\"int\"/>"
+"<reg name=\""DBG_REG_S6"\" bitsize=\"32\" type=\"int\"/>"
+"<reg name=\""DBG_REG_S7"\" bitsize=\"32\" type=\"int\"/>"
+"<reg name=\""DBG_REG_S8"\" bitsize=\"32\" type=\"int\"/>"
+"<reg name=\""DBG_REG_S9"\" bitsize=\"32\" type=\"int\"/>"
+"<reg name=\""DBG_REG_S10"\" bitsize=\"32\" type=\"int\"/>"
+"<reg name=\""DBG_REG_S11"\" bitsize=\"32\" type=\"int\"/>"
+"<reg name=\""DBG_REG_T3"\" bitsize=\"32\" type=\"int\"/>"
+"<reg name=\""DBG_REG_T4"\" bitsize=\"32\" type=\"int\"/>"
+"<reg name=\""DBG_REG_T5"\" bitsize=\"32\" type=\"int\"/>"
+"<reg name=\""DBG_REG_T6"\" bitsize=\"32\" type=\"int\"/>"
+"<reg name=\""DBG_REG_EPC"\" bitsize=\"32\" type=\"code_ptr\"/>"
+"<reg name=\""DBG_REG_STATUS"\" bitsize=\"32\" type=\"int\"/>"
+"<reg name=\""DBG_REG_BADADDR"\" bitsize=\"32\" type=\"int\"/>"
+"<reg name=\""DBG_REG_CAUSE"\" bitsize=\"32\" type=\"int\"/>"
+"</feature>";
+#endif
+#endif
diff --git a/arch/riscv/include/asm/kgdb.h b/arch/riscv/include/asm/kgdb.h
index ce5a51bdd6a4..8177a457caff 100644
--- a/arch/riscv/include/asm/kgdb.h
+++ b/arch/riscv/include/asm/kgdb.h
@@ -7,7 +7,7 @@
 
 #define GDB_SIZEOF_REG sizeof(unsigned long)
 
-#define DBG_MAX_REG_NUM (33)
+#define DBG_MAX_REG_NUM (36)
 #define NUMREGBYTES ((DBG_MAX_REG_NUM) * GDB_SIZEOF_REG)
 #define CACHE_FLUSH_IS_SAFE     1
 #define BUFMAX                  2048
@@ -65,6 +65,9 @@ static inline void arch_kgdb_breakpoint(void)
 #define DBG_REG_T5 "t5"
 #define DBG_REG_T6 "t6"
 #define DBG_REG_EPC "pc"
+#define DBG_REG_STATUS "sstatus"
+#define DBG_REG_BADADDR "stval"
+#define DBG_REG_CAUSE "scause"
 
 #define DBG_REG_ZERO_OFF 0
 #define DBG_REG_RA_OFF 1
@@ -102,5 +105,8 @@ static inline void arch_kgdb_breakpoint(void)
 #define DBG_REG_STATUS_OFF 33
 #define DBG_REG_BADADDR_OFF 34
 #define DBG_REG_CAUSE_OFF 35
+
+#include <asm/gdb_xml.h>
+
 #endif
 #endif
diff --git a/arch/riscv/kernel/kgdb.c b/arch/riscv/kernel/kgdb.c
index 6bdc0908a5b8..eb1afab47679 100644
--- a/arch/riscv/kernel/kgdb.c
+++ b/arch/riscv/kernel/kgdb.c
@@ -10,6 +10,7 @@
 #include <linux/irqflags.h>
 #include <linux/string.h>
 #include <asm/cacheflush.h>
+#include <asm/gdb_xml.h>
 
 enum {
 	NOT_KGDB_BREAK = 0,
@@ -51,6 +52,9 @@ struct dbg_reg_def_t dbg_reg_def[DBG_MAX_REG_NUM] = {
 	{DBG_REG_T5, GDB_SIZEOF_REG, offsetof(struct pt_regs, t5)},
 	{DBG_REG_T6, GDB_SIZEOF_REG, offsetof(struct pt_regs, t6)},
 	{DBG_REG_EPC, GDB_SIZEOF_REG, offsetof(struct pt_regs, epc)},
+	{DBG_REG_STATUS, GDB_SIZEOF_REG, offsetof(struct pt_regs, status)},
+	{DBG_REG_BADADDR, GDB_SIZEOF_REG, offsetof(struct pt_regs, badaddr)},
+	{DBG_REG_CAUSE, GDB_SIZEOF_REG, offsetof(struct pt_regs, cause)},
 };
 
 char *dbg_get_reg(int regno, void *mem, struct pt_regs *regs)
@@ -103,6 +107,17 @@ void kgdb_arch_set_pc(struct pt_regs *regs, unsigned long pc)
 	regs->epc = pc;
 }
 
+void kgdb_arch_handle_qxfer_pkt(char *remcom_in_buffer,
+				char *remcom_out_buffer)
+{
+	if (!strncmp(remcom_in_buffer, gdb_xfer_read_target,
+		     sizeof(gdb_xfer_read_target)))
+		strcpy(remcom_out_buffer, riscv_gdb_stub_target_desc);
+	else if (!strncmp(remcom_in_buffer, gdb_xfer_read_cpuxml,
+			  sizeof(gdb_xfer_read_cpuxml)))
+		strcpy(remcom_out_buffer, riscv_gdb_stub_cpuxml);
+}
+
 static inline void kgdb_arch_update_addr(struct pt_regs *regs,
 					 char *remcom_in_buffer)
 {
-- 
2.7.4


