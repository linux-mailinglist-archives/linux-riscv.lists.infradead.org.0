Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3B261DCE7D
	for <lists+linux-riscv@lfdr.de>; Thu, 21 May 2020 15:47:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Type:Content-Transfer-Encoding:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ob6uXxeCegrtxqCXvOpGyy8bYomEH+RQ1UdvLcaVtXY=; b=BYAdPbpAv6tWjRkUXVn6DIcJa
	xtgGBAM/6PDIvVktsctDWqoUWwB67+cLTBGTPq8ezuR5xx35/raP3WY+fwdOtARx8G4R9qvoHlqaV
	EpgSPfIEAmrUTurLFplwlAZ2Atr1iyOraAZe5UqrgqzXIN5siVUIoTpxK/CW0H0Z03CeJ8m8NvG8d
	s2W8g8DyXmHHF9DYX7zUeAlvmOwUBNU3HBYIJKQd+RG5nCZZggujss1qlJF4sLrN0yH6mphvBTPOG
	R+OMCzuG8poDRmcy+68uofVLYFtdyOCjaOxSDHaS7pnJCwE7yG+PPIxYIJPFbm7eF/X+hj2J0bQ/Q
	KmUaKCUPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jblXU-0006Rc-Mo; Thu, 21 May 2020 13:47:12 +0000
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jblXP-0006OV-SV
 for linux-riscv@lists.infradead.org; Thu, 21 May 2020 13:47:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1590068827; x=1621604827;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=+fVCosLVNVzYa9DEV+DdvD5UNh9H7AyIvdRwFBPCXsk=;
 b=W9LKZT8dawOlrj7tVi/wYWN0QcWIZONV58WKhBr+OKQQJG//HphpWHPD
 Jm+jj72aCBlHQQnWDUpowfCvlfTx+hXJwY9XPwKVWXEsM/p4Y9rylq1IW
 8R1pJhllVyLQmwP5C+LHjMDgjHBA3pQ7Pay/kBW2OerBNO44jTTdtyFaF
 LkZKI4DgdrBT6J9EZySn0H7Ps5HFeyDYcRkYqU3mGOQ6IHr1Km3WoxrB8
 2rfaP6gs6/FctmFQ3lWNMlZfJstOfKKl/a6KrESyeeOcwsLb/wc+lmUO5
 1jVaKBATYu6Cyggn6yt7HKAUXa8pSMVj83ge2AzFDMwLW1OK5aC3wT2Tx Q==;
IronPort-SDR: GwcrF5gb19oC8wCsRO6iAHUmSypYDlrWTw0n4/a7mgQHAyBF59G3XEO/wZZuIHnWy/nW4OctgA
 xtxs4rYTTzqN2/y3qP5JrAgNwMIE7gXoUQLsQZB+L2r8/Sy8HmYK0f0tB0srV1LnAJztayZe7F
 bMVGCd/f7FlG7DfmaoTLwE7fBqZFJZGsSU/oVNU76i+eTXckJjHK4GjbxHMhIVeGLR3VM000L/
 uq5PRXglKIcBSms48tYxRv9oj4FQXcTAnj3vuI2sLbFN3jMoIiKdPHGMIE/+N7SeHCzy5DYhIl
 i7c=
X-IronPort-AV: E=Sophos;i="5.73,417,1583164800"; d="scan'208";a="138224562"
Received: from mail-dm6nam12lp2174.outbound.protection.outlook.com (HELO
 NAM12-DM6-obe.outbound.protection.outlook.com) ([104.47.59.174])
 by ob1.hgst.iphmx.com with ESMTP; 21 May 2020 21:47:04 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=S/lRpk2V8fciUvmJfTba7dmhd89MYo2KjrXAmxbpHRf0OuOZQqTDWrSB2R0l962bjP+YIMsYMHuyLWFPAgzQwemFpRLhR7mlvk+gjoAKyiRQ2rnjcusJOGUpxt/gDKtKGsR5wV97VTs3/GYfJCcfwiwD5VM26/zhxjXUIz4nUWcRUpzxwq/EZlTcXFI3qMNK23c84NtTcMQEd24369BR+cJPK0QaOQ+1fVAp5cfpmGikfEeDpvbQvosHmFqp4F1z5BiSxM1Q7HboDrByujDD4wtSwZDVu4/BZMHKuOaa4Bapdvm6djGCL5lrPWYICQecxeAu1B+phLeSvkhkMarq8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ob6uXxeCegrtxqCXvOpGyy8bYomEH+RQ1UdvLcaVtXY=;
 b=LlB/QcbR9Y0YBcVk7V51BOZV380YaygiFji94szr5665y69a6t1nzOnJt8uosib69V5Pc7D2YxNXzafGwkhqvUmvHPiCkCggYgloFplhAktvKRN1v8wwRagiL3ZQGncnQxk1MDUSJguNDGqRVuw4Kc+XlEzYQih4ebARNFlsIoFss5wOSohH9GloEecoYlqENCMx8qAEN9tq1t4Stt+gJ7iHybXNaGOyICDMiwj5CEsTTkRl/pB0C3a8L2eYSclPEi9V6lszQY+IgfiRcQUAN2k5Gskli17RCX7/DNeIE3eR/aH7ROM/jNsXsAonEdGCTDI9uK00TfunxktD02q//Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ob6uXxeCegrtxqCXvOpGyy8bYomEH+RQ1UdvLcaVtXY=;
 b=nuhyQJj6Fn3ukYQoSICb4oWu9lokJmR1y7LSjhOcz5inN55Q4eQAtNclJe96w17sfO6TFUx6z37Y0TlRgRvl/nlfZNWrSYUcQDjSJlCdWRSSkH6XA2CQ6iJP1t3tRYEp+ETypAa8gMu6v0BoA0rrfCvkupKTM3xFGHV/FCg1wk8=
