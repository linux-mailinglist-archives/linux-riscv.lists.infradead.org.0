Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B65641D94A8
	for <lists+linux-riscv@lfdr.de>; Tue, 19 May 2020 12:47:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Type:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=C4Wn0DVJtsrYagW/LRvYjoTz0Wc573KNruenw/iPvcU=; b=rPp4UfA55ncz36uSEVtcjDBvS
	8eafrXB/GJ40H+XGe2uWYw2h0piydbvIbv67RBfUKOQNwahXzCLc7SoGMMcX2RU81m2GAdtKZepkS
	aVE/63WVg5lrLzYs/hY+BXZiIFHKR3dyD1sWliLXY1SQblbnPThTa6ZnU9uyMpoGHIvxfSnF7vG6d
	5QUGqvwEbhieSrZMxSAVCLQnd8WgaF+BVoQemWJYoZCA0AAOm/XOU+YIgfuns/HLmRw1tzPqUY3jG
	l6C3mOdkvQGVwC/jlMy+mswkZQ4RKHOhLF0gYonMAyTO+a94gJDQVGS1tl6dW8Kb0fymU3owR2EFb
	2EOTZ9Vdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jazm7-0005Zi-Ai; Tue, 19 May 2020 10:47:07 +0000
Received: from mail-eopbgr690064.outbound.protection.outlook.com
 ([40.107.69.64] helo=NAM04-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jazlo-0005I1-9B; Tue, 19 May 2020 10:46:49 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HBEyoHsgeLrAB/QaKXcBdr8iNprhFVB0ooU4yANzUPOsxuKpuJar8fvrcobdedTxVV1I9mBb8sAYUmWDWkwgnarrwfcEBhHANAv5s36/8FCU6mHO7pMHFgxSFfgMqqbNfJHjmCru4Ayatj5kqxMFeVd6Inov5LnS6RDcH28Q3APWRGl4Y7EBw+jrGHS4N/blg3qzzP07pgUyjw1mQkVklnyB7SiyYXuzXqvxVEo4gK6fzkvI0Gx+0dhp+o9UrQN6wi0Y2fXCFlVwbook+gsuC9AVVKjQN5hSXO3csMWs3wF7aSIm91epQg5mIdahSbGU6NgeEBBzn4zHpHsZqSQCLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=C4Wn0DVJtsrYagW/LRvYjoTz0Wc573KNruenw/iPvcU=;
 b=DherarqGUOAJ7gQjHEVXSZe5UpBDkf5Fr5b5Y7EQgz9xDUF28LMsIDGKWhXv8P8kFAbkCeA1ybfIVxunbruGQ+K7wFDxHOlGt7iY3a4QsTmI6+qjzDJyAAWhmlx/AHNktw4oKwF/PEYwm0OftQByXQlcu79OFltD2XaIpH1Ol3VC2LODC3tXKxnNWa2LKFqFEeDyR/ddCKPwQVKmjAIwCQOqYC7HG3zOvvjkKw5/WR5yFpM1XC4tsX3w3onano1ad+mBXubHqRX9/ouPZGNSDH7VOFvLcMhbox+WW7+B96s4F+G9akIceaG3inqGfXDrQY4qZTFqJKryTg9cJSPi3Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=sifive.com; dmarc=pass action=none header.from=sifive.com;
 dkim=pass header.d=sifive.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=C4Wn0DVJtsrYagW/LRvYjoTz0Wc573KNruenw/iPvcU=;
 b=RMuI2ADLZ6Hgp9fBFZQHkG7yck1RHIbHMZ9q/QldWyN7o0m8PBCgTh/Xn6SQEK4jCriXvxfnd2sd0e1tmkelLLBMrhGpzXuZWg1XZy/Sj2xG3oOPnHJPWcf6HP3vOCfX5pb42Itf1PIlrTPHVmjly/FGD7AsAVoUnT2G2s6eGwg=
Authentication-Results: lists.infradead.org; dkim=none (message not signed)
 header.d=none;lists.infradead.org; dmarc=none action=none
 header.from=sifive.com;
Received: from DM6PR13MB2619.namprd13.prod.outlook.com (2603:10b6:5:140::13)
 by DM6PR13MB3882.namprd13.prod.outlook.com (2603:10b6:5:22a::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3000.11; Tue, 19 May
 2020 10:46:47 +0000
Received: from DM6PR13MB2619.namprd13.prod.outlook.com
 ([fe80::ad23:dfbe:7ec:e5ca]) by DM6PR13MB2619.namprd13.prod.outlook.com
 ([fe80::ad23:dfbe:7ec:e5ca%3]) with mapi id 15.20.3000.015; Tue, 19 May 2020
 10:46:47 +0000
From: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
To: linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-mtd@lists.infradead.org
Subject: [PATCH v2 1/2] riscv: defconfig: enable spi nor on Hifive Unleashed
 A00
Date: Tue, 19 May 2020 03:46:26 -0700
Message-Id: <1589885187-31247-2-git-send-email-sagar.kadam@sifive.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1589885187-31247-1-git-send-email-sagar.kadam@sifive.com>
References: <1589885187-31247-1-git-send-email-sagar.kadam@sifive.com>
Content-Type: text/plain
X-ClientProxiedBy: BYAPR05CA0073.namprd05.prod.outlook.com
 (2603:10b6:a03:e0::14) To DM6PR13MB2619.namprd13.prod.outlook.com
 (2603:10b6:5:140::13)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from gamma07.internal.sifive.com (64.62.193.194) by
 BYAPR05CA0073.namprd05.prod.outlook.com (2603:10b6:a03:e0::14) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.3021.10 via Frontend Transport; Tue, 19 May 2020 10:46:46 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [64.62.193.194]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: e7172545-83a3-4f70-eb78-08d7fbe1ed7a
X-MS-TrafficTypeDiagnostic: DM6PR13MB3882:
X-LD-Processed: 22f88e9d-ae0d-4ed9-b984-cdc9be1529f1,ExtAddr
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DM6PR13MB38828DB4A8C006C0F2B11CB599B90@DM6PR13MB3882.namprd13.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7219;
X-Forefront-PRVS: 040866B734
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: L6FbN/C+ljg9uJmPxcpWpEe0gC9TZEu8jXFQXmjo8e2h75anUrQdosQKW8iPre5F9EPCxYlxkpNCu1NqUohFVZv4BGDQ4ADFA7jph/2S6XuYRWGgoZd/xmyOQG5QKvku3kBlXt3Z8jLv1HuPU0deMS30BS/bligXJFxqlFG1deRLGArniI1XmOYETpEUZQyht9FOjFq8idvOGgjHW2lBIGbNgjQIXk+lgvAgTQCm9/2niFxJuqBmo9NPf+/sJFw3tC8HlbRHBV3+ERFtQA33GqKS0Jt3F8sAQ1mYaOaVLepZc1IJYqj+k3FdURo6BvdO5i9ANs6Dzgnb6BQ+0xjoYdiYkDYYjbEH2rQjnE1BdVX4JiSpoMRBRbTzIbacA4vIUnCyY9JBUVHRXvCQ9KRN2/qAuOxTzRMKkNgPrKEU9+p3Q8b3pwE/2iMo+EtXh77t
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR13MB2619.namprd13.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(136003)(346002)(396003)(39850400004)(376002)(366004)(7416002)(4326008)(86362001)(6666004)(66946007)(66556008)(66476007)(316002)(5660300002)(107886003)(36756003)(2906002)(26005)(6486002)(52116002)(16526019)(2616005)(7696005)(956004)(8936002)(8676002)(186003)(478600001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: QNoHph9qFMusgJwQajExXVXArYJDfjgzFXm1yuVjNJQYPIxsjmGZRy2G+tgQED9gOJnps1b1A4cRUHsre00A55/lgKmQ+xJG9Rm1XBM0NQHPBi2eS9mVQTxVbER5tVc0UPybfmRmlnn8dEU+uykJqtn2D+Bv+MmXZlsEvJnMhq+boJgSYo3jt/uV31UYmcKVMaTKdVDWhrqHnepL/CsXZoAt6BPUxiej/wyWzLo11NA/YGGP5ceKRJDYK3CRasz2UL6odX7Kb7BefJdmBbkmREPF66Zzf0BIJDQTbKlyqw9kP2dB+cvhYUzhs09QacL1dt/OZve/AUy7JfJXxqPDtg+tC4pK9n6bEZxJtXDeZNdgYDQNrWSFqSJbhJTh7Hcq1EFw5kOshOrp+m0IE2xeXaQ/946ZQNR7r+1gB9WfweUSIp+0lSuIADBOEKsevX4Pr7BePH3pY6y5khEmLGUuW6JeadUeq9JBVnnVRcK4hOE=
X-OriginatorOrg: sifive.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e7172545-83a3-4f70-eb78-08d7fbe1ed7a
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 May 2020 10:46:46.9342 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 22f88e9d-ae0d-4ed9-b984-cdc9be1529f1
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0Abmria6zSZnomc0GW7NH73BiEr973fLpLlm23ViwrdligDRbZunNyJ+WFnI/GA0VrrKL8SCjIcItChCISS3Aw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR13MB3882
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_034648_328834_CBF66EC4 
X-CRM114-Status: GOOD (  10.20  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.69.64 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.69.64 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: aou@eecs.berkeley.edu, vigneshr@ti.com, tudor.ambarus@microchip.com,
 richard@nod.at, paul.walmsley@sifive.com, anup.patel@wdc.com,
 palmer@dabbelt.com, Sagar Shrikant Kadam <sagar.kadam@sifive.com>,
 miquel.raynal@bootlin.com
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Enable MTD based SPI-NOR framework in order to use spi flash available
on HiFive Unleashed A00 board, and move SPI_SIFIVE to Kconfig.socs. The
configurability of SPI_SIFIVE is retained and still can be enabled or
disabled as required.

Signed-off-by: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
---
 arch/riscv/Kconfig.socs      | 1 +
 arch/riscv/configs/defconfig | 3 ++-
 2 files changed, 3 insertions(+), 1 deletion(-)

diff --git a/arch/riscv/Kconfig.socs b/arch/riscv/Kconfig.socs
index 216286d..bcb0b1a 100644
--- a/arch/riscv/Kconfig.socs
+++ b/arch/riscv/Kconfig.socs
@@ -7,6 +7,7 @@ config SOC_SIFIVE
 	select CLK_SIFIVE
 	select CLK_SIFIVE_FU540_PRCI
 	select SIFIVE_PLIC
+	imply SPI_SIFIVE if SPI
 	help
 	  This enables support for SiFive SoC platform hardware.
 
diff --git a/arch/riscv/configs/defconfig b/arch/riscv/configs/defconfig
index 4da4886..8e2d467 100644
--- a/arch/riscv/configs/defconfig
+++ b/arch/riscv/configs/defconfig
@@ -62,7 +62,6 @@ CONFIG_VIRTIO_CONSOLE=y
 CONFIG_HW_RANDOM=y
 CONFIG_HW_RANDOM_VIRTIO=y
 CONFIG_SPI=y
-CONFIG_SPI_SIFIVE=y
 # CONFIG_PTP_1588_CLOCK is not set
 CONFIG_POWER_RESET=y
 CONFIG_DRM=y
@@ -80,6 +79,8 @@ CONFIG_USB_STORAGE=y
 CONFIG_USB_UAS=y
 CONFIG_MMC=y
 CONFIG_MMC_SPI=y
+CONFIG_MTD=y
+CONFIG_MTD_SPI_NOR=y
 CONFIG_RTC_CLASS=y
 CONFIG_VIRTIO_PCI=y
 CONFIG_VIRTIO_BALLOON=y
-- 
2.7.4


