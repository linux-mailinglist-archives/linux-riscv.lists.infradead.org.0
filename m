Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AB0A1149F9
	for <lists+linux-riscv@lfdr.de>; Fri,  6 Dec 2019 00:46:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-ID:Content-Type:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=nGGNDaxmxk4trlRXhVqurK2FUxobwHT2HiYOKSW70/k=; b=aNbDmltifXhMGzJ42x0H7ysKt
	pXpXy6PcE4lRfjn0rhaZCr8bN/To0fKVhr/YFs2KWHvn0RD3UnRPw2ywpIEUz5ydPjO9Cl4rK9FXJ
	3o0aBD9OGujafQsUZl5dtq0nfQq6KmnhhtIKxed0gq3SRk1lJ5WxjXEpRlJIfPrw24vS/z95KCxM4
	HpxHZ4qlr/AXYx87DgO1McsI61XBpYIlOYs3OWwA1bkmnYZAf2UWlvK80ZW+LMnHlOe6TslIZ5xbc
	q/xShYT+P7L9eE6/4sEnVs4EByk5MhAlDz0zKAFpwIXB+GKwWvRl08hl6OJlZOpbqYfoHudOAD2SS
	T8sx21E6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1id0pM-0006w8-60; Thu, 05 Dec 2019 23:46:32 +0000
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1id0pD-0006q8-OC
 for linux-riscv@lists.infradead.org; Thu, 05 Dec 2019 23:46:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1575589583; x=1607125583;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=nGGNDaxmxk4trlRXhVqurK2FUxobwHT2HiYOKSW70/k=;
 b=IN56z5MOvYzOy8xk7kqGD19BInrsANMgSa/vA5EI96itgEDnxzprnG4L
 5g4fnoZTP5CVjbauuHDFS+i7yVrk6a0jL0Nixppl6LSKgLhyYh7g1H6ni
 hRFV4HReMfhRKV7E5AxeQxjrWtiER53J2ai8Meluxir++quXPrhKSw54z
 8JxST08CK/xs8Rpnc+yuQeAHhBtGESnPjr199Ydt/EGoM37BeKBNiC1Me
 IYaEeEwbXdrzhUHU2FKMDVen2aBcK2hPjU7WqajwbfTOp2+Ijy/YbGf7a
 EfO22d/jYRLxuUUymOlSjkd0Cv04VR4+gsmfJvl6WQI3HF7/7SKwuz6od g==;
IronPort-SDR: ueuYaNkgF2WS79TS29+xOgvHw9DUIXdHHfh15jYNu+C6ghOsbdWx4gw0zE+M47Vj38EXMXsm5Z
 s3gDN5ZshOXVBXafutPzIeNQQ3slXgIeyxePJ5YN/HLluVjXVYLYUNmgu3A80MKuQN/IaRc75j
 8CQbmu3wJ3PfOdCzdxFJETpOgDvHUrldbFya9QTbg5yIHeh3b8iS46qiEFhHJEoytuDsXusJJ1
 e1JUC3Lg8KWXAKp77cGzmap6l3phg7Iw5VEIjrCNdqBLP4WQKHKVnUoLycWOApIn5hVCiVd7KL
 Fr0=
X-IronPort-AV: E=Sophos;i="5.69,282,1571673600"; d="scan'208";a="124718447"
Received: from mail-mw2nam10lp2102.outbound.protection.outlook.com (HELO
 NAM10-MW2-obe.outbound.protection.outlook.com) ([104.47.55.102])
 by ob1.hgst.iphmx.com with ESMTP; 06 Dec 2019 07:46:20 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=H3OY8DaZjuV3m0KSMtlfD3nf6wLszMF8o/nCNNLJOQsFhOHMOPIo18UhJjTROoyjUzbGaisGr9D6Q9tLtraeyVA3c9G0dDgUpIgwemVp3944mCe6FIsA8uOnIZBcnsPZ7QkfcJzamDqY4zjl2Wm8ZPxdoLbuuH2005qeLN845KZx4j3N60QNAVerNLe4huNOROanzU5CWI2k94bl6E69tBKWQ0I0VuSDrgQraNRGs4oIZUnew/i8gAQU/btoBzc+BGNWthV/YgYt3FkXDmoDU1XGEq0iToJsJYyllwOWwJz/UeHukV6a7lbZWCtny+AFoWFKqcag1Mhqv/PlHrZWRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nGGNDaxmxk4trlRXhVqurK2FUxobwHT2HiYOKSW70/k=;
 b=X4DGuq3OkNtPfq2gVVoAleJEn7yeHtcDx9jAmHoyywjsLr894xcFFUZoniiUEdXCwOft6DzVYps4f695zFfPYPs/d3tyrCVGLjBnWrqvDaoYyFy+uReOlTE/QqQVLCK7Sk1n+iC27T91X9l8hw7W2LAhKewi601PwmQjHtOMj1NTkIcPlrCXUpo9f6Xogfn/iyuIzd/DB/+6g/pLcgp8GGbJKMgUpMgi7ob7rq/rQdUYe/tJCUfFPJ/W1FFuUbpDMKfpO+5RW+ADPBBoraJ1NUOaDyxHA78cE4xKYcxyxlf4AJEy60YiYRU4ikLio4zbxZIsZVuIwLZnj0u2Y61Tjw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nGGNDaxmxk4trlRXhVqurK2FUxobwHT2HiYOKSW70/k=;
 b=tVwWdpLsdNjYvtGYI/Fu3FmmCGO/XOJZy3BhFkl+oylHMyfgejK1+y1iK9zE3uiMc1VUVehjzg/PF74RtgwZ7Ib18VJhcxb2vKH/WKD4SJlrFf2qkgoHahpqSdgAUzMK6qdbShVyCZCUGfmLy7hAogbYG0Kam91rTfQsxOiLklc=
