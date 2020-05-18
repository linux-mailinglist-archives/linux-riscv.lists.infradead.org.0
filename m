Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE6651D73AC
	for <lists+linux-riscv@lfdr.de>; Mon, 18 May 2020 11:15:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Type:Content-Transfer-Encoding:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=YRrRMaOWFiYI9DDq3IcN9J4GqHHnNpZek9RYaNR/4Yw=; b=SeYBwhcPOPdkD2fY3soGHYEJ4
	DeDBonwMM5soRLCGly7hHyDg5/mYzvDL2TJrsn7xDeAFpsgoOWAjOswKYD4iYKfYTPUmvRlxc6AcZ
	5x/3tTthwoWR//4+IG3VaPCJByb5SY25bWfeL+lByGsNEcrJDOwiXGg7sMaBRUhJmlRJxG5mlhB9Z
	bC91KCObQ9DqB5+uGy1l/gyP9PTLvH2SdpFNgaUnt+H1b4XP8XVdHrHKhPLPCegl+bfC1B5JFlB4M
	uCQY3dZ14bliQK4bEP0aYUWCxpyOOB2L5Fs1GCam911s2oaxM0gCPt/unh790p/+AE5Isplvr2LeC
	qEtRY2DqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jabrt-0001EJ-D1; Mon, 18 May 2020 09:15:29 +0000
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jabrk-0008TH-1X
 for linux-riscv@lists.infradead.org; Mon, 18 May 2020 09:15:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1589793319; x=1621329319;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=AzuIogHzZYQvqN23TBsb403HWX2gEwjYaX7xsAYR0Y8=;
 b=OD7hlDqhBf/IEcbOKOgYnt/aH2l2Qy9BxfN+bA/vXw0BfVkhYU+Jom7z
 EDJD5gyKkllHLVL6S0XaroZqPGKTMfiOWy5J3oJ+NGBDDn1UhfKlT1iBY
 1MxUvnfCif0rRpl/f6altZzKsjMLQqEL7n+Ld0qGrP1WXqNkOal+tOY6w
 T9lXAgjqWP4vZ6PTUeronpXHYg0w9L1IPch3f6JIkuYsKc56yqEJ/mm+e
 k73nATXw49OcIZ7qTIk3VtcOmsDGSsUXksLdhLESe5Oqj0/Ta7dRRN3po
 DtO5hibrp7MpxcIqhZV7In0MYUF0HjcBpjDQzfkMF/Cg/logPgGnLqlgi Q==;
IronPort-SDR: 4q5FZKwOGvWBQMnajh8kfq+wbXtGbc8+okAtRgvrwOocg51LtnTAPsx/yKnkboPgmk/l/UF0f0
 1gg934MtkWc95OGsaH/xNf592Jw2OvarBPncexCAoOgX1BRhXpIpdsDZ4OV5a0Y0h8AG7OywPF
 Or9oQfWmCkokoSBOw+nj0uHjV9v9jKMAL1/iKyV6tZOrpvYmMrIBKhmiP7BJZvhumhSneDt+Sp
 wlpTWfmhD1A0zAdxScWPDpqkMLFyPCVXn8aGk/rZK3siQV/1iQI7rm+QXBgwYboI4DchL+a+ze
 ilA=
