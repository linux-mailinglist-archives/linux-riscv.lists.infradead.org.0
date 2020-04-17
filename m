Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9C961ADCF8
	for <lists+linux-riscv@lfdr.de>; Fri, 17 Apr 2020 14:11:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=OW/veivYz8ZKWPuu2zYUbg/pdGGB7HhUQV0WhWZdFOc=; b=LqOj02MXAtaXMG7/u5fy0K09q
	LyPhS398lBIQReMvgOf4qvJENdeoyC63P6cBYfqcOhVd1TGGMCC17w66/xhE2AXY2axIJJGCvQMNq
	DyIABoJXxWBy0SATYYnGe3qpZDmXgpxd2f3isWEiqAbtgZnWje/aDMO2ltc3ndBY2cOpNg7OFRlkO
	v29nJ1SAdrHILdy8GXiCUq0jXW0Eee1acySKxaBK5l0wvwUcgVlTgvBg8EMleQ/+vwX0xU+0Y7ODd
	DbE6Uur4GLM2ZKZgTTTWmgF1WHY2IzCQENYr4nzqgzaz18skIyinuf/yapCvKwCH2nST2iHsMVRAs
	Q6f0RpETQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPPpm-0002fZ-6H; Fri, 17 Apr 2020 12:11:02 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPPpg-0002cf-LF
 for linux-riscv@lists.infradead.org; Fri, 17 Apr 2020 12:10:58 +0000
Received: from DGGEMS411-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 95E8E8E4E9CB12F4DE12;
 Fri, 17 Apr 2020 20:10:44 +0800 (CST)
Received: from localhost.localdomain.localdomain (10.175.113.25) by
 DGGEMS411-HUB.china.huawei.com (10.3.19.211) with Microsoft SMTP Server id
 14.3.487.0; Fri, 17 Apr 2020 20:10:37 +0800
From: Kefeng Wang <wangkefeng.wang@huawei.com>
To: <atish.patra@wdc.com>, Paul Walmsley <paul.walmsley@sifive.com>, "Palmer
 Dabbelt" <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
 <linux-kernel@vger.kernel.org>, <linux-riscv@lists.infradead.org>
Subject: [PATCH 3/3] riscv: sbi: Fix undefined reference to sbi_shutdown
Date: Fri, 17 Apr 2020 20:12:22 +0800
Message-ID: <20200417121222.156422-3-wangkefeng.wang@huawei.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200417121222.156422-1-wangkefeng.wang@huawei.com>
References: <20200417121222.156422-1-wangkefeng.wang@huawei.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.175.113.25]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_051056_864308_E2897FF6 
X-CRM114-Status: UNSURE (   9.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Kefeng Wang <wangkefeng.wang@huawei.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

There is no shutdown call in SBI v0.2, only set pm_power_off
when RISCV_SBI_V01 enabled to fix following build error,

riscv64-linux-ld: arch/riscv/kernel/sbi.o: in function `sbi_power_off':
sbi.c:(.text+0xe): undefined reference to `sbi_shutdown

Fixes: efca13989250 ("RISC-V: Introduce a new config for SBI v0.1")
Signed-off-by: Kefeng Wang <wangkefeng.wang@huawei.com>
---
 arch/riscv/kernel/sbi.c | 13 ++++++++-----
 1 file changed, 8 insertions(+), 5 deletions(-)

diff --git a/arch/riscv/kernel/sbi.c b/arch/riscv/kernel/sbi.c
index 62b10a16c8d7..f383ef5672b2 100644
--- a/arch/riscv/kernel/sbi.c
+++ b/arch/riscv/kernel/sbi.c
@@ -167,6 +167,11 @@ static int __sbi_rfence_v01(int fid, const unsigned long *hart_mask,
 
 	return result;
 }
+
+static void sbi_set_power_off(void)
+{
+	pm_power_off = sbi_shutdown;
+}
 #else
 static void __sbi_set_timer_v01(uint64_t stime_value)
 {
@@ -191,6 +196,8 @@ static int __sbi_rfence_v01(int fid, const unsigned long *hart_mask,
 
 	return 0;
 }
+
+static void sbi_set_power_off(void) {}
 #endif /* CONFIG_RISCV_SBI_V01 */
 
 static void __sbi_set_timer_v02(uint64_t stime_value)
@@ -540,16 +547,12 @@ static inline long sbi_get_firmware_version(void)
 	return __sbi_base_ecall(SBI_EXT_BASE_GET_IMP_VERSION);
 }
 
-static void sbi_power_off(void)
-{
-	sbi_shutdown();
-}
 
 int __init sbi_init(void)
 {
 	int ret;
 
-	pm_power_off = sbi_power_off;
+	sbi_set_power_off();
 	ret = sbi_get_spec_version();
 	if (ret > 0)
 		sbi_spec_version = ret;
-- 
2.20.1


