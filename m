Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84D3B1656A4
	for <lists+linux-riscv@lfdr.de>; Thu, 20 Feb 2020 06:15:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Type:Message-Id:Date:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=G0QdYbW9hQZiaX1B2N+bNv9XwqGcFsZKNFsxULV2KXA=; b=LDg
	BYGUhZCKZz2JAz3ULsnLy+2AgaldTEqIwFHsYgUI1uD88n8y5zu5rY79UyyBZCDHcCrSIDNjLxbnm
	fmmB3e7YQbOtzD6uZZqIL885IGxgCgQA3zH5tHMcTMapjhSwv6aVw/TH3VqyqGDDNmibul+CcdLHc
	DrdOJLaAAvyb8LlEs++cnSq6ukrbw+TsJSDkmrqr7SWWz0K4lT6yMKtLj9Uj7CXMwjJH62M7Kqkia
	JGXKYHkZ3pWJAzTa1ovouTH7SopV6GLLmDEk/uCUJ7ZTrrWXQRAo53Vs8qMzXN869i1hhvozxou6H
	IYGPLZuNhNxGsuBQP3s03NpckLh6lQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4eBj-0006m0-5e; Thu, 20 Feb 2020 05:15:51 +0000
Received: from mail-bn8nam11on2052.outbound.protection.outlook.com
 ([40.107.236.52] helo=NAM11-BN8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4eBf-0006lQ-Cf
 for linux-riscv@lists.infradead.org; Thu, 20 Feb 2020 05:15:48 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=e8zSVlQV5jDuWxKDpWEZfD88YM+MvCqxN7LubsPdbY743hWXVBnd5BoAR/Ef1GXbDcgLeRttvylwV0b8hoZQmoUZx1D5ltv4ZtIh36k2C1JUEQFT+sAHc35sJSnnsediYIN9Cxprhaom4G6IN+a3rDULYncPRR9qDAIQ3vUmBVwMtJ5NVA4Z6/I4zMA2lCCwKbcHh4UJwDcofykGzCvIa/uQTaUxtzWfqlyCI16CqQ7sTCKae/fVK3ycqZ55S3TXAawRyPoQds9YDFXMG5UwxudBjNla9nPhHaYjoL09SIaK+kvDI5UYPh11yHnTJC2hbhX0Ky0fJtkdATKrMK2PSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=G0QdYbW9hQZiaX1B2N+bNv9XwqGcFsZKNFsxULV2KXA=;
 b=RRjJn4ZQHhEdNQy9KyEsssjpzED85+P2gtJ+SY22P9R/QZuRtHVEHIbtXNhbd2+Ja2cIAQv78CP7yB6AH5qPMSpQHYfi72yKRZjlWohcNgPMj/waGucFgNttY5g5Gmg6x9G2ZvDJKPKbeOMsHJNWdWwvGu3e0tcrS39n2R8tIo/gEi+H0eB4HAwJWIPxfceiKG0sGnth9518Oi2Kcz4B4URFRvBLlFVyxgWo8TdIA3qtnN/oUvCawxYXdgqmS18EMUsKighOco1C8jN+lc718wdyQ2O8mcFQPvZtfeciD1zThapN7qJBx9i+9hza7gLYkGmdVLHOPkOZ1+3NcKriag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=sifive.com; dmarc=pass action=none header.from=sifive.com;
 dkim=pass header.d=sifive.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=G0QdYbW9hQZiaX1B2N+bNv9XwqGcFsZKNFsxULV2KXA=;
 b=Br3pVW4CcQ5R7JdhFlc3DkI0fh2yRPDJpFzSwOQSLiIdvbKkjl+NhZv4MMG/JaWXKFlvESfx3JzJuhZ3sFOukFP9cC53D4GcdkXHBWsJ9HjE2M0RjSIpreI0hWlQ6vxchxmvkGn143HmpVBeKtwsvTAzBM3Ihxccvj139lYqEwc=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=yash.shah@sifive.com; 
Received: from CH2PR13MB3368.namprd13.prod.outlook.com (52.132.246.90) by
 CH2PR13MB3495.namprd13.prod.outlook.com (52.132.247.74) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2750.9; Thu, 20 Feb 2020 05:15:42 +0000
Received: from CH2PR13MB3368.namprd13.prod.outlook.com
 ([fe80::55a5:5dab:67de:b5d8]) by CH2PR13MB3368.namprd13.prod.outlook.com
 ([fe80::55a5:5dab:67de:b5d8%5]) with mapi id 15.20.2750.016; Thu, 20 Feb 2020
 05:15:42 +0000
From: Yash Shah <yash.shah@sifive.com>
To: palmer@dabbelt.com,
	paul.walmsley@sifive.com
Subject: [PATCH v5 0/2] cacheinfo support to read no. of L2 cache ways enabled
Date: Thu, 20 Feb 2020 10:45:17 +0530
Message-Id: <1582175719-7401-1-git-send-email-yash.shah@sifive.com>
X-Mailer: git-send-email 2.7.4
Content-Type: text/plain
X-ClientProxiedBy: PN1PR01CA0086.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c00:1::26) To CH2PR13MB3368.namprd13.prod.outlook.com
 (2603:10b6:610:2c::26)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from osubuntu003.open-silicon.com (159.117.144.156) by
 PN1PR01CA0086.INDPRD01.PROD.OUTLOOK.COM (2603:1096:c00:1::26) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2750.17 via Frontend Transport; Thu, 20 Feb 2020 05:15:39 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [159.117.144.156]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 8eaa0bd8-7cae-4580-2af1-08d7b5c3eea8
