Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB90DA8667
	for <lists+linux-riscv@lfdr.de>; Wed,  4 Sep 2019 18:13:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SOveKgTeGkN0JzI6Cys0CewDGJ8dSSJ/eslDpwymxfU=; b=a3gN3jBYC7bGP+
	ccEn57VuYelLsmctcW7PI6y56YvRMuSxAm9jjtMr6zP4mVtglR2Z5C7zH6XgL+LfnT+Rfz3Y7JaH4
	UTwzS0hoWJGa8XjPW8Osd8W88jQnLwrrcRmXsQzjBCekJv3X5eD//p7keBdu6AQIEzw0KDGXCaKJx
	uTsII34ebHNcwWbbQx1L3HdtIPblvY7wxYrs+t55AAzFx9sTblh2fT1jVnZZR2IUFs0dDUOe4ys9C
	B/RAK0mYjCg1OUkbmUMiMOMtGSxdXHqVRRoA9SUqRd9bo3ViTgP3HGPEmE9LD3N8mTt2lzBYGzNCt
	FIdluI1cW0yayKiMzPXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5Xur-0000ut-C6; Wed, 04 Sep 2019 16:13:53 +0000
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5Xun-0000tR-SZ
 for linux-riscv@lists.infradead.org; Wed, 04 Sep 2019 16:13:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1567613630; x=1599149630;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=EshFOqokCggYq3LfKmIyKpmnh0gvjxaaOJmqnGYmykE=;
 b=ah94cA3WAVU0quFbFmLVTAoCSzVOwtDE6Nb+6eL529fKdjTLran0wRkO
 8pQ0sarhMxrT//T7xaZVm0TN9/dUk1QVZwEAh6uargZSw6GGDdzKG+8pi
 d9aJXbNWEMD0Itr69YbuF+QPZvAJ7oqxtBpxEjADAUCFyp9eWNhrZ1dch
 4ZV5JVW+cNMR4EdQFL+UlZPdX+1Pp0CDBtj5D7so6Z19WPpnU9cKI+dX3
 srEgmJrnl5oi0Qu2VOppwueXM64G2vi//t9LV2xc9KYKPI09z2jrIh9SJ
 0yUiSXL1ldHVZ2fZKZcm3CGk+iyxslIu3AxzzT3TKTFg/Mx+WXacgwYff A==;
IronPort-SDR: 1EM1SdgmZJ+QNiB1UiAuqO3e2chI/GU5ydTkA5SLISQPQZzEGpMtne6odc5GmU0Rt+98JDTubl
 FCnRCH2bL+X188Rqbrem97CD0mcc1vFFLo+bm9WqB2lMnkKyWiYNGEjP1B2n8UcA7QbRFw9mVk
 LSjApW/JXYJsxsk3p0tCgVgUJsrepPiY7cn//Mr6L34hUpfc/ws6okg6R+3y18V+9tnxbz0QqN
 AdvttFxk9Xl5JV6y74O+opKIW+Gwti30FrSqlKqSTd3oDFhMNE2z4MKsVW0j/F1ulpUMzkw2WK
 Tzo=
