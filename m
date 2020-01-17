Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A50E14048A
	for <lists+linux-riscv@lfdr.de>; Fri, 17 Jan 2020 08:44:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Type:Message-Id:Date:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=R4ZmAoJ5SHPqhdVbD2ZMWRl6EnQAXCTAeercScOkxEY=; b=AYo
	0m8kQNd+MiJtiyunpR1N55WKds2Y6K+sa2L8C2yR1fmY27Jc5fM6hEJlQTGWG7e1mDhJ054xhBlL+
	4FFPcJq6dcKoVzmKqgDaMV4ifkuP3wzq7sR4D3GV96PG+KatNxmgHVgVL7qRQJnv6k/lwbqQQrrlk
	e77N2Rgh0lxuIRVP6eQha6Aw5LkYoqEcK+H17VKpIjKU0eaQubxK4qDPRPkRkizn9nkHfZlWOLnYl
	uAu512YFV4PL0bsUNgDxov1dLK4BeEXc+5Qh2jgjtX+w91gg1oTJFTo++IsPAM+B2aOfoMlW+JDF1
	oUhpGSDDb1dBu/eM5hguqSv10fAmDpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isMIg-0008IB-DX; Fri, 17 Jan 2020 07:44:14 +0000
Received: from mail-dm6nam11on2046.outbound.protection.outlook.com
 ([40.107.223.46] helo=NAM11-DM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isMIa-0008Gw-Qr
 for linux-riscv@lists.infradead.org; Fri, 17 Jan 2020 07:44:12 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CSf1yzEo+LeQlYZmaE+lRE6hImkowpyXs8F5EQa6B9w4z6r4C7D2EWm7RmzFQu+SjRghAbpdydwHnlaBo4Tqe8VwN1HkbFRjKJJDE2IK9NMXp0HQS8H4i06X8UqdpEvzmqSbA9Z81YggN146Ss3yro7Q+kSpNm/BFAZ5Zb0peuWRQ4fy4pqgYClRtnvATi84aIzBc82XvzWG58/vn2hUJDx04CVnpS7Cc36eGzSXtt7A4YOR9SRjxCenz7nCyO98YFJO4QgNNHx0VLE11X4UKPDD2soXfW0fncDSHh2rsYh1uEuwVhL8YOQ3A8mhjSqgVZELBSB3GNWX0BqxXrgxyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=R4ZmAoJ5SHPqhdVbD2ZMWRl6EnQAXCTAeercScOkxEY=;
 b=W0XvaiRXD61FtZp26bU9ScQWJI4fL/tUV3JpOxr8xYpLkxTUNgC6sBfsHs1AioMaGXP7ZG7svZCXboTyxdwllpJc2HVHVs4vJ3QObwar/xi3+jR8l316aNguGAHd+0UQZk9uK74/lWNpvltFR8VtumKmb1h5sFpYWmqK/P+rJdZ0Z3/Z+TWBYNqenIXoqqVoQhi+5mL7rx/i8PR1pZLG106SrGxGPznmNMVDBg+15b6VEvNvNNmLlrRep31j9DG6rHk/VoUH0UP7TkrlwEf7rv/20MuV43/yHUjeVhH4FVEutfuC+Vdhb7zzYBPoLwbLB42ZhJ9K1W+1kbTgr9MdfQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=sifive.com; dmarc=pass action=none header.from=sifive.com;
 dkim=pass header.d=sifive.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=R4ZmAoJ5SHPqhdVbD2ZMWRl6EnQAXCTAeercScOkxEY=;
 b=ryBSdqRbuCvpv5NrRu0q6O/sLmFf/dVPFla1hRdRCyiyxsOsWPOa8eHnw2qY6nucNAo4QuSQnmmYiR28JCscTJmxDfcMGNItoE1K8cY4fW1WxRScyI1CkE3Fe9LHPbD6Bv7NG6bg7H7OGGFa5ppDZqjdCIlVPOg478/5sc7VMao=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=yash.shah@sifive.com; 
Received: from CH2PR13MB3368.namprd13.prod.outlook.com (52.132.246.90) by
 CH2PR13MB3765.namprd13.prod.outlook.com (20.180.15.150) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2644.6; Fri, 17 Jan 2020 07:44:03 +0000
Received: from CH2PR13MB3368.namprd13.prod.outlook.com
 ([fe80::eccb:16ac:e897:85d5]) by CH2PR13MB3368.namprd13.prod.outlook.com
 ([fe80::eccb:16ac:e897:85d5%3]) with mapi id 15.20.2644.021; Fri, 17 Jan 2020
 07:44:03 +0000
From: Yash Shah <yash.shah@sifive.com>
To: paul.walmsley@sifive.com,
	palmer@dabbelt.com
Subject: [PATCH v4 0/2] cacheinfo support to read no. of L2 cache ways enabled
Date: Fri, 17 Jan 2020 13:13:36 +0530
Message-Id: <1579247018-6720-1-git-send-email-yash.shah@sifive.com>
X-Mailer: git-send-email 2.7.4
Content-Type: text/plain
X-ClientProxiedBy: BM1PR0101CA0056.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:b00:19::18) To CH2PR13MB3368.namprd13.prod.outlook.com
 (2603:10b6:610:2c::26)
