Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 117B312954B
	for <lists+linux-riscv@lfdr.de>; Mon, 23 Dec 2019 12:35:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=OgP4fczuBLo2CI8YTwAbM3PJ6ZNFJ1Jat9p2cOz+BIw=; b=n0uxEbW/nkq/hx9V+9Vxioa89
	x7jmWQ9bRpjuJX5oH7aWe290oPH8jml4ZpBXnovYYsPDpPVwhlLYO3eDnB/1QeQvr8vG+crbutr23
	BWCH7UFsF042NVDv5Ayh305QrP+/nDxqStforkhfB0pqFAPUl/CJ5Q0sPu2lFCdTTpWF2B1pPpzY6
	xZ/T3Xu/iTS3uo4HhvKvB7WiYPHkmv8CSKXF/Rd36ZzbY85R9ym0BQ27i7LRhLx5y+B3DydIcyBSm
	IfmbGK8UhtFz8bxmXu5GstZhD+uZ987UXcj0RyTrWNR9F++1scp0rR4t7MqTMM3ScssnIP5AgSIBa
	mavvJ2gkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijLzr-0000L0-Mw; Mon, 23 Dec 2019 11:35:35 +0000
Received: from esa3.hgst.iphmx.com ([216.71.153.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijLzn-0000JM-Je; Mon, 23 Dec 2019 11:35:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1577100932; x=1608636932;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=YfkvSlrFo8+dkvi8BfrNugml3fQOpZJv9yZG/Bi/1gY=;
 b=pHOYOPDy7j86WqfYwczRm3lI+PRTXcEW631enL2mInrd/0nE7Vv5XPxU
 mk4FFg9dnyc5Y42LccJr/HWrdZxxqi3sU41Fpq69Ad0tZn3a0kK5ZnmH8
 934sY3v1QGZ1snBhmzky3ZeBe2CO0iHL+F2ZxwoYKmBeM7P3GjG+jw1Qi
 781Z9SKMMOWk8K1lqiL+pKEiY4rYTjcNyHMae6lARg+ock3m/CDBGheg3
 rEbJHYwm5W+qXazyu3HGZGCshbHotsZ7d3RHawgGaCOK3XzVm/uPNV5vZ
 thZEwa0i3UubDEx0MLfGtzBsPG+mLibRdinka0ZUqV8qDiuh7VBFKLOso A==;
IronPort-SDR: QsKppJyX53Zz0XtJ3PxOXeLsEQPwJYG9TBreyIENS84tiwk8IuvPDlc04eQtoMbLsfBcT387g9
 mnErdS1W+nhP4s9ISEkALGXjAypu/Do7WvFmXCofAGg1vuQWpkqo3qCgzXb7WR2ZMAHYL/7i3b
 tvrMQXL3ZazCZndD7aFh3XinMCzr09ZJWxC8lYMUaTLgGoLPB6DoAvHrZbCIIDExSj+XO3Vke3
 OxxJlzTe9OUja664enw8qnqK52byYwv8hKg8RisGSlm/ayy2dw7tevic29OCpbchpnA7pvVj2a
 YlI=
X-IronPort-AV: E=Sophos;i="5.69,347,1571673600"; d="scan'208";a="130393043"
Received: from mail-bn7nam10lp2102.outbound.protection.outlook.com (HELO
 NAM10-BN7-obe.outbound.protection.outlook.com) ([104.47.70.102])
 by ob1.hgst.iphmx.com with ESMTP; 23 Dec 2019 19:35:28 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=T/u5cAEYyazPiQVSdEB1TIgqT2sbcCTlz0sccQ0hE82K3YQsjAipLYA6BqMKUs9UWxC2FoUgbYD1XQhartu1Jfwsg9TvzAOHQ//uVDieFwC4oYF1FcoxI/e8pk4HQm88n0X7H3nxOU4qOK9euOtMyJSZPpTn+Z7iHQZpAef9PM8G4BIUy2xPeSXpHPdcFZd97SFrszYRo2Aq+g1dN7Ej/B4veSqtEfeZbaJudE4JF6oO2IKHbsVhFTi42PkGB/73JOYP0sVINARehCSu19mDNLHAfgfxtvHs68J28DQ7O0NWXi/2h5QQdqARVILHbPs/gUCqTKQFUO3KkNRCbmVwqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OgP4fczuBLo2CI8YTwAbM3PJ6ZNFJ1Jat9p2cOz+BIw=;
 b=NWWQRz0H0KLmBDeoE5QWl7GYbPcFA+i9TuCrx0n7INWIx249wrWJyxKFQsr5FFkoYIfQqQRGEyer7DXo2VrmviM5lHMa7xWZkyd1Bt2PVo6vPRCSZ9sWkkzr1/ePRDQcerlkkLRhY6lrXij20u7NAawkhoTI8YJ59/6ksn0q24OZKL5wi4icTIlX/yBB5zJd5uFLUTfbG5MFK482b9hNcW/ys+gzJcHWRfRGhexDDS0d7c1wL2kKotuXTmyOewK3XelRFdsEVQTP/tMWFCLTGolV1cMkxXAZficiWJzwZaOUhsnaW7tfdHXe7eRh+Ub96Djhx82yOltq7ylaJUOY1w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OgP4fczuBLo2CI8YTwAbM3PJ6ZNFJ1Jat9p2cOz+BIw=;
 b=ll0sEb4A8dgguyT03aDyePT5JrEUq9ybTUEDCylX6Fu4OiWhgfNxXMrQQ5Nq0EygSpDV96Q53NPGYfUtnkZHL2IOOzD+F70flXqT4vQ4f1AZ3XEHOtMCUp8bAEcAB+qarWPBECz964URFdP1XjSQY4t4Se4ql3UkqsLx4PFK7AA=
Received: from MN2PR04MB6061.namprd04.prod.outlook.com (20.178.246.15) by
 MN2PR04MB7072.namprd04.prod.outlook.com (10.186.146.20) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2559.15; Mon, 23 Dec 2019 11:35:26 +0000
Received: from MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::a9a0:3ffa:371f:ad89]) by MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::a9a0:3ffa:371f:ad89%7]) with mapi id 15.20.2559.017; Mon, 23 Dec 2019
 11:35:26 +0000
