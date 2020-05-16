Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 509501D5F2E
	for <lists+linux-riscv@lfdr.de>; Sat, 16 May 2020 08:39:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Type:Content-Transfer-Encoding:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=qk6hVPGMMQ2zC+kK6C79jVmXvkRWyzb4veTPx0DX4fk=; b=WYIv+qp6E4TAA1rbm8qfnMemS
	wr7umrFn94GLS5DakMdFES4ZSqlnSJfrpekiFus+UAqQ5wB6DF8RDR0hZ1h84lTdSvxf3JSt9XX15
	W7fWf7eBzxaX/mAivyR4BnouQBtU2az+kWmyRad88mtNrOMn8E2dxrNbvxLOFBgOnI3Lxzq/Dww+L
	EG0wpbpFHaKF80BbiVP2tMCzhkobRcBWYHz4Ap5So28MNK0ryGzFIe4KX0sN4plfXPUNgiU2+KojP
	Knu9jrrBggf/OoJNmfC/xDJ8UjoaLo5VmUr2dgnu3Dq/BGnyXG744I+ETN6BVJIdLAVg+w8swrk9I
	hNQVix/Jg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZqUC-0007MK-Hi; Sat, 16 May 2020 06:39:52 +0000
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZqU6-0007Go-1Y
 for linux-riscv@lists.infradead.org; Sat, 16 May 2020 06:39:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1589611186; x=1621147186;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=e6KToHO685hshyLBA10YvZ7EWhjY2le4fleKcvnnWS8=;
 b=f+I/n/11YHukVJBZ+uYS7qybaNINURkNTi2J22fPA3+WJQz6KDtVbUdc
 aZZIbv2qbnQQA1l4nu0NTRM17vZsRNfJTZi4MYl4kZ/i55m+dlfrlsUQ1
 YfGr5Y8e5z4iB5Xv5adyWLZ4LWKiiJNla+RkWHYiihB47z0y+AD2l93r0
 2NfzzxNPr9CyWxF5tKL2uD7Pv2qKnKkSHejv1003HD6i+RpT57q5vgtOU
 jeZS/tzgV2KcfD59mYVnI3T/7jUWsIaWbVKDgvAjMONlGphzKhZxGZgRG
 30lAi9nqnwgEJ39TxB1ynd69t77Z1IDp7FAauxqVQC/aL5YitABXKJliS w==;
IronPort-SDR: fkCm/9LcTZ6sRvQxiIsYTesbzoZtCZ3pSFFRv/MeguDtKFAe/gqfpOcQSrLIkdEieH3QH6x7rx
 X2agux2eNLiF7xwv68yXImtNjhh6K+9ZWZwJF01hvYoRe2kKoZxvT40BAk0NJMojS2OxQdyiLH
 LlEfNaKe768r5mtNx0jdizm7JoFeUkGozgpzBDmM6ohpnr9iyqOi3/yepxyjNLeFFVcorCWAyJ
 A+eWiQFLwtFuPXkzmhvZhaX6jyPFl5Lj4II0m/tP3HCE1TqNF/xv9BlW6ji9ixFK02NzrZw/0e
 YFY=
X-IronPort-AV: E=Sophos;i="5.73,398,1583164800"; d="scan'208";a="246808234"
Received: from mail-sn1nam04lp2052.outbound.protection.outlook.com (HELO
 NAM04-SN1-obe.outbound.protection.outlook.com) ([104.47.44.52])
 by ob1.hgst.iphmx.com with ESMTP; 16 May 2020 14:39:45 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SW88f4yW3RvlGtQ/B5S5UieSaDaYrCrCUoK9dMAttrFPULljhbtrfcARYxZmM9Z2XdDZnRbtV5aEV9dT4/ll520PqjtA5EIIw+anlyPdyp5SmCZjI59LBg7U2nxc46Y2uCTHOimxt88lqR7T/3rjS6vgaJYGaQaB3++ybj5c1WaEIPtJkXMluOiI3cBfTMxozoi88TEw2DkznBShApQLYotV2W6WxgGES/BmAZOz4Ikimp5Qu4YExv+Ho3Xl8EhB+FQPr6Yx3ZaTzuiUJuI+Rf7G4unsN3U08IvahuZ4FGZYTAue9NGy4MiuP5YUWoKGxaX35Z7lNuv5QbXO9aYdqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qk6hVPGMMQ2zC+kK6C79jVmXvkRWyzb4veTPx0DX4fk=;
 b=BvMF1ESccsvjYkcFg0P/r8xSInF7XKqlKkqQgajAmivunKzfDr5VpVXtI2P3/JzhNK0FdPDVgU51bSdWjZaGIyNBt3RVb8HkgPosQRY5+iFXf8Es9qPFZuZp6VFdEIEaKieav4vR2OCzv9GgV3nOwkv5VEQgFFD1KFDqDGV0+HeG+M3KcH8YF87hZ3mc8dKi9foWONDw2iLYGDd12PWQTz88L/EB5BcrebgnJic95or6yspoRhyjcjq8X01p2U3Mjx2emyGjInUmZuvXlWNfWEEJEv5s08B4aTQQS59z/PPoIvEpe+EmmHKO6vkFyBt+QwvY31lxBAWb7IWMVXUFig==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qk6hVPGMMQ2zC+kK6C79jVmXvkRWyzb4veTPx0DX4fk=;
 b=FcdUY6g/O/foTbfMFCVCrvcWbQ0dxhLfu+0+2gLnwTOcPy707HTqdpX/OW6M35yXBXZjmA2JxMyWWKadDpJvcE68scza5Qi4t/u9klTYnqdAcPOOO9Hqvy09ho+MAZ7PC1LNG/ucR+lEtJeeZeAJ+ThJXeywpDlib1JH9jwHFxI=
