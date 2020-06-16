Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB50A1FAFBF
	for <lists+linux-riscv@lfdr.de>; Tue, 16 Jun 2020 14:01:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Type:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=39yjDrZkhTkHT76UZw9jEAxznVI7kbUNu4G1CQIU22A=; b=mpqx0eKtfgf9xKUtMP0o+RVTL
	A8IyC0qFltNvrOPkG8+kWCtn4HezG6jmRXQYVup6XgLT98RYw7tIHS43qe21Z5DY6B44tzawHDyb0
	1aai9gjGxX3hhCsZd1CB2rwz1HtARBAJ21xaJlPIcPoHQok0MMrIi/TA3XizkQGfxUAMs9KKKbcWp
	QQddocC1A2nyOu9V8GngzcKPYLpQvRpoqtihq3aQhxObi1Kmn1pzHKVUtKhZdB8iYk2pTov43asLZ
	VlToEb5XaF4tcKyWCinmS7QG0TGAGAWJre+INdvyeuQlyq3ja5XkTZItOyrjnh9NnmppYWuPuL4ga
	AT3VNPozw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlAHf-0007gz-Ku; Tue, 16 Jun 2020 12:01:43 +0000
Received: from mail-bn7nam10on2089.outbound.protection.outlook.com
 ([40.107.92.89] helo=NAM10-BN7-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlAHb-0007g8-R0
 for linux-riscv@lists.infradead.org; Tue, 16 Jun 2020 12:01:41 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Rh+3ZpBtQGWmgMTR1wSQbfIaRgMKMG+Fkuj8sjn+/44yZUl6u3NYn3S3atvJa/lJ0qYv+0JgE853Bhi26E/tF9jaXOMT4Y3cpEDLO5wouM+T/9YIfmpZvxKlHwHC5P6lZl9voHvPIoKd5/6WebuxX/LJPuNzzTFZd1W2kNX9X2wNQMWrQ2yatdeOv0pg59dJremEJxV5GI1FJr53kxyqfT8Qe3DqKVqhu/IzMc7rBdFmL35x4ZQGQsQSjxHWpHYLZ7cOg33UXlQPjpiLUCC83X25favisWX/2B5963u8cAiK7J/0fMgjhVKuYw9A20TJ/Zv1LN2KP/5WfOiQp+ejkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=39yjDrZkhTkHT76UZw9jEAxznVI7kbUNu4G1CQIU22A=;
 b=f5Eq4nxjbG2BvJgGgsFivN1oTsYMJnT4Qmf9R2AJBvtCtnPIOYQjCrTUtqifxll3/hIQDKdg0YJXviVbCh025e8sNWJcDrGMV7WyUQtX71SG9LezxxmkQ1LAm6aHzRzknZqHuJ5lO3sMwJAwmjnvwpMznhvuNFRjwPSx+PDV9anSp9nItgJWo8ro/NarrTFl897OJxG4c7JzTvlrv7ItVKVxo+1F3YdRWgwkD/aqd7FotltnJP2JAgE/Vq63xZMHk2ffXns9Zj3CcLc9BWbR4vDRQwL4tLjXRtv5DAUzYXTqejP8dSo/Dk2zzPRU6LmWDrmiF23NO9ukP5er2/w/uQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=sifive.com; dmarc=pass action=none header.from=sifive.com;
 dkim=pass header.d=sifive.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=39yjDrZkhTkHT76UZw9jEAxznVI7kbUNu4G1CQIU22A=;
 b=gYyLHtTbNlSxcgMk2Ssp27x8cWvQtD+ZeOydRcD19e8qOUyRO1Ox9iM1Qz0lfhI/wuI4k+Uk9oQm8nj3crDBT2NKxx3aPP3cpuDiDMsHbUzNjlxp0ewOc5LGQPrgTpMg/a3nCvjd2HJkc06fMjw0SX+uz7hgNhjUe/aPjM52S7g=
Authentication-Results: sifive.com; dkim=none (message not signed)
 header.d=none;sifive.com; dmarc=none action=none header.from=sifive.com;
Received: from BN6PR1301MB2020.namprd13.prod.outlook.com
 (2603:10b6:405:34::34) by BN7PR13MB2516.namprd13.prod.outlook.com
 (2603:10b6:406:a9::17) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3109.11; Tue, 16 Jun
 2020 12:01:36 +0000
Received: from BN6PR1301MB2020.namprd13.prod.outlook.com
 ([fe80::68f2:768a:7a8b:e790]) by BN6PR1301MB2020.namprd13.prod.outlook.com
 ([fe80::68f2:768a:7a8b:e790%7]) with mapi id 15.20.3109.018; Tue, 16 Jun 2020
 12:01:36 +0000
From: Yash Shah <yash.shah@sifive.com>
To: paul.walmsley@sifive.com, palmer@dabbelt.com, robh+dt@kernel.org,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, sachin.ghadi@sifive.com
Subject: [PATCH 2/3] riscv: dts: fu540-c000: define hart clocks
Date: Tue, 16 Jun 2020 17:31:03 +0530
Message-Id: <1592308864-30205-3-git-send-email-yash.shah@sifive.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1592308864-30205-1-git-send-email-yash.shah@sifive.com>
References: <1592308864-30205-1-git-send-email-yash.shah@sifive.com>
Content-Type: text/plain
X-ClientProxiedBy: SG2PR02CA0019.apcprd02.prod.outlook.com
 (2603:1096:3:17::31) To BN6PR1301MB2020.namprd13.prod.outlook.com
 (2603:10b6:405:34::34)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from osubuntu003.open-silicon.com (159.117.144.156) by
 SG2PR02CA0019.apcprd02.prod.outlook.com (2603:1096:3:17::31) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.3088.25 via Frontend Transport; Tue, 16 Jun 2020 12:01:31 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [159.117.144.156]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 9f62e46c-ee53-4e99-d09b-08d811ed053a
X-MS-TrafficTypeDiagnostic: BN7PR13MB2516:
X-LD-Processed: 22f88e9d-ae0d-4ed9-b984-cdc9be1529f1,ExtAddr
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <BN7PR13MB251651AB776AF866DE807E998C9D0@BN7PR13MB2516.namprd13.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3513;
X-Forefront-PRVS: 04362AC73B
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: j0ADywiN568s+QPxv3hkKsZbOEhbxluz4LvnNiTC7h/LBe3S4hTFPevqVScEbUzuH66Y3F6Xp3Qvt6U8EaqYvVvDoftq9ZTvymbbgy4lXTCyjBj2SAqZo/VSHfrQIZhN7dlzSLjt/GIBUsbRHKyoGSAYG43Q9Pl280Gp7Zgou72DkfZpHVoWDpEn/Nab3h2iN5B4SzLhxcLqz5Z+e2WdkxaAbMCQcPRulKPVx7EEdfUboQ+KmUqUw/UxaGgm9wdDVt6EhooFM+LUEpxUH9fPS8yM/vRLRUxwExIHghYUh04m8mtJpUpuDmY8R/AhrZkdkvQ4/jmMCfXMbVDyP0E8Tw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR1301MB2020.namprd13.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(396003)(366004)(346002)(376002)(136003)(39850400004)(4326008)(316002)(52116002)(6486002)(8676002)(83380400001)(6666004)(6512007)(7416002)(44832011)(8936002)(86362001)(36756003)(107886003)(956004)(186003)(2906002)(2616005)(16526019)(478600001)(66556008)(6506007)(6636002)(66946007)(26005)(5660300002)(66476007);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: mlAlCgTy9G1wuAthAf1aMTX3bqefy8Vs6jsRu7sUYAHS0njZLumz6ET1VsMvkhY544wy4DYSSEKSyFsAUmxMeuPkEpcKNd0+XVThozEuV1ezRJvssy6TG6glqwCFjxhgmobx66kIYMR4zkEP++akaAquCfa4jBy/98dcTMBvvEBlYINcVBbGgQLPlsJSJLqFCNNw9McqLHxjfcEOpBAVeEsHn9cXryBTtqiWHWRw0p8gN7sSJuLNDeYnZ6dWAlN3mHfRFr5bynT9AkW6+wBDe9VTY/FhJGLtHnBYeASKw9AWitO1f/gdpPpIia8iVfH/ncxvafKoV4luMcCDZ5c9vzHnTtGbe0d+M0ABylJ5SuYva/PVIgQYzqmtdkAnKGW7OjZuNRFxetLOWKCWmcQI1eGxBp4wxTj/v76gUp2p3ltZhOBsceriNfZgMPiIeyHSPUnrkDORLeNEdMI+42nu8cjlapAxPNnMqLuux4IdvWg=
X-OriginatorOrg: sifive.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9f62e46c-ee53-4e99-d09b-08d811ed053a
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Jun 2020 12:01:36.7915 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 22f88e9d-ae0d-4ed9-b984-cdc9be1529f1
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: kZL+SmYzcyGvHrSfNa7EMR+7+g/DnVXor20N8NEpCfTa6ZG/OxREnLDoHRv0k4R59Qs86W2yZ4XeQNxExqFQig==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN7PR13MB2516
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_050139_873073_FD77A4BE 
X-CRM114-Status: UNSURE (   6.20  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.92.89 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.92.89 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: aou@eecs.berkeley.edu, anup@brainfault.org, lollivier@baylibre.com,
 green.wan@sifive.com, atish.patra@wdc.com, Yash Shah <yash.shah@sifive.com>,
 alistair.francis@wdc.com, deepa.kernel@gmail.com, bmeng.cn@gmail.com
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Declare that each hart defined in the FU540 DT data is clocked by the
COREPLL. This is in preparation for enabling CPUFreq for the
FU540-C000 SoC on the HiFive Unleashed board.

Signed-off-by: Yash Shah <yash.shah@sifive.com>
---
 arch/riscv/boot/dts/sifive/fu540-c000.dtsi | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/riscv/boot/dts/sifive/fu540-c000.dtsi b/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
index 7db8610..735e102 100644
--- a/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
+++ b/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
@@ -30,6 +30,7 @@
 			i-cache-size = <16384>;
 			reg = <0>;
 			riscv,isa = "rv64imac";
+			clocks = <&prci PRCI_CLK_COREPLL>;
 			status = "disabled";
 			cpu0_intc: interrupt-controller {
 				#interrupt-cells = <1>;
@@ -55,6 +56,7 @@
 			riscv,isa = "rv64imafdc";
 			tlb-split;
 			next-level-cache = <&l2cache>;
+			clocks = <&prci PRCI_CLK_COREPLL>;
 			cpu1_intc: interrupt-controller {
 				#interrupt-cells = <1>;
 				compatible = "riscv,cpu-intc";
@@ -79,6 +81,7 @@
 			riscv,isa = "rv64imafdc";
 			tlb-split;
 			next-level-cache = <&l2cache>;
+			clocks = <&prci PRCI_CLK_COREPLL>;
 			cpu2_intc: interrupt-controller {
 				#interrupt-cells = <1>;
 				compatible = "riscv,cpu-intc";
@@ -103,6 +106,7 @@
 			riscv,isa = "rv64imafdc";
 			tlb-split;
 			next-level-cache = <&l2cache>;
+			clocks = <&prci PRCI_CLK_COREPLL>;
 			cpu3_intc: interrupt-controller {
 				#interrupt-cells = <1>;
 				compatible = "riscv,cpu-intc";
@@ -127,6 +131,7 @@
 			riscv,isa = "rv64imafdc";
 			tlb-split;
 			next-level-cache = <&l2cache>;
+			clocks = <&prci PRCI_CLK_COREPLL>;
 			cpu4_intc: interrupt-controller {
 				#interrupt-cells = <1>;
 				compatible = "riscv,cpu-intc";
-- 
2.7.4


