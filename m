Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD55EB2B5A
	for <lists+linux-riscv@lfdr.de>; Sat, 14 Sep 2019 15:06:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gDHC/VXOTP2U787uTPdakS1g0CFTcp26CZmwJEGsBTQ=; b=P42BFs2sZOvRVQ
	1+AEGgiTK2z7su7zEzRmn3ECwvzuj8dDR8aY8Prm0PS7c4pCyxdjvYA9aMgb7K2My9Vp2zLus3UXl
	It0KFk6NB2H+C8moHPDSiB/9tc+lKkNAy938zIe+RPaFIVqm8+Pj0azeLPVErvLmT91iMiCm1wOh0
	IZc2pICh/80OygBHKZcaHIYUZkOUBNYXpVnoSapQ+k31MUbXqjVrhJvtCiADC6msh9RuCsCMCsvRf
	2hqE7MlcBUXa9gLaCAUWX7ey1sSN31cuAcfL2mK9o3r/u599L4iZP5Pa9OtkvyapSJwRBe8Ycy0KA
	HlzCxy1p4aFfmPuXE+GQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i97kh-0003nC-TD; Sat, 14 Sep 2019 13:06:11 +0000
Received: from esa3.hgst.iphmx.com ([216.71.153.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i97kb-0003mK-Sl
 for linux-riscv@lists.infradead.org; Sat, 14 Sep 2019 13:06:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1568466367; x=1600002367;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ErptEH/GCWNj4S3LPiTwvXjPkVYMB1ZPNSOoacEXsWk=;
 b=C46ztHAdPTeBDDK9wR/HcIoYiTuXuuM+Gjeyb/TJe0c56vd9xPeL05RU
 SorAJ1odWVbI8lybCH8HUzW6VwqURjdzkbOUDfbNyGao3YGo3BDxQZ9Rp
 84L7YhXKtDfhqiZ4O7SyP5EFXycwKJJkfjEJHDqyuxEWDNVtnvW+QC16C
 Jm30I07IlsmpY1VpoBEtNMhvgzSmFqwJreT8dX1UXEneo6GvjN8lQBDFG
 qbny0yq5Ni7pSaR6LNfAXFYIkbSn9ZR3isAqs328qJYvYf0UsczZTNGcc
 NIsgvEPSic+sFFLhI2xYKxSxYHACTIuEw01Htv4hB4d/cvswwfxLjK2AI Q==;
IronPort-SDR: 1ZNQNguZ3t9r22m3QuRdvK+TVvMHZH7X4Hw9e1Lz7XmlCbtmTLkXgBVAmclrV1jK16rb8tdp60
 I7UO7vhebUYerETAf7kPG+XCfvRxbWCERVoP3EO00k4vaASho5cGpR1JS7orPNJfaksFuktO/4
 J4AspWqDXxTKjtWBRefTE2TX6hCxicgZjuvX2e+qYGNyUie1H8DNXc0Bl1fYz9WLAPEVuf8lYw
 MkUfcqMJbXlLR8KgIJvnl0eEyAtvuNdszAQ8YexQyjEbz/CCfJIp8GxSQQtQ8RWBgd5V/nKjVn
 Hxk=
X-IronPort-AV: E=Sophos;i="5.64,504,1559491200"; d="scan'208";a="122763319"
Received: from mail-sn1nam04lp2053.outbound.protection.outlook.com (HELO
 NAM04-SN1-obe.outbound.protection.outlook.com) ([104.47.44.53])
 by ob1.hgst.iphmx.com with ESMTP; 14 Sep 2019 21:06:01 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PUCOEz8HmB310v1BlzpBBdivz7fbfcZXwWuy2YxVu4geesseMW6flIhesZQx87ZoJoXae2VfrzGKg5LRuVI89M9XP870F/34+e2Gn5AU6vnPqAG2Tu1n1pxRCKbvE4s5PI9LGo2UlL0USLvXPw+ZjmuRRNYm3RzbYT0mDrkpKm1oNYC7S3PJev9S9VUgBaRY2uNAzThQ5O8r0Caf1JH51RZHyNZ1rsQQ1RubAkpsrQswk2AHm4W2BwOOcr5P3OYksMecgUVozjS/0uMd8hE2sU/bZsAedfIg7JsXN8nYmtqdqwrCciwQbk9Ted69l4hnG+BcEzr1NcwTa//oPFUofQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ErptEH/GCWNj4S3LPiTwvXjPkVYMB1ZPNSOoacEXsWk=;
 b=gr/TcudYnaZUrPy9AVvjNlrUAdHezDqOoAwfrkz5KrRTeyiJLKL/7oK1RhxPQ3kce0sNALOkX3CqGF4OcKUKVFHDsQiS+GlpOt5vnC+ng5E99I8wnlh2Uy10gYmy5xplexrLckN9IDPPeF4yWLKOnFuWBfRG9Yru0xao/S9t6R4TekdCwfBLMl5q9EMJCc5uI78jqJHOL+qWc+GWVGBnXVzTn8TAulBM4COuCypg0r/yEAbO87rpPOA1WkRA9GXHuzcUDelE8GCqEnsRMcmlYhgfIhXAtiq27q/C8mAxMgL4gDEVhOWjlLE5ynSPWeY8Z/BLru/v5mnKAr3Z8/y+aw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ErptEH/GCWNj4S3LPiTwvXjPkVYMB1ZPNSOoacEXsWk=;
 b=EO9gkKofAn6vM0ecES2FMSGVhw5+wANDat5DTl04hrC+M6s5N4LC1fCW8RenuI0firHaj3oomTSyRAq3+AYZ4xdv7FmjMUUOw89sXd1+rykHC37T18DoS4ixUqV1UA9gCDkzz4kDoc9SDKhL1YXjPcsHHmkPh07BimHgXU3CgLY=
Received: from MN2PR04MB6061.namprd04.prod.outlook.com (20.178.246.15) by
 MN2PR04MB5824.namprd04.prod.outlook.com (20.179.21.87) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2241.18; Sat, 14 Sep 2019 13:05:59 +0000
Received: from MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::e1a5:8de2:c3b1:3fb0]) by MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::e1a5:8de2:c3b1:3fb0%7]) with mapi id 15.20.2263.023; Sat, 14 Sep 2019
 13:05:59 +0000
