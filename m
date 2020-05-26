Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 164A51E1BCE
	for <lists+linux-riscv@lfdr.de>; Tue, 26 May 2020 09:03:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UTa6e4uati/mC1lpRGebfubs1gwZzy90fbCylq5T17w=; b=DHNveVZXbRLobJbTCjx3BJveqN
	thLfFutEHDCEFz490fwn0Le9pd8Y1QjuV/VexBWmoxY1g/F5pJQJyGFg43uIN7cnKXc7/ZotVRPfA
	LZfkEbKQ6In9aY28SKMzHeyJZDyxwRtAnq7gh84oCGEWPxA4J+6WxeRZ83SIVFTcDvgTFO4re1O24
	0LQqqmtJ1bum+1TBSu1Y2rN/BXUv0k15LYpVJ3nA9onO+t2K9VKcNzWQe5xjVZuvy5suI6RBqGqIU
	/5EH/6u1GTsWOUjMguFeZva5nkNoU6XEWcx4pRmufUzm8Uatg05PGbfNoa3pbzT9RIe3SWKs1igcZ
	YPnGRb6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdTck-0008Ch-Nq; Tue, 26 May 2020 07:03:42 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdTcL-0007jk-E5
 for linux-riscv@lists.infradead.org; Tue, 26 May 2020 07:03:19 +0000
Received: by mail-pg1-x544.google.com with SMTP id p30so9549861pgl.11
 for <linux-riscv@lists.infradead.org>; Tue, 26 May 2020 00:03:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=UTa6e4uati/mC1lpRGebfubs1gwZzy90fbCylq5T17w=;
 b=O1fSBWC+2oXmb5j7RceiWUwGAfEkuKAVD/tgEAq8i4EcQOlTa1aEPwBiS8cy6cZTlp
 U8wWupuOcEpZ9siGvFKdl7GQR5spvRfuxpUN1D1XV6Rq83IbxHr0ziiTnIq0Xpt+/zWi
 UkZoEz7MxtXVPrJxXk+gdY4vSBZaJQuygPRYPmIMq7tTcFKOxb7nNYb88nz9tQz45CKg
 /jCoArJVUV/IslA3BGUx41iWrU5VnBcdiu2xqXlQY6CBJ7SQsTvQumZHxgRzVmyrEyUP
 gdeanKKVfpi+SEo3yYx4LnWiugMDftofxx79qxefwLcIKhnUe+tDrxtMcvfVWtTjc7ax
 k3gA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=UTa6e4uati/mC1lpRGebfubs1gwZzy90fbCylq5T17w=;
 b=gtTgdS4R9EEAWsDXfUqu/saeIuRQItsPCKnUaN6/ow7TjpXS+MXa7Ak9wSOAdPxINs
 DXJlDhfRa1SHurw6PsvV5EJnR9Fy7egKEw1x5wbw3+Q+V//5KCZ1/wfuJ87+ZOTKzpQr
 Q+B2JmfPB/FBGbKmUnyKoaEaa1Om5Kj32EbrrawZQW5WNK8XQ9mX6PZcY6TjppIBUkvJ
 A5ESLavTPARM+PJcdXkou3e8PxjtNeLY0q5O4I7wvwbqHuZ6s/woc/IFknkDvsKFqBIj
 5c7sBjOKewsF4CWD6plpuLRTXq2yl2qikwOr1D842t+nzemfMbJ8Xsf4ZlQKV4DHN0mS
 +ikw==
X-Gm-Message-State: AOAM533D7q2Xo4Yplfip2wQzqNi5+jYq85zEkWpeVCbdPyEMxUsIE8y7
 2PTtAiLVOgm+PRYvuIf23Rs0HQ==
X-Google-Smtp-Source: ABdhPJyHLPVIbiZnTPLCFOkJTGyiNtB6HY85/M77vYHMbqVoSrDV0Qu/gbZiDjtkaW6HxGhnv9srjQ==
X-Received: by 2002:aa7:9106:: with SMTP id 6mr7958314pfh.245.1590476596842;
 Tue, 26 May 2020 00:03:16 -0700 (PDT)
Received: from hsinchu02.internal.sifive.com
 (114-34-229-221.HINET-IP.hinet.net. [114.34.229.221])
 by smtp.gmail.com with ESMTPSA id q34sm15167431pja.22.2020.05.26.00.03.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 26 May 2020 00:03:16 -0700 (PDT)
From: Greentime Hu <greentime.hu@sifive.com>
To: greentime.hu@sifive.com, guoren@linux.alibaba.com, vincent.chen@sifive.com,
 paul.walmsley@sifive.com, palmerdabbelt@google.com,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
 oleg@redhat.com
Subject: [RFC PATCH v4 13/13] riscv: signal: Report signal frame size to
 userspace via auxv
