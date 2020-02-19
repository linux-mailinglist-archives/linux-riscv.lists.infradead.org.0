Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D457164BA0
	for <lists+linux-riscv@lfdr.de>; Wed, 19 Feb 2020 18:16:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Type:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Upt+Sfyx6mRbUqXpVjckF9QIZ6E3N5YbOml/vcSTkH0=; b=S2D5LOoD7rwMh3ADKiRLmXCnh
	6ObeUAzlUDzq0freUQ6va/O2/SLv6SR82oCY6QhCc5pmliudp7JjSDlH3YMZgnWWh2zjB5pWTlhMt
	ABWJ/qCNSotUj2lQcHEzml437zFJWZ6XqgL9oPN/wo2C+Gs7xt+qyODSMVfcRWI4TdxIASLZoZDgp
	5IqOEvekVdymN3TbcUVlkbv8R3AbrFdmmhNuWnccjGQEQKAEoDcoluJkCmcJzt/4aTt21zmo3TN+a
	roAbyXAQCvrasWdfhlvV+mVQD1fCwocAv+jeYUlYUAUB+W5yFYJKna888Mjdw6zh48643wPEL1JXX
	3U9PElvQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4Sxg-0004hE-1r; Wed, 19 Feb 2020 17:16:36 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4Sxb-0004dY-6e
 for linux-riscv@lists.infradead.org; Wed, 19 Feb 2020 17:16:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1582132598; x=1613668598;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version;
 bh=6oXSRiAmqLcwFehpf/cZ9klTDQZU0BiI39NfTifgOWI=;
 b=TILCyZNavc6fI/KSfTZBSoNX/+RzHn7otmUSeMF+i3pCsz3GEbyYopXD
 1jZGJwkrYLVEbT1L7ERpiqEolZdKnY/8SJ8aRHEEpACsgMggGdZQ2USlP
 E9XTMoT/Z/Aw1q7QFW1aPyCqeI78XYEzpyVoXgBhrdPYpQIuXT8bnbYX+
 QXNta6kZXFPLCkNXnBywPkxt/fSPs5dxfx0wqBvXQS3OmfuMkXCI+5Lmu
 jrqwgdzirQzjgvuQvKov1oKh2CoKi+tuWxC+i9ofs9n2F+AW+EaWjGf6p
 vHr12JVeXV1HnoWHbLyXDJqtnrtF4FjFghcrInJa+JJ6pKLsjD/8ex4fC A==;
IronPort-SDR: M6PNZQCfyK+kRA4CdLDiZ0r9HLkiHuk1JfIXvE/mZrLYV6zxUoTM9raJRqgB0KgAvoGqucWTMq
 eb6o7+WMwjD6TGENq3Qa2h2XhXHZUsVDHbNFKWDMGoPpIIsJ0SgvzMUZW+UV9nIuTuLBWIINlW
 74C+lJfpPhSczwl0mbr1lqZWq1GaZo6jJuq2bE7d6rOLDTpUk3TSiO5oqf974xIbhl5IiPvWTW
 d989ce9vJYXvnZrGhKPXZZ260q8izkWeDpZRPjjvbq4LNlnaQUUOeZ0s+gIh/jGzSb3F80ngyW
 sds=
