Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A969077260
	for <lists+linux-riscv@lfdr.de>; Fri, 26 Jul 2019 21:47:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=NsfKPTfwge7jhJN091T3vnUhr559l8VME9gyZgMbzmA=; b=kDWduHE+aZtwww
	iFJdTj3oOsAdof1blK5VOPFSzQ3onAK5K+SVMG5gwt9lyS8F4gb1VM8RjGpW/J0NCrYdvQE/WyDBD
	rD6B5PsMAluavw8RBFC6b47+zc2Lita+gRtvJOQqQk2S87Fus7ZXY+NEFGhYbYfCHWZy5MXNYnicf
	3gKhau+B2tJ6iFDj08UsBsNdXfcdvhNM+6fqVLCoiYt9r3pbXqlU5gQG7lz/Qh8SNHr6GNjHHHBgy
	DwiHd03v+ksuvs8Lb2uj4zdCNLFrNdRzLHTPXRUWB0iO+KSPpOsN7YtF1lsNtYT06f1gQhq1SN47/
	NCtLJArHyUf1TdyPLwYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hr6B6-00022P-UY; Fri, 26 Jul 2019 19:46:56 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hr6B3-00021G-Lh
 for linux-riscv@lists.infradead.org; Fri, 26 Jul 2019 19:46:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1564170414; x=1595706414;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=w14oJ81u6w2W34wdULaaio4UuiCV/eOoDOsEOvwCQng=;
 b=IAOxudBk/xHMi3rQmXuQv3ocXKMe7vmnkpgCvCUEeBwRUttSUB9VvDTK
 SlnuIao8zQBrHsVQW4fIfC+dZojWkHb1k8q/AkpTAmgHU/ceD3a593bi8
 nmpAFE6LzwjkrWeY1Fnz7arX/DENop8/RygkAcEU8F7ZfwQMWrCE5SAEe
 xGR5yzcW8w+gy8E0hDd19iVcEDxt12f3prLcCglWrY1mLElNKXk23RtMS
 61kDScVG0/NFAR16vILFHqfFOFuBd4OueJp08U1Ea7DwOjg4dEzNwG1JF
 QwT+eG7FbL/QmIYeKg1Sr1gGmy/Aag2Q1sUvxzD9E6mhjJk912xs2Y4xD g==;
IronPort-SDR: 0vSizvsf25w5Qw5a+9weFXWkmxBXteFQSiTTWtS45/R5ZDKnvxRrSyJXRw6PAqo8MJDVMfV5jl
 pBhpiD7YV55v6abLv8VqVLMdrv21A2zX8pEQeTHg7yZsX9bStCNWy7DLAEsfzJjIZRH+z6Vs9N
 V4OxJ9qWflW8DP9UlJrZzfd+c7DDPaCXVtIrbERirg1DIVOapJJmWEC6pd5OYgsPKJbr5y+UQ2
 m4qgxpUCjJb2xeS86J89tWC6MMK5ecJTyZcMPhwobNhY2cwq2Fp1gAb4k3KVRHPME/iFV4kQ+U
 SNU=
X-IronPort-AV: E=Sophos;i="5.64,312,1559491200"; d="scan'208";a="115831167"
Received: from uls-op-cesaip02.wdc.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 27 Jul 2019 03:46:48 +0800
IronPort-SDR: InJpmhimfKxGYRwgSMB7vaic6X6qExt6jU34PnxwWUoPBnurruMYFrJjQYdLYeD7blDblN7DsJ
 k3AK65sO/tEogUF0aFABvcTyLmDmhAQNPCdmERFGgKQUVflWEko34r+zM3lZLIsSnasoqmxXIP
 33lXz/EomJ18kDFsYDuE13q+9kaVcFr3Q/q3FcMonHNEg8xeSJ3yV08OXQNj6mXK3CPP7NNprs
 Oqzgje03zwIkc58fEzXtEno1LzUVHXKCkiOqUQcQVb0W1VWrtOlS5OuHBtWR0246Dd1WaTMWIj
 0TV3m2vHwpW66ut3Q63IMW5J
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep02.wdc.com with ESMTP; 26 Jul 2019 12:44:56 -0700
IronPort-SDR: HAtODe7BtpcPlbhxcQtN84PgABdtn9KVeCxDnDLg0eCJzExb2XsvQ+7vVs7bSESg9dXpMWBa7v
 8XA2Ccy4KEmkY7BHg5bYkxTdAX0FkephrCa6PP1UoVXT4/fKtHSJTmeFpQn1+qrodgxo9wmLRk
 m8h5HvbIhxFC/mq717nZ4gy7VA6Uek6OF5BZCQAoLgpZWwjfjK4ncq45/t4bNtMengEBHY6iLH
 iXN07HIQkdQndP8Vpuup8bVgg5HSai1M/AntD3QQWM/462VId0g4hSqGApN8ZT0mnUvkRote2j
 uvc=
Received: from jedi-01.sdcorp.global.sandisk.com (HELO
 jedi-01.int.fusionio.com) ([10.11.143.218])
 by uls-op-cesaip01.wdc.com with ESMTP; 26 Jul 2019 12:46:47 -0700
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 1/4] RISC-V: Remove per cpu clocksource
Date: Fri, 26 Jul 2019 12:46:35 -0700
Message-Id: <20190726194638.8068-1-atish.patra@wdc.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_124653_747027_DA69A74F 
X-CRM114-Status: GOOD (  11.21  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.45 listed in list.dnswl.org]
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
Cc: Anup Patel <anup.patel@wdc.com>, Alan Kao <alankao@andestech.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Johan Hovold <johan@kernel.org>,
 Atish Patra <atish.patra@wdc.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Palmer Dabbelt <palmer@sifive.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv@lists.infradead.org, Thomas Gleixner <tglx@linutronix.de>,
 Allison Randal <allison@lohutok.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

There is only one clocksource in RISC-V. The boot cpu initializes
that clocksource. No need to keep a percpu data structure.

Signed-off-by: Atish Patra <atish.patra@wdc.com>
---
 drivers/clocksource/timer-riscv.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/clocksource/timer-riscv.c b/drivers/clocksource/timer-riscv.c
index 5e6038fbf115..09e031176bc6 100644
--- a/drivers/clocksource/timer-riscv.c
+++ b/drivers/clocksource/timer-riscv.c
@@ -55,7 +55,7 @@ static u64 riscv_sched_clock(void)
 	return get_cycles64();
 }
 
-static DEFINE_PER_CPU(struct clocksource, riscv_clocksource) = {
+static struct clocksource riscv_clocksource = {
 	.name		= "riscv_clocksource",
 	.rating		= 300,
 	.mask		= CLOCKSOURCE_MASK(64),
@@ -92,7 +92,6 @@ void riscv_timer_interrupt(void)
 static int __init riscv_timer_init_dt(struct device_node *n)
 {
 	int cpuid, hartid, error;
-	struct clocksource *cs;
 
 	hartid = riscv_of_processor_hartid(n);
 	if (hartid < 0) {
@@ -112,8 +111,7 @@ static int __init riscv_timer_init_dt(struct device_node *n)
 
 	pr_info("%s: Registering clocksource cpuid [%d] hartid [%d]\n",
 	       __func__, cpuid, hartid);
-	cs = per_cpu_ptr(&riscv_clocksource, cpuid);
-	error = clocksource_register_hz(cs, riscv_timebase);
+	error = clocksource_register_hz(&riscv_clocksource, riscv_timebase);
 	if (error) {
 		pr_err("RISCV timer register failed [%d] for cpu = [%d]\n",
 		       error, cpuid);
-- 
2.21.0


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