Authentication-Results: dabbelt.com; dkim=none (message not signed)
 header.d=none;dabbelt.com; dmarc=none action=none header.from=wdc.com;
Received: from DM6PR04MB6201.namprd04.prod.outlook.com (2603:10b6:5:127::32)
 by DM6PR04MB4380.namprd04.prod.outlook.com (2603:10b6:5:a2::31) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3021.23; Thu, 21 May
 2020 13:47:03 +0000
Received: from DM6PR04MB6201.namprd04.prod.outlook.com
 ([fe80::f8b3:c124:482b:52e0]) by DM6PR04MB6201.namprd04.prod.outlook.com
 ([fe80::f8b3:c124:482b:52e0%5]) with mapi id 15.20.3000.034; Thu, 21 May 2020
 13:47:03 +0000
From: Anup Patel <anup.patel@wdc.com>
To: Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Albert Ou <aou@eecs.berkeley.edu>, Rob Herring <robh+dt@kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Thomas Gleixner <tglx@linutronix.de>
Subject: [PATCH 5/5] dt-bindings: timer: Add CLINT bindings
Date: Thu, 21 May 2020 19:15:44 +0530
Message-Id: <20200521134544.816918-6-anup.patel@wdc.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200521134544.816918-1-anup.patel@wdc.com>
References: <20200521134544.816918-1-anup.patel@wdc.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: MAXPR01CA0073.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:49::15) To DM6PR04MB6201.namprd04.prod.outlook.com
 (2603:10b6:5:127::32)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from wdc.com (106.51.30.72) by
 MAXPR01CA0073.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00:49::15) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3021.23 via Frontend Transport; Thu, 21 May 2020 13:46:49 +0000
