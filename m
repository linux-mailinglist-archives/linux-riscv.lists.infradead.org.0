Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0753DA6540
	for <lists+linux-riscv@lfdr.de>; Tue,  3 Sep 2019 11:33:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PgtTugulWtdXoY4pdWYfEEE2yt95ku9EhQwDIOzHR0c=; b=O674IvGwvGHpKt
	JWrt/YzfJ5zIBMjI6ScDsgeyHTEd/a8fgc9dCToXCh1qIJUCxqRCf1lZ3CdMvTVfrmRtJzI5JnTKA
	tywrVL/wVtab/bukhrIV1qDj4JxoRgd+afBI29V4TGEnnn05hEtIvTcFCMCCX68UjzVzCG+yJV0eH
	sPKGGITLl/xiJGLGWCdLlfY1qpIKh0hl8X0dKT4qnpsPYU/G/03SYnK0j9R9U26r72v9MAXCWVRFe
	KR0Z7OMur4HTA2n3WSJMy2uFlxGfmnTdrXO58WVDHQCVgpt0N3Gv70XEGQxqsqQ8Fhmp3kZX/wxN0
	m88hlv3wLd1cu3fgenkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i55BK-0004Sj-MS; Tue, 03 Sep 2019 09:32:58 +0000
Received: from clnet-p19-102.ikbnet.co.at ([83.175.77.102] helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1i55BC-0004Md-FN; Tue, 03 Sep 2019 09:32:50 +0000
From: Christoph Hellwig <hch@lst.de>
To: Palmer Dabbelt <palmer@sifive.com>,
 Paul Walmsley <paul.walmsley@sifive.com>
Subject: [PATCH 04/20] riscv: optimize send_ipi_single
Date: Tue,  3 Sep 2019 11:32:23 +0200
Message-Id: <20190903093239.21278-5-hch@lst.de>
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

Don't go through send_ipi_mask, but just set the op bit an then pass a
simple generate hartid mask directly to sbi_send_ipi.

Signed-off-by: Christoph Hellwig <hch@lst.de>
Reviewed-by: Atish Patra <atish.patra@wdc.com>
---
 arch/riscv/kernel/smp.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/arch/riscv/kernel/smp.c b/arch/riscv/kernel/smp.c
index 2e21669aa068..a3715d621f60 100644
--- a/arch/riscv/kernel/smp.c
+++ b/arch/riscv/kernel/smp.c
@@ -94,7 +94,13 @@ static void send_ipi_mask(const struct cpumask *mask, enum ipi_message_type op)
 
 static void send_ipi_single(int cpu, enum ipi_message_type op)
 {
-	send_ipi_mask(cpumask_of(cpu), op);
+	int hartid = cpuid_to_hartid_map(cpu);
+
+	smp_mb__before_atomic();
+	set_bit(op, &ipi_data[cpu].bits);
+	smp_mb__after_atomic();
+
+	sbi_send_ipi(cpumask_bits(cpumask_of(hartid)));
 }
 
 static inline void clear_ipi(void)
-- 
2.20.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
