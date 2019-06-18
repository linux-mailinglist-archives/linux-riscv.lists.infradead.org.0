Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 015084AE95
	for <lists+linux-riscv@lfdr.de>; Wed, 19 Jun 2019 01:12:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2ki4arzWBVWbtplkpuOjIrrbInYbJ6jVNUxv2d3oQf0=; b=IioKAyyZ2sNZ03
	+zQgMUen72XHagwh7az1zza3kRgEEIzHytrCcjgnGZZWvJ3/QQFVjSGsKIpwrJTsIsANj8rsS344m
	ffcPynrv3MCYDtxX86HUzsCJFwgHlQQB1c/gpZGDapAuckTGmqAVV7l4nUFuw0lz0/MeEKZ0366oF
	JEKdPD2JQxnNmnw3bQ2wi2EYrLOTMTXzWUayyn55ogpSbjjjLOueGO+2VpDBbdhMOH6oAwpQp2pFR
	EOuJ8T+xOdcorxr69W3SWROHz1n6S38GmB14I7Up3mbolCk2S3hIvJt/BkpQ67saTfS0js0/S/8Wl
	LENRn4zObuIXvSQmfLUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdNGo-0001rZ-1P; Tue, 18 Jun 2019 23:12:06 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdNGk-0001qd-6E
 for linux-riscv@lists.infradead.org; Tue, 18 Jun 2019 23:12:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1560899523; x=1592435523;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=wdGDk/rCK6MmREYzQrYgnXHm1djyjycy3pwOyCJ2Sm8=;
 b=flCF8tIzApUHUL1E7yTB4pCv61cCvAl4ubf0S6QI19lNLfJZEp5b9XQV
 xpEAyal++OGxyjxA50PBsjieX+M/7p7/z2LCNuF3iTQOvgzejvgDP0kmz
 PKewmePMPJfBZbtRDatqU0Q9HoTtcktX05kikT0CMTDGYXZO5FLcotezh
 DJi1MpNfGp+xjtxpHoXixRH7ShA/wIvTOWWQ8qV5PhxFstcgIzowLr8MQ
 JcdKTqOslj1++4dvolU5VctvPAxkM3Y4RvVK7ep0SRPztQIjp6rF0opRF
 uzGOCq3AK2sd2UFZ5HrnQh1P5sQTVVxcyKWCyjPumM73X0lorGPoVMjkx g==;
X-IronPort-AV: E=Sophos;i="5.63,390,1557158400"; d="scan'208";a="112554704"
Received: from mail-bn3nam01lp2058.outbound.protection.outlook.com (HELO
 NAM01-BN3-obe.outbound.protection.outlook.com) ([104.47.33.58])
 by ob1.hgst.iphmx.com with ESMTP; 19 Jun 2019 07:11:57 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wdGDk/rCK6MmREYzQrYgnXHm1djyjycy3pwOyCJ2Sm8=;
 b=G1Qftan7ZUcsP6dKZAWN/BNMD2mJB9OEYAzEurgd0k4c87z5UcjI3n0g3jpHGWwB2jzV0a2xwRTESFPO7JzmFD++ndY9Y37LdOzF8smWhAe+EYoVMlFxAeC3XrMBXKpYDurx5YShQQ/oEVpFP8YMkeOQlxUGIAmuOlPZNREHbG4=
Received: from BYAPR04MB4901.namprd04.prod.outlook.com (52.135.232.206) by
 BYAPR04MB4167.namprd04.prod.outlook.com (20.176.250.139) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1987.13; Tue, 18 Jun 2019 23:11:55 +0000
Received: from BYAPR04MB4901.namprd04.prod.outlook.com
 ([fe80::40b0:3c4b:b778:664d]) by BYAPR04MB4901.namprd04.prod.outlook.com
 ([fe80::40b0:3c4b:b778:664d%7]) with mapi id 15.20.1987.012; Tue, 18 Jun 2019
 23:11:55 +0000
