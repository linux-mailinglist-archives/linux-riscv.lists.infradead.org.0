Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0192DEB34
	for <lists+linux-riscv@lfdr.de>; Mon, 29 Apr 2019 21:58:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FTmhNIlBINsfPpnChCbtUf4pkFGj5m31z06SWy7Zp9s=; b=gFHBQhcY3p9OSz
	Wbl8ivL5YTz0mGWb7KU2PM8G2CBUKPNpxHxGFwrXxBTqQi9JSiJU2Mv6gfJClZq3EZAHRHz+CqKsK
	2Ets55YVMZ1ske9E/2DLGiY8XGRO47yTIJSXq4Lzj9LvnbcUDXVfP8jl+ZG/Cqszxngu3M6UTAeHt
	S8anXLO293chhd9CxAJEYnQxfpou4Cg149l3zTpgbPqgChPTA8r7/icrG0yT/uZuksuTh1f7LTtN5
	0yLML5bubGrsu/n92RYrp2lRyAIkxKJAouHCPdIFkiofGuQ4aig3Z9JEcryYUV5Dvg0jgD0TwjXLv
	vR08K8crXGAAoSSRjAcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLCPr-0003le-Te; Mon, 29 Apr 2019 19:58:19 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLCPl-0003fb-B0
 for linux-riscv@lists.infradead.org; Mon, 29 Apr 2019 19:58:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1556567912; x=1588103912;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=6yEgNpC7nkfK5Gt64tHVR1TWf8LgYKpoRswHlGybH9k=;
 b=nI2i9zTC4XS2NIppl/8dwYsHDI7tchL89/4UJ4hvOrkFgSkTOGS4UcmW
 3okqIKxXWaukGxvaIwV+cbfkZkO8kQVTREbTVZRA+fW7m5/ZIInQHXV2b
 rlQvS353yVN7m75My5U6pM+RNOLax6e5s+OGdYYr2iay2kpJNAuE/+UPp
 nYrS/6018yp+oMXghlYH1rPHH45Zujt+inbN8iDqbSNn6r41QhPzFaZXZ
 QMlZJNGWrWh8HEMFTEfccaK8hIh9Jk9K2MGcfVPihM0nBvNYOp0SCt5Lv
 UHVb73AKQcI50HP/XLKNaFjtTDfIhAcwRq2X30DpAEu1XaZ7qFRXzEvKH Q==;
X-IronPort-AV: E=Sophos;i="5.60,410,1549900800"; d="scan'208";a="206289676"
Received: from h199-255-45-15.hgst.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 30 Apr 2019 03:58:31 +0800
IronPort-SDR: WpiGTye5GSe8p6k1Jl8vPAXxUb+e8v6fhK3XkxNAnZJ/NtxcbtzXVfYc0/u8/gx4d8tnlyouBj
 WK7MYnhD9BL9h4vEFc0VcsvNV7+lfmWyRd9WtS4Oxek1f0jeQgaaUKzQTuQ9rYZBvo3jbAVL7B
 G8CW1k0oQhIdRscL+dqQmP0luEANdC6ak8KFwXX0kdz9FIXAY3kbY9wIxQT7ExWH/Oqn0Dgofb
 RZbi2tvunc9f4v5EH3Yzm/EbNm1A+su9uwpvugpijtGueHFn1nEigSc6B+DcCmEZo6f8oeBbCa
 RBcMueiP/e37GVTvGk6fvHf6
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep02.wdc.com with ESMTP; 29 Apr 2019 12:36:43 -0700
IronPort-SDR: UFWPaNgFKiyS+kM5SJyaKOUbUteycQhA9GHu35ZdcqxcIAwpMq8jMx6cNKm2y61EvnKQIFA4g6
 adyt71wuZeOe/j/KIJZpFB2cH7aaoEu+AewDQCjkARDNK6tKK3Ss/l+or3zUgnpe45r8pEQkIk
 Y4X8GvyOZtE6EMtIew7DWbZqn+xPD9yVsW1Tg3JnbklQSamvfjNHbVdnBrVnlis/LKUG2/sMoI
 J22J0Ee7szjf8iEwrssNPsTdXyQfMfR6jgh0cXur2FRS7yIgCImTKqhsa+TrLQ0cRGszY6tVQd
 xPQ=
