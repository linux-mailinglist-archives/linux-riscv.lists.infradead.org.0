Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6357F17DE1D
	for <lists+linux-riscv@lfdr.de>; Mon,  9 Mar 2020 12:03:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Type:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=WAE9FhPfiDLwl5CifCcOXcb/G9XDijP21CskKpdaI8E=; b=MZs8QmFx2f9M8UOaFTIQzz6xd
	6tKA5TfxNvwytHOx2/fEGW9NIJhDZjDhPr2HUnlr53n0/SflScy6BzMqcXUDNS+8PWbeOnb+VZ4ei
	RCl+XXd+w9mErSBB3sbOth5TwWshW4CWsHWSniWtVo0jvfS7w1RHg4uO3KLH8r3LGC3WUNLsq/Jxy
	i38z59ODqgs2w7c4hhKVhFT0HUfcsY6spcPzSBk0YpQ6M3ZIQDVBSE+fJA3hX7+cKFnEGXIK+56pW
	hdX2jGYmgUefl417sUhjC78oYhqW3WrwwG5R/VlXD7aolTba8l1kySuX1XlIGrFyla2EmNKydc0fJ
	F4kBXu87A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBGBV-0002P2-ME; Mon, 09 Mar 2020 11:02:57 +0000
Received: from esa3.hgst.iphmx.com ([216.71.153.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBGBS-0002MI-1H
 for linux-riscv@lists.infradead.org; Mon, 09 Mar 2020 11:02:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1583751775; x=1615287775;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version;
 bh=h1cEbyV0igHGedrNhr5cFEV/AfRFtx2s28Gj68T1cNE=;
 b=qzRfhB51KGbUR1y+nntO3YfWcbIRAVWLMDxorqyBm8yN+5U6Anwp3Qsw
 6wTFWRIjyrJ0WGii3WZzDZNu0wYYKsL0gIMjqjS9wunI/hLzdsBHDRq5u
 FBdHnagqgqsYiO4JWbCmqltbfPTf0JilDHLy+OIZYLRIqh0I1p9vHIcBU
 LO6Qd9qIYfoFrviPNV16c6Mm8Vrwvh61IVhyiVyA5GTcosnMbtK7cHcY4
 fojmOLWEpB/ee6s7VCInu4SVFaozopIUwCcNYBq0BeX8FSTB6yX9mlBkk
 2pLWWKN0CzM0jO++iB2scThCD38ErS00hkOG5e1FjvullSJXakwBzpd/u w==;
IronPort-SDR: HRozAmFiV/7Gzc7ZPJJ0YxLbB6LZFQ+tz+7aHvI3pHzEAu5KhKJPPYhWPLifMo6RVWvsBYog6d
 5ZDhOGuJgUXzBR1BkPSyx8PDzo1W1mhOUe1Xb15Wr2YDJjDUPcTNay2Xl9ELynzWifFdvGU5xy
 U3NEePKAe8oXRPjwWwulqgptc0FRm0lXcIfvcnGrw2ILSAz/9JDlIRu7Q2Wmpg/PA5mwh4U0R7
 TN6iKImALwa/h788kBNYfOyHTx85aBQrz3L38/juAICQaHxa/oqTDhZL/x5B8zlR+R25aNr6Z8
 UBk=
X-IronPort-AV: E=Sophos;i="5.70,533,1574092800"; d="scan'208";a="136341843"
Received: from mail-co1nam11lp2173.outbound.protection.outlook.com (HELO
 NAM11-CO1-obe.outbound.protection.outlook.com) ([104.47.56.173])
 by ob1.hgst.iphmx.com with ESMTP; 09 Mar 2020 19:02:52 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dktlHiZcT/2cgzC+RrpC4v3lQSCqYMKecpX/tZnmb7IuQJ5yBIgaU9iYNEAeK+XmPZru+DQZFwhzE8dLCqX9qeB0y5wYPvh5rXME453r61Kr5buWuZ0SdB4sJ0zgt96FujnqfV8UoZOjdorJvUBRlzknJTmwriCFxCcjCiGHqNofNs3LgAm9JJbNMQjKSmeCD0QdzjhpJ6MSd8SCya9atj26pAHXXMX5ROBmqKB1VvyK9jIVQHPIej/WoB9wC1P0NaHa4hCtqOOIwlJXxMzIKj8wS7Xgbt3PpPbru0YFNdH3yRgWxVTLzkiUuiTXRs1dB5MJTsblp9r+Bi3pq8uAdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WAE9FhPfiDLwl5CifCcOXcb/G9XDijP21CskKpdaI8E=;
 b=IaqpWhHnhMvbHVf2MnzXfa8NcB0Nj1vxB/ebn21L2WZDd1ms46PPHmBnpRrdKBWaC1coHia59mFMy37lz8H1NaCqn/FmMJiw88QrKklO/EgTx1Mu46nfFbk1U2f+iFuSe5diRfPfE/s/Rcdn4AsTg3GoLm3XXcYLYi5mzviMXI1u6v8rbPLuOPM3cCK/w7ZO6iw2XvxebAukAfB+f1U3soKvspVFlEycyrzV6dSi/kUdXSh+EYCSvMHHdXzbKbsGwNwUty3yhLJfdXf0qBydWgJ8r7falMdT62/oGwGb0fuPredRVzOZzP9HtxPx1GkQi54wDc4YVmeTWn51Xleu1g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WAE9FhPfiDLwl5CifCcOXcb/G9XDijP21CskKpdaI8E=;
 b=WrwCwye5ia5htYUoO8POYHNTyjiN6l7+vixs2V7NcIunmCIzc0HQOMyBQG/sj6TuouO0+iBMpXaWsi2RrYveXUG/9065tQf1R2cxcazhVS/r1btOf0bGyLqOWGrcBxQH/W8xTUsQDTQp/k+9I8U+9Jsf7Nw5eVJYaW5Ov6U54fY=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Anup.Patel@wdc.com; 
Received: from MN2PR04MB6061.namprd04.prod.outlook.com (2603:10b6:208:d8::15)
 by MN2PR04MB6685.namprd04.prod.outlook.com (2603:10b6:208:1ec::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2793.15; Mon, 9 Mar
 2020 11:02:50 +0000
Received: from MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::159d:10c9:f6df:64c8]) by MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::159d:10c9:f6df:64c8%6]) with mapi id 15.20.2793.013; Mon, 9 Mar 2020
 11:02:50 +0000
