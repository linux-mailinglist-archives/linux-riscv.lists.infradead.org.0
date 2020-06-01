Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F5801EA0BA
	for <lists+linux-riscv@lfdr.de>; Mon,  1 Jun 2020 11:16:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Type:Content-Transfer-Encoding:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=CixexRslsnX7njnxUInvY2rSBt2XnpZ6ZYj5CQnYBQ0=; b=V7hp4e5Og4U4C/FUjXIMOCmUR
	XBISlOfKF6PCHcjYXWXX7cK5h8MCg2NbvP1aKzUrPUAS2LYs5KN+JjWckpvnuViHoE2amgUSCubTu
	GbA1jNQECTyahbZtNmKsV+0YB8CjY+knE5o0+1WtHID9aiZ3bKcWjaJaFGIa78UtTDRor4+dy/vIt
	p4ffyEPjL6Nyhq/Kt4mZQBSGRs7PIr8y1uF22FuW1v8xsHO8zOK+Ki8N/WzC1KtzgPy58P+XGIwvc
	0NZxm9J1hOxamMKwhVg2riTQeASjOUNFlPun3i1oayDAn6mdyRkd12Io4ufK6ph6adeoI7guBeI/Q
	8ufjKQM2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfgYe-0008SY-Ix; Mon, 01 Jun 2020 09:16:36 +0000
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfgYZ-0008Pq-Ma
 for linux-riscv@lists.infradead.org; Mon, 01 Jun 2020 09:16:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1591002992; x=1622538992;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=8rztky3nwF73R86YAi/Y0bnsDBzVkhLIjei/AYBNtCc=;
 b=YlLu0i4qulTvZ5G0VXJaJf3UiNpwAq1f7W1yrlI02GrN0OnItCLFLlNf
 0+aRA7UnIFkbc4xzAqURgdS5x9DDl7JsLsvuJyly015KedyydtAecsuGV
 kHnSL2aitEIpSJk3V0w/DfH5GWpWB67DveOjTbswSSk4CNwixpfoJrTDl
 Z0udS7a8/DtbpHB7DXZ2QScs7S09iokZEM6aURCZw2+rIZdqEUNTdevqg
 /pgC3xhHomvk0Fd/y9hhIafSFOVSRf9Mzbxh+czCEnKZnw1jUkoAY1ijn
 1ZLhz/D7Kv6gLAt8Ya1tqXufuezR6hSiC3iKABRind+EyJWXCQZUZQHH3 A==;
IronPort-SDR: BRSSYB8Egej3DJ2pOEkS8nlvtj/OSG0m9KeTXY5AVVRF7fCq5rBtGk8qjvguX4EsRD2XqEkM37
 /vsuV4f6xbbsKciES/wzsTF7p2GydPnbgUq+YxTyiXXume0t2n/AGs0zxcFuBs6OdV0PJUDozs
 Yh3g+I3+WE12qtiawHhfjZtke7GXtDtS1lElQIyiFyOH8CcQlTJcHQ5+6a+5sAZMMrn/ha7IRi
 U7ZFZfTmjT1fADYlure7jT79fkI0S8iM6XFtp3GmeFwRfm38gIWBOjcLN8VnmnrIjja52srRO1
 cd4=
