Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 328B9988AA
	for <lists+linux-riscv@lfdr.de>; Thu, 22 Aug 2019 02:47:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UKOicC8zIbIeJbV8Q1zrNV9BMmfwzO0av73KBV8QT/Y=; b=bVyq52fGZXneo1
	nt4x8zAkxr+U4Gx+luEZfMtG+UpXg107w90OGZzc3Jh70y1R7lRGp+cWl160HvZdH+2VuVDSHZQ5c
	/t6uywLUrtbiYiInQcAq/HX/9up/+28lwREMDcIhp5iremW3LQ+G9sHtqtnk4IFVV2o3ph2xYRZHY
	g4G+k3YMPlwq+B0FU9UBjEI2tj5urWScMTafc4Pnl0rimzjAKSJ5p8g+Xzqqfs0OpcN8J1EyoVJ0J
	esoju3ltS9cDc2CRgf7uQa0gwVdpwbkRTFLE5eMz7+ZA2X4BuJbXPOAHjEsGopsVt6z5+/xmFek90
	/lvdwUW4LdI06h7o/Lvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0bFc-0002qC-O6; Thu, 22 Aug 2019 00:46:52 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0bFY-0002m5-Ie
 for linux-riscv@lists.infradead.org; Thu, 22 Aug 2019 00:46:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1566434809; x=1597970809;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=dc8CWzo9n0Qcuo3KBA83ogvDOo4Pn0dNrAEn4x3C39Y=;
 b=Cobin372oaJXiPURT2hm5EKKPhBlAsBLbnEmpUl+o7Yg4Ye3HCDUFxZ8
 mDLA+eMSbhKNYtf8NH2M5wJ5zieCol3FgXQWbjWPI+z8q/lhev1uz/eWA
 xBC29ThdufbYtxDWc9QpZ2e9hPwm8qeP7bgmqkEDDastyr/goHQ/aDhju
 bBNdSpiqvBMxlxP7F98z/QyoBlEX+knkZAW6H16NZO8E0u39vfhHeXeDm
 Gh+ZE90QZFmZ8j0tWIkoQyMa8qKaoe6kd62rgWy2noehJTKa7Qdl/vxf2
 yBWpwocWvDxD7gFDoTr480tirf6sB3/ZDBgBcT0bbhAeHW0Kwa+yO7CnP A==;
IronPort-SDR: mFWcUHei9tsPgSOTS8itIfLaQnXrzib30OpM50BzB0ZblaZg5fJbJ3TbQhHv4jzDfb7j30iDVd
 R5t+jJkxBZ210cdZFpQAuIG5q84KiFfsSlyw32ljCf3uUgGWwwzFFwVRXyIgwFqmKRgLl4S5Qb
 Bw+lRsNNaLopzH1fJNFwfuJwBcpZZBSgRf3ddDCegsA5kBS4mtGGl5J3gcfJLOR9nG7SKMp54r
 HQF0pbcNyFx7Lk0chmdGFU24UAQEEBdHwvkdh4NU8Tllx9awIYcDQBxsbmw1f1mDsgfy2g8Bs3
 7EM=
X-IronPort-AV: E=Sophos;i="5.64,414,1559491200"; d="scan'208";a="216804436"
Received: from h199-255-45-15.hgst.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 22 Aug 2019 08:48:31 +0800
IronPort-SDR: SqnwIbZGZ0qdjC3hWizZ3ciBvsHwaBMJgdbJtGNaJW0bRRoHqMhRhNnuJ2bFo6A6h+8tmhPdkm
 t9nDiPrVngokdNUH9/dM2/vIc2Amtaz/LXxqH/Pssou1imyaV9CbcpzPMdkHUiBNPhYWnGt7M+
 xP+kZViNhf/+QtLDTsHngwEeVZGVfE1AZq/67lki9lpw57f0jJjGq/i4+dSgA0/WKwTJ6Qdso1
 J8g4kWjutMo0IDz6+QFa3h83ghQn9zSXnQIdME8JM95PSzdSaqGXbk/xIB+CygZ0rqpDd24t66
 NKgD9aM2nO3I5uyo1W6/5ZpK
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2019 17:44:04 -0700
IronPort-SDR: K6C88eai+9nEsr+QmFtqCIfF3a0criYQcYq3mHZZ3xxksUkCfr2YySl9AbHVCM57uQ6msb+dVC
 j79MQ1hMD/OOjLr4e3ax8hRxpLMlU0QHV6VhB8U+KMUW1bbEAue0oeN2fX0MiNc5KM3kODsObA
 Ijq/o4JEBChVG+uJfuU39wARr6qvaejl49x6IjakcY9IxlKLAN61fkeeuzPOsQ+O0EiLw4fuA/
 Sxn0+Wn8l2Z63AmV/nB/LCN9T4jlUcZl5yiaCAgPlvnJJ8H70DrL8xnZdVOFKOq9M/AkcOkgm3
 6qQ=
WDCIronportException: Internal
Received: from jedi-01.sdcorp.global.sandisk.com (HELO
 jedi-01.int.fusionio.com) ([10.11.143.218])
 by uls-op-cesaip02.wdc.com with ESMTP; 21 Aug 2019 17:46:45 -0700
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v3 1/3] RISC-V: Issue a local tlbflush if possible.
Date: Wed, 21 Aug 2019 17:46:42 -0700
Message-Id: <20190822004644.25829-2-atish.patra@wdc.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190822004644.25829-1-atish.patra@wdc.com>
References: <20190822004644.25829-1-atish.patra@wdc.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_174648_666919_D47E6E43 
X-CRM114-Status: UNSURE (   9.94  )
X-CRM114-Notice: Please train this message.
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Palmer Dabbelt <palmer@sifive.com>,
 Atish Patra <atish.patra@wdc.com>, Anup Patel <Anup.Patel@wdc.com>,
 Andreas Schwab <schwab@linux-m68k.org>,
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
 arch/riscv/mm/tlbflush.c | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/arch/riscv/mm/tlbflush.c b/arch/riscv/mm/tlbflush.c
index df93b26f1b9d..36430ee3bed9 100644
--- a/arch/riscv/mm/tlbflush.c
+++ b/arch/riscv/mm/tlbflush.c
@@ -2,6 +2,7 @@
 
 #include <linux/mm.h>
 #include <linux/smp.h>
+#include <linux/sched.h>
 #include <asm/sbi.h>
 
 void flush_tlb_all(void)
@@ -13,9 +14,23 @@ static void __sbi_tlb_flush_range(struct cpumask *cmask, unsigned long start,
 		unsigned long size)
 {
 	struct cpumask hmask;
+	unsigned int cpuid = get_cpu();
 
+	if (!cmask) {
+		riscv_cpuid_to_hartid_mask(cpu_online_mask, &hmask);
+		goto issue_sfence;
+	}
+
+	if (cpumask_test_cpu(cpuid, cmask) && cpumask_weight(cmask) == 1) {
+		local_flush_tlb_all();
+		goto done;
+	}
 	riscv_cpuid_to_hartid_mask(cmask, &hmask);
+
+issue_sfence:
 	sbi_remote_sfence_vma(hmask.bits, start, size);
+done:
+	put_cpu();
 }
 
 void flush_tlb_mm(struct mm_struct *mm)
-- 
2.21.0


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
