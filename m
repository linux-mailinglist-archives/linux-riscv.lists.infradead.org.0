Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AF2B952D2
	for <lists+linux-riscv@lfdr.de>; Tue, 20 Aug 2019 02:47:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=oaDIsRuOpIxIGfK72977aFloT8UUKRoFGkv3fJ6AC8Y=; b=U27SGK1IzJO9Dy
	So7KC7BrlP+xDfVnIn4a9NUwZIjp46hQHrqHuMP4g2SUO4QMOpkbIKE42Uby++rLvNOId9/M8GGAW
	cUEyhNosV8bjTiFzgowOyB8E8WaCXAVBffNJ8LWHUdH1MPCjr6sMgsD5KUWTGKekc59SmtJVyCPD9
	9Su22c69F0ssJfjSy1pr6Oq/y/dc69GXsCeDmGRmUEeMxZEC7Eu0kvYa7SEiEGUBeBT/ZTtu1Q2P9
	XviPApLMfherZwb/9Eh/xIdAO9WdTO7a60c7uV1QdHs9fR2WXBMhxXE8z4VyvoXWafhs+mu0Xt1l7
	VhiSnqNsnW65EAci47Mw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzsJK-0006cR-1X; Tue, 20 Aug 2019 00:47:42 +0000
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzsJG-0006c5-91
 for linux-riscv@lists.infradead.org; Tue, 20 Aug 2019 00:47:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1566262058; x=1597798058;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=K72wUoRoiZYo201g6jH46rLjKbp7qhzsddIk/Fsw3jQ=;
 b=eE0wVa7whKcASodB5aXVn7vrFPS0V/vRCmaywMoHaBLyknke63mSDa5X
 3srso1bgOyvGceZKs+H1Fta38eAP0kuplYdgsnR4+5UdPyBO2ExB5EHXz
 RhPdMqSpIjDgyK/qklpEMbr3DP6QaBZ7/tHo7KR4h9qbczMtDE4PDd936
 gDntcj8sti0FKAFU3FSzKSzh8Wgy7dA1ChqGEn3PgBdcuRNEMyKAEwKck
 lk7BZ9xYZRu1NIfEkibXJaK5Uhn/BRo2O1BbjJiNIs3e6yWvHq6TxI6af
 8KqElv/B1ukkZkPLMpeDUUyGxPNUO9T1d63eekXFis/SCxJTvIIqv/Cff A==;
IronPort-SDR: 4auz2j3zTDVJEtq9PIMIVQyrRY+SzPDJVes4a8RNuKWMaxn1Gx8k19QE9ILxGsX26x0AIn4jEP
 SJNEwF+NfUGEXpyIXabK+nOeZrNKhs12/9U2i6TP6jPkCyIL/VUilZkdyk+48fcddRyNfaTqxA
 ixNIVgSCUp4D0TrfyQJBLWHAs0xCyh7aUn8FiLWCs3S+dd05fr9i36imAXeel/zou38GRgyP06
 gG6uX8HUTFuyz0JRRa1NXu2VK7L7gwrG6CDbhIRUQeFyiA66WmMeOSnGb0pApKneQIGfniqdk5
 GvE=
X-IronPort-AV: E=Sophos;i="5.64,406,1559491200"; d="scan'208";a="222749664"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 20 Aug 2019 08:47:34 +0800
IronPort-SDR: zgA/rMHvRqZ6zp5HS1V86XyMzRqE4Io3Es1F5mUA0qIFWu6TL4PCp91OYzfWJaJ1U9E3hzoJnp
 gdVK5DnGeLFKH4neHKAFiXIqGJG4o6IGQqRrdctaKjJkmX5D/mjKvGelKb2H8wjATSvCnUIhoB
 KjtZdY18CycIdFJqN6aUUHtAWWPMWSECJurXx1rSk1JnIWEAqJrPvn6WWb4LW8Jo+VKBdFIZJG
 e35Xpk1nqgeDyYxRuABOdla1h00bES2G9NqhwiX2Zoxy+293X5xXKTWxbXo5TtuMiMNCxcohvh
 RuFiaYn0hpsl7iCpvwF90XtE
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2019 17:44:59 -0700
IronPort-SDR: QUGX6k+unjABn9xPyz6wOgy7JlhI2PTBquwhT+WcUUrHHUCjrc6UH7ZC1m4QWhHBegR2fG1KcJ
 q+dCZBr1btcfDxqHePphKryzHyKAJFrUyfc58C2a18MN1Xan3qlYGclN3daB4FmUYmFaUr6YNG
 wiba5lVIp6CT8RxMyisHZkzGp3PPQDVoYx09EzcFVLmwLxw+s03Uqzw7+n1sVVlZ8QWwj7TxL1
 0mo4dgELx9Wa7YG5zH18uTxNGNQqtiCYTCUwvuzMssNyTyi+tLNzgsK1w41Af/LyQ83VLSzsHC
 kW8=