Received: from jedi-01.sdcorp.global.sandisk.com (HELO
 jedi-01.int.fusionio.com) ([10.11.143.218])
 by uls-op-cesaip01.wdc.com with ESMTP; 29 Apr 2019 12:58:12 -0700
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v2 3/3] RISC-V: Update tlb flush counters
Date: Mon, 29 Apr 2019 12:57:59 -0700
Message-Id: <20190429195759.18330-4-atish.patra@wdc.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190429195759.18330-1-atish.patra@wdc.com>
References: <20190429195759.18330-1-atish.patra@wdc.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_125813_446304_4F5F5D5F 
X-CRM114-Status: GOOD (  12.67  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.143.124 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Christoph Hellwig <hch@infradead.org>, Albert Ou <aou@eecs.berkeley.edu>,
 Thomas Gleixner <tglx@linutronix.de>, Kees Cook <keescook@chromium.org>,
 Changbin Du <changbin.du@intel.com>, Anup Patel <anup@brainfault.org>,
 Palmer Dabbelt <palmer@sifive.com>,
 "maintainer:X86 ARCHITECTURE 32-BIT AND 64-BIT" <x86@kernel.org>,
 linux-mm@kvack.org, Atish Patra <atish.patra@wdc.com>,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 Vlastimil Babka <vbabka@suse.cz>, Gary Guo <gary@garyguo.net>,
 "H. Peter Anvin" <hpa@zytor.com>, Andrew Morton <akpm@linux-foundation.org>,
 linux-riscv@lists.infradead.org,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

The TLB flush counters under vmstat seems to be very helpful while
debugging TLB flush performance in RISC-V.

Update the counters in every TLB flush methods respectively.

Signed-off-by: Atish Patra <atish.patra@wdc.com>
---
 arch/riscv/include/asm/tlbflush.h |  5 +++++
 arch/riscv/mm/tlbflush.c          | 12 ++++++++++++
 2 files changed, 17 insertions(+)

diff --git a/arch/riscv/include/asm/tlbflush.h b/arch/riscv/include/asm/tlbflush.h
index 29a780ca232a..19779a083f52 100644
--- a/arch/riscv/include/asm/tlbflush.h
+++ b/arch/riscv/include/asm/tlbflush.h
@@ -9,6 +9,7 @@
 #define _ASM_RISCV_TLBFLUSH_H
 
 #include <linux/mm_types.h>
+#include <linux/vmstat.h>
 
 /*
  * Flush entire local TLB.  'sfence.vma' implicitly fences with the instruction
@@ -16,11 +17,13 @@
  */
 static inline void local_flush_tlb_all(void)
 {
+	count_vm_tlb_event(NR_TLB_LOCAL_FLUSH_ALL);
 	__asm__ __volatile__ ("sfence.vma" : : : "memory");
 }
 
 static inline void local_flush_tlb_mm(struct mm_struct *mm)
 {
+	count_vm_tlb_event(NR_TLB_LOCAL_FLUSH_ALL);
 	/* Flush ASID 0 so that global mappings are not affected */
 	__asm__ __volatile__ ("sfence.vma x0, %0" : : "r" (0) : "memory");
 }
@@ -28,6 +31,7 @@ static inline void local_flush_tlb_mm(struct mm_struct *mm)
 static inline void local_flush_tlb_page(struct vm_area_struct *vma,
 	unsigned long addr)
 {
+	count_vm_tlb_event(NR_TLB_LOCAL_FLUSH_ONE);
 	__asm__ __volatile__ ("sfence.vma %0, %1"
 			      : : "r" (addr), "r" (0)
 			      : "memory");
@@ -35,6 +39,7 @@ static inline void local_flush_tlb_page(struct vm_area_struct *vma,
 
 static inline void local_flush_tlb_kernel_page(unsigned long addr)
 {
+	count_vm_tlb_event(NR_TLB_LOCAL_FLUSH_ONE);
 	__asm__ __volatile__ ("sfence.vma %0" : : "r" (addr) : "memory");
 }
 
diff --git a/arch/riscv/mm/tlbflush.c b/arch/riscv/mm/tlbflush.c
index ceee76f14a0a..8072d7da32bb 100644
--- a/arch/riscv/mm/tlbflush.c
+++ b/arch/riscv/mm/tlbflush.c
@@ -4,6 +4,8 @@
  */
 
 #include <linux/mm.h>
+#include <linux/vmstat.h>
+#include <linux/cpumask.h>
 #include <asm/sbi.h>
 
 #define SFENCE_VMA_FLUSH_ALL ((unsigned long) -1)
@@ -110,6 +112,7 @@ static void ipi_remote_sfence_vma(void *info)
 	unsigned long size = data->size;
 	unsigned long i;
 
+	count_vm_tlb_event(NR_TLB_REMOTE_FLUSH_RECEIVED);
 	if (size == SFENCE_VMA_FLUSH_ALL) {
 		local_flush_tlb_all();
 	}
@@ -129,6 +132,8 @@ static void ipi_remote_sfence_vma_asid(void *info)
 	unsigned long size = data->size;
 	unsigned long i;
 
+	count_vm_tlb_event(NR_TLB_REMOTE_FLUSH_RECEIVED);
+	/* Flush entire MM context */
 	if (size == SFENCE_VMA_FLUSH_ALL) {
 		__asm__ __volatile__ ("sfence.vma x0, %0"
 				      : : "r" (asid)
@@ -158,6 +163,13 @@ static void remote_sfence_vma(unsigned long start, unsigned long size)
 static void remote_sfence_vma_asid(cpumask_t *mask, unsigned long start,
 				   unsigned long size, unsigned long asid)
 {
+	int cpuid = smp_processor_id();
+
+	if (cpumask_equal(mask, cpumask_of(cpuid)))
+		count_vm_tlb_event(NR_TLB_LOCAL_FLUSH_ALL);
+	else
+		count_vm_tlb_event(NR_TLB_REMOTE_FLUSH);
+
 	if (tlbi_ipi) {
 		struct tlbi info = {
 			.start = start,
-- 
2.21.0


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