X-IronPort-AV: E=Sophos;i="5.73,460,1583164800"; d="scan'208";a="139258652"
Received: from mail-sn1nam04lp2057.outbound.protection.outlook.com (HELO
 NAM04-SN1-obe.outbound.protection.outlook.com) ([104.47.44.57])
 by ob1.hgst.iphmx.com with ESMTP; 01 Jun 2020 17:16:31 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EFU9gmTkEPudFy/oCtMRWpbnC+cVU7SxjXS1Q2p/6R55z7KfWTKXTc/bBQYvobVKb3lSnhtzJeBycgMXuYDaZXWQtgNF+/zh3wTmCa7gejL/MKxHY7/Cks502II8eTaaPxHC/F1Blg6lznlvPdjKBCvDKdkOlvOcp2sGeyXkqY7dYx4jx6BnOFV3Dy7+duI3ou+G+qsy81XCkeJ2hk/3Pa3eK7XhLNa9L04vNoOWWmre9bl5ppcTG7oOrgezDeXMgArk22tRjL6St+yRMR3xTquyTI4VvKJzvJESCpHyijwryxhadPkn8C1YIg4+odlEMpg3YKU/w/QddzXCg5BrKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CixexRslsnX7njnxUInvY2rSBt2XnpZ6ZYj5CQnYBQ0=;
 b=bEPPHKM07IrrODkadbsEz/McONvhSGC2vpnj/mNKym4qW7N+cRwCjdxW2goppbuuTerZlDKIbaOzeqJagdLMIvixdizMlv4pqGctCF7eMynKUx3tqHtnPYltlgFHnxeJTUtGS79gJ4FpmzwCwXxLk9oh6LzEiEKYu6IthMRmlUfq5Vkr98PrILdGZfmejXjUB61CuC710qfz9lrfcltw81mdm6P7NtaWms5Lc5f2HqOrK4GnBQmhYaEGPPWgCxq3I0/nsvodN1A1bZjPHqJeRu5ivpzbwwGdQT2/KZtoozKZhrSkKkHqhqjxYb4c+7Iqay3C946vG6pTHitcgG0xMg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CixexRslsnX7njnxUInvY2rSBt2XnpZ6ZYj5CQnYBQ0=;
 b=A9hQ19uAwOStYYQGCReLeRaG/cnGC9qJkXVu8FlS60MYY0m/5jVxzpmxHR+tHL71AsT5Jj/VOmS6HiiHjFFFK8K77guYOAOvyyHJErdcaOV1/sfC5pRWciwhzrPL2j6SsmfD36dfyLWUWj9hOKXZyF1DFV3b3Ww5Dg3OgA4iRdM=
Authentication-Results: dabbelt.com; dkim=none (message not signed)
 header.d=none;dabbelt.com; dmarc=none action=none header.from=wdc.com;
Received: from DM6PR04MB6201.namprd04.prod.outlook.com (2603:10b6:5:127::32)
 by DM6PR04MB6955.namprd04.prod.outlook.com (2603:10b6:5:240::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3045.19; Mon, 1 Jun
 2020 09:16:29 +0000
Received: from DM6PR04MB6201.namprd04.prod.outlook.com
 ([fe80::f8b3:c124:482b:52e0]) by DM6PR04MB6201.namprd04.prod.outlook.com
 ([fe80::f8b3:c124:482b:52e0%5]) with mapi id 15.20.3045.022; Mon, 1 Jun 2020
 09:16:29 +0000
From: Anup Patel <anup.patel@wdc.com>
To: Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Albert Ou <aou@eecs.berkeley.edu>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Thomas Gleixner <tglx@linutronix.de>, Jason Cooper <jason@lakedaemon.net>,
 Marc Zyngier <maz@kernel.org>
Subject: [PATCH v7 5/6] RISC-V: Remove do_IRQ() function
Date: Mon,  1 Jun 2020 14:45:42 +0530
Message-Id: <20200601091543.943678-6-anup.patel@wdc.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200601091543.943678-1-anup.patel@wdc.com>
References: <20200601091543.943678-1-anup.patel@wdc.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: MA1PR0101CA0016.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:21::26) To DM6PR04MB6201.namprd04.prod.outlook.com
 (2603:10b6:5:127::32)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from wdc.com (106.51.23.166) by
 MA1PR0101CA0016.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00:21::26) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3045.19 via Frontend
 Transport; Mon, 1 Jun 2020 09:16:25 +0000
