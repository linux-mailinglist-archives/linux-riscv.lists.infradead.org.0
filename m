Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A67A14FCCA
	for <lists+linux-riscv@lfdr.de>; Sun,  2 Feb 2020 12:06:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Type:Message-Id:Date:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=bsq9FT9moFZoKzWfdtb5BpXHbdCsbs3tT1XCbncxR8o=; b=Rpr
	60wcaqNSMTsAJOAUwaCz2OCr5qca6IYXznQeW5LDWUuB8/J8TqI3tBOva2M79yF3q99paywmQu5MP
	S6fQVacprkMtbLnZ8ZK16qYz0dtWrxGdbfSBDsSjZkAX0lYnjoumnVrgd2tLBwsWDRwmfagojYuqp
	UlIVOj6r7aBO8IHBu1FexVIW3iWLtXbE5p9sHAotlQMZo/JHgF166LEccq2TptKk1m2+viBuW5PGV
	gN6oOSOvjD/XovauxR59vySKxp08UUtciOfJgDFXDr8EcHYvESCEsSZjzoUEtuvuPOZfFAcB+lQ24
	kBT4EvqcoV6L5ZOQRttCQX5CNuV6+BA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyD54-0006wg-CO; Sun, 02 Feb 2020 11:06:22 +0000
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyD50-0006vd-VQ
 for linux-riscv@lists.infradead.org; Sun, 02 Feb 2020 11:06:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1580641578; x=1612177578;
 h=from:to:cc:subject:date:message-id:mime-version;
 bh=XES2koAMzAn+jrNRN9pU7/oRTwoU1BNvGUcOReuP/RQ=;
 b=EPsToJqEf/QanfJkOnUQuw0hEeR4PFUQFtRX90ZXnjvQSIgR0kDHh762
 /dvMz9XLqbgGz4DhqCMYulduU6iHSux8nfWgoenlZT5w5JdBOseEMCRaR
 UH7DFsrq1Dieh46q/mwMG5B6pDRvhFCSMcWoC3/DBlWfTKWvCcja4nMfn
 r0iLr1xt4J2ks+Q6HIO5wGQrshdBjTT9XoX+qECVToE25KhZtvypDEPOe
 nn0GKUe6dnFC63YfwTbat6wo5/HbQdGLXhx2+vOfh6EUWGRaJXJlyFjfQ
 jDrbd2uJWa8ox1OsLdupjdxweWROH0FXeD9G0vkZB/a/wInbLrkYffZ5w w==;
IronPort-SDR: nTaWWAEioI2uFmMN0+/5M1zKl6mugcztt5AwiBxqObfcHoMetYfV/3iBaio/XLKK3MkabgxRJf
 Pd6kql/LXOKpa+p3k7ZJE2qyG29mMr5KMG8Y5emsS5uR/v6kXwhYOOEo8fgPPfDIDKPxpsZyXW
 oSqHrR4GzGQi0/LCZvdv4t94mLy6IV+eSf9zGfhr9QsBXEISP5yzrcxjjsC69q/Vcwq/7INLgy
 skYgve6PLePfa/dvJoMsJcFGQDjd+gLeeOAL5l+Vqbx20dIRTmM5rsIfcK0mHvbINNRx74dIWU
 ulE=
