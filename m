Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 649B11E9074
	for <lists+linux-riscv@lfdr.de>; Sat, 30 May 2020 12:08:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Type:Content-Transfer-Encoding:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=CixexRslsnX7njnxUInvY2rSBt2XnpZ6ZYj5CQnYBQ0=; b=XXBMCx0w9NKqh3zQMQaFc2iCv
	hpmuBzhbQMuudjTffC/c55wgsB2G2T2Lc2rq2iC4y8W+vKpQvJ3D4kQwDbSFQADxfj7ulpMypeKmI
	B/plKjfKtbbcU/4Sm7b7NlfHt87pnaxXytnBbeONFt3mmIe+5/u0P9e5cLbSO3nTVlDUm5OUtzyXU
	cfS/efhHVanDjtj/SoFV282+ZwCLTMU/MkZ2ewoH7Wl3ZG6eWNofr1DKkI20fU9lltu0Ba9fGJpFW
	YSpluq2ssBECvqdkalPlvPDhqnoVvwTpJPkLCbzW5qplSAo2Qcg6AR75Fv7Zf1Wnp5YYCEYm5PSX1
	w3YYDKoCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeyPn-0001lc-OG; Sat, 30 May 2020 10:08:31 +0000
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeyPh-0001i2-Qe
 for linux-riscv@lists.infradead.org; Sat, 30 May 2020 10:08:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1590833305; x=1622369305;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=8rztky3nwF73R86YAi/Y0bnsDBzVkhLIjei/AYBNtCc=;
 b=jh3Yq4qqO1+UWZ2aYERbZ6rx3Re7/LHlxtNXsX1a5joRIGrnLJHWL9JF
 4FUwPqVmr+j+Jmdv8IRKFw6ql6ercZbBjJIrEoBcish+YuQV0gTnJGY40
 rBVFhOao+Waz5wp516yQr7xkOxGxoYFBm4K1iiVSIu3EsHDdutQ+/nOOP
 ppMMOaVnK37JO/S1XR7ftcf8Eh/DRMDavz9AL9g9zrcLcRV3lA8gUm4bt
 jG8SPzTEzJmzf6HSfN8r3JxnRxMgwHArvUx4E3w02PGYYC+fRN6fE+sW9
 12AuZtGbdenRHuFwM100FlvA/kF5vIR41+Q56W/ibU99jh+8VyQZEG2hK w==;
IronPort-SDR: CuQC6QpchNvpScM/7QzFyQeifeuMrxOIwzoEZ/AEUbcZd9iw8ihnk7UDOMKrfXdPpTphlLMNSF
 GK7ks5W0AdvGjsKk6ogJJxyRDHGK2DvYuNZyZOOx0u6mRCawJbJ+mZcYA+un6QqIcsxv3AOkJo
 jxIg81BM73A5xuzb2a7BmSTiNnpg5d+oooS48EpMIKriz+tQcmOLWBJVHmfwH+KkWIC/bAYXpA
 PXNxq/Gjbyhuw8H49ge65vzYhFtKQEXRpOsrvEooaA9D5EQlWLwyhQeqhE4ChjDvY9a+68BwZ5
 C9c=
X-IronPort-AV: E=Sophos;i="5.73,451,1583164800"; d="scan'208";a="138846375"
Received: from mail-bn7nam10lp2101.outbound.protection.outlook.com (HELO
 NAM10-BN7-obe.outbound.protection.outlook.com) ([104.47.70.101])
 by ob1.hgst.iphmx.com with ESMTP; 30 May 2020 18:08:15 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BcYY/KWy/mYUnH6a9XxW8SX/M5YlnZHjHCWdWu0WesCbHAbvADgiiEfrTp+oTaj2gnw+Mm4n1Wydwr7xt2On93H1eriJ7LBSiUsXXFQ+/aYwhE0uJywpcxPJ5Xyx6LgoK2bvwvhQBXqMwd1q261ak+0Ki1N2t2mCdw27aB9virNAi0uhvN1QzPtvjVIhmVB0pC8JSh9RIFi7HB+Ox3oF1GcBjxLCZgi1/BMHMWBCEZ/V3+GzcgCAwUvKo62M+2vrEQSiIso8gSJWH18Azh7gWu9+tTf28gbzuUQLeeZNJYsfFAVnKHa9bhL+rzu1cB0phUSdryBBamlWWpxym11L9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CixexRslsnX7njnxUInvY2rSBt2XnpZ6ZYj5CQnYBQ0=;
 b=IGwGbBIoDKXAZTQxzrmoESi5pSKG3RXjO/D08yyNRDJt/uVTRrzd+zrj9qYMtpeFmqyu0SOJHCD9bcknrhkoTG4b5wBDyw4ywB53DVGXo88XMktHgNpW5olYjWxwvTo3/XdKdIsbOxDc1qYF+9s/Wp+gc1gxY4QDvqs2aUHbOsoG2ZUedPAZpxN2wYBZDNc36N91fkh3pG/qn38e//zYSYvcc7ADfQYAXKI3vRcItAb2gV+xmsyNUey3rEcqAvvtq69ZRiwKter2KKnEeJdRhpXTe5mE0CNmRIsI9N44dM9br9wzVnIl9MuRW2/VrSngtfjpiUdpqwlToN8xkiBB+g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CixexRslsnX7njnxUInvY2rSBt2XnpZ6ZYj5CQnYBQ0=;
 b=eicyndxXiQeV6yZjsxiT9ZhqDI/Uwxbh+JR1HmhCCiVGaR6sNCLv2sJY5zdCYYQP09Vw3VDbQuJeW+4q7a7pAInVn4efq1SJbDP8kix1wFtqgz2gXpov+3/ZYg3/EDnixqZ7FQnk/8PWQ4DMP/Bx+o8Iw27bTAul6wt8nQB5KaE=
