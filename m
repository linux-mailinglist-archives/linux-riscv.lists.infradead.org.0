Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BCC3118076
	for <lists+linux-riscv@lfdr.de>; Tue, 10 Dec 2019 07:30:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-ID:Content-Type:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/lOAaq5Ly+oCFMPHj9awA2iaQfi5bN51W8AbdSJ6tDI=; b=M1zrxFrpRhA56Dx3i7ufNuINh
	ntg7EC2c3lpNMOWMcq8lHXsMmV1woYaI6Fea42m0cCyLMtybDo1nqzKOejRJkjUpWU14KS/NIBfLt
	CyAifcsJ77ejYpxnhrVXyJkgqoa+0AMBNx4HRrTtEVHTiyuZkwWhQTSxMqFWwR8HHZ/KMPpqSVzyi
	4dVh7MqK0t6EZah0WewmQ3zmWaAvDfe4/Y915N/WvMK80jBaGcy9/A4xeyyPnbOm9zRkxP3BxEXWy
	4eB6tFHgYatzSoB/cwcPk5ZjSDNTZvtgSV9Va4EJ7WIbVATVrHlrea+dPnkyoL+Jjkx1OgSbj1P8m
	F0mIboWjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieZ2R-0002ic-HP; Tue, 10 Dec 2019 06:30:27 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieZ2N-0002gq-MV
 for linux-riscv@lists.infradead.org; Tue, 10 Dec 2019 06:30:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1575959423; x=1607495423;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=/lOAaq5Ly+oCFMPHj9awA2iaQfi5bN51W8AbdSJ6tDI=;
 b=HxDAxBK1E3tfIBVwFfEBm1UaeqOkYA3YZVWoA4xU1JytyTKkWGvx1dDB
 G9jD4rMTejt7LqJ+7dnoRO5pR0pI6TKfbiUqdksEyD+nzGjqbSk/tLu0R
 jCH8sR9cJAdDarziWxFq6TECiAPXq0UQSyDjpdXDOGxNlDEU4u/tQC8Yp
 3a+l2ZZrY9Ja1PxzhEbT680B68t7t2lqWBw31BMTlMI82esyoV6Awq38x
 tLbgyWGQ+RzLOKW7/iTYyaJfBLTYybG8a5Mw++QeNdv/kWxdlULBGmQWA
 JBGnQxw/plC7SwxXHr7bhaVze4wz0LRXkhUny26OX7GZy+suPzusGzuRR w==;
IronPort-SDR: z19yxgtNvvePU7r84bFejZK1NuRVimlKXCnUHgLCjeVzdex3514s4J+8tWjvk6x1N1XPHaElzD
 fhu2alv7Rjc/cBeeA4oVyjXHCDFw53+PFoF60up37G080ewNVFcIY+QiavTn65Grfb0CvbG6r/
 jGhC2gZrfvlLB3k+e/gXa+ArssWOw8S6rRgKwzJH+UDZNADy7erpvZNcd7HMyqTdwIg75EThcJ
 kubR065wa0ykaLHwZCGvdGstwFiwooOj3gTEMpHo73LCxD5s29vkChI3XhDggcNCglM4aDJbLB
 YYc=
X-IronPort-AV: E=Sophos;i="5.69,298,1571673600"; d="scan'208";a="126591537"
Received: from mail-sn1nam04lp2057.outbound.protection.outlook.com (HELO
 NAM04-SN1-obe.outbound.protection.outlook.com) ([104.47.44.57])
 by ob1.hgst.iphmx.com with ESMTP; 10 Dec 2019 14:30:16 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cvbM/ZEwQowiuaEfUSbWXqCatQXsKa4ry7jkTssn7lmJ5J653NkK49vLXh3GhhrvDz23ARMKMwigt2tTcwV5QXyGmLQi5g/OHfA/QN5Kc9redOhB4saC9ZM8dbJC44dhDP/cpDvHXY+eXzm+DjSZiMw4MpMpXil36mVMs01kR0r38MfcYIovNRMZ7FZDdr8yYwlkaCKYtK8ZESjEmgJB0XzYt6YvbNHBaNktgHDjA1RTW1Msz6f3QT7/QpTi/jvGJgNXnNsqwYjr8PZ/gSn6vjgsLRDiqMki8mBKrJTN5/1DU/nK1g96XcHs6eltv+LCERW1oKDwoOHOtOsw2HWLMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/lOAaq5Ly+oCFMPHj9awA2iaQfi5bN51W8AbdSJ6tDI=;
 b=TfuIJQ4+WmuJgNZNAx/vwqbPtArq1frA6BATZcSaVvOBsKBhm5L3wao//JBOOCYxpDcgYc4HGBH0MW/1DLHTg315oir+0e9rn1oxi5eiFb43jzj8svo3SBwydOdpS28W/iT7KXG1OKW5frhBgIVXRauxoohavtb/gSyYF3hdDmHdA8sW5AN2u23goihCjh5nEGZGqyHh2VUREqfQyUgXmWRGLM0rFzb62g+wJzEhtJ+keqXvWclgDoWKS9jRS/h8VQCG0IV/IBiahDzDNLdXJy5Umk128mfh7yzHQ+GwhtNROZZwIyGiIMi74bIWP/O+KaOf7lOf4ERSHIBUlSmUoA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/lOAaq5Ly+oCFMPHj9awA2iaQfi5bN51W8AbdSJ6tDI=;
 b=DaH0rflGhcCKQ452tf42akwUvXKsIBig2oECzWZUHy88+tGcjV7quxILUnU0A/QvcVIeD7SzsY0TWwm+Pr24N9kCXZVQ65+JNihCS4+i3RO0zpYFTOVqBQIH3buuDyOyg7Ye3o4s/WveAg5l1hKIy+kYpDagLS14lkKrmW1WI9E=