From: Alistair Francis <Alistair.Francis@wdc.com>
To: "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>
Subject: Re: [PATCH v2 0/2] Add macb support for SiFive FU540-C000
Thread-Topic: [PATCH v2 0/2] Add macb support for SiFive FU540-C000
Thread-Index: AQHVJMPxUGJ6CrWTfEOSlZ7T+RNJNKafgw4CgAAZzACAAAECfoAAAOIAgAAC1UKAABYjAIAALLGAgABKKYCAAJMSAIABSp2A
Date: Tue, 18 Jun 2019 23:11:54 +0000
Message-ID: <e054e1c22cc52c41cea36b005de5a5ade0f8a23e.camel@wdc.com>
References: <1560745167-9866-1-git-send-email-yash.shah@sifive.com>
 <mvmtvco62k9.fsf@suse.de>
 <alpine.DEB.2.21.9999.1906170252410.19994@viisi.sifive.com>
 <mvmpnnc5y49.fsf@suse.de>
 <alpine.DEB.2.21.9999.1906170305020.19994@viisi.sifive.com>
 <mvmh88o5xi5.fsf@suse.de>
 <alpine.DEB.2.21.9999.1906170419010.19994@viisi.sifive.com>
 <F48A4F7F-0B0D-4191-91AD-DC51686D1E78@sifive.com>
 <d2836a90b92f3522a398d57ab8555d08956a0d1f.camel@wdc.com>
 <alpine.DEB.2.21.9999.1906172019040.15057@viisi.sifive.com>
In-Reply-To: <alpine.DEB.2.21.9999.1906172019040.15057@viisi.sifive.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Alistair.Francis@wdc.com; 
x-originating-ip: [199.255.44.250]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b7841107-ad62-4dfd-a4d1-08d6f4425b11
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:BYAPR04MB4167; 
x-ms-traffictypediagnostic: BYAPR04MB4167:
x-ms-exchange-purlcount: 2
wdcipoutbound: EOP-TRUE
x-microsoft-antispam-prvs: <BYAPR04MB4167558D7B95D6A935ED14CF90EA0@BYAPR04MB4167.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 007271867D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(6029001)(39860400002)(376002)(346002)(136003)(366004)(396003)(199004)(189003)(81166006)(7736002)(6116002)(118296001)(2906002)(486006)(71200400001)(316002)(4326008)(36756003)(8936002)(6306002)(11346002)(186003)(54906003)(2351001)(6436002)(73956011)(6512007)(6246003)(53936002)(446003)(71190400001)(5640700003)(25786009)(99286004)(72206003)(305945005)(66066001)(7416002)(6916009)(3846002)(66946007)(478600001)(2616005)(229853002)(2501003)(68736007)(8676002)(966005)(6506007)(102836004)(76116006)(66556008)(6486002)(66446008)(86362001)(66476007)(64756008)(476003)(76176011)(5660300002)(14454004)(26005)(256004)(81156014);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB4167;
 H:BYAPR04MB4901.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: SXMcN5hIZqKBgsnD5O6yENR/GBnGh6DilH52ZRaPKP47w5hOx7NyBj8Q8tM8zxkVpJwyFb/t6qN3G71Zs4AzxwF2ZUsDgietuXwLK2e03Da/fXG3GNoR6HK7hnWEq6jvAzGklqJZUEhLeRODpgcyOOZeqluakaJy1hxX4li9Kt8PxfZXsj4v2Ua/kIxZkjoxNii38+2BiWOJAha30LJyteOfa3rWNusB8Vpjaznh5Spskv+8jE25Ip/TiVeyvOhIgHEP392jyWdsZelmAVKFnt9CQ2AALlolWMvN/8ldYK4q3Ovm1soEYB29s0hE5SKsqyH/vhqdEGLvQM02esSPrJDoZAHzzeTRf0ZqCMMOky4ArA0QNoUXTX82q/F1GFQxmqnNzRFkkkZoa99ELhZnO0F2BF81DmUc6nHS8Pd9mjo=
