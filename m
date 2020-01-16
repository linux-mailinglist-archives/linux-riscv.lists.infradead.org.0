Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1124F13DABC
	for <lists+linux-riscv@lfdr.de>; Thu, 16 Jan 2020 13:59:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-ID:Content-Type:Message-ID:Date:Subject:To:
	From:Reply-To:Cc:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=yEU8wRA+PxwhERIFe4eXcOl8VS0/h1v2eGTxtf8Eh1c=; b=ivjO822Et0z1lf08ax45rS7Wzh
	CtRcpWc2l12geQXD87IwVlTCp2b4tz3XXOjhPrn3T/gzxbiJ2nENNpWywIplTEOYEJ3S/UVTqDW8A
	Ku1eXNRlg2zKnul++hA2tVnyq6U4caXaJRQxxfoYuucWI5Tse+231LJkIzpfjwb8t1tWIyUaeZA4m
	exuccRQb6X11a5AEUALe9x70PJ6jfI/0LuTn0uIBKqgYTBI909WNNvysgdUSssFRvXx/1QE/0BSoY
	70jMqe1GQM/VKjdS5q+emaWl68O36juKXAS4rCbgGzTPhrz8bVLQaavJXSLOPL1s1LhAsefAoYaNz
	Y2P2ytOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is4kM-0003De-Uf; Thu, 16 Jan 2020 12:59:38 +0000
Received: from mail-eopbgr1390088.outbound.protection.outlook.com
 ([40.107.139.88] helo=IND01-BO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is4kF-00037v-D7
 for linux-riscv@lists.infradead.org; Thu, 16 Jan 2020 12:59:36 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kYbyZPWmysKpXmK7UAf4njrW/LncuUJlqHR0Z36RZwKvV81QUR+i7+r/1piPv/qiROUxPwlGXTythbFnGQhxfE62dEslh+2cmqVR3yPTuQn4Qd/23TcxufZq20R4qgU6oMvRWeRqpu0zyHHoucPdwgC/qiQJlPeucCYd8Yw7JeiPHMmqX556vhBMH7gVndTd6GvFWd6c62kciEf4FlUpOwq+IOuubdT/f5XrPRdiZfvjjGLzPJYsXQMIUaisPj7POvgIuZbBmFabpnO1IxI5oq1NihXWpTxbyi4aJakvGCvenWA2Z9Y0U3OeB3ZEmmDFBF1lhTktWSTmUOjKJEzg2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yEU8wRA+PxwhERIFe4eXcOl8VS0/h1v2eGTxtf8Eh1c=;
 b=f0MxIRc9cWaX9cwZkww0ZGtKcL8CuLjDLIVVJuQ1SNCADwPZmUXuy81FW6mMXy3y0Q86P7ddZaNaCWKqPQ2qQOBYpHslqYEa1VJKMbLOCnA9lWXWUfyPuqLkK7A2sMH8JA5qOOyO0qVs94AKs+QA/J1ArfPhjLl6bxruSGW3RF1Tt1mhjzrzuApLF2f/f3Npa3BwUGb5iz7cJ4k5+MCU11Vk+sQgLFRpeiHtiu97fs8wS6fXMkK6rkzxBF8IdbHSy/ZJrCzdSMyVEFHtEzE1vTF+uhS4XrAoOWucUkbxoJouuU/Owd4pCuh4d0p03tNGnX/jzyq+iyW99S9Wr7oSwg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=universaledigitaldata.com; dmarc=pass action=none
 header.from=universaledigitaldata.com; dkim=pass
 header.d=universaledigitaldata.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=NETORGFT5553547.onmicrosoft.com;
 s=selector1-NETORGFT5553547-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yEU8wRA+PxwhERIFe4eXcOl8VS0/h1v2eGTxtf8Eh1c=;
 b=XrK8wMNACC4MvJaYt53pIJC4AuZxP6aywPrd5X2/pHVvS+/g1j4mfT6RMRqmTMrb67yzTgmL6XOetKrW1jFYGN3g2wzD8jmtXyd8YQs8GfMocSF5s5Y5Cbj3kn0KbF06nExl5KBWa+HoKVfIfjxxsQ7EXWu8PpcIDVbqamSne4o=
Received: from BMXPR01MB3735.INDPRD01.PROD.OUTLOOK.COM (20.179.243.22) by
 BMXPR01MB3526.INDPRD01.PROD.OUTLOOK.COM (20.179.241.77) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2644.18; Thu, 16 Jan 2020 12:59:18 +0000
Received: from BMXPR01MB3735.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::a10c:740:420:ec6e]) by BMXPR01MB3735.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::a10c:740:420:ec6e%6]) with mapi id 15.20.2623.017; Thu, 16 Jan 2020
 12:59:18 +0000