From: Anup Patel <anup.patel@wdc.com>
To: Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Albert Ou <aou@eecs.berkeley.edu>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Thomas Gleixner <tglx@linutronix.de>, Jason Cooper <jason@lakedaemon.net>,
 Marc Zyngier <marc.zyngier@arm.com>
Subject: [PATCH v4 1/5] RISC-V: self-contained IPI handling routine
Date: Mon,  9 Mar 2020 16:32:07 +0530
Message-Id: <20200309110211.91130-2-anup.patel@wdc.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200309110211.91130-1-anup.patel@wdc.com>
References: <20200309110211.91130-1-anup.patel@wdc.com>
Content-Type: text/plain
X-ClientProxiedBy: MAXPR01CA0071.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:49::13) To MN2PR04MB6061.namprd04.prod.outlook.com
 (2603:10b6:208:d8::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from wdc.com (106.51.22.61) by
 MAXPR01CA0071.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00:49::13) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2793.11 via Frontend Transport; Mon, 9 Mar 2020 11:02:45 +0000
X-Mailer: git-send-email 2.17.1
X-Originating-IP: [106.51.22.61]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: ea943b68-7003-4f44-43dd-08d7c4196823
X-MS-TrafficTypeDiagnostic: MN2PR04MB6685:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <MN2PR04MB6685D41F37303A9C83678C698DFE0@MN2PR04MB6685.namprd04.prod.outlook.com>
WDCIPOUTBOUND: EOP-TRUE
X-MS-Oob-TLC-OOBClassifiers: OLM:6790;
X-Forefront-PRVS: 0337AFFE9A
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10019020)(4636009)(136003)(346002)(366004)(39860400002)(376002)(396003)(199004)(189003)(16526019)(5660300002)(186003)(1076003)(36756003)(2906002)(478600001)(26005)(8886007)(4326008)(55236004)(7696005)(52116002)(8936002)(316002)(81156014)(8676002)(44832011)(81166006)(55016002)(956004)(1006002)(110136005)(86362001)(54906003)(66556008)(66476007)(2616005)(66946007)(6666004)(7416002)(32040200004);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB6685;
 H:MN2PR04MB6061.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 78Uvk1jzGZF2Vmy3tLFDFzI19PH0GsNfeAHBbRdqnMy1DYeHHlRyatB9ebEGESlNT37oODJQtJ7VBPcy/hB04xck4ybhvxjcRyQBAv8cF5o7fIKG18jkpxza5HIQ5C1cNX+4aM0Ciiknn7z+dNEkZtiCyBwyBUhXTFr5z0flGjz07X5vWPHlIi7oKO7dHlj7TWIoA390vPRnYvmKlOXVPlpP/vcCUy99dfNnRYs96u5+P3tcVNhRNnbOsWAI5jODGy+G0aTnQ1BSeT50VOMVAdfNI3TjRULhdtlQwlgIR3jT+I5DUe1WixGxyl+GR31aDXD0NwHD99iTOgnGzR2iKMMQZP6fMNaMPfHZh+X74pzEfiFVjxyOo4C4IVM3tzNS6HNtyHGD97/Jkjmr0Fi8ON6DvGidHn4yKs5AktdUlrpvD4fWYINIMquCXR2tbyZW5f94eA5LLeSgPlZ3kG6zD+xxLW0+tZC5C5GUTwERYBPXCqh6z+FNdY4+JyGUeGQm
