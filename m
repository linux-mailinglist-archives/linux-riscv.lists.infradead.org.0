Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99C041BF4B8
	for <lists+linux-riscv@lfdr.de>; Thu, 30 Apr 2020 11:59:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Type:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xCjrNLC2LhnFkNcifiJpqfLa/GGgYoNgV84DoNYXhiw=; b=iGLGccSMUB1ISxcmZ1ppu+EQk
	zToKWuw8p+p6gkSDPFS1b0MAtF2CQXeveJqKFrAyPMyPPtmOQflI2e3F+pST32n++ZztJVbWpplZt
	1fA6mbkahAdZKHcfmz97+J8eK5olWNU1lzlJMnX3udY2mvUncnGT0lhHr0OhaO3dZaNlPRJ4ISRK3
	FMH21dCt7cgu05s/1ge6GfvECHDoxbi06UOavIIQsFhXIro0ox3sP+HjPdNzjGa5cymIArMpHyBWL
	gM6cLLdY0vs89GZWmSMkjpB5AgaG4/m7JL6HtinBm6Lv1B52e9FwwjwMBGTOYvcgbjvCjDZiuD8bd
	6tLXWreFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jU5yq-0001ad-7a; Thu, 30 Apr 2020 09:59:44 +0000
Received: from mail-co1nam11on2053.outbound.protection.outlook.com
 ([40.107.220.53] helo=NAM11-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU5yS-0001JH-IM; Thu, 30 Apr 2020 09:59:21 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Uak6xEeq4ji3/4qjjdbTe0Q/oX/Ee1kvVuiX3kQIekOqTmr8AfDPbU3duF7mdyUZxdWtaJ9FOcgWoAL35I60P2JOykarOKc01HlqriDNa1HOetJPv/x9Cmj3yhuxrFUcOW2BAvSPqG+lVEuDLkE+RQLQEZ/FSWnnj5AbvBzvyMIBNO4SaZpUMLqMwpnFrxGCtL8hlkgpEi9fonzfwr2paBlVMdj/bszJmUPV80xLiD6bKLkbBmv/TM+kcZMswO0FtqT0wNYBGssPQi4spmULQKnQ/pTdBov5iIFa/6Rmuk2KoDZfFyxMiPONUPjJmfaIREw6s5mmlf8i1bw9+JxAMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xCjrNLC2LhnFkNcifiJpqfLa/GGgYoNgV84DoNYXhiw=;
 b=N1tFlprDu3Kd8PFMaUXPt9/CBhw1c3mgEUy3DqXs79s1wqHpA8pkOjhgV0O81kOS6YuFKjCf//oVlQbZzV18GG7uND547B3/yk0I9H1xpNh0qlVvQ/JPYPhGUfFxCnjb34RvH38ZthyfoRLeC+pvzud2EAKMJthM/m0R9zpswOzmZ8SuXdIR1nkpNQIIoj9uYTRSWcWEbN/M0Jc4c07hIlnCMv4g1CCs4DaCmJ5NLevOaYZhLn7gkboPKd/5np9xJKV1VukH1selhKjyuPHWSdKsC/n4EL552BzoFFwOuen5JcjBnQ/dxD4GxTegcvTFUyXOb4IowXgFH/VebBdz3w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=sifive.com; dmarc=pass action=none header.from=sifive.com;
 dkim=pass header.d=sifive.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xCjrNLC2LhnFkNcifiJpqfLa/GGgYoNgV84DoNYXhiw=;
 b=qkoMOUkbFbATJoVjN72Ixn7WCyVE5dnwQOGAokQPL8ZaWx6kzbKK3WcFwHbTkAnaix4D3VApMASGZTQGGeubDSjS+fjqz5mT4I1I/K5VqCEHISB9XZtSeYcKBauIiC+UFu5+wvXD5RTqPUG/JV2iblKCw5T7tCT5kBTvAmGI2F8=
Authentication-Results: microchip.com; dkim=none (message not signed)
 header.d=none;microchip.com; dmarc=none action=none header.from=sifive.com;
Received: from BN8PR13MB2611.namprd13.prod.outlook.com (2603:10b6:408:81::17)
 by BN8PR13MB2884.namprd13.prod.outlook.com (2603:10b6:408:85::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2979.14; Thu, 30 Apr
 2020 09:59:18 +0000
Received: from BN8PR13MB2611.namprd13.prod.outlook.com
 ([fe80::c129:8fca:5ed:8929]) by BN8PR13MB2611.namprd13.prod.outlook.com
 ([fe80::c129:8fca:5ed:8929%6]) with mapi id 15.20.2958.020; Thu, 30 Apr 2020
 09:59:18 +0000
From: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
To: tudor.ambarus@microchip.com, miquel.raynal@bootlin.com, richard@nod.at,
 vigneshr@ti.com
Subject: [PATCH 1/2] riscv: defconfig: enable spi nor on Hifive Unleashed A00
 board.
Date: Thu, 30 Apr 2020 02:58:51 -0700
Message-Id: <1588240732-13905-2-git-send-email-sagar.kadam@sifive.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1588240732-13905-1-git-send-email-sagar.kadam@sifive.com>
References: <1588240732-13905-1-git-send-email-sagar.kadam@sifive.com>
Content-Type: text/plain
X-ClientProxiedBy: BYAPR08CA0027.namprd08.prod.outlook.com
 (2603:10b6:a03:100::40) To BN8PR13MB2611.namprd13.prod.outlook.com
 (2603:10b6:408:81::17)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from gamma07.internal.sifive.com (64.62.193.194) by
 BYAPR08CA0027.namprd08.prod.outlook.com (2603:10b6:a03:100::40) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.20.2958.20 via Frontend
 Transport; Thu, 30 Apr 2020 09:59:17 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [64.62.193.194]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 39f59fe8-1b43-4f15-1e76-08d7eced25c5
X-MS-TrafficTypeDiagnostic: BN8PR13MB2884:
X-LD-Processed: 22f88e9d-ae0d-4ed9-b984-cdc9be1529f1,ExtAddr
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <BN8PR13MB28840A50452C06794ED0832D99AA0@BN8PR13MB2884.namprd13.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1265;
X-Forefront-PRVS: 0389EDA07F
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: xxicrGQAppmCd9g9ACLPPrwQl8lVGO4Rx1ZRBagPsmuwXf3vacWBDg8QzfKSdh+Lq+EJIBKycRL2YbeGjzYdxAjxr9JvT+pnQHfpadyK4BrqFQ5XxCIl/P31shP9sTvr8l2FgKhLxMIK6+VWV2cQj791Wlbex7NKzB3S7rwK9lIBbA7kI1H8toT4gwZtoBaq5gRyw5MIkgMlxD/GiMQRkeKVbPrxsaxHd53P4h1sjDF5Tjp80sPHwrEmcwxGmCrx4Q5Q4eHTOFBwaS1Ml1SCqKeYr3P232vCccNsHZ0qKJs9uUmCu8uLvHLlic5zZuNIMk1ZxMIVXcAqxgoL3yO1DYLTpZr3TkAzh++QZ0q6xXpm1xa3kAkywBLri0n6nquswAQIqFOTxAfki1iLQezeClCSvQ5fnUNW7yZERRfj7nwHSrehaClmQLgYEcYgtJ10
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR13MB2611.namprd13.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(136003)(346002)(376002)(39850400004)(396003)(366004)(7696005)(52116002)(8676002)(8936002)(16526019)(186003)(26005)(5660300002)(4744005)(956004)(478600001)(2906002)(2616005)(316002)(6666004)(66476007)(66556008)(66946007)(86362001)(36756003)(107886003)(4326008)(6486002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: GSecvMogeO4xfYfwXzYLnRhZ/Qxf8JH09tISPVYn9sB7MIAzE42EG4jgqn9Fz1DQBw9bFmp/tEvZ4sDm52fcQ3RzRBoEtVW7qmzV4TJk6du4ixHl629Uuue55NSxdRwDDWufbaDLWvVgDH0mgO4SxTdG2b8vnxivnuNlTEgTTQjFInn6ol47jAxPANEVMOx4imQKNR5Dg2Jm4UvrOmPGPnwxTKPkxZfcwfsp8+1awMhdb+v4n/0DwN9ZWyoMxxY5b2CudnTJdW0phacpzgjtqZ1fYwO/7C1KN7W+Jk3UR9obFNhe56+lW/plYb4sKAiz6jI5Yc/fJbU4Cx2J6Bpj5nbPYB1xdiFtLCyvH14SH1yOQMxqs+ciS6amPcSxjnAlb8wsyTK7rW90eQFPJMmBs2afQX0AExpkRmN+j6ZGpU2ZIMFVI5bEb0FeNBFbn0yQ1NTbzBClY1xEacjQ7zO+w9B011rd1UGpqpZQR1cC/xhKkNN+o7UWxVFNEdUPSm11hTilQ9iplqFt148NcC89vJwZjCuqQo6bRfUcY0R7TbrdrSo7BAkLq0o9gxUknUKASVI3ZwpdSb3SjJUXtyLvrjxaDs0r+dpBQHvnNIQHHwvuhqu/mchUih48GairkjLtBwW76J3qndBkUOKIb/7lDa5KKIW4aGQgCYmi4gUkTIVI0aQSYaS8iir46ck9X2ZWRdfCLJXEBclouwy0aB8GMvMj+qjXNKmR0U/h4mSvSQ8KL+Bbp1ndJ9fXTSkXkvfetMxisZN2Qu2lMn3hD1PpDoMXxYqlD/2YREwOXV4cfKY=
X-OriginatorOrg: sifive.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 39f59fe8-1b43-4f15-1e76-08d7eced25c5
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Apr 2020 09:59:18.6071 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 22f88e9d-ae0d-4ed9-b984-cdc9be1529f1
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: g4NdIfRh0nZAlpEVZgg7Ukq7HkkJlVWcJQEeviumtvyAuTFvC0xnW45bleOFgXomILZiHau2qroVrm4ifufRmA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR13MB2884
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_025920_604121_37708CBD 
X-CRM114-Status: UNSURE (   5.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.220.53 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.220.53 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-kernel@vger.kernel.org, linux-mtd@lists.infradead.org,
 Sagar Shrikant Kadam <sagar.kadam@sifive.com>, paul.walmsley@sifive.com,
 palmer@dabbelt.com, linux-riscv@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Enable MTD based SPI-NOR framework in order to use spi flash
available on HiFive Unleashed A00 board.

Signed-off-by: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
---
 arch/riscv/configs/defconfig | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/riscv/configs/defconfig b/arch/riscv/configs/defconfig
index 4da4886..970580b 100644
--- a/arch/riscv/configs/defconfig
+++ b/arch/riscv/configs/defconfig
@@ -80,6 +80,8 @@ CONFIG_USB_STORAGE=y
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