X-IronPort-AV: E=Sophos;i="5.73,406,1583164800"; d="scan'208";a="246916598"
Received: from mail-mw2nam12lp2040.outbound.protection.outlook.com (HELO
 NAM12-MW2-obe.outbound.protection.outlook.com) ([104.47.66.40])
 by ob1.hgst.iphmx.com with ESMTP; 18 May 2020 17:15:17 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=X/lkny08xTsftgmJ15W/iNbQhkkBu9r74xyTmjIbEHQs8Cdl9WOgR+VdnzVS5drQRmK0IggKLdBcbzoKGrMbpro/1HRoFXpmFUzkKehmxM+D5jlE6tnqhtKZL5hJRQr6WdCHi63af/ihnxEe/dZ482znuYsnDXFbek5F74noLNAkn+CU9N1lr5LhD43htCmfMg2CZ3268t9hB6ma7bV6cyMOq3gnMbsZhonkOmU+adjQSvotKZqSAKiC/kAFDNRgy2hKCKMDpFMAMKwYt3qFJq/LiD5BVPwSz5d2JGjTxI8ZqfgIcrx6YtP2o5VCFiNYaPptTs56N44NGZke+UN9Fg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YRrRMaOWFiYI9DDq3IcN9J4GqHHnNpZek9RYaNR/4Yw=;
 b=ggqrhDLOzoXuBItmaHQzMyfIePk666XqUhC3qH1LCzyjoiqWzrTa6mVWFFGI8aARLXW6HrydN9m81y3IeShnIT4XWA3GJSmw9taVAgVQexTd+/r0p2P4DXrvZdCO87mSAYFCnl1GYlpMgkOnnGDAEhHpiqWvNlusCyQjhrRBCni3TrRn1xU0BpYPjYSXbJgIYONYPvd+BdBDdFK0IFftCBFil7obNeMKfCytyKTsjSP9626cOP1Ja9/B0XnVi31bccRBTNK5bZrqyzL0zf11LZpK9AvGGTFYuZD11Aq9NJcOeIb81gSAyTgBo/5Wh2m2h2GFTyabUsjnOXCOIqgTwg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YRrRMaOWFiYI9DDq3IcN9J4GqHHnNpZek9RYaNR/4Yw=;
 b=ImAHvXytfVxixDvEREDFK+TZp8NdVjf1CMyr+4/a5O3Gyrd7mGfKt4orH1PX7yvZ7wEOlcwQkLB9O5ShOfMJDuF8Uj1Ih6Y74caPqMVPQGpbuklLAZEhJg5gB+kfy9e+4flbJ7aqbUW3QSCUBAT3FU3D7r3LKx6aFegXxIm+jJc=
Authentication-Results: dabbelt.com; dkim=none (message not signed)
 header.d=none;dabbelt.com; dmarc=none action=none header.from=wdc.com;