X-MS-Exchange-AntiSpam-MessageData: dndXmUsYdWzDsyOW+yWNx8kUoviYrLyD4T3zMaLhURgdhKessTpBQtp0WN82kuN9kCoALtYeI8VZPfZNF6RpcMzFhwO6i+UgEWLCCtZw7C6rnEatOE8rKjAAeklr69VmW20jqpZB8rUXN56okwTt2w==
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ea943b68-7003-4f44-43dd-08d7c4196823
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Mar 2020 11:02:49.9570 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: U4gkWY9QzLfC7TRJt4haYOCDcsWNBQXuxawMYrTu+G6zKIrj4YCEpvYsCPpKXZ63AlgE+DnXDFItPmd++8GSbQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB6685
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_040254_100092_CEB10570 
X-CRM114-Status: GOOD (  14.48  )
X-Spam-Score: -1.0 (-)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [106.51.22.61 listed in dnsbl.sorbs.net]
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.141 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Alistair Francis <Alistair.Francis@wdc.com>, linux-riscv@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Currently, the IPI handling routine riscv_software_interrupt() does
not take any argument and also does not perform irq_enter()/irq_exit().

This patch makes IPI handling routine more self-contained by:
1. Passing "pt_regs *" argument
2. Explicitly doing irq_enter()/irq_exit()
3. Explicitly save/restore "pt_regs *" using set_irq_regs()

With above changes, IPI handling routine does not depend on caller
function to perform irq_enter()/irq_exit() and save/restore of
"pt_regs *" hence its more self-contained. This also enables us
to call IPI handling routine from IRQCHIP drivers.

Signed-off-by: Anup Patel <anup.patel@wdc.com>
---
 arch/riscv/include/asm/irq.h |  1 -
 arch/riscv/include/asm/smp.h |  3 +++
 arch/riscv/kernel/irq.c      | 16 ++++++++++------
 arch/riscv/kernel/smp.c      | 11 +++++++++--
 4 files changed, 22 insertions(+), 9 deletions(-)

diff --git a/arch/riscv/include/asm/irq.h b/arch/riscv/include/asm/irq.h
index 6e1b0e0325eb..0183e15ace66 100644
--- a/arch/riscv/include/asm/irq.h
+++ b/arch/riscv/include/asm/irq.h
@@ -13,7 +13,6 @@
 #define NR_IRQS         0
 
 void riscv_timer_interrupt(void);
