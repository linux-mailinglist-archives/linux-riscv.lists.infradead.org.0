Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E6881FAA4B
	for <lists+linux-riscv@lfdr.de>; Tue, 16 Jun 2020 09:46:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vV7PDthSiPR3LChm1dR2y1ass0+TcfMiVV19frp0t7U=; b=TbjkGIkj6gO+7d
	aWCiOklYRFuYXCNsqYjWbab41ko22G4XhmoFsN2Y+o/0ri9TnsCKIKZs//ysbDLKjlXqSbS8D/so8
	VkTEDa37G8lNTkHKH8BM0bpgT61Jg/juGLmbrKTHrXTe9yilfoWlioe4/0+KAYLQ7YLmRd5YGYTg5
	YeMYtWP7NHN/tqAQVqICzFTR/6D2jwBYnfGyPRq3zJTWC8o6l44R7EMXQlLHaRqlGPbijgmnox/5X
	3jopkUOVsAmh03eQr00ronDqUuAgZpTHqbYRsuXUW/DSosyx/LfmMSxEeU5M3mzSiE0w9lOeFCgfk
	DGQWVLr6zR8bcqpon6Aw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jl6IC-0002Zq-Ku; Tue, 16 Jun 2020 07:46:00 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jl6I7-0002Vn-Ui
 for linux-riscv@lists.infradead.org; Tue, 16 Jun 2020 07:45:57 +0000
Received: by mail-pj1-x1044.google.com with SMTP id h22so1162199pjf.1
 for <linux-riscv@lists.infradead.org>; Tue, 16 Jun 2020 00:45:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=vV7PDthSiPR3LChm1dR2y1ass0+TcfMiVV19frp0t7U=;
 b=VJHC11UqQBI1FGJ+MeKOiWKzMZGBTEHwNKV3OXnRsqMaz6M/rTt7pvyn+uVO+MYabl
 iaSOBJwnznJ+7y6uHyDg4fqR8po25vKF0mvJjZDEgyajtVYm1mLTp4Vl8hwuRcNA3r1M
 SiolWjgx/7vQjDLvauayB86aTzSmQoPqZdAQCLjaM0Zplg64t7mLe0iDxiP9Un6Y1QIY
 vB2XGsQm/zuZPXi3yIGPUaPKviKVm0IBx/uEKmBbmcwwSxp7La/sKBU3bXoXIXLNIWIv
 jEnxWscZ62T1Ym1ZosQcPG6lVZcy/+sW611lSpjlRhFs19m0bxs/Yh+Iun86+OOP3p50
 iuGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=vV7PDthSiPR3LChm1dR2y1ass0+TcfMiVV19frp0t7U=;
 b=Aa1uk5+ADuqx3T8ib18g3ZII3iwmp6PWc7SbPvwndaqCU06DUScOuj2L3V9lbJQK0N
 UyxnXxqvl0vPhZMR9g3hblr3myA7i3Tb0NSqNBQ01tjSAlPcFLT8ZAZbi3OftIcPe+wG
 ZOAfrOQ5Uvmpt0b8UXY8QY3UnBPDCAOZmKKSersVqEU/zR47Q8IzqMDfwcH/5GgP0vih
 Eh+BAhFRd3C/fTwuCk8r4Ju+ICHY6Vm+cEYUaxFdWOgJ8lftoB+Ox8AzG+0PTUsUdrXK
 puPHadu+1GH9YGqxpHCku2I3ZjTSXbKqX6IkTjzo7ScHSLUTM6TrPZuPLWSozIhn2cAR
 9ZvQ==
X-Gm-Message-State: AOAM532Nm/NriHw7SxXu0DkwHr33wcaQLMrNFDplk21iVTaVPDqU5XTZ
 USZrJO+ofb5dwD22jfEYNZL+dg==
X-Google-Smtp-Source: ABdhPJxOR/0ji5UrB9CnB39EGe+8bQm9woYF0QdIZpmAvJ+qYh4U0dcwFYR+oXEWTXHvrW/1WVVvGw==
X-Received: by 2002:a17:90a:9f81:: with SMTP id
 o1mr1578412pjp.139.1592293555400; 
 Tue, 16 Jun 2020 00:45:55 -0700 (PDT)