MIME-Version: 1.0
Received: from dhananjayk-PowerEdge-R620.open-silicon.com (114.143.65.226) by
 BM1PR0101CA0056.INDPRD01.PROD.OUTLOOK.COM (2603:1096:b00:19::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.20.2644.19 via Frontend
 Transport; Fri, 17 Jan 2020 07:43:59 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [114.143.65.226]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 2d7090a3-fe10-41eb-984c-08d79b2105ce
X-MS-TrafficTypeDiagnostic: CH2PR13MB3765:
X-LD-Processed: 22f88e9d-ae0d-4ed9-b984-cdc9be1529f1,ExtAddr
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <CH2PR13MB376525E3AA3D839E23FA10DD8C310@CH2PR13MB3765.namprd13.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-Forefront-PRVS: 0285201563
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(346002)(136003)(39850400004)(366004)(396003)(376002)(189003)(199004)(6512007)(2616005)(107886003)(316002)(956004)(5660300002)(52116002)(36756003)(16526019)(1006002)(6666004)(26005)(66476007)(66946007)(66556008)(186003)(966005)(6486002)(86362001)(8936002)(6506007)(44832011)(8676002)(81156014)(81166006)(4326008)(478600001)(7416002)(2906002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR13MB3765;
 H:CH2PR13MB3368.namprd13.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
Received-SPF: None (protection.outlook.com: sifive.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 1GgEoWgoop3FGJbUiDnlG+7BawdWqoHOvb2q/Jc8TE3yxTaiUjol03LpxnrU5rsPrU5W7HA/YufZa/oi1LFrCzOf+Er9qHWJ0VwDhF+5QRUzsOVXD2O2awWpiHtTWafqDAPNSFA8LVRjBrW/Ha+YB2LcBYOOEfF7vxo9ZlxwKKp+imV5X+jyqgYfNSsidXOUtKk9SERiRVfBSu+BagCZ7mv/EampSnrVcrR7O+NegHB0Qx3sO+3nx1BQLyQjTqHAvXrjSTsZQsC6PRnvxDyZ/xEQloKuHUmtTfspHz1GnbVTuvJ1xUU3vByJP+lILwmAxdCG6Al1o+L/dUl1pycGs9Ne8NkL708ETgbx7V4ssuis7vndibTm4z0YT1auBHi+z6HhSIrwStk9YM+4AtXosHvs7vWgmXmAI6C9PW/OpabaXCJQ31BNDh7VPde/m8Uj2Z7XDcPaqkBXvgQSxMd8Wz38A4DygmpQqbuL73i320Y=
X-OriginatorOrg: sifive.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2d7090a3-fe10-41eb-984c-08d79b2105ce
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Jan 2020 07:44:03.1615 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 22f88e9d-ae0d-4ed9-b984-cdc9be1529f1
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: yBcKrqmJO+KbCuGJLPjQAZIbV+PzYyb4vyE2LW+xcl3wVBGUPHBQO/R5I+EnBj4LMpYgJ+okHtN6RTMQLfKsgA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR13MB3765
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_234408_917325_EEE5C563 
X-CRM114-Status: UNSURE (   8.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.223.46 listed in list.dnswl.org]
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
Cc: aou@eecs.berkeley.edu, sachin.ghadi@sifive.com, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, alexios.zavras@intel.com,
 Yash Shah <yash.shah@sifive.com>, anup@brainfault.org, tglx@linutronix.de,
 bp@suse.de, linux-riscv@lists.infradead.org, allison@lohutok.net
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

The patchset includes 2 patches. Patch 1 implements cache_get_priv_group
which make use of a generic ops structure to return a private attribute
group for custom cacheinfo. Patch 2 implements a private attribute named
"number_of_ways_enabled" in the cacheinfo framework. Reading this
attribute returns the number of L2 cache ways enabled at runtime,

This patchset is based on Linux v5.5-rc6 and tested on HiFive Unleashed
board.

v4 vs v3:
- Rename "sifive_l2_largest_wayenabled" to "l2_largest_wayenabled" and
  make it a static function

v3 vs v2:
- As per Anup Patel's suggestion[0], implement a new approach which uses
  generic ops structure. Hence addition of patch 1 to this series and
  corresponding changes to patch 2.
- Dropped "riscv: dts: Add DT support for SiFive L2 cache controller"
  patch since it is already merged
- Rebased on Linux v5.5-rc6

Changes in v2:
- Rebase the series on v5.5-rc3
- Remove the reserved-memory node from DT

[0]: https://lore.kernel.org/linux-riscv/CAAhSdy0CXde5s_ya=4YvmA4UQ5f5gLU-Z_FaOr8LPni+s_615Q@mail.gmail.com/

Yash Shah (2):
  riscv: cacheinfo: Implement cache_get_priv_group with a generic ops
    structure
  riscv: Add support to determine no. of L2 cache way enabled

 arch/riscv/include/asm/cacheinfo.h   | 15 ++++++++++++++
 arch/riscv/kernel/cacheinfo.c        | 17 ++++++++++++++++
 drivers/soc/sifive/sifive_l2_cache.c | 38 ++++++++++++++++++++++++++++++++++++
 3 files changed, 70 insertions(+)
 create mode 100644 arch/riscv/include/asm/cacheinfo.h

-- 
2.7.4


