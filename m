Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7C7217E520
	for <lists+linux-riscv@lfdr.de>; Mon,  9 Mar 2020 17:56:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eOvGoomldlItgrTMe3b4RPvPtMpqmI4vOPIxgU5N5dw=; b=hQpwaHkO8zOIFp
	1xbLJUsHaVdr7GbboCu248UlxE307n8ZwcDavVepjdVGbtvbVg9okrMmmjoKoUK/3IB8Ie/vrm3sf
	SOPLpzeX280+2WWupQJnAooJFWxCqOpnksjLyToN1mRPRYvU+Mzjcb0/ueXCSU9nO8pN+qLgzt52h
	8t9c3hoDkKtsW6UjSEXv3sSvKjlGZP2uE/BQIgYRw6v9KN+tkiwN9LmqF5T5lKsiaX5yqYb9nLiKN
	E/a+7WIoux7WBgkiAvmWsI9hMK9zzz8uDU+gPcHRPDhJLj40+UgyK6DAhOBiQ7alpiAroTlOP0EoP
	FxnEYP4x8sw9/PEvgUuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBLhL-00022t-3K; Mon, 09 Mar 2020 16:56:11 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBLhB-0001v0-7Y
 for linux-riscv@lists.infradead.org; Mon, 09 Mar 2020 16:56:02 +0000
Received: by mail-pj1-x1042.google.com with SMTP id o21so145516pjs.0
 for <linux-riscv@lists.infradead.org>; Mon, 09 Mar 2020 09:56:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=eOvGoomldlItgrTMe3b4RPvPtMpqmI4vOPIxgU5N5dw=;
 b=Sx5t7i4qo7aZC3e6rBAaMwJOSvAe94WC6mvx/MQEjX+d/7LAbkmXgEXeV1meT/5Rgx
 WQYUaQkMp2UN5BeERTN/yq/g384+aAor82Dq3CQsz8s3fhSQIgfhNA4Mog8V77Psp6KN
 CE8ZLqsaaRqY+gH5n7M+rHmJ6CmUOak7gZ02LWQbYgTGSKbPkQ2hmDWSDeuHYUR+lvm9
 Dz5+6J7fnjLxSNK333c7nXq2/D0eJWn6+RIhnWK4bWLBb1ztsE459vR/CerehyiWRdS8
 BiNmV3bfU/7SPip+wqhSyQR3OZckv4l7CqoOwRNyqHSIHlRL5P0s8GQtv38mgDU68BAn
 MFQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=eOvGoomldlItgrTMe3b4RPvPtMpqmI4vOPIxgU5N5dw=;
 b=I2B3AJ1ktOqqmQebyi0BhocDWRFLzEv0F9o+m1rpUK3ge/GPlbAjxxACyZJ8d4rBV8
 nahSzTh05iyFiH+9xvz1cHxuTyEKvQRXPeoUPLf8xmGXEOHCBh2r3swWSrG1WSa/WfSA
 PD9FXJgtINx+vKkC2UFpqUo6bYMy/+yKN3q6ekzJJfwP3957AK+/E45+BCGPP7zr4/Us
 RLVXeRe6QoRcpEonpk6+gfcbnTnf8hamLF0XHlZkQ2TFW0rDDJon7Ngfgf4vaf/jfouu
 AgHdBR5TZx+jHWsUry2BuzyRj3lY8sQN4xBFFsZPpt800rwogWiJI/J/owmI+zoMG9+P
 s/Qg==
X-Gm-Message-State: ANhLgQ2skDeIagpOAbqLD0WzmKp8RhcfdA+TkUZzNvbHeqnPoV7ZnkpV
 OOQ75kb1wwrHtQktkm3u+3sMcQ==
X-Google-Smtp-Source: ADFU+vs7rseCVIQDvOgK+WTfSYKco3QVTCiqheNNtMu77pT1JjgjykTot1HoW3biIyEloUH6n7nrtg==
X-Received: by 2002:a17:902:b485:: with SMTP id
 y5mr15847694plr.4.1583772960751; 
 Mon, 09 Mar 2020 09:56:00 -0700 (PDT)
Received: from hsinchu02.internal.sifive.com
 (220-132-236-182.HINET-IP.hinet.net. [220.132.236.182])
 by smtp.gmail.com with ESMTPSA id cm2sm104013pjb.23.2020.03.09.09.55.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Mar 2020 09:56:00 -0700 (PDT)
From: Zong Li <zong.li@sifive.com>
To: palmer@dabbelt.com, paul.walmsley@sifive.com, aou@eecs.berkeley.edu,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v3 5/9] riscv: add alignment for text, rodata and data sections
Date: Tue, 10 Mar 2020 00:55:40 +0800
Message-Id: <0e60e503eefbebeb9c9a24a125feef876a80c148.1583772574.git.zong.li@sifive.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1583772574.git.zong.li@sifive.com>
References: <cover.1583772574.git.zong.li@sifive.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_095601_280158_A7B65EB9 
X-CRM114-Status: GOOD (  12.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1042 listed in]
 [list.dnswl.org]
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
Cc: Zong Li <zong.li@sifive.com>
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
2.25.1