X-MS-TrafficTypeDiagnostic: CH2PR13MB3495:
X-LD-Processed: 22f88e9d-ae0d-4ed9-b984-cdc9be1529f1,ExtAddr
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <CH2PR13MB3495F3AE00D5CDC1A2FAD7C88C130@CH2PR13MB3495.namprd13.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-Forefront-PRVS: 031996B7EF
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(346002)(39830400003)(136003)(396003)(376002)(366004)(199004)(189003)(4326008)(8936002)(316002)(81166006)(8676002)(5660300002)(6486002)(81156014)(52116002)(107886003)(6506007)(66946007)(2616005)(16526019)(6512007)(956004)(478600001)(2906002)(6636002)(66556008)(86362001)(186003)(6666004)(36756003)(66476007)(44832011)(966005)(26005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR13MB3495;
 H:CH2PR13MB3368.namprd13.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
Received-SPF: None (protection.outlook.com: sifive.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 9MZCh2RMhMermJbZjla7pbW8WVzLUzfdOoJPPfTfKoLjdDzPGhg4bqrts2nEKXFGBY67Ykn7kESSwru4ojAqFoUXJ0ONpSoKSrKa29FIl7jkfUhdM2c9tJ6CDHnLPni+2fC0VJW1dQYrdTsganLEPA0eKU0gnH+NeR9Q/APRV+4TaH7JE8s64ackGbQPykPOFcdq0u8ckDVilvoIfGslP8YZned7b01iFcHt6eEUMj6ggObM8kDJ1u7rH1vw4hNxGmblpF3VA4aCvTyTI1dgIRSE9uDLf95dggW4lx61u9CPcJU3snLsZzf+wDhN0vHSTVO7IJo3c5HZ9ouKZemjYRYc6uJE7vl1InXmU4q3ZzzyXrkr9rpzGNBxHlFTNt37F92s5PjE8h9QSrxSUDpXSHSj0Xu8i4BDfmey5ji/aYHhnzjo9+0Zf1mn4ynMoPmFmsftPdKEtwqaKNwOstptwCY69nircSZNiWV9iCQcvyNyMf93oShK72G1tksCSdbRyC913UnHsO6Ry8/7U6JnqA==
X-MS-Exchange-AntiSpam-MessageData: JPaCU8yf5lRn69ji8JuJk3hGkCLv6YyBEKP/IwPUQGmvBH/blsWDu5x789o93s7yVAMd6cpXs6BpjkCFBY9e//OWPu+zCmupYqDQScGhU6RkXOeOIj4tPFN8Fs+Ic/SMGv6+CSq6rWvxOReU87StdQ==
X-OriginatorOrg: sifive.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8eaa0bd8-7cae-4580-2af1-08d7b5c3eea8
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Feb 2020 05:15:42.5761 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 22f88e9d-ae0d-4ed9-b984-cdc9be1529f1
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: oaRQgNs7ysEzi17CPkUIyr9VZ8z9oBAsQKJXYrIPqauIQLpqvLir6sxhYvxIP6xOmpAL49ZH1PRK7qGUOUsLiw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR13MB3495
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_211547_467341_480E6148 
X-CRM114-Status: UNSURE (   7.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.236.52 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: aou@eecs.berkeley.edu, sachin.ghadi@sifive.com, anup@brainfault.org,
 linux-kernel@vger.kernel.org, alexios.zavras@intel.com,
 Yash Shah <yash.shah@sifive.com>, gregkh@linuxfoundation.org,
 tglx@linutronix.de, bp@suse.de, linux-riscv@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

The patchset includes 2 patches. Patch 1 implements cache_get_priv_group
which make use of a generic ops structure to return a private attribute
group for custom cacheinfo. Patch 2 implements a private attribute named
"number_of_ways_enabled" in the cacheinfo framework. Reading this
attribute returns the number of L2 cache ways enabled at runtime,

This patchset is based on Linux v5.6-rc2 and tested on HiFive Unleashed
board.

v5:
- Since WayEnable is 8bits, mask out and return only the last 8 bit in
  l2_largest_wayenabled()
- Rebased on Linux v5.6-rc2

v4:
- Rename "sifive_l2_largest_wayenabled" to "l2_largest_wayenabled" and
  make it a static function

v3:
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


