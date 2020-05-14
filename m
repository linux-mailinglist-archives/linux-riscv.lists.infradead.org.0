Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CE571D2ECF
	for <lists+linux-riscv@lfdr.de>; Thu, 14 May 2020 13:51:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Type:Message-Id:Date:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=ogKgRo1XCrzxS2vzAySQlYxO6v6ZmdLNFqo68ab5OJQ=; b=NHO
	kJ8QlCd3ttNx2lYWpukLocGQO0buZJZQ2IKr+7TgAdRIOvMl1/Tl+XgaV0EG+83cOuOCUo4DZQqNU
	8zFEk/p4l2BJDJRIH54Ul5ZJ2FSm7fbWWJzS9SMi26n1OVHpjRcY5GgfIlQ3xplnh7gtgYzkSvJ68
	THU8AQc5jra4T1J2wfDrSgj5uWURYfmrU++Kam+LFfoT6mD7P69Adk+v1NGHF7hkjw7ItnnZylD4K
	Pnb9xhZvE1CblD7p1cGWZ2NzW5+aoJYgJ52BBj9AHG+SSce9Nn6uuC/t5lsiUXGBYcnjew9ZExIoN
	Su6G/jB0ALtFMU+RaI5OijWzRf77Rew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZCOp-0005zL-On; Thu, 14 May 2020 11:51:39 +0000
