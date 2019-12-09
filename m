Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99B37116C40
	for <lists+linux-riscv@lfdr.de>; Mon,  9 Dec 2019 12:25:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Type:Message-Id:Date:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=KSLeYpcm3zb/bI0q7qENHRdu6QFbYDztrn2uPDBXkCo=; b=Mk0
	K+bsdOLGsusbyJWZtBYG9MqU6C3eQrJXDLruykjjQdxPn+BAX91gOEWf6+jw6yvTgOAdghYY3Wsvj
	eEH5YmyGTGfMq53+2gvKgdpN3ezd62JGlqHkVfKKVC2qjdxtIKn+qozPiaOHAn3TMo3CXOxG87dr1
	rUrN+in65sTrhiH16OP6Z0y1C84ogH7m781GWva9vIG34EqEaZrHHkF3YC5U7XnUd1FW+g+yRmhNv
	lnfLWzlMNsXRU8nmclC981sEP7cmB/59GQN6ZUmOHFHQx4kjEwbgTA7wtyilxyQdMMdLZGORxK3iq
	2VT+wNeYt1K1RQjnrjgB8ooFpzlXLwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieHAa-000125-KH; Mon, 09 Dec 2019 11:25:40 +0000
Received: from mail-dm6nam11on2049.outbound.protection.outlook.com
 ([40.107.223.49] helo=NAM11-DM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieHAX-00011Z-M2
 for linux-riscv@lists.infradead.org; Mon, 09 Dec 2019 11:25:39 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eviTiRoRzmCBFVHqYKMtQJMsu7Kiz6pbV1i0QSM3cnNCZ2lmyl1czSoa52f3n3U8OZJTBy+ehDdTJofmnFK3NHq63wsUxEmgoIMMUYJ1ruV9KQvIN5oPimiP65dTgiSVAAPUK/7V3fscq9XE8sI86Bla+McGQKDqL6ZbJ+slot1rq8lkJOMh1YanwtCnUPTaMVbV8TfclUP9a/joXAw9SuMUD77YgV8VhUgC0gzXWbDm0VML3VvKFfV8tZjg4X489vSRc045rHttLUPdWQ3re8Fsm0v45dWQetKGCrqPqr2riTMzTds7tNWvj+gffUL+NG8mw2MxZjgm98ppMztnRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KSLeYpcm3zb/bI0q7qENHRdu6QFbYDztrn2uPDBXkCo=;
 b=ejVYTK3p82HhQynxazbT9X/8yR6jrLxG0uJI5+LBEheyms7zb5gPrF3VnBPpQ0gBuTlCA7I/ddjwIQffytaoBpUQE6FcQMLbhqgjbPhRFEJa3D7Hu/LD0k1e2dzP6+ZR5qK31NXWj1MC/0INlZFY9l2uODVoPJOo8cCLiGFZW4NtGpaDc2Fi5NYfjZjV6lBCHzKtHBz11PHrNh/3iLijmx6dOyFWMeooxWCe7Bg0lR28EPXrHD0r0YhmcdS2J+RgM79DvOpV/unUCt5ct4TcVY4d0s2BIXj1NI30ESOR9PtRcwDWz6kDWNxL45w+ioWfdoj4S7HQv9xxXAz/3ju0+Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=sifive.com; dmarc=pass action=none header.from=sifive.com;
 dkim=pass header.d=sifive.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KSLeYpcm3zb/bI0q7qENHRdu6QFbYDztrn2uPDBXkCo=;
 b=BS2aYFcHw9YwA9TDV9YQbc/RJNbtLGDTktrVaatX/9v2fQGsKV6QE2D7U6W/OMeB/MAV+5aNhCwlL7Mwfew4KmepBbDrrvgco1FsJux29ppAocA1YUEiMjT54xa+nsxVWH4Nh7p0f6P/WExEfVZrlzvsMN3q8txjfs07SEGUjYc=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=yash.shah@sifive.com; 
Received: from CH2PR13MB3368.namprd13.prod.outlook.com (52.132.246.90) by
 CH2PR13MB3894.namprd13.prod.outlook.com (20.180.12.140) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2538.4; Mon, 9 Dec 2019 11:25:34 +0000
Received: from CH2PR13MB3368.namprd13.prod.outlook.com
 ([fe80::eccb:16ac:e897:85d5]) by CH2PR13MB3368.namprd13.prod.outlook.com
 ([fe80::eccb:16ac:e897:85d5%3]) with mapi id 15.20.2538.012; Mon, 9 Dec 2019
 11:25:34 +0000
From: Yash Shah <yash.shah@sifive.com>
To: robh+dt@kernel.org,
	mark.rutland@arm.com,
	paul.walmsley@sifive.com
Subject: [PATCH 0/2] L2 ccache DT and cacheinfo support to read no. of L2
 cache ways enabled
Date: Mon,  9 Dec 2019 16:55:04 +0530
Message-Id: <1575890706-36162-1-git-send-email-yash.shah@sifive.com>
X-Mailer: git-send-email 2.7.4
Content-Type: text/plain
X-ClientProxiedBy: BM1PR01CA0100.INDPRD01.PROD.OUTLOOK.COM (2603:1096:b00::16)
 To CH2PR13MB3368.namprd13.prod.outlook.com
 (2603:10b6:610:2c::26)
MIME-Version: 1.0
Received: from dhananjayk-PowerEdge-R620.open-silicon.com (114.143.65.226) by
 BM1PR01CA0100.INDPRD01.PROD.OUTLOOK.COM (2603:1096:b00::16) with Microsoft
 SMTP Server (version=TLS1_2, cipher=) via Frontend Transport;
 Mon, 9 Dec 2019 11:25:30 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [114.143.65.226]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 22561b52-52aa-4a99-ba30-08d77c9a81cf
X-MS-TrafficTypeDiagnostic: CH2PR13MB3894:
X-LD-Processed: 22f88e9d-ae0d-4ed9-b984-cdc9be1529f1,ExtAddr
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <CH2PR13MB38944DEC6C83058C0CBEE1758C580@CH2PR13MB3894.namprd13.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7691;
X-Forefront-PRVS: 02462830BE
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(39840400004)(366004)(346002)(376002)(396003)(136003)(189003)(199004)(6636002)(81166006)(6506007)(81156014)(6666004)(1006002)(6486002)(7416002)(44832011)(305945005)(316002)(478600001)(2906002)(26005)(2616005)(956004)(16526019)(186003)(52116002)(8676002)(4326008)(8936002)(86362001)(66946007)(107886003)(6512007)(5660300002)(4744005)(36756003)(66556008)(66476007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR13MB3894;
 H:CH2PR13MB3368.namprd13.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
Received-SPF: None (protection.outlook.com: sifive.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 3S9P/D1Rz8CfwM91IaGcRNQRtq+5SbbbKRNGI1FRmIq9tezADJif3eGw/sKSntWQyn1paOcGjaNRRhy35BTzKGi9QBIYliiliBgLwyjx6ZLMnWBcRPipIEXMwKe3HueJHixYyuk5CT0a0cgAJ9yUsAM4a9uOsQz2y483yLjYXQhlVLGO+He7XKElfVU8L9i7wDyuYX6NKZWk2I3CHYNhg0x/hAMDdFS2s6u3kbyEIMRkNVwTzpoDsXI3anYzjJawouAyFOD/2LhFryE0FDrP2HdMfHlk1VQmwwtqWCEfMFpt8QYtKaa1oo9dxEp9ySgvTvn7bPvhfcPqbaoZay6zpFggDuyJWWy0+kusZymo5DPM99wBno9vB6zW5ybfT5DawgavRPZyyLYT2T2wcGf6VT10xF9bci9g6u/EX9dWFH5dnhodY3nxkqkfmkIS3kFx
X-OriginatorOrg: sifive.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 22561b52-52aa-4a99-ba30-08d77c9a81cf
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Dec 2019 11:25:34.5244 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 22f88e9d-ae0d-4ed9-b984-cdc9be1529f1
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 366v63BRIpKX5WT6Woa0CGZNSMs+nC7TzGHcueUMBYTsbz7dNXDO3xTSekIuSwhUM8y4IZGXYpMUWMXl7PovIw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR13MB3894
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_032537_790102_8A865728 
X-CRM114-Status: UNSURE (   5.38  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.223.49 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, aou@eecs.berkeley.edu, atish.patra@wdc.com,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 alexios.zavras@intel.com, Yash Shah <yash.shah@sifive.com>, palmer@dabbelt.com,
 tglx@linutronix.de, bmeng.cn@gmail.com, linux-riscv@lists.infradead.org,
 allison@lohutok.net
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

The patchset includes the patch to implement a private attribute named
"number_of_ways_enabled" in the cacheinfo framework. Reading this
attribute returns the number of L2 cache ways enabled at runtime,
The patchset also include the patch to add DT node for SiFive L2 cache
controller.

This patchset is based on Linux v5.4 and tested on HiFive Unleashed
board. The cacheinfo patch depends on Christoph Hellwig's patch:
"riscv: move sifive_l2_cache.c to drivers/soc"

Yash Shah (2):
  riscv: dts: Add DT support for SiFive L2 cache controller
  riscv: cacheinfo: Add support to determine no. of L2 cache way enabled

 arch/riscv/boot/dts/sifive/fu540-c000.dtsi | 26 +++++++++++++++++++++++++
 arch/riscv/include/asm/sifive_l2_cache.h   |  2 ++
 arch/riscv/kernel/cacheinfo.c              | 31 ++++++++++++++++++++++++++++++
 drivers/soc/sifive/sifive_l2_cache.c       |  5 +++++
 4 files changed, 64 insertions(+)

-- 
2.7.4


