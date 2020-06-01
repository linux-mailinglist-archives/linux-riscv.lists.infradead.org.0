Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B40871EA0B9
	for <lists+linux-riscv@lfdr.de>; Mon,  1 Jun 2020 11:16:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Type:Content-Transfer-Encoding:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=hKZhQmZDOG+euq54bpMuvjQosucj9aRHq1lg7qbdL5M=; b=QGZQOtwUnFBgefwGXwgmlZVPR
	ACsDJ8TpcGZlvobq7sT6pICcjmdQzC/y349gjAdGBNQPd0Y89QDpryoXbuFOTCbTHPwzQyTB42mLr
	uRQngzJV+udVAwPe8qjleMPx2x2i4tRR6QAhJq328ZhwgYj34AGdecQxtV3JZ+Wt0HX1q8fpVtKBw
	/wh+2YetmoDOQArYK1I2wTeBt0MC5xLgc1Glb9c3VmBOjyViQk1wzXtoLyhCflJD/JfH2gbwM2MIH
	Heo0D31h042eIG6B51BbrQ49+X2jmihn96CcuIsxPpulXAVgmSRjRYPOId4MO7TYx4kks+b3JPpmN
	+3pWc+j4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfgYY-0008Mz-Pm; Mon, 01 Jun 2020 09:16:30 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfgYU-0008AD-H3
 for linux-riscv@lists.infradead.org; Mon, 01 Jun 2020 09:16:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1591002988; x=1622538988;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=f8ShWrK73cRAw2tUF1g4B9F/kAWIHMoMc87kL6nMuRI=;
 b=jJznTPlmw62YPpPjTiQxkqf1aSiSWgDheGrRrRfO+kbq1AoLIRxYBLSq
 Ak0XAFBNwCfaeh8sYpYVpvf8mREwM6pmimLR0zsrH8AAt2FkDu9iVrBWy
 jPCCawHF+Acw0KgwMbqtiqqhxj0L9mE3a2xJuZRuuUl8pl9q3kHi7Jrym
 74lcCxf9YidFOAfzB2rA44hYrQsaN21bpX7NRKn5pGiNyn+gry/Qsy4B9
 Ndk4uRXhOXJ0eofvzu4mYkV/DRWijAssfmgXDdn9kcGijojsLkofZV8qI
 9Lwoy+SxwMgreSBjZD7Q23+/q51Yfd1r9qJ4nTrRy6xL435Rp1VXSlJHA w==;
IronPort-SDR: wUxyZ+w8S5FPDyIh/U/1yyhAHIlhsloN28pZDJ1g8JbFa+PhhIep0Z8GtrYIXyXOitSJ+RwzyN
 pTTv/ucxS/4ozf5g7jxCijqmn1CT36SZ4HDBMyipOJzxvwuNDWnc5PVDQjjSLa6PiwtIibes+b
 c1aVqykrRh3NOFHtucVnvTfR+aGEql6vVGv7LiMKJwgPoOjshJ8V0O3DzoOLNk2DkT0YyMkqVD
 ghymooKeUwCEGT1Ad40q7YLI6KKp+Rx5ddi+UawZzo8T5sGXoaFbV9PNxrmUay5Enmg9nGuMtQ
 3TQ=