Received: from DESKTOPMPN5UI4 (49.207.50.126) by
 MA1PR0101CA0046.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00:22::32) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2644.19 via Frontend
 Transport; Thu, 16 Jan 2020 12:59:17 +0000
From: Sarah Wilson <sarah.wilson@universaledigitaldata.com>
To: "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Subject: Audience Profile For Embedded World  2020
Thread-Topic: Audience Profile For Embedded World  2020
Thread-Index: AdXMbMIPna14Z8YDQ6CZEw+CMWhszQ==
Importance: high
X-Priority: 1
Date: Thu, 16 Jan 2020 12:59:18 +0000
Message-ID: <!&!AAAAAAAAAAAYAAAAAAAAAPTePss7+FFKu8Ddkhz/AhXCgAAAEAAAABgUlDO6DMhFqPoyTJ+10YABAAAAAA==@universaledigitaldata.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: MA1PR0101CA0046.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:22::32) To BMXPR01MB3735.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:b00:61::22)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=sarah.wilson@universaledigitaldata.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: Microsoft Outlook 15.0
x-originating-ip: [49.207.50.126]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: effd09f9-2cd9-4aae-a67a-08d79a83e59f
x-ms-traffictypediagnostic: BMXPR01MB3526:
x-microsoft-antispam-prvs: <BMXPR01MB35262107B869CCF47D44863390360@BMXPR01MB3526.INDPRD01.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:5236;
x-forefront-prvs: 02843AA9E0
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39840400004)(376002)(366004)(346002)(136003)(396003)(199004)(189003)(66946007)(66476007)(186003)(508600001)(44832011)(66556008)(66446008)(16526019)(36756003)(8936002)(81166006)(4744005)(5660300002)(8676002)(956004)(64756008)(86362001)(6916009)(55236004)(26005)(71200400001)(6486002)(2616005)(316002)(1006002)(52116002)(2906002)(6496006)(81156014)(130950200001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BMXPR01MB3526;
 H:BMXPR01MB3735.INDPRD01.PROD.OUTLOOK.COM; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: universaledigitaldata.com does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 5oD4X17ujFU6YMdBY0ojkrwuTvxrkPwsqIjJULhM4We9FVL52IXx2Y5GXijnXqb0P09mhNdNnCtVKpvmt5/c/i0LOZnksed6WLiYU8RPt2x4Hdqlk1J+qC2P0fnEHX6pTfZwrRzjBqDHpk3PMEBBds4XEBnMz3W5buIJeRsUOczjz+AlnUzNwfYlY6ZaknM7liW3U4CeJbhbCTgOJjiQXkbJtW4Ycvq2NQAhFHeW2eC2VFYuyadM3n47DAIYsq0J5mBanhWrOLiy4PpHIabZH0U4WbaG9Cr0wFYJEr8LbnQgzkQ8+GP/QL1ZH6pvytw3wm5s/T1rH3mafX6lx0fyLN+v3BnKDuGvwwffbNgM6+untqosHHzjxouQE4R3W6fqTvzXZ+buhJbBGP+Hgq0kvYGue35mt+KB5HG8dewbU6ZTq8haWgVhZaqamnjvT3pyOaZvtwHuK4xUMRMo/xBgTyu+PR4uiDYynSFrDRqocHMxvv8Qr4wBILcm3prjIwGt
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="us-ascii"
Content-ID: <C13A62AEDB4EDE4FA0B2DB1231EF675D@INDPRD01.PROD.OUTLOOK.COM>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: universaledigitaldata.com
X-MS-Exchange-CrossTenant-Network-Message-Id: effd09f9-2cd9-4aae-a67a-08d79a83e59f
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jan 2020 12:59:18.2071 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 136679fb-fa93-4ffb-ae24-fda892c47083
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Eon/NltYvakVcARazJ4Y6L1UQIg8RPOB9noUmoaD/zc4ggDXSzS77YkMrSWpu0f8VNR4cKXmx29qyqGmNcKckDZSTA368WfDiPrABiMoONWEEG5viUyfkCT7t6ulOD1P
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BMXPR01MB3526
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_045931_508535_B256103A 
X-CRM114-Status: UNSURE (   1.13  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.139.88 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi,

I'm wondering if you would be interested in purchasing Embedded World 2020
Attendees List.

Target Audience: Electronic Systems, Embedded Technology, Embedded Systems,
E-mobility and Distributed Intelligence

Venue:  Nuremberg, Germany

Please let me know your thoughts, So that I can send you the Number of
Contacts available and the Cost for it.

Best Regards,
Sarah Wilson
B2B Tradeshow Specialist

If you're not interested kindly reply with the subject line "Opt-Out".


