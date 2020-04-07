Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E4941A0F97
	for <lists+linux-riscv@lfdr.de>; Tue,  7 Apr 2020 16:47:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=geDMvpdyp4eREUjGenxPiMAgszPzsf8hdgTrRUcyDVI=; b=W9T/Egq4kYJZh9
	diSsjHdwzOQzSYrnWYgGGfBEkIjBiQVzkkQxEYymrggo4YDKUdmqVrmfmanxOybp2i7h09auTkQ1y
	ya+Yv6rIfQaY0tmLv8PgQ3Wh8+ccIGjJrVsUPqx8QGsd2mKO+Y7J/vchYh2EftForqDndeOC/M0+8
	jdq6NJoHD6DbsbQRf8O8Sx96mBZQktzC3+dEpcvF4dTmeZzYsWRpdxjUzTso440rbbS7NMW/ONoVt
	UD9e+IirME/XeL9vxK//uQGKrRhl+KJcv90Dx7rmOyjfnAmXv9yYtaEroOwOWhID76jwH09aNcBFL
	rmYeftUJsl+oB6UZIq4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLpVt-0006uO-OC; Tue, 07 Apr 2020 14:47:41 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLpVT-0006Qh-S1
 for linux-riscv@lists.infradead.org; Tue, 07 Apr 2020 14:47:17 +0000
Received: by mail-pg1-x544.google.com with SMTP id r4so1835678pgg.4
 for <linux-riscv@lists.infradead.org>; Tue, 07 Apr 2020 07:47:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=geDMvpdyp4eREUjGenxPiMAgszPzsf8hdgTrRUcyDVI=;
 b=JBxizfUVQ4VwCje90RdukKZBh/ywXEy+VAtWwgau09WHsbrygimeUgLaDGNihbFdPZ
 eDybrac2/Ma3vtwVtZ+dV10ejldg12V79mPPn+6PEcb+pYiamkJfHvdVCc3pQywEgffS
 61nByA/bmGC+KvIQ961VXAVS+jeOKfdvsn2YvlzRhS4+b9g+s7hBJOhV9Zurmg6tfc88
 hRFeb/pdtnq4jQdvIW1maqRVT/GoZMh6q3OCXYlUAxtVz2Sa7KW7AhM451d55reG1kbv
 bdvnAWUvHjr7PiJ0CRL0hEJnBVdf4VVNAcT2NTV9xOdaANofRCoMNuG4j0Ia+W6wAhRU
 xUww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=geDMvpdyp4eREUjGenxPiMAgszPzsf8hdgTrRUcyDVI=;
 b=P6+aA9ikySiuI0+rjfQmKUvmCC0dhMoyTrChmDY6b/BGLPcHNcLqKTVLN9TqR1xB/+
 QTMiU44ZU2Oa/ivYJyBKHEH6Pef0sy2idCVGIQDoxkMoSCuhDIdTAslkWGT7Eqwu7t8f
 9ljWubJaOzidHD1goJs2D0rt22A8gNZ+OXJOfpJMI0d6L1/FkdywO3lPDU1wtXTEz7cd
 84oum21Of3jiAiu8EtkT6i4pQ37TncELLu9DJoNmobH7R3CBhXqx3xdrZr+F14fPzmio
 z1FSw7nHD6DKBp/9ib5d0bcwc9ZrNrdDhy8/oG3N7DLzSgY+Qh4sEIF7wIjpHfTKGD6a
 P1ig==
X-Gm-Message-State: AGi0PuYjy7iaGLYcvPuIq3WqCtmt7RcmScmED24D2LpW6XkOhkENW3cE
 6TnyIE7SJxjQbB0k9m9z3vPbVA==
X-Google-Smtp-Source: APiQypJSC+TFUHwlK7PTtzsWm3RbNjRWth5EDoVm2mJoigQnMWAkG6PwXQSKKLPQx1AAHMmzFA/bEg==
X-Received: by 2002:aa7:9a08:: with SMTP id w8mr2724871pfj.317.1586270835251; 
 Tue, 07 Apr 2020 07:47:15 -0700 (PDT)
Received: from hsinchu02.internal.sifive.com
 (220-132-236-182.HINET-IP.hinet.net. [220.132.236.182])
 by smtp.gmail.com with ESMTPSA id y15sm14190093pfc.206.2020.04.07.07.47.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Apr 2020 07:47:14 -0700 (PDT)
