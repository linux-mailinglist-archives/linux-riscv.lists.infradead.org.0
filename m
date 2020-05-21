Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57EAB1DCE1F
	for <lists+linux-riscv@lfdr.de>; Thu, 21 May 2020 15:34:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Type:Content-Transfer-Encoding:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=LathR0m9i7FyVOJ64hGhs0rTX4mE9hFs+yy0CExU/Ag=; b=e0dxR2xcS6eWZMU1UqSsn8WFN
	lFR49jhnj/GNnITfUTD8HNpjCVj001xVVHkw5T+WZ7DRXEMgXme9ESvAY0BSP/Kny1Dyjr5gka4/Z
	aQkaz0uqjFzVJVae5kEOclpFR/2Se6K1p89U00bo/7339IBfRAatChFjhTYBguQ0bTnnpYYrkoQoI
	/FLokgLpxha0R+dc5Q7YNN0L5LYWPCirqkaj1c8avo2brOMFEYjyWTnr/JN412oR5ygh9SqLRHGyT
	Ox91AQQK6t46Q2a7RwolZGGL9wszdQRLYXabCxOLk29+WnspQ60jj86sMCOQLWBjHPzBdcQCQ0Ez7
	p6vhqzk6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jblKh-0004Wz-IH; Thu, 21 May 2020 13:33:59 +0000
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jblKU-0004Pe-CR
 for linux-riscv@lists.infradead.org; Thu, 21 May 2020 13:33:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1590068026; x=1621604026;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=wbeILlWjjXWAUcbVBnq8BPPuGr4gQ/R9cwOoO+MveXY=;
 b=UydVjDp9Uh//JAT2e7og2lykjCg3ySk0JS5clJp+x8CFO7T+7FsKf1xt
 p4eaTtNszOVlZ6L0BrQKTEnAfZSiaRTXF1xi+g7DDyMCK4Mj1upCis777
 OtR37pydUO0UDwlMw9aHE6qb0B+Ddps8Tix/58AbhHuS7uTji54/hX60y
 5ZdSwaHnGxsR5feBYVoLYM4PmNutEN3rZhMBdf4f7d8BAFjYqaoqdooEh
 +uinjGBGL2ALVkB1/4bv30Two//VWvVj1Tn/hA0iEG5UIpUF+rdUNhaLT
 oThy8Q14ULizwy6MWiNsI14r1hbOuh3ZiMFS9SC+kd9IO1wIEIpcQp6RU Q==;
IronPort-SDR: pEgfAbqPDas1l+2zwQI+Don7ZGluA1EbPpb8OWx71Z3JlXPPOAABnLBZAS4wu+m7/JnF1YOAu6
 Rp2qT43uC0iQXzYZLV9sSVqFRHe/H6DYRFzhg9MRx/J3mLvV5qNpSlJ0bphmeusnDUcVdj3PsL
 sARbAG/bOuv0PGFcpPnFey2CM39BdYOIcQQLoueBNvFER3PmMyhMuvuOkho/fVccDNWGND+/AA
 l6geSZ/HOVJCb+vnrlYaYt4c6SB0ure7VuNa6GDQ2Zpt1LCbZHDh9scFxN0lKWUAi8GWTwWsNO
 TpE=
X-IronPort-AV: E=Sophos;i="5.73,417,1583164800"; d="scan'208";a="247222572"
Received: from mail-dm6nam11lp2168.outbound.protection.outlook.com (HELO
 NAM11-DM6-obe.outbound.protection.outlook.com) ([104.47.57.168])
 by ob1.hgst.iphmx.com with ESMTP; 21 May 2020 21:33:39 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=D/AHXqsZs8uFeK13lANdmddv+yv9RBgpiZcIEauXRxJcj2o/F9BonTskhtHmHYT7wCyOZry/MiyKmFEqX1PV6RFXGG6zHkfBxZU4m53BBEpQhhI9Kj27EtPDJr/lzNYrk0LUttdIHTefiTVAmwc9Zod6jH5hu9iU8wrVFyiO3peeu0teR8ugnMBrCaYaVN1HYFK5QInZwUZUrxTay6yQ0I7UI3GEKeUQdqsugOFUvMMGRRBnJ2uFudlm2w91l1UqDHC5g0Y2IqOaVx0MfKCpMO4D/tEuobXZ08VnFQgQ8czcGr3IXvO5bBvLjxiHurxXp4tJvK2sJtMNdgxi+FbJdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LathR0m9i7FyVOJ64hGhs0rTX4mE9hFs+yy0CExU/Ag=;
 b=dxMUz25sBU+SB47E3YdO7JZon/zwUAXvIUWt/jqJ1SdPtwBCc69cipKkeTtg/C1yhG+hag+bJzuh1gAWrFJN1WxF4LKwQTJw4wGX3zegLP8gBjALLYrmbAnkWyHpF9lfBNaWXHO0HxPbKQxBWhtmjpaTXHePYBxyHcscCpl4PiLw7PonlqNiJ8NZQRWwwAGT3k1mGLNwZslKgEO+xWcAJ4Bzkv/NIWeqKq6FuLX0fKqIMG9YGOIxzEJaLZ1p9QshCgLm3+jUzZhTAwFHPPDs4dN71GJ4EbFV62QzQGS+rs2FLn+N/YLL3z0x3/di6xglAPzD61PYM7iKeDwhLofWdQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LathR0m9i7FyVOJ64hGhs0rTX4mE9hFs+yy0CExU/Ag=;
 b=PG9q3al4Qg7VNr3uZpP64VGgTBJOCA7B5EUgpwAQ+iMWep0qxPJDmQxEcca22tcjMLTolF2fqR6W7fXf5oE1lwwdp/2cQhbSRsT5C+92lNK6jV4wtKUDVvpVk5rGSnKLJidn8aBXFm93qXGFnF0wm5X/5l+whM3osU39bswp458=
