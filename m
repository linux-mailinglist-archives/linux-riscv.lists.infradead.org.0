Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 207391BF4BE
	for <lists+linux-riscv@lfdr.de>; Thu, 30 Apr 2020 12:00:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Type:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=FuwNckBsREWK/wRm/JNwz4peDmzIsWTpLA7jtPQWozc=; b=glS8Ahbq3c5rpDb/oMhzfr/0R
	gVQXADAAF78HTkS7YDWtRCQXd0j+rEpjIzlVUwKy0zbTUI8rU5LWyNfH8A92Qkny3WhIitIQHeYkQ
	PBDM1iOYQrNz6kjepIhSl4E5dQi8lKot02FUEYXTvShMMtRV78v5InSGN1m1CgXKW1Cy8XQuEEqpr
	N1m3jeuGWHB52ZZ/3DTW0b7TDu/C+w7F7nk4F8HDMkhAqer5c9jStDMv0HUx1JoBwUwyEoON27SY/
	dk2kSuCc8fl/IT4TdT9gHiq7A0kMvr5OQl/yYP6TM/RcyuedrcT2ht8D0lD0KEiAuC6mia2EhUs9B
	L2n2wnc7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jU5zj-0004tv-HX; Thu, 30 Apr 2020 10:00:39 +0000