Received: from wdc.com (106.51.20.238) by
 MA1PR01CA0077.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00::17) with Microsoft
 SMTP Server (version=TLS1_2, cipher=) via Frontend Transport;
 Mon, 23 Dec 2019 11:35:20 +0000
From: Anup Patel <Anup.Patel@wdc.com>
To: Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley
 <paul.walmsley@sifive.com>, Albert Ou <aou@eecs.berkeley.edu>, Paolo Bonzini
 <pbonzini@redhat.com>, Radim K <rkrcmar@redhat.com>
Subject: [PATCH v10 02/19] RISC-V: Add bitmap reprensenting ISA features
 common across CPUs
Thread-Topic: [PATCH v10 02/19] RISC-V: Add bitmap reprensenting ISA features
 common across CPUs
Thread-Index: AQHVuYUS5IbGQwTUD021jPt6po1ITw==
Date: Mon, 23 Dec 2019 11:35:26 +0000
Message-ID: <20191223113443.68969-3-anup.patel@wdc.com>
References: <20191223113443.68969-1-anup.patel@wdc.com>
In-Reply-To: <20191223113443.68969-1-anup.patel@wdc.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: MA1PR01CA0077.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00::17)
 To MN2PR04MB6061.namprd04.prod.outlook.com
 (2603:10b6:208:d8::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Anup.Patel@wdc.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-originating-ip: [106.51.20.238]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 8f4fbf9c-8726-400c-7ca0-08d7879c348b
x-ms-traffictypediagnostic: MN2PR04MB7072:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR04MB70729864BE3D36C5B5638B548D2E0@MN2PR04MB7072.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:317;
x-forefront-prvs: 0260457E99
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(136003)(366004)(376002)(396003)(346002)(39860400002)(199004)(189003)(8886007)(478600001)(52116002)(316002)(16526019)(2906002)(8936002)(1076003)(7696005)(36756003)(66946007)(66476007)(86362001)(66446008)(26005)(64756008)(66556008)(4326008)(5660300002)(8676002)(186003)(7416002)(81156014)(2616005)(956004)(71200400001)(55016002)(44832011)(55236004)(81166006)(1006002)(54906003)(110136005)(32040200004);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB7072;
 H:MN2PR04MB6061.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: tJ0J+AUEf/LZGYy49KY8FJPO9w4RDtllAk5F82/D0k3gAmK/0vpsfO0YsSOZqvwxLE7xyHyYdQqZcB01JmQgRpGYewY4Q3h6gS5CJa0excbBrveNukqdW1qA8mTlf1RagMO5uwjUOkHfbLpBH6COmI3AvUGPMsmHFo06wRBv4tTYMkPO/IytC8r+28xxp3WmdHTPQAbxH6819+Hpbgr4q39F3DNynWdgy+yGpnBRT0X9ENEC47XUyXZCfkMNsvpBshhxYSTUiCcmc7QFtFI2tfGZtcokM6PfPU8j1cH0DOAKjnTROALRYs8mJJtYBS+uE1RJ5QZYyBVlHfO0n6iUfMfq+UJfT73fAcnx1TE2QuySwvvwASMRdItrHevJwLDaYGgvKzT9dy+pYaqx7L/gpJ6UYjkgYf4huiPEZ322fvD5gIJFYRizLPjuAB4R/r5vkY07Ze8ZOmORkIyrjw1Dle9oMdPANNkHUdrv04lf2FX+UG44Rju05i9vCQ1wBFix
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8f4fbf9c-8726-400c-7ca0-08d7879c348b
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Dec 2019 11:35:26.7756 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1pJ57zsIVhBbfFjMONIjzF3e1VqAs0tYv4z7962gBT0nRLbQ7Nx2nVsDI+WS9D4PaTyGgtRYVv9xrl/DQRdDMw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB7072
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191223_033531_672173_8722B4B9 
X-CRM114-Status: GOOD (  15.98  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.141 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Damien Le Moal <Damien.LeMoal@wdc.com>,
 "kvm@vger.kernel.org" <kvm@vger.kernel.org>, Anup Patel <anup@brainfault.org>,
 Anup Patel <Anup.Patel@wdc.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Atish Patra <Atish.Patra@wdc.com>, Alistair Francis <Alistair.Francis@wdc.com>,
 "kvm-riscv@lists.infradead.org" <kvm-riscv@lists.infradead.org>,
 Alexander Graf <graf@amazon.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 Christoph Hellwig <hch@lst.de>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

This patch adds riscv_isa bitmap which represents Host ISA features
common across all Host CPUs. The riscv_isa is not same as elf_hwcap
because elf_hwcap will only have ISA features relevant for user-space
apps whereas riscv_isa will have ISA features relevant to both kernel
and user-space apps.

One of the use-case for riscv_isa bitmap is in KVM hypervisor where
we will use it to do following operations:

1. Check whether hypervisor extension is available
2. Find ISA features that need to be virtualized (e.g. floating
   point support, vector extension, etc.)

Signed-off-by: Anup Patel <anup.patel@wdc.com>
Signed-off-by: Atish Patra <atish.patra@wdc.com>
Reviewed-by: Alexander Graf <graf@amazon.com>
---
 arch/riscv/include/asm/hwcap.h | 22 +++++++++
 arch/riscv/kernel/cpufeature.c | 83 ++++++++++++++++++++++++++++++++--
 2 files changed, 102 insertions(+), 3 deletions(-)

diff --git a/arch/riscv/include/asm/hwcap.h b/arch/riscv/include/asm/hwcap.=
h
index 1bb0cd04aec3..5589c012e004 100644
--- a/arch/riscv/include/asm/hwcap.h
+++ b/arch/riscv/include/asm/hwcap.h
@@ -8,6 +8,7 @@
 #ifndef _ASM_RISCV_HWCAP_H
 #define _ASM_RISCV_HWCAP_H
=20
+#include <linux/bits.h>
 #include <uapi/asm/hwcap.h>
=20
 #ifndef __ASSEMBLY__
@@ -22,6 +23,27 @@ enum {
 };
=20
 extern unsigned long elf_hwcap;
+
+#define RISCV_ISA_EXT_a		('a' - 'a')
+#define RISCV_ISA_EXT_c		('c' - 'a')
+#define RISCV_ISA_EXT_d		('d' - 'a')
+#define RISCV_ISA_EXT_f		('f' - 'a')
+#define RISCV_ISA_EXT_h		('h' - 'a')
+#define RISCV_ISA_EXT_i		('i' - 'a')
+#define RISCV_ISA_EXT_m		('m' - 'a')
+#define RISCV_ISA_EXT_s		('s' - 'a')
+#define RISCV_ISA_EXT_u		('u' - 'a')
+
+#define RISCV_ISA_EXT_MAX	256
+
+unsigned long riscv_isa_extension_base(const unsigned long *isa_bitmap);
+
+#define riscv_isa_extension_mask(ext) BIT_MASK(RISCV_ISA_EXT_##ext)
+
+bool __riscv_isa_extension_available(const unsigned long *isa_bitmap, int =
bit);
+#define riscv_isa_extension_available(isa_bitmap, ext)	\
+	__riscv_isa_extension_available(isa_bitmap, RISCV_ISA_EXT_##ext)
+
 #endif
=20
 #endif /* _ASM_RISCV_HWCAP_H */
diff --git a/arch/riscv/kernel/cpufeature.c b/arch/riscv/kernel/cpufeature.=
c
index 0b40705567b7..e172a2322b34 100644
--- a/arch/riscv/kernel/cpufeature.c
+++ b/arch/riscv/kernel/cpufeature.c
@@ -6,6 +6,7 @@
  * Copyright (C) 2017 SiFive
  */
=20
+#include <linux/bitmap.h>
 #include <linux/of.h>
 #include <asm/processor.h>
 #include <asm/hwcap.h>
@@ -13,15 +14,57 @@
 #include <asm/switch_to.h>
=20
 unsigned long elf_hwcap __read_mostly;
+
+/* Host ISA bitmap */
+static DECLARE_BITMAP(riscv_isa, RISCV_ISA_EXT_MAX) __read_mostly;
+
 #ifdef CONFIG_FPU
 bool has_fpu __read_mostly;
 #endif
=20
+/**
+ * riscv_isa_extension_base() - Get base extension word
+ *
+ * @isa_bitmap: ISA bitmap to use
+ * Return: base extension word as unsigned long value
+ *
+ * NOTE: If isa_bitmap is NULL then Host ISA bitmap will be used.
+ */
+unsigned long riscv_isa_extension_base(const unsigned long *isa_bitmap)
+{
+	if (!isa_bitmap)
+		return riscv_isa[0];
+	return isa_bitmap[0];
+}
+EXPORT_SYMBOL_GPL(riscv_isa_extension_base);
+
+/**
+ * __riscv_isa_extension_available() - Check whether given extension
+ * is available or not
+ *
+ * @isa_bitmap: ISA bitmap to use
+ * @bit: bit position of the desired extension
+ * Return: true or false
+ *
+ * NOTE: If isa_bitmap is NULL then Host ISA bitmap will be used.
+ */
+bool __riscv_isa_extension_available(const unsigned long *isa_bitmap, int =
bit)
+{
+	const unsigned long *bmap =3D (isa_bitmap) ? isa_bitmap : riscv_isa;
+
+	if (bit >=3D RISCV_ISA_EXT_MAX)
+		return false;
+
+	return test_bit(bit, bmap) ? true : false;
+}
+EXPORT_SYMBOL_GPL(__riscv_isa_extension_available);
+
 void riscv_fill_hwcap(void)
 {
 	struct device_node *node;
 	const char *isa;
-	size_t i;
+	char print_str[BITS_PER_LONG + 1];
+	size_t i, j, isa_len;
 	static unsigned long isa2hwcap[256] =3D {0};
=20
 	isa2hwcap['i'] =3D isa2hwcap['I'] =3D COMPAT_HWCAP_ISA_I;
@@ -33,8 +76,11 @@ void riscv_fill_hwcap(void)
=20
 	elf_hwcap =3D 0;
=20
+	bitmap_zero(riscv_isa, RISCV_ISA_EXT_MAX);
+
 	for_each_of_cpu_node(node) {
 		unsigned long this_hwcap =3D 0;
+		unsigned long this_isa =3D 0;
=20
 		if (riscv_of_processor_hartid(node) < 0)
 			continue;
@@ -42,8 +88,24 @@ void riscv_fill_hwcap(void)
 		if (riscv_read_check_isa(node, &isa) < 0)
 			continue;
=20
-		for (i =3D 0; i < strlen(isa); ++i)
+		i =3D 0;
+		isa_len =3D strlen(isa);
+#if IS_ENABLED(CONFIG_32BIT)
+		if (!strncmp(isa, "rv32", 4))
+			i +=3D 4;
+#elif IS_ENABLED(CONFIG_64BIT)
+		if (!strncmp(isa, "rv64", 4))
+			i +=3D 4;
+#endif
+		for (; i < isa_len; ++i) {
 			this_hwcap |=3D isa2hwcap[(unsigned char)(isa[i])];
+			/*
+			 * TODO: X, Y and Z extension parsing for Host ISA
+			 * bitmap will be added in-future.
+			 */
+			if ('a' <=3D isa[i] && isa[i] < 'x')
+				this_isa |=3D (1UL << (isa[i] - 'a'));
+		}
=20
 		/*
 		 * All "okay" hart should have same isa. Set HWCAP based on
@@ -54,6 +116,11 @@ void riscv_fill_hwcap(void)
 			elf_hwcap &=3D this_hwcap;
 		else
 			elf_hwcap =3D this_hwcap;
+
+		if (riscv_isa[0])
+			riscv_isa[0] &=3D this_isa;
+		else
+			riscv_isa[0] =3D this_isa;
 	}
=20
 	/* We don't support systems with F but without D, so mask those out
@@ -63,7 +130,17 @@ void riscv_fill_hwcap(void)
 		elf_hwcap &=3D ~COMPAT_HWCAP_ISA_F;
 	}
=20
-	pr_info("elf_hwcap is 0x%lx\n", elf_hwcap);
+	memset(print_str, 0, sizeof(print_str));
+	for (i =3D 0, j =3D 0; i < BITS_PER_LONG; i++)
+		if (riscv_isa[0] & BIT_MASK(i))
+			print_str[j++] =3D (char)('a' + i);
+	pr_info("riscv: ISA extensions %s\n", print_str);
+
+	memset(print_str, 0, sizeof(print_str));
+	for (i =3D 0, j =3D 0; i < BITS_PER_LONG; i++)
+		if (elf_hwcap & BIT_MASK(i))
+			print_str[j++] =3D (char)('a' + i);
+	pr_info("riscv: ELF capabilities %s\n", print_str);
=20
 #ifdef CONFIG_FPU
 	if (elf_hwcap & (COMPAT_HWCAP_ISA_F | COMPAT_HWCAP_ISA_D))
--=20
2.17.1


