Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B566ED0544
	for <lists+linux-riscv@lfdr.de>; Wed,  9 Oct 2019 03:34:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rRmuo7HV02iJ6eNxuOlwEKte9LSrN+Obcg/3SPn5apk=; b=gijy9ztyMhTRGC
	7rRVGwx1eEZgDAPSskw4M4ucImXJPq7qayHoM3aedvXWz3Noqa+VQCcWA7V0TfgESAerJMk8fambY
	MK7QXTPerqaYsjI6mlQma4cVaPyG+6jZD72jRfaNs7BIdmXDQ0EB0LmsmsBDUnbSPefkkgudXwNSg
	Y7scPo6YuNJYrlfdjzZ0Qr8+xjKDRZKEPL7x34ASauXPz9BhuNN/hFm+bA2PcPErRb3xDdDWqOQUE
	T1noOT4fyUxLv/f+PQxMVqDKMPklk8vnxmMmfnjNF8eo7ihB9OhEkhvoqBMF61je5J3nbwqpV25gN
	Z0B8w42CdAoL2Wkl06bQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iI0rx-0003hA-RR; Wed, 09 Oct 2019 01:34:25 +0000
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iI0rt-0003gS-RP
 for linux-riscv@lists.infradead.org; Wed, 09 Oct 2019 01:34:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1570584862; x=1602120862;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=yb8Ai3hyu9n0TTIvOqMpnhFWQzgc/BjUtbUT2wgbR2Q=;
 b=pUzCZtoc4zyXaZWj2o+YOvpRA0zp4ppPbmq/CXdFHOLOpIfA+NEuCmZ2
 jIaP89+Vkt8XxIhq0IniDpvlyI5WLn2brh704R2OKmj7uTrAbEsidEEQR
 bgpCcFDimXvj0OENDgxochPipPsQTxf6Vuq+qGNcrj3a7nN6rMSGQuq/O
 Nb/YJCRBoZ+pOrdMYuiGQK0GOw8KBC9SljBZbF1NljqZY9i+QZ4uWojCp
 7aww0yLgyAeDF9+lAqqy5vQIA8CPESA7sWEJH4/a+VNYtMsHSjYGBRJ+a
 KPwwdEGz3HkNk/XXbGmyAsF8bn1z/hRCtkK/hfinqpSARBVJVDqMLFdpn A==;
IronPort-SDR: itDu9c16gQECz0Uz/DLeGhIK5zEfVLY/OODh4kOEyRdHgZwHnc18tpPBukwhe3o/GyMlZ2d88F
 hvgaj3Mas6F2EMkQ9NcVcSqDm2R2sG/aQJAuwI6+PpHwrQ3dSXrn/J2R/eFkVsFbzVehajZfUp
 ruKhhZCw877KWRxtfQHsFiYNngnBhyGciwXU/nvIyKMR32KuKJf/8UVme1hbe55k9haYWOp3R+
 AQBVIWEZPexW6zXx1/AiBrStuDnOQ4SUEBkYB/MVS0vrspu3Drh3/Vu0uXr1GInm2BB25UlC78
 5nc=
