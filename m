Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AFF17598E
	for <lists+linux-riscv@lfdr.de>; Thu, 25 Jul 2019 23:28:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=OAgjMLFjupSg/mgFa5YTdOmBFkk9De9pAHJ3FRLgLcI=; b=tmcR/Bdqum4RKs
	zQv+EQfVWzkdKimOpjfy8J11dJ6OG+0XUV4CB8PKvoccZveGXntIJZK+qggmD1Wz7kFVLfJhalE47
	+0co+mpXQUhBXIQzmdW4Bbq5Y0K0ogzhiXBMk7vQ1xGLqFNrMdyeCXtj9MrlNncs/qDp3anA1rTMx
	mWZFJkKLeL9gy/EkH2+IJz21//L0F/LRL9FPm4PXYjhlDXOtDSDtdU2Cgae5WAGPNXZWtDY86OfBY
	4KOBNZk4+tF1rWDBdx7QoQrLI33OLFnE1vLFdOKm9jQinknZ09ZUvHVZkDf2nGL3e633mndODrmAV
	wmtlywobKD5bllt7vxkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqlHe-0003vE-TX; Thu, 25 Jul 2019 21:28:19 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqlHV-0003ie-Qb
 for linux-riscv@lists.infradead.org; Thu, 25 Jul 2019 21:28:16 +0000
Received: by mail-io1-xd41.google.com with SMTP id f4so100410781ioh.6
 for <linux-riscv@lists.infradead.org>; Thu, 25 Jul 2019 14:28:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:message-id:user-agent:mime-version;
 bh=3RH1zSlyd07j64FiG6c56vosTfF67VZPnHTjO5XPI6w=;
 b=EOZ/BMGIWOdAj5Vnd3MYOVEz3cefj8pjrEdXl5iPoQCB2A7GPF+woWHVnm8k9xigez
 g3xjAsmtfn7Z95N8JtEYM19jcXGgmOmAF/TMVLY81K++RkiZhRJxxw6z/Zi6cj0P2crZ
 6jbUWGZ0OGzThcxAVxOLtSlRgAOUkMhWP5n8DdY7wDDGBMVTmsrv3aXCP8nX2TpQFMFO
 t+6JzAzXDmpSUtQMjbRfX9qtceI7QH1nY00yBmhS5Avtu1VLBBkKzAkphHjSLBDzmiyR
 R/+U6LN++pbSDZBytpZoLkKkmY9FfQNPqxVckN+KnwzUnC5NqJeLQsrxYS4y9Tp+TRrB
 1fVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:user-agent
 :mime-version;
 bh=3RH1zSlyd07j64FiG6c56vosTfF67VZPnHTjO5XPI6w=;
 b=W9vVFL0QdQg/nvAigdLuRK8fkAH3C+OF/97lALc1tTwlbnmG6vT95S9cMlYiuhKUUx
 YkmVNAITT+8TVMa5gCFPGt7opEf7fwjm9jKqmVGkOGlIJq3MK0RydfZNWHI4Gzo6rEst
 MgLe1slHnlkwv4mduAF4tdxWJUT8tL0LONPHjAKU1F0MZX5HMP4pmnpACDCBC6CXkmLh
 uPwrsD56AzXoC6kkeWsKIhz6hjvIZpJLcX04X4rNDXTj86jOxDc/Lu/G6US82gpcJpsR
 IVvqaj3uEmTcv79BhoAqmiUW/9EhxbF2slV22MglWHY+TbN8AzaJ98BweodMPotp2aUu
 9u9g==
X-Gm-Message-State: APjAAAXEW+DlZ12Akhsjiy70IS1rik2QEALZu2wI75AHiDcoHR1qcwRB
 SpfwzRKjisG70S+qkKuJWyaAnQ==
X-Google-Smtp-Source: APXvYqwcgbG8zch7ZKO4A5O8SJtdUcK7Nhlw2/y/EAEaxhmIHdnGrBKmHWDCbVWOWssqVb37HE40xg==
X-Received: by 2002:a5d:8c81:: with SMTP id g1mr18868186ion.239.1564090088618; 
 Thu, 25 Jul 2019 14:28:08 -0700 (PDT)
Received: from localhost (67-0-24-96.albq.qwest.net. [67.0.24.96])
 by smtp.gmail.com with ESMTPSA id t14sm41996376ioi.60.2019.07.25.14.28.08
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 25 Jul 2019 14:28:08 -0700 (PDT)
Date: Thu, 25 Jul 2019 14:28:07 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: bhelgaas@google.com
Subject: [PATCH v2] pci: Kconfig: select PCI_MSI_IRQ_DOMAIN by default on
 RISC-V
Message-ID: <alpine.DEB.2.21.9999.1907251426450.32766@viisi.sifive.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_142811_018310_D90AD1EF 
X-CRM114-Status: GOOD (  10.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-pci@vger.kernel.org, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org, wesley@sifive.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

From: Wesley Terpstra <wesley@sifive.com>

This is part of adding support for RISC-V systems with PCIe host 
controllers that support message-signaled interrupts.

Signed-off-by: Wesley Terpstra <wesley@sifive.com>
[paul.walmsley@sifive.com: wrote patch description; split this
 patch from the arch/riscv patch]
Signed-off-by: Paul Walmsley <paul.walmsley@sifive.com>
---
 drivers/pci/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

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
2.22.0


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
