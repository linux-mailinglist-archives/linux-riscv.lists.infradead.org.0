Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E5B8AE6D6E
	for <lists+linux-riscv@lfdr.de>; Mon, 28 Oct 2019 08:43:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=RBWiM0CPfnN8oAdToCseeTEGoj64LoodHbMNvu8FssM=; b=A7A
	9d/bdjbQ2c1l8/Hj8mDHV5sqsGn6lGnwvWbJduJKWEct8xal0qo3lMUlh1cPJQ5IuP8C9qgcGDlZF
	dH0a1x0Vpifghx28d9NJSw1fIFLvZc8DzRc/pX7WnVcpZb0gNPI3q6FlZwbiDABZ9vL2wBbN0bRhv
	n0lBON0RQGiPMx9WNadVixleCSU6QJbXRO42dw4SynDwpwuvI0g5VuuMSpa1IB+uP9DD5QJUTguuY
	FyK17P2HGd5NOpYz8ICrVQRMPnSQxEjAKtHyWrfY2+Dt9p9XnpP1Qh7xhO7pHuLPVQoN/SKa78Gz/
	vQcI8MICBFhSLHrRe67MIOwkcrv47Pw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOzfz-0008DA-Dj; Mon, 28 Oct 2019 07:42:55 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOzfv-0008Cd-EB
 for linux-riscv@lists.infradead.org; Mon, 28 Oct 2019 07:42:53 +0000
Received: by mail-pf1-x443.google.com with SMTP id 3so6315397pfb.10
 for <linux-riscv@lists.infradead.org>; Mon, 28 Oct 2019 00:42:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=L4m60UOD+ooGOVzctozeQvam6HXu3Gt5g4bBAc5A+wE=;
 b=WEsWUmh7RN2p53cp84XX+iXl40s5+H5WrC5nanWxvlVs75JvyxSVVyF1yw6mSwHh+R
 3KunRF7La4krx4TRMxem5RrWnkXOn5UmfJqUtxbM7MQaxRKAubmfoI4oByLtmlNSTSE+
 3g1WA2yFNZcqbWTeHaxcQHgetLtdfubWf8GI+oLXvcCTkL+l1PrtLah1ynxkDgvBC+3L
 Z+KC91uJmDU0ThWaP6IZfXZfUL4wMr5BPtiXjTWNIGWbCs7ZWXq17Gcd8lf4MndaQ8xf
 b//WFeVrcDeZVhsXxPhtTW6OsJpc7NexmCOcI3oaPIYrDgjQ637zGpX43VFDDI53DHwc
 rSWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=L4m60UOD+ooGOVzctozeQvam6HXu3Gt5g4bBAc5A+wE=;
 b=Gf7qwDFs2W24HkuGG7JlHbf57wYkkda+2mquMY+400UcirqeL2NoZ1GIwakpwcJubw
 0UMbosDerxe9C0az5J3yUmFuEQ5wAkwGFmr+wKwbYJzP1+Im0PtFUzwszGhJoghmmsKq
 NPBCtqSw+lKtRTatvnRJIPryhafh97PqB/4HMMV4LqR6mrYK5kAB3uIWYBHJEVIALJc6
 8pzeAhAPxBFXwKKBXtWxmEMB4kn4hBnxnmGlCxQwyGjMZqVJXz+d+m04vYsxLI33wTzq
 EQViheE5AGwfrLvD7/zX5jFGm5IiJ03BAPcsYTFDsoWnJkE1yURWcd9bmb+jxiKrTuQk
 PY6Q==
X-Gm-Message-State: APjAAAUEdrpsLoKPsjKWFZpvgoF4q68NuFy3hsdLw/hELYzBsBnUeYF7
 oYT7Yg88D3R5elFX5H2+N67XVA==
X-Google-Smtp-Source: APXvYqzzmFlEpOlkVN8RBFt3koIXJWDhJrSQuPVArdzUWJFVC7WwFbrY2slC+AKTiN6J4mfUaU7/Aw==
X-Received: by 2002:aa7:9ad0:: with SMTP id x16mr19245786pfp.51.1572248570303; 
 Mon, 28 Oct 2019 00:42:50 -0700 (PDT)
Received: from gamma07.internal.sifive.com ([64.62.193.194])
 by smtp.gmail.com with ESMTPSA id b4sm8350683pju.16.2019.10.28.00.42.49
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 28 Oct 2019 00:42:49 -0700 (PDT)
From: Zong Li <zong.li@sifive.com>
To: linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org,
 paul.walmsley@sifive.com, palmer@sifive.com