X-IronPort-AV: E=Sophos;i="5.67,273,1566835200"; d="scan'208";a="120878841"
Received: from mail-bl2nam02lp2058.outbound.protection.outlook.com (HELO
 NAM02-BL2-obe.outbound.protection.outlook.com) ([104.47.38.58])
 by ob1.hgst.iphmx.com with ESMTP; 09 Oct 2019 09:34:20 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iN4L9DAqqKl1VlUyqKsmJLfvxBzAsty3446FrILLnvrxYRoV9NlyL7MCRkguoL2dXCu/iqCIt7Fs5cezYEqZ0kVfDAqUEus/CU+jGcYA0KN+b4SQa7GPUi2KX9/krMJHHS5gwbwE1k93nOapUvg6BdAcrP7n7eChGWNokyip/UqKNDB5Y7dKcy90suQib4iiQWADMum5ayO8A946UQ0+e52s8TVB5jKUgIZ6XPRpjY+7rJeWMRdtY7KE8egy8GXu9RL0q0mWBHJpwqXB53MA+1Bce9X/nKWmoRVBPsem+d5Vax41YcCPtyAGyj0iFqdkcBmv4fksHKxvO/ikZz3blQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yb8Ai3hyu9n0TTIvOqMpnhFWQzgc/BjUtbUT2wgbR2Q=;
 b=TeEMf5CAuIRVTJxcElEKhVRZjI4NAnTruCroEAo8ALrtHxt0rFgt1Nsqd6IqJoV860uxuCjX9++ASI8d0u3Lt/EtumOwW7BIsuL7glZTcbMbHbyRkYOObHlrFAoIMdJgjM0cdT1bbSG3jFsZWKneEYIziR+hoF3kJ0W5uuB55V1khBYk7TIAFhK0NuTmVQDpv7S1FdylTvotK/yI0WlNeSHIajeuQO9pT6/Gt2pwpK79xQnm2tVfazikwfKGV2f5lOIlXOkiV/PQUXdsjkyJb32YuWdOnUfD6ousRwpACKuMyqZdI/35OoNkhGiuJU6SPq62KneP6bFJ7mVGIpuChQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yb8Ai3hyu9n0TTIvOqMpnhFWQzgc/BjUtbUT2wgbR2Q=;
 b=otUNoFN0I/DUtynfD3GcHPUeGuK3YiEGhJwir0dhwh+83W0+dT7TbPZ0vBhiz1p0ZVxvEsJuVYwyP+mpnEk9L0qcYk1XHGfpsGr4ctDtfjXDSPiQe1EMGWZMc1yqT2WfO3wjP3aZ1sh8t+x0zvZ9lqYKZN4Nsofzod+LRqveowU=
Received: from BYAPR04MB3990.namprd04.prod.outlook.com (52.135.215.29) by
 BYAPR04MB5973.namprd04.prod.outlook.com (20.178.232.213) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2347.16; Wed, 9 Oct 2019 01:34:18 +0000
Received: from BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::51dd:7de9:c4a1:f9f3]) by BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::51dd:7de9:c4a1:f9f3%3]) with mapi id 15.20.2327.023; Wed, 9 Oct 2019
 01:34:18 +0000
From: Atish Patra <Atish.Patra@wdc.com>
To: "aurelien@aurel32.net" <aurelien@aurel32.net>,
 "david.abdurachmanov@sifive.com" <david.abdurachmanov@sifive.com>
Subject: Re: Fail to bring hart online on HiFive Unleashed
Thread-Topic: Fail to bring hart online on HiFive Unleashed
Thread-Index: AQHVeiY/IPem1KfqrUSNLdVXJdqXBadJi+eAgAJORoCAAbS9AIACN2gAgABniQCAAB1EAIAABRuAgAE+zYA=
Date: Wed, 9 Oct 2019 01:34:18 +0000
Message-ID: <dbdd3d63186abb230840b6e8698358afc01a62cb.camel@wdc.com>
References: <20191003200735.GA26760@aurel32.net>
 <73a9ba9fd6c29075209a61660137fb4b899f7ff2.camel@wdc.com>
 <20191005102541.GA22188@aurel32.net> <20191006122850.GA31831@aurel32.net>
 <71c93a62192eb4259ba7e868f7f9aa8ae066c6ad.camel@wdc.com>
 <20191008043014.GA23380@aurel32.net>
 <CAPSAq_znsoOrLsA_rPbmq=e2syZA9MA=-oaZbda5KRiZGG9yyg@mail.gmail.com>
 <97CDD0F9-32F9-4C14-8211-63454C5C379A@aurel32.net>