X-URL-LookUp-ScanningError: 1
X-IronPort-AV: E=Sophos;i="5.70,461,1574092800"; d="scan'208";a="232073646"
Received: from mail-cys01nam02lp2059.outbound.protection.outlook.com (HELO
 NAM02-CY1-obe.outbound.protection.outlook.com) ([104.47.37.59])
 by ob1.hgst.iphmx.com with ESMTP; 20 Feb 2020 01:16:19 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=erEw8YY62ScmY2+GC54LQfKtsW3wySIO8Hfud7JrpJHBqFDhSXxtXQDBAOmCXKkNpWiGyhuJDZ1/jAp5L/clQo3a1Neox/4GBlUK51bb3lnjSFdG5xFr9Q5qhrHY+3UE9oF7a0ecm37nct9UwA4raksCho/OnkV+D+Aif2N93pB3vteW+LpGXOBaofdC/FWsg0sfkdP7UUQd6+x1nJhmgJ5KSmeO5l2yFSIVsiSZn/hfGxzC9StuPCNfH+kVp/RO3KRKyk2ZVo0DYEoCofZT2utaleN3sbP8EZoQsAFviZpVKDihuZ6SkuGSHymLp3chJUebpr2/wHkhSz4rvGqDdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Upt+Sfyx6mRbUqXpVjckF9QIZ6E3N5YbOml/vcSTkH0=;
 b=fFe7PU/PMNSlgc5Vmf4VLSJwqdhkxW5/UKpghkvwr6gnsc4ErKjkOEbIyEUg2BAwIckAn8+QvXX4vIAWER+J5pMyZpeymgm6BuTwnFzbzeYbIGo0LCf1ffxnfzOoAf496D06Z8BrardzpGOMTVFsmcgxQPyGUq1+9RlVamjK3ZjGTWgkiR5eeX1h3ng5Xon49FQOAKnvK6wjwL0wU07IuQk6pvlZRXG9cJgwKj2DQb6zvLDTYsTlEMR0yumtfgEvWjNsZyyIcFR63h6/91xBMRq69opUYemWA6wIHjFgDPLHPTCmt/uesnK7lPt442m5H/Qo1VT2CeqMOF3Wup3Ayw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Upt+Sfyx6mRbUqXpVjckF9QIZ6E3N5YbOml/vcSTkH0=;
 b=kuPD7jXlrbZp8DHvsQTvvIL0ooaCODFE0DRVETeHKg8IOksqibDOMYFWHbHgJ9iPW4MiYnkvW7Hy2nGLYTR948mnjbvtGq6iHZV8E81aDNPzl9a1SKD5PWSN/8vHxv8Xbwh/t1n9vDZhIj0fctH0uyfTazsW88T2Pcp/kCopzEY=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Anup.Patel@wdc.com; 
Received: from MN2PR04MB6061.namprd04.prod.outlook.com (20.178.246.15) by
 MN2PR04MB6688.namprd04.prod.outlook.com (10.186.147.14) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2750.17; Wed, 19 Feb 2020 17:16:17 +0000
Received: from MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::a9a0:3ffa:371f:ad89]) by MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::a9a0:3ffa:371f:ad89%7]) with mapi id 15.20.2729.033; Wed, 19 Feb 2020
 17:16:17 +0000
From: Anup Patel <anup.patel@wdc.com>
To: Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Albert Ou <aou@eecs.berkeley.edu>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Thomas Gleixner <tglx@linutronix.de>, Jason Cooper <jason@lakedaemon.net>,
 Marc Zyngier <marc.zyngier@arm.com>
Subject: [PATCH v3 2/4] irqchip: RISC-V Per-HART Local Interrupt Controller
 Driver
Date: Wed, 19 Feb 2020 22:45:18 +0530
Message-Id: <20200219171520.20590-3-anup.patel@wdc.com>
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
 15.20.2750.18 via Frontend Transport; Wed, 19 Feb 2020 17:16:13 +0000
