Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC6101C93A6
	for <lists+linux-riscv@lfdr.de>; Thu,  7 May 2020 17:07:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=c6/BR/i8VOx6HR3JBwth0UbTrEKAQml9BdAoCe5e9jM=; b=ChB6h9Dsm81u9F
	UNNkqGNaqPGOntC2+jIWV3/Om+3MeU5/LJbvprl5xcyX9TwGreMtpozJMDaUw/rKzvXUjo92Gt34H
	R9S91/ImkOPJT7P0bq4IB5iGf6o97Jnoe4Fgfr4jr2i483dGjwOzBqMCWOb8rqLOgNqgr8EaY5zd0
	/tslOQcokESWInySw7UD4jWmzeQAF6wdVTn7SxIZcmp/njZRoWAN4pvgB3AqL8JmSdgLDmTg9d/18
	m4M6W0RMocw6BrQr2ws2JedNkY/xmnzRDM5UJmiXSVvmIbkNeUW0YCoRn3cShzakGqqG+61qhJ5dg
	uBhojrsZCANpZuiOi0lg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWi7A-00047w-FN; Thu, 07 May 2020 15:07:08 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWi1U-0005CQ-LN
 for linux-riscv@lists.infradead.org; Thu, 07 May 2020 15:01:23 +0000
Received: from DGGEMS403-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id A6F3F9C4D0216598D07B;
 Thu,  7 May 2020 23:01:00 +0800 (CST)
Received: from localhost.localdomain.localdomain (10.175.113.25) by
 DGGEMS403-HUB.china.huawei.com (10.3.19.203) with Microsoft SMTP Server id
 14.3.487.0; Thu, 7 May 2020 23:00:53 +0800
From: Kefeng Wang <wangkefeng.wang@huawei.com>
To: Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt
 <palmer@dabbelt.com>, <linux-kernel@vger.kernel.org>,
 <linux-riscv@lists.infradead.org>
Subject: [PATCH -next] riscv: perf_event: Make some funciton static
Date: Thu, 7 May 2020 23:04:44 +0800
Message-ID: <20200507150445.174390-1-wangkefeng.wang@huawei.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-Originating-IP: [10.175.113.25]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_080117_277657_5E12314C 
X-CRM114-Status: UNSURE (   7.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [45.249.212.191 listed in wl.mailspike.net]
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
Cc: Kefeng Wang <wangkefeng.wang@huawei.com>, Alan Kao <alankao@andestech.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Fixes the following warning detected when running make with W=1,
../arch/riscv/kernel/perf_event.c:150:5: warning: no previous prototype for ‘riscv_map_cache_decode’ [-Wmissing-prototypes]
 int riscv_map_cache_decode(u64 config, unsigned int *type,
     ^~~~~~~~~~~~~~~~~~~~~~
../arch/riscv/kernel/perf_event.c:345:13: warning: no previous prototype for ‘riscv_base_pmu_handle_irq’ [-Wmissing-prototypes]
 irqreturn_t riscv_base_pmu_handle_irq(int irq_num, void *dev)
             ^~~~~~~~~~~~~~~~~~~~~~~~~
../arch/riscv/kernel/perf_event.c:364:6: warning: no previous prototype for ‘release_pmc_hardware’ [-Wmissing-prototypes]
 void release_pmc_hardware(void)
      ^~~~~~~~~~~~~~~~~~~~
../arch/riscv/kernel/perf_event.c:467:12: warning: no previous prototype for ‘init_hw_perf_events’ [-Wmissing-prototypes]
 int __init init_hw_perf_events(void)
            ^~~~~~~~~~~~~~~~~~~

Cc: Alan Kao <alankao@andestech.com>
Signed-off-by: Kefeng Wang <wangkefeng.wang@huawei.com>
---
 arch/riscv/kernel/perf_event.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/riscv/kernel/perf_event.c b/arch/riscv/kernel/perf_event.c
index 91626d9ae5f2..c835f0362d94 100644
--- a/arch/riscv/kernel/perf_event.c
+++ b/arch/riscv/kernel/perf_event.c
@@ -147,7 +147,7 @@ static int riscv_map_hw_event(u64 config)
 	return riscv_pmu->hw_events[config];
 }
 
-int riscv_map_cache_decode(u64 config, unsigned int *type,
+static int riscv_map_cache_decode(u64 config, unsigned int *type,
 			   unsigned int *op, unsigned int *result)
 {
 	return -ENOENT;
@@ -342,7 +342,7 @@ static void riscv_pmu_del(struct perf_event *event, int flags)
 
 static DEFINE_MUTEX(pmc_reserve_mutex);
 
-irqreturn_t riscv_base_pmu_handle_irq(int irq_num, void *dev)
+static irqreturn_t riscv_base_pmu_handle_irq(int irq_num, void *dev)
 {
 	return IRQ_NONE;
 }
@@ -361,7 +361,7 @@ static int reserve_pmc_hardware(void)
 	return err;
 }
 
-void release_pmc_hardware(void)
+static void release_pmc_hardware(void)
 {
 	mutex_lock(&pmc_reserve_mutex);
 	if (riscv_pmu->irq >= 0)
@@ -464,7 +464,7 @@ static const struct of_device_id riscv_pmu_of_ids[] = {
 	{ /* sentinel value */ }
 };
 
-int __init init_hw_perf_events(void)
+static int __init init_hw_perf_events(void)
 {
 	struct device_node *node = of_find_node_by_type(NULL, "pmu");
 	const struct of_device_id *of_id;
-- 
2.26.2


