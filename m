Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8219177182
	for <lists+linux-riscv@lfdr.de>; Tue,  3 Mar 2020 09:48:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=B4ptpoEWJXXD28qu1l9ZNm7p+E+C4og8iM3qtgMmqGQ=; b=WFSUdcGkB/5UjldPQ6gaotRoCh
	LF4Gnh/nATBCmDkR5Zm6TeNCRuSIzVk+AOJ4v3m33UmdypoxtKrqI/1M9gJ23w/ezKz1QIwWi5Eww
	wm86VLQ95h8mjw1Sj39fC86LKbSKg4VJ5Yz92ZuftQxP6wijycV9oQLxqSD8bZFTmvZbY5H0XQKW+
	6KEhqw1HJIdRclFOkJlhEK/S6FQGdGMN8kYkcWlVkzmK1fInryMwj0oL3ozuJuaxqiUX+Ldi4k2ka
	DIUv7tZ85y9ANLG/k4sKRJgV1i+CYztDyIcU9MofqgTAejf5+XS5e4pabhmpJIz1Ko9gfkC9dGYSw
	Ez4HfBYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j93Df-0000VR-Sb; Tue, 03 Mar 2020 08:48:03 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j93Dc-0000U4-J3
 for linux-riscv@lists.infradead.org; Tue, 03 Mar 2020 08:48:02 +0000
Received: by mail-pj1-x1044.google.com with SMTP id cx7so1042729pjb.3
 for <linux-riscv@lists.infradead.org>; Tue, 03 Mar 2020 00:48:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=B4ptpoEWJXXD28qu1l9ZNm7p+E+C4og8iM3qtgMmqGQ=;
 b=akKCBXxehJLgpoQdycp/W3Q2SvtoKRkAv0o5+3pL2hjimABRLEQuPI6giOYOOOYRxS
 +XXIDBNBVIdHl96umVeehwXeDNpGhZqOEbiFll1Kpfpuw/gjFAoM+wR2Vhv3wXf95gXs
 Ky1Av1LrlYUStpZ3qkXrWUMdZjSAyVmbnJnpaOJ3LXoprqyULyG7RQbVObXSeRY7r/uB
 kWYa+miV0tXElgI0gpu8Er5c46W1xNqxFdaPIZ87MRfKQcCr/MxLq8vHAxCQtRYwDv1J
 PzozRxpuJCLeShgIHWuizvacvg1CwZU0KHQpcvMXy6oPsoPHJLuyGlk5UBSFSImc016g
 EZjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=B4ptpoEWJXXD28qu1l9ZNm7p+E+C4og8iM3qtgMmqGQ=;
 b=hmLnIuwARAjCRWDISNeYnstkqwMabRX5PS6JUNrvvs6ZBybaMIOaTOzK/3i+qngNvy
 FfBuiFO5p/4ccVG2ZN/l0sy5m07Uw2R4KWbCPfEZpNKos1Tqd+XDfgmY2IdXuMF74yUQ
 1lIx+DwVfrK2Rl7d98n9yU5wpgeNUgKST2NWBFwgxRRHs3pJrBTVxZbi2P239jkN5SUt
 DVMKs/oJDrGtOKdvypV0YQzw4WbRnReO7iTBp/ljLxjSJ8Gz/Svq6CKotoI9aJlF0cTD
 MjzEunX5pssMJcA7VPnUksyveFDjCoTuCycbItJRYwgw6a127ObxKdc07Fvw5YF3hFzA
 Tapg==
X-Gm-Message-State: ANhLgQ3TjrkZPwJK0jPTK5JCWfRFxUp0Ryveek5KO5baJ2wIXakQqEvV
 vwfIcNxboJPtLWiqypCF2OxYcA==
X-Google-Smtp-Source: ADFU+vvKskS9J2cyiuhkOK/aoDP53HRRMvr12ucHsrfd4V9fzNCWoxwRWAR8JygzXIRIRcMFxWPhOw==
X-Received: by 2002:a17:902:b485:: with SMTP id y5mr3086150plr.4.1583225279559; 
 Tue, 03 Mar 2020 00:47:59 -0800 (PST)
Received: from VincentChen-ThinkPad-T480s.internal.sifive.com
 (220-132-236-182.HINET-IP.hinet.net. [220.132.236.182])
 by smtp.gmail.com with ESMTPSA id t11sm1806469pjo.21.2020.03.03.00.47.57
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 03 Mar 2020 00:47:59 -0800 (PST)
From: Vincent Chen <vincent.chen@sifive.com>
To: paul.walmsley@sifive.com, palmer@dabbelt.com, jason.wessel@windriver.com,
 daniel.thompson@linaro.org, dianders@chromium.org
Subject: [PATCH 4/5] riscv: Use the XML target descriptions to support system
 registers report
