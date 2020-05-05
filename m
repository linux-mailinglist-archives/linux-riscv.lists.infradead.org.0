Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F171F1C4EF0
	for <lists+linux-riscv@lfdr.de>; Tue,  5 May 2020 09:19:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=k/QFNF3T5wQNGasslckKe/KavHRLP8gOWWei1IDodUY=; b=kPo/8VjIRegsjOJb3a2+DrkfP
	3f1IVeuMWs2fyVRSPughGeKxd2F7eARBS59MVNV8dYm9/Yvc24QvvS5B1oAlquNdyMiRUh8kfb0KC
	Z0pzD++Qr8Ji5qz6EBuIQpAAGFEtNfKF0ZNr0YSXuBFKa8/2qTlIwyz29MXOzXaUQgMcu1LlOLf5/
	2PZndroPgGGYDRof8FF7VhjJ+TBzV9ysfUUnqVNHXC6SeYRyqjNeMMWDJ8iylEnnaaU3S3NpdeE8R
	8epcto2V/biwFMQ3DL4/7VwxV+Kr4xCvMZw9Qfu4b0hAtlrWPczIuKgfFrR1AsSNKXgmGLIsGf56k
	WhYt6xpGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVrqx-00018N-FL; Tue, 05 May 2020 07:18:55 +0000