Authentication-Results: dabbelt.com; dkim=none (message not signed)
 header.d=none;dabbelt.com; dmarc=none action=none header.from=wdc.com;
Received: from DM6PR04MB6201.namprd04.prod.outlook.com (2603:10b6:5:127::32)
 by DM6PR04MB4539.namprd04.prod.outlook.com (2603:10b6:5:2c::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3000.26; Sat, 16 May
 2020 06:39:44 +0000
Received: from DM6PR04MB6201.namprd04.prod.outlook.com
 ([fe80::f8b3:c124:482b:52e0]) by DM6PR04MB6201.namprd04.prod.outlook.com
 ([fe80::f8b3:c124:482b:52e0%5]) with mapi id 15.20.2979.033; Sat, 16 May 2020
 06:39:43 +0000
From: Anup Patel <anup.patel@wdc.com>
To: Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Thomas Gleixner <tglx@linutronix.de>, Jason Cooper <jason@lakedaemon.net>,
 Marc Zyngier <maz@kernel.org>
Subject: [PATCH 3/4] irqchip/sifive-plic: Separate irq_chip for muiltiple PLIC
 instances
Date: Sat, 16 May 2020 12:09:00 +0530
Message-Id: <20200516063901.18365-4-anup.patel@wdc.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200516063901.18365-1-anup.patel@wdc.com>
References: <20200516063901.18365-1-anup.patel@wdc.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: MAXPR0101CA0002.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:c::12) To DM6PR04MB6201.namprd04.prod.outlook.com
 (2603:10b6:5:127::32)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from wdc.com (49.207.60.36) by
 MAXPR0101CA0002.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00:c::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3000.20 via Frontend
 Transport; Sat, 16 May 2020 06:39:39 +0000
