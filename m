Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DFF15164BA5
	for <lists+linux-riscv@lfdr.de>; Wed, 19 Feb 2020 18:16:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Type:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=V9LPZ06etqjtPQi6fp7NsI0p+FU8j5/XRsK3+2oNxfg=; b=klFbGsk0KpNIsoHA+NE+Wecg1
	fuAtBtTNNKaAHlYkaVVcl3rQsZ0pqzTES9yuylwPqb8X7TpNMZZ/hDLBENdrRvz75aE6sZBisKzbb
	IYbsg4zw+M/Jgk/EXej/r/dYD1W01p39i/VN2YsB7T3j/ZIvgGXPsgfCBg7r3VY7PrqjvGq/XBNdf
	IcNxuVc08SjrxTqdeV1HBSGwHNLWlSV3kLBGy5gu6j1gr+hikYN7FY8uYX6a2mHbQr66qu6W0vO7W
	jfAshyT7uxJEvSb/E0WKttMII1CnmtLIq7NfZYtA1h+Hx4W9qKU+HxMlsgdXB60+Kfjg74GMyeyWN
	9gO9SEzvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4Sxq-0004qh-9O; Wed, 19 Feb 2020 17:16:46 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4Sxm-0004oN-2x
 for linux-riscv@lists.infradead.org; Wed, 19 Feb 2020 17:16:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1582132602; x=1613668602;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version;
 bh=vF8HMDqdB2uBYzUrBaJ6ZSkgHqVxWgmMSTRqgPCK9zo=;
 b=FVTurXqDfEkZ3vowp9F+BFFyjDPR4ej2gt/BbaoVuFYzc0uKR2MWruLF
 uVYqim+QhO9/8hGRWLKPGHJOpBE5RbbwD5sHKHmNSARoQezMZhn/JpFzB
 PHrV0PUjNHwxKTxQuavaQrCZIDPW0zrdt8sMASNeBk7LcRceTVq/LQUWA
 Gh4RxkAsSt0boD1k7NAmobkQeQoyW61bbhpZaUYfcRYm4C6On5EtGVfXb
 IHf97o5+3aW1jUx3cdFNlY6xzV0aO1XZPRit0Ka4yLtDaXMIk/S4oHEkR
 gLkl4PcSZU7DEGP1UkDLoFejjaOcccyZ+E7gqzOT5DJUjk3KMN59pC1K9 Q==;
IronPort-SDR: ffLSawpMGvaXvY6BUB4j5YNo/0emPW79crxKcSrPplFh6yhh4cYq4v8JnMMWOWlojkEj5y9GAg
 qz3vjpFLpfB4jwYs8MRLfuzokPZYX4wv4hTuH+eK8JhMADwZGFnTDVvEWxk3wXzG0eoyelwZwk
 79ge3KzJuMMcX2eRzj5Y74GZuT6YXtTBsWgYpRt5dgsxpm904ZRQivuSnKyzu/RF4hOoUrV7Nq
 PjB0FegEP1l3YefkgDXvo34wHAw8NvcwxxGJO+OAKaviJp35pv5aZjJAyjwJoWPFZwZ6UwshJ5
 2Zg=
X-IronPort-AV: E=Sophos;i="5.70,461,1574092800"; d="scan'208";a="131643383"
Received: from mail-cys01nam02lp2058.outbound.protection.outlook.com (HELO
 NAM02-CY1-obe.outbound.protection.outlook.com) ([104.47.37.58])
 by ob1.hgst.iphmx.com with ESMTP; 20 Feb 2020 01:16:40 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iRDnpMGmRZ7cmWb3f2LROBoLZ9HoetmvveUgSZWIF3M1N7E0grCFM6HRSAmCSU8VpzuDj3Ms7OYlaPbbJAeiHGjrEs2JwGFFUwoY+jXPKhGOC8sWTTbaDbgb7JYeqbBgV97BKnhgDHEyHwmzE4ULtbuvShUzqTzwjzIRia/DR8LIlPccOxrqMVQF6j6y/ENsrEHrBdJ3ZxZRwiWTw3XAe3VcM6e2gCMwD1dBBeRSzEq2nP6dp65gLR8eaKrbIsdjsdjRGAgBY+CdL/hlGmAK7Qaq91BP4Ae6qZ06qoiN3iUjV6xsDAyvXA9bLbfxSQhgvcL46DaIeJ3Xo69e5vXecw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=V9LPZ06etqjtPQi6fp7NsI0p+FU8j5/XRsK3+2oNxfg=;
 b=irXJkU/8IdeGvgPbQsiCjp75+s01CBMBYDg4KZ5oXk1krtdBue2KCnpUTa5a2xB2rYHqRY0RTNOi6zqyWp6lkHqxATb9U0gFv4sGFGWsISDW4djxgiqt+YPz57lpVpEzvHx9UNjfNE0iA2KpdiDoYlQ0snEPtBXmw5eP+x0lU28agFV5b/7ZPON6FnxasVmojM9xkKMuGwXUgee1/LD/9H2FTIsnc+WBBoVBjZqWe8FDTgo5R1dm+P+rJxXuu3M2+ilqaPMNJUUCeXHP0BKMmZ+r4C6dY4fkVG8NHGVDJF7hwexmaIBzlGGboMB7VaQAKmeYwjX2cFZvvUxQmLJfkA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=V9LPZ06etqjtPQi6fp7NsI0p+FU8j5/XRsK3+2oNxfg=;
 b=fHhIIiEqrmKeVkTHwmEWk9EjJMg1/SJqlMhyworSBR6CgqHO3A6Yv8rh8S9Ez5JznKFJj9HNnI9s+Q9vuY1ioUAZgnwHZutv0GaelyKjepZ/lYv5clciKLAjhv6/4Y5RKRaEU9ebExCToETe8lylcugRdQJxbj8WqDKHkicWc9Q=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Anup.Patel@wdc.com; 
