Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3F7198CC3
	for <lists+linux-riscv@lfdr.de>; Thu, 22 Aug 2019 09:59:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=COyFw8rX19A99m3x/3NJjJMZNJkP2kK2qBgBq+8tI00=; b=QHOIqQkGglC7Ui
	R/VwOThhnzRxGrt9hz4JPRC881wABuxkqHrNA7dPF3T4ibvV4z7qZcF6miyXaP59dHQ/U+VHysDUW
	JySGCdgUiiDngn27tDVSyPfrzGczDxkk79I/PJCtRkfdfgYKjoVoJgBKICHmqjYe0oA4iXRmJ8X+4
	yRkMm0Kdt6rLwC/Ow7QAsxl/hQn3eO7IbK+hWRLW7H3UdDOgGIz16gPNyr+krbkS+DSeA0+TeEcNs
	aCmCS2vTFW4TkLRrzM37YGo7LQYYrVZtyioNI7oxrIzAmEu6JXwEA5V99ImPiqUmZF8z5j43lA/0l
	AOUd6NHUpDOae1756HEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0i02-0000RI-F7; Thu, 22 Aug 2019 07:59:14 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0hzq-0000LX-VM
 for linux-riscv@lists.infradead.org; Thu, 22 Aug 2019 07:59:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1566460785; x=1597996785;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=8phmIoE0V9/kOpVUv4HvROJtbVLacwF1vHNNlNefEhM=;
 b=kC8WT6a+P1tKdgPeXGolPV52QeM1xRtiRiywRhFnpLOAKAgDlOVhOaQN
 RBI/Xr7KGHPfaUhOWF4vxb9GsL56DaiXIL4pdFcyd2CtRsdyBYYeRrCGj
 NKWa4gc5mAm0w0a6uhFNODBzoX1lyV90QKykyvdfy1OEoYOtyy0ZvH/mf
 Ll7hWLBFyBsyHOKCFpxHCnINssnFgxa7zLsC85GtLariOZg+QGD3MI+Fi
 HSX6Tbi+7ycOuKe2wu6scY3sC3IhkiXFrCswff4fEIQoxWHpUmT+qMK+M
 hqIJ+VbOVtrTwBH8X+2ckfpGEMwIrAsaCJqQkNjA8OdW0tWXqrXjgkAJk A==;
IronPort-SDR: 4sIWcuugBP+ntAEPdbpiXNcA6dOetArdJ8xNgOJ62FoUewZOsAIyMaKfJ7PGxS5QsGdkZ4F9lP
 WCgrWOKsMdum8Kh3X72RPzPK+NJ5R/SL9Oxl7o04al8fFp8GQCSCaLcoHFeXhArzE/ByrHE23B
 FFDALE6boIR9mAs5yw5h+3LiDqhU5LMQFF/iiywdnmZcQoio0t/02W4RA3+RlUeiDXaPwL7SRx
 hYUHJRZUKXlrst1T7t9MHe2ibmqxVwPo6Dcx2gZ2dPpCoXIBRXx1mqkp3vFH1HEOi/qvt7sOmM
 Vk4=
