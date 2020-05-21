Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 338921DCE34
	for <lists+linux-riscv@lfdr.de>; Thu, 21 May 2020 15:34:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Type:Content-Transfer-Encoding:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=BZEhRiYIYcIHJf5Y/gEWGyFEj2Hhz8fJlrML0+g2VNA=; b=M23p8tXBJj1fFyHgwPVlnPSV3
	14UOShPemPAR2q1pGoA2rqcy0xQ53MFzO957ByiVmFfU09LS3xmBbebanYnA1EnWcsLbW+DFABAfT
	2UTqJrLqQx0FF8IcPYHF5RqfPZPlF/b/ElEn5LcK+5DdPidNWH27x5FxGB5Bp+DUoFrxdyKlmvpa3
	TdRQ8W2+/YO2KeOhYFRSPdHpNHzP9G46bMdri/9Pk4mJzQgpeAhYwBqr0isHY+oZR4FtHlQsrNmHQ
	uAv9GE54gszlsM46GNaxPfQ4il1Rszj0hjYMJP8H065KlC6qaDCUBrZMuAscpCLpvGFiuI8BHbzMr
	Iao5BxHFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jblLC-00050L-OP; Thu, 21 May 2020 13:34:30 +0000
Received: from esa3.hgst.iphmx.com ([216.71.153.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jblKu-0004oI-At
 for linux-riscv@lists.infradead.org; Thu, 21 May 2020 13:34:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1590068053; x=1621604053;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=nJJH7qKpWaTWZpqnM6zCpFB04zk2b11haAfYaSUb2/c=;
 b=hC8Blm5HmbNquTHFWJ+ENnhyhikHCeN+toseEjHjeGG9a7yD2kyRL/vQ
 h0a4f6O8HMWrwzgPCtnh+nhyjpcXtubqOVrsIDJYjxVoK9tFeEZ72O+33
 fsIRLUWllWs/JTmZzVZVyrhdb1BlwwPTmL/PuPr1QN85G7pfWp/aIWkAZ
 019itl/CR0oa84/XsDrmENm2SjJ5dPzKWGORnNMohXn4NI/xqFKshM0NN
 nqIvthzS01ybBYOJgDDMCPIqa7ti45oUip8kZBPbJ5CM9RuFEgEF0lR98
 ppKnJ97IXccewr8A03eTIKZStCyY03XhNZjLZ8Uh70OhaJkKIwVIUULrt A==;
IronPort-SDR: CJWpRDpodX/S+CJ4GQ5UGznAZi+oFyPOipiDIFvc0bGI46yL0bLbppxSZq+OSUYr9xkESzQYsX
 YjT+tEUuSigeMP2Ry2YTAyDXCrsOLNlen3vQPKZbfAKsdL8/ivrYh/JUBuG1npITFlWhWBakDu
 3B8KhMt/OyhYxtBYtVqMaS5PqcHH6BYgBB2oA011L8XGmaYWXN75QTxIqdgkAmPaKhKTZo1dcL
 lTpZ+z3yccP7e31QsR/GBdv1deLcqfv21FB7b48FgCQwh6M9aMaH3LJ0AduiS+2s9+cxKAAV/m
 Yy0=
X-IronPort-AV: E=Sophos;i="5.73,417,1583164800"; d="scan'208";a="142554139"
Received: from mail-bn7nam10lp2109.outbound.protection.outlook.com (HELO
 NAM10-BN7-obe.outbound.protection.outlook.com) ([104.47.70.109])
 by ob1.hgst.iphmx.com with ESMTP; 21 May 2020 21:34:11 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QF1/D8Junh9RiIGKLG/E9+ogsDtEtFt4/Ew0YoF7iWwoL6GzKY08YRAe7FDir/SZf5qbM86ZLvjQtA9z5VodfKq6ZuMzV++1AEc66e4sahVrNalcmwHli4n6KV/vvV1mizUFpBl45eWAy+ud3phbaPl6Bm3ZvUNQUSGyKMwrMDHEABptgwoWU4w45OMw+416ostWo0UjAXwUz02BHvvCwdrAaypW+Q7xqVuOxto1J4qGr82VfDpUVAiU1aQ9CcDY8dJDAoNbHsdrYrqyLV+EdV0/fV3egt8JEmobnmj7lO29r/w8eyDLkM8K3783RE7DpBGWtKaa1WNbAPc+4Z3/Mw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BZEhRiYIYcIHJf5Y/gEWGyFEj2Hhz8fJlrML0+g2VNA=;
 b=HLbeWsn2D6vDW6KFXeSKD9iN18UDmHerDuGzlw8Wx8FU+7RQfEz2KsoqkAXHEibtc6OWaxOGCLWCsTXKt2KW/2wEyZoPe3AsrHXzjrPEWrojW2L/o4hLlJHMWFjsVggVd/MhK5WfNNbbW4j124tEITGTL5Dh6JBB0GNaaZIkhx7I+OXTHl1wRSQyvZRSEYVhclF4MmbEH3TJlqyvUyJJC5LCDubR4k+n/qogAur4pllCIfJIC+gYvsS1bVKR7xbgi84mDOkXIhxsYjjJPEWWIAX3cJpwc02b6NGIJMWwOzJq93lrqs7rSpDnkxw3nsRwstiUUzrvkt7Mcq96fAQLiw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BZEhRiYIYcIHJf5Y/gEWGyFEj2Hhz8fJlrML0+g2VNA=;
 b=qMP9aTG7VkmQ388UrawUBFQGrL8NzOIPPWJn/k5lyLbUl1OEtxho/h4aNO4irsvl3kmlRWkLEkr4GcXjafR/IFihsdEeSwiC6dsrtm2/37FgwAKRtpeVGyqOgav0bsLakpHqifXlY+eHa2l5sd7jkRs5yCEgvkn1nc3+4Bpvapo=
Authentication-Results: dabbelt.com; dkim=none (message not signed)
 header.d=none;dabbelt.com; dmarc=none action=none header.from=wdc.com;
Received: from DM6PR04MB6201.namprd04.prod.outlook.com (2603:10b6:5:127::32)
 by DM6PR04MB5292.namprd04.prod.outlook.com (2603:10b6:5:107::25) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3021.23; Thu, 21 May
 2020 13:34:10 +0000
Received: from DM6PR04MB6201.namprd04.prod.outlook.com
 ([fe80::f8b3:c124:482b:52e0]) by DM6PR04MB6201.namprd04.prod.outlook.com
 ([fe80::f8b3:c124:482b:52e0%5]) with mapi id 15.20.3000.034; Thu, 21 May 2020
 13:34:10 +0000
From: Anup Patel <anup.patel@wdc.com>
To: Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Albert Ou <aou@eecs.berkeley.edu>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Thomas Gleixner <tglx@linutronix.de>, Jason Cooper <jason@lakedaemon.net>,
 Marc Zyngier <maz@kernel.org>
Subject: [PATCH v5 6/6] RISC-V: Force select RISCV_INTC for CONFIG_RISCV
Date: Thu, 21 May 2020 19:03:01 +0530
Message-Id: <20200521133301.816665-7-anup.patel@wdc.com>
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
 Transport; Thu, 21 May 2020 13:34:03 +0000
X-Mailer: git-send-email 2.25.1
X-Originating-IP: [106.51.30.72]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 6b7e5965-f81c-4bc5-40c3-08d7fd8ba45a
X-MS-TrafficTypeDiagnostic: DM6PR04MB5292:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DM6PR04MB5292E612F8392187834592B68DB70@DM6PR04MB5292.namprd04.prod.outlook.com>
WDCIPOUTBOUND: EOP-TRUE
X-MS-Oob-TLC-OOBClassifiers: OLM:7691;
X-Forefront-PRVS: 041032FF37
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: S8WZDJLZmJhtTKTUAC19xDWg/gnBvfL71uG4pd8yjab0GXpmeNnM3SgX9VtXA4GBY7EjvhJ9zJgNpP7vXRZag8tt4XPR+wsH9ftFipgISPz7rKWECl5Vt7XVZdhM8cxDTIcG/1pl8kAWG9QDNd/VGNMqoN7hn4I/lhC3O93sTdBmj/sjOOtjsq4tNctJa03v724dVljA9OrF1JiJnycKOseoNpyKcnjgI4NKYC2zUONHkxQ8qbSBF/nlFZgmmGLiR7WJTd21Dpt04KDII7Jm0KqoWMTxT+LbWx7dkjvAJ9B2vThFFInUuhtIygb9hdz6
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR04MB6201.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(346002)(396003)(366004)(136003)(39860400002)(376002)(478600001)(7416002)(5660300002)(8936002)(86362001)(8676002)(4326008)(8886007)(55016002)(26005)(7696005)(186003)(4744005)(1006002)(1076003)(66946007)(2616005)(2906002)(66556008)(956004)(54906003)(66476007)(52116002)(36756003)(44832011)(16526019)(55236004)(316002)(110136005);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: sGwvgAS7gAjP62nv4FIF5IatnTA0rvUSOXCeDY4HT8a+FbLZJiDDcivGmN8HqEVsm67Fb1LP5Eu4ke1jRXUOoqKxJfp107nL51mAhj6rvXGsgqPERLCWKmQb3bMKT6GI3Z+6kDK9DJ2tpUQ4FPlEUji09vOXv1kWmffN9gE89zZ0SQ9b5iPYoYXaC/pleFDvf0dV+kK3tqXyFdnKrw8QKCLinOjJ9DZc+G/3spqpI4MRLQJ+/eAZ6KsrcN9FXrC/2BWN9Kuu6W4iqxUbh33nGS57Sbkl5zcvIe1jE/CPjxC6Q1nIvHMQXT0+GEkRzT0K6mSeOY9g2p4svoaIudfSJC78bwEgvjiftORG7MmxP0M0vcUY7z5vcO8Om/LB2lp1RdvZ1FcwmHysMSEdAu20eWeWY5aEZGBDmuk4PVC691/Rix6L3xwh312mTW2unbVOf8LZU61laOj+c2fIONMVQYKpZLTrH/DyoqqjkJNg2GA=
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6b7e5965-f81c-4bc5-40c3-08d7fd8ba45a
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 May 2020 13:34:10.0751 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: v4fhoZJ0fMhOfhgMp5Ak8Xs73pz3WTG5r8CY2KccCY4Eowli6fkkSzd9j2MzznUNE9/JMTaAbUIC+1OajnXVcA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR04MB5292
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_063412_408845_FCCB343F 
X-CRM114-Status: GOOD (  10.50  )
X-Spam-Score: -1.0 (-)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.141 listed in list.dnswl.org]
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

The RISC-V per-HART local interrupt controller driver is mandatory
for all RISC-V system (with/without MMU) hence we force select it
for CONFIG_RISCV (just like RISCV_TIMER).

Signed-off-by: Anup Patel <anup.patel@wdc.com>
---
 arch/riscv/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index 822cb0e1a380..2cf0c83c1a47 100644
--- a/arch/riscv/Kconfig
+++ b/arch/riscv/Kconfig
@@ -51,6 +51,7 @@ config RISCV
 	select THREAD_INFO_IN_TASK
 	select PCI_DOMAINS_GENERIC if PCI
 	select PCI_MSI if PCI
+	select RISCV_INTC
 	select RISCV_TIMER
 	select GENERIC_IRQ_MULTI_HANDLER
 	select GENERIC_ARCH_TOPOLOGY if SMP
-- 
2.25.1


