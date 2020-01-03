Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 114A812F3CA
	for <lists+linux-riscv@lfdr.de>; Fri,  3 Jan 2020 05:14:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Type:Message-Id:Date:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=gnUyZxf21pTXDbhbFq6hPBwVzqAmqnWJkAmySXJP/yA=; b=bk3
	kJUMhiPRbOseHJyK6OCho8dmVNDxBk1jy00GRNzb14tWv9l90Y+IRi5e0ikw/c5hBjIVV7iWCIu2S
	sU6f6DtuEki2nOqUt+7PgvhYXOW8tIfhN39uXrmM6A333RcZ3PT8dtN/zXLnyMa23Z/U5aZphYygy
	tgvlGOtg9fT7i3rCDToqOeujUZi2rlKOkOLjkpQ8dqS3yFk1aW7EQ68TV6VxaU9LvMndtDgpqr6IY
	5qPpqVJKK8nvaUCxOSgIyi+rsz1KT/fkxrqLymxqoZ0dab+H3prs7EA8yq5mRjyaRMTQ1UICxfKf7
	TqWmwqbhE8SAGszQTCYrix7/PLsRUyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inELP-0002TJ-3t; Fri, 03 Jan 2020 04:13:51 +0000
Received: from mail-mw2nam12on2057.outbound.protection.outlook.com
 ([40.107.244.57] helo=NAM12-MW2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inELM-0002SK-2J
 for linux-riscv@lists.infradead.org; Fri, 03 Jan 2020 04:13:49 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=b/7o3GRkxdrPoYCV/lTOXzNXhPFpxr6FdTcJRydNv2fXBCduCzCnPxMcC+IGokARN/mz2FgQiFH/vJwuOQuAo4/DZvL9mEy5YBDjvdxo+mcTiQwZx5ga5bq5a9fY+Mzu+fjsiHsUOax3bDXydIwRvf9e+Biyxifjn/RwVLu3ayprgu/cMIYgawEFK01YwD0WviwuBcFvOYpGJkRJdJ9xnvvB1SrGSrxSKF5jsgM+Xmr3+RL8gyMrCh9REHvuoUGpaIaFEvw4kDOPa4d4Cwvk7q+UvukNdMGE5ysRI6YNdK5V/pSJuW898Q43J5sAq+owz5dg0QtkdEjIa4p/JGpQQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gnUyZxf21pTXDbhbFq6hPBwVzqAmqnWJkAmySXJP/yA=;
 b=j/0Lif8k55CRMGKaoCfeBwW1hmpsTJwgln36Uq4j7bDq769XSfNtbTWk4nCfIzfwbsKT3A+/KqxaSZ/5jdzHWV7zLzdpB5zaICZb6QyNFahCNm0MCkH33orK75GfpXMueKJLEd5j6R6IkACYhG4Fao2yDupJDwSN1uN9/Gt2OQGpnCn9trvYzoDbGlgZlquG2leuTrnoCXAtOMyfArQ6oF/yjD25C4yGtr/U50XyarOv9OB/F4MDnWY5gpu+cGSTTd/zuYdyB4AAvmy8kCHVuoGmukFB0ZbkgbDlPhDT/asQf295HO/1wEOD8uO7Y5WhucL1ukc8rUKDYGMVsuxYKA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=sifive.com; dmarc=pass action=none header.from=sifive.com;
 dkim=pass header.d=sifive.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gnUyZxf21pTXDbhbFq6hPBwVzqAmqnWJkAmySXJP/yA=;
 b=HyvnAvTyKTnRAxYq5xUDc1eti5XAuXzJ4uywMTvapjp44jMIwthUgO5pgG0dgXRWIgVWBpP+SuiFUFtCBqAs+ngy17IbEAhRHqyL35tgXiLHbDMW5fTozI63hOH5R1OL5B8RNMbV9W/wl+znyGPJYPrz0+pGuK8sJE3LUz2qTHI=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=yash.shah@sifive.com; 
Received: from CH2PR13MB3368.namprd13.prod.outlook.com (52.132.246.90) by
 CH2PR13MB3799.namprd13.prod.outlook.com (20.180.12.212) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2623.4; Fri, 3 Jan 2020 04:13:43 +0000
Received: from CH2PR13MB3368.namprd13.prod.outlook.com
 ([fe80::eccb:16ac:e897:85d5]) by CH2PR13MB3368.namprd13.prod.outlook.com
 ([fe80::eccb:16ac:e897:85d5%3]) with mapi id 15.20.2602.012; Fri, 3 Jan 2020
 04:13:42 +0000
From: Yash Shah <yash.shah@sifive.com>
To: robh+dt@kernel.org, mark.rutland@arm.com, paul.walmsley@sifive.com,
 palmer@dabbelt.com
Subject: [PATCH v2 0/2] L2 ccache DT and cacheinfo support to read no. of L2
 cache ways enabled
Date: Fri,  3 Jan 2020 09:43:19 +0530
Message-Id: <1578024801-39039-1-git-send-email-yash.shah@sifive.com>
X-Mailer: git-send-email 2.7.4
Content-Type: text/plain
X-ClientProxiedBy: BM1PR0101CA0043.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:b00:1a::29) To CH2PR13MB3368.namprd13.prod.outlook.com
 (2603:10b6:610:2c::26)
