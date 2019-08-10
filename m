Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54DEF8878A
	for <lists+linux-riscv@lfdr.de>; Sat, 10 Aug 2019 03:43:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=v/teo+HOLyUliakCHIXowGtE+d53oBPbM9MoO9vazp8=; b=d9fLOpmBwwUs+N
	EAUbmZEA0FAR0DPx9PZT4rxkP8VExR9JJExsyiJCqlwq6l2Xb2xWNeQvfRxVoGNQUmJDszgTogdb5
	boJNKqGU4bIGpNmyhjv2Y0SZB3wXpTvA8fZMihlh7yUkA0lpaly073+M450znOLnO1024MrIY/wVT
	q9LHLjz3VDOM2zMBmU2E6k3IA+dueoXSwnx+kAztgYwNM6WzVW2SjVTllNU7wU2diwBjOwP8914Zf
	p8BWpSH/nGTnVcuPakkSMeQ1tj456R5d0GtxQUvGHkQrNGTpq/IMYviP18LwyWFL0Ty/PA+u/I0f4
	1v8f7igv6jlFVrEH1djQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hwGPg-0007Ko-M6; Sat, 10 Aug 2019 01:43:20 +0000
Received: from esa3.hgst.iphmx.com ([216.71.153.141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hwGPd-0007KT-7n
 for linux-riscv@lists.infradead.org; Sat, 10 Aug 2019 01:43:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1565401398; x=1596937398;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ceojetfl5xNGShX/CCMjHmrFo8vU8SDmwPMikCGqbgM=;
 b=J4on+x1UhEoRfbQCBn669X6VwQooRwyYWtl0QtlQ4JoDl0w3SWZI4Z8O
 TFtou8COPrzLi+UgTndUKncHr9vPv71rnJ/eIzCTq8ZblXnCfJOaW2/HB
 sqj9iVNJbjoW85NplVh3NdC4UU5mU4BXmjz7iTfonIZsmxhdhqUDhIsPU
 BzojG0uphDQr2K3uB1LPec3sw/cNuMrd6Chmo5whinc1e5q+VxDJud1gq
 kh8zpihBLBpDjYiydadouhV1wEuByhHzoBgaodQMvBNqq91YIiB2+1XjB
 w22Jx2kBsKYEhv5ZaRKcoRTB9OFKiDYw08p2FpzwZyl7WFphXSYO5hsYX A==;
IronPort-SDR: qAhPSZ7pN1LRupi7zN2l+fYB5MR5u0wnDghx6hlb2A5sJZHlMlQW2EPamfg/4zsfqqXHJcqbxx
 6KcozpKpfysf//qpCC+DsCN+4wfahAZzhanCLL+XmarEFpoq4uYOCnHm7kJ9AdC6qdijL1B/nK
 y3BNAS/ijvR32+grFXqPzUSEWME2TjI4nMbDh1E6ogjx79ndzTvbWZVTN1NHQpnm5S0dCaz9/c
 NLxntsurwdTWiaQwKuqmlNP9W7Y06khUZYu4Y8w9asjs3GVhoWjOFSSliTkpjwuxKUHcY5EQ1F
 oqw=
X-IronPort-AV: E=Sophos;i="5.64,367,1559491200"; d="scan'208";a="120142157"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 10 Aug 2019 09:43:11 +0800
IronPort-SDR: 3wY3H2G0vw1HoKPdmyyO+AE+8NX+xSWwfp+ME8Ixjl08IDWh4CKkOohBylRnfn87n2UOmvvLk6
 zthTg9/3op2chThNj5ctc1oeqoKKGwmNsymGY3LLNMEPEnVBP3rKvFe4ctwd6A8+e2Zk45i3Ce
 depJUmSSawjInUzHcct9sVOxS/RRaJ3gV1yMLuOqunhcOiVUBisycd3+L/caQLqgVc7Sj+dbAT
 v4KZjwPU+X7lga+2BuLBhx1dJYD9y50ivQn6D8cjPoZQxfDy4MxF2QBmxsppH3jyKOE6BWlOkn
 ejPLC3ua6n3HTnTJ9uOK3HYB
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Aug 2019 18:40:52 -0700
IronPort-SDR: 5cO7xlMPnvqQEdneKaDfxVLumwgrPiNAymBKl7/ACH5XG2lPhxIzijuIs4b7a0bV3rgy0faDcB
 ebce1EgaxSH8raP3yBgpez9GcF0InYakqHxD/VnIKsghZ0zhQb1Iy8k3difYzr8N0o9J73R+Hj
 Xf8buN3qZImFqAxYfjldxM5/zUq/R8JpefLbstNZoTZv4Y1bsxC8urlyZjaG5wnlRDW7F5aLiP
 sMl2s/DI9qwPBxifEOubuhQ17pRYq+yEeDa9/b/prcOdTS6FQCK0zJknAIJehYGbtMe8TlYS6U
 Vaw=
Received: from jedi-01.sdcorp.global.sandisk.com (HELO
 jedi-01.int.fusionio.com) ([10.11.143.218])
 by uls-op-cesaip02.wdc.com with ESMTP; 09 Aug 2019 18:43:10 -0700
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH] RISC-V: Issue a local tlb flush if possible.
Date: Fri,  9 Aug 2019 18:43:09 -0700
Message-Id: <20190810014309.20838-1-atish.patra@wdc.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_184317_400676_BA58D79D 
X-CRM114-Status: GOOD (  10.45  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.141 listed in list.dnswl.org]
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
Cc: Albert Ou <aou@eecs.berkeley.edu>,
 Alexios Zavras <alexios.zavras@intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Palmer Dabbelt <palmer@sifive.com>, Atish Patra <atish.patra@wdc.com>,
 Anup Patel <anup.patel@wdc.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv@lists.infradead.org, Allison Randal <allison@lohutok.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

In RISC-V, tlb flush happens via SBI which is expensive.
If the target cpumask contains a local hartid, some cost
can be saved by issuing a local tlb flush as we do that
in OpenSBI anyways.

Signed-off-by: Atish Patra <atish.patra@wdc.com>
---
 arch/riscv/include/asm/tlbflush.h | 33 +++++++++++++++++++++++++++----
 1 file changed, 29 insertions(+), 4 deletions(-)

diff --git a/arch/riscv/include/asm/tlbflush.h b/arch/riscv/include/asm/tlbflush.h
index 687dd19735a7..b32ba4fa5888 100644
--- a/arch/riscv/include/asm/tlbflush.h
+++ b/arch/riscv/include/asm/tlbflush.h
@@ -8,6 +8,7 @@
 #define _ASM_RISCV_TLBFLUSH_H
 
 #include <linux/mm_types.h>
+#include <linux/sched.h>
 #include <asm/smp.h>
 
 /*
@@ -46,14 +47,38 @@ static inline void remote_sfence_vma(struct cpumask *cmask, unsigned long start,
 				     unsigned long size)
 {
 	struct cpumask hmask;
+	struct cpumask tmask;
+	int cpuid = smp_processor_id();
 
 	cpumask_clear(&hmask);
-	riscv_cpuid_to_hartid_mask(cmask, &hmask);
-	sbi_remote_sfence_vma(hmask.bits, start, size);
+	cpumask_clear(&tmask);
+
+	if (cmask)
+		cpumask_copy(&tmask, cmask);
+	else
+		cpumask_copy(&tmask, cpu_online_mask);
+
+	if (cpumask_test_cpu(cpuid, &tmask)) {
+		/* Save trap cost by issuing a local tlb flush here */
+		if ((start == 0 && size == -1) || (size > PAGE_SIZE))
+			local_flush_tlb_all();
+		else if (size == PAGE_SIZE)
+			local_flush_tlb_page(start);
+		cpumask_clear_cpu(cpuid, &tmask);
+	} else if (cpumask_empty(&tmask)) {
+		/* cpumask is empty. So just do a local flush */
+		local_flush_tlb_all();
+		return;
+	}
+
+	if (!cpumask_empty(&tmask)) {
+		riscv_cpuid_to_hartid_mask(&tmask, &hmask);
+		sbi_remote_sfence_vma(hmask.bits, start, size);
+	}
 }
 
-#define flush_tlb_all() sbi_remote_sfence_vma(NULL, 0, -1)
-#define flush_tlb_page(vma, addr) flush_tlb_range(vma, addr, 0)
+#define flush_tlb_all() remote_sfence_vma(NULL, 0, -1)
+#define flush_tlb_page(vma, addr) flush_tlb_range(vma, addr, (addr) + PAGE_SIZE)
 #define flush_tlb_range(vma, start, end) \
 	remote_sfence_vma(mm_cpumask((vma)->vm_mm), start, (end) - (start))
 #define flush_tlb_mm(mm) \
-- 
2.21.0


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
