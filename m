Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C35DAE45BC
	for <lists+linux-riscv@lfdr.de>; Fri, 25 Oct 2019 10:30:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zeRGXQ/I95CtP14kN2vPCYbNL8ob64dW6h2d9kbiAIk=; b=ddlwUqJd+DM6c0
	8UMMnDoTls5G+3zil0IPENEYxOJCPi0rKNzoRf7qX7GMFXL3A5N7iaUPjkdds0+LKAsy4mlRC9+Pp
	OwUzGkU+6tzYW5ziQdvfDtaiB5xeeou1wSEP9IzklRFlSPG4A3lXkUyOP9ajoMeusZXsnHfrkFMgu
	Ddf0U31zNj7a6iDpliTmS+4BgTagt+OeJbLtygoO9wgK8l4OAb0NpB1MYNMkEGpafzulKO0Kq8UjF
	/O04VDYsIAYOulrUirr3JoLh48OWMPNYwD9vTu8TyyN9MSvL73S4YviaMcaVPYYD4DOkoWjPFG26/
	isME7pkPEy13DURSaMMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNuz5-0008Bq-5M; Fri, 25 Oct 2019 08:30:11 +0000
Received: from mail-eopbgr710076.outbound.protection.outlook.com
 ([40.107.71.76] helo=NAM05-BY2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNuz0-0007d9-IX
 for linux-riscv@lists.infradead.org; Fri, 25 Oct 2019 08:30:08 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kOelbG6e/Z1PQ/7IvBRUE0TVnKMwXmXmBQpxFVbqS+xJRL5ySPiCEFV0pKkDs2U+UcwZeS7JsbrCBEhnywogT/+I679YyAcT6gPf3KoVUv9gzmkrkv3C2STGqqGWbk8sR39x1PCDRoYj7hEvP9pX+5nyo1/r3lRonWtv6exiL1M/qkXXMVX0EdcOkyRYL44iYl5dqCFMjZur4kC/8uZH5A0iq9IPWXvtO27zAMAEc06JQdGF0PjgHLLpU1ZFUgo88qELHNqj+63VBIagBTBBWlUVEA+TWdDo4DtBv1l3mvTCgaAf08VrRA4s0lBZsH8JMdZ66htYlpg7sAjcCXQ2pg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5Rz61GbAT0OTk7i8YWkOocfdCkMQDbXHTVweKERoYgc=;
 b=KNyYIBmtVi9lIgKI0PllKLwcIvTOFFn0jswJHhzoL1Qoil3zB70sxetAjqMK2aXSTvjoFIM7y+a8hAO6SM02ioXpEwS+JHP/flNyAmwCG7gwC9F90toVc57qFgAbmebVzWweO+4WUeAyyGZdl892YNGc3aNsJfIlEw7NWx2kN/pHEuCypB8x6M9EUIoZv0v3GR4/B43RhbCfSimc7zJiRmMkximQEuCffC3A3R84xqENy0VvNtKnwu4UyyUDGYymFEjGQp8sfw4v5FIOnoUmD3jAkbGlLN+Mx4mTLSo6U6Oa9xDuYzP1LhLYvnFPzzzKiGA3ffOlex4oReCH3XrYDA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=sifive.com; dmarc=pass action=none header.from=sifive.com;
 dkim=pass header.d=sifive.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5Rz61GbAT0OTk7i8YWkOocfdCkMQDbXHTVweKERoYgc=;
 b=gabbmsE5lmWNd3VogQPNIAj8rc/JgegBRuM9UeEATIWTHna1NPQXhbDJ6Xfph8jb09o29AIyoZcX2ubFb2VzYtHlMN5w6pe5GFwCyhoixiJaD/6SzD26/mwtaXor56oltvs21/C/eyufRM24OmaoOjDRBr9y5FDzeUKQRh8UwiU=
Received: from CH2PR13MB3368.namprd13.prod.outlook.com (52.132.246.90) by
 CH2PR13MB3751.namprd13.prod.outlook.com (20.180.14.149) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2387.17; Fri, 25 Oct 2019 08:30:03 +0000
Received: from CH2PR13MB3368.namprd13.prod.outlook.com
 ([fe80::c069:f0c7:760b:faba]) by CH2PR13MB3368.namprd13.prod.outlook.com
 ([fe80::c069:f0c7:760b:faba%3]) with mapi id 15.20.2387.021; Fri, 25 Oct 2019
 08:30:03 +0000
From: Yash Shah <yash.shah@sifive.com>
To: "Paul Walmsley ( Sifive)" <paul.walmsley@g.sifive.com>, "Palmer Dabbelt (
 Sifive)" <palmer@g.sifive.com>, "linux-riscv@lists.infradead.org"
 <linux-riscv@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: [PATCH v2] RISC-V: Add PCIe I/O BAR memory mapping
