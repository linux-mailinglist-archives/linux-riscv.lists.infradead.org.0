Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D24241D1696
	for <lists+linux-riscv@lfdr.de>; Wed, 13 May 2020 15:57:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Type:Message-Id:Date:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=z/CissEnr03/jFIrciKL+3QUEybGszDHRakSyGze/Mk=; b=acA
	6fcc1afzoeTH3cYPNI3tMDL9ZJbYtV6d3dhC48jX02IV3KESRMaZjO+pkD3cmAqYvVUnKoXeoQM9m
	Ah2mYPh6gQePg6YCw+3LFLzm1izBuEel2aLwStpJKz2vQYnOg7SluCFnITm2Z6jMlN1kkQFbkMrzf
	XrsGomhYVEVsJOLzfGGNOQzB7xmYX/W3vfpaRR2G/2xhxWjxuSR02RguU5oCxLLlxUwn4EFqJ/BI7
	bR7YvpMFD2UPvGDYlNOMKlR8jZ10Puk78dY7KVI3oTuL0o7bH0JfgaVoErNLc1hYyxlaQHA61IZgh
	Jlw1G2DQwy90AZtCMjnlpp+VCF0CEoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYrt3-00036C-QQ; Wed, 13 May 2020 13:57:29 +0000
Received: from mail-bn8nam12on2052.outbound.protection.outlook.com
 ([40.107.237.52] helo=NAM12-BN8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYrsz-00035D-GZ
 for linux-riscv@lists.infradead.org; Wed, 13 May 2020 13:57:27 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VZU5kr2e4ucWfn9Gyo+9dZqyVxErtNfv/kqZVPdjeR+EcMGJvAmTMBhkDH/guvXjjaGF0JykDAXmAr1w5s99Co/JloAnoU2TO0PdrJwiblkeF8VdbZW0m2JL3bkPAuoIAwriZpQRUSRoy43QUrZ+9fscE1rIBrSTIO4/tOgGj5Checjxrrvc9uUmfqR2+wxyTq7z2UoN7ETamrvhA3EMEiHVlEjMwKj5Z0shGRCVWRSH8E+SSexX+WFPT99A9ArfKEXT8/jVGMHjfvGoqat/pEHNnZdA3v+sKtF0J8J1jM59pmg/m0/M5KfkDiAugUHgKaWqJt/YEPqGlDsnrgLigw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=z/CissEnr03/jFIrciKL+3QUEybGszDHRakSyGze/Mk=;
 b=hG/FIHfew1ZNCNF9L7l2HEWXXZtsJnCOjYYs+J0gugoqQOUrOdMJP0NLO0tvcfWciar6UqF0Dj3VW8j5p4dBUqdCrRpGrCfoTSO0HD4K038QM3GwFNmf4rtpYWEPspt95Ey9z4MKZfxQbAtwrvwIOhqFIbr4zaPlZITYxUCJ4IG8aEjdml68xE+BFnk4kFjv3w4+FDSSp1Uw29Um2+ztBxCOYfpb00UsW4WOZ8pD5uiO8XyC9tFA1UZdYi7Ep8wjdHoFHJOP1uyxfC9DrvU2Gp3Ym/H73pXc83KhYNqpcACgyJRA3K/pE5UPRYcBX7BfQTZAkWRyH2eUdX1Cy/dTIA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=sifive.com; dmarc=pass action=none header.from=sifive.com;
 dkim=pass header.d=sifive.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=z/CissEnr03/jFIrciKL+3QUEybGszDHRakSyGze/Mk=;
 b=ezglxHUKNiabv5gtPqAS5GBwc0Pjm6d8tQnGwxqsYPvVZhfYUhuWwrs2GKF8KKW8Yte4aKN/dEqPjTSV1/vF5KD5La15FdxkL8TzfBZ1CFXWCSeVXG+xQOLX1phdga6ulCaq4XVXXThdAY2skgAQhoR5JlCUaGt4eb06/mEAl+Q=
Authentication-Results: vger.kernel.org; dkim=none (message not signed)
 header.d=none; vger.kernel.org; dmarc=none action=none header.from=sifive.com; 
Received: from BYAPR13MB2614.namprd13.prod.outlook.com (2603:10b6:a03:b4::12)
 by BYAPR13MB2279.namprd13.prod.outlook.com (2603:10b6:a02:bd::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.6; Wed, 13 May
 2020 13:57:21 +0000
Received: from BYAPR13MB2614.namprd13.prod.outlook.com
 ([fe80::c0fc:30a3:5e5f:c2b6]) by BYAPR13MB2614.namprd13.prod.outlook.com
 ([fe80::c0fc:30a3:5e5f:c2b6%7]) with mapi id 15.20.3000.013; Wed, 13 May 2020
 13:57:21 +0000
From: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
To: linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org,
 devicetree@vger.kernel.org, robh+dt@kernel.org
Subject: [PATCH v1 0/3] fix macb phy probe failure if phy-reset is not handled
Date: Wed, 13 May 2020 06:56:58 -0700
Message-Id: <1589378222-15238-1-git-send-email-sagar.kadam@sifive.com>
X-Mailer: git-send-email 2.7.4
Content-Type: text/plain
X-ClientProxiedBy: BY5PR16CA0005.namprd16.prod.outlook.com
 (2603:10b6:a03:1a0::18) To BYAPR13MB2614.namprd13.prod.outlook.com
 (2603:10b6:a03:b4::12)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from gamma07.internal.sifive.com (64.62.193.194) by
 BY5PR16CA0005.namprd16.prod.outlook.com (2603:10b6:a03:1a0::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.20.3000.20 via Frontend
 Transport; Wed, 13 May 2020 13:57:21 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [64.62.193.194]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 291f2f1e-14db-4bfc-0640-08d7f7458e9b
X-MS-TrafficTypeDiagnostic: BYAPR13MB2279:
X-LD-Processed: 22f88e9d-ae0d-4ed9-b984-cdc9be1529f1,ExtAddr
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <BYAPR13MB2279CF6379D1536DBD8B5D7C99BF0@BYAPR13MB2279.namprd13.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-Forefront-PRVS: 0402872DA1
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR13MB2614.namprd13.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(366004)(346002)(376002)(136003)(396003)(39830400003)(33430700001)(2906002)(8676002)(956004)(6486002)(316002)(7696005)(8936002)(86362001)(36756003)(26005)(107886003)(66946007)(66476007)(2616005)(6666004)(52116002)(16526019)(66556008)(33440700001)(966005)(478600001)(5660300002)(186003)(4326008);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: N5mu5YLoMctltfIK2SnVkQ6ElKpqdMvD50DBH+8Kl3yphisBBL2+mrO2A1byK4P9B6v6LYl5dfAKB1Y71dc1Dg/cqb5eZFJnVZXrBMwO89Raq5/p+Ivf6CpytMOIoA9Vb/tRhKHQ3fqrrRNQUClkmfWohhmBN9iMJoiBrP277F9IiPHvhF+6Ul1dpsDhioT7Pd4x+OSSsGvNXKwtZikRGxqwubsWist4uwYu43jjS+V1z5TAMtjPP2fpOIZIKeEjJVxQ2u97IewV8VjvvVL8F/4apEUP3fU00h3YGl+gQtKEjVTrHZvLAB+u+PSQML+8uCWLbQiGYCGzbLhWjy7AQQPJXyc8R3KtF6+ZO1f+m7SafbmHoYoONT1FzDn5msvLN0u0/YQaIEvOzCWlKB4DZqneKUfD42AurwwTp2ZsMApLEasmuFHf4NWBC6giZoHZnk+zutF9bneBDcUCCfGhSUUFEBMDVFYvB4FbyF/beDpeOyssRXBPTCC0ZpMi8wyMDvtLfUKiWhhQu9/1uyGYQk/U/LYplJn8ItHh4Dao4uHyvJSnvcng5d2rDp2gWATIx7wwlAwCF/W4h69B+d4N1bwQEBGfozW2ufMww+TPpSk=
X-MS-Exchange-AntiSpam-MessageData: NwvgaxkkE+vM1IZhTPVMFQTWFLLOfCd6hM6YsAymydyqHHn/nA9pFwQXPa4v97PB4LsMovmZrdLaIgj8Nh0XDClPgdukIrhOVN8cZf1frn+z/DVy1G3l/2NPTj2vcD+fsirjqETitOYD1BP0+WfVMYkOZgYiiRPkxl86YwAGN0L78kiRICZR5m5sxMXeesW8Ebh7X6idPggzpw6yRNyj5zxJFyZM1GlcuGGcKGWu+wfnJVxCnN/Bt14Wn19HXuP6x3gV4QfzK5IjFFtKZGnUwhujp0zrqNsGEpD2lJq1hyQV4BjGxpJGOBBWRwdYTZYVPTiVbAi1Z9x3Hhdagg+6N+ntvzi0UBqRlxgpP5Rwdv8R/QpioFbNaei4fjh1GO8krOIjwG+mjlAYiYKhzJLtEImYvjjDiO5tlslKZexemWVIL+xqobHQzjnX/ZV/IcPZx4G5AKAh7aHQXqGlhppMyiLw8xCDD/nftwxad29v+Vw=
X-OriginatorOrg: sifive.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 291f2f1e-14db-4bfc-0640-08d7f7458e9b
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 May 2020 13:57:21.6161 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 22f88e9d-ae0d-4ed9-b984-cdc9be1529f1
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 09m65hpxR63ujFVJdMUBLQyTyLgzGi3wPUBerTn4VnrOT/Odk9k3syMV9E64dKcQbXMGSysdYlSSdDttRFtygA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR13MB2279
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_065725_633153_01E38264 
X-CRM114-Status: GOOD (  10.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.237.52 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.237.52 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: atish.patra@wdc.com, palmer@dabbelt.com,
 Sagar Shrikant Kadam <sagar.kadam@sifive.com>, paul.walmsley@sifive.com
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

HiFive Unleashed is having VSC8541-01 ethernet phy device and requires a
specific reset sequence of 0-1-0-1 in order to use it in unmanaged mode.
This series addresses a corner case where phy reset is not handled by boot
stages prior to linux.
Somewhat similar unreliable phy probe failure was reported and discussed
here [1].
The macb driver fails to detect the ethernet phy device if the bootloader
doesn't provide a proper reset sequence to the phy device or the phy itself
is in some invalid state. Currently, the FSBL is resetting the phy device,
and so there is no issue observed in the linux network setup.

The series is based on linux-5.7-rc5.
Patch 1: Add the OUI to the phy dt node to fix issue of missing mdio device
Patch 2 and 3:
	Resetting phy needs GPIO support so add to dt and defconfig.

[1] https://lkml.org/lkml/2018/11/29/154

To reproduce the issue: 
1. Comment out VSC8541 reset sequence in fsbl/main.c
   from within the freedom-u540-c000-bootloader.
2. Build and flash fsbl.bin to micro sdcard.

Boot the board and bootlog will show network setup failure messages as:

[  1.069474] libphy: MACB_mii_bus: probed
[  1.073092] mdio_bus 10090000.ethernet-ffffffff: MDIO device at address 0
	       is missing 
.....
[  1.979252] macb 10090000.ethernet eth0: Could not attach PHY (-19)

3. Now apply the series build, and boot kernel.
4. MACB and VSC8541 driver get successfully probed and the network is set
   without any failure.


So irrespective of whether the prior stages handle the phy reset sequence,
the probing is successful in both the cases of cold boot and warm boot.

Change History:
===============================
V1:
-Ignore 4th patch as suggested and so removed it from the series.
-Verified this series on 5.7-rc5.

V0: Base RFC patch. Verified on 5.7-rc2


Sagar Shrikant Kadam (3):
  dts: phy: fix missing mdio device and probe failure of vsc8541-01
    device
  dts: phy: add GPIO number and active state used for phy reset
  riscv: defconfig: enable gpio support for HiFive Unleashed

 arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts | 2 ++
 arch/riscv/configs/defconfig                        | 2 ++
 2 files changed, 4 insertions(+)

-- 
2.7.4


