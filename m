Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	by mail.lfdr.de (Postfix) with ESMTPS id ABFB4A1C17
	for <lists+linux-riscv@lfdr.de>; Thu, 29 Aug 2019 15:58:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IVq9Y4MkosVtyrL1Am5m24g3UcmB/LTiqAFXi19Ggpo=; b=pMqlrngl91dF/+
	q5KfH/60/pHCt2wDFn4tKRUeXbNI4ep0FBN3t3GQYrKnmW30rQKgrFVujSRdz4r+eApm6tnKziLjK
	JRhj7F5Ev6rLz24aqjdtmlcWtsCMx0dPzSDdN6d9fMMR63gJlborZQhEiMv7iLKrH8/YHrNDRdWxr
	gV3aLlG2sxpCNvpHs9OCg6zOC04J0CxtzR0VzrXiR7vFrO0sSP5HoWP32TmEr06MjjzQI7hWCq4Qw
	20kI5Lm2NEYmZUsqg9x0HIclAV/i2QFiUXx6Ux0Oi5nip0tR10qbMY7vXjB2tHF8RSjT62WKczkQ/
	J8rGX6WNVGB65ET9fZnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3Ktr-0002DG-32; Thu, 29 Aug 2019 13:55:43 +0000
Received: from esa3.hgst.iphmx.com ([216.71.153.141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3Ktm-0002BT-Ni
 for linux-riscv@lists.infradead.org; Thu, 29 Aug 2019 13:55:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1567086939; x=1598622939;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=X9hkofyoP2OZily7lf39BRn9zHH+YrLfiRwafePdYaE=;
 b=Iz4B0B43ukVluvue+ZvDYo1KQbN6F+mX5SgyMuVg94PJ6/QTLv2kTKjq
 YNbXl5HPvV6f0xGPwVXwiMIfRQQzWfEFygltSQMLkY893GIiuFFshGjHH
 VOI//z/romkOT2a8Fqgca5OAHzZQVYK9DUq2EnCrdiNwXUtLBsuFmsW9d
 a7XUknZ1QiMVI21FkfP1GFn6plFaEGxbvXtEztwo752cHbtba5ze54pWd
 Qw1t9jATYoS9ASMzZFwwNN3mnwkz0EO3s+4l1b3kCAeCrgnySRXXlvz7x
 mP2Ujzw9hskhiAq/HOCyIQ+H2bYBOCj2U/QAjryJQ9HLkye2R1jNCOWfR g==;
IronPort-SDR: LR90dryqJhU4wQXZ0U9MAh3ad5zCYI8iGEuXuOYYjAIY5lK/KFw6eP/iuRHAOGTLNOKVW4nSjb
 tELuWKuck1a9uK9jdJ/UZAyzkMhPks3BKqBJiSDJH0HuxcwbE0XsOOQd0fjZq1P+wX3KCmKgvm
 xMzT1PNs3WAN/T2VKuZ5I3lP8I1Fx30x4Jd9ys+rjaf5JqDKRKhupPj4jO9qgIzfwrcGbLBPth
 Glv+GzI5tQ2TtyU37qoo3epD7GUBJYKGV5OOnHcsmqq8ZdphVgCtdbQSKe+7895/21Orw9lw4Z
 Y88=
X-IronPort-AV: E=Sophos;i="5.64,443,1559491200"; d="scan'208";a="121525657"
Received: from mail-by2nam05lp2053.outbound.protection.outlook.com (HELO
 NAM05-BY2-obe.outbound.protection.outlook.com) ([104.47.50.53])
 by ob1.hgst.iphmx.com with ESMTP; 29 Aug 2019 21:55:35 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AjEU2FMgZbQLeeSvML1VzEOpBxHD6e2QirwKbYEgjh3NPFxxe7aLYYluMskhEdSkbnVhm7kZqXeRHLPGYXZs1zGxkmu1evYYDh9uSUikfeUYPv45PSHf3sVZ3YGU7A/zjkAhk8h53dYIKGQascAz2f7hFwKj+7x8Qfp1C38bfM005ZA0YcRhmH87m8gLnYRbecWFpXakpRp7IjTNngOdFb+pEToOa5Snjc44o+gEWCLdxSGs7PwW8nOiOuzoC4CKVwihPOmRmNaGEHqccqGm3DZbYIXBKt0J6r+tALvkpSJ99iosUQKGby+qI42+V4lf8EnJx6CCXSp/dmyrP9xdWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BmFd30wxWYwm0fcXiaDqdfEaAcsVFZewx7xCBZ1Std4=;
 b=d7qKQTeeJSUJ8nH8UUmmZXgQpCgOfsGP+qLvv9IptinsNOZIFPIpmWIlbdA+TVbvRTdod2c/M+SIVZvGyEW6oj0hcXKuUfp1vVGNy3H95dxl5j08yMpEadhx+CyiiF1Mnpw2rv/F9x9faf7460sXpMt+liYrFus541E8+RZsxdx5SNXBu08JxXF9N5ab3aZOQLJZR6iNMRiCH3Eeyqu0u5stOJ5QLav5Fr2/jPJi71kZsdjAuIHGFl/svOTt4UKS32mT8QeaYrPcWIqbJhcBStwywC0YZefLqoEN2m4BaMQmpC9JcGsLYMIT9V7Ce84FjYBdSVFDJQb5/2NEo9Yfog==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BmFd30wxWYwm0fcXiaDqdfEaAcsVFZewx7xCBZ1Std4=;
 b=LR2wwQT7ImYWosrSyVR507yeyRkJONW6G4IIqerILOyTiwj5JHK7pwjMCGs6qIetc84mx/wU0xS1xjBQwE5eO56VP71pNvICtoImJpEST78W0/4OKhr9RhmJwGsJ8YVF8OHZd2F+pJGQ8PgjIpXm7oaRIOU3fatQzL/tlyenVSE=
Received: from MN2PR04MB6061.namprd04.prod.outlook.com (20.178.246.15) by
 MN2PR04MB5616.namprd04.prod.outlook.com (20.179.22.29) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2199.21; Thu, 29 Aug 2019 13:55:33 +0000
Received: from MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::e1a5:8de2:c3b1:3fb0]) by MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::e1a5:8de2:c3b1:3fb0%7]) with mapi id 15.20.2220.013; Thu, 29 Aug 2019
 13:55:33 +0000
