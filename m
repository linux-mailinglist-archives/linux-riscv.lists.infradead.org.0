Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26C30163BB1
	for <lists+linux-riscv@lfdr.de>; Wed, 19 Feb 2020 04:56:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=zq0gMWiivnFZ8GVllBaPAKHz3ODuc4JRmtx0IHEy7tg=; b=Iiu2KWwtyT1ZVreFxHWO3uoYG
	Uh07vOVjzBGwFso1VJVblLd8D+iz9Nil/MhEbYN8e4mxt6FDdeEmnvFfqfoXRDUVLr78RiTqWvsbR
	0y15rhFnrrzlZ4iQY0zkOpYeLKh+tw/3qSGLA2IBtZg3+5A+fk0pyt1f7mFvxbwS12CMx1p3bXkVL
	+eJDC8qGRCXICinWZ26pnapoEnS6yaLAAMi06BvdU/qhJ2hWfpuAeU8WyFqAeMsRCoBQWUab3S8wO
	0xRTgWe91J0TEC5EdtkdOHzvK6NoEs+d+NuUxFfN0H8SrvmMYRdojRFdD/mY/HJjz/YmoZ7Py/LkX
	MVdxi35MA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4GTQ-00050B-2V; Wed, 19 Feb 2020 03:56:32 +0000
