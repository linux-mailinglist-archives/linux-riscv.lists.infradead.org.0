Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA01B1E906C
	for <lists+linux-riscv@lfdr.de>; Sat, 30 May 2020 12:08:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Type:Content-Transfer-Encoding:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=F3+d5bWmeqvTvhrryR30c9HWFWaDlvIbgYTQqFLfo8Q=; b=HrdQQ9hrIdkfjU7/MC/X/FZNz
	4K56JmchinLx/PIZL/1lquMu+2QRL2qzvey446k865XC8PHY2ttJ4p3b9DDyuN89zXci0SW3ZWhiZ
	M4WG74VUg6/aA7nvNEGgiXtmDAEJSDvZv+509fkB9uckVw+l7jfsr8LjosXpIaj+iNwkqm6miVbLZ
	p+DuFxPhuJ1y1ZedpRTUmsAIEr6LsZ/ULoY6TMxYGubQYR7YbQLiPNhXMXx+4hHUkGeWi0z+CCXuD
	FWRGsgCuHqJo1WETnNVd9yB7nsQMyugXZY2Pl2EPt9fiUPZ/zCmtVs4ElDhLBE+r0schix6Nn38Eh
	J5cop5fsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeyPS-0001Z0-7T; Sat, 30 May 2020 10:08:10 +0000
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeyPO-0001WS-3z
 for linux-riscv@lists.infradead.org; Sat, 30 May 2020 10:08:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1590833286; x=1622369286;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=oXBz3QIOjsPX0jC03lUnIYjb1i91Mp9oQG+63oZwEUA=;
 b=KROLLa3dyVUcKzzyvL6SdTa6DFc41dsnMeqvwj1vj3lW2hrU8StJRsk2
 ioNANJ6tDZ1hMnWg3fvgLXNE9bvY84nyZ5YGzFS0IwxLxLZRcb0NRJEgY
 4VJBKsaILLfx1UgtmGY8tk4wQyiUA2ES5V5ykkl/xOFdU61rAaJgRR/ao
 Vrq2Me6znpC5LBdq7X3O0ePJB4x8mWWe3eZ48NEpe36J29DKwZ+OyvIrX
 6kqIB9q3rqdpEtsz3NXMcqkesdQ/D1Dc3M1tcNzB9NR3TgwqXVFwrYIV+
 2h/ToQ+rsztd7yeS2OiR3jZrKZOIVYEz27rNYkI2qs/k/k42EFe3lYXIB w==;
IronPort-SDR: w2+y8ZyZeBwYpnk5Cm9Gtr9l/Qf22Py8Cmcj5gNqPudmuCDHSSLy/y7Qdt3AdVXb5DPrDg1Q9a
 gM91W88bMQiN4cuaxFiWFpcxN0uNNnasm3c9VAJm0DrbCFrsfG0fQFtJ0igezG8uu0a6N2WroK
 YRKwspPXX7y4L4lquqpym8fOjSNiIfFqFWmyjwgLn3VP+wWdpMoCpFm+zTbR7xRd1yzmHLyqYJ
 DwDtYJbqYGapJrz8Qu5rh1FQHEzomqqMrE+E7gDPPCiWIW4KnpmxYQAQyUMeAj/uVIYPZDg7LO
 TL8=
