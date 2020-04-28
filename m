Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BAA671BBC38
	for <lists+linux-riscv@lfdr.de>; Tue, 28 Apr 2020 13:17:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Type:Message-Id:Date:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=aul5l5DQgIR5rCpNQ49LSf6UP/DM43dIay019PQDyjs=; b=Vt5
	8Sbl9EZNSQj+8xeG1u+KuJ+JJOh2KsMrpjQNIq/Eygm5tyCSukaK4UfVtjH7seUGFED2mYBbboKUt
	8uN8NzECTgOhB/Z4Bljt6lDRwmEq3CtgC70DH3n7atdS9ZzMGkVhjtz3aYfHeMeSDIVnzdkEsWZFW
	4a4PZO72CrUobZ6YTaoqQj8kvtpsCqqeVf15ezMwioKt9BEsvqYBl1LthuRziG9VCSf8m9ePnURhO
	7HXdpoRNpsdnN4mBO5ndAPsxeK3mFDBZiNbzN8HNZPTwW225XTT6JkUPzSB0kHdcqCgWR3/jZFmR8
	OSaiBJU5WzX6GVEamos609NQAxAbNgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTOEd-00037S-Ps; Tue, 28 Apr 2020 11:17:07 +0000
Received: from mail-eopbgr750070.outbound.protection.outlook.com
 ([40.107.75.70] helo=NAM02-BL2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTOEZ-00035K-Di
 for linux-riscv@lists.infradead.org; Tue, 28 Apr 2020 11:17:05 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iome/dToORdab2Es+kkzvDmZg2m+SV6j+th7IoZfxN5pj4gKhwqXKNfemG1VWPsfQgENq0wFR5+wvErTXWrKkd+UgnQbFd5LJtghXdihX6t4h9iCnm9s+XGMhH9YMpeiL4aNjmcT/vqSto2gliarEEkIMHil3e7tHYXd92fAFA32h66jsB333cmi3FIKuj7kxL5Bfn1QWY2HaBcsU5rlCn92eRBizxNecg8K9sZn7+orRVLWR254luhSHOOXzXP/B/IijuMHy/XzV+oJyFtdQ7r1YwSyAyajSTcbg19dPxj/qCfiybG/fMVPn+Bwuj1FdWvMn1dqiECGSXzFBOC2rg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aul5l5DQgIR5rCpNQ49LSf6UP/DM43dIay019PQDyjs=;
 b=jiZYG1S1JPxYcenXviT0TbVq40knWvuJbq30zHyKWFM6TA5PjK/35t9LmvY1e6ymMF3qqNPvu6NYrl/2mOHFg0l6wb3+yO5shaf0KlFLVgF6xKCtsrbCydsXre4aHOYvHwjYpgZm/2ljiIaSVCXO2vzcDkq+gtpzb2UM/DisBRAW/WHbAvalC2Lam5UAN34imoeai3IN/ms5wE2moi/Mqe6wkxnhB0T6WG+ciA/03c6cnURLxiiKX0UxKsFDuQbksZSZdBj82yVDx04scRXnVGCboNDxIpsVdYdjqPbOd3CUXzAfSKG7nn0viWOBKbWHxybgJ8LN/VA3Pf1OKr4IiQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=sifive.com; dmarc=pass action=none header.from=sifive.com;
 dkim=pass header.d=sifive.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aul5l5DQgIR5rCpNQ49LSf6UP/DM43dIay019PQDyjs=;
 b=S9WatSVJHzk7XYepjupbtnpRCBc65nBSD6cfL4jkohB0Z0sqqj1zK1+ynsfzSuOOG8wQ3WaKeSTil5plioGPXRNA5ur0f0KzY/VZNMcLpCH+NJFPjZJusK0Xe2f3FMYGi6QlxvahLwmlvYGIVc/2+2tbKW4xmmhvDDjBU2z5I3c=
Authentication-Results: vger.kernel.org; dkim=none (message not signed)
 header.d=none; vger.kernel.org; dmarc=none action=none header.from=sifive.com; 
Received: from BN8PR13MB2611.namprd13.prod.outlook.com (2603:10b6:408:81::17)
 by BN8PR13MB2737.namprd13.prod.outlook.com (2603:10b6:408:88::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2958.12; Tue, 28 Apr
 2020 11:17:00 +0000
Received: from BN8PR13MB2611.namprd13.prod.outlook.com
 ([fe80::c129:8fca:5ed:8929]) by BN8PR13MB2611.namprd13.prod.outlook.com
 ([fe80::c129:8fca:5ed:8929%6]) with mapi id 15.20.2958.014; Tue, 28 Apr 2020
 11:17:00 +0000
From: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
To: linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org,
 robh+dt@kernel.org
Subject: [RFC PATCH 0/4] fix macb phy probe failure if phy-reset is not handled
Date: Tue, 28 Apr 2020 04:16:44 -0700
Message-Id: <1588072608-7747-1-git-send-email-sagar.kadam@sifive.com>
X-Mailer: git-send-email 2.7.4
Content-Type: text/plain
X-ClientProxiedBy: BY5PR13CA0032.namprd13.prod.outlook.com
 (2603:10b6:a03:180::45) To BN8PR13MB2611.namprd13.prod.outlook.com
 (2603:10b6:408:81::17)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from gamma07.internal.sifive.com (64.62.193.194) by
 BY5PR13CA0032.namprd13.prod.outlook.com (2603:10b6:a03:180::45) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.20.2958.9 via Frontend
 Transport; Tue, 28 Apr 2020 11:16:58 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [64.62.193.194]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 6855ea8d-7fa2-496f-68ac-08d7eb65ab63
X-MS-TrafficTypeDiagnostic: BN8PR13MB2737:
X-LD-Processed: 22f88e9d-ae0d-4ed9-b984-cdc9be1529f1,ExtAddr
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <BN8PR13MB273792A5FF3DC40CA7243DD899AC0@BN8PR13MB2737.namprd13.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-Forefront-PRVS: 0387D64A71
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR13MB2611.namprd13.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(346002)(396003)(376002)(39850400004)(366004)(136003)(186003)(2616005)(52116002)(16526019)(7696005)(2906002)(86362001)(36756003)(26005)(107886003)(4326008)(5660300002)(66946007)(81156014)(956004)(66476007)(6666004)(66556008)(478600001)(966005)(316002)(8676002)(6486002)(8936002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: sDWkWWT8lQbUYQGKEHL+yd7CxLXqFNN4AskxMMb4zCvbdE34ldrpt7TGNy4h7ztuitcYWTIE6AKlnYytxOn8oOLPe8YbqDpFekNQUWqKC/xkr0GFeX9QkcIz+I1Sz5S2tvRQd4LeRHQELK1Dsit4+XdQTRDhVLw7gvyK9LB+FW9FYCRNvMjF/nLGIwyNBZDZW4m/0678FcKgNGioi7m7zKcI38nxtfaUHUy9TJvCRxDN+azoP4jURv1OAsQCEyJKd1zh8ehnNitebuJpY3D7NzH7jZk0auMEkZy//JcCdAM7EDxGWu5cp/fy8QZtVeIsAhP7h4ATwZpDPwNiZnhYjeVFyBgUQQCxiKFcsSLX1pxYoAUkqPl6Rk/Z99/Utu5V7SJvjtrBnLCEJtWgOQ4Icqwq8GyQ4C4HL6taJCF+LvKOf9gQj0JzuJ7D1Frr5JOs1408NoYOqKHBUZLzdrvq39dBfNOLg9Of/NLuMKMhIkmS30rBfiUZnefOLc9YTOQpeClKW4amZ/F8xAsSVCk7aA==
X-MS-Exchange-AntiSpam-MessageData: /7bftCvEwBsey1mtFYryQw8dzCLTLF0XG1mCkqIDIb/kl42yNapPl1mkI0W84iDRMf6/WOHRScznP/Yn+LdzNP3XxQ/Xpcd2wMiYy4YT4g3480KSW18qiUAf3sf1Ed+CDZdz7E+YCdtp+hFet2FXfbXhTsKfGh4A8On0mURZnTOfOywEyXutq7+fJgmV+pVRWKLXuxjacB/0cvvhaBvPKxqgFNMsjmysOoUVuRYrrD12wo/AQ0nC54VSop1gJZmfCwhAPWwrQTtnvlgTBVcZ4N71ic1dWvXCjSVpRFB871bQ+nCSyyW9hIsYd/CpwPx2dIu+oZ15FIpTWZLSd055Jy69KzMBgDk6iMCQxHuVCVSANAb2YGBBa6UD3RPVDbvPB4H0TRDasPA1n3uxr0MRy8XwrMgLncdKEKGlDbnULl+DDH6n6gHb/sWhLCd5+aBQrtxBzjM7cqdOfxS9xDXyV9UF0mnY5ognbvrGYd2dvO/u4chXmPG/iX+7uI6+5HHlGJn4MI9MZzQnq2saMDmbEStY7owDNVY6tsg29eRwD2MgBsDVf7HvBmugI+o82/1oAAIBlXlYOyrXFe3/1TAMrIqHpLOw3KdWno2dNv+lbPqaAWQcn2nxTSjrghWyZKYEPSkT+rLr8Yp/WAsorTIr9gKMbaCJbKKwjVQX1mwjgy6lV9YUBqqji+E8RtxEQLFNNrlNcDnL4TmmcYBScRHsrdVzjfpElg4ta8ZLgQl4KMTQ/G3smQnO3ZuHo9ibgVtndo5l8aARXQQ2YuVv8hBy5WtJIDwhmh6CsglVL86W28c=
X-OriginatorOrg: sifive.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6855ea8d-7fa2-496f-68ac-08d7eb65ab63
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2020 11:16:59.8436 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 22f88e9d-ae0d-4ed9-b984-cdc9be1529f1
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Bp084uZbER0NTI1B6GBNktCCKAI9LdlhxjgX16MAE25Lo1BA6/CKd+s5IAclv/NBdF4ZgcNxYr0JgiziBx7UYQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR13MB2737
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_041703_687018_7E8CB6C5 
X-CRM114-Status: UNSURE (   9.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.75.70 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.75.70 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: atish.patra@wdc.com, devicetree@vger.kernel.org, palmer@dabbelt.com,
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

The series is based on linux-5.7-rc2.
Patch 1: Add the OUI to the phy dt node to fix issue of missing mdio device
Patch 2 and 3:
	Resetting phy needs GPIO support so add to dt and defconfig.
Patch 4: Add dt binding for OUI introduced in patch 1.

[1] https://lkml.org/lkml/2018/11/29/154

To reproduce the issue: 
1. Comment out VSC8541 reset sequence in fsbl/main.c
   from within the freedom-u540-c000-bootloader.
2. Build and add fsbl.bin to micro sdcard.

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

Sagar Shrikant Kadam (4):
  dts: phy: fix missing mdio device and probe failure of vsc8541-01
    device
  dts: phy: add GPIO number and active state used for phy reset
  riscv: defconfig: enable gpio support for HiFive Unleashed
  dt-bindings: net: phy: extend dt binding for VSC8541 ethernet-phy

 Documentation/devicetree/bindings/net/mscc-phy-vsc8531.txt | 3 +++
 arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts        | 2 ++
 arch/riscv/configs/defconfig                               | 2 ++
 3 files changed, 7 insertions(+)

-- 
2.7.4


