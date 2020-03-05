Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56D68179ECC
	for <lists+linux-riscv@lfdr.de>; Thu,  5 Mar 2020 05:58:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=XFRCydzZE5EA5sB7v1sH02ZUawJ9sgkCHUe5S/ZJrgk=; b=LizrUU2FYuScHnajEbcPi0SAq
	DzWkQzrJKwD4En1w3QhQ6A5EHLrevleFzoHwdghHLCprtptZgwBDunDd3MeTpGrEP4xXnIvx0xUAP
	mOQsUfQqfqM3tn6Ayh+zbiT9xACz2MCAbvcPD57ZRYNPQZLUFSugwfGDjzbmRYsBR+N/mwrc79nlD
	nyS5pdLMnTWx0I5j5C1nzfKf4oumf7NH55x4UuAE/80hl88kGZgJhwbX1ZTWutZHZQfDIPjMR48py
	6vctN/1SBkrXuWMPw5c0foALJnTnV7Zvf+H/4R/kUyddLxjgMhzuZ6XXBunLFIbps/INwJ9/FyvTu
	T0NNISRYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9iao-0002zE-Hx; Thu, 05 Mar 2020 04:58:42 +0000
Received: from esa3.hgst.iphmx.com ([216.71.153.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9ial-0002yg-0g
 for linux-riscv@lists.infradead.org; Thu, 05 Mar 2020 04:58:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1583384320; x=1614920320;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=XFRCydzZE5EA5sB7v1sH02ZUawJ9sgkCHUe5S/ZJrgk=;
 b=SM4gthcHgZknMr2S8wEu72BhBTa361J3bzbLrM6IZK/Xo068iU99UTlT
 HFiWsX5QKY0Al0DyyvlJOSkBj9hh6AzCtTfDmBlwgDafeX0FRG2E6n9lx
 YqeiOcWTNV1GmxOM6/ggmK28E/D6XcUafgOvOa6TYxsNXeIiYpHw+l/+J
 /ZWcpZ+UAliug3af7+Eh2TzcG3orfpp0oSl8TGyJQs194cdiT2NbbTv/m
 7GMZ+nBBV8bauvYsGIhrg4jiPAHhxRmUdN4Yv/ifyEhGL04CgYSXXW7ga
 FRQlBmnNlURf1P25w6YAZ0kOY/nDHBFQXC3NFjC0xQIK3N6oTqSXe59B+ g==;
IronPort-SDR: eWyKuRMTRlzMWoh8rVCEvTv208xvcGy1KugvFSHikdDYpiLwgYKmLa8JsEb0uQ8lrEUAIdPaGC
 k1K3H9Npx8bisF92B896NG/L+1BsOxbicjGUS3UgViGBeWof4axFN5KN+EIcGoUCGLpMQuRPZE
 m/yw3NON5e43sLFaN6/xI2Sjy46Hzq8sk4M+nWI5XfdsK7EPXMmsZT3rYQsPcWn61kQuUbxGKL
 wfRoMPbJQpoL61SOfV33v70vrtuEmyWj+gI6cjCHUlG15bGKVw9m3XKIzV9zX9rKsWDHF4LlyH
 WAA=
X-IronPort-AV: E=Sophos;i="5.70,516,1574092800"; d="scan'208";a="135924928"
Received: from mail-co1nam11lp2170.outbound.protection.outlook.com (HELO
 NAM11-CO1-obe.outbound.protection.outlook.com) ([104.47.56.170])
 by ob1.hgst.iphmx.com with ESMTP; 05 Mar 2020 12:58:36 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AcN0Hd8j2aI2sNrndFgmrnMYg68z9PcuqsLOtanrwP/mSWlbfJgwJXjVU8o6ak1UbBcZWz6QSYhjMYYm+kNGKoULjc88C4O/uEdPQKDkLBayrBTOi1UOm7t9WYHzY+8hdj1rCwJ1m6tBXFwiTBp8l31gZvAzjKGgL2DGGBWTWegSg6BdlqiQk9ORcwPFwshNue2kCS+CNO/Kf6QoJHJxLJIx96erG4eN7YdXwyQnYoz44dmMF/y6gL9GDMcInNqMcL2ltUVA0EJOaJPWoUjGWS8+phXDl63WHZkxYX7o8qZByhp8BhdFibK+rex7DqEE4M6MVcWawSsCKx8fdhQOMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XFRCydzZE5EA5sB7v1sH02ZUawJ9sgkCHUe5S/ZJrgk=;
 b=Pr8/SekjmD9AJ7zsN+OcQxcCuCr6rFXphsDQlKJj/JJ/qMoVm01A4XAlJLXovS9wYrwt9nYD/Wnqcj3fUULcwt9p/8xVK0PZRcSgDoKWAZ60Yyrz+990WzZb4wkz94OYDBAXq2YxC1wU7MjLYrwgLx4grWKY2mI4PvoZHSKyiv48CCsB0bJPMCwhmWNdDjQxvQGd8qvJbaT8SSB87clhKML6IoncTJ0w7+wC9yIZwMCxAHCOIotyzIQobs5rSV41eW4ekR6AMsbuOjaCas6AXZ4mSWhZ9qP+YL3LcdEiWNCktIwaVDRC5Xp2iQTpCfXf50yZQbj1yMKbik5fiHP6fw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XFRCydzZE5EA5sB7v1sH02ZUawJ9sgkCHUe5S/ZJrgk=;
 b=p5l8bq0YiQK/UfWHfbKpPq2upqvegx1eZdBnRT4qE6V/KE0Zpq2L/SK5IJqtkz7G6OixkK5JYCfY5Z4+YQjwYeeuNgE+HefEL4bf0JRDFdGVU555g6BAJtJX8omuVrgjQdmqQ5j7GgkyfpwSTT2gZ5ISknS9yig87fboq59EbXk=
Received: from MN2PR04MB6061.namprd04.prod.outlook.com (2603:10b6:208:d8::15)
 by MN2PR04MB6990.namprd04.prod.outlook.com (2603:10b6:208:19f::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2772.19; Thu, 5 Mar
 2020 04:58:34 +0000
Received: from MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::159d:10c9:f6df:64c8]) by MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::159d:10c9:f6df:64c8%6]) with mapi id 15.20.2772.019; Thu, 5 Mar 2020
 04:58:34 +0000
