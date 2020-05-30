Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BBF721E9077
	for <lists+linux-riscv@lfdr.de>; Sat, 30 May 2020 12:08:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Type:Content-Transfer-Encoding:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=n5C+w2J6tyoeKfO8BbttDhuhToqntFfoREO0fGf+PRQ=; b=nEpotMj3tdlUwTXOWo2tOhHjr
	yacuE7dxkhlM8td9tXFT5shs2KD0gYX3gvsHfzKHxI1NNFYbQphPNloiQ/AYszVjPkgaXSufUf7qk
	uXnjhouCYTeNEVwVg6gg3IO1QTtYBy5YzRvDKYYtVQxaQS//4v5dmcIGnk7tAYJPykc4ifNmNPYT2
	9Zm+ZRmH5UnrPNzKFkRhXK4dw07/rzh6dbjshssfelJtQG8yjRXTJ3YP86AqtkBT9+5h2ws/V9b10
	1CfoReQZOgITTFbzE9H5O6buguMOZ3g7LJTutyXxfcx2+7j9KaI9N4t0m1bbkSVxCSBU0MViiJZF3
	fdhldni+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeyPz-0001wG-No; Sat, 30 May 2020 10:08:43 +0000
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeyPj-0001hT-8c
 for linux-riscv@lists.infradead.org; Sat, 30 May 2020 10:08:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1590833307; x=1622369307;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=M3MC7Bo7AxKffXriIwqUlzqynZn9zoCbu5j10vIXOOo=;
 b=YTPjd4INNrtzZAn+tOkXPr7/uF5pi1UwuO5utPRmbh/ltfiIK70Pb69I
 3WDFN+G2/HfCT95pqXd0MYAzbTxpGLJa4/hQwHa09vNjrjIuQjSkXX8nL
 3BVpLaO8GVbsPlknfLq1ZRnVCPGmsUhqhrDswPei4NWEpFTlj5q0xquyY
 1VEhLvH6Lp2AuxVn8cjo0wF59h+KZwT/OFk6rf9LirizeXkZdSTyAVzbL
 XoIqq5GTYoqK/xKlR/lBrZj6XMAYhxsxqs76liLiFy46cP2ic4v04N8CE
 DNKd/y1ybeHRzLGiwZgAE5/guEBOr/sGOcd+JnSYBL29Rkgyifym99WEW g==;
IronPort-SDR: Y6xWaGjhLIYJEDDBYHXHYSuZ10uv/hQ8IW9TuDzWmVaVBVK4ct3YCLMMJNyn6qJGkxiYkUE+50
 JWcCQlB310B0mNQvD3AX3Gn+DFLFG1Q8bcXu5eniAVMVCB/1QQyzHJwFc7nnAne61iOUG18GJz
 HsOis+Kr09WTCXivFf/f/3oZ8aztxAa1L8+VMWM//cEECTqXZwKHEDhUptuBLfT6CblptHRTEr
 rwADxRMd5Fh2xcQ5BMjqO96kYd400YVBtyaG6utWujl6ipvn8MQk7FRN8E2RTLH7/Bpp9tlbyW
 fjk=
X-IronPort-AV: E=Sophos;i="5.73,451,1583164800"; d="scan'208";a="138846368"
Received: from mail-bn7nam10lp2103.outbound.protection.outlook.com (HELO
 NAM10-BN7-obe.outbound.protection.outlook.com) ([104.47.70.103])
 by ob1.hgst.iphmx.com with ESMTP; 30 May 2020 18:08:07 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Wd9rxXxtgfmVXJnV2joaCZ8ncopLCcMkSsHQWFhFx+Pk41IQbSl9VUiArYn0Pnq7OZ9gQdgrcqhhJzhmdo4zXF3jHsepVKNY61vsEnkrcnNXSLUzhJWzpOreSyR1zd81lF996+1BsE6huwmNuwIat/DgOQpHVE/9HftdvLScCmrhF6Y37pTMVOExINMwPwXELsLeo3WLtlUf5/sagkKUhVwLkbivNP3+U5hQkOhRkQSF13zJUPGXRFwsnrghyskzv1U7u9jYwEdq153QLRYTwUeGdTbuUdvfFOkARYNr0HINGqXwPqF7uQshUBK/grF9KodJpKOXUdnZ/tPQyxbb2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=n5C+w2J6tyoeKfO8BbttDhuhToqntFfoREO0fGf+PRQ=;
 b=Aeg7OX34cLvmQ0eQg2kryY77orDYH6LnuSSVMFM7GZg0ojN04GapZDHEluaT8hjSBvduFF2tG8PK96lz9wJkDWZMNXcn26AEFqpsgT4PYlyBdDk/M0v6IIv8VFwBWs3pqSlmvlugu8Si6c4BSPpsG/EqHkpSsJPVd2a0C01FZoNz9g1NkBo3UXn4oAirVNmnjPPZ05Asi8NjGNIpCii8cjXQ0XPC+Em9Kt5pGwMtmxCI8lBMCQcHmKAqQy87Wi6wjlE4/j837fOdP2+9ojpuUFp9qzZzXYQ3WcstIGFkPpMcRv5n+Tgq85KlzAJAmwMiWKcqQdWr9IF8jVsIPP2+bw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=n5C+w2J6tyoeKfO8BbttDhuhToqntFfoREO0fGf+PRQ=;
 b=vbcK1Nx4Jq46N+dCBjjYGR33TWYjG4QYpyE9TKNpdTYYDLEJ0O+zEktPgVvQBy5BF+Z3FTTinBYMmZGMr5ZkAvbqk+/kWVgT17b3+0XpdzvBXAjaq6pYDaLYQJlHEG5fPX9k6aWCzypuEg23pvxD5xn9+mrCLR8wSw3njIqqpJ8=
