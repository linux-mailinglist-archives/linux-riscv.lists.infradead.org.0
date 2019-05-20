Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1560524043
	for <lists+linux-riscv@lfdr.de>; Mon, 20 May 2019 20:25:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=sGiaVf4LiN+9Djvb8boj5uHgyis9XV3P0Un7gx4GEhY=; b=Ob8x2c45zju2fS
	RrU+L5n8rUb/V9jRVP2TvTO+8uj6yql8yRLENh8h4GD3M5CU5N/fV0lU/EHTLoXhqyze+03pb+BeA
	79442HCz+9ATclW7t0fA8wW4MI1ttajmP7xheg2cQiihjfM6R4q9Y2zSwxUM864+k6lAGRnJp0uCa
	X2bt1rBE8FBwD9DzaMKXeo6pcQEbXAN4oCS3yjqhxYIsS6okUaxyzYoLlwOIsIGGcM3WpcKyWc0ix
	gSpmnyZhVTUVDKw6Ez9PEMrFa7+iyCZbIUXuLlUuKZSSKUyJZp849SzdunGL9/Tlmxfadpc4wJrCr
	aaG72Dq6O1E9GVvebyHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSmyb-0006VQ-Mp; Mon, 20 May 2019 18:25:33 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSmyY-0006Uv-U7
 for linux-riscv@lists.infradead.org; Mon, 20 May 2019 18:25:32 +0000
Received: by mail-io1-xd43.google.com with SMTP id p2so11844186iol.2
 for <linux-riscv@lists.infradead.org>; Mon, 20 May 2019 11:25:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=wmqIFp4icfZnPyLg0HDy/kQuXw1sl4wbvoppE+mg+DQ=;
 b=WUdWnpkXzLNbxpHv+XgWjZePSEtfJ3srhIv06ANnSQGqGE9T45z1W4UcleITOKhkYa
 ibsbnPPzo1s+D2G4L2ovyC3a0yd/b1a/gaMECFo2cIV7ytvDOQnBxvEq8/xzd+v2WbFT
 j/KoKHbpNI2e9lnEHGcBVc106hs3Z1IpolmHudPXXUDSb5kvc7i72xOYoUUku+vIu5UT
 sgzSJvmRVqF7L9LFGEX3arbANBgDgaSI6QdrjzA+w7i+2BHepr67CP567+9RTmTI9od7
 /Wjx1hfrFI0aBhPBIDiUwXgGNiKUGBfk/zAs0jA1D48EM3R2jPNyCa1ijcVeQ2Nxx4eL
 tE1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=wmqIFp4icfZnPyLg0HDy/kQuXw1sl4wbvoppE+mg+DQ=;
 b=BYpIsxz1qnIBtIKg4OuMFs3pOyhu05mNUrO1lUNlxMQq9nYwfQC7LqWTPd1sanbq4Z
 JL0S+AkLDo3GInWjRu5g726csPUoX24u0S/j7/iHwD7Mg+fPu9afaIZT0+ww7GKjmSdj
 ZSMxHRDHsHNxvi7iajK/D6TuxW2Z6vsGWKgMH1zp+yxaF5ZAISaJSwonvQpBmCSTLCWF
 dMh3OBFUlxeo0vKQfo3q2jgZfYGXp5AL4+9ovqmNQc4hN2eVayCHz1FZH2tLocabJ7fp
 d7s7fT77zSDKmVn2HnL9Hkt62Y8wlrFNHILLNsEX4vLx+BxtdVNDuble/nXIdEY1x3Y3
 LD/g==
X-Gm-Message-State: APjAAAW2K/NeZsykmcPm62gIKvthF0szcr5o6FTibrcNXGJSBifg4UXo
 dL0aFq78/j1h0S3lyirRXNsZnIZ84RI=
X-Google-Smtp-Source: APXvYqzlpFilXUERsaEKWrW4gUmc09n06Iun1qu9UaXTzhfY090JdtYxRreS+KDnxD8dlML4Bc4Duw==
X-Received: by 2002:a6b:7008:: with SMTP id l8mr41127535ioc.210.1558376729850; 
 Mon, 20 May 2019 11:25:29 -0700 (PDT)
Received: from viisi.lan (c-73-95-159-87.hsd1.co.comcast.net. [73.95.159.87])
 by smtp.gmail.com with ESMTPSA id
 m25sm137862iti.24.2019.05.20.11.25.29
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 20 May 2019 11:25:29 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
To: linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] riscv: include generic support for MSI irqdomains
Date: Mon, 20 May 2019 11:25:28 -0700
Message-Id: <20190520182528.10627-1-paul.walmsley@sifive.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_112530_980237_176DDC6E 
X-CRM114-Status: GOOD (  11.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-riscv@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-riscv.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-riscv/>
List-Post: <mailto:linux-riscv@lists.infradead.org>
List-Help: <mailto:linux-riscv-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=subscribe>
Cc: Wesley Terpstra <wesley@sifive.com>, Paul Walmsley <paul@pwsan.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Some RISC-V systems include PCIe host controllers that support PCIe
message-signaled interrupts.  For this to work on Linux, we need to
enable PCI_MSI_IRQ_DOMAIN and define struct msi_alloc_info.  Support
for the latter is enabled by including the architecture-generic msi.h
include.

Based on a patch from Wesley Terpstra <wesley@sifive.com>:

https://github.com/riscv/riscv-linux/commit/7d55f38fb79f459d2e88bcee7e147796400cafa8

Signed-off-by: Paul Walmsley <paul.walmsley@sifive.com>
Signed-off-by: Paul Walmsley <paul@pwsan.com>
Cc: Wesley Terpstra <wesley@sifive.com>
---
 arch/riscv/include/asm/Kbuild | 1 +
 drivers/pci/Kconfig           | 2 +-
 2 files changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/riscv/include/asm/Kbuild b/arch/riscv/include/asm/Kbuild
index 3d019e062c6f..b0a9fa34be5a 100644
--- a/arch/riscv/include/asm/Kbuild
+++ b/arch/riscv/include/asm/Kbuild
@@ -20,6 +20,7 @@ generic-y += kvm_para.h
 generic-y += local.h
 generic-y += local64.h
 generic-y += mm-arch-hooks.h
+generic-y += msi.h
 generic-y += percpu.h
 generic-y += preempt.h
 generic-y += sections.h
diff --git a/drivers/pci/Kconfig b/drivers/pci/Kconfig
index 2ab92409210a..beb3408a0272 100644
--- a/drivers/pci/Kconfig
+++ b/drivers/pci/Kconfig
@@ -52,7 +52,7 @@ config PCI_MSI
 	   If you don't know what to do here, say Y.
 
 config PCI_MSI_IRQ_DOMAIN
-	def_bool ARC || ARM || ARM64 || X86
+	def_bool ARC || ARM || ARM64 || X86 || RISCV
 	depends on PCI_MSI
 	select GENERIC_MSI_IRQ_DOMAIN
 
-- 
2.20.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
