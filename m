Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00834164B9F
	for <lists+linux-riscv@lfdr.de>; Wed, 19 Feb 2020 18:16:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Type:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=79Dsq+z7HYS/XN0lXe1CXf9tfCTICqzEfh1QY4BSOJY=; b=O0SUJnZJRTBgQS8HPVpRM8UXn
	o4oM2NBR0ffQleO3CtD57+5iOMSxjWGoyC5q9KoZ4G4+D+oeHitYOUrMfr+lzfWQ11sbTL8U6iWpm
	UKWJnocrJwZ9FNLGHmDSIwxCovgxqkhe5/jifWuBXhKF962njcgzXqafNBT507UWaLNEg9b6iNWmp
	42Pr7M6p6Tkov8u34836QuAoJ9GHwBFA/sbQXLp5MeyS5/MDsS8HbJsOqlvx0Rh/Pw35/AymRz487
	4zJETIkPh9/fSfl7M8CLXfH8y63e2tufov2qV2YmfYxW9hdkZP6ZB2+mM0FN2PjG0DllQE0+xgozc
	14j54jjpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4Sxc-0004eK-Mf; Wed, 19 Feb 2020 17:16:32 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4SxZ-0004dY-DT
 for linux-riscv@lists.infradead.org; Wed, 19 Feb 2020 17:16:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1582132595; x=1613668595;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version;
 bh=2ZA7J1AhYAWmUeycIBFhbBQs9kp6HPfdAVLbSEmSnxc=;
 b=XQhOkinAYy/FNLp8r8JwuELA5GUYRRBuDI9G9pOWC59cQjJoo539z7BI
 5UZVoXc5NKmBftBYEH8WR+bg1fR2pCgXm11pz5oqTCBD6GiUSW6rxzH/o
 vtg0Z8Ig0sMrdgNIXfapya2LLzndLEq3lZ83qt/AEsnp2pp+v/sASYpZW
 bneCYkWnFIDdgeRHU356EwWjJ1cY0yTiJRgjqSN7RcF7Yq3FhwM//jeEj
 uoXU6jv1ZSog7cuYs8wGbuyexGpQL1hcu4jKAcGXIlrQrEAqL3u9lCslM
 intpqZ1QgqnGVyXCTB9LROX76JHcBsiCgLNUI1b9e2QziTeoSy4Cmil0y w==;
IronPort-SDR: 1XPC/k6Y4/Fy5hNTVFVkErKaBd/vEu3+bqG2p9iwHzk8g0Vt/8MfcNfK37x+0Y7P/FcVJgqSn+
 X+MzQjYjvnU8+rA5jpAvhzZ824wknSxtFSKcOA41xvLUWf5SeAf3KIZFMi0PplPM91ke8p5hqq
 hg564EKL+9s4nhJBjJapMD3Ko+yWoYGH/HokorJMmxBAo5VUlCxpKE0iDs9ROnbYG6hac6I4IS
 6ZFgPEZKpEa2fU47QXM1CPnlePI7T/Kv46GImn24tpQ0dfDdKNY3uQFMq4a9KygDwiO62cid0p
 1fM=
X-IronPort-AV: E=Sophos;i="5.70,461,1574092800"; d="scan'208";a="232073621"
Received: from mail-cys01nam02lp2052.outbound.protection.outlook.com (HELO
 NAM02-CY1-obe.outbound.protection.outlook.com) ([104.47.37.52])
 by ob1.hgst.iphmx.com with ESMTP; 20 Feb 2020 01:16:36 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TOKe+ROqyNnnTTupgYX7ziqwEr7grOoPG/cyTWel1roZJrcc9pxGphUGQ69yKfeq6uBgnYnAMNtWgWF5w/GBuuYKYPRYmdxhOCXe6TieKNH76Xz8HHjGWp3xv/EZfE1C0EB4JPWE9cYOmf2w3mSN9NtPm90i2mJlyJVySOJcLjfz1k82o7h+h/96rvOoXNzW9RRa/apaOOgmelX4pPUpfKf9IYtua7ZZBPLRi8tnTYmwapoyElAbSa48gg8I2t0+v/8KLnj0CShzso4EGDukCgKpSDq6Jgkp4oDMBinG5sgtEzKdHv3Ld81yRz5yk+9v3cRO6ZS8EFwlo6twedNTEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=79Dsq+z7HYS/XN0lXe1CXf9tfCTICqzEfh1QY4BSOJY=;
 b=QG8WG39lrMIvRW5jvhV6dmuyrpWpDmJm34W75oBTNTXkUqjsgx5HIRs8eekGPu8x1VofAEbSCaJtEWZj13eX9tqvEADYp9M/9kRgZpSQ8fL8Y1XvuEnga22FBtF5XK4yZrUbzsHJSX3Dq6C5ENSgJJ6Lb3tSwVJHJN4V/RqAztbzfuSigu/CuiAnKbXy4CFubiihhrHXCqboqkkeStxlCvEJ+kiFcRu668AWsSCebhSNifRSzSCXmFWsucdsYRKQcEboZFJ9nqxhlcXFMVGO0pJcLRdZakElICmdIkeRoX5OaOKs8CLNaTmipmLhQJW2IhaJnJudgZ1nckmGLUArbQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=79Dsq+z7HYS/XN0lXe1CXf9tfCTICqzEfh1QY4BSOJY=;
 b=Lqg2EsIeKdCm7nMlbTNenXIA4K8dHQRhkWpqNkXT934thYUQEjIEHyIJ5lkXOoCT75JR2T5cYQjiTiym4MVujNQ5RWTlnEYd6Aw3Ayh44VnhheMJKa/NW9jI6zyUwI741jSnW0BWPgXpzJCn3vv5WwtkKzy+806+qE7G1GIpAPE=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Anup.Patel@wdc.com; 
