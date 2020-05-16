Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60C731D5F28
	for <lists+linux-riscv@lfdr.de>; Sat, 16 May 2020 08:39:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Type:Content-Transfer-Encoding:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EwaVq4H0nySNo3yBhANiGDjLt3akUPsZzxPPwuHWhrU=; b=gywm6umOznN7H6eecsOJGfoxn
	uMmsbY/0GiVL3Vo/Ul4iOAHWEWZVLsQ7pTs97l5VfICx/x0HosCRyHZrbwEpmo0Rzo35JSu1PCBNZ
	uBRxck4rr6E9hnSNrqwT69skEcGg2mznQ0EY3Sn2LEKhKKaxXb3XWYd47Hf5moLZ9Y6a1HIRSqIal
	KO8Qt6Xp5v0FPt9zREGtpjHxFzkEpe60GF6iOqiXmrRBTOMhT3kk0PwiQPjk5G4LmN6uzK4xwUcKj
	cNzP4SAvwIY5Rq60OrqXNWAKMRhX11gaPnW7g+1xYS2ZWGkirzpvnTG/9sqrOpUXsXJj/Vyyg/kgS
	V8KO/pS2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZqTz-0007B1-Pu; Sat, 16 May 2020 06:39:39 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZqTv-00073H-Bx
 for linux-riscv@lists.infradead.org; Sat, 16 May 2020 06:39:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1589611183; x=1621147183;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=51g7xcpq2PBAnghz6BlUvtZCmazfC3UWeEcLEHSwkXE=;
 b=G/Z2oVjkAczjCFZx20SXSVIDMbw+t5FnPMPWd8ichCioV8r3WDHaOg+9
 D88sO1SsoIeurtVqK0LsVdqk0/5sl3dn0/62ZyNc3ANx2or9ZIjVh16jH
 Cx4kloawwC5g1m1FxAqiLemrvLijHdNYZ7lX8AC35ZXxHr05cSqigwGIX
 0D9rLiFkO5maqIE5M4F9JVbp/d0RT0c/8/DWQZubX5/9747vci7jscaz7
 vxQtJ1HZwWmULqLzdmY62mlaV4bUV1aF9fjEEbXrksg9kegrO8XJ/wz2v
 PY6dRfZbEeQv/pDT144Ko8r/10X9EO7/eROvAFPU84lcq4oP+QmlW6qbr A==;
IronPort-SDR: GajCyBOsNcql+eoY41TaqyzvsFjwzRR8/1fumbMHZ2pHEGF6n1s7CL88dV5kT07ZaWWR04EzYW
 PRiuIX1lZXtUYgvX7UrPUq+TBuvB9l6mm1hLy5h9vgfLLA+YOVe7rdUSjKXOEXdL6Gb3+y4llp
 Qa1cqoGBUOkfqOW0ejFq6Y4bqgCRr9jpN89Fg4cXQ3jOseSbvTXR/XaIqX0+QU93+tOdWgLYPO
 Ix/EOio+mn68grs81xVKJoqDfV1EM432JwhmNYOXRH5XxvkaIDV6cHzu1DD6XmPUMhuGWAgbSr
 N1Q=
X-IronPort-AV: E=Sophos;i="5.73,398,1583164800"; d="scan'208";a="240555228"
Received: from mail-sn1nam04lp2052.outbound.protection.outlook.com (HELO
 NAM04-SN1-obe.outbound.protection.outlook.com) ([104.47.44.52])
 by ob1.hgst.iphmx.com with ESMTP; 16 May 2020 14:39:41 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mx3mGd1K4NdKpupDcmFp4Lx6VZQAWK/4mnQTxfl33NJ227wBege+dwxPqFpgrNT8LUv+43RuvTbctaNxNzQbNlhCOWWQIXuKnzcCfm0R5alu2K7ds4zirKTIui3e/2qXD2oPD/nxDUHHBsOECXJPArJRGRo05KrFPUNkIeowc0hkzZPcmNJkFlL5mQ9IZDE7V2FmMoIjlcKcl9KQO4J6lKLtzwYk4Ncyv40Tzu4VBo9+a2dkFeoaydmo8MuA0ylFz8jwk5sP1X864DNzNFP9SON1Cdkv73Kp/OIJ7lqDujcIhEtQFZcKkmOV1avXvRtYdwoSt8fbuPb7l0uYpaXEvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EwaVq4H0nySNo3yBhANiGDjLt3akUPsZzxPPwuHWhrU=;
 b=OX+Xd5kUyBp5rTXL8Z8ummH7nk8pgP8c+bfwC/uwGt5TVzk2JALErA4aw+UraWyEirbzlx3T1El6n3oeYsGk61FI86mQM5vopQeVYMSE9bYfZEY+ZX7KvyTzU5LVJjnsHX0mhu+cFA/iUerGjQh/tpowaHd80VxOzl/umBcSMxXf2z55w2Ug6otsxbgdBefRKiiKVB7+kvyJElUenEraiBwTmEKgNx/ozlcLnvFi/KM7i2fGXu42FB3Gq7Uits2NKFrFqxfoBIeZZ93t/e4wPAvxuk5eb8IJ1mDvkUv8vNySjTCI/8fHYgTx2PGIKJFQfV+lfgkPFH92J47f7D46Vw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EwaVq4H0nySNo3yBhANiGDjLt3akUPsZzxPPwuHWhrU=;
 b=mDCmwIZP9ZIapmRkxUGlZWKSKcl9b+CWs+GlVggyoNgNlJ9zAuNsVE+nJcn156OoroRhapzTSbi/k6C7p3vsa75gj/zwDKoaDGe8h5F2uuzB8JXAb8HBCCa9HLMR0iP2Hu4DM4jDks9/ogN4EKbWcM9opPeXrHqsEbHtpvlg+6M=
