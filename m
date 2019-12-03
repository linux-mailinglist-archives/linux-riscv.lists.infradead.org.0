Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D26A911053E
	for <lists+linux-riscv@lfdr.de>; Tue,  3 Dec 2019 20:34:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-ID:Content-Type:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=I/s1eRNF3hI3cz6ws0HV1D4l9YtZPrNBMGFeU9Lc8S0=; b=INhmuAg22gRO5GnrFbvoIwiN+
	AE5+vdKXVtAJSVJRGhzlfI40EK6D4W6O1vCzB0kuYn1+Rm7+cMVzJDkXDwR5O9cSv5zkHm9Y+v5vS
	nryDkUgRyuVE/9pOIz8buxkGrk7uOoiR38Rdam6BNjzdtqoXzrhGPnyR+FTN/kG4n4jq8P3G78crZ
	0Yx+rwmHGzRAXbQteL6Udpf/K8jg/0PZHCYcWU4VzKSzzrtAyp7SdOM9JUk7ffonxppDweVsbi7hw
	v/a6EyEuInGq5eobaZw97mOEv5zNhdYGndE7pvxHPi++69Lg8q6hq1uw/bXmFG9lExbhDGEQ+nG79
	85M36jmKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icDwB-0002tp-M4; Tue, 03 Dec 2019 19:34:19 +0000