In-Reply-To: <97CDD0F9-32F9-4C14-8211-63454C5C379A@aurel32.net>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Atish.Patra@wdc.com; 
x-originating-ip: [199.255.44.250]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 248ea7e2-215b-4be5-7806-08d74c58cd8b
x-ms-office365-filtering-ht: Tenant
x-ms-traffictypediagnostic: BYAPR04MB5973:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <BYAPR04MB59732CE016C03726AC9E680AFA950@BYAPR04MB5973.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:2733;
x-forefront-prvs: 018577E36E
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(6029001)(4636009)(396003)(39860400002)(346002)(376002)(366004)(136003)(51914003)(54094003)(199004)(189003)(14454004)(5660300002)(186003)(66066001)(966005)(2906002)(66476007)(66556008)(64756008)(66446008)(66946007)(478600001)(99286004)(3846002)(71190400001)(102836004)(53546011)(76176011)(6506007)(71200400001)(6116002)(110136005)(316002)(26005)(76116006)(66574012)(256004)(14444005)(81156014)(81166006)(8936002)(8676002)(11346002)(86362001)(476003)(2616005)(36756003)(7736002)(229853002)(6246003)(446003)(118296001)(2501003)(25786009)(486006)(4326008)(6486002)(6436002)(6306002)(305945005)(6512007);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB5973;
 H:BYAPR04MB3990.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 1qLcOBuZASdMXNSxWHFJbeTQJtfPGYUVBgb3cNgw74yVk7QNDVPunt6MMQIXTzD49cETY2W/pMejCaaV72rXiAXQOvVNepKYQMPOlttubHQz3QgxZiMcwIra/u/cDJAByYg9lC5DpV1R8eXWVIOghMXZu1lP/JRTunoqxBbPGtWQAMBtqBfq5qX3P3+H4YVUK2Z8etiSavtJvZPN/OUCtul3FOAJ/3Of2LJaffdjB8RvcZP02QivJU8fMvxZhtHCwifDGxYXc9hSGM6UCUx4whgkMAU3LL80wMEAGGbFncx8LAIfEU3HmNucCeBTkdX+I9MmsYw6UaCq5wkrLoPvZW6HyDyuHURaStKZk3jusPfoQfSlbjmUvz/DDKDXMStfF3V3qvX6EskSLK/ffEXy42I5nPsqjdgLK0pj03I7W/GkWW7Qz+Nm0Fv6Dv9Trm1WtJCnD+uS7/QLWyc8W/repw==
