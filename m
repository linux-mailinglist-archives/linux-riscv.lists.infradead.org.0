Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77D15E2CF3
	for <lists+linux-riscv@lfdr.de>; Thu, 24 Oct 2019 11:14:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hq1w+0g2Q+W7kF1FszohECFmbrMO+efjxLae1OjE9dg=; b=ubL7VPKZLt9LPV
	WVgt0PlkOayIAOodb+dtvxDqr/waa5Tz9wlkyYgBSgQxsg7gDbhoFsIJxILD89nv50v71cF98t2s1
	RaGO15zwIRxzCwfvPmhXUj3VMVOWKWQuJilVTjSI7yImn5FDTGPnpe6b4YdUqE6G6IYkFuqT9zxC0
	9YIQ531sy5x687eykUAvLIotqMtzTvoIuv9erLGa3M0naAAItL4f11MJHUgRktmO4zxLeYXLDpLkq
	+dfnW5rlpc7SyBOn1WWtxcU3ALjSwqJc63uBAOu6OSVVnx8ulDAoylp8IGGG9cATniPgudPpxo9oJ
	jZF4oADYDhq4OQPG4VIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNZCL-0007rN-2H; Thu, 24 Oct 2019 09:14:25 +0000
Received: from mail-dm3nam03on0615.outbound.protection.outlook.com
 ([2a01:111:f400:fe49::615]
 helo=NAM03-DM3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNZCH-0007qj-48
 for linux-riscv@lists.infradead.org; Thu, 24 Oct 2019 09:14:22 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=h0g35P+QkW0LEwEKu5P1x552hDMUJSRpj2aSmjsx/JEbczKsBRl0m131+1cDLrgGsjC5JbCRcSb8vjhAnPGEtdLqA6S5JPR8cTkgc5z8BWnj/TeqBEykzqcJSAHUdq/KwQytDv9NxSUZsXzswG31+4fTOQUhouKtQz9fk4JBfWLfOZXKfwu8Du4EV1kgfPTuTvCE3A7+Hg6WnM9uatwHO+XQYETRR0c+hFuCbzOUgME2mxeKEg/DkMsoO0w8k8bsvxkO0hrKmep2FVO3uK4omCWO9htWPaUJO+brS/EaGYm+F+FIFzY4uKP/fxTvBmAKVzVIDqjJxe8sDbfdexrGaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GnTOf/PiXi7rZUG0vmhrzxWOsGzVPLw7GQ5uEVjH4ms=;
 b=VY7rzFffxC1WnEamwuT01Lq/5FZJR7GU1NwGFUgwaMrUI/0owIOS8XXW9AxFNcS3JN6batCxoZcDCsQyhk01xONTxsdVsK5U/6SFlTogfqGLvCUTDZb6UE/tvF+c4kijdR8F5JuSgY0ebeQ5PFmHtzHit66pn3k/mxY77nF9iW2L8J0w0ig4ElfqrYcmMa1ctMEd45pPqM4jQ52rW61GfRgyFCnO+wYsfQg71mKFEm2sX2S3lyJ2/bjgxpuu/+ZxhB0KMXlzf+NGsWgHpsQ/IeOmhZQ7a6aNGx1i7nwX/QyKrJOdx4OM/VUMSM1yZNYKi7I+YJcoJxAvOzHCDYOrqQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=sifive.com; dmarc=pass action=none header.from=sifive.com;
 dkim=pass header.d=sifive.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GnTOf/PiXi7rZUG0vmhrzxWOsGzVPLw7GQ5uEVjH4ms=;
 b=gGF9QK4hTdjDe/EHFXIqMRKtDJYOsI9NT6GF6Qw9GcgEdebQm2buupezixxZaxSt9/QlOIcfi167gw/rs89HI/jwo6eN0zN52f3cXPsxtfh26O7bDsgRQeG6JixCkJeExgb7RwNfTWLWtiFYEi4S/SrVgH37xvSN9T6MGODlgpo=
Received: from CH2PR13MB3368.namprd13.prod.outlook.com (52.132.246.90) by
 CH2PR13MB3399.namprd13.prod.outlook.com (52.132.244.161) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2387.17; Thu, 24 Oct 2019 09:14:16 +0000
Received: from CH2PR13MB3368.namprd13.prod.outlook.com
 ([fe80::c069:f0c7:760b:faba]) by CH2PR13MB3368.namprd13.prod.outlook.com
 ([fe80::c069:f0c7:760b:faba%3]) with mapi id 15.20.2387.021; Thu, 24 Oct 2019
 09:14:16 +0000
From: Yash Shah <yash.shah@sifive.com>
To: "Paul Walmsley ( Sifive)" <paul.walmsley@g.sifive.com>, "Palmer Dabbelt (
 Sifive)" <palmer@g.sifive.com>, "linux-riscv@lists.infradead.org"
 <linux-riscv@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: [PATCH] RISC-V: Add PCIe I/O BAR memory mapping