Authentication-Results: dabbelt.com; dkim=none (message not signed)
 header.d=none;dabbelt.com; dmarc=none action=none header.from=wdc.com;
Received: from DM6PR04MB6201.namprd04.prod.outlook.com (2603:10b6:5:127::32)
 by DM6PR04MB4314.namprd04.prod.outlook.com (2603:10b6:5:98::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3045.17; Sat, 30 May
 2020 10:08:06 +0000
Received: from DM6PR04MB6201.namprd04.prod.outlook.com
 ([fe80::f8b3:c124:482b:52e0]) by DM6PR04MB6201.namprd04.prod.outlook.com
 ([fe80::f8b3:c124:482b:52e0%5]) with mapi id 15.20.3045.022; Sat, 30 May 2020
 10:08:06 +0000
From: Anup Patel <anup.patel@wdc.com>
To: Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Albert Ou <aou@eecs.berkeley.edu>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Thomas Gleixner <tglx@linutronix.de>, Jason Cooper <jason@lakedaemon.net>,
 Marc Zyngier <maz@kernel.org>
Subject: [PATCH v6 3/6] irqchip: RISC-V per-HART local interrupt controller
 driver
Date: Sat, 30 May 2020 15:37:22 +0530
Message-Id: <20200530100725.265481-4-anup.patel@wdc.com>
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
 Transport; Sat, 30 May 2020 10:08:01 +0000
X-Mailer: git-send-email 2.25.1
X-Originating-IP: [49.207.61.131]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: c31673a2-ffa8-469e-fec2-08d804815879
X-MS-TrafficTypeDiagnostic: DM6PR04MB4314:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DM6PR04MB4314857AEAF67069519938348D8C0@DM6PR04MB4314.namprd04.prod.outlook.com>
WDCIPOUTBOUND: EOP-TRUE
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-Forefront-PRVS: 041963B986
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: QGOJfCMix4xwHCOW4IKnlJ/yct0DfkWtcCHp4uadhZvKKph19t1EvuoFZzDjym4ExJQvS3aH9iu3lgZSJ+OLoJa/sRho+4iJBJ1xFmgwUa5NNoKVZhQHbI4S2JZHu02CN2afjmllk8SOjg1GIoO0HJct8si5TkeioMf+efk0zRTo4lwauLGEmeIDkVBwIyThxPh3K6xwAVlhcMOkUwRg0nJ2bH/5AnpOaJ4yYkle//nhBR2Ks5ToOt0fzNpqEIM50yVzvLR5txUpk6/CWOIXMHTjeaMNbdBpFVwlKcwlTr2jOK+JOfs7T+bkdrx6/8IH656v3kD6hwkfsmHQV0qmuu4l7sXTSvTia5evb8d9TGZNDnkfuAHB2n8ywhrFetpzZDYK397JVxHBOGOt2R4ZUA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR04MB6201.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(396003)(366004)(346002)(136003)(376002)(39860400002)(26005)(966005)(1006002)(186003)(1076003)(6666004)(55236004)(4326008)(956004)(8886007)(16526019)(5660300002)(2616005)(8676002)(8936002)(478600001)(36756003)(44832011)(2906002)(55016002)(7696005)(52116002)(30864003)(7416002)(54906003)(110136005)(66476007)(66556008)(66946007)(86362001)(316002)(83380400001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: 3SfFYoHDwQ2coKjfNCsw6iZ6wnbX2pyTldiZXSZRbwhiSKVSXzlFPkBhFwIRRplEaYISz417iiBmd63dAU0rGjXfY5YPyHHHLvUfr7YCfrtNauZ3K51uux6Gi+p+jrEQhW37vQqz4sIUJDsU5I8CtyP1fTc3keHyVXQWvvjRlQJocmhpHZZ7HoBfOTOdmRgzbVEYALqQOAV5RV9mvcNh5eypbAlehxf04FsNMmwGVEKONSiw/uq+2XRuky3eUb5ejPwGUwjiV0WjFYDjyVj/2n2xAsgBQAvH66i5Kp8869UozteIj23HlNscV3z1ZWMf4jKCTxWFbJWIJP6tNDS1Iwdn8QkdA4APV1XN2mLgvZcPsZFXkStGZFYsgDIbwS+95txmDGhVc9OakaZT1R7RtCuHHGOA9k5AL9S+jdvsRyvO4FcYog+cReYLRcs/KbZuZYemk1OcMNF7uCTJ+Np9JMVLs1pTQcTtO/sgMU4+2FKU7H+FPXH2gnXTETX5apFI
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c31673a2-ffa8-469e-fec2-08d804815879
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 May 2020 10:08:05.9884 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7RDJj0egHsvcAMJcl0X/hWjNHpDRJzXaM8UZk4LQnOfVDBuiCYqCyXOIfVOIT7QR0fFx1vCgKad4VvGVHMu8PQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR04MB4314
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200530_030827_393278_351790F5 
X-CRM114-Status: GOOD (  22.38  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.42 listed in list.dnswl.org]
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

The RISC-V per-HART local interrupt controller manages software
interrupts, timer interrupts, external interrupts (which are routed
via the platform level interrupt controller) and other per-HART
local interrupts.

This patch adds a driver for the RISC-V local interrupt controller.
It is a major re-write over perviously submitted version.
(Refer, https://www.spinics.net/lists/devicetree/msg241230.html)

The driver is compliant with RISC-V Hart-Level Interrupt Controller
DT bindings located at:
Documentation/devicetree/bindings/interrupt-controller/riscv,cpu-intc.txt

Co-developed-by: Palmer Dabbelt <palmer@dabbelt.com>
Signed-off-by: Palmer Dabbelt <palmer@dabbelt.com>
Signed-off-by: Anup Patel <anup.patel@wdc.com>
Acked-by: Palmer Dabbelt <palmerdabbelt@google.com>
---
 arch/riscv/Kconfig                |   1 +
 arch/riscv/include/asm/irq.h      |   2 -
 arch/riscv/kernel/irq.c           |  33 +------
 arch/riscv/kernel/traps.c         |   2 -
 drivers/irqchip/Kconfig           |  13 +++
 drivers/irqchip/Makefile          |   1 +
 drivers/irqchip/irq-riscv-intc.c  | 148 ++++++++++++++++++++++++++++++
 drivers/irqchip/irq-sifive-plic.c |  30 ++++--
 include/linux/cpuhotplug.h        |   1 +
 9 files changed, 191 insertions(+), 40 deletions(-)
 create mode 100644 drivers/irqchip/irq-riscv-intc.c

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
index 000000000000..84e7bda3a090
--- /dev/null
+++ b/drivers/irqchip/irq-riscv-intc.c
@@ -0,0 +1,148 @@
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
+#include <linux/module.h>
+#include <linux/of.h>
+#include <linux/smp.h>
+
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
+	csr_clear(CSR_IE, 1UL << d->hwirq);
+}
+
+static void riscv_intc_irq_unmask(struct irq_data *d)
+{
+	csr_set(CSR_IE, 1UL << d->hwirq);
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
+	int rc, hartid;
+
+	hartid = riscv_of_parent_hartid(node);
+	if (hartid < 0) {
+		pr_warn("unable to fine hart id for %pOF\n", node);
+		return 0;
+	}
+
+	/*
+	 * The DT will have one INTC DT node under each CPU (or HART)
+	 * DT node so riscv_intc_init() function will be called once
+	 * for each INTC DT node. We only need to do INTC initialization
+	 * for the INTC DT node belonging to boot CPU (or boot HART).
+	 */
+	if (riscv_hartid_to_cpuid(hartid) != smp_processor_id())
+		return 0;
+
+	intc_domain = irq_domain_add_linear(node, BITS_PER_LONG,
+					    &riscv_intc_domain_ops, NULL);
+	if (!intc_domain) {
+		rc = -ENXIO;
+		pr_err("unable to add IRQ domain\n");
+		return rc;
+	}
+
+	rc = set_handle_irq(&riscv_intc_irq);
+	if (rc) {
+		pr_err("failed to set irq handler\n");
+		return rc;
+	}
+
+	cpuhp_setup_state(CPUHP_AP_IRQ_RISCV_STARTING,
+			  "irqchip/riscv/intc:starting",
+			  riscv_intc_cpu_starting,
+			  riscv_intc_cpu_dying);
+
+	pr_info("%d local interrupts mapped\n", BITS_PER_LONG);
+
+	return 0;
+}
+
+IRQCHIP_DECLARE(riscv, "riscv,cpu-intc", riscv_intc_init);
diff --git a/drivers/irqchip/irq-sifive-plic.c b/drivers/irqchip/irq-sifive-plic.c
index 16d31d114c30..cda2e246aee3 100644
--- a/drivers/irqchip/irq-sifive-plic.c
+++ b/drivers/irqchip/irq-sifive-plic.c
@@ -9,6 +9,7 @@
 #include <linux/io.h>
 #include <linux/irq.h>
 #include <linux/irqchip.h>
+#include <linux/irqchip/chained_irq.h>
 #include <linux/irqdomain.h>
 #include <linux/module.h>
 #include <linux/of.h>
@@ -76,6 +77,7 @@ struct plic_handler {
 	void __iomem		*enable_base;
 	struct plic_priv	*priv;
 };
+static int plic_parent_irq;
 static bool plic_cpuhp_setup_done;
 static DEFINE_PER_CPU(struct plic_handler, plic_handlers);
 
@@ -219,15 +221,17 @@ static const struct irq_domain_ops plic_irqdomain_ops = {
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
 
@@ -237,7 +241,8 @@ static void plic_handle_irq(struct pt_regs *regs)
 		else
 			generic_handle_irq(irq);
 	}
-	csr_set(CSR_IE, IE_EIE);
+
+	chained_irq_exit(chip, desc);
 }
 
 static void plic_set_threshold(struct plic_handler *handler, u32 threshold)
