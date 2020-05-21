Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE5BE1DCE24
	for <lists+linux-riscv@lfdr.de>; Thu, 21 May 2020 15:34:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Type:Content-Transfer-Encoding:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Fg7MiPWB/elFn97Q1Ih6JCsjX7DkUKlEfYprlih65QI=; b=LVHiaxNZ0hMtcbt3A7YdXItKU
	tcgy7GRBnx2xGkV/wfASNCMrN+iHd08Wcf11mot1FPgCVQcVehUajbmvzoDCQnNZLDBYu3rNFB1kb
	wXGhMtOkro22NXRPjo6fBZz/Am6A0+6yrcjb6LjFmKYp6Nl2hM4xHTJRMOlPNRBL1baGr70lKk+J3
	6r+vyqwl3Ysb67VBOb9KYeSVOg71KRBRiALjeytI3InamK+ewRnXCOIhW45pjvirKtH0xSbKgvQBz
	a5ou1CGhY7Ipew+10mEClR8idpmZtJ2lu2h0AbxFdaSi7IHzpVl3t8wcCHKKVIlTvqsF/MOlnzFoQ
	3lwxunqGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jblKr-0004hS-Ci; Thu, 21 May 2020 13:34:09 +0000
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jblKb-0004VT-5F
 for linux-riscv@lists.infradead.org; Thu, 21 May 2020 13:33:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1590068032; x=1621604032;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=MqO5f5RlO5STDnQTzsAPdAvfxA2KDBC/P819Iic+IOk=;
 b=QwwXrnKcTdMsyR2EntCdNfYhbWRMKHPQSyUoMSfVTOxHCrdCjZi3UUQt
 W8nrOHWL6dEvAjOwzVf9hJP7ubcYBeR/HhWoCbZuja2mi/uebhwc51i8j
 /0y2zErsfMv1ZGsFbzUIqU6TLr90220ggTb1SjM6U3O5Lrmr/C7hX24+i
 7RfhYt28dIWJlKSOpPv4j0efIkdIr/7FuBcC0qQMriylicirKjq2uhEnR
 +Vm1tX8ieZVHmzgGWv8Yp5AzoKRWy0QwIZSka+4+m94E8a2Uegva/uWdU
 vdKM69e+pND6OIage39X+D6ssICB6d8l2QdnDiVPdvZYwDX2G/2S+ao/6 A==;
IronPort-SDR: 3oB6iVgBIryEbrQzKdHZfRjeOUWPnY4jSzf6Etn59PYfi2UPFeWwcx59/deDX5zmjEyK3pxDz1
 64IHVTIuzdi2VGleJYVFC/Mw0CpyreX25FsFsMJDSgphkaAFAItzlMErHoDsW4c1q8cqljdOWp
 P8tzWtCAZ9Wzrk01GFbA5WmMYbjr0KOo3aLZ8HuLManYveXcJjENOUwL/JmZynvJnddLtZC8aW
 4AG2RTxHGLKQV/lS2lQiRjUk3KWMgFiZGabGZ5Kizq/Jv2k2SdfVyOc6HI82dcvGwoqgrpsfvH
 aUo=
