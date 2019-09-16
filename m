Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B37AB3AE5
	for <lists+linux-riscv@lfdr.de>; Mon, 16 Sep 2019 15:03:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=v5W0jQCXpWM3NyErP4XHBep2vzgjTpJS99Wf+SqshME=; b=UR0xOmkGDO6sib
	fHJyaR67+7Ky10wOQDnqQxs1QkEtKY0wk5JXiKpGJgC1IEEBuGgLa5l8qqoOqtnmm6COJpwfddHEO
	E9ZEN1eTFvnFbs0jfGclHkZCJLT/eZPKQXFasl1Rtiytmb4f8po7T+tSRXMo7qI6RmTcP/YNSEgbz
	hPI1glgDAwDXjCDvvsdUP03kriH+RW3gQvLut+9r0UitoMzY8cfFSIWNva4Pv/Q3O8jBo2dDdiKcF
	Fw12F15C2IU1AyU2gB3Xi78v40JxWkMHHKZI7r+QC0bRihSjsw1KNHVgtZpy5X32u9EZPaHsi+nkK
	5YnO0FX0H9nDHtsOn1sg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9qew-0000ks-DQ; Mon, 16 Sep 2019 13:03:14 +0000
Received: from m4a0041g.houston.softwaregrp.com ([15.124.2.87])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9qes-0000kU-9e
 for linux-riscv@lists.infradead.org; Mon, 16 Sep 2019 13:03:12 +0000
Received: FROM m4a0041g.houston.softwaregrp.com (15.120.17.146) BY
 m4a0041g.houston.softwaregrp.com WITH ESMTP; 
 Mon, 16 Sep 2019 13:02:15 +0000
Received: from M9W0067.microfocus.com (2002:f79:be::f79:be) by
 M4W0334.microfocus.com (2002:f78:1192::f78:1192) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1591.10; Mon, 16 Sep 2019 13:01:42 +0000
Received: from NAM02-CY1-obe.outbound.protection.outlook.com (15.124.72.14) by
 M9W0067.microfocus.com (15.121.0.190) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1591.10 via Frontend Transport; Mon, 16 Sep 2019 13:01:41 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kyUHdkt/DtuaRfLxo1V2M76b03h/bdYtxDKhO7pzj/TEBQiQ0aG4qktxQfnCHhWDdFOYssVx+l3C5eJwgkokw0FsmrsN8T48kEttpzoN0Yo5fohL0CwN5IL7xxDnchUjQ7VU6RpzN/UFB/q0YUpcVSKtigboKGJJAqahGFANMpV3Mg8RK8CvXuxVUuIrniIHzpMLIeOHZ7VV8EZD2aXs8oqtJEVNCE9eWtnm1muB1rAoU3GT2l9UC6UlbV+i6exrO2gCGgn5SSqQiXLMGMH10RKkSLOQNquNDdqqz4Ejac9WPQgQsX3KyOa+m5MrhDirLVTYE4SeF69EUH00ciBMCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZJzbtO+8DbDtDULUkK/z78sY8LsHdZJV0hdUsRqhYMw=;
 b=J0FDN5qjqJmgBPlKCBSpK7ZTAT1Jvm3qDG90mKpEHtyGN1tuSz7gtyxHbRlSF7P6ZfkvFt+fG6GQqmPfSs2ZCGUr1ChDg3CR5R05ZSlXh1uTp40pSdzYizYbweyYu6eb3mygJZBcC9alStL3tLObiuTZQB1KD0WqJc13Bn9AZ5GDHclI47PMVn7i8YlnhE7UFnq/XgIEzQ1+k/0Oiiv+bw7ASQT/DT30sZJ1leLOxWhHt0yTK/ihVRZW6rHsMD2nGxLzQvAff+zQns0YnxVoVWI2/zhdqOsuUeeh9my6Tmz3mUPd0hF2pLDMDVeC2gxm95oY2z4yxMlo9H9AaSkWmQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=suse.com; dmarc=pass action=none header.from=suse.com;
 dkim=pass header.d=suse.com; arc=none
Received: from BY5PR18MB3283.namprd18.prod.outlook.com (10.255.139.203) by
 BY5PR18MB3348.namprd18.prod.outlook.com (10.255.136.15) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2263.15; Mon, 16 Sep 2019 13:01:40 +0000
Received: from BY5PR18MB3283.namprd18.prod.outlook.com
 ([fe80::a46b:1f66:8378:b25e]) by BY5PR18MB3283.namprd18.prod.outlook.com
 ([fe80::a46b:1f66:8378:b25e%3]) with mapi id 15.20.2241.022; Mon, 16 Sep 2019
 13:01:40 +0000
From: Chester Lin <clin@suse.com>
To: "corbet@lwn.net" <corbet@lwn.net>, "paul.walmsley@sifive.com"
 <paul.walmsley@sifive.com>, "palmer@sifive.com" <palmer@sifive.com>,
 "aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>, "atish.patra@wdc.com"
 <atish.patra@wdc.com>