Subject: [PATCH] riscv: clean up the macro format in each header file
Date: Mon, 28 Oct 2019 00:42:47 -0700
Message-Id: <1572248567-22504-1-git-send-email-zong.li@sifive.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_004251_539239_A03B89A0 
X-CRM114-Status: GOOD (  13.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

There are many different formats in each header now, such as
_ASM_XXX_H, __ASM_XXX_H, _ASM_RISCV_XXX_H, RISCV_XXX_H, etc., This patch
tries to unify the format by using _ASM_RISCV_XXX_H, because the most
header use it now. This patch also adds the conditional to the headers
if they lost it.

Signed-off-by: Zong Li <zong.li@sifive.com>
---
 arch/riscv/include/asm/asm-prototypes.h | 1 +
 arch/riscv/include/asm/current.h        | 6 +++---
 arch/riscv/include/asm/ftrace.h         | 5 +++++
 arch/riscv/include/asm/futex.h          | 6 +++---
 arch/riscv/include/asm/hwcap.h          | 7 ++++---
 arch/riscv/include/asm/image.h          | 6 +++---
 arch/riscv/include/asm/kprobes.h        | 6 +++---
 arch/riscv/include/asm/mmiowb.h         | 2 +-
 arch/riscv/include/asm/pci.h            | 6 +++---
 arch/riscv/include/asm/sbi.h            | 2 +-
 arch/riscv/include/asm/sparsemem.h      | 6 +++---
 arch/riscv/include/asm/spinlock_types.h | 2 +-
 arch/riscv/include/uapi/asm/elf.h       | 6 +++---
 arch/riscv/include/uapi/asm/hwcap.h     | 6 +++---
 arch/riscv/include/uapi/asm/ucontext.h  | 6 +++---
 15 files changed, 40 insertions(+), 33 deletions(-)

diff --git a/arch/riscv/include/asm/asm-prototypes.h b/arch/riscv/include/asm/asm-prototypes.h
index c9fecd12..dd62b69 100644
--- a/arch/riscv/include/asm/asm-prototypes.h
+++ b/arch/riscv/include/asm/asm-prototypes.h
@@ -1,5 +1,6 @@
 /* SPDX-License-Identifier: GPL-2.0 */
 #ifndef _ASM_RISCV_PROTOTYPES_H
+#define _ASM_RISCV_PROTOTYPES_H
 
 #include <linux/ftrace.h>
 #include <asm-generic/asm-prototypes.h>
diff --git a/arch/riscv/include/asm/current.h b/arch/riscv/include/asm/current.h
index 44dcf7f..dd973ef 100644
--- a/arch/riscv/include/asm/current.h
+++ b/arch/riscv/include/asm/current.h
@@ -7,8 +7,8 @@
  */
 
 
-#ifndef __ASM_CURRENT_H
-#define __ASM_CURRENT_H
+#ifndef _ASM_RISCV_CURRENT_H
+#define _ASM_RISCV_CURRENT_H
 
 #include <linux/bug.h>
 #include <linux/compiler.h>
@@ -34,4 +34,4 @@ static __always_inline struct task_struct *get_current(void)
 
 #endif /* __ASSEMBLY__ */
 
-#endif /* __ASM_CURRENT_H */
+#endif /* _ASM_RISCV_CURRENT_H */
diff --git a/arch/riscv/include/asm/ftrace.h b/arch/riscv/include/asm/ftrace.h
index c6dcc52..ace8a6e 100644
--- a/arch/riscv/include/asm/ftrace.h
+++ b/arch/riscv/include/asm/ftrace.h
@@ -1,6 +1,9 @@
 /* SPDX-License-Identifier: GPL-2.0 */
 /* Copyright (C) 2017 Andes Technology Corporation */
 
+#ifndef _ASM_RISCV_FTRACE_H
+#define _ASM_RISCV_FTRACE_H
+
 /*
  * The graph frame test is not possible if CONFIG_FRAME_POINTER is not enabled.
  * Check arch/riscv/kernel/mcount.S for detail.
@@ -64,3 +67,5 @@ do {									\
  */
 #define MCOUNT_INSN_SIZE 8
 #endif
+
+#endif /* _ASM_RISCV_FTRACE_H */
diff --git a/arch/riscv/include/asm/futex.h b/arch/riscv/include/asm/futex.h
index 4ad6409..2073105 100644
--- a/arch/riscv/include/asm/futex.h
+++ b/arch/riscv/include/asm/futex.h
@@ -4,8 +4,8 @@
  * Copyright (c) 2018  Jim Wilson (jimw@sifive.com)
  */
 
-#ifndef _ASM_FUTEX_H
-#define _ASM_FUTEX_H
+#ifndef _ASM_RISCV_FUTEX_H
+#define _ASM_RISCV_FUTEX_H
 
 #include <linux/futex.h>
 #include <linux/uaccess.h>
@@ -112,4 +112,4 @@ futex_atomic_cmpxchg_inatomic(u32 *uval, u32 __user *uaddr,
 	return ret;
 }
 
-#endif /* _ASM_FUTEX_H */
+#endif /* _ASM_RISCV_FUTEX_H */
diff --git a/arch/riscv/include/asm/hwcap.h b/arch/riscv/include/asm/hwcap.h
index 7ecb7c6..1bb0cd0 100644
--- a/arch/riscv/include/asm/hwcap.h
+++ b/arch/riscv/include/asm/hwcap.h
@@ -5,8 +5,8 @@
  * Copyright (C) 2012 ARM Ltd.
  * Copyright (C) 2017 SiFive
  */
-#ifndef __ASM_HWCAP_H
-#define __ASM_HWCAP_H
+#ifndef _ASM_RISCV_HWCAP_H
+#define _ASM_RISCV_HWCAP_H
 
 #include <uapi/asm/hwcap.h>
 
@@ -23,4 +23,5 @@ enum {
 
 extern unsigned long elf_hwcap;
 #endif
-#endif
+
+#endif /* _ASM_RISCV_HWCAP_H */
diff --git a/arch/riscv/include/asm/image.h b/arch/riscv/include/asm/image.h
index 344db52..7b0f92b 100644
--- a/arch/riscv/include/asm/image.h
+++ b/arch/riscv/include/asm/image.h
@@ -1,7 +1,7 @@
 /* SPDX-License-Identifier: GPL-2.0 */
 
-#ifndef __ASM_IMAGE_H
-#define __ASM_IMAGE_H
+#ifndef _ASM_RISCV_IMAGE_H
+#define _ASM_RISCV_IMAGE_H
 
 #define RISCV_IMAGE_MAGIC	"RISCV\0\0\0"
 #define RISCV_IMAGE_MAGIC2	"RSC\x05"
@@ -62,4 +62,4 @@ struct riscv_image_header {
 	u32 res4;
 };
 #endif /* __ASSEMBLY__ */
-#endif /* __ASM_IMAGE_H */
+#endif /* _ASM_RISCV_IMAGE_H */
diff --git a/arch/riscv/include/asm/kprobes.h b/arch/riscv/include/asm/kprobes.h
index 96e30ef..56a98ea3 100644
--- a/arch/riscv/include/asm/kprobes.h
+++ b/arch/riscv/include/asm/kprobes.h
@@ -6,9 +6,9 @@
  * Copyright (C) 2017 SiFive
  */
 
-#ifndef _RISCV_KPROBES_H
-#define _RISCV_KPROBES_H
+#ifndef _ASM_RISCV_KPROBES_H
+#define _ASM_RISCV_KPROBES_H
 
 #include <asm-generic/kprobes.h>
 
-#endif /* _RISCV_KPROBES_H */
+#endif /* _ASM_RISCV_KPROBES_H */
diff --git a/arch/riscv/include/asm/mmiowb.h b/arch/riscv/include/asm/mmiowb.h
index 5d7e3a2..bb4091f 100644
--- a/arch/riscv/include/asm/mmiowb.h
+++ b/arch/riscv/include/asm/mmiowb.h
@@ -11,4 +11,4 @@
 
 #include <asm-generic/mmiowb.h>
 
-#endif	/* ASM_RISCV_MMIOWB_H */
+#endif	/* _ASM_RISCV_MMIOWB_H */
diff --git a/arch/riscv/include/asm/pci.h b/arch/riscv/include/asm/pci.h
index 5ac8daa..1c473a1 100644
--- a/arch/riscv/include/asm/pci.h
+++ b/arch/riscv/include/asm/pci.h
@@ -3,8 +3,8 @@
  * Copyright (C) 2016 SiFive
  */
 
-#ifndef __ASM_RISCV_PCI_H
-#define __ASM_RISCV_PCI_H
+#ifndef _ASM_RISCV_PCI_H
+#define _ASM_RISCV_PCI_H
 
 #include <linux/types.h>
 #include <linux/slab.h>
@@ -34,4 +34,4 @@ static inline int pci_proc_domain(struct pci_bus *bus)
 }
 #endif  /* CONFIG_PCI */
 
-#endif  /* __ASM_PCI_H */
+#endif  /* _ASM_RISCV_PCI_H */
diff --git a/arch/riscv/include/asm/sbi.h b/arch/riscv/include/asm/sbi.h
index 21134b3..b0d6fda 100644
--- a/arch/riscv/include/asm/sbi.h
+++ b/arch/riscv/include/asm/sbi.h
@@ -94,4 +94,4 @@ static inline void sbi_remote_sfence_vma_asid(const unsigned long *hart_mask,
 	SBI_CALL_4(SBI_REMOTE_SFENCE_VMA_ASID, hart_mask, start, size, asid);
 }
 
-#endif
+#endif /* _ASM_RISCV_SBI_H */
diff --git a/arch/riscv/include/asm/sparsemem.h b/arch/riscv/include/asm/sparsemem.h
index b58ba2d9..45a7018 100644
--- a/arch/riscv/include/asm/sparsemem.h
+++ b/arch/riscv/include/asm/sparsemem.h
@@ -1,11 +1,11 @@
 /* SPDX-License-Identifier: GPL-2.0 */
 
-#ifndef __ASM_SPARSEMEM_H
-#define __ASM_SPARSEMEM_H
+#ifndef _ASM_RISCV_SPARSEMEM_H
+#define _ASM_RISCV_SPARSEMEM_H
 
 #ifdef CONFIG_SPARSEMEM
 #define MAX_PHYSMEM_BITS	CONFIG_PA_BITS
 #define SECTION_SIZE_BITS	27
 #endif /* CONFIG_SPARSEMEM */
 
-#endif /* __ASM_SPARSEMEM_H */
+#endif /* _ASM_RISCV_SPARSEMEM_H */
diff --git a/arch/riscv/include/asm/spinlock_types.h b/arch/riscv/include/asm/spinlock_types.h
index 888cbf8..f398e76 100644
--- a/arch/riscv/include/asm/spinlock_types.h
+++ b/arch/riscv/include/asm/spinlock_types.h
@@ -22,4 +22,4 @@ typedef struct {
 
 #define __ARCH_RW_LOCK_UNLOCKED		{ 0 }
 
-#endif
+#endif /* _ASM_RISCV_SPINLOCK_TYPES_H */
diff --git a/arch/riscv/include/uapi/asm/elf.h b/arch/riscv/include/uapi/asm/elf.h
index 644a00c..d696d66 100644
--- a/arch/riscv/include/uapi/asm/elf.h
+++ b/arch/riscv/include/uapi/asm/elf.h
@@ -9,8 +9,8 @@
  * (at your option) any later version.
  */
 
-#ifndef _UAPI_ASM_ELF_H
-#define _UAPI_ASM_ELF_H
+#ifndef _UAPI_ASM_RISCV_ELF_H
+#define _UAPI_ASM_RISCV_ELF_H
 
 #include <asm/ptrace.h>
 
@@ -95,4 +95,4 @@ typedef union __riscv_fp_state elf_fpregset_t;
 #define R_RISCV_32_PCREL	57
 
 
-#endif /* _UAPI_ASM_ELF_H */
+#endif /* _UAPI_ASM_RISCV_ELF_H */
diff --git a/arch/riscv/include/uapi/asm/hwcap.h b/arch/riscv/include/uapi/asm/hwcap.h
index 4e76460..dee98ee 100644
--- a/arch/riscv/include/uapi/asm/hwcap.h
+++ b/arch/riscv/include/uapi/asm/hwcap.h
@@ -5,8 +5,8 @@
  * Copyright (C) 2012 ARM Ltd.
  * Copyright (C) 2017 SiFive
  */
-#ifndef __UAPI_ASM_HWCAP_H
-#define __UAPI_ASM_HWCAP_H
+#ifndef _UAPI_ASM_RISCV_HWCAP_H
+#define _UAPI_ASM_RISCV_HWCAP_H
 
 /*
  * Linux saves the floating-point registers according to the ISA Linux is
@@ -22,4 +22,4 @@
 #define COMPAT_HWCAP_ISA_D	(1 << ('D' - 'A'))
 #define COMPAT_HWCAP_ISA_C	(1 << ('C' - 'A'))
 
-#endif
+#endif /* _UAPI_ASM_RISCV_HWCAP_H */
diff --git a/arch/riscv/include/uapi/asm/ucontext.h b/arch/riscv/include/uapi/asm/ucontext.h
index 411dd7b..44eb993 100644
--- a/arch/riscv/include/uapi/asm/ucontext.h
+++ b/arch/riscv/include/uapi/asm/ucontext.h
@@ -5,8 +5,8 @@
  *
  * This file was copied from arch/arm64/include/uapi/asm/ucontext.h
  */
-#ifndef _UAPI__ASM_UCONTEXT_H
-#define _UAPI__ASM_UCONTEXT_H
+#ifndef _UAPI_ASM_RISCV_UCONTEXT_H
+#define _UAPI_ASM_RISCV_UCONTEXT_H
 
 #include <linux/types.h>
 
@@ -31,4 +31,4 @@ struct ucontext {
 	struct sigcontext uc_mcontext;
 };
 
-#endif /* _UAPI__ASM_UCONTEXT_H */
+#endif /* _UAPI_ASM_RISCV_UCONTEXT_H */
-- 
2.7.4


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