X-Mailer: git-send-email 2.25.1
X-Originating-IP: [106.51.30.72]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 98386d5a-ee42-4782-b152-08d7fd8d6d53
X-MS-TrafficTypeDiagnostic: DM6PR04MB4380:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DM6PR04MB4380B0868E54FA7CD7489B968DB70@DM6PR04MB4380.namprd04.prod.outlook.com>
WDCIPOUTBOUND: EOP-TRUE
X-MS-Oob-TLC-OOBClassifiers: OLM:6790;
X-Forefront-PRVS: 041032FF37
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 4Lg2fExpGHB6x6MZnVlNsqUXGph8i2rWbqTIcAeE5hN6n3ySFK+27g0TALpR2XEyxcUV29Qj5/syfzbFej+5ZnNIVWRyMbRWtqTJ7Z86gom+qWqMsfqvDCdFg/WLoxH3f+KtwIT03wCQiWvDn4lLqjQX4OQIDg7fHB2zjIIvBWl0Mw1fsYMWhOvKNvDgk6NUns9KC5yRC1dwOXxWtAert5zmJ750g3X74O09CM+tbAWd/otC3/2+9Kp2zph6hpAdTMLTCbr4r/Po/xgsrFyie0l3NGtpDBJyCkcN9fGxpZUvcwtFXKSFR1mymTj4988H/A8eGztAcEnXcl6vkmvxhw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR04MB6201.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(136003)(39860400002)(366004)(376002)(396003)(346002)(16526019)(55016002)(86362001)(316002)(6666004)(26005)(1006002)(52116002)(1076003)(186003)(8886007)(54906003)(478600001)(66476007)(66946007)(55236004)(7696005)(66556008)(5660300002)(110136005)(36756003)(8676002)(2906002)(956004)(2616005)(4326008)(7416002)(8936002)(44832011);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: 4o/RxkjniQv+PVj3a/mU8yTIubtVYBIF4Z5H0JqjTfxYoikOgdtZyR4ZHmRhB5cyHCq+t4xrXrPuJ9KfHESLP8khtnOZ7Zn7R12RhUpQ5ZioooQSsXYqkY5DexFZ1He6ZOJp0ZdzLyl4Mr09CB1sWDSZnYsZEQ54ZOSh9gjBA5NkadoO8LsttffLXSdEXiu6UmGFhZlJlnrtwlYRL16FVUSeTeioIx9xdUAdkWLDKk6vgMo/0Pnc/T+jcFC/MokWQropa1Xd3sFJQ3q8MUJsSO65+eC+DlLLHBzCzr1jeBVxvRYZrUpNl/ptzi2pjdlotAG3nZO+esZ3R9oJA3F1NNNoZfZBUndJyDHzyqVHhqC9vizo5Wr6UswvTqhpiUpG3HzAVquzJa51Ge+PCo8et+iMUTFuVbM/sxdAUY1ixlRhqkD04cBFYr+4tVpgseACm4dosgLlA07Bfngm+UJuUqOWzKvutIgVApBBS9vXKH4=
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 98386d5a-ee42-4782-b152-08d7fd8d6d53
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 May 2020 13:47:03.2367 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: X/X1jPd3ZlSdyzWOnT1kclSpeALm6NkF0kU4mRjVBeALnj+PcmN4nUaPN9DRUocF8vxhMI8Y0k6D1SwGnTuSzQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR04MB4380
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_064707_980516_487F9F74 
X-CRM114-Status: GOOD (  13.26  )
X-Spam-Score: -1.0 (-)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [106.51.30.72 listed in dnsbl.sorbs.net]
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.42 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, Damien Le Moal <damien.lemoal@wdc.com>,
 Anup Patel <anup@brainfault.org>, Anup Patel <anup.patel@wdc.com>,
 linux-kernel@vger.kernel.org, Atish Patra <atish.patra@wdc.com>,
 Alistair Francis <Alistair.Francis@wdc.com>, linux-riscv@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

We add DT bindings documentation for CLINT device.

Signed-off-by: Anup Patel <anup.patel@wdc.com>
---
 .../bindings/timer/sifive,clint.txt           | 33 +++++++++++++++++++
 1 file changed, 33 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/timer/sifive,clint.txt

diff --git a/Documentation/devicetree/bindings/timer/sifive,clint.txt b/Documentation/devicetree/bindings/timer/sifive,clint.txt
new file mode 100644
index 000000000000..cae2dad1223a
--- /dev/null
+++ b/Documentation/devicetree/bindings/timer/sifive,clint.txt
@@ -0,0 +1,33 @@
+SiFive Core Local Interruptor (CLINT)
+-------------------------------------
+
+SiFive (and other RISC-V) SOCs include an implementation of the SiFive Core
+Local Interruptor (CLINT) for M-mode timer and inter-processor interrupts.
+
+It directly connects to the timer and inter-processor interrupt lines of
+various HARTs (or CPUs) so RISC-V per-HART (or per-CPU) local interrupt
+controller is the parent interrupt controller for CLINT device.
+
+The clock frequency of CLINT is specified via "timebase-frequency" DT
+property of "/cpus" DT node. The "timebase-frequency" DT property is
+described in: Documentation/devicetree/bindings/riscv/cpus.yaml
+
+Required properties:
+- compatible : "sifive,clint-1.0.0" and a string identifying the actual
+  detailed implementation in case that specific bugs need to be worked around.
+- reg : Should contain 1 register range (address and length).
+- interrupts-extended : Specifies which HARTs (or CPUs) are connected to
+  the CLINT.  Each node pointed to should be a riscv,cpu-intc node, which
+  has a riscv node as parent.
+
+Example:
+
+	clint@2000000 {
+		compatible = "sifive,clint-1.0.0", "sifive,fu540-c000-clint";
+		interrupts-extended = <
+			&cpu1-intc 3 &cpu1-intc 7
+			&cpu2-intc 3 &cpu2-intc 7
+			&cpu3-intc 3 &cpu3-intc 7
+			&cpu4-intc 3 &cpu4-intc 7>;
+		reg = <0x2000000 0x4000000>;
+	};
-- 
2.25.1


