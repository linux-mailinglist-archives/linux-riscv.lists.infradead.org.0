Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD7D11DCE22
	for <lists+linux-riscv@lfdr.de>; Thu, 21 May 2020 15:34:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Type:Content-Transfer-Encoding:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=uE2W9DLlKdGilXoKWil4+pDPIMKsBgbm4cT6I6B7Gbk=; b=NvRaSemC0kPINW3QFHAwfdTdM
	req6iJNlmwlKUsyywTJ9N2rWWnvyvMo7NlnCAmDww/k3zwg4WHuqdtE8f5IqV3dJQVOjDa4D1Euyc
	ioV1NKO/ag2VSZaatgXMSHAmEUpVGZrUeDADPhqglY2Ni2Aggnwsnlpbj6ZODcqbJRMRZOGbGMsXD
	Z1gPZvd/OFjijxIAKuhiWJzR9JUyuVFWtzihc53JFRxRxd2ZQRiztUingM9vb/7v0gEzcCry5Lfdd
	HLQy499/9yHlgS1/IJXcDKX/O0XUCU3D6gX6MHv8MM0Cgo3X+0Gtc8q87EGiAyKMrizSsBI6EfTl6
	LmOX5FYPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jblKn-0004cC-UG; Thu, 21 May 2020 13:34:05 +0000
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jblKU-0004Qo-Gz
 for linux-riscv@lists.infradead.org; Thu, 21 May 2020 13:33:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1590068026; x=1621604026;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=S1b36p02cSwnUtlEy0TuBRB1sDC6K5s4EWPDv4UR5KQ=;
 b=f/HPTbVPs//c+WYRijI+dvxpOLlAY9Hgyhb/KPlMqjZfR+/P8Eak2pXZ
 SWDOudcVmxz1/xAYt3TyZ8swWhQBYIGTLEP6MVMOSVF8NbZT8FuW3iyrg
 PP7JuCa4smayf414ECjANtnaYcrqIBEe+Ex3ujOyBgHhvoV1A2tLCvqS3
 pqle468mnPl5pmLmBlaplySs3hlroWbpY4PDifUiAcOZxtfEojU8SajxW
 2Wgye5VsIFnyGLJbbk+PTY28O+8Ys6PaZZqgg0ZfD/T1BnQdXej2Foggg
 kz89eKURuzBaw+VDAmUVgb+Mrz9o1Wpx4UmCZ9dVX9SL2Ky8mnLKZdcar w==;
IronPort-SDR: M86uoskcf8vKZwSN0GxsuXwKn5Xr1THXq+RmWDkLgv66oxg8sd5ExXjepaPYYks5HAtbSGHrRU
 Q1IwU7IZLx+nA6CCcivS2/TyBBXfQ1tKdHFZKt/wv0FkYPv+6a6COgi5RMh594SwcB6k/yVSmY
 4AvNxnavFeAjcjyH/CkTprmttVBNM8mZ2b5eRafuQeES2Extg3P2lyCZnzZgsX9DJZqJ/yk5Tg
 2+NJMI3uAo3K5UluVb+eWjABMwejAFbZwHNxY/XQ0xIYHmPMOd19H44n40HfH/NMUGal7Uv8PG
 H4s=
X-IronPort-AV: E=Sophos;i="5.73,417,1583164800"; d="scan'208";a="247222585"
Received: from mail-dm6nam11lp2170.outbound.protection.outlook.com (HELO
 NAM11-DM6-obe.outbound.protection.outlook.com) ([104.47.57.170])
 by ob1.hgst.iphmx.com with ESMTP; 21 May 2020 21:33:45 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OPajDwVhyp6odVtDHbSxQYk5vW+3xxTikRFcaM0iXEZ3+iV7l2M+a01mHPmhsVbRW8uU2XHPNOTn2t5hQPcJEJRDnUFiDpS0df5jSdMU0VngT2++GwicFmuws/EmyvwLk9d123chogP5zxQRkWBBNfjKHlkk1MAkq62H8xJ5aa1ygotdfb3sNQp20PKpoqllT56OcypxilGhRUYuz6xhnLSnp9gYhzXkAYHfO3YiAp183WA2RmnXV5PwoOQBLDASSX28CE2ETgxsILq/ZS53kwOXrwq50x+qEW6Jl0dEfrm7vmjZCA5yt5/08OHTF2qXBLxwDe5oiOKovKyY65LiYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uE2W9DLlKdGilXoKWil4+pDPIMKsBgbm4cT6I6B7Gbk=;
 b=g+AWvkYEDy77bMztKfc2cdUKkzSmSgia3omF1hBQ+fYYj6Gg8iGrnx/BDR2niXW6smvzEkocEQ1GYT8JUEhHHJKaDqE2JsjSNaQb1JNKTxwnx3ag7njGlFwfAsC4YRjZhdI519eN8b2NWWwcJpaOql/qbXYq7y25620OWRfJV03EU8wzOX2NgPpMp6nH2l9OE0n4tBqbcJVE65LflmmAo33ZZoxmN1m0B7DzMB855gpVZGWqRxKVwfh2749IYYo+wnu7etF7AS10e/pxaShOXrSO7mrIY9GvzppLesncfqZh9Lty8ttk8tq6NG0u61sGEbab6QAfcX8HBgd2Qawgkg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uE2W9DLlKdGilXoKWil4+pDPIMKsBgbm4cT6I6B7Gbk=;
 b=oIs73KfWFA8rLRTWHGjXgi33Zaw3I5yaE9wPV7DNjf/OG51XSaxz6Yc3qmX0nzjdGsc6QEliiS9HPAgRbrUgwPFmj6W7272LN5vCjgiu3nGomYrUyjqJP+Un0nWsfC1kpEI+PqnJf1xm/1sqmcWbFDDZEAZ3NyLhBbaaPwX+UPk=
