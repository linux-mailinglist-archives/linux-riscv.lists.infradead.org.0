Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3573113A137
	for <lists+linux-riscv@lfdr.de>; Tue, 14 Jan 2020 08:01:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=GVTojgNtKg3WaEOtH+uIBL6eae7mH8VYD5Xm1pgQEwI=; b=E3GUEI9Bfmq4tX0Jpq5gX9TMc
	YPgQxyMmCdRZhcv1ANQLlA/ns+89Xoxp8p8BucOirJscf2QTEyq/GxMpUWlyeww4wg0rRMLr5AHLA
	4rBllHtKQmepPSihEWCe64T8lTt1yXXin6/tEbrq/5j1KwapHXg+UUk5ozkp9uBZDKqxrVm7ez5Ki
	skY1B7gGmSsKWQmKm7FrUAzQw6nHL009pdtGjzOXmrL7OOf3f3pDsxr8o9mUJCC9RgW+15y3fZI8e
	sLtPMe8MT9eBARwe0RLqcuOdcB281ctuCecT2GhveIwcLghqqNZ++9aEofI0uI+dIve/TkbQwNBOR
	uG5xj+yIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irGC1-0007Lg-6f; Tue, 14 Jan 2020 07:00:49 +0000
Received: from mail-eopbgr760047.outbound.protection.outlook.com
 ([40.107.76.47] helo=NAM02-CY1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irGBx-0007LD-KF
 for linux-riscv@lists.infradead.org; Tue, 14 Jan 2020 07:00:47 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bF9HIzHdOcAk1+IBO6Fn3rjEhyr2RqKuu9/Aetn/j1EPP6CtpjBYTknCUDhkldBb1g1jCwcpbsp0w33e3o5PpRgdrimX9w2g3hkW3g+zFB5YwOCgeDjAjB4TQmGwfocd+HFxyvPeArT9hKZTnvHqyCT5O3IIw4m3wtK8uq5kCRMHDhUJqWumg4JdURwPnFNJXFx52RblF6WU5jvxGTrXzYZq3axdT5UUWCmfapT9qg0uGMKUolwxza7lv/xZuotApNe74PsGzUthCPONE3UTUaqefu9iOH+Dm/mQH2e6B8b4f/aHarXxGbhqvtUAwtMJ3kRXqoBF09RQryIIc78JCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GVTojgNtKg3WaEOtH+uIBL6eae7mH8VYD5Xm1pgQEwI=;
 b=S87GT96tP5RkjAMDg8Dmm6rZ7tuEWE0QjnJGVnSHq0OaK7UYXJssBxWIB8MGDSd16AqqXw7b2lz4YsNMJnFwthBMMXVFXJCKmXkA8dhWWbJPjJz9q87cBj3wLRlwJBhob783ZXMPicUaBCE3uOPPyUg3PnTY8tESmLiUCvZD4nLGlidF10IivuWOQIbGLUulObXB8xHohBEQRf/3pacC90pCT12JL4A9fAmnK/PaxjqWGr4y1U4KPvadFU467AAWKzf8O+n0EYFkTreclN/7BfQ7MIMKvlvMjXnYbC5RqqTAN8RZqhNiHoj7lf7a/kWh7hg9ECKm/wIu9zHLYhnA+A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=sifive.com; dmarc=pass action=none header.from=sifive.com;
 dkim=pass header.d=sifive.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GVTojgNtKg3WaEOtH+uIBL6eae7mH8VYD5Xm1pgQEwI=;
 b=a68Dz6qNO/vxGobopIE0UrIr00DtzgpFlJRc6mCTQULuSwc485J+sMyu5i8uAl8h1aYoEXOVS4gy+guUTCw9fMqBTy7SDQWlzI3xhd71CluHWVrN9tzc2W4dj+BoOIPuzWPMoW01K4NsPeVTgFRRTdLcO3658GtGT7ZSNOJTs0w=
Received: from CH2PR13MB3368.namprd13.prod.outlook.com (52.132.246.90) by
 CH2PR13MB3798.namprd13.prod.outlook.com (20.180.12.137) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2644.10; Tue, 14 Jan 2020 07:00:43 +0000
Received: from CH2PR13MB3368.namprd13.prod.outlook.com
 ([fe80::eccb:16ac:e897:85d5]) by CH2PR13MB3368.namprd13.prod.outlook.com
 ([fe80::eccb:16ac:e897:85d5%3]) with mapi id 15.20.2644.015; Tue, 14 Jan 2020
 07:00:42 +0000
From: Yash Shah <yash.shah@sifive.com>
To: Anup Patel <anup@brainfault.org>
Subject: RE: [PATCH v3 2/2] riscv: Add support to determine no. of L2 cache
 way enabled
Thread-Topic: [PATCH v3 2/2] riscv: Add support to determine no. of L2 cache
 way enabled
Thread-Index: AQHVydwodBIGGsoHAUC3jryVYubltafpm00AgAAhEOA=
Date: Tue, 14 Jan 2020 07:00:42 +0000
Message-ID: <CH2PR13MB3368EF2E46094F333D8E4D278C340@CH2PR13MB3368.namprd13.prod.outlook.com>
References: <1578897500-23897-1-git-send-email-yash.shah@sifive.com>
 <1578897500-23897-3-git-send-email-yash.shah@sifive.com>
 <CAAhSdy2QvF+U0eJ1XMc8L5gJB5e_9_XUoQpg8pVof+kxxJ5avg@mail.gmail.com>
In-Reply-To: <CAAhSdy2QvF+U0eJ1XMc8L5gJB5e_9_XUoQpg8pVof+kxxJ5avg@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=yash.shah@sifive.com; 
x-originating-ip: [114.143.65.226]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5ac74a01-9d24-4ed8-2974-08d798bf78da
x-ms-traffictypediagnostic: CH2PR13MB3798:
x-ld-processed: 22f88e9d-ae0d-4ed9-b984-cdc9be1529f1,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CH2PR13MB37987B86BCF9A316A0BCFEA48C340@CH2PR13MB3798.namprd13.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 028256169F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39840400004)(136003)(346002)(366004)(396003)(376002)(189003)(199004)(186003)(7416002)(71200400001)(7696005)(33656002)(53546011)(6506007)(44832011)(26005)(2906002)(107886003)(478600001)(54906003)(6916009)(9686003)(55016002)(4326008)(8936002)(81166006)(81156014)(316002)(76116006)(66946007)(86362001)(52536014)(64756008)(66476007)(5660300002)(66556008)(8676002)(66446008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR13MB3798;
 H:CH2PR13MB3368.namprd13.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: sifive.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: C+TxP2wsswsopPhTwfjtLy8nIa/w/CzzX0aJgdMg46oAyiT3SbHCEFfEcE/i3nDp/41g5xYq8s0uW3uD9ASRWjpFiuDJyK1jarW+dJ/thoyrFFvra+7ycttZ5ZOVQGcXi7DV2vhck6PN7KIglXMRJRqPxvOsH8ErrhdNYeWpS1xIHGW9H8mkZHgWJEmpwg9l5Vf/x1wHhmjUKh0nZj4H7IhIY6XiAvDEq+rh7jXt11khmJdqJCK/Y0+e1mWR76K1/vDsCaeJeIDZHK+oyh7UZ+RcrEr06k2ndpyMEq5heXBDrIXnaqNRSSK+XT3LsZBIAqheTIUHMCDFWiZMkNxAXC9DsSVO/1TCoj8ORf1ZYlgaH72h7aDRvVN5i+4ykIsiDYcm1y0GHgSTKBKoY9W4djY//N35ccy9APhLrn7V/NW/R+xCmLWHsjQ0XX7wqLAI
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: sifive.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5ac74a01-9d24-4ed8-2974-08d798bf78da
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jan 2020 07:00:42.8804 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 22f88e9d-ae0d-4ed9-b984-cdc9be1529f1
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: nGZ5eWg0TpRfrnbeXwN/vD3VuMmjxiBvMNPQb3/roq0l9ii8YARIeI/eZp46QstpfeB2FGphpDz4V0jn3xuIIA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR13MB3798
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_230045_764371_D15151C4 
X-CRM114-Status: GOOD (  20.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.76.47 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Sachin Ghadi <sachin.ghadi@sifive.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 Alexios Zavras <alexios.zavras@intel.com>, Palmer Dabbelt <palmer@dabbelt.com>,
 "Paul Walmsley \( Sifive\)" <paul.walmsley@sifive.com>,
 Thomas Gleixner <tglx@linutronix.de>, "bp@suse.de" <bp@suse.de>,
 linux-riscv <linux-riscv@lists.infradead.org>,
 Allison Randal <allison@lohutok.net>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBBbnVwIFBhdGVsIDxhbnVwQGJy
YWluZmF1bHQub3JnPg0KPiBTZW50OiAxNCBKYW51YXJ5IDIwMjAgMTA6MzANCj4gVG86IFlhc2gg
U2hhaCA8eWFzaC5zaGFoQHNpZml2ZS5jb20+DQo+IENjOiBQYXVsIFdhbG1zbGV5ICggU2lmaXZl
KSA8cGF1bC53YWxtc2xleUBzaWZpdmUuY29tPjsgUGFsbWVyIERhYmJlbHQNCj4gPHBhbG1lckBk
YWJiZWx0LmNvbT47IEFsYmVydCBPdSA8YW91QGVlY3MuYmVya2VsZXkuZWR1PjsgQWxsaXNvbg0K
PiBSYW5kYWwgPGFsbGlzb25AbG9odXRvay5uZXQ+OyBBbGV4aW9zIFphdnJhcyA8YWxleGlvcy56
YXZyYXNAaW50ZWwuY29tPjsNCj4gR3JlZyBLcm9haC1IYXJ0bWFuIDxncmVna2hAbGludXhmb3Vu
ZGF0aW9uLm9yZz47IFRob21hcyBHbGVpeG5lcg0KPiA8dGdseEBsaW51dHJvbml4LmRlPjsgYnBA
c3VzZS5kZTsgbGludXgtcmlzY3YgPGxpbnV4LQ0KPiByaXNjdkBsaXN0cy5pbmZyYWRlYWQub3Jn
PjsgbGludXgta2VybmVsQHZnZXIua2VybmVsLm9yZyBMaXN0IDxsaW51eC0NCj4ga2VybmVsQHZn
ZXIua2VybmVsLm9yZz47IFNhY2hpbiBHaGFkaSA8c2FjaGluLmdoYWRpQHNpZml2ZS5jb20+DQo+
IFN1YmplY3Q6IFJlOiBbUEFUQ0ggdjMgMi8yXSByaXNjdjogQWRkIHN1cHBvcnQgdG8gZGV0ZXJt
aW5lIG5vLiBvZiBMMiBjYWNoZQ0KPiB3YXkgZW5hYmxlZA0KPiANCj4gT24gTW9uLCBKYW4gMTMs
IDIwMjAgYXQgMTI6MDkgUE0gWWFzaCBTaGFoIDx5YXNoLnNoYWhAc2lmaXZlLmNvbT4gd3JvdGU6
DQo+ID4NCj4gPiBJbiBvcmRlciB0byBkZXRlcm1pbmUgdGhlIG51bWJlciBvZiBMMiBjYWNoZSB3
YXlzIGVuYWJsZWQgYXQgcnVudGltZSwNCj4gPiBpbXBsZW1lbnQgYSBwcml2YXRlIGF0dHJpYnV0
ZSAoIm51bWJlcl9vZl93YXlzX2VuYWJsZWQiKS4gUmVhZGluZyB0aGlzDQo+ID4gYXR0cmlidXRl
IHJldHVybnMgdGhlIG51bWJlciBvZiBlbmFibGVkIEwyIGNhY2hlIHdheXMgYXQgcnVudGltZS4N
Cj4gPg0KPiA+IFVzaW5nIHJpc2N2X3NldF9jYWNoZWluZm9fb3BzKCkgaG9vayBhIGN1c3RvbSBm
dW5jdGlvbiwgdGhhdCByZXR1cm5zDQo+ID4gdGhpcyBwcml2YXRlIGF0dHJpYnV0ZSwgdG8gdGhl
IGdlbmVyaWMgb3BzIHN0cnVjdHVyZSB3aGljaCBpcyB1c2VkIGJ5DQo+ID4gY2FjaGVfZ2V0X3By
aXZfZ3JvdXAoKSBpbiBjYWNoZWluZm8gZnJhbWV3b3JrLg0KPiA+DQo+ID4gU2lnbmVkLW9mZi1i
eTogWWFzaCBTaGFoIDx5YXNoLnNoYWhAc2lmaXZlLmNvbT4NCj4gPiAtLS0NCj4gPiAgZHJpdmVy
cy9zb2Mvc2lmaXZlL3NpZml2ZV9sMl9jYWNoZS5jIHwgMzgNCj4gPiArKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysNCj4gPiAgaW5jbHVkZS9zb2Mvc2lmaXZlL3NpZml2ZV9sMl9j
YWNoZS5oIHwgIDIgKysNCj4gPiAgMiBmaWxlcyBjaGFuZ2VkLCA0MCBpbnNlcnRpb25zKCspDQo+
ID4NCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9zb2Mvc2lmaXZlL3NpZml2ZV9sMl9jYWNoZS5j
DQo+ID4gYi9kcml2ZXJzL3NvYy9zaWZpdmUvc2lmaXZlX2wyX2NhY2hlLmMNCj4gPiBpbmRleCBh
NTA2OTM5Li44NzQxODg1IDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvc29jL3NpZml2ZS9zaWZp
dmVfbDJfY2FjaGUuYw0KPiA+ICsrKyBiL2RyaXZlcnMvc29jL3NpZml2ZS9zaWZpdmVfbDJfY2Fj
aGUuYw0KPiA+IEBAIC05LDYgKzksOCBAQA0KPiA+ICAjaW5jbHVkZSA8bGludXgvaW50ZXJydXB0
Lmg+DQo+ID4gICNpbmNsdWRlIDxsaW51eC9vZl9pcnEuaD4NCj4gPiAgI2luY2x1ZGUgPGxpbnV4
L29mX2FkZHJlc3MuaD4NCj4gPiArI2luY2x1ZGUgPGxpbnV4L2RldmljZS5oPg0KPiA+ICsjaW5j
bHVkZSA8YXNtL2NhY2hlaW5mby5oPg0KPiA+ICAjaW5jbHVkZSA8c29jL3NpZml2ZS9zaWZpdmVf
bDJfY2FjaGUuaD4NCj4gPg0KPiA+ICAjZGVmaW5lIFNJRklWRV9MMl9ESVJFQ0NGSVhfTE9XIDB4
MTAwIEBAIC0zMSw2ICszMyw3IEBADQo+ID4NCj4gPiAgc3RhdGljIHZvaWQgX19pb21lbSAqbDJf
YmFzZTsNCj4gPiAgc3RhdGljIGludCBnX2lycVtTSUZJVkVfTDJfTUFYX0VDQ0lOVFJdOw0KPiA+
ICtzdGF0aWMgc3RydWN0IHJpc2N2X2NhY2hlaW5mb19vcHMgbDJfY2FjaGVfb3BzOw0KPiA+DQo+
ID4gIGVudW0gew0KPiA+ICAgICAgICAgRElSX0NPUlIgPSAwLA0KPiA+IEBAIC0xMDcsNiArMTEw
LDM4IEBAIGludCB1bnJlZ2lzdGVyX3NpZml2ZV9sMl9lcnJvcl9ub3RpZmllcihzdHJ1Y3QNCj4g
PiBub3RpZmllcl9ibG9jayAqbmIpICB9DQo+ID4gRVhQT1JUX1NZTUJPTF9HUEwodW5yZWdpc3Rl
cl9zaWZpdmVfbDJfZXJyb3Jfbm90aWZpZXIpOw0KPiA+DQo+ID4gK2ludCBzaWZpdmVfbDJfbGFy
Z2VzdF93YXllbmFibGVkKHZvaWQpDQo+ID4gK3sNCj4gPiArICAgICAgIHJldHVybiByZWFkbChs
Ml9iYXNlICsgU0lGSVZFX0wyX1dBWUVOQUJMRSk7IH0NCj4gDQo+IFRoZSBzaWZpbmVfbDJfbGFy
Z2VzdF93YXllbmFibGVkKCkgaXMgbm90IGNhbGxlZCBmcm9tIGFueXdoZXJlIGVsc2Ugc28NCj4g
bWFrZSBpdCBzdGF0aWMgYW5kIHJlbmFtZSBpdCB0byBsMl9sYXJnZXN0X3dheWVuYWJsZWQoKS4N
Cg0KU3VyZSB3aWxsIGRvIHRoYXQgaW4gdjQNCg0KPiANCj4gPiArDQo+ID4gK3N0YXRpYyBzc2l6
ZV90IG51bWJlcl9vZl93YXlzX2VuYWJsZWRfc2hvdyhzdHJ1Y3QgZGV2aWNlICpkZXYsDQo+ID4g
KyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHN0cnVjdCBkZXZpY2Vf
YXR0cmlidXRlICphdHRyLA0KPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICBjaGFyICpidWYpIHsNCj4gPiArICAgICAgIHJldHVybiBzcHJpbnRmKGJ1ZiwgIiV1
XG4iLCBzaWZpdmVfbDJfbGFyZ2VzdF93YXllbmFibGVkKCkpOyB9DQo+ID4gKw0KPiA+ICtzdGF0
aWMgREVWSUNFX0FUVFJfUk8obnVtYmVyX29mX3dheXNfZW5hYmxlZCk7DQo+ID4gKw0KPiA+ICtz
dGF0aWMgc3RydWN0IGF0dHJpYnV0ZSAqcHJpdl9hdHRyc1tdID0gew0KPiA+ICsgICAgICAgJmRl
dl9hdHRyX251bWJlcl9vZl93YXlzX2VuYWJsZWQuYXR0ciwNCj4gPiArICAgICAgIE5VTEwsDQo+
ID4gK307DQo+ID4gKw0KPiA+ICtzdGF0aWMgY29uc3Qgc3RydWN0IGF0dHJpYnV0ZV9ncm91cCBw
cml2X2F0dHJfZ3JvdXAgPSB7DQo+ID4gKyAgICAgICAuYXR0cnMgPSBwcml2X2F0dHJzLA0KPiA+
ICt9Ow0KPiA+ICsNCj4gPiArY29uc3Qgc3RydWN0IGF0dHJpYnV0ZV9ncm91cCAqbDJfZ2V0X3By
aXZfZ3JvdXAoc3RydWN0IGNhY2hlaW5mbw0KPiA+ICsqdGhpc19sZWFmKSB7DQo+ID4gKyAgICAg
ICAvKiBXZSB3YW50IHRvIHVzZSBwcml2YXRlIGdyb3VwIGZvciBMMiBjYWNoZSBvbmx5ICovDQo+
ID4gKyAgICAgICBpZiAodGhpc19sZWFmLT5sZXZlbCA9PSAyKQ0KPiA+ICsgICAgICAgICAgICAg
ICByZXR1cm4gJnByaXZfYXR0cl9ncm91cDsNCj4gPiArICAgICAgIGVsc2UNCj4gPiArICAgICAg
ICAgICAgICAgcmV0dXJuIE5VTEw7DQo+ID4gK30NCj4gPiArDQo+ID4gIHN0YXRpYyBpcnFyZXR1
cm5fdCBsMl9pbnRfaGFuZGxlcihpbnQgaXJxLCB2b2lkICpkZXZpY2UpICB7DQo+ID4gICAgICAg
ICB1bnNpZ25lZCBpbnQgYWRkX2gsIGFkZF9sOw0KPiA+IEBAIC0xNzAsNiArMjA1LDkgQEAgc3Rh
dGljIGludCBfX2luaXQgc2lmaXZlX2wyX2luaXQodm9pZCkNCj4gPg0KPiA+ICAgICAgICAgbDJf
Y29uZmlnX3JlYWQoKTsNCj4gPg0KPiA+ICsgICAgICAgbDJfY2FjaGVfb3BzLmdldF9wcml2X2dy
b3VwID0gbDJfZ2V0X3ByaXZfZ3JvdXA7DQo+ID4gKyAgICAgICByaXNjdl9zZXRfY2FjaGVpbmZv
X29wcygmbDJfY2FjaGVfb3BzKTsNCj4gPiArDQo+ID4gICNpZmRlZiBDT05GSUdfREVCVUdfRlMN
Cj4gPiAgICAgICAgIHNldHVwX3NpZml2ZV9kZWJ1ZygpOw0KPiA+ICAjZW5kaWYNCj4gPiBkaWZm
IC0tZ2l0IGEvaW5jbHVkZS9zb2Mvc2lmaXZlL3NpZml2ZV9sMl9jYWNoZS5oDQo+ID4gYi9pbmNs
dWRlL3NvYy9zaWZpdmUvc2lmaXZlX2wyX2NhY2hlLmgNCj4gPiBpbmRleCA5MmFkZTEwLi41NWZl
ZmY1IDEwMDY0NA0KPiA+IC0tLSBhL2luY2x1ZGUvc29jL3NpZml2ZS9zaWZpdmVfbDJfY2FjaGUu
aA0KPiA+ICsrKyBiL2luY2x1ZGUvc29jL3NpZml2ZS9zaWZpdmVfbDJfY2FjaGUuaA0KPiA+IEBA
IC0xMCw2ICsxMCw4IEBADQo+ID4gIGV4dGVybiBpbnQgcmVnaXN0ZXJfc2lmaXZlX2wyX2Vycm9y
X25vdGlmaWVyKHN0cnVjdCBub3RpZmllcl9ibG9jaw0KPiA+ICpuYik7ICBleHRlcm4gaW50IHVu
cmVnaXN0ZXJfc2lmaXZlX2wyX2Vycm9yX25vdGlmaWVyKHN0cnVjdA0KPiA+IG5vdGlmaWVyX2Js
b2NrICpuYik7DQo+ID4NCj4gPiAraW50IHNpZml2ZV9sMl9sYXJnZXN0X3dheWVuYWJsZWQodm9p
ZCk7DQo+ID4gKw0KPiANCj4gWW91IGNhbiBkcm9wIHRoZSBzaWZpdmVfbDJfbGFyZ2VzdF93YXll
bmFibGVkKCkgZGVjbGFyYXRpb24gZnJvbSBoZXJlLg0KPiANCj4gPiAgI2RlZmluZSBTSUZJVkVf
TDJfRVJSX1RZUEVfQ0UgMA0KPiA+ICAjZGVmaW5lIFNJRklWRV9MMl9FUlJfVFlQRV9VRSAxDQo+
ID4NCj4gPiAtLQ0KPiA+IDIuNy40DQo+ID4NCj4gDQo+IEFwYXJ0IGZyb20gYWJvdmUgaXQgbG9v
a3MgZ29vZC4NCj4gDQo+IFJldmlld2VkLWJ5OiBBbnVwIFBhdGVsIDxhbnVwQGJyYWluZmF1bHQu
b3JnPg0KDQpUaGFua3MuDQoNCi0gWWFzaA0KDQo+IA0KPiBSZWdhcmRzLA0KPiBBbnVwDQo=