Received: from BYAPR04MB4901.namprd04.prod.outlook.com (52.135.232.206) by
 BYAPR04MB3925.namprd04.prod.outlook.com (52.135.215.12) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2495.22; Thu, 5 Dec 2019 23:46:19 +0000
Received: from BYAPR04MB4901.namprd04.prod.outlook.com
 ([fe80::545f:1547:d48a:7fbc]) by BYAPR04MB4901.namprd04.prod.outlook.com
 ([fe80::545f:1547:d48a:7fbc%7]) with mapi id 15.20.2516.014; Thu, 5 Dec 2019
 23:46:19 +0000
From: Alistair Francis <Alistair.Francis@wdc.com>
To: "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>
Subject: Re: [GIT PULL] Second set of RISC-V updates for v5.5-rc1
Thread-Topic: [GIT PULL] Second set of RISC-V updates for v5.5-rc1
Thread-Index: AQHVqoAixayXodMShUatl8RuOOpeiKep7kMAgABfWICAABJLgIAAAdGAgAB4CACAABG3AIABQliAgAAE5oCAAAMbAA==
Date: Thu, 5 Dec 2019 23:46:19 +0000
Message-ID: <3286a00cb9c8033872f533ec3e7f3db3e652c30c.camel@wdc.com>
References: <alpine.DEB.2.21.9999.1912040050430.56420@viisi.sifive.com>
 <CAAhSdy2id0FoLBxWwN7WHEk5Am770BizkK=sZO0-G54MtYa6DQ@mail.gmail.com>
 <9044bad02aa6553cdb2523294500b50fccf3fd2a.camel@wdc.com>
 <alpine.DEB.2.21.9999.1912041128400.186402@viisi.sifive.com>
 <81530734312456aab8b9625d7e9bb071c43db1c5.camel@wdc.com>
 <alpine.DEB.2.21.9999.1912041644170.206929@viisi.sifive.com>
 <84c4ee600c0dd235a0fcc257115807af7207b5f6.camel@wdc.com>
 <alpine.DEB.2.21.9999.1912051435130.239155@viisi.sifive.com>
 <99bbf5710da82c8b52e59ad5fc4e44471573ecd3.camel@wdc.com>