Authentication-Results: dabbelt.com; dkim=none (message not signed)
 header.d=none;dabbelt.com; dmarc=none action=none header.from=wdc.com;
Received: from DM6PR04MB6201.namprd04.prod.outlook.com (2603:10b6:5:127::32)
 by DM6PR04MB5292.namprd04.prod.outlook.com (2603:10b6:5:107::25) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3021.23; Thu, 21 May
 2020 13:33:44 +0000
Received: from DM6PR04MB6201.namprd04.prod.outlook.com
 ([fe80::f8b3:c124:482b:52e0]) by DM6PR04MB6201.namprd04.prod.outlook.com
 ([fe80::f8b3:c124:482b:52e0%5]) with mapi id 15.20.3000.034; Thu, 21 May 2020
 13:33:44 +0000
From: Anup Patel <anup.patel@wdc.com>
To: Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Albert Ou <aou@eecs.berkeley.edu>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Thomas Gleixner <tglx@linutronix.de>, Jason Cooper <jason@lakedaemon.net>,
 Marc Zyngier <maz@kernel.org>
Subject: [PATCH v5 2/6] RISC-V: Rename and move plic_find_hart_id() to arch
 directory
Date: Thu, 21 May 2020 19:02:57 +0530
Message-Id: <20200521133301.816665-3-anup.patel@wdc.com>
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
 Transport; Thu, 21 May 2020 13:33:38 +0000
X-Mailer: git-send-email 2.25.1
X-Originating-IP: [106.51.30.72]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: c7d0748a-7ad9-4701-ee17-08d7fd8b9527
X-MS-TrafficTypeDiagnostic: DM6PR04MB5292:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DM6PR04MB5292BAA61D8F206D813366938DB70@DM6PR04MB5292.namprd04.prod.outlook.com>
WDCIPOUTBOUND: EOP-TRUE
X-MS-Oob-TLC-OOBClassifiers: OLM:7691;
X-Forefront-PRVS: 041032FF37
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: p938/xmYXCk2FBuOkjT6oezuthJBHhk8EsAFYoEsKzDsfNU6dSiZG0I4sHQMruPFMXXoNyMtKcRQTdVp7HCYCRKijBDCB7EEm9hsRFqo7VHnW6VzMM5HxT11qmMg2EsRjpZFQY1s0Goj4XwSCCDmfj1GiOM5xBfrXRU/cS7nNfU+Fa1a/6zDRZmaqVC2wu548IK14tBzybPi3gpe4zQXb2YjjwGs7dxZFCtyl3YRfu5kU3UzPAfa5lazsByRqn1y6wxMu5kSvpDZRt8N51r7WQyLHIFzV1WbTsu9h9MHG2+ZQQjUBKWz+qfViVX2gT3M
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR04MB6201.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(346002)(396003)(366004)(136003)(39860400002)(376002)(478600001)(7416002)(5660300002)(8936002)(86362001)(8676002)(4326008)(8886007)(55016002)(26005)(7696005)(186003)(1006002)(1076003)(6666004)(66946007)(2616005)(2906002)(66556008)(956004)(54906003)(66476007)(52116002)(36756003)(44832011)(16526019)(55236004)(316002)(110136005);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: zOFjmYBqTs5lqOa01XZrBBLeNcnF2br4qofskPkuTBEmTK5NbVySfEhydJOwMDZ4E7FVnN2j71qqLWruk2rJ4GQrrdNUnWKpMij6ADAPbzZamcQqJePhCsDkLqq8KdKwi3EkoIjEW8CUiW8akwVLlJScGGd5bOCvYnhTIT3T79xlKOaiJ6R4n3umgabCxnhLugXE/T/kcUzxM3SFRWQp7NOr/iK+E5iAV86RBd8gHgT9PvVCqDieICNJgQFhb5l8hUVNkJf5owmoGKNLVqGwl6Kr3Vv6kexXttXwc5xn6MQcil/esmKd6ZCwT8EHl6dzsIruE4zB/mDO1w2B94P3lmppxn3cWWgVFX/VoNlOxqKAWOWsSDKPEh3J1B+LAxRkZNnrWJn/E4bmpXCWDjoNjxxNCtb0yv4Fa7pLthsxbbehbbUYNERsNaVDEilu9Pu9jcUCx8gjdF8pmSX2I1umHyRdoMUNIZ6w2MzOPt/sFpA=
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c7d0748a-7ad9-4701-ee17-08d7fd8b9527
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 May 2020 13:33:44.5435 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: D0lSxjUINoMsepxIQCI6kG/m75xm6DiAChJog4iS/agv5MmunDwWYV7H4AKr2H/VwtDn8CQxUlr8iF8jZC8lRg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR04MB5292
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_063347_241731_FD915C8B 
X-CRM114-Status: GOOD (  15.34  )
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