X-Mailer: git-send-email 2.25.1
X-Originating-IP: [106.51.23.166]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 24b24ea0-e1a5-428d-566d-08d8060c77c1
X-MS-TrafficTypeDiagnostic: DM6PR04MB6955:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DM6PR04MB6955594EA6F1434AF819B64E8D8A0@DM6PR04MB6955.namprd04.prod.outlook.com>
WDCIPOUTBOUND: EOP-TRUE
X-MS-Oob-TLC-OOBClassifiers: OLM:1186;
X-Forefront-PRVS: 0421BF7135
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: W3wkC4t0O0gafdugRvwp1exMDbrgeGEmnxOI/cVy17UByvAmjyIsNAO01oi3AijhFzrEbQ6oGM3oUCims2UKouzzNGYHGsMvR6tWtF61Hn4OJnwSRwdgd010BKgjPrUXdM0FV7tBWPvfHOioGcHwW1xbqL8J0ci2hVRgFVkHL+Ee/m27a1E3WdZHoeNNJrLfM6xLPgO+ElcrCIGk50rZJ8vvNFYLsep5ruLd2h5tZgMZkEtotFiqk7cOIxrh+FYjAGypcOx1IEwtsSUf16YLUwQbBPqCzg/M7forZtV/yuR9LidokUEXYUVUgr6KGdce
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR04MB6201.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(366004)(39860400002)(136003)(396003)(346002)(376002)(2906002)(8676002)(5660300002)(956004)(2616005)(44832011)(7416002)(1076003)(55236004)(16526019)(55016002)(86362001)(186003)(66476007)(66556008)(66946007)(8936002)(26005)(6666004)(7696005)(4326008)(83380400001)(110136005)(1006002)(316002)(8886007)(478600001)(36756003)(52116002)(54906003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: fs4z4/K36O2+Fd2mx6DtZkrOarVyJfgghai5JdwZtzhMT6PnR6m0ylpc4e/JPfcU8Xae2rf15z+K2s/wjussH/+0G613Eady3btfrYkHd0npPWgnGyZVnr+lsf0Wex6y1R5QukJ9yeWoNy58NthnHYC/Grv/CDYY3TPpjkcKwje/otbKmsfYli58CpvQ/PUay/N5YlKozU0zzvxpi+1XxBWyfmFp0M0ol9fLlyRBj6XAWEOYWjTOdqWngeuEz6zCmS2G8Sut2YW0KF/Xn8SaS8w+B7Weh7LejcYE5rw+zxtBkNGM/kCGN/p/VlZWlJwBduykpYqbz81vw2RIxHwKfjzYV6EvmWSnmCo+kCMngn2Asr6zImK/j4F0owjbLj6gZK5ihV1ITt/zAdTrCJlYbFizowP08R9c2WLPRCCkIuBKXvw5PyGliEURfMKl3aS9o71K98ICLpJ1z2quSs89ULe2p6A3ZpagWqbXAtZMfHQ=
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 24b24ea0-e1a5-428d-566d-08d8060c77c1
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jun 2020 09:16:29.5296 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0JzqpZK5VznrWI58jKMCrNouZsGapyqPK75IwXuz9HgAxuGtO0udMBSoulM7AJKaipMzbtYnYneugPW1eKYqqg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR04MB6955
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_021631_750539_B3DB5A8A 
X-CRM114-Status: GOOD (  10.77  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.144 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Anup Patel <anup@brainfault.org>, Anup Patel <anup.patel@wdc.com>,
 linux-kernel@vger.kernel.org, Atish Patra <atish.patra@wdc.com>,
 Alistair Francis <Alistair.Francis@wdc.com>, linux-riscv@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

The only thing do_IRQ() does is call handle_arch_irq function
pointer. We can very well call handle_arch_irq function pointer
directly from assembly and remove do_IRQ() function hence this
patch.

Signed-off-by: Anup Patel <anup.patel@wdc.com>
Reviewed-by: Atish Patra <atish.patra@wdc.com>
---
 arch/riscv/kernel/entry.S | 4 +++-
 arch/riscv/kernel/irq.c   | 6 ------
 2 files changed, 3 insertions(+), 7 deletions(-)

diff --git a/arch/riscv/kernel/entry.S b/arch/riscv/kernel/entry.S
index 56d071b2c0a1..cae7e6d4c7ef 100644
--- a/arch/riscv/kernel/entry.S
+++ b/arch/riscv/kernel/entry.S
@@ -106,7 +106,9 @@ _save_context:
 
 	/* Handle interrupts */
 	move a0, sp /* pt_regs */
-	tail do_IRQ
+	la a1, handle_arch_irq
+	REG_L a1, (a1)
+	jr a1
 1:
 	/*
 	 * Exceptions run with interrupts enabled or disabled depending on the
diff --git a/arch/riscv/kernel/irq.c b/arch/riscv/kernel/irq.c
index eb8777642ce6..7207fa08d78f 100644
--- a/arch/riscv/kernel/irq.c
+++ b/arch/riscv/kernel/irq.c
@@ -16,12 +16,6 @@ int arch_show_interrupts(struct seq_file *p, int prec)
 	return 0;
 }
 
-asmlinkage __visible void __irq_entry do_IRQ(struct pt_regs *regs)
-{
-	if (handle_arch_irq)
-		handle_arch_irq(regs);
-}
-
 void __init init_IRQ(void)
 {
 	irqchip_init();
-- 
2.25.1


