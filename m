Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 618C111272
	for <lists+linux-riscv@lfdr.de>; Thu,  2 May 2019 07:02:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jF0qMOnqFTY1yiJWilZLGYUoJMmbg0ojbCsoqIzdySU=; b=Mwtj6w+/9+WEeM
	tl1KTVYKJRJNYunCUdkntlUWrmM6as5XTZrxwGcdmrgPw8kJaxv0hSuKcULrdQiZBdsbm6OVMddb+
	dLoD57cchnhw7TLFwrTxrby+7AmWCeGCZH33XsHN+uWqdAFKBiRbhjrv7gkBSDQh6M+3Vrraf3WxW
	qvMBHsHy73CGwloalAFBvwkk6EJ8D/sF4+AHeUVrRwHJUuGinxcBBhbWBH2KPfCuokGO2CukqY5lz
	Pjkr0ijd22cf7Xs45/HmwiyRsKj9SOhavTlynsvOG0c56XmIZ2ECyaxvdCOYjEVNbcft+85y8OMPK
	+WV+FERJicn+zASKO23w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hM3rn-0000Ho-UX; Thu, 02 May 2019 05:02:43 +0000
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hM3rk-0000FO-0N
 for linux-riscv@lists.infradead.org; Thu, 02 May 2019 05:02:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1556773360; x=1588309360;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=hudxt7lduVUFNlHFN6S8+Siw1PK1toL0YJqfIpGbsYw=;
 b=HnMqH41xHz7Gd1oObApbT+j8YCC50eqZg++1nGeHNFlH7J/EP5LrSNgd
 u6VJMSmoSUE/m9DP/XaFPEJWFhgaGFvjKs+IDWeYnzAxOeCLyiaD0HI40
 WDNSInMrA+fIEoHRSDhhVpuze2nNCrpJyooHbrDMpoTNCWRBet9IhylLi
 bbQtvohVOJYmCEttFEPlunjMvAacFULY1Bo6Yd9OZAU+yIHavQ/rLe4ec
 fn8rIYV6tHTgtYG1TxI2xDhdg/prjhdJhLWOUBDoNfEcWHRy9phwVlMCa
 xakH2gXzdB9KTVMKYm6yFXBU3Y00SsA38cJNIXIjqRLeAvf+sE0PTQ20F A==;
X-IronPort-AV: E=Sophos;i="5.60,420,1549900800"; d="scan'208";a="107321531"
Received: from mail-bn3nam04lp2051.outbound.protection.outlook.com (HELO
 NAM04-BN3-obe.outbound.protection.outlook.com) ([104.47.46.51])
 by ob1.hgst.iphmx.com with ESMTP; 02 May 2019 13:02:36 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector1-wdc-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hudxt7lduVUFNlHFN6S8+Siw1PK1toL0YJqfIpGbsYw=;
 b=LnFgAVngObiOn9uVgDgQaxyWh9E16+keaHdZeJspv0CacDyz0q+UBoI+x2++N/2xYHtnI5RihNRTLpmVhd1KdQ7dhh8zyN4R3LFw43066EsEeKV67RFmBChFi3+LH42hiRM/GiOjTL6NCN6IUujNDSitBR8Wpo38RExa5XWRdHQ=
Received: from MN2PR04MB6061.namprd04.prod.outlook.com (20.178.246.15) by
 MN2PR04MB5582.namprd04.prod.outlook.com (20.178.248.151) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.11; Thu, 2 May 2019 05:02:34 +0000
Received: from MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::c500:5fd2:9194:e38]) by MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::c500:5fd2:9194:e38%3]) with mapi id 15.20.1835.015; Thu, 2 May 2019
 05:02:34 +0000
