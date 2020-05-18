Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 001291D73AE
	for <lists+linux-riscv@lfdr.de>; Mon, 18 May 2020 11:15:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Type:Content-Transfer-Encoding:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=KC/Bg1HD5PpYScgAcWTx+PnpQlOxLRlV3gwchEM5ojY=; b=ikg0NtTtp+nZStSB3FYIXJNlO
	8iCBUfATqWb/JQF/33VRzTeKcpJdXiTaTIv559j7FZNpgN/8MGrvo4O/xDYvXvr5wUlQtJxpg5Vso
	QAaFI0h4w6sNtNJYAMepwKpAem59hRRSD2o6FP8N6J+P2zLAUkXeahCFzCKbUEM9KAnbUJ2ylOpoN
	eYuCssFygi4287zEkglh96Cg+e18aV4X5nW8E4qcA5iLQqXHRwpvC7PdFWZkiRlw38m9teYHIhcz5
	iZvyk++KYgr/GeByFV1x6Iz5wHhpsN2r9lw103KoBsS9gm5T44CSFW5hH4qrDLzbWWEnz2F847dUU
	eLwaRjEtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jabrx-0002Jd-Oh; Mon, 18 May 2020 09:15:33 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jabrq-0008Db-Mm
 for linux-riscv@lists.infradead.org; Mon, 18 May 2020 09:15:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1589793327; x=1621329327;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=1MAz0ySSSqwQBagUkYR+uxCFnhwsVHUhqnWB2zQtgto=;
 b=ZwGJvueyrqcWqrkJTFBOkZkSbQ842GiyI4OTUVeRzjHjHh4s73HG9Qod
 W10uFNz1i6uN6wy8/asCMnC237wSVKjbicDIWqSQRiFjpwxmJN5mH3vkC
 WVzd5vwai6KHUTzd+/N5z3p6R5fSQ/7p57PGheLp5OP/bB66ZIQt+iBsO
 fqoa4THzHeNLUB5kEsoIZcIIP/QGSwW9H6lyK7xbpHd8jzN8QSFcxQauC
 cf5egmsUhZLQf4sBNWC8IPhDy5/aS5Aq1M5XB6xxjDQ2aUDb4Flfjm56+
 kXyzk3RsxmjvYrN988y6x/YG+pVfeLMyy68bECnTRMMsMTBznOdf2FTqL g==;
IronPort-SDR: vSyondsU+6xoc3I9UWFRCH1L0RRN8GRfCiBbTPF1MIx69yWy1n3Z0zK5xEw5qwonizMaYy61F9
 HZze4dmgGQMPdZH2vWLSQYIh/ApPnPBzIy3IBAFni5phhI0ArLBKrNAbdxb+yxwWF8OtKmoXtB
 kA7JhljsGMzTNcKoDyzZof9LdQy8LQr4m7aufeErGtDJcO2suRkmIpj8bJgClGIWYk3UQ67N4U
 wF0bEfxvfWx392TlS4g33anDiwN096UMw1PALbpYvDtIkj6hpvp1ynT3sV+iZcMXkJxroNgc3H
 OYQ=
