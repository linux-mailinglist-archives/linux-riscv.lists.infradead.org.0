Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C52AD1D26F6
	for <lists+linux-riscv@lfdr.de>; Thu, 14 May 2020 08:03:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TPeI8RuAZy8pzAoL6foqpsMRTCi6RDeQb0PfZ8BZJ7U=; b=nc7K8UICqqsIbw
	InbVsHY1UffKy0j8XLVj/eFFhbD799dKSct4xpVPqayzTe5sNqT4dOPzFpv9G1Ctw+FNFIKQXUgo2
	9j365Q+wPBoHtRf3SBU1jLWFh5Q+wLVsHn+kgTPGBO4ONy93mIWSIP5GWU+6mcVWOHsGvkjWyR+cB
	ASGQKOqbtCt8fkC77QDRxMBHQnCSBYj6akva06H1+q5bAGq8uNY2fWTvcMju6U7NjSzFCPYFhhi7g
	DGZowZX9N41o2LIdAzrD2BNwViB4UA510sQhZIEY292pv8lU78JFBfIy5y7udTGb7SxroY52+obko
	W3KR03LmphFIq+8fM9Zg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZ6xb-0001la-Jg; Thu, 14 May 2020 06:03:11 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZ6xX-0001lB-ME
 for linux-riscv@lists.infradead.org; Thu, 14 May 2020 06:03:09 +0000
Received: by mail-pj1-x1042.google.com with SMTP id ms17so12013749pjb.0
 for <linux-riscv@lists.infradead.org>; Wed, 13 May 2020 23:03:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=TPeI8RuAZy8pzAoL6foqpsMRTCi6RDeQb0PfZ8BZJ7U=;
 b=KZ+QEA3bF0HYQ7RCcHSNf5tGen8Wqfu5/++/v5YjZ6caB3VB6B1Py20Hr2cfeDTv1o
 6ldf2Eo8zZj56RIyUzjNHIiOWTOqMQRqB8x/LSZsvMQjKc6xAfpag7SDAKP9SMJRL4VK
 VlnetIW4laPTdmw3XiNz68qsZXWLt4qPBYGYrcv+Zcwn/mtoJ6mKb3Nn/ZXVkbui8bPy
 NPOkinb4i1Jqz5n0oC2NAbWGfQ555kOt+AYOa1zRP0qFiKnBSUGF3R0N3in+apbBwv2W
 72XE/cBOw86Zz4GQuJOXdVpja2N26ut/rKp97xJVunWPCg+C11+rb/TG8glVIdOSsIan
 f7mQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=TPeI8RuAZy8pzAoL6foqpsMRTCi6RDeQb0PfZ8BZJ7U=;
 b=PIn4YcMf93ulqljl8cxCs8DHVIUPsoP86wgb/0cOjsTnzv1C4RbO6Dh73T3TFV8bP4
 IDAai9k54eeY8CFKXgBiopOQ7VSRsRlZgJvNZkIJyEd51OsMdVe1Ohd3AZ18x1EmFSfK
 ruO7I44sJR2xZdUHoK2hWdTgTtgGhW8HbEFTwbmCp67n5vH/UH9/CNFsO/s5oS9yrSpG
 puCtkmoj3B9hXLn4WKUYjWjQX00vBGyG1DSO4SmzuJLDMRX31KNJn5kxOVYlVmsaw+05
 tZ5irrs9YQE2fGcUjOXBkSQvrHbr+P4HX58/SrYij8ByzKTLbW1yF90QYqaM6xhtPRgS
 bAcQ==
X-Gm-Message-State: AGi0PuaAzFIvoKOJ83LUCliokKJYkd1XUgZASjzGEX3DKfn7duSOWNal
 dXRVSddwFogshruGXSE1dQ/L2A==
X-Google-Smtp-Source: APiQypKS0f2mmUEu7BEa8P6mPQkMckB+1UyKwXYrHoeDGxB2hTW6TJ6Z44jhprlTISi2/kMDG00Z5w==
X-Received: by 2002:a17:90b:30cb:: with SMTP id
 hi11mr38401195pjb.103.1589436186242; 
 Wed, 13 May 2020 23:03:06 -0700 (PDT)
