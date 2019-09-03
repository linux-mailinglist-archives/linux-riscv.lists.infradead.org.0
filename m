Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39FFAA653F
	for <lists+linux-riscv@lfdr.de>; Tue,  3 Sep 2019 11:33:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EvSQI+o4Ry3iu9pdLScrARcnjpAiuBXN0p16V8F56jo=; b=bj+bZ7zI3nXjo5
	89lOlfBFZuVRJoljed5aAMwfl6qlhbL4oHBGn1OH0VMTvszVETL++DMekIc1bd8O4APKq6KC+imhx
	bKI0vaLm753LoPIrPSRgVN6ad/xRVhWl3vwScRlxru+m565yA8PaiXLkOnkL/xLIJ2MGW61N5VCNA
	waT+g6WmkwQz99ItQn0ab6Pd1Aql3pnTuLI+9bAn5P/X8D2PgsRLSvaXqTHdFulxq71Y5Laa6PjtG
	NSkAUyI07GIhEjS0ezdBmfPxSONG2d/yzEzvbYrUC2muws0wcqR2X77VMT2kZLE+qTWK5U9WqB1d1
	ZpvHWolsrQaoMQFOlPKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i55BG-0004OU-7h; Tue, 03 Sep 2019 09:32:54 +0000
Received: from clnet-p19-102.ikbnet.co.at ([83.175.77.102] helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1i55BA-0004Jn-2L; Tue, 03 Sep 2019 09:32:48 +0000
From: Christoph Hellwig <hch@lst.de>
To: Palmer Dabbelt <palmer@sifive.com>,
 Paul Walmsley <paul.walmsley@sifive.com>
Subject: [PATCH 03/20] riscv: cleanup send_ipi_mask
Date: Tue,  3 Sep 2019 11:32:22 +0200
Message-Id: <20190903093239.21278-4-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190903093239.21278-1-hch@lst.de>
References: <20190903093239.21278-1-hch@lst.de>
MIME-Version: 1.0
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
Cc: Atish Patra <atish.patra@wdc.com>, Damien Le Moal <damien.lemoal@wdc.com>,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Use the special barriers for atomic bitops to make the intention
a little more clear, and use riscv_cpuid_to_hartid_mask instead of
open coding it.

Signed-off-by: Christoph Hellwig <hch@lst.de>
Reviewed-by: Atish Patra <atish.patra@wdc.com>
---
 arch/riscv/kernel/smp.c | 16 +++++++---------
 1 file changed, 7 insertions(+), 9 deletions(-)

diff --git a/arch/riscv/kernel/smp.c b/arch/riscv/kernel/smp.c
index 8cd730239613..2e21669aa068 100644
--- a/arch/riscv/kernel/smp.c
+++ b/arch/riscv/kernel/smp.c
@@ -80,17 +80,15 @@ static void ipi_stop(void)
 
 static void send_ipi_mask(const struct cpumask *mask, enum ipi_message_type op)
 {
-	int cpuid, hartid;
 	struct cpumask hartid_mask;
+	int cpu;
 
-	cpumask_clear(&hartid_mask);
-	mb();
-	for_each_cpu(cpuid, mask) {
-		set_bit(op, &ipi_data[cpuid].bits);
-		hartid = cpuid_to_hartid_map(cpuid);
-		cpumask_set_cpu(hartid, &hartid_mask);
-	}
-	mb();
+	smp_mb__before_atomic();
+	for_each_cpu(cpu, mask)
+		set_bit(op, &ipi_data[cpu].bits);
+	smp_mb__after_atomic();
+
+	riscv_cpuid_to_hartid_mask(mask, &hartid_mask);
 	sbi_send_ipi(cpumask_bits(&hartid_mask));
 }
 
-- 
2.20.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
