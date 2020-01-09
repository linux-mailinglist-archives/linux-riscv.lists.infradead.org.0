Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DA3F1351D0
	for <lists+linux-riscv@lfdr.de>; Thu,  9 Jan 2020 04:18:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=nxZyqBXaqg/tT8nIMuw+ak702y+nxZf3L89bHA/qCks=; b=qGrDmfrj7OBZCYYWz7gITGxFHF
	XgCkGEAVtXK4jLTIMS+auQQCGYMWFd8Lnp10Kt+9G6L2CUbe80amVCc+74LTS5q4e0bJFG6hQI6OX
	mQ0gG0kaTgw4rkLFUjsKU1rcV0q0PmDWtAduWnmAUnQvODjw8G0tBkBhnBoYpY1xIn+WUs+OardaK
	D0iJlf0oqPPLe4f8gBm8MT1M/2aqEIfTlDYRseyaHgft9BlcXNhTxg1cROkzKcnoWPs+TGMW/LZ31
	I3aGwvb4sS2csPtTj8MnWVHhAqWFHRcWEQQWtQSgQquLWrvpUzN+mkQBJXwhgAYPuY3e3ZxZuD8zt
	2pURAQ5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipOKZ-0003du-KU; Thu, 09 Jan 2020 03:17:55 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipOKQ-0003Yu-Hq
 for linux-riscv@lists.infradead.org; Thu, 09 Jan 2020 03:17:49 +0000
Received: by mail-pj1-x1044.google.com with SMTP id bg7so491916pjb.5
 for <linux-riscv@lists.infradead.org>; Wed, 08 Jan 2020 19:17:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=nxZyqBXaqg/tT8nIMuw+ak702y+nxZf3L89bHA/qCks=;
 b=myeQGSLe0d8bhNYOD+O0U7D3LTzqg+3ZDENr8vata5COP/HzIwMIjTBG2wyPtBHiG1
 jZp+xDkgGEq1vujRwxK+y+5o5E8Sux2i9Z25bx3dzyCvKq7ma2lar9BpNRnjdYxcAJc8
 RXDYM0cTLxY2SfJfHzTr/vH42lALj9GgEHvEUp+iaS6/Rmew2JfvIipxkCM1jwsiOcC0
 6Imv3fj13ZlG6wuzqjmOtCuVCig9bn2xtJzNoHaGzgVIHQ2cpzKDNX1Xpi3h7To1HRtX
 sh47cHsjX01t0qX8/dm+ZjRoEIiIxhfAgRbaOf5IdhFjWNXHpPZi91HOqBOnOKfDvqTH
 pA4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=nxZyqBXaqg/tT8nIMuw+ak702y+nxZf3L89bHA/qCks=;
 b=SmBvmlWvLXOgrZyU1ItmXZgyS6zZXGygihofKitONnqcx5hmJOZ2MnksvrppNChIe3
 kkhTS9TVHIi4YjWMIaUI01e1sjCsquR8Ynv7TIEWLaP9jSwgoGDgblv1KElZu6udjp2e
 +9SNiK1HXauJNvSkyOaTCMvt6QERV9tnFUxwnZPaNm3jDaphzDiylCWLuRBcMzGZQplN
 GO9vp3MG7rJSj9oWwaxMopiViwkgFqxbP2u5MeeiHFfMw/l7WgjCw2OMLoCoE24+c/IR
 sVzneE8A9InUGirMwpQc83+PAzIGBgerd3ksXalJGUJSyr7wQeOA67EbLQ4rTsxDx/MQ
 S8KA==
X-Gm-Message-State: APjAAAUBOiKndx2+8pVn5i/oTRln6/o5De8F+pNbKS+jtGu4xbagi3Ux
 RRD5pmXxtkXCYXedJ0LpoelOSA==