From: Anup Patel <Anup.Patel@wdc.com>
To: Palmer Dabbelt <palmer@sifive.com>, "mail@aurabindo.in" <mail@aurabindo.in>
Subject: RE: [RFC] buildtar: add case for riscv architecture
Thread-Topic: [RFC] buildtar: add case for riscv architecture
Thread-Index: AQHVaG+T9z99XmV4pUONxJthJ2bFy6cmLzmAgAA/5oCABLidgIAAAPEg
Date: Sat, 14 Sep 2019 13:05:59 +0000
Message-ID: <MN2PR04MB60613FADCF3482C14F29F4558DB20@MN2PR04MB6061.namprd04.prod.outlook.com>
References: <X9f9LozkDQUeBwasTsPlPseP6ZT5yJHNY2GcIgoAgNQJPuFAyYimnDXTJUqxfrZ64GOIl5-uPh07NZnD1pi4uWhCpZvbu9khOW6rEq5P4jU=@aurabindo.in>
 <mhng-ed262582-dc00-41fe-9be5-2487297f2432@palmer-si-x1e>
In-Reply-To: <mhng-ed262582-dc00-41fe-9be5-2487297f2432@palmer-si-x1e>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Anup.Patel@wdc.com; 
x-originating-ip: [106.51.18.81]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ee78c5cf-d362-4190-f91a-08d7391449a3
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(7168020)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:MN2PR04MB5824; 
x-ms-traffictypediagnostic: MN2PR04MB5824:
x-microsoft-antispam-prvs: <MN2PR04MB582449B9FC0DFAFC1311A9048DB20@MN2PR04MB5824.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 01604FB62B
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(396003)(39860400002)(366004)(376002)(346002)(136003)(13464003)(189003)(199004)(76176011)(33656002)(8936002)(55236004)(11346002)(9456002)(14454004)(86362001)(5660300002)(99286004)(64756008)(81166006)(4326008)(2501003)(7736002)(53936002)(55016002)(74316002)(6246003)(1250700005)(14444005)(256004)(8676002)(71190400001)(71200400001)(66446008)(305945005)(52536014)(186003)(478600001)(9686003)(66556008)(110136005)(7696005)(25786009)(316002)(54906003)(81156014)(66946007)(66476007)(76116006)(3846002)(6436002)(53546011)(6506007)(476003)(26005)(102836004)(486006)(446003)(6116002)(66066001)(2906002)(229853002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB5824;
 H:MN2PR04MB6061.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 9Vf1Qbz4O0vBhtdU2agmN30vdgdg13Isf0tI4LMGnsslfOLbJhnmxCVzV5gWTtrqYynLtIqdOHxQjX4OCY8kGGrIHlguOE8F6CdIDPauBWy0oxpCSLgbKbnIbMIuobn0X+D3PKYW8Qlw4cO99FJkA3l+FTQBvmDCdEyKXspKPC748br/Cp8LBtjm/PBfNTC2FhpqJbjGdKcNN9TEX71PLJQuL3YDtbNpUG4ZRUOFZ2DeYl7s/vKz96AJ66qEwUrv9q/QcER+fYW5X/gLNaEshJR6RgTU0UFVwV7CIhrskEPCmdrGMogoKhuTbLYhFBi3LKucfKE+6O6bumaDYsvUCcV9dM0o2jAGqlCX9N5l9/pFpPnjNH9iFNPzYUIOaqNko9udyLajwRiyV1H2JqE8CjkR8MYzn3nD1moepec5sOU=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ee78c5cf-d362-4190-f91a-08d7391449a3
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Sep 2019 13:05:59.2587 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: UMXkfnInschRhVghxkp0DVkgGJcVwqjnSj4QEsIBr8o5jE5Tv3Uu1T4QkkIayIS8mivIiySnjmZnuYkOT/o2Rg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB5824
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190914_060605_940144_669E1CDF 
X-CRM114-Status: GOOD (  19.66  )
X-Spam-Score: -0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.141 listed in list.dnswl.org]
 1.7 URIBL_BLACK            Contains an URL listed in the URIBL blacklist
 [URIs: aurabindo.in]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 "linux-kbuild@vger.kernel.org" <linux-kbuild@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Troy Benjegerdes <troy.benjegerdes@sifive.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogbGludXgta2VybmVsLW93