Thread-Topic: [PATCH] RISC-V: Add PCIe I/O BAR memory mapping
Thread-Index: AQHViktonODm2JDbF0ujvmchxtIALA==
Date: Thu, 24 Oct 2019 09:14:16 +0000
Message-ID: <1571908438-4802-1-git-send-email-yash.shah@sifive.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: MA1PR01CA0119.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:35::13) To CH2PR13MB3368.namprd13.prod.outlook.com
 (2603:10b6:610:2c::26)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=yash.shah@sifive.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 1.9.1
x-originating-ip: [114.143.65.226]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f26306f8-56c6-4dd0-8f2c-08d758628b19
x-ms-traffictypediagnostic: CH2PR13MB3399:
x-ld-processed: 22f88e9d-ae0d-4ed9-b984-cdc9be1529f1,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CH2PR13MB3399068F33398004281E72628C6A0@CH2PR13MB3399.namprd13.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0200DDA8BE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(346002)(136003)(396003)(39840400004)(366004)(199004)(189003)(486006)(386003)(44832011)(66946007)(26005)(3846002)(64756008)(66446008)(6116002)(66476007)(102836004)(66556008)(99286004)(4326008)(6486002)(2906002)(186003)(71190400001)(50226002)(81166006)(6436002)(8676002)(8936002)(81156014)(71200400001)(54906003)(256004)(478600001)(14444005)(7416002)(52116002)(36756003)(2201001)(14454004)(86362001)(66066001)(2501003)(110136005)(6512007)(476003)(25786009)(7736002)(305945005)(6506007)(316002)(5660300002)(2616005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR13MB3399;
 H:CH2PR13MB3368.namprd13.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: sifive.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: R14XsCdg+0ZuuHNGotPUvAdOQOL14p72B8/gbBsZpx0eemRutZ+KWeBN5aJWCampBt+N00Txhi26VpPC7IOKCcxMemqXsYPg0vxLn969Vo9LJ8HszSCoKRgtCLM1vm8WQazbWq5/nc8UZQMMfrmpXPbAubfJDVqhdXANxb4iceaJCGMOKElMUB5vee6g9in2PfsDQ4pBz5u4qsdIotKghK80maAJf1lmzoly1VQgujw8kWPtsSiMcWh2+3r3kO6+vaExW8Z3ClDR0Rfe3VeON9J53IDrpQKiLBpxn+AnD2/ngOjSwjS/nNMAemBwcb89rE2pjqIiJvOpJbDRWc6vAL1myHbV782B1WOFhWya143Atvq5zgVVfkIDMIPi8BwbVImSKcZNppWsUdhdo4Pi+uPnKb5qzb64UgPGjoF3+tA0fm3KDjZD1ZYofRjC5ojM
MIME-Version: 1.0
X-OriginatorOrg: sifive.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f26306f8-56c6-4dd0-8f2c-08d758628b19
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Oct 2019 09:14:16.2760 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 22f88e9d-ae0d-4ed9-b984-cdc9be1529f1
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: w9llapR8GFzKMMbBPXusp0cl42wlUKE4zFEP4CPs4bX5HjgHfkoJ/+RbK0pHOCmqAKkTmTzS1qWPdjLeeup6CQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR13MB3399
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_021421_312803_87587BE3 
X-CRM114-Status: UNSURE (   7.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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

For I/O BARs to work correctly on RISC-V Linux, we need to establish a
reserved memory region for them, so that drivers that wish to use I/O BARs
can issue reads and writes against a memory region that is mapped to the
host PCIe controller's I/O BAR MMIO mapping.

Signed-off-by: Yash Shah <yash.shah@sifive.com>
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
