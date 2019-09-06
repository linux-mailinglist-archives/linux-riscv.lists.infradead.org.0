Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41280AB323
	for <lists+linux-riscv@lfdr.de>; Fri,  6 Sep 2019 09:21:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6HaqMamQgWdB1WBdhN+uCbcfqj6lzepWjBDSh/LQIAQ=; b=V4tyUb58LCDRc7
	lgWI6N/sfbFR8gQIUb+28Je7OHdZYkFhFLf2P54r9X9oTy1HWTwlPJkYY1jnvIrjdiLYJbuHoSbkc
	auXUNGup0d+JQchemA/CvpGPJFgqIgqZweec5N37PJRP5kS8gmpRXfcI9mwEQ7K+c81XzJNMBfccp
	23QTn791TlUr5bJKGbXtntj71fPDAni+s7MzpU0/lrSwpKs4S4jbnkMxzOhi0e77TZI0IbVN5iRwF
	9G4dP7Qv3PoNI+d+seRs8tXYpMdbDsm30cDXIi6lvKz9nEtxWsCKhY9Wi2rE0SFDc5i0XDS4x6J6O
	9BtdxjTkfiC4RyWRr8KQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i68YA-0007r2-KX; Fri, 06 Sep 2019 07:20:54 +0000
Received: from m4a0041g.houston.softwaregrp.com ([15.124.2.87])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i68Y4-0007fc-Vp
 for linux-riscv@lists.infradead.org; Fri, 06 Sep 2019 07:20:50 +0000
Received: FROM m4a0041g.houston.softwaregrp.com (15.120.17.146) BY
 m4a0041g.houston.softwaregrp.com WITH ESMTP; 
 Fri,  6 Sep 2019 07:18:05 +0000
Received: from M4W0334.microfocus.com (2002:f78:1192::f78:1192) by
 M4W0334.microfocus.com (2002:f78:1192::f78:1192) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1591.10; Fri, 6 Sep 2019 07:17:17 +0000
Received: from NAM04-SN1-obe.outbound.protection.outlook.com (15.124.8.12) by
 M4W0334.microfocus.com (15.120.17.146) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1591.10 via Frontend Transport; Fri, 6 Sep 2019 07:17:17 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Y6ce23scdtxLdc7y8abArsDracMcB/50HMaLfL2v+nya54iF0KWdOxUpucp3wJpr+VtiCwwTl44Zx95/Psj5lIlgNgnMZLfEhFc0Vt7msktLOnevl9WqBRDY/MgeMBihD9oUCCl9kZ7Oy3dlTmycBXiTUmbOjlyzUF54yUldT+P8oQ9Clirjq95KL7wDgH0q8iJiFbfn0bqv0KfOadAminID5o8ur5dlkyaq+LAMi5Oeu5jDe84nsozuBecCu6tj3JJNyOnm49gd9Qs/D1AqLge7q6yUGtd4YyXqvEaOWyxd6O6SGtAIV7tnHEdb0CIpqjUIEHBsyHeYasD3q+jsHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MTdPGuCoAiG0yJYCZE89xJMOVWPqp009nAHsu3p4EP0=;
 b=D9WEk9fvrjBYMiNjWrzQkeZgbrQl0+Lxpp7leoeYfeo8t2L1gDsRUUTD+LfuANsV7aqz1PVBxFSujMQA0RzRf4LZPL4fv5gcvP+80+m5AaArrqIlDYmiyBC3Y7IpNq/5TGjkPJCNAgWr19tG7alcLHbvLbGliudzuj2V20KFynAPO0J0D/O3m1cfOXpO4peZyYQ/btEA8Ej5BiKFkwFu/RAkyOEerC3HDZz+JMNfVNQfZi0a/H+pNfnBICADtm9/3/aXcugZ3unozMlXOODIFsu//kLTilj7Lmo9kqY5XFJcZoDSTJvH9A//i5jJsw8kjxYEThgyoU00BwAanY3ggw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=suse.com; dmarc=pass action=none header.from=suse.com;
 dkim=pass header.d=suse.com; arc=none
Received: from BY5PR18MB3283.namprd18.prod.outlook.com (10.255.139.203) by
 BY5PR18MB3139.namprd18.prod.outlook.com (10.255.136.11) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2241.13; Fri, 6 Sep 2019 07:17:16 +0000
Received: from BY5PR18MB3283.namprd18.prod.outlook.com
 ([fe80::a46b:1f66:8378:b25e]) by BY5PR18MB3283.namprd18.prod.outlook.com
 ([fe80::a46b:1f66:8378:b25e%3]) with mapi id 15.20.2241.014; Fri, 6 Sep 2019
 07:17:16 +0000
From: Chester Lin <clin@suse.com>
To: "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>, "palmer@sifive.com"
 <palmer@sifive.com>, "aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>,
 "merker@debian.org" <merker@debian.org>, "atish.patra@wdc.com"
 <atish.patra@wdc.com>, "Anup.Patel@wdc.com" <Anup.Patel@wdc.com>,
 "tglx@linutronix.de" <tglx@linutronix.de>
Subject: [PATCH] riscv: save space on the magic number field of image header
Thread-Topic: [PATCH] riscv: save space on the magic number field of image
 header
Thread-Index: AQHVZIMcNduMKr0kk0WFNI6AGCbw5w==
Date: Fri, 6 Sep 2019 07:17:15 +0000
Message-ID: <20190906071631.23695-1-clin@suse.com>
Accept-Language: zh-TW, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: HK0PR03CA0119.apcprd03.prod.outlook.com
 (2603:1096:203:b0::35) To BY5PR18MB3283.namprd18.prod.outlook.com
 (2603:10b6:a03:196::11)
