Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 747A01F81C2
	for <lists+linux-riscv@lfdr.de>; Sat, 13 Jun 2020 10:18:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6ufh/KRkhx6CHGKX4VzDBubm6nFbwDblfakqHs9lwp0=; b=LyyxBkhHfH+4cJQzRAsv1BDkQ
	pTHx22dRYdE7GBySOK53bwldufM7rc9Uc+xKvEVfyqiK3QsTT2KNliEx81SX0zkI/36ZfpgTyyiJv
	U60HEgmR8UA7EO4G1ATjnHp4s1A6FvI0lmDdD+iEQlhE71TdqTjtVK2R3ErW6xl40STOxy8c+T24j
	B54zGG428XfT1lCF1we/PCFkEWrQQIV266c2D5iSY4qJ246zPaxr9UqwVNoNhW/1GVU+XswquYXAV
	tsW7rtP1JvKJXL5zUnYUifBEqypT40uw0wqLrCeThMQsrScS+Sz8Atr9rfUsONPRsV2xKYpT7wDrI
	WphqWQv5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jk1MU-0002l8-G4; Sat, 13 Jun 2020 08:17:58 +0000
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jk1MQ-0002jr-Kr
 for linux-riscv@lists.infradead.org; Sat, 13 Jun 2020 08:17:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1592036275; x=1623572275;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=6ufh/KRkhx6CHGKX4VzDBubm6nFbwDblfakqHs9lwp0=;
 b=GV3aHnPaZ764b7oXT1eUHbZ+0hd+NiUecTUcUWd4XPoJVy9zd7RZEUyn
 N6UotXSg7wm9GVduABpsOdNWgsDo0xXIQxnyHKKcW5xwRnq5SmWcIeuVv
 +tFrgmgduynHbpL4Kg57kTzGFujL0P/ApT+VJ/XGoj+i4W1xVsO9jGnTk
 tlMB+FGLLWBKWdQ49ZQGk8/o5PpP6SNVFsBEHrJ8UyY+OSRE2JOaW72ib
 KLNhop9ABehgzdh6QubYQgsQxvdkSka6K+2meNAOvspcId6/otoRbVfL7
 c2krOg/3t9luIfdQw1NiG+WbjXgqwrc1Yj7oV17Lv5rLwHL51H/jzlolA Q==;
IronPort-SDR: zMM9oTg8js1jQn1L+Sp6UJuvqrRbLVLDavzoVRvNuIeR4NsWNGWarXN85wjAamUfhpLeAg3Qj8
 eMHGDWivlVkqx1/Qfe0SUOu6h2VysbUAhtb7gUw8SkivCACAykH0r0fgJVD2/gj8nCT/qFYe+F
 tZBMohOUYTOt3bmR8t7q5NTJM0nyW1+FcZxqaC4u275Wo4YYmKNRqWpdJIfqBPM85+65oAjIiZ
 MVm12eMPXUTB7tKfSL60h6ummij7vuNgUTSR8PuXQfh1BoW66jPU3xiMg/lM5l5kN+lYuq/8uJ
 0oU=
X-IronPort-AV: E=Sophos;i="5.73,506,1583164800"; d="scan'208";a="140172838"
Received: from mail-dm6nam10lp2105.outbound.protection.outlook.com (HELO
 NAM10-DM6-obe.outbound.protection.outlook.com) ([104.47.58.105])
 by ob1.hgst.iphmx.com with ESMTP; 13 Jun 2020 16:17:50 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=F1NZCcnjJx+ZPPAAbosrypS0MMRdjlU84HKk06nU6iZqUj8t2xCsTnnjq4vxAgiWWF3M7NrfmZ/RCUuMX/kziAvWlBEluCW9dwlNnixPa1B08WPNxvAaxqimJHQZv21y0DztVbnqJnCHBU2QwdPyQdox9tzW4MGOJzQAolsQskzNQpdCfUF8mlhY+jMhF8nzg96qBnUCnftS9XjRQZnwcL4lFPQQNZLjGE8azP9PGtQrQpjIPld23JzplkxXLHAW6UuQN8CGB/1dVde+kFbm1FYENNVMsxfNaFi/eZqXuvEYEqpFXFDJGFZtPaZB5vBpeFxtGpmjDRBJd/sWSMOoMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6ufh/KRkhx6CHGKX4VzDBubm6nFbwDblfakqHs9lwp0=;
 b=N7MBNO4LqhPgoDbET0NXwVlWsOyEfU8XVJMl7cSpPjte+lwSQbomBWm9pDxD6y+vaQoO890L3Z2YPHCr+7IyqSCkl/S4lJQTXhwM191elT+5CuuN9DSvyDsjrl8Ce+EZawvcTHTVqgBJEyixTxgvt4o6b0VtagZw3clso32VKnEfHbp50l7+Y42nqQys4U5ffE4T0VNDV9Bm6qrvxh47fgathoLQhyfY8dmLDGDP9jDQTHpV6RnttIrO9nis9rf5sofEq5umZS2tm2Re+C5hD5PAjIfRZzsfv7zgOJAEmUq3sPMUpT9MN3NdWwc4TqdVuIy2DZYxYcJW9rIZAPCPsQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6ufh/KRkhx6CHGKX4VzDBubm6nFbwDblfakqHs9lwp0=;
 b=ZoH9DXaG25mTO2EyiOkut/0liP9BW/dziTvz1JZsxw3mZwxhb+m5IRAMmYCbdVQv9YJWc07eRQE7RiaufgbK/KDpYTYDy/BPDOwIOSnKt3UMOslxW1D6tRlYyM4oCFvImc3a42og7xdYVi6mNUr+SEdEcWIEuVrAZg3cZ0rc240=