X-IronPort-AV: E=Sophos;i="5.73,451,1583164800"; d="scan'208";a="139175281"
Received: from mail-bn7nam10lp2108.outbound.protection.outlook.com (HELO
 NAM10-BN7-obe.outbound.protection.outlook.com) ([104.47.70.108])
 by ob1.hgst.iphmx.com with ESMTP; 30 May 2020 18:07:58 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LjIBhd8egish12pW9N+mYCdYBHK51gwRNmZnIUZrxWUAzTxxSesUPA4iV+nlSaVNyMlTa5VmsNNsVXdKSCc4S4TUbLNkQfean3T6nQGxaBF+ctEmXlUXfgqZghgyVC+0D+LCL+xcpsq99bxzwJwTvHcuKH/q/Yc2hnXe71RjQLKZUXomwbCSsTQoZVK4F5VgOf1f4CXz48ztmPTN//Ra3O2ANYBsMaZ0YLw1kNHvslAVfRMlLhHCODHcBAsyTzMQboPXp1VHAYILJMi9MFzS/nMhsl6Qta5jrSsmZ0GPQnEDI+W0ddzKV8DttshdgsgPttfcGM9IOYijv8fEmEo1zQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=F3+d5bWmeqvTvhrryR30c9HWFWaDlvIbgYTQqFLfo8Q=;
 b=ez43gffCEKtQAIZPHqfMIHBgkFax/keQ16qs/0/h9MZBBcg/tNGIKMxaWXZbdVyYoAMet2ALQDPY/y0CeU7Lm9cJZIOTE47Kf7v8/3lTY+ydCi7Z72+wvECFcCdqSxA0IRkI5h3Xu9EGuTbM+ECnwVgdxMjwXZFkiemzqJ/MtB/jBUpzoeNumvMQ6tav/Z1VgA4Q0EQ6Fv+ogXprkITF1C4sUDSMlGq99IVdVAMcm2xUtWqZYiCPgO1+1FUn0+NFAybOg5e1a8sjZSzPshKjnySTomj3GcMqXT8QatT6IZSI74I7EM4QMBeRz66S+v2NCCUEuERCztFHnFQGOxPbZw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=F3+d5bWmeqvTvhrryR30c9HWFWaDlvIbgYTQqFLfo8Q=;
 b=v9uVIT3MI3IBrhNAzwddd5jht/b3Sib3+s+LQWTPPTl642gLa5xKKgdXmE8LbFWbOsHrWqoqxTkHnd+bnX4COBiLk4MifUNYKlDeRzIuA30zGodTjAh36rbuZ2J3qcnUu5BuFEE6FFZSp9fPzAjPgeKqAHfT74AFVeB3WFRAKuI=
Authentication-Results: dabbelt.com; dkim=none (message not signed)
 header.d=none;dabbelt.com; dmarc=none action=none header.from=wdc.com;
Received: from DM6PR04MB6201.namprd04.prod.outlook.com (2603:10b6:5:127::32)
 by DM6PR04MB4314.namprd04.prod.outlook.com (2603:10b6:5:98::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3045.17; Sat, 30 May
 2020 10:07:56 +0000
Received: from DM6PR04MB6201.namprd04.prod.outlook.com
 ([fe80::f8b3:c124:482b:52e0]) by DM6PR04MB6201.namprd04.prod.outlook.com
 ([fe80::f8b3:c124:482b:52e0%5]) with mapi id 15.20.3045.022; Sat, 30 May 2020
 10:07:56 +0000
From: Anup Patel <anup.patel@wdc.com>
To: Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Albert Ou <aou@eecs.berkeley.edu>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Thomas Gleixner <tglx@linutronix.de>, Jason Cooper <jason@lakedaemon.net>,
 Marc Zyngier <maz@kernel.org>
Subject: [PATCH v6 1/6] RISC-V: self-contained IPI handling routine
Date: Sat, 30 May 2020 15:37:20 +0530
Message-Id: <20200530100725.265481-2-anup.patel@wdc.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200530100725.265481-1-anup.patel@wdc.com>
References: <20200530100725.265481-1-anup.patel@wdc.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: MAXPR0101CA0037.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:d::23) To DM6PR04MB6201.namprd04.prod.outlook.com
 (2603:10b6:5:127::32)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from wdc.com (49.207.61.131) by
 MAXPR0101CA0037.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00:d::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3045.21 via Frontend
 Transport; Sat, 30 May 2020 10:07:52 +0000
