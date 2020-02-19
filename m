Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 792C1164BA3
	for <lists+linux-riscv@lfdr.de>; Wed, 19 Feb 2020 18:16:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Type:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=UduoVuJzGJvSq4pkFdNW/jDRAWirWOpYT9Q23ua07lk=; b=tLtwzWMRI8u8V9z3RI9K2Sx/I
	kZa1qq6bw28DNkJRi3dx03uFyeava741R8M4CPa1s1cPxsB9yrIboos13iTr9XTQjYnkfqmMC8WXk
	o9dX6L2dBEoU9ls8by1VV92m6KU5W8h7Pa50Sv1FMGuUe7Q5mRRnEcftNiclpLHyPLBKB9baAieX0
	mXUQ99MWR0M+CEqkTfQAvgiphda6KsfvFNMQZZ1tbGpT4D2/FOnE7gPvtlNGz+tV96ofd0zGqtGZE
	4xwaifPFRXHIh6IwMofhvdrbqXhkM6Ai79E9AJjDMmmu60CEqYU/UDTwYzCkAKpNHzShKS5XWxEwB
	r0QVb31Hg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4Sxk-0004ls-9P; Wed, 19 Feb 2020 17:16:40 +0000
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4Sxg-0004h8-5D
 for linux-riscv@lists.infradead.org; Wed, 19 Feb 2020 17:16:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1582132596; x=1613668596;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version;
 bh=j1GFhyYpVrNQClzVYe4UuaHi/GQFQxafh23jill3qIQ=;
 b=I3BRcTKw4MOf6euFIjEoU/TkdU0MLItH981WgX8qF12a8b8PrXP2vNNu
 GzmjAhQFD5/nG52H9DuTPFMijBN3jQRTSvTc7hpYMwB+wRatRWjTklC6S
 ZnzrysZQ5+OsjYuTkI8LVpD0Tfua801gaeaDG58YGb//7gSth9OdSiZY8
 f9cXGjlnOQZiJib8eW1zpLW8oss4w5RatSuJk09IoNnCYzynRwrm+nNfD
 JbUi7gB3IPhGFpOwsO0pWtOsKOPiv8XJUmWjSMM7sALjK1EloQVYdZ7o0
 zwgs/00gbHHHTcpuIOtmdCevD5+BvIY1p5OgeiPUJq23NiBm633YkvpW4 w==;
IronPort-SDR: GJ/VEhAYsb++SW9r857W6I5gK4QHGUJlzO90nP5LUQ1F65FuPtu2kjk7aDvYzwIxfV5RPf4sQY
 tOeAMFxCFrQBK8ui4hsaZsudr4PU3yhdqJArGzgcEcxP5OFkInfSEYZTTJ3qUVonAssiV44gBM
 opUSxjX5iCy6F2w8JeksVxdEfWA1iEu/vfZKfMfvxfS/kcf4xQJbfjqNSrc1YNu1inTC8CU2aG
 6PktWVGEHD6aVvzgM/mMCt4cGG0raEvQ99ZtnvKW2EFbkD2QIl2O3Ra1k1eaz2ji7K6Rsdv8KY
 tig=
X-IronPort-AV: E=Sophos;i="5.70,461,1574092800"; d="scan'208";a="130192876"
Received: from mail-cys01nam02lp2057.outbound.protection.outlook.com (HELO
 NAM02-CY1-obe.outbound.protection.outlook.com) ([104.47.37.57])
 by ob1.hgst.iphmx.com with ESMTP; 20 Feb 2020 01:16:33 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TvZAX1UhyYydpSboL24PkgI1wKgxW8X13PVjRzAPiKYUSYEk+ZWuvKYDgegesbAP7tATrAssN5hwXSiRWMac0VwaswUMaqwDI5/7AKjOq0LHploQrVbfmpUcnarmsEws7tWa6AiuSv7SgXt9vNCXpqVT06iv7mNLkOV25/+6iHg6gFwJqjGRLepQmHJG1bikS2TdOW8UApMBm2dmepcBu/eQEhOBJkagL/8zL5vPCnvc2RIm1pCFzmZrL2EFAdtzX6gd+8Gx/SKjE1jQXObmKonRtpn0uVeQV/nXtA0b/GVKyZuKBVUKbhZjQikz/r90eNBUHogYYALKZamor0s4/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UduoVuJzGJvSq4pkFdNW/jDRAWirWOpYT9Q23ua07lk=;
 b=AggemixMUV0U0MYJ6skO7atustrtmidE/gadUyRGgqMOtO6FXMqpXl6Coh4Nj9+yH41TiCk3ompBFZTeSGo7Xih8VM/L0XgxSnamgppqKw3bhcadYsBobr1sUJfGmbXiNh7b9ehPll0vh5OwJq5G5jci0s5ooDqb2zczOv/6pOE4V6jf8wagGptRSFuiHb9F1KmjlOPIc1kNc15zxT6ESx6OObRxaWKvUoXVDfiRKxicYv++OtWeo73O/Z0pSzRNy5RLOLVqas7UW2Vz3ShotYeRXwmzXAYnV0zgJRLd+9oqyyhUCZB5ktnHdL4HSdT7qPS1BwMFkaJ7givck/eMjQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UduoVuJzGJvSq4pkFdNW/jDRAWirWOpYT9Q23ua07lk=;
 b=xJcskZSQNsaOsB0C2lXl2qK+11H1NN5HC2F/DxYHKCkoQ4azb8VBXMj78XfcqICrPpp7BE/wLsl3UPFyRcv555MHaJe62aQt3/Ie9EFsMgC8mGBbGdezoe/yJG/aoQCsSmcUs5qAYVuffEvhgHAPTNwIfSm4SgJmcGtWWqcUlj4=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Anup.Patel@wdc.com; 