From: Anup Patel <Anup.Patel@wdc.com>
To: Palmer Dabbelt <palmer@sifive.com>, Paul Walmsley
 <paul.walmsley@sifive.com>, Paolo Bonzini <pbonzini@redhat.com>, Radim K
 <rkrcmar@redhat.com>
Subject: [PATCH v6 03/21] RISC-V: Export few kernel symbols
Thread-Topic: [PATCH v6 03/21] RISC-V: Export few kernel symbols
Thread-Index: AQHVXnFtNd+3UNf7t0eglNd78zF+iA==
Date: Thu, 29 Aug 2019 13:55:33 +0000
Message-ID: <20190829135427.47808-4-anup.patel@wdc.com>
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
x-ms-office365-filtering-correlation-id: f55daba2-8e03-4d12-363e-08d72c888f83
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(7168020)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:MN2PR04MB5616; 
x-ms-traffictypediagnostic: MN2PR04MB5616:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR04MB56166C36479F31225003E25A8DA20@MN2PR04MB5616.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:510;
x-forefront-prvs: 0144B30E41
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(39860400002)(136003)(366004)(376002)(346002)(396003)(189003)(199004)(7416002)(52116002)(81166006)(316002)(6506007)(386003)(25786009)(7736002)(81156014)(305945005)(2906002)(36756003)(4744005)(71190400001)(14454004)(99286004)(1076003)(256004)(14444005)(4326008)(66946007)(76176011)(66446008)(64756008)(66556008)(66476007)(102836004)(6116002)(50226002)(55236004)(476003)(6512007)(3846002)(71200400001)(5660300002)(26005)(186003)(44832011)(86362001)(66066001)(6436002)(446003)(8936002)(6486002)(110136005)(54906003)(2616005)(486006)(53936002)(11346002)(478600001)(8676002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB5616;
 H:MN2PR04MB6061.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: TiWg0ATs9Jl5mjrMkNLICEWoJKBohey+GiJ03hWIaT4vHxUZjueN8oxiyUrpb1XiMWKFY+00Diuo1HlSgruC2mBHJh5k4NeCAIcp5OnAmPpz7exFk/ulEw8WpXCqc4LN8eUISD6FFXt2DnoW+NPUyKAAQO1sGOjD34npCQULggqK3qbCKJ68FpebmS8VsgF7x7IMRcgY+hFjQR01j1MeaZ3gBKOfaRN4MibXjkKqx9MIfvPveoT1RD6ykvoEO7qVVGRGA26tG92l2MnfHtryenWCXxei77QMmCAIuNcT9y77LN31JzeJ2uh68LyaV7OFLOsQqxXtDrAiXCKBkZkemkKVwe4c6PLBmbwHzlSLOZ81VorXib6lDVzWbMva9XuSas7Mkl72Ba86TvcxBARrdSGE6/h6WkA2zi+ZY6/CiFg=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f55daba2-8e03-4d12-363e-08d72c888f83
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Aug 2019 13:55:33.5117 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2nWefPNw5fSF+8xN1hThLQiHiuS4BWRz1Y6aRcIHNh5pWeS3gwU6zVhI5qck0qKmO3FPq/D/xxibtYVQ3zgiZw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB5616
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_065538_906072_EB012AB3 
X-CRM114-Status: GOOD (  12.16  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.141 listed in list.dnswl.org]
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

From: Atish Patra <atish.patra@wdc.com>

Export few symbols used by kvm module. Without this, kvm cannot
be compiled as a module.

Signed-off-by: Atish Patra <atish.patra@wdc.com>
Signed-off-by: Anup Patel <anup.patel@wdc.com>
Acked-by: Paolo Bonzini <pbonzini@redhat.com>
Reviewed-by: Paolo Bonzini <pbonzini@redhat.com>
Reviewed-by: Alexander Graf <graf@amazon.com>
---
 arch/riscv/kernel/smp.c  | 2 +-
 arch/riscv/kernel/time.c | 1 +
 2 files changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/riscv/kernel/smp.c b/arch/riscv/kernel/smp.c
index 5a9834503a2f..402979f575de 100644
--- a/arch/riscv/kernel/smp.c
+++ b/arch/riscv/kernel/smp.c
@@ -193,4 +193,4 @@ void smp_send_reschedule(int cpu)
 {
 	send_ipi_message(cpumask_of(cpu), IPI_RESCHEDULE);
 }
-
+EXPORT_SYMBOL_GPL(smp_send_reschedule);
diff --git a/arch/riscv/kernel/time.c b/arch/riscv/kernel/time.c
index 541a2b885814..9dd1f2e64db1 100644
--- a/arch/riscv/kernel/time.c
+++ b/arch/riscv/kernel/time.c
@@ -9,6 +9,7 @@
 #include <asm/sbi.h>
 
 unsigned long riscv_timebase;
+EXPORT_SYMBOL_GPL(riscv_timebase);
 
 void __init time_init(void)
 {
-- 
2.17.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