Authentication-Results: dabbelt.com; dkim=none (message not signed)
 header.d=none;dabbelt.com; dmarc=none action=none header.from=wdc.com;
Received: from DM6PR04MB6201.namprd04.prod.outlook.com (2603:10b6:5:127::32)
 by DM6PR04MB5292.namprd04.prod.outlook.com (2603:10b6:5:107::25) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3021.23; Thu, 21 May
 2020 13:33:38 +0000
Received: from DM6PR04MB6201.namprd04.prod.outlook.com
 ([fe80::f8b3:c124:482b:52e0]) by DM6PR04MB6201.namprd04.prod.outlook.com
 ([fe80::f8b3:c124:482b:52e0%5]) with mapi id 15.20.3000.034; Thu, 21 May 2020
 13:33:38 +0000
From: Anup Patel <anup.patel@wdc.com>
To: Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Albert Ou <aou@eecs.berkeley.edu>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Thomas Gleixner <tglx@linutronix.de>, Jason Cooper <jason@lakedaemon.net>,
 Marc Zyngier <maz@kernel.org>
Subject: [PATCH v5 1/6] RISC-V: self-contained IPI handling routine
Date: Thu, 21 May 2020 19:02:56 +0530
Message-Id: <20200521133301.816665-2-anup.patel@wdc.com>
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
 Transport; Thu, 21 May 2020 13:33:32 +0000
X-Mailer: git-send-email 2.25.1
X-Originating-IP: [106.51.30.72]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: c7f47604-4e0d-460d-777b-08d7fd8b915f
X-MS-TrafficTypeDiagnostic: DM6PR04MB5292:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DM6PR04MB529292B6A9DC56E3501C81AF8DB70@DM6PR04MB5292.namprd04.prod.outlook.com>
WDCIPOUTBOUND: EOP-TRUE
X-MS-Oob-TLC-OOBClassifiers: OLM:6790;
X-Forefront-PRVS: 041032FF37
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: jsW5FcXDdsX9FTzBMXaeBH23VCBUQnBYwesa5OdVE1E69JZVwhiPgwvy1XzOEW0GMgufreHKEzZrB5hVqlmV5EIUDmi6+3kLjeqVM5eGLgn2Qw5Zxrb9OH6ZZZXE7SHYMLTJWDGM6VxEEGsrhPRnBzRvUjQ5UHAl4eXtUmhOKiHgftpaZtez9/EtDLevyshp1CD0cTgrq+J0umWWu1ew/expgMoRayltdevjXk05majtfqyPD3AW9N3oHQGrgk63ZEy63YVpAGOnrz5k6J7ReEvJSz7vOB0R2t8Uf91zwfmjPK5dIOUYVAwHpaRe8g8aft7TsOMttpzz2yMzj0VHjw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR04MB6201.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(346002)(396003)(366004)(136003)(39860400002)(376002)(478600001)(7416002)(5660300002)(8936002)(86362001)(8676002)(4326008)(8886007)(55016002)(26005)(7696005)(186003)(1006002)(1076003)(6666004)(66946007)(2616005)(2906002)(66556008)(956004)(54906003)(66476007)(52116002)(36756003)(44832011)(16526019)(55236004)(316002)(110136005);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: Rgtm8S1aKMhpySJ7TXCS99fLAQNU30CarsRpYJVab6tUwPyztgtuql3g4+b0sGJ5lfohNbGC6aBiPrevgr4fRLDZ3OPiTQZq2lp+UqmxP3UJkr2mhCJ5YdqD4Du3jAdzPWp3WuKufUn5O+9rpdkhESKCah0NRVjY8GpEswVtLeljdRh9Gtk0weXSCSlu6CudeLZNfeYXmYcyqao1FK42NkPkPd3WByDUoLQSeypgLeFQufsLTM7p835TLP2Y9s0M2+kuGzffphuHkUt19CJ4EOOjz+HSje6Kd9esj+tWx+bbBzzXdzV2a1MJCT6j1tDQICi2rlKRHg02ez2UrRzE+lnOPRELWgFT/68KH76zDsYjCxQ8czHrcyKnjUBNHhxGUnhnLcYRJHL4d4kJJn7L5GKATDedAzESEXLwzJT7flsEH2Q4KpPmqhbzM7i9nuESarnPP4nE7rOJ149GAAhIQKr7KpZSOMdQHv+XZK4ggX4=
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c7f47604-4e0d-460d-777b-08d7fd8b915f
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 May 2020 13:33:38.3205 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: eL0nlKTjf5QoqqZT6mnZa9JfnZhqs5qh4NUnnV5rxjND/pED9zg8Pd1U5S4yo1xE7culrGCnvgOqkTPgMzSiOg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR04MB5292
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_063346_526232_6C37639E 
X-CRM114-Status: GOOD (  15.43  )
X-Spam-Score: -1.0 (-)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.141.245 listed in list.dnswl.org]
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
index a65a8fa0c22d..b1d4f452f843 100644
--- a/arch/riscv/kernel/smp.c
+++ b/arch/riscv/kernel/smp.c
@@ -123,11 +123,14 @@ static inline void clear_ipi(void)
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
@@ -138,7 +141,7 @@ void riscv_software_interrupt(void)
 
 		ops = xchg(pending_ipis, 0);
 		if (ops == 0)
-			return;
+			goto done;
 
 		if (ops & (1 << IPI_RESCHEDULE)) {
 			stats[IPI_RESCHEDULE]++;
@@ -160,6 +163,10 @@ void riscv_software_interrupt(void)
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
2.25.1


