Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E5A61620DA
	for <lists+linux-riscv@lfdr.de>; Tue, 18 Feb 2020 07:25:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=L/Ddfhs1i2Hx2NZQD2rNIN14IJ2Djvb9/YcMi3xTALI=; b=jDdBL4w36oTF4TB1zEfkKc/dy
	a9lLKcNjMuipJdtD41YZJkKTWCubmK7tm98HAxYwuGQ4Q1Wl3E2aq968jTUCubzYsH/pVDZr9otHn
	8fzvR0soGbhXShvYyVUyyGenx7dbGeSx5lKBhPIireGT80Rt8w/z/2nFGbWrw8+scEWEC6MfV/TMD
	Js8h4byaX/tlcLGLLRq7UUdShmdtyraCxc02/nbuOVMTE+ryhalhQGkkx64IpKFMo/Ht/gAnEIPcA
	DYnXKFkRxwj9ML+/EIKVSlu77An4hFfkaMhdti/Ay97KbmK2XHYsnoeHwqpA7fbpnt/JYzt4cjwEv
	0ka6k/6Xw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3wK9-0004BM-2q; Tue, 18 Feb 2020 06:25:37 +0000
Received: from mail-eopbgr690061.outbound.protection.outlook.com
 ([40.107.69.61] helo=NAM04-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3wK5-0004Ae-G5
 for linux-riscv@lists.infradead.org; Tue, 18 Feb 2020 06:25:35 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AV+tjZjX/fQWEmlsIFFw7Jmb3OaNDNnKT7lM13SjRrq1S9+pgt1lNY31NIHqljca5A4Zpjtl9QHHb+D6c5zK8VOPgn3M5EDveXV0RniNXwZklnwrsPcLXftzxD+Ch9zLmIm4iQMGf4FXGMLk+KQyEtxNoctBRpYZq3Y+bVHmcfvLsiIphVbSmho4djFWepguqoN7lrOQxL7Jitp+JUQxYRjZSHJeaY1GeCGaqJfdkr7gFKJNAjmN6KFO0wi7LCrRrUG1eAQ5HMbhxJDQAhiqCG6R9S0WEqrZ4D+h93lZvjvremw3/yHAf1VxIxDDt/xoPBRD8bAsimKYWyW4tLZAKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=L/Ddfhs1i2Hx2NZQD2rNIN14IJ2Djvb9/YcMi3xTALI=;
 b=fB0ut5f8N9VHy7yR4hGLfn5wEVol1CnjLmSwchCeSrpaQ8eS9qvO8PT6QJtOh6FnDHbZgW9xjbNDcv0KRsbap6hkFhwHZbApX6Q5iR3HRyyQrtBMolZzoEQznVcpMxXiBMtGcWl5SdEGb52COBG2pVBiCc3p4awlhLgB/lXLjQHICREhs0RIytJ0t9jTsMaL+We5IU7v551qEBZFYD2AY8BkdonmLqFr52bk59OtoUPEB2g3zdPlRMGEhkEBsyqGb83RP7zCLcr6gOFgYKpU6hmpelhzHJlH0MRAOyDoT1i+38sAtL1VabtWve0tOSHHZfhzTXyxzpsw0AlPs5ctUg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=sifive.com; dmarc=pass action=none header.from=sifive.com;
 dkim=pass header.d=sifive.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=L/Ddfhs1i2Hx2NZQD2rNIN14IJ2Djvb9/YcMi3xTALI=;
 b=pt3blCZai3UWGKtlaBX92KTmUoVIaSdpkanokTpuxdYirdHp70k3a21VuYs+5uyS1RPyhJ+WC1GcKpQ2jMSe7/T7k63oftoenWu0miRjO4sFkt4O/l5ah1/lA85upXmYQ0Itx0OiHkjhosgs3RUTKIV42S5Vz4odEG6rn5t27RI=
Received: from CH2PR13MB3368.namprd13.prod.outlook.com (52.132.246.90) by
 CH2PR13MB3333.namprd13.prod.outlook.com (52.132.244.15) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2750.9; Tue, 18 Feb 2020 06:25:28 +0000
Received: from CH2PR13MB3368.namprd13.prod.outlook.com
 ([fe80::55a5:5dab:67de:b5d8]) by CH2PR13MB3368.namprd13.prod.outlook.com
 ([fe80::55a5:5dab:67de:b5d8%5]) with mapi id 15.20.2750.016; Tue, 18 Feb 2020
 06:25:28 +0000
From: Yash Shah <yash.shah@sifive.com>
To: Palmer Dabbelt <palmerdabbelt@google.com>
Subject: RE: [PATCH v4 2/2] riscv: Add support to determine no. of L2 cache
 way enabled
Thread-Topic: [PATCH v4 2/2] riscv: Add support to determine no. of L2 cache
 way enabled
Thread-Index: AQHVzQnpYxF/wak8m0+oehsxG26T4KgQLYuAgBCAWHA=
Date: Tue, 18 Feb 2020 06:25:27 +0000
Message-ID: <CH2PR13MB3368F10B94CA4FF8D569BD078C110@CH2PR13MB3368.namprd13.prod.outlook.com>
References: <1579247018-6720-3-git-send-email-yash.shah@sifive.com>
 <mhng-4c96b04e-5adc-4b88-8b39-715cd765e6a5@palmerdabbelt-glaptop1>
In-Reply-To: <mhng-4c96b04e-5adc-4b88-8b39-715cd765e6a5@palmerdabbelt-glaptop1>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=yash.shah@sifive.com; 
x-originating-ip: [49.248.91.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b23585ca-0632-4abb-e1fa-08d7b43b58c4
x-ms-traffictypediagnostic: CH2PR13MB3333:
x-ld-processed: 22f88e9d-ae0d-4ed9-b984-cdc9be1529f1,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CH2PR13MB333392E87C8E389FA769313E8C110@CH2PR13MB3333.namprd13.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-forefront-prvs: 031763BCAF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(346002)(366004)(396003)(376002)(39840400004)(199004)(189003)(6916009)(8676002)(4326008)(66446008)(64756008)(107886003)(8936002)(81166006)(81156014)(52536014)(5660300002)(66556008)(66476007)(7416002)(44832011)(33656002)(316002)(76116006)(53546011)(7696005)(9686003)(55236004)(186003)(478600001)(2906002)(6506007)(71200400001)(54906003)(66946007)(86362001)(26005)(55016002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR13MB3333;
 H:CH2PR13MB3368.namprd13.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: sifive.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: RQT3RiniUXK9fIckIAjk3tzia3nQOGI6XbM75vwdTR5OgB9Z9gxEfbI4NL21y//GaySf45a7ruz8KhOc05p3lfAGaAtzioQ9dKNDidEH/rKb6ZVFOQLSv9+z9Dd68vMjyFLRby/AJ75gyAotDocuo0Et3uwPMVdSvmMwUAa1p2VS8+QOXhHBTzJK1j8XwkYdUsKnkpfJBLcO4a/9N+rg2adcJ/jRGRaOvuUOHbjqZ2N38eDM/kLtOQGSJTJXecwg5fbvcH7E/aSBANDbla8wsa29p6XH7WUh8AV/RXyLZAsg+g7nvmwtIqdLoJM/B+zORqmQwH0ONKD6KtGsM/fYKIJWLqS0z6tZgApnbReV1R4w7hJtRltxGbK+hLF8OLpmwdvpPLKKQiTyJSMEFBD8nSyj+rT3/bmBsg+Z4UPlR2iCBGtx6Qe9dEY9BzvOga84
x-ms-exchange-antispam-messagedata: JZLTpFAFq52ha0vrah+/ktfxZc+3oH2xCldraErxrYQhK5ldc28aM7uRiAgylTRNnFhhRI8bAdI3odANJP1GrH2YFcByGSKJHV9rdaFLP4U7wR4z4Ycwet2ZRPCCT3H1IVhgg9RcNKjQu/Pjsx9NFw==
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: sifive.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b23585ca-0632-4abb-e1fa-08d7b43b58c4
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Feb 2020 06:25:28.0173 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 22f88e9d-ae0d-4ed9-b984-cdc9be1529f1
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kYTyjaVKOXst7VAhQ1wqdJ6f5pAsYkOe3YPT4y10jVDY7aui3eyAngbZLj06DNT5EcZh66/3iPUkmj1jXGJYgg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR13MB3333
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_222533_700680_E75AC86C 
X-CRM114-Status: GOOD (  14.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.69.61 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>,
 Sachin Ghadi <sachin.ghadi@sifive.com>, Greg KH <gregkh@linuxfoundation.org>,
 "anup@brainfault.org" <anup@brainfault.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "alexios.zavras@intel.com" <alexios.zavras@intel.com>,
 "Paul Walmsley \( Sifive\)" <paul.walmsley@sifive.com>,
 "tglx@linutronix.de" <tglx@linutronix.de>, "bp@suse.de" <bp@suse.de>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "allison@lohutok.net" <allison@lohutok.net>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBQYWxtZXIgRGFiYmVsdCA8cGFs
bWVyZGFiYmVsdEBnb29nbGUuY29tPg0KPiBTZW50OiAwNyBGZWJydWFyeSAyMDIwIDIzOjU0DQo+
IFRvOiBZYXNoIFNoYWggPHlhc2guc2hhaEBzaWZpdmUuY29tPg0KPiBDYzogUGF1bCBXYWxtc2xl
eSAoIFNpZml2ZSkgPHBhdWwud2FsbXNsZXlAc2lmaXZlLmNvbT47DQo+IGFvdUBlZWNzLmJlcmtl
bGV5LmVkdTsgYWxsaXNvbkBsb2h1dG9rLm5ldDsgYWxleGlvcy56YXZyYXNAaW50ZWwuY29tOw0K
PiBHcmVnIEtIIDxncmVna2hAbGludXhmb3VuZGF0aW9uLm9yZz47IHRnbHhAbGludXRyb25peC5k
ZTsgYnBAc3VzZS5kZTsNCj4gYW51cEBicmFpbmZhdWx0Lm9yZzsgbGludXgtcmlzY3ZAbGlzdHMu
aW5mcmFkZWFkLm9yZzsgbGludXgtDQo+IGtlcm5lbEB2Z2VyLmtlcm5lbC5vcmc7IFNhY2hpbiBH
aGFkaSA8c2FjaGluLmdoYWRpQHNpZml2ZS5jb20+OyBZYXNoIFNoYWgNCj4gPHlhc2guc2hhaEBz
aWZpdmUuY29tPg0KPiBTdWJqZWN0OiBSZTogW1BBVENIIHY0IDIvMl0gcmlzY3Y6IEFkZCBzdXBw
b3J0IHRvIGRldGVybWluZSBuby4gb2YgTDIgY2FjaGUNCj4gd2F5IGVuYWJsZWQNCj4gDQo+IE9u
IFRodSwgMTYgSmFuIDIwMjAgMjM6NDM6MzggUFNUICgtMDgwMCksIHlhc2guc2hhaEBzaWZpdmUu
Y29tIHdyb3RlOg0KPiA+IEluIG9yZGVyIHRvIGRldGVybWluZSB0aGUgbnVtYmVyIG9mIEwyIGNh
Y2hlIHdheXMgZW5hYmxlZCBhdCBydW50aW1lLA0KPiA+IGltcGxlbWVudCBhIHByaXZhdGUgYXR0
cmlidXRlICgibnVtYmVyX29mX3dheXNfZW5hYmxlZCIpLiBSZWFkaW5nIHRoaXMNCj4gPiBhdHRy
aWJ1dGUgcmV0dXJucyB0aGUgbnVtYmVyIG9mIGVuYWJsZWQgTDIgY2FjaGUgd2F5cyBhdCBydW50
aW1lLg0KPiA+DQo+ID4gVXNpbmcgcmlzY3Zfc2V0X2NhY2hlaW5mb19vcHMoKSBob29rIGEgY3Vz
dG9tIGZ1bmN0aW9uLCB0aGF0IHJldHVybnMNCj4gPiB0aGlzIHByaXZhdGUgYXR0cmlidXRlLCB0
byB0aGUgZ2VuZXJpYyBvcHMgc3RydWN0dXJlIHdoaWNoIGlzIHVzZWQgYnkNCj4gPiBjYWNoZV9n
ZXRfcHJpdl9ncm91cCgpIGluIGNhY2hlaW5mbyBmcmFtZXdvcmsuDQo+ID4NCj4gPiBTaWduZWQt
b2ZmLWJ5OiBZYXNoIFNoYWggPHlhc2guc2hhaEBzaWZpdmUuY29tPg0KPiA+IFJldmlld2VkLWJ5
OiBBbnVwIFBhdGVsIDxhbnVwQGJyYWluZmF1bHQub3JnPg0KPiA+IC0tLQ0KPiA+ICBkcml2ZXJz
L3NvYy9zaWZpdmUvc2lmaXZlX2wyX2NhY2hlLmMgfCAzOA0KPiA+ICsrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKw0KPiA+ICAxIGZpbGUgY2hhbmdlZCwgMzggaW5zZXJ0aW9ucygr
KQ0KPiA+DQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvc29jL3NpZml2ZS9zaWZpdmVfbDJfY2Fj
aGUuYw0KPiA+IGIvZHJpdmVycy9zb2Mvc2lmaXZlL3NpZml2ZV9sMl9jYWNoZS5jDQo+ID4gaW5k
ZXggYTUwNjkzOS4uM2ZiNjQwNCAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL3NvYy9zaWZpdmUv
c2lmaXZlX2wyX2NhY2hlLmMNCj4gPiArKysgYi9kcml2ZXJzL3NvYy9zaWZpdmUvc2lmaXZlX2wy
X2NhY2hlLmMNCj4gPiBAQCAtOSw2ICs5LDggQEANCj4gPiAgI2luY2x1ZGUgPGxpbnV4L2ludGVy
cnVwdC5oPg0KPiA+ICAjaW5jbHVkZSA8bGludXgvb2ZfaXJxLmg+DQo+ID4gICNpbmNsdWRlIDxs
aW51eC9vZl9hZGRyZXNzLmg+DQo+ID4gKyNpbmNsdWRlIDxsaW51eC9kZXZpY2UuaD4NCj4gPiAr
I2luY2x1ZGUgPGFzbS9jYWNoZWluZm8uaD4NCj4gPiAgI2luY2x1ZGUgPHNvYy9zaWZpdmUvc2lm
aXZlX2wyX2NhY2hlLmg+DQo+ID4NCj4gPiAgI2RlZmluZSBTSUZJVkVfTDJfRElSRUNDRklYX0xP
VyAweDEwMCBAQCAtMzEsNiArMzMsNyBAQA0KPiA+DQo+ID4gIHN0YXRpYyB2b2lkIF9faW9tZW0g
KmwyX2Jhc2U7DQo+ID4gIHN0YXRpYyBpbnQgZ19pcnFbU0lGSVZFX0wyX01BWF9FQ0NJTlRSXTsN
Cj4gPiArc3RhdGljIHN0cnVjdCByaXNjdl9jYWNoZWluZm9fb3BzIGwyX2NhY2hlX29wczsNCj4g
Pg0KPiA+ICBlbnVtIHsNCj4gPiAgCURJUl9DT1JSID0gMCwNCj4gPiBAQCAtMTA3LDYgKzExMCwz
OCBAQCBpbnQgdW5yZWdpc3Rlcl9zaWZpdmVfbDJfZXJyb3Jfbm90aWZpZXIoc3RydWN0DQo+ID4g
bm90aWZpZXJfYmxvY2sgKm5iKSAgfQ0KPiA+IEVYUE9SVF9TWU1CT0xfR1BMKHVucmVnaXN0ZXJf
c2lmaXZlX2wyX2Vycm9yX25vdGlmaWVyKTsNCj4gPg0KPiA+ICtzdGF0aWMgaW50IGwyX2xhcmdl
c3Rfd2F5ZW5hYmxlZCh2b2lkKSB7DQo+ID4gKwlyZXR1cm4gcmVhZGwobDJfYmFzZSArIFNJRklW
RV9MMl9XQVlFTkFCTEUpOyB9DQo+IA0KPiBXYXlFbmFibGUgaXMgOCBiaXRzLg0KDQpPaywgd2ls
bCBtYXNrIG91dCBhbmQgcmV0dXJuIHRoZSBsYXN0IDggYml0cyBvbmx5DQoNClRoYW5rcyBmb3Ig
eW91ciBjb21tZW50Lg0KDQotIFlhc2gNCg==