Received: from jedi-01.sdcorp.global.sandisk.com (HELO
 jedi-01.int.fusionio.com) ([10.11.143.218])
 by uls-op-cesaip01.wdc.com with ESMTP; 19 Aug 2019 17:47:35 -0700
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org
Subject: [v2 PATCH] RISC-V: Optimize tlb flush path.
Date: Mon, 19 Aug 2019 17:47:35 -0700
Message-Id: <20190820004735.18518-1-atish.patra@wdc.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_174738_454110_179D53FA 
X-CRM114-Status: GOOD (  10.64  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.141.245 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Anup Patel <anup@brainfault.org>,
 Palmer Dabbelt <palmer@sifive.com>, "hch@infradead.org" <hch@infradead.org>,
 Atish Patra <atish.patra@wdc.com>, Andreas Schwab <schwab@linux-m68k.org>,
 Paul Walmsley <paul.walmsley@sifive.com>, linux-riscv@lists.infradead.org,
 Allison Randal <allison@lohutok.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

In RISC-V, tlb flush happens via SBI which is expensive.
If the target cpumask contains a local hartid, some cost
can be saved by issuing a local tlb flush as we do that
in OpenSBI anyways. There is also no need of SBI call if
cpumask is empty.

Do a local flush first if current cpu is present in cpumask.
Invoke SBI call only if target cpumask contains any cpus
other than local cpu.

Signed-off-by: Atish Patra <atish.patra@wdc.com>
---
 arch/riscv/include/asm/tlbflush.h | 37 ++++++++++++++++++++++++++-----
 1 file changed, 31 insertions(+), 6 deletions(-)

diff --git a/arch/riscv/include/asm/tlbflush.h b/arch/riscv/include/asm/tlbflush.h
index b5e64dc19b9e..3f9cd17b5402 100644
--- a/arch/riscv/include/asm/tlbflush.h
+++ b/arch/riscv/include/asm/tlbflush.h
@@ -8,6 +8,7 @@
 #define _ASM_RISCV_TLBFLUSH_H
 
 #include <linux/mm_types.h>
+#include <linux/sched.h>
 #include <asm/smp.h>
 
 /*
@@ -42,20 +43,44 @@ static inline void flush_tlb_range(struct vm_area_struct *vma,
 
 #include <asm/sbi.h>
 
-static inline void remote_sfence_vma(struct cpumask *cmask, unsigned long start,
-				     unsigned long size)
+static void __riscv_flush_tlb(struct cpumask *cmask, unsigned long start,
+			      unsigned long size)
 {
 	struct cpumask hmask;
+	unsigned int hartid;
+	unsigned int cpuid;
 
 	cpumask_clear(&hmask);
+
+	if (!cmask) {
+		riscv_cpuid_to_hartid_mask(cpu_online_mask, &hmask);
+		goto issue_sfence;
+	}
+
+	cpuid = get_cpu();
+	if (cpumask_test_cpu(cpuid, cmask)) {
+		/* Save trap cost by issuing a local tlb flush here */
+		if ((start == 0 && size == -1) || (size > PAGE_SIZE))
+			local_flush_tlb_all();
+		else if (size == PAGE_SIZE)
+			local_flush_tlb_page(start);
+	}
+	if (cpumask_any_but(cmask, cpuid) >= nr_cpu_ids)
+		goto done;
+
 	riscv_cpuid_to_hartid_mask(cmask, &hmask);
+	hartid = cpuid_to_hartid_map(cpuid);
+	cpumask_clear_cpu(hartid, &hmask);
+
+issue_sfence:
 	sbi_remote_sfence_vma(hmask.bits, start, size);
+done:
+	put_cpu();
 }
 
-#define flush_tlb_all() sbi_remote_sfence_vma(NULL, 0, -1)
-
+#define flush_tlb_all() __riscv_flush_tlb(NULL, 0, -1)
 #define flush_tlb_range(vma, start, end) \
-	remote_sfence_vma(mm_cpumask((vma)->vm_mm), start, (end) - (start))
+	__riscv_flush_tlb(mm_cpumask((vma)->vm_mm), start, (end) - (start))
 
 static inline void flush_tlb_page(struct vm_area_struct *vma,
 				  unsigned long addr) {
@@ -63,7 +88,7 @@ static inline void flush_tlb_page(struct vm_area_struct *vma,
 }
 
 #define flush_tlb_mm(mm)				\
-	remote_sfence_vma(mm_cpumask(mm), 0, -1)
+	__riscv_flush_tlb(mm_cpumask(mm), 0, -1)
 
 #endif /* CONFIG_SMP */
 
-- 
2.21.0


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