Subject: [PATCH] riscv-docs: correct the sequence of the magic number 2 since
 it's little endian
Thread-Topic: [PATCH] riscv-docs: correct the sequence of the magic number 2
 since it's little endian
Thread-Index: AQHVbI7hrgDiRPdaXUuZ8DxMADjVng==
Date: Mon, 16 Sep 2019 13:01:40 +0000
Message-ID: <20190916130108.31404-1-clin@suse.com>
Accept-Language: zh-TW, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: DB6PR0802CA0036.eurprd08.prod.outlook.com
 (2603:10a6:4:a3::22) To BY5PR18MB3283.namprd18.prod.outlook.com
 (2603:10b6:a03:196::11)
authentication-results: spf=none (sender IP is ) smtp.mailfrom=clin@suse.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.22.0
x-originating-ip: [213.151.95.130]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0e1d073a-d523-4e81-f07c-08d73aa603e8
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600167)(711020)(4605104)(1401327)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:BY5PR18MB3348; 
x-ms-traffictypediagnostic: BY5PR18MB3348:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BY5PR18MB33484D948733C72A648C3051AD8C0@BY5PR18MB3348.namprd18.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4714;
x-forefront-prvs: 0162ACCC24
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(39860400002)(376002)(136003)(346002)(366004)(396003)(199004)(189003)(71190400001)(6486002)(4326008)(7736002)(53936002)(2201001)(86362001)(71200400001)(102836004)(6506007)(386003)(26005)(5660300002)(50226002)(14444005)(2501003)(256004)(316002)(4744005)(110136005)(1076003)(3846002)(54906003)(6436002)(6512007)(478600001)(6116002)(52116002)(476003)(36756003)(186003)(107886003)(8936002)(8676002)(66066001)(305945005)(64756008)(25786009)(99286004)(66476007)(14454004)(66446008)(66946007)(2616005)(81166006)(81156014)(66556008)(2171002)(2906002)(486006);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BY5PR18MB3348;
 H:BY5PR18MB3283.namprd18.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: suse.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: U+io3rnCquLqzyelA6ayNhDqh7OwK3se8+JLr9IMe+2J/AghkDzdC2fcEQ6i0zpRhqaC7nk2Z0FxKLs7BmTUuNuBjCC6xILgk/u2i8PyCMCJ5a5YJspqVkgexbPLHSg5fSdDh6j06XWsqngV1zVmvMM0+vrvsF1sbo7rR8vKiGRgf+sKWY5vU0QmteGgaS8yPvyV7bA7k7g4aA9Ur6ztMLDufUsr1MtNWtdWMdOx2H4ZfkJTK0pJiGtUERnl9IbZKeKP+rKve2qvVdWBldkuELyGaltdvvfR3YVMHLZctxgbu0TdkIfGaZMwSj8NmkKXdb5tzI5NKj6A8Qu7GRrubyoXeQMSucBvGhvz6WyjHhNccroehG/JjyKxqSATtX3Xf/hj/i1n2A2BTqfZe54Xh3PDilT+RCQ8VNgPqM/F/DA=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 0e1d073a-d523-4e81-f07c-08d73aa603e8
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Sep 2019 13:01:40.5261 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 856b813c-16e5-49a5-85ec-6f081e13b527
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xX3KOoHnl3oNykF7JiQokIJGOXZDJfesAz8wP3NNcREHdeOoJA1ZGXOq3ShAKO6n
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR18MB3348
X-OriginatorOrg: suse.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_060310_439366_0DAD1ADA 
X-CRM114-Status: UNSURE (   7.94  )
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
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Correct the sequence of the magic number 2 since it's little endian.

Signed-off-by: Chester Lin <clin@suse.com>
---
 Documentation/riscv/boot-image-header.txt | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/riscv/boot-image-header.txt b/Documentation/riscv/boot-image-header.txt
index 14b1492f689b..f388805aa5c3 100644
--- a/Documentation/riscv/boot-image-header.txt
+++ b/Documentation/riscv/boot-image-header.txt
@@ -18,7 +18,7 @@ The following 64-byte header is present in decompressed Linux kernel image.
 	u32 res1  = 0;		  /* Reserved */
 	u64 res2  = 0;    	  /* Reserved */
 	u64 magic = 0x5643534952; /* Magic number, little endian, "RISCV" */
-	u32 magic2 = 0x56534905;  /* Magic number 2, little endian, "RSC\x05" */
+	u32 magic2 = 0x05435352;  /* Magic number 2, little endian, "RSC\x05" */
 	u32 res4;		  /* Reserved for PE COFF offset */
 
 This header format is compliant with PE/COFF header and largely inspired from
-- 
2.22.0


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
