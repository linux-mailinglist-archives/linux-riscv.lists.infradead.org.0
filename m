Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61AC91EA0B2
	for <lists+linux-riscv@lfdr.de>; Mon,  1 Jun 2020 11:16:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Type:Content-Transfer-Encoding:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=F3+d5bWmeqvTvhrryR30c9HWFWaDlvIbgYTQqFLfo8Q=; b=LAsCJ+NPlkkrJgbQeJJkY71bi
	UtBDbDkxlLFk8KppCqqAo51+vYjB3hd1ZTWMWXuuucyDrSRVyNRsPOhpklQuhh7J+yhx0tmcTRhoJ
	VALq+JK5M9IZj3cTVmMQi2pkboMdlny7kP8GmyXUXqERv+tFBiSY8PbOLqslfX+jYmYfNDAKFykgI
	Lh9KYBCNjWF55YsbhwaQa+yF1mQy37KBjz/hD+JzK9kNArkC99By4XVcdBd4PMk0GlZxQHlqcpRqp
	HgLORIRVaHefK0VGswml0ayPWB+u79d2bCMjBF4/23d/0K9ojbFr/qz6Pjr7KXDEhZFypCQLSQUZD
	/qkZRCbFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfgYK-00087h-Uq; Mon, 01 Jun 2020 09:16:16 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfgYG-00084Y-SD
 for linux-riscv@lists.infradead.org; Mon, 01 Jun 2020 09:16:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1591002991; x=1622538991;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=oXBz3QIOjsPX0jC03lUnIYjb1i91Mp9oQG+63oZwEUA=;
 b=Y7OvQyHbPybnsgXIAZD1Eds0D+YfRO/C55XteU+bZd1aJ0z1CQFThqTD
 JbiZPNpojdlMz6gYTottrvk0sgtSfJrlofhBxJu5oYBbOiMn0gWXb+oup
 V9Zr+YqK6wteTWstI0cu0B4kioMEAU3dzTNA/oPRxPYyjIX8derpwCAwm
 IRtsf8hvFHhfxmYtC56zDGmYaI8aaMT5fjLDjkbmC9DNQdlPW1qNU2doC
 8Psrl2WQwUPch4lxz2zppb0w7/6lY4bsUnUqropKNY/nmik2nLi9qECZv
 pAJGirn//aSA8kHGV3fuxmQZAIUElYGNbbgMQsurSzotRrDg8VvsjDlau A==;
IronPort-SDR: DSBXDChL9ZQ/C+Xjk6psca9uYr3RC/JCpjdEY7Z0NJw/NwM4Vdy3H0ULiayo04SgO1VJFQUoj2
 oiDZE+XHn5c7VFYxH0QCCupb4nGETclje5+8eYL1NP0Jibo1CMLGN60Ey8le3aXpMY3If4au6R
 MuaF9oWraEwJKKmnfMFuyOx+yV/69CuQosEKqm6YzRojU7eQmrXJs2lIz5IAu/tOv/7a3sPBLv
 3rlnfav8MylV0CB+vQdAU5QJJWCxr1tYl6WPzAi28+BlTiyIY3O2CZhLpCy6TTfs55L2fB0Q2z
 wBk=
X-IronPort-AV: E=Sophos;i="5.73,460,1583164800"; d="scan'208";a="241785959"
Received: from mail-sn1nam04lp2054.outbound.protection.outlook.com (HELO
 NAM04-SN1-obe.outbound.protection.outlook.com) ([104.47.44.54])
 by ob1.hgst.iphmx.com with ESMTP; 01 Jun 2020 17:16:30 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZLhRk8zSWS7N5olzPFXa0o5MDbt/TpflBs6lxLvwfOwHyy6qZoWNfxM+SJ+aRjVaRZFWuqY6q/Ig+ocYl1lw9NH/uPX0wLo85gd7uqZtXroExxpiCwyksZTe88CXh6nye9Z6KTsIfqpnrr020Nfmqx0TcChHaGFxJcM2k4RyeKOcLmzn5cUzJq1cIaUKLeuXAwPo3FS7B7n8raFzzJ1nHSdZGtotjTlH7bptY0l5NWM6JIiqQHaL16XwgzuQu+BV8Jn+Zq1ZecykRCJWjDMIL+7HQSvESUV5eZeue2S3Q+OXXORnqWrA7jTmFd/EDA5fpwz0+sG8t1XO3YPvXO8faQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=F3+d5bWmeqvTvhrryR30c9HWFWaDlvIbgYTQqFLfo8Q=;
 b=i5Jt9ktQSnLufYvEdcqYbWcVseTH7WYeJebrTCKVkg1/sH1SwhIM4Fd1l5Si2nshm2M0ZXzlJD6hsgZyWi83m03CCk/W+QC5THiRExgdocro5NShbU/4DR4PYh0OuQnMrjFzKHqk+bCsqCOoTdpjzhiGOXxVKsAmOjAIE7YjQVGr2Ed403QX3zUyJ7O/i46Mc7ferFchXPkIO0qUx4dxl8MlHrifWjv7ISgQ9Bom2rf2Mois36ICOA3PK/R1Virzf99uHYtEHPCWJT0S6MP7/M/UJELDHUzzxoJHeLsNOgHaURY4UEtaZU9JHCGI/HcFQxaYHZEKnRyZ8oWB0ntDNg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=F3+d5bWmeqvTvhrryR30c9HWFWaDlvIbgYTQqFLfo8Q=;
 b=ySbe3YeuzgGksCOB+8pbRsag8aW2UpyyV/kMORQK1MTPzcE1/42cv8dnc6669m6W70R0lblUMiyAdX+m15hhcQr/ZCHVjZ2dO83OitcHv6etydkHGMrH/d+IIouAyp7/G3jodUcAxPddBF0PL+sBmm9Z3feQXRD4tiNrf86sFN0=
