Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A59B163BA7
	for <lists+linux-riscv@lfdr.de>; Wed, 19 Feb 2020 04:49:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Type:Message-Id:Date:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=8ahr4tQbi/LZROCj5Y+IuRVr/GQUX/dF5s4CeWPm/90=; b=iK5
	PfizKP9AFqShSJm03JGa2Gi0p7RF3j2UiiWE0eXGzSfdm56Qw7tJgAlmxmBr7btntm5Soka1bB9zJ
	y4Eqk1w905WjX3qVJyyqN/gmKLRDgkCuAv8D/H7tSo+35jq6gmrGIRg1jL2/IigVSBqh3YNFcPiXr
	BHYKrwcCqQroAARgqUoPrq5LGiFpr0feVaAa8Qv0AYxNrtnSXsaxw3BM3ky8xQLKsWXyE4uwkpSWr
	lPpXqe1Pt5Tx39zLcFnxPk2tOD5oM/qRaNz+nCEDFRNRlhJOnh/Jl4OUnvD0AW5FzSKoUhtScKYvF
	kGd7ffpA7Y2gw1McinmArHvNA0ZMd5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4GMf-00029U-Id; Wed, 19 Feb 2020 03:49:33 +0000
Received: from mail-dm6nam11on2056.outbound.protection.outlook.com
 ([40.107.223.56] helo=NAM11-DM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4GMc-00028b-DS
 for linux-riscv@lists.infradead.org; Wed, 19 Feb 2020 03:49:31 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mO6Z+kIeVlh8rh94rX8mEt4qo6mVZvaVfJ3nKzcxB2b8xg7jftMYzSLsr9tsLeIuSLLHqGdtzpfv2ISp2X0Bp7n+JAja/VEkgFTYGaDHjxbeO9lL9qebRsCXpVHnP9dO4kA7qw+leElWmNsI2qshShdcR8w+BhbwnCiICA7aU+YFXX1jBSr8AVe2v9XYFPSgZBNoOB7Vk1pUQ1CXFCoKjwK1c0szW4KvvePG72ceuAUALMmkchE+WL8PGHJDcyTN9Pdqd0A5MobGps8M6NZJHHenl4OxezJos+b3NEqfFur4Q0lco0Ge74z1YTRoN4kwLLpyq8xCQqK/IdlsbYBjjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8ahr4tQbi/LZROCj5Y+IuRVr/GQUX/dF5s4CeWPm/90=;
 b=V+ofTY90V7dyj/vJWVlqrVliCN2qlhGjQgH0cwRvlQfX77YH3tlCrzE9b1GwGtGN1/L7e/FKHAlIVwrSu/GCM2KdrIv/tA4xqWi0VBcUr2D/04hEtw/CUSgxMcVF7cQnZbD2utzAR7cNGVabEErBOHVakxBeTjSIi4UOxCTlXQK22Wwh8nnas7Lu/23JVAxyF/DLeZTcR9rpoKKZZilL6R+lCxmuiSUcJr/1XYUPBhmtHHQ/PMrDZMcxZ4r9QTKtX0Y9EoiQQ++8EbaxMIWKjGNAy12HWXiB7wsrcXgqAPljMb9qfLLeBRCVUwMXsdGJBeHOkqA0ATM2fZAF51Cb4Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=sifive.com; dmarc=pass action=none header.from=sifive.com;
 dkim=pass header.d=sifive.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8ahr4tQbi/LZROCj5Y+IuRVr/GQUX/dF5s4CeWPm/90=;
 b=S1RlRDFeo9bMaHcLhcncn/RCL2Ue3aYbI+Pf0cm9lqiAQcg0lti/d2uQaQ8aC+gWHAlkgr84kY4czZ26fhuIpo2Z07RMyYI5Sj80xvN/tjJ/UtjQpXk3Sj7vb/ZH1UqNzTle0lip9p/8Lw6/B21IPNxiDvxgC+jSuH8Cj5wy8bs=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=yash.shah@sifive.com; 
Received: from CH2PR13MB3368.namprd13.prod.outlook.com (52.132.246.90) by
 CH2PR13MB3704.namprd13.prod.outlook.com (20.180.15.151) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2750.9; Wed, 19 Feb 2020 03:49:24 +0000
Received: from CH2PR13MB3368.namprd13.prod.outlook.com
 ([fe80::55a5:5dab:67de:b5d8]) by CH2PR13MB3368.namprd13.prod.outlook.com
 ([fe80::55a5:5dab:67de:b5d8%5]) with mapi id 15.20.2750.016; Wed, 19 Feb 2020
 03:49:24 +0000
From: Yash Shah <yash.shah@sifive.com>
To: robh+dt@kernel.org, mark.rutland@arm.com, palmer@dabbelt.com,
 paul.walmsley@sifive.com
Subject: [PATCH] riscv: dts: Add GPIO reboot method to HiFive Unleashed DTS
 file
Date: Wed, 19 Feb 2020 09:19:07 +0530
Message-Id: <1582084147-24516-1-git-send-email-yash.shah@sifive.com>
X-Mailer: git-send-email 2.7.4
Content-Type: text/plain
X-ClientProxiedBy: SG2PR02CA0030.apcprd02.prod.outlook.com
 (2603:1096:3:18::18) To CH2PR13MB3368.namprd13.prod.outlook.com
 (2603:10b6:610:2c::26)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from osubuntu003.open-silicon.com (159.117.144.156) by
 SG2PR02CA0030.apcprd02.prod.outlook.com (2603:1096:3:18::18) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2750.17 via Frontend Transport; Wed, 19 Feb 2020 03:49:21 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [159.117.144.156]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: bd056562-d682-453f-84c2-08d7b4eeb5bc
X-MS-TrafficTypeDiagnostic: CH2PR13MB3704:
X-LD-Processed: 22f88e9d-ae0d-4ed9-b984-cdc9be1529f1,ExtAddr
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <CH2PR13MB37041D379B5AD2BC160803D88C100@CH2PR13MB3704.namprd13.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4125;
X-Forefront-PRVS: 0318501FAE
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(6029001)(366004)(396003)(376002)(346002)(136003)(39850400004)(199004)(189003)(81156014)(36756003)(81166006)(478600001)(8676002)(2906002)(66556008)(66476007)(6666004)(8936002)(66946007)(52116002)(6636002)(6512007)(86362001)(107886003)(4326008)(5660300002)(956004)(4744005)(316002)(6486002)(6506007)(186003)(26005)(16526019)(44832011)(2616005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR13MB3704;
 H:CH2PR13MB3368.namprd13.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
Received-SPF: None (protection.outlook.com: sifive.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: gVKTZMsQcmnajmnRbKDu6EZLOcooU79AhgG3Lo37V+5XTdH5AP6VSyeY5zFZAzlXz8ibHJd/BDfzpXx+o/UsEQtoMYIhXxhrcEEkOCWnIeF/SGQrCSecqc1oAU9peFvqIny3xJ4QXy0zwAEs4NTvYm/RVB/OVFTMRarAp+YCs2V5nQ/jfyu4G9QBSkasgMJkhOiQo3v6mXUZBcYZtSPo3LStESN2ojJaPm8wBZAf9+awCtTNwwklUCLP0tVltbM5cNZhuDRo/YAHGLs4CdcY+0hTHug6l0Cg2VN+trtSeuUZMObwaIVrxy9bhxGW30Cb94YBd4T+OL5bUSzWWfZ8ydGFtT/ruEQP1LRwoeOaKNaZDVECg9vSnkpzLTY1Pe4XQYdoa/mMqBL9mlekBPEZdEJ9LCOPibznjKGHYFn8YFJBb2y4ZK4Fc59PlDJiGbOI
X-MS-Exchange-AntiSpam-MessageData: rLn//ekM0RwrOyjTpZSApbqJVSKCGS8NZY8PQcsZN6z0pnPBc9ZyU0l8te8pF68Dm/CFWrnsJSLg/xI1nn7z6FUb/LcCUXWfmoSqiLjDwX8MmuTNstjPxcZvbnop3+B9TCyKEKZEVL3fTOes47V1kg==
X-OriginatorOrg: sifive.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bd056562-d682-453f-84c2-08d7b4eeb5bc
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Feb 2020 03:49:24.4859 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 22f88e9d-ae0d-4ed9-b984-cdc9be1529f1
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: nPV4MC2VYmxDKuSODXS34wiLFYANryNvhXH3xrCjF+dHtdT1PbqcOEZeCV+jk/4cWd01PIGWuLFjg5k6uDgDYw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR13MB3704
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_194930_523406_2987758A 
X-CRM114-Status: UNSURE (   6.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.223.56 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, aou@eecs.berkeley.edu,
 linux-kernel@vger.kernel.org, atish.patra@wdc.com,
 Yash Shah <yash.shah@sifive.com>, linux-riscv@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Add the ability to reboot the HiFive Unleashed board via GPIO.

Signed-off-by: Yash Shah <yash.shah@sifive.com>
---
 arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts b/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
index 609198c..4a2729f 100644
--- a/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
+++ b/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
@@ -2,6 +2,7 @@
 /* Copyright (c) 2018-2019 SiFive, Inc */
 
 #include "fu540-c000.dtsi"
+#include <dt-bindings/gpio/gpio.h>
 
 /* Clock frequency (in Hz) of the PCB crystal for rtcclk */
 #define RTCCLK_FREQ		1000000
@@ -41,6 +42,10 @@
 		clock-frequency = <RTCCLK_FREQ>;
 		clock-output-names = "rtcclk";
 	};
+	gpio-restart {
+		compatible = "gpio-restart";
+		gpios = <&gpio 10 GPIO_ACTIVE_LOW>;
+	};
 };
 
 &uart0 {
-- 
2.7.4