Received: from mail-co1nam11on2083.outbound.protection.outlook.com
 ([40.107.220.83] helo=NAM11-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU5yV-0001Lx-MJ; Thu, 30 Apr 2020 09:59:25 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KkMDh/KHI/zVKcQe3v5T8K72KmwdEiTjtsyTjovPnNdDiWzW4v42BvabzzZDjb1NwzTQIbOpfBdzlTmuK9652fSRd/0C2VwOs9DOO0W8dl1q9Qo/hA6sV4p5BfhgUBGr1qsHfl7GTlHCXZgau+CC6ujUHaxZZqv9ObOdYbAik053qogtG9MdbZbTVS6obJYQObWzEfBNBniEL41kA/3UPoK7mKeq1uxzfY0w9b3V3niffCq7om3QIqw/mzdG2QRzV4WJu02SSoNsRAp/f76CFufjAWiyIM1y7EKLTtlu45Qh8Y/9LvyDLOpN6YaNyGRV04juTpaAiEWzo3YVU5tbwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FuwNckBsREWK/wRm/JNwz4peDmzIsWTpLA7jtPQWozc=;
 b=HCEyASXvbRDmCuZZYQzjEQxUr1Dp1K7wu0XSGujdhpvHeHbjhhLzfX2FEVYz4KjnA446OALwVpglxTdG6XmM4q8GtjE5AY+lEJy8RtWFLFoDmFiCjwk/GTQUePzW9gASMC1MJu1rf7raElMrZE0hPAugCzDmWLflVn+s9kAU80ONdRKCgE2CAqNFvgFFYZ+1nTX/lyp60LMAUKSX8Pm94pvrbufpyG2HoX+rY3C/fduBWNxjHvzS+L3oyu0B53cyvoM3+aJz5SUNL7Hi7TVMzpb6XB6BiorIgpMwoQcCmcnzTcMRM96mUDP98xXRZGTp25+bscTij4RiNpOsU/jo7g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=sifive.com; dmarc=pass action=none header.from=sifive.com;
 dkim=pass header.d=sifive.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FuwNckBsREWK/wRm/JNwz4peDmzIsWTpLA7jtPQWozc=;
 b=A45vD+jgQEb57/hjknxvF0cThvKZ9bbAErIkg/DEVFJba+vn3WvouE7q3Mh9eEJnjfj16yUZQQuJRXP3OKZE4Ov4h/4naUHV+zSuWuD/n0q+j5JS0kd+wnhG6hxibLMr5xBPF+LlRANWaUN//05pLgiCcLnEnOBuPiOpKhg8uYg=
Authentication-Results: microchip.com; dkim=none (message not signed)
 header.d=none;microchip.com; dmarc=none action=none header.from=sifive.com;
Received: from BN8PR13MB2611.namprd13.prod.outlook.com (2603:10b6:408:81::17)
 by BN8PR13MB2884.namprd13.prod.outlook.com (2603:10b6:408:85::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2979.14; Thu, 30 Apr
 2020 09:59:21 +0000
Received: from BN8PR13MB2611.namprd13.prod.outlook.com
 ([fe80::c129:8fca:5ed:8929]) by BN8PR13MB2611.namprd13.prod.outlook.com
 ([fe80::c129:8fca:5ed:8929%6]) with mapi id 15.20.2958.020; Thu, 30 Apr 2020
 09:59:21 +0000
From: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
To: tudor.ambarus@microchip.com, miquel.raynal@bootlin.com, richard@nod.at,
 vigneshr@ti.com
Subject: [PATCH 2/2] spi: nor: update page program settings for is25wp256
 using post bfpt fixup
Date: Thu, 30 Apr 2020 02:58:52 -0700
Message-Id: <1588240732-13905-3-git-send-email-sagar.kadam@sifive.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1588240732-13905-1-git-send-email-sagar.kadam@sifive.com>
References: <1588240732-13905-1-git-send-email-sagar.kadam@sifive.com>
Content-Type: text/plain
X-ClientProxiedBy: BYAPR08CA0027.namprd08.prod.outlook.com
 (2603:10b6:a03:100::40) To BN8PR13MB2611.namprd13.prod.outlook.com
 (2603:10b6:408:81::17)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from gamma07.internal.sifive.com (64.62.193.194) by
 BYAPR08CA0027.namprd08.prod.outlook.com (2603:10b6:a03:100::40) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.20.2958.20 via Frontend
 Transport; Thu, 30 Apr 2020 09:59:20 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [64.62.193.194]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 7cfacc88-ae92-4046-6b0e-08d7eced2782
X-MS-TrafficTypeDiagnostic: BN8PR13MB2884:
X-LD-Processed: 22f88e9d-ae0d-4ed9-b984-cdc9be1529f1,ExtAddr
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <BN8PR13MB2884332FA4DDD5A640EFA43299AA0@BN8PR13MB2884.namprd13.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-Forefront-PRVS: 0389EDA07F
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 8Uz4U0VX63iZOcmwNEfpkQHtbCmDIexKsK7lhUWgJZw4SfqpGSZuv1IV75Hdux6otjS2H0DLwnBd5FplDKz4Xe/ZC5Gcq6UGbresp+jsTY4Ppj4SrGwas32ryCZxSnX+LkaDbVtGVjUhDS5/Gwt7DZGRo1UQZsBw9ycOmgCfnIrs7NVNNnUA72CuRnwSyhIuUmLMj9Y0QRZn3d8gsVMaxU+SsU5+q3/kRJDcCOg3+DHD3eUsKoR6n3Ks9KB1SNUF9Rjvr6TS5T/YrCcwcLgVG/nSdfU6tWGIOv8KRUFgcHAURsWRetUOKdYUjRtIOSFY2jDrAejIErtVH7J9mbfcZgVQ2qFHVlrpaYGf9ppJYEFp2TxhR9ULML6GoJZiSyw8Y89xQhhMVKd35JAbudb9B6Uz0KzbF47wY7Ssge3Hm+OfM5jXMdMISqnGEPTiY+Ot
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR13MB2611.namprd13.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(136003)(346002)(376002)(39850400004)(396003)(366004)(7696005)(52116002)(8676002)(8936002)(16526019)(186003)(26005)(5660300002)(956004)(478600001)(2906002)(2616005)(316002)(6666004)(66476007)(66556008)(66946007)(86362001)(15650500001)(36756003)(107886003)(4326008)(6486002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: MgeCjNPMxNVPp4vjAQfJe9uK8TtX0KSHJJxcI21dPrkFcpp+IJEL+Hj3YVkfvQAF3CxEzL/Hpj/HoEmKBN/legrGQRAM1Z2ob087UjkREhAEbEypt/AxD0a/a8FyItIeSYB9FRko4YWd7EZ8ZAgxzZ7wgLWyU3tw0xxQMN6cMW8a03VdVyc97Pi4qMU3rzr7e9NYr4EoSG5YtfWG8Our+D1uBlLNNC/liFcJ0cOeKwrjarsls0F3pq3wMMOEhr36CSy+P0s+y6PdMLkjVhe4d5t+4RWDSZji1Ad5I7QSgC1BYkngGtnTD1SuIf5Twn4CQXq4TYIiUww/stgebXFr+x7+yOSmxgLQ4d8QUFxdUxP/mU+LuK7WLaqy/M0F6COqPqvxsCj7zSwyfaaUhAiuYvjwqrETKeJFIhhlrfa9P3yoSCZyrdofYByeQoz+VDWbsIyeKw/d1BzA/0k0zkXGtP3F3aAOHbp+HUBqtU2de+YWeGroiYodDdf1hACxO3Wj/baTwAT/nJSx1m3MuwFvhYzA6A7/oT4Vq8R2uduQzM/9NZwYXXiQeWReOLjYOJMTdgXj48JAMcncwtzkWP5zjp4zDutwSOlQA1OWQ3KrTIMCnsypuw0uF/V17brKIiAIeW3GS1ygAEUzOnqFGokOyaUHrSZoRF0rhmzwL25cGrQVOfKGk8Tv3eRoaFar1LduZLaC6lLDYcdQHtiadtGvJi49FE70vOTGUygaGzmM8ieCNJPCOwgriBqVAiD4WESNvirmFMbiPGRhljV/WCbXuk/2NBWZPQlT289O8mDz3I8=
X-OriginatorOrg: sifive.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7cfacc88-ae92-4046-6b0e-08d7eced2782
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Apr 2020 09:59:21.7013 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 22f88e9d-ae0d-4ed9-b984-cdc9be1529f1
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HqTe1ObbgXWmuwEDM4quTXlvnhomtKTFVF23Zx1vdN1Mc6mllkoE5DlwpPo4j8WgjevLOE74VF2uoR/XuiUp4g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR13MB2884
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_025923_743176_40A36617 
X-CRM114-Status: UNSURE (   9.17  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.220.83 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.220.83 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-kernel@vger.kernel.org, linux-mtd@lists.infradead.org,
 Sagar Shrikant Kadam <sagar.kadam@sifive.com>, paul.walmsley@sifive.com,
 palmer@dabbelt.com, linux-riscv@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

During SFDP parsing it is seen that the IS25WP256d device is missing 4BAIT
(4-Byte address instruction table), due to which it's page program
capacity doesn't get correctly populated and the device gets configured
with 4-byte Address Serial Input Page Program i.e. SNOR_PROTO_1_1_1
even though it can work with SNOR_PROTO_1_1_4.

Here using the post bfpt fixup hooks we update the page program
settings to 4-byte QUAD Input Page program operations.

The patch is tested on HiFive Unleashed A00 board and it benefits
few seconds of average write time for entire flash write.

QUAD Input Page Program operations:
> time mtd_debug write /dev/mtd0 0 33554432 rd32M
Copied 33554432 bytes from rd32M to address 0x00000000 in flash
real    0m 32.85s
user    0m 0.00s
sys     0m 31.79s

Serial Input Page Program operations:
> time mtd_debug write /dev/mtd0 0 33554432 rd32M
Copied 33554432 bytes from rd32M to address 0x00000000 in flash
real    0m 35.87s
user    0m 0.00s
sys     0m 35.42s

Signed-off-by: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
---
 drivers/mtd/spi-nor/issi.c | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/drivers/mtd/spi-nor/issi.c b/drivers/mtd/spi-nor/issi.c
index ffcb60e..9eb6e82 100644
--- a/drivers/mtd/spi-nor/issi.c
+++ b/drivers/mtd/spi-nor/issi.c
@@ -23,6 +23,22 @@ is25lp256_post_bfpt_fixups(struct spi_nor *nor,
 		BFPT_DWORD1_ADDRESS_BYTES_3_ONLY)
 		nor->addr_width = 4;
 
+	/*
+	 * On IS25WP256d device 4-Byte address instruction table doesn't
+	 * get populated and so the device get's configured with 4-byte
+	 * Address Serial Input Page Program i.e. SNOR_PROTO_1_1_1 even
+	 * though it supports SNOR_PROTO_1_1_4, so priorotize QUAD write
+	 * over SINGLE write if device id table holds SPI_NOR_QUAD_READ.
+	 */
+	if (strcmp(nor->info->name, "is25wp256") == 0) {
+		if (nor->info->flags & SPI_NOR_QUAD_READ) {
+			params->hwcaps.mask |= SNOR_HWCAPS_PP_1_1_4;
+			spi_nor_set_pp_settings
+				(&params->page_programs[SNOR_CMD_PP_1_1_4],
+				 SPINOR_OP_PP_1_1_4,
+				 SNOR_PROTO_1_1_4);
+		}
+	}
 	return 0;
 }
 
-- 
2.7.4


