Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DAC2038408
	for <lists+linux-riscv@lfdr.de>; Fri,  7 Jun 2019 08:01:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZGitSMXNRZhy+LHvP8ThbrEDtvaCL3qhyUD2QC44l30=; b=Fy7QXGjnSJYem4
	FOedVwEhOUrPMepHlGP9PRUozRd6vdqbPBTkAygFYD3iePvigPZzuXTzjNLo6i3tlcBcbrXQUyMi3
	R5lC5U/Kel9L97LXu0vWg9/DD/A/KzaXLTmup+wlZJ4aWxYWmP1CAbnFb5Ahkv5P/jjWzMjluiPWQ
	+AGuNKBjNC5SmaOwppbc+A4G3faq5EzYgFqL3Kx7hk/kr64Z1lrizzkmQcBYAaxD4fVIlZVqXYBQ0
	0uK5jpwQ1M9JtDbnT/GjI6RbMPiRJqx1ivtp43pPkbdMCHJjYThSm/66AiG2U6hf8LIKf9cJH/Jt8
	8Ry27bcGoel6k5OFJEoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZ7wY-0001Qe-DR; Fri, 07 Jun 2019 06:01:38 +0000
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZ7wS-0001PO-H2
 for linux-riscv@lists.infradead.org; Fri, 07 Jun 2019 06:01:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1559887292; x=1591423292;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ad9OzhObcTVEjpq5II81XSqfa/NVOOqA0VlDrpha9k4=;
 b=efF1jVgLKyQUbBOMR7wsulxduD64PDnaco98y7u6i1ISbTZ7sRo9gH4K
 ZIBpmyI/EiElOlSJcX3Rkvp2wGX3AKDRLODEuLM7E99Q7b/0sUulVPj0W
 EtFADvRNjm2NVv3hDIa9Ebbtf197LTCPIp+06Qbk5AV7QUPkp+XeZNNLE
 WaRmkk6BcZRC7o3vqPI0eR/ZV2kz9Yvg5l0F4U24f8yVmgBzjG8JJ2QIM
 fkgQvX4JB8qDisspZyOf929XJR9lFqi7nJcpI5ErHT867Lw8K8ppsyQGY
 C2HMSJNAOpi3NqTOBGfUuaKCKyI2QUm46Hk9RZh1obYgCzOnWFskBdiJt g==;
X-IronPort-AV: E=Sophos;i="5.63,562,1557158400"; d="scan'208";a="216314733"
Received: from mail-sn1nam01lp2053.outbound.protection.outlook.com (HELO
 NAM01-SN1-obe.outbound.protection.outlook.com) ([104.47.32.53])
 by ob1.hgst.iphmx.com with ESMTP; 07 Jun 2019 14:01:31 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ad9OzhObcTVEjpq5II81XSqfa/NVOOqA0VlDrpha9k4=;
 b=SVQR3yUghs0LnAkJkZZwTOLgN3kjQ+dBGP/jAvHyKWzkHcz4rWk1dEyMfWESmG4JqStw7rLeGIScIXNf0Q0CG2uqwXTli10gCP7WjiusuQFh1IhPO0G71Bst/n1Dbz/UJmJfxR+UqyjGPBsGCPyNv4GUewuYrndyhOCzFEUxYN8=
Received: from MN2PR04MB6061.namprd04.prod.outlook.com (20.178.246.15) by
 MN2PR04MB5920.namprd04.prod.outlook.com (20.179.21.161) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1965.14; Fri, 7 Jun 2019 06:01:29 +0000
Received: from MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::98ab:5e60:9c5c:4e0e]) by MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::98ab:5e60:9c5c:4e0e%7]) with mapi id 15.20.1943.026; Fri, 7 Jun 2019
 06:01:29 +0000