Received: from hsinchu02.internal.sifive.com
 (114-34-229-221.HINET-IP.hinet.net. [114.34.229.221])
 by smtp.gmail.com with ESMTPSA id i22sm15948250pfo.92.2020.06.16.00.45.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Jun 2020 00:45:55 -0700 (PDT)
From: Zong Li <zong.li@sifive.com>
To: paul.walmsley@sifive.com, palmer@dabbelt.com,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 2/2] riscv: Support CONFIG_STRICT_DEVMEM
Date: Tue, 16 Jun 2020 15:45:47 +0800
Message-Id: <7faa60aa4a606b5c5c1ae374d82a7eee6c764b38.1592292685.git.zong.li@sifive.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <cover.1592292685.git.zong.li@sifive.com>
References: <cover.1592292685.git.zong.li@sifive.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_004555_987029_F317836E 
X-CRM114-Status: UNSURE (   9.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1044 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Zong Li <zong.li@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Implement the 'devmem_is_allowed()' interface for RISC-V, like some of
other architectures have done. It will be called from range_is_allowed()
when userpsace attempts to access /dev/mem.

Access to exclusive IOMEM and kernel RAM is denied unless
CONFIG_STRICT_DEVMEM is set to 'n'.

Test it by devmem, the result as follows:

 - CONFIG_STRICT_DEVMEM=y
	$ devmem 0x10010000
	0x00000000
	$ devmem 0x80200000
	0x0000106F

 - CONFIG_STRICT_DEVMEM is not set
	$ devmem 0x10010000
	devmem: mmap: Operation not permitted
	$ devmem 0x80200000
	devmem: mmap: Operation not permitted

Signed-off-by: Zong Li <zong.li@sifive.com>
---
 arch/riscv/Kconfig          |  1 +
 arch/riscv/include/asm/io.h |  2 ++
 arch/riscv/mm/init.c        | 19 +++++++++++++++++++
 3 files changed, 22 insertions(+)

diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index 128192e14ff2..ffd7841ede4c 100644
--- a/arch/riscv/Kconfig
+++ b/arch/riscv/Kconfig
@@ -16,6 +16,7 @@ config RISCV
 	select ARCH_HAS_BINFMT_FLAT
 	select ARCH_HAS_DEBUG_VIRTUAL if MMU
 	select ARCH_HAS_DEBUG_WX
+	select ARCH_HAS_DEVMEM_IS_ALLOWED
 	select ARCH_HAS_GCOV_PROFILE_ALL
 	select ARCH_HAS_GIGANTIC_PAGE
 	select ARCH_HAS_MMIOWB
diff --git a/arch/riscv/include/asm/io.h b/arch/riscv/include/asm/io.h
index 3835c3295dc5..04ac65ab93ce 100644
--- a/arch/riscv/include/asm/io.h
+++ b/arch/riscv/include/asm/io.h
@@ -147,4 +147,6 @@ __io_writes_outs(outs, u64, q, __io_pbr(), __io_paw())
 
 #include <asm-generic/io.h>
 
+extern int devmem_is_allowed(unsigned long pfn);
+
 #endif /* _ASM_RISCV_IO_H */
diff --git a/arch/riscv/mm/init.c b/arch/riscv/mm/init.c
index bbe816e03b2f..5e7e61519acc 100644
--- a/arch/riscv/mm/init.c
+++ b/arch/riscv/mm/init.c
@@ -517,6 +517,25 @@ void mark_rodata_ro(void)
 }
 #endif
 
+#ifdef CONFIG_STRICT_DEVMEM
+#include <linux/ioport.h>
+/*
+ * devmem_is_allowed() checks to see if /dev/mem access to a certain address
+ * is valid. The argument is a physical page number.
+ *
+ * Disallow access to system RAM as well as device-exclusive MMIO regions.
+ * This effectively disable read()/write() on /dev/mem.
+ */
+int devmem_is_allowed(unsigned long pfn)
+{
+	if (iomem_is_exclusive(pfn << PAGE_SHIFT))
+		return 0;
+	if (!page_is_ram(pfn))
+		return 1;
+	return 0;
+}
+#endif
+
 void __init resource_init(void)
 {
 	struct memblock_region *region;
-- 
2.27.0


