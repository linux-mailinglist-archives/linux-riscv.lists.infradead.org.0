Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4638C17DE1E
	for <lists+linux-riscv@lfdr.de>; Mon,  9 Mar 2020 12:03:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Type:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=PWe5DOvMLLqWx3jm1MtGM9XgKh4eYanzT7XEvsSvKXg=; b=R3gPo9RX8z302MstMEHEfnReZ
	aD21UOioD/fuWmR7/nqIMePUCQb/HcpxtIkNTIn6VHhPoj+qIeMAWp2HNwflrk4G7tTyvaY/hvGt2
	JILtzi7QAwj6mTF+cwn1QjW0TH10zugpWTpyLhyqkIqiE22rhEwb6ByUPlGz9iquSX6nnjMzrSS1P
	bsV4tngZ1KXC9P7ljl5kjS72lhY0LK2Fd8dbPqYpP949bHPAlh7DTR9003EIOZYGf9XXKS7sTkNAD
	Fxcpima1RUZvmhAiQF47O9WVGelXo5Pe6OxYtcOnGRhxm25mO9G+PlgmXb+ArtdsvA5bSyx+QMG40
	YJe2zgrMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBGBd-0002Ut-OK; Mon, 09 Mar 2020 11:03:05 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBGBZ-0002Ss-JP
 for linux-riscv@lists.infradead.org; Mon, 09 Mar 2020 11:03:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1583751782; x=1615287782;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version;
 bh=m90diWYpG1RiMnbEbPGGnW13QfsLoxTfZlSy96bK9xw=;
 b=cB6S6Gy7P3FowCJJ+HLijcAi2EGh+SYKZL1WjKk32NGcD56qGOF0qntW
 1aY3dv2SrgvRAJNesQWtWTOGZT/yQ8JDNyU5RwzmZv5MJcHZERbjAj6bG
 OCQHu6SzA4Sc1qns36+2nEyD66wZf+yQpDx81nC0Tlj23ueC5Iv/6+dHA
 diumA51Ro7yOgkanNFn7d+o28YCanhyIaiwYmAzCq+Yb5ElyuZd74UyUp
 OdpzDNKY5VCq8QjdmChsYZ0l9Juds3jFh/7tX9bBWMqujSczmFnsxj/Eq
 vdTuozlj6SQNQjJguwufBYMG6TLjwVgA14VLph8wTIBZZFN6dJePMhjFv g==;
IronPort-SDR: ojHxcLWK6peoyiKvafcl0Qi4hPV7F1jnP8UVJBaYXeLPHftiv0ma9Zh3Fh/mp0f1ctjAdD5IcP
 Qz9t1rglY7tijO/wp2m9z1sfSjAC6jfJBEHD4krL5zZ8LYnrJwMtQoPyx9x0xB8Qed22hLplDD
 d+FwdUHU5dYV5LPE1wpgrezyMq+zc194b+9OaBs9s2uAtPvQ81AhqDZw39ogRJzms3DV3aIdn4
 O9Rwkt9FXOTDS5VnzDWrxgTdq8lvzzp47u9WqK1KjvgNZnolBPiMz28mO3/blmXS/M79Oc1w3c
 HmE=
X-IronPort-AV: E=Sophos;i="5.70,533,1574092800"; d="scan'208";a="133435702"
Received: from mail-co1nam11lp2177.outbound.protection.outlook.com (HELO
 NAM11-CO1-obe.outbound.protection.outlook.com) ([104.47.56.177])
 by ob1.hgst.iphmx.com with ESMTP; 09 Mar 2020 19:02:58 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=akqULZbPK7+Uv82BChGnY596+TsGo0Yki2DZUPe1rYLu2UlLmCRPiYPO2FHAnQ5qM4YIwMtVUSLrzE41eB50bX+PAZUF2T3zrPMOXgyuLGsh/R/AFolDSDc1rIzfHbBtwPjZh2nJpCLxdtGAeKyvHsVuIYC0hzXhwzCEdr18+0ccqaY6A51lCRSVZtfZ4VWR4s64ZAcLZNufV8GQmCIwhwa5E2Y+qMBcgKUmgGlw04KrJNo9utQ5ifc6zzFUQk9qdf6nnYCQ1KuQkqCz4aM7F19DhtAOY+O9P0slEeeQ/Bnju4X4Y43IOtZ5p2jP3YtEgIfveXuh6SDwCwvP7CDzFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PWe5DOvMLLqWx3jm1MtGM9XgKh4eYanzT7XEvsSvKXg=;
 b=lFb82/Rm9BEADry/jjp//7UceHmyqunmnkDpTa/bXtthYC0wYc0bpnLX+fNDkCF05AdtX9L21L0lZ7nfg30LywPYkbQTV9+mPieW7GujBQ4CcM8RuwP25eV9jJhZPQzjKhlNzD7PauE9Ph4WwiSnqQdxF+C11sDNdDHS+ueTYUWq7wxsEnpB2ZwtQ9+p75rHpifhIneFClipBmDRFxGZGldP9gIqUXQhHc5i1AQyDAxY0nWjF73hdO4WuUBfCvcNmTfSyniTcc5U4GhKfa3avtJ0q7Oa/YTxoLJtNxAiGbhe5IwlgQhEDvYGu5fQYi9tu0l7x7gYemczY1RtgwquFA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PWe5DOvMLLqWx3jm1MtGM9XgKh4eYanzT7XEvsSvKXg=;
 b=efbishmyru5GcfI+ggXq/gcUs5rQ+Sw+K2SRLBtT69/1bFxPV1QVp+fXPBRfVyO0Fregzgfy/UCBcSuxEYVoar3xZrA1Vg0UanxLZoUCRFEQA1wQ3ZGubB1kVCpIYBuQkLK4j7g/WOu8LNI6ZYOpWy2iUJA8WYHufm04gR3kWTg=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Anup.Patel@wdc.com; 