x-ms-exchange-transport-forked: True
Content-ID: <7423E93BF558FE42BABF4AD818A73B33@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 248ea7e2-215b-4be5-7806-08d74c58cd8b
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Oct 2019 01:34:18.3328 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7k82Ofx2KCDniz/Wxg3CdPxFB1KZ4zPwNNOz0bm3mAEbzwrJvTzVpx18+Y/CyjYcbRbSKYSk1xA256SkueuznA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB5973
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_183421_975755_993CF7B7 
X-CRM114-Status: GOOD (  29.58  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.144 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

T24gVHVlLCAyMDE5LTEwLTA4IGF0IDA4OjMzICswMjAwLCBBdXJlbGllbiBKYXJubyB3cm90ZToN
Cj4gTGUgOCBvY3RvYnJlIDIwMTkgMDg6MTQ6NTggR01UKzAyOjAwLCBEYXZpZCBBYmR1cmFjaG1h
bm92IDwNCj4gZGF2aWQuYWJkdXJhY2htYW5vdkBzaWZpdmUuY29tPiBhIMOpY3JpdCA6DQo+ID4g
T24gVHVlLCBPY3QgOCwgMjAxOSBhdCA3OjMwIEFNIEF1cmVsaWVuIEphcm5vIDxhdXJlbGllbkBh
dXJlbDMyLm5ldA0KPiA+ID4NCj4gPiB3cm90ZToNCj4gPiA+IE9uIDIwMTktMTAtMDcgMjI6MTks
IEF0aXNoIFBhdHJhIHdyb3RlOg0KPiA+ID4gPiBUaGFua3MgZm9yIHRoZSBkZXRhaWxlZCBhbmFs
eXNpcy4gQ2FuIHlvdSBwbGVhc2Uga2VlcCBtZSBhbmQNCj4gPiA+ID4gZGF2aWQNCj4gPiBpbg0K
PiA+ID4gPiBjYyB3aGVuIHlvdSByZXBvcnQgdGhlIGlzc3VlIHRvIFUtYm9vdCA/DQo+ID4gPiAN
Cj4gPiA+IFllcC4gSSBoYXZlIHByb2dyZXNzZWQgYSBiaXQgb24gdGhhdCwgYW5kIG5vdyBJIGFt
IG5vdCBjb252aW5jZWQNCj4gPiA+IGl0J3MNCj4gPiBhbg0KPiA+ID4gVS1ib290IGlzc3VlLCBp
dCBjYW4gYmUgYSBHQ0MgaXNzdWUuDQo+ID4gPiANCj4gPiA+IEhlcmUgYXJlIHRoZSBjb25kaXRp
b25zIHRvIHJlcHJvZHVjZSB0aGUgYnVnOg0KPiA+ID4gLSBVLWJvb3QgcnVucyBvbiBoYXJ0IDEs
IDIgb3IgMw0KPiA+ID4gLSB0aGUgYXV0b2Jvb3QgcHJvY2VzcyBpcyBub3QgaW50ZXJydXB0ZWQN
Cj4gPiA+IC0gZXh0bGludXggaXMgdXNlZCB0byBib290IHRoZSBrZXJuZWwNCj4gPiA+IC0gYXJj
aC9yaXNjdi9saWIvYm9vdG0uYyBpcyBjb21waWxlZCB3aXRoIEdDQyA5ICh3b3JrcyBmaW5lIHdp
dGgNCj4gPiA+IEdDQw0KPiA+IDgpDQo+ID4gPiBXaGVuIHRoZSBwcm9ibGVtIGhhcHBlbnMsIHRo
ZSBtaXNzaW5nIGhhcnQgYWN0dWFsbHkgZW5kcyBpdHMNCj4gPiBleGVjdXRpb24NCj4gPiA+IGlu
IGFuIGlsbGVnYWwgaW5zdHJ1Y3Rpb24gdHJhcCB0cnlpbmcgdG8gZXhlY3V0ZSB0aGUgRkRUIChJ
IG9ubHkNCj4gPiBub3RpY2VkDQo+ID4gPiB0aGF0IHJlY2VudGx5IGFzIHRoZSBtZXNzYWdlIHdh
cyBoaWRkZW4gYnkgdGhlIHVzZSBvZg0KPiA+ID4gZWFybHljb249c2JpKToNCj4gPiA+IA0KPiA+
ID4gPiBTaUZpdmUgRlNCTDogICAgICAgMjAxOC0wMy0yMA0KPiA+ID4gPiBIaUZpdmUtVSBzZXJp
YWwgIzogMDAwMDAyNDYNCj4gPiA+ID4gDQo+ID4gPiA+IE9wZW5TQkkgdjAuNC01MC1nMzBmMDlm
YiAoT2N0ICA2IDIwMTkgMjE6NTg6MDUpDQo+ID4gPiA+ICAgIF9fX18gICAgICAgICAgICAgICAg
ICAgIF9fX19fIF9fX18gX19fX18NCj4gPiA+ID4gICAvIF9fIFwgICAgICAgICAgICAgICAgICAv
IF9fX198ICBfIFxfICAgX3wNCj4gPiA+ID4gIHwgfCAgfCB8XyBfXyAgIF9fXyBfIF9fIHwgKF9f
XyB8IHxfKSB8fCB8DQo+ID4gPiA+ICB8IHwgIHwgfCAnXyBcIC8gXyBcICdfIFwgXF9fXyBcfCAg
XyA8IHwgfA0KPiA+ID4gPiAgfCB8X198IHwgfF8pIHwgIF9fLyB8IHwgfF9fX18pIHwgfF8pIHx8
IHxfDQo+ID4gPiA+ICAgXF9fX18vfCAuX18vIFxfX198X3wgfF98X19fX18vfF9fX18vX19fX198
DQo+ID4gPiA+ICAgICAgICAgfCB8DQo+ID4gPiA+ICAgICAgICAgfF98DQo+ID4gPiA+IA0KPiA+
ID4gPiBQbGF0Zm9ybSBOYW1lICAgICAgICAgIDogU2lGaXZlIEZyZWVkb20gVTU0MA0KPiA+ID4g
PiBQbGF0Zm9ybSBIQVJUIEZlYXR1cmVzIDogUlY2NEFDREZJTVNVDQo+ID4gPiA+IFBsYXRmb3Jt
IE1heCBIQVJUcyAgICAgOiA1DQo+ID4gPiA+IEN1cnJlbnQgSGFydCAgICAgICAgICAgOiAyDQo+
ID4gPiA+IEZpcm13YXJlIEJhc2UgICAgICAgICAgOiAweDgwMDAwMDAwDQo+ID4gPiA+IEZpcm13
YXJlIFNpemUgICAgICAgICAgOiAxMDQgS0INCj4gPiA+ID4gUnVudGltZSBTQkkgVmVyc2lvbiAg
ICA6IDAuMg0KPiA+ID4gPiANCj4gPiA+ID4gUE1QMDogMHgwMDAwMDAwMDgwMDAwMDAwLTB4MDAw
MDAwMDA4MDAxZmZmZiAoQSkNCj4gPiA+ID4gUE1QMTogMHgwMDAwMDAwMDAwMDAwMDAwLTB4MDAw
MDAwN2ZmZmZmZmZmZiAoQSxSLFcsWCkNCj4gPiA+ID4gDQo+ID4gPiA+IA0KPiA+ID4gPiBVLUJv
b3QgMjAxOS4xMC1yYzQtMDAwMzctZ2RhYzUxZTlhYWYtZGlydHkgKE9jdCAwNiAyMDE5IC0NCj4g
PiA+ID4gMjE6NTY6NTENCj4gPiArMDAwMCkNCj4gPiA+ID4gQ1BVOiAgIHJ2NjRpbWFmZGMNCj4g
PiA+ID4gTW9kZWw6IFNpRml2ZSBIaUZpdmUgVW5sZWFzaGVkIEEwMA0KPiA+ID4gPiBEUkFNOiAg
OCBHaUINCj4gPiA+ID4gDQo+ID4gPiA+IE1NQzogICBzcGlAMTAwNTAwMDA6bW1jQDA6IDANCj4g
PiA+ID4gSW46ICAgIHNlcmlhbEAxMDAxMDAwMA0KPiA+ID4gPiBPdXQ6ICAgc2VyaWFsQDEwMDEw
MDAwDQo+ID4gPiA+IEVycjogICBzZXJpYWxAMTAwMTAwMDANCj4gPiA+ID4gTmV0OiAgIGV0aDA6
IGV0aGVybmV0QDEwMDkwMDAwDQo+ID4gPiA+IEhpdCBhbnkga2V5IHRvIHN0b3AgYXV0b2Jvb3Q6
ICAwDQo+ID4gPiA+IHN3aXRjaCB0byBwYXJ0aXRpb25zICMwLCBPSw0KPiA+ID4gPiBtbWMwIGlz
IGN1cnJlbnQgZGV2aWNlDQo+ID4gPiA+IFNjYW5uaW5nIG1tYyAwOjIuLi4NCj4gPiA+ID4gRm91
bmQgL2Jvb3QvZXh0bGludXgvZXh0bGludXguY29uZg0KPiA+ID4gPiBSZXRyaWV2aW5nIGZpbGU6
IC9ib290L2V4dGxpbnV4L2V4dGxpbnV4LmNvbmYNCj4gPiA+ID4gNTEwIGJ5dGVzIHJlYWQgaW4g
NSBtcyAoOTkuNiBLaUIvcykNCj4gPiA+ID4gVS1Cb290IG1lbnUNCj4gPiA+ID4gMTogICAgICBr
ZXJuZWwgNS4zLjQNCj4gPiA+ID4gMjogICAgICBEZWJpYW4gR05VL0xpbnV4IGtlcm5lbCA1LjMu
MC10cnVuay1yaXNjdjY0DQo+ID4gPiA+IEVudGVyIGNob2ljZTogMQ0KPiA+ID4gPiAxOiAgICAg
IGtlcm5lbCA1LjMuNA0KPiA+ID4gPiBSZXRyaWV2aW5nIGZpbGU6IC9ib290L3ZtbGludXgtNS4z
LjQNCj4gPiA+ID4gOTQ4NjA3NiBieXRlcyByZWFkIGluIDQ4MTMgbXMgKDEuOSBNaUIvcykNCj4g
PiA+ID4gYXBwZW5kOiByb290PS9kZXYvbW1jYmxrMHAyIHJ3IGNvbnNvbGU9dHR5U0lGMCByb290
d2FpdA0KPiA+ID4gPiBSZXRyaWV2aW5nIGZpbGU6IC9ib290L2hpZml2ZS11bmxlYXNoZWQtYTAw
LmR0Yg0KPiA+ID4gPiA2MDg4IGJ5dGVzIHJlYWQgaW4gNyBtcyAoODQ4LjYgS2lCL3MpDQo+ID4g
PiA+ICMjIEZsYXR0ZW5lZCBEZXZpY2UgVHJlZSBibG9iIGF0IDg4MDAwMDAwDQo+ID4gPiA+ICAg
IEJvb3RpbmcgdXNpbmcgdGhlIGZkdCBibG9iIGF0IDB4ODgwMDAwMDANCj4gPiA+ID4gICAgVXNp
bmcgRGV2aWNlIFRyZWUgaW4gcGxhY2UgYXQgMDAwMDAwMDA4ODAwMDAwMCwgZW5kDQo+ID4gMDAw
MDAwMDA4ODAwNDdjNw0KPiA+ID4gPiBTdGFydGluZyBrZXJuZWwgLi4uDQo+ID4gPiA+IA0KPiA+
ID4gPiBleGNlcHRpb24gY29kZTogMiAsIElsbGVnYWwgaW5zdHJ1Y3Rpb24gLCBlcGMgICwgcmEg
ODgwMDAwMDQNCj4gPiA4ODAwMDAwMA0KPiA+ID4gPiAjIyMgRVJST1IgIyMjIFBsZWFzZSBSRVNF
VCB0aGUgYm9hcmQgIyMjDQo+ID4gDQo+ID4gSSB0aGluaywgdGhhdCdzIHRoZSBzYW1lIGlzc3Vl
IEkgaGFkIChvciBzdGlsbCBoYXZlKSBhIHdlZWsgYWdvLg0KPiA+IEp1c3QgcmVtaW5kZXIgdGhh
dCBrZXJuZWwgNS4zIGludHJvZHVjZWQgYSA2NC1ieXRlIGhlYWRlciAodGh1cyBubw0KPiA+IG5l
ZWQgdG8gd3JhcCBrZXJuZWwpIGF0IGxlYXN0IGZvciBJbWFnZSB0YXJnZXQuIFRodXMgaXQncyBi
b290aQ0KPiA+IHRoYXQNCj4gPiBib290cyB0aGUga2VybmVsIG9uIFUtQm9vdCBzaWRlLg0KPiA+
IFRodXMgdGhlIDFzdCBpbnN0cnVjdGlvbiBvZiB0aGF0IGhlYWRlciBpcyAiaiAweDQwIiAodG8g
dGhlDQo+ID4gYmVnaW5uaW5nDQo+ID4gb2YgdGhlIGFjdHVhbCBrZXJuZWwpLiAgQW5kIDg4MDAw
MDA0IHdvdWxkIGRlZmluaXRlbHkgaG9sZCBhbg0KPiA+IGlsbGVnYWwNCj4gPiBpbnN0cnVjdGlv
bi4NCj4gPiANCj4gPiAwMDAwMDAwMDAwMDAwMDAwIDwuZGF0YT46DQo+ID4gMDogICAgICAgODFh
MCAgICAgICAgICAgICAgICAgICAgaiAgICAgICAweDQwDQo+ID4gMjogICAgICAgMDAwMCAgICAg
ICAgICAgICAgICAgICAgdW5pbXANCj4gPiA0OiAgICAgICAwMDAwICAgICAgICAgICAgICAgICAg
ICB1bmltcA0KPiA+IDY6ICAgICAgIDAxMDAgICAgICAgICAgICAgICAgICAgIG5vcA0KPiA+IFsu
Ll0NCj4gDQo+IEhtbSB0aGF0J3MgdGhlIGJlZ2lubmluZyBvZiB0aGUga2VybmVsIGNvZGUuIFRo
ZSBhZGRyZXNzIDg4MDAwMDA0DQo+IGFjdHVhbGx5IGNvcnJlc3BvbmRzIHRvIHRoZSBGRFQuIFNv
IHRoZSBoYXJ0IGVuZGluZyB1cCBpbiBhIHRyYXANCj4gYWN0dWFsbHkgdHJpZXMgdG8gYm9vdCB0
aGUgRkRUIGluc3RlYWQgb2YgdGhlIGtlcm5lbC4NCj4gDQoNCkRvIHlvdSBzZWUgdGhlIGlzc3Vl
IGlmIHlvdSBtYW51YWxseSB1c2UgYm9vdG0gaW5zdGVhZCBvZiBleHRsaW51eD8NCg0KPT4gYm9v
dG0gJGtlcm5lbF9hZGRyX3IgLSAkZmR0X2FkZHJfcg0KDQpUaGlzIGlzIGEgcHJvYmFibHkgbm90
IHJlbGF0ZWQgYXMgYm9vdG0gaXMganVtcGluZyB0byB3cm9uZyBsb2NhdGlvbg0KZm9yIHNvbWUg
cmVhc29uLiBIb3dldmVyLCBpdCBtYXkgYmUgd29ydGggYSBzaG90IGFzIGl0IGZpeGVzIGZkdA0K
Y29ycnVwdGlvbi4gDQoNCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL3BpcGVybWFpbC9saW51
eC1yaXNjdi8yMDE5LVNlcHRlbWJlci8wMDY5MTEuaHRtbA0KDQooSXQgaXMgYWxyZWFkeSBtZXJn
ZWQgaW4gNS40LXJjMikNCg0KPiBJIGhhdmVuJ3Qgc3BvdHRlZCBhbnkgb2J2aW91cyBkaWZmZXJl
bmNlcyBiZXR3ZWVuIGJvb3RtLm8gY29tcGlsZWQNCj4gd2l0aA0KPiBHQ0MgOCBhbmQgR0NDIDku
IEkgd29uZGVyIGlmIHRoZXJlIGlzIHNvbWVob3cgYSByYWNlIGNvbmRpdGlvbg0KPiBiZWNhdXNl
DQo+IHNvbWUgaGFydHMgYXJlIGFscmVhZHkgZXhlY3V0aW5nIGxpbnV4IHdoaWxlIHRoZSBsYXN0
IG9uZSBpcyBzdGlsbA0KPiBleGVjdXRpbmcgVS1ib290Lg0KPiANCg0KLS0gDQpSZWdhcmRzLA0K
QXRpc2gNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxp
bnV4LXJpc2N2IG1haWxpbmcgbGlzdApsaW51eC1yaXNjdkBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcmlzY3YK