X-Google-Smtp-Source: APXvYqxCbKCHB3TlOqqbLRksmu4fkPDvL6e4D8XhJiW3qaBJy/tqYfRllbl+A3f1/Lic0mF6BNgy7g==
X-Received: by 2002:a17:90a:28a5:: with SMTP id
 f34mr2543811pjd.79.1578539866002; 
 Wed, 08 Jan 2020 19:17:46 -0800 (PST)
Received: from greentime-VirtualBox.internal.sifive.com
 (220-132-236-182.HINET-IP.hinet.net. [220.132.236.182])
 by smtp.gmail.com with ESMTPSA id l21sm5345383pff.100.2020.01.08.19.17.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Jan 2020 19:17:45 -0800 (PST)
From: Greentime Hu <greentime.hu@sifive.com>
To: green.hu@gmail.com, greentime@kernel.org, paul.walmsley@sifive.com,
 palmer@dabbelt.com, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] riscv: set pmp configuration if kernel is running in M-mode
Date: Thu,  9 Jan 2020 11:17:40 +0800
Message-Id: <20200109031740.29717-1-greentime.hu@sifive.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_191746_608941_C079DC54 
X-CRM114-Status: UNSURE (   9.39  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Greentime Hu <greentime.hu@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

When the kernel is running in S-mode, the expectation is that the
bootloader or SBI layer will configure the PMP to allow the kernel to
access physical memory.  But, when the kernel is running in M-mode and is
started with the ELF "loader", there's probably no bootloader or SBI layer
involved to configure the PMP.  Thus, we need to configure the PMP
ourselves to enable the kernel to access all regions.

Signed-off-by: Greentime Hu <greentime.hu@sifive.com>
---
 arch/riscv/include/asm/csr.h | 12 ++++++++++++
 arch/riscv/kernel/head.S     |  6 ++++++
 2 files changed, 18 insertions(+)

diff --git a/arch/riscv/include/asm/csr.h b/arch/riscv/include/asm/csr.h
index 0a62d2d68455..0f25e6c4e45c 100644
--- a/arch/riscv/include/asm/csr.h
+++ b/arch/riscv/include/asm/csr.h
@@ -72,6 +72,16 @@
 #define EXC_LOAD_PAGE_FAULT	13
 #define EXC_STORE_PAGE_FAULT	15
 
+/* PMP configuration */
+#define PMP_R			0x01
+#define PMP_W			0x02
+#define PMP_X			0x04
+#define PMP_A			0x18
+#define PMP_A_TOR		0x08
+#define PMP_A_NA4		0x10
+#define PMP_A_NAPOT		0x18
+#define PMP_L			0x80
+
 /* symbolic CSR names: */
 #define CSR_CYCLE		0xc00
 #define CSR_TIME		0xc01
@@ -100,6 +110,8 @@
 #define CSR_MCAUSE		0x342
 #define CSR_MTVAL		0x343
 #define CSR_MIP			0x344
+#define CSR_PMPCFG0		0x3a0
+#define CSR_PMPADDR0		0x3b0
 #define CSR_MHARTID		0xf14
 
 #ifdef CONFIG_RISCV_M_MODE
diff --git a/arch/riscv/kernel/head.S b/arch/riscv/kernel/head.S
index 5c8b24bf4e4e..f8f996916c5b 100644
--- a/arch/riscv/kernel/head.S
+++ b/arch/riscv/kernel/head.S
@@ -60,6 +60,12 @@ _start_kernel:
 	/* Reset all registers except ra, a0, a1 */
 	call reset_regs
 
+	/* Setup a PMP to permit access to all of memory. */
+	li a0, -1
+	csrw CSR_PMPADDR0, a0
+	li a0, (PMP_A_NAPOT | PMP_R | PMP_W | PMP_X)
+	csrw CSR_PMPCFG0, a0
+
 	/*
 	 * The hartid in a0 is expected later on, and we have no firmware
 	 * to hand it to us.
-- 
2.17.1