Received: from hsinchu02.internal.sifive.com
 (114-34-229-221.HINET-IP.hinet.net. [114.34.229.221])
 by smtp.gmail.com with ESMTPSA id d10sm1202671pgo.10.2020.05.13.23.03.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 May 2020 23:03:05 -0700 (PDT)
From: Zong Li <zong.li@sifive.com>
To: paul.walmsley@sifive.com, palmer@dabbelt.com, akpm@linux-foundation.org,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] riscv: perf: fix build error for dependency issue
Date: Thu, 14 May 2020 14:02:43 +0800
Message-Id: <20200514060243.106976-1-zong.li@sifive.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_230307_755251_1AB4F4EF 
X-CRM114-Status: GOOD (  11.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1042 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Greentime Hu <greentime.hu@sifive.com>, Zong Li <zong.li@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

CONFIG_RISCV_BASE_PMU can be selected or unselected, but in fact,
CONFIG_RISCV_BASE_PMU must be always selected when selecting
CONFIG_PERF_EVENTS on current perf implementation, otherwise, it
would cause the build error when only selecting CONFIG_PERF_EVENTS.
The build case is applied randconfig which generated by kbuild test.

This patch removes the unnecessary configuration and implementations.
Eventually, the number of counters should be determinated at runtime,
such as DTB, so we don't need to re-build kernel for various platform
which has got different number of hpmcounters.

Signed-off-by: Zong Li <zong.li@sifive.com>
Signed-off-by: Greentime Hu <greentime.hu@sifive.com>
---
 arch/riscv/Kconfig                  | 13 -------------
 arch/riscv/include/asm/perf_event.h | 16 +++-------------
 2 files changed, 3 insertions(+), 26 deletions(-)

diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index 74f82cf4f781..7d5123576953 100644
--- a/arch/riscv/Kconfig
+++ b/arch/riscv/Kconfig
@@ -283,19 +283,6 @@ config RISCV_ISA_C
 
 	   If you don't know what to do here, say Y.
 
-menu "supported PMU type"
-	depends on PERF_EVENTS
-
-config RISCV_BASE_PMU
-	bool "Base Performance Monitoring Unit"
-	def_bool y
-	help
-	  A base PMU that serves as a reference implementation and has limited
-	  feature of perf.  It can run on any RISC-V machines so serves as the
-	  fallback, but this option can also be disable to reduce kernel size.
-
-endmenu
-
 config FPU
 	bool "FPU support"
 	default y
diff --git a/arch/riscv/include/asm/perf_event.h b/arch/riscv/include/asm/perf_event.h
index 0234048b12bc..8e5b1d81112c 100644
--- a/arch/riscv/include/asm/perf_event.h
+++ b/arch/riscv/include/asm/perf_event.h
@@ -16,15 +16,11 @@
 
 /*
  * The RISCV_MAX_COUNTERS parameter should be specified.
+ * Currently, we only support base PMU, so just make
+ * RISCV_MAX_COUNTERS be equal to RISCV_BASE_COUNTERS.
  */
 
-#ifdef CONFIG_RISCV_BASE_PMU
-#define RISCV_MAX_COUNTERS	2
-#endif
-
-#ifndef RISCV_MAX_COUNTERS
-#error "Please provide a valid RISCV_MAX_COUNTERS for the PMU."
-#endif
+#define RISCV_MAX_COUNTERS RISCV_BASE_COUNTERS
 
 /*
  * These are the indexes of bits in counteren register *minus* 1,
@@ -38,12 +34,6 @@
  */
 #define RISCV_PMU_CYCLE		0
 #define RISCV_PMU_INSTRET	1
-#define RISCV_PMU_MHPMCOUNTER3	2
-#define RISCV_PMU_MHPMCOUNTER4	3
-#define RISCV_PMU_MHPMCOUNTER5	4
-#define RISCV_PMU_MHPMCOUNTER6	5
-#define RISCV_PMU_MHPMCOUNTER7	6
-#define RISCV_PMU_MHPMCOUNTER8	7
 
 #define RISCV_OP_UNSUPP		(-EOPNOTSUPP)
 
-- 
2.26.2