MIME-Version: 1.0
Received: from dhananjayk-PowerEdge-R620.open-silicon.com (114.143.65.226) by
 BM1PR0101CA0043.INDPRD01.PROD.OUTLOOK.COM (2603:1096:b00:1a::29) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.20.2602.12 via Frontend
 Transport; Fri, 3 Jan 2020 04:13:37 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [114.143.65.226]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: e74f147d-eb60-4aad-2f82-08d790035175
X-MS-TrafficTypeDiagnostic: CH2PR13MB3799:
X-LD-Processed: 22f88e9d-ae0d-4ed9-b984-cdc9be1529f1,ExtAddr
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <CH2PR13MB37992115458293098E2A5F578C230@CH2PR13MB3799.namprd13.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-Forefront-PRVS: 0271483E06
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(39840400004)(346002)(396003)(366004)(376002)(136003)(189003)(199004)(6666004)(36756003)(1006002)(66946007)(66476007)(66556008)(107886003)(44832011)(4744005)(52116002)(7416002)(4326008)(2906002)(6506007)(86362001)(81156014)(81166006)(8936002)(6486002)(2616005)(26005)(8676002)(16526019)(186003)(478600001)(316002)(6512007)(956004)(5660300002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR13MB3799;
 H:CH2PR13MB3368.namprd13.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
Received-SPF: None (protection.outlook.com: sifive.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: x27SO/YN/D1Jys8B7AnTZ44KSVH1C+1Hhx6siSHkgWju+QJ9jWM6IcH+qL5FZLEdEycol1Sgg/7xxXYKAswaMWcHSTVz5xdAwx9bdTPR+EAR9frluU4mYzQCegE+/CRbY258rXoeTh2bSNwYypJtK+RFuZkjtL+KckYZjeM/sSsS3r8m4aPaP4sBYaI3jo3vikZ8hex7cqSRZ/jjKHjWP2R4ISvrtt3wu26idOtCQNpAmX5FYxdLsW5p3T1wEQj49davMCsYJOqWiDWOXyuQHPQoTdYILlKBq3Ra2mws+NgqdKOO3IRdNLnl97U8MVz78mflKK6bLWHb1IkQ6yKY/8ttSCBStnerJHTW77JWkyTIT1jPnViFuq4ChQ4QYN5v/Z+CGWPl1fpZZWkkbQqseuwWN4hLlJAoLlaM4GfQRQVkZmorggxjCXDq8n7fPI6l
X-OriginatorOrg: sifive.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e74f147d-eb60-4aad-2f82-08d790035175
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Jan 2020 04:13:42.6548 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 22f88e9d-ae0d-4ed9-b984-cdc9be1529f1
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +BOsII4CpAy71CVXIXhoe76S7ngdxw/SUSC9naQBkU/iQnNTmE4gAQLyvcs3jzbijwiihqw3pwIupyA35CM5hA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR13MB3799
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200102_201348_296155_515650F9 
X-CRM114-Status: UNSURE (   6.24  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.244.57 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

The patchset includes the patch to implement a private attribute named
"number_of_ways_enabled" in the cacheinfo framework. Reading this
attribute returns the number of L2 cache ways enabled at runtime,
The patchset also include the patch to add DT node for SiFive L2 cache
controller.

This patchset is based on Linux v5.5-rc3 and tested on HiFive Unleashed
board.

Changes in v2:
- Rebase the series on v5.5-rc3
- Remove the reserved-memory node from DT

Yash Shah (2):
  riscv: dts: Add DT support for SiFive L2 cache controller
  riscv: cacheinfo: Add support to determine no. of L2 cache way enabled

 arch/riscv/boot/dts/sifive/fu540-c000.dtsi | 15 +++++++++++++++
 arch/riscv/include/asm/sifive_l2_cache.h   |  2 ++
 arch/riscv/kernel/cacheinfo.c              | 31 ++++++++++++++++++++++++++++++
 drivers/soc/sifive/sifive_l2_cache.c       |  5 +++++
 4 files changed, 53 insertions(+)

-- 
2.7.4


