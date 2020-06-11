Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CD601F6180
	for <lists+linux-riscv@lfdr.de>; Thu, 11 Jun 2020 08:14:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Type:Content-Transfer-Encoding:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=F3+d5bWmeqvTvhrryR30c9HWFWaDlvIbgYTQqFLfo8Q=; b=NAlFp389PWVA0ZkEiQ9fFBwba
	ZexSbwppprNASCU9vJUhVy3rhQJ/5jv+8qjY83YdPIq93pUSVa5FbbMdrHu/1dGonjPfVZncJpiJg
	pNCXLYkJFEs1tD1rntv2O8dT+zbpoLhqAe9XqhzEmIAIvp7yb0NJ7IurMeYlaIejysi7pX2XkWpWw
	CP28DXeTsmmC7PUPG1ikow+29u2LGKaTohJ1ltW85thCUgie4do2lHK+ubNkuSXSVlgnTIVCJbhHO
	8yPJykLCC+bRZTsMdKWpyEsdqUWleHG0brmoP0WhIzd0MKjfVJGlfhfepbTBklig13jlMNCSZ+86S
	vaNTlEBAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjGTy-0003TV-VG; Thu, 11 Jun 2020 06:14:34 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjGTu-0003SC-SL
 for linux-riscv@lists.infradead.org; Thu, 11 Jun 2020 06:14:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1591856071; x=1623392071;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=oXBz3QIOjsPX0jC03lUnIYjb1i91Mp9oQG+63oZwEUA=;
 b=YlaVkSVpzq0/jOJm39XxsjTKlcXAawF2Px5FDTXU+aNZx8VohykGbp6r
 YikYjQHLiQiJ1akYhnLMjJ9F3jEGDmrqiO/4iO5xgbsU5V907jMYFOvtb
 Ebijl2A/+cyqWit/IndsEt2Xan7ZSCV6kxMPF3FYDWcjPzfeiQ45KFnOy
 9zJWAhMhobq8/uw7R0gSi5/CDOMBqWfW0wDXKQznzLg0PoGQS/rIZW27L
 FQT3ntsMPlBwel8tD6nuqZTEaA82Ofj9NisrvKxqVIXBDB0K3knkEkVz7
 ia3R2Eeaou/eVx6sNYgy3rQKJ8zAAghR9xLRAlZZ8yPCFcD0Onm2/80uk A==;
IronPort-SDR: QS7hgjxF6+orURD0S3gQFUSNNI5yFbdpSlObFVAPDBegnxRbVSsekPv1ug8ByP7KzckmodbxP6
 odxsmsKBG+wHtzTkHKwaKXaf45gK4iZc7OJL+YW2Xgw8LkPcnjpvtKWAae2FJ4QDX3l9Z6L7Z9
 mJ12dr8EmGTKYsX9Fy8iqUpxvqbQ/tCWUXkJNH5AyV24tIKgUQCmFd3SDLO6lwQtRtUNVyb++m
 sko2RaGm0hEYGXiRLFUA6o6/In0oMT5g5/aE6E1C3wdc9aB/qR0S087DXftywV1hLUdJ5irKZv
 3OA=
X-IronPort-AV: E=Sophos;i="5.73,498,1583164800"; d="scan'208";a="141117306"
Received: from mail-mw2nam10lp2103.outbound.protection.outlook.com (HELO
 NAM10-MW2-obe.outbound.protection.outlook.com) ([104.47.55.103])
 by ob1.hgst.iphmx.com with ESMTP; 11 Jun 2020 14:14:29 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Zl5oHoUZgyi02cjMmhwlPIJXzChXR/Az6UUlum/Xg/PBXq82cMMJoA+SEBK4rFBCinWHFkR/gX7jE+jcCeFpVRr8qSS12e872NFhhnIqZmslbHlGJ//f10V3Na0op5pSlIswiriGVPQe46HouTUAxRotKrI0j68Tqd1eMORVHz1o+JMpGBStXQYzOKZVw6v3e9c1LN+7dxeaABv2i/+10UbhSfdMMdgEtoyXlmOqhmbVgVr5SDUL3HLyMOsgb2DukxZbKdEEXJtegdExi1y3+nO09U2kLWHrnrT48jNEqJho37+WfO/caJSfGN7zjvBe98XsQcAlZeIYvGNSE2N4Tg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=F3+d5bWmeqvTvhrryR30c9HWFWaDlvIbgYTQqFLfo8Q=;
 b=AewErGXdAt8AJcFY2NurW4oLG6Y+pj5xwnNMtHA8gEI99kpfhBd6c8aZPb1MBufgQTRDoby1Xkb8KslL9l0LJvAm6gplJa3WGswlU7wAx1B4QjjcNXtsNcPrjgBmFXnc/BvlPy2wvZ2YFB+fRbaLcI9hWghYNQwbbVw8mp7krtyZXWVEpV9PpWzQkaLfNDxvmhFBnO+vbwe9Ccp7GmAcpYX7f9FNsg033jpLLER7WSRDMx/RtdguNhZMdopb4QjQq8SGnsX+l+KAbEIiOZQ7CMijj4AEY8N3h6wKkvoKpz8O3aKrCW+YTfde98ubqv9VX5lRRSS5R3xJpGrGDLH1nQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=F3+d5bWmeqvTvhrryR30c9HWFWaDlvIbgYTQqFLfo8Q=;
 b=yfhtwwBSBoKzplV6zBs/7KRPRxHtdFY4emJgaBQmRQbb50SBX1zCbIHsHCt9+YnSQlt+YU//f56PaY8SlK6TdI3hOj8ey1pqyrfKRRusnZCfxewDqi+7GLJoqTK/potzASDgNaPDckmXsLOA02Zr7xwBfTLkEevbWpKxJ8je23g=