Authentication-Results: dabbelt.com; dkim=none (message not signed)
 header.d=none;dabbelt.com; dmarc=none action=none header.from=wdc.com;
Received: from DM6PR04MB6201.namprd04.prod.outlook.com (2603:10b6:5:127::32)
 by DM6PR04MB4539.namprd04.prod.outlook.com (2603:10b6:5:2c::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3000.26; Sat, 16 May
 2020 06:39:33 +0000
Received: from DM6PR04MB6201.namprd04.prod.outlook.com
 ([fe80::f8b3:c124:482b:52e0]) by DM6PR04MB6201.namprd04.prod.outlook.com
 ([fe80::f8b3:c124:482b:52e0%5]) with mapi id 15.20.2979.033; Sat, 16 May 2020
 06:39:33 +0000
From: Anup Patel <anup.patel@wdc.com>
To: Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Thomas Gleixner <tglx@linutronix.de>, Jason Cooper <jason@lakedaemon.net>,
 Marc Zyngier <maz@kernel.org>
Subject: [PATCH 1/4] irqchip/sifive-plic: Setup cpuhp once after current
 handler is present
Date: Sat, 16 May 2020 12:08:58 +0530
Message-Id: <20200516063901.18365-2-anup.patel@wdc.com>
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
 Transport; Sat, 16 May 2020 06:39:28 +0000
X-Mailer: git-send-email 2.25.1
X-Originating-IP: [49.207.60.36]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 5581361e-d10f-4451-0ae9-08d7f963e483
X-MS-TrafficTypeDiagnostic: DM6PR04MB4539:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DM6PR04MB4539759661C960F5212E85318DBA0@DM6PR04MB4539.namprd04.prod.outlook.com>
WDCIPOUTBOUND: EOP-TRUE
X-MS-Oob-TLC-OOBClassifiers: OLM:4125;
X-Forefront-PRVS: 040513D301
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: lJIvk/Wy0jGPG2iJhCEa6l60eqIMovLDC02nZ6hoThpG1YEQmOQxqf1Mkza3sRaCmRwL7JOMJhVCVY9f+oCi0MUJkO4W6xIhq7VEydd6PhTGfc0PrOQmUP7kAjfHOdDeO3cwEMdDTK++8JZ4O/SQA0b4OVqR+dWvbXzIbD6BoAUD+SeoJwKO1zBfuiaWM2ca9rb5bdRUTM78+AUW4ex1nZoVSYRgFM+JK8RaLX0cdDCyGWuJBdmiHrCh1Mb3v96iOXBA2xw3quXgFi9hEaPKBGF8YBq/b6lP96p3j4+vw2Iztc8kTOSLBSzau3M6Kf9fMa3dvRiV4ViJu57LI9VJAGiGfnH47U3+jAifLZXKLaB1BA9MNt9Xc2cR2C2jV3w/i0A8wk5Efbt4FSFPM2ivGvpFniEaqx6znYJhlzKTaMz9CZ+Ct3/acQKuc8oI9CLM
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR04MB6201.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(396003)(346002)(376002)(366004)(39860400002)(136003)(6666004)(1006002)(2906002)(8676002)(36756003)(8936002)(44832011)(26005)(54906003)(86362001)(7696005)(52116002)(55236004)(110136005)(1076003)(16526019)(186003)(316002)(5660300002)(66946007)(8886007)(55016002)(66476007)(66556008)(478600001)(956004)(4326008)(2616005);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: xxdJvbnFuiC6mQmR38Tukxln7t9FF0qSYFafOH3A4BkwcyewJbuwzFO5bhMLUnJp1zdMoSwjzrBNWsVqj37kKGHmQRVnCrZ856BSqvAaEXnIy4gXOrEK1/hTCCEOqJTN7R7t02Oq0e2zTnWUeq29822Tb11Dl3zCMmDdKggkjdkBlNcg6rj2d34QwPNhkg4qUEd0uWrPMKmJGcVRiN0nY3Eo+oYn1At5ZxCE2vbs4vsirFJe447wrxtLJ0H0Vg+cqClklRz6QIQU7EqHM+Zm8EyJi9sb8Iga/6KvsHAYx9Raj6+CbecBr0EQu75PKT8hRper3uvJSnJ5IGpiNpPbKT3FTX+KHwNfnOWfYJxKHeLm/CKACUsToZgkjakH9/rsXwlwQ5D9qug59nRhOnBeagbsVJKe0pElda0rDhXeJcKwencbg8wg5QA/boRQVNINakxfxr0kRV1bFXV9fTLXM/4UzpK1S20rZ3yzIIPc1XQ=
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5581361e-d10f-4451-0ae9-08d7f963e483
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 May 2020 06:39:32.8845 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Lbeg/IkLhoEN9a17zhoSW8N8eg7xrR7lSroVKvMk6t/4/wXVQELDV1JEDOjarbshqpWuvNQp6OyVWgeaQa1npA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR04MB4539
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_233935_484458_C9B26F8B 
X-CRM114-Status: GOOD (  13.63  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.143.124 listed in list.dnswl.org]
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

For multiple PLIC instances, the plic_init() is called once for each
PLIC instance. Due to this we have two issues:
1. cpuhp_setup_state() is called multiple times
2. plic_starting_cpu() can crash for boot CPU if cpuhp_setup_state()
   is called before boot CPU PLIC handler is available.

This patch fixes both above issues.

Signed-off-by: Anup Patel <anup.patel@wdc.com>
---
 drivers/irqchip/irq-sifive-plic.c | 14 ++++++++++++--
 1 file changed, 12 insertions(+), 2 deletions(-)

diff --git a/drivers/irqchip/irq-sifive-plic.c b/drivers/irqchip/irq-sifive-plic.c
index 822e074c0600..7dc23edb3267 100644
--- a/drivers/irqchip/irq-sifive-plic.c
+++ b/drivers/irqchip/irq-sifive-plic.c
@@ -76,6 +76,7 @@ struct plic_handler {
 	void __iomem		*enable_base;
 	struct plic_priv	*priv;
 };
+static bool plic_cpuhp_setup_done;
 static DEFINE_PER_CPU(struct plic_handler, plic_handlers);
 
 static inline void plic_toggle(struct plic_handler *handler,
@@ -282,6 +283,7 @@ static int __init plic_init(struct device_node *node,
 	int error = 0, nr_contexts, nr_handlers = 0, i;
 	u32 nr_irqs;
 	struct plic_priv *priv;
+	struct plic_handler *handler;
 
 	priv = kzalloc(sizeof(*priv), GFP_KERNEL);
 	if (!priv)
@@ -310,7 +312,6 @@ static int __init plic_init(struct device_node *node,
 
 	for (i = 0; i < nr_contexts; i++) {
 		struct of_phandle_args parent;
-		struct plic_handler *handler;
 		irq_hw_number_t hwirq;
 		int cpu, hartid;
 
@@ -364,9 +365,18 @@ static int __init plic_init(struct device_node *node,
 		nr_handlers++;
 	}
 
-	cpuhp_setup_state(CPUHP_AP_IRQ_SIFIVE_PLIC_STARTING,
+	/*
+	 * We can have multiple PLIC instances so setup cpuhp state only
+	 * when context handler for current/boot CPU is present.
+	 */
+	handler = this_cpu_ptr(&plic_handlers);
+	if (handler->present && !plic_cpuhp_setup_done) {
+		cpuhp_setup_state(CPUHP_AP_IRQ_SIFIVE_PLIC_STARTING,
 				  "irqchip/sifive/plic:starting",
 				  plic_starting_cpu, plic_dying_cpu);
+		plic_cpuhp_setup_done = true;
+	}
+
 	pr_info("mapped %d interrupts with %d handlers for %d contexts.\n",
 		nr_irqs, nr_handlers, nr_contexts);
 	set_handle_irq(plic_handle_irq);
-- 
2.25.1