X-Mailer: git-send-email 2.17.1
X-Originating-IP: [106.51.29.34]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 1f3cbd22-ce1f-4752-6eeb-08d7b55f6e7b
X-MS-TrafficTypeDiagnostic: MN2PR04MB6688:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <MN2PR04MB6688BB4386121760FEA7A1E38D100@MN2PR04MB6688.namprd04.prod.outlook.com>
WDCIPOUTBOUND: EOP-TRUE
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-Forefront-PRVS: 0318501FAE
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10019020)(4636009)(396003)(366004)(39860400002)(376002)(136003)(346002)(199004)(189003)(966005)(4326008)(7416002)(1076003)(55016002)(5660300002)(86362001)(2906002)(66946007)(8676002)(66476007)(478600001)(36756003)(66556008)(81156014)(44832011)(2616005)(956004)(30864003)(316002)(8886007)(55236004)(110136005)(16526019)(52116002)(81166006)(26005)(54906003)(8936002)(7696005)(186003)(1006002)(32040200004);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB6688;
 H:MN2PR04MB6061.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: C3fkVmNWdZBC/qX8W6z5Z/paDL6uWon2ur0LmKTbsxTabGr/lMmu6iUoDIw18bDusRxNN68fnmapJJZmnGyILzzH1ZSNzCrXjII5K7XFjUOOctSjLtT2SUBFC5i/G/w9jGsqT9uuk0aPcoKHMMQCjJ+mBmZgpMFds7QJpHotIO1wL9/KOxYBpFhG+we3DMYNaT6lUJdDQlQIh1Jq9r3E1mB91EK9HadCmDrV0axM0QR9xXcon52Yo8JahpJkPhgz59lW82tYTxkBrYskSQDImjgoJuk1okMDrGEnD7PF258hnO/Lipi0cmS2ZZ0jW5COaQKeVcfqM5FfUfmR79LzYkyAfPZ4r6Scm5mKKEDFxU+4NyJ/fmJ2lYkGXEDhm+xlz6Rjp6083quRRPxVhfN/ZDXQ6h5woCLl4GXBIQUkrBOiMsy3/y62CKmVqHNJCkvkvBet45oaG0ww4BkA2yHDMuk7iqMDQeZP47lN5lU/tnmaE0TVhCpK/WU5H3BzGLX6tnhJbzcHxuhS+w8W2xu+r3XDQjZTGazSV0YzOfpjDerCFPUo1KYp87WKtwO98nmrv6+oyOvnfLBYXrW9vxu8Ng==
X-MS-Exchange-AntiSpam-MessageData: 7CYe80EMyHOhNpCNxDKcSdChmS/wYX/gja2gPNqg22422QIYh5NPxhIDO6Fi7nU0AfuzgGYfnrIJ6JooqO30PPUc7c5H2BYmtro6zvFFZLg5nYPae6/f/hkz2/N6EaqyJl+Rz2IwrF/Zg1+OfoBH9w==
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1f3cbd22-ce1f-4752-6eeb-08d7b55f6e7b
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Feb 2020 17:16:17.7917 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: dyGEIeRVyADvoiC/3Lx5EtY/YWeGzsnz1VPYMJzD7HQ9U5+edK5Bvcux+K8mBZTtArHE2QomALCEilAMBCGFNg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB6688
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_091631_301849_CC92047C 
X-CRM114-Status: GOOD (  24.86  )
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

The RISC-V per-HART local interrupt controller manages software
interrupts, timer interrupts, external interrupts (which are routed
via the platform level interrupt controller) and per-HART local
interrupts.