X-IronPort-AV: E=Sophos;i="5.70,393,1574092800"; d="scan'208";a="236870672"
Received: from mail-co1nam11lp2171.outbound.protection.outlook.com (HELO
 NAM11-CO1-obe.outbound.protection.outlook.com) ([104.47.56.171])
 by ob1.hgst.iphmx.com with ESMTP; 02 Feb 2020 19:06:13 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ECVVHzXIaWeGkic2BekVjXfNTte3mogTccsISYkGqFCCh/odK/eDEdMdcEbrBsbQE29OMRF85uXT8M/ImBYNLqV8h6Y9lQM649W3VT5clTliXfe41XWTgcW3xu+28CPgKwNxw6rQNtRJrdzptr8+O4S0SNhq+IYCLvJuRyD7GA2y7110hoWCfJMTusTQs8uW6Y93DaAZ1EpKAE8htKv1njFBhz8VDs8N+hGGTMboJK4C1NUU6zryB/rZQjNJ34mtGkE0LnFEKMqztiQFIW0oQFv99L5fX3Woe+Yw4ImTbVITFkUftkG+MBGxec3zNGNXK3mkSZfN9AdsY2064inNag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bsq9FT9moFZoKzWfdtb5BpXHbdCsbs3tT1XCbncxR8o=;
 b=AYyoP8guh95kxaUDhUBYaxV7NM1xpOPV1UVProy8YwNjNyXdQ+BnaspVcLACX8uZBg6XdyyitHbOgnw6y35JrYYo1GUrhFYcOfD9V2KihP0YH5DDEAg7yAAQMgkuzDEXt0ddKVjzv/kot6x2lf4THqnACvkPTjsMm+xJLKqRg2Q/s7RwMq5/qy3PUcB41rlIeaQud37eUmAM61jzqqVPPuQWqWgeSQXQKfvCDi7/Ou28MghZDX9JFrx5+IjTCNC0o92Yds5sxNyo0y9ZICy6zRHaP/NiA2/3VeVKRnoAlKDvoBuVimn/ujrSTajc2yuZWSbIKSU4l//1fGs+YpJNUg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bsq9FT9moFZoKzWfdtb5BpXHbdCsbs3tT1XCbncxR8o=;
 b=DAmbkNAwxMYC0DAPJD3aRYctHN1rkZTP5ZDUzC9+UihBTzv798OZHFHH1Rcz4DoDbtBjVWrhT6bBQSxyB/uX67r95/DzjRuQt2lZeQwMqa2jrg2vMwVEBLsxCNyetjYrf98gXRzH71RSPmbSAajjfSQgG172SvpbVXRGy0FtAKM=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Anup.Patel@wdc.com; 
Received: from MN2PR04MB6061.namprd04.prod.outlook.com (20.178.246.15) by
 MN2PR04MB6333.namprd04.prod.outlook.com (52.132.169.21) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2686.26; Sun, 2 Feb 2020 11:06:11 +0000
Received: from MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::a9a0:3ffa:371f:ad89]) by MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::a9a0:3ffa:371f:ad89%7]) with mapi id 15.20.2686.031; Sun, 2 Feb 2020
 11:06:11 +0000
From: Anup Patel <anup.patel@wdc.com>
To: Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>
Subject: [PATCH] RISC-V: Don't enable all interrupts in trap_init()
Date: Sun,  2 Feb 2020 16:32:02 +0530
Message-Id: <20200202110202.124048-1-anup.patel@wdc.com>
X-Mailer: git-send-email 2.17.1
Content-Type: text/plain
X-ClientProxiedBy: AM4PR0902CA0015.eurprd09.prod.outlook.com
 (2603:10a6:200:9b::25) To MN2PR04MB6061.namprd04.prod.outlook.com
 (2603:10b6:208:d8::15)
MIME-Version: 1.0
Received: from wdc.com (151.216.142.133) by
 AM4PR0902CA0015.eurprd09.prod.outlook.com (2603:10a6:200:9b::25) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2686.29 via Frontend
 Transport; Sun, 2 Feb 2020 11:06:08 +0000