Received: from DM6PR04MB6201.namprd04.prod.outlook.com (2603:10b6:5:127::32)
 by DM6PR04MB4395.namprd04.prod.outlook.com (2603:10b6:5:a1::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3066.20; Sat, 13 Jun
 2020 08:17:48 +0000
Received: from DM6PR04MB6201.namprd04.prod.outlook.com
 ([fe80::e0a4:aa82:1847:dea5]) by DM6PR04MB6201.namprd04.prod.outlook.com
 ([fe80::e0a4:aa82:1847:dea5%7]) with mapi id 15.20.3088.023; Sat, 13 Jun 2020
 08:17:48 +0000
From: Anup Patel <Anup.Patel@wdc.com>
To: Nick Kossifidis <mick@ics.forth.gr>, Palmer Dabbelt <palmer@dabbelt.com>
Subject: RE: [PATCH 0/3] RISC-V: Add kexec/kdump support
Thread-Topic: [PATCH 0/3] RISC-V: Add kexec/kdump support
Thread-Index: AQHWGlugE0mCIZTJlkWwirqiwSdJx6izCpQAgCEIRQCAAAicgIACVwuAgAAOsAA=
Date: Sat, 13 Jun 2020 08:17:48 +0000
Message-ID: <DM6PR04MB62017D6E756B038D6B6A89AB8D9E0@DM6PR04MB6201.namprd04.prod.outlook.com>
References: <mhng-3accafc5-2df8-4798-aebd-b86a0f0414b7@palmerdabbelt-glaptop1>
 <a276c6dfa03682d518543329bb36bc0e@mailhost.ics.forth.gr>
In-Reply-To: <a276c6dfa03682d518543329bb36bc0e@mailhost.ics.forth.gr>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: ics.forth.gr; dkim=none (message not signed)
 header.d=none;ics.forth.gr; dmarc=none action=none header.from=wdc.com;
x-originating-ip: [122.182.243.164]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: ad365523-458e-4c06-d76a-08d80f72425a
x-ms-traffictypediagnostic: DM6PR04MB4395:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR04MB43959B201BEE14D9B70A7FBF8D9E0@DM6PR04MB4395.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 0433DB2766
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: nVQ6+lV35HthZYLtR+pOnGqNnXaYIOcMKieYYt3lUo5JnYkx6VGVL8wlHSIF2NDqmT8+tbFiSd94VBYlI73XRBq0NGEYvOXCiIol47ypDb9+4KRQOTYlQrcFHMJ9JAQC75wX6z9ds2H4o1HVG+T4pFAy7kjTUcgGVZ5IvtdWEuPzmwHqbhN1a8xsy0uMGy1JKjlDQirMA8hQFygQxzFencAibPrONrVHnAZM0eMNPymhRxTVFccUN4s1QnO24bcxcGcesoOYiFvwf8ViLkxHHfCILQ6mTUofuxW7MvRuzCj4uUPDknxRrxnrnJA5QMc+RpH5J/lutwEHUZkwqwBr8VAIUTkXNyX1n1y4iczTVVoz8vqRTP7Zajuu9owNwtMZb1GDpxCPEVreB0Wjj5o3jU4q1LyZZEXsZ/aLq1TgE0ORUUScWBIRrJJzjYw8HelOFpe2/AHDq81llmEaBx6kvDa1FnM4Fxhfa0wnXQrpGxE=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR04MB6201.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(396003)(346002)(366004)(136003)(39860400002)(376002)(55016002)(33656002)(7696005)(53546011)(6506007)(478600001)(110136005)(8676002)(9686003)(966005)(83080400001)(54906003)(76116006)(52536014)(66556008)(66476007)(66946007)(66446008)(64756008)(316002)(2906002)(71200400001)(5660300002)(26005)(8936002)(83380400001)(186003)(4326008)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: U5s+5Rz/LuTsM/2mYogI4glcHWpTSrJR/pfr8EthLMDgDrLTN56xVnjs9SGnOAnDDHEyJTiYj5RhSk+kseETFVeIpIBnJbFg3YzeT890k5wl9tghUeUo8MjToRyVWvg85sR02lk3jFpfM5k/1bPbuWXmcI7KWGEYVQtS+8StDNEHX4qknvT5n5ZtLfJMtwmaVWQuyVbdEMB1ikj3gccJ1iXVWVtxgpUEfXN8Vnh7C5wf5IzuzxY310Pp2ddUib6Qce4vJlP90ZQOlMmgqmaT/IKGQ8ScjNLuBhZSHvPY2lh52D6eqcmsYOdb+2SrWKBsSkF9XENZI64W7hnFZUCIiO8oazwDYc8XNnmbhbGijq5znj1ZA9PZH9ipuo4+0ZuaMqKFrWrN1ZeIkCOeKhy//PY2zCJ4RGlRNrmVp+CjhIWSMsas3QMngAEm68gHpM7tWGIZRoRL7Yt9pjkyi2knt0bjvx0LAgo3+Z1LxsUhCeiTSsetZbOY+UEZBL3tLbqQ
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ad365523-458e-4c06-d76a-08d80f72425a
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Jun 2020 08:17:48.5823 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cvUdcnWmI9ruStOanA+Vfp8/HIApdycJ3qo8SND+otgrOHKX+1bs9ISx1LXSyNy6lbWnRW2RhiZQvqM+tZrsKg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR04MB4395
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200613_011754_778744_C4EE1F62 
X-CRM114-Status: GOOD (  18.29  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.144 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: "david.abdurachmanov@sifive.com" <david.abdurachmanov@sifive.com>,
 "anup@brainfault.org" <anup@brainfault.org>, Atish Patra <Atish.Patra@wdc.com>,
 "yibin_liu@c-sky.com" <yibin_liu@c-sky.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogbGludXgtcmlzY3YgPGxp
bnV4LXJpc2N2LWJvdW5jZXNAbGlzdHMuaW5mcmFkZWFkLm9yZz4gT24gQmVoYWxmIE9mIE5pY2sN
Cj4gS29zc2lmaWRpcw0KPiBTZW50OiAxMyBKdW5lIDIwMjAgMTI6NTQNCj4gVG86IFBhbG1lciBE
YWJiZWx0IDxwYWxtZXJAZGFiYmVsdC5jb20+DQo+IENjOiBkYXZpZC5hYmR1cmFjaG1hbm92QHNp
Zml2ZS5jb207IGFudXBAYnJhaW5mYXVsdC5vcmc7IEF0aXNoIFBhdHJhDQo+IDxBdGlzaC5QYXRy
YUB3ZGMuY29tPjsgeWliaW5fbGl1QGMtc2t5LmNvbTsgUGF1bCBXYWxtc2xleQ0KPiA8cGF1bC53
YWxtc2xleUBzaWZpdmUuY29tPjsgbWlja0BpY3MuZm9ydGguZ3I7IGxpbnV4LQ0KPiByaXNjdkBs
aXN0cy5pbmZyYWRlYWQub3JnDQo+IFN1YmplY3Q6IFJlOiBbUEFUQ0ggMC8zXSBSSVNDLVY6IEFk
ZCBrZXhlYy9rZHVtcCBzdXBwb3J0DQo+IA0KPiDOo8+EzrnPgiAyMDIwLTA2LTExIDIyOjM5LCBQ
YWxtZXIgRGFiYmVsdCDOrc6zz4HOsc+IzrU6DQo+ID4gT24gVGh1LCAxMSBKdW4gMjAyMCAxMjow
OTowOCBQRFQgKC0wNzAwKSwgbWlja0BpY3MuZm9ydGguZ3Igd3JvdGU6DQo+ID4+IM6jz4TOuc+C
IDIwMjAtMDUtMjEgMjE6NDIsIE5pY2sgS29zc2lmaWRpcyDOrc6zz4HOsc+IzrU6DQo+ID4+PiDO
o8+EzrnPgiAyMDIwLTA0LTI0IDIwOjEyLCBOaWNrIEtvc3NpZmlkaXMgzq3Os8+BzrHPiM61Og0K
PiA+Pj4+IFRoaXMgcGF0Y2ggc2VyaWVzIGFkZHMga2V4ZWMva2R1bXAgYW5kIGNyYXNoIGtlcm5l
bCBzdXBwb3J0IG9uDQo+ID4+Pj4gUklTQy1WLiBGb3IgdGVzdGluZyB0aGUgcGF0Y2hlcyBhIHBh
dGNoZWQgdmVyc2lvbiBvZiBrZXhlYy10b29scyBpcw0KPiA+Pj4+IG5lZWRlZC4gVGhlIHBhdGNo
IGlzIHN0aWxsIGEgd29yayBpbiBwcm9ncmVzcyBidXQgYSBkcmFmdCB2ZXJzaW9uDQo+ID4+Pj4g
Y2FuIGJlIGZvdW5kIGF0Og0KPiA+Pj4+DQo+ID4+Pj4gaHR0cDovL3Jpc2N2Lmljcy5mb3J0aC5n
ci9rZXhlYy10b29scy5wYXRjaA0KPiA+Pj4+DQo+ID4+Pg0KPiA+Pj4gQW55IGNvbW1lbnRzIC8g
ZmVlZGJhY2sgb24gdGhpcyA/IFNob3VsZCB3ZSBnZXQgaXQgaW4gPw0KPiA+Pj4NCj4gPj4+IFJl
Z2FyZHMsDQo+ID4+PiBOaWNrDQo+ID4+DQo+ID4+IEFueW9uZSA/DQo+ID4NCj4gPiBTb3JyeSwg
SSBkcm9wcGVkIHRoZSBiYWxsIG9uIHRoaXMgb25lLiAgQWZ0ZXIgdGhlIENQVSBob3RwbHVnIGJy
ZWFrYWdlDQo+ID4gSSBkZWNpZGVkIEkgbmVlZCB0byBnZXQgYSBwcmUtbWVyZ2UgdGVzdCBmb3Ig
YWxsIHRoZXNlIG5ldyBmZWF0dXJlcywNCj4gPiBhbmQgSSBoYXZlbid0IGdvdHRlbiBhcm91bmQg
dG8gYWN0dWFsbHkgZG9pbmcgc28geWV0LiAgVGhlIG1lcmdlDQo+ID4gd2luZG93IGlzIGNsb3Np
bmcgcmlnaHQgbm93LCBzbyB3aXRoIGFueSBsdWNrIEknbGwgaGF2ZSBzb21lIHRpbWUgdG8NCj4g
PiBnZXQgYXJvdW5kIHRvIG15IHBhdGNoIGJhY2tsb2cgLS0gZmlyc3QgSSBuZWVkIHRvIGdvIHNw
aW4gdXAgc29tZQ0KPiA+IGJldHRlciB0ZXN0aW5nLCB0aG91Z2guDQo+IA0KPiBBbnl0aGluZyBJ
IGNhbiBkbyB0byBoZWxwID8gSSBoYXZlIGEgYnVuY2ggb2YgaHcgYXZhaWxhYmxlICh1bmxlYXNo
ZWQsDQo+IGdlbmVzeXMyIGFuZCBuZXh5cyAyIGRkciBmb3IgQXJpYW5lIC8gTG93UklTQyBTb0Mp
IGFuZCBJJ2xsIHByb2JhYmx5IGFsc28NCj4gbmVlZCB0byBoYXZlIGEgQ0kgZmxvdyBmb3IgdGhl
IHN0dWZmIEkgZG8gaW50ZXJuYWxseS4NCg0KSSBoYWQgc2VuZC1vdXQgYSBmaXggZm9yIENQVSBo
b3RwbHVnIHdoaWNoIGNhbiBiZSB0YWtlbiBmb3INCmFueSBvZiB0aGUgTGludXgtNS44LXJjWC4N
Cg0KVGhlc2UgcGF0Y2hlcyBzaG91bGQgYmUgYmFzZWQgdXBvbiB0aGUgQ1BVIGhvdHBsdWcgZml4
Lg0KDQpSZWdhcmRzLA0KQW51cA0KDQo=

