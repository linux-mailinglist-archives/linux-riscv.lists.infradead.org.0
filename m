Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7E2F12F3CB
	for <lists+linux-riscv@lfdr.de>; Fri,  3 Jan 2020 05:14:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Type:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2F/IYpY+jLyN9kGF82dJe15nO7Oczq1HkQhuLSHrgPE=; b=jbQuNIVdaIkxi9aDTXNiMjSHi
	N3s23thi4yYEc7doOLChMkYLokz/Bnlwy7OZ2kw9EOhBrOrNvTcymQB0ONW+X7jfuG56xik/mHJFO
	e+SQLdX6aWinibrflSazXvuTL5VaI1XdVy7H28qwANfKiRqf4q7ZJmNW/J38I7fLTjX0uyuVHJavO
	EGa608nqkCieRokb7QUxuKtfwg8lEnZu+SVxzhP6Np6YZNhJpo5pHXVG8torfJaypfKGQhecd4n65
	vw98t8UGumggaKBzqJ7JsgKpagD9bfR1FQXcIoPxOt6z9G8tE46H8gY/QE4YSUwB+JFnOMtsKtPmU
	qkT8FgsFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inELV-0002W5-6q; Fri, 03 Jan 2020 04:13:57 +0000
Received: from mail-dm6nam10on2084.outbound.protection.outlook.com
 ([40.107.93.84] helo=NAM10-DM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inELS-0002Uo-4X
 for linux-riscv@lists.infradead.org; Fri, 03 Jan 2020 04:13:55 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=O4rM0UJe0zWVD6D8rSkT0+ll1ntsz/aB8ArH6UELIADBMCqjzk8r/ssdcxvipWQtD8oxm3dp8cUfk0S47ZSM5EcWQlCZjLAFZ2U9/yp+IIUoops7jOguIcIeDmXj1S85GCSU4SUjuywanvP/LTzh334O/5/saLDwdW8xxTVrf5UsWClGlkNMEEH+R4ZA4DHhmB3Tf/hdID/IlJN5vKqJY9kgjOB+1BUafMVdqczbeGQ6DQPr/5xXMPs6HL88jVCZmzjq4/tzPzhblGbLT0DKyGfI2i6328ezuJUJQLlafXXdyptTJWfvqchRpWSay5y6JeVL8SnG6dgwTBy7ls4lOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2F/IYpY+jLyN9kGF82dJe15nO7Oczq1HkQhuLSHrgPE=;
 b=TDcG1bEqBWyX1NVRAFTnZfUkRKygDsMmCgBwkPrb2hioHAIFfHVhUfPbNV+cQnqKYloP0BbXpLl1MiicmfQr0yx/WE4cgGjReAQ9Jqo1WOCAZsCncLkazoA6Fxn3SFfKItJA/xwl0Spq7cMZ7WDShLB1Uducpmvaa4EWk+JKS+MagMjoEhtXRKMfMrgULIFq0DsrSNiFVZm+ALnBweUWJWgn+uEQ209pg0YRqT7JQqfz2p9o4YMiOGhEMZSGBqrsmUwXl57JbkgKb8Okb93jrHMWxI8wMxq5aL9GjLYABzuT5lCt/zAoCEe6alJNYZ/oS/vgMFxSodUdn0MPU+KkbA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=sifive.com; dmarc=pass action=none header.from=sifive.com;
 dkim=pass header.d=sifive.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2F/IYpY+jLyN9kGF82dJe15nO7Oczq1HkQhuLSHrgPE=;
 b=mVkfwB1N8xTf8GZfXTvD0spTWM4L6Glqhl3rZvLjej22ROD9ij7sLgkUGNwW7nY6np42JfzBXsXJh5cbPAeLOZOMjoQ/ErKbD8NJ1XEMNxq0eBnGpeWkoHpzQl/qb6oYi5+5TNKcGzdo6PlORqVmUKjV0QJa8F8RiLpjU6H003Q=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=yash.shah@sifive.com; 
Received: from CH2PR13MB3368.namprd13.prod.outlook.com (52.132.246.90) by
 CH2PR13MB3799.namprd13.prod.outlook.com (20.180.12.212) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2623.4; Fri, 3 Jan 2020 04:13:52 +0000
Received: from CH2PR13MB3368.namprd13.prod.outlook.com
 ([fe80::eccb:16ac:e897:85d5]) by CH2PR13MB3368.namprd13.prod.outlook.com
 ([fe80::eccb:16ac:e897:85d5%3]) with mapi id 15.20.2602.012; Fri, 3 Jan 2020
 04:13:52 +0000
From: Yash Shah <yash.shah@sifive.com>
To: robh+dt@kernel.org, mark.rutland@arm.com, paul.walmsley@sifive.com,
 palmer@dabbelt.com
Subject: [PATCH v2 1/2] riscv: dts: Add DT support for SiFive L2 cache
 controller
Date: Fri,  3 Jan 2020 09:43:20 +0530
Message-Id: <1578024801-39039-2-git-send-email-yash.shah@sifive.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1578024801-39039-1-git-send-email-yash.shah@sifive.com>
References: <1578024801-39039-1-git-send-email-yash.shah@sifive.com>
Content-Type: text/plain
X-ClientProxiedBy: BM1PR0101CA0043.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:b00:1a::29) To CH2PR13MB3368.namprd13.prod.outlook.com
 (2603:10b6:610:2c::26)