X-IronPort-AV: E=Sophos;i="5.73,460,1583164800"; d="scan'208";a="241785979"
Received: from mail-sn1nam04lp2056.outbound.protection.outlook.com (HELO
 NAM04-SN1-obe.outbound.protection.outlook.com) ([104.47.44.56])
 by ob1.hgst.iphmx.com with ESMTP; 01 Jun 2020 17:16:27 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=beERQ6zIrORBEE35GoaSPjs/eoPhmjGm3Zmw0CkE9/x9jiOeUdBZN5LWKhbh07JZ6mMGMjJlg1j94A8GbMuDCBQmQRwx8g0UbYbtR3USZRmW/kc1S/NORAhhPdHNiwpAXEacLfDxjCMoq1UzBLlyga22Lhk/YloBhBteDelM7qD5WZIgkkIlRE7lWpD6x1f6T7aCVIc4FcE6MVC2EwnQBXWzVbYeq5H9DSiNyI5+W0K26fIphyKWIK3wcJ1nlK4w+MymvcxIQcIDct4Z0j17oW29FeJtcsz6rpVXA0eFVR1JGNhjCDD5NZ37LqqAB3vpIfVbai0J05RxbuK5aVKIOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hKZhQmZDOG+euq54bpMuvjQosucj9aRHq1lg7qbdL5M=;
 b=fjIUw7rZVeWhqgLZgMIfan+UKHkJnTc3C+nDKPsEyyab7oHxU/ObUre1IDaAGet0PfoBLiZGL1D/Sb4f4T1BKi4cpkfpjSQ1Gd5YzLdy+RAdWSjRjUQTta+hJinsDxzSAovZN6wABCJ4QDmsLCCs5x1ZKcvInTKlKIndyaHWKVFDeQ1OVdJNciCheN+UhG+EnBLMYs2ujEWE99uKs2+gybNsVYcurhqOYFA44uw+6bHEHTPKLwsbHpKKG2cUwXJRjFARdmBLrk7szDH/IyHJjnNETxglpHyAX1Dhtr2BXveuxOUjR7szJkcmTQM0N1SkFTDm12GRHUCjaw2xwNSqOw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hKZhQmZDOG+euq54bpMuvjQosucj9aRHq1lg7qbdL5M=;
 b=gLW4Ku12wa2vs9PnQq6O0T8QF8B9JxWXsc8Ckd/DWRGNqKweXBrmtWsAdZIW9lCJQGejh0lGTxotjq/jqOIrLau+0OXDOSoCDDIeAwxd1u8umBMOMvJtNu+Q7Dp3ztw6iehQpDGf4xuV4P4t8DL4WBz3F7kcAdSHTR10xexwD7Q=
Authentication-Results: dabbelt.com; dkim=none (message not signed)
 header.d=none;dabbelt.com; dmarc=none action=none header.from=wdc.com;
Received: from DM6PR04MB6201.namprd04.prod.outlook.com (2603:10b6:5:127::32)
 by DM6PR04MB6955.namprd04.prod.outlook.com (2603:10b6:5:240::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3045.19; Mon, 1 Jun
 2020 09:16:25 +0000
Received: from DM6PR04MB6201.namprd04.prod.outlook.com
 ([fe80::f8b3:c124:482b:52e0]) by DM6PR04MB6201.namprd04.prod.outlook.com
 ([fe80::f8b3:c124:482b:52e0%5]) with mapi id 15.20.3045.022; Mon, 1 Jun 2020
 09:16:25 +0000
From: Anup Patel <anup.patel@wdc.com>
To: Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Albert Ou <aou@eecs.berkeley.edu>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Thomas Gleixner <tglx@linutronix.de>, Jason Cooper <jason@lakedaemon.net>,
 Marc Zyngier <maz@kernel.org>
Subject: [PATCH v7 4/6] clocksource/drivers/timer-riscv: Use per-CPU timer
 interrupt
Date: Mon,  1 Jun 2020 14:45:41 +0530
Message-Id: <20200601091543.943678-5-anup.patel@wdc.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200601091543.943678-1-anup.patel@wdc.com>
References: <20200601091543.943678-1-anup.patel@wdc.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: MA1PR0101CA0016.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:21::26) To DM6PR04MB6201.namprd04.prod.outlook.com
 (2603:10b6:5:127::32)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from wdc.com (106.51.23.166) by
 MA1PR0101CA0016.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00:21::26) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3045.19 via Frontend
 Transport; Mon, 1 Jun 2020 09:16:20 +0000