Authentication-Results: dabbelt.com; dkim=none (message not signed)
 header.d=none;dabbelt.com; dmarc=none action=none header.from=wdc.com;
Received: from DM6PR04MB6201.namprd04.prod.outlook.com (2603:10b6:5:127::32)
 by DM6PR04MB4314.namprd04.prod.outlook.com (2603:10b6:5:98::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3045.17; Sat, 30 May
 2020 10:08:15 +0000
Received: from DM6PR04MB6201.namprd04.prod.outlook.com
 ([fe80::f8b3:c124:482b:52e0]) by DM6PR04MB6201.namprd04.prod.outlook.com
 ([fe80::f8b3:c124:482b:52e0%5]) with mapi id 15.20.3045.022; Sat, 30 May 2020
 10:08:14 +0000
From: Anup Patel <anup.patel@wdc.com>
To: Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Albert Ou <aou@eecs.berkeley.edu>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Thomas Gleixner <tglx@linutronix.de>, Jason Cooper <jason@lakedaemon.net>,
 Marc Zyngier <maz@kernel.org>
Subject: [PATCH v6 5/6] RISC-V: Remove do_IRQ() function
Date: Sat, 30 May 2020 15:37:24 +0530
Message-Id: <20200530100725.265481-6-anup.patel@wdc.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200530100725.265481-1-anup.patel@wdc.com>
References: <20200530100725.265481-1-anup.patel@wdc.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: MAXPR0101CA0037.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:d::23) To DM6PR04MB6201.namprd04.prod.outlook.com
 (2603:10b6:5:127::32)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from wdc.com (49.207.61.131) by
 MAXPR0101CA0037.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00:d::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3045.21 via Frontend
 Transport; Sat, 30 May 2020 10:08:10 +0000
X-Mailer: git-send-email 2.25.1
X-Originating-IP: [49.207.61.131]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 8b3efd80-89ae-4ea8-b750-08d804815dcd
X-MS-TrafficTypeDiagnostic: DM6PR04MB4314:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DM6PR04MB43144F23670277CB8B22D54F8D8C0@DM6PR04MB4314.namprd04.prod.outlook.com>
WDCIPOUTBOUND: EOP-TRUE
X-MS-Oob-TLC-OOBClassifiers: OLM:1186;
X-Forefront-PRVS: 041963B986
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: gNQVZCpmudu1U0Grl1K3h4ggIbVSYsyQg/7GrkGWrU5Iq1RR9L5pDodebPccbsxLkAgdTGWp5FcHyaDzk+IJYldGwd6w1lC8zJJ6K9t/WtdIoib7xRm8gattVcu+G6Vr2yTknIFGA5TrCud7CfMsmtww+s6Qa6sAMlrtBZrXRPturoK6s0jlUqw3YVvRTBv/x//FLzdOFb0mEjVNXFDS3HOYTerGCzZwm9Jfw/7CZ7hGN59O8Fo/iG0FOKhwMM8PtuN/poeLZM09/x/wKLcerrivdmSa0Q5cp0kPGWa8jUfhCTQ0YwF2NWSZk9datBFe
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR04MB6201.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(396003)(366004)(346002)(136003)(376002)(39860400002)(26005)(1006002)(186003)(1076003)(6666004)(55236004)(4326008)(956004)(8886007)(16526019)(5660300002)(2616005)(8676002)(8936002)(478600001)(36756003)(44832011)(2906002)(55016002)(7696005)(52116002)(7416002)(54906003)(110136005)(66476007)(66556008)(66946007)(86362001)(316002)(83380400001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: sEbbtDlbo0f0EQV2sBlid7EQuXw9Use/BVVWSB9r+PZntRo0Y03g3c+UXuxq8D5hyxhuXkNE1mCzayV2q8v249dUZMifg7tH8MzlQvedA2MmBAKZKGolUt1AfNhS6/vh30BAun92pO+7KgZJ0lwO7bD1UmNN8SeRQJEc6WNQiKI0oDyQSadsummAbkjimVkBv+85pDLko+PP+qwIAhMoo/u6TwA9g2O3I8NjsPDiL6UIWpTQl1Oy8HIIOFobBd4ttQz9KFrDrhWAMCcP2R2eKxZW/QTFXDwEani2NhTnzj49NSI3UrPPAAQHUxNrqSqvWOzfviHVvR9aXY6f6Ux8nKi1/0XlzkkQUdoC5aqFu/EhasH8zzboFCGQ4pLv4/+uBHX6kb8lfKVaJc0lJsUUDGweGTeGRbJRFRC3ndCHpEuNp0jI1y0CmM73KDnCJ1GrVqcyEUEIbmjwxqaylDBxHpkLXRZIeJP1DxoVBTaucys=
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8b3efd80-89ae-4ea8-b750-08d804815dcd
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 May 2020 10:08:14.8687 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: EVaEhxKnw4pVei8acE3Gpd6vWXVNxUSLrBMmMIiZREi93pbhIG/Q3uWB5vPVQ2BmEi+j+7aPiIgzh+JOYKsVow==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR04MB4314
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200530_030825_931669_F232491E 
X-CRM114-Status: GOOD (  11.42  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.42 listed in list.dnswl.org]
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [49.207.61.131 listed in zen.spamhaus.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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


