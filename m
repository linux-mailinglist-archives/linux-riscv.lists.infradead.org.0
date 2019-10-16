Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 353EBD9BF0
	for <lists+linux-riscv@lfdr.de>; Wed, 16 Oct 2019 22:50:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8qUki2Vh0JSJIomo8zy/HvIR3r2O2l0ETj+SYy5u/qo=; b=Qkpa6DSaKlz8wS
	4eg4WjaiMyYdH5tAHCwJeH6nVCgPecI5pNWzD6M3O1BDlUI/38KSuFeukhpXRgim3LHK5IEdU0aEm
	3+U8jfCOp7MCjtnhxzQNIjoRNdwkKPN66/lAuDYP2He3T4J9NcXUSiIxn0WN20UDR1S3J3uDiU2n5
	Uhfo5r6ktfVN4SC64eNzd+PZ3dbhL0iBjZ7t0w/SC0cscwyDUy7TJqwvmTZP+feVivl2ajDptKmxb
	w8DovUtemTsznUgpsgG8xbI7UYwIER8f/UJVrvGO5V5OmOJ8SwGc2rE3q2Sr/Vr9KDbdvVJyDTURi
	6Ld+YoWIQA86GObaCmMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKqF0-0007DK-9O; Wed, 16 Oct 2019 20:49:54 +0000