Content-ID: <B51FAF1422A4224AB60D396DA226F398@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b7841107-ad62-4dfd-a4d1-08d6f4425b11
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Jun 2019 23:11:55.0886 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Alistair.Francis@wdc.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB4167
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_161202_309659_4A111C28 
X-CRM114-Status: GOOD (  20.23  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.45 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>,
 "jamez@wit.com" <jamez@wit.com>, "palmer@sifive.com" <palmer@sifive.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "nicolas.ferre@microchip.com" <nicolas.ferre@microchip.com>,
 "sachin.ghadi@sifive.com" <sachin.ghadi@sifive.com>,
 "yash.shah@sifive.com" <yash.shah@sifive.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "troy.benjegerdes@sifive.com" <troy.benjegerdes@sifive.com>,
 "schwab@suse.de" <schwab@suse.de>, "ynezz@true.cz" <ynezz@true.cz>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

T24gTW9uLCAyMDE5LTA2LTE3IGF0IDIwOjI2IC0wNzAwLCBQYXVsIFdhbG1zbGV5IHdyb3RlOg0K
PiBPbiBNb24sIDE3IEp1biAyMDE5LCBBbGlzdGFpciBGcmFuY2lzIHdyb3RlOg0KPiANCj4gPiA+
IFRoZSBsZWdhY3kgTS1tb2RlIFUtYm9vdCBoYW5kbGVzIHRoZSBwaHkgcmVzZXQgYWxyZWFkeSwg
YW5kIEnigJl2ZQ0KPiA+ID4gYmVlbg0KPiA+ID4gYWJsZSB0byBsb2FkIHVwc3RyZWFtIFMtbW9k
ZSB1Ym9vdCBhcyBhIHBheWxvYWQgdmlhIFRGVFAsIGFuZA0KPiA+ID4gdGhlbiANCj4gPiA+IGxv
YWQgYW5kIGJvb3QgYSA0LjE5IGtlcm5lbC4gDQo+ID4gPiANCj4gPiA+IEl0IHdvdWxkIGJlIG5p
Y2UgdG8gZ2V0IHRoaXMgYWxsIHdvcmtpbmcgd2l0aCA1LngsIGhvd2V2ZXIgdGhlcmUNCj4gPiA+
IGFyZQ0KPiA+ID4gc3RpbGwNCj4gPiA+IHNldmVyYWwgbWlzc2luZyBwaWVjZXMgdG8gcmVhbGx5
IGhhdmUgaXQgd29yayB3ZWxsLg0KPiA+IA0KPiA+IExldCBtZSBrbm93IHdoYXQgaXMgc3RpbGwg
bWlzc2luZy9kb2Vzbid0IHdvcmsgYW5kIEkgY2FuIGFkZCBpdC4gQXQNCj4gPiB0aGUNCj4gPiBt
b21lbnQgdGhlIG9ubHkga25vd24gaXNzdWUgSSBrbm93IG9mIGlzIGEgbWlzc2luZyBTRCBjYXJk
IGRyaXZlcg0KPiA+IGluIFUtDQo+ID4gQm9vdC4NCj4gDQo+IFRoZSBEVCBkYXRhIGhhcyBjaGFu
Z2VkIGJldHdlZW4gdGhlIG5vbi11cHN0cmVhbSBkYXRhIHRoYXQgcGVvcGxlIA0KPiBkZXZlbG9w
ZWQgYWdhaW5zdCBwcmV2aW91c2x5LCB2cy4gdGhlIERUIGRhdGEgdGhhdCBqdXN0IHdlbnQNCj4g
dXBzdHJlYW0gDQo+IGhlcmU6DQo+IA0KPiBodHRwczovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20v
bGludXgva2VybmVsL2dpdC90b3J2YWxkcy9saW51eC5naXQvY29tbWl0Lz9pZD03MjI5NmJkZTRm
NDIwNzU2Njg3MmVlMzU1OTUwYTU5Y2JjMjlmODUyDQo+IA0KPiBhbmQNCj4gDQo+IGh0dHBzOi8v
Z2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L3RvcnZhbGRzL2xpbnV4Lmdp
dC9jb21taXQvP2lkPWMzNWYxYjg3ZmM1OTU4MDdmZjE1ZDI4MzRkMjQxZjk3NzE0OTcyMDUNCj4g
DQo+IFNvIFVwc3RyZWFtIFUtQm9vdCBpcyBnb2luZyB0byBuZWVkIHNldmVyYWwgcGF0Y2hlcyB0
byBnZXQgdGhpbmdzDQo+IHdvcmtpbmcgDQo+IGFnYWluLiAgQ2xvY2sgaWRlbnRpZmllcnMgYW5k
IEV0aGVybmV0IGFyZSB0d28ga25vd24gYXJlYXMuDQoNClllcCwgQW51cCBoYXMgc2VudCBwYXRj
aGVzIHRvIFUtQm9vdCBhbmQgT3BlblNCSS4NCg0KQWxpc3RhaXINCg0KPiANCj4gDQo+IC0gUGF1
bA0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgt
cmlzY3YgbWFpbGluZyBsaXN0CmxpbnV4LXJpc2N2QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yaXNjdgo=
