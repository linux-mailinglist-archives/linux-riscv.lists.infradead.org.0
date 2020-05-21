Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3428A1DCE30
	for <lists+linux-riscv@lfdr.de>; Thu, 21 May 2020 15:34:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Type:Content-Transfer-Encoding:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=kvfw+lovIXsLK+yOaHge7DSGT5zwQr/AVVrdpOm6juA=; b=XKcOARCzVlHfaQkNv0x8wN+eD
	an/cyZ2+7Lv2Tr3V5F23Z9SQw9jXD1piya/BtwEV8tOjtJNinVD4hlauGt8LuJj0gecsxt3QdOl/t
	hK7iePV9KNd6jYEiTMlWFyvP6i3mtrFloQwHpktuO0nXRhKwdo3L11cd24FdNc4WgC94ytuKtNveH
	LBew2pzAOskh0X9joTQN5AwzDCwzlIjB44tlqXN8y+I5eTauqobu2WzbrHE/xfsXKi9Z9BjSigCgY
	a6Wa9SBy5Aimse3+hJXhdiuE0QQoMeg5PmlM0Nu79EiC36xb2oKBbAJDWHWT4ENdzLPSt9Dmpow/E
	LpI8q1Riw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jblL0-0004qZ-3a; Thu, 21 May 2020 13:34:18 +0000
