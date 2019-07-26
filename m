Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A933B7727B
	for <lists+linux-riscv@lfdr.de>; Fri, 26 Jul 2019 22:01:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1FjCxyNsLJDTORNbA2urtk6psDblmxs5RLCKSkKX49g=; b=iz0GA/IvriQ7kO
	F4GEr7DY0QyXb5JehD9juwNodNFc0ZKllw6nxRmQ1uAIXCYGTHrY2ugGmxDRfmCqhNLE5AIHxW450
	iPLUUOyWPH/+LB02Y9cxCpOC2zYdpdHEtGTg3vAmH6Isw4cNOv9PFfi5EXAzH/efJuMt+D6mfVBed
	Hi6pZeJtnCRSJeUfG5rhRFdaH7ORD05t11QCItsc1MEJh3T/DA2Bck9TJMUKmjZ0EZomGd+0tJnrE
	DnQwZmn8cBW/rJhInKi+mcx1W32abkUwXeBmI68Yfhh1t8vD1gEv41bSxO7mtF1XGDBr7JG9JJFW4
	46s1b3183V/n/Qayrefg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hr6Od-00075T-GE; Fri, 26 Jul 2019 20:00:55 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hr6Oa-00074l-3r
 for linux-riscv@lists.infradead.org; Fri, 26 Jul 2019 20:00:53 +0000
Received: by mail-io1-xd44.google.com with SMTP id q22so107202181iog.4
 for <linux-riscv@lists.infradead.org>; Fri, 26 Jul 2019 13:00:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:message-id:user-agent:mime-version;
 bh=sVh8r6qxozU0X539bGpCLYaNgAX3Xb97PwurXbHz33U=;
 b=ZUrDcHay4oGNKA9iwZucPi17ifpM3TRnKUVdM9LgifBV9gptxZmhT0itpa6kwHdnsT
 KkdpicK7OnEtsf0dcJD0D72zl/5tAOgF3RzBdqAz2gHJ54OxmAI+Z6J4NKFe7YUe9PjW
 SLIECT3F9mbczwi8uGQ1Tp3jYMqXHrEzmKoKimf4SV//tQ6uE2xBVtebJX7xDfqCwXFw
 hwkwo9JG6alyS34AVzOWlef16JWgcL1M542Odh9q+wSM0X3lb24iQw77Wu3xg4/Ddrax
 BiHLcrJ8fOinJ8DdVsyEL0uu2dkhqnjxXGF+LIIJtMTlhDh9Q26ebPyjTr41PGiOaTIO
 om3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:user-agent
 :mime-version;
 bh=sVh8r6qxozU0X539bGpCLYaNgAX3Xb97PwurXbHz33U=;
 b=bfI9ehBvESLaDHajJou467LaKz8VWTG9+enY3MG2IxrJImVlyY9R5OSS7SrR2ZB00R
 oO8bnCQgcKqdxgl7qhw9OJdiU+tm+zMZ8LBaNSBSQDwteWZr/KNJu9goZ+dTymLTdYRk
 wX93BbWb+atPPkyrXDt+sDfGroFr3gKMgLfKQN0Sx5VOl5s0VoqQrgMq+azMutjs0fBo
 zMpWThnfbNLTPGYMi8uXC6UyWKle9lqQGU5YUVsqXW3SYxQtbL4cRPcrzMeUjlc90d53
 wJbT96mb/epK/EXlhxzNsS/vkiFpxsMJHiuSdrKqXqqxpbasAPFpSSMF/GaQWWMtaDWN
 exeg==
X-Gm-Message-State: APjAAAXRf/XAvywxx56+l/SWbnwVVmcZpYQbD6vRvzf8N0cdO9yJbSaq
 QPULMOyHhjAk3qZEF8KfHYZsE2I95WE=
X-Google-Smtp-Source: APXvYqxqbTRydPk/GCxaDMMoixs5NtZCXarNxQefJxhOMoH3Vo4aDAI15K3eWrugoCEa6BR6Uv+ETQ==
X-Received: by 2002:a02:1c0a:: with SMTP id c10mr102301637jac.69.1564171250993; 
 Fri, 26 Jul 2019 13:00:50 -0700 (PDT)