X-Mailer: git-send-email 2.17.1
X-Originating-IP: [151.216.142.133]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: b47ccb09-222c-4ca0-3f6a-08d7a7cfe925
X-MS-TrafficTypeDiagnostic: MN2PR04MB6333:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <MN2PR04MB633331918D2C4D61E815AB768D010@MN2PR04MB6333.namprd04.prod.outlook.com>
WDCIPOUTBOUND: EOP-TRUE
X-MS-Oob-TLC-OOBClassifiers: OLM:3513;
X-Forefront-PRVS: 0301360BF5
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10019020)(4636009)(346002)(366004)(376002)(136003)(39850400004)(396003)(189003)(199004)(8676002)(81166006)(81156014)(8936002)(66946007)(16526019)(186003)(7696005)(4326008)(66476007)(66556008)(26005)(478600001)(956004)(8886007)(52116002)(55016002)(6666004)(2616005)(1076003)(86362001)(36756003)(5660300002)(2906002)(110136005)(54906003)(316002)(44832011);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB6333;
 H:MN2PR04MB6061.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Gw/8sQw5JnQ5RklLftya4FIy+3v94f+Spx31+hRNpnAUTWpPU9xTPQ5y/PkXyIUEigXJ//cUCm6OZuTMlF+kIKpX63EqzW4W6f1ERWlOW1J8RSmbGhNp1BHf/8m8VEIKanfBau4G/BjzXI6whVT6wGKjOSY5SgzDgCVxjlGCeyHJxHNzk84bJCiWBOIHDKO0dQ2X4DL2AIRuEz8dfsLho5OkBfkVF1ZPchjZ+D+vjos/Jz3/MSyChZKPuHqvgXs/iZnmTkajTbpm5x10p4rLg3mgNxDtcmj0TZ9TnLidsOdZlPTbIJ5Z2y3jBgaKMFQTpxunN2blcJkw8lI08XbtZnJtXPoD+JTKbU3gH3+kZQh8bcyDAfWQ8VNsJNq2QpWV+fphHMeEjWv1xWAfz0uAz6N7YqMTHF82ME+aIL6KE9WaB/J+rM0ulO1JuEj0FrNl
X-MS-Exchange-AntiSpam-MessageData: B1Q6WkUWIGAhYYBzPlJslz/T9erwgvDSof4CTVmJ/Z9M0+bdMnTVoiDrqfoDpGR9lndwNwk2Ak0PRKEfb43uXh2EttphSybke3oajA9x7Ilvipr+qnTYfyJZlSMEDdxWN4d78z5gJqyqbVye1hSVUw==
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b47ccb09-222c-4ca0-3f6a-08d7a7cfe925
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Feb 2020 11:06:11.2103 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: g45Bk6FYNJnm3TEc3PRzLiLFEUekIFV5k18HftKvBKq4MHo0zgoCvKFr0tf6JwJ6/TfMZdO9bwj8CEpc5OMOLw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB6333
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200202_030619_179597_96C73F88 
X-CRM114-Status: GOOD (  11.10  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.141.245 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Damien Le Moal <damien.lemoal@wdc.com>, Anup Patel <anup@brainfault.org>,
 Anup Patel <anup.patel@wdc.com>, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org, Atish Patra <atish.patra@wdc.com>,
 Alistair Francis <Alistair.Francis@wdc.com>, linux-riscv@lists.infradead.org,
 Christoph Hellwig <hch@lst.de>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Historically, we have been enabling all interrupts for each
HART in trap_init(). Ideally, we should only enable M-mode
interrupts for M-mode kernel and S-mode interrupts for S-mode
kernel in trap_init().

Currently, we get suprious S-mode interrupts on Kendryte K210
board running M-mode NO-MMU kernel because we are enabling all
interrupts in trap_init(). To fix this, we only enable software
and external interrupt in trap_init(). In future, trap_init()
will only enable software interrupt and PLIC driver will enable
external interrupt using CPU notifiers.

Cc: stable@vger.kernel.org
Fixes: 76d2a0493a17 ("RISC-V: Init and Halt Code)
Signed-off-by: Anup Patel <anup.patel@wdc.com>
---
 arch/riscv/kernel/traps.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/riscv/kernel/traps.c b/arch/riscv/kernel/traps.c
index f4cad5163bf2..ffb3d94bf0cc 100644
--- a/arch/riscv/kernel/traps.c
+++ b/arch/riscv/kernel/traps.c
@@ -156,6 +156,6 @@ void __init trap_init(void)
 	csr_write(CSR_SCRATCH, 0);
 	/* Set the exception vector address */
 	csr_write(CSR_TVEC, &handle_exception);
-	/* Enable all interrupts */
-	csr_write(CSR_IE, -1);
+	/* Enable interrupts */
+	csr_write(CSR_IE, IE_SIE | IE_EIE);
 }
-- 
2.17.1