Date: Tue, 26 May 2020 15:02:42 +0800
Message-Id: <fbf926cd6a835a8210fd0dfec8f25611eb2592fb.1590474856.git.greentime.hu@sifive.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.1590474856.git.greentime.hu@sifive.com>
References: <cover.1590474856.git.greentime.hu@sifive.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_000317_478400_DCF2B54E 
X-CRM114-Status: GOOD (  12.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

From: Vincent Chen <vincent.chen@sifive.com>

The vector register belongs to the signal context. They need to be stored
and restored as entering and leaving the signal handler. According to the
V-extension specification, the maximum length of the vector registers can
be 2^(XLEN-1). Hence, if userspace refers to the MINSIGSTKSZ #define
(2KB) to create a sigframe, it may not be enough. To resolve this problem,
this patch refers to the commit 94b07c1f8c39c
("arm64: signal: Report signal frame size to userspace via auxv") to enable
userspace to know the minimum required sigframe size through the auxiliary
vector and use it to allocate enough memory for signal context.

Signed-off-by: Vincent Chen <vincent.chen@sifive.com>
---
 arch/riscv/include/asm/elf.h         | 17 +++++++++++++----
 arch/riscv/include/asm/processor.h   |  2 ++
 arch/riscv/include/uapi/asm/auxvec.h |  2 ++
 arch/riscv/kernel/setup.c            |  5 +++++
 arch/riscv/kernel/signal.c           | 16 ++++++++++++++++
 5 files changed, 38 insertions(+), 4 deletions(-)

diff --git a/arch/riscv/include/asm/elf.h b/arch/riscv/include/asm/elf.h
index d83a4efd052b..b6b15fc5f784 100644
--- a/arch/riscv/include/asm/elf.h
+++ b/arch/riscv/include/asm/elf.h
@@ -57,10 +57,19 @@ extern unsigned long elf_hwcap;
 #define ELF_PLATFORM	(NULL)
 
 #ifdef CONFIG_MMU
-#define ARCH_DLINFO						\
-do {								\
-	NEW_AUX_ENT(AT_SYSINFO_EHDR,				\
-		(elf_addr_t)current->mm->context.vdso);		\
+#define ARCH_DLINFO						 \
+do {								 \
+	NEW_AUX_ENT(AT_SYSINFO_EHDR,				 \
+		(elf_addr_t)current->mm->context.vdso);		 \
+	/*							 \
+	 * Should always be nonzero unless there's a kernel bug. \
+	 * If we haven't determined a sensible value to give to	 \
+	 * userspace, omit the entry:				 \
+	 */							 \
+	if (likely(signal_minsigstksz))				 \
+		NEW_AUX_ENT(AT_MINSIGSTKSZ, signal_minsigstksz); \
+	else							 \
+		NEW_AUX_ENT(AT_IGNORE, 0);			 \
 } while (0)
 #define ARCH_HAS_SETUP_ADDITIONAL_PAGES
 struct linux_binprm;
diff --git a/arch/riscv/include/asm/processor.h b/arch/riscv/include/asm/processor.h
index 217273375cfb..5be2da702897 100644
--- a/arch/riscv/include/asm/processor.h
+++ b/arch/riscv/include/asm/processor.h
@@ -7,6 +7,7 @@
 #define _ASM_RISCV_PROCESSOR_H
 
 #include <linux/const.h>
+#include <linux/cache.h>
 
 #include <asm/ptrace.h>
 
@@ -79,6 +80,7 @@ int riscv_of_processor_hartid(struct device_node *node);
 
 extern void riscv_fill_hwcap(void);
 
+extern unsigned long signal_minsigstksz __ro_after_init;
 #endif /* __ASSEMBLY__ */
 
 #endif /* _ASM_RISCV_PROCESSOR_H */
diff --git a/arch/riscv/include/uapi/asm/auxvec.h b/arch/riscv/include/uapi/asm/auxvec.h
index d86cb17bbabe..9745a01e5e61 100644
--- a/arch/riscv/include/uapi/asm/auxvec.h
+++ b/arch/riscv/include/uapi/asm/auxvec.h
@@ -10,4 +10,6 @@
 /* vDSO location */
 #define AT_SYSINFO_EHDR 33
 
+#define AT_MINSIGSTKSZ 51
+
 #endif /* _UAPI_ASM_RISCV_AUXVEC_H */
diff --git a/arch/riscv/kernel/setup.c b/arch/riscv/kernel/setup.c
index 145128a7e560..6220e25ea9b0 100644
--- a/arch/riscv/kernel/setup.c
+++ b/arch/riscv/kernel/setup.c
@@ -17,6 +17,7 @@
 #include <linux/sched/task.h>
 #include <linux/swiotlb.h>
 #include <linux/smp.h>
+#include <linux/processor.h>
 
 #include <asm/clint.h>
 #include <asm/cpu_ops.h>
@@ -62,6 +63,8 @@ void __init parse_dtb(void)
 #endif
 }
 
+extern void __init minsigstksz_setup(void);
+
 void __init setup_arch(char **cmdline_p)
 {
 	init_mm.start_code = (unsigned long) _stext;
@@ -95,6 +98,8 @@ void __init setup_arch(char **cmdline_p)
 #endif
 
 	riscv_fill_hwcap();
+
+	minsigstksz_setup();
 }
 
 static int __init topology_init(void)
diff --git a/arch/riscv/kernel/signal.c b/arch/riscv/kernel/signal.c
index 9ada6f74bb95..4f81251867e6 100644
--- a/arch/riscv/kernel/signal.c
+++ b/arch/riscv/kernel/signal.c
@@ -404,3 +404,19 @@ asmlinkage __visible void do_notify_resume(struct pt_regs *regs,
 		tracehook_notify_resume(regs);
 	}
 }
+
+unsigned long __ro_after_init signal_minsigstksz;
+
+/*
+ * Determine the stack space required for guaranteed signal devliery.
+ * This function is used to populate AT_MINSIGSTKSZ at process startup.
+ * cpufeatures setup is assumed to be complete.
+ */
+void __init minsigstksz_setup(void)
+{
+	signal_minsigstksz = sizeof(struct rt_sigframe);
+#ifdef CONFIG_VECTOR
+	if (has_vector)
+		signal_minsigstksz += riscv_vsize;
+#endif
+}
-- 
2.26.2


