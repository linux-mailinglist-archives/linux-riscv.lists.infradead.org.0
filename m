Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 425881DCE31
	for <lists+linux-riscv@lfdr.de>; Thu, 21 May 2020 15:34:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Type:Content-Transfer-Encoding:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vIW8mLbhzuvo1cDfyIrESkO5w5m6aI+dl0GsvKBvwec=; b=Qq8NXCqRPXbuHg3ZKXQ5mKpuU
	nh9keYLghkW81dyh8mTMppqUZWyoR/RtRvwWNvNAMuDoxsB0rNAIMpFSiFAI4zXe7InSqQj4wqe1x
	xFqfMKzI65QM5209ge7ZFffzqqLf1Mzq0vwN0DUtb9ayfguyZVQKmxN2aFVT+OjQQNrdl8ZxFvnJ/
	pM3fQZ3nFg8ttdS6Ddh9S/a55Z3QdQ+s7VkZIecpF3POoLaR5dwfcXI9MAvHWoKmY0O2uQuhkuWL/
	SjRelsJ8z827lwM9gQHiJDjHbUygvuh6sardpowUi+wOJz8AG0GLAoDLZWJvhI38ROBMr64zku/MF
	NbI7uu/9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jblL3-0004v2-Ec; Thu, 21 May 2020 13:34:21 +0000
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jblKn-0004gh-Sd
 for linux-riscv@lists.infradead.org; Thu, 21 May 2020 13:34:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1590068045; x=1621604045;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=pCUEHbF9CE+vua08f+UISvL50fjj/2PyTFk5LYpiBns=;
 b=OHmDxkiarRIlHCL+EjzvyJVvJkjxYwX972z2onV+7Od30nwzUmkE4Q5N
 4Ssuy6pHnQByJeE1p4RBxiYnhZCD6ob0F2L+IPmsjoGbh1boJXtH8kilb
 ecB74CVUslk78DhrfYXja5s4E5yIRW7x9sCm8uDvdkNwUfb0W4sXrcusP
 W88uOwGruGipxWpYbv1v6UCP8pCg/BkrXkHlFyznjFXscLKm9tcJkuUU2
 3BYy3ChgNrbYrm0ENp3E5KMrvqXyDFl24az34EFPcOgAaHyXkW5sTP7LH
 F2mQxL0+WAMeDM+2w8wSZKqmIGQTSckmuFI4pWGeFk1h+A7Zq4pXync5o g==;
IronPort-SDR: /bb1K5GIS6rPazBchZCstOn/QvPwh5wIrvIBgXwPGaHh8guS6DST2qn5/NrAgEOpMQZDhhlt39
 3ZUNgQ437SfzbJRkel+1Q0IDW1HDWhRXTgKCReE0BYINDN4xfyEEHcsWJjtD/Or64xQ4eacNCn
 MVZTd5iqTnfYOCmnV1ibsguuvp0eZwVxaZ06qM1skkRvAsMmOzQYA6wknWODQCLRvsAh4tJ3hO
 GeBrY64V9NB0odQ2lhDLL3gPtHfggE9ppeRhH3XeLV85rdw5I5umigx9a881+X/K6m6xNUBXVg
 CnY=
X-IronPort-AV: E=Sophos;i="5.73,417,1583164800"; d="scan'208";a="247222612"
Received: from mail-dm6nam11lp2170.outbound.protection.outlook.com (HELO
 NAM11-DM6-obe.outbound.protection.outlook.com) ([104.47.57.170])
 by ob1.hgst.iphmx.com with ESMTP; 21 May 2020 21:34:04 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZF63A86Lfrz08AEXR3Wjeh1lEz40Sj41O3ewvfmDkw5hKVt8z9f1ucZAnTCPS3/NnoLONtnckvfOBORONY350T3QakACT8BY7v8AMSvwuUexH77P/7GPnTzNGJJqb1mNqiEmzv9lxfha8tUEsc+mTHtfL4qCxB4BH8DX5j3IaOxp5O/o9tODCjH6CiSzTJ98z+9qsL3n90FGHhuASUSgSa3sKU90PD2kzukERV35DBC3sZCcZx5g5Nc1i5inpgyeWnHk8m2Ciu1qQfHQ2XI+E/y86A15Zip6FG0FfKO3Kqhwv4vCahNTxusaj1hnrClNv8Fu6W8BmPPN39AsmuHbDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vIW8mLbhzuvo1cDfyIrESkO5w5m6aI+dl0GsvKBvwec=;
 b=h3cRgtT29f+AcuVWv68j80kbckAFSxV6h3aR5G6dhR4zf8ouyFxZg0HA4SMgAOUKm0aCmXX8Q0gR+8j0pWhhv3mPHihZxeMNVk6D7GsZqPfhqAr03z9TLDf9SFOsYO1AEyQKXCDoAZtjNSHQrfYnYFhgGYijdzHyngM8638jxz/bzlxK16YNtB9zN2JCM0ml27HvdY6ZACBtrlkAuQ6a/R72uYX/mLxbF8pny0KUWymN00y0dnJIV8zEuC6FSdZhT0xZ1foA5+U1yjkwWtIawy2q5jgkgWQ/Weyn5ihSC7YPJi/IR+FQ5TqHa3n14hAJFq3PX4WBVloo/ZjhNKpNGw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vIW8mLbhzuvo1cDfyIrESkO5w5m6aI+dl0GsvKBvwec=;
 b=iJUoEmRtY8rXZiGDBoPcVEhS9uhUWxGXmuBtcXGQkvyvfXOsbLwKOnTWQD+DEbHA+NGV3aZ9qi26PIgKYmUz4FAgpWm+vXOV2fXOdOaL8rom0rg/t2BpX0arT5syEcqEqgJ1VRhI4ZDk9B+R6m5St5+tioaBeQCg+xX8246a72s=