Received: from mail-mw2nam12on2085.outbound.protection.outlook.com
 ([40.107.244.85] helo=NAM12-MW2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVrqt-00017j-03; Tue, 05 May 2020 07:18:52 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lnpaoj0d7n3TE/REzU5qqxiG3D+v/ryzcRqZs7dXBF6ad7Vb3kWhE/fXc6GmlenQVe4vdvvWkUGQFaewfZQOPMfYCgODYOAf+HBC/fJOY85wTbLK6zY9bBvUObKyg3ImB8h2dJ0H5voZxHxoaLu8QtOMK0KxmkQPwANXCXzSXXLyRFwmeb1ZrzJ0yPm+UKoAgDTEP96g0W2MvMaSRrlPAeVFsT8tCpUVcSBfS6XMDfoguLnrv27lgjcLzP1EZjm6DlnmsOcvYZRFakto9h1DPYOJQp3131mmlUwv+sttZLLxnYGjYjTbxrkgCH3r8Cld164YoVyKP8Agj9o4aSQFIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=k/QFNF3T5wQNGasslckKe/KavHRLP8gOWWei1IDodUY=;
 b=eKpKyUep86a6SK6kGmJVB/oU2wsGjMteLNY93NQgM3rxg8YjQYMGD4tcRY5KETuk1yqDk/tkwQGV8C1kr7PRiGbn6YFKNu++FkH0wgEsVPOzPLPriMbScpGQQdHcChYPjNzHb6TnKGeE1pQBVxvtAG6pgFfywHmujPY9qjlu7V4v25sAsZl0+vzDTadNsengE5cDdPj6VL4dkRIIyPteWWuviQNr5u1h1pNFybE7Wa6b+ddf1+xrAJoLHUWeBrNIo7nuN07LIO63TxuV+15zsmIJDtK5kDcAHDLsYKCs1/KwHQrYSizLzuEsqZ1kHR/HHOEdNqxlKPx/rXvezCI8UQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=sifive.com; dmarc=pass action=none header.from=sifive.com;
 dkim=pass header.d=sifive.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=k/QFNF3T5wQNGasslckKe/KavHRLP8gOWWei1IDodUY=;
 b=SYT1PFtf+IfV4MUjnRObBRgKJnWckOSTjSal6KIaZJ0XPrbsoFsUNbeW+vF5x76q2vGn9ws9WTpvBNuw1geBevd9ohCaX2xQd2TVfySXvDJ0jf9ewGIryOfEzQlm/Wx5V12KmmGXWxr9BLkTZOlh4LXdkZbCpAswZ1SRk+Z9Ri8=
Received: from BN8PR13MB2611.namprd13.prod.outlook.com (2603:10b6:408:81::17)
 by BN8PR13MB2900.namprd13.prod.outlook.com (2603:10b6:408:91::33)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2979.18; Tue, 5 May
 2020 07:18:46 +0000
Received: from BN8PR13MB2611.namprd13.prod.outlook.com
 ([fe80::c129:8fca:5ed:8929]) by BN8PR13MB2611.namprd13.prod.outlook.com
 ([fe80::c129:8fca:5ed:8929%6]) with mapi id 15.20.2979.024; Tue, 5 May 2020
 07:18:46 +0000
From: Sagar Kadam <sagar.kadam@sifive.com>
To: Palmer Dabbelt <palmer@dabbelt.com>
Subject: RE: [PATCH 1/2] riscv: defconfig: enable spi nor on Hifive Unleashed
 A00 board.
Thread-Topic: [PATCH 1/2] riscv: defconfig: enable spi nor on Hifive Unleashed
 A00 board.
Thread-Index: AQHWHtYDB/cpTmsjKkuAl+bHjseykqiYg+KAgABe/XA=
Date: Tue, 5 May 2020 07:18:45 +0000
Message-ID: <BN8PR13MB2611968A7252308925FF18B399A70@BN8PR13MB2611.namprd13.prod.outlook.com>
References: <1588240732-13905-2-git-send-email-sagar.kadam@sifive.com>
 <mhng-ccfe9c83-41d6-47a0-b7bc-347573973fec@palmerdabbelt-glaptop1>
In-Reply-To: <mhng-ccfe9c83-41d6-47a0-b7bc-347573973fec@palmerdabbelt-glaptop1>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dabbelt.com; dkim=none (message not signed)
 header.d=none;dabbelt.com; dmarc=none action=none header.from=sifive.com;
x-originating-ip: [116.74.144.6]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e97f01f1-c2e9-462b-5d2a-08d7f0c48cc9
x-ms-traffictypediagnostic: BN8PR13MB2900:
x-ld-processed: 22f88e9d-ae0d-4ed9-b984-cdc9be1529f1,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BN8PR13MB2900900A939FFA2A3409DB2A99A70@BN8PR13MB2900.namprd13.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 0394259C80
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: RZEd6Mw1zvJA9Fo24kkBXoN1TMQlGyhcOZ41lfSAizcLfCFDdYtZTKEfkLPZo3UlN2p3xgeDCl87R6IMgWMFAtUh9vlJIPR7uivr2SVMRjfAWm8jTU2AL43mhuwG4vjaGefhfrV1wcKrumOoEsPHDnzOVRJAVwhbrEna5ppf77SiXSRZg2Z9a/NeKKBvdYKV8hipX0XmVg4FylgElW/xIE0ggL6u0V7L2XnRJMpF1yHb1BH4EsqO/BMPuLSKN3DcipNYw597XVm9oQ/WMHAmAAg1Yy/KqAPbDCMNIE9GOFQs/d9gBpLWpjS2LO3vOLzMmC2bMpkv3+dSam6DYWwdActO5X2HvKX26TrH1xyL3ZT9f1p+eHofll5qUpOKo+SMdaIpnt0BmYDCSanHZCuv3N9iKUwNBzGFJZ9TkaF96e2UJK50KKN1Q48TyExVuMLgRL2+T5loen/44fLLoKbsuwkA3GmsP0dco9XYnfmqEEoYCaRqxqKAS5tr3kA4TJHlhSPWWX2DZagBEJc4QjEvIA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR13MB2611.namprd13.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(376002)(136003)(39850400004)(366004)(396003)(346002)(33430700001)(26005)(8676002)(66946007)(9686003)(76116006)(33656002)(6506007)(55236004)(55016002)(316002)(7696005)(53546011)(33440700001)(66476007)(66556008)(66446008)(186003)(64756008)(5660300002)(8936002)(52536014)(478600001)(4326008)(6916009)(71200400001)(54906003)(2906002)(44832011)(86362001);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: PVZ89RCxLDNc26znQyR49wBjqHomIWlZTJ1qthsEmVPPW2t8yzB6yHthPK3z9ERV282wExFE0tPBrbXuyxJLmyE0mdadcNk4TBHSF+DucdoS6nph7PgSfNzhpXHCeWZyr2OGbTcdIHxxXYBu1zQSXxQlc8ZPqnlJTrnMFDNN+m6jUpcqCGskaKRydJ21NBBoMAjeGinSvXqLl7aVzRulnLRQxACemUwLT8zKFprPwLVFPs1sRArRLiimjVAYBxpXDSN45FNz1Db5Np7QsLjkZTSyRd8y+28T2POIsiW6RSBiDGsVuNeoAGiPjpfBYauT+A4J1RXC0Ru0G1lGCSFgthZNpi6MvQbFCblYGb8oNnWqemHCxQH/M/kKQ1Eeyq8O/+uWhR/7c7+vf3IJGWa3BGoxpWPqQ3NP14eBBXpyld4ePxrjlOoPQ4tpT568FpHUfw494cZd+2k0PqANllmG+hkQncooIMqLQbmiKs+mRjz4oJ52Tk6hKZWaHQ72CE7oZY3cRRYp/lKylWtfydl3s9y+nafj9T/f6VGTIzlxfKbkKIOuqygaC0LSy0ExCqufbMJioewPJkDMADhLsLmbvKJ/OgAwjClDjkqHLXaPljMzAn9R94wbmXqeIOj1T17Hss/YnyGHiKbvGh3GRVUC8dJWaIY2Ekr1+XJuj2e+lGGW1LgM5FEPADYacln92JkrRhMUvslHQa3a+9o7IRpQFtxKDq5uDTol9I/KWK1qnSixP+My/Lnqh/q2bmk98LsKDnaQX8kEr+Uyj1wm0REOCUNy7K1cVewLGKqJ9WM5cqo=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: sifive.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e97f01f1-c2e9-462b-5d2a-08d7f0c48cc9
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 May 2020 07:18:46.1268 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 22f88e9d-ae0d-4ed9-b984-cdc9be1529f1
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jGFmdleT8bebgLO90su8Y+EsPPc0P3Z3XpnWCQcPhLgOrhqjs0cdCPrVJ8ac1lmuYKAMxXP5w9fxgvtU5OXt6g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR13MB2900
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_001851_103650_6876AB67 
X-CRM114-Status: GOOD (  15.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.244.85 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.244.85 listed in wl.mailspike.net]
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

SGVsbG8gUGFsbWVyLA0KDQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IFBh
bG1lciBEYWJiZWx0IDxwYWxtZXJAZGFiYmVsdC5jb20+DQo+IFNlbnQ6IFR1ZXNkYXksIE1heSA1
LCAyMDIwIDM6NDAgQU0NCj4gVG86IFNhZ2FyIEthZGFtIDxzYWdhci5rYWRhbUBzaWZpdmUuY29t
Pg0KPiBDYzogdHVkb3IuYW1iYXJ1c0BtaWNyb2NoaXAuY29tOyBtaXF1ZWwucmF5bmFsQGJvb3Rs
aW4uY29tOw0KPiByaWNoYXJkQG5vZC5hdDsgdmlnbmVzaHJAdGkuY29tOyBQYXVsIFdhbG1zbGV5
DQo+IDxwYXVsLndhbG1zbGV5QHNpZml2ZS5jb20+OyBsaW51eC1yaXNjdkBsaXN0cy5pbmZyYWRl
YWQub3JnOyBsaW51eC0NCj4ga2VybmVsQHZnZXIua2VybmVsLm9yZzsgbGludXgtbXRkQGxpc3Rz
LmluZnJhZGVhZC5vcmc7IFNhZ2FyIEthZGFtDQo+IDxzYWdhci5rYWRhbUBzaWZpdmUuY29tPg0K
PiBTdWJqZWN0OiBSZTogW1BBVENIIDEvMl0gcmlzY3Y6IGRlZmNvbmZpZzogZW5hYmxlIHNwaSBu
b3Igb24gSGlmaXZlIFVubGVhc2hlZA0KPiBBMDAgYm9hcmQuDQo+IA0KPiBbRXh0ZXJuYWwgRW1h
aWxdIERvIG5vdCBjbGljayBsaW5rcyBvciBhdHRhY2htZW50cyB1bmxlc3MgeW91IHJlY29nbml6
ZSB0aGUNCj4gc2VuZGVyIGFuZCBrbm93IHRoZSBjb250ZW50IGlzIHNhZmUNCj4gDQo+IE9uIFRo
dSwgMzAgQXByIDIwMjAgMDI6NTg6NTEgUERUICgtMDcwMCksIHNhZ2FyLmthZGFtQHNpZml2ZS5j
b20gd3JvdGU6DQo+ID4gRW5hYmxlIE1URCBiYXNlZCBTUEktTk9SIGZyYW1ld29yayBpbiBvcmRl
ciB0byB1c2Ugc3BpIGZsYXNoIGF2YWlsYWJsZQ0KPiA+IG9uIEhpRml2ZSBVbmxlYXNoZWQgQTAw
IGJvYXJkLg0KPiA+DQo+ID4gU2lnbmVkLW9mZi1ieTogU2FnYXIgU2hyaWthbnQgS2FkYW0gPHNh
Z2FyLmthZGFtQHNpZml2ZS5jb20+DQo+ID4gLS0tDQo+ID4gIGFyY2gvcmlzY3YvY29uZmlncy9k
ZWZjb25maWcgfCAyICsrDQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKykNCj4g
Pg0KPiA+IGRpZmYgLS1naXQgYS9hcmNoL3Jpc2N2L2NvbmZpZ3MvZGVmY29uZmlnDQo+ID4gYi9h
cmNoL3Jpc2N2L2NvbmZpZ3MvZGVmY29uZmlnIGluZGV4IDRkYTQ4ODYuLjk3MDU4MGIgMTAwNjQ0
DQo+ID4gLS0tIGEvYXJjaC9yaXNjdi9jb25maWdzL2RlZmNvbmZpZw0KPiA+ICsrKyBiL2FyY2gv
cmlzY3YvY29uZmlncy9kZWZjb25maWcNCj4gPiBAQCAtODAsNiArODAsOCBAQCBDT05GSUdfVVNC
X1NUT1JBR0U9eSAgQ09ORklHX1VTQl9VQVM9eQ0KPiBDT05GSUdfTU1DPXkNCj4gPiBDT05GSUdf
TU1DX1NQST15DQo+ID4gK0NPTkZJR19NVEQ9eQ0KPiA+ICtDT05GSUdfTVREX1NQSV9OT1I9eQ0K
PiA+ICBDT05GSUdfUlRDX0NMQVNTPXkNCj4gPiAgQ09ORklHX1ZJUlRJT19QQ0k9eQ0KPiA+ICBD
T05GSUdfVklSVElPX0JBTExPT049eQ0KPiANCj4gRnJvbSB0aGUgc2Vjb25kIHBhdGNoJ3MgZGVz
Y3JpcHRpb24gSSdtIGFzc3VtaW5nIHRoYXQgTVREIHN0aWxsIGZ1bmN0aW9ucw0KPiBjb3JyZWN0
bHkgd2l0aG91dCB0aGF0IGNoYW5nZT8NCg0KWWVzIFBhbG1lciwgdGhlIHNlY29uZCBwYXRjaCBp
cyB0byBlbmFibGUgUVVBRCB3cml0ZSB0byBub3IgZmxhc2guLg0KTVREICBmdW5jdGlvbidzIGNv
cnJlY3RseSB3aXRob3V0IHNlY29uZCBwYXRjaC4NCg0KVXNpbmcgdGhlIGNoYXJhY3RlciBpbnRl
cmZhY2UgKC9kZXYvbXRkMCkgbXRkX3V0aWxzIChtdGRfZGVidWcgOiBlcmFzZS9yZWFkL3dyaXRl
KSB3b3JrIGZpbmUuDQpXZSBtaWdodCByZXF1aXJlIENPTkZJR19NVERfQkxPQ0ssIENPTkZJR19N
VERfQ01ETElORV9QQVJUUyAgaW4gb3JkZXIgdG8gdXNlIE1URCBwYXJ0aXRpb25pbmcuDQpJTUhP
IGl0IGNhbiBiZSBhdCB1c2VyJ3MgY2hvaWNlIHdlYXRoZXIgdG8gdXNlIGZsYXNoIHBhcnRpdGlv
bnMgb3Igbm90LCBzbyBJIGhhdmUgbm90IGVuYWJsZWQuIFBsZWFzZSBsZXQgbWUgDQprbm93IGlm
IEkgc2hvdWxkIGVuYWJsZSB0aGVzZSBmZWF0dXJlcyBhcyB3ZWxsLg0KDQpUbyBkZW1vbnN0cmF0
ZSBhIGJpdCBtb3JlIHdpdGggbGludXggNS43LXJjMyANCg0KU3BlY2lmeSBvbiBVLWJvb3QgcHJv
bXB0Og0KIyBzZXRlbnYgYm9vdGFyZ3MgInJvb3Q9L2Rldi9yYW0gcncgY29uc29sZT10dHlTSUYw
IG10ZHBhcnRzPXNwaTAuMDoxMDI0ayhsb2FkZXIxKSw0MDk2Syhsb2FkZXIyKSwyNk0ocm9vdGZz
KSINCg0KQWZ0ZXIgYm9vdGluZyBsaW51eCB3aWxsIGVudW1lcmF0ZSBtdGQgcGFydGl0aW9uczoN
CiMgY2F0IC9wcm9jL210ZA0KZGV2OiAgICBzaXplICAgZXJhc2VzaXplICBuYW1lDQptdGQwOiAw
MDEwMDAwMCAwMDAwMTAwMCAibG9hZGVyMSINCm10ZDE6IDAwNDAwMDAwIDAwMDAxMDAwICJsb2Fk
ZXIyIg0KbXRkMjogMDFhMDAwMDAgMDAwMDEwMDAgInJvb3RmcyINCg0KIyBjYXQgL3Byb2MvcGFy
dGl0aW9ucw0KbWFqb3IgbWlub3IgICNibG9ja3MgIG5hbWUNCiAgMzEgICAgICAgIDAgICAgICAg
MTAyNCBtdGRibG9jazANCiAgMzEgICAgICAgIDEgICAgICAgNDA5NiBtdGRibG9jazENCiAgMzEg
ICAgICAgIDIgICAgICAyNjYyNCBtdGRibG9jazINCg0KI0Zvcm1hdCBtdGRibG9jazIgd2l0aCBt
a2ZzLmV4dDMvNCBhbmQgbW91bnQgcmVzdWx0cyBpbg0KIyBta2ZzLmV4dDMgL2Rldi9tdGRibG9j
azINCm1rZTJmcyAxLjQ0LjUgKDE1LURlYy0yMDE4KQ0KL2Rldi9tdGRibG9jazIgY29udGFpbnMg
YSBleHQzIGZpbGUgc3lzdGVtDQogICAgICAgIGxhc3QgbW91bnRlZCBvbiAvbW50IG9uIFRodSBK
YW4gIDEgMDA6MDA6MTQgMTk3MA0KUHJvY2VlZCBhbnl3YXk/ICh5LE4pIHkNCkNyZWF0aW5nIGZp
bGVzeXN0ZW0gd2l0aCAyNjYyNCAxayBibG9ja3MgYW5kIDY2NTYgaW5vZGVzDQpGaWxlc3lzdGVt
IFVVSUQ6IDFiMDkyNTJkLWUzMTMtNDMwYy05ZWNiLTc5YjBjZWYwMDNjYQ0KU3VwZXJibG9jayBi
YWNrdXBzIHN0b3JlZCBvbiBibG9ja3M6DQogICAgICAgIDgxOTMsIDI0NTc3DQoNCkFsbG9jYXRp
bmcgZ3JvdXAgdGFibGVzOiBkb25lDQpXcml0aW5nIGlub2RlIHRhYmxlczogZG9uZQ0KQ3JlYXRp
bmcgam91cm5hbCAoMTAyNCBibG9ja3MpOiBkb25lDQpXcml0aW5nIHN1cGVyYmxvY2tzIGFuZCBm
aWxlc3lzdGVtIGFjY291bnRpbmcgaW5mb3JtYXRpb246IGRvbmUNCg0KIyBtb3VudA0Kbm9uZSBv
biAvIHR5cGUgcm9vdGZzIChydykNCnByb2Mgb24gL3Byb2MgdHlwZSBwcm9jIChydyxyZWxhdGlt
ZSkNCmRldnB0cyBvbiAvZGV2L3B0cyB0eXBlIGRldnB0cyAocncscmVsYXRpbWUsZ2lkPTUsbW9k
ZT02MjAscHRteG1vZGU9NjY2KQ0KdG1wZnMgb24gL2Rldi9zaG0gdHlwZSB0bXBmcyAocncscmVs
YXRpbWUsbW9kZT03NzcpDQp0bXBmcyBvbiAvdG1wIHR5cGUgdG1wZnMgKHJ3LHJlbGF0aW1lKQ0K
dG1wZnMgb24gL3J1biB0eXBlIHRtcGZzIChydyxub3N1aWQsbm9kZXYscmVsYXRpbWUsbW9kZT03
NTUpDQpzeXNmcyBvbiAvc3lzIHR5cGUgc3lzZnMgKHJ3LHJlbGF0aW1lKQ0KL2Rldi9tdGRibG9j
azIgb24gL21udCB0eXBlIGV4dDMgKHJ3LHJlbGF0aW1lKQ0KDQpUaGFua3MgJiBCUiwNClNhZ2Fy
IEthZGFtDQo=