This patch add a driver for RISC-V local interrupt controller. It
is a major re-write over perviously submitted version.
(Refer, https://www.spinics.net/lists/devicetree/msg241230.html)

Few advantages of this new driver over previous one are:
1. It registers all local interrupts as per-CPU interrupts
2. We can develop drivers for devices with per-CPU local interrupts
without changing arch code or this driver
3. It will be useful to direct interrupt injection in KVM RISC-V
as well

The RISC-V INTC driver is compliant with RISC-V Hart-Level Interrupt
Controller DT bindings located at:
Documentation/devicetree/bindings/interrupt-controller/riscv,cpu-intc.txt

Signed-off-by: Palmer Dabbelt <palmer@dabbelt.com>
Signed-off-by: Anup Patel <anup.patel@wdc.com>
---
 arch/riscv/Kconfig                |   1 +
 arch/riscv/include/asm/irq.h      |   2 -
 arch/riscv/kernel/irq.c           |  33 +------
 arch/riscv/kernel/traps.c         |   2 -
 drivers/irqchip/Kconfig           |  13 +++
 drivers/irqchip/Makefile          |   1 +
 drivers/irqchip/irq-riscv-intc.c  | 139 ++++++++++++++++++++++++++++++
 drivers/irqchip/irq-sifive-plic.c |  39 ++++++++-
 include/linux/cpuhotplug.h        |   2 +
 9 files changed, 194 insertions(+), 38 deletions(-)
 create mode 100644 drivers/irqchip/irq-riscv-intc.c

diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index 73f029eae0cc..fe05f99357c7 100644
--- a/arch/riscv/Kconfig
+++ b/arch/riscv/Kconfig
@@ -39,6 +39,7 @@ config RISCV
 	select HAVE_PERF_REGS
 	select HAVE_PERF_USER_STACK_DUMP
 	select HAVE_SYSCALL_TRACEPOINTS
+	select HANDLE_DOMAIN_IRQ
 	select IRQ_DOMAIN
 	select SPARSE_IRQ
 	select SYSCTL_EXCEPTION_TRACE
diff --git a/arch/riscv/include/asm/irq.h b/arch/riscv/include/asm/irq.h
index 0183e15ace66..a9e5f07a7e9c 100644
--- a/arch/riscv/include/asm/irq.h
+++ b/arch/riscv/include/asm/irq.h
@@ -10,8 +10,6 @@
 #include <linux/interrupt.h>
 #include <linux/linkage.h>
 
-#define NR_IRQS         0
-
 void riscv_timer_interrupt(void);
 
 #include <asm-generic/irq.h>
diff --git a/arch/riscv/kernel/irq.c b/arch/riscv/kernel/irq.c
index bb0bfcd537e7..eb8777642ce6 100644
--- a/arch/riscv/kernel/irq.c
+++ b/arch/riscv/kernel/irq.c
@@ -7,7 +7,6 @@
 
 #include <linux/interrupt.h>
 #include <linux/irqchip.h>
-#include <linux/irqdomain.h>
 #include <linux/seq_file.h>
 #include <asm/smp.h>
 
@@ -19,39 +18,13 @@ int arch_show_interrupts(struct seq_file *p, int prec)
 
 asmlinkage __visible void __irq_entry do_IRQ(struct pt_regs *regs)
 {
-	struct pt_regs *old_regs;
-
-	switch (regs->cause & ~CAUSE_IRQ_FLAG) {
-	case RV_IRQ_TIMER:
-		old_regs = set_irq_regs(regs);
-		irq_enter();
-		riscv_timer_interrupt();
-		irq_exit();
-		set_irq_regs(old_regs);
-		break;
-#ifdef CONFIG_SMP
-	case RV_IRQ_SOFT:
-		/*
-		 * We only use software interrupts to pass IPIs, so if a non-SMP
-		 * system gets one, then we don't know what to do.
-		 */
-		handle_IPI(regs);
-		break;
-#endif
-	case RV_IRQ_EXT:
-		old_regs = set_irq_regs(regs);
-		irq_enter();
+	if (handle_arch_irq)
 		handle_arch_irq(regs);
-		irq_exit();
-		set_irq_regs(old_regs);
-		break;
-	default:
-		pr_alert("unexpected interrupt cause 0x%lx", regs->cause);
-		BUG();
-	}
 }
 
 void __init init_IRQ(void)
 {
 	irqchip_init();
+	if (!handle_arch_irq)
+		panic("No interrupt controller found.");
 }
diff --git a/arch/riscv/kernel/traps.c b/arch/riscv/kernel/traps.c
index f4cad5163bf2..a62fcf4b7eed 100644
--- a/arch/riscv/kernel/traps.c
+++ b/arch/riscv/kernel/traps.c
@@ -156,6 +156,4 @@ void __init trap_init(void)
 	csr_write(CSR_SCRATCH, 0);
 	/* Set the exception vector address */
 	csr_write(CSR_TVEC, &handle_exception);
-	/* Enable all interrupts */
-	csr_write(CSR_IE, -1);
 }