Received: from MN2PR04MB6061.namprd04.prod.outlook.com (20.178.246.15) by
 MN2PR04MB6688.namprd04.prod.outlook.com (10.186.147.14) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2750.17; Wed, 19 Feb 2020 17:16:38 +0000
Received: from MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::a9a0:3ffa:371f:ad89]) by MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::a9a0:3ffa:371f:ad89%7]) with mapi id 15.20.2729.033; Wed, 19 Feb 2020
 17:16:38 +0000
From: Anup Patel <anup.patel@wdc.com>
To: Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Albert Ou <aou@eecs.berkeley.edu>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Thomas Gleixner <tglx@linutronix.de>, Jason Cooper <jason@lakedaemon.net>,
 Marc Zyngier <marc.zyngier@arm.com>
Subject: [PATCH v3 4/4] RISC-V: Remove do_IRQ() function
Date: Wed, 19 Feb 2020 22:45:20 +0530
Message-Id: <20200219171520.20590-5-anup.patel@wdc.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200219171520.20590-1-anup.patel@wdc.com>
References: <20200219171520.20590-1-anup.patel@wdc.com>
Content-Type: text/plain
X-ClientProxiedBy: MA1PR01CA0121.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:35::15) To MN2PR04MB6061.namprd04.prod.outlook.com
 (2603:10b6:208:d8::15)
MIME-Version: 1.0
Received: from wdc.com (106.51.29.34) by
 MA1PR01CA0121.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00:35::15) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2750.18 via Frontend Transport; Wed, 19 Feb 2020 17:16:33 +0000
X-Mailer: git-send-email 2.17.1
X-Originating-IP: [106.51.29.34]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 6c0b385c-5937-431f-c7bb-08d7b55f7abf
X-MS-TrafficTypeDiagnostic: MN2PR04MB6688:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <MN2PR04MB66881814E9230C37F1B13FC88D100@MN2PR04MB6688.namprd04.prod.outlook.com>
WDCIPOUTBOUND: EOP-TRUE
X-MS-Oob-TLC-OOBClassifiers: OLM:1186;
X-Forefront-PRVS: 0318501FAE
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10019020)(4636009)(396003)(366004)(39860400002)(376002)(136003)(346002)(199004)(189003)(4326008)(7416002)(1076003)(55016002)(5660300002)(86362001)(2906002)(66946007)(8676002)(66476007)(478600001)(36756003)(66556008)(81156014)(44832011)(2616005)(956004)(316002)(8886007)(55236004)(110136005)(16526019)(52116002)(81166006)(26005)(54906003)(8936002)(7696005)(186003)(6666004)(1006002)(32040200004);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB6688;
 H:MN2PR04MB6061.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: QAT01JBiAcA9J7WWHwFzZ+cKk+3VMRKZ9A0OWZo2ENUOA8V8Qg8SK+A7JIzQ7uBFE6twO/LkAhSDAIbBnGyxH2K4md1LlB6wI0ZsiYm8woK1+VoZj8MKDFEw5VnAQFaUm7BJHkfV3KhXDP7Yl1srA/HFy8lAVEyYsbGX5jajZTnsYrD0NenhiNlzqfVP676gWewpymI+RwyqfV+QGxrkkjeVyBw7UBnTj+FsNd5K1/DZoXbdfVMc3dX5Fc8LE59QRl0VO5weFzyMz/AbY75XSLesAgoCV265iK0FKz1Be1UgL0vPcRZGbxaGQFtEW2ZNpYi+RXS+e4XtcReLcMo64nF4/Jm3n6THvdlDMcEzGaNsMlwN8awmMGm1vyj+97VXKfeHt7badLgQ17pSxBayVUVhSrKtMK6MAqqYPJuDE0PfgBqiA/vhbXgEynL5QGj8QfPrbNnNXXVuM9qlFa+Jbn2Pz4s7+UPsvWbvp5DVZw0RSiDty3iZXOUM6JGBr88l
X-MS-Exchange-AntiSpam-MessageData: grjrNo8KIJerdfnQQMRqAo8PnUW7vgCx2/ECYyMkJh7r9+ANYgkiikkoSKDFI/1a/jQ7IpOtMUXizrntk/oIQh/HaoLLR41HI3akZTkt5JoOpqsGRsjxpxLzGEOc0CTt71rfVFmiv0MbKvFniTU/0A==
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6c0b385c-5937-431f-c7bb-08d7b55f7abf
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Feb 2020 17:16:38.6961 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /4nZUDYDQrIX+0+DnoQXAD/fkL40L9Nch55wJNfocrDTXZkJyR8NzMqu1xZHDq4Q6UL0K1XwuxAZ9ZwpJKaFBw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB6688
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_091642_219752_D7243E65 
X-CRM114-Status: GOOD (  13.76  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.45 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Anup Patel <anup@brainfault.org>, Anup Patel <anup.patel@wdc.com>,
 linux-kernel@vger.kernel.org, Atish Patra <atish.patra@wdc.com>,
 Alistair Francis <Alistair.Francis@wdc.com>, linux-riscv@lists.infradead.org,
 Christoph Hellwig <hch@lst.de>
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
index bad4d85b5e91..f5d346588c22 100644
--- a/arch/riscv/kernel/entry.S
+++ b/arch/riscv/kernel/entry.S
@@ -183,7 +183,9 @@ ENTRY(handle_exception)
 
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
2.17.1


