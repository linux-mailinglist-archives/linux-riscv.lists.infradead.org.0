Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7035C17DE24
	for <lists+linux-riscv@lfdr.de>; Mon,  9 Mar 2020 12:03:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Type:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=azisuRchUpkDHzyN6E9l860Ijb+O/ixQMfTAWFoyAEM=; b=o1pHx5SiO+VloyhvkYe/lQGax
	ONdxEvxfz24PyJdO/ca3TfV6Nufyfo6yrBm2YqJ/jLPeA2N/HmEZqQ1UXgrngu+FfpmmGawQR5dmt
	nugvTUBHE1PdG/4tSOjf2ajlUslWazkW1IfxL4kN97SuBcXtlY/B4gRm2JD4qC/Qv9Qwqs4LIeb+k
	vCWl+HwbJPj9LDn1rueLDTdnPmKvIbiRguQH3cqPVj2oXKyu2zzl5U4e+LSbZV85z9EmlQgeMZ/RJ
	LPV3CYT+k1x/DxjG5ZOIiKnQRJmc4seRlXSq/7NVLanhtDaztF3nypK0M0/D8+f+6fTln2xrlxpPw
	DR1oXpZhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBGBx-0002gG-O9; Mon, 09 Mar 2020 11:03:25 +0000
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBGBt-0002Yu-Rt
 for linux-riscv@lists.infradead.org; Mon, 09 Mar 2020 11:03:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1583751801; x=1615287801;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version;
 bh=eDCq6hgO6BP0CMSbIqfQ+z1NMIpz4hoXCdRAJ/rG1AQ=;
 b=k1ZDZQ2xWLRXgOh9QoRpvU3LleHkx3F9sbyRrKAYy3sx+ccNoseqzn3K
 aFHT0MsmX+uiXqrjnqfYg6ljV2hz9QI2Vtd5tWzThj+g3x1Y182sYsl3o
 fnLiwI6aY5x7BUAJvMLhb3TPsgoXs6U06U0sFI0geHz7FWTrdkR9y9R8o
 GGcl4wTE6FDX1mMC5mC8vmH9b3XJXTAAgqkD646GiLovYoBt3Z2UxuvX7
 SB8wRdVQWBJdNaEdZ65eQIUaHj2OwDu7APt8WJnqx5CUHu0nPdbzEz9wJ
 xdMZH2VN23IHPUE7sUGKn5H61m2Yfs7YeHnloHI6Wgrb1CeaZpP/98CzM w==;
IronPort-SDR: X6vJLSJ3jwxQ60hoyWf2Jr2gCL13s9PdMpMBMC9n94M0h+O5sAsJZeHJcwVdaVbuvq+dHSB9M5
 PGRpVo5kgnK34euS62F1dcncw79GS0EtIjfXSkkxwAEuiQVRUo1n1qxaguuLfFihdx+fBujJ7H
 J5b3zRUV9sJcse7vt1Gbww+q3YcHaFAD9AykDvcUMtuybtFBBAZ+wmqNc6PuQf+ZDGI5yxy2M2
 8Uh3tyktv/uEWwRDYkiqAogmI3rm9oNWfk1Fhla/55VIvBe0HC2KY9eMywWkGfHjxV8LOt3PVz
 HdE=