X-IronPort-AV: E=Sophos;i="5.73,417,1583164800"; d="scan'208";a="247222595"
Received: from mail-dm6nam11lp2168.outbound.protection.outlook.com (HELO
 NAM11-DM6-obe.outbound.protection.outlook.com) ([104.47.57.168])
 by ob1.hgst.iphmx.com with ESMTP; 21 May 2020 21:33:51 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FBaBMk2hQMG9FvuyOgkg0o/VEw1k2KNswxwGqrsPenkYLgx6lnoFkxtPiNBdgwFdXcY0xDAyN0Zu6YDJRGUOkbQQ5crF3RyGL8nBECl4WSHQA9Pk7+UWUhjqZN5v7/F9B78Sv2iI8U6yAizhqeYhNGzVCa9ZgP4zNcIAG2jCXIC8mbFwSS2sz4psFsCo8sTDQvZXeCAnbY/u5oDxgIGop+9a8hKyQZW+RWkmHfvqI5ebkc165g6C1ZvpxzMzGjjxZd2cLJjIvBkD01hkqkppLgYWdt7EButmdULYkKfQ4KA3NJoCUVkAdIeXD7etPO6cYPQ6HF4Uf7ULKNkNMcoO+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Fg7MiPWB/elFn97Q1Ih6JCsjX7DkUKlEfYprlih65QI=;
 b=BE6aSJ+iRkdaZo+qo1XITyVCjLCwOvgnM6Zn7XWpbzki6vhFQ6IW15W1q+xFVHT6F03hlY7wv6RVMCLNPEE1gcb16P9k4FMStQz9YU6v0rr+JeUzcc12IRIRw6uoPfvf+JL9L7WW2N5x7/BzoDpHvYF+54xY0u39P3MERI+GHkzTO70uQCGmfuyeQghPi6flae03gd3AT3ZA7fnHOSnSYuV+o5J+DmA5qgIYlP/SY0txfsn8AAcoxgr4jWgS5c8QQf5InDsk8sQPilVHn21UuUEBAv94AWmYNUNPyg5DIGScYIXtV/kHQ3owItk3puUpf/i8at/A04MI3qmJQuV1nA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Fg7MiPWB/elFn97Q1Ih6JCsjX7DkUKlEfYprlih65QI=;
 b=U5oIBv4gHfSHRV0p8HH8aKtyjDoVLCwZ9ypXbqOBGiW6ITSgGjfTTB0AlhZkFAFQVoIF4M7hO4tPGdBU16njn0awdk8+lXrr2Jzg2PhIpq4wIXKreclm/O/NKNLdODJ6ifuY25LYl9Ta3cHWC2iPUfAEyZu1MzHTszypumvp6QA=
Authentication-Results: dabbelt.com; dkim=none (message not signed)
 header.d=none;dabbelt.com; dmarc=none action=none header.from=wdc.com;
Received: from DM6PR04MB6201.namprd04.prod.outlook.com (2603:10b6:5:127::32)
 by DM6PR04MB5292.namprd04.prod.outlook.com (2603:10b6:5:107::25) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3021.23; Thu, 21 May
 2020 13:33:50 +0000
Received: from DM6PR04MB6201.namprd04.prod.outlook.com
 ([fe80::f8b3:c124:482b:52e0]) by DM6PR04MB6201.namprd04.prod.outlook.com
 ([fe80::f8b3:c124:482b:52e0%5]) with mapi id 15.20.3000.034; Thu, 21 May 2020
 13:33:50 +0000
From: Anup Patel <anup.patel@wdc.com>
To: Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Albert Ou <aou@eecs.berkeley.edu>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Thomas Gleixner <tglx@linutronix.de>, Jason Cooper <jason@lakedaemon.net>,
 Marc Zyngier <maz@kernel.org>
Subject: [PATCH v5 3/6] irqchip: RISC-V per-HART local interrupt controller
 driver
Date: Thu, 21 May 2020 19:02:58 +0530
Message-Id: <20200521133301.816665-4-anup.patel@wdc.com>
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
 Transport; Thu, 21 May 2020 13:33:45 +0000