From: Anup Patel <Anup.Patel@wdc.com>
To: Palmer Dabbelt <palmer@dabbelt.com>, Damien Le Moal <Damien.LeMoal@wdc.com>
Subject: RE: [PATCH 04/10] riscv: Add BUILTIN_DTB support
Thread-Topic: [PATCH 04/10] riscv: Add BUILTIN_DTB support
Thread-Index: AQHV4ZAMJsXyjI3DHUSsYl38YFGEgKg48yoAgACcXmA=
Date: Thu, 5 Mar 2020 04:58:33 +0000
Message-ID: <MN2PR04MB6061D77B37B5BFD3851F661F8DE20@MN2PR04MB6061.namprd04.prod.outlook.com>
References: <20200212103432.660256-5-damien.lemoal@wdc.com>
 <mhng-c45590f0-38f8-42db-a746-e9970c62e25d@palmerdabbelt-glaptop1>
In-Reply-To: <mhng-c45590f0-38f8-42db-a746-e9970c62e25d@palmerdabbelt-glaptop1>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Anup.Patel@wdc.com; 
x-originating-ip: [129.253.179.161]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: b91957ca-13cc-4ed2-c286-08d7c0c1db89
x-ms-traffictypediagnostic: MN2PR04MB6990:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR04MB6990F0270FCB1CBF6F3EF2868DE20@MN2PR04MB6990.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:3276;
x-forefront-prvs: 03333C607F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(366004)(346002)(136003)(396003)(376002)(39860400002)(199004)(189003)(478600001)(9686003)(71200400001)(4326008)(8936002)(81166006)(81156014)(2906002)(55016002)(8676002)(26005)(186003)(7696005)(53546011)(6636002)(6506007)(86362001)(66476007)(110136005)(5660300002)(52536014)(64756008)(54906003)(316002)(66446008)(66556008)(33656002)(66946007)(76116006);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB6990;
 H:MN2PR04MB6061.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ghrZzz5fBDNo6AMDY7vjK1nrdWrXlJBW6eMd9r9IdLp+5Ebc8bBLb4dXsrilu+7hbO0oOi59Vsgh6+lBMk0CctJdsf3gmkOG2B68PWxFqTlK+P9UGN0kvlmKtlKlMy7LMMWy/PBK/7EMPmYGORsklKMEl0HxVK0itkuV3eZsqtRAufOQ0tRiYcyUeCQTKLynn567mTSORZpB5ia00Pw8SZmwGcC/2kdOAkq0XtEWkhkkoirXN3sTPFMwNFi109U806DExrUvcRj9ZOjlfen+Qwfhzvn9+YQslkRVK9ycrj9uz0u8bt5XyD1531FP/PjuJT6QlOHcKO6oV/RE5SVRUCET3NZWJPGD6t3gzGo9LQoLFo3UpDkmWJkFy9mrOCnoOlB9mT3N/Ye/MbCX3GuhPX+9TcSzQF/Q4nNipwrYFm5oTHT/ys8TPmYQcz5vTNeM