Thread-Topic: [PATCH v2] RISC-V: Add PCIe I/O BAR memory mapping
Thread-Index: AQHViw5l0jY9JQhUEkq6xffYZOywOQ==
Date: Fri, 25 Oct 2019 08:30:03 +0000
Message-ID: <1571992163-6811-1-git-send-email-yash.shah@sifive.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: MA1PR0101CA0053.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:20::15) To CH2PR13MB3368.namprd13.prod.outlook.com
 (2603:10b6:610:2c::26)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=yash.shah@sifive.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 1.9.1
x-originating-ip: [114.143.65.226]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0a7ae2d2-c919-40fa-f1ad-08d75925883d
x-ms-traffictypediagnostic: CH2PR13MB3751:
x-ms-exchange-purlcount: 1
x-ld-processed: 22f88e9d-ae0d-4ed9-b984-cdc9be1529f1,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CH2PR13MB3751CBC90393882C168AD8B58C650@CH2PR13MB3751.namprd13.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 02015246A9
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(346002)(396003)(39850400004)(366004)(136003)(189003)(199004)(71200400001)(54906003)(2201001)(6486002)(86362001)(7416002)(8676002)(26005)(476003)(966005)(186003)(2616005)(486006)(5660300002)(50226002)(81166006)(81156014)(8936002)(2906002)(66066001)(305945005)(7736002)(6116002)(3846002)(99286004)(6436002)(256004)(52116002)(14444005)(110136005)(6306002)(6512007)(14454004)(102836004)(2501003)(386003)(6506007)(478600001)(36756003)(66556008)(4326008)(64756008)(66946007)(66446008)(44832011)(25786009)(66476007)(71190400001)(316002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR13MB3751;
 H:CH2PR13MB3368.namprd13.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: sifive.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: gOyqL0Cve8csClrQKW6vUZDFgCnceY2KvKaoeGiTQ23lt4YgrrtNHgvMYcSiXFkX1+7qsUKJukHeBsaTM9o6yxkpElDi+seTOLxJN4lbaLpofhQ5NQCAV47/kxoSAFV2gDDY580dfFHS6x2u08qS7wNV7/4jGXzrcalbmq0O285lK6pBqWRjZvOTpqS+SuieK1lvhSYNTJiPSCut2dDb6x8VxeOeAqWVJUB4/GaP2nZbmFGUfcTtaewdtDoT/E7jF0VRhfpeLUH8GbGrRnratOlsV1d7nTYp9XzSamJn/5hP3pFZT+Y92y5JBWTKxcdWdvbsf+YnHJSB7EDsYik7+cskKGOWXHjpugi5kXYtSV4xljNjZuNHf/TH5BKEI00kk0qOFwYUmg+gJVgEPZ8vJuF9mUVRoqc7wBFuPiwNDDTIcKqcAKb2o2d/BAkQpW5UkbGrvIUoLqI+2SpVZO969hzV4n1qbDT3tpYnrHtGgFE=
MIME-Version: 1.0
X-OriginatorOrg: sifive.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0a7ae2d2-c919-40fa-f1ad-08d75925883d
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Oct 2019 08:30:03.3485 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 22f88e9d-ae0d-4ed9-b984-cdc9be1529f1
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HatxEUj1ucorqSu81h1KbG3ZjGuZwsR04wB3M/1skUGejBRW2qDhhYRslUafvndgijKgEDlahVmeoUytpclx0w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR13MB3751
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_013006_732255_7BDA3EF5 
X-CRM114-Status: UNSURE (   8.02  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.71.76 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "sorear2@gmail.com" <sorear2@gmail.com>,
 "aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>,
 "alex@ghiti.fr" <alex@ghiti.fr>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "Anup.Patel@wdc.com" <Anup.Patel@wdc.com>, Yash Shah <yash.shah@sifive.com>,
 "rppt@linux.ibm.com" <rppt@linux.ibm.com>,
 Sachin Ghadi <sachin.ghadi@sifive.com>,
 "logang@deltatee.com" <logang@deltatee.com>,
 Greentime Hu <greentime.hu@g.sifive.com>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "tglx@linutronix.de" <tglx@linutronix.de>, "will@kernel.org" <will@kernel.org>,
 "allison@lohutok.net" <allison@lohutok.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

For legacy I/O BARs (non-MMIO BARs) to work correctly on RISC-V Linux,
we need to establish a reserved memory region for them, so that drivers
that wish to use the legacy I/O BARs can issue reads and writes against
a memory region that is mapped to the host PCIe controller's I/O BAR
mapping.

Signed-off-by: Yash Shah <yash.shah@sifive.com>
---

Changes in v2:
- update patch description as per Paul's suggestion
https://lore.kernel.org/linux-riscv/alpine.DEB.2.21.9999.1910240937350.20010@viisi.sifive.com/

---
 arch/riscv/include/asm/io.h      | 7 +++++++
 arch/riscv/include/asm/pgtable.h | 7 ++++++-
 2 files changed, 13 insertions(+), 1 deletion(-)

diff --git a/arch/riscv/include/asm/io.h b/arch/riscv/include/asm/io.h
index fc1189a..3ba4d93 100644
--- a/arch/riscv/include/asm/io.h
+++ b/arch/riscv/include/asm/io.h
@@ -13,6 +13,7 @@
 
 #include <linux/types.h>
 #include <asm/mmiowb.h>
+#include <asm/pgtable.h>
 
 extern void __iomem *ioremap(phys_addr_t offset, unsigned long size);
 
@@ -162,6 +163,12 @@ static inline u64 __raw_readq(const volatile void __iomem *addr)
 #endif
 
 /*
+ *  I/O port access constants.
+ */
+#define IO_SPACE_LIMIT		(PCI_IO_SIZE - 1)
+#define PCI_IOBASE		((void __iomem *)PCI_IO_START)
+
+/*
  * Emulation routines for the port-mapped IO space used by some PCI drivers.
  * These are defined as being "fully synchronous", but also "not guaranteed to
  * be fully ordered with respect to other memory and I/O operations".  We're
diff --git a/arch/riscv/include/asm/pgtable.h b/arch/riscv/include/asm/pgtable.h
index 7fc5e4a..d78cc74 100644
--- a/arch/riscv/include/asm/pgtable.h
+++ b/arch/riscv/include/asm/pgtable.h
@@ -7,6 +7,7 @@
 #define _ASM_RISCV_PGTABLE_H
 
 #include <linux/mmzone.h>
+#include <linux/sizes.h>
 
 #include <asm/pgtable-bits.h>
 
@@ -88,6 +89,7 @@ extern pgd_t swapper_pg_dir[];
 #define VMALLOC_SIZE     (KERN_VIRT_SIZE >> 1)
 #define VMALLOC_END      (PAGE_OFFSET - 1)
 #define VMALLOC_START    (PAGE_OFFSET - VMALLOC_SIZE)
+#define PCI_IO_SIZE      SZ_16M
 
 /*
  * Roughly size the vmemmap space to be large enough to fit enough
@@ -102,7 +104,10 @@ extern pgd_t swapper_pg_dir[];
 
 #define vmemmap		((struct page *)VMEMMAP_START)
 
-#define FIXADDR_TOP      (VMEMMAP_START)
+#define PCI_IO_END       VMEMMAP_START
+#define PCI_IO_START     (PCI_IO_END - PCI_IO_SIZE)
+#define FIXADDR_TOP      PCI_IO_START
+
 #ifdef CONFIG_64BIT
 #define FIXADDR_SIZE     PMD_SIZE
 #else
-- 
2.7.4


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