Received: from MN2PR04MB6061.namprd04.prod.outlook.com (20.178.246.15) by
 MN2PR04MB6688.namprd04.prod.outlook.com (10.186.147.14) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2750.17; Wed, 19 Feb 2020 17:16:11 +0000
Received: from MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::a9a0:3ffa:371f:ad89]) by MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::a9a0:3ffa:371f:ad89%7]) with mapi id 15.20.2729.033; Wed, 19 Feb 2020
 17:16:11 +0000
From: Anup Patel <anup.patel@wdc.com>
To: Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Albert Ou <aou@eecs.berkeley.edu>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Thomas Gleixner <tglx@linutronix.de>, Jason Cooper <jason@lakedaemon.net>,
 Marc Zyngier <marc.zyngier@arm.com>
Subject: [PATCH v3 1/4] RISC-V: self-contained IPI handling routine
Date: Wed, 19 Feb 2020 22:45:17 +0530
Message-Id: <20200219171520.20590-2-anup.patel@wdc.com>
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
 15.20.2750.18 via Frontend Transport; Wed, 19 Feb 2020 17:15:51 +0000
X-Mailer: git-send-email 2.17.1
X-Originating-IP: [106.51.29.34]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 507b075b-26f1-472f-feb3-08d7b55f6ad1
X-MS-TrafficTypeDiagnostic: MN2PR04MB6688:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <MN2PR04MB6688AA2B5F312A8F2751D2C18D100@MN2PR04MB6688.namprd04.prod.outlook.com>
WDCIPOUTBOUND: EOP-TRUE
X-MS-Oob-TLC-OOBClassifiers: OLM:6790;
X-Forefront-PRVS: 0318501FAE
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10019020)(4636009)(396003)(366004)(39860400002)(376002)(136003)(346002)(199004)(189003)(4326008)(7416002)(1076003)(55016002)(5660300002)(86362001)(2906002)(66946007)(8676002)(66476007)(478600001)(36756003)(66556008)(81156014)(44832011)(2616005)(956004)(316002)(8886007)(55236004)(110136005)(16526019)(52116002)(81166006)(26005)(54906003)(8936002)(7696005)(186003)(6666004)(1006002)(32040200004);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB6688;
 H:MN2PR04MB6061.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: q7jVK12ypJZSGMt6Yfr/ZFM7ZAaL+PW+QXBpY6kQd5h+ZrUsS/e0rJR9W4o1+u6ZuVhaI3WDpgED06vJZVLJ/lYSlImqd5SUA1OKbs/iJotLQJsUsAsEuCM0CpS9XkvxarvrzWOju3k4KnlJRoAxAzuRQswwuoLRpYxoqTwzOuUunhtElXfsps9+d9s1P6vGR67oAU/8rINC77ib12Uv/t1CRDPWQKhharVQmaqeY7DkUDyDtec/PX5gzTQ5beR2fJ5baSUq8KN3Y7/M94SkaF7XHCaaTZo9TCfl6HZPIDWG7ZKGnL9r222yNgslGDIk+bni2VtVm8B+SlffvrH5dnL1AV9vbC4g579zZcAvApmyoxRVdXuH6BeEv5PzuILPrFH+MTnLHD8+XdQp59xnmLQZY2oRpUC0jMBufqQlwepcClC0lYkqpOWvTyZrfEt0MrAE96lvSLfq7Zdzu9IqLhdJ5V+KnQTskUkIhvwxPe45prlSUzHAoU9VctZixAz4
X-MS-Exchange-AntiSpam-MessageData: eqOz2jBI0IxsfGxQqY139O8L1Xio1vDmvVsf4g3Jynvz+8o4UEW1vo/RdC03nDDoNpfagmWBGQt41NSrcVqxCOfe5zG0AQF3RIuyhDTcNWM48+BFKhVJjnu6kibPZyAWHFBsOao/guvPzYIIHN/U3A==
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 507b075b-26f1-472f-feb3-08d7b55f6ad1
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Feb 2020 17:16:11.6571 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UqmRYf75e4+ejFM4w9FAv4kZRO3zTyzz0gsc6nhrlK1cfUIWTMCyM/3cJm7nEaGQn/a94IxB8iwQTCiqOe2F4Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB6688
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_091629_548237_C1696B2E 
X-CRM114-Status: GOOD (  16.42  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.143.124 listed in list.dnswl.org]
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
index a83451d73a4e..b57c038c0b38 100644
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


