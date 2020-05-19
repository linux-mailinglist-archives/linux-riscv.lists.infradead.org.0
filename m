Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E7DA1D94A6
	for <lists+linux-riscv@lfdr.de>; Tue, 19 May 2020 12:47:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Type:Message-Id:Date:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=mxjiQQJG3aOM+U/qCJKWnNUt742TC4aqrzToznec4l0=; b=dMv
	a0ceJ/zxVNffoiLfcFOGqGjhis24u6EK/09/M2UvstpPCmVGDVcQMF5e4KAzWKjJm7RR/QHcIsl10
	Oc2AhCRPqr3ivUVGc7KKgSkgWtXYdPdJ2fki2h9mi5WpVQJlpvdDqa98bPyv5kBroQtPm7W53NN4G
	jRaYSgWi32yRU68U6ibWiv7omstBZqTEskQs02tPjjLyed0roMpR892jbZ3q7NS98RI1n5FnmxY7i
	dxfI+WFuH+6J4h1Y7KfGrUxIrpG0V/lFrLVKC+qFi7pBCr5ZN5OTFgcYdXVyvnTXg5F/AWkIpr6JE
	g38zFQAey0PyoFbNoEWxDG/Kt9m+O2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jazlr-0005JI-5P; Tue, 19 May 2020 10:46:51 +0000
