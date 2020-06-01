Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 316B01EA0B7
	for <lists+linux-riscv@lfdr.de>; Mon,  1 Jun 2020 11:16:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Type:Content-Transfer-Encoding:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=nA5tYfhSbPBVGtiPY+QOhMkAN0w2Rz//SnplTpbzNy8=; b=hLqSHx4JqFreNoYoNFJVAGDxI
	ZEiZj6rbC3236ZHBO+5NTAqmCOdBoqXlg2RHKT4foH3s+eWn/LVLqGYTic3zxY8oLZfMGdhRX5oIy
	9/+QG8cs9jjf9E8z1UD8teiER8VgrO8M6i9jrGDD8hCer3ypo8ECJf31zGSeg35VC26ZipssazqWf
	VlULHUAuwY+EUVYobIuVjtVRmpv+T36fiW+22gj1xdBWA3UwHqb6wPAURDSvwzsOpG/84MGQRPAHw
	VBTxZHVMfT+NmacWyg0QjNuB0Ib4N4y18+dENxerNbB0oNTyczdU9T6dfzh71XQ1wR+1VZu9eIHvR
	IzQ4iG1Dw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfgYR-0008DV-M4; Mon, 01 Jun 2020 09:16:23 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfgYM-0008AD-W4
 for linux-riscv@lists.infradead.org; Mon, 01 Jun 2020 09:16:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1591003001; x=1622539001;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=SuGZr4GxtABjysO9g3tQV3Q6+ZZhHD1SDX0BveqqkFY=;
 b=P3hgesBJMIl1aAtlZY/1AiqW9WO5ChIUASGrARTX1do0dqYaIZu4FnuJ
 2rpLCIN5GVR+mxTkiSEpfy6pNzT1FNRCl0Mp5NWVl+avPyR0iXXzJu2iU
 TTbgyuvTiJwu43JszZIlkhjA+hwwuHeZgcgzgSAVTe0PENdvYNzClQDjL
 /9YPQDjW+Zdin9wVoeeS51212lAaH1YkVAObx319lL0LDjsZKdIQlqSr7
 c3cZbK1itSkQqT5xQ6+clT66VBCMxcTBBcQ+31CNgY1ISExnueWePkWVY
 V8AAZsj9j37WkB6Qc88squmSEWcGHgz17qaRCUfhLflTk6WxTmNlL5tsH A==;
IronPort-SDR: oUxd6oFysRkj5S4z73+Li5uNgNJGC3gkcyptlIHxFT8d0In5Fz63qRCeNn7PYobiJMSLf2vb92
 WsmE3Txw/iK0idr1yli+aNbO6XnIPVhhOQo/nL3hFfV590zJFJAuDv8iVj9zNC51jnl9Mhj5O2
 5AzGXa1QWZ1nGUeNuaC1aPiYh96qD6cEAHk5hTblYcKhSwcuu22riomjYPSSVlTAVn5PMT9QOY
 +Q7FX0PSe/H9Qz/voWBNRjqp1PTsnq16KVS5WqsBFJ1l7WMG5Id5kEZ4pwty/oU2qLOVIDywvD
 PUs=
X-IronPort-AV: E=Sophos;i="5.73,460,1583164800"; d="scan'208";a="241785965"
Received: from mail-sn1nam04lp2050.outbound.protection.outlook.com (HELO
 NAM04-SN1-obe.outbound.protection.outlook.com) ([104.47.44.50])
 by ob1.hgst.iphmx.com with ESMTP; 01 Jun 2020 17:16:37 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IiuUYoVNvfJeUdBZlvDaA1xQrPQZqk3M38c2tr8MUKp2hBslhxf2sRFvozUloWehf/Y4tpc3UUd0odoj2RzbmsWWK2E3/Msqy/W8TrQaeyPQOWHwV/0Qv4KTgpZ+nqnl92LXA+M02ZD70TNDU2nGrHL+BWgS0OLWd4o5LClScoP/MfoV3jncctMsde8RqXAZ78Q3IPEMQPG2RHWlqbTOeRt65BOyBkEk1kwHJq1M07uvQ69JDI5zbh39dhODQGS9uIrEoG/y2tbukJmDjk2Cv1elmQn+D/497Dt2HxfqEsMuq4Zfcg0R5+/+cMZzxFKc1dn3kCG26TC0qNl53GslUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nA5tYfhSbPBVGtiPY+QOhMkAN0w2Rz//SnplTpbzNy8=;
 b=azHbuxbO1UNl1SANQjh0AfcshkQFc+qS8t+qohg2gM4qDldK8viQAPQaBE2CygDdrlccgc2Xgujq67U0u+Knyk7Ws55oJ7yfHGv4ggh/nIoxZZ6aryZvjbFvnX+gwi8jQi+jjEbfxEBfhw8YaYZlToL48jhzE7HEjYHNhNKnfi9j47FkhGTuSqFQ8z+xzcvS77BEL5Edq/UjWbzoGH12lsG/OTIvtxMwzQdmw/u1w9+HMEX8mEvSddgsBsTIRhD3aqgwrCgHGFtkwa2F5OIr4/+aLWD4jAsNl//tLWQp87HFE6hxXIwnUiWxW3ewzCWu6HhwIWPBwK+dRoI95F512g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nA5tYfhSbPBVGtiPY+QOhMkAN0w2Rz//SnplTpbzNy8=;
 b=OOXTdk0LiyyYRkfmVf4rzHfh6BvYsDPx82r0soSZ90Gtg9mnLx0I//7mjnHCiSM/CmZPN2r0pf1AzhK6LZrDNeK5ziPyPXO0akJZBgm7UkmUaIlIs9jnQowYM+QkU0LpLVVU3gMpQgjoISAQsDVU0oB18ZPXc3gCfSHd2MvBN5Y=