From: Zong Li <zong.li@sifive.com>
To: palmer@dabbelt.com, paul.walmsley@sifive.com, aou@eecs.berkeley.edu,
 mhiramat@kernel.org, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v4 8/9] riscv: add alignment for text, rodata and data sections
Date: Tue,  7 Apr 2020 22:46:53 +0800
Message-Id: <24d705447a3033ee94c3dc9687b97870e2521090.1586265122.git.zong.li@sifive.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <cover.1586265122.git.zong.li@sifive.com>
References: <cover.1586265122.git.zong.li@sifive.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_074715_916028_8AA88D56 
X-CRM114-Status: GOOD (  11.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Palmer Dabbelt <palmerdabbelt@google.com>, Zong Li <zong.li@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

The kernel mapping will tried to optimize its mapping by using bigger
size. In rv64, it tries to use PMD_SIZE, and tryies to use PGDIR_SIZE in
rv32. To ensure that the start address of these sections could fit the
mapping entry size, make them align to the biggest alignment.

Define a macro SECTION_ALIGN because the HPAGE_SIZE or PMD_SIZE, etc.,
are invisible in linker script.

This patch is prepared for STRICT_KERNEL_RWX support.

Signed-off-by: Zong Li <zong.li@sifive.com>
Reviewed-by: Palmer Dabbelt <palmerdabbelt@google.com>
---
 arch/riscv/include/asm/set_memory.h | 13 +++++++++++++
 arch/riscv/kernel/vmlinux.lds.S     |  5 ++++-
 2 files changed, 17 insertions(+), 1 deletion(-)

diff --git a/arch/riscv/include/asm/set_memory.h b/arch/riscv/include/asm/set_memory.h
index 620d81c372d9..4c5bae7ca01c 100644
--- a/arch/riscv/include/asm/set_memory.h
+++ b/arch/riscv/include/asm/set_memory.h
@@ -6,6 +6,7 @@
 #ifndef _ASM_RISCV_SET_MEMORY_H
 #define _ASM_RISCV_SET_MEMORY_H
 
+#ifndef __ASSEMBLY__
 /*
  * Functions to change memory attributes.
  */
@@ -24,4 +25,16 @@ static inline int set_memory_nx(unsigned long addr, int numpages) { return 0; }
 int set_direct_map_invalid_noflush(struct page *page);
 int set_direct_map_default_noflush(struct page *page);
 
+#endif /* __ASSEMBLY__ */
+
+#ifdef CONFIG_ARCH_HAS_STRICT_KERNEL_RWX
+#ifdef CONFIG_64BIT
+#define SECTION_ALIGN (1 << 21)
+#else
+#define SECTION_ALIGN (1 << 22)
+#endif
+#else /* !CONFIG_ARCH_HAS_STRICT_KERNEL_RWX */
+#define SECTION_ALIGN L1_CACHE_BYTES
+#endif /* CONFIG_ARCH_HAS_STRICT_KERNEL_RWX */
+
 #endif /* _ASM_RISCV_SET_MEMORY_H */
diff --git a/arch/riscv/kernel/vmlinux.lds.S b/arch/riscv/kernel/vmlinux.lds.S
index 02e948b620af..ef87deea0350 100644
--- a/arch/riscv/kernel/vmlinux.lds.S
+++ b/arch/riscv/kernel/vmlinux.lds.S
@@ -9,6 +9,7 @@
 #include <asm/page.h>
 #include <asm/cache.h>
 #include <asm/thread_info.h>
+#include <asm/set_memory.h>
 
 OUTPUT_ARCH(riscv)
 ENTRY(_start)
@@ -36,6 +37,7 @@ SECTIONS
 	PERCPU_SECTION(L1_CACHE_BYTES)
 	__init_end = .;
 
+	. = ALIGN(SECTION_ALIGN);
 	.text : {
 		_text = .;
 		_stext = .;
@@ -53,13 +55,14 @@ SECTIONS
 
 	/* Start of data section */
 	_sdata = .;
-	RO_DATA(L1_CACHE_BYTES)
+	RO_DATA(SECTION_ALIGN)
 	.srodata : {
 		*(.srodata*)
 	}
 
 	EXCEPTION_TABLE(0x10)
 
+	. = ALIGN(SECTION_ALIGN);
 	_data = .;
 
 	RW_DATA(L1_CACHE_BYTES, PAGE_SIZE, THREAD_SIZE)
-- 
2.26.0