From: Anup Patel <Anup.Patel@wdc.com>
To: Palmer Dabbelt <palmer@sifive.com>, Albert Ou <aou@eecs.berkeley.edu>
Subject: [PATCH v4 1/2] RISC-V: Fix memory reservation in setup_bootmem()
Thread-Topic: [PATCH v4 1/2] RISC-V: Fix memory reservation in setup_bootmem()
Thread-Index: AQHVAKRAl0Mwp2Ao5UCsXvDdaQGVog==
Date: Thu, 2 May 2019 05:02:33 +0000
Message-ID: <20190502050206.23373-2-anup.patel@wdc.com>
References: <20190502050206.23373-1-anup.patel@wdc.com>
In-Reply-To: <20190502050206.23373-1-anup.patel@wdc.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: BYAPR07CA0049.namprd07.prod.outlook.com
 (2603:10b6:a03:60::26) To MN2PR04MB6061.namprd04.prod.outlook.com
 (2603:10b6:208:d8::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Anup.Patel@wdc.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-originating-ip: [129.253.179.161]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 58e66b71-89f0-4ab3-304e-08d6cebb62f5
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:MN2PR04MB5582; 
x-ms-traffictypediagnostic: MN2PR04MB5582:
wdcipoutbound: EOP-TRUE
x-microsoft-antispam-prvs: <MN2PR04MB558223E2FF746DFD8ED79E3D8D340@MN2PR04MB5582.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2582;
x-forefront-prvs: 0025434D2D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(366004)(136003)(376002)(39860400002)(396003)(346002)(189003)(199004)(5660300002)(1076003)(6436002)(486006)(305945005)(66066001)(476003)(71200400001)(71190400001)(26005)(44832011)(81156014)(86362001)(81166006)(8676002)(11346002)(102836004)(54906003)(446003)(2171002)(25786009)(186003)(110136005)(316002)(6486002)(386003)(50226002)(72206003)(6506007)(8936002)(53936002)(256004)(73956011)(36756003)(76176011)(3846002)(6116002)(2906002)(4326008)(68736007)(2616005)(66946007)(99286004)(7736002)(14454004)(6512007)(478600001)(66446008)(64756008)(66556008)(66476007)(52116002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB5582;
 H:MN2PR04MB6061.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: oau2JSBfxc+sHfMGGTYUiLwzR3iET+dgatSOPM26DxLsKqQE/pEdtqzJ7HEyocsJF/7pNBzbFtaRT1jPlptWVIIPeP28E6nHZtXMqH9PP5ENGKoSQiUVp642SJ9wZNtlMTA/JlgJ77DGOmM6sl5cKJp4nLT0li0iAeY+eg4JbA1+v6Hz3+OvmEfqlqlANh4OYEBYKMZ8tz28m2EOVLe/vJgvPGLfZmENpPAMBWoQAqA7pgNGJDedbMN/J91Hn7wteOlBir4b5LWTw18RESPkqvPZLGv1uSLwxhgtVAvCRmK7Hnq2nLmx2G1Fje64hjC+O0IuX+LK6wqUrwDcEufDiSgDS5n2xZTVG77CZcZzzCHyaWO8e697VRkYS68JGnIhlxux95EqxRZom65v1x1Ky+b/0gHpuH6eGxW4ZXVKON8=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 58e66b71-89f0-4ab3-304e-08d6cebb62f5
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 May 2019 05:02:34.0060 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB5582
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_220240_083801_9C61A36A 
X-CRM114-Status: GOOD (  17.78  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.42 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-riscv@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-riscv.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-riscv/>
List-Post: <mailto:linux-riscv@lists.infradead.org>
List-Help: <mailto:linux-riscv-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=subscribe>
Cc: Anup Patel <Anup.Patel@wdc.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Mike Rapoport <rppt@linux.ibm.com>, Christoph Hellwig <hch@infradead.org>,
 Atish Patra <Atish.Patra@wdc.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Currently, the setup_bootmem() reserves memory from RAM start to the
kernel end. This prevents us from exploring ways to use the RAM below
(or before) the kernel start hence this patch updates setup_bootmem()
to only reserve memory from the kernel start to the kernel end.

Suggested-by: Mike Rapoport <rppt@linux.ibm.com>
Signed-off-by: Anup Patel <anup.patel@wdc.com>
Reviewed-by: Christoph Hellwig <hch@lst.de>
---
 arch/riscv/mm/init.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/arch/riscv/mm/init.c b/arch/riscv/mm/init.c
index bc7b77e34d09..ab175b655933 100644
--- a/arch/riscv/mm/init.c
+++ b/arch/riscv/mm/init.c
@@ -29,6 +29,8 @@ unsigned long empty_zero_page[PAGE_SIZE / sizeof(unsigned long)]
 							__page_aligned_bss;
 EXPORT_SYMBOL(empty_zero_page);
 
+extern char _start[];
+
 static void __init zone_sizes_init(void)
 {
 	unsigned long max_zone_pfns[MAX_NR_ZONES] = { 0, };
@@ -108,18 +110,14 @@ void __init setup_bootmem(void)
 {
 	struct memblock_region *reg;
 	phys_addr_t mem_size = 0;
+	phys_addr_t vmlinux_end = __pa(&_end);
+	phys_addr_t vmlinux_start = __pa(&_start);
 
 	/* Find the memory region containing the kernel */
 	for_each_memblock(memory, reg) {
-		phys_addr_t vmlinux_end = __pa(_end);
 		phys_addr_t end = reg->base + reg->size;
 
 		if (reg->base <= vmlinux_end && vmlinux_end <= end) {
-			/*
-			 * Reserve from the start of the region to the end of
-			 * the kernel
-			 */
-			memblock_reserve(reg->base, vmlinux_end - reg->base);
 			mem_size = min(reg->size, (phys_addr_t)-PAGE_OFFSET);
 
 			/*
@@ -133,6 +131,9 @@ void __init setup_bootmem(void)
 	}
 	BUG_ON(mem_size == 0);
 
+	/* Reserve from the start of the kernel to the end of the kernel */
+	memblock_reserve(vmlinux_start, vmlinux_end - vmlinux_start);
+
 	set_max_mapnr(PFN_DOWN(mem_size));
 	max_low_pfn = PFN_DOWN(memblock_end_of_DRAM());
 
@@ -210,7 +211,6 @@ void __set_fixmap(enum fixed_addresses idx, phys_addr_t phys, pgprot_t prot)
 
 asmlinkage void __init setup_vm(void)
 {
-	extern char _start;
 	uintptr_t i;
 	uintptr_t pa = (uintptr_t) &_start;
 	pgprot_t prot = __pgprot(pgprot_val(PAGE_KERNEL) | _PAGE_EXEC);
-- 
2.17.1

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