Received: from esa3.hgst.iphmx.com ([216.71.153.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jblKj-0004cF-QN
 for linux-riscv@lists.infradead.org; Thu, 21 May 2020 13:34:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1590068042; x=1621604042;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=BErtjAeBL1SviChJtnWylHqU8vLOpKiKu9mLkKVDrkQ=;
 b=fQK16ZuTc15oE8T2ZH9E/UWQ6u9knA0S2maVcm62rYlThOfnB/6jR+/v
 W4I38vgJM0YTmkOYu50RyyzoFEK25lLw7glMbkuaEyKS3aeg/V4d9LKwi
 rxHHUoafXSYLB3XVDTUuVUd6aO+L9cOgtGklSfrkOMa66IoKyYtL47gVs
 Hjp4gM/rJq8u1XX/QHTXND08EeOOSIFxoUfKGP23WSDRedC8Ab2D7FlEs
 4mQalBz+W/bmLjLY5L/6oIA3iA8I0bkO878tIOXNCzS0L5BWcq+7DbciB
 oP3QHj8SryicbEFiUYeeEyFNNDu9yxyLhNIORYCW1Gft6JnI5YHOv/wX/ g==;
IronPort-SDR: oLZfxghExl1v7omzqOwn7buluz7d2NPgONVRpl8Wg6h+04rYGmC30pXz0yZfiEnhFxXPXGo/3Z
 jD/V1fAwYbJuPsRifKZXgC3fDy+csnYh8ohMR8kFVd/S1/vdhLwnWFnxzPJ1MRCA5M1stk28Mk
 26WuDYlHuxuAyhxDlRfCN/Qxa6xQ2ehnJ4mTt5QIb4Ub/AnTO343DQroRgMV18bFmbLVb6/xK7
 DpFrIXBLvpTSJa4N0B946hL15cloHUfbRBNUkBpmvWieXXUolnn64buAzghb6Tam+WQ1tH9vJl
 H9k=
X-IronPort-AV: E=Sophos;i="5.73,417,1583164800"; d="scan'208";a="142554119"
Received: from mail-bn7nam10lp2109.outbound.protection.outlook.com (HELO
 NAM10-BN7-obe.outbound.protection.outlook.com) ([104.47.70.109])
 by ob1.hgst.iphmx.com with ESMTP; 21 May 2020 21:33:58 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=e5jfuPsRKFwnsG7kwfY4xbpImqDcIE7Ce4SAqxoQumJJ4A27qj8X4vtDWexbaSMu8S37sx7ry4s9tJuODrgBPLFDgJ5QMSyK5oviZ10h6c0HARDUZrV4blAnO4c4R69doJ4azgbothZSp6LIa/ekA2SJg7FO5oohEl0xcx3sg1b/BHFLoycYnIqtneHZdyZoiS5vcDVnUiREo/0RD8dcdcOVb7VOeZB/SWRsDlLgAPmZpjX5wHHEyvtl7sVWSqWOQULMV09mqGD3+YwLxax/Npx5kzQq5xD0gi1FuCcuHR/+3I5V5Sd0gVnm1KfvwB7VZfJytt94CGDXkG/19xgV4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kvfw+lovIXsLK+yOaHge7DSGT5zwQr/AVVrdpOm6juA=;
 b=MtWRH8U7MQig2WJS/UJjkar5U9F+hJSr49URwe3yB6cWEPolzXFzqfEozqKiuUopxUHvT/Xza08aJi7A6lXJuv/LNa1gNYy6MQdIjHFMnBU0UuIV0SadaixdQjBhQmalgBcWQXYqhKrWYk0zuvXyA3fCNovzIgeUlwoVuczeFsgj+3nxOR/MISfo50RluGYNGiFSDSn5Rw0ftcU9BpQwV8gS6brOTDab6rBqGRLRELqrQxR+a33xi9ShWwFRRGI5C35FIaJAB6b4GpyyzU/PE1UEXr/SK0iKckHtMSF1MCS/9h8JypCBn16EH5NdGwGYPhqO2g+hehzy/2AwCKJ9Ow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kvfw+lovIXsLK+yOaHge7DSGT5zwQr/AVVrdpOm6juA=;
 b=gfYvXUUznhmjGxe6vKDhnEg4IhiMgVAGu162uSnpA3bCO3ZJIZZN1K2WF/VRynuSkGGnI7YgMpThkHDGggPRxqtMfqobfuYbvkRFTz6G07Ha+BUBOK9quDJEgaVsoi0/DSCRmns83VHaLIXVSx2cKz7ZFbjxkRZQAm6ezSTb3p8=
Authentication-Results: dabbelt.com; dkim=none (message not signed)
 header.d=none;dabbelt.com; dmarc=none action=none header.from=wdc.com;
Received: from DM6PR04MB6201.namprd04.prod.outlook.com (2603:10b6:5:127::32)
 by DM6PR04MB5292.namprd04.prod.outlook.com (2603:10b6:5:107::25) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3021.23; Thu, 21 May
 2020 13:33:56 +0000
Received: from DM6PR04MB6201.namprd04.prod.outlook.com
 ([fe80::f8b3:c124:482b:52e0]) by DM6PR04MB6201.namprd04.prod.outlook.com
 ([fe80::f8b3:c124:482b:52e0%5]) with mapi id 15.20.3000.034; Thu, 21 May 2020
 13:33:56 +0000
From: Anup Patel <anup.patel@wdc.com>
To: Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Albert Ou <aou@eecs.berkeley.edu>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Thomas Gleixner <tglx@linutronix.de>, Jason Cooper <jason@lakedaemon.net>,
 Marc Zyngier <maz@kernel.org>
Subject: [PATCH v5 4/6] clocksource/drivers/timer-riscv: Use per-CPU timer
 interrupt
Date: Thu, 21 May 2020 19:02:59 +0530
Message-Id: <20200521133301.816665-5-anup.patel@wdc.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200521133301.816665-1-anup.patel@wdc.com>
References: <20200521133301.816665-1-anup.patel@wdc.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: MA1PR0101CA0033.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:22::19) To DM6PR04MB6201.namprd04.prod.outlook.com
 (2603:10b6:5:127::32)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from wdc.com (106.51.30.72) by
 MA1PR0101CA0033.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00:22::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3021.23 via Frontend
 Transport; Thu, 21 May 2020 13:33:50 +0000
X-Mailer: git-send-email 2.25.1
X-Originating-IP: [106.51.30.72]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 6baada90-18dd-43a9-34e1-08d7fd8b9c9a
X-MS-TrafficTypeDiagnostic: DM6PR04MB5292:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DM6PR04MB5292AF78D03E9E68ABB4460C8DB70@DM6PR04MB5292.namprd04.prod.outlook.com>
WDCIPOUTBOUND: EOP-TRUE
X-MS-Oob-TLC-OOBClassifiers: OLM:1728;
X-Forefront-PRVS: 041032FF37
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: F1iEYl6Nnc2gfl/ax0RS/BMax3I9XG2/qgPNpP2PZW8v0Jd2Kl+ew2W63RIyBNGkJAnrAxH09DBA2Gh2W2mN8AUeALUJgIgGTqYGQER/ISAze9pHHP99NYDWYzx18DIzW8u0tBsggCuEVGtek8/j5zD/DWWsaGPDobSJKZb+LmcmuwTAWbdMTe1g7nE03UoaM3WleFt94jO01cnXDWyKv90wJJXMMjhU9l21IsXLPR8X3wH+mEqwzOi1Vfz27J8lzBYL3dXNxcfXxXFYGoNdtf9dI573xgDhQvLjvr87QsDFrj6J2zHkaGbDby5ohswJ
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR04MB6201.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(346002)(396003)(366004)(136003)(39860400002)(376002)(478600001)(7416002)(5660300002)(8936002)(86362001)(8676002)(4326008)(8886007)(55016002)(26005)(7696005)(186003)(1006002)(1076003)(66946007)(2616005)(2906002)(66556008)(956004)(54906003)(66476007)(52116002)(36756003)(44832011)(16526019)(55236004)(316002)(110136005);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: irgJM0k7GD9iO1H1np4Rt+r4G0skmo2YYrBNxwG4rQ6c1LuQsRL5ExjNsYADzOmO1l5yZgeT9IOP+5PCO12e6u/r0pyY6RFR+wgoWatfynxZ/JcTlXvMDqRCiGZwkwBKYgOpkMS3w8/NQf8pY8rS40CEzVxoMiLw+kCyZyafxsJW/DI5qjCG7fQTyYMS4xenJyRvRcultrJiHSoh+4iv6LJP46QiCr5EewBcoH6SwUGRiIs/gXYpG8hJc3XGR4y1knMIQVZ3i90iCHfDCDLEBjDUWLAL241rJNmcg8YdCa/b2d9xiekczGdpTzfeFHX8rW/iQkbvHflkXjC+4KXJdr2QJpNatPARP7yn5zs1mzMD3gR8WQ9iRr7AKJAnQ60zS0+S/5nMjWdx87fmWas1KM+2JRMsAjoM+CaiHSy5m1ZBzI4TpvjMW1iYikC0QWG4+w44araxyOowr2vODEFWgV1v5nttTP3NB55NJSVl1mc=
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6baada90-18dd-43a9-34e1-08d7fd8b9c9a
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 May 2020 13:33:56.7236 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: dp8FDFKsa4fmxo/ulML/ybIUrYQqgysraOonIhFfsWkn+1nOJq/5SaqBqqIVc5NRDjyYKu40qUVMvfrxFTS4mA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR04MB5292
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_063401_903263_442D8E94 
X-CRM114-Status: GOOD (  15.06  )
X-Spam-Score: -1.0 (-)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.141 listed in list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [106.51.30.72 listed in dnsbl.sorbs.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
---
 arch/riscv/include/asm/irq.h      |  2 --
 drivers/clocksource/timer-riscv.c | 30 +++++++++++++++++++++++++++---
 drivers/irqchip/irq-riscv-intc.c  |  8 --------
 3 files changed, 27 insertions(+), 13 deletions(-)

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
index c4f15c4068c0..5fb7c5ba5c91 100644
--- a/drivers/clocksource/timer-riscv.c
+++ b/drivers/clocksource/timer-riscv.c
@@ -14,6 +14,9 @@
 #include <linux/irq.h>
 #include <linux/sched_clock.h>
 #include <linux/io-64-nonatomic-lo-hi.h>
+#include <linux/irqchip/irq-riscv-intc.h>
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
@@ -74,30 +78,35 @@ static int riscv_timer_starting_cpu(unsigned int cpu)
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
+	struct of_phandle_args oirq;
 
 	hartid = riscv_of_processor_hartid(n);
 	if (hartid < 0) {
@@ -115,6 +124,13 @@ static int __init riscv_timer_init_dt(struct device_node *n)
 	if (cpuid != smp_processor_id())
 		return 0;
 
+	oirq.np = riscv_of_intc_domain_node();
+	oirq.args_count = 1;
+	oirq.args[0] = RV_IRQ_TIMER;
+	riscv_clock_event_irq = irq_create_of_mapping(&oirq);
+	if (!riscv_clock_event_irq)
+		return -ENODEV;
+
 	pr_info("%s: Registering clocksource cpuid [%d] hartid [%d]\n",
 	       __func__, cpuid, hartid);
 	error = clocksource_register_hz(&riscv_clocksource, riscv_timebase);
@@ -126,6 +142,14 @@ static int __init riscv_timer_init_dt(struct device_node *n)
 
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
index 2f364e6a87f9..d4fbc3543459 100644
--- a/drivers/irqchip/irq-riscv-intc.c
+++ b/drivers/irqchip/irq-riscv-intc.c
@@ -23,20 +23,12 @@ static struct irq_domain *intc_domain;
 
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