Received: from DM6PR04MB6201.namprd04.prod.outlook.com (2603:10b6:5:127::32)
 by DM6PR04MB4155.namprd04.prod.outlook.com (2603:10b6:5:a3::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3000.20; Mon, 18 May
 2020 09:15:16 +0000
Received: from DM6PR04MB6201.namprd04.prod.outlook.com
 ([fe80::f8b3:c124:482b:52e0]) by DM6PR04MB6201.namprd04.prod.outlook.com
 ([fe80::f8b3:c124:482b:52e0%5]) with mapi id 15.20.3000.033; Mon, 18 May 2020
 09:15:16 +0000
From: Anup Patel <anup.patel@wdc.com>
To: Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Thomas Gleixner <tglx@linutronix.de>, Jason Cooper <jason@lakedaemon.net>,
 Marc Zyngier <maz@kernel.org>
Subject: [PATCH v2 1/3] irqchip/sifive-plic: Set default irq affinity in
 plic_irqdomain_map()
Date: Mon, 18 May 2020 14:44:39 +0530
Message-Id: <20200518091441.94843-2-anup.patel@wdc.com>
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
 15.20.3000.25 via Frontend Transport; Mon, 18 May 2020 09:15:12 +0000
X-Mailer: git-send-email 2.25.1
X-Originating-IP: [106.51.27.1]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 3e5d2f3b-48c4-4fae-ab21-08d7fb0bfa6a
X-MS-TrafficTypeDiagnostic: DM6PR04MB4155:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DM6PR04MB415555C5CA58D879D1BE9E998DB80@DM6PR04MB4155.namprd04.prod.outlook.com>
WDCIPOUTBOUND: EOP-TRUE
X-MS-Oob-TLC-OOBClassifiers: OLM:6108;
X-Forefront-PRVS: 04073E895A
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Hqqb6oRFNkxTNjrAtI1HgLREv1kGeBs60SSex504367h9t+ZbbcZuWPqcUeswA4jOrCDMsSezR4H1IJp+2UE5+pgPTbfNPt9rwawuACWGuA1ghNAxiX+jhNuRUoDZjRJSLSoQTzApsd9hCp+1WFNfoqBPI4Gf4nAiv5GYgfxZVPlNOgtS3WBbICSnZw1M1ssgaJ0+uR1MiiKqTwFWPmBHmUAFx5aRVZ35L82XXgq8b1fqEHmfHePFl+50FbpaoqCrJbl7wZXB3yrsx/xIIAUjCTFqyIFEKoi+rJlXYJUn3KxQNcSlUA1dVoXkoa1T+1PhIkGPXI35bHvajwYh4l/YVhuXOgF6xmqmzNgyz1X7uxBSyeX9l1B62tSGquUx9Z39gHSy3jRBK/4CDN+RNm69hq8A9MLWJoBSvw6tAQwOA8bofRY6U6+lMh34TYTZJwO
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR04MB6201.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(346002)(136003)(376002)(39860400002)(396003)(366004)(55236004)(26005)(36756003)(316002)(1006002)(2906002)(86362001)(478600001)(6666004)(110136005)(54906003)(8886007)(2616005)(44832011)(55016002)(956004)(1076003)(52116002)(7696005)(16526019)(66556008)(186003)(66946007)(4326008)(66476007)(5660300002)(8676002)(8936002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: GUSLyCvxRIUJRYon7Pz6xCHLtWzEvVdSZmARAIQYMEA23/oXbZlHuBe8dKOFAkMZ1VizRTq6fyDokUM/GGoUqJ7Q2fimRZzzWcTumdZSemq9P+XaXlHXpa+ktwNVrsk/GhtkbzLzH78g+MVNBh9lVAbaEFgvXbC4PLCnzHbQovOX2XmfSvXlZs5/jRZ7BpFOeFICfvzZO0KnlieWZCgHsxPWg4/gRawcmDTOiFCH8UwRaLeepMAq2YhrvKSH3/RGXMD5TFKuY3gyhxNKRC52oiwYTP7zGiWzi8DVW6Whj4/Bsj9d8SYJzq4N8E1ZrdEk4L6LEC5LnSY4x8NiTAyWy0ff3QmYyADkIgqrRxs72X9LqGQeJfrcqNVAUTG5+7W8DrVU+vxHw1zBK/VPxtcTSFzRA7YD0JrSHxmQ9OYfw/Nci3eb19QqGawJj7RTXhWTpbMMHrx1hHW1VhGs5uo3CWhRLaZR1QKM43f/c4rMoas=
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3e5d2f3b-48c4-4fae-ab21-08d7fb0bfa6a
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 May 2020 09:15:16.5178 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: yDa3eT6PUvQkvLLKFg1IJUfmAxKT2CEYJfYKTVUt+0kDClNWCtlkmaixwjSlVyDNeTLsPwlJH7EkmU/1es3clw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR04MB4155
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_021520_104320_C5287D02 
X-CRM114-Status: GOOD (  11.85  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.141.245 listed in list.dnswl.org]
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
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 Atish Patra <atish.patra@wdc.com>, Alistair Francis <Alistair.Francis@wdc.com>,
 linux-riscv@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

For multiple PLIC instances, each PLIC can only target a subset of
CPUs which is represented by "lmask" in the "struct plic_priv".

Currently, the default irq affinity for each PLIC interrupt is all
online CPUs which is illegal value for default irq affinity when we
have multiple PLIC instances. To fix this, we now set "lmask" as the
default irq affinity in for each interrupt in plic_irqdomain_map().

Fixes: f1ad1133b18f ("irqchip/sifive-plic: Add support for multiple PLICs")
Cc: stable@vger.kernel.org
Signed-off-by: Anup Patel <anup.patel@wdc.com>
---
 drivers/irqchip/irq-sifive-plic.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/irqchip/irq-sifive-plic.c b/drivers/irqchip/irq-sifive-plic.c
index 822e074c0600..9f7f8ce88c00 100644
--- a/drivers/irqchip/irq-sifive-plic.c
+++ b/drivers/irqchip/irq-sifive-plic.c
@@ -176,9 +176,12 @@ static struct irq_chip plic_chip = {
 static int plic_irqdomain_map(struct irq_domain *d, unsigned int irq,
 			      irq_hw_number_t hwirq)
 {
+	struct plic_priv *priv = d->host_data;
+
 	irq_domain_set_info(d, irq, hwirq, &plic_chip, d->host_data,
 			    handle_fasteoi_irq, NULL, NULL);
 	irq_set_noprobe(irq);
+	irq_set_affinity(irq, &priv->lmask);
 	return 0;
 }
 
-- 
2.25.1