Received: from mail-edgedd24.fraunhofer.de ([192.102.167.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKqEv-0007CG-JB
 for linux-riscv@lists.infradead.org; Wed, 16 Oct 2019 20:49:52 +0000
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2F3AADngKdd/xwBYJlmGQEBAQEBAQE?=
 =?us-ascii?q?BAQEBAQEBAQEBEQEBAQEBAQEBAQEBgXuCIGxUAR8SKgqEG4NKhTiHdX6YQoF?=
 =?us-ascii?q?nCQEBAQEBAQEBAQgjDAEBgSsBgxQCF4JlJDgTAgwBAQUBAQEBAQUEAgJphS0?=
 =?us-ascii?q?BC4QwLIENNwEBAQECASMRRQULAgEIGAICJgICAjAVEAIEDgWDI4JXHwEPrVp?=
 =?us-ascii?q?1gTKDeoZGBoEMKIwOgVk+gRGCXQcuPoQtLoJ3gl4EjTiCN4VdmAEDBAOBO2e?=
 =?us-ascii?q?HCo4RG4I6h0+EACyLDY4wiCSRQIFpI4FYcYM7UBAUgVkaiCmFekEBATGQJYE?=
 =?us-ascii?q?jAQE?=
X-IPAS-Result: =?us-ascii?q?A2F3AADngKdd/xwBYJlmGQEBAQEBAQEBAQEBAQEBAQEBE?=
 =?us-ascii?q?QEBAQEBAQEBAQEBgXuCIGxUAR8SKgqEG4NKhTiHdX6YQoFnCQEBAQEBAQEBA?=
 =?us-ascii?q?QgjDAEBgSsBgxQCF4JlJDgTAgwBAQUBAQEBAQUEAgJphS0BC4QwLIENNwEBA?=
 =?us-ascii?q?QECASMRRQULAgEIGAICJgICAjAVEAIEDgWDI4JXHwEPrVp1gTKDeoZGBoEMK?=
 =?us-ascii?q?IwOgVk+gRGCXQcuPoQtLoJ3gl4EjTiCN4VdmAEDBAOBO2eHCo4RG4I6h0+EA?=
 =?us-ascii?q?CyLDY4wiCSRQIFpI4FYcYM7UBAUgVkaiCmFekEBATGQJYEjAQE?=
X-IronPort-AV: E=Sophos;i="5.67,305,1566856800"; d="scan'208";a="27760087"
Received: from mail-mtaka28.fraunhofer.de ([153.96.1.28])
 by mail-edgeDD24.fraunhofer.de with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Oct 2019 22:49:40 +0200
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0CBAACYgaddfRBhWMBmGgEBAQEBAQE?=
 =?us-ascii?q?BAQMBAQEBEQEBAQICAQEBAYF7gwxUAR8SKgqEG4kCh3V+mEKBZwkBAwEBAQE?=
 =?us-ascii?q?BCCMMAQGBKwGDFAIXgwg4EwIMAQEEAQEBAgEFBBQBARY6hTQBC4VLAQEBAQI?=
 =?us-ascii?q?BIxFFBQsCAQgYAgImAgICMBUQAgQOBYMjglcgD61adYEyij4GgQwojWc+gRG?=
 =?us-ascii?q?CXQcuPoQtLoJ3gl4EjTiCN4VdmAEDBAOBO2eHCo4RG4I6h0+EACyLDY4wiCS?=
 =?us-ascii?q?RQIFpIYFZcYM7UBAUgVkaiCmFekEBAjCQJYEjAQE?=
X-IronPort-AV: E=Sophos;i="5.67,305,1566856800"; d="scan'208";a="20545310"
Received: from fgdemucivp01ltm.xch.fraunhofer.de (HELO
 FGDEMUCIMP11EXC.ads.fraunhofer.de) ([192.88.97.16])
 by mail-mtaKA28.fraunhofer.de with ESMTP/TLS/AES256-SHA;
 16 Oct 2019 22:49:40 +0200
Received: from FGDEMUCIMP01EXC.ads.fraunhofer.de ([10.80.232.40]) by
 FGDEMUCIMP11EXC.ads.fraunhofer.de ([10.80.232.42]) with mapi id
 14.03.0439.000; Wed, 16 Oct 2019 22:49:39 +0200
From: "Auer, Lukas" <lukas.auer@aisec.fraunhofer.de>
To: "aurelien@aurel32.net" <aurelien@aurel32.net>
Subject: Re: Fail to bring hart online on HiFive Unleashed
Thread-Topic: Fail to bring hart online on HiFive Unleashed
Thread-Index: AQHVeiZCDKtCCXFHhkKVjgWjDQPBDqdJamEAgAJORYCAAbS9AIACN2qAgABnhwCAAB1DAIAABRyAgAE+zgCAAsbxgIAH93KAgAAMQQCAAXh0gA==
Date: Wed, 16 Oct 2019 20:49:38 +0000
Message-ID: <6e42e45b9af6467bb72eb4880ae9bf6b5b4f67cd.camel@aisec.fraunhofer.de>
References: <73a9ba9fd6c29075209a61660137fb4b899f7ff2.camel@wdc.com>
 <20191005102541.GA22188@aurel32.net> <20191006122850.GA31831@aurel32.net>
 <71c93a62192eb4259ba7e868f7f9aa8ae066c6ad.camel@wdc.com>
 <20191008043014.GA23380@aurel32.net>
 <CAPSAq_znsoOrLsA_rPbmq=e2syZA9MA=-oaZbda5KRiZGG9yyg@mail.gmail.com>
 <97CDD0F9-32F9-4C14-8211-63454C5C379A@aurel32.net>
 <dbdd3d63186abb230840b6e8698358afc01a62cb.camel@wdc.com>
 <20191010195851.GA10676@aurel32.net>
 <f2a467d2dfd1828533fee8a8edf7eac51d8c1d84.camel@aisec.fraunhofer.de>
 <20191015222210.GA11794@aurel32.net>
In-Reply-To: <20191015222210.GA11794@aurel32.net>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.80.233.51]
x-tm-as-product-ver: SMEX-11.0.0.4179-8.200.1013-24972.000
x-tm-as-result: No--29.742900-8.000000-31
x-tm-as-user-approved-sender: No
x-tm-as-user-blocked-sender: No
Content-ID: <D5FE6D2D827BF04AB2E96A606100DBD6@xch.fraunhofer.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_134949_947317_FC4DBB79 
X-CRM114-Status: GOOD (  33.64  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.102.167.24 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "david.abdurachmanov@sifive.com" <david.abdurachmanov@sifive.com>,
 "Atish.Patra@wdc.com" <Atish.Patra@wdc.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

T24gV2VkLCAyMDE5LTEwLTE2IGF0IDAwOjIyICswMjAwLCBBdXJlbGllbiBKYXJubyB3cm90ZToN
Cj4gT24gMjAxOS0xMC0xNSAyMTozOCwgQXVlciwgTHVrYXMgd3JvdGU6DQo+ID4gT24gVGh1LCAy
MDE5LTEwLTEwIGF0IDIxOjU4ICswMjAwLCBBdXJlbGllbiBKYXJubyB3cm90ZToNCj4gPiA+IE9u
IDIwMTktMTAtMDkgMDE6MzQsIEF0aXNoIFBhdHJhIHdyb3RlOg0KPiA+ID4gPiBPbiBUdWUsIDIw
MTktMTAtMDggYXQgMDg6MzMgKzAyMDAsIEF1cmVsaWVuIEphcm5vIHdyb3RlOg0KPiA+ID4gPiA+
IExlIDggb2N0b2JyZSAyMDE5IDA4OjE0OjU4IEdNVCswMjowMCwgRGF2aWQgQWJkdXJhY2htYW5v
diA8DQo+ID4gPiA+ID4gZGF2aWQuYWJkdXJhY2htYW5vdkBzaWZpdmUuY29tPiBhIMOpY3JpdCA6
DQo+ID4gPiA+ID4gPiBPbiBUdWUsIE9jdCA4LCAyMDE5IGF0IDc6MzAgQU0gQXVyZWxpZW4gSmFy
bm8gPGF1cmVsaWVuQGF1cmVsMzIubmV0DQo+ID4gPiA+ID4gPiB3cm90ZToNCj4gPiA+ID4gPiA+
ID4gT24gMjAxOS0xMC0wNyAyMjoxOSwgQXRpc2ggUGF0cmEgd3JvdGU6DQo+ID4gPiA+ID4gPiA+
ID4gVGhhbmtzIGZvciB0aGUgZGV0YWlsZWQgYW5hbHlzaXMuIENhbiB5b3UgcGxlYXNlIGtlZXAg
bWUgYW5kDQo+ID4gPiA+ID4gPiA+ID4gZGF2aWQNCj4gPiA+ID4gPiA+IGluDQo+ID4gPiA+ID4g
PiA+ID4gY2Mgd2hlbiB5b3UgcmVwb3J0IHRoZSBpc3N1ZSB0byBVLWJvb3QgPw0KPiA+ID4gPiA+
ID4gPiANCj4gPiA+ID4gPiA+ID4gWWVwLiBJIGhhdmUgcHJvZ3Jlc3NlZCBhIGJpdCBvbiB0aGF0
LCBhbmQgbm93IEkgYW0gbm90IGNvbnZpbmNlZA0KPiA+ID4gPiA+ID4gPiBpdCdzDQo+ID4gPiA+
ID4gPiBhbg0KPiA+ID4gPiA+ID4gPiBVLWJvb3QgaXNzdWUsIGl0IGNhbiBiZSBhIEdDQyBpc3N1
ZS4NCj4gPiA+ID4gPiA+ID4gDQo+ID4gPiA+ID4gPiA+IEhlcmUgYXJlIHRoZSBjb25kaXRpb25z
IHRvIHJlcHJvZHVjZSB0aGUgYnVnOg0KPiA+ID4gPiA+ID4gPiAtIFUtYm9vdCBydW5zIG9uIGhh
cnQgMSwgMiBvciAzDQo+ID4gPiA+ID4gPiA+IC0gdGhlIGF1dG9ib290IHByb2Nlc3MgaXMgbm90
IGludGVycnVwdGVkDQo+ID4gPiA+ID4gPiA+IC0gZXh0bGludXggaXMgdXNlZCB0byBib290IHRo
ZSBrZXJuZWwNCj4gPiA+ID4gPiA+ID4gLSBhcmNoL3Jpc2N2L2xpYi9ib290bS5jIGlzIGNvbXBp
bGVkIHdpdGggR0NDIDkgKHdvcmtzIGZpbmUgd2l0aA0KPiA+ID4gPiA+ID4gPiBHQ0MNCj4gPiA+
ID4gPiA+IDgpDQo+ID4gPiA+ID4gPiA+IFdoZW4gdGhlIHByb2JsZW0gaGFwcGVucywgdGhlIG1p
c3NpbmcgaGFydCBhY3R1YWxseSBlbmRzIGl0cw0KPiA+ID4gPiA+ID4gZXhlY3V0aW9uDQo+ID4g
PiA+ID4gPiA+IGluIGFuIGlsbGVnYWwgaW5zdHJ1Y3Rpb24gdHJhcCB0cnlpbmcgdG8gZXhlY3V0
ZSB0aGUgRkRUIChJIG9ubHkNCj4gPiA+ID4gPiA+IG5vdGljZWQNCj4gPiA+ID4gPiA+ID4gdGhh
dCByZWNlbnRseSBhcyB0aGUgbWVzc2FnZSB3YXMgaGlkZGVuIGJ5IHRoZSB1c2Ugb2YNCj4gPiA+
ID4gPiA+ID4gZWFybHljb249c2JpKToNCj4gPiA+ID4gPiA+ID4gDQo+ID4gPiA+ID4gPiA+ID4g
U2lGaXZlIEZTQkw6ICAgICAgIDIwMTgtMDMtMjANCj4gPiA+ID4gPiA+ID4gPiBIaUZpdmUtVSBz
ZXJpYWwgIzogMDAwMDAyNDYNCj4gPiA+ID4gPiA+ID4gPiANCj4gPiA+ID4gPiA+ID4gPiBPcGVu
U0JJIHYwLjQtNTAtZzMwZjA5ZmIgKE9jdCAgNiAyMDE5IDIxOjU4OjA1KQ0KPiA+ID4gPiA+ID4g
PiA+ICAgIF9fX18gICAgICAgICAgICAgICAgICAgIF9fX19fIF9fX18gX19fX18NCj4gPiA+ID4g
PiA+ID4gPiAgIC8gX18gXCAgICAgICAgICAgICAgICAgIC8gX19fX3wgIF8gXF8gICBffA0KPiA+
ID4gPiA+ID4gPiA+ICB8IHwgIHwgfF8gX18gICBfX18gXyBfXyB8IChfX18gfCB8XykgfHwgfA0K
PiA+ID4gPiA+ID4gPiA+ICB8IHwgIHwgfCAnXyBcIC8gXyBcICdfIFwgXF9fXyBcfCAgXyA8IHwg
fA0KPiA+ID4gPiA+ID4gPiA+ICB8IHxfX3wgfCB8XykgfCAgX18vIHwgfCB8X19fXykgfCB8Xykg
fHwgfF8NCj4gPiA+ID4gPiA+ID4gPiAgIFxfX19fL3wgLl9fLyBcX19ffF98IHxffF9fX19fL3xf
X19fL19fX19ffA0KPiA+ID4gPiA+ID4gPiA+ICAgICAgICAgfCB8DQo+ID4gPiA+ID4gPiA+ID4g
ICAgICAgICB8X3wNCj4gPiA+ID4gPiA+ID4gPiANCj4gPiA+ID4gPiA+ID4gPiBQbGF0Zm9ybSBO
YW1lICAgICAgICAgIDogU2lGaXZlIEZyZWVkb20gVTU0MA0KPiA+ID4gPiA+ID4gPiA+IFBsYXRm
b3JtIEhBUlQgRmVhdHVyZXMgOiBSVjY0QUNERklNU1UNCj4gPiA+ID4gPiA+ID4gPiBQbGF0Zm9y
bSBNYXggSEFSVHMgICAgIDogNQ0KPiA+ID4gPiA+ID4gPiA+IEN1cnJlbnQgSGFydCAgICAgICAg
ICAgOiAyDQo+ID4gPiA+ID4gPiA+ID4gRmlybXdhcmUgQmFzZSAgICAgICAgICA6IDB4ODAwMDAw
MDANCj4gPiA+ID4gPiA+ID4gPiBGaXJtd2FyZSBTaXplICAgICAgICAgIDogMTA0IEtCDQo+ID4g
PiA+ID4gPiA+ID4gUnVudGltZSBTQkkgVmVyc2lvbiAgICA6IDAuMg0KPiA+ID4gPiA+ID4gPiA+
IA0KPiA+ID4gPiA+ID4gPiA+IFBNUDA6IDB4MDAwMDAwMDA4MDAwMDAwMC0weDAwMDAwMDAwODAw
MWZmZmYgKEEpDQo+ID4gPiA+ID4gPiA+ID4gUE1QMTogMHgwMDAwMDAwMDAwMDAwMDAwLTB4MDAw
MDAwN2ZmZmZmZmZmZiAoQSxSLFcsWCkNCj4gPiA+ID4gPiA+ID4gPiANCj4gPiA+ID4gPiA+ID4g
PiANCj4gPiA+ID4gPiA+ID4gPiBVLUJvb3QgMjAxOS4xMC1yYzQtMDAwMzctZ2RhYzUxZTlhYWYt
ZGlydHkgKE9jdCAwNiAyMDE5IC0NCj4gPiA+ID4gPiA+ID4gPiAyMTo1Njo1MQ0KPiA+ID4gPiA+
ID4gKzAwMDApDQo+ID4gPiA+ID4gPiA+ID4gQ1BVOiAgIHJ2NjRpbWFmZGMNCj4gPiA+ID4gPiA+
ID4gPiBNb2RlbDogU2lGaXZlIEhpRml2ZSBVbmxlYXNoZWQgQTAwDQo+ID4gPiA+ID4gPiA+ID4g
RFJBTTogIDggR2lCDQo+ID4gPiA+ID4gPiA+ID4gDQo+ID4gPiA+ID4gPiA+ID4gTU1DOiAgIHNw
aUAxMDA1MDAwMDptbWNAMDogMA0KPiA+ID4gPiA+ID4gPiA+IEluOiAgICBzZXJpYWxAMTAwMTAw
MDANCj4gPiA+ID4gPiA+ID4gPiBPdXQ6ICAgc2VyaWFsQDEwMDEwMDAwDQo+ID4gPiA+ID4gPiA+
ID4gRXJyOiAgIHNlcmlhbEAxMDAxMDAwMA0KPiA+ID4gPiA+ID4gPiA+IE5ldDogICBldGgwOiBl
dGhlcm5ldEAxMDA5MDAwMA0KPiA+ID4gPiA+ID4gPiA+IEhpdCBhbnkga2V5IHRvIHN0b3AgYXV0
b2Jvb3Q6ICAwDQo+ID4gPiA+ID4gPiA+ID4gc3dpdGNoIHRvIHBhcnRpdGlvbnMgIzAsIE9LDQo+
ID4gPiA+ID4gPiA+ID4gbW1jMCBpcyBjdXJyZW50IGRldmljZQ0KPiA+ID4gPiA+ID4gPiA+IFNj
YW5uaW5nIG1tYyAwOjIuLi4NCj4gPiA+ID4gPiA+ID4gPiBGb3VuZCAvYm9vdC9leHRsaW51eC9l
eHRsaW51eC5jb25mDQo+ID4gPiA+ID4gPiA+ID4gUmV0cmlldmluZyBmaWxlOiAvYm9vdC9leHRs
aW51eC9leHRsaW51eC5jb25mDQo+ID4gPiA+ID4gPiA+ID4gNTEwIGJ5dGVzIHJlYWQgaW4gNSBt
cyAoOTkuNiBLaUIvcykNCj4gPiA+ID4gPiA+ID4gPiBVLUJvb3QgbWVudQ0KPiA+ID4gPiA+ID4g
PiA+IDE6ICAgICAga2VybmVsIDUuMy40DQo+ID4gPiA+ID4gPiA+ID4gMjogICAgICBEZWJpYW4g
R05VL0xpbnV4IGtlcm5lbCA1LjMuMC10cnVuay1yaXNjdjY0DQo+ID4gPiA+ID4gPiA+ID4gRW50
ZXIgY2hvaWNlOiAxDQo+ID4gPiA+ID4gPiA+ID4gMTogICAgICBrZXJuZWwgNS4zLjQNCj4gPiA+
ID4gPiA+ID4gPiBSZXRyaWV2aW5nIGZpbGU6IC9ib290L3ZtbGludXgtNS4zLjQNCj4gPiA+ID4g
PiA+ID4gPiA5NDg2MDc2IGJ5dGVzIHJlYWQgaW4gNDgxMyBtcyAoMS45IE1pQi9zKQ0KPiA+ID4g
PiA+ID4gPiA+IGFwcGVuZDogcm9vdD0vZGV2L21tY2JsazBwMiBydyBjb25zb2xlPXR0eVNJRjAg
cm9vdHdhaXQNCj4gPiA+ID4gPiA+ID4gPiBSZXRyaWV2aW5nIGZpbGU6IC9ib290L2hpZml2ZS11
bmxlYXNoZWQtYTAwLmR0Yg0KPiA+ID4gPiA+ID4gPiA+IDYwODggYnl0ZXMgcmVhZCBpbiA3IG1z
ICg4NDguNiBLaUIvcykNCj4gPiA+ID4gPiA+ID4gPiAjIyBGbGF0dGVuZWQgRGV2aWNlIFRyZWUg
YmxvYiBhdCA4ODAwMDAwMA0KPiA+ID4gPiA+ID4gPiA+ICAgIEJvb3RpbmcgdXNpbmcgdGhlIGZk
dCBibG9iIGF0IDB4ODgwMDAwMDANCj4gPiA+ID4gPiA+ID4gPiAgICBVc2luZyBEZXZpY2UgVHJl
ZSBpbiBwbGFjZSBhdCAwMDAwMDAwMDg4MDAwMDAwLCBlbmQNCj4gPiA+ID4gPiA+IDAwMDAwMDAw
ODgwMDQ3YzcNCj4gPiA+ID4gPiA+ID4gPiBTdGFydGluZyBrZXJuZWwgLi4uDQo+ID4gPiA+ID4g
PiA+ID4gDQo+ID4gPiA+ID4gPiA+ID4gZXhjZXB0aW9uIGNvZGU6IDIgLCBJbGxlZ2FsIGluc3Ry
dWN0aW9uICwgZXBjICAsIHJhIDg4MDAwMDA0DQo+ID4gPiA+ID4gPiA4ODAwMDAwMA0KPiA+ID4g
PiA+ID4gPiA+ICMjIyBFUlJPUiAjIyMgUGxlYXNlIFJFU0VUIHRoZSBib2FyZCAjIyMNCj4gPiA+
ID4gPiA+IA0KPiA+ID4gPiA+ID4gSSB0aGluaywgdGhhdCdzIHRoZSBzYW1lIGlzc3VlIEkgaGFk
IChvciBzdGlsbCBoYXZlKSBhIHdlZWsgYWdvLg0KPiA+ID4gPiA+ID4gSnVzdCByZW1pbmRlciB0
aGF0IGtlcm5lbCA1LjMgaW50cm9kdWNlZCBhIDY0LWJ5dGUgaGVhZGVyICh0aHVzIG5vDQo+ID4g
PiA+ID4gPiBuZWVkIHRvIHdyYXAga2VybmVsKSBhdCBsZWFzdCBmb3IgSW1hZ2UgdGFyZ2V0LiBU
aHVzIGl0J3MgYm9vdGkNCj4gPiA+ID4gPiA+IHRoYXQNCj4gPiA+ID4gPiA+IGJvb3RzIHRoZSBr
ZXJuZWwgb24gVS1Cb290IHNpZGUuDQo+ID4gPiA+ID4gPiBUaHVzIHRoZSAxc3QgaW5zdHJ1Y3Rp
b24gb2YgdGhhdCBoZWFkZXIgaXMgImogMHg0MCIgKHRvIHRoZQ0KPiA+ID4gPiA+ID4gYmVnaW5u
aW5nDQo+ID4gPiA+ID4gPiBvZiB0aGUgYWN0dWFsIGtlcm5lbCkuICBBbmQgODgwMDAwMDQgd291
bGQgZGVmaW5pdGVseSBob2xkIGFuDQo+ID4gPiA+ID4gPiBpbGxlZ2FsDQo+ID4gPiA+ID4gPiBp
bnN0cnVjdGlvbi4NCj4gPiA+ID4gPiA+IA0KPiA+ID4gPiA+ID4gMDAwMDAwMDAwMDAwMDAwMCA8
LmRhdGE+Og0KPiA+ID4gPiA+ID4gMDogICAgICAgODFhMCAgICAgICAgICAgICAgICAgICAgaiAg
ICAgICAweDQwDQo+ID4gPiA+ID4gPiAyOiAgICAgICAwMDAwICAgICAgICAgICAgICAgICAgICB1
bmltcA0KPiA+ID4gPiA+ID4gNDogICAgICAgMDAwMCAgICAgICAgICAgICAgICAgICAgdW5pbXAN
Cj4gPiA+ID4gPiA+IDY6ICAgICAgIDAxMDAgICAgICAgICAgICAgICAgICAgIG5vcA0KPiA+ID4g
PiA+ID4gWy4uXQ0KPiA+ID4gPiA+IA0KPiA+ID4gPiA+IEhtbSB0aGF0J3MgdGhlIGJlZ2lubmlu
ZyBvZiB0aGUga2VybmVsIGNvZGUuIFRoZSBhZGRyZXNzIDg4MDAwMDA0DQo+ID4gPiA+ID4gYWN0
dWFsbHkgY29ycmVzcG9uZHMgdG8gdGhlIEZEVC4gU28gdGhlIGhhcnQgZW5kaW5nIHVwIGluIGEg
dHJhcA0KPiA+ID4gPiA+IGFjdHVhbGx5IHRyaWVzIHRvIGJvb3QgdGhlIEZEVCBpbnN0ZWFkIG9m
IHRoZSBrZXJuZWwuDQo+ID4gPiA+ID4gDQo+ID4gPiA+IA0KPiA+ID4gPiBEbyB5b3Ugc2VlIHRo
ZSBpc3N1ZSBpZiB5b3UgbWFudWFsbHkgdXNlIGJvb3RtIGluc3RlYWQgb2YgZXh0bGludXg/DQo+
ID4gPiA+IA0KPiA+ID4gPiA9PiBib290bSAka2VybmVsX2FkZHJfciAtICRmZHRfYWRkcl9yDQo+
ID4gPiA+IA0KPiA+ID4gPiBUaGlzIGlzIGEgcHJvYmFibHkgbm90IHJlbGF0ZWQgYXMgYm9vdG0g
aXMganVtcGluZyB0byB3cm9uZyBsb2NhdGlvbg0KPiA+ID4gPiBmb3Igc29tZSByZWFzb24uIEhv
d2V2ZXIsIGl0IG1heSBiZSB3b3J0aCBhIHNob3QgYXMgaXQgZml4ZXMgZmR0DQo+ID4gPiA+IGNv
cnJ1cHRpb24uIA0KPiA+ID4gDQo+ID4gPiBJIGhhdmUganVzdCB0ZXN0ZWQsIGFuZCBpdCBkb2Vz
bid0IHdvcmsuIE9uIHRoZSBvdGhlciBoYW5kIEkgaGF2ZSB0cnkgdG8NCj4gPiA+IHJ1biB0aGF0
IG1hbnVhbGx5LCBhbmQgaW50ZXJydXB0aW5nIHRoZSBib290IHByb2Nlc3MgdXN1YWxseSBoaWRl
cyB0aGUNCj4gPiA+IHByb2JsZW0uDQo+ID4gPiANCj4gPiANCj4gPiBJIHRyaWVkIHRvIHJlcHJv
ZHVjZSB0aGUgaXNzdWUgdG9kYXksIGJ1dCB3YXMgbm90IGFibGUgdG8uIElmIHlvdSBjYW4NCj4g
PiB1cGxvYWQgdGhlIHJlbGV2YW50IGZpbGVzIHNvbWV3aGVyZSwgSSBjYW4gcmV0cnkgaXQgd2l0
aCB0aGVtLiBJIGhhdmUNCj4gPiBhbHNvIGFkZGVkIGluZm9ybWF0aW9uIG9uIHRoZSBib290IGZs
b3cgaW4gVS1Cb290IGJlbG93IGluIGhvcGVzIHRoYXQNCj4gPiBpdCBpcyBoZWxwZnVsIGZvciBk
ZWJ1Z2dpbmcuDQo+IA0KPiBZb3UgY2FuIGZpbmQgdGhlIGZpbGVzIHRoZXJlOg0KPiBodHRwczov
L3RlbXAuYXVyZWwzMi5uZXQvaGlmaXZlLW9wZW5zYmktdWJvb3QvDQo+IA0KPiBmd19wYXlsb2Fk
LmJpbiBjb250YWlucyB0aGUgT3BlblNCSSArIFUtQm9vdCBwYXlsb2FkIHRvIGJlIGNvcGllZCB0
byB0aGUNCj4gZmlyc3QgcGFydGl0aW9uIG9mIHRoZSBTRCBjYXJkLiBUaGUgYm9vdC50YXIuZ3og
Y29udGFpbnMgdGhlIC9ib290IA0KPiBkaXJlY3RvcnkgKGtlcm5lbCwgZmR0IGFuZCBleHRsaW51
eC5jb25mKSBhbmQgaGFzIHRvIGJlIHB1dCBvbiB0aGUNCj4gc2Vjb25kIHBhcnRpdGlvbiBvZiB0
aGUgU0QgY2FyZC4gTm90ZSB0aGF0IHRoaXMgcGFydGl0aW9uIHNob3VsZCBoYXZlDQo+IHRoZSBH
UFQgYm9vdCBmbGFnIGVuYWJsZWQgZm9yIGV4dGxpbnV4IHRvIHdvcmsuDQo+IA0KPiBJIGhhdmVu
J3QgbG9va2VkIG1vcmUgYXQgdGhlIGlzc3VlIHJlY2VudGx5IG5vdyB0aGF0IEkgaGF2ZSBmb3Vu
ZCB0aGF0DQo+IHVzaW5nIEdDQyA4IGlzIGEgZml4L3dvcmthcm91bmQuIFRoZXJlZm9yZSB0aG9z
ZSBmaWxlcyBhcmUgZnJvbSB+MTAgZGF5cw0KPiBhZ28uIEkgd2lsbCB0cnkgdG8gZG8gbW9yZSB0
ZXN0cyBkdXJpbmcgdGhlIHdlZWstZW5kLg0KPiANCg0KVGhhbmtzIGZvciB0aGUgZmlsZXMsIEkg
d2FzIGFibGUgdG8gcmVwcm9kdWNlIHRoZSBpc3N1ZSBub3cuIFNlZW1zIGxpa2UNCml0IGlzIGNh
dXNlZCBieSBhIHN0YWNrIG92ZXJmbG93LiBXaGVuIHNtcF9jYWxsX2Z1bmN0aW9uKCkgaXMgY2Fs
bGVkDQpkdXJpbmcgYm9vdG0sIHRoZSBzdGFjayBvZiB0aGUgbWFpbiBoYXJ0IG92ZXJmbG93cyBp
bnRvIHRoZSBzdGFjayBvZg0Kb25lIG9mIHRoZSBvdGhlciBoYXJ0cy4gVGhlIHJldHVybiBhZGRy
ZXNzIG9mIHRoZSBtYWluIGhhcnQgbm93IGxpZXMNCndpdGhpbiB0aGUgc3RhY2sgb2YgdGhlIG90
aGVyIGhhcnQuIE9uY2UgdGhhdCBoYXJ0IGdldHMgd29rZW4gYnkgdGhlDQpJUEkgaXQgb3Zlcndy
aXRlcyB0aGUgcmV0dXJuIGFkZHJlc3MsIGluIG91ciBjYXNlIHdpdGggMHg4ODAwMDAwMC4gVGhp
cw0Kd2lsbCBjYXVzZSB0aGUgaWxsZWdhbCBpbnN0cnVjdGlvbiB0cmFwIG9uY2UgdGhlIG1haW4g
aGFydCByZXR1cm5zLg0KVGhpcyBhbHNvIGV4cGxhaW5zLCB3aHkgdGhlIHByb2JsZW0gZG9lcyBu
b3Qgb2NjdXIgd2hlbiB0aGUgbWFpbiBoYXJ0DQppcyBoYXJ0IDQsIHNpbmNlIGl0cyBzdGFjayBp
cyBhdCB0aGUgYm90dG9tIGFuZCB0aGVyZWZvcmUgY2FuJ3QNCm92ZXJmbG93IGludG8gb25lIG9m
IHRoZSBvdGhlciBzdGFja3MuDQoNCkluY3JlYXNpbmcgdGhlIHN0YWNrIHNpemUgKENPTkZJR19T
VEFDS19TSVpFX1NISUZUKSB0byAxNCBmaXhlcyB0aGUNCnByb2JsZW0uIEknbGwgZG91YmxlIGNo
ZWNrIHRoYXQgdGhlcmUncyBub3RoaW5nIGVsc2UgY2F1c2luZyBhbiBpc3N1ZQ0KYW5kIHdpbGwg
dGhlbiBzZW5kIGEgcGF0Y2ggdG8gaW5jcmVhc2UgdGhlIHN0YWNrIHNpemUuDQoNClJlZ2FyZHMs
DQpMdWthcw0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
bGludXgtcmlzY3YgbWFpbGluZyBsaXN0CmxpbnV4LXJpc2N2QGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yaXNjdgo=
