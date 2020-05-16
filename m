Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 126A11D5F2D
	for <lists+linux-riscv@lfdr.de>; Sat, 16 May 2020 08:39:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Type:Content-Transfer-Encoding:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ZsMbv6a1cH4Sn1g8V4H9H4bimKhR7++ZHY70/ctou2U=; b=ubmphU1z0chrYGpQxPzlBQ+Ay
	t2mFTOXkMR/DjxNgG68d8ZDfyybj/93y8mFHrdNbGMbn+4P/rcISpl97FhGMSktlbovVfMgIbcSti
	O2l1KKujAsL/gIyIGLrHos2DA0LX++Uah6qpIfkmf1OY6TLy7/EGGW+6n+2Y3nIKtK3KO085ocAqT
	2Lmfro1kFDNEmb4bICfGO3uFLdNEFr7QBuovhCRHY7HNI5QSPI6WZWAtko7/xSJjSmnJogqgs4oBu
	aj9vDL4kZqfM1Q30Ue5a56O4i8sy1iD3+/MUyDd2Ie3u96s6WbvA7vpWZthmF0G13F0kX94kfhTnS
	ruvdMxMnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZqU7-0007J6-TL; Sat, 16 May 2020 06:39:47 +0000
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZqU3-0007Go-RN
 for linux-riscv@lists.infradead.org; Sat, 16 May 2020 06:39:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1589611183; x=1621147183;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=Hdq3SJku9dP/cMy8yxRRdBA2TPADmvP9rAYm/QHV8R8=;
 b=GMz4YtaIhIqOv2rT0cHGL8VB7OGJNMsifov7I/X5K9VA4F9lBt9bikND
 9LlvKpDD2QGjeSaNfSHDOaXMg6nRUhnF0BdO3MEPW+QSHdO7Gi5zczskG
 UvmEMJ7+5KhWI2mG3XiuUKsMx5nrkJvEQQFun8QjcfXUlGK4A/1oPbHHM
 IRDXjORz1+eppYVkic6toA6SBHcOoLMU81b9f9TBFfXML9v0fy3eKpxos
 gJUyLmfaPsK/uQffVJntmuqhWcDEfiUwgjTvvZ782DsqojjGyrvAsHTPi
 Ykqg0AQqgi2qRYy/1PUVny5NMt3kqpyZr0aknQ8xZH0KbN5m5R72/fBpn A==;
IronPort-SDR: kXV1bMZgeKeJyMClRaHfoq7BuUXGs/94uuxYX8gPY57JLZnkpaAv0EQv3o1H/Im1kZRqVdhxv0
 7QltP6OfmuO6LgNdNh4FYwI7//YISpIn2JEnGWxDpRYrAdhKvXHsoT5/8ssQpxSGkF5lUEU6Cq
 GvUNBT5IgCC1RT6eUObBLlGGz8NeoAKXDCem+rZNdhWioKxayXVESbtDB/6mdtBq9oS3l1sM/Y
 evJ3kF9ANcdroP4lOpCjSmQcmP0D5qii1gcW+PqTcxqa/Dn5+L6/tpmUPsNyP0k1qopyuxi15R
 WMM=