X-IronPort-AV: E=Sophos;i="5.70,533,1574092800"; d="scan'208";a="240225772"
Received: from mail-co1nam11lp2175.outbound.protection.outlook.com (HELO
 NAM11-CO1-obe.outbound.protection.outlook.com) ([104.47.56.175])
 by ob1.hgst.iphmx.com with ESMTP; 09 Mar 2020 19:03:20 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=D3+9WzgwolGuPXXz5QjZyIPQPTYY+onz1HRDYKt69BfalhpFPvLPHtXPc4/tSN+j1Z2p8fq2Yv/uD9B8Np9wv0Q4jSl3/AwMnN3R3bl7MQD4IAyXq7kiMiyGV/NbkPGLOlNYURn+xnOWYAPIEvpJuq8bVzlO4rWt8TpPpMThfRk5YwVDPLoXVf0zmMWjlCM9AraDVR/Y5VK3cSqK9xL6+w2r63hbCIhcVCl6TZzR7ZHA5iPlmCtxNe2a11HUdl8AucKWJnb14lH60rRBGZAwyEPSgiFs+8Qi0P+LeUtiZvg8AHRy659Tn7jDC/r/Kl9DtxM25XOH+qHmyR420YC+MQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=azisuRchUpkDHzyN6E9l860Ijb+O/ixQMfTAWFoyAEM=;
 b=RU21rFHud1onTGgGfIaVjNofLiQgj4FKB3L2El+cFfRMFovKU8yXqnyECwvEml63/5yqHC0aqDlfwZqoFKZWnb/mI7CYuFDIUsbChDpNoOnDU75+Sp6/tQJLI/xhAlv5j/ox1CjsM3y25kjdMnjc8veP1+ETLxchi74pU50ve34vB1xf+N0Xy0Nc8Rb4OqAy5l+vd+gyicsBbqcUxdNCPAafXcvv1AvBLkUgl75R+yK99ZFvFnQFnsssLD8yZ08cbfg2KB1PmOGewHId7Fd2L9HK0xEa4nT1e05dloeEVAiJwO1WZOa1iCNYBJPyXyD9R8C98OuiRPsFCHS7RKg6HA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=azisuRchUpkDHzyN6E9l860Ijb+O/ixQMfTAWFoyAEM=;
 b=jroRj2ksVUGCX6wYvI63pBqDi2vI9u5KjSJxteyVGn56th0zhoWJ/NXAYKYNlCGM7EnfHDALcGrwGz9Xo/5h8tvbiswTCMZiVuKRkozInxBlJbnRQKL6xzyzc52zqEhHqAddXs8mczHrDGI1Db0+qFZtKxLqjb3kwxSlhBv1TGA=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Anup.Patel@wdc.com; 
Received: from MN2PR04MB6061.namprd04.prod.outlook.com (2603:10b6:208:d8::15)
 by MN2PR04MB6685.namprd04.prod.outlook.com (2603:10b6:208:1ec::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2793.15; Mon, 9 Mar
 2020 11:03:20 +0000
Received: from MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::159d:10c9:f6df:64c8]) by MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::159d:10c9:f6df:64c8%6]) with mapi id 15.20.2793.013; Mon, 9 Mar 2020
 11:03:19 +0000
From: Anup Patel <anup.patel@wdc.com>
To: Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Albert Ou <aou@eecs.berkeley.edu>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Thomas Gleixner <tglx@linutronix.de>, Jason Cooper <jason@lakedaemon.net>,
 Marc Zyngier <marc.zyngier@arm.com>
Subject: [PATCH v4 5/5] RISC-V: Remove do_IRQ() function
Date: Mon,  9 Mar 2020 16:32:11 +0530
Message-Id: <20200309110211.91130-6-anup.patel@wdc.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200309110211.91130-1-anup.patel@wdc.com>
References: <20200309110211.91130-1-anup.patel@wdc.com>
Content-Type: text/plain
X-ClientProxiedBy: MAXPR01CA0071.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:49::13) To MN2PR04MB6061.namprd04.prod.outlook.com
 (2603:10b6:208:d8::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from wdc.com (106.51.22.61) by
 MAXPR01CA0071.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00:49::13) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2793.11 via Frontend Transport; Mon, 9 Mar 2020 11:03:14 +0000