Received: from MN2PR04MB6061.namprd04.prod.outlook.com (20.178.246.15) by
 MN2PR04MB6688.namprd04.prod.outlook.com (10.186.147.14) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2750.17; Wed, 19 Feb 2020 17:16:32 +0000
Received: from MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::a9a0:3ffa:371f:ad89]) by MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::a9a0:3ffa:371f:ad89%7]) with mapi id 15.20.2729.033; Wed, 19 Feb 2020
 17:16:32 +0000
From: Anup Patel <anup.patel@wdc.com>
To: Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Albert Ou <aou@eecs.berkeley.edu>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Thomas Gleixner <tglx@linutronix.de>, Jason Cooper <jason@lakedaemon.net>,
 Marc Zyngier <marc.zyngier@arm.com>
Subject: [PATCH v3 3/4] clocksource: timer-riscv: Make timer interrupt as a
 per-CPU interrupt
Date: Wed, 19 Feb 2020 22:45:19 +0530
Message-Id: <20200219171520.20590-4-anup.patel@wdc.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200219171520.20590-1-anup.patel@wdc.com>
References: <20200219171520.20590-1-anup.patel@wdc.com>
Content-Type: text/plain
X-ClientProxiedBy: MA1PR01CA0121.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:35::15) To MN2PR04MB6061.namprd04.prod.outlook.com
 (2603:10b6:208:d8::15)
MIME-Version: 1.0
Received: from wdc.com (106.51.29.34) by
 MA1PR01CA0121.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00:35::15) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2750.18 via Frontend Transport; Wed, 19 Feb 2020 17:16:24 +0000
X-Mailer: git-send-email 2.17.1
X-Originating-IP: [106.51.29.34]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 77a5cc95-014b-4968-147b-08d7b55f76f7
X-MS-TrafficTypeDiagnostic: MN2PR04MB6688:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <MN2PR04MB6688224BEE1A31205BF2F83B8D100@MN2PR04MB6688.namprd04.prod.outlook.com>
WDCIPOUTBOUND: EOP-TRUE
X-MS-Oob-TLC-OOBClassifiers: OLM:5236;
X-Forefront-PRVS: 0318501FAE
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10019020)(4636009)(396003)(366004)(39860400002)(376002)(136003)(346002)(199004)(189003)(4326008)(7416002)(1076003)(55016002)(5660300002)(86362001)(2906002)(66946007)(8676002)(66476007)(478600001)(36756003)(66556008)(81156014)(44832011)(2616005)(956004)(316002)(8886007)(55236004)(110136005)(16526019)(52116002)(81166006)(26005)(54906003)(8936002)(7696005)(186003)(6666004)(1006002)(32040200004);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB6688;
 H:MN2PR04MB6061.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: S2wuJtzcpnzFrpJ8XHe4uo/dbW4ist9xQv95lGkSJJ3WJMRba1Ph8vbcFa3wwTAgNdn4HwcZMLGcL5bYn4XRV/ypX1t9LmvxmsYMNzm7256l3vKi5y6zFERICP1B6boCVkS4nStZDv8vwbNf3W1UnVdZpgmW0Wjw08fOfw6iD8Siy7XyUJzCtGm6fZ1Bgtozcyq8NpgB7iZTlKs7TdN4tKikHp84c6mKyGqf/WhflEMZud7IOzsNKQVKu85UEceQ/XkxqNGA9DYzgJT6q6pob0CptnPyyw5dL/rKkqFD/Jm8w7irKziQjDSkwxGVNYb2NT1F7HNHs1nE9IY+nSslVgJLPLNo3ajSLm9ZlCxdNoAxMYtuMWs5gsCWzrXM1DA/g6MdKyiJN85U4I3Hm2QfL8tFUe9ls+zTwVILbfE7SZ9DDhxMkHsFHxD1eW4TH0txKR0137e16xoxsAuPi5RGkuqSbKzddzBwzKkHXyxWTar8aT6RSvY29Jv4rhsRW9hj
