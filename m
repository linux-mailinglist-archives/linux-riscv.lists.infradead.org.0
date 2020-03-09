Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EEF2A17E524
	for <lists+linux-riscv@lfdr.de>; Mon,  9 Mar 2020 17:56:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DKBW8Eyy8NVtYJgHutHlswaK8NeRD9IAyJm/+12aBBY=; b=hlIsyFajasI0um
	fkh6YEiK/UBn+1ApHBcOVgUZwEUrsJblNkhIYgL8vwqODSKaEIHrl5qIdSnky75AjTNFp9p6tG0gb
	GDG3LKahoaErYimom9kKW5lB08VMeHm/5yycFKRvlt02jWrryynD9WMiYR/Sxar2r8uJoSs1WZzSC
	gimuVewhtOCp9x0s+IZIpeTw2jWY+2JqA3zR600YUeiHkV7QkxBJuTqkCnzRtaq/Ki7Ae6ePmaBpy
	KXCh8ucqSLRMNOJ+BokK/ldEdMyetzK/Htd5vSOIHih8wl378hsYBDY5sZgj7HzO6TBePMl1UxrrR
	6IdMNU4IQ5CW13O6EkAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBLhP-0002BF-GK; Mon, 09 Mar 2020 16:56:15 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBLhE-00020D-U6
 for linux-riscv@lists.infradead.org; Mon, 09 Mar 2020 16:56:06 +0000
Received: by mail-pg1-x544.google.com with SMTP id h8so4968257pgs.9
 for <linux-riscv@lists.infradead.org>; Mon, 09 Mar 2020 09:56:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=DKBW8Eyy8NVtYJgHutHlswaK8NeRD9IAyJm/+12aBBY=;
 b=REj3KT9KCk7pmUAzQenlRZ2UdxDM55l7D4o43L3PCGSAW2igoKTdhOdGSHha/5ZV0k
 PWnirmLcaBYdBy+ACtOq048Ky2eKNeoaSFswZk4gUbnNj2EpUH3DERiyVDErdUcN5bL4
 f7rGeupxtqCtvj2wmTCxeWyv/EgbYZAPatwSOsy69GjDytGquusfnE5lStT5PC2n+LB0
 +deFikDuHSYPI2k3e8zYswywhoFtwypPlee3loaubnkMY59DP6jyRznBAFNfCb2Z4d3x
 94ITFyNP6J5LaBX+WtURnXC0csngUwZMMW6VnLjRJqEnlG9otg0Wqxcm4esJikPDD970
 cB4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=DKBW8Eyy8NVtYJgHutHlswaK8NeRD9IAyJm/+12aBBY=;
 b=tDTK6ah+Th2Aa9YfCpG+OqCLl4uPJPdBml7zrwLXemUdnA3/PEMvcyczv7Ni5WrqnR
 LhNF6DBxnH3aHLlzYOK1rpPImeG+TIhJYiDk4qrGRenFesMvZSbCJiDLwTrgbrGKzK9V
 EL6xelA75NIT0qVWTZTRMolM2UAr6UoPQrx8WqgoJVr1DXmEVcmumyZFkC0VT+U54mM1
 j0logWMRbWamMmn+5gJja9K4hOKyrg0bwoqOBgapuL4IsX3EEMFmkWYSfuUOIfN8c4u6
 XCJ5fnSLu7KZkopIJLrpsxJ7jKdES0t1fXVbwzSuRelLe3XgROdfEfK+F7c/edz5yVQB
 zChg==
X-Gm-Message-State: ANhLgQ2d+5krwVYLF8pCxUlx4AG/EoFoMiDyw6IL1mQwKZbKZUd76UAB
 hvuykyg4fP3BNfbrdsIr3+6Nj7LsrZ8=
X-Google-Smtp-Source: ADFU+vuSU8d2YJr+UbuHwypGjfeETIP0OFkmwem67CPnKwSBb/4lKf72zr3M4nrZ00SVq1HLPFHWlQ==
X-Received: by 2002:a63:348b:: with SMTP id
 b133mr17387820pga.372.1583772964283; 
 Mon, 09 Mar 2020 09:56:04 -0700 (PDT)
Received: from hsinchu02.internal.sifive.com
 (220-132-236-182.HINET-IP.hinet.net. [220.132.236.182])
 by smtp.gmail.com with ESMTPSA id cm2sm104013pjb.23.2020.03.09.09.56.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Mar 2020 09:56:03 -0700 (PDT)
From: Zong Li <zong.li@sifive.com>
To: palmer@dabbelt.com, paul.walmsley@sifive.com, aou@eecs.berkeley.edu,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v3 7/9] riscv: add macro to get instruction length
Date: Tue, 10 Mar 2020 00:55:42 +0800
Message-Id: <8f933bed0478a1b4029447e1f8eef2ce0aefed4b.1583772574.git.zong.li@sifive.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1583772574.git.zong.li@sifive.com>
References: <cover.1583772574.git.zong.li@sifive.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_095605_012714_14BE9D7B 
X-CRM114-Status: UNSURE (   9.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
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

Extract the calculation of instruction length for common use.

Signed-off-by: Zong Li <zong.li@sifive.com>
---
 arch/riscv/include/asm/bug.h | 8 ++++++++
 arch/riscv/kernel/traps.c    | 3 ++-
 2 files changed, 10 insertions(+), 1 deletion(-)

diff --git a/arch/riscv/include/asm/bug.h b/arch/riscv/include/asm/bug.h
index 75604fec1b1b..d6f1ec08d97b 100644
--- a/arch/riscv/include/asm/bug.h
+++ b/arch/riscv/include/asm/bug.h
@@ -19,6 +19,14 @@
 #define __BUG_INSN_32	_UL(0x00100073) /* ebreak */
 #define __BUG_INSN_16	_UL(0x9002) /* c.ebreak */
 
+#define GET_INSN_LENGTH(insn)						\
+({									\
+	unsigned long __len;						\
+	__len = ((insn & __INSN_LENGTH_MASK) == __INSN_LENGTH_32) ?	\
+		4UL : 2UL;						\
+	__len;								\
+})
+
 typedef u32 bug_insn_t;
 
 #ifdef CONFIG_GENERIC_BUG_RELATIVE_POINTERS
diff --git a/arch/riscv/kernel/traps.c b/arch/riscv/kernel/traps.c
index ffb3d94bf0cc..a4d136355f78 100644
--- a/arch/riscv/kernel/traps.c
+++ b/arch/riscv/kernel/traps.c
@@ -118,7 +118,8 @@ static inline unsigned long get_break_insn_length(unsigned long pc)
 
 	if (probe_kernel_address((bug_insn_t *)pc, insn))
 		return 0;
-	return (((insn & __INSN_LENGTH_MASK) == __INSN_LENGTH_32) ? 4UL : 2UL);
+
+	return GET_INSN_LENGTH(insn);
 }
 
 asmlinkage __visible void do_trap_break(struct pt_regs *regs)
-- 
2.25.1