diff --git a/drivers/irqchip/Kconfig b/drivers/irqchip/Kconfig
index 6d397732138d..cf7a4ce2f121 100644
--- a/drivers/irqchip/Kconfig
+++ b/drivers/irqchip/Kconfig
@@ -493,6 +493,19 @@ config TI_SCI_INTA_IRQCHIP
 	  If you wish to use interrupt aggregator irq resources managed by the
 	  TI System Controller, say Y here. Otherwise, say N.
 
+config RISCV_INTC
+	bool "RISC-V Local Interrupt Controller"
+	depends on RISCV
+	default y
+	help
+	   This enables support for the per-HART local interrupt controller
+	   found in standard RISC-V systems.  The per-HART local interrupt
+	   controller handles timer interrupts, software interrupts, and
+	   hardware interrupts. Without a per-HART local interrupt controller,
+	   a RISC-V system will be unable to handle any interrupts.
+
+	   If you don't know what to do here, say Y.
+
 config SIFIVE_PLIC
 	bool "SiFive Platform-Level Interrupt Controller"
 	depends on RISCV
diff --git a/drivers/irqchip/Makefile b/drivers/irqchip/Makefile
index eae0d78cbf22..31ba55d2b6fb 100644
--- a/drivers/irqchip/Makefile
+++ b/drivers/irqchip/Makefile
@@ -98,6 +98,7 @@ obj-$(CONFIG_NDS32)			+= irq-ativic32.o
 obj-$(CONFIG_QCOM_PDC)			+= qcom-pdc.o
 obj-$(CONFIG_CSKY_MPINTC)		+= irq-csky-mpintc.o
 obj-$(CONFIG_CSKY_APB_INTC)		+= irq-csky-apb-intc.o
+obj-$(CONFIG_RISCV_INTC)		+= irq-riscv-intc.o
 obj-$(CONFIG_SIFIVE_PLIC)		+= irq-sifive-plic.o
 obj-$(CONFIG_IMX_IRQSTEER)		+= irq-imx-irqsteer.o
 obj-$(CONFIG_IMX_INTMUX)		+= irq-imx-intmux.o