X-IronPort-AV: E=Sophos;i="5.73,398,1583164800"; d="scan'208";a="246808227"
Received: from mail-sn1nam04lp2056.outbound.protection.outlook.com (HELO
 NAM04-SN1-obe.outbound.protection.outlook.com) ([104.47.44.56])
 by ob1.hgst.iphmx.com with ESMTP; 16 May 2020 14:39:39 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ci9AX5zGGmlhKmbetYHe+R3Y03uWRgqFnIgRAYTAhupGQrav99S/L/deXT4gXrEfotQevSYPdmjccAGDtoBwJtjcR8khk4KDPLBxHaumVNuVrp3ftTpJrfIvY6C6l+8eQqwgQwIMI3IkhRgj1qDOcB48ehMdsYLzANy3QomVqpFukWqz0mRGpVkcrtuVrdH99yKjTKXRSir2bAcxYpjCGPJ74Zx/qIcLo+ywBTB5VjlzEx6fg0kjJy9jdtCvlQ1uh2+BqHYzFL0QMfsRYVL9PfdgT1ouQ69tR0UkXs8sSw5npfoW+iJMYJIYNVxIbs7Hwsv/HUFvKM2rFUPR7uwKGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZsMbv6a1cH4Sn1g8V4H9H4bimKhR7++ZHY70/ctou2U=;
 b=FthN0/GM+5M3rnm1sAcTC5lNYFU5Mu6O2NygrlUYpfbrmpuhu/yTe+kg4shXmJUn0dtW5ikmuEkQQ7cNwBCPXyaO1HrDS+2A//09h+tZtXEQfUJ7M9n+VJoxdgNqY2TRaOCX+qIGhoIQPHEf/odUA9SqFmOtk/4vztxttk7ssjhkOxwwPpuuedYLE0spGxJM5TfLEkFDdrpi4D2tsrJaBWXQtdRlf4MpIg9RaUq9tA5fywnwBUi+qkUvyuR8jANm77jo+SftQ2ZQH3VL9NBUtdNdeAXiThZg7Z9Fo32ePDOZ5z/VwskuVGBqPg9qgBnW8/NlCrWu5A5DSvAVtR3z/Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZsMbv6a1cH4Sn1g8V4H9H4bimKhR7++ZHY70/ctou2U=;
 b=UHzG0x/KkXVqYneR+aWAOBDS9kvWW7Hqu3DAFWbNW/pzgMNMc2QHFrkO2nD86+w3K+tm7r8vz1liJpQGB0teKIUTYiek7gfywW2Z5XPxj9wefyZM6i+MIPatVf49LbFg696ixoRpqB6VQ7W+1UbNQCfsZkgJ4AbeMAoMkG/jaZI=
Authentication-Results: dabbelt.com; dkim=none (message not signed)
 header.d=none;dabbelt.com; dmarc=none action=none header.from=wdc.com;
Received: from DM6PR04MB6201.namprd04.prod.outlook.com (2603:10b6:5:127::32)
 by DM6PR04MB4539.namprd04.prod.outlook.com (2603:10b6:5:2c::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3000.26; Sat, 16 May
 2020 06:39:38 +0000
Received: from DM6PR04MB6201.namprd04.prod.outlook.com
 ([fe80::f8b3:c124:482b:52e0]) by DM6PR04MB6201.namprd04.prod.outlook.com
 ([fe80::f8b3:c124:482b:52e0%5]) with mapi id 15.20.2979.033; Sat, 16 May 2020
 06:39:38 +0000
From: Anup Patel <anup.patel@wdc.com>
To: Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Thomas Gleixner <tglx@linutronix.de>, Jason Cooper <jason@lakedaemon.net>,
 Marc Zyngier <maz@kernel.org>
Subject: [PATCH 2/4] irqchip/sifive-plic: Improve boot prints for multiple
 PLIC instances
Date: Sat, 16 May 2020 12:08:59 +0530
Message-Id: <20200516063901.18365-3-anup.patel@wdc.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200516063901.18365-1-anup.patel@wdc.com>
References: <20200516063901.18365-1-anup.patel@wdc.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: MAXPR0101CA0002.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:c::12) To DM6PR04MB6201.namprd04.prod.outlook.com
 (2603:10b6:5:127::32)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from wdc.com (49.207.60.36) by
 MAXPR0101CA0002.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00:c::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3000.20 via Frontend
 Transport; Sat, 16 May 2020 06:39:33 +0000
