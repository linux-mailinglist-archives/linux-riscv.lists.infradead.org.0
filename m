Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33C302D4F5
	for <lists+linux-riscv@lfdr.de>; Wed, 29 May 2019 07:01:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pwJS1abHLDXrezyUInvcvjpL25MyKKw+jXpZqtpcuxw=; b=WUuEchlvR8xU7K
	YzXNKE7Sgmrwqxibv26FGTbcIJ04bo3Xd6NH2wolkHu9f+Se49Rdt7g8kmThCCCpC0vLrtLirfKr/
	Se/+t7pb6XMOg+YIxifBAcOQkLdeGUeBclZ/EMIHCkLHOU+A+6ExqaVqetj+pJ3kXtDjvRddZ1ZPp
	Y+/tvcOJ2wAua/QGXfaq0RcaSgM5A3ExD3kKTONxhq6JTqc2muvxbPMmBZ0GnshVAbGtzfZnuGot/
	sFtH+VwDvsdZzWgioMsUbcou3NSGQeW4JvBF8tD636AhEDWeBuM72lAy4gUKBmM9mCUIpV1GmIg3z
	RfDJxqVs0VIlhlFVkepA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVqhx-0007oQ-Tc; Wed, 29 May 2019 05:01:01 +0000
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVqhu-0007nt-LA
 for linux-riscv@lists.infradead.org; Wed, 29 May 2019 05:01:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1559106058; x=1590642058;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=f6GiVw0r/3cVtBjntfpwntcDVIXqPJvzuCmJhRrOigs=;
 b=cl9AOHlpGPoY+8MxheWGxT8b4Vbdajrl2o2/HxdViiMfy21v/gEK+IRs
 Q8J87PZ3aDxBSRMZ/jOvwC0tQiMtb1rUdifqavW9WRgnercQFuawl2X+n
 HbaZjlHBLVA+yLTBVCfxspRQ+/m/IvkQ5thPbi3zmAV7WWAPI41nUAvEE
 zPJ3dUFEaaMBxf0y47kymeFFkWRQ97GrXQCVsgoXK4EpaMv9/HwIONqN9
 keVXahttIN7pfWtSkj9Cxeq1yZioX6X5PHjjQGJ0IsJn9Gnl13Qx8sas9
 WZiv8uEv5vAcVGxJ3Y7WkBmr3JVQFLMwggJcxCTvv498Tybm/5rJ9Ef11 w==;
X-IronPort-AV: E=Sophos;i="5.60,525,1549900800"; d="scan'208";a="109275661"
Received: from mail-by2nam01lp2056.outbound.protection.outlook.com (HELO
 NAM01-BY2-obe.outbound.protection.outlook.com) ([104.47.34.56])
 by ob1.hgst.iphmx.com with ESMTP; 29 May 2019 13:00:52 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=f6GiVw0r/3cVtBjntfpwntcDVIXqPJvzuCmJhRrOigs=;
 b=dmkT/O8iAHjF04KTiciSfskdSNxgEBVHqZZ+7eV6PCJK3YTvBbK4+8dYKrTkl3ggbPxaJ5rSsB2yX9Dmf7fHCKAjSHQFMVNP6PdJh6tUfV+Qw9rE0JQWTd1h54N5MlmFhTs2SmRuBxV89EA9IXNInP7kNfTtol7PfxOp6fB0Pmk=
Received: from MN2PR04MB6061.namprd04.prod.outlook.com (20.178.246.15) by
 MN2PR04MB6125.namprd04.prod.outlook.com (20.178.248.86) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1922.21; Wed, 29 May 2019 05:00:51 +0000
Received: from MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::98ab:5e60:9c5c:4e0e]) by MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::98ab:5e60:9c5c:4e0e%7]) with mapi id 15.20.1922.021; Wed, 29 May 2019
 05:00:51 +0000
From: Anup Patel <Anup.Patel@wdc.com>
To: Troy Benjegerdes <troy.benjegerdes@sifive.com>, Anup Patel
 <anup@brainfault.org>