diff --git a/drivers/irqchip/irq-riscv-intc.c b/drivers/irqchip/irq-riscv-intc.c
new file mode 100644
index 000000000000..a2523fc663b1
--- /dev/null
+++ b/drivers/irqchip/irq-riscv-intc.c
@@ -0,0 +1,139 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2012 Regents of the University of California
+ * Copyright (C) 2017-2018 SiFive
+ * Copyright (C) 2020 Western Digital Corporation or its affiliates.
+ */
+
+#define pr_fmt(fmt) "riscv-intc: " fmt
+#include <linux/atomic.h>
+#include <linux/bits.h>
+#include <linux/cpu.h>
+#include <linux/irq.h>
+#include <linux/irqchip.h>
+#include <linux/irqdomain.h>
+#include <linux/interrupt.h>
+#include <linux/of.h>
+#include <linux/smp.h>
+
+static struct irq_domain *intc_domain;
+static atomic_t intc_init = ATOMIC_INIT(0);
+
+static asmlinkage void riscv_intc_irq(struct pt_regs *regs)
+{
+	struct pt_regs *old_regs;
+	unsigned long cause = regs->cause & ~CAUSE_IRQ_FLAG;
+
+	if (unlikely(cause >= BITS_PER_LONG))
+		panic("unexpected interrupt cause");
+
+	switch (cause) {
+	case RV_IRQ_TIMER:
+		old_regs = set_irq_regs(regs);
+		irq_enter();
+		riscv_timer_interrupt();
+		irq_exit();
+		set_irq_regs(old_regs);
+		break;
+#ifdef CONFIG_SMP
+	case RV_IRQ_SOFT:
+		/*
+		 * We only use software interrupts to pass IPIs, so if a
+		 * non-SMP system gets one, then we don't know what to do.
+		 */
+		handle_IPI(regs);
+		break;
+#endif
+	default:
+		handle_domain_irq(intc_domain, cause, regs);
+		break;
+	}
+}
+
+/*
+ * On RISC-V systems local interrupts are masked or unmasked by writing
+ * the SIE (Supervisor Interrupt Enable) CSR.  As CSRs can only be written
+ * on the local hart, these functions can only be called on the hart that
+ * corresponds to the IRQ chip.
+ */
+
+static void riscv_intc_irq_mask(struct irq_data *d)
+{
+	csr_clear(sie, 1 << (long)d->hwirq);
+}
+
+static void riscv_intc_irq_unmask(struct irq_data *d)
+{
+	csr_set(sie, 1 << (long)d->hwirq);
+}
+
+static int riscv_intc_cpu_starting(unsigned int cpu)
+{
+	csr_write(sie, 1UL << RV_IRQ_SOFT);
+	csr_write(sip, 0);
+	return 0;
+}
+
+static int riscv_intc_cpu_dying(unsigned int cpu)
+{
+	csr_clear(sie, 1UL << RV_IRQ_SOFT);
+	return 0;
+}
+
+static struct irq_chip riscv_intc_chip = {
+	.name = "RISC-V INTC",
+	.irq_mask = riscv_intc_irq_mask,
+	.irq_unmask = riscv_intc_irq_unmask,
+};
+
+static int riscv_intc_domain_map(struct irq_domain *d, unsigned int irq,
+				 irq_hw_number_t hwirq)
+{
+	irq_set_percpu_devid(irq);
+	irq_domain_set_info(d, irq, hwirq, &riscv_intc_chip, d->host_data,
+			    handle_percpu_devid_irq, NULL, NULL);
+	irq_set_status_flags(irq, IRQ_NOAUTOEN);
+
+	return 0;
+}
+
+static const struct irq_domain_ops riscv_intc_domain_ops = {
+	.map	= riscv_intc_domain_map,
+	.xlate	= irq_domain_xlate_onecell,
+};
+
+static int __init riscv_intc_init(struct device_node *node,
+				  struct device_node *parent)
+{
+	/*
+	 * RISC-V device trees can have one INTC DT node under
+	 * each CPU DT node so INTC init function will be called
+	 * once for each INTC DT node. We only need to do INTC
+	 * init once for boot CPU so we use atomic counter to
+	 * achieve this.
+	 */
+	if (atomic_inc_return(&intc_init) > 1)
+		return 0;
+
+	intc_domain = irq_domain_add_linear(node, BITS_PER_LONG,
+					    &riscv_intc_domain_ops, NULL);
+	if (!intc_domain)
+		goto error_add_linear;
+
+	set_handle_irq(&riscv_intc_irq);
+
+	cpuhp_setup_state(CPUHP_AP_IRQ_RISCV_STARTING,
+			  "irqchip/riscv/intc:starting",
+			  riscv_intc_cpu_starting,
+			  riscv_intc_cpu_dying);
+
+	pr_info("%lu local interrupts mapped\n", (long)BITS_PER_LONG);
+
+	return 0;
+
+error_add_linear:
+	pr_warn("unable to add IRQ domain\n");
+	return -ENXIO;
+}
+
+IRQCHIP_DECLARE(riscv, "riscv,cpu-intc", riscv_intc_init);
diff --git a/drivers/irqchip/irq-sifive-plic.c b/drivers/irqchip/irq-sifive-plic.c
index aa4af886e43a..a4f247a00a3c 100644
--- a/drivers/irqchip/irq-sifive-plic.c
+++ b/drivers/irqchip/irq-sifive-plic.c
@@ -4,10 +4,12 @@
  * Copyright (C) 2018 Christoph Hellwig
  */
 #define pr_fmt(fmt) "plic: " fmt
+#include <linux/cpu.h>
 #include <linux/interrupt.h>
 #include <linux/io.h>
 #include <linux/irq.h>
 #include <linux/irqchip.h>
+#include <linux/irqchip/chained_irq.h>
 #include <linux/irqdomain.h>
 #include <linux/module.h>
 #include <linux/of.h>