authentication-results: spf=none (sender IP is ) smtp.mailfrom=clin@suse.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.22.0
x-originating-ip: [60.251.47.116]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f46e4041-a95f-4c1c-8a73-08d7329a3e95
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(7168020)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BY5PR18MB3139; 
x-ms-traffictypediagnostic: BY5PR18MB3139:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BY5PR18MB3139EF69604CACB6E7D7C6DCADBA0@BY5PR18MB3139.namprd18.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4941;
x-forefront-prvs: 0152EBA40F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(366004)(346002)(396003)(376002)(39860400002)(136003)(189003)(199004)(256004)(36756003)(486006)(2616005)(14454004)(476003)(2501003)(478600001)(6486002)(186003)(386003)(6506007)(50226002)(8936002)(71200400001)(71190400001)(66946007)(26005)(7416002)(66556008)(81166006)(81156014)(5660300002)(8676002)(102836004)(6116002)(3846002)(52116002)(66476007)(55236004)(6436002)(64756008)(99286004)(66446008)(2906002)(86362001)(6512007)(1076003)(2201001)(110136005)(54906003)(2171002)(316002)(305945005)(4326008)(107886003)(66066001)(7736002)(25786009)(53936002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BY5PR18MB3139;
 H:BY5PR18MB3283.namprd18.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: suse.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: gwOxo58LCPBFLmm0855bKAeXkUICZfL26NTt0HGsjCnEXntS7OC7RJbl00OHEIKYFntU1RQcwNMHwFSI+qf4K7wDq5nYSYwlHmocHamboW+MzrY0M/jw3duYVGNsNhzjY5oUW65Own5ulibQ74hqrtzf3ECaIbhzDiIGFPLHZLX1Xvy8fP0R1CXlhqLKv/fcHOqyyp9EQfCt+M0OfTLo2H8K+2GJHZO8r0GOBjYzXb4gtnL1myFpry4Gb2j/H2KBrgWSuo6SNLbxsgT9/vRS+HZxoTCI4Tb9XqciPHYNqj+tuPunQfY8wA5C2V216Ypy8qbxrZsffpGA5UPHvhG0ewNp//Jw9dPLAik6y7aMrrNlY04f8XQLTUnzEfGtJg94Uw+hYx3BKU45RTOjhssyUhyrU2mqX+yJMFatZMdlI5I=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: f46e4041-a95f-4c1c-8a73-08d7329a3e95
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Sep 2019 07:17:15.5812 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 856b813c-16e5-49a5-85ec-6f081e13b527
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +jVT5rwHENlXecm0yziQHeIBI/AN5q8u9tIgpXrOwJW/eM8wbExr6Xud5BL5O93Q
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR18MB3139
X-OriginatorOrg: suse.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_002049_126869_A902047F 
X-CRM114-Status: UNSURE (   7.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [15.124.2.87 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Chester Lin <clin@suse.com>,
 "marek.vasut@gmail.com" <marek.vasut@gmail.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "rick@andestech.com" <rick@andestech.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Change the symbol from "RISCV" to "RSCV" so the magic number can be 32-bit
long, which is consistent with other architectures.

Signed-off-by: Chester Lin <clin@suse.com>
---
 arch/riscv/include/asm/image.h | 9 +++++----
 arch/riscv/kernel/head.S       | 5 ++---
 2 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/arch/riscv/include/asm/image.h b/arch/riscv/include/asm/image.h
index ef28e106f247..ec8bbfe86dde 100644
--- a/arch/riscv/include/asm/image.h
+++ b/arch/riscv/include/asm/image.h
@@ -3,7 +3,8 @@
 #ifndef __ASM_IMAGE_H
 #define __ASM_IMAGE_H
 
-#define RISCV_IMAGE_MAGIC	"RISCV"
+#define RISCV_IMAGE_MAGIC	"RSCV"
+
 
 #define RISCV_IMAGE_FLAG_BE_SHIFT	0
 #define RISCV_IMAGE_FLAG_BE_MASK	0x1
@@ -39,9 +40,9 @@
  * @version:		version
  * @res1:		reserved
  * @res2:		reserved
- * @magic:		Magic number
  * @res3:		reserved (will be used for additional RISC-V specific
  *			header)
+ * @magic:		Magic number
  * @res4:		reserved (will be used for PE COFF offset)
  *
  * The intention is for this header format to be shared between multiple
@@ -57,8 +58,8 @@ struct riscv_image_header {
 	u32 version;
 	u32 res1;
 	u64 res2;
-	u64 magic;
-	u32 res3;
+	u64 res3;
+	u32 magic;
 	u32 res4;
 };
 #endif /* __ASSEMBLY__ */
diff --git a/arch/riscv/kernel/head.S b/arch/riscv/kernel/head.S
index 0f1ba17e476f..1f8fffbecf68 100644
--- a/arch/riscv/kernel/head.S
+++ b/arch/riscv/kernel/head.S
@@ -39,9 +39,8 @@ ENTRY(_start)
 	.word RISCV_HEADER_VERSION
 	.word 0
 	.dword 0
-	.asciz RISCV_IMAGE_MAGIC
-	.word 0
-	.balign 4
+	.dword 0
+	.ascii RISCV_IMAGE_MAGIC
 	.word 0
 
 .global _start_kernel
-- 
2.22.0


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