MIME-Version: 1.0
Received: from dhananjayk-PowerEdge-R620.open-silicon.com (114.143.65.226) by
 BM1PR0101CA0043.INDPRD01.PROD.OUTLOOK.COM (2603:1096:b00:1a::29) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.20.2602.12 via Frontend
 Transport; Fri, 3 Jan 2020 04:13:47 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [114.143.65.226]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 46775e9b-0b32-487c-e770-08d79003573c
X-MS-TrafficTypeDiagnostic: CH2PR13MB3799:
X-LD-Processed: 22f88e9d-ae0d-4ed9-b984-cdc9be1529f1,ExtAddr
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <CH2PR13MB3799BC4DBD5BE935FD6FFB708C230@CH2PR13MB3799.namprd13.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1468;
X-Forefront-PRVS: 0271483E06
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(6029001)(39840400004)(346002)(396003)(366004)(376002)(136003)(189003)(199004)(6666004)(36756003)(1006002)(66946007)(66476007)(66556008)(107886003)(44832011)(52116002)(7416002)(4326008)(2906002)(6506007)(86362001)(81156014)(81166006)(8936002)(6486002)(2616005)(26005)(8676002)(16526019)(186003)(478600001)(316002)(6512007)(956004)(5660300002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR13MB3799;
 H:CH2PR13MB3368.namprd13.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
Received-SPF: None (protection.outlook.com: sifive.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: V06ox30sMVxj+gDYVnYMMb2nXARttKAbiPn+VMUef0zr9dpWr9l4xOmWhSzkBN8qHnKb+CKGLgeZt7X3QLOAYAJ11lwmkxnp78YaKZ+2S+7yU3siMA7hLsHyudt6TPNIguyvsuItosJysbprM0emRQtyDG5E0E2mIU01OXtYOkL+Ho6GicAnRYnBSja2MGBb9HNNieazU2Kmsr6eepHRFI+kbIS29xiOC7RdmtlzMR+XcAMK53jMyM2RADaK0a6DFiM6WSJ4EVDieV2kLdgTYb1TfqdbWX3cP/5PAsbU63vMY51CT8ocwxkL6E99JKwYgRfMOaUtm28uOJxFMcUYTFnov3p7RRBIPE+BKjo0Hu0rTRkFWTKYeEA0VlliHZR/uXnsHlu2xnf1M6/o9BGIxLKOvzMg8nN7LVe2tj0SE5ZtJlcfTEnJXgqSczF1/w17
X-OriginatorOrg: sifive.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 46775e9b-0b32-487c-e770-08d79003573c
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Jan 2020 04:13:52.0834 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 22f88e9d-ae0d-4ed9-b984-cdc9be1529f1
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: kEuhzK12eCBm79D/2FOtbGxCdqoXgiPjCrQP+Dyo7McVBmaO+YAHBLb3rkTLzXf315ZPuUoFMH7VjqCjVPUbXw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR13MB3799
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200102_201354_182808_B201D49F 
X-CRM114-Status: UNSURE (   7.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.93.84 listed in list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, aou@eecs.berkeley.edu, sachin.ghadi@sifive.com,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org, green.wan@sifive.com,
 alexios.zavras@intel.com, Yash Shah <yash.shah@sifive.com>, bp@suse.de,
 tglx@linutronix.de, bmeng.cn@gmail.com, linux-riscv@lists.infradead.org,
 allison@lohutok.net
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Add the L2 cache controller DT node in SiFive FU540 soc-specific DT file

Signed-off-by: Yash Shah <yash.shah@sifive.com>
Reviewed-by: Palmer Dabbelt <palmerdabbelt@google.com>
---
 arch/riscv/boot/dts/sifive/fu540-c000.dtsi | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/arch/riscv/boot/dts/sifive/fu540-c000.dtsi b/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
index 70a1891..a2e3d54 100644
--- a/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
+++ b/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
@@ -54,6 +54,7 @@
 			reg = <1>;
 			riscv,isa = "rv64imafdc";
 			tlb-split;
+			next-level-cache = <&l2cache>;
 			cpu1_intc: interrupt-controller {
 				#interrupt-cells = <1>;
 				compatible = "riscv,cpu-intc";
@@ -77,6 +78,7 @@
 			reg = <2>;
 			riscv,isa = "rv64imafdc";
 			tlb-split;
+			next-level-cache = <&l2cache>;
 			cpu2_intc: interrupt-controller {
 				#interrupt-cells = <1>;
 				compatible = "riscv,cpu-intc";
@@ -100,6 +102,7 @@
 			reg = <3>;
 			riscv,isa = "rv64imafdc";
 			tlb-split;
+			next-level-cache = <&l2cache>;
 			cpu3_intc: interrupt-controller {
 				#interrupt-cells = <1>;
 				compatible = "riscv,cpu-intc";
@@ -123,6 +126,7 @@
 			reg = <4>;
 			riscv,isa = "rv64imafdc";
 			tlb-split;
+			next-level-cache = <&l2cache>;
 			cpu4_intc: interrupt-controller {
 				#interrupt-cells = <1>;
 				compatible = "riscv,cpu-intc";
@@ -253,6 +257,17 @@
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
+		};
 
 	};
 };
-- 
2.7.4


