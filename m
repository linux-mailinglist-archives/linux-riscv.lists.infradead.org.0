Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4187A1C15
	for <lists+linux-riscv@lfdr.de>; Thu, 29 Aug 2019 15:57:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SOveKgTeGkN0JzI6Cys0CewDGJ8dSSJ/eslDpwymxfU=; b=fsSkpQMfIRcy87
	jB8tlfYUYeeXYp5ss2x1BF9y1sAcHaRE9P1vU5b68bUtLb2sV+vG4jF0ZeXQO6fA8bSE3NUUVEXyA
	sO6/cYZTwiztMHv31pdqFyUaw1O2C/Vu+qMCE0mfZWcy1pIwbTib2KVbkJqhF3LBa5nRfYvw/sfrh
	0vkopiYZwD11brQBItY9+NfmvqxZR3aNFmz56a5N9OHpXxn2lhFCH8TtQ0jTHgA5MGlMP+iUq3kzV
	jeu6Bm1nXO7VrMlk5UITQ/YB/edremaFLi3j1q6txeCgXTEh6gdwIOHSn2QXIp8VCs+OgHVTix41/
	D57snX34OmgjbdOdz5hA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3Ktj-00028l-Ev; Thu, 29 Aug 2019 13:55:35 +0000
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3Ktf-00027S-5a
 for linux-riscv@lists.infradead.org; Thu, 29 Aug 2019 13:55:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1567086931; x=1598622931;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=EshFOqokCggYq3LfKmIyKpmnh0gvjxaaOJmqnGYmykE=;
 b=lanUdjgnlI9lfVigrIDESKIbGopnyVN7x80+6rVa5bnqTyyCb8xEz091
 hvwTwFVukzQLWmVsolU/+CAhl3Z1F3V7amCu7nL06DaubfxIXfu37lgoT
 a84YmXsRJ/i/EoiTSrL5eomd0Miv+KWr2NPMUVLqq8AAzuz9ixgF8+yCV
 yQeZrEFaJBk6ZGbr4BAcYLI1chuldjKkvejX+a0jrd9gZXRL52CpHuODe
 9u8ZtCemnF2i2w365uNA4n4+lI/km23Uws8NhVKNgbTXjNwwUFzvRsGaD
 HL4M/YSPsIgTtZD7TAHJhnxr1gKr0jVNsI6lGUK2dChXHjuWk/zzw8e81 g==;
IronPort-SDR: 5hLJI0Fuvyx2cwFGnN3r8dqoq2o3EI9Z9n0V6PkbtTKaqnqk0i+570z0nX6MdR9yJ7TkNVVBRb
 1REqJIFx4IVaLjPQs5lqZyenrRrcsAylv/cAmfR1ZG0Q06Q8yHMvyVeiiQZIG6q01QpyRnwmmK
 GC99w3yonWpCDtVtDVl3nqydbm/ITS6fciwxJeVkFDqjjUlol7d3c1I9ijH4AQr07dZjvnK0v0
 VNche+KZH0RiG7cCd6mt6ak9PjI7pLzVkJfv/AOPEz4/o/DJ0J/eZzCDHcqT42daFOqbcFBjYE
 9RU=
X-IronPort-AV: E=Sophos;i="5.64,443,1559491200"; d="scan'208";a="116951598"
Received: from mail-by2nam05lp2055.outbound.protection.outlook.com (HELO
 NAM05-BY2-obe.outbound.protection.outlook.com) ([104.47.50.55])
 by ob1.hgst.iphmx.com with ESMTP; 29 Aug 2019 21:55:28 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=c3NF3tDIaqu6RpxfYtmYkWU2WD+twfsSWWivGvQTjIGWYixTVPAHVs/Co4wMTpuCqIso/R9QUsfQ3s/zsE5zmiVA7OMZ4JYu1SvHz0PqtR+c6M/4VtOFexvf+8+Eig/H1YspMnt9Q8gF/1QpMgwfiJnd6oBLdTR2df7su8a8EZZXaf7hK02jfAThY5QHrtsDgpMhjxInYNLn8aRT+8iehzsjzn2Rog5SXGIXLopE7Afnew182qh4S3yaS3DlXbo4gor+Kz79itACb3WZqawnGGwMNGBqWH8g3Mc5iRxoDZdVdvrXDMm5KS0hm+w+mO2hhlPmTYqv7qfoBJZm4/zZCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1oOX6d/tA3JbHLe7rIdXy6AU2iW0Z2EqPM16Sk678S0=;
 b=DRedYPZ86rtAgCTkdAVySFUU5v/whygVGZTtcrni36tEV4A50O+Mb63frRgE7xbUvXVuRKBbLtPmr3EyvI8zR/ueDZ1y35OeA8MDbk52eoFunb1LhbBn3gmD1TMAlTIUruVsbCVtzt2wuc7wKqCLvQxgrTBCBMHdQUItXaC0uNExufj69auAYkuZ0W7b4FBP9bn1v39PI7Qkv+UpFpmb7o0Ye5py8r/6hysqxO9kY3ym50OWnu3AZ9Mp+S7Fu2utpfFm0zVuPE4BDYv5ItjlDsPWcBVMeXf5ryc9y5AvdXwhO63mWAe/jAqh7DupR/NKCTedyckwJ03JDLnBVjga9Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1oOX6d/tA3JbHLe7rIdXy6AU2iW0Z2EqPM16Sk678S0=;
 b=sgBuDtb7Vcubfo+U/Jq6xS8QqCvskgEYnDGVlyY2d7n+opsmYjMhrsq2ahJcw6cz7AmnjFcm4J/JD/35yNfBLPYLdwOI+qt9XhjCNyFjMaGWdEeKyq/CwQIzp4YygN2SfR9XZH34JyiAvQWO/wpTrG3pfzceyKGgOOSnNRKOHVM=