Authentication-Results: dabbelt.com; dkim=none (message not signed)
 header.d=none;dabbelt.com; dmarc=none action=none header.from=wdc.com;
Received: from DM6PR04MB6201.namprd04.prod.outlook.com (2603:10b6:5:127::32)
 by DM6PR04MB5292.namprd04.prod.outlook.com (2603:10b6:5:107::25) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3021.23; Thu, 21 May
 2020 13:34:03 +0000
Received: from DM6PR04MB6201.namprd04.prod.outlook.com
 ([fe80::f8b3:c124:482b:52e0]) by DM6PR04MB6201.namprd04.prod.outlook.com
 ([fe80::f8b3:c124:482b:52e0%5]) with mapi id 15.20.3000.034; Thu, 21 May 2020
 13:34:03 +0000
From: Anup Patel <anup.patel@wdc.com>
To: Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Albert Ou <aou@eecs.berkeley.edu>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Thomas Gleixner <tglx@linutronix.de>, Jason Cooper <jason@lakedaemon.net>,
 Marc Zyngier <maz@kernel.org>
Subject: [PATCH v5 5/6] RISC-V: Remove do_IRQ() function
Date: Thu, 21 May 2020 19:03:00 +0530
Message-Id: <20200521133301.816665-6-anup.patel@wdc.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200521133301.816665-1-anup.patel@wdc.com>
References: <20200521133301.816665-1-anup.patel@wdc.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: MA1PR0101CA0033.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:22::19) To DM6PR04MB6201.namprd04.prod.outlook.com
 (2603:10b6:5:127::32)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from wdc.com (106.51.30.72) by
 MA1PR0101CA0033.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00:22::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3021.23 via Frontend
 Transport; Thu, 21 May 2020 13:33:57 +0000
X-Mailer: git-send-email 2.25.1
X-Originating-IP: [106.51.30.72]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: cb97dd48-9eec-4371-6bc8-08d7fd8ba053
X-MS-TrafficTypeDiagnostic: DM6PR04MB5292:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DM6PR04MB529249702301AC515567B2A78DB70@DM6PR04MB5292.namprd04.prod.outlook.com>
WDCIPOUTBOUND: EOP-TRUE
X-MS-Oob-TLC-OOBClassifiers: OLM:1186;
X-Forefront-PRVS: 041032FF37
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 4o8clqF8od8OtUc7LNE+5oJfgdJq/10B8M7UDYytXWrjaJGbKICIYOYn7obPeyyLyaNfaqgA6e6vLtf+5J7huRgEn1dJKRfTzS+n022WhZP3S+kAgIOU+GK647PNcUy+YSxDrs9ybn0W/yoWdokn7TTJvRmLRzHOdhdkk92eUfTyZaEOiX6WfDpFGOlwPItgmqcjmTnuw1xCzB9MhULwpWI2zhLgzxb8s8QMWENhMOXNFKVN/odQopCNtxRBVLiYUKPh0gMDO0Kp3mt46Dg6VWLwzXYRscZgvVxee5M3mNtin46Aihy2RtFpHRoYo+vd
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR04MB6201.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(346002)(396003)(366004)(136003)(39860400002)(376002)(478600001)(7416002)(5660300002)(8936002)(86362001)(8676002)(4326008)(8886007)(55016002)(26005)(7696005)(186003)(1006002)(1076003)(6666004)(66946007)(2616005)(2906002)(66556008)(956004)(54906003)(66476007)(52116002)(36756003)(44832011)(16526019)(55236004)(316002)(110136005);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: C5DBpHf/HbNyQuOca+FR9hjdyi0g9QpaNNJWOWXsTO5HRYzxun2NcQcDSW7gINI7OtFc2j2QM4P9fmgYX1I9UkycIBDvH4HC1BIuWHghMltdbfwyEFWMrE4T+jVOULd4JdrQZdU4vYVZXEEZp/C80tXg/fCq6ZO5S//vrd1hyug2CXgSCZIhaJ5SefAvDU0pTzS7TaeM7bre7PTUFVl4+fBDBjlVwc0SWc5muZB1cSwtTBp+lfQaTS4b/NZT/0IOlayWQcM60xzrrF11zAfTHKP0KJjSUUeKF/75KWIi4u0rXbwHRT+eEWdO3ndT/J1F/jwo6TBqylA1cc57RkCgYxhyirMFusSEMLG2I5rizvzFNw1/7VkqXShvC8wzjij7tzTThZeGmkc+9RTT9P6BLuGqumSHb84Cm4FBrahIRGR1qHYEIWRFPyUzRFb+8i7Bqu/K6XuJEJGBOkh09T3EOgPz9dr1QOVKPrMW35HZ9vA=
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cb97dd48-9eec-4371-6bc8-08d7fd8ba053
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 May 2020 13:34:03.2275 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 34Of3SKXgtDmBs6B0d4CgruPRkb7ChI2/kOwNwP8xZs8NraewzgFydRgReRBlr93ik1r4u2h29Byqx08cXdMtg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR04MB5292
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_063405_976711_7F62A240 
X-CRM114-Status: GOOD (  11.60  )
X-Spam-Score: -1.0 (-)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.141.245 listed in list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [106.51.30.72 listed in dnsbl.sorbs.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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