-void riscv_software_interrupt(void);
 
 #include <asm-generic/irq.h>
 
diff --git a/arch/riscv/include/asm/smp.h b/arch/riscv/include/asm/smp.h
index f4c7cfda6b7f..40bb1c15a731 100644
--- a/arch/riscv/include/asm/smp.h
+++ b/arch/riscv/include/asm/smp.h
@@ -28,6 +28,9 @@ void show_ipi_stats(struct seq_file *p, int prec);
 /* SMP initialization hook for setup_arch */
 void __init setup_smp(void);
 
+/* Called from C code, this handles an IPI. */
+void handle_IPI(struct pt_regs *regs);
+
 /* Hook for the generic smp_call_function_many() routine. */
 void arch_send_call_function_ipi_mask(struct cpumask *mask);
 
diff --git a/arch/riscv/kernel/irq.c b/arch/riscv/kernel/irq.c
index 345c4f2eba13..bb0bfcd537e7 100644
--- a/arch/riscv/kernel/irq.c
+++ b/arch/riscv/kernel/irq.c
@@ -19,12 +19,15 @@ int arch_show_interrupts(struct seq_file *p, int prec)
 
 asmlinkage __visible void __irq_entry do_IRQ(struct pt_regs *regs)
 {
-	struct pt_regs *old_regs = set_irq_regs(regs);
+	struct pt_regs *old_regs;
 
-	irq_enter();
 	switch (regs->cause & ~CAUSE_IRQ_FLAG) {
 	case RV_IRQ_TIMER:
+		old_regs = set_irq_regs(regs);
+		irq_enter();
 		riscv_timer_interrupt();
+		irq_exit();
+		set_irq_regs(old_regs);
 		break;
 #ifdef CONFIG_SMP
 	case RV_IRQ_SOFT:
@@ -32,19 +35,20 @@ asmlinkage __visible void __irq_entry do_IRQ(struct pt_regs *regs)
 		 * We only use software interrupts to pass IPIs, so if a non-SMP
 		 * system gets one, then we don't know what to do.
 		 */
-		riscv_software_interrupt();
+		handle_IPI(regs);
 		break;
 #endif
 	case RV_IRQ_EXT:
+		old_regs = set_irq_regs(regs);
+		irq_enter();
 		handle_arch_irq(regs);
+		irq_exit();
+		set_irq_regs(old_regs);
 		break;
 	default:
 		pr_alert("unexpected interrupt cause 0x%lx", regs->cause);
 		BUG();
 	}
-	irq_exit();
-
-	set_irq_regs(old_regs);
 }
 
 void __init init_IRQ(void)
diff --git a/arch/riscv/kernel/smp.c b/arch/riscv/kernel/smp.c
index eb878abcaaf8..1e8f44a47e14 100644
--- a/arch/riscv/kernel/smp.c
+++ b/arch/riscv/kernel/smp.c
@@ -121,11 +121,14 @@ static inline void clear_ipi(void)
 		clint_clear_ipi(cpuid_to_hartid_map(smp_processor_id()));
 }
 
-void riscv_software_interrupt(void)
+void handle_IPI(struct pt_regs *regs)
 {
+	struct pt_regs *old_regs = set_irq_regs(regs);
 	unsigned long *pending_ipis = &ipi_data[smp_processor_id()].bits;
 	unsigned long *stats = ipi_data[smp_processor_id()].stats;
 
+	irq_enter();
+
 	clear_ipi();
 
 	while (true) {
@@ -136,7 +139,7 @@ void riscv_software_interrupt(void)
 
 		ops = xchg(pending_ipis, 0);
 		if (ops == 0)
-			return;
+			goto done;
 
 		if (ops & (1 << IPI_RESCHEDULE)) {
 			stats[IPI_RESCHEDULE]++;
@@ -158,6 +161,10 @@ void riscv_software_interrupt(void)
 		/* Order data access and bit testing. */
 		mb();
 	}
+
+done:
+	irq_exit();
+	set_irq_regs(old_regs);
 }
 
 static const char * const ipi_names[] = {
-- 
2.17.1