Received: from BYAPR04MB3990.namprd04.prod.outlook.com (52.135.215.29) by
 BYAPR04MB5254.namprd04.prod.outlook.com (20.178.48.26) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2495.20; Tue, 10 Dec 2019 06:30:13 +0000
Received: from BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::1d22:29b6:df03:86f7]) by BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::1d22:29b6:df03:86f7%3]) with mapi id 15.20.2516.018; Tue, 10 Dec 2019
 06:30:13 +0000
From: Atish Patra <Atish.Patra@wdc.com>
To: "maz@kernel.org" <maz@kernel.org>
Subject: Re: [PATCH] irqchip/sifive-plic: Add support for multiple PLICs
Thread-Topic: [PATCH] irqchip/sifive-plic: Add support for multiple PLICs
Thread-Index: AQHVq92W2nDI7XTAjkKidHPMzXPLSaes2IaAgAYWSwA=
Date: Tue, 10 Dec 2019 06:30:13 +0000
Message-ID: <4d0a8176e56bb70c4e3ee446d6a7313b2cd69d82.camel@wdc.com>
References: <20191206023156.24732-1-atish.patra@wdc.com>
 <1839bf9ef91de2358a7e8ecade361f7a@www.loen.fr>
In-Reply-To: <1839bf9ef91de2358a7e8ecade361f7a@www.loen.fr>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Atish.Patra@wdc.com; 
x-originating-ip: [2601:641:500:3bd0:dad8:b06b:ee8b:9add]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 0fac52c2-2450-41ea-d993-08d77d3a6a16
x-ms-traffictypediagnostic: BYAPR04MB5254:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR04MB52542DEEB63F9165637E62D5FA5B0@BYAPR04MB5254.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 02475B2A01
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(376002)(346002)(366004)(39860400002)(396003)(136003)(199004)(189003)(51914003)(229853002)(4326008)(66556008)(54906003)(2906002)(5660300002)(76116006)(66476007)(86362001)(8676002)(8936002)(6916009)(81166006)(1730700003)(64756008)(5640700003)(66946007)(6506007)(118296001)(81156014)(71190400001)(305945005)(66446008)(6486002)(53546011)(2616005)(316002)(36756003)(478600001)(186003)(71200400001)(6512007);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB5254;
 H:BYAPR04MB3990.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: fxLZXuISvSlNmeGakzf7OvQ3VNMhJKSTHCliRJLOFqr9Ilv+9Cp+IcrrH3x65PQponysWB7NgDvyRKLGsfO2aoVWZGc6A+xRwglY5j1O+Eo7mmwhWFkK/nFc2WPPQbXddnlJxCwFsIfM8ZSiLI/XraYIpBw0LjKEyeqQfkvxm/3f6uZ/2xM10uPONwoqdf3Sf98AvQyhTB8fTuJRRFzCoi9JOhiC7gF42/ZGvhAD9rlA0KLzHKuQoZiX/inZBa+XJQoW2/XMDAsED+KeIII+kqyIUhk0Ohr+PJlXePy/sSaSmwIRJM8A9WlgMUu3IlItqEvaGEu96ZeXrfvC86o/hAxZJ/XFSlJsdktQ+ypCXU1NYvl8TcLprn78ov5gDIYhKI85RRRQzY69VcHi5ejecgHMtDYfMTVUU5KSxrvOobAPVwY+eNHCPJ7Ep9lOcrLHokhFrm3VRpr4uJTcLybceJT9xHhDUQ4y5BV7o/UUWGkD1JynDxSMZ6e9Y3N85+te
