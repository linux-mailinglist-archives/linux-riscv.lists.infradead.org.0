Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9500E2BDFC
	for <lists+linux-riscv@lfdr.de>; Tue, 28 May 2019 05:54:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aPhe1oNAIOVQ8KMFU5gvvqQqPtfRwCGoKfQPHsl7hJc=; b=ep+W3uIJH4jZNj
	3KU6lWC4VzN92oWmkahkA3SlboJ+Si+NR/Q6u1qf0WDe1tZcl6dkGPlKtpNTilq834Aif2fvQNLwZ
	qsEH4vz2vhnp47O3CAmyHf0Q3/0R+EqVg2BMo9uiWaIrYiBGun7YRgcwpQmMM1dSqaxpPY2czJuFJ
	UBNH4UU3Zl8pmgZx4hN81M8NQ1+GF1RZI2im47eqWvR+bSsGsR6sv0dhRroQbsH+YBKcGbdIUQzsf
	/6laBqHIlKOUHBgXIUudPSO4xzmuD4YFKX2VwGwGVeCQSNfdZwpg9qVwAYHhgJAc9X3T7nSYWtXMI
	SQgl6bN0lBaXJ69rYUZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVTBn-0002Eh-1P; Tue, 28 May 2019 03:54:15 +0000
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVTBh-0002Dw-Mx
 for linux-riscv@lists.infradead.org; Tue, 28 May 2019 03:54:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1559015649; x=1590551649;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=WZXJM/Sy8xNIOM0Uw35IItL0HZv2qIwC5OK6omvQ5XA=;
 b=DcHxpfV4/NPqKrt2ulxuynJePNH9JSW/JeiI/cvn0s610V6ZLu4O0cVt
 QpjJeXXvSfgdbEkZuxUUp7Glv1Ek8QdvdilQGchU3qsZxyW0vo747j3Fm
 SmINDbxEbu33GBMUvLQwQBqBV35bT3EJOcZQwS4ifZpmmAt6L0fbBfE9U
 wg2fmAAP3m319y3zyef1mX4DX1ZMssfsk7lG1WV1yAy1DZMU67D9siaAz
 LUW7GgNQ33Zjv5MYEGvYFStWiTuxF9j/r3eS7uYoojXMNsZnz8xpajM//
 7cX/M2H7LlHlejAzoCSynYCvRGmiL3hDL1VvcsuehKhJb2LpqtewREoGz g==;
X-IronPort-AV: E=Sophos;i="5.60,520,1549900800"; d="scan'208";a="109190114"
Received: from mail-by2nam05lp2059.outbound.protection.outlook.com (HELO
 NAM05-BY2-obe.outbound.protection.outlook.com) ([104.47.50.59])
 by ob1.hgst.iphmx.com with ESMTP; 28 May 2019 11:54:05 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WZXJM/Sy8xNIOM0Uw35IItL0HZv2qIwC5OK6omvQ5XA=;
 b=PUZrvfE3c65Up9acfPImzMH0dfPS9Gq0loiobsx7Pio9QuL28O3Rabgi7F5Y54f017wuYaW9h1HC4dl4IVVqjLdbXG2tUxJF3vhDYtxGPKnHAXu41gs5vCxGZz5+Mc06e4W9toNr1U0dMYRBGQE/LEcJkFgg/afgQpwPUaDof7w=
Received: from MN2PR04MB6061.namprd04.prod.outlook.com (20.178.246.15) by
 MN2PR04MB5824.namprd04.prod.outlook.com (20.179.21.87) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1922.18; Tue, 28 May 2019 03:54:02 +0000
Received: from MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::98ab:5e60:9c5c:4e0e]) by MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::98ab:5e60:9c5c:4e0e%7]) with mapi id 15.20.1922.021; Tue, 28 May 2019
 03:54:02 +0000
From: Anup Patel <Anup.Patel@wdc.com>
To: Troy Benjegerdes <troy.benjegerdes@sifive.com>, Karsten Merker
 <merker@debian.org>
Subject: RE: [v4 PATCH] RISC-V: Add an Image header that boot loader can parse.
Thread-Topic: [v4 PATCH] RISC-V: Add an Image header that boot loader can
 parse.
