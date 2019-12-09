Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FB7A116C41
	for <lists+linux-riscv@lfdr.de>; Mon,  9 Dec 2019 12:25:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Type:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=bLf0qE5tsi2mYbXD865Jxf/griTtXqEvEXnevFH8B1s=; b=ooxnduEkq8pg5wIoazNZigp8q
	YD2nVuXGO5HYNz1WmBH+ZX8XgqqjmSccAkhMthiYNEA/JIgF51bKrUi9tIKSHeza1bWMMn9mcPIIR
	nnGw1m0DVDnQd991v2OsvQSp52f6YlNFYJbiDusUrDb4BPChKHLfhnt2+BOxb8DS9LXPD09f8FDnj
	eFBHla2XTqc7oxr+1vFI3zktxoSphEHMnskMFdfzQ31XBaLz0oo9oLBQb/fEkMNNIWN0qCVWEXWRW
	04ByGqIUEHTRDXfQtwM9g6qBrsXpL+vI6rKfy68MNiz0SyJiKzQHtWOWt6wWXrTTF1shAzPeICdiT
	qN0xb2mHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieHAi-00016C-12; Mon, 09 Dec 2019 11:25:48 +0000
Received: from mail-bn7nam10on20627.outbound.protection.outlook.com
 ([2a01:111:f400:7e8a::627]
 helo=NAM10-BN7-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieHAd-000148-TN
 for linux-riscv@lists.infradead.org; Mon, 09 Dec 2019 11:25:45 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FQQF59pTXslEF0zFWP1EmXTJy2f67wx+EiuGQhyBa237NSD8OIsL0ssuuKaiGCQITZefvgJH0ONCjmQu4+tpr1Um4izrqPO818HYAd/TS3muI//cH2apenrbYs+bwzt+rv0fl9H9zAWSXXm1Op/TkYKNGXAoYYnvgHUeo+qi+5G3MNVYMu3SVrtXRCt9UJqRyMEM8OiAS4gonMJtpYNK8oYlylI09W9BmlAFyIqc+Lo9c5YovHVhpIecKu8PNNePYKUe3HUKruttC55sHiG4nxyYfmlgkW2gJrB4GO3KDYAJ2ubUIUx0IVe7tTHaUSZLBPn2zGw4A9vivBstaA2fog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bLf0qE5tsi2mYbXD865Jxf/griTtXqEvEXnevFH8B1s=;
 b=MCG8XEA5vidS9MnNEYQaLuvZJk/P2Tmjuo+ZmpUVC1/VOuPGvVMLJi2VfG9Cly+G8quHun8/8ed9AiSjpraT579VtjTjH6DcjgxB934ldra0/sOgVAxA+YI05LFFZI80mfIw4bb7C6c/L9QkCnZiNvB05N+cWo0XhWJMiyMPj2HJeWGIvw0Et6UvfzOKnACKxFo+GkguZVQT9ASQ5AbyxnoToacFgD1V5BjcYQT8QmWEqe5SMzfnUMpJRlnKGaoODcQrAb49bqfJZQKhNYSZCNbIXOs6ksyeOxxG3gE2tI9POPoHDQADrCzVws+CO1JUsWL75eh2r6K2K9oMftvhcA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=sifive.com; dmarc=pass action=none header.from=sifive.com;
 dkim=pass header.d=sifive.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bLf0qE5tsi2mYbXD865Jxf/griTtXqEvEXnevFH8B1s=;
 b=EBNptiJxKsSs9lXlCRePw0RHaixD10m1Pij52xjTgDNnceyoWWYUtrClYnKjWo6nm1xp+KWYbi0UFOsip6iXApX7fayrMFC61BSd4gA0w754TiOgrhDvbBYq57/v/DE7lHQo3/tuvIYuvPUh0HNiBNb/Vxpi4hkZ/sD+yCBl6lw=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=yash.shah@sifive.com; 
Received: from CH2PR13MB3368.namprd13.prod.outlook.com (52.132.246.90) by
 CH2PR13MB3894.namprd13.prod.outlook.com (20.180.12.140) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2538.4; Mon, 9 Dec 2019 11:25:41 +0000
Received: from CH2PR13MB3368.namprd13.prod.outlook.com
 ([fe80::eccb:16ac:e897:85d5]) by CH2PR13MB3368.namprd13.prod.outlook.com
 ([fe80::eccb:16ac:e897:85d5%3]) with mapi id 15.20.2538.012; Mon, 9 Dec 2019
 11:25:41 +0000
From: Yash Shah <yash.shah@sifive.com>
To: robh+dt@kernel.org,
	mark.rutland@arm.com,
	paul.walmsley@sifive.com
Subject: [PATCH 1/2] riscv: dts: Add DT support for SiFive L2 cache controller
Date: Mon,  9 Dec 2019 16:55:05 +0530
Message-Id: <1575890706-36162-2-git-send-email-yash.shah@sifive.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1575890706-36162-1-git-send-email-yash.shah@sifive.com>
References: <1575890706-36162-1-git-send-email-yash.shah@sifive.com>
Content-Type: text/plain
X-ClientProxiedBy: BM1PR01CA0100.INDPRD01.PROD.OUTLOOK.COM (2603:1096:b00::16)
 To CH2PR13MB3368.namprd13.prod.outlook.com
 (2603:10b6:610:2c::26)
MIME-Version: 1.0
Received: from dhananjayk-PowerEdge-R620.open-silicon.com (114.143.65.226) by
 BM1PR01CA0100.INDPRD01.PROD.OUTLOOK.COM (2603:1096:b00::16) with Microsoft
 SMTP Server (version=TLS1_2, cipher=) via Frontend Transport;
 Mon, 9 Dec 2019 11:25:37 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [114.143.65.226]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: e31495ca-530c-41bc-c090-08d77c9a85da
X-MS-TrafficTypeDiagnostic: CH2PR13MB3894:
X-LD-Processed: 22f88e9d-ae0d-4ed9-b984-cdc9be1529f1,ExtAddr
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <CH2PR13MB3894721F409D64692DA35B268C580@CH2PR13MB3894.namprd13.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1468;
X-Forefront-PRVS: 02462830BE
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(6029001)(39840400004)(366004)(346002)(376002)(396003)(136003)(189003)(199004)(6636002)(81166006)(6506007)(81156014)(6666004)(1006002)(6486002)(7416002)(44832011)(305945005)(316002)(478600001)(2906002)(26005)(2616005)(956004)(16526019)(186003)(52116002)(8676002)(4326008)(8936002)(86362001)(66946007)(107886003)(6512007)(5660300002)(36756003)(66556008)(66476007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR13MB3894;
 H:CH2PR13MB3368.namprd13.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
Received-SPF: None (protection.outlook.com: sifive.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: K0U8yJv63UabKSgpeRxZ0HR+CmAWevUuTF03cmCad3MCZr5Runftzquzdmv9/3ttXF9y4unes5x9g0pvFlSgssVwCdTRcS2U7lphZqQAd7YWFGx5jAKLKdeekB0h0FlKbJWVKGSNsPxCzRqNFbcueVB8cn/dA+YvmBHMtVVU2Vea/4HddDBC1GRPlBjWmxtpFHtaQYWWKqXdknv2ZbExpbEipCJpis7W3Q2gNvZCFk6+NQBN9mmLL80ckyyIE7yT3NDvNKBNXhid2jXD4uFBWjIwA7LKTe9mlwT7XXqCah38cFwqhx0aJFmuk6T3J2We2LhXJVtb0KYU8J/ik0AXnsC/ZhYo4ib7K4DN4B7tqKxVI9lw1sh9mqdvb22S2tVjbhhFHGFX1HjY/WDrTQxqbgZ/nEICT/S21hC68IYarZZhoTDMz4hUccIJgpRQvDAN
X-OriginatorOrg: sifive.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e31495ca-530c-41bc-c090-08d77c9a85da
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Dec 2019 11:25:40.9907 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 22f88e9d-ae0d-4ed9-b984-cdc9be1529f1
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: c6d/NrZ+4rTJ8PdFD2jsKgA5oWJqRAS6d/WcAj8iO90dD5r3z7dY7xfju3NVsD/CAVW8qRLGrei8LVJRfv3WQQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR13MB3894
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_032543_951049_C804AFC2 
X-CRM114-Status: UNSURE (   7.16  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, aou@eecs.berkeley.edu, atish.patra@wdc.com,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 alexios.zavras@intel.com, Yash Shah <yash.shah@sifive.com>, palmer@dabbelt.com,
 tglx@linutronix.de, bmeng.cn@gmail.com, linux-riscv@lists.infradead.org,
 allison@lohutok.net
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Add the L2 cache controller DT node in SiFive FU540 soc-specific DT file

Signed-off-by: Yash Shah <yash.shah@sifive.com>
---
 arch/riscv/boot/dts/sifive/fu540-c000.dtsi | 26 ++++++++++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/arch/riscv/boot/dts/sifive/fu540-c000.dtsi b/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
index afa43c7..812db02 100644
--- a/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
+++ b/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
@@ -19,6 +19,16 @@
 	chosen {
 	};
 
+	reserved-memory {
+		#address-cells = <2>;
+		#size-cells = <2>;
+		ranges;
+
+		l2_lim: lim@0x8000000 {
+			reg = <0x0 0x8000000 0x0 0x2000000>;
+		};
+	};
+
 	cpus {
 		#address-cells = <1>;
 		#size-cells = <0>;
@@ -54,6 +64,7 @@
 			reg = <1>;
 			riscv,isa = "rv64imafdc";
 			tlb-split;
+			next-level-cache = <&l2cache>;
 			cpu1_intc: interrupt-controller {
 				#interrupt-cells = <1>;
 				compatible = "riscv,cpu-intc";
@@ -77,6 +88,7 @@
 			reg = <2>;
 			riscv,isa = "rv64imafdc";
 			tlb-split;
+			next-level-cache = <&l2cache>;
 			cpu2_intc: interrupt-controller {
 				#interrupt-cells = <1>;
 				compatible = "riscv,cpu-intc";
@@ -100,6 +112,7 @@
 			reg = <3>;
 			riscv,isa = "rv64imafdc";
 			tlb-split;
+			next-level-cache = <&l2cache>;
 			cpu3_intc: interrupt-controller {
 				#interrupt-cells = <1>;
 				compatible = "riscv,cpu-intc";
@@ -123,6 +136,7 @@
 			reg = <4>;
 			riscv,isa = "rv64imafdc";
 			tlb-split;
+			next-level-cache = <&l2cache>;
 			cpu4_intc: interrupt-controller {
 				#interrupt-cells = <1>;
 				compatible = "riscv,cpu-intc";
@@ -246,6 +260,18 @@
 			#pwm-cells = <3>;
 			status = "disabled";
 		};
+		l2cache: cache-controller@2010000 {
+			compatible = "sifive,fu540-c000-ccache", "cache";
+			cache-block-size = <64>;
+			cache-level = <2>;
+			cache-sets = <1024>;
+			cache-size = <2097152>;
+			cache-unified;
+			interrupt-parent = <&plic0>;
+			interrupts = <1 2 3>;
+			reg = <0x0 0x2010000 0x0 0x1000>;
+			memory-region = <&l2_lim>;
+		};
 
 	};
 };
-- 
2.7.4