X-IronPort-AV: E=Sophos;i="5.64,415,1559491200"; d="scan'208";a="216831488"
Received: from h199-255-45-15.hgst.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 22 Aug 2019 15:59:39 +0800
IronPort-SDR: pM1ZAtk3CkNE0yye9D85Vpog5AAnI1/E2yswuLGl1ZcFLQZaAHqbF940sfRNX4+odD87EuzJk9
 FAozzmYFMPgamhoFmX8ScfjYBOX6O5+JpJQYNpPNNjJtw4niqkhaKs6lWN0I/YAmBlW90pkcWd
 9STgmGAjIrhGx7MnJAC5wtdADRFb0S3mtL/yfEcwWDUiXVmxVDsMco6VoKi5JSKOxGKT5MJxhN
 sm7v9azGQdtDmfNr8YN6CtIvwyyh+dnHFhjYyeD3to477HT1vMTdOfaERzZFo/fYsny9XFDd6A
 QCS8Cv5XR+epijvEy4av2qBL
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2019 00:56:18 -0700
IronPort-SDR: NyAzBNUkbXZSDc3CCgXO4invnzF3pGfNKGTLFadKLNzd3Ur7CPuE7ulisiOMKLtzfBDYC9RyG2
 LMaHafEx98U1VaOYEcC0cnvWNpqWA0FB3j4/VMAC1q8O6EemE5bv+FgKtERY0oa9WJzNeyKU+Z
 g8DVracyX2mKSutvG8FA+QR0bcfzMFM12hYAGW4KAyYhJEzizxfuokO7UPLqF/iodhLhAxJD1Q
 5JaglGPag+ntRC2KrnYzUYenP7GCEmKCBCxy07yj4eWOlbfQVNbYp9LH3jeXttyGBwMbWYuITv
 PYQ=
WDCIronportException: Internal
Received: from jedi-01.sdcorp.global.sandisk.com (HELO
 jedi-01.int.fusionio.com) ([10.11.143.218])
 by uls-op-cesaip02.wdc.com with ESMTP; 22 Aug 2019 00:58:59 -0700
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v4 2/3] RISC-V: Issue a local tlbflush if possible.
Date: Thu, 22 Aug 2019 00:51:50 -0700
Message-Id: <20190822075151.24838-3-atish.patra@wdc.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190822075151.24838-1-atish.patra@wdc.com>
References: <20190822075151.24838-1-atish.patra@wdc.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_005903_045473_540BB55A 
X-CRM114-Status: GOOD (  11.24  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.143.124 listed in list.dnswl.org]
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Palmer Dabbelt <palmer@sifive.com>,
 Atish Patra <atish.patra@wdc.com>, Anup Patel <Anup.Patel@wdc.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, linux-riscv@lists.infradead.org,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

In RISC-V, tlb flush happens via SBI which is expensive. If the local
cpu is the only cpu in cpumask, there is no need to invoke a SBI call.

Just do a local flush and return.

Signed-off-by: Atish Patra <atish.patra@wdc.com>
---
 arch/riscv/mm/tlbflush.c | 19 +++++++++++++++++--
 1 file changed, 17 insertions(+), 2 deletions(-)

diff --git a/arch/riscv/mm/tlbflush.c b/arch/riscv/mm/tlbflush.c
index 1293b8017ee0..8172fbf46123 100644
--- a/arch/riscv/mm/tlbflush.c
+++ b/arch/riscv/mm/tlbflush.c
@@ -2,6 +2,7 @@
 
 #include <linux/mm.h>
 #include <linux/smp.h>
+#include <linux/sched.h>
 #include <asm/sbi.h>
 
 void flush_tlb_all(void)
@@ -9,16 +10,30 @@ void flush_tlb_all(void)
 	sbi_remote_sfence_vma(NULL, 0, -1);
 }
 
+/*
+ * This function must not be called with cmask being null.
+ * Kernel may panic if cmask is NULL.
+ */
 static void __sbi_tlb_flush_range(struct cpumask *cmask, unsigned long start,
 		unsigned long size)
 {
 	struct cpumask hmask;
+	unsigned int cpuid;
 
 	if (cpumask_empty(cmask))
 		return;
 
-	riscv_cpuid_to_hartid_mask(cmask, &hmask);
-	sbi_remote_sfence_vma(hmask.bits, start, size);
+	cpuid = get_cpu();
+
+	if (cpumask_any_but(cmask, cpuid) >= nr_cpu_ids) {
+		/* local cpu is the only cpu present in cpumask */
+		local_flush_tlb_all();
+	} else {
+		riscv_cpuid_to_hartid_mask(cmask, &hmask);
+		sbi_remote_sfence_vma(cpumask_bits(&hmask), start, size);
+	}
+
+	put_cpu();
 }
 
 void flush_tlb_mm(struct mm_struct *mm)
-- 
2.21.0


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