X-MS-Exchange-AntiSpam-MessageData: c2oShOCk6U6y6Kt0c/9HjqpPGCxgtDtUv1P8SxCtqV9IoDujT/tY15x0dTO5xHA/JM3mGiPrfv0I6Ty86fGsZp7vIaNJt3IRvOa6ItgrjB4Qz4d/Uq2O54ZJ+OM4Wpb/qUf0zUqaftQDcWO9+Go76w==
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 77a5cc95-014b-4968-147b-08d7b55f76f7
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Feb 2020 17:16:32.2377 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Dlrji9E9xvFVeflat+4DoDJLkIs/Cc2bSwlUY69tNneGjT6umzQkESSLsQDYSEocLT9iNFywHXskK6+OYZ+Cug==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB6688
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_091636_311614_757F6906 
X-CRM114-Status: GOOD (  18.16  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.42 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
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
Cc: Anup Patel <anup@brainfault.org>, Anup Patel <anup.patel@wdc.com>,
 linux-kernel@vger.kernel.org, Atish Patra <atish.patra@wdc.com>,
 Alistair Francis <Alistair.Francis@wdc.com>, linux-riscv@lists.infradead.org,
 Christoph Hellwig <hch@lst.de>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Instead of directly calling RISC-V timer interrupt handler from
RISC-V local interrupt conntroller driver, this patch implements
RISC-V timer interrupt as a per-CPU interrupt using per-CPU APIs
of Linux IRQ subsystem.

Signed-off-by: Anup Patel <anup.patel@wdc.com>
---
 arch/riscv/include/asm/irq.h      |  2 -
 drivers/clocksource/timer-riscv.c | 79 ++++++++++++++++++++-----------
 drivers/irqchip/irq-riscv-intc.c  |  8 ----
 3 files changed, 52 insertions(+), 37 deletions(-)

diff --git a/arch/riscv/include/asm/irq.h b/arch/riscv/include/asm/irq.h
index a9e5f07a7e9c..9807ad164015 100644
--- a/arch/riscv/include/asm/irq.h
+++ b/arch/riscv/include/asm/irq.h
@@ -10,8 +10,6 @@
 #include <linux/interrupt.h>
 #include <linux/linkage.h>
 
-void riscv_timer_interrupt(void);
-
 #include <asm-generic/irq.h>
 
 #endif /* _ASM_RISCV_IRQ_H */
diff --git a/drivers/clocksource/timer-riscv.c b/drivers/clocksource/timer-riscv.c
index c4f15c4068c0..6b82f2e41f8e 100644
--- a/drivers/clocksource/timer-riscv.c
+++ b/drivers/clocksource/timer-riscv.c
@@ -14,7 +14,10 @@
 #include <linux/irq.h>
 #include <linux/sched_clock.h>
 #include <linux/io-64-nonatomic-lo-hi.h>
-#include <asm/smp.h>
+#include <linux/irqdomain.h>
+#include <linux/interrupt.h>
+#include <linux/of.h>
+#include <linux/of_irq.h>
 #include <asm/sbi.h>
 
 u64 __iomem *riscv_time_cmp;
@@ -39,6 +42,7 @@ static int riscv_clock_next_event(unsigned long delta,
 	return 0;
 }
 
+static unsigned int riscv_clock_event_irq;
 static DEFINE_PER_CPU(struct clock_event_device, riscv_clock_event) = {
 	.name			= "riscv_timer_clockevent",
 	.features		= CLOCK_EVT_FEAT_ONESHOT,
@@ -74,65 +78,86 @@ static int riscv_timer_starting_cpu(unsigned int cpu)
 	struct clock_event_device *ce = per_cpu_ptr(&riscv_clock_event, cpu);
 
 	ce->cpumask = cpumask_of(cpu);
+	ce->irq = riscv_clock_event_irq;
 	clockevents_config_and_register(ce, riscv_timebase, 100, 0x7fffffff);
 
-	csr_set(CSR_IE, IE_TIE);
+	enable_percpu_irq(riscv_clock_event_irq,
+			  irq_get_trigger_type(riscv_clock_event_irq));
 	return 0;
 }
 
 static int riscv_timer_dying_cpu(unsigned int cpu)
 {
-	csr_clear(CSR_IE, IE_TIE);
+	disable_percpu_irq(riscv_clock_event_irq);
 	return 0;
 }
 
 /* called directly from the low-level interrupt handler */
-void riscv_timer_interrupt(void)
+static irqreturn_t riscv_timer_interrupt(int irq, void *dev_id)
 {
 	struct clock_event_device *evdev = this_cpu_ptr(&riscv_clock_event);
 
 	csr_clear(CSR_IE, IE_TIE);
 	evdev->event_handler(evdev);
+
+	return IRQ_HANDLED;
 }
 
 static int __init riscv_timer_init_dt(struct device_node *n)
 {
-	int cpuid, hartid, error;
-
-	hartid = riscv_of_processor_hartid(n);
-	if (hartid < 0) {
-		pr_warn("Not valid hartid for node [%pOF] error = [%d]\n",
-			n, hartid);
-		return hartid;
-	}
-
-	cpuid = riscv_hartid_to_cpuid(hartid);
-	if (cpuid < 0) {
-		pr_warn("Invalid cpuid for hartid [%d]\n", hartid);
-		return cpuid;
-	}
-
-	if (cpuid != smp_processor_id())
+	int error;
+	struct of_phandle_args oirq;
+
+	/*
+	 * Either we have one INTC DT node under each CPU DT node
+	 * or a single system wide INTC DT node. Irrespective to
+	 * number of INTC DT nodes, we only proceed if we are able
+	 * to find irq_domain of INTC.
+	 *
+	 * Once we have INTC irq_domain, we create mapping for timer
+	 * interrupt HWIRQ and request_percpu_irq() on it.
+	 */
+
+	if (!irq_find_host(n) || riscv_clock_event_irq)
 		return 0;
 
-	pr_info("%s: Registering clocksource cpuid [%d] hartid [%d]\n",
-	       __func__, cpuid, hartid);
+	oirq.np = n;
+	oirq.args_count = 1;
+	oirq.args[0] = RV_IRQ_TIMER;
+	riscv_clock_event_irq = irq_create_of_mapping(&oirq);
+	if (!riscv_clock_event_irq)
+		return -ENODEV;
+
 	error = clocksource_register_hz(&riscv_clocksource, riscv_timebase);
 	if (error) {
-		pr_err("RISCV timer register failed [%d] for cpu = [%d]\n",
-		       error, cpuid);
+		pr_err("registering clocksource failed [%d]\n", error);
 		return error;
 	}
 
 	sched_clock_register(riscv_sched_clock, 64, riscv_timebase);
 
+	error = request_percpu_irq(riscv_clock_event_irq,
+				   riscv_timer_interrupt,
+				   "riscv-timer", &riscv_clock_event);
+	if (error) {
+		pr_err("registering percpu irq failed [%d]\n", error);
+		return error;
+	}
+
 	error = cpuhp_setup_state(CPUHP_AP_RISCV_TIMER_STARTING,
 			 "clockevents/riscv/timer:starting",
 			 riscv_timer_starting_cpu, riscv_timer_dying_cpu);
-	if (error)
+	if (error) {
 		pr_err("cpu hp setup state failed for RISCV timer [%d]\n",
 		       error);
-	return error;
+		return error;
+	}
+
+	pr_info("running at %lu.%02luMHz frequency\n",
+		(unsigned long)riscv_timebase / 1000000,
+		(unsigned long)(riscv_timebase / 10000) % 100);
+
+	return 0;
 }
 
-TIMER_OF_DECLARE(riscv_timer, "riscv", riscv_timer_init_dt);
+TIMER_OF_DECLARE(riscv_timer, "riscv,cpu-intc", riscv_timer_init_dt);
diff --git a/drivers/irqchip/irq-riscv-intc.c b/drivers/irqchip/irq-riscv-intc.c
index a2523fc663b1..bbc950510840 100644
--- a/drivers/irqchip/irq-riscv-intc.c
+++ b/drivers/irqchip/irq-riscv-intc.c
@@ -21,20 +21,12 @@ static atomic_t intc_init = ATOMIC_INIT(0);
 
 static asmlinkage void riscv_intc_irq(struct pt_regs *regs)
 {
-	struct pt_regs *old_regs;
 	unsigned long cause = regs->cause & ~CAUSE_IRQ_FLAG;
 
 	if (unlikely(cause >= BITS_PER_LONG))
 		panic("unexpected interrupt cause");
 
 	switch (cause) {
-	case RV_IRQ_TIMER:
-		old_regs = set_irq_regs(regs);
-		irq_enter();
-		riscv_timer_interrupt();
-		irq_exit();
-		set_irq_regs(old_regs);
-		break;
 #ifdef CONFIG_SMP
 	case RV_IRQ_SOFT:
 		/*
-- 
2.17.1