Authentication-Results: dabbelt.com; dkim=none (message not signed)
 header.d=none;dabbelt.com; dmarc=none action=none header.from=wdc.com;
Received: from DM6PR04MB6201.namprd04.prod.outlook.com (2603:10b6:5:127::32)
 by DM6PR04MB6955.namprd04.prod.outlook.com (2603:10b6:5:240::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3045.19; Mon, 1 Jun
 2020 09:16:16 +0000
Received: from DM6PR04MB6201.namprd04.prod.outlook.com
 ([fe80::f8b3:c124:482b:52e0]) by DM6PR04MB6201.namprd04.prod.outlook.com
 ([fe80::f8b3:c124:482b:52e0%5]) with mapi id 15.20.3045.022; Mon, 1 Jun 2020
 09:16:16 +0000
From: Anup Patel <anup.patel@wdc.com>
To: Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Albert Ou <aou@eecs.berkeley.edu>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Thomas Gleixner <tglx@linutronix.de>, Jason Cooper <jason@lakedaemon.net>,
 Marc Zyngier <maz@kernel.org>
Subject: [PATCH v7 2/6] RISC-V: Rename and move plic_find_hart_id() to arch
 directory
Date: Mon,  1 Jun 2020 14:45:39 +0530
Message-Id: <20200601091543.943678-3-anup.patel@wdc.com>
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
 Transport; Mon, 1 Jun 2020 09:16:11 +0000
X-Mailer: git-send-email 2.25.1
X-Originating-IP: [106.51.23.166]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 6b65d666-3bc2-4466-ac1d-08d8060c6faa
X-MS-TrafficTypeDiagnostic: DM6PR04MB6955:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DM6PR04MB6955E0FF927802AC1C6756708D8A0@DM6PR04MB6955.namprd04.prod.outlook.com>
WDCIPOUTBOUND: EOP-TRUE
X-MS-Oob-TLC-OOBClassifiers: OLM:7691;
X-Forefront-PRVS: 0421BF7135
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: KLnKL1emSXAFWlMpm5qOlDs4hC+Oig0wTxfnvzyOJ8jd1afRlpjq2VyPGaYzvUVH5yY5yzs0W+npw5r1wn+03O8YAYQM+RmGcbsVMSNpcV0LiSsvENH3L4ML3MdDVBJLMarDHCVI8QBiAoT5sTekx/CsbH6Ih9S3j1kDADyknejGhi8zSjDnS/Xr7YnnHn1dxRZ1AwTPKufUKm+UYBeOYm1+jxn63nCT3eK0lTv5LDn/NOTZ4F2xompiGt6/PNHMqpa2XdzsgCg+nI5TgvSqtxf4x0d+GrnS/8bDFbZq+4GbQKGnJnW3/yrgrfUp+wGi
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR04MB6201.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(366004)(39860400002)(136003)(396003)(346002)(376002)(2906002)(8676002)(5660300002)(956004)(2616005)(44832011)(7416002)(1076003)(55236004)(16526019)(55016002)(86362001)(186003)(66476007)(66556008)(66946007)(8936002)(26005)(6666004)(7696005)(4326008)(83380400001)(110136005)(1006002)(316002)(8886007)(478600001)(36756003)(52116002)(54906003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: a1Vekgx97efoOT2cnhO45Os5W5GbTzcRGzdN2sVyMDba1N/7XquEfGfiUcRA8WM4RRyFhROxteQ3fRw4gFspr0nuwtd45NfCt8PEQhOk/xVjw/ZZJR8cUjMP4fkiwn+CMs+F5xVEwOv3+CGPB2Z5rDGFCng4ANu3GLKkCb8G3UFU7HicSoFm3cIVswUEukhqapOso6bkFPJj4OaNYy8hByYGFo2/r2vWErURbn1MvwwUBBPK0IioOxsEkz+f3dgizbyXL7rth3+fB++EIbcLQPYbuvqEYVh8HJzMIHkBIwJy1ZD0iBFd5g1EzATNG3WguYIFtV+xLl3PmizKmWFmJJUwhx2APP292tYOTPzc5bVQE5aGKkGv6Muoc5xBYbexo2WuVitdbDAXgfBMYgqvl3wCru5cGhe16t94x8XzWGGxnGOxWgNfLIjsu11siDyhxBbdcIpvRvGyhYjAFfWCqIa9iyfvz7PIjtlkMoolA7o=
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6b65d666-3bc2-4466-ac1d-08d8060c6faa
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jun 2020 09:16:15.9543 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gr4YXpfrVkSqkVFbIoKEAjQ6/RDy3ynMnTbGXpvQsPOF0btxrcgQXtVAxiLpfxyLmLt46CIqKTJ2dV2T3usLoQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR04MB6955
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_021619_172227_D75CFAEE 
X-CRM114-Status: GOOD (  14.63  )
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

The plic_find_hart_id() can be useful to other interrupt controller
drivers (such as RISC-V local interrupt driver) so we rename this
function to riscv_of_parent_hartid() and place it in arch directory
along with riscv_of_processor_hartid().

Signed-off-by: Anup Patel <anup.patel@wdc.com>
Reviewed-by: Atish Patra <atish.patra@wdc.com>
Reviewed-by: Palmer Dabbelt <palmerdabbelt@google.com>
Acked-by: Palmer Dabbelt <palmerdabbelt@google.com>
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