X-Mailer: git-send-email 2.25.1
X-Originating-IP: [49.207.61.131]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: eb9a437d-262c-4bca-2e48-08d80481530e
X-MS-TrafficTypeDiagnostic: DM6PR04MB4314:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DM6PR04MB431453F8C7EA264CF04973C88D8C0@DM6PR04MB4314.namprd04.prod.outlook.com>
WDCIPOUTBOUND: EOP-TRUE
X-MS-Oob-TLC-OOBClassifiers: OLM:6790;
X-Forefront-PRVS: 041963B986
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: D7F4q5aW+B0o2vKJtXR4WqWitg7wyTIXK/zioAsyDMn/eJEaiCe+rFQ2aaNwT6YS4xuv7yqzMRr6OSPG/8lf6T0/jmoLeHtaqU9O1LvxWOaATh4Pvl1LrAtGurO7YdvhbO0iLQIaxLGb8ALfMMxyysIivUFmCNopNtxSrIbAB9N5FxHoxRYb84pNh/nhFGJbbTyEtlIxk8NPGqVlRU1BGrG1fwM6dOdKMmVu7qSuGuyKcw77711c0aZVlSLEnYajRsUNBRkxNTxHhCjiBWBYq+t/tbK/Cn4oboAcqvkCIzfNSX6+qldIMUl9mOChOIITcBR++Tx+rqeKV5cdoX40Iw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR04MB6201.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(396003)(366004)(346002)(136003)(376002)(39860400002)(26005)(1006002)(186003)(1076003)(6666004)(55236004)(4326008)(956004)(8886007)(16526019)(5660300002)(2616005)(8676002)(8936002)(478600001)(36756003)(44832011)(2906002)(55016002)(7696005)(52116002)(7416002)(54906003)(110136005)(66476007)(66556008)(66946007)(86362001)(316002)(83380400001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: tJtnPMeEwkmYsE+4/6FdhnJbYGqltaV18E/G185v6P+ev9/zaDXvwPCI7uhIPneFbREh5fZSfyk9s704ZAepuX2EU6Yxh38X1H196VUxTLrx5nKyJn9Ir7EEeHi6BcNhYQ/NcmV3q55Tq1gGlk2RNMpyoLJy5/MsSpjKBqxdJ/RjntuFtRj8kuVDeV45Vhm2LlWxGYF001Tij88pWm37aqWJlrcV/zHx3bROfe8TeNoMquEigpctlapvi+q3HdFfbfVswhc8osjBT4HHsSs1X1gy5dLG8gBhVEFi+nHqEgP+rZRXmygM4n9grkhgXL7a3sd7It0Tjnnn32n7+U5EyUl35cl/CwUkDB2oJpuwXtf1i+6hUWYuglPu2VGqbkOWgv2JqM6uA0kW5bys/c9qF6dJnFr7sYj0XquxtSbfwTvh89Z0LOvhY/qh9NefXLmAI78TC9Itw1iolBZNIay2GzoQ9wJM+ZoxC3bUKAsimpfx5GeylgD6NapqiWlI9X5q
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: eb9a437d-262c-4bca-2e48-08d80481530e
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 May 2020 10:07:56.5664 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: IRVm+YxdVJ4EldgXfY5Wh4vPHLtY//9s23HH4q+k51JtXBrc3cvcs3fGS80JwUxCXZA4KpFFygXhXFMMPkhwcw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR04MB4314
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200530_030806_172099_3ED08B7A 
X-CRM114-Status: GOOD (  15.05  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.144 listed in list.dnswl.org]
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [49.207.61.131 listed in zen.spamhaus.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
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
Cc: Palmer Dabbelt <palmerdabbelt@google.com>, Anup Patel <anup@brainfault.org>,
 Anup Patel <anup.patel@wdc.com>, linux-kernel@vger.kernel.org,
 Atish Patra <atish.patra@wdc.com>, Alistair Francis <Alistair.Francis@wdc.com>,
 linux-riscv@lists.infradead.org
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
Reviewed-by: Atish Patra <atish.patra@wdc.com>
Reviewed-by: Palmer Dabbelt <palmerdabbelt@google.com>
Acked-by: Palmer Dabbelt <palmerdabbelt@google.com>
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