Received: from mail-eopbgr690064.outbound.protection.outlook.com
 ([40.107.69.64] helo=NAM04-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jazlm-0005I1-Kf; Tue, 19 May 2020 10:46:48 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=I7x2qFqj/gar8YLjWlrMEIPiL3H5N+rbsi0n1DXqousnziyhA5kQYCzx7A3kioylMlM5NzyE5NDcGGxASEsxcAzuam3VFmgk17qfbS7EwM+IssFDIm4sL/fB7j2slTHP3cQjuqi13Yy98PEBwjmSv90durqiIHVDpgNsbnni1FBQOQi93fBwybhKE3rLKZENSsk5RpY0/L43cK67BD1TGdVdNVUVtkk5BPjze/KzXC77bq2Pt/x3+InHAJLRplxUMDV+UY0cxZaPIqkY0Ac3cFyqTHi6S16oPQMron/5uANcvQSPxpfEzIFdRhus7ADX7sqZb/xBPLeijqaoPnrAxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mxjiQQJG3aOM+U/qCJKWnNUt742TC4aqrzToznec4l0=;
 b=K+wYy3urJ3ttjNwPjVlIs0fx846E/pjL/Rb6m7uTFmr8AFDFyyMuTQaySqvaEnNOUdIbYWO1OQknUcuin14qsHarAoXDcgUkXlGYs2WlRGmr1SveM1kPNgrNWHcwWbXABKxoKhfFyqbu4m1tZdtDVFoPhi+a2ke0q1Ilw6vJgY4Ny0WQRjv4sLr/7NVxio9O7/dTx7M8aK+jYI+cEE2lUkRfiHi1hHzPhHii8j3MejF41vuzSl/FvWEnJabZE6r5eRg3lvHm+4kw4ZES9/Rmho15QMoG2NzzwX7OsMfNUMzJ/htJZADbIkQMWXUM16VBflxkCsJbBecianciPTMvQg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=sifive.com; dmarc=pass action=none header.from=sifive.com;
 dkim=pass header.d=sifive.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mxjiQQJG3aOM+U/qCJKWnNUt742TC4aqrzToznec4l0=;
 b=B+HUOhUyopCzEG3aMqlh63cdkg56Pdm0XsYXypV66k/Y+g7VKxiP0gzTnSmVeeWxvC7Qf8Anmxt0DSqgHHEi/d7/5JIO7/PzqIQaqZdUgF7He0sEmEC78BQcBWsIrXufjQfIHlTOVpUPbMnZJo1HUCfNom+ku1Y7XPjO2chh57s=
Authentication-Results: lists.infradead.org; dkim=none (message not signed)
 header.d=none;lists.infradead.org; dmarc=none action=none
 header.from=sifive.com;
Received: from DM6PR13MB2619.namprd13.prod.outlook.com (2603:10b6:5:140::13)
 by DM6PR13MB3882.namprd13.prod.outlook.com (2603:10b6:5:22a::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3000.11; Tue, 19 May
 2020 10:46:43 +0000
Received: from DM6PR13MB2619.namprd13.prod.outlook.com
 ([fe80::ad23:dfbe:7ec:e5ca]) by DM6PR13MB2619.namprd13.prod.outlook.com
 ([fe80::ad23:dfbe:7ec:e5ca%3]) with mapi id 15.20.3000.015; Tue, 19 May 2020
 10:46:43 +0000
From: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
To: linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-mtd@lists.infradead.org
Subject: [PATCH v2 0/2] enable spi flash and update is25wp256d page write
 capabilities
Date: Tue, 19 May 2020 03:46:25 -0700
Message-Id: <1589885187-31247-1-git-send-email-sagar.kadam@sifive.com>
X-Mailer: git-send-email 2.7.4
Content-Type: text/plain
X-ClientProxiedBy: BYAPR05CA0073.namprd05.prod.outlook.com
 (2603:10b6:a03:e0::14) To DM6PR13MB2619.namprd13.prod.outlook.com
 (2603:10b6:5:140::13)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from gamma07.internal.sifive.com (64.62.193.194) by
 BYAPR05CA0073.namprd05.prod.outlook.com (2603:10b6:a03:e0::14) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.3021.10 via Frontend Transport; Tue, 19 May 2020 10:46:42 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [64.62.193.194]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: dc50f93a-8d37-499e-1e02-08d7fbe1eba8
X-MS-TrafficTypeDiagnostic: DM6PR13MB3882:
X-LD-Processed: 22f88e9d-ae0d-4ed9-b984-cdc9be1529f1,ExtAddr
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DM6PR13MB3882092AADB6ACA3FCDB9E0B99B90@DM6PR13MB3882.namprd13.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-Forefront-PRVS: 040866B734
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: hX5G+5bpMY9/uhl8IqB5EBKOxQMoVnPDA6tvRLirJufvAwvBuEsyMmpls77T5UaJJeCojWb5jKeyoCg4EXqDHthgSEdSfptn3GJ/oMCEKOp16QXN/92kJd1FR8fHiSDYV9GN8AfRkOyu3Wv53p/nm3LAYQLBDdeyigq3t3x5Y/c5eyQMUKq9CULRBNQUgo8L7UX+saaDpgIAo8oD0anRucZR1ZGnYgfE68qv9h/vdFUaQYeIfpGiFuuzxNXt1f+M7OQ2FKHAiQ2yYVr8aidpEO6L3htMdOa8IHNKPN/x9VoGGVxoWItnlqhSM1JxGfIdU3lkWvfBZkaMwqbRElgYp5yBoL2owSbKSYVQf1VM5YWyVGE8MuXSFhq5QDU6dFHNnAsHGMINZGldloTLxMk/bg6mug3F42CqLT3W0aJV4Dl3+x1HSXLMi/IEulyr/45Z
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR13MB2619.namprd13.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(136003)(346002)(396003)(39850400004)(376002)(366004)(7416002)(4326008)(86362001)(6666004)(66946007)(66556008)(66476007)(316002)(15650500001)(5660300002)(107886003)(36756003)(2906002)(26005)(6486002)(52116002)(16526019)(2616005)(7696005)(956004)(8936002)(8676002)(186003)(478600001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: 8UCX/RCjWuRK00Cf3PF22hU38vCnoYXXV5C+RqWHSjih4h5J1LXSNyBkl5ZHRwwfoYrgtQqJMncYo4SYXVRbYTIPcU79HZL8vz/X1nUsy9fZOydqfxu6v/dpeDD+2DZRNyxa7xwBmPM/q0jqh3MeQe4WctNi8b2SRf5Y51iaDXZPFAQ4+zCKFcqz9AaX2plfTAisc9Uqr58aB/plYMIsXZVq6t9IKcQ4ofBKjmGxOjoeKbgqI8SmnGLqgdaYDOzYcTKUoFTAEOgdlELpC4WjwlepCVAPIDnJNTgOt7axgF9ChE4aGiy9FSN5jk5hdXYMCPCEhpRv6PPnXxQm5lEH0yPVPCIhk/sQjRl7FLPSQ8dtTNP7Dc4sQ0Izn3NyH0AMW4MWJ29fqWWGde7e3/PEQOu1R4qFGHFQKreW+CUCPkGgWbjdPWybCXBK8nox1VWuEOflZuqSIzIfBO22RVdM7sebjI3oa8/HdRyXqxAssSI=
X-OriginatorOrg: sifive.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dc50f93a-8d37-499e-1e02-08d7fbe1eba8
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 May 2020 10:46:43.8130 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 22f88e9d-ae0d-4ed9-b984-cdc9be1529f1
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: CqhvrEJr7PQmXr0vlrMwAV/4cVWWj9mU+a4xtyjziMn3GIEeouGXHNV+VsTil7rtrBTASLkuac0MQflrzbap1w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR13MB3882
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_034646_755913_5AEAE14B 
X-CRM114-Status: UNSURE (   7.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.69.64 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.69.64 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: aou@eecs.berkeley.edu, vigneshr@ti.com, tudor.ambarus@microchip.com,
 richard@nod.at, paul.walmsley@sifive.com, anup.patel@wdc.com,
 palmer@dabbelt.com, Sagar Shrikant Kadam <sagar.kadam@sifive.com>,
 miquel.raynal@bootlin.com
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

HiFive Unleashed A00 board has is25wp256d snor chip. It is observed
that it gets configured with Serial Input Page program by the end
of spi_nor_scan. Using the post bfpt fixup hook we prioritize the
page program settings to use quad input page program (opcode:0x34)
over serial input page program (opcode: 0x12).

The patchset is tested on Linux 5.7.0-rc5.

Changelog:
===============================
V2:
-Split common code between is25lp256 and is25wp256 devices as suggested
 Added a generic post bfpt fixup handler that identifies the flash parts
 based on their device id and uses the corresponding fixup. Other device's
 that need a post bfpt fixup can just add the device id check and either
 reuse the available fixups or write the necessary fixup code if one is not
 available.
 
V1:
-Moved SPI_SIFIVE from defconfig to Kconfig.socs for SOC_SIFIVE.
 Retained it's configurability using "imply" instead of "select"

V0: Base version patch (Tested on 5.7.0-rc3).


Sagar Shrikant Kadam (2):
  riscv: defconfig: enable spi nor on Hifive Unleashed A00
  spi: nor: update page program settings for is25wp256 using post bfpt
    fixup

 arch/riscv/Kconfig.socs      |  1 +
 arch/riscv/configs/defconfig |  3 +-
 drivers/mtd/spi-nor/issi.c   | 72 ++++++++++++++++++++++++++++++++++++--------
 3 files changed, 63 insertions(+), 13 deletions(-)

-- 
2.7.4