The plic_find_hart_id() can be useful to other interrupt controller
drivers (such as RISC-V local interrupt driver) so we rename this
function to riscv_of_parent_hartid() and place it in arch directory
along with riscv_of_processor_hartid().

Signed-off-by: Anup Patel <anup.patel@wdc.com>
---
 arch/riscv/include/asm/processor.h |  1 +
 arch/riscv/kernel/cpu.c            | 16 ++++++++++++++++
 drivers/irqchip/irq-sifive-plic.c  | 16 +---------------
 3 files changed, 18 insertions(+), 15 deletions(-)

diff --git a/arch/riscv/include/asm/processor.h b/arch/riscv/include/asm/processor.h
index 3ddb798264f1..b1efd840003c 100644
--- a/arch/riscv/include/asm/processor.h
+++ b/arch/riscv/include/asm/processor.h
@@ -75,6 +75,7 @@ static inline void wait_for_interrupt(void)
 
 struct device_node;
 int riscv_of_processor_hartid(struct device_node *node);
+int riscv_of_parent_hartid(struct device_node *node);
 
 extern void riscv_fill_hwcap(void);
 
diff --git a/arch/riscv/kernel/cpu.c b/arch/riscv/kernel/cpu.c
index 40a3c442ac5f..6d59e6906fdd 100644
--- a/arch/riscv/kernel/cpu.c
+++ b/arch/riscv/kernel/cpu.c
@@ -44,6 +44,22 @@ int riscv_of_processor_hartid(struct device_node *node)
 	return hart;
 }
 
+/*
+ * Find hart ID of the CPU DT node under which given DT node falls.
+ *
+ * To achieve this, we walk up the DT tree until we find an active
+ * RISC-V core (HART) node and extract the cpuid from it.
+ */
+int riscv_of_parent_hartid(struct device_node *node)
+{
+	for (; node; node = node->parent) {
+		if (of_device_is_compatible(node, "riscv"))
+			return riscv_of_processor_hartid(node);
+	}
+
+	return -1;
+}
+
 #ifdef CONFIG_PROC_FS
 
 static void print_isa(struct seq_file *f, const char *isa)
diff --git a/drivers/irqchip/irq-sifive-plic.c b/drivers/irqchip/irq-sifive-plic.c
index d9c53f85a68e..16d31d114c30 100644
--- a/drivers/irqchip/irq-sifive-plic.c
+++ b/drivers/irqchip/irq-sifive-plic.c
@@ -240,20 +240,6 @@ static void plic_handle_irq(struct pt_regs *regs)
 	csr_set(CSR_IE, IE_EIE);
 }
 
-/*
- * Walk up the DT tree until we find an active RISC-V core (HART) node and
- * extract the cpuid from it.
- */
-static int plic_find_hart_id(struct device_node *node)
-{
-	for (; node; node = node->parent) {
-		if (of_device_is_compatible(node, "riscv"))
-			return riscv_of_processor_hartid(node);
-	}
-
-	return -1;
-}
-
 static void plic_set_threshold(struct plic_handler *handler, u32 threshold)
 {
 	/* priority must be > threshold to trigger an interrupt */
@@ -330,7 +316,7 @@ static int __init plic_init(struct device_node *node,
 		if (parent.args[0] != RV_IRQ_EXT)
 			continue;
 
-		hartid = plic_find_hart_id(parent.np);
+		hartid = riscv_of_parent_hartid(parent.np);
 		if (hartid < 0) {
 			pr_warn("failed to parse hart ID for context %d.\n", i);
 			continue;
-- 
2.25.1


