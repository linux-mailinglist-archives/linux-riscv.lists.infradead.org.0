Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFC421185EA
	for <lists+linux-riscv@lfdr.de>; Tue, 10 Dec 2019 12:12:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Type:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=yyZnI0HbL8bdpVO5C50UB7u9//b3VEqrqOf+EFqI6YY=; b=V5mdp2mluxcwR2ltBEAXjg7MV
	azg1Bz38GFkndocmO4NLetkDkHuiJMWClMNQs3YCnV+j9T7gohZvRkg6izQEdK3Y7HYHTDy9IOOdu
	DXF1tr8VN4t2cdvllYAERsDmRb5f0O3QlUQBPEIcG4HyWFbSQ0NzYMZVtJRX/vOjxLeg8qMzmUz1p
	zvIZKQcqWo7HTalOl2UwjU/AnWxNMRZH7GdVqhkdqwy61gsLmraadmptr9XsAqb7XoKzzSWj/kMnB
	9LXpc8Ar0K0kfRQ2iLLuJ6MFMEs/hteSPpxB1bcgJbs3WMy5sZZgHp6lcOtVgWZP9yulhDSD2DDNb
	hfFL/sjlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iedRH-00005H-H1; Tue, 10 Dec 2019 11:12:23 +0000
Received: from mail-dm6nam10on2044.outbound.protection.outlook.com
 ([40.107.93.44] helo=NAM10-DM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iedRD-0008V0-5Z
 for linux-riscv@lists.infradead.org; Tue, 10 Dec 2019 11:12:20 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oX5oWBRQpnR5i8e+FN0c7eJ/S7qOgbzBJL7Pt18Db3oxIFVj8L7T8E4ceMADZ5/OGYHAYdkZt+Fpxx9ci6C8nBXUeSFfzHDIY3j00CTFc6cu+u3oMvs1K9oas7gRSkT9x3ThbG3rq/vbE/cKFklbdvKdGnWdSpOhuKvYBmZRmoeiuuNd/7Ypou7PpH9SpqwLT8DadJ7eiJSzQWhJYlxhy6Guu+/cMOIuct4PW/roqFYpbk1ZgCiGY375PfUxJ0LaUdpxAXhRrYPY9SaTsWZ7VK+Q6tKJvX8yrGGkkl8rCi1vtEIXKcEIhglgdpBHPg/NMzzDWyk2lqFIO6EK1GINTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yyZnI0HbL8bdpVO5C50UB7u9//b3VEqrqOf+EFqI6YY=;
 b=Onctk9s6dx2GR+iAHSA6bPxZaLy/XHNUaVakITGRV+XP3ujBtM0KSzwxtYj5G1n40Jh3/1b/Fwgp8czT0w0jtfdXC6tD9I/0ouuhMnoELip/3xnIoxrfvT1hHe8saawdk1P4Fp3qusR/QwMcCxSd/Iuyi/4PjmmeoHhhw4vVPnmKncP0KmYvif7Twf3k+FeAVXdwjfEXeGtiNyuKEf5XqS+38GQ7rWp18ziRatEU8rRTc1TfpEccBQv8qIx0PuRyy45Ld6EjXkWLwm1xMv189J3wZPJCM8H53lxe2vknXczFVy5+xFtsx5SvKAJj+g85BuSapkNaC2gpgbkJ0XJwMg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=sifive.com; dmarc=pass action=none header.from=sifive.com;
 dkim=pass header.d=sifive.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yyZnI0HbL8bdpVO5C50UB7u9//b3VEqrqOf+EFqI6YY=;
 b=Ld5xGV6G2Yu+FzKGnYQIfMoQ7IMfkpxug0v7mULXYmzxwM0DVN55fhYYX4gyoaqmHppErdGsAFYC6m4vfa9X1lNxhSjRj6iA5OmFKi239+yxKQNJoba13GNmQyLW9pLAI+vb8V71bTU7Yc0/Cb5Oc6ve7+kLbfaPLdu2gyyA2D4=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=yash.shah@sifive.com; 
Received: from CH2PR13MB3368.namprd13.prod.outlook.com (52.132.246.90) by
 CH2PR13MB3656.namprd13.prod.outlook.com (20.180.4.204) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2538.14; Tue, 10 Dec 2019 11:12:17 +0000
Received: from CH2PR13MB3368.namprd13.prod.outlook.com
 ([fe80::eccb:16ac:e897:85d5]) by CH2PR13MB3368.namprd13.prod.outlook.com
 ([fe80::eccb:16ac:e897:85d5%3]) with mapi id 15.20.2538.012; Tue, 10 Dec 2019
 11:12:17 +0000
From: Yash Shah <yash.shah@sifive.com>
To: linus.walleij@linaro.org, bgolaszewski@baylibre.com, robh+dt@kernel.org,
 mark.rutland@arm.com, palmer@dabbelt.com, paul.walmsley@sifive.com
Subject: [PATCH v4 6/6] riscv: dts: Add DT support for SiFive FU540 GPIO driver
Date: Tue, 10 Dec 2019 16:41:14 +0530
Message-Id: <1575976274-13487-7-git-send-email-yash.shah@sifive.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1575976274-13487-1-git-send-email-yash.shah@sifive.com>
References: <1575976274-13487-1-git-send-email-yash.shah@sifive.com>
Content-Type: text/plain
X-ClientProxiedBy: PN1PR0101CA0028.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c00:c::14) To CH2PR13MB3368.namprd13.prod.outlook.com
 (2603:10b6:610:2c::26)