Received: from localhost (67-0-24-96.albq.qwest.net. [67.0.24.96])
 by smtp.gmail.com with ESMTPSA id x22sm39848516iob.84.2019.07.26.13.00.50
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 26 Jul 2019 13:00:50 -0700 (PDT)
Date: Fri, 26 Jul 2019 13:00:49 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: linux-riscv@lists.infradead.org
Subject: [PATCH] riscv: kbuild: add virtual memory system selection
Message-ID: <alpine.DEB.2.21.9999.1907261259420.26670@viisi.sifive.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_130052_165261_E654E441 
X-CRM114-Status: UNSURE (   8.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-kernel@vger.kernel.org, Alexandre Ghiti <alex@ghiti.fr>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org


The RISC-V specifications currently define three virtual memory
translation systems: Sv32, Sv39, and Sv48.  Sv32 is currently specific
to 32-bit systems; Sv39 and Sv48 are currently specific to 64-bit
systems.  The current kernel only supports Sv32 and Sv39, but we'd
like to start preparing for Sv48.  As an initial step, allow the
virtual memory translation system to be selected via kbuild, and stop
the build if an option is selected that the kernel doen't currently
support.

This patch currently has no functional impact.

Signed-off-by: Paul Walmsley <paul.walmsley@sifive.com>
Cc: Alexandre Ghiti <alex@ghiti.fr>
---
 arch/riscv/Kconfig                  | 43 +++++++++++++++++++++++++++++
 arch/riscv/include/asm/pgtable-32.h |  4 +++
 arch/riscv/include/asm/pgtable-64.h |  4 +++
 3 files changed, 51 insertions(+)

diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index 59a4727ecd6c..8ef64fe2c2b3 100644
--- a/arch/riscv/Kconfig
+++ b/arch/riscv/Kconfig
@@ -155,6 +155,49 @@ config MODULE_SECTIONS
 	bool
 	select HAVE_MOD_ARCH_SPECIFIC
 
+choice
+	prompt "Virtual Memory System"
+	default RISCV_VM_SV32 if 32BIT
+	default RISCV_VM_SV39 if 64BIT
+	help
+	  The RISC-V Instruction Set Manual Volume II: Privileged
+	  Architecture defines several different "virtual memory
+	  systems" which specify virtual and physical address formats
+	  and the structure of page table entries.  This determines
+	  the amount of virtual address space present and how it is
+	  translated into physical addresses.
+
+	config RISCV_VM_SV32
+	        depends on 32BIT
+		bool "RISC-V Sv32"
+		help
+		  The Sv32 virtual memory system is a page-based
+		  address and page table format for RV32 systems.
+		  It specifies a translation between 32-bit virtual
+		  addresses and 33-bit physical addresses, via a
+		  two-stage page table layout.
+	config RISCV_VM_SV39
+		depends on 64BIT
+		bool "RISC-V Sv39"
+		help
+		  The Sv39 virtual memory system is a page-based
+		  address and page table format for RV64 systems.
+		  It specifies a translation between 39-bit virtual
+		  addresses and 40-bit physical addresses, via a
+		  three-stage page table layout.
+	config RISCV_VM_SV48
+		depends on 64BIT
+		bool "RISC-V Sv48"
+		help
+		  The Sv48 virtual memory system is a page-based
+		  address and page table format for RV64 systems.
+		  It specifies a translation between 48-bit virtual
+		  addresses and 49-bit physical addresses, via a
+		  four-stage page table layout.
+
+endchoice
+
+
 choice
 	prompt "Maximum Physical Memory"
 	default MAXPHYSMEM_2GB if 32BIT
diff --git a/arch/riscv/include/asm/pgtable-32.h b/arch/riscv/include/asm/pgtable-32.h
index b0ab66e5fdb1..86d41a04735b 100644
--- a/arch/riscv/include/asm/pgtable-32.h
+++ b/arch/riscv/include/asm/pgtable-32.h
@@ -6,6 +6,10 @@
 #ifndef _ASM_RISCV_PGTABLE_32_H
 #define _ASM_RISCV_PGTABLE_32_H
 
+#if !defined(CONFIG_RISCV_VM_SV32)
+#error Only Sv32 supported
+#endif
+
 #include <asm-generic/pgtable-nopmd.h>
 #include <linux/const.h>
 
diff --git a/arch/riscv/include/asm/pgtable-64.h b/arch/riscv/include/asm/pgtable-64.h
index 74630989006d..86935595115d 100644
--- a/arch/riscv/include/asm/pgtable-64.h
+++ b/arch/riscv/include/asm/pgtable-64.h
@@ -6,6 +6,10 @@
 #ifndef _ASM_RISCV_PGTABLE_64_H
 #define _ASM_RISCV_PGTABLE_64_H
 
+#if !defined(CONFIG_RISCV_VM_SV39)
+#error Only Sv39 supported for now
+#endif
+
 #include <linux/const.h>
 
 #define PGDIR_SHIFT     30
-- 
2.22.0


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