Received: from MN2PR04MB6061.namprd04.prod.outlook.com (2603:10b6:208:d8::15)
 by MN2PR04MB6685.namprd04.prod.outlook.com (2603:10b6:208:1ec::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2793.15; Mon, 9 Mar
 2020 11:02:56 +0000
Received: from MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::159d:10c9:f6df:64c8]) by MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::159d:10c9:f6df:64c8%6]) with mapi id 15.20.2793.013; Mon, 9 Mar 2020
 11:02:56 +0000
From: Anup Patel <anup.patel@wdc.com>
To: Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Albert Ou <aou@eecs.berkeley.edu>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Thomas Gleixner <tglx@linutronix.de>, Jason Cooper <jason@lakedaemon.net>,
 Marc Zyngier <marc.zyngier@arm.com>
Subject: [PATCH v4 2/5] RISC-V: Rename and move plic_find_hart_id() to arch
 directory
Date: Mon,  9 Mar 2020 16:32:08 +0530
Message-Id: <20200309110211.91130-3-anup.patel@wdc.com>
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
 15.20.2793.11 via Frontend Transport; Mon, 9 Mar 2020 11:02:52 +0000
X-Mailer: git-send-email 2.17.1
X-Originating-IP: [106.51.22.61]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: b4c9807e-b797-4586-78ed-08d7c4196c1a
X-MS-TrafficTypeDiagnostic: MN2PR04MB6685:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <MN2PR04MB668562A59B4B30F675F164EB8DFE0@MN2PR04MB6685.namprd04.prod.outlook.com>
WDCIPOUTBOUND: EOP-TRUE
X-MS-Oob-TLC-OOBClassifiers: OLM:7691;
X-Forefront-PRVS: 0337AFFE9A
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10019020)(4636009)(136003)(346002)(366004)(39860400002)(376002)(396003)(199004)(189003)(16526019)(5660300002)(186003)(1076003)(36756003)(2906002)(478600001)(26005)(8886007)(4326008)(55236004)(7696005)(52116002)(8936002)(316002)(81156014)(8676002)(44832011)(81166006)(55016002)(956004)(1006002)(110136005)(86362001)(54906003)(66556008)(66476007)(2616005)(66946007)(6666004)(7416002)(32040200004);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB6685;
 H:MN2PR04MB6061.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: kVyRJ0QBScYcWwPxZWb2u7C0/hQ0wFXIeUcSqWCHH2cwFUZt8uQpyn7zsfL70rVFyQTmc+7DMLskNksHEzMxLm21Z/S3QD2cfxKi4JFH5wN1+dsBK6QzQ/+j50BwAG3WwfyxWh6exlsxMvkS0ZiiAts9VbVvKJvJlkhgJmImzMHpLM4EdP5r0W4Duixg7ZAnTKVZ6MNo6XtqT/wfhNvwok75cw5ALVQC6EA+OYI7Fk7IsFTxmk/c36QAauJXnLf92mOQzm7rIZFOLA5pTYMdUf9txaHgeAowlcJAA5NLcyCvabzx5RW8nLeS1VPJqiw9WfXjmFGKmfoiKRAoKZKs9V3PsUF4wOPttdC/GE5ZQfuc5CnsB4HmbGxSV9Ws5L3zqD8BorUQlb4BnxLTf7HpcxeCGtmxU4CbOyxGh5+TP86y4zEgmhjkQVXpvwT73o0VxljtGxeU9GNzQBAAJxcU33DlkSZrfzSPvLYVrENyIrzpjeezUk44weosgJoZaVw0
X-MS-Exchange-AntiSpam-MessageData: Oz3j9dtNGucZ/Cy1HWYNQVD6M9rIPSoJ6PZVvhI/Su3voBbf8fkAjjb1zL9+k8EpCs0xg/EsGU3a/TZ5oGr0Bp35OKccG4xomuiYM2HYZs33k9s2EAfxCOLIB8IXcz4IsQq1ikq9Cq24YdP4mt5yYQ==
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b4c9807e-b797-4586-78ed-08d7c4196c1a
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Mar 2020 11:02:56.5603 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: yMqp+SoFU3Jp/6LrpvAjylBDcoT0MH1DCliAP+fS5341mbSPRrT0YGWdHK68ltusEDi82wa2kf5Z0Q6/4UaNJQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB6685
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_040301_681069_057B0FC7 
X-CRM114-Status: GOOD (  15.67  )
X-Spam-Score: -1.0 (-)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [106.51.22.61 listed in dnsbl.sorbs.net]
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.45 listed in list.dnswl.org]
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
index c34fb3ae0ff8..be05d13e30e8 100644
--- a/drivers/irqchip/irq-sifive-plic.c
+++ b/drivers/irqchip/irq-sifive-plic.c
@@ -236,20 +236,6 @@ static void plic_handle_irq(struct pt_regs *regs)
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
@@ -328,7 +314,7 @@ static int __init plic_init(struct device_node *node,
 		if (parent.args[0] != RV_IRQ_EXT)
 			continue;
 
-		hartid = plic_find_hart_id(parent.np);
+		hartid = riscv_of_parent_hartid(parent.np);
 		if (hartid < 0) {
 			pr_warn("failed to parse hart ID for context %d.\n", i);
 			continue;
-- 
2.17.1