X-IronPort-AV: E=Sophos;i="5.64,467,1559491200"; d="scan'208";a="118323763"
Received: from mail-sn1nam01lp2058.outbound.protection.outlook.com (HELO
 NAM01-SN1-obe.outbound.protection.outlook.com) ([104.47.32.58])
 by ob1.hgst.iphmx.com with ESMTP; 05 Sep 2019 00:13:48 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SxgIm8CwFbXNQMjsIX5+1wQm1mjm84/IaL1Q2prj7/M/crrOY1sXO+8KSkcdTFzOHdcBC3tR6a/UB62wyZd2C0TUhI0Nu4hp40f0lM+Evb58rEcwj7b8ImiWpOlU27f4llWJnczPYXgGU7Vq5uPUo818jUke3B0b34XAn2SAgVto31SoX/EJ51dhCXZou7NJq9T2nkuaZlFhNIBj0cTub6kfvMefZhOu07q+Yr8bGyjreAyHazdl+5ysW+8rksaOUP9vCxLqkKig2D16KUaoJCWP37xLFoXMIC4FyoAxtLNH47WMu7H72RcRnOke7YRVwSHPsrMlcYzQq0Af6QQDTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1oOX6d/tA3JbHLe7rIdXy6AU2iW0Z2EqPM16Sk678S0=;
 b=B8juwvXOhsZx7BysVS0FKP8STTYUS3zaybekL/tXv7Miab8XY1VsM3OolP/AJwDL7egJywCA75A1/xT+SWMObQoWnXymfngMJqhIUZIKt/1HAQ72uWCCGCL6krVffu7VcoSnIm4FfdEu01ds/EEnSPhH+RIOsbQtWL7FOiyqAX1Z26iMCSBnFmr96DODJ/TcRDbaH38SjSnh/N62iX36oy2/vKDwJcZSaeO27X/e9iGky1c+tYY+S9ee7vI4oCGNMxrCNJ9qB2PPG19vxdnvRPEj0Edu3IDFoQPCOdTRyQ0xT9rUdnPdrsGDIsM5w4pLCi0CXHgwytYQ3GXfZOy2FQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1oOX6d/tA3JbHLe7rIdXy6AU2iW0Z2EqPM16Sk678S0=;
 b=QdN+OnV/blYh3NgTTBKVyb1SqeHbL+IsisRm1mclle0eh+rGXafMXSv4RZ/q1fq2m11KLYs7kyrNQGf8FeWXVRIEMjzbAjfO8Dn5jMxpy0fbGD10mAkEgofBtQWG11yLv07Xdwh6z6coPbooaSsMX0MyIoF8F/b5k7ffjq8kFr4=
Received: from MN2PR04MB6061.namprd04.prod.outlook.com (20.178.246.15) by
 MN2PR04MB5504.namprd04.prod.outlook.com (20.178.247.210) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.16; Wed, 4 Sep 2019 16:13:46 +0000
Received: from MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::e1a5:8de2:c3b1:3fb0]) by MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::e1a5:8de2:c3b1:3fb0%7]) with mapi id 15.20.2220.022; Wed, 4 Sep 2019
 16:13:46 +0000
From: Anup Patel <Anup.Patel@wdc.com>
To: Palmer Dabbelt <palmer@sifive.com>, Paul Walmsley
 <paul.walmsley@sifive.com>, Paolo Bonzini <pbonzini@redhat.com>, Radim K
 <rkrcmar@redhat.com>
Subject: [PATCH v7 02/21] RISC-V: Add bitmap reprensenting ISA features common
 across CPUs
Thread-Topic: [PATCH v7 02/21] RISC-V: Add bitmap reprensenting ISA features
 common across CPUs