Date: Tue,  3 Mar 2020 16:47:54 +0800
Message-Id: <1583225274-26292-1-git-send-email-vincent.chen@sifive.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_004800_634030_772B52E9 
X-CRM114-Status: GOOD (  13.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1044 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Vincent Chen <vincent.chen@sifive.com>, linux-riscv@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

The sstatus, badaddr and scause registers belonged to the thread
context, and KGDB can obtain their contents from pt_regs in each trap.
However, the sequential number of these registers is far from the general
purpose registers. It causes riscv to report many trivial middle
registers in the reply packets. In order to solve this problem, the GDB
query mechanism was introduced to enable KGDB to customize the reported
register list through the XML target descriptions.

Signed-off-by: Vincent Chen <vincent.chen@sifive.com>
---
 arch/riscv/include/asm/gdb_xml.h | 60 ++++++++++++++++++++++++++++++++++++++++
 arch/riscv/include/asm/kgdb.h    |  5 +++-
 arch/riscv/kernel/kgdb.c         | 27 ++++++++++++++++++
 3 files changed, 91 insertions(+), 1 deletion(-)
 create mode 100644 arch/riscv/include/asm/gdb_xml.h

diff --git a/arch/riscv/include/asm/gdb_xml.h b/arch/riscv/include/asm/gdb_xml.h
new file mode 100644
index 000000000000..42c31f11265c
--- /dev/null
+++ b/arch/riscv/include/asm/gdb_xml.h
@@ -0,0 +1,60 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
+static const char gdb_query_pkt[10] = "Supported:";
+
+static const char gdb_reply_feature[64] =
+			"PacketSize=2048;qXfer:features:read+;";
+
+static const char gdb_xfer_read_target[25] = "Xfer:features:read:target";
+
+static const char gdb_xfer_read_cpuxml[38] =
+			"Xfer:features:read:riscv-64bit-cpu.xml";
+
+static const char gdb_target_desc[256] =
+"l<?xml version=\"1.0\"?>"
+"<!DOCTYPE target SYSTEM \"gdb-target.dtd\">"
+"<target>"
+"<xi:include href=\"riscv-64bit-cpu.xml\"/>"
+"</target>";
+
+static const char gdb_cpuxml[2048] =
+"l<?xml version=\"1.0\"?>"
+"<!DOCTYPE feature SYSTEM \"gdb-target.dtd\">"
+"<feature name=\"org.gnu.gdb.riscv.cpu\">"
+"<reg name=\""PT_REG_ZERO"\" bitsize=\"64\" type=\"int\" regnum=\"0\"/>"
+"<reg name=\""PT_REG_RA"\" bitsize=\"64\" type=\"code_ptr\"/>"
+"<reg name=\""PT_REG_SP"\" bitsize=\"64\" type=\"data_ptr\"/>"
+"<reg name=\""PT_REG_GP"\" bitsize=\"64\" type=\"data_ptr\"/>"
+"<reg name=\""PT_REG_TP"\" bitsize=\"64\" type=\"data_ptr\"/>"
+"<reg name=\""PT_REG_T0"\" bitsize=\"64\" type=\"int\"/>"
+"<reg name=\""PT_REG_T1"\" bitsize=\"64\" type=\"int\"/>"
+"<reg name=\""PT_REG_T2"\" bitsize=\"64\" type=\"int\"/>"
+"<reg name=\""PT_REG_FP"\" bitsize=\"64\" type=\"data_ptr\"/>"
+"<reg name=\""PT_REG_S1"\" bitsize=\"64\" type=\"int\"/>"
+"<reg name=\""PT_REG_A0"\" bitsize=\"64\" type=\"int\"/>"
+"<reg name=\""PT_REG_A1"\" bitsize=\"64\" type=\"int\"/>"
+"<reg name=\""PT_REG_A2"\" bitsize=\"64\" type=\"int\"/>"
+"<reg name=\""PT_REG_A3"\" bitsize=\"64\" type=\"int\"/>"
+"<reg name=\""PT_REG_A4"\" bitsize=\"64\" type=\"int\"/>"
+"<reg name=\""PT_REG_A5"\" bitsize=\"64\" type=\"int\"/>"
+"<reg name=\""PT_REG_A6"\" bitsize=\"64\" type=\"int\"/>"
+"<reg name=\""PT_REG_A7"\" bitsize=\"64\" type=\"int\"/>"
+"<reg name=\""PT_REG_S2"\" bitsize=\"64\" type=\"int\"/>"
+"<reg name=\""PT_REG_S3"\" bitsize=\"64\" type=\"int\"/>"
+"<reg name=\""PT_REG_S4"\" bitsize=\"64\" type=\"int\"/>"
+"<reg name=\""PT_REG_S5"\" bitsize=\"64\" type=\"int\"/>"
+"<reg name=\""PT_REG_S6"\" bitsize=\"64\" type=\"int\"/>"
+"<reg name=\""PT_REG_S7"\" bitsize=\"64\" type=\"int\"/>"
+"<reg name=\""PT_REG_S8"\" bitsize=\"64\" type=\"int\"/>"
+"<reg name=\""PT_REG_S9"\" bitsize=\"64\" type=\"int\"/>"
+"<reg name=\""PT_REG_S10"\" bitsize=\"64\" type=\"int\"/>"
+"<reg name=\""PT_REG_S11"\" bitsize=\"64\" type=\"int\"/>"
+"<reg name=\""PT_REG_T3"\" bitsize=\"64\" type=\"int\"/>"
+"<reg name=\""PT_REG_T4"\" bitsize=\"64\" type=\"int\"/>"
+"<reg name=\""PT_REG_T5"\" bitsize=\"64\" type=\"int\"/>"
+"<reg name=\""PT_REG_T6"\" bitsize=\"64\" type=\"int\"/>"
+"<reg name=\""PT_REG_SEPC"\" bitsize=\"64\" type=\"code_ptr\"/>"
+"<reg name=\""PT_REG_SSTATUS"\" bitsize=\"64\" type=\"int\"/>"
+"<reg name=\""PT_REG_STVAL"\" bitsize=\"64\" type=\"int\"/>"
+"<reg name=\""PT_REG_SCAUSE"\" bitsize=\"64\" type=\"int\"/>"
+"</feature>";
diff --git a/arch/riscv/include/asm/kgdb.h b/arch/riscv/include/asm/kgdb.h
index e3b455932506..67078aec867f 100644
--- a/arch/riscv/include/asm/kgdb.h
+++ b/arch/riscv/include/asm/kgdb.h
@@ -7,7 +7,7 @@
 
 #define GDB_SIZEOF_REG sizeof(unsigned long)
 
-#define DBG_MAX_REG_NUM (33)
+#define DBG_MAX_REG_NUM (36)
 #define NUMREGBYTES ((DBG_MAX_REG_NUM) * GDB_SIZEOF_REG)
 #define CACHE_FLUSH_IS_SAFE     1
 #define BUFMAX                  2048
@@ -66,6 +66,9 @@ static inline void arch_kgdb_breakpoint(void)
 #define PT_REG_T5 "t5"
 #define PT_REG_T6 "t6"
 #define PT_REG_SEPC "pc"
+#define PT_REG_SSTATUS "sstatus"
+#define PT_REG_STVAL "stval"
+#define PT_REG_SCAUSE "scause"
 
 #endif
 #endif
diff --git a/arch/riscv/kernel/kgdb.c b/arch/riscv/kernel/kgdb.c
index 0a3fe5d672f1..01af9fb43150 100644
--- a/arch/riscv/kernel/kgdb.c
+++ b/arch/riscv/kernel/kgdb.c
@@ -7,6 +7,7 @@
 #include <linux/irqflags.h>
 #include <linux/string.h>
 #include <asm/cacheflush.h>
+#include <asm/gdb_xml.h>
 
 enum {
 	NOT_KGDB_BREAK = 0,
@@ -48,6 +49,9 @@ struct dbg_reg_def_t dbg_reg_def[DBG_MAX_REG_NUM] = {
 	{PT_REG_T5, GDB_SIZEOF_REG, offsetof(struct pt_regs, t5)},
 	{PT_REG_T6, GDB_SIZEOF_REG, offsetof(struct pt_regs, t6)},
 	{PT_REG_SEPC, GDB_SIZEOF_REG, offsetof(struct pt_regs, epc)},
+	{PT_REG_SSTATUS, GDB_SIZEOF_REG, offsetof(struct pt_regs, status)},
+	{PT_REG_STVAL, GDB_SIZEOF_REG, offsetof(struct pt_regs, badaddr)},
+	{PT_REG_SCAUSE, GDB_SIZEOF_REG, offsetof(struct pt_regs, cause)},
 };
 
 char *dbg_get_reg(int regno, void *mem, struct pt_regs *regs)
@@ -100,6 +104,29 @@ void kgdb_arch_set_pc(struct pt_regs *regs, unsigned long pc)
 	regs->epc = pc;
 }
 
+void kgdb_arch_cmd_query(char *remcom_in_buffer, char *remcom_out_buffer)
+{
+	switch (remcom_in_buffer[1]) {
+	case 'S':
+		if (!strncmp(remcom_in_buffer + 1,
+			     gdb_query_pkt, sizeof(gdb_query_pkt)))
+			strcpy(remcom_out_buffer, gdb_reply_feature);
+		break;
+	case 'X':
+		if (!strncmp(remcom_in_buffer + 1,
+			     gdb_xfer_read_target,
+			     sizeof(gdb_xfer_read_target)))
+			strcpy(remcom_out_buffer, gdb_target_desc);
+		else if (!strncmp(remcom_in_buffer + 1,
+				  gdb_xfer_read_cpuxml,
+				  sizeof(gdb_xfer_read_cpuxml)))
+			strcpy(remcom_out_buffer, gdb_cpuxml);
+		break;
+	default:
+		break;
+	}
+}
+
 static inline void kgdb_arch_update_addr(struct pt_regs *regs,
 					 char *remcom_in_buffer)
 {
-- 
2.7.4