X-Mailer: git-send-email 2.25.1
X-Originating-IP: [106.51.23.166]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 3358d040-bb47-4873-ccea-08d8060c74fb
X-MS-TrafficTypeDiagnostic: DM6PR04MB6955:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DM6PR04MB6955240562F1085E786CB4088D8A0@DM6PR04MB6955.namprd04.prod.outlook.com>
WDCIPOUTBOUND: EOP-TRUE
X-MS-Oob-TLC-OOBClassifiers: OLM:2887;
X-Forefront-PRVS: 0421BF7135
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Z/LxYNRl0S+fr3f6iWMM6PxPuDEr/CjJukVu4lPsvL0n+bqqQAOeFsWPbYzr2oIYWVC80C4bQzqSh8fA7cEI8QyICPPzlhp2+sOYih66nd5/qvR4CL2VFlKJUAphr/O4DTs7wZ3X9he2L3w4fQzskQWrncFDPxYCDbGZHAkjaD1Bkp0CnAf5dkQzxE0r6oMNG97I2UqkOQ/JUb8i0HBP2hMrdc5Ar+HwFFn/LrjqRvZOOzy6pJLdup6FScnI3U60DqxQXHGJ+OwFF55rFztD/xVDaMfiWqoXb+vzNHst9tQq07gBqFw516rHW2MH5yPDMUgQGm0i5TSa1DPTY9gjVQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR04MB6201.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(366004)(39860400002)(136003)(396003)(346002)(376002)(2906002)(8676002)(5660300002)(956004)(2616005)(44832011)(7416002)(1076003)(55236004)(16526019)(55016002)(86362001)(186003)(66476007)(66556008)(66946007)(8936002)(26005)(6666004)(7696005)(4326008)(83380400001)(110136005)(1006002)(316002)(8886007)(478600001)(36756003)(52116002)(54906003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: RKHAzxoLbvFrl1bNYHVFAXCePPdnLV2qcxxQbITLHiNdZEJzHsM8deBG8X9KgtdjC+6jmwCfd0ZQAINRnOWgQd1X4VBk1OMs657t6aDQjMQmbEZ+bN+w8zpsugtxOXAUk7vf6hWhQ5hYorvb/7k9eYrYhqQwpf3oIpjsc+vaXarrA8ZxU4HU/wOQVBFNo/crb+i8DNbhCrmsxZpEJXv4op5xovNlb4CapPDxCsVcq+xXjVdzB2F3F5q/PgfAL2iZOoWMMS/bgU4gqCiPvjtqqhCIWKsoU8+CByd1U0Yj6BuRTbfITVFPtUkilKXEAgRpHGrAYT9HWVKAgbv/qb24ylJQayWRBIBg1OoPAV0CSRbxSu+OgJY5oCa2yNGqVIuAanvJnaVWho+8ppwDPn3JJ5twNAR30Ust4T8Vs58BQUCg5j2vLuBrNiu9aXJWTb9jNno1rcObdLBcyKoLQ9d7GfNwNLpD2Nn2VMWn/kB7+VY=
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3358d040-bb47-4873-ccea-08d8060c74fb
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jun 2020 09:16:24.9385 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4POU8a6EoqnoCAMgtpyHFRc/JLC4CZMo6nNkD9Z7+OHNjlW0W3T6kYFC6JKw9/Hi/ygIiuRDjPyu1pveQz3CvQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR04MB6955
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_021626_695866_41F89388 
X-CRM114-Status: GOOD (  14.52  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.143.124 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Alistair Francis <Alistair.Francis@wdc.com>, linux-riscv@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Instead of directly calling RISC-V timer interrupt handler from
RISC-V local interrupt conntroller driver, this patch implements
RISC-V timer interrupt as a per-CPU interrupt using per-CPU APIs
of Linux IRQ subsystem.

Signed-off-by: Anup Patel <anup.patel@wdc.com>
Reviewed-by: Atish Patra <atish.patra@wdc.com>
---
 arch/riscv/include/asm/irq.h      |  2 --
 drivers/clocksource/timer-riscv.c | 43 ++++++++++++++++++++++++++++---
 drivers/irqchip/irq-riscv-intc.c  |  8 ------
 3 files changed, 40 insertions(+), 13 deletions(-)

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
index c4f15c4068c0..9de1dabfb126 100644
--- a/drivers/clocksource/timer-riscv.c
+++ b/drivers/clocksource/timer-riscv.c
@@ -12,8 +12,11 @@
 #include <linux/cpu.h>
 #include <linux/delay.h>
 #include <linux/irq.h>
+#include <linux/irqdomain.h>
 #include <linux/sched_clock.h>
 #include <linux/io-64-nonatomic-lo-hi.h>
+#include <linux/interrupt.h>
+#include <linux/of_irq.h>
 #include <asm/smp.h>
 #include <asm/sbi.h>
 
@@ -39,6 +42,7 @@ static int riscv_clock_next_event(unsigned long delta,
 	return 0;
 }
 
+static unsigned int riscv_clock_event_irq;
 static DEFINE_PER_CPU(struct clock_event_device, riscv_clock_event) = {
 	.name			= "riscv_timer_clockevent",
 	.features		= CLOCK_EVT_FEAT_ONESHOT,
@@ -74,30 +78,36 @@ static int riscv_timer_starting_cpu(unsigned int cpu)
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
 	int cpuid, hartid, error;
+	struct device_node *child;
+	struct irq_domain *domain;
 
 	hartid = riscv_of_processor_hartid(n);
 	if (hartid < 0) {
@@ -115,6 +125,25 @@ static int __init riscv_timer_init_dt(struct device_node *n)
 	if (cpuid != smp_processor_id())
 		return 0;
 
+	domain = NULL;
+	child = of_get_compatible_child(n, "riscv,cpu-intc");
+	if (!child) {
+		pr_err("Failed to find INTC node [%pOF]\n", n);
+		return -ENODEV;
+	}
+	domain = irq_find_host(child);
+	of_node_put(child);
+	if (!domain) {
+		pr_err("Failed to find IRQ domain for node [%pOF]\n", n);
+		return -ENODEV;
+	}
+
+	riscv_clock_event_irq = irq_create_mapping(domain, RV_IRQ_TIMER);
+	if (!riscv_clock_event_irq) {
+		pr_err("Failed to map timer interrupt for node [%pOF]\n", n);
+		return -ENODEV;
+	}
+
 	pr_info("%s: Registering clocksource cpuid [%d] hartid [%d]\n",
 	       __func__, cpuid, hartid);
 	error = clocksource_register_hz(&riscv_clocksource, riscv_timebase);
@@ -126,6 +155,14 @@ static int __init riscv_timer_init_dt(struct device_node *n)
 
 	sched_clock_register(riscv_sched_clock, 64, riscv_timebase);
 
+	error = request_percpu_irq(riscv_clock_event_irq,
+				    riscv_timer_interrupt,
+				    "riscv-timer", &riscv_clock_event);
+	if (error) {
+		pr_err("registering percpu irq failed [%d]\n", error);
+		return error;
+	}
+
 	error = cpuhp_setup_state(CPUHP_AP_RISCV_TIMER_STARTING,
 			 "clockevents/riscv/timer:starting",
 			 riscv_timer_starting_cpu, riscv_timer_dying_cpu);
diff --git a/drivers/irqchip/irq-riscv-intc.c b/drivers/irqchip/irq-riscv-intc.c
index a80fb1731c50..a6f97fa6ff69 100644
--- a/drivers/irqchip/irq-riscv-intc.c
+++ b/drivers/irqchip/irq-riscv-intc.c
@@ -21,20 +21,12 @@ static struct irq_domain *intc_domain;
 
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
2.25.1