Thread-Index: AQHVEefPx78xcsUKv0KnMjJBKgt9jaZ/DuaAgACA6ICAABe4gIAARRCg
Date: Tue, 28 May 2019 03:54:02 +0000
Message-ID: <MN2PR04MB60610CF4829D5251A112CF9C8D1E0@MN2PR04MB6061.namprd04.prod.outlook.com>
References: <20190524041814.7497-1-atish.patra@wdc.com>
 <CAKv+Gu9U56b50TrfriBfRFed_1aoXg2Y624tu7v5m2y+6DVq5w@mail.gmail.com>
 <20190527221619.fkxtzk4jpeyfoptf@excalibur.cnev.de>
 <3178D175-18AD-47D0-8D51-CB2900DFA572@sifive.com>
In-Reply-To: <3178D175-18AD-47D0-8D51-CB2900DFA572@sifive.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Anup.Patel@wdc.com; 
x-originating-ip: [45.116.123.171]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7c45abe6-1f28-4301-c8d6-08d6e3201f81
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:MN2PR04MB5824; 
x-ms-traffictypediagnostic: MN2PR04MB5824:
wdcipoutbound: EOP-TRUE
x-microsoft-antispam-prvs: <MN2PR04MB582418499E89424E0E7C961B8D1E0@MN2PR04MB5824.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 00514A2FE6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(396003)(376002)(366004)(136003)(346002)(39860400002)(199004)(189003)(13464003)(99286004)(486006)(14454004)(7696005)(8936002)(25786009)(76176011)(6506007)(53546011)(229853002)(4326008)(102836004)(476003)(81166006)(26005)(8676002)(446003)(86362001)(81156014)(11346002)(2906002)(186003)(14444005)(74316002)(6116002)(33656002)(256004)(305945005)(52536014)(561944003)(6436002)(66556008)(66946007)(66446008)(76116006)(66476007)(64756008)(73956011)(9686003)(53936002)(6246003)(55016002)(54906003)(110136005)(72206003)(68736007)(316002)(66066001)(3846002)(5660300002)(7416002)(7736002)(71200400001)(478600001)(71190400001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB5824;
 H:MN2PR04MB6061.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: sCSUxaWhQfakXOYwTXgudTniwf1nvGv2zsWSci+IazUWGxdJ23BJ5QkmXQP1MSeRUk4zw189cU7wRATUJytD+DuUCwn91KDptSMJA6OO0V/F/coSsJvzZr+z8P8xrBVJnH1htSqmyWYQE6bSzlAFV9j1VPc6Xv2sRDVqPOUUjm9eLBdgow815ADKhdoIrpcS/bxHZgy7GiprU2Nv70odOzh81SrQYSSTEXdJ3mLnYDAWZViAdYHwRrzkB+OqEkCRbSN8HeAqx8xr+7b1z4w1AEa+B/rGxLbgfNrpf1W1/2QAOc3fWIL2QHzKCFlQcSGCtDjfzfPbkdgGbNjQEhlEDrJcHU8+9o6oKtMDLtLLOBo3Kl9UnbfBvoqRC9nXCqoFmbAKG7KJx+LP6WHTm3jSzRG+mPthI0iyNlJccWGDTBM=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7c45abe6-1f28-4301-c8d6-08d6e3201f81
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 May 2019 03:54:02.4752 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Anup.Patel@wdc.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB5824
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_205409_816263_6606ED3C 
X-CRM114-Status: GOOD (  35.82  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.42 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-riscv@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-riscv.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-riscv/>
List-Post: <mailto:linux-riscv@lists.infradead.org>
List-Help: <mailto:linux-riscv-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=subscribe>
Cc: Albert Ou <aou@eecs.berkeley.edu>, Jonathan Corbet <corbet@lwn.net>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 Zong Li <zong@andestech.com>, Atish Patra <Atish.Patra@wdc.com>,
 Palmer Dabbelt <palmer@sifive.com>,
 "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
 Nick Kossifidis <mick@ics.forth.gr>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "marek.vasut@gmail.com" <marek.vasut@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogVHJveSBCZW5qZWdlcmRl
cyA8dHJveS5iZW5qZWdlcmRlc0BzaWZpdmUuY29tPg0KPiBTZW50OiBUdWVzZGF5LCBNYXkgMjgs
IDIwMTkgNToxMSBBTQ0KPiBUbzogS2Fyc3RlbiBNZXJrZXIgPG1lcmtlckBkZWJpYW4ub3JnPg0K
PiBDYzogQXJkIEJpZXNoZXV2ZWwgPGFyZC5iaWVzaGV1dmVsQGxpbmFyby5vcmc+OyBBbGJlcnQg
T3UNCj4gPGFvdUBlZWNzLmJlcmtlbGV5LmVkdT47IEpvbmF0aGFuIENvcmJldCA8Y29yYmV0QGx3
bi5uZXQ+OyBBbnVwIFBhdGVsDQo+IDxBbnVwLlBhdGVsQHdkYy5jb20+OyBab25nIExpIDx6b25n
QGFuZGVzdGVjaC5jb20+OyBBdGlzaCBQYXRyYQ0KPiA8QXRpc2guUGF0cmFAd2RjLmNvbT47IE5p
Y2sgS29zc2lmaWRpcyA8bWlja0BpY3MuZm9ydGguZ3I+OyBQYWxtZXIgRGFiYmVsdA0KPiA8cGFs
bWVyQHNpZml2ZS5jb20+OyBwYXVsLndhbG1zbGV5QHNpZml2ZS5jb207IGxpbnV4LQ0KPiByaXNj
dkBsaXN0cy5pbmZyYWRlYWQub3JnOyBtYXJlay52YXN1dEBnbWFpbC5jb20NCj4gU3ViamVjdDog
UmU6IFt2NCBQQVRDSF0gUklTQy1WOiBBZGQgYW4gSW1hZ2UgaGVhZGVyIHRoYXQgYm9vdCBsb2Fk
ZXIgY2FuDQo+IHBhcnNlLg0KPiANCj4gDQo+IA0KPiA+IE9uIE1heSAyNywgMjAxOSwgYXQgNTox
NiBQTSwgS2Fyc3RlbiBNZXJrZXIgPG1lcmtlckBkZWJpYW4ub3JnPg0KPiB3cm90ZToNCj4gPg0K
PiA+IE9uIE1vbiwgTWF5IDI3LCAyMDE5IGF0IDA0OjM0OjU3UE0gKzAyMDAsIEFyZCBCaWVzaGV1
dmVsIHdyb3RlOg0KPiA+PiBPbiBGcmksIDI0IE1heSAyMDE5IGF0IDA2OjE4LCBBdGlzaCBQYXRy
YSA8YXRpc2gucGF0cmFAd2RjLmNvbT4gd3JvdGU6DQo+ID4+PiBDdXJyZW50bHksIHRoZSBsYXN0
IHN0YWdlIGJvb3QgbG9hZGVycyBzdWNoIGFzIFUtQm9vdCBjYW4gYWNjZXB0DQo+ID4+PiBvbmx5
IHVJbWFnZSB3aGljaCBpcyBhbiB1bm5lY2Vzc2FyeSBhZGRpdGlvbmFsIHN0ZXAgaW4gYXV0b21h
dGluZw0KPiA+Pj4gYm9vdCBwcm9jZXNzLg0KPiA+Pj4NCj4gPj4+IEFkZCBhbiBpbWFnZSBoZWFk
ZXIgdGhhdCBib290IGxvYWRlciB1bmRlcnN0YW5kcyBhbmQgYm9vdCBMaW51eCBmcm9tDQo+ID4+
PiBmbGF0IEltYWdlIGRpcmVjdGx5Lg0KPiA+Pj4NCj4gPj4+IFRoaXMgaGVhZGVyIGlzIGJhc2Vk
IG9uIEFSTTY0IGJvb3QgaW1hZ2UgaGVhZGVyIGFuZCBwcm92aWRlcyBhbg0KPiA+Pj4gb3Bwb3J0
dW5pdHkgdG8gY29tYmluZSBib3RoIEFSTTY0ICYgUklTQy1WIGltYWdlIGhlYWRlcnMgaW4gZnV0
dXJlLg0KPiA+Pj4NCj4gPj4+IEFsc28gbWFrZSBzdXJlIHRoYXQgUEUvQ09GRiBoZWFkZXIgY2Fu
IGNvLWV4aXN0IGluIHRoZSBzYW1lIGltYWdlIHNvDQo+ID4+PiB0aGF0IEVGSSBzdHViIGNhbiBi
ZSBzdXBwb3J0ZWQgZm9yIFJJU0MtViBpbiBmdXR1cmUuIEVGSQ0KPiA+Pj4gc3BlY2lmaWNhdGlv
biBuZWVkcyBQRS9DT0ZGIGltYWdlIGhlYWRlciBpbiB0aGUgYmVnaW5uaW5nIG9mIHRoZQ0KPiA+
Pj4ga2VybmVsIGltYWdlIGluIG9yZGVyIHRvIGxvYWQgaXQgYXMgYW4gRUZJIGFwcGxpY2F0aW9u
LiBJbiBvcmRlciB0bw0KPiA+Pj4gc3VwcG9ydCBFRkkgc3R1YiwgY29kZTAgc2hvdWxkIGJlIHJl
cGxhY2VkIHdpdGggIk1aIiBtYWdpYyBzdHJpbmcNCj4gPj4+IGFuZCByZXM0KGF0IG9mZnNldCAw
eDNjKSBzaG91bGQgcG9pbnQgdG8gdGhlIHJlc3Qgb2YgdGhlIFBFL0NPRkYNCj4gPj4+IGhlYWRl
ciAod2hpY2ggd2lsbCBiZSBhZGRlZCBkdXJpbmcgRUZJIHN1cHBvcnQpLg0KPiA+IFsuLi5dDQo+
ID4+PiBEb2N1bWVudGF0aW9uL3Jpc2N2L2Jvb3QtaW1hZ2UtaGVhZGVyLnR4dCB8IDUwDQo+ICsr
KysrKysrKysrKysrKysrKw0KPiA+Pj4gYXJjaC9yaXNjdi9pbmNsdWRlL2FzbS9pbWFnZS5oICAg
ICAgICAgICAgfCA2NCArKysrKysrKysrKysrKysrKysrKysrKw0KPiA+Pj4gYXJjaC9yaXNjdi9r
ZXJuZWwvaGVhZC5TICAgICAgICAgICAgICAgICAgfCAzMiArKysrKysrKysrKysNCj4gPj4+IDMg
ZmlsZXMgY2hhbmdlZCwgMTQ2IGluc2VydGlvbnMoKykNCj4gPj4+IGNyZWF0ZSBtb2RlIDEwMDY0
NCBEb2N1bWVudGF0aW9uL3Jpc2N2L2Jvb3QtaW1hZ2UtaGVhZGVyLnR4dA0KPiA+Pj4gY3JlYXRl
IG1vZGUgMTAwNjQ0IGFyY2gvcmlzY3YvaW5jbHVkZS9hc20vaW1hZ2UuaA0KPiA+Pj4NCj4gPj4+
IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL3Jpc2N2L2Jvb3QtaW1hZ2UtaGVhZGVyLnR4dA0K
PiA+Pj4gYi9Eb2N1bWVudGF0aW9uL3Jpc2N2L2Jvb3QtaW1hZ2UtaGVhZGVyLnR4dA0KPiA+Pj4g
bmV3IGZpbGUgbW9kZSAxMDA2NDQNCj4gPj4+IGluZGV4IDAwMDAwMDAwMDAwMC4uNjhhYmMyMzUz
Y2VjDQo+ID4+PiAtLS0gL2Rldi9udWxsDQo+ID4+PiArKysgYi9Eb2N1bWVudGF0aW9uL3Jpc2N2
L2Jvb3QtaW1hZ2UtaGVhZGVyLnR4dA0KPiA+Pj4gQEAgLTAsMCArMSw1MCBAQA0KPiA+Pj4gKyAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICBCb290IGltYWdlIGhlYWRlciBpbiBSSVNDLVYg
TGludXgNCj4gPj4+ICsNCj4gPj4+ICsgPT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09DQo+ID4+PiArDQo+ID4+PiArQXV0aG9yOiBBdGlzaCBQYXRyYSA8YXRpc2gu
cGF0cmFAd2RjLmNvbT4gRGF0ZSAgOiAyMCBNYXkgMjAxOQ0KPiA+Pj4gKw0KPiA+Pj4gK1RoaXMg
ZG9jdW1lbnQgb25seSBkZXNjcmliZXMgdGhlIGJvb3QgaW1hZ2UgaGVhZGVyIGRldGFpbHMgZm9y
IFJJU0MtVg0KPiBMaW51eC4NCj4gPj4+ICtUaGUgY29tcGxldGUgYm9vdGluZyBndWlkZSB3aWxs
IGJlIGF2YWlsYWJsZSBhdA0KPiBEb2N1bWVudGF0aW9uL3Jpc2N2L2Jvb3RpbmcudHh0Lg0KPiA+
Pj4gKw0KPiA+Pj4gK1RoZSBmb2xsb3dpbmcgNjQtYnl0ZSBoZWFkZXIgaXMgcHJlc2VudCBpbiBk
ZWNvbXByZXNzZWQgTGludXgga2VybmVsDQo+IGltYWdlLg0KPiA+Pj4gKw0KPiA+Pj4gKyAgICAg
ICB1MzIgY29kZTA7ICAgICAgICAgICAgICAgIC8qIEV4ZWN1dGFibGUgY29kZSAqLw0KPiA+Pj4g
KyAgICAgICB1MzIgY29kZTE7ICAgICAgICAgICAgICAgIC8qIEV4ZWN1dGFibGUgY29kZSAqLw0K
PiA+Pg0KPiA+PiBBcG9sb2dpZXMgZm9yIG5vdCBtZW50aW9uaW5nIHRoaXMgaW4gbXkgcHJldmlv
dXMgcmVwbHksIGJ1dCBnaXZlbg0KPiA+PiB0aGF0IHlvdSBhbHJlYWR5IGtub3cgdGhhdCB5b3Ug
d2lsbCBuZWVkIHRvIHB1dCB0aGUgbWFnaWMgc3RyaW5nIE1aDQo+ID4+IGF0IG9mZnNldCAweDAs
IGl0IG1ha2VzIG1vcmUgc2Vuc2UgdG8gbm90IHB1dCBhbnkgY29kZSB0aGVyZSBhdCBhbGwsDQo+
ID4+IGJ1dCBlZHVjYXRlIHRoZSBib290bG9hZGVyIHRoYXQgdGhlIGZpcnN0IGV4ZWN1dGFibGUg
aW5zdHJ1Y3Rpb24gaXMNCj4gPj4gYXQgb2Zmc2V0IDB4MjAsIGFuZCBwdXQgdGhlIHNwYXJlIGZp
ZWxkcyByaWdodCBhZnRlciBpdCBpbiBjYXNlIHlvdQ0KPiA+PiBldmVyIG5lZWQgbW9yZSB0aGFu
IDIgc2xvdHMuIChPbiBhcm02NCwgd2Ugd2VyZSBsdWNreSB0byBiZSBhYmxlIHRvDQo+ID4+IGZp
bmQgYW4gb3Bjb2RlIHRoYXQgaGFwcGVuZWQgdG8gY29udGFpbiB0aGUgTVogYml0IHBhdHRlcm4g
YW5kIGFjdA0KPiA+PiBhbG1vc3QgbGlrZSBhIE5PUCwgYnV0IGl0IHNlZW1zIHNpbGx5IHRvIHJl
bHkgb24gdGhhdCBmb3IgUklTQy1WIGFzDQo+ID4+IHdlbGwpDQo+ID4+DQo+ID4+IFNvIHNvbWV0
aGluZyBsaWtlDQo+ID4+DQo+ID4+IHUxNiBwZV9yZXMxOyAgLyogTVogZm9yIEVGSSBib290YWJs
ZSBpbWFnZXMsIGRvbid0IGNhcmUgb3RoZXJ3aXNlICovDQo+ID4+IHU4IG1hZ2ljWzZdOyAgICAv
KiAiUklTQ1ZcMCINCj4gPj4NCj4gPj4gdTY0IHRleHRfb2Zmc2V0OyAgICAgICAgICAvKiBJbWFn
ZSBsb2FkIG9mZnNldCwgbGl0dGxlIGVuZGlhbiAqLw0KPiA+PiB1NjQgaW1hZ2Vfc2l6ZTsgICAg
ICAgICAgIC8qIEVmZmVjdGl2ZSBJbWFnZSBzaXplLCBsaXR0bGUgZW5kaWFuICovDQo+ID4+IHU2
NCBmbGFnczsgICAgICAgICAgICAgICAgLyoga2VybmVsIGZsYWdzLCBsaXR0bGUgZW5kaWFuICov
DQo+ID4+DQo+ID4+IHUzMiBjb2RlMDsgICAgICAgICAgICAgICAgLyogRXhlY3V0YWJsZSBjb2Rl
ICovDQo+ID4+IHUzMiBjb2RlMTsgICAgICAgICAgICAgICAgLyogRXhlY3V0YWJsZSBjb2RlICov
DQo+ID4+DQo+ID4+IHU2NCByZXNlcnZlZFsyXTsgICAgIC8qIHJlc2VydmVkIGZvciBmdXR1cmUg
dXNlICovDQo+ID4+DQo+ID4+IHUzMiB2ZXJzaW9uOyAgICAgICAgICAgICAgLyogVmVyc2lvbiBv
ZiB0aGlzIGhlYWRlciAqLw0KPiA+PiB1MzIgcGVfcmVzMjsgICAgICAgICAgICAgICAgIC8qIFJl
c2VydmVkIGZvciBQRSBDT0ZGIG9mZnNldCAqLw0KPiA+DQo+ID4gSGVsbG8sDQo+ID4NCj4gPiB3
b3VsZG4ndCB0aGF0IGltbWVkaWF0ZWx5IGJyZWFrIGV4aXN0aW5nIHN5c3RlbXMgKGluY2x1ZGlu
ZyBxZW11IHdoZW4NCj4gPiBsb2FkaW5nIGtlcm5lbHMgd2l0aCB0aGUgIi1rZXJuZWwiIG9wdGlv
bikgdGhhdCByZWx5IG9uIHRoZSBmYWN0IHRoYXQNCj4gPiB0aGUga2VybmVsIGVudHJ5IHBvaW50
IGlzIGFsd2F5cyBhdCB0aGUga2VybmVsIGxvYWQgYWRkcmVzcz8gIFRoZQ0KPiA+IEFSTTY0IGhl
YWRlciBhbmQgQXRpc2gncyBvcmlnaW5hbCBSSVNDLVYgcHJvcG9zYWwgYmFzZWQgb24gdGhlIEFS
TTY0DQo+ID4gaGVhZGVyIGtlZXAgdGhlIHByb3BlcnR5IHRoYXQganVtcGluZyB0byB0aGUga2Vy
bmVsIGxvYWQgYWRkcmVzcw0KPiA+IGFsd2F5cyB3b3JrcywgcmVnYXJkbGVzcyBvZiB3aGF0IHRo
ZSBwYXJ0aWN1bGFyIGhlYWRlciBsb29rcyBsaWtlIGFuZA0KPiA+IHdoaWNoIHBvdGVudGlhbCBm
dXR1cmUgZXh0ZW5zaW9ucyBpdCBpbmNsdWRlcywgYnV0IHRoZSBwcm9wb3NlZCBjaGFuZ2UNCj4g
PiBhYm92ZSB3b3VsZG4ndCBkbyB0aGF0Lg0KPiA+DQo+ID4gQWx0aG91Z2ggSSBhZ3JlZSB0aGF0
IGhhdmluZyB0byBpbnRlZ3JhdGUgdGhlICJNWiIgc3RyaW5nIGFzIGFuDQo+ID4gaW5zdHJ1Y3Rp
b24gaXNuJ3QgcGFydGljdWxhcmx5IG5pY2UsIEkgZG9uJ3QgdGhpbmsgdGhhdCB0aGlzIGlzIGEN
Cj4gPiBzdWZmaWNpZW50IGp1c3RpZmljYXRpb24gZm9yIGJyZWFraW5nIGNvbXBhdGliaWxpdHkg
d2l0aCBwcmlvciBrZXJuZWwNCj4gPiByZWxlYXNlcyBhbmQvb3IgZXhpc3RpbmcgYm9vdCBmaXJt
d2FyZS4gIE9uIFJJU0MtViwgdGhlICJNWiIgc3RyaW5nIGlzDQo+ID4gYSBjb21wcmVzc2VkIGxv
YWQgaW1tZWRpYXRlIHRvIHgyMC9zNCwgaS5lLiBhbiBpbnN0cnVjdGlvbiB0aGF0IHNob3VsZA0K
PiA+IGJlICJoYXJtbGVzcyIgYXMgZmFyIGFzIHRoZSBrZXJuZWwgYm9vdCBmbG93IGlzIGNvbmNl
cm5lZCBhcyB0aGUNCj4gPiB4MjAvczQgcmVnaXN0ZXIgQUZBSUsgZG9lc24ndCBjb250YWluIGFu
eSBpbmZvcm1hdGlvbiB0aGF0IHRoZSBrZXJuZWwNCj4gPiB3b3VsZCB1c2UuDQo+ID4NCj4gPiBS
ZWdhcmRzLA0KPiA+IEthcnN0ZW4NCj4gPg0KPiANCj4gWWVzLCB0aGF0IHdvdWxkIGJyZWFrIGV4
aXN0aW5nIHN5c3RlbXMuIEJlc2lkZXMsIHRoZSBxZW11IC1rZXJuZWwgb3B0aW9uDQo+IHVzZXMg
dGhlIHZtbGludXggZWxmIGZpbGUsIGFuZCBJIHRoaW5rIGEgYmV0dGVyIHNvbHV0aW9uIGlzIG1h
a2Ug4oCYbG9hZGVsZuKAmSB3b3JrLA0KPiBhbmQgaW5jbHVkZSBhIHNlY29uZCBtZXRob2QgZm9y
IEVGSS4NCj4gDQo+ICh1bmZvcnR1bmF0ZWx5LCBJIGhhZCB0byBkcm9wIHNvbWUgbGlzdHMgYXMg
SeKAmW0gaGF2aW5nIHRyb3VibGUgc2VuZGluZyB0bw0KPiB0aGVtIHZpYSBnbWFpbCwgc28gdGhl
IENDIGxpc3Qgb24gbXkgcmVzcG9uc2UgaGFzIGJlZW4gbGltaXRlZCkNCg0KTm9wZXMsIGl0IHdv
cmtzIHBlcmZlY3RseSBmaW5lIG9uIFFFTVUgUklTQy1WLg0KDQpKdXN0IGxpa2UgQVJNNjQsIHdl
IGFyZSBsdWNreSBmb3IgUklTQy1WIGFzIHdlbGwuIFRoZSAiTVoiIHN0cmluZyBpcyBhDQpoYXJt
bGVzcyBsb2FkIGluc3RydWN0aW9uIGluIFJJU0MtViBzbyB3ZSBkb24ndCBuZWVkIGFueSBjaGFu
Z2VzIGluIFFFTVUuDQoNCldlIHNob3VsZCBoYXZlICJNWiIgc3RyaW5nIGluIEltYWdlIGhlYWRl
ciBvbmx5IHdoZW4gTGludXggUklTQy1WIGtlcm5lbA0KaGFzIEVGSSBzdXBwb3J0IGVuYWJsZWQg
KGp1c3QgbGlrZSBMaW51eCBBUk02NCBrZXJuZWwpIHNvIHRoYXQgYm9vdGxvYWRlcg0KdHJ5aW5n
IHRvIGJvb3QgTGludXggUklTQy1WIGtlcm5lbCBhcyBFRkkgYXBwbGljYXRpb24gd2lsbCBjZXJ0
YWlubHkgZmFpbA0Kd2hlbiBFRkkgc3VwcG9ydCBpcyBkaXNhYmxlZC9ub3QtYXZhaWxhYmxlIGlu
IExpbnV4IFJJU0MtViBrZXJuZWwuDQoNClJlZ2FyZHMsDQpBbnVwDQpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1yaXNjdiBtYWlsaW5nIGxpc3QK
bGludXgtcmlzY3ZAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJpc2N2Cg==