Received: from esa3.hgst.iphmx.com ([216.71.153.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icDw7-0002sv-Cz
 for linux-riscv@lists.infradead.org; Tue, 03 Dec 2019 19:34:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1575401655; x=1606937655;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=I/s1eRNF3hI3cz6ws0HV1D4l9YtZPrNBMGFeU9Lc8S0=;
 b=UmYoC/BbbutejSs+I1buNAwO7yJw+Ume16zo0u3X9AQOubykwJL1DS3K
 yrcqOispwUAJrrNh5Goz34V+YTbMjg+g1f7Jyxy+rsawQknvo1+vLHd5D
 ANHu1Z3QZiPX1EBNk5Ncm74dd0O9Cjtu66LYa21wASWW49bCqVaFkh+30
 jJ+L2HKMI4Aj9yuqZn5NEBsuN6zxL4RODrB9L7LmGeotfT58vAYz5TSew
 QV6sFC6OXEReKGNmcWeziTPM8pFwyGJnrWAVndAWVh3dbY2nB3Y+Zzur4
 UWFyK9lI5ujH8H8N4tiPVvYSmnR7EP91dfoRA1JOKPO8kS+pouwcjtnc0 Q==;
IronPort-SDR: Eflq5g1LKztJ3s2MCTQeFSK/nQntL5XkgORKSfus1x4o+JzS3goH+kSa9JDeKME4YXK0ib5yS0
 osZB+TZfB1CN8j6VA1GXXbIyn8VQBw89rlsifScELNQdc086mr/+OeDCz/s1+zvRE6NYzCidtJ
 ja8ImAtwuxclZIfoUpnom7GST1DESEkf4vY7uChvZoL7B8aDv2KRn/5dXiHtSWmHzLy6PHZ2U2
 swEnlrCBllYnztYfZSRQWTvECCT6ifm9V7c2yZCB3hdnJQyYqPQKrRYrvRWbTAjPgd8nVlq9Ri
 oSA=
X-IronPort-AV: E=Sophos;i="5.69,274,1571673600"; d="scan'208";a="128969442"
Received: from mail-co1nam03lp2053.outbound.protection.outlook.com (HELO
 NAM03-CO1-obe.outbound.protection.outlook.com) ([104.47.40.53])
 by ob1.hgst.iphmx.com with ESMTP; 04 Dec 2019 03:34:14 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=W4AUqJRLEU4j4ME1e/G9xCRFDKl2Rc1s3/0zZc4KNJWOgvQZZAzfPQFYnJ4PpRN7yMbF+bfnRezO9erqx51798PtwAk3BwaQ7ZZhAuqIqS7S/eD4iF8RryL2lkORdhh3heQR8LLVFQvDcx4OkdM1BpWfVsujyiwMqz0SISwYLp4f//ils10BoxDY8F4FwOi03ddpTMgaHiHfukZfI+OaEcLg23VtNJyIR/b+/ApgK/O/mnnHpFmDulibBHSoDN6JF9YQkYjzPPPSp8NfKHmgUMEoCHreyk+yHcWyD7RxfwMOmndDcxrAuWUl+YCHasB7bFhs2RKYRG5pTdb4q/VCAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=I/s1eRNF3hI3cz6ws0HV1D4l9YtZPrNBMGFeU9Lc8S0=;
 b=LmuPIV7+7mJzezBF0UplA2AAXLuZ0Vg7C9Gd0rqfdsqtpWJaGD8jhLOC7QcyhDxc86eWI5UKlF5DGPejxbJcv+/ZVy3uMk22KT/eqURG/FXDfjImiqHyK+FIId8MPMYfE1+civXGHU+IPA5f3Rb9gQAjiX1hq57fq0iOywh6KHcI6gv0NgODPX94VDZj3EVqof92TguH7HJXtNZ2TMTQyAq7VOEER7yPDliMKKNX0vIZ3Z17+bd0L4XhbBLiBr0HAJwe1Y6qoPzfOguxbxrxr8iW6vWjzQ1VTzRf1vXPWvfZ4sZ9W2CeJHsy2O7dzFgkSnV5ZPzCeLBpKBYGEyGioA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=I/s1eRNF3hI3cz6ws0HV1D4l9YtZPrNBMGFeU9Lc8S0=;
 b=kRcTfLcsQb2sA3c51nRoWwUOjELIJSpWUrtgVHrs8Ex0A8VxlUnV9WNoZDxV5WgSMP0FH9oAw/iixwoiQUHzgflKBJhst+sYMskj3PBYEqF/s8N0MQv1RqMuaQQQwXSrmpwEuGjzTB5nAIoPXnEXqdmmFCTDDEqnRxjXF3B42wc=
Received: from BYAPR04MB4901.namprd04.prod.outlook.com (52.135.232.206) by
 BYAPR04MB4951.namprd04.prod.outlook.com (52.135.232.220) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2495.22; Tue, 3 Dec 2019 19:34:12 +0000
Received: from BYAPR04MB4901.namprd04.prod.outlook.com
 ([fe80::112d:6934:52da:df11]) by BYAPR04MB4901.namprd04.prod.outlook.com
 ([fe80::112d:6934:52da:df11%7]) with mapi id 15.20.2495.014; Tue, 3 Dec 2019
 19:34:12 +0000
From: Alistair Francis <Alistair.Francis@wdc.com>
To: "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
 "palmer@dabbelt.com" <palmer@dabbelt.com>, Anup Patel <Anup.Patel@wdc.com>,
 "aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>
Subject: Re: [PATCH v2 2/4] RISC-V: Enable QEMU virt machine support in
 defconfigs
Thread-Topic: [PATCH v2 2/4] RISC-V: Enable QEMU virt machine support in
 defconfigs
Thread-Index: AQHVqYytnGCB9McNzk2OTokWdvJYh6eozKGA
Date: Tue, 3 Dec 2019 19:34:12 +0000
Message-ID: <3b6fbef52935c674d27b3b30aa501d4f872254e1.camel@wdc.com>
References: <20191203034909.37385-1-anup.patel@wdc.com>
 <20191203034909.37385-3-anup.patel@wdc.com>
In-Reply-To: <20191203034909.37385-3-anup.patel@wdc.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Alistair.Francis@wdc.com; 
x-originating-ip: [199.255.44.250]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 915601a7-710e-455d-e793-08d77827c67d
x-ms-traffictypediagnostic: BYAPR04MB4951:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR04MB49510804D697B571BF4819FA90420@BYAPR04MB4951.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:1824;
x-forefront-prvs: 02408926C4
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(396003)(39860400002)(376002)(346002)(366004)(136003)(199004)(189003)(8676002)(86362001)(8936002)(6506007)(76176011)(2501003)(81166006)(81156014)(26005)(2616005)(118296001)(229853002)(102836004)(11346002)(36756003)(478600001)(6486002)(446003)(14454004)(316002)(6512007)(66476007)(66946007)(76116006)(2906002)(7736002)(6246003)(54906003)(71200400001)(110136005)(66556008)(6436002)(71190400001)(66446008)(5660300002)(64756008)(2171002)(186003)(6116002)(4326008)(3846002)(25786009)(14444005)(99286004)(256004)(305945005);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB4951;
 H:BYAPR04MB4901.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 3bcMOr8xRyA1Suhg5kxHN/riG62o2xko8nlrN4YY/wepjSfbK/BrZoR8hUkSwUhh+Gftl7+PFqkGL4vcs3RyALDoiBmFHKaOh8NK6NddKDAxBVNZS0+Y97rP/N3cvOqjyRmwi9buJP4XrhHyd5G9wlL30VZyrgVOFxlv/1APtOfBHJz6hsag5bcNVq9jC8GiUFCYC430ssKjiZpYPLF1QVv5IQOHxNy1t4095mCoEbXo9k6ewKpiXPcYnHXX8Dh1vgWXHTolFVvxBpicBZWsUuZfbvrUYYC0AICzE1AvYeFGjzhIRAJA0BuVfwOYDYiR7Zoih08mcFq7JEdlmxoiLlI1xJ9/JuFRCXj//TMz959hMNbvhGv9piQ5+IaelXDQuqE/QILxs+J51bQPwukhCtBUANPkWomAdJUsTUWIk0ZdziVES1+zXE5AY+UfjUhX
Content-Type: text/plain; charset="utf-8"
Content-ID: <46F0ED825014C24CBFC7883D857A3BD5@namprd04.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 915601a7-710e-455d-e793-08d77827c67d
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Dec 2019 19:34:12.2893 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2KhBBU85bYsrVasZs5gDsdEF49Ub+YvhCbMlFqYBX8Rlu/BmA/VR8RaQ2rvgnCmE6kfUePa7kvp7SGqJq8zjRqimF73q/0eY6MeX2AZsyu0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB4951
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_113415_454915_0935BA3B 
X-CRM114-Status: GOOD (  14.76  )
X-Spam-Score: -1.7 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.141 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.8 UPPERCASE_50_75        message body is 50-75% uppercase
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
Cc: "anup@brainfault.org" <anup@brainfault.org>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "hch@lst.de" <hch@lst.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Atish Patra <Atish.Patra@wdc.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

T24gVHVlLCAyMDE5LTEyLTAzIGF0IDAzOjQ5ICswMDAwLCBBbnVwIFBhdGVsIHdyb3RlOg0KPiBX
ZSBoYXZlIGtjb25maWcgb3B0aW9uIGZvciBRRU1VIHZpcnQgbWFjaGluZSBzbyBsZXQncyBlbmFi
bGUgaXQNCj4gaW4gUlYzMiBhbmQgUlY2NCBkZWZjb25maWdzLiBBbHNvLCB3ZSByZW1vdmUgdmFy
aW91cyBWSVJUSU8gY29uZmlncw0KPiBmcm9tIFJWMzIgYW5kIFJWNjQgZGVmY29uZmlncyBiZWNh
dXNlIHRoZXNlIGFyZSBub3cgc2VsZWN0ZWQgYnkNCj4gUUVNVSB2aXJ0IG1hY2hpbmUga2NvbmZp
ZyBvcHRpb24uDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBBbnVwIFBhdGVsIDxhbnVwLnBhdGVsQHdk
Yy5jb20+DQo+IFJldmlld2VkLWJ5OiBBdGlzaCBQYXRyYSA8YXRpc2gucGF0cmFAd2RjLmNvbT4N
Cj4gUmV2aWV3ZWQtYnk6IFBhbG1lciBEYWJiZWx0IDxwYWxtZXJkYWJiZWx0QGdvb2dsZS5jb20+
DQoNClJldmlld2VkLWJ5OiBBbGlzdGFpciBGcmFuY2lzIDxhbGlzdGFpci5mcmFuY2lzQHdkYy5j
b20+DQoNCkFsaXN0YWlyDQoNCj4gLS0tDQo+ICBhcmNoL3Jpc2N2L2NvbmZpZ3MvZGVmY29uZmln
ICAgICAgfCAxNSArLS0tLS0tLS0tLS0tLS0NCj4gIGFyY2gvcmlzY3YvY29uZmlncy9ydjMyX2Rl
ZmNvbmZpZyB8IDE2ICstLS0tLS0tLS0tLS0tLS0NCj4gIDIgZmlsZXMgY2hhbmdlZCwgMiBpbnNl
cnRpb25zKCspLCAyOSBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9hcmNoL3Jpc2N2
L2NvbmZpZ3MvZGVmY29uZmlnDQo+IGIvYXJjaC9yaXNjdi9jb25maWdzL2RlZmNvbmZpZw0KPiBp
bmRleCA0MjBhMGRiZWYzODYuLjI1MTVmZTY0MTdlMSAxMDA2NDQNCj4gLS0tIGEvYXJjaC9yaXNj
di9jb25maWdzL2RlZmNvbmZpZw0KPiArKysgYi9hcmNoL3Jpc2N2L2NvbmZpZ3MvZGVmY29uZmln
DQo+IEBAIC0xNSw2ICsxNSw3IEBAIENPTkZJR19CTEtfREVWX0lOSVRSRD15DQo+ICBDT05GSUdf
RVhQRVJUPXkNCj4gIENPTkZJR19CUEZfU1lTQ0FMTD15DQo+ICBDT05GSUdfU09DX1NJRklWRT15
DQo+ICtDT05GSUdfU09DX1ZJUlQ9eQ0KPiAgQ09ORklHX1NNUD15DQo+ICBDT05GSUdfTU9EVUxF
Uz15DQo+ICBDT05GSUdfTU9EVUxFX1VOTE9BRD15DQo+IEBAIC0zMCw3ICszMSw2IEBAIENPTkZJ
R19JUF9QTlBfQk9PVFA9eQ0KPiAgQ09ORklHX0lQX1BOUF9SQVJQPXkNCj4gIENPTkZJR19ORVRM
SU5LX0RJQUc9eQ0KPiAgQ09ORklHX05FVF85UD15DQo+IC1DT05GSUdfTkVUXzlQX1ZJUlRJTz15
DQo+ICBDT05GSUdfUENJPXkNCj4gIENPTkZJR19QQ0lFUE9SVEJVUz15DQo+ICBDT05GSUdfUENJ
X0hPU1RfR0VORVJJQz15DQo+IEBAIC0zOCwxNSArMzgsMTIgQEAgQ09ORklHX1BDSUVfWElMSU5Y
PXkNCj4gIENPTkZJR19ERVZUTVBGUz15DQo+ICBDT05GSUdfREVWVE1QRlNfTU9VTlQ9eQ0KPiAg
Q09ORklHX0JMS19ERVZfTE9PUD15DQo+IC1DT05GSUdfVklSVElPX0JMSz15DQo+ICBDT05GSUdf
QkxLX0RFVl9TRD15DQo+ICBDT05GSUdfQkxLX0RFVl9TUj15DQo+IC1DT05GSUdfU0NTSV9WSVJU
SU89eQ0KPiAgQ09ORklHX0FUQT15DQo+ICBDT05GSUdfU0FUQV9BSENJPXkNCj4gIENPTkZJR19T
QVRBX0FIQ0lfUExBVEZPUk09eQ0KPiAgQ09ORklHX05FVERFVklDRVM9eQ0KPiAtQ09ORklHX1ZJ
UlRJT19ORVQ9eQ0KPiAgQ09ORklHX01BQ0I9eQ0KPiAgQ09ORklHX0UxMDAwRT15DQo+ICBDT05G
SUdfUjgxNjk9eQ0KPiBAQCAtNTcsMTUgKzU0LDEyIEBAIENPTkZJR19TRVJJQUxfODI1MF9DT05T
T0xFPXkNCj4gIENPTkZJR19TRVJJQUxfT0ZfUExBVEZPUk09eQ0KPiAgQ09ORklHX1NFUklBTF9F
QVJMWUNPTl9SSVNDVl9TQkk9eQ0KPiAgQ09ORklHX0hWQ19SSVNDVl9TQkk9eQ0KPiAtQ09ORklH
X1ZJUlRJT19DT05TT0xFPXkNCj4gIENPTkZJR19IV19SQU5ET009eQ0KPiAtQ09ORklHX0hXX1JB
TkRPTV9WSVJUSU89eQ0KPiAgQ09ORklHX1NQST15DQo+ICBDT05GSUdfU1BJX1NJRklWRT15DQo+
ICAjIENPTkZJR19QVFBfMTU4OF9DTE9DSyBpcyBub3Qgc2V0DQo+ICBDT05GSUdfRFJNPXkNCj4g
IENPTkZJR19EUk1fUkFERU9OPXkNCj4gLUNPTkZJR19EUk1fVklSVElPX0dQVT15DQo+ICBDT05G
SUdfRlJBTUVCVUZGRVJfQ09OU09MRT15DQo+ICBDT05GSUdfVVNCPXkNCj4gIENPTkZJR19VU0Jf
WEhDSV9IQ0Q9eQ0KPiBAQCAtNzgsMTIgKzcyLDYgQEAgQ09ORklHX1VTQl9TVE9SQUdFPXkNCj4g
IENPTkZJR19VU0JfVUFTPXkNCj4gIENPTkZJR19NTUM9eQ0KPiAgQ09ORklHX01NQ19TUEk9eQ0K
PiAtQ09ORklHX1ZJUlRJT19QQ0k9eQ0KPiAtQ09ORklHX1ZJUlRJT19CQUxMT09OPXkNCj4gLUNP
TkZJR19WSVJUSU9fSU5QVVQ9eQ0KPiAtQ09ORklHX1ZJUlRJT19NTUlPPXkNCj4gLUNPTkZJR19S
UE1TR19DSEFSPXkNCj4gLUNPTkZJR19SUE1TR19WSVJUSU89eQ0KPiAgQ09ORklHX0VYVDRfRlM9
eQ0KPiAgQ09ORklHX0VYVDRfRlNfUE9TSVhfQUNMPXkNCj4gIENPTkZJR19BVVRPRlM0X0ZTPXkN
Cj4gQEAgLTk4LDYgKzg2LDUgQEAgQ09ORklHX05GU19WNF8yPXkNCj4gIENPTkZJR19ST09UX05G
Uz15DQo+ICBDT05GSUdfOVBfRlM9eQ0KPiAgQ09ORklHX0NSWVBUT19VU0VSX0FQSV9IQVNIPXkN
Cj4gLUNPTkZJR19DUllQVE9fREVWX1ZJUlRJTz15DQo+ICBDT05GSUdfUFJJTlRLX1RJTUU9eQ0K
PiAgIyBDT05GSUdfUkNVX1RSQUNFIGlzIG5vdCBzZXQNCj4gZGlmZiAtLWdpdCBhL2FyY2gvcmlz
Y3YvY29uZmlncy9ydjMyX2RlZmNvbmZpZw0KPiBiL2FyY2gvcmlzY3YvY29uZmlncy9ydjMyX2Rl
ZmNvbmZpZw0KPiBpbmRleCA4N2VlNmU2MmI2NGIuLmJiY2YxNGZkNmY0MCAxMDA2NDQNCj4gLS0t
IGEvYXJjaC9yaXNjdi9jb25maWdzL3J2MzJfZGVmY29uZmlnDQo+ICsrKyBiL2FyY2gvcmlzY3Yv
Y29uZmlncy9ydjMyX2RlZmNvbmZpZw0KPiBAQCAtMTQsNiArMTQsNyBAQCBDT05GSUdfQ0hFQ0tQ
T0lOVF9SRVNUT1JFPXkNCj4gIENPTkZJR19CTEtfREVWX0lOSVRSRD15DQo+ICBDT05GSUdfRVhQ
RVJUPXkNCj4gIENPTkZJR19CUEZfU1lTQ0FMTD15DQo+ICtDT05GSUdfU09DX1ZJUlQ9eQ0KPiAg
Q09ORklHX0FSQ0hfUlYzMkk9eQ0KPiAgQ09ORklHX1NNUD15DQo+ICBDT05GSUdfTU9EVUxFUz15
DQo+IEBAIC0zMCw3ICszMSw2IEBAIENPTkZJR19JUF9QTlBfQk9PVFA9eQ0KPiAgQ09ORklHX0lQ
X1BOUF9SQVJQPXkNCj4gIENPTkZJR19ORVRMSU5LX0RJQUc9eQ0KPiAgQ09ORklHX05FVF85UD15
DQo+IC1DT05GSUdfTkVUXzlQX1ZJUlRJTz15DQo+ICBDT05GSUdfUENJPXkNCj4gIENPTkZJR19Q
Q0lFUE9SVEJVUz15DQo+ICBDT05GSUdfUENJX0hPU1RfR0VORVJJQz15DQo+IEBAIC0zOCwxNSAr
MzgsMTIgQEAgQ09ORklHX1BDSUVfWElMSU5YPXkNCj4gIENPTkZJR19ERVZUTVBGUz15DQo+ICBD
T05GSUdfREVWVE1QRlNfTU9VTlQ9eQ0KPiAgQ09ORklHX0JMS19ERVZfTE9PUD15DQo+IC1DT05G
SUdfVklSVElPX0JMSz15DQo+ICBDT05GSUdfQkxLX0RFVl9TRD15DQo+ICBDT05GSUdfQkxLX0RF
Vl9TUj15DQo+IC1DT05GSUdfU0NTSV9WSVJUSU89eQ0KPiAgQ09ORklHX0FUQT15DQo+ICBDT05G
SUdfU0FUQV9BSENJPXkNCj4gIENPTkZJR19TQVRBX0FIQ0lfUExBVEZPUk09eQ0KPiAgQ09ORklH
X05FVERFVklDRVM9eQ0KPiAtQ09ORklHX1ZJUlRJT19ORVQ9eQ0KPiAgQ09ORklHX01BQ0I9eQ0K
PiAgQ09ORklHX0UxMDAwRT15DQo+ICBDT05GSUdfUjgxNjk9eQ0KPiBAQCAtNTcsMTMgKzU0LDEw
IEBAIENPTkZJR19TRVJJQUxfODI1MF9DT05TT0xFPXkNCj4gIENPTkZJR19TRVJJQUxfT0ZfUExB
VEZPUk09eQ0KPiAgQ09ORklHX1NFUklBTF9FQVJMWUNPTl9SSVNDVl9TQkk9eQ0KPiAgQ09ORklH
X0hWQ19SSVNDVl9TQkk9eQ0KPiAtQ09ORklHX1ZJUlRJT19DT05TT0xFPXkNCj4gIENPTkZJR19I
V19SQU5ET009eQ0KPiAtQ09ORklHX0hXX1JBTkRPTV9WSVJUSU89eQ0KPiAgIyBDT05GSUdfUFRQ
XzE1ODhfQ0xPQ0sgaXMgbm90IHNldA0KPiAgQ09ORklHX0RSTT15DQo+ICBDT05GSUdfRFJNX1JB
REVPTj15DQo+IC1DT05GSUdfRFJNX1ZJUlRJT19HUFU9eQ0KPiAgQ09ORklHX0ZSQU1FQlVGRkVS
X0NPTlNPTEU9eQ0KPiAgQ09ORklHX1VTQj15DQo+ICBDT05GSUdfVVNCX1hIQ0lfSENEPXkNCj4g
QEAgLTc0LDEzICs2OCw2IEBAIENPTkZJR19VU0JfT0hDSV9IQ0Q9eQ0KPiAgQ09ORklHX1VTQl9P
SENJX0hDRF9QTEFURk9STT15DQo+ICBDT05GSUdfVVNCX1NUT1JBR0U9eQ0KPiAgQ09ORklHX1VT
Ql9VQVM9eQ0KPiAtQ09ORklHX1ZJUlRJT19QQ0k9eQ0KPiAtQ09ORklHX1ZJUlRJT19CQUxMT09O
PXkNCj4gLUNPTkZJR19WSVJUSU9fSU5QVVQ9eQ0KPiAtQ09ORklHX1ZJUlRJT19NTUlPPXkNCj4g
LUNPTkZJR19SUE1TR19DSEFSPXkNCj4gLUNPTkZJR19SUE1TR19WSVJUSU89eQ0KPiAtQ09ORklH
X1NJRklWRV9QTElDPXkNCj4gIENPTkZJR19FWFQ0X0ZTPXkNCj4gIENPTkZJR19FWFQ0X0ZTX1BP
U0lYX0FDTD15DQo+ICBDT05GSUdfQVVUT0ZTNF9GUz15DQo+IEBAIC05NSw2ICs4Miw1IEBAIENP
TkZJR19ORlNfVjRfMj15DQo+ICBDT05GSUdfUk9PVF9ORlM9eQ0KPiAgQ09ORklHXzlQX0ZTPXkN
Cj4gIENPTkZJR19DUllQVE9fVVNFUl9BUElfSEFTSD15DQo+IC1DT05GSUdfQ1JZUFRPX0RFVl9W
SVJUSU89eQ0KPiAgQ09ORklHX1BSSU5US19USU1FPXkNCj4gICMgQ09ORklHX1JDVV9UUkFDRSBp
cyBub3Qgc2V0DQo=