Received: from MN2PR04MB6061.namprd04.prod.outlook.com (20.178.246.15) by
 MN2PR04MB5616.namprd04.prod.outlook.com (20.179.22.29) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2199.21; Thu, 29 Aug 2019 13:55:27 +0000
Received: from MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::e1a5:8de2:c3b1:3fb0]) by MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::e1a5:8de2:c3b1:3fb0%7]) with mapi id 15.20.2220.013; Thu, 29 Aug 2019
 13:55:27 +0000
From: Anup Patel <Anup.Patel@wdc.com>
To: Palmer Dabbelt <palmer@sifive.com>, Paul Walmsley
 <paul.walmsley@sifive.com>, Paolo Bonzini <pbonzini@redhat.com>, Radim K
 <rkrcmar@redhat.com>
Subject: [PATCH v6 02/21] RISC-V: Add bitmap reprensenting ISA features common
 across CPUs
Thread-Topic: [PATCH v6 02/21] RISC-V: Add bitmap reprensenting ISA features
 common across CPUs
Thread-Index: AQHVXnFpi3OsQcuCw0G7yeBPkiJ2qA==
Date: Thu, 29 Aug 2019 13:55:26 +0000
Message-ID: <20190829135427.47808-3-anup.patel@wdc.com>
References: <20190829135427.47808-1-anup.patel@wdc.com>
In-Reply-To: <20190829135427.47808-1-anup.patel@wdc.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: MAXPR0101CA0072.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:e::34) To MN2PR04MB6061.namprd04.prod.outlook.com
 (2603:10b6:208:d8::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Anup.Patel@wdc.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-originating-ip: [49.207.51.114]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: fc55b3e1-936f-4fd3-512c-08d72c888b8c
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(7168020)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:MN2PR04MB5616; 
x-ms-traffictypediagnostic: MN2PR04MB5616:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR04MB561662350103CF82022E17378DA20@MN2PR04MB5616.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:274;
x-forefront-prvs: 0144B30E41
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(39860400002)(136003)(366004)(376002)(346002)(396003)(189003)(199004)(7416002)(52116002)(81166006)(316002)(6506007)(386003)(25786009)(7736002)(81156014)(305945005)(2906002)(36756003)(71190400001)(14454004)(99286004)(1076003)(256004)(4326008)(66946007)(76176011)(66446008)(64756008)(66556008)(66476007)(102836004)(6116002)(50226002)(55236004)(476003)(6512007)(3846002)(71200400001)(5660300002)(26005)(186003)(44832011)(86362001)(66066001)(6436002)(446003)(8936002)(6486002)(110136005)(54906003)(2616005)(486006)(53936002)(11346002)(478600001)(8676002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB5616;
 H:MN2PR04MB6061.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: piSauIvL/TRv1FaYu2ximbXnkwRyRtMpvJ0Q9rH/wBKhblm+2c4dhBM3KA58zRmJ5lCa6r9d/EXXKEAwdiAwebK/s9Zui46Txabx2VU956/VSfhDGb1IcTwebcQq6c4Mw3HV/2txyVV+HMohT6cC6Ia64XfjH7xBH9YO7bu2OPW9Yg/OOJFqM8d5VHXKttYuNjNRSpdK/P2b58vuW99imtSau+jaS+kBS3c6PpBXMI6wc8mfgV0dcIm7sJoBkwwVPLcAOGYsPuzAusd1Q+QIWNPfmkL+oL168SOXuF4Wk3PqgtfLN12mnJVK/6FhWUTmqvCYUWm4a1lTGvboa4Ocv1tOSMtNKgts4ty/Qsm+dadmnYFlwJZnn+p3NJyY4+1ApiiuqDXNawGVuyfzW8cGlGwlkFrRjgkm5l/VrH4ibdQ=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fc55b3e1-936f-4fd3-512c-08d72c888b8c
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Aug 2019 13:55:26.8435 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: E3bAiPFsBC9TwsBlcB0GHtPALSL92s0HGa+UP/wvoaHNGXWZxo61AKAhpcr0+rN5CyV9HMJHxbtRtYpOThVD1g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB5616
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_065531_314171_89210F19 
X-CRM114-Status: GOOD (  16.91  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.42 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Alistair Francis <Alistair.Francis@wdc.com>,
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