Subject: RE: 5.2-rc1 boot on Unleashed
Thread-Topic: 5.2-rc1 boot on Unleashed
Thread-Index: AQHVEL1bJqhKLWG/2kGVA89TUsD0m6Z3nHQIgAAZlQCAA8nyAIAAZ2oAgAWi/NA=
Date: Wed, 29 May 2019 05:00:50 +0000
Message-ID: <MN2PR04MB60610DD66EC6E93C25D18F5F8D1F0@MN2PR04MB6061.namprd04.prod.outlook.com>
References: <5c1ffb76-b18a-dbae-d3ad-f3d2cd41ee44@wdc.com>
 <alpine.DEB.2.21.9999.1905220942040.20842@viisi.sifive.com>
 <db248e63-c0bc-7fd8-cf2d-d13c8f140036@wdc.com>
 <alpine.DEB.2.21.9999.1905221334460.23235@viisi.sifive.com>
 <34F7A31E-17F9-4A3C-9F42-DE7837F899CE@sifive.com>
 <CAAhSdy0R6UgxhgrU9NZegmoigjqZmx6RwoGngPdmzrzaUUxpTA@mail.gmail.com>
 <4572851B-EF46-45A1-A806-663894673EF9@sifive.com>
In-Reply-To: <4572851B-EF46-45A1-A806-663894673EF9@sifive.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Anup.Patel@wdc.com; 
x-originating-ip: [150.107.238.61]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c8303526-7fe2-4987-c782-08d6e3f29f21
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:MN2PR04MB6125; 
x-ms-traffictypediagnostic: MN2PR04MB6125:
x-ms-exchange-purlcount: 2
wdcipoutbound: EOP-TRUE
x-microsoft-antispam-prvs: <MN2PR04MB61254A3C320B2C36E5C14C2E8D1F0@MN2PR04MB6125.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 0052308DC6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(366004)(39860400002)(136003)(346002)(396003)(376002)(13464003)(199004)(189003)(6246003)(66066001)(52536014)(71200400001)(68736007)(476003)(256004)(71190400001)(486006)(5660300002)(66574012)(25786009)(86362001)(4326008)(14444005)(478600001)(99286004)(81156014)(229853002)(74316002)(76176011)(7736002)(6506007)(66556008)(66476007)(66446008)(8936002)(64756008)(73956011)(33656002)(53546011)(11346002)(6436002)(53936002)(8676002)(14454004)(55016002)(966005)(316002)(7696005)(54906003)(72206003)(3846002)(6116002)(26005)(81166006)(186003)(2906002)(305945005)(6306002)(110136005)(102836004)(76116006)(446003)(66946007)(9686003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB6125;
 H:MN2PR04MB6061.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: IIrPWtt1C5eMDAxxHx1E3J9JFCvhd0TsF9J7btI+vepVdyfb023/DVRMjY6a3GXzKM1tJpHNWbK07osNG0nKf0778rpfMqLiumJe8ATSUPs9dqHFjC1B1rfK+jWHThYjvk0KAecWCZJB6GFv8Dbm/Qj8Spnigufw42gQmSpEtRJHkU3gvmAQLrDVgFWTXZZKGYO61loS2KIGxEXamimOUp2weCWRBvHFbyekRtcaiWL3TQRAkggLUAnnBCGz2q3JZLmYt/R3ph9uNQEzVQ1/S2IWBoyHjX9q5Zupic1ZJTOU4m97WLjlWPyRAi6561BIFYTzOBSRKLSgTtTA9uFkLVVQXhOxcsDFTiU07t7eKIwR44NWUBQv7J7cyOhd/a7iCon5Zzdw6hbuLICOhIJpDK6tQyOtMZozP5dquOFCJSY=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c8303526-7fe2-4987-c782-08d6e3f29f21
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 May 2019 05:00:51.0066 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Anup.Patel@wdc.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB6125
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_220058_801387_7B8F3D55 
X-CRM114-Status: GOOD (  26.44  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.42 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: =?utf-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@gmail.com>,
 Palmer Dabbelt <palmer@sifive.com>, Atish Patra <Atish.Patra@wdc.com>,
 Lukas Auer <lukas.auer@aisec.fraunhofer.de>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 Bin Meng <bmeng.cn@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogbGludXgtcmlzY3YgPGxp
bnV4LXJpc2N2LWJvdW5jZXNAbGlzdHMuaW5mcmFkZWFkLm9yZz4gT24gQmVoYWxmIE9mDQo+IFRy
b3kgQmVuamVnZXJkZXMNCj4gU2VudDogU2F0dXJkYXksIE1heSAyNSwgMjAxOSA3OjQ2IFBNDQo+
IFRvOiBBbnVwIFBhdGVsIDxhbnVwQGJyYWluZmF1bHQub3JnPg0KPiBDYzogUGFsbWVyIERhYmJl
bHQgPHBhbG1lckBzaWZpdmUuY29tPjsgQmrDtnJuIFTDtnBlbA0KPiA8Ympvcm4udG9wZWxAZ21h
aWwuY29tPjsgQW51cCBQYXRlbCA8QW51cC5QYXRlbEB3ZGMuY29tPjsgQXRpc2ggUGF0cmENCj4g
PEF0aXNoLlBhdHJhQHdkYy5jb20+OyBMdWthcyBBdWVyIDxsdWthcy5hdWVyQGFpc2VjLmZyYXVu
aG9mZXIuZGU+Ow0KPiBQYXVsIFdhbG1zbGV5IDxwYXVsLndhbG1zbGV5QHNpZml2ZS5jb20+OyBs
aW51eC1yaXNjdkBsaXN0cy5pbmZyYWRlYWQub3JnOw0KPiBCaW4gTWVuZyA8Ym1lbmcuY25AZ21h
aWwuY29tPg0KPiBTdWJqZWN0OiBSZTogNS4yLXJjMSBib290IG9uIFVubGVhc2hlZA0KPiANCj4g
DQo+IA0KPiA+IE9uIE1heSAyNSwgMjAxOSwgYXQgMzowNiBBTSwgQW51cCBQYXRlbCA8YW51cEBi
cmFpbmZhdWx0Lm9yZz4gd3JvdGU6DQo+ID4NCj4gPiBIaSBUcm95LA0KPiA+DQo+ID4gT24gVGh1
LCBNYXkgMjMsIDIwMTkgYXQgMzo0NSBBTSBUcm95IEJlbmplZ2VyZGVzDQo+ID4gPHRyb3kuYmVu
amVnZXJkZXNAc2lmaXZlLmNvbT4gd3JvdGU6DQo+ID4+DQo+ID4+DQo+ID4+PiBPbiBNYXkgMjIs
IDIwMTksIGF0IDM6NDMgUE0sIFBhdWwgV2FsbXNsZXkNCj4gPHBhdWwud2FsbXNsZXlAc2lmaXZl
LmNvbT4gd3JvdGU6DQo+ID4+Pg0KPiA+Pj4gKyBBbnVwLCBUcm95DQo+ID4+Pg0KPiA+Pj4gT24g
V2VkLCAyMiBNYXkgMjAxOSwgQXRpc2ggUGF0cmEgd3JvdGU6DQo+ID4+Pg0KPiA+Pj4+IE9uIDUv
MjIvMTkgOTo0MiBBTSwgUGF1bCBXYWxtc2xleSB3cm90ZToNCj4gPj4+Pj4gQW0gY2hlY2tpbmcg
b24gdGhpcyBub3cgYW5kIGhvcGUgdG8gaGF2ZSBzb21lIGNvbmNsdXNpb24gb24gaXQgdGhpcw0K
PiB3ZWVrLg0KPiA+Pj4+DQo+ID4+Pj4gVGhhbmtzLiBBbnkgY2hhbmNlIHlvdSBjYW4gdGFrZSBh
IGxvb2sgYXQgdGhlIFUtQm9vdCBjbG9jayBkcml2ZXINCj4gPj4+PiB0byBwYXRjaCBpdCBhcyBw
ZXIgdGhlIERUIGNoYW5nZXMgPw0KPiA+Pj4NCj4gPj4+IEkgcHJvYmFibHkgd29uJ3QgaGF2ZSB0
aGUgY2hhbmNlIHRvIGdldCB0byBpdCBmb3IgYSB3aGlsZS4gIExvb2tzDQo+ID4+PiBsaWtlIEFu
dXAgd2FzIHRoZSBvbmUgd2hvIHBvc3RlZCB0aGUgY2xvY2sgZHJpdmVyIHRvIFUtQm9vdCAtIGNh
biBoZQ0KPiA+Pj4gdGFrZSBhIGxvb2sgYXQgaXQ/DQo+ID4+Pg0KPiA+Pj4gV2UndmUgYWxzbyBh
c2tlZCBUcm95IHRvIGxvb2sgYXQgdXBzdHJlYW0gVS1ib290IHJlbGF0ZWQgaXNzdWVzLCBidXQN
Cj4gPj4+IEknbSB1bnN1cmUgd2hlbiBwYXRjaGVzIHdpbGwgc3RhcnQgZmxvd2luZyB1cHN0cmVh
bS4NCj4gPj4+DQo+ID4+Pg0KPiA+Pj4gLSBQYXVsDQo+ID4+DQo+ID4+IE9uY2UgSSBmaWd1cmUg
b3V0IHdoeSBJ4oCZbSBnZXR0aW5nIFRYIHRpbWVvdXRzIG9uIHRoZSBtYWNiIGRyaXZlciBhbmQN
Cj4gaGF2ZSBzb21ldGhpbmcgd29ya2luZyBJIGNhbiBzdGFydCB1cHN0cmVhbWluZyB0aGUgdS1i
b290IHBhdGNoZXMuDQo+ID4+DQo+ID4+IEZvciBub3csIHRoZSB3b3JrLWluLXByb2dyZXNzIGlz
IGF0DQo+ID4+IGh0dHBzOi8vZ2l0aHViLmNvbS9zaWZpdmUvdS1ib290L3RyZWUvc2FuZGJveA0K
PiA+DQo+ID4gQmFzZWQgb24geW91ciBjb21taXRzIGluIGFib3ZlIEdpdFJlcG8sIGl0IHNlZW1z
IHlvdSBhcmUgdHJ5aW5nIGVudGlyZQ0KPiA+IFUtQm9vdCBpbiBNLW1vZGUuDQo+ID4NCj4gPiBD
dXJyZW50IGJvb3QtZmxvdyBvZiBTLW1vZGUgVS1Cb290IGlzOg0KPiA+IFpTQkwgKE0tbW9kZSkg
LT4gRlNCTCAoTS1tb2RlKSAtPiBPcGVuU0JJL0JCTCAoTS1tb2RlKSAtPiBVLUJvb3QNCj4gPiAo
Uy1tb2RlKQ0KPiA+DQo+ID4gVGhlIFUtQm9vdCBTUEwgY2FuIHBlcmZlY3RseSByZXBsYWNlIFNp
Rml2ZSBGU0JMIHRvIGhhdmUgZm9sbG93aW5nDQo+ID4gYm9vdC1mbG93Og0KPiA+IFpTQkwgKE0t
bW9kZSkgLT4gVS1Cb290IFNQTCAoTS1tb2RlKSAtPiBPcGVuU0JJL0JCTCAoTS1tb2RlKSAtPiBV
LQ0KPiBCb290DQo+ID4gKFMtbW9kZSkNCj4gPg0KPiA+IENhbiB5b3UgZXhwbGFpbiBhZHZhbnRh
Z2VzIG9mIHVzaW5nIGZ1bGwgVS1Cb290IE0tbW9kZSB0byByZXBsYWNlIEZTQkwNCj4gPiBhcyBj
b21wYXJlZCB0byBVLUJvb3QgU1BMIE0tbW9kZSByZXBsYWNpbmcgRlNCTCA/DQo+ID4NCj4gPiBS
ZWdhcmRzLA0KPiA+IEFudXANCj4gDQo+IFRoZSBjdXJyZW50IGZsb3cgaW4gRnJlZWRvbS11LXNk
ayAod2l0aA0KPiBodHRwczovL2dpdGh1Yi5jb20vc2lmaXZlL0hpRml2ZV9VLUJvb3QpIGlzIHRo
aXM6DQo+IFpTQkwgKE0tbW9kZSkgLT4gVS1Cb290IChNLW1vZGUpIC0+IEJCTCAtPiBMaW51eCBr
ZXJuZWwNCj4gDQo+IFRoZSBtYWpvciBkcml2ZXIgZm9yIGZ1bGwgVS1Cb290IE0tbW9kZSBpcyBh
dXRvbWF0ZWQgcmVncmVzc2lvbiB0ZXN0aW5nIGFuZA0KPiBiZWluZyBhYmxlIHRvIGxvYWQgdGhl
IFNCSSBpbnRlcmZhY2UgKEJCTCBvciBPcGVuU0JJKSBhbmQgbGludXgga2VybmVsIHZpYQ0KPiBU
RlRQLg0KDQpUaGlzIGlzIGEgdmVyeSBzcGVjaWZpYyB1c2UtY2FzZS4gVGhlIFJJU0MtViBib290
IGZsb3cgc2hvdWxkIGJlIGNvbXBsaWFudCB3aXRoDQptYWpvciBhcmNoaXRlY3R1cmVzIChBUk0v
QVJNNjQgYW5kIHg4Nikgc28gdGhhdCBpdCdzIHZlcnkgZWFzeSAoYW5kIGJvcmluZykNCmZvciBm
b2xrcyAoZmFtaWxpYXIgd2l0aCB0aGVzZSBtYWpvciBhcmNoaXRlY3R1cmVzKSB0byB0cnktb3V0
IFJJU0MtVi4NCg0KVG8gYWNoaWV2ZSB0aGlzLCB3ZSBuZWVkIHRvIGVuc3VyZSB0aGF0IHVzZXJz
IGFyZSBhYmxlIHRvIGJvb3Qga2VybmVsIEltYWdlDQphbmQgSW1hZ2UuZ3ogd2l0aG91dCBlbWJl
ZGRpbmcgaXQgaW4gT3BlblNCSS9CQkwuIEluIGZhY3QsIHdlIGFsc28gbmVlZCB0bw0KZW5zdXJl
IHRoYXQgdXNlcnMgY2FuIHVwZGF0ZSBTQkkgcnVudGltZSAoT3BlblNCSS9CQkwpIGFuZCBib290
bG9hZGVyDQooaS5lLiBVLUJvb3QpIHNlcGFyYXRlbHkuDQoNCklmIHdlIHRyeSB0byBhZGRyZXNz
IGFib3ZlIHJlcXVpcmVtZW50cyB0aGVuIHdlIGVuZC11cCBoYXZpbmcgVS1Cb290IFMtbW9kZQ0K
KG9yIGFueSBTLW1vZGUgYm9vdGxvYWRlcikgYXMgbGFzdCBzdGFnZSBiZWZvcmUga2VybmVsIGFu
ZCBTQkkgcnVudGltZSB3aWxsIGJlDQpiZWZvcmUgVS1Cb290IFMtbW9kZSBhcyBzZXBhcmF0ZSBi
aW5hcnkuDQoNCkR1ZSB0byBhYm92ZSwgd2UgaGF2ZSBjb21lLXVwIHdpdGggRldfSlVNUCBhbmQg
RldfRFlOQU1JQyBmaXJtd2FyZXMNCmluIE9wZW5TQkkuIFRoZXNlIGZpcm13YXJlcyBkb24ndCBl
bWJlZCBMaW51eCBrZXJuZWwgb3IgQm9vdGxvYWRlciBiaW5hcnkNCmFuZCBjYW4gYmUgbG9hZGVk
IHNlcGFyYXRlbHkuDQoNCj4gDQo+IEkgZG8gYWdyZWUgVS1Cb290IFNQTCBpcyBhIHZlcnkgZ29v
ZCBpZGVhLCBJIGhhdmUgYmVlbiB3b3JraW5nIG9uIHJlcGxpY2F0aW5nDQo+IHRoZSBmdW5jdGlv
bmFsaXR5IG9mIHRoZSBvbGQgSGlGaXZlIFUtYm9vdCBmaXJzdCBhbmQgdGhlbiBvbmNlIHRoYXQg
d29ya3MgSQ0KPiB0aGluayBpdCB3aWxsIGJlIGEgbG90IGVhc2llciB0byB3b3JrIG91dCB0aGUg
U1BMIG9wdGlvbi4NCg0KWWVzLCBVLUJvb3QgU1BJIChNLW1vZGUpIHdpbGwgYmUgdGhlIHJpZ2h0
IHdheSB0byBnbyBhbmQgaXQgd2lsbCBmaXQgaW4gbG90DQpvZiB1c2UtY2FzZXMuDQoNClJlZ2Fy
ZHMsDQpBbnVwDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpsaW51eC1yaXNjdiBtYWlsaW5nIGxpc3QKbGludXgtcmlzY3ZAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJpc2N2
Cg==
