Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5C21138BE0
	for <lists+linux-riscv@lfdr.de>; Mon, 13 Jan 2020 07:39:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Type:Message-Id:Date:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=ZqOIirRI0cZBJAG6vheFx55TC+0TTtAeku5hlq/OSZg=; b=oBA
	sBP9nMj3D2hZw83tb3nsx9n1TCY+UHxt3yyQ9sG/KvyMa/YSIRT5uUlPWk3GDSDNSuZ43bqgUJHhb
	EnoEiogiykpmKhgtpYjJBjMQIlRVpNPdQnE7RIykVy0lZDHW0bU+oP3HSRMUimw5qf3glTX5B/fPJ
	5NoHlmj2ulg74lysWVWaKafWG4zRZFK4j20eLXup9qQHvXtsOGtpfpKmWe6+bNyDIu0ImX8dM3AZx
	jN8Y/DGoL22pexxzb+8pfvVhQCx20dEhKwKSGujYyOC0rkpC/Kz3jcdgAln2CY0FZ/XZzKsvcP2Rx
	GhyZeuGE8rK7bgcgfqDozzT398hffPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqtNQ-0002o6-SQ; Mon, 13 Jan 2020 06:39:04 +0000
Received: from mail-co1nam11on2063.outbound.protection.outlook.com
 ([40.107.220.63] helo=NAM11-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqtNM-0002n3-N7
 for linux-riscv@lists.infradead.org; Mon, 13 Jan 2020 06:39:02 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=R4L4xROtbbbKyrT2gCvzY7jx7uOtUwjwfJ1sIgwYwesRXl9M/Po29oQUefp3vL4YwR6zQOo4g8mgxD5/NAVJr+XPLjgXgl0YRkAqSzIyOK7C+Q31Yn4uiFzJNgGrAKrdMKKLwQ4zMTCZLzSRvofYF1FmyI5jf/fmdjWP5jtxfRs1AD8FhgGe4gaSprNveejavZTQEO1PofCUQiZiRYQAw0PPphrT8vw7+0Qjpxq+DrM8Uw1+V38iremHfHw4QCqrhXX0ZLF7lVku/iZXd9I+uaxjUbhR25g1xzLrcb7VWDlg69pPxsBIYE7QI6Bidc8c9KqGj+gFkprt6SoCFghPQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZqOIirRI0cZBJAG6vheFx55TC+0TTtAeku5hlq/OSZg=;
 b=CXOq0jRViSu1rP4CPeJnakUaBPZP5eOruS4S20WuLD/VB97MCEhv8Fz6warWERXuiDHb8Kiw5akmqSLxe3cGTzygg+hdsIwaRW0wQojAfm07OQGZfE7DVFv5lVOlme+0iom5FvpzPCTJy0fJaRRUktlMLzbdYU82mPDDiH1OWzYs6U93pNqRfTBBZuy8uyBVza62BbJCdlE0wMGbR8PZrbniCEhcve1uOVKPbFugedylrnUPSSz5JgE1oDhBDBxHWtUXN/g/qfdtjgc0XY86kSmCTfF6/J72SUT/hkwOHT/KZV5sHl5KstfwmHPDYATptR/IXSQiWtDsXymH5c7pKw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=sifive.com; dmarc=pass action=none header.from=sifive.com;
 dkim=pass header.d=sifive.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZqOIirRI0cZBJAG6vheFx55TC+0TTtAeku5hlq/OSZg=;
 b=PkAvDVltjWc6ZD+BOfAMXVLjh/ByekWj+Kah+V/oQsQPlICBOhIo5uAH0xUXh6MUS6O/FmBe5qFvawHScyn9aso8dZnsRv7qdYrMbHYb09FH58THSqs9kGQrAPr4hEDUxFILYUAPIwt9VhDeWLVSAaelJBCURmSIVcfhajAhLBw=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=yash.shah@sifive.com; 
Received: from CH2PR13MB3368.namprd13.prod.outlook.com (52.132.246.90) by
 CH2PR13MB3317.namprd13.prod.outlook.com (52.132.246.158) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2644.6; Mon, 13 Jan 2020 06:38:55 +0000
Received: from CH2PR13MB3368.namprd13.prod.outlook.com
 ([fe80::eccb:16ac:e897:85d5]) by CH2PR13MB3368.namprd13.prod.outlook.com
 ([fe80::eccb:16ac:e897:85d5%3]) with mapi id 15.20.2644.015; Mon, 13 Jan 2020
 06:38:55 +0000
From: Yash Shah <yash.shah@sifive.com>
To: paul.walmsley@sifive.com,
	palmer@dabbelt.com
Subject: [PATCH v3 0/2] cacheinfo support to read no. of L2 cache ways enabled
Date: Mon, 13 Jan 2020 12:08:18 +0530
Message-Id: <1578897500-23897-1-git-send-email-yash.shah@sifive.com>
X-Mailer: git-send-email 2.7.4
Content-Type: text/plain
X-ClientProxiedBy: PN1PR01CA0081.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c00:1::21) To CH2PR13MB3368.namprd13.prod.outlook.com
 (2603:10b6:610:2c::26)