Authentication-Results: dabbelt.com; dkim=none (message not signed)
 header.d=none;dabbelt.com; dmarc=none action=none header.from=wdc.com;
Received: from DM6PR04MB6201.namprd04.prod.outlook.com (2603:10b6:5:127::32)
 by DM6PR04MB6332.namprd04.prod.outlook.com (2603:10b6:5:1e7::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3066.19; Thu, 11 Jun
 2020 06:14:28 +0000
Received: from DM6PR04MB6201.namprd04.prod.outlook.com
 ([fe80::f8b3:c124:482b:52e0]) by DM6PR04MB6201.namprd04.prod.outlook.com
 ([fe80::f8b3:c124:482b:52e0%5]) with mapi id 15.20.3066.023; Thu, 11 Jun 2020
 06:14:28 +0000
From: Anup Patel <anup.patel@wdc.com>
To: Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Albert Ou <aou@eecs.berkeley.edu>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Thomas Gleixner <tglx@linutronix.de>, Jason Cooper <jason@lakedaemon.net>,
 Marc Zyngier <maz@kernel.org>
Subject: [PATCH v8 1/6] RISC-V: self-contained IPI handling routine
Date: Thu, 11 Jun 2020 11:43:45 +0530
Message-Id: <20200611061350.434293-2-anup.patel@wdc.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200611061350.434293-1-anup.patel@wdc.com>
References: <20200611061350.434293-1-anup.patel@wdc.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: MA1PR01CA0077.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00::17)
 To DM6PR04MB6201.namprd04.prod.outlook.com
 (2603:10b6:5:127::32)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from wdc.com (122.182.246.89) by
 MA1PR01CA0077.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00::17) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3088.18 via Frontend Transport; Thu, 11 Jun 2020 06:14:23 +0000
X-Mailer: git-send-email 2.25.1
X-Originating-IP: [122.182.246.89]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 702b8489-7a2b-4756-bcbb-08d80dceb25a
X-MS-TrafficTypeDiagnostic: DM6PR04MB6332:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DM6PR04MB633216A1188027305ED45F5F8D800@DM6PR04MB6332.namprd04.prod.outlook.com>
WDCIPOUTBOUND: EOP-TRUE
X-MS-Oob-TLC-OOBClassifiers: OLM:6790;
X-Forefront-PRVS: 0431F981D8
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: uPDa0coE1KPb4Akd6pTeOP0Z7USseXAa0oigQM22opUFev1MqvzB2rkoXBL6DjqDdoabYFLecveHYL351ZtK9Uz1j56NvfNsx7+jCwrGWE2zcDCkHjA1o/uhZmqQ65oaoOSDGsfxjymbuFuFCPOlBgWu043P5qqfaHxS5iAofBw2TUa1XJpBAtXGA1cYfu9jZjUAHXxsxyKAMS9GWefIXuxXhJYfsJvV0bCl1sOz37iwbr7Zvg/5iZfXiKoMUURtBIfz96vbchcPm+n2u2yct6xTJL9xxckhcd13YmZSlPftJQxSbe11CEykzNbKLtuAPp5x5VrhwE1IFm3oHHe76w==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR04MB6201.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(136003)(39860400002)(376002)(366004)(346002)(396003)(36756003)(16526019)(4326008)(186003)(44832011)(2616005)(55016002)(8936002)(1076003)(5660300002)(956004)(7696005)(110136005)(7416002)(83380400001)(478600001)(52116002)(8886007)(86362001)(316002)(6666004)(54906003)(66556008)(2906002)(8676002)(26005)(66476007)(66946007);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: DaMbqh7/GVCAN2rCxkt6KjNKuSiNslh5dZWAJEkN9d55J2/s/YrH9lBOAcmxUcJ5T6sAFaklYMHU1dgbBVTp3/WdZEV7uU9MJC4G9cbVOhqrWuMxPS/OoKY83N5mC2CJbNZs+5du3r58ZyjW/WKdnb3WH6+xfHlVBTnYWalXxtGbivCDVZX3yExXxAtIaULAIzS9kwRGOmiCb4BuTpB7O07AfTqTV3eUkIxUWKfzrKhqDEumk01vUOkZUAz4neHaX5kOeHgBgg1g9D6J9h9jT3gUjkAv2hzfur0dVi9Q3qzuS/nL0teXByInuyfEs+e63WY9qWst0OhPpXU4RMKEK7L0jfgFc9yNbbgWBJgqat+8HL9vt2zUOwTQFknv5h7BSHEG1ZFvvyfbu+DYdXIhXp3SpWN/NXAt8c0fhBNs6HgBZxtsgRBinxD1xWos0RNSI6f8zVbqcAdjeySt6zUGor7u4StNe2PMnTEMZhRklnY0Y3iBUA/pO3COCJ/4wM6a
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 702b8489-7a2b-4756-bcbb-08d80dceb25a
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Jun 2020 06:14:28.4717 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: dVemtEt9cOFrNMQW3+CWKa9E9Jdp4kByXCrdENbJknjwAc6zwtCja5jT6f3QbvLL73tneoc2lalV9bVv6KAK+w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR04MB6332
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_231430_985464_F54FA372 
X-CRM114-Status: GOOD (  15.51  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.45 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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