Thread-Index: AQHVYzu6WridAzH3Tk2JLieViByo4A==
Date: Wed, 4 Sep 2019 16:13:46 +0000
Message-ID: <20190904161245.111924-4-anup.patel@wdc.com>
References: <20190904161245.111924-1-anup.patel@wdc.com>
In-Reply-To: <20190904161245.111924-1-anup.patel@wdc.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: MA1PR01CA0084.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00::24)
 To MN2PR04MB6061.namprd04.prod.outlook.com
 (2603:10b6:208:d8::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Anup.Patel@wdc.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-originating-ip: [49.207.53.222]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 79a79184-41f4-4adc-f8e3-08d73152dd24
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(7168020)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:MN2PR04MB5504; 
x-ms-traffictypediagnostic: MN2PR04MB5504:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR04MB5504FF31E0B61DCA0197EE238DB80@MN2PR04MB5504.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:274;
x-forefront-prvs: 0150F3F97D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(376002)(136003)(396003)(346002)(366004)(39860400002)(199004)(189003)(66556008)(66446008)(7416002)(7736002)(8676002)(478600001)(25786009)(386003)(66946007)(99286004)(256004)(50226002)(14454004)(66476007)(64756008)(6506007)(6512007)(102836004)(6436002)(8936002)(54906003)(6116002)(3846002)(486006)(26005)(55236004)(86362001)(1076003)(53936002)(476003)(316002)(71200400001)(71190400001)(81156014)(76176011)(52116002)(305945005)(5660300002)(6486002)(36756003)(186003)(11346002)(2616005)(66066001)(44832011)(4326008)(2906002)(446003)(81166006)(110136005);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB5504;
 H:MN2PR04MB6061.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: HxR8iEfblzXtnhNWhRyGF8bL7qMTO69e0rvswaeFKucMSmYz2nBa414XUJzJ6UpiUT8Vh/WyaDqIhzbvGwz2QdlO/bPxmG3OsTlRo8WAeBzWrLIpO7R3+NV7O+qG5H7QnQ04woaGu6qhEE4O+YzuTM0rXBTnswHoD3wjxuy266tJQaSotuYvDb+B+A32mu7v1sVhGjhEQYuO0nIo3val8ydeQ24WrBhuwPqR+31U3i3I8+TOrOsmA1nH5808/DJBxf5uVcmCblE81spBnsK1kAi7TKEdVTxnGo6l5LUJVcwjWk4908JgbjnbjLCxuUEckvrE5oYg4u84fjlNIbOQlqC+fAaCl8MaU499HXFMTyZO/XZW+2Sz3MJyirFBTk+Jp0iWOfjd/Hmmpldh6xgUSlaneHAkTUlKoKB6k2KCMGc=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 79a79184-41f4-4adc-f8e3-08d73152dd24
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Sep 2019 16:13:46.4960 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hczUFIfKvqlcmVXsqG4KcV9LvwvatBTDAXi8YD96XRn8laH+xIGwbYQXa3ClTAjSEzQ5j2GhDDtmQmhlUKhzcA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB5504
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_091350_036679_6B303509 
X-CRM114-Status: GOOD (  16.69  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.144 listed in list.dnswl.org]
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
Cc: Damien Le Moal <Damien.LeMoal@wdc.com>, Anup Patel <Anup.Patel@wdc.com>,
 "kvm@vger.kernel.org" <kvm@vger.kernel.org>, Anup Patel <anup@brainfault.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Christoph Hellwig <hch@infradead.org>, Atish Patra <Atish.Patra@wdc.com>,
 Alexander Graf <graf@amazon.com>, Alistair Francis <Alistair.Francis@wdc.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
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
 arch/riscv/include/asm/hwcap.h | 26 +++++++++++
 arch/riscv/kernel/cpufeature.c | 79 ++++++++++++++++++++++++++++++++--
 2 files changed, 102 insertions(+), 3 deletions(-)

diff --git a/arch/riscv/include/asm/hwcap.h b/arch/riscv/include/asm/hwcap.h
index 7ecb7c6a57b1..9b657375aa51 100644
--- a/arch/riscv/include/asm/hwcap.h
+++ b/arch/riscv/include/asm/hwcap.h
@@ -8,6 +8,7 @@
 #ifndef __ASM_HWCAP_H
 #define __ASM_HWCAP_H
 
+#include <linux/bits.h>
 #include <uapi/asm/hwcap.h>
 
 #ifndef __ASSEMBLY__
@@ -22,5 +23,30 @@ enum {
 };
 
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
+#define RISCV_ISA_EXT_zicsr	(('z' - 'a') + 1)
+#define RISCV_ISA_EXT_zifencei	(('z' - 'a') + 2)
+#define RISCV_ISA_EXT_zam	(('z' - 'a') + 3)
+#define RISCV_ISA_EXT_ztso	(('z' - 'a') + 4)
+
+#define RISCV_ISA_EXT_MAX	256
+
+unsigned long riscv_isa_extension_base(const unsigned long *isa_bitmap);
+
+#define riscv_isa_extension_mask(ext) BIT_MASK(RISCV_ISA_EXT_##ext)
+
+bool __riscv_isa_extension_available(const unsigned long *isa_bitmap, int bit);
+#define riscv_isa_extension_available(isa_bitmap, ext)	\
+	__riscv_isa_extension_available(isa_bitmap, RISCV_ISA_EXT_##ext)
+
 #endif
 #endif
diff --git a/arch/riscv/kernel/cpufeature.c b/arch/riscv/kernel/cpufeature.c
index b1ade9a49347..4ce71ce5e290 100644
--- a/arch/riscv/kernel/cpufeature.c
+++ b/arch/riscv/kernel/cpufeature.c
@@ -6,21 +6,64 @@
  * Copyright (C) 2017 SiFive
  */
 
+#include <linux/bitmap.h>
 #include <linux/of.h>
 #include <asm/processor.h>
 #include <asm/hwcap.h>
 #include <asm/smp.h>
 
 unsigned long elf_hwcap __read_mostly;
+
+/* Host ISA bitmap */
+static DECLARE_BITMAP(riscv_isa, RISCV_ISA_EXT_MAX) __read_mostly;
+
 #ifdef CONFIG_FPU
 bool has_fpu __read_mostly;
 #endif
 
+/**
+ * riscv_isa_extension_base - Get base extension word
+ *
+ * @isa_bitmap ISA bitmap to use
+ * @returns base extension word as unsigned long value
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
+ * __riscv_isa_extension_available - Check whether given extension
+ * is available or not
+ *
+ * @isa_bitmap ISA bitmap to use
+ * @bit bit position of the desired extension
+ * @returns true or false
+ *
+ * NOTE: If isa_bitmap is NULL then Host ISA bitmap will be used.
+ */
+bool __riscv_isa_extension_available(const unsigned long *isa_bitmap, int bit)
+{
+	const unsigned long *bmap = (isa_bitmap) ? isa_bitmap : riscv_isa;
+
+	if (bit >= RISCV_ISA_EXT_MAX)
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
+	char print_str[BITS_PER_LONG+1];
+	size_t i, j, isa_len;
 	static unsigned long isa2hwcap[256] = {0};
 
 	isa2hwcap['i'] = isa2hwcap['I'] = COMPAT_HWCAP_ISA_I;
@@ -32,8 +75,11 @@ void riscv_fill_hwcap(void)
 
 	elf_hwcap = 0;
 
+	bitmap_zero(riscv_isa, RISCV_ISA_EXT_MAX);
+
 	for_each_of_cpu_node(node) {
 		unsigned long this_hwcap = 0;
+		unsigned long this_isa = 0;
 
 		if (riscv_of_processor_hartid(node) < 0)
 			continue;
@@ -43,8 +89,20 @@ void riscv_fill_hwcap(void)
 			continue;
 		}
 
-		for (i = 0; i < strlen(isa); ++i)
+		i = 0;
+		isa_len = strlen(isa);
+#if defined(CONFIG_32BIT)
+		if (!strncmp(isa, "rv32", 4))
+			i += 4;
+#elif defined(CONFIG_64BIT)
+		if (!strncmp(isa, "rv64", 4))
+			i += 4;
+#endif
+		for (; i < isa_len; ++i) {
 			this_hwcap |= isa2hwcap[(unsigned char)(isa[i])];
+			if ('a' <= isa[i] && isa[i] <= 'z')
+				this_isa |= (1UL << (isa[i] - 'a'));
+		}
 
 		/*
 		 * All "okay" hart should have same isa. Set HWCAP based on
@@ -55,6 +113,11 @@ void riscv_fill_hwcap(void)
 			elf_hwcap &= this_hwcap;
 		else
 			elf_hwcap = this_hwcap;
+
+		if (riscv_isa[0])
+			riscv_isa[0] &= this_isa;
+		else
+			riscv_isa[0] = this_isa;
 	}
 
 	/* We don't support systems with F but without D, so mask those out
@@ -64,7 +127,17 @@ void riscv_fill_hwcap(void)
 		elf_hwcap &= ~COMPAT_HWCAP_ISA_F;
 	}
 
-	pr_info("elf_hwcap is 0x%lx\n", elf_hwcap);
+	memset(print_str, 0, sizeof(print_str));
+	for (i = 0, j = 0; i < BITS_PER_LONG; i++)
+		if (riscv_isa[0] & BIT_MASK(i))
+			print_str[j++] = (char)('a' + i);
+	pr_info("riscv: ISA extensions %s\n", print_str);
+
+	memset(print_str, 0, sizeof(print_str));
+	for (i = 0, j = 0; i < BITS_PER_LONG; i++)
+		if (elf_hwcap & BIT_MASK(i))
+			print_str[j++] = (char)('a' + i);
+	pr_info("riscv: ELF capabilities %s\n", print_str);
 
 #ifdef CONFIG_FPU
 	if (elf_hwcap & (COMPAT_HWCAP_ISA_F | COMPAT_HWCAP_ISA_D))
-- 
2.17.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
