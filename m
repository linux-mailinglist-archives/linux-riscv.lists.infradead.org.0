Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E70501C6683
	for <lists+linux-riscv@lfdr.de>; Wed,  6 May 2020 05:56:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=TMr+xfMmDD5mwfkSVorR5igAduiTlas6PsSNzWKtcTM=; b=sAlczeRAEszgLdBpe5qZvR3kn
	rJXQrMYh7LLa/dY7g4HY122gfD0hVrIg2Hqp5zPFSJufjX2I/sBl3d1+q+l4OSWIPVt/5eGZrIGL9
	IPufK/P8hUNvMn62JjSpm5PeLmpYApAqPtAGJzMjNrXGjTipBidd7xZsGiyj0DiNruF73BDCFvW0w
	q7sCKuUu+c3FRA8ScVNS8YGLjTEaYipBmikGSraPnqqpc8H3sumSmlvJ6ZhYMRmTTAFb0roySwwWa
	3vqsM0ubAxJF+59ekd4rpq2H1GSkHx6OtJ4La3nAtWOBXBSJXId25p4P1sTDi4vkBDBqfiT+gXs2T
	M2HiMWBSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWBAJ-0007RS-3e; Wed, 06 May 2020 03:56:11 +0000
Received: from mail-co1nam11on2044.outbound.protection.outlook.com
 ([40.107.220.44] helo=NAM11-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWBAE-0007Qx-H2; Wed, 06 May 2020 03:56:08 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EePHOYSG+GJVKMPtuhF7wefSdG/qxWFSnpD6vZEx+X1rmUdRRSX1d+J2KartYSYwK741VUDR45DJDUIX/x7QMZsMLyDGU5dwooee93C0NH7S8GeK4T5L8U7LL8F9gzjKMMVCfRGh33b1/wocpzaNMDpdXGLJPL5SmVxApqHxMX0rXRtgJrDE/079OktsZZKPJdAQRgRo8Wl/B28Py5S+438hmJvAzq/PaywZ1It1pAD1cIGrlbTJA3hBPxHs0O/CeQYav28LvYTtDhGGxdgghSGtEOND98zIHx1PZI30VLDrrzBg3VacHyg10uI7RBeNNxjko0qyOU3ILBQWj/jt9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TMr+xfMmDD5mwfkSVorR5igAduiTlas6PsSNzWKtcTM=;
 b=QnrcnpdLEDr8uOdc1fQusgoZu7qFvjSfN0ylu1KgUDWy8dDEIijqbvskxDNAG+4/1oP3f0m9ZByXp/PUaTh6/hVMfRHyeYRGcFlM87KAZX+yZbWu/lNebqb7ytkXhBdIce3bUZo4rQg5GAUNbPDXiars+NTWmpuT8ec5b0ekZe0KyzsY4x07jKVmS3Ig50HfbJya+g3chzkud9ow4XxkliU5tuAEfl55D42VdaM0NCYAP1lGqkp1hh604XTFM1bYeYDDRxaLLN29yuv6XfwPzaIrTKZVk6kq9YO6OLrEvJpjPEs5rhfzdN37K4bkwI2c8W6+eXswDYzjrCRh+UkozQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=sifive.com; dmarc=pass action=none header.from=sifive.com;
 dkim=pass header.d=sifive.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TMr+xfMmDD5mwfkSVorR5igAduiTlas6PsSNzWKtcTM=;
 b=B5Z+Q2XyOFAAK6XFtWvt67Ytyifuce2SJ0GWwDMJD9yQaJWJxeLEyvnpiPEsF8NfdAAzD+AiVYCsuEXnBNjdL3WW8tsoLIphgPTAhl9RY5xFw79C/rcoXaf80zcsChswRsmUE6hCFgYvr06+vViaw+kpIlu/QrX7yyD5SqjcWTE=
Received: from BYAPR13MB2614.namprd13.prod.outlook.com (2603:10b6:a03:b4::12)
 by BYAPR13MB2821.namprd13.prod.outlook.com (2603:10b6:a03:f5::29)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2979.23; Wed, 6 May
 2020 03:56:04 +0000
Received: from BYAPR13MB2614.namprd13.prod.outlook.com
 ([fe80::c0fc:30a3:5e5f:c2b6]) by BYAPR13MB2614.namprd13.prod.outlook.com
 ([fe80::c0fc:30a3:5e5f:c2b6%7]) with mapi id 15.20.2979.025; Wed, 6 May 2020
 03:56:04 +0000
From: Sagar Kadam <sagar.kadam@sifive.com>
To: Palmer Dabbelt <palmer@dabbelt.com>
Subject: RE: [PATCH 1/2] riscv: defconfig: enable spi nor on Hifive Unleashed
 A00 board.
Thread-Topic: [PATCH 1/2] riscv: defconfig: enable spi nor on Hifive Unleashed
 A00 board.
Thread-Index: AQHWHtYDB/cpTmsjKkuAl+bHjseykqiYg+KAgABe/XCAAUf3gIAASp8Q
Date: Wed, 6 May 2020 03:56:03 +0000
Message-ID: <BYAPR13MB2614FE811C8DD83BBDD3A26599A40@BYAPR13MB2614.namprd13.prod.outlook.com>
References: <BN8PR13MB2611968A7252308925FF18B399A70@BN8PR13MB2611.namprd13.prod.outlook.com>
 <mhng-29e22ca7-538a-4094-923f-8fbc0fd327b9@palmerdabbelt-glaptop1>
In-Reply-To: <mhng-29e22ca7-538a-4094-923f-8fbc0fd327b9@palmerdabbelt-glaptop1>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dabbelt.com; dkim=none (message not signed)
 header.d=none;dabbelt.com; dmarc=none action=none header.from=sifive.com;
x-originating-ip: [116.74.144.6]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6ba8cc5a-ea1f-4447-095b-08d7f1716601
x-ms-traffictypediagnostic: BYAPR13MB2821:
x-ld-processed: 22f88e9d-ae0d-4ed9-b984-cdc9be1529f1,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR13MB2821BCDFEA785476F3FC779E99A40@BYAPR13MB2821.namprd13.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4303;
x-forefront-prvs: 03950F25EC
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: T46jBO/HAy+nkznpmlHXgg89vbQHrKaOfoLLW7jY5f/izzjmvqKWcaBGWN+PPH7QyPZXSLgI3xU3psfrMDntM2DRJAQSn8t9uy2ugnH2zpx/xKlCpHGera0IOqXhHUxCvKVWZ8uv8seVNWJ4ofBy19uhsuAJEZRW2Fx0dg4HYYlkcEcpMRwDNRZ4ZcIC5RAR7FwkPjG3cDVkoCtGDmhMrwSLXqA/Zg9NwRY+fyGAarYQDXQMQQKpwNa2B/azaQgBGnRpbAztKG9IfLGJhHzbZvg3NHHngYFv6dWdkbpSjRRSLPvCNr2EBNLsfXvC/Gzh+/07FV0qe/nsEqdcGl1Pz+7rFTdoOUVmjxB8BlIp8r4323BVl9Ie1UnW95H1AwFlcKJ+IqNcEtCnJOac6xWaBqgoLbiH3QBKV2cOME85fj/PzdshlAt/MVbj2csK64cGa1+be2ERBw8yNmhk16r6RCwBr60el10Rm8UjuRzYc5UkdJoS9X4ibDlC5a91AZ6yTY6xFOZ3YFoo4rRT8eHgPg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR13MB2614.namprd13.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(366004)(136003)(376002)(346002)(39850400004)(396003)(33430700001)(64756008)(66446008)(86362001)(2906002)(52536014)(8676002)(8936002)(33440700001)(26005)(66946007)(76116006)(186003)(66476007)(66556008)(4326008)(44832011)(6506007)(33656002)(55236004)(7696005)(316002)(54906003)(9686003)(71200400001)(55016002)(478600001)(5660300002)(53546011)(6916009);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: Dc3ZddpYcevwexUKJDogtPKir4s18evR6R/B17PaP/0NxuV+fQSfFjjxDMdHvBJNfqiu/5d1aFdjw0Ia4X8RIUOuIxp7bupiwnEDLzotNu/c2ZADCMqZcn1Sk5fDZv9pAfptLJlgSIiJfeJjz0qU3ESek46Kwc9fZWg9c2YjyYaH2NePI/Uz4K8DCBKKo1BPRBOX+N5RjiNXG/1EXDqpqghHdJCxe1n4snap9QxjvRvQTn7bqrSieXaek7BzHGhZ6tDSOegroj7Siq+8+NbzywH5c+F3wbRFx+MvQuda9V4lSjNFOIjax5FhcAvO9D3jw9a4BRVxE9soLBmBSl5+vDDtkRSgNhBpDXbTkYccI2VO1RYG3Ke2RgXXcoOrOiCNSYtEbUTRTJHWlkTlb7Q5socpDGCRsQNCKESkXKJeEtJsa+NXMSt82vVcTTiGHwbWJkWZDbiV8OloLLFBfrqygA7z36VZR6t2X1ZUvB+rGsIegAb1bjpfBJDSxfkuou9lqaxOb7VTd76FWzZZ+TdLyjn2AAu70xnMPSyUK/EoJdph5c5IMz5TVRK9l8xq6YpxSj5/xOifg4cXQPHqE0HFH8f9eLY72dRe39e2iYyySWz69IjFAjnMdazHrgnM2RL97oktpyBs7xaOSwalHnN9O9yZlrmK6mZxVENhEB38xrTOhd9/goDkImTKpBtIsTlu7qW3m2AUtjSNTaalMKOkdnYewaa5Fzh0diOXu3SBpJdWcWITiuqYuwpGCp4GcVgcTJwPW167VbbxnwoTf2cOGZEhwDN6ad1x0YFmqKEbRtw=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: sifive.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6ba8cc5a-ea1f-4447-095b-08d7f1716601
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 May 2020 03:56:03.8718 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 22f88e9d-ae0d-4ed9-b984-cdc9be1529f1
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ojcdPBVNsi9ZHYlPv2ljcbVWsq8IMmzjlb16GeMbxr3K0vxe67xpxl8lRtKPgfb8VCE1BHmbbAryOZv9qA1sAw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR13MB2821
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_205607_234117_6FD6EF29 
X-CRM114-Status: GOOD (  24.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.220.44 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.220.44 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "vigneshr@ti.com" <vigneshr@ti.com>,
 "tudor.ambarus@microchip.com" <tudor.ambarus@microchip.com>,
 "richard@nod.at" <richard@nod.at>, Paul Walmsley <paul.walmsley@sifive.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>,
 "miquel.raynal@bootlin.com" <miquel.raynal@bootlin.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

SGkgUGFsbWVyLA0KDQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IFBhbG1l
ciBEYWJiZWx0IDxwYWxtZXJAZGFiYmVsdC5jb20+DQo+IFNlbnQ6IFdlZG5lc2RheSwgTWF5IDYs
IDIwMjAgNDo1NCBBTQ0KPiBUbzogU2FnYXIgS2FkYW0gPHNhZ2FyLmthZGFtQHNpZml2ZS5jb20+
DQo+IENjOiB0dWRvci5hbWJhcnVzQG1pY3JvY2hpcC5jb207IG1pcXVlbC5yYXluYWxAYm9vdGxp
bi5jb207DQo+IHJpY2hhcmRAbm9kLmF0OyB2aWduZXNockB0aS5jb207IFBhdWwgV2FsbXNsZXkN
Cj4gPHBhdWwud2FsbXNsZXlAc2lmaXZlLmNvbT47IGxpbnV4LXJpc2N2QGxpc3RzLmluZnJhZGVh
ZC5vcmc7IGxpbnV4LQ0KPiBrZXJuZWxAdmdlci5rZXJuZWwub3JnOyBsaW51eC1tdGRAbGlzdHMu
aW5mcmFkZWFkLm9yZw0KPiBTdWJqZWN0OiBSRTogW1BBVENIIDEvMl0gcmlzY3Y6IGRlZmNvbmZp
ZzogZW5hYmxlIHNwaSBub3Igb24gSGlmaXZlIFVubGVhc2hlZA0KPiBBMDAgYm9hcmQuDQo+IA0K
PiBbRXh0ZXJuYWwgRW1haWxdIERvIG5vdCBjbGljayBsaW5rcyBvciBhdHRhY2htZW50cyB1bmxl
c3MgeW91IHJlY29nbml6ZSB0aGUNCj4gc2VuZGVyIGFuZCBrbm93IHRoZSBjb250ZW50IGlzIHNh
ZmUNCj4gDQo+IE9uIFR1ZSwgMDUgTWF5IDIwMjAgMDA6MTg6NDUgUERUICgtMDcwMCksIHNhZ2Fy
LmthZGFtQHNpZml2ZS5jb20gd3JvdGU6DQo+ID4gSGVsbG8gUGFsbWVyLA0KPiA+DQo+ID4+IC0t
LS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+ID4+IEZyb206IFBhbG1lciBEYWJiZWx0IDxwYWxt
ZXJAZGFiYmVsdC5jb20+DQo+ID4+IFNlbnQ6IFR1ZXNkYXksIE1heSA1LCAyMDIwIDM6NDAgQU0N
Cj4gPj4gVG86IFNhZ2FyIEthZGFtIDxzYWdhci5rYWRhbUBzaWZpdmUuY29tPg0KPiA+PiBDYzog
dHVkb3IuYW1iYXJ1c0BtaWNyb2NoaXAuY29tOyBtaXF1ZWwucmF5bmFsQGJvb3RsaW4uY29tOw0K
PiA+PiByaWNoYXJkQG5vZC5hdDsgdmlnbmVzaHJAdGkuY29tOyBQYXVsIFdhbG1zbGV5DQo+ID4+
IDxwYXVsLndhbG1zbGV5QHNpZml2ZS5jb20+OyBsaW51eC1yaXNjdkBsaXN0cy5pbmZyYWRlYWQu
b3JnOyBsaW51eC0NCj4gPj4ga2VybmVsQHZnZXIua2VybmVsLm9yZzsgbGludXgtbXRkQGxpc3Rz
LmluZnJhZGVhZC5vcmc7IFNhZ2FyIEthZGFtDQo+ID4+IDxzYWdhci5rYWRhbUBzaWZpdmUuY29t
Pg0KPiA+PiBTdWJqZWN0OiBSZTogW1BBVENIIDEvMl0gcmlzY3Y6IGRlZmNvbmZpZzogZW5hYmxl
IHNwaSBub3Igb24gSGlmaXZlDQo+IFVubGVhc2hlZA0KPiA+PiBBMDAgYm9hcmQuDQo+ID4+DQo+
ID4+IFtFeHRlcm5hbCBFbWFpbF0gRG8gbm90IGNsaWNrIGxpbmtzIG9yIGF0dGFjaG1lbnRzIHVu
bGVzcyB5b3UgcmVjb2duaXplDQo+IHRoZQ0KPiA+PiBzZW5kZXIgYW5kIGtub3cgdGhlIGNvbnRl
bnQgaXMgc2FmZQ0KPiA+Pg0KPiA+PiBPbiBUaHUsIDMwIEFwciAyMDIwIDAyOjU4OjUxIFBEVCAo
LTA3MDApLCBzYWdhci5rYWRhbUBzaWZpdmUuY29tDQo+IHdyb3RlOg0KPiA+PiA+IEVuYWJsZSBN
VEQgYmFzZWQgU1BJLU5PUiBmcmFtZXdvcmsgaW4gb3JkZXIgdG8gdXNlIHNwaSBmbGFzaA0KPiBh
dmFpbGFibGUNCj4gPj4gPiBvbiBIaUZpdmUgVW5sZWFzaGVkIEEwMCBib2FyZC4NCj4gPj4gPg0K
PiA+PiA+IFNpZ25lZC1vZmYtYnk6IFNhZ2FyIFNocmlrYW50IEthZGFtIDxzYWdhci5rYWRhbUBz
aWZpdmUuY29tPg0KPiA+PiA+IC0tLQ0KPiA+PiA+ICBhcmNoL3Jpc2N2L2NvbmZpZ3MvZGVmY29u
ZmlnIHwgMiArKw0KPiA+PiA+ICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspDQo+ID4+
ID4NCj4gPj4gPiBkaWZmIC0tZ2l0IGEvYXJjaC9yaXNjdi9jb25maWdzL2RlZmNvbmZpZw0KPiA+
PiA+IGIvYXJjaC9yaXNjdi9jb25maWdzL2RlZmNvbmZpZyBpbmRleCA0ZGE0ODg2Li45NzA1ODBi
IDEwMDY0NA0KPiA+PiA+IC0tLSBhL2FyY2gvcmlzY3YvY29uZmlncy9kZWZjb25maWcNCj4gPj4g
PiArKysgYi9hcmNoL3Jpc2N2L2NvbmZpZ3MvZGVmY29uZmlnDQo+ID4+ID4gQEAgLTgwLDYgKzgw
LDggQEAgQ09ORklHX1VTQl9TVE9SQUdFPXkgIENPTkZJR19VU0JfVUFTPXkNCj4gPj4gQ09ORklH
X01NQz15DQo+ID4+ID4gQ09ORklHX01NQ19TUEk9eQ0KPiA+PiA+ICtDT05GSUdfTVREPXkNCj4g
Pj4gPiArQ09ORklHX01URF9TUElfTk9SPXkNCj4gPj4gPiAgQ09ORklHX1JUQ19DTEFTUz15DQo+
ID4+ID4gIENPTkZJR19WSVJUSU9fUENJPXkNCj4gPj4gPiAgQ09ORklHX1ZJUlRJT19CQUxMT09O
PXkNCj4gPj4NCj4gPj4gRnJvbSB0aGUgc2Vjb25kIHBhdGNoJ3MgZGVzY3JpcHRpb24gSSdtIGFz
c3VtaW5nIHRoYXQgTVREIHN0aWxsDQo+IGZ1bmN0aW9ucw0KPiA+PiBjb3JyZWN0bHkgd2l0aG91
dCB0aGF0IGNoYW5nZT8NCj4gPg0KPiA+IFllcyBQYWxtZXIsIHRoZSBzZWNvbmQgcGF0Y2ggaXMg
dG8gZW5hYmxlIFFVQUQgd3JpdGUgdG8gbm9yIGZsYXNoLi4NCj4gPiBNVEQgIGZ1bmN0aW9uJ3Mg
Y29ycmVjdGx5IHdpdGhvdXQgc2Vjb25kIHBhdGNoLg0KPiA+DQo+ID4gVXNpbmcgdGhlIGNoYXJh
Y3RlciBpbnRlcmZhY2UgKC9kZXYvbXRkMCkgbXRkX3V0aWxzIChtdGRfZGVidWcgOg0KPiBlcmFz
ZS9yZWFkL3dyaXRlKSB3b3JrIGZpbmUuDQo+ID4gV2UgbWlnaHQgcmVxdWlyZSBDT05GSUdfTVRE
X0JMT0NLLCBDT05GSUdfTVREX0NNRExJTkVfUEFSVFMNCj4gaW4gb3JkZXIgdG8gdXNlIE1URCBw
YXJ0aXRpb25pbmcuDQo+ID4gSU1ITyBpdCBjYW4gYmUgYXQgdXNlcidzIGNob2ljZSB3ZWF0aGVy
IHRvIHVzZSBmbGFzaCBwYXJ0aXRpb25zIG9yIG5vdCwgc28gSQ0KPiBoYXZlIG5vdCBlbmFibGVk
LiBQbGVhc2UgbGV0IG1lDQo+ID4ga25vdyBpZiBJIHNob3VsZCBlbmFibGUgdGhlc2UgZmVhdHVy
ZXMgYXMgd2VsbC4NCj4gDQo+IExvb2tzIGxpa2UgYXJtNjQgaGFzIHRoZXNlOg0KPiANCj4gYXJj
aC9hcm02NC9jb25maWdzL2RlZmNvbmZpZzpDT05GSUdfTVREPXkNCj4gYXJjaC9hcm02NC9jb25m
aWdzL2RlZmNvbmZpZzpDT05GSUdfTVREX0JMT0NLPXkNCj4gYXJjaC9hcm02NC9jb25maWdzL2Rl
ZmNvbmZpZzpDT05GSUdfTVREX0NGST15DQo+IGFyY2gvYXJtNjQvY29uZmlncy9kZWZjb25maWc6
Q09ORklHX01URF9DRklfQURWX09QVElPTlM9eQ0KPiBhcmNoL2FybTY0L2NvbmZpZ3MvZGVmY29u
ZmlnOkNPTkZJR19NVERfQ0ZJX0lOVEVMRVhUPXkNCj4gYXJjaC9hcm02NC9jb25maWdzL2RlZmNv
bmZpZzpDT05GSUdfTVREX0NGSV9BTURTVEQ9eQ0KPiBhcmNoL2FybTY0L2NvbmZpZ3MvZGVmY29u
ZmlnOkNPTkZJR19NVERfQ0ZJX1NUQUE9eQ0KPiBhcmNoL2FybTY0L2NvbmZpZ3MvZGVmY29uZmln
OkNPTkZJR19NVERfUEhZU01BUD15DQo+IGFyY2gvYXJtNjQvY29uZmlncy9kZWZjb25maWc6Q09O
RklHX01URF9QSFlTTUFQX09GPXkNCj4gYXJjaC9hcm02NC9jb25maWdzL2RlZmNvbmZpZzpDT05G
SUdfTVREX0RBVEFGTEFTSD15DQo+IGFyY2gvYXJtNjQvY29uZmlncy9kZWZjb25maWc6Q09ORklH
X01URF9TU1QyNUw9eQ0KPiBhcmNoL2FybTY0L2NvbmZpZ3MvZGVmY29uZmlnOkNPTkZJR19NVERf
UkFXX05BTkQ9eQ0KPiBhcmNoL2FybTY0L2NvbmZpZ3MvZGVmY29uZmlnOkNPTkZJR19NVERfTkFO
RF9ERU5BTElfRFQ9eQ0KPiBhcmNoL2FybTY0L2NvbmZpZ3MvZGVmY29uZmlnOkNPTkZJR19NVERf
TkFORF9NQVJWRUxMPXkNCj4gYXJjaC9hcm02NC9jb25maWdzL2RlZmNvbmZpZzpDT05GSUdfTVRE
X05BTkRfRlNMX0lGQz15DQo+IGFyY2gvYXJtNjQvY29uZmlncy9kZWZjb25maWc6Q09ORklHX01U
RF9OQU5EX1FDT009eQ0KPiBhcmNoL2FybTY0L2NvbmZpZ3MvZGVmY29uZmlnOkNPTkZJR19NVERf
U1BJX05PUj15DQo+IA0KPiBzbyBJIHRoaW5rIHdlJ3JlIGdvb2Qgd2l0aCBqdXN0IHdoYXQgeW91
IGhhdmUgaGVyZTogTVREX0JMT0NLIGRvZXNuJ3QNCj4gc2VlbSB0aGF0DQo+IHVzZWZ1bCwgYW5k
IHRoZSByZXN0IGFyZSBkcml2ZXJzLiAgVGhhdCBzYWlkLCB0aGVzZSAoYWxvbmcgd2l0aCBTUEkg
YW5kDQo+IFNQSV9TSUZJVkUpIHNob3VsZCByZWFsbHkgYmUgaW4gS2NvbmZpZy5zb2NzIHJhdGhl
ciB0aGFuIGRlZmNvbmZpZy4gIENhbiB5b3UNCj4gc2VuZCBhIHBhdGNoIHRoYXQgZG9lcyB0aGF0
Pw0KPiANCg0KWWVzIHN1cmUsIEkgd2lsbCBzZW5kIGEgVjIgc2VyaWVzLCB3aGVyZSBTUEksICBT
UElfU0lGSVZFLCAgTVRELCANCmFuZCBNVERfU1BJX05PUiB3aWxsIGJlIGEgcGFydCBvZiBLY29u
ZmlnLnNvY3MuDQoNClRoYW5rcyAmIEJSLA0KU2FnYXIgS2FkYW0NCg0KPiA+DQo+ID4gVG8gZGVt
b25zdHJhdGUgYSBiaXQgbW9yZSB3aXRoIGxpbnV4IDUuNy1yYzMNCj4gPg0KPiA+IFNwZWNpZnkg
b24gVS1ib290IHByb21wdDoNCj4gPiAjIHNldGVudiBib290YXJncyAicm9vdD0vZGV2L3JhbSBy
dyBjb25zb2xlPXR0eVNJRjANCj4gbXRkcGFydHM9c3BpMC4wOjEwMjRrKGxvYWRlcjEpLDQwOTZL
KGxvYWRlcjIpLDI2TShyb290ZnMpIg0KPiA+DQo+ID4gQWZ0ZXIgYm9vdGluZyBsaW51eCB3aWxs
IGVudW1lcmF0ZSBtdGQgcGFydGl0aW9uczoNCj4gPiAjIGNhdCAvcHJvYy9tdGQNCj4gPiBkZXY6
ICAgIHNpemUgICBlcmFzZXNpemUgIG5hbWUNCj4gPiBtdGQwOiAwMDEwMDAwMCAwMDAwMTAwMCAi
bG9hZGVyMSINCj4gPiBtdGQxOiAwMDQwMDAwMCAwMDAwMTAwMCAibG9hZGVyMiINCj4gPiBtdGQy
OiAwMWEwMDAwMCAwMDAwMTAwMCAicm9vdGZzIg0KPiA+DQo+ID4gIyBjYXQgL3Byb2MvcGFydGl0
aW9ucw0KPiA+IG1ham9yIG1pbm9yICAjYmxvY2tzICBuYW1lDQo+ID4gICAzMSAgICAgICAgMCAg
ICAgICAxMDI0IG10ZGJsb2NrMA0KPiA+ICAgMzEgICAgICAgIDEgICAgICAgNDA5NiBtdGRibG9j
azENCj4gPiAgIDMxICAgICAgICAyICAgICAgMjY2MjQgbXRkYmxvY2syDQo+ID4NCj4gPiAjRm9y
bWF0IG10ZGJsb2NrMiB3aXRoIG1rZnMuZXh0My80IGFuZCBtb3VudCByZXN1bHRzIGluDQo+ID4g
IyBta2ZzLmV4dDMgL2Rldi9tdGRibG9jazINCj4gPiBta2UyZnMgMS40NC41ICgxNS1EZWMtMjAx
OCkNCj4gPiAvZGV2L210ZGJsb2NrMiBjb250YWlucyBhIGV4dDMgZmlsZSBzeXN0ZW0NCj4gPiAg
ICAgICAgIGxhc3QgbW91bnRlZCBvbiAvbW50IG9uIFRodSBKYW4gIDEgMDA6MDA6MTQgMTk3MA0K
PiA+IFByb2NlZWQgYW55d2F5PyAoeSxOKSB5DQo+ID4gQ3JlYXRpbmcgZmlsZXN5c3RlbSB3aXRo
IDI2NjI0IDFrIGJsb2NrcyBhbmQgNjY1NiBpbm9kZXMNCj4gPiBGaWxlc3lzdGVtIFVVSUQ6IDFi
MDkyNTJkLWUzMTMtNDMwYy05ZWNiLTc5YjBjZWYwMDNjYQ0KPiA+IFN1cGVyYmxvY2sgYmFja3Vw
cyBzdG9yZWQgb24gYmxvY2tzOg0KPiA+ICAgICAgICAgODE5MywgMjQ1NzcNCj4gPg0KPiA+IEFs
bG9jYXRpbmcgZ3JvdXAgdGFibGVzOiBkb25lDQo+ID4gV3JpdGluZyBpbm9kZSB0YWJsZXM6IGRv
bmUNCj4gPiBDcmVhdGluZyBqb3VybmFsICgxMDI0IGJsb2Nrcyk6IGRvbmUNCj4gPiBXcml0aW5n
IHN1cGVyYmxvY2tzIGFuZCBmaWxlc3lzdGVtIGFjY291bnRpbmcgaW5mb3JtYXRpb246IGRvbmUN
Cj4gPg0KPiA+ICMgbW91bnQNCj4gPiBub25lIG9uIC8gdHlwZSByb290ZnMgKHJ3KQ0KPiA+IHBy
b2Mgb24gL3Byb2MgdHlwZSBwcm9jIChydyxyZWxhdGltZSkNCj4gPiBkZXZwdHMgb24gL2Rldi9w
dHMgdHlwZSBkZXZwdHMNCj4gKHJ3LHJlbGF0aW1lLGdpZD01LG1vZGU9NjIwLHB0bXhtb2RlPTY2
NikNCj4gPiB0bXBmcyBvbiAvZGV2L3NobSB0eXBlIHRtcGZzIChydyxyZWxhdGltZSxtb2RlPTc3
NykNCj4gPiB0bXBmcyBvbiAvdG1wIHR5cGUgdG1wZnMgKHJ3LHJlbGF0aW1lKQ0KPiA+IHRtcGZz
IG9uIC9ydW4gdHlwZSB0bXBmcyAocncsbm9zdWlkLG5vZGV2LHJlbGF0aW1lLG1vZGU9NzU1KQ0K
PiA+IHN5c2ZzIG9uIC9zeXMgdHlwZSBzeXNmcyAocncscmVsYXRpbWUpDQo+ID4gL2Rldi9tdGRi
bG9jazIgb24gL21udCB0eXBlIGV4dDMgKHJ3LHJlbGF0aW1lKQ0KPiA+DQo+ID4gVGhhbmtzICYg
QlIsDQo+ID4gU2FnYXIgS2FkYW0NCg0K