MIME-Version: 1.0
Received: from dhananjayk-PowerEdge-R620.open-silicon.com (114.143.65.226) by
 PN1PR01CA0081.INDPRD01.PROD.OUTLOOK.COM (2603:1096:c00:1::21) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2623.11 via Frontend Transport; Mon, 13 Jan 2020 06:38:51 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [114.143.65.226]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: a5a3c56c-5f02-4a32-a2b5-08d797f342ef
X-MS-TrafficTypeDiagnostic: CH2PR13MB3317:
X-LD-Processed: 22f88e9d-ae0d-4ed9-b984-cdc9be1529f1,ExtAddr
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <CH2PR13MB3317B10A28D63E42601EC1C88C350@CH2PR13MB3317.namprd13.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-Forefront-PRVS: 028166BF91
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(396003)(366004)(376002)(39830400003)(136003)(346002)(189003)(199004)(66476007)(2906002)(6506007)(66556008)(66946007)(26005)(186003)(16526019)(44832011)(5660300002)(2616005)(956004)(86362001)(8936002)(36756003)(52116002)(7416002)(4326008)(6666004)(966005)(6486002)(81166006)(6512007)(316002)(8676002)(81156014)(478600001)(107886003)(1006002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR13MB3317;
 H:CH2PR13MB3368.namprd13.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
Received-SPF: None (protection.outlook.com: sifive.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: +CU7QHZr2iL7342kfz7d88TMRbQZmTJnznQRqyNDO5dtgIB8SjJe8idkulPOHnYWiyd+GaokkvQdLNvmtOlK9tHvZ1zYFuoB5/qEm/w40Pztmrs4uWcovEHcN+Ul1OkYYwDpeFx0ROq42dZWU/MLLks6tWWzJxhA3fWW8hFRym50Pg3GEcnmY8HxVa9mh+8gR4Z6UEO/LZ0JmC+sdixdfJJYYOPinEe19F+Zx8zOjrpti+BidNw54aiqXHgouXYfq67A6uRSJv+q93yn8ULPc+ku4Sz60Ph3OhPjUQYtRjdOMjENaqM5YoNAmcld1YpvgwfiTKNMw1Hl00cStKfLw3LHN1Y10gG/pou/Wn6dyGLQ3XB4aHBPRLyd8tOqvhjPykNyetPqBL5CEBXOfeaZvAW/M5Gb/Xtuj/GzoBdSP7KJTtsldX958JHdA2WkB/WJHJJLwb026hZn0Th703wYbIrXtJTAMV1XwbgNCvGGuqy5bbUXjV7hmnyWn9cF4R8aBgPvRda25QvnrZ4N01HSXg==
X-OriginatorOrg: sifive.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a5a3c56c-5f02-4a32-a2b5-08d797f342ef
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Jan 2020 06:38:55.4931 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 22f88e9d-ae0d-4ed9-b984-cdc9be1529f1
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: fZ16dDxNVcP5GSAePV7coctCFPvckxHHozeCury/L5S45WvxnM6mWYoBsw3CvXLeKmKBvhLJgwhA9LgPIIiFyg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR13MB3317
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200112_223900_866652_150D9EBE 
X-CRM114-Status: UNSURE (   7.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.220.63 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 include/soc/sifive/sifive_l2_cache.h |  2 ++
 4 files changed, 72 insertions(+)
 create mode 100644 arch/riscv/include/asm/cacheinfo.h

-- 
2.7.4