@@ -250,7 +255,8 @@ static int plic_dying_cpu(unsigned int cpu)
 {
 	struct plic_handler *handler = this_cpu_ptr(&plic_handlers);
 
-	csr_clear(CSR_IE, IE_EIE);
+	if (plic_parent_irq)
+		disable_percpu_irq(plic_parent_irq);
 	plic_set_threshold(handler, PLIC_DISABLE_THRESHOLD);
 
 	return 0;
@@ -260,7 +266,11 @@ static int plic_starting_cpu(unsigned int cpu)
 {
 	struct plic_handler *handler = this_cpu_ptr(&plic_handlers);
 
-	csr_set(CSR_IE, IE_EIE);
+	if (plic_parent_irq)
+		enable_percpu_irq(plic_parent_irq,
+				  irq_get_trigger_type(plic_parent_irq));
+	else
+		pr_warn("cpu%d: parent irq not available\n");
 	plic_set_threshold(handler, PLIC_ENABLE_THRESHOLD);
 
 	return 0;
@@ -273,6 +283,7 @@ static int __init plic_init(struct device_node *node,
 	u32 nr_irqs;
 	struct plic_priv *priv;
 	struct plic_handler *handler;
+	struct of_phandle_args intc_args;
 
 	priv = kzalloc(sizeof(*priv), GFP_KERNEL);
 	if (!priv)
@@ -328,6 +339,14 @@ static int __init plic_init(struct device_node *node,
 			continue;
 		}
 
+		/* Find parent domain and register chained handler */
+		if (!plic_parent_irq && irq_find_host(parent.np)) {
+			plic_parent_irq = irq_of_parse_and_map(node, i);
+			if (plic_parent_irq)
+				irq_set_chained_handler(plic_parent_irq,
+							plic_handle_irq);
+		}
+
 		/*
 		 * When running in M-mode we need to ignore the S-mode handler.
 		 * Here we assume it always comes later, but that might be a
@@ -368,7 +387,6 @@ static int __init plic_init(struct device_node *node,
 
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
-- 
2.25.1