Received: from mail-bn7nam10on2047.outbound.protection.outlook.com
 ([40.107.92.47] helo=NAM10-BN7-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4GTM-0004zU-2x
 for linux-riscv@lists.infradead.org; Wed, 19 Feb 2020 03:56:30 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jj6PPIehTOsyJV9ZwjPELaPuGX/5zNex4KtvEDY9EVfSkg84C4mCOs7wmLP7brsOn5btSicvZWO0O5kKq0GbN0tuPoV5Iz5RESY2pzsa1Alx0Do5hE0PhpxVGt3nAv+2F8Tf+h4VIQ/FkOxKinwx3GCc0Lp0jLs7TrEIoCzkcAcAcbt5l+f7wtTFV/hC3mJ3WtrBdbKd8tZbOcR4bSJy14cK4/Q1Tiig7p42Sk6yWs0DlD2Yr3Jr138PFuit4sM2iNX2P86pfCmkG2wpluGIhvJXkX/iZDY0Am0PJWmciGFNAvKtjZd6m9c9onEyEl3q6LPDFXnxIP6buRdyKNgI6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zq0gMWiivnFZ8GVllBaPAKHz3ODuc4JRmtx0IHEy7tg=;
 b=jvSteHfpFXCZLA1eJsv5E6V2YQauyeFLTVX4BHx+Ob02CNJpedzFGpygsk1b0pHyKecYdFYVbECDYL1zUyT/RN3wCH4AOz+w1Z16mrRT9K5ukViPLTOeuewpxNVvuYiRbBwnnTvgp3bAq53lgwVqtXG82ylqnKAg3ybBkXSGBaXUt/7W3bN67PdSKyPk45Z6jLYecLt6BEuiQbF0PtjCiss+EFB2azSOs8CHkQjS1OVKeJ5HP/NNJ9CKnkujXW5dvXnoYS2YTM2xMe08JxMun1AwTacmzNsYNrkgnSuMpHWZ0aziLC4O58UtSyxBsSykMRiQFEIX5q72z8IO8Fio6Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=sifive.com; dmarc=pass action=none header.from=sifive.com;
 dkim=pass header.d=sifive.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zq0gMWiivnFZ8GVllBaPAKHz3ODuc4JRmtx0IHEy7tg=;
 b=Om4hIBf/hYqe5JEElzACRURVpIlmdv84dwEQy2WHA3kDuoqMbydiLBeB5xflxAXaRUWvyV/TP3eg5bz1GJMGaep0VgLuq/jRxBCclCgtWKWRqph/bvN/cdISO4/yJevkS8rF/uCrZ2EqUp4pxxeJgkr+PP7uolw61BMHAdLLZs0=
Received: from CH2PR13MB3368.namprd13.prod.outlook.com (52.132.246.90) by
 CH2PR13MB3704.namprd13.prod.outlook.com (20.180.15.151) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2750.9; Wed, 19 Feb 2020 03:56:22 +0000
Received: from CH2PR13MB3368.namprd13.prod.outlook.com
 ([fe80::55a5:5dab:67de:b5d8]) by CH2PR13MB3368.namprd13.prod.outlook.com
 ([fe80::55a5:5dab:67de:b5d8%5]) with mapi id 15.20.2750.016; Wed, 19 Feb 2020
 03:56:22 +0000
From: Yash Shah <yash.shah@sifive.com>
To: JaeJoon Jung <rgbi3307@gmail.com>
Subject: RE: [bug report] GPIO & Hierarchy IRQ support for HiFive Unleashed
Thread-Topic: [bug report] GPIO & Hierarchy IRQ support for HiFive Unleashed
Thread-Index: AQHV14ivX/FRhacFv0GKvkbGUecmyqgiAcuw
Date: Wed, 19 Feb 2020 03:56:21 +0000
Message-ID: <CH2PR13MB33684ED58B945BF678D508908C100@CH2PR13MB3368.namprd13.prod.outlook.com>
References: <CAHOvCC4y8x6_fBSAug3ecN+4QFiNJCooUt7Py9=J+NnBd4J8dQ@mail.gmail.com>
In-Reply-To: <CAHOvCC4y8x6_fBSAug3ecN+4QFiNJCooUt7Py9=J+NnBd4J8dQ@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=yash.shah@sifive.com; 
x-originating-ip: [114.143.65.226]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 464084df-591d-49c9-6ea8-08d7b4efaef4
x-ms-traffictypediagnostic: CH2PR13MB3704:
x-microsoft-antispam-prvs: <CH2PR13MB370405D4C7F1B360D62BB78C8C100@CH2PR13MB3704.namprd13.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0318501FAE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(6029001)(39850400004)(136003)(346002)(366004)(396003)(376002)(189003)(199004)(52536014)(5660300002)(9686003)(4326008)(33656002)(86362001)(7696005)(55016002)(44832011)(53546011)(6506007)(316002)(6916009)(186003)(26005)(71200400001)(81156014)(81166006)(478600001)(8676002)(4001150100001)(66476007)(64756008)(66946007)(8936002)(66556008)(2906002)(66446008)(76116006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR13MB3704;
 H:CH2PR13MB3368.namprd13.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: sifive.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: YY30XTbCeyEXIXkQc82qD2DMsszHRZCBQ/Caffmuu0+F5aXLmvF2XkXTcCUCJQj8dmjau+F2qi8G1t0qGDTQFqxmuutydD/0o6ZtntcnyQVTnEMS7pZihyOrl/zdBPzeVX7+12aTAeWS1PTa1dIHXu8vXx9t7EjDcj+sgNod+xaZdN9Q6lEwEKBNusab0sBAS+0HYv54jHFIBIXnihA5EyAIj78O7NND4CvlZyM1niM/Hv/rsMRAL/o3yb7IYmuy9vRKL5fkK3aSeH+6Mhvzx0nDILOT+Ti5wRW4tSw9+QnV7+lR1WFz2oI3bQtIn80jz01zW7R/k2Ckb6ejF6lLZFWkwZxiCVtc68+MUXYgmRFhK9DdtdMBg0VYbgXr9XBV78cqWsU1yaxwBu6gupIrYOZho2AFo0tsHzSoxGiPj8A7VyG2l7q/hWzq7NO1P/Qz
x-ms-exchange-antispam-messagedata: O3zbmzjL8TWel+oe/igg0RqiFeGTXMHRm1Ya1DIp5tvnJNfrvDyxrfDPjWFfcsF25SGBF4xgou7qJmWA4LQ3KhQ2+qx5mB0d4bEAPb0TniZS5Sg271nFUBAklQ/5EEgi5rr4ZtnFw18/JImlqh5WGQ==
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: sifive.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 464084df-591d-49c9-6ea8-08d7b4efaef4
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Feb 2020 03:56:22.0013 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 22f88e9d-ae0d-4ed9-b984-cdc9be1529f1
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: bM+YYFwFwkHbeYAMJQrNiXu+oDxaCg2jdYjaQyg9GS0HQRUgTlnoQyRLFsmnnx2s3g80UuYrnJClDMNGOkHckg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR13MB3704
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_195628_142797_A13688D9 
X-CRM114-Status: GOOD (  12.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.92.47 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-riscv <linux-riscv@lists.infradead.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBKYWVKb29uIEp1bmcgPHJnYmkz
MzA3QGdtYWlsLmNvbT4NCj4gU2VudDogMzAgSmFudWFyeSAyMDIwIDIxOjQ3DQo+IFRvOiBZYXNo
IFNoYWggPHlhc2guc2hhaEBzaWZpdmUuY29tPg0KPiBDYzogbGludXgtcmlzY3YgPGxpbnV4LXJp
c2N2QGxpc3RzLmluZnJhZGVhZC5vcmc+DQo+IFN1YmplY3Q6IFtidWcgcmVwb3J0XSBHUElPICYg
SGllcmFyY2h5IElSUSBzdXBwb3J0IGZvciBIaUZpdmUgVW5sZWFzaGVkDQo+IA0KPiBIZWxsbyBZ
YXNoIFNoYWgsDQo+IA0KPiBJIGFtIHRlc3RpbmcgdGhlIHlvdXIgcGF0Y2g6DQo+IFtQQVRDSCB2
NCAwLzZdIEdQSU8gJiBIaWVyYXJjaHkgSVJRIHN1cHBvcnQgZm9yIEhpRml2ZSBVbmxlYXNoZWQg
ZnJvbQ0KPiAyMDE5LTEyLTEwIDExOjExIFlhc2ggU2hhaA0KPiANCj4gSSBmb3VuZCBvdXQgdGhh
dCB5b3UgcmVwYWlyZWQgdGhlIGdlbmVyaWMgR1BJTyB1c2luZyBiZ3Bpb19pbml0KC4uLikgQVBJ
Lg0KPiBiZ3Bpb19pbml0KCkgaGFzIDkgcGFyYW1ldGVycywgYW5kIHRoZSBsYXN0IGlzIGZsYWdz
Lg0KPiBUaGUgZmxhZyBnZXR0aW5nIHRvIGJncGlvX2luaXQoKSBpcyBtdXN0IGJlIEJHUElPRl9S
RUFEX09VVFBVVF9SRUdfU0VULg0KPiANCj4gQmVjYXVzZSBGVTU0MCBHUElPcyBoYXZlIGRpZmZl
cmVudCBpbnB1dC9vdXRwdXQgcmVnaXN0ZXIsIElmIEdQSU8gZGlyZWN0aW9uDQo+IGlzIGlucHV0
KFNJRklWRV9HUElPX0lOUFVUX1ZBTCksIGl0IG11c3QgYmUgcmVhZCBpbnB1dA0KPiB2YWx1ZShT
SUZJVkVfR1BJT19JTlBVVF9FTikuDQo+IElmIEdQSU8gZGlyZWN0aW9uIGlzIG91dHB1dChTSUZJ
VkVfR1BJT19PVVRQVVRfVkFMKSwgaXQgbXVzdCBiZSByZWFkDQo+IG91dHB1dCB2YWx1ZShTSUZJ
VkVfR1BJT19PVVRQVVRfRU4pLg0KPiANCj4gSWYgVGhlIGZsYWcgaXMgMCwgR1BJTyBvdXRwdXQg
dmFsdWUgaXMgYmVpbmcgcmVzZXQgYW5kIHRoZSB2YWx1ZSBpcyByZWFkaW5nIDANCj4gYWx3YXlz
Lg0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3Bpby9ncGlvLXNpZml2ZS5jIGIvZHJpdmVy
cy9ncGlvL2dwaW8tc2lmaXZlLmMgaW5kZXgNCj4gMjNkNWUyMjY5NGQxLi4xZGUxYWY0NTJmY2Ig
MTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3Bpby9ncGlvLXNpZml2ZS5jDQo+ICsrKyBiL2RyaXZl
cnMvZ3Bpby9ncGlvLXNpZml2ZS5jDQo+IEBAIC0yMDYsNyArMjA2LDcgQEAgc3RhdGljIGludCBz
aWZpdmVfZ3Bpb19wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlDQo+ICpwZGV2KQ0KPiAgICAg
ICAgICAgICAgICAgICAgICAgICAgTlVMTCwNCj4gICAgICAgICAgICAgICAgICAgICAgICAgIGNo
aXAtPmJhc2UgKyBTSUZJVkVfR1BJT19PVVRQVVRfRU4sDQo+ICAgICAgICAgICAgICAgICAgICAg
ICAgICBjaGlwLT5iYXNlICsgU0lGSVZFX0dQSU9fSU5QVVRfRU4sDQo+IC0gICAgICAgICAgICAg
ICAgICAgICAgICAwKTsNCj4gKyAgICAgICAgICAgICAgICAgICAgICAgIEJHUElPRl9SRUFEX09V
VFBVVF9SRUdfU0VUKTsNCj4gICAgICAgICBpZiAocmV0KSB7DQo+ICAgICAgICAgICAgICAgICBk
ZXZfZXJyKGRldiwgInVuYWJsZSB0byBpbml0IGdlbmVyaWMgR1BJT1xuIik7DQo+ICAgICAgICAg
ICAgICAgICByZXR1cm4gcmV0Ow0KPiANCj4gWW91cnMsDQo+IEphZUpvb24gSnVuZw0KDQpUaGFu
a3MgZm9yIHRoZSBidWcgcmVwb3J0LiBJIHdpbGwgbG9vayBpbnRvIHRoaXMgYW5kIHNlbmQgYSBm
aXguDQoNCi0gWWFzaA0K