X-Mailer: git-send-email 2.25.1
X-Originating-IP: [49.207.60.36]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 12575aca-acdf-451e-615a-08d7f963e7de
X-MS-TrafficTypeDiagnostic: DM6PR04MB4539:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DM6PR04MB4539D47A05037B3B2DB9568E8DBA0@DM6PR04MB4539.namprd04.prod.outlook.com>
WDCIPOUTBOUND: EOP-TRUE
X-MS-Oob-TLC-OOBClassifiers: OLM:3826;
X-Forefront-PRVS: 040513D301
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: DF0qtEgm9zF7s/slq9zwvT50AtUV4I98PoCdGRmcvOGDgyXmMcRZiP0O0Ha+/YvRYdrY80EO6hSmy6f+B1p+9fnghtnujoZgQMIy+3gDQ5+2GF51/AGjRgDiILIQdL2GDy4idWzBVK2VnKGDgvT2yOYJw58JWZ0s8YMTZ3bQAQ0m/STQt9N4s0ijM9Iddgv9w3jhhH72Bo6XTieV6rkuIHPs7JAvpd8X0m038K9+BFrYYYY1tggIEB9THxMeO7Cd8fXEUHTsSWd3LVrtL3HWU+NfI4AqA2VYEb8RvqxIlikLtgLBTL4rs2nEAnOlrQB5X84F9bBK1ZWDKFyJse9GaHDaFV8SrjS+e/UxyH6mBhDtLTaA7Ql+WVkEoyAEdkYzvNlNRx88vOogNLcLaT/f9iNUrp7beju7kg6o2BIsiPCCw7BTqtNqGpz+PjDRMIu7
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR04MB6201.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(396003)(346002)(376002)(366004)(39860400002)(136003)(6666004)(1006002)(2906002)(8676002)(36756003)(8936002)(44832011)(26005)(54906003)(86362001)(7696005)(52116002)(55236004)(110136005)(1076003)(16526019)(186003)(316002)(5660300002)(66946007)(8886007)(55016002)(66476007)(66556008)(478600001)(956004)(4326008)(2616005);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: TrdWCZ/VCn9SWu8TtJXV3fn8XJxvC9Q33z4DKUnw25xVIzPc2E0XOHvw6OLXyGg67O5SPi2JlwxvUNImCkE4kMjqIB9+XW05kAFhec0MAz/9dtJBecRaAabeVLI4CrZEJFDfmLB35yK4Mr25yuuXPCrz6Y1Q9a+hP95jRMgZoPItj8IsdBfQnQHWdWLPPKVH6XgUcJPIat20XvZpHW3fdL1EffQpIRyK7GpbW4QknaZKhmLJGVx3VmWWMSTSGn4qJMM9Os1U3X3D+30ekLPUojMDTrD2ycn1pF7Pcmco/M8t+/LAtP/W04VWQsN3g1+3veJuSbZ4NglQm5RFxMYF5e15k1GUv/a8J7gTTCSyY7X9g2X3lEIWPvAIEGaOxj7N72ekjxK2cU6EgoY4VmoLMYYA94i9R8ODxWy5ct0oGgCqbRii04i7kuSK/xiFzH7/5rI5RgWPqoti5Jtm+01V2bG5Mab+xL5Pgqt8UEaKliA=
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 12575aca-acdf-451e-615a-08d7f963e7de
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 May 2020 06:39:38.7791 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: fmkFDuGDfLyo5G3tVf27Nl7tqd7cEcW+uj3hzAic1kSG33OT44GOumnNqTZaY5A1BbES67XJR2fBpXU+JdfS5Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR04MB4539
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_233943_895249_92119701 
X-CRM114-Status: GOOD (  11.01  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.141.245 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

We improve PLIC banner to help distinguish multiple PLIC instances
in boot time prints.

Signed-off-by: Anup Patel <anup.patel@wdc.com>
---
 drivers/irqchip/irq-sifive-plic.c | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/drivers/irqchip/irq-sifive-plic.c b/drivers/irqchip/irq-sifive-plic.c
index 7dc23edb3267..2d3db927a551 100644
--- a/drivers/irqchip/irq-sifive-plic.c
+++ b/drivers/irqchip/irq-sifive-plic.c
@@ -284,6 +284,11 @@ static int __init plic_init(struct device_node *node,
 	u32 nr_irqs;
 	struct plic_priv *priv;
 	struct plic_handler *handler;
+	struct resource iores;
+
+	error = of_address_to_resource(node, 0, &iores);
+	if (error)
+		return error;
 
 	priv = kzalloc(sizeof(*priv), GFP_KERNEL);
 	if (!priv)
@@ -377,8 +382,10 @@ static int __init plic_init(struct device_node *node,
 		plic_cpuhp_setup_done = true;
 	}
 
-	pr_info("mapped %d interrupts with %d handlers for %d contexts.\n",
-		nr_irqs, nr_handlers, nr_contexts);
+	pr_info("interrupt-controller at 0x%llx "
+		"(interrupts=%d, contexts=%d, handlers=%d)\n",
+		(unsigned long long)iores.start, nr_irqs,
+		nr_contexts, nr_handlers);
 	set_handle_irq(plic_handle_irq);
 	return 0;
 
-- 
2.25.1