Authentication-Results: dabbelt.com; dkim=none (message not signed)
 header.d=none;dabbelt.com; dmarc=none action=none header.from=wdc.com;
Received: from DM6PR04MB6201.namprd04.prod.outlook.com (2603:10b6:5:127::32)
 by DM6PR04MB6955.namprd04.prod.outlook.com (2603:10b6:5:240::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3045.19; Mon, 1 Jun
 2020 09:16:11 +0000
Received: from DM6PR04MB6201.namprd04.prod.outlook.com
 ([fe80::f8b3:c124:482b:52e0]) by DM6PR04MB6201.namprd04.prod.outlook.com
 ([fe80::f8b3:c124:482b:52e0%5]) with mapi id 15.20.3045.022; Mon, 1 Jun 2020
 09:16:11 +0000
From: Anup Patel <anup.patel@wdc.com>
To: Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Albert Ou <aou@eecs.berkeley.edu>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Thomas Gleixner <tglx@linutronix.de>, Jason Cooper <jason@lakedaemon.net>,
 Marc Zyngier <maz@kernel.org>
Subject: [PATCH v7 1/6] RISC-V: self-contained IPI handling routine
Date: Mon,  1 Jun 2020 14:45:38 +0530
Message-Id: <20200601091543.943678-2-anup.patel@wdc.com>
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
 Transport; Mon, 1 Jun 2020 09:16:07 +0000
X-Mailer: git-send-email 2.25.1
X-Originating-IP: [106.51.23.166]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 14488274-f81b-4d57-c91a-08d8060c6d03
X-MS-TrafficTypeDiagnostic: DM6PR04MB6955:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DM6PR04MB69550D0CF878976AE67C21E08D8A0@DM6PR04MB6955.namprd04.prod.outlook.com>
WDCIPOUTBOUND: EOP-TRUE
X-MS-Oob-TLC-OOBClassifiers: OLM:6790;
X-Forefront-PRVS: 0421BF7135
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 9dv1/REEc7bgUc9NJ9+BczLLKasHjtP8OjQcLrtWVOe5fiySVNZyCEuWMPfVKh9mZFP2lShmdJjI5NOXU3fcZwuZN1Pk0hhBcpTrBmcYMFXYnTPVvy8o9v20ne8z+Dy3IAuqZC5Edwj3Iz6gveRx1HTDmELqY3Pkz5EXyhxfdOqPveNSB0Cx0GpC78xDVGCkjz9JkXXIxGaZEzzaWyVHEasohxEPRtOMni3Y/GNHwEzyhQ8vrrkNMIuoC6kpUGtP2juOg9MCRaYz766OY61RUWPfGJJa//iNj7XQAGGf3gEEhT1Qf/lHl3LcftJ8UAiW2SWuYrDAZbegxENAls2H9g==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR04MB6201.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(366004)(39860400002)(136003)(396003)(346002)(376002)(2906002)(8676002)(5660300002)(956004)(2616005)(44832011)(7416002)(1076003)(55236004)(16526019)(55016002)(86362001)(186003)(66476007)(66556008)(66946007)(8936002)(26005)(6666004)(7696005)(4326008)(83380400001)(110136005)(1006002)(316002)(8886007)(478600001)(36756003)(52116002)(54906003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: NkADkk40h0p+W9PVJR1Fw1E1WpmcI6RguxnX28l75kEZYxng/SL5b/AU0ZSVif9YTHNlhmoMhv8kADSKTw8R6GDWdKYD5ZlGSuKHhJJADM49U1sym8Dl1Bup7kTXjhNRlgtdW2jpy8+oZupCLb+jJGIIP5Gl6d9ivcdaNqd+BY953sgVbXSDlSHp5cCrWThM1MWrbbypWIAkH2uwCyxZ46HoRbshfYZdU95tYwj0ywj+4sSDa6aAlbvBz8f95LReHzqEK0OXuSwGs9kNA6KZLdImrhCLSfge6nfS7ebgtn8t8tymX0Y/PuUnT20vyxSu8c+jaxgXzU5rWoggD5CxSMXiHjc/3N60SKP+aXKbzmpiwn9euaOk+da1yYzZkqMXTOQcSpiAvyAjaj6inRVyKuYIL9wTimiq9MnrHfvcMzRBItriEoThhGYMYMLOg2Ij5Vs2Itj+qElIoaGsc2bS19mLkDoUBCQLsF+5Lxu8AIw=
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 14488274-f81b-4d57-c91a-08d8060c6d03
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jun 2020 09:16:11.2683 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: iuiJJISWQzfWDW8LBonAi0bYZFj8jPyGHmMs6Q5mDIXleqrTsfZTAJ4D5VbOdiA+KzMiKY+r9bNh2468hzZXEA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR04MB6955
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_021612_977882_7A83EE5E 
X-CRM114-Status: GOOD (  14.49  )
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