Content-Type: text/plain; charset="utf-8"
Content-ID: <9C39D6A718254D4FAAE0C79472A4AD43@namprd04.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0fac52c2-2450-41ea-d993-08d77d3a6a16
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Dec 2019 06:30:13.6522 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RbWvWY8Mvb4a9xxDRybXp45fvH/Iifdpkep4RNtuNNf+qrIuor6tNJfJ6tM8g5BPgIRlFnWFMKvoijvnnHCbkw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB5254
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_223023_794945_0052AFB7 
X-CRM114-Status: GOOD (  30.85  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.45 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "jason@lakedaemon.net" <jason@lakedaemon.net>,
 Anup Patel <Anup.Patel@wdc.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "palmer@dabbelt.com" <palmer@dabbelt.com>,
 "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "tglx@linutronix.de" <tglx@linutronix.de>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

T24gRnJpLCAyMDE5LTEyLTA2IGF0IDA5OjMyICswMDAwLCBNYXJjIFp5bmdpZXIgd3JvdGU6DQo+
IFtGaXhpbmcgUGFsbWVyJ3MgZW1haWwgYWRkcmVzc10NCj4gDQo+IE9uIDIwMTktMTItMDYgMDI6
MzEsIEF0aXNoIFBhdHJhIHdyb3RlOg0KPiA+IEN1cnJlbnQsIFBMSUMgZHJpdmVyIGNhbiBzdXBw
b3J0IG9ubHkgMSBQTElDIG9uIHRoZSBib2FyZC4gSG93ZXZlciwNCj4gPiB0aGVyZSBjYW4gYmUg
bXVsdGlwbGUgUExJQ3MgcHJlc2VudCBvbiBhIHR3byBzb2NrZXQgc3lzdGVtcyBpbiANCj4gPiBS
SVNDLVYuDQo+ID4gDQo+ID4gTW9kaWZ5IHRoZSBkcml2ZXIgc28gdGhhdCBlYWNoIFBMSUMgaGFu
ZGxlciBjYW4gaGF2ZSBhIGluZm9ybWF0aW9uDQo+ID4gYWJvdXQgaW5kaXZpZHVhbCBQTElDIHJl
Z2lzdGVycyBhbmQgYW4gaXJxZG9tYWluIGFzc29jaWF0ZWQgd2l0aA0KPiA+IGl0Lg0KPiA+IA0K
PiA+IFRlc3RlZCBvbiB0d28gc29ja2V0IFJJU0MtViBzeXN0ZW0gYmFzZWQgb24gVkNVMTE4IEZQ
R0EgY29ubmVjdGVkDQo+ID4gdmlhDQo+ID4gT21uaVh0ZW5kIHByb3RvY29sLg0KPiA+IA0KPiA+
IFNpZ25lZC1vZmYtYnk6IEF0aXNoIFBhdHJhIDxhdGlzaC5wYXRyYUB3ZGMuY29tPg0KPiA+IFNp
Z25lZC1vZmYtYnk6IEFudXAgUGF0ZWwgPGFudXAucGF0ZWxAd2RjLmNvbT4NCj4gDQo+IFRoZXJl
IHNlZW0gdG8gYmUgc29tZSBjb25mdXNpb24gaGVyZSBhYm91dCB3aG8gdGhlIGF1dGhvciBvZiB0
aGUNCj4gcGF0Y2ggDQo+IGlzLg0KPiBJZiB0aGlzIGlzIGEgY28tZGV2ZWxvcG1lbnQsIHBsZWFz
ZSB1c2UgdGhlIGFwcHJvcHJpYXRlIHRhZy4NCj4gDQoNCm9rLiBJIHdpbGwgZml4IHRoaXMgaW4g
dGhlIG5leHQgdmVyc2lvbi4NCg0KPiA+IC0tLQ0KPiA+ICBkcml2ZXJzL2lycWNoaXAvaXJxLXNp
Zml2ZS1wbGljLmMgfCA4MSANCj4gPiArKysrKysrKysrKysrKysrKysrLS0tLS0tLS0tLS0tDQo+
ID4gIDEgZmlsZSBjaGFuZ2VkLCA1MSBpbnNlcnRpb25zKCspLCAzMCBkZWxldGlvbnMoLSkNCj4g
PiANCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9pcnFjaGlwL2lycS1zaWZpdmUtcGxpYy5jDQo+
ID4gYi9kcml2ZXJzL2lycWNoaXAvaXJxLXNpZml2ZS1wbGljLmMNCj4gPiBpbmRleCBjNzJjMDM2
YWVhNzYuLmFlYTFmMmYwZjBkNSAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2lycWNoaXAvaXJx
LXNpZml2ZS1wbGljLmMNCj4gPiArKysgYi9kcml2ZXJzL2lycWNoaXAvaXJxLXNpZml2ZS1wbGlj
LmMNCj4gPiBAQCAtNTUsNyArNTUsMTEgQEANCj4gPiAgI2RlZmluZSAgICAgQ09OVEVYVF9USFJF
U0hPTEQJCTB4MDANCj4gPiAgI2RlZmluZSAgICAgQ09OVEVYVF9DTEFJTQkJMHgwNA0KPiA+IA0K
PiA+IC1zdGF0aWMgdm9pZCBfX2lvbWVtICpwbGljX3JlZ3M7DQo+ID4gK3N0cnVjdCBwbGljX2h3
IHsNCj4gPiArCXN0cnVjdCBjcHVtYXNrIGxtYXNrOw0KPiA+ICsJc3RydWN0IGlycV9kb21haW4g
KmlycWRvbWFpbjsNCj4gPiArCXZvaWQgX19pb21lbSAqcmVnczsNCj4gPiArfTsNCj4gDQo+IFRo
ZSAnX2h3JyBzdWZmaXggaXMgYSBiaXQgdW5mb3J0dW5hdGUsIGFzIHRoZXJlIGlzIG1vc3RseSBT
Vw0KPiBjb25zdHJ1Y3RzDQo+IGluIHRoaXMgc3RydWN0dXJlLiBNYXliZSBzb21ldGhpbmcgbW9y
ZSBnZW5lcmFsIGxpa2UgJ2NvbnRleHQnIHdvdWxkDQo+IGJlIG1vcmUgYXBwcm9wcmlhdGUuDQo+
IA0KDQpTdXJlLiBJIHdpbGwgcmVuYW1lIGl0IHRvIHNvbWV0aGluZyBtb3JlIG1lYW5pbmdmdWwu
DQoNCj4gPiAgc3RydWN0IHBsaWNfaGFuZGxlciB7DQo+ID4gIAlib29sCQkJcHJlc2VudDsNCj4g
PiBAQCAtNjYsNiArNzAsNyBAQCBzdHJ1Y3QgcGxpY19oYW5kbGVyIHsNCj4gPiAgCSAqLw0KPiA+
ICAJcmF3X3NwaW5sb2NrX3QJCWVuYWJsZV9sb2NrOw0KPiA+ICAJdm9pZCBfX2lvbWVtCQkqZW5h
YmxlX2Jhc2U7DQo+ID4gKwlzdHJ1Y3QgcGxpY19odwkJKmh3Ow0KPiA+ICB9Ow0KPiA+ICBzdGF0
aWMgREVGSU5FX1BFUl9DUFUoc3RydWN0IHBsaWNfaGFuZGxlciwgcGxpY19oYW5kbGVycyk7DQo+
ID4gDQo+ID4gQEAgLTg0LDMxICs4OSw0MCBAQCBzdGF0aWMgaW5saW5lIHZvaWQgcGxpY190b2dn
bGUoc3RydWN0DQo+ID4gcGxpY19oYW5kbGVyICpoYW5kbGVyLA0KPiA+ICB9DQo+ID4gDQo+ID4g
IHN0YXRpYyBpbmxpbmUgdm9pZCBwbGljX2lycV90b2dnbGUoY29uc3Qgc3RydWN0IGNwdW1hc2sg
Km1hc2ssDQo+ID4gLQkJCQkgICBpbnQgaHdpcnEsIGludCBlbmFibGUpDQo+ID4gKwkJCQkgICBz
dHJ1Y3QgaXJxX2RhdGEgKmQsIGludCBlbmFibGUpDQo+ID4gIHsNCj4gPiAgCWludCBjcHU7DQo+
ID4gKwlzdHJ1Y3QgcGxpY19odyAqaHcgPSBkLT5kb21haW4tPmhvc3RfZGF0YTsNCj4gDQo+IFRo
ZSB1c3VhbCBjb25zdHJ1Y3QgaXMgdG8gdHJhbnNmZXIgdGhlIGRvbWFpbi0+aG9zdF9kYXRhIHBv
aW50ZXIgdG8NCj4gdGhlIGlycV9kYXRhLT5jaGlwX2RhdGEgcG9pbnRlciBhdCBtYXAoKSB0aW1l
LCB1c2luZyANCj4gaXJxX3NldF9jaGlwX2RhdGEoKS4NCj4gDQo+IFlvdSBjYW4gdGhlbiByZXRy
aWV2ZSB0aGUgcG9pbnRlciB3aXRoIGlycV9nZXRfY2hpcF9kYXRhKCksIGFuZCBzYXZlDQo+IHlv
dXJzZWx2ZXMgc29tZSBwb2ludGVyIGNoYXNpbmcuDQo+IA0KDQpTdXJlLiBJIHdpbGwgZG8gdGhh
dC4NCg0KPiA+IC0Jd3JpdGVsKGVuYWJsZSwgcGxpY19yZWdzICsgUFJJT1JJVFlfQkFTRSArIGh3
aXJxICogDQo+ID4gUFJJT1JJVFlfUEVSX0lEKTsNCj4gPiArCXdyaXRlbChlbmFibGUsIGh3LT5y
ZWdzICsgUFJJT1JJVFlfQkFTRSArIGQtPmh3aXJxICogDQo+ID4gUFJJT1JJVFlfUEVSX0lEKTsN
Cj4gPiAgCWZvcl9lYWNoX2NwdShjcHUsIG1hc2spIHsNCj4gPiAgCQlzdHJ1Y3QgcGxpY19oYW5k
bGVyICpoYW5kbGVyID0NCj4gPiBwZXJfY3B1X3B0cigmcGxpY19oYW5kbGVycywgY3B1KTsNCj4g
PiANCj4gPiAtCQlpZiAoaGFuZGxlci0+cHJlc2VudCkNCj4gPiAtCQkJcGxpY190b2dnbGUoaGFu
ZGxlciwgaHdpcnEsIGVuYWJsZSk7DQo+ID4gKwkJaWYgKGhhbmRsZXItPnByZXNlbnQgJiYNCj4g
PiArCQkgICAgY3B1bWFza190ZXN0X2NwdShjcHUsICZoYW5kbGVyLT5ody0+bG1hc2spKQ0KPiA+
ICsJCQlwbGljX3RvZ2dsZShoYW5kbGVyLCBkLT5od2lycSwgZW5hYmxlKTsNCj4gPiAgCX0NCj4g
PiAgfQ0KPiA+IA0KPiA+ICBzdGF0aWMgdm9pZCBwbGljX2lycV9lbmFibGUoc3RydWN0IGlycV9k
YXRhICpkKQ0KPiA+ICB7DQo+ID4gLQl1bnNpZ25lZCBpbnQgY3B1ID0NCj4gPiBjcHVtYXNrX2Fu
eV9hbmQoaXJxX2RhdGFfZ2V0X2FmZmluaXR5X21hc2soZCksDQo+ID4gLQkJCQkJICAgY3B1X29u
bGluZV9tYXNrKTsNCj4gPiArCXN0cnVjdCBjcHVtYXNrIGFtYXNrOw0KPiA+ICsJdW5zaWduZWQg
aW50IGNwdTsNCj4gPiArCXN0cnVjdCBwbGljX2h3ICpodyA9IGQtPmRvbWFpbi0+aG9zdF9kYXRh
Ow0KPiA+ICsNCj4gPiArCWNwdW1hc2tfYW5kKCZhbWFzaywgJmh3LT5sbWFzaywgY3B1X29ubGlu
ZV9tYXNrKTsNCj4gPiArCWNwdSA9IGNwdW1hc2tfYW55X2FuZChpcnFfZGF0YV9nZXRfYWZmaW5p
dHlfbWFzayhkKSwNCj4gPiArCQkJCQkgICAmYW1hc2spOw0KPiA+ICAJaWYgKFdBUk5fT05fT05D
RShjcHUgPj0gbnJfY3B1X2lkcykpDQo+ID4gIAkJcmV0dXJuOw0KPiA+IC0JcGxpY19pcnFfdG9n
Z2xlKGNwdW1hc2tfb2YoY3B1KSwgZC0+aHdpcnEsIDEpOw0KPiA+ICsJcGxpY19pcnFfdG9nZ2xl
KGNwdW1hc2tfb2YoY3B1KSwgZCwgMSk7DQo+ID4gIH0NCj4gPiANCj4gPiAgc3RhdGljIHZvaWQg
cGxpY19pcnFfZGlzYWJsZShzdHJ1Y3QgaXJxX2RhdGEgKmQpDQo+ID4gIHsNCj4gPiAtCXBsaWNf
aXJxX3RvZ2dsZShjcHVfcG9zc2libGVfbWFzaywgZC0+aHdpcnEsIDApOw0KPiA+ICsJc3RydWN0
IHBsaWNfaHcgKmh3ID0gZC0+ZG9tYWluLT5ob3N0X2RhdGE7DQo+ID4gKw0KPiA+ICsJcGxpY19p
cnFfdG9nZ2xlKCZody0+bG1hc2ssIGQsIDApOw0KPiA+ICB9DQo+ID4gDQo+ID4gICNpZmRlZiBD
T05GSUdfU01QDQo+ID4gQEAgLTExNiwxOCArMTMwLDIyIEBAIHN0YXRpYyBpbnQgcGxpY19zZXRf
YWZmaW5pdHkoc3RydWN0IGlycV9kYXRhIA0KPiA+ICpkLA0KPiA+ICAJCQkgICAgIGNvbnN0IHN0
cnVjdCBjcHVtYXNrICptYXNrX3ZhbCwgYm9vbA0KPiA+IGZvcmNlKQ0KPiA+ICB7DQo+ID4gIAl1
bnNpZ25lZCBpbnQgY3B1Ow0KPiA+ICsJc3RydWN0IGNwdW1hc2sgYW1hc2s7DQo+ID4gKwlzdHJ1
Y3QgcGxpY19odyAqaHcgPSBkLT5kb21haW4tPmhvc3RfZGF0YTsNCj4gPiArDQo+ID4gKwljcHVt
YXNrX2FuZCgmYW1hc2ssICZody0+bG1hc2ssIG1hc2tfdmFsKTsNCj4gDQo+IFNvIHRoaXMgbWVh
bnMgdGhhdCBhbiBpbnRlcnJ1cHQgY2Fubm90IG1vdmUgYmV0d2VlbiBzb2NrZXRzPw0KDQpVbmZv
cnR1bmF0ZWx5LCB0aGF0J3MgY29ycmVjdCBmb3IgdGhlIGZpcnN0IHZlcnNpb24gb2YgdGhlIGV4
cGVyaW1lbnRhbA0KcGxhdGZvcm0uIEhvcGVmdWxseSwgZnV0dXJlIHBsYXRmb3JtcyB3aWxsIGhh
dmUgYmV0dGVyIHN1cHBvcnQuDQoNCj4gSG93IGlzIHRoYXQgZ29pbmcgdG8gd29yayB3aXRoIENQ
VSBob3RwbHVnPyBUaGlzIHNlZW1zIGxpa2UNCj4gYSBwcmV0dHkgYmFkIHJlc3RyaWN0aW9uIGZv
ciBhbnl0aGluZyBidXQgdGhlIG1vc3QgYmFzaWMNCj4gZXhwZXJpbWVudGFsIHBsYXRmb3JtLg0K
PiANCj4gPiAgCWlmIChmb3JjZSkNCj4gPiAtCQljcHUgPSBjcHVtYXNrX2ZpcnN0KG1hc2tfdmFs
KTsNCj4gPiArCQljcHUgPSBjcHVtYXNrX2ZpcnN0KCZhbWFzayk7DQo+ID4gIAllbHNlDQo+ID4g
LQkJY3B1ID0gY3B1bWFza19hbnlfYW5kKG1hc2tfdmFsLCBjcHVfb25saW5lX21hc2spOw0KPiA+
ICsJCWNwdSA9IGNwdW1hc2tfYW55X2FuZCgmYW1hc2ssIGNwdV9vbmxpbmVfbWFzayk7DQo+ID4g
DQo+ID4gIAlpZiAoY3B1ID49IG5yX2NwdV9pZHMpDQo+ID4gIAkJcmV0dXJuIC1FSU5WQUw7DQo+
ID4gDQo+ID4gIAlpZiAoIWlycWRfaXJxX2Rpc2FibGVkKGQpKSB7DQo+ID4gLQkJcGxpY19pcnFf
dG9nZ2xlKGNwdV9wb3NzaWJsZV9tYXNrLCBkLT5od2lycSwgMCk7DQo+ID4gLQkJcGxpY19pcnFf
dG9nZ2xlKGNwdW1hc2tfb2YoY3B1KSwgZC0+aHdpcnEsIDEpOw0KPiA+ICsJCXBsaWNfaXJxX3Rv
Z2dsZSgmaHctPmxtYXNrLCBkLCAwKTsNCj4gPiArCQlwbGljX2lycV90b2dnbGUoY3B1bWFza19v
ZihjcHUpLCBkLCAxKTsNCj4gPiAgCX0NCj4gPiANCj4gPiAgCWlycV9kYXRhX3VwZGF0ZV9lZmZl
Y3RpdmVfYWZmaW5pdHkoZCwgY3B1bWFza19vZihjcHUpKTsNCj4gPiBAQCAtMTYzLDggKzE4MSw2
IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgaXJxX2RvbWFpbl9vcHMgDQo+ID4gcGxpY19pcnFkb21h
aW5fb3BzID0gew0KPiA+ICAJLnhsYXRlCQk9IGlycV9kb21haW5feGxhdGVfb25lY2VsbCwNCj4g
PiAgfTsNCj4gPiANCj4gPiAtc3RhdGljIHN0cnVjdCBpcnFfZG9tYWluICpwbGljX2lycWRvbWFp
bjsNCj4gPiAtDQo+ID4gIC8qDQo+ID4gICAqIEhhbmRsaW5nIGFuIGludGVycnVwdCBpcyBhIHR3
by1zdGVwIHByb2Nlc3M6IGZpcnN0IHlvdSBjbGFpbQ0KPiA+IHRoZQ0KPiA+IGludGVycnVwdA0K
PiA+ICAgKiBieSByZWFkaW5nIHRoZSBjbGFpbSByZWdpc3RlciwgdGhlbiB5b3UgY29tcGxldGUg
dGhlIGludGVycnVwdA0KPiA+IGJ5IA0KPiA+IHdyaXRpbmcNCj4gPiBAQCAtMTgxLDcgKzE5Nyw3
IEBAIHN0YXRpYyB2b2lkIHBsaWNfaGFuZGxlX2lycShzdHJ1Y3QgcHRfcmVncw0KPiA+ICpyZWdz
KQ0KPiA+IA0KPiA+ICAJY3NyX2NsZWFyKHNpZSwgU0lFX1NFSUUpOw0KPiA+ICAJd2hpbGUgKCho
d2lycSA9IHJlYWRsKGNsYWltKSkpIHsNCj4gPiAtCQlpbnQgaXJxID0gaXJxX2ZpbmRfbWFwcGlu
ZyhwbGljX2lycWRvbWFpbiwgaHdpcnEpOw0KPiA+ICsJCWludCBpcnEgPSBpcnFfZmluZF9tYXBw
aW5nKGhhbmRsZXItPmh3LT5pcnFkb21haW4sDQo+ID4gaHdpcnEpOw0KPiA+IA0KPiA+ICAJCWlm
ICh1bmxpa2VseShpcnEgPD0gMCkpDQo+ID4gIAkJCXByX3dhcm5fcmF0ZWxpbWl0ZWQoImNhbid0
IGZpbmQgbWFwcGluZyBmb3INCj4gPiBod2lycSAlbHVcbiIsDQo+ID4gQEAgLTIxMiwxNSArMjI4
LDE3IEBAIHN0YXRpYyBpbnQgX19pbml0IHBsaWNfaW5pdChzdHJ1Y3QNCj4gPiBkZXZpY2Vfbm9k
ZSANCj4gPiAqbm9kZSwNCj4gPiAgew0KPiA+ICAJaW50IGVycm9yID0gMCwgbnJfY29udGV4dHMs
IG5yX2hhbmRsZXJzID0gMCwgaTsNCj4gPiAgCXUzMiBucl9pcnFzOw0KPiA+ICsJc3RydWN0IHBs
aWNfaHcgKmh3Ow0KPiA+IA0KPiA+IC0JaWYgKHBsaWNfcmVncykgew0KPiA+IC0JCXByX3dhcm4o
IlBMSUMgYWxyZWFkeSBwcmVzZW50LlxuIik7DQo+ID4gLQkJcmV0dXJuIC1FTlhJTzsNCj4gPiAt
CX0NCj4gPiArCWh3ID0ga3phbGxvYyhzaXplb2YoKmh3KSwgR0ZQX0tFUk5FTCk7DQo+ID4gKwlp
ZiAoIWh3KQ0KPiA+ICsJCXJldHVybiAtRU5PTUVNOw0KPiA+IA0KPiA+IC0JcGxpY19yZWdzID0g
b2ZfaW9tYXAobm9kZSwgMCk7DQo+ID4gLQlpZiAoV0FSTl9PTighcGxpY19yZWdzKSkNCj4gPiAt
CQlyZXR1cm4gLUVJTzsNCj4gPiArCWh3LT5yZWdzID0gb2ZfaW9tYXAobm9kZSwgMCk7DQo+ID4g
KwlpZiAoV0FSTl9PTighaHctPnJlZ3MpKSB7DQo+ID4gKwkJZXJyb3IgPSAtRUlPOw0KPiA+ICsJ
CWdvdG8gb3V0X2ZyZWVodzsNCj4gPiArCX0NCj4gPiANCj4gPiAgCWVycm9yID0gLUVJTlZBTDsN
Cj4gPiAgCW9mX3Byb3BlcnR5X3JlYWRfdTMyKG5vZGUsICJyaXNjdixuZGV2IiwgJm5yX2lycXMp
Ow0KPiA+IEBAIC0yMzQsOSArMjUyLDkgQEAgc3RhdGljIGludCBfX2luaXQgcGxpY19pbml0KHN0
cnVjdCBkZXZpY2Vfbm9kZSANCj4gPiAqbm9kZSwNCj4gPiAgCQlnb3RvIG91dF9pb3VubWFwOw0K
PiA+IA0KPiA+ICAJZXJyb3IgPSAtRU5PTUVNOw0KPiA+IC0JcGxpY19pcnFkb21haW4gPSBpcnFf
ZG9tYWluX2FkZF9saW5lYXIobm9kZSwgbnJfaXJxcyArIDEsDQo+ID4gLQkJCSZwbGljX2lycWRv
bWFpbl9vcHMsIE5VTEwpOw0KPiA+IC0JaWYgKFdBUk5fT04oIXBsaWNfaXJxZG9tYWluKSkNCj4g
PiArCWh3LT5pcnFkb21haW4gPSBpcnFfZG9tYWluX2FkZF9saW5lYXIobm9kZSwgbnJfaXJxcyAr
IDEsDQo+ID4gKwkJCSZwbGljX2lycWRvbWFpbl9vcHMsIGh3KTsNCj4gPiArCWlmIChXQVJOX09O
KCFody0+aXJxZG9tYWluKSkNCj4gPiAgCQlnb3RvIG91dF9pb3VubWFwOw0KPiA+IA0KPiA+ICAJ
Zm9yIChpID0gMDsgaSA8IG5yX2NvbnRleHRzOyBpKyspIHsNCj4gPiBAQCAtMjc5LDEzICsyOTcs
MTQgQEAgc3RhdGljIGludCBfX2luaXQgcGxpY19pbml0KHN0cnVjdA0KPiA+IGRldmljZV9ub2Rl
IA0KPiA+ICpub2RlLA0KPiA+ICAJCQlnb3RvIGRvbmU7DQo+ID4gIAkJfQ0KPiA+IA0KPiA+ICsJ
CWNwdW1hc2tfc2V0X2NwdShjcHUsICZody0+bG1hc2spOw0KPiA+ICAJCWhhbmRsZXItPnByZXNl
bnQgPSB0cnVlOw0KPiA+ICAJCWhhbmRsZXItPmhhcnRfYmFzZSA9DQo+ID4gLQkJCXBsaWNfcmVn
cyArIENPTlRFWFRfQkFTRSArIGkgKg0KPiA+IENPTlRFWFRfUEVSX0hBUlQ7DQo+ID4gKwkJCWh3
LT5yZWdzICsgQ09OVEVYVF9CQVNFICsgaSAqIENPTlRFWFRfUEVSX0hBUlQ7DQo+ID4gIAkJcmF3
X3NwaW5fbG9ja19pbml0KCZoYW5kbGVyLT5lbmFibGVfbG9jayk7DQo+ID4gIAkJaGFuZGxlci0+
ZW5hYmxlX2Jhc2UgPQ0KPiA+IC0JCQlwbGljX3JlZ3MgKyBFTkFCTEVfQkFTRSArIGkgKiBFTkFC
TEVfUEVSX0hBUlQ7DQo+ID4gLQ0KPiA+ICsJCQlody0+cmVncyArIEVOQUJMRV9CQVNFICsgaSAq
IEVOQUJMRV9QRVJfSEFSVDsNCj4gPiArCQloYW5kbGVyLT5odyA9IGh3Ow0KPiA+ICBkb25lOg0K
PiA+ICAJCS8qIHByaW9yaXR5IG11c3QgYmUgPiB0aHJlc2hvbGQgdG8gdHJpZ2dlciBhbiBpbnRl
cnJ1cHQNCj4gPiAqLw0KPiA+ICAJCXdyaXRlbCh0aHJlc2hvbGQsIGhhbmRsZXItPmhhcnRfYmFz
ZSArDQo+ID4gQ09OVEVYVF9USFJFU0hPTEQpOw0KPiA+IEBAIC0zMDAsNyArMzE5LDkgQEAgc3Rh
dGljIGludCBfX2luaXQgcGxpY19pbml0KHN0cnVjdCBkZXZpY2Vfbm9kZSANCj4gPiAqbm9kZSwN
Cj4gPiAgCXJldHVybiAwOw0KPiA+IA0KPiA+ICBvdXRfaW91bm1hcDoNCj4gPiAtCWlvdW5tYXAo
cGxpY19yZWdzKTsNCj4gPiArCWlvdW5tYXAoaHctPnJlZ3MpOw0KPiA+ICtvdXRfZnJlZWh3Og0K
PiA+ICsJa2ZyZWUoaHcpOw0KPiA+ICAJcmV0dXJuIGVycm9yOw0KPiA+ICB9DQo+IA0KPiBUaGlz
IG90aGVyd2lzZSBzZWVtcyBsaWtlIGEgdmVyeSBzdHJhaWdodGZvcndhcmQgY2hhbmdlLg0KPiAN
ClRoYW5rcyBmb3IgdGhlIHJldmlldy4gSSB3aWxsIHNlbmQgb3V0IHRoZSB2MiBzb29uLg0KDQo+
IFRoYW5rcywNCj4gDQo+ICAgICAgICAgIE0uDQoNCi0tIA0KUmVnYXJkcywNCkF0aXNoDQo=