x-ms-exchange-antispam-messagedata: dxM11vAgePOkvknAmnBVxEb4y5dH3MI+FiYDOkxmkoCuJHvSmpNOvtIVrfUuyGpEFqiSaZcW+tsho9ySJOfrSsl/Lhyyi3kg6hT1YefZG+Yo1QIeKyYreBO/jLdgfvM/zFlpjhjaIxch3axYRO/9Qg==
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b91957ca-13cc-4ed2-c286-08d7c0c1db89
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Mar 2020 04:58:33.7506 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: e0YGWWUs0+jTOHVe7BFI00omZL+3a2bPCiWf5J6TpE7NUu+su1Wv4AzuTSM8HoMfySkVXLUOh0k5BgEEUdD5yg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB6990
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_205839_175170_FFB8AEB9 
X-CRM114-Status: GOOD (  31.37  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.141 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 Paul Walmsley <paul.walmsley@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogUGFsbWVyIERhYmJlbHQg
PHBhbG1lckBkYWJiZWx0LmNvbT4NCj4gU2VudDogMDUgTWFyY2ggMjAyMCAwMDo1OQ0KPiBUbzog
RGFtaWVuIExlIE1vYWwgPERhbWllbi5MZU1vYWxAd2RjLmNvbT4NCj4gQ2M6IGxpbnV4LXJpc2N2
QGxpc3RzLmluZnJhZGVhZC5vcmc7IFBhdWwgV2FsbXNsZXkNCj4gPHBhdWwud2FsbXNsZXlAc2lm
aXZlLmNvbT47IEFudXAgUGF0ZWwgPEFudXAuUGF0ZWxAd2RjLmNvbT4NCj4gU3ViamVjdDogUmU6
IFtQQVRDSCAwNC8xMF0gcmlzY3Y6IEFkZCBCVUlMVElOX0RUQiBzdXBwb3J0DQo+IA0KPiBPbiBX
ZWQsIDEyIEZlYiAyMDIwIDAyOjM0OjI2IFBTVCAoLTA4MDApLCBEYW1pZW4gTGUgTW9hbCB3cm90
ZToNCj4gPiBFbmFibGUgYSBrZXJuZWwgYnVpbHRpbiBkdGIgZm9yIGJvYXJkcyBub3QgY2FwYWJs
ZSBvZiBwcm92aWRpbmcgYQ0KPiA+IGRldmljZSB0cmVlIHRvIHRoZSBrZXJuZWwuDQo+IA0KPiBJ
J2QgcHJlZmVyIGlmIHdlIHBpY2tlZCBhIG1lY2hhbmlzbSB0aGF0IGFsbG93cyBhIHNpbmdsZSBr
ZXJuZWwgYmluYXJ5IHRvIGJlDQo+IHJ1biBvbiBtdWx0aXBsZSBzeXN0ZW1zLiAgSSB0aGluayB0
aGVyZSdzIHR3byB1c2UgY2FzZXMgaGVyZToNCg0KSSBzdHJvbmdseSBzdXBwb3J0ICJzaW5nbGUg
a2VybmVsIGJpbmFyeSBmb3IgbXVsdGlwbGUgc3lzdGVtcyIgYnV0IGl0J3MgZm9yDQpkaWZmZXJl
bnQgcHVycG9zZSBoZXJlLg0KDQo+IA0KPiAqIEJvb3Rsb2FkZXJzIHRoYXQgcHJvdmlkZSBubyBE
VEIgYXQgYWxsLg0KPiAqIEJvb3Rsb2FkZXJzIHRoYXQgcHJvdmllZCBhIERUQiB0aGF0LCBmb3Ig
c29tZSByZWFzb24sIGlzbid0IHVzYWJsZS4NCj4gDQo+IEdpdmVuIHRob3NlIGNvbnN0cmFpbnRz
LCBjb3VsZCB3ZSBkbyBzb21ldGhpbmcgc2ltaWxhciB0byB0aGUgZWFybHkgZml4dXBzPw0KPiBJ
J20gdGhpbmtpbmcgd2UgY291bGQgYnVpbGQgYSBtYXBwaW5nIGJldHdlZW4gYSBoYXJkd2FyZSBp
ZGVudGlmaWVyIGFuZCBhDQo+IERUQiwgdGhlbiBsb29rIHVwIHRoZSBEVEIgd2Ugd2FudCB0byB1
c2UuICBVc2VycyB0aGF0IHdhbnQgYSBrZXJuZWwgdGhhdA0KPiBvbmx5IHJ1bnMgb24gYSBzaW5n
bGUgZGV2aWNlIGNhbiBkbyBzbyBieSBjb25maWd1cmluZyBvbmx5IGEgc2luZ2xlIERUQiwgdXNl
cnMNCj4gdGhhdCB3YW50IGEgbW9yZSBwb3J0YWJsZSBrZXJuZWwgY2FuIHNlbGVjdCBhIGJ1bmNo
IC0tIHRoYXQncyBlc3NlbnRpYWxseSB0aGUNCj4gc2FtZSBhcyBob3cgd2UncmUgdHJlYXRpbmcg
ZXZlcnl0aGluZyBlbHNlIChmb3IgZXhhbXBsZSwgdGhlDQo+IENPTkZJR19TT0NfKiBzdHVmZiku
DQoNClRoZXJlIGlzIG5vIGJvb3Rsb2FkZXIgb24gS2VuZHJ5dGUgSzIxMC4gVGhlIExpbnV4IFJJ
U0MtViBOT01NVSBrZXJuZWwNCmJvb3RzIGRpcmVjdGx5LiBUaGUgQlVJTFRJTl9EVEIgaXMgb25s
eSBhcHBsaWNhYmxlIHRvIGNhc2VzIHdoZXJlIHRoZXJlIGlzDQpubyBib290bG9hZGVyIGJlZm9y
ZSBrZXJuZWwuDQoNClRoZSBMaW51eCBSSVNDLVYgTk9NTVUgd2lsbCB0ZW5kIGJlIHVzZWQgaW4g
Y2FzZXMgd2hlcmU6DQoxLiBUaGVyZSBpcyBubyBib290bG9hZGVyIGFuZCBrZXJuZWwgYm9vdHMg
ZGlyZWN0bHkgaGVuY2Ugd2UgbmVlZA0KYnVpbHRpbiBEVEIgZmVhdHVyZS4NCjIuIFRoZXJlIGlz
IHZlcnkgbGVzcyBSQU0gc28gd2Ugd2lsbCBoYXZlIHRvIGJ1aWxkIGtlcm5lbCBzcGVjaWZpYyB0
bw0KYSBwYXJ0aWN1bGFyIHBsYXRmb3JtIHdpdGggYmFyZSBtaW5pbXVtIGRyaXZlcnMuIER1ZSB0
byB0aGlzLCB3ZSB3aWxsDQpoYXZlIHNlcGFyYXRlIGRlZmNvbmZpZyBmb3IgTk9NTVUgcGxhdGZv
cm1zLg0KDQpJIHRoaW5rIHBvaW50MSBjYW4gYmUgdGFja2xlZCBpZiB3ZSBlbmZvcmNlIGhhdmlu
ZyBib290bG9hZGVyIChzdWNoIGFzIFUtQm9vdCkNCmZvciBOT01NVSBzeXN0ZW1zIGFuZCBkcm9w
IHRoaXMgcGF0Y2guDQoNCkZvciBwb2ludDIgYWJvdmUsIHdlIGRvbid0IGhhdmUgbXVjaCBhbHRl
cm5hdGl2ZXMgb3RoZXIgdGhhbiByZWR1Y2luZw0Ka2VybmVsIGJpbmFyeSBzaXplIGJ5IGRpc2Fi
bGluZyB1bndhbnRlZCBkcml2ZXJzLg0KDQo+IA0KPiBGb3IgdGhlIGhhcmR3YXJlIElELCBjb3Vs
ZCB3ZSBkbyBzb21ldGhpbmcgbGlrZToNCj4gDQo+ICogQ2hlY2sgZm9yIHRoZSB0b3AtbGV2ZWwg
RFQgY29tcGF0aWJsZSBzdHJpbmcsIG9uIHN5c3RlbXMgd2hlcmUgd2UgaGF2ZSBhDQo+ICAgcHJv
dmlkZWQgRFRCLg0KPiAqIENoZWNrIGZvciBhIG1hdGNoaW5nIG1pbXBpZC9tYXJjaGlkL212ZW5k
b3JpZCB0dXBsZSwgbWF5YmUgd2l0aCBzb21lDQo+IHNvcnQgb2YNCj4gICBtYXNraW5nIGZ1bmN0
aW9uYWxpdHkgaWYgd2UgbGF0ZXIgbmVlZCBvbmUuICBUaGVzZSBhcmUgYXZhaWxpYWJsZSB2aWEg
U0JJDQo+ICAgY2FsbHMsIGJ1dCBJJ2QgYmUgaW5jbGluZWQgdG8gcmVzdHJpY3QgdGhlbSB0byBN
LW1vZGUgYm9vdCBhbmQganVzdCBzYXkgdGhlDQo+ICAgU0JJIG11c3QgcHJvdmlkZSBhIGRldmlj
ZSB0cmVlIHdpdGggYXQgbGVhc3QgYSBzdWl0YWJsZSBjb21wYXRpYmxlIHN0cmluZy4NCj4gDQo+
IFdoaWxlIEkgc3VwcG9zZSB3ZSBjb3VsZCBwdXQgdG9nZXRoZXIgYSB0b29sIGZvciBnZW5lcmF0
aW5nIHRoZXNlIHRhYmxlcywgZm9yDQo+IG5vdyB3ZSBjb3VsZCBwcm9iYWJseSBqdXN0IHN0aWNr
IHRoZSBtYXBwaW5ncyBpbiBhIHRhYmxlIGZvciBub3cgZ2l2ZW4gdGhhdA0KPiB0aGVyZSdzIG9u
bHkgb25lIG9mIHRoZW0uDQo+IA0KPiBUaGF0IHNhaWQsIEknbSBub3Qgc3VyZSB3aGF0IHRvIGRv
IGFib3V0IHRoZSBkaWZmZXJlbnQgS2VuZHJ5dGUgYm9hcmRzIC0tIGlzDQo+IHRoZXJlIGFueSB3
YXkgdG8gcG9rZSB0aGUgaGFyZHdhcmUgdG8gc2VlIHdoaWNoIGlzIHdoaWNoPw0KDQpJIGFtIHN1
cmUgdGhlcmUgYXJlIHR3byB0aHJlZSBkaWZmZXJlbnQgYm9hcmRzIG91dCB0aGVyZS4gRG9uJ3Qg
a25vdyBleGFjdA0KZGlmZmVyZW5jZXMgYmV0d2VlbiB0aGVzZSBib2FyZHMuDQoNClJlZ2FyZHMs
DQpBbnVwDQoNCj4gDQo+ID4gU2lnbmVkLW9mZi1ieTogRGFtaWVuIExlIE1vYWwgPGRhbWllbi5s
ZW1vYWxAd2RjLmNvbT4NCj4gPiAtLS0NCj4gPiAgYXJjaC9yaXNjdi9LYnVpbGQgICAgICAgICAg
ICB8ICAxICsNCj4gPiAgYXJjaC9yaXNjdi9LY29uZmlnICAgICAgICAgICB8IDE4ICsrKysrKysr
KysrKysrKysrKw0KPiA+ICBhcmNoL3Jpc2N2L2Jvb3QvZHRzL01ha2VmaWxlIHwgIDQgKysrKw0K
PiA+ICBhcmNoL3Jpc2N2L2tlcm5lbC9zZXR1cC5jICAgIHwgIDYgKysrKysrDQo+ID4gIGFyY2gv
cmlzY3YvbW0vaW5pdC5jICAgICAgICAgfCAgNCArKysrDQo+ID4gIDUgZmlsZXMgY2hhbmdlZCwg
MzMgaW5zZXJ0aW9ucygrKQ0KPiA+DQo+ID4gZGlmZiAtLWdpdCBhL2FyY2gvcmlzY3YvS2J1aWxk
IGIvYXJjaC9yaXNjdi9LYnVpbGQgaW5kZXgNCj4gPiBkMWQwYWE3MGZkZjEuLjk4ODgwNGU0MzBl
NCAxMDA2NDQNCj4gPiAtLS0gYS9hcmNoL3Jpc2N2L0tidWlsZA0KPiA+ICsrKyBiL2FyY2gvcmlz
Y3YvS2J1aWxkDQo+ID4gQEAgLTEsMyArMSw0IEBADQo+ID4gICMgU1BEWC1MaWNlbnNlLUlkZW50
aWZpZXI6IEdQTC0yLjAtb25seQ0KPiA+DQo+ID4gIG9iai15ICs9IGtlcm5lbC8gbW0vIG5ldC8N
Cj4gPiArb2JqLSQoQ09ORklHX1VTRV9CVUlMVElOX0RUQikJKz0gYm9vdC9kdHMvDQo+ID4gZGlm
ZiAtLWdpdCBhL2FyY2gvcmlzY3YvS2NvbmZpZyBiL2FyY2gvcmlzY3YvS2NvbmZpZyBpbmRleA0K
PiA+IDFhM2I1YTUyNzZiZS4uMjg4OTllMTVmNTQ4IDEwMDY0NA0KPiA+IC0tLSBhL2FyY2gvcmlz
Y3YvS2NvbmZpZw0KPiA+ICsrKyBiL2FyY2gvcmlzY3YvS2NvbmZpZw0KPiA+IEBAIC0zNTUsNiAr
MzU1LDI0IEBAIGNvbmZpZyBDTURMSU5FX0ZPUkNFDQo+ID4NCj4gPiAgZW5kY2hvaWNlDQo+ID4N
Cj4gPiArY29uZmlnIFVTRV9CVUlMVElOX0RUQg0KPiA+ICsJYm9vbCAiVXNlIGJ1aWx0aW4gRFRC
Ig0KPiA+ICsJaGVscA0KPiA+ICsJICBMaW5rIGEgZGV2aWNlIHRyZWUgYmxvYiBmb3IgcGFydGlj
dWxhciBoYXJkd2FyZSBpbnRvIHRoZSBrZXJuZWwsDQo+ID4gKwkgIHN1cHByZXNzaW5nIHVzZSBv
ZiB0aGUgRFRCIHBvaW50ZXIgcHJvdmlkZWQgYnkgdGhlIGJvb3Rsb2FkZXIuDQo+ID4gKwkgIFRo
aXMgb3B0aW9uIHNob3VsZCBvbmx5IGJlIHVzZWQgd2l0aCBoYXJkd2FyZSBvciBib290bG9hZGVy
cyB0aGF0DQo+ID4gKwkgIGFyZSBub3QgY2FwYWJsZSBvZiBwcm92aWRpbmcgYSBEVEIgdG8gdGhl
IGtlcm5lbCwgb3IgZm9yDQo+ID4gKwkgIGV4cGVyaW1lbnRhbCBoYXJkd2FyZSB3aXRob3V0IHN0
YWJsZSBkZXZpY2UgdHJlZSBiaW5kaW5ncy4NCj4gPiArDQo+ID4gK2NvbmZpZyBCVUlMVElOX0RU
Ql9TT1VSQ0UNCj4gPiArCXN0cmluZyAiU291cmNlIGZpbGUgZm9yIGJ1aWx0aW4gRFRCIg0KPiA+
ICsJZGVmYXVsdCAiIg0KPiA+ICsJZGVwZW5kcyBvbiBVU0VfQlVJTFRJTl9EVEINCj4gPiArCWhl
bHANCj4gPiArCSAgQmFzZSBuYW1lICh3aXRob3V0IHN1ZmZpeCwgcmVsYXRpdmUgdG8gYXJjaC9y
aXNjdi9ib290L2R0cykgZm9yDQo+ID4gKwkgIHRoZSBhIERUUyBmaWxlIHRoYXQgd2lsbCBiZSB1
c2VkIHRvIHByb2R1Y2UgdGhlIERUQiBsaW5rZWQgaW50bw0KPiA+ICsJICB0aGUga2VybmVsLg0K
PiA+ICsNCj4gPiAgZW5kbWVudQ0KPiA+DQo+ID4gIG1lbnUgIlBvd2VyIG1hbmFnZW1lbnQgb3B0
aW9ucyINCj4gPiBkaWZmIC0tZ2l0IGEvYXJjaC9yaXNjdi9ib290L2R0cy9NYWtlZmlsZQ0KPiA+
IGIvYXJjaC9yaXNjdi9ib290L2R0cy9NYWtlZmlsZSBpbmRleCBkY2MzYWRhNzg0NTUuLjBiZjI2
NjlhYTEyZCAxMDA2NDQNCj4gPiAtLS0gYS9hcmNoL3Jpc2N2L2Jvb3QvZHRzL01ha2VmaWxlDQo+
ID4gKysrIGIvYXJjaC9yaXNjdi9ib290L2R0cy9NYWtlZmlsZQ0KPiA+IEBAIC0xLDIgKzEsNiBA
QA0KPiA+ICAjIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wDQo+ID4gK2lmbmVxICgk
KENPTkZJR19CVUlMVElOX0RUQl9TT1VSQ0UpLCIiKQ0KPiA+ICtvYmotJChDT05GSUdfVVNFX0JV
SUxUSU5fRFRCKSArPSAkKHBhdHN1YnN0DQo+ID4gKyIlIiwlLCQoQ09ORklHX0JVSUxUSU5fRFRC
X1NPVVJDRSkpLmR0Yi5vDQo+ID4gK2Vsc2UNCj4gPiAgc3ViZGlyLXkgKz0gc2lmaXZlDQo+ID4g
K2VuZGlmDQo+ID4gZGlmZiAtLWdpdCBhL2FyY2gvcmlzY3Yva2VybmVsL3NldHVwLmMgYi9hcmNo
L3Jpc2N2L2tlcm5lbC9zZXR1cC5jDQo+ID4gaW5kZXggMGE2ZDQxNWIwYTVhLi4zZTg5YmU5ZDg4
OGMgMTAwNjQ0DQo+ID4gLS0tIGEvYXJjaC9yaXNjdi9rZXJuZWwvc2V0dXAuYw0KPiA+ICsrKyBi
L2FyY2gvcmlzY3Yva2VybmVsL3NldHVwLmMNCj4gPiBAQCAtNjgsNyArNjgsMTMgQEAgdm9pZCBf
X2luaXQgc2V0dXBfYXJjaChjaGFyICoqY21kbGluZV9wKQ0KPiA+DQo+ID4gIAlzZXR1cF9ib290
bWVtKCk7DQo+ID4gIAlwYWdpbmdfaW5pdCgpOw0KPiA+ICsNCj4gPiArI2lmIElTX0VOQUJMRUQo
Q09ORklHX1VTRV9CVUlMVElOX0RUQikNCj4gPiArCXVuZmxhdHRlbl9hbmRfY29weV9kZXZpY2Vf
dHJlZSgpOw0KPiA+ICsjZWxzZQ0KPiA+ICAJdW5mbGF0dGVuX2RldmljZV90cmVlKCk7DQo+ID4g
KyNlbmRpZg0KPiA+ICsNCj4gPiAgCWNsaW50X2luaXRfYm9vdF9jcHUoKTsNCj4gPg0KPiA+ICAj
aWZkZWYgQ09ORklHX1NXSU9UTEINCj4gPiBkaWZmIC0tZ2l0IGEvYXJjaC9yaXNjdi9tbS9pbml0
LmMgYi9hcmNoL3Jpc2N2L21tL2luaXQuYyBpbmRleA0KPiA+IDk2NWE4Y2Y0ODI5Yy4uMTI3NGU4
ODlkMDA4IDEwMDY0NA0KPiA+IC0tLSBhL2FyY2gvcmlzY3YvbW0vaW5pdC5jDQo+ID4gKysrIGIv
YXJjaC9yaXNjdi9tbS9pbml0LmMNCj4gPiBAQCAtNDgwLDcgKzQ4MCwxMSBAQCBzdGF0aWMgdm9p
ZCBfX2luaXQgc2V0dXBfdm1fZmluYWwodm9pZCkgICNlbHNlDQo+ID4gYXNtbGlua2FnZSB2b2lk
IF9faW5pdCBzZXR1cF92bSh1aW50cHRyX3QgZHRiX3BhKSAgew0KPiA+ICsjaWYgSVNfRU5BQkxF
RChDT05GSUdfVVNFX0JVSUxUSU5fRFRCKQ0KPiA+ICsJZHRiX2Vhcmx5X3ZhID0gX19kdGJfc3Rh
cnQ7DQo+ID4gKyNlbHNlDQo+ID4gIAlkdGJfZWFybHlfdmEgPSAodm9pZCAqKWR0Yl9wYTsNCj4g
PiArI2VuZGlmDQo+ID4gIH0NCj4gPg0KPiA+ICBzdGF0aWMgaW5saW5lIHZvaWQgc2V0dXBfdm1f
ZmluYWwodm9pZCkNCg==