X-Mailer: git-send-email 2.25.1
X-Originating-IP: [106.51.30.72]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 917975c2-fbc1-40b8-3644-08d7fd8b98e2
X-MS-TrafficTypeDiagnostic: DM6PR04MB5292:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DM6PR04MB5292F9B68F6BCABC4386F8F98DB70@DM6PR04MB5292.namprd04.prod.outlook.com>
WDCIPOUTBOUND: EOP-TRUE
X-MS-Oob-TLC-OOBClassifiers: OLM:2089;
X-Forefront-PRVS: 041032FF37
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: oeWjlVKt064xqegtliLd5rC4C6tf7IvtvqSZ2Mxn4ZdE9ZY7FHH6aPmZ1jKCmwe/3d8q+cOn8sZcsU2rjH9qIoM3xlplK1XAKBw5CvOKpDvv8cKUM4ejcjBHiilNw8WFeH+z7FZbpwxDdYG4OFThqLzhZAZZ7bSYkGzhNk0j+1sSYX0UKidhvxEz+HlYccthQlcEpKknW08b4zHT43wpQjjmL3wgaeU5LJfqdJopaaSy5Q838z3M1X1/3HV3a/G9eKhNhsR8GX5Je9ejNOg1jOWnzLGksvvX2pWiJ94Yo4XRCH+tJl1V2+7YJGYojKuxmqKm0ka1QeNhjnv4+/baltdtPm8nSScL0BrDEsLV9I4lZuF8xDWshZBIlcb7/A4qidBCWdZ0SminKPgJemHuZg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR04MB6201.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(346002)(396003)(366004)(136003)(39860400002)(376002)(478600001)(7416002)(5660300002)(8936002)(86362001)(8676002)(966005)(4326008)(8886007)(55016002)(26005)(7696005)(186003)(30864003)(1006002)(1076003)(6666004)(66946007)(2616005)(2906002)(66556008)(956004)(54906003)(66476007)(52116002)(36756003)(44832011)(16526019)(55236004)(316002)(110136005);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: xdg3Pa9AN9Dh/q3daj9YUcIvB9pX/X3jNd2NOpA8QoQRclzj9S2hW/bDuHmpdPILP0uHYhJjmWiAzAt/L9bpCC1QzXZibhZmImKFT7RxqIi1FFnZ1y2tdDtX4Ue3Ewbd4BAaIOTMfYeAKX3r6UuLAzmTx7YMpJmkToak/Yd48qatLTkBlSwojRawiUkAF5MLwaXIni29cM6kvnGnfx1Vj9nH301l2Oi3P559xJeyugTjnQ8+QcPYM4t63sMOAfb0ZYQpOdS1VqqPlvUhy2g0W/V++pJS4omHqZQSeSoazj8wCetj3aMrjErVqeE5SW/I/W4bfQXsYyp7ujrKa1R6a4hRl0g4/JUd319b9NnHY1hW4WMf2xXk4uJ/uS5SpjbtuenwD4H0ERjQSKyoPD/8AV0psCDWY4OF0Izx4JYx3nz10Y1TPY219YJr5t8lvWcTKUB2vIhrBuxMLnmXe5km7FTPXQKCflGIkDGbhUrL7mU=
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 917975c2-fbc1-40b8-3644-08d7fd8b98e2
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 May 2020 13:33:50.5616 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /vpu1YwVM7ppPwV35wceBPwCs/hJ2xWV9BTubrcmVRU2s50Y9CxPNS5P/RCbprK/K3/H2+/7IIShDOCQSTtN/g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR04MB5292
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_063353_238747_FD3DEECD 
X-CRM114-Status: GOOD (  23.86  )
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

The RISC-V per-HART local interrupt controller manages software
interrupts, timer interrupts, external interrupts (which are routed
via the platform level interrupt controller) and other per-HART
local interrupts.

This patch adds a driver for the RISC-V local interrupt controller.
It is a major re-write over perviously submitted version.
(Refer, https://www.spinics.net/lists/devicetree/msg241230.html)

Few advantages of this new driver over previous one are:
1. All local interrupts are registered as per-CPU interrupts
2. The RISC-V timer driver can register timer interrupt handler
   using kernel irq subsystem without relying on arch/riscv to
   explicitly call it's interrupt handler
3. The KVM RISC-V can use this driver to implement interrupt
   handler for per-HART guest external interrupt defined by
   the RISC-V H-Extension
4. In future, we can develop drivers for devices with per-HART
   interrupts without changing arch code or this driver (example,
   CLINT timer driver for RISC-V M-mode kernel)

The RISC-V INTC driver is compliant with RISC-V Hart-Level Interrupt
Controller DT bindings located at:
Documentation/devicetree/bindings/interrupt-controller/riscv,cpu-intc.txt

Signed-off-by: Palmer Dabbelt <palmer@dabbelt.com>
Signed-off-by: Anup Patel <anup.patel@wdc.com>
---
 arch/riscv/Kconfig                     |   1 +
 arch/riscv/include/asm/irq.h           |   2 -
 arch/riscv/kernel/irq.c                |  33 +-----
 arch/riscv/kernel/traps.c              |   2 -
 drivers/irqchip/Kconfig                |  13 ++
 drivers/irqchip/Makefile               |   1 +
 drivers/irqchip/irq-riscv-intc.c       | 158 +++++++++++++++++++++++++
 drivers/irqchip/irq-sifive-plic.c      |  38 +++++-
 include/linux/cpuhotplug.h             |   1 +
 include/linux/irqchip/irq-riscv-intc.h |  20 ++++
 10 files changed, 229 insertions(+), 40 deletions(-)
 create mode 100644 drivers/irqchip/irq-riscv-intc.c
 create mode 100644 include/linux/irqchip/irq-riscv-intc.h

diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index 90a008e28f7e..822cb0e1a380 100644
--- a/arch/riscv/Kconfig
+++ b/arch/riscv/Kconfig
@@ -40,6 +40,7 @@ config RISCV
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
index 7f58fa53033f..f48c76aadbf3 100644
--- a/arch/riscv/kernel/traps.c
+++ b/arch/riscv/kernel/traps.c
@@ -178,6 +178,4 @@ void trap_init(void)
 	csr_write(CSR_SCRATCH, 0);
 	/* Set the exception vector address */
 	csr_write(CSR_TVEC, &handle_exception);
-	/* Enable interrupts */
-	csr_write(CSR_IE, IE_SIE);
 }