X-Mailer: git-send-email 2.25.1
X-Originating-IP: [49.207.60.36]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 45c7c9a4-d3d2-4215-e680-08d7f963eb0a
X-MS-TrafficTypeDiagnostic: DM6PR04MB4539:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DM6PR04MB4539DF37736382405EE707998DBA0@DM6PR04MB4539.namprd04.prod.outlook.com>
WDCIPOUTBOUND: EOP-TRUE
X-MS-Oob-TLC-OOBClassifiers: OLM:901;
X-Forefront-PRVS: 040513D301
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: z1dXMlRimStL3C1cvg2Pmt8WAf1cpopf4EPeNscfN/AvNRxCRZdwReRnubY/uf0RCJF3wT/5Huc1efYn0luyIwxBgAGdBxEwiw+X1ffrE1sTQpwTWvx40wtTOO9jVZ+/BV0ao2LALOzmAffL/c9MEzQZQYiGVcXu6bSChaby/qW3E0uuC3B2EqLXfgqc47U/CdYf34HHmQt+XGIL6G8QQhNYQ/NmBGhxcRJqp9U3v9sCaLKXz6Oc0z9BRqlIICBDCp6FQeDF1BF6g5sSoxFDLwC1izjxPqnDS42erYtll/rFVF922sH/tuSJFgo/RrCvlh8GwNYeKZaHU2k5HSGoJ0SF3Ts1mjUT+vA1i8gnOXrvKgNfa5whPZS4ALMNEbyJAf9zA3aHNyc8H5aUfL4CRL814nJ9WaT15LlyeLnezVhM4ti3FYJY41Tg4lsntm5p
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR04MB6201.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(396003)(346002)(376002)(366004)(39860400002)(136003)(6666004)(1006002)(2906002)(8676002)(36756003)(8936002)(44832011)(26005)(54906003)(86362001)(7696005)(52116002)(55236004)(110136005)(1076003)(16526019)(186003)(316002)(5660300002)(66946007)(8886007)(55016002)(66476007)(66556008)(478600001)(956004)(4326008)(2616005);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: aRyG3CG6rNWBKwoDI+1IN3Ltrvge9vCAQXT3H5LsHDjqHUP4EUjBgT9hu0fxIJphzc4pTKr3lr32wgJth6ZL7YNKa8ss6RzYphN50DJKLp7sdJdxPUQAiKQpnzJbKgFDiGsMCgOjGy8sJOngHWG1XJV/CAzMiSRQow4lwoq5S0pNs7fz1M6eYw+Gw+BBMxVtZZckLzzQNXiG84+k6UkAEexy6etSXlkQU4+gimBMwte7nbgsceDvkGYGLSROm+P/+PvqMxMxTxe53rnvybNuUTcnCU1S9eE6EypXRgNov8QfDHKxDKetq1lAguGF3aqVeN5l85QCxr+FAWqHK4UCHLXwfpj84wUJSkxsMEehLBgnHPsGqkieVHoxoYNVD/L4u0CNhLqXrYO2Khu7YNuli1etcUyEtUtKMpOEkau1BjjPYBkPR1jzuD0j8OAuw6tLE7ilkqwuXgBiG0qq4A6vQky4bVjIgaUw8n7zv73Ye4U=
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 45c7c9a4-d3d2-4215-e680-08d7f963eb0a
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 May 2020 06:39:43.8542 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /0UHHMtxcpLZmMmpBC1GNY6V17803PuQ3sinpzZ6mrkq+C4R0zGLCgUNgBhVgBf+CJkrEms1E6LtpKTML3AjxA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR04MB4539
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_233946_094451_68971DE8 
X-CRM114-Status: GOOD (  13.27  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.141.245 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Anup Patel <anup@brainfault.org>, Anup Patel <anup.patel@wdc.com>,
 linux-kernel@vger.kernel.org, Atish Patra <atish.patra@wdc.com>,
 Alistair Francis <Alistair.Francis@wdc.com>, linux-riscv@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

To distinguish interrupts from multiple PLIC instances, we use a
per-PLIC irq_chip instance with a different name.

Signed-off-by: Anup Patel <anup.patel@wdc.com>
---
 drivers/irqchip/irq-sifive-plic.c | 28 +++++++++++++++-------------
 1 file changed, 15 insertions(+), 13 deletions(-)

diff --git a/drivers/irqchip/irq-sifive-plic.c b/drivers/irqchip/irq-sifive-plic.c
index 2d3db927a551..e42fc082ad18 100644
--- a/drivers/irqchip/irq-sifive-plic.c
+++ b/drivers/irqchip/irq-sifive-plic.c
@@ -60,6 +60,7 @@
 #define	PLIC_ENABLE_THRESHOLD		0
 
 struct plic_priv {
+	struct irq_chip chip;
 	struct cpumask lmask;
 	struct irq_domain *irqdomain;
 	void __iomem *regs;
@@ -76,6 +77,7 @@ struct plic_handler {
 	void __iomem		*enable_base;
 	struct plic_priv	*priv;
 };
+static unsigned int plic_count;
 static bool plic_cpuhp_setup_done;
 static DEFINE_PER_CPU(struct plic_handler, plic_handlers);
 
@@ -164,20 +166,12 @@ static void plic_irq_eoi(struct irq_data *d)
 	writel(d->hwirq, handler->hart_base + CONTEXT_CLAIM);
 }
 
-static struct irq_chip plic_chip = {
-	.name		= "SiFive PLIC",
-	.irq_mask	= plic_irq_mask,
-	.irq_unmask	= plic_irq_unmask,
-	.irq_eoi	= plic_irq_eoi,
-#ifdef CONFIG_SMP
-	.irq_set_affinity = plic_set_affinity,
-#endif
-};
-
 static int plic_irqdomain_map(struct irq_domain *d, unsigned int irq,
 			      irq_hw_number_t hwirq)
 {
-	irq_domain_set_info(d, irq, hwirq, &plic_chip, d->host_data,
+	struct plic_priv *priv = d->host_data;
+
+	irq_domain_set_info(d, irq, hwirq, &priv->chip, d->host_data,
 			    handle_fasteoi_irq, NULL, NULL);
 	irq_set_noprobe(irq);
 	return 0;
@@ -294,6 +288,14 @@ static int __init plic_init(struct device_node *node,
 	if (!priv)
 		return -ENOMEM;
 
+	priv->chip.name = kasprintf(GFP_KERNEL, "PLIC%d", plic_count++);
+	priv->chip.irq_mask = plic_irq_mask,
+	priv->chip.irq_unmask = plic_irq_unmask,
+	priv->chip.irq_eoi = plic_irq_eoi,
+#ifdef CONFIG_SMP
+	priv->chip.irq_set_affinity = plic_set_affinity,
+#endif
+
 	priv->regs = of_iomap(node, 0);
 	if (WARN_ON(!priv->regs)) {
 		error = -EIO;
@@ -383,9 +385,9 @@ static int __init plic_init(struct device_node *node,
 	}
 
 	pr_info("interrupt-controller at 0x%llx "
-		"(interrupts=%d, contexts=%d, handlers=%d)\n",
+		"(interrupts=%d, contexts=%d, handlers=%d) (%s)\n",
 		(unsigned long long)iores.start, nr_irqs,
-		nr_contexts, nr_handlers);
+		nr_contexts, nr_handlers, priv->chip.name);
 	set_handle_irq(plic_handle_irq);
 	return 0;
 
-- 
2.25.1