X-Mailer: git-send-email 2.17.1
X-Originating-IP: [106.51.22.61]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 9e8fa8f0-50c0-4eff-cc9a-08d7c41979d5
X-MS-TrafficTypeDiagnostic: MN2PR04MB6685:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <MN2PR04MB6685470045A7BCD1EF629A348DFE0@MN2PR04MB6685.namprd04.prod.outlook.com>
WDCIPOUTBOUND: EOP-TRUE
X-MS-Oob-TLC-OOBClassifiers: OLM:1186;
X-Forefront-PRVS: 0337AFFE9A
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10019020)(4636009)(136003)(346002)(366004)(39860400002)(376002)(396003)(199004)(189003)(16526019)(5660300002)(186003)(1076003)(36756003)(2906002)(478600001)(26005)(8886007)(4326008)(55236004)(7696005)(52116002)(8936002)(316002)(81156014)(8676002)(44832011)(81166006)(55016002)(956004)(1006002)(110136005)(86362001)(54906003)(66556008)(66476007)(2616005)(66946007)(6666004)(7416002)(32040200004);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB6685;
 H:MN2PR04MB6061.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: o7QFz2EaHg3ktehMKTKPSVm+zloWQrmsxRzjmutPuMxFzLcFF1+M31iQfbanRdCY2OmA7vnl3rflCN50dhexTBJ15EuQXcL/kPWBfJIeloBZZ09BZRD1OF/kN6HknJZK9ALWLKIEBmgmeCKoLdVAZml0Jl/WvOF1DslsSypzBhT5KdlGH3jDV3hTKrd6V9gmw0zyIHnNcaEwAuWvOIHrTOF/2tPPAMMoXv2/yLFPOS0dX/v3pHgnWSbz4WZV0JmzcO4JOvhWF82HTxMDC6Lpe7OMq4qqhF1hl4vyd7w2+vt7KdxaXF/tNsV2hWr9n4Migzt4aNbpTaFFXzL/cGxabrJoBfNAGOh+PvDXX11pn8A/aMvRuVhCg2xpOChXZm8St1vDPR2gryEEY4fQVtMYu+wR8dzUiRbcsWHegkVKc1pva36hxqKg9arHIhRkTLHOGudSp8Fj/qeuT3d7kbs6ulaeLX4ECDu+rhAmXi7SCnZdYyf+hjsUXimO9V8OtVAv
X-MS-Exchange-AntiSpam-MessageData: jKYaZpqYIzfGboEJeyF+u60+9iFyd2YfYeTDh0fKQ46Xe2VaNbBN4tbRxBxSaq2EtRx5SqOXlEpO2cEOyooPfi+O7Z50jxcK1inMeVDkbymqlLwNJ+qMWMwa4j/uqrwAwF5VxkRpCQLp0l8FW4VA+A==
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9e8fa8f0-50c0-4eff-cc9a-08d7c41979d5
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Mar 2020 11:03:19.8382 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: IB34S95RjVtT2Q8yq0t8aeJyTxashxxnWqoIzjHuHkmf/uixfieIGghHi3jVGoBhQSpGVSzq4DXu5F5/aRRVyw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB6685
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_040321_931159_FAE8DFCD 
X-CRM114-Status: GOOD (  10.66  )
X-Spam-Score: -1.0 (-)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [106.51.22.61 listed in dnsbl.sorbs.net]
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.141.245 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Alistair Francis <Alistair.Francis@wdc.com>, linux-riscv@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

The only thing do_IRQ() does is call handle_arch_irq function
pointer. We can very well call handle_arch_irq function pointer
directly from assembly and remove do_IRQ() function hence this
patch.

Signed-off-by: Anup Patel <anup.patel@wdc.com>
---
 arch/riscv/kernel/entry.S | 4 +++-
 arch/riscv/kernel/irq.c   | 6 ------
 2 files changed, 3 insertions(+), 7 deletions(-)

diff --git a/arch/riscv/kernel/entry.S b/arch/riscv/kernel/entry.S
index 208702d8c18e..238f0ca070db 100644
--- a/arch/riscv/kernel/entry.S
+++ b/arch/riscv/kernel/entry.S
@@ -183,7 +183,9 @@ ENTRY(handle_exception)
 
 	/* Handle interrupts */
 	move a0, sp /* pt_regs */
-	tail do_IRQ
+	la a1, handle_arch_irq
+	REG_L a1, (a1)
+	jr a1
 1:
 	/*
 	 * Exceptions run with interrupts enabled or disabled depending on the
diff --git a/arch/riscv/kernel/irq.c b/arch/riscv/kernel/irq.c
index eb8777642ce6..7207fa08d78f 100644
--- a/arch/riscv/kernel/irq.c
+++ b/arch/riscv/kernel/irq.c
@@ -16,12 +16,6 @@ int arch_show_interrupts(struct seq_file *p, int prec)
 	return 0;
 }
 
-asmlinkage __visible void __irq_entry do_IRQ(struct pt_regs *regs)
-{
-	if (handle_arch_irq)
-		handle_arch_irq(regs);
-}
-
 void __init init_IRQ(void)
 {
 	irqchip_init();
-- 
2.17.1