From: Anup Patel <Anup.Patel@wdc.com>
To: Palmer Dabbelt <palmer@sifive.com>, Albert Ou <aou@eecs.berkeley.edu>
Subject: [PATCH v5 1/2] RISC-V: Fix memory reservation in setup_bootmem()
Thread-Topic: [PATCH v5 1/2] RISC-V: Fix memory reservation in setup_bootmem()
Thread-Index: AQHVHPZypc49rHUlikqL/+SNUsZZag==
Date: Fri, 7 Jun 2019 06:01:29 +0000
Message-ID: <20190607060049.29257-2-anup.patel@wdc.com>
References: <20190607060049.29257-1-anup.patel@wdc.com>
In-Reply-To: <20190607060049.29257-1-anup.patel@wdc.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: BYAPR07CA0099.namprd07.prod.outlook.com
 (2603:10b6:a03:12b::40) To MN2PR04MB6061.namprd04.prod.outlook.com
 (2603:10b6:208:d8::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Anup.Patel@wdc.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-originating-ip: [129.253.179.161]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: af326713-9a46-49c9-108d-08d6eb0d9524
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:MN2PR04MB5920; 
x-ms-traffictypediagnostic: MN2PR04MB5920:
wdcipoutbound: EOP-TRUE
x-microsoft-antispam-prvs: <MN2PR04MB5920C58C1DB035AF48D8CE728D100@MN2PR04MB5920.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2582;
x-forefront-prvs: 0061C35778
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(366004)(346002)(376002)(39860400002)(396003)(136003)(189003)(199004)(68736007)(256004)(6512007)(54906003)(2906002)(386003)(81156014)(71200400001)(52116002)(81166006)(76176011)(110136005)(72206003)(476003)(26005)(2616005)(53936002)(8936002)(8676002)(99286004)(7736002)(4326008)(2171002)(305945005)(6506007)(102836004)(50226002)(71190400001)(14454004)(186003)(25786009)(478600001)(486006)(6436002)(86362001)(6116002)(3846002)(6486002)(66476007)(64756008)(66446008)(66556008)(66946007)(73956011)(1076003)(446003)(316002)(66066001)(11346002)(44832011)(5660300002)(36756003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB5920;
 H:MN2PR04MB6061.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: UTBchpBzC8+vg93h3DiRc9NUEbqKHA1gt9qb09KphLBGciKQhfomiMa5wFWTZiS1+ku5EE3gWV9y5ohCb2gwQCtvT5hltgDtHsQ6Zwq2M7bw3nbahNOTXJbfXNXuAQtY62/9VaS3oT5Lt+GaMSR2aNZ83gcJelRJf3sHn9KRiasdDT8IBgktOAPAvBVDUjPhMhf14jp8wQX2slCrjD9avXOpBr3byZ+rNAnDRhSBSfUQCVRmpqPsebkeL+EsQibeo/nDO2+cWfbwq6cAuYifUxzGvlOue5u92td/5coA4QejrBveyEDXodCPcUezNY8c44L88egC+kcuC81pHOU1HyAq8uTlqsL7+By2bc121BSALXKBXAnz6qf9lOzXMHITsG9beoAtNmiVaMtfxR+2ij6jEvdsyBqFD6MeDF9ZFr0=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: af326713-9a46-49c9-108d-08d6eb0d9524
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Jun 2019 06:01:29.3641 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Anup.Patel@wdc.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB5920
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_230132_676194_94571CD8 
X-CRM114-Status: GOOD (  17.65  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.141.245 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
index 8bf6f9c2d48c..1879501bd156 100644
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
@@ -103,18 +105,14 @@ void __init setup_bootmem(void)
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
@@ -128,6 +126,9 @@ void __init setup_bootmem(void)
 	}
 	BUG_ON(mem_size == 0);
 
+	/* Reserve from the start of the kernel to the end of the kernel */
+	memblock_reserve(vmlinux_start, vmlinux_end - vmlinux_start);
+
 	set_max_mapnr(PFN_DOWN(mem_size));
 	max_low_pfn = PFN_DOWN(memblock_end_of_DRAM());
 
@@ -205,7 +206,6 @@ void __set_fixmap(enum fixed_addresses idx, phys_addr_t phys, pgprot_t prot)
 
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