X-IronPort-AV: E=Sophos;i="5.73,406,1583164800"; d="scan'208";a="139365917"
Received: from mail-mw2nam12lp2044.outbound.protection.outlook.com (HELO
 NAM12-MW2-obe.outbound.protection.outlook.com) ([104.47.66.44])
 by ob1.hgst.iphmx.com with ESMTP; 18 May 2020 17:15:26 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=e+sp+028xlnYg+DXZKduJKoe2TFdAKN7Bl49OyPSftN6Qz3ohu8DXFlSMM47XWIhiltJF09yVdk8QJ0z28mVV/Y+MpiQTZyAp//fO/vuchbH2C+PhVQ74oq5a2iBUNTO4S+Ul12+oVPd+9pL56UFIQ9k/3zVroSCr2IzDXT8cZgfH3RStv6teyiPkgXtdrseVypNQORyv1JuXmAeh6hxxjJRUgqzjOcHyvJjBJyOOnmnX9OzV1T29HuZTkl5wz6AOHv4ACXdAE0CpNr8cwIa+0n507n48dh2aeljBvfp5Jd86c25s3yzjcc+YkQfV1FQH6+28+BasHdYei58rRCtLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KC/Bg1HD5PpYScgAcWTx+PnpQlOxLRlV3gwchEM5ojY=;
 b=Hd/0TU3dLPmAgTBq4csLHjHnNQDEOcdBz2ACs/lKKmuIVXhlA1FlWETHF9hy/mVXb1TVW2ZPgQrATKT8POqTNM31Qs1LlKPHmFkvYXXb3j4V1g2Ktg2zg4Yf3aUfRXBtp/coE6EY4cfshE60YMCAjy+b8rlh3rTgqBowtceDlpboudI4SWa1GRnPDsa/RohkcyQyuUfEFfVexrLImX4AuPhEkZmx51ouRUQ/kr4NYpSSwtwDjKGlZ6Aiae8Wmcu5nbO+xLh9zEEUYiX5cEYznvnGxWbFwKeD0luagXpKHoinUEtjC7NC2I1Gph6HN7KlNDZn99aHSXgXfVBdPyON/w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KC/Bg1HD5PpYScgAcWTx+PnpQlOxLRlV3gwchEM5ojY=;
 b=JOUNjg8yeQ20V/zimPOsfjxB3l+u/s8PlUqf6f3abpESM9Ryc07TVtsOhij8Ao1ZcH+XW0j0E+a6mp52CgA+/NlmVg7uKoFJCltc9tLpEGUYlnqwfNgUq86Ffs+FtiAL+vsoNPiscbv43fu1kruVvkidUGI0yGfuxYZU3DD/O5o=
Authentication-Results: dabbelt.com; dkim=none (message not signed)
 header.d=none;dabbelt.com; dmarc=none action=none header.from=wdc.com;
Received: from DM6PR04MB6201.namprd04.prod.outlook.com (2603:10b6:5:127::32)
 by DM6PR04MB4155.namprd04.prod.outlook.com (2603:10b6:5:a3::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3000.20; Mon, 18 May
 2020 09:15:24 +0000
Received: from DM6PR04MB6201.namprd04.prod.outlook.com
 ([fe80::f8b3:c124:482b:52e0]) by DM6PR04MB6201.namprd04.prod.outlook.com
 ([fe80::f8b3:c124:482b:52e0%5]) with mapi id 15.20.3000.033; Mon, 18 May 2020
 09:15:24 +0000
From: Anup Patel <anup.patel@wdc.com>
To: Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Thomas Gleixner <tglx@linutronix.de>, Jason Cooper <jason@lakedaemon.net>,
 Marc Zyngier <maz@kernel.org>
Subject: [PATCH v2 3/3] irqchip/sifive-plic: Improve boot prints for multiple
 PLIC instances
Date: Mon, 18 May 2020 14:44:41 +0530
Message-Id: <20200518091441.94843-4-anup.patel@wdc.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200518091441.94843-1-anup.patel@wdc.com>
References: <20200518091441.94843-1-anup.patel@wdc.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: MA1PR01CA0155.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:71::25) To DM6PR04MB6201.namprd04.prod.outlook.com
 (2603:10b6:5:127::32)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from wdc.com (106.51.27.1) by
 MA1PR01CA0155.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00:71::25) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3000.25 via Frontend Transport; Mon, 18 May 2020 09:15:20 +0000