MIME-Version: 1.0
Received: from dhananjayk-PowerEdge-R620.open-silicon.com (114.143.65.226) by
 PN1PR0101CA0028.INDPRD01.PROD.OUTLOOK.COM (2603:1096:c00:c::14) with
 Microsoft SMTP Server (version=TLS1_2, cipher=) via Frontend Transport;
 Tue, 10 Dec 2019 11:12:11 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [114.143.65.226]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 22aa622c-3155-4a56-0a67-08d77d61d0f5
X-MS-TrafficTypeDiagnostic: CH2PR13MB3656:
X-LD-Processed: 22f88e9d-ae0d-4ed9-b984-cdc9be1529f1,ExtAddr
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <CH2PR13MB3656E79A536FBFC54B076CB38C5B0@CH2PR13MB3656.namprd13.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3513;
X-Forefront-PRVS: 02475B2A01
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(6029001)(396003)(39850400004)(366004)(136003)(346002)(376002)(199004)(189003)(36756003)(66476007)(1006002)(107886003)(52116002)(66946007)(6506007)(26005)(956004)(316002)(2616005)(81166006)(8936002)(81156014)(16526019)(186003)(8676002)(44832011)(6636002)(5660300002)(86362001)(6486002)(7416002)(66556008)(6512007)(4326008)(478600001)(2906002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR13MB3656;
 H:CH2PR13MB3368.namprd13.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
Received-SPF: None (protection.outlook.com: sifive.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Ms664EI6kxaJhYNcol2aZYmG/RvlGMIKO2go+e9ZVThW/C9bcG1BOP/FjGNErz3Re2ArGnmB0gEeq6f/wXFbUOK53uAZ6+HdrXZlAeKjNwQo6K+fTlo8kf3FRwMzNwe8xPe3y3nlGHftUXpyuCA0q8G/hbT7hpZJ15F24Wn2nGTfzGADhWEk/mH9lMGHDJe72+IGVVdbQYei257u3H49uWL17pkq5enG3X+QSLzqA7d7Effzxpi9slbvG/UdxD42/cZ4ukYr6ONzPfK6J4VCgYQpihAb2/HeW12EuKV7vpS9dSwggqDGW2J2fxArD0E4niZJKBTZj8DjBS4H+vbEyHeJ3lDPm4V+5xwSw/uHfX+Bo0wuN64UkI9FBPMd/B1zLye+y7ViEgwnztbFheWz6BZJXP4z5W0UA8HEhYPgGgYsYFvtElLCh5cu5szD+h9Z
X-OriginatorOrg: sifive.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 22aa622c-3155-4a56-0a67-08d77d61d0f5
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Dec 2019 11:12:16.9712 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 22f88e9d-ae0d-4ed9-b984-cdc9be1529f1
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: iT4tjzfzPl2q5H7otacZfUtcbShKHvIMyBNpASgzCsacsBL2iU+b9zWMP61bIcKnsomapYdIcpOzHwPYwdiSsw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR13MB3656
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_031219_219308_D60573BD 
X-CRM114-Status: UNSURE (   8.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.93.44 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, aou@eecs.berkeley.edu, jason@lakedaemon.net,
 linux-gpio@vger.kernel.org, maz@kernel.org, linux-kernel@vger.kernel.org,
 atish.patra@wdc.com, Yash Shah <yash.shah@sifive.com>, sagar.kadam@sifive.com,
 tglx@linutronix.de, bmeng.cn@gmail.com, linux-riscv@lists.infradead.org,
 sachin.ghadi@sifive.com
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Add the gpio DT node in SiFive FU540 soc-specific DT file.
Enable the gpio node in HiFive Unleashed board-specific DT file.

Signed-off-by: Yash Shah <yash.shah@sifive.com>
---
 arch/riscv/boot/dts/sifive/fu540-c000.dtsi          | 15 ++++++++++++++-
 arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts |  4 ++++
 2 files changed, 18 insertions(+), 1 deletion(-)

diff --git a/arch/riscv/boot/dts/sifive/fu540-c000.dtsi b/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
index afa43c7..96dca93 100644
--- a/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
+++ b/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
@@ -246,6 +246,19 @@
 			#pwm-cells = <3>;
 			status = "disabled";
 		};
-
+		gpio: gpio@10060000 {
+			compatible = "sifive,fu540-c000-gpio", "sifive,gpio0";
+			interrupt-parent = <&plic0>;
+			interrupts = <7>, <8>, <9>, <10>, <11>, <12>, <13>,
+				     <14>, <15>, <16>, <17>, <18>, <19>, <20>,
+				     <21>, <22>;
+			reg = <0x0 0x10060000 0x0 0x1000>;
+			gpio-controller;
+			#gpio-cells = <2>;
+			interrupt-controller;
+			#interrupt-cells = <2>;
+			clocks = <&prci PRCI_CLK_TLCLK>;
+			status = "disabled";
+		};
 	};
 };
diff --git a/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts b/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
index 88cfcb9..609198c 100644
--- a/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
+++ b/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
@@ -94,3 +94,7 @@
 &pwm1 {
 	status = "okay";
 };
+
+&gpio {
+	status = "okay";
+};
-- 
2.7.4