Received: from mail-bn8nam11on2083.outbound.protection.outlook.com
 ([40.107.236.83] helo=NAM11-BN8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZCOf-0005uH-8h; Thu, 14 May 2020 11:51:31 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cwdDURWcfMtJR/S41gP4v/Q4Dti3fTtMXWKSCk9uOoZX9OZoxOr00gFupJV2Ms8X0gs/2PambpppHsK6S9SukpBjrao5+TTeVGuN6HC464gpqvdxu+b0LJwevbv/wwduxGi35HQTJ8ywRe2KhCzd7mFgMAylfjmPXa4/qIlONmlJW0IMUn6T7fxhguGxmCYZoN0rxHA9bAkDZOXwz/z9ZuXICaGZfSwJHUPh47hClqCnV4UBJ2BWpjtCw9dIKHuHfyWe/r7GP7A/D0Q2ZXWolXHCMY1aOUWkA1Co7ht8ZmvL4bZVQo4uNjJG2MwwVrcRqfCI2On9WVWRxY6GPqLolA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ogKgRo1XCrzxS2vzAySQlYxO6v6ZmdLNFqo68ab5OJQ=;
 b=FAetFtp9mdXeqArmniDfbnyJsirQwC8UWKBXwl2/mN7piNsd4hwSxAp79x0ashQWorE5fsMgas8Nw1arDr/ER38v//YM8V0Tdgb7TvdapyYh/6sThDt/AKEahHM1vvMRdNdDcpQVm31u7BuC6q/wadjZ2zqAhqumKJZTU7DRmFF5TJgdIAHnhyF5L0wzjWjqudVJsGZip7a0/Q2jEaPW9e+IgjPSTK3eYUnmNsUGZSa6hKEbta04V4CPlsTLLIcmThaDeYHr5sYmcMfWYYa5N+uwQKjb0NIrhK6XxaGnl1DxckOhN6J3QMKid0WAzSoZZYJNtZ70zw6pmG0y8l4CkA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=sifive.com; dmarc=pass action=none header.from=sifive.com;
 dkim=pass header.d=sifive.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ogKgRo1XCrzxS2vzAySQlYxO6v6ZmdLNFqo68ab5OJQ=;
 b=Ke2x+OxHnYthSk5rGwdkTbsA4QJstj+lkl6CahnYvmalC3FmfQRPEAYl0BQf6F6OxW+NIkQ2YuIe2zRFy359D5RKo9dB+gAKH/H0Ha0hAZmn8ix6CIiM2WDNLbp2JaHpdXtdGu3qNuSbN292HNjv+r/Oqz0N76NoON5abuy4Ol0=
Authentication-Results: lists.infradead.org; dkim=none (message not signed)
 header.d=none;lists.infradead.org; dmarc=none action=none
 header.from=sifive.com;
Received: from BYAPR13MB2614.namprd13.prod.outlook.com (2603:10b6:a03:b4::12)
 by BYAPR13MB2469.namprd13.prod.outlook.com (2603:10b6:a02:ca::28)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2958.14; Thu, 14 May
 2020 11:51:25 +0000
Received: from BYAPR13MB2614.namprd13.prod.outlook.com
 ([fe80::c0fc:30a3:5e5f:c2b6]) by BYAPR13MB2614.namprd13.prod.outlook.com
 ([fe80::c0fc:30a3:5e5f:c2b6%7]) with mapi id 15.20.3000.013; Thu, 14 May 2020
 11:51:24 +0000
From: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
To: linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-mtd@lists.infradead.org, tudor.ambarus@microchip.com,
 miquel.raynal@bootlin.com, richard@nod.at, vigneshr@ti.com
Subject: [PATCH v1 0/2] update is25wp256d page write capabilities  
Date: Thu, 14 May 2020 04:50:49 -0700
Message-Id: <1589457051-5410-1-git-send-email-sagar.kadam@sifive.com>
X-Mailer: git-send-email 2.7.4
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
 Transport; Thu, 14 May 2020 11:51:24 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [64.62.193.194]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: c0bdc88b-2212-414f-b6fa-08d7f7fd20c1
X-MS-TrafficTypeDiagnostic: BYAPR13MB2469:
X-LD-Processed: 22f88e9d-ae0d-4ed9-b984-cdc9be1529f1,ExtAddr
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <BYAPR13MB246965214D5440AE398507A399BC0@BYAPR13MB2469.namprd13.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7691;
X-Forefront-PRVS: 040359335D
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 3gaW9zEuA3g246S9Q7WEk1YGGMuFAL3ETeMxfuYLhds9VMjb9K9ztO2S3LNbuN8yoJtFZwm5rSQlk5bPHX0Wkx0vxb9NOgfHHnml6JzlDfMWN3qqlc6fynwGaZbqUl0jAHj7enjpdJtw1tqhNMzb3SVyV+O/kqKn5TZ3GJ71GQQhL1cqrSN+Bv30MSOn1Jvf9Ibr3YR0JDMRz8xjcQNQIi7OjvREXhTyIy2NIF11cRIUDeDSzojDtfMhh6qxQpThmMEHYV2GK4o3+YxNQZMNvEdqZC//s7yy5cXiUvWBKxGDp8lMuFxrYoteoOLsQzeYxMKQBpe1jLQ4djPq82vvwhgnQEl2zS/zK4j7iI2AwOS43eK5jUQvVTd5Al6jo0TLA5pxlUV0OsbmS8zsGLKSZLL5t4MbEWB33lnm40HB9EB/Nc2Uv9pJeHQvjBXEVQhx
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR13MB2614.namprd13.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(366004)(396003)(39850400004)(376002)(346002)(136003)(8936002)(186003)(4326008)(16526019)(4744005)(2906002)(5660300002)(15650500001)(107886003)(26005)(66946007)(8676002)(7416002)(6666004)(478600001)(2616005)(956004)(66476007)(52116002)(7696005)(86362001)(36756003)(66556008)(6486002)(316002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: A5I/wTLpOJSWcoT7l5VSGJ/SKIuAr77R3c7ZAIMRbCkQzd6Ow+2Q5hzOU7nbHhWz1FkAqos/uRpD8I/kAXflApPuQ+vhTEFSuBe1kfqPbDhTODt66LMgr3PpULjoDIVNMEoudHKq02cnhr0ZBfaMbMBY3e+gUY1EBxtRF0DtVtn4ADjm3OkHMOemm1QOBwHjwcVTxSIEcXrneW/YvlQQBzRbtvNcQRkg3vOwkupUkItmRCjMC3tlTI1+4XRExFps0DjuLUVeYRr/7zDFDApZFR/QgexPBZzM+2cCDiJfJM96Y5iGqJJA+8Sq+rdvsHBS/wMHEySSR8qAqRtnfmx6yEYsPOh0EiOLCPl1L3idlPS+8xXA+COGE17j/zyVmIMo1hlWRe5M+RbLOBuZkLlyr3b2lsXVOxdJF0ILAtK3oNBwn3TCxhefAmfJhnyultsf6H/c8XNAiPLfAEyvLlQFy/pBab1PmuNhtKOTmCBwADY=
X-OriginatorOrg: sifive.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c0bdc88b-2212-414f-b6fa-08d7f7fd20c1
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 May 2020 11:51:24.7535 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 22f88e9d-ae0d-4ed9-b984-cdc9be1529f1
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: smQeG0auJXxFL5wmZuf7b52Fq+xaa5Ar1tf6UGMykWy8JIHxIbIoSaSwJn1M2n1o4ctTGeDARbe1wQ5l2D3Q0g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR13MB2469
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_045129_387026_50C87605 
X-CRM114-Status: UNSURE (   5.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.236.83 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.236.83 listed in wl.mailspike.net]
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

HiFive Unleashed A00 board has is25wp256d snor chip. It is observed
that it gets configured with Serial Input Page program by the end
of spi_nor_scan. Using the post bfpt fixup hook we prioritize the
page program settings to use quad input page program (opcode:0x34)
over serial input page program (opcode: 0x12).

The patchset is tested on Linux 5.7.0-rc5.

Changelog:
===============================
V1:
-Moved SPI_SIFIVE from defconfig to Kconfig.socs for SOC_SIFIVE.
 Retained it's configurability using "imply" instead of "select"

V0: Base version patch (Tested on 5.7.0-rc3).



Sagar Shrikant Kadam (2):
  riscv: defconfig: enable spi nor on Hifive Unleashed A00 board.
  spi: nor: update page program settings for is25wp256 using post bfpt
    fixup

 arch/riscv/Kconfig.socs      |  1 +
 arch/riscv/configs/defconfig |  3 ++-
 drivers/mtd/spi-nor/issi.c   | 16 ++++++++++++++++
 3 files changed, 19 insertions(+), 1 deletion(-)

-- 
2.7.4