X-Mailer: git-send-email 2.25.1
X-Originating-IP: [106.51.27.1]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 214009c1-4355-4b9a-e72b-08d7fb0bff49
X-MS-TrafficTypeDiagnostic: DM6PR04MB4155:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DM6PR04MB41558A63892CD4F7766579D68DB80@DM6PR04MB4155.namprd04.prod.outlook.com>
WDCIPOUTBOUND: EOP-TRUE
X-MS-Oob-TLC-OOBClassifiers: OLM:1388;
X-Forefront-PRVS: 04073E895A
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: GSGIffWF5px/pPKrqGSiCVEZRcL7b7ldEcN7FVpY8Wl1QnjEkE21VJa79+nUBDens6eLKab3xUwkfpeuOQu9sKERELPovadcuwYAY0PO6gEp79u+LWxiXqZbZra1SfIyW2xqHyLGllm4Q5O3SBdwUqvR293tzU+TkkSms9Y11fU7TEoRFJ7+JnRTL4WUVSrGjX2zWANCwBdTTUPqqZ+mqprhZjrrvnKyLOm43nzrV37fFEgSFBtGZnd0CPgRXun5ngo84VYHFLZX/Yt4ujqABY/YVPNXs3aNWTmZxjnEm/nH+yjGhBcUpYhsAVgAyYQLhQmAQz6PHYO52Whn7ith0nl7FkzHo942vCupMYAVB/+wFUJNIvlpe/F8rxGgPqNAQPHOEkeZmvgU7WmZJZxIVtbnmrbRrTwfBGU5xa8vKE+oyZQh8k+Qc8KsdOoxRQz4
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR04MB6201.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(346002)(136003)(376002)(39860400002)(396003)(366004)(55236004)(26005)(36756003)(316002)(1006002)(2906002)(86362001)(478600001)(6666004)(110136005)(54906003)(8886007)(2616005)(44832011)(55016002)(4744005)(956004)(1076003)(52116002)(7696005)(16526019)(66556008)(186003)(66946007)(4326008)(66476007)(5660300002)(8676002)(8936002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: ruQHPHjiqnv//5xt79mUltmoIg/cWwKVIHvkNmjrZ7knJCyTM82tO8v7d4GfmevIGDo31Xh3as1G6VZcRAB5mbppd/MylVZm5B5NS38ibkdJlKwtrB2GXwkyI6XbOiXvqBrO701RadHBVHNLEQ0BN3OEST0olxlFNZah3EaMuRTv/59Lue8glfLr3WzzVWD6VDQjske64Umf8enrt2Zcgnr7Luph5a+sf4RMfYJDDNXkEYfo9hfqDuDa0U5DusaE5XwyEisXR+kWylGiNLr67u5Y678OEfSw7zdtrdP4WmB6Se+P5j311kcVAqjv4ysReBQIT1tAMf/lBi7Ht3obPTenFAHbSFTn7XmHrPmaMe5Dmk5IXNIRHofQUEY2yywhdi/emPZR4Mq0jNtuNmbUEJ+wLresO4oi7Af9JMzuruqlWG2yjinWQMhXwTbQadHgrQQ1XRlxZ0OFvQeEVbrho2jOKZLHgl6+qRBnOksIz9c=
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 214009c1-4355-4b9a-e72b-08d7fb0bff49
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 May 2020 09:15:24.6357 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: o3aG5C0Dn1DbTNIHYnkMkhwC0ElXH1cpU5102aBmFvmPFM5Eg3xgNXnB3afFwXlD+1hgfeVtYFA76pDlJ4Km3A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR04MB4155
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_021526_879459_07E9DCCA 
X-CRM114-Status: GOOD (  12.26  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.45 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Anup Patel <anup@brainfault.org>, Anup Patel <anup.patel@wdc.com>,
 linux-kernel@vger.kernel.org, Atish Patra <atish.patra@wdc.com>,
 Alistair Francis <Alistair.Francis@wdc.com>, linux-riscv@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

We improve PLIC banner to help distinguish multiple PLIC instances
in boot time prints.

Signed-off-by: Anup Patel <anup.patel@wdc.com>
---
 drivers/irqchip/irq-sifive-plic.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/irqchip/irq-sifive-plic.c b/drivers/irqchip/irq-sifive-plic.c
index 6c54abf5cc5e..d9c53f85a68e 100644
--- a/drivers/irqchip/irq-sifive-plic.c
+++ b/drivers/irqchip/irq-sifive-plic.c
@@ -380,8 +380,8 @@ static int __init plic_init(struct device_node *node,
 		plic_cpuhp_setup_done = true;
 	}
 
-	pr_info("mapped %d interrupts with %d handlers for %d contexts.\n",
-		nr_irqs, nr_handlers, nr_contexts);
+	pr_info("%pOFP: mapped %d interrupts with %d handlers for"
+		" %d contexts.\n", node, nr_irqs, nr_handlers, nr_contexts);
 	set_handle_irq(plic_handle_irq);
 	return 0;
 
-- 
2.25.1