@@ -187,6 +189,7 @@ static const struct irq_domain_ops plic_irqdomain_ops = {
 	.free		= irq_domain_free_irqs_top,
 };
 
+static int plic_parent_irq;
 static struct irq_domain *plic_irqdomain;
 
 /*
@@ -195,15 +198,17 @@ static struct irq_domain *plic_irqdomain;
  * that source ID back to the same claim register.  This automatically enables
  * and disables the interrupt, so there's nothing else to do.
  */
-static void plic_handle_irq(struct pt_regs *regs)
+static void plic_handle_irq(struct irq_desc *desc)
 {
 	struct plic_handler *handler = this_cpu_ptr(&plic_handlers);
+	struct irq_chip *chip = irq_desc_get_chip(desc);
 	void __iomem *claim = handler->hart_base + CONTEXT_CLAIM;
 	irq_hw_number_t hwirq;
 
 	WARN_ON_ONCE(!handler->present);
 
-	csr_clear(CSR_IE, IE_EIE);
+	chained_irq_enter(chip, desc);
+
 	while ((hwirq = readl(claim))) {
 		int irq = irq_find_mapping(plic_irqdomain, hwirq);
 
@@ -213,7 +218,23 @@ static void plic_handle_irq(struct pt_regs *regs)
 		else
 			generic_handle_irq(irq);
 	}
-	csr_set(CSR_IE, IE_EIE);
+
+	chained_irq_exit(chip, desc);
+}
+
+static int plic_cpu_starting(unsigned int cpu)
+{
+	if (plic_parent_irq)
+		enable_percpu_irq(plic_parent_irq,
+				  irq_get_trigger_type(plic_parent_irq));
+	return 0;
+}
+
+static int plic_cpu_dying(unsigned int cpu)
+{
+	if (plic_parent_irq)
+		disable_percpu_irq(plic_parent_irq);
+	return 0;
 }
 
 /*
@@ -281,6 +302,13 @@ static int __init plic_init(struct device_node *node,
 		if (parent.args[0] != RV_IRQ_EXT)
 			continue;
 
+		if (irq_find_host(parent.np)) {
+			plic_parent_irq = irq_of_parse_and_map(node, i);
+			if (plic_parent_irq)
+				irq_set_chained_handler(plic_parent_irq,
+							plic_handle_irq);
+		}
+
 		hartid = plic_find_hart_id(parent.np);
 		if (hartid < 0) {
 			pr_warn("failed to parse hart ID for context %d.\n", i);
@@ -320,9 +348,12 @@ static int __init plic_init(struct device_node *node,
 		nr_handlers++;
 	}
 
+	cpuhp_setup_state(CPUHP_AP_IRQ_PLIC_STARTING,
+			  "irqchip/sifive/plic:starting",
+			  plic_cpu_starting, plic_cpu_dying);
+
 	pr_info("mapped %d interrupts with %d handlers for %d contexts.\n",
 		nr_irqs, nr_handlers, nr_contexts);
-	set_handle_irq(plic_handle_irq);
 	return 0;
 
 out_iounmap:
diff --git a/include/linux/cpuhotplug.h b/include/linux/cpuhotplug.h
index d37c17e68268..133baff276d0 100644
--- a/include/linux/cpuhotplug.h
+++ b/include/linux/cpuhotplug.h
@@ -102,6 +102,8 @@ enum cpuhp_state {
 	CPUHP_AP_IRQ_ARMADA_XP_STARTING,
 	CPUHP_AP_IRQ_BCM2836_STARTING,
 	CPUHP_AP_IRQ_MIPS_GIC_STARTING,
+	CPUHP_AP_IRQ_RISCV_STARTING,
+	CPUHP_AP_IRQ_PLIC_STARTING,
 	CPUHP_AP_ARM_MVEBU_COHERENCY,
 	CPUHP_AP_MICROCODE_LOADER,
 	CPUHP_AP_PERF_X86_AMD_UNCORE_STARTING,
-- 
2.17.1


