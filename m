Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 335751D2ED4
	for <lists+linux-riscv@lfdr.de>; Thu, 14 May 2020 13:52:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Type:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=C4Wn0DVJtsrYagW/LRvYjoTz0Wc573KNruenw/iPvcU=; b=U0W5Hqv8VvL+u1b4ZvFbhHvmy
	lhvjouf2regceJacjudUfSKiqmE4cp6l7CQ0UABQYlbegl3WtPM1+CMg4EH1qm0mxxt2AIhBOwrUz
	WqZ8gNZEhOY2hbsQ39Tf6m975sqRDfUi/mUPW3bawG78iQssA9BiDdthVGrG7hM9eBke4ukPscoYs
	RQGPipmmBkARh5syIqkF94IFQJSMpjTiFqLQdXIfOTl6n+24hqgixfqvQazJTlPEc4PqCCl5blkTZ
	Ddo64iIdvQ3TRi2wHqS70tZWNME9NJE217xFuCEIqKhSB9oUatlAAs7Aeo7xqDF3I0Cv9Ye6yV2wx
	7Vhr/loVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZCPJ-0006db-9W; Thu, 14 May 2020 11:52:09 +0000
Received: from mail-bn8nam11on2083.outbound.protection.outlook.com
 ([40.107.236.83] helo=NAM11-BN8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZCOh-0005uH-Pl; Thu, 14 May 2020 11:51:33 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=juvSvYhSOjQzTDfcHTSYAORi4feVzu7GZ4wWdqjnKYGpxeSZNZCV9DVKFTWjshvo2mb9+kkOzPax1LwSjqG0PAreOC2q6Hm34auyro+gjYfWenHfMdbAAm/+0Oz7Yq21MsOCEA6BoYXjRt5MOV9GcFVc+S4YpCeJlKBcj90i2vM0Lp8V89LS0ngfoRxYMEawa94RqAOQpAGxn0tyXk9Q9uUtvTpnAqdAkZKR2wUoUimz4SFgrcykisdfYwhr65M3ylR4u21t/HSwZ9D0cBsIVHNOdqvT5BLmRZm1+zp31c2g5QrMV79sxaGR9BIgRrcmCt+TjHi9azp6SJRR5y6hhw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=C4Wn0DVJtsrYagW/LRvYjoTz0Wc573KNruenw/iPvcU=;
 b=dvDh8nQaOK7OxyRR7TY7q0Xm+dS6YNd0zUsYqOXAcgqRc5p0OzfF72kOpFnnTdAduQHjJeG+15eFLiZ/quY/qnsQ3lQTwaX+uj1TPbhTRF951Bq3/EiV/e6mLD/4efBmMjfpmdMvRDqnP/obIuO+z7gqLP6T4+0imSH/rt5wPv0Qygnq4mTJm8WTEJ+0Nav3pu+DIbAy5kI3wU5GR8FBpH067is9r5l5qpdhBl5T+SbErSGBrEpM9p05MLQ0uxHtBloisUgE2hGutxY9nat8A6L5boRyAjblNqouknWqgZ4Hs0F1GpIiXB9SnQVG+35u5RYL/xFRaZX1YrpToSQe7w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=sifive.com; dmarc=pass action=none header.from=sifive.com;
 dkim=pass header.d=sifive.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=C4Wn0DVJtsrYagW/LRvYjoTz0Wc573KNruenw/iPvcU=;
 b=Jw7/raJTlp26MWzWvuUzaEMV7EA3BNvN10RbDpOQXrhrWULXRsNADzy81kmCOSnSJ/6stMx2CVsM1y1jxk0/VzUCxD/8lNtKvcY/wgAI85sPtNHY+0bi4AgjEmeCTDCvQOuHPAERlXj5J3OzS3GUfm2dKb9yvTd4iAS68YU29fw=
Authentication-Results: lists.infradead.org; dkim=none (message not signed)
 header.d=none;lists.infradead.org; dmarc=none action=none
 header.from=sifive.com;
Received: from BYAPR13MB2614.namprd13.prod.outlook.com (2603:10b6:a03:b4::12)
 by BYAPR13MB2469.namprd13.prod.outlook.com (2603:10b6:a02:ca::28)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2958.14; Thu, 14 May
 2020 11:51:26 +0000
Received: from BYAPR13MB2614.namprd13.prod.outlook.com
 ([fe80::c0fc:30a3:5e5f:c2b6]) by BYAPR13MB2614.namprd13.prod.outlook.com
 ([fe80::c0fc:30a3:5e5f:c2b6%7]) with mapi id 15.20.3000.013; Thu, 14 May 2020
 11:51:26 +0000
From: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
To: linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-mtd@lists.infradead.org, tudor.ambarus@microchip.com,
 miquel.raynal@bootlin.com, richard@nod.at, vigneshr@ti.com
Subject: [PATCH v1 1/2] riscv: defconfig: enable spi nor on Hifive Unleashed
 A00 board.
Date: Thu, 14 May 2020 04:50:50 -0700
Message-Id: <1589457051-5410-2-git-send-email-sagar.kadam@sifive.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1589457051-5410-1-git-send-email-sagar.kadam@sifive.com>
References: <1589457051-5410-1-git-send-email-sagar.kadam@sifive.com>
Content-Type: text/plain
X-ClientProxiedBy: BYAPR08CA0053.namprd08.prod.outlook.com
 (2603:10b6:a03:117::30) To BYAPR13MB2614.namprd13.prod.outlook.com
 (2603:10b6:a03:b4::12)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from gamma07.internal.sifive.com (64.62.193.194) by
 BYAPR08CA0053.namprd08.prod.outlook.com (2603:10b6:a03:117::30) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.20.3000.25 via Frontend
 Transport; Thu, 14 May 2020 11:51:26 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [64.62.193.194]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 4c8bfa4b-5916-4212-5790-08d7f7fd21f1
X-MS-TrafficTypeDiagnostic: BYAPR13MB2469:
X-LD-Processed: 22f88e9d-ae0d-4ed9-b984-cdc9be1529f1,ExtAddr
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <BYAPR13MB246950975F71AEFD79238F1399BC0@BYAPR13MB2469.namprd13.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7219;
X-Forefront-PRVS: 040359335D
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: exTx+vJGMyZrR0WnFxGA8B9Am6L0bj8snIvaOGvkrerq975RwXS8Nt16LxQQmKm1Cz4O0TI+Zm+DBcbTnmpXuWVKj+SbCpzN/3/Sass2T2UDycilxM7yFAwbOJIFfIRWoXYr65zacHi9Op/v3C7cqD+yG4+hfsRhi4RgCcnAzhYCW2jQrOTjRTYKPUYEf0CtfG1eehkEZptfkyzwA8WL850VLd0oQJtC4Pt4sxK7iCqMv1Y4ZOKJ2UbHKktcLwyNLS9Lc5IJHGXeJAswqy1GxDT7prR7fr1pV6eYXKxK9KhVWcAiGv2C6eZjZVlIZyCoW3aG/F1pNJjvKxVC+xqCk54EdXeSm0Aro+blYDTpudbszd9QnR1BauQ8fziSSbCMu2bTzeV7TkKy/zu1IqV63V/j6EfKrohQgFlgx0Vcz+7hxRlkf773NNZXlQ/cRQMf
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR13MB2614.namprd13.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(366004)(396003)(39850400004)(376002)(346002)(136003)(8936002)(186003)(4326008)(16526019)(2906002)(5660300002)(107886003)(26005)(66946007)(8676002)(7416002)(6666004)(478600001)(2616005)(956004)(66476007)(52116002)(7696005)(86362001)(36756003)(66556008)(6486002)(316002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: CymNtYVvmwJOc+LNDCMXt4+r6cGH7beR23bx9oRDHsoJ5EADt1dS/oxqksjHIfCctcpt7MY3xOXD/mswAU4zh6qIohJV1dWnLpezZRZ85fCq4fZ60mSIy5Lj7Nl0LOfdYciZdDkmIHVa+qgiepZ2U2Q3klsDXSrJL+7+6BdTjrWXsBKtKMQFhMKozjpOV+4mcFog/DDCCa+uOE3Z2q9PwXFZ6zmX9ALAbAJmKRENSEddSOJxSHBnf2Rso5pOqBEc7oGr+iPTvT2ABus+zPigg2aTitRzJ8A5UUSXmO5sAVWHM8ZbKEAmmeGIZup0GbO4ZmZadGRov7uf9NGU0wVUDehGKY/vH8btBvjwLDiQQgFYVMv0OcYRokOcL6DqgK8IQbzU7+r0lMxcOIVlyevKJ+t0RGEKqLEJMgDQ1cY85LCwqQvjJzubICMPvGnpuBqLRBDE8bk/heECPEShrOGvpO6/vSlX4WXCle5RrxEsgKI=
X-OriginatorOrg: sifive.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4c8bfa4b-5916-4212-5790-08d7f7fd21f1
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 May 2020 11:51:26.7663 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 22f88e9d-ae0d-4ed9-b984-cdc9be1529f1
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ywpLYx+VLUkngQDCCCkngcce1+QJecSmfk31XWKoAtZthRIQKJqtVvT6COGhFMm5Cz35IdwWyAp1mQWmC0F5Sw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR13MB2469
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_045131_845587_2F1209C2 
X-CRM114-Status: UNSURE (   9.07  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.236.83 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.236.83 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: anup.patel@wdc.com, aou@eecs.berkeley.edu, palmer@dabbelt.com,
 Sagar Shrikant Kadam <sagar.kadam@sifive.com>, paul.walmsley@sifive.com
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