In-Reply-To: <99bbf5710da82c8b52e59ad5fc4e44471573ecd3.camel@wdc.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Alistair.Francis@wdc.com; 
x-originating-ip: [199.255.44.250]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 72a7f5e1-b9d9-446a-6a90-08d779dd5398
x-ms-traffictypediagnostic: BYAPR04MB3925:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR04MB39259589942BEC7926173EA7905C0@BYAPR04MB3925.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 02426D11FE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(136003)(366004)(376002)(346002)(396003)(39860400002)(199004)(189003)(66476007)(54906003)(25786009)(14444005)(6916009)(66556008)(229853002)(316002)(478600001)(4326008)(305945005)(26005)(2616005)(5660300002)(36756003)(64756008)(66446008)(11346002)(66946007)(76116006)(186003)(81156014)(71190400001)(14454004)(6512007)(2906002)(81166006)(118296001)(6486002)(8676002)(102836004)(71200400001)(5640700003)(76176011)(99286004)(15650500001)(86362001)(6506007)(8936002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB3925;
 H:BYAPR04MB4901.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 1uJ+GWiPGfwLjtLzZQ+UquIdekqX3BD6AdDxVMesj0tm5zdPfMV+0DlNCrcyUiT3XX1MwI0PXZ7UZwqjciKLPoJB39tOuEDUA41Ts33+cmGNGO3nuV+k1LEcMG4kNm57lUkQJ/q+mJalJ9nFfS/hJVfiweiUH3v9Jc+MzFnC17NVUN5KfQa78yQiS7rAoERCkljjimGWsi2FP7DtuSUrsikmEmSp1GXR+zdzpH3i1ZVjnJkYaRdIjkGP9WB6E8/xeuH5Wnye3ngYL4in5thG8h4tJodQUdTYeJHF7Iv5E7aI0EdB4Dktj1SVi3l4l1ZjOnIG5BxzDumOjkSBuRc+vkZl6BNgiqji0iIdGWSZn/zVOrg/L0qVwUEfLlnusCLbRXYoIr9LQSF5EvzlP7GgHMiJFIv5h4PvKYpilqwfLBqoAlIt2ZiBWFwIy2Y6Ztvg
Content-Type: text/plain; charset="utf-8"
Content-ID: <8B3D30700D5A5E449DFD75FC13FF0C8D@namprd04.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 72a7f5e1-b9d9-446a-6a90-08d779dd5398
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Dec 2019 23:46:19.1136 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: uuMUgganV5lsa2t8xh5L79OJhA4vdA0p6w1mXwHqNKNlck1777IicqUnXMmaJlbNRkbbjbr44AAyap1M6GxesF5ZFMFjFGpV4LL+XxAipek=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB3925
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_154623_838646_9A598989 
X-CRM114-Status: GOOD (  39.26  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.42 listed in list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "anup@brainfault.org" <anup@brainfault.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Atish Patra <Atish.Patra@wdc.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "torvalds@linux-foundation.org" <torvalds@linux-foundation.org>,
 "hch@lst.de" <hch@lst.de>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

T24gVGh1LCAyMDE5LTEyLTA1IGF0IDE1OjI5IC0wODAwLCBBbGlzdGFpciBGcmFuY2lzIHdyb3Rl
Og0KPiBPbiBUaHUsIDIwMTktMTItMDUgYXQgMTU6MTIgLTA4MDAsIFBhdWwgV2FsbXNsZXkgd3Jv
dGU6DQo+ID4gT24gVGh1LCA1IERlYyAyMDE5LCBBbGlzdGFpciBGcmFuY2lzIHdyb3RlOg0KPiA+
IA0KPiA+ID4gT24gV2VkLCAyMDE5LTEyLTA0IGF0IDE4OjU0IC0wODAwLCBQYXVsIFdhbG1zbGV5
IHdyb3RlOg0KPiA+ID4gPiBPbiBXZWQsIDQgRGVjIDIwMTksIEFsaXN0YWlyIEZyYW5jaXMgd3Jv
dGU6DQo+ID4gPiA+IA0KPiA+ID4gPiA+IEl0IGlzIHRvbyBtdWNoIHRvIGV4cGVjdCBldmVyeSBk
aXN0cm8gdG8gbWFpbnRhaW4gYSBkZWZjb25maWcNCj4gPiA+ID4gPiBmb3IgDQo+ID4gPiA+ID4g
UklTQy1WLg0KPiA+ID4gPiANCj4gPiA+ID4gVGhlIG1ham9yIExpbnV4IGRpc3RyaWJ1dGlvbnMg
bWFpbnRhaW4gdGhlaXIgb3duIGtlcm5lbA0KPiA+ID4gPiBjb25maWd1cmF0aW9uIA0KPiA+ID4g
PiBmaWxlcywgY29tcGxldGVseSBpZ25vcmluZyBrZXJuZWwgZGVmY29uZmlncy4gIFRoaXMgaGFz
IGJlZW4gc28NCj4gPiA+ID4gZm9yIGEgDQo+ID4gPiA+IGxvbmcgdGltZS4NCj4gPiA+IA0KPiA+
ID4gVGhhdCBtaWdodCBiZSB0cnVlIGZvciB0aGUgdHJhZGl0aW9uYWwgImRlc2t0b3AiIGRpc3Ry
b3MsIGJ1dA0KPiA+ID4gZW1iZWRkZWQNCj4gPiA+IGRpc3Ryb3MgKHRoZSBtYWluIHRhcmdldCBm
b3IgUklTQy1WIGF0IHRoZSBtb21lbnQpIGRvbid0DQo+ID4gPiBnZW5lcmFsbHkNCj4gPiA+IGRv
DQo+ID4gPiB0aGlzLg0KPiA+IA0KPiA+IE1heWJlIGluIHRoaXMgZGlzY3Vzc2lvbiB3ZSBjYW4g
YWdyZWUgdG8gdXNlIHRoZSBjb21tb24NCj4gPiBkaXN0aW5jdGlvbiANCj4gPiBiZXR3ZWVuIGRp
c3RyaWJ1dGlvbnMgYW5kIGRpc3RyaWJ1dGlvbiBidWlsZCBmcmFtZXdvcmtzLCB3aGVyZQ0KPiA+
IHVzZXJzDQo+ID4gb2YgDQo+ID4gdGhlIGxhdHRlciBuZWVkIHRvIGJlIG1vcmUgdGVjaG5pY2Fs
bHkgc29waGlzdGljYXRlZCAtIGFzIG9wcG9zZWQNCj4gPiB0byANCj4gPiBkb3dubG9hZGluZyBh
IGRpc2sgaW1hZ2UuDQo+IA0KPiBXaHkgaXMgdGhlcmUgYSBkaXN0aW5jdGlvbj8NCj4gDQo+IFRo
ZXJlIGFyZSBsb3RzIG9mIGRpc2sgaW1hZ2VzIHRoYXQgeW91IGNhbiBqdXN0IGRvd25sb2FkIHdo
aWNoIGFyZQ0KPiBiYXNlZCBvbiBPRSBvciBidWlsZHJvb3QuIExvdHMgb2YgcGVvcGxlIHVzZSBP
RSBpbWFnZXMgYW5kIG5ldmVyDQo+IHJlYWxpc2UgaXQuDQo+IA0KPiBJbiB0aGUgc2FtZSB3YXkg
dGhhdCB0aGVyZSBhcmUgYnVpbGQgZW52aXJvbWVudHMgYmFzZWQgb24gdGhlDQo+IHN0YW5kYXJk
DQo+ICJkZXNrdG9wIiBkaXN0cm9zLiBJbiBib3RoIGNhc2VzIHRoZXNlIGFyZSBkaXN0cm9zLg0K
PiANCj4gPiA+ID4gPiBXaGljaCBpcyB3aHkgd2UgY3VycmVudGx5IHVzZSB0aGUgZGVmY29uZmln
IGFzIGEgYmFzZSBhbmQNCj4gPiA+ID4gPiBhcHBseSANCj4gPiA+ID4gPiBleHRyYSBmZWF0dXJl
cyB0aGF0IGRpc3RybyB3YW50IG9uIHRvcC4NCj4gPiA+ID4gDQo+ID4gPiA+IEFzIHlvdSBrbm93
LCBzaW5jZSB5b3UndmUgd29ya2VkIG9uIHNvbWUgb2YgdGhlIGRpc3RyaWJ1dGlvbg0KPiA+ID4g
PiBidWlsZGVyIA0KPiA+ID4gPiBmcmFtZXdvcmtzIChub3QgZGlzdHJpYnV0aW9ucykgbGlrZSBP
RSBhbmQgQnVpbGRyb290LCB0aG9zZQ0KPiA+ID4gPiBidWlsZCANCj4gPiA+ID4gc3lzdGVtcyBo
YXZlIHNvcGhpc3RpY2F0ZWQga2VybmVsIGNvbmZpZ3VyYXRpb24gcGF0Y2hpbmcgYW5kDQo+ID4g
PiA+IG92ZXJyaWRlIA0KPiA+ID4gPiBzeXN0ZW1zIHRoYXQgY2FuIGRpc2FibGUgdGhlIGRlYnVn
IG9wdGlvbnMgaWYgdGhlIG1haW50YWluZXJzDQo+ID4gPiA+IHRoaW5rIA0KPiA+ID4gPiBpdCdz
IGEgZ29vZCBpZGVhIHRvIGRvIHRoYXQuDQo+ID4gPiANCj4gPiA+IFllcyB0aGV5IGRvLiBBcyBJ
IHNhaWQsIHdlIHN0YXJ0IHdpdGggdGhlIGRlZmNvbmZpZyBhbmQgdGhlbg0KPiA+ID4gYXBwbHkN
Cj4gPiA+IGNvbmZpZyBjaGFuZ2VzIG9uIHRvcC4gRXZlcnkgZGl2ZXJzaW9uIGlzIGEgbWFpbnRh
aW5lbmNlIGJ1cmRlbg0KPiA+ID4gc28NCj4gPiA+IHdoZXJlIHBvc3NpYmxlIHdlIGRvbid0IG1h
a2UgYW55IGNoYW5nZWQuIEFsbCBvZiB0aGUgUUVNVQ0KPiA+ID4gbWFjaGluZXMNCj4gPiA+IGN1
cnJlbnRseSBkb24ndCBoYXZlIGNvbmZpZyBjaGFuZ2VzIChhbmQgaG9wZWZ1bGx5IG5ldmVyIHdp
bGwpIGFzDQo+ID4gPiBpdCdzDQo+ID4gPiBhIHBhaW4gdG8gbWFpbnRhaW4uDQo+ID4gDQo+ID4g
SSdtIG9wZW4gdG8geW91ciBjb25jZXJucyBoZXJlLiAgQ2FuIHlvdSBoZWxwIG1lIHVuZGVyc3Rh
bmQgd2h5DQo+ID4gYWRkaW5nIGEgDQo+ID4gZmV3IGxpbmVzIHRvIHRoZSBrZXJuZWwgY29uZmln
dXJhdGlvbiBmcmFnbWVudHMgdG8gZGlzYWJsZSB0aGUNCj4gPiBkZWJ1ZyANCj4gPiBvcHRpb25z
IGNyZWF0ZXMgbWFpbnRlbmFuY2UgcGFpbj8gIElzbid0IGl0IGp1c3QgYSBtYXR0ZXIgb2YgYWRk
aW5nDQo+ID4gYQ0KPiANCj4gRm9yIG9uZSwgd2UgaGF2ZSB0aGUgc2FtZSBidXJkZW4gYXMgeW91
IGRvLg0KPiANCj4gWW91IGZlZWwgdGhhdCBpdCdzIHRvbyBtdWNoIG9mIGEgYnVyZGVuIHRvIGhh
dmUgYSBjb25maWcgZnJhZ21lbnQgaW4NCj4gdHJlZSB0byBlbmFibGUgZGVidWcuIFlvdSBjbGVh
cmx5IGZlZWwgdGhhdCBoYXZpbmcgYQ0KPiBgZXh0cmFfZGVidWcuY29uZmlnYCBmcmFnbWVudCBm
b3IgeW91IGlzIHRvbyBtdWNoIG9mIGEgYnVyZGVuLCB3aHkgaXMNCj4gaXQgbm90IGEgYnVyZGVu
IGZvciBkaXN0cm9zPw0KPiANCj4gPiBmZXcgDQo+ID4gbGluZXMgdG8gZGlzYWJsZSB0aGUgZGVi
dWcgb3B0aW9ucywgYW5kIC0tIHNpbmNlIHlvdSBjbGVhcmx5IGRvbid0DQo+ID4gd2FudCANCj4g
PiB0aGVtIGVuYWJsZWQgZm9yIGFueSBwbGF0Zm9ybSAtLSBqdXN0IGxlYXZpbmcgdGhlbSBpbiB0
aGVyZT8NCj4gDQo+IExlYXZlIHRoZW0gaW4gd2hlcmU/DQo+IA0KPiBObyBvdGhlciBhcmNoaXRl
Y3R1cmUgZG9lcyB0aGlzLiBOb3cgd2UgaGF2ZSB0byBoYXZlIGEgc3BlY2lhbCBjb25maWcNCj4g
ZnJhZ21lbnQgYWRkZWQganVzdCBmb3IgUklTQy1WLiBXaHkgaXMgUklTQy1WIHNvIHNwZWNpYWwg
dGhhdCBpdA0KPiBuZWVkcw0KPiBpdCdzIG93biBmcmFnbWVudCB0aGF0IG90aGVyIGFyY2hlcyBk
b24ndCBoYXZlPw0KPiANCj4gPiA+ID4gPiA+IGRpc3Ryb3MgYW5kIGJlbmNobWFya2VycyB3aWxs
IGNyZWF0ZSB0aGVpciBvd24gS2NvbmZpZ3MgZm9yDQo+ID4gPiA+ID4gPiB0aGVpcg0KPiA+ID4g
PiA+ID4gbmVlZHMuDQo+ID4gPiA+ID4gDQo+ID4gPiA+ID4gTGlrZSBJIHNhaWQsIHRoYXQgaXNu
J3QgdHJ1ZS4gQWZ0ZXIgdGhpcyBwYXRjaCBpcyBhcHBsaWVkDQo+ID4gPiA+ID4gKGFuZA0KPiA+
ID4gPiA+IGl0IA0KPiA+ID4gPiA+IG1ha2VzIGl0IHRvIGEgcmVsZWFzZSkgYWxsIE9FIHVzZXJz
IHdpbGwgbm93IGhhdmUgYSBzbG93ZXINCj4gPiA+ID4gPiBSSVNDLVYgDQo+ID4gPiA+ID4ga2Vy
bmVsLg0KPiA+ID4gPiANCj4gPiA+ID4gT0UgZG9lc24ndCBoYXZlIGFueSBSSVNDLVYgc3VwcG9y
dCB1cHN0cmVhbSwgc28gcHVyZSBPRSB1c2Vycw0KPiA+ID4gPiB3b24ndA0KPiA+ID4gPiBub3Rp
Y2UgDQo+ID4gPiANCj4gPiA+IFRoYXQgaXMganVzdCBub3QgdHJ1ZS4gDQo+ID4gDQo+ID4gQWZ0
ZXIgZ2V0dGluZyB5b3VyIHJlc3BvbnNlLCBJIHJldmlld2VkIHRoZSBPRS1jb3JlIHRyZWUgdGhh
dCBJDQo+ID4gaGF2ZQ0KPiA+IGhlcmUsIA0KPiA+IHdoaWNoIGlzIGJhc2VkIG9uIGZvbGxvd2lu
ZyB0aGUgT0UtY29yZSAiZ2V0dGluZyBzdGFydGVkIg0KPiA+IGluc3RydWN0aW9ucy4gDQo+ID4g
VGhlIHJlc3VsdCBpcyBhIHRyZWUgd2l0aCBubyBSSVNDLVYgbWFjaGluZSBzdXBwb3J0LiAgTG9v
a2luZyBhZ2Fpbg0KPiA+IGF0IA0KPiA+IHRob3NlIGluc3RydWN0aW9ucywgSSBzZWUgdGhhdCB0
aGV5IGNoZWNrIG91dCB0aGUgbGFzdCByZWxlYXNlLA0KPiA+IHJhdGhlciANCj4gPiB0aGFuIHRo
ZSBjdXJyZW50IHRvcCBvZiB0aGUgdHJlZTsgYW5kIHRoZSBjdXJyZW50IHRvcCBvZiB0cmVlIGRv
ZXMNCj4gPiBoYXZlIGEgDQo+ID4gUUVNVSBSSVNDLVYgbWFjaGluZS4gIFNvIHRoaXMgc3RhdGVt
ZW50IG9mIHlvdXJzIGlzIGNvcnJlY3QsIGFuZCBJDQo+ID4gd2FzIGluIA0KPiA+IGVycm9yIGFi
b3V0IHRoZSBjdXJyZW50IHRvcC1vZi10cmVlIE9FLWNvcmUgc3VwcG9ydC4NCj4gDQo+IFRoZSBs
YXN0IHJlbGVhc2UgKFpldXMpIGFsc28gaGFzIFJJU0MtViBzdXBwb3J0Li4uLg0KDQpXaG9vcHMs
IEkgbGVmdCB0aGUgZG90cyB0byByZW1pbmQgbWUgdG8gY29tZSBiYWNrIGFuZCBkb3VibGUgY2hl
Y2sNCnRoaXMsIGJ1dCB0aGVuIEkgZm9yZ290IHRvIHJlbW92ZSB0aGVtLg0KDQo+IA0KPiA+ID4g
WW91IHRhbGsgbGF0ZXIgYWJvdXQgbWlzaW5mb3JtYXRpb24gYnV0IHRoaXMgaXMgYSBibGF0ZW50
IGxpZS4NCj4gPiANCj4gPiBUaGlzIGlzbid0IGFjY2VwdGFibGUuICBXZSd2ZSBtZXQgZWFjaCBv
dGhlciBpbiBwZXJzb24sIGFuZCBJJ3ZlIA0KPiA+IGNvbnNpZGVyZWQgeW91IGFuIGVuam95YWJs
ZSBhbmQgdHJ1c3R3b3J0aHkgcGVyc29uIHRvIGRpc2N1c3MNCj4gPiB0ZWNobmljYWwgDQo+ID4g
aXNzdWVzIHdpdGguICBUaGlzIGlzIHRoZSBmaXJzdCB0aW1lIHRoYXQgeW91J3ZlIGV2ZXIgcHVi
bGljbHkNCj4gPiBhY2N1c2VkIG1lIA0KPiA+IG9mIG1pc3JlcHJlc2VudGluZyBhbiBpc3N1ZSB3
aXRoIGludGVudCB0byBkZWNlaXZlLiAgVGhlcmUncyBhIGJpZyANCj4gPiBkaWZmZXJlbmNlIGJl
dHdlZW4gc3RhdGluZyB0aGF0IHNvbWVvbmUgaXMgcXVvdGluZyBtaXNpbmZvcm1hdGlvbg0KPiA+
IGFuZCANCj4gPiBhY2N1c2luZyBzb21lb25lIG9mIGJhZCBpbnRlbnRpb25zLiAgSSBleHBlY3Qg
YW4gYXBvbG9neSBmcm9tIHlvdS4NCj4gDQo+IEkgZGlkbid0IHNheSB5b3UgaGFkIGJhZCBpbnRl
bnRpb25zLiBJIHdhcyBqdXN0IHBvaW50aW5nIG91dCB0aGF0IHlvdQ0KPiBzcGVudCB0aGUgdGlt
ZSByZXNlYXJjaGluZyBwb2ludHMgdGhhdCBtYXRjaCB5b3VyIGFyZ3VtZW50LCBidXQNCj4gZGlk
bid0DQo+IGNoZWNrIHRvIHNlZSB3aGF0IGN1cnJlbnQgUklTQy1WIHN1cHBvcnQgaXMuDQo+IA0K
PiBJIGRvbid0IHNlZSBhIGRpZmZlcmVuY2UgYmV0d2VlbiBzYXlpbmcgc29tZW9uZSBpcyBzcHJl
YWRpbmcNCj4gbWlzaW5mb3JtYXRpb24gYW5kIGx5aW5nLCBidXQgSSBhbSBzb3JyeSBpZiBpdCB1
cHNldCB5b3UuDQoNCkp1c3QgdG8gY2xhcmlmeSwgSSBhbSBzb3JyeSB0aGF0IEkgdXBzZXQgeW91
LiBJIGRpZCBub3QgbWVhbiB0byBkbw0KdGhhdC4NCg0KSSBkbyBub3QgYXBwcmlhdGUgeW91IHNh
eWluZyB0aGF0IEkgYW0gc3ByZWFkaW5nIG1pc2luZm9ybWF0aW9uLA0KZXNwaWNpYWxseSB3aGVu
IHRoZXJlIGFyZSBudW1iZXJzIHRvIGJhY2sgdXAgdGhlIGNsYWltIG9mIHNsb3dpbmcgZG93bg0K
ZGVmY29uZmlnIHVzZXJzLg0KDQpBbGlzdGFpcg0KDQo+IA0KPiA+ID4gPiA+IFNsb3dpbmcgZG93
biBhbGwgdXNlcnMgdG8gaGVscCBrZXJuZWwgZGV2ZWxvcGVycyBkZWJ1ZyBzZWVtcw0KPiA+ID4g
PiA+IGxpa2UgDQo+ID4gPiA+ID4gdGhlIHdyb25nIGRpcmVjdGlvbi4gS2VybmVsIGRldmVsb3Bl
cnMgc2hvdWxkIGtub3cgZW5vdWdoIHRvDQo+ID4gPiA+ID4gYmUNCj4gPiA+ID4gPiBhYmxlIA0K
PiA+ID4gPiA+IHRvIHR1cm4gb24gdGhlIHJlcXVpcmVkIGNvbmZpZ3MsIHdoeSBkb2VzIHRoaXMg
bmVlZCB0byBiZQ0KPiA+ID4gPiA+IHRoZSANCj4gPiA+ID4gPiBkZWZhdWx0Pw0KPiA+ID4gPiAN
Cj4gPiA+ID4gSXQncyBjbGVhciB5b3Ugc3Ryb25nbHkgZGlzYWdyZWUgd2l0aCB0aGUgZGVjaXNp
b24gdG8gZG8NCj4gPiA+ID4gdGhpcy4gIEl0J3MgDQo+ID4gPiA+IGNlcnRhaW5seSB5b3VyIHJp
Z2h0IHRvIGRvIHNvLiAgQnV0IGl0J3Mgbm90IGdvb2QgdG8gc3ByZWFkIA0KPiA+ID4gPiBtaXNp
bmZvcm1hdGlvbiBhYm91dCBob3cgY2hhbmdpbmcgdGhlIGRlZmNvbmZpZ3MgInNsb3dbc10gZG93
bg0KPiA+ID4gPiBhbGwgDQo+ID4gPiA+IHVzZXJzLCIgb3INCj4gPiA+IA0KPiA+ID4gV2hhdCBt
aXNpbmZvcm1hdGlvbj8NCj4gDQo+IFNvbWVob3cgaXQgbG9va3MgbGlrZSB5b3UgZHJvcHBlZCB0
aGlzIHBhcmFncmFwaCBmcm9tIG15IHJlc3BvbnNlLA0KPiBJJ2xsDQo+IGp1c3QgYWRkIGl0IGJh
Y2sgaW46DQo+IA0KPiAqKioqKioNCj4gQW51cCBzaGFyZWQgYmVuY2htYXJraW5nIHJlc3VsdHMg
aW5kaWNhdGluZyB0aGF0IHRoaXMgY2hhbmdlIGhhcyBhDQo+IDEyJQ0KPiBwZXJmb3JtYW5jZSBk
ZWNyZWFzZSBmb3IgZXZlcnlvbmUgd2hvIHVzZXMgdGhlIGRlZmNvbmZpZyB3aXRob3V0DQo+IHJl
bW92aW5nIHRoaXMgY2hhbmdlLg0KPiAqKioqKioNCj4gDQo+ID4gWW91J3ZlIGFscmVhZHkgYWNr
bm93bGVkZ2VkIGluIHlvdXIgcmVzcG9uc2UgdGhhdCB0aGUgbWFqb3IgTGludXggDQo+ID4gZGlz
dHJpYnV0aW9ucyBkb24ndCB1c2UgZGVmY29uZmlncy4gIFNvIGl0J3MgY2xlYXIgdGhhdCB5b3Vy
IA0KPiANCj4gV2hhdCBkbyB5b3UgbWVhbiBtYWpvcj8NCj4gDQo+IEFGQUlLIE9FIGFuZCBidWls
ZHJvb3QgYXJlIHRoZSBvbmx5IGRpc3Ryb3MgdGhhdCBoYXZlIGZpcnN0IGNsYXNzDQo+IFJJU0Mt
DQo+IFYgc3VwcG9ydC4gVGhhdCBzZWVtcyBwcmV0dHkgbWFqb3IgdG8gbWUuDQo+IA0KPiA+IHN0
YXRlbWVudCBpcyANCj4gPiBmYWxzZSwgYW5kIHJhdGhlciB0aGFuIGFkbWl0dGluZyB0aGF0IHlv
dSdyZSB3cm9uZywgeW91J3JlIGRvdWJsaW5nDQo+ID4gZG93bi4NCj4gDQo+IERvdWJsaW5nIGRv
d24gb24gd2hhdD8gSSBuZXZlciBjbGFpbWVkIGFsbCBkaXN0cm9zIHVzZSBkZWZjb25maWdzLg0K
PiANCj4gPiA+ID4gZXhhZ2dlcmF0aW5nIHRoZSBkaWZmaWN1bHR5IGZvciBkb3duc3RyZWFtIHNv
ZnR3YXJlDQo+ID4gPiA+IGVudmlyb25tZW50cw0KPiA+ID4gPiB0byANCj4gPiA+ID4gYmFjayB0
aGlzIGNoYW5nZSBvdXQgaWYgdGhleSB3aXNoLg0KPiA+ID4gDQo+ID4gPiBJZiB5b3UgdGhpbmsg
aXQgaXMgdGhhdCBlYXN5IGNhbiB5b3UgcGxlYXNlIHN1Ym1pdCB0aGUgcGF0Y2hlcz8NCj4gPiAN
Cj4gPiBGb3IgbXkgcGFydCwgSSdkIGJlIGhhcHB5IGlmIHRoZSBjdXJyZW50IFJJU0MtViBPRSBh
bmQgQnVpbGRyb290DQo+ID4gdXNlcnMgd2hvIA0KPiA+IGRvbid0IGNoYW5nZSB0aGUga2VybmVs
IGNvbmZpZ3MgcnVuIHdpdGggdGhlIGRlZmNvbmZpZyBkZWJ1Zw0KPiA+IG9wdGlvbnMgDQo+ID4g
ZW5hYmxlZCByaWdodCBub3cuICAgU28sIEkgZG9uJ3QgcGxhbiB0byBzZW5kIHBhdGNoZXMgZm9y
IHRoZW0uDQo+IA0KPiBUaGF0IGlzIHdoYXQgd2lsbCBjb250aW51ZSB0byBoYXBwZW4uIEFsbCB1
c2VycyB3aWxsIGJlIGV4cGVjdGVkIHRvDQo+IGxpdmUgd2l0aCBhIDEyJSBwZXJmb3JtYW5jZSBp
bXBhY3QuDQo+IA0KPiA+ID4gSSB1bmRlcnN0YW5kIGl0J3MgZWFzeSB0byBtYWtlIGRlY2lzaW9u
cyB0aGF0IHNpbXBsZnkgeW91ciBmbG93LA0KPiA+ID4gYnV0DQo+ID4gPiB0aGlzIGhhcyByZWFs
IG5lZ2F0aXZlIGNvbnNlcXVlbmNlcyBpbiB0ZXJtcyBvZiBwZXJmb3JtYW5jZSBmb3INCj4gPiA+
IHVzZXJzDQo+ID4gPiBvciBjb21wbGV4aXR5IGZvciBtYWludGFpbmVycy4gSXQgd291bGQgYmUg
bmljZSBpZiB5b3UgdGFrZSBvdGhlcg0KPiA+ID4gdXNlcnMNCj4gPiA+IC9kZXZlbG9wZXJzIGlu
dG8gYWNjb3VudCBiZWZvcmUgbWVyZ2luZyBjaGFuZ2VzLg0KPiA+IA0KPiA+IEFzIHN0YXRlZCBl
YXJsaWVyLCBJJ20gb3BlbiB0byByZWNvbnNpZGVyaW5nIGlmIGl0IGluZGVlZCBpcw0KPiA+IG9u
ZXJvdXMsDQo+ID4gYW5kIA0KPiA+IG5vdCBqdXN0IGEgbWF0dGVyIG9mIHBhdGNoaW5nIGEgZmV3
IGxpbmVzIG9mIGtlcm5lbCBjb25maWd1cmF0aW9uIA0KPiA+IGZyYWdtZW50cyBpbiBPRSBhbmQg
QnVpbGRyb290IG9uY2UuDQo+IA0KPiBJIGRvbid0IHVuZGVyc3RhbmQsIGlmIHBhdGNoaW5nIGEg
Y29uZmlnIGlzIHNvIGVhc3kgd2h5IG5vdCBqdXN0IGhhdmUNCj4gYQ0KPiBmcmFnbWVudCBpbiB0
aGUga2VybmVsIHRyZWUgYW5kIHlvdSBjYW4gdXNlIHRoYXQgd2hlbiB5b3UgYnVpbGQgYQ0KPiBr
ZXJuZWw/IFRoaXMgaXMgd2hhdCBEYW5pZWwgVGhvbXBzb24gcG9pbnRlZCBvdXQuIFRoYXQgd291
bGQgYXZvaWQNCj4gdGhpcw0KPiBpc3N1ZSBhbmQgaGF2ZSBpdCBlYXN5IGZvciB5b3UgdG8gYnVp
bGQgYSBrZXJuZWwgd2l0aCBkZWJ1ZyBzdXBwb3J0Lg0KPiBIb3cgaXMgdGhhdCBub3QgdGhlIGJl
c3Qgc29sdXRpb24/DQo+IA0KPiBBRklBSyBubyBvdGhlciBhcmNoaXRlY3R1cmUgaGFzIGFsbCB0
aGVzZSBkZWJ1ZyBvcHRpb25zIGVuYWJsZWQgaW4NCj4gdGhlDQo+IGRlZmNvbmZpLCB3aHkgaXMg
UklTQy1WIHNvIHNwZWNpYWw/DQo+IA0KPiBBbGlzdGFpcg0KPiANCj4gPiANCj4gPiAtIFBhdWwN
Cg==