bmVyQHZnZXIua2VybmVsLm9yZyA8bGludXgta2VybmVsLQ0KPiBvd25lckB2Z2VyLmtlcm5lbC5v
cmc+IE9uIEJlaGFsZiBPZiBQYWxtZXIgRGFiYmVsdA0KPiBTZW50OiBTYXR1cmRheSwgU2VwdGVt
YmVyIDE0LCAyMDE5IDY6MzAgUE0NCj4gVG86IG1haWxAYXVyYWJpbmRvLmluDQo+IENjOiBUcm95
IEJlbmplZ2VyZGVzIDx0cm95LmJlbmplZ2VyZGVzQHNpZml2ZS5jb20+OyBQYXVsIFdhbG1zbGV5
DQo+IDxwYXVsLndhbG1zbGV5QHNpZml2ZS5jb20+OyBhb3VAZWVjcy5iZXJrZWxleS5lZHU7IGxp
bnV4LQ0KPiByaXNjdkBsaXN0cy5pbmZyYWRlYWQub3JnOyBsaW51eC1rZXJuZWxAdmdlci5rZXJu
ZWwub3JnOyBsaW51eC0NCj4ga2J1aWxkQHZnZXIua2VybmVsLm9yZw0KPiBTdWJqZWN0OiBSZTog
W1JGQ10gYnVpbGR0YXI6IGFkZCBjYXNlIGZvciByaXNjdiBhcmNoaXRlY3R1cmUNCj4gDQo+IE9u
IFdlZCwgMTEgU2VwIDIwMTkgMDU6NTQ6MDcgUERUICgtMDcwMCksIG1haWxAYXVyYWJpbmRvLmlu
IHdyb3RlOg0KPiA+DQo+ID4NCj4gPj4gTm9uZSBvZiB0aGUgYXZhaWxhYmxlIFJpc2NWIHBsYXRm
b3JtcyB0aGF0IEnigJltIGF3YXJlIG9mIHVzZSBjb21wcmVzc2VkDQo+IGltYWdlcywgdW5sZXNz
IHRoZXJlIGFyZSBzb21lIG5ldyBib290bG9hZGVycyBJIGhhdmVu4oCZdCBzZWVuIHlldC4NCj4g
Pj4NCj4gPg0KPiA+IEkgbm90aWNlZCB0aGF0IGRlZmF1bHQgYnVpbGQgaW1hZ2UgaXMgSW1hZ2Uu
Z3osIHdoaWNoIGlzIHdoeSBJIHRob3VnaHQgaXRzIGENCj4gZ29vZCBpZGVhIHRvIGNvcHkgaXQg
aW50byB0aGUgdGFyYmFsbC4gRG9lcyBzdWNoIGEgY29weSBub3QgbWFrZSBzZW5zZSBhdCB0aGlz
DQo+IHBvaW50ID8NCj4gDQo+IEltYWdlLmd6IGNhbid0IGJlIGJvb3RlZCBkaXJlY3RseTogaXQn
cyBqdXN0IEltYWdlIHRoYXQncyBiZWVuIGNvbXByZXNzZWQNCj4gd2l0aCB0aGUgc3RhbmRhcmQg
Z3ppcCBjb21tYW5kLiAgQSBib290bG9hZGVyIHdvdWxkIGhhdmUgdG8gZGVjb21wcmVzcw0KPiB0
aGF0IGltYWdlIGJlZm9yZSBsb2FkaW5nIGl0IGludG8gbWVtb3J5LCB3aGljaCByZXF1aXJlcyBl
eHRyYSBib290bG9hZGVyDQo+IHN1cHBvcnQuDQo+IENvbnRyYXN0IHRoYXQgd2l0aCB0aGUgeklt
YWdlIHN0eWxlIGltYWdlcyAod2hpY2ggYXJlIHZtbGludXogb24geDg2KSwgd2hpY2gNCj4gYXJl
IHNlbGYtZXh0cmFjdGluZyBhbmQgdGhlcmVmb3IgcmVxdWlyZSBubyBib290bG9hZGVyIHN1cHBv
cnQuICBUaGUNCj4gZXhhbXBsZXMgZm9yIHUtYm9vdCBhbGwgdXNlIHRoZSAiYm9vdGkiIGNvbW1h
bmQsIHdoaWNoIGV4cGVjdHMNCj4gdW5jb21wcmVzc2VkIGltYWdlcy4NCj4gUG9raW5nIGFyb3Vu
ZCBJIGNvdWxkbid0IGZpZ3VyZSBvdXQgYSB3YXkgdG8gaGF2ZSB1LWJvb3QgZGVjb21wcmVzcyB0
aGUNCj4gaW1hZ2VzLCBidXQgdGhhdCBhcHBsaWVzIHRvIGFybTY0IGFzIHdlbGwgc28gSSdtIG5v
dCBzdXJlIGlmIEknbSBtaXNzaW5nDQo+IHNvbWV0aGluZy4NCj4gDQo+IElmIEkgd2FzIGRvaW5n
IHRoaXMsIEknZCBjb3B5IG92ZXIgYXJjaC9yaXNjdi9ib290L0ltYWdlIGFuZCBjYWxsIGl0DQo+
ICIvYm9vdC9pbWFnZS0ke0tFUk5FTFJFTEVBU0V9IiwgYXMgY2FsbGluZyBpdCB2bWxpbnV6IGlz
IGEgYml0IGNvbmZ1c2luZyB0bw0KPiBtZSBiZWNhdXNlIEknZCBleHBlY3Qgdm1saW51eiB0byBi
ZSBhIHNlbGYtZXh0cmFjdGluZyBjb21wcmVzc2VkDQo+IGV4ZWN1dGFibGUgYW5kIG5vdCBhIHJh
dyBnemlwIGZpbGUuDQoNCk9uIHRoZSBjb250cmFyeSwgaXQgaXMgaW5kZWVkIHBvc3NpYmxlIHRv
IGJvb3QgSW1hZ2UuZ3ogZGlyZWN0bHkgdXNpbmcNClUtQm9vdCBib290aSBjb21tYW5kIHNvIHRo
aXMgcGF0Y2ggd291bGQgYmUgdXNlZnVsLg0KDQpBdGlzaCBoYWQgZ290IGl0IHdvcmtpbmcgb24g
VS1Cb290IGJ1dCBoZSBoYXMgZGVmZXJyZWQgYm9vdGkgSW1hZ2UuZ3oNCnN1cHBvcnQgZHVlIHRv
IGZldyBtb3JlIGRlcGVuZGVudCBjaGFuZ2VzLiBNYXkgYmUgaGUgY2FuIHNoYXJlDQptb3JlIGlu
Zm8uDQoNClJlZ2FyZHMsDQpBbnVwDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpsaW51eC1yaXNjdiBtYWlsaW5nIGxpc3QKbGludXgtcmlzY3ZAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXJpc2N2Cg==