diff --git a/drivers/irqchip/Kconfig b/drivers/irqchip/Kconfig
index a85aada04a64..95d6137a8117 100644
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
index 37bbe39bf909..b8319f045472 100644
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
index 000000000000..2f364e6a87f9
--- /dev/null
+++ b/drivers/irqchip/irq-riscv-intc.c
@@ -0,0 +1,158 @@
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
+#include <linux/irqchip/irq-riscv-intc.h>
+#include <linux/irqdomain.h>
+#include <linux/interrupt.h>
+#include <linux/module.h>
+#include <linux/of.h>
+#include <linux/smp.h>
+
+static struct device_node *intc_domain_node;
+static struct irq_domain *intc_domain;
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
+	csr_clear(CSR_IE, 1 << (long)d->hwirq);
+}
+
+static void riscv_intc_irq_unmask(struct irq_data *d)
+{
+	csr_set(CSR_IE, 1 << (long)d->hwirq);
+}
+
+static int riscv_intc_cpu_starting(unsigned int cpu)
+{
+	csr_write(CSR_IE, 1UL << RV_IRQ_SOFT);
+	csr_write(CSR_IP, 0);
+	return 0;
+}
+
+static int riscv_intc_cpu_dying(unsigned int cpu)
+{
+	csr_clear(CSR_IE, 1UL << RV_IRQ_SOFT);
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
+/* Get the OF device node used by INTC irq domain */
+struct device_node *riscv_of_intc_domain_node(void)
+{
+	return intc_domain_node;
+}
+EXPORT_SYMBOL_GPL(riscv_of_intc_domain_node);
+
+static int __init riscv_intc_init(struct device_node *node,
+				  struct device_node *parent)
+{
+	int hartid;
+
+	/*
+	 * The DT will have one INTC DT node under each CPU (or HART)
+	 * DT node so riscv_intc_init() function will be called once
+	 * for each INTC DT node. We only need INTC initialization for
+	 * the INTC DT node belonging to boot CPU (or boot HART).
+	 */
+	hartid = riscv_of_parent_hartid(node);
+	if (hartid < 0)
+		return 0;
+	if (riscv_hartid_to_cpuid(hartid) != smp_processor_id())
+		return 0;
+
+	intc_domain = irq_domain_add_linear(node, BITS_PER_LONG,
+					    &riscv_intc_domain_ops, NULL);
+	if (!intc_domain)
+		goto error_add_linear;
+
+	/*
+	 * We save the DT node used for creating irq domain and provide
+	 * it to other drivers using iscv_of_intc_domain_node() function.
+	 */
+	intc_domain_node = of_node_get(node);
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
index 16d31d114c30..4f9b2877aa9d 100644
--- a/drivers/irqchip/irq-sifive-plic.c
+++ b/drivers/irqchip/irq-sifive-plic.c
@@ -9,6 +9,8 @@
 #include <linux/io.h>
 #include <linux/irq.h>
 #include <linux/irqchip.h>
+#include <linux/irqchip/chained_irq.h>
+#include <linux/irqchip/irq-riscv-intc.h>
 #include <linux/irqdomain.h>
 #include <linux/module.h>
 #include <linux/of.h>
@@ -60,6 +62,7 @@
 #define	PLIC_ENABLE_THRESHOLD		0
 
 struct plic_priv {
+	int parent_irq;
 	struct cpumask lmask;
 	struct irq_domain *irqdomain;
 	void __iomem *regs;
@@ -219,15 +222,17 @@ static const struct irq_domain_ops plic_irqdomain_ops = {
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
 		int irq = irq_find_mapping(handler->priv->irqdomain, hwirq);
 
@@ -237,7 +242,8 @@ static void plic_handle_irq(struct pt_regs *regs)
 		else
 			generic_handle_irq(irq);
 	}
-	csr_set(CSR_IE, IE_EIE);
+
+	chained_irq_exit(chip, desc);
 }
 
 static void plic_set_threshold(struct plic_handler *handler, u32 threshold)
@@ -250,7 +256,8 @@ static int plic_dying_cpu(unsigned int cpu)
 {
 	struct plic_handler *handler = this_cpu_ptr(&plic_handlers);
 
-	csr_clear(CSR_IE, IE_EIE);
+	if (handler->priv->parent_irq)
+		disable_percpu_irq(handler->priv->parent_irq);
 	plic_set_threshold(handler, PLIC_DISABLE_THRESHOLD);
 
 	return 0;
@@ -259,8 +266,10 @@ static int plic_dying_cpu(unsigned int cpu)
 static int plic_starting_cpu(unsigned int cpu)
 {
 	struct plic_handler *handler = this_cpu_ptr(&plic_handlers);
+	int pirq = handler->priv->parent_irq;
 
-	csr_set(CSR_IE, IE_EIE);
+	if (pirq)
+		enable_percpu_irq(pirq, irq_get_trigger_type(pirq));
 	plic_set_threshold(handler, PLIC_ENABLE_THRESHOLD);
 
 	return 0;
@@ -273,6 +282,7 @@ static int __init plic_init(struct device_node *node,
 	u32 nr_irqs;
 	struct plic_priv *priv;
 	struct plic_handler *handler;
+	struct of_phandle_args intc_args;
 
 	priv = kzalloc(sizeof(*priv), GFP_KERNEL);
 	if (!priv)
@@ -354,6 +364,23 @@ static int __init plic_init(struct device_node *node,
 		nr_handlers++;
 	}
 
+	/*
+	 * We can have multiple PLIC instances so setup chained handler
+	 * for all PLIC instances.
+	 */
+	intc_args.np = riscv_of_intc_domain_node();
+	intc_args.args_count = 1;
+	intc_args.args[0] = RV_IRQ_EXT;
+	priv->parent_irq = irq_create_of_mapping(&intc_args);
+	if (priv->parent_irq)
+		irq_set_chained_handler(priv->parent_irq,
+					 plic_handle_irq);
+	else {
+		pr_err("%pOFP: intc mapping failed\n", node);
+		error = -ENODEV;
+		goto out_iounmap;
+	}
+
 	/*
 	 * We can have multiple PLIC instances so setup cpuhp state only
 	 * when context handler for current/boot CPU is present.
@@ -368,7 +395,6 @@ static int __init plic_init(struct device_node *node,
 
 	pr_info("%pOFP: mapped %d interrupts with %d handlers for"
 		" %d contexts.\n", node, nr_irqs, nr_handlers, nr_contexts);
-	set_handle_irq(plic_handle_irq);
 	return 0;
 
 out_iounmap:
diff --git a/include/linux/cpuhotplug.h b/include/linux/cpuhotplug.h
index 77d70b633531..57b1f8f777d9 100644
--- a/include/linux/cpuhotplug.h
+++ b/include/linux/cpuhotplug.h
@@ -102,6 +102,7 @@ enum cpuhp_state {
 	CPUHP_AP_IRQ_ARMADA_XP_STARTING,
 	CPUHP_AP_IRQ_BCM2836_STARTING,
 	CPUHP_AP_IRQ_MIPS_GIC_STARTING,
+	CPUHP_AP_IRQ_RISCV_STARTING,
 	CPUHP_AP_IRQ_SIFIVE_PLIC_STARTING,
 	CPUHP_AP_ARM_MVEBU_COHERENCY,
 	CPUHP_AP_MICROCODE_LOADER,
diff --git a/include/linux/irqchip/irq-riscv-intc.h b/include/linux/irqchip/irq-riscv-intc.h
new file mode 100644
index 000000000000..b11d38353099
--- /dev/null
+++ b/include/linux/irqchip/irq-riscv-intc.h
@@ -0,0 +1,20 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (C) 2020 Western Digital Corporation or its affiliates.
+ */
+
+#ifndef __INCLUDE_LINUX_IRQCHIP_IRQ_RISCV_INTC_H
+#define __INCLUDE_LINUX_IRQCHIP_IRQ_RISCV_INTC_H
+
+struct device_node;
+
+#ifdef CONFIG_RISCV_INTC
+struct device_node *riscv_of_intc_domain_node(void);
+#else
+static inline struct device_node *riscv_of_intc_domain_node(void)
+{
+	return NULL;
+}
+#endif
+
+#endif
-- 
2.25.1


