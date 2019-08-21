Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00D3398799
	for <lists+linux-riscv@lfdr.de>; Thu, 22 Aug 2019 01:02:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l3dEYUJ7ISFldNqVOsiq63hXUkM92b0YlgNVH0wfqmw=; b=YCkDvddQxvUXu6
	5z9jbiLUsc539kKbunRRufGxEwSwZGpr7RgXanwhtRWGXwDAGtoCGDtuWccWydafBijP+9J6pR/xw
	0GMVJMlDPtoYzjg/ZylQwN2ngMxL4/HR8xJ1cxbw+a3p2lWltvNsrVKXi+ttVdQrAcwI7YVgc8wDg
	HejCrvufBEYBDZ+pZwfaYh23JfH07TfT8YQ7HGuGGQ7wO8EAtWubgxL5y/N0fUAosntvKp+Viyjhv
	Fz4FcTcXcqok0DW7Xj7+lES8XCqh37K8q0yyr4U5u8HwkGL97jk+X58eH5dWOoynNrYqbakNieV6v
	xncOV7BR72LGOvlLkyZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0ZcV-0001R4-09; Wed, 21 Aug 2019 23:02:23 +0000
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0ZcQ-0001P4-Ln
 for linux-riscv@lists.infradead.org; Wed, 21 Aug 2019 23:02:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1566428539; x=1597964539;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=0hrdFWyeHHx3/2URsTUQymqka4z+jrlB+7DJV1WS7Ok=;
 b=qG66uW2amUJompUEKuy4q5X+yotYR5Mt9Lb9usjWnI/+RAUVHUamzoAL
 7QnLPGz0Dr50clN6QAdrX5DZyS2FNeD16xZkfT9YQ3nfvSbF04gfuGCA5
 wDjQCQHsxb+OrXAKHQyPSWffbyVrcBI/t637SvzBF6x50VisG5zDI/EBI
 Fpi9y1VEATNunp0aNJmSwMrKpGNsFp88HSdJeS9dHmi2WArIVND595Q3M
 c+F1vYBWsqvqloUR9xpS3tr0Nkn5Y6e0V5XN/75K2cj0EjNSsUFRTkUNR
 IphtynQIEEkGYB5hRFTXAxFiAVSHr74cQ3vRSovmC36zplxV1V7Y33DCM w==;
IronPort-SDR: bj6WPGsiUTEQujpp5nSqkq96n4CHBzRCEozAJeYKCwr4XkkwqwJpiYGoGCJQxOsGgHtEmNLIHo
 PeZ9/9uL6gWEWKjynxogQLPnNMl0/++I3rB4bN0/fbz6Utx3mepHJpIX0zYb3Y+X7y0knN9pV1
 qNRmGlpg7FDYRSm25rwjTdaEhqfZeesAODtvEVcByM0e6rN7p2UVJOfnAx/UNl/PsHAvfPNNDR
 L4AyT8wGvM9T2f1wP43cta2CKLkIJBkCd+eLfdJk18DEIwLwXWmwZwhLQ5I8ENKiM6YWKF+KOF
 8KM=
X-IronPort-AV: E=Sophos;i="5.64,414,1559491200"; d="scan'208";a="117302949"
Received: from mail-by2nam01lp2054.outbound.protection.outlook.com (HELO
 NAM01-BY2-obe.outbound.protection.outlook.com) ([104.47.34.54])
 by ob1.hgst.iphmx.com with ESMTP; 22 Aug 2019 07:02:11 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hliFxCAXSy/qA7DLwKFdYyDolRrBxDjrSjxuFmlJQiwU2BXsUqeNOcuRd916x7Wj/pK1OgPkA3guJFRQ9tu+nJT+53ueC7mT8411xHvdem1kU/9QxbqdFyBtQ+8uLqYXiZIvaPS/kU0Ot/4ISj7DfGqJmbn/UbfLrzI9+MA/OVsKMM08G8Sl1Nh3t5yVDqcsTy57E9iH4tPeEhCv5gZEQZWyY1AUmahlRwfMMEuEOSYyZDAb3EZxeqO542o26yagcdFnxCXp003gEkH08vBj57DDGsDQiZklrtL4fov+0CdTs96S9nF7X6bUAgCNyBKAabfEsZFE8p8Cw2Au4F1dPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0hrdFWyeHHx3/2URsTUQymqka4z+jrlB+7DJV1WS7Ok=;
 b=CSw4YiyFUS7NCVQPFXXSpUM1yCyj5xX+pDL++3SrLKu6kcfI0CwKQioFT09hk7Y9uM5wIr4EWG1ALC6gRvWToEGKOqEs8IXZjPRytdhKgSh+hQXc5X2QZDJTgc4evlsfcfKsA8rGFR3aWIY2V1ttT2l6+zi73/5N5ZakS8/lelkutLeKr9WTBeByqTSzAxDuxGiTp76nCRE5T9H/EXVVUD/EwObguzpzfVK69L+9tZr46y9qyxhOPvtQStC1AFmAL5fk/UTq3gCNEEIBWjbpBkuSuOS2iOZrZWHawN7Oeg3HWGKjk2GUvtgWkGnnfIqXvDif9KySqSXL57F1TNBi/w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0hrdFWyeHHx3/2URsTUQymqka4z+jrlB+7DJV1WS7Ok=;
 b=RsDjQD17/uiYUEv0ycoaea6antnmY9oKU7EuVSyN7ciEehVP/TJvY1GgQRwHA+LOIgMNKeLRvhCJgHp301peFNNLtn+4QDqXHcQvmtCiMcOJP2owObafTOf8IvgVSlbj+Qf9/crom1J7EbV92XF5+98JgT1GcX3wn/TSP+QbKKE=
Received: from MN2PR04MB6061.namprd04.prod.outlook.com (20.178.246.15) by
 MN2PR04MB6158.namprd04.prod.outlook.com (20.178.246.78) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.16; Wed, 21 Aug 2019 23:02:10 +0000
Received: from MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::a815:e61a:b4aa:60c8]) by MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::a815:e61a:b4aa:60c8%7]) with mapi id 15.20.2178.018; Wed, 21 Aug 2019
 23:02:10 +0000
From: Anup Patel <Anup.Patel@wdc.com>
To: Troy Benjegerdes <troy.benjegerdes@sifive.com>, Atish Patra
 <Atish.Patra@wdc.com>
Subject: RE: [PATCH 15/15] riscv: disable the EFI PECOFF header for M-mode
Thread-Topic: [PATCH 15/15] riscv: disable the EFI PECOFF header for M-mode
Thread-Index: AQHVUe6T/tNY56IY9kOTOfxhHcBLJqcFCguAgADefQCAAAahAIAAU0Hw
Date: Wed, 21 Aug 2019 23:02:09 +0000
Message-ID: <MN2PR04MB6061794D39900E038F9FCF218DAA0@MN2PR04MB6061.namprd04.prod.outlook.com>
References: <20190813154747.24256-1-hch@lst.de>
 <20190813154747.24256-16-hch@lst.de>
 <3BF39A0F-558D-40E0-880D-27829486F9F0@sifive.com>
 <4f1677e24a5fcdfd2fda714cdd66f4dbe7817284.camel@wdc.com>
 <F4C28F0F-7385-432E-A766-64A3F8B8C381@sifive.com>
In-Reply-To: <F4C28F0F-7385-432E-A766-64A3F8B8C381@sifive.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Anup.Patel@wdc.com; 
x-originating-ip: [49.207.51.252]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: dd8b26e3-beb0-46b8-357c-08d7268b98b4
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(7168020)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:MN2PR04MB6158; 
x-ms-traffictypediagnostic: MN2PR04MB6158:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR04MB6158F890EA7CB757D22469DF8DAA0@MN2PR04MB6158.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 0136C1DDA4
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(376002)(366004)(396003)(39850400004)(136003)(346002)(13464003)(189003)(199004)(14454004)(74316002)(9686003)(54906003)(6636002)(3846002)(478600001)(6116002)(486006)(229853002)(86362001)(14444005)(5660300002)(102836004)(446003)(186003)(66446008)(55236004)(6506007)(11346002)(26005)(53546011)(256004)(6436002)(110136005)(33656002)(64756008)(4326008)(53936002)(55016002)(52536014)(476003)(66066001)(2906002)(81156014)(81166006)(25786009)(8676002)(7736002)(76116006)(8936002)(66946007)(71200400001)(71190400001)(66556008)(66476007)(316002)(7696005)(99286004)(305945005)(6246003)(76176011);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB6158;
 H:MN2PR04MB6061.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: y+cXakNt2FQFz2rrNsLUJ3sg4p5dF6p9DSp9OjJlhwCgAikzKY91/AQKGwI0BsYg4N1b5BoHtBQb/7DPXIPgEKtpj1AOVqp0aN5iYefWQFdnSLUdJ+2loMfOYMB6Ze3A+y6h0BM9cBHFpu7TWgJUyci8XJ69U8h6wH4VbBfqDwevfvd0/N/VkyY7uCCQvJyBvKUgYvzWE6rX5P5maHyTCgAwCIGl7jhU9Slwl1bUH5UVzlOOEp0KEQlGumJ0N51eKylP/WSfZDoqtBPFL2Cr/jDeztoPG8gXrbP/hPxVTd6xVkQIOV19S8lVTiJxPDD4NnMofJmqGHZemMYr18wlwkTqvhfsRYFYksG5DvU6Txru/r14mGmxAyIqzdS8nF9BcERmRuR+6XjnmJQatyQuukFNm532aMFg1qk0aaFl2Xc=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dd8b26e3-beb0-46b8-357c-08d7268b98b4
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Aug 2019 23:02:09.9371 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: huOR65H5dpC9hOwBKiBzDl96wSr4IBDikIZu+R82eAB/Fkwe7C5cTMC8dVxsRo0Od6HzXRLcObbhz95VXqp90A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB6158
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_160218_864976_262D542D 
X-CRM114-Status: GOOD (  28.93  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.144 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Damien Le Moal <Damien.LeMoal@wdc.com>,
 "palmer@sifive.com" <palmer@sifive.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "hch@lst.de" <hch@lst.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogbGludXgta2VybmVsLW93
bmVyQHZnZXIua2VybmVsLm9yZyA8bGludXgta2VybmVsLQ0KPiBvd25lckB2Z2VyLmtlcm5lbC5v
cmc+IE9uIEJlaGFsZiBPZiBUcm95IEJlbmplZ2VyZGVzDQo+IFNlbnQ6IFdlZG5lc2RheSwgQXVn
dXN0IDIxLCAyMDE5IDExOjI1IFBNDQo+IFRvOiBBdGlzaCBQYXRyYSA8QXRpc2guUGF0cmFAd2Rj
LmNvbT4NCj4gQ2M6IGhjaEBsc3QuZGU7IHBhdWwud2FsbXNsZXlAc2lmaXZlLmNvbTsgbGludXgt
cmlzY3ZAbGlzdHMuaW5mcmFkZWFkLm9yZzsNCj4gRGFtaWVuIExlIE1vYWwgPERhbWllbi5MZU1v
YWxAd2RjLmNvbT47IGxpbnV4LQ0KPiBrZXJuZWxAdmdlci5rZXJuZWwub3JnOyBwYWxtZXJAc2lm
aXZlLmNvbQ0KPiBTdWJqZWN0OiBSZTogW1BBVENIIDE1LzE1XSByaXNjdjogZGlzYWJsZSB0aGUg
RUZJIFBFQ09GRiBoZWFkZXIgZm9yIE0tbW9kZQ0KPiANCj4gDQo+IA0KPiA+IE9uIEF1ZyAyMSwg
MjAxOSwgYXQgMTA6MzEgQU0sIEF0aXNoIFBhdHJhIDxBdGlzaC5QYXRyYUB3ZGMuY29tPiB3cm90
ZToNCj4gPg0KPiA+IE9uIFR1ZSwgMjAxOS0wOC0yMCBhdCAyMToxNCAtMDcwMCwgVHJveSBCZW5q
ZWdlcmRlcyB3cm90ZToNCj4gPj4+IE9uIEF1ZyAxMywgMjAxOSwgYXQgODo0NyBBTSwgQ2hyaXN0
b3BoIEhlbGx3aWcgPGhjaEBsc3QuZGU+IHdyb3RlOg0KPiA+Pj4NCj4gPj4+IE5vIHBvaW50IGlu
IGJsb2F0aW5nIHRoZSBrZXJuZWwgaW1hZ2Ugd2l0aCBhIGJvb3Rsb2FkZXIgaGVhZGVyIGlmIHdl
DQo+ID4+PiBydW4gYmFyZSBtZXRhbC4NCj4gPj4NCj4gPj4gSSB3b3VsZCBzYXkgdGhlIHNhbWUg
Zm9yIFMtbW9kZS4gRUZJIGJvb3Rpbmcgc2hvdWxkIGJlIGFuIG9wdGlvbiwgbm90DQo+ID4+IGEg
cmVxdWlyZW1lbnQuDQo+ID4NCj4gPiBFRkkgYm9vdGluZyBpcyBuZXZlciBhIHJlcXVpcmVtZW50
IG9uIGFueSBib2FyZC4gV2hlbiBFRkkgc3R1YiB3aWxsIGJlDQo+ID4gYWRkZWQgZm9yIGtlcm5l
bCwgaXQgd2lsbCBiZSBlbmFibGVkIHdpdGggQ09ORklHX0VGSV9TVFVCIG9ubHkuDQo+ID4NCj4g
PiBUaGUgY3VycmVudCBhZGRpdGlvbmFsIGhlYWRlciBpcyBvbmx5IDY0IGJ5dGVzIGFuZCBhbHNv
IHJlcXVpcmVkIGZvcg0KPiA+IGJvb3RpIGluIFUtYm9vdC4gU28gaXQgc2hvdWxkbid0IGRpc2Fi
bGVkIGZvciBTLW1vZGUuDQo+ID4NCj4gPiBEaXNhYmxpbmcgaXQgZm9yIE0tTW9kZSBMaW51eCBp
cyBva2F5IGJlY2F1c2Ugb2YgbWVtb3J5IGNvbnN0cmFpbnQgYW5kDQo+ID4gTS1Nb2RlIGxpbnV4
IHdvbid0IHVzZSBVLWJvb3QgYW55d2F5cy4NCj4gPg0KPiA+PiBJIGhhdmUgTS1tb2RlIFUtYm9v
dCB3b3JraW5nIHdpdGggYm9vdGVsZiB0byBzdGFydCBCQkwsIGFuZCBhdCBzb21lDQo+ID4+IHBv
aW50LCBJ4oCZbSBob3Bpbmcgd2UgY2FuIGhhdmUgYSBNLW1vZGUgbGludXgga2VybmVsIGJlIHRo
ZSBTQkkNCj4gPj4gcHJvdmlkZXIgZm9yIFMtbW9kZSBrZXJuZWxzLA0KPiA+DQo+ID4gV2h5IGRv
IHlvdSB3YW50IGJsb2F0IGEgTS1Nb2RlIHNvZnR3YXJlIHdpdGggTGludXgganVzdCBmb3IgU0JJ
DQo+ID4gaW1wbGVtZW50YXRpb24/DQo+ID4NCj4gPiBVc2luZyBMaW51eCBhcyBhIGxhc3Qgc3Rh
Z2UgYm9vdCBsb2FkZXIgaS5lLiBMaW51eEJvb3QgbWF5IG1ha2Ugc2Vuc2UNCj4gPiB0aG91Z2gu
DQo+ID4NCj4gDQo+IEJvb3QgdGltZSwgYW5kIGVhc2Ugb2YgZGV2ZWxvcG1lbnQsIGFuZCBzaW1w
bGlmaWVkIHN5c3RlbSBtYW5hZ2VtZW50Lg0KPiANCj4gSGF2aW5nIE0tbW9kZSBsaW51eCBhcyBh
IHN1cGVydmlzb3IvYm9vdCBrZXJuZWwgY2FuIGdldCB1cyB0byByZXNwb25kaW5nIHRvDQo+IEhU
VFBTL1NTSC9ldGMgcmVxdWVzdHMgd2l0aGluIHNlY29uZHMgb2YgcG93ZXItb24sIHdoaWxlIHRo
ZSDigJhib2904oCZDQo+IGtlcm5lbCBjYW4gYmUgbG9hZGluZyBndWVzdCBTLW1vZGUga2VybmVs
cyBmcm9tIHRoaW5ncyBsaWtlIE5WTUUgZmxhc2gNCj4gZHJpdmVzIHRoYXQgYXJlIGdvaW5nIHRv
IGJlIGEgbG90IG1vcmUgY29kZSBhbmQgZGV2ZWxvcG1lbnQgdG8gc3VwcG9ydCBpbiBVLQ0KPiBi
b290IG9yIGFueSBvdGhlciBub24tbGludXggZGVkaWNhdGVkIGJvb3QgbG9hZGVyLg0KDQpJIGRv
bid0IHNlZSB3aHkgdGhlc2UgdGhpbmdzIGNhbm5vdCBiZSBhY2hpZXZlZCBpbiBleGlzdGluZyBv
cGVuLXNvdXJjZQ0KYm9vdGxvYWRlcnMuIEluIGZhY3QsIFUtYm9vdCBhbHJlYWR5IGhhcyAiRmFs
Y29uIiBtb2RlIGZvciBmYXN0IGJvb3RpbmcuDQoNCj4gDQo+IFRoZXJl4oCZcyBhbHNvIGEgdmVy
eSBzdHJvbmcgc2VjdXJpdHkgYXJndW1lbnQsIGFzIExpbnV4IGlzIGdvaW5nIHRvIGdldCB0aGUN
Cj4gbGFyZ2VzdCBhbmQgYnJvYWRlc3Qgc2VjdXJpdHkgcmV2aWV3LCBhbmQgd2lsbCBsaWtlbHkg
Z2V0IHNvZnR3YXJlIHVwZGF0ZXMgYQ0KPiBsb3QgZmFzdGVyIHRoYW4gZGVkaWNhdGVkIGJvb3Qg
ZmlybXdhcmVzIHdpbGwuDQoNCkZvciBzZWN1cml0eSwgd2UgaGF2ZSB0byBnZXQgU1cgY2VydGlm
aWVkIHdpdGggdmFyaW91cyBzb21ldGhpbmcgbGlrZSBJU08yNjI2DQpzdGFuZGFyZC4gVGhpcyBp
cyB2ZXJ5IGNvbW1vbiBwcmFjdGljZSBpbiBBdXRvbW90aXZlIGluZHVzdHJ5LiBUbyBhY2hpZXZl
IHN1Y2gNCmEgY2VydGlmaWNhdGlvbiBmb3IgYW55IFNXLCB0aGUgc2l6ZSBvZiBjb2RlIGJhc2Ug
aXMgdmVyeSB2ZXJ5IGltcG9ydGFudC4NCg0KRHVlIHRvIHRoaXMgcmVhc29uLCBldmVuIHRvZGF5
IExpbnV4IChhbmQgb3RoZXIgYmlnIG9wZW4tc291cmNlIHByb2plY3QpDQphcmUgdmVyeSBkaWZm
aWN1bHQgdG8gYmUgc2VjdXJpdHkgY2VydGlmaWVkLg0KDQo+IA0KPiBBbm90aGVyIHJlYXNvbiB3
b3VsZCBiZSBzaGFyaW5nIHRoZSBzYW1lIGtlcm5lbCBiaW5hcnkgKGVsZiBmaWxlKSBmb3IgYm90
aA0KPiBNLW1vZGUsIGFuZCBTLW1vZGUsIGFuZCB1c2luZyB0aGUgZGV2aWNlIHRyZWUgcGFzc2Vk
IHRvIGVhY2ggdG8gc3BlY2lmeQ0KPiB3aGljaCBtb2RlIGl0IHNob3VsZCBiZSBydW5uaW5nIGl0
LiBUaGVyZSBhcmUgcHJvYmFibHkgYSBidW5jaCBvZiBnb3RjaGFzDQo+IHdpdGggdGhpcyBpZGVh
LCBhbmQgZXZlbiBzbyBJIHN1c3BlY3Qgc29tZW9uZSB3aWxsIGRlY2lkZSB0byBnbyBhaGVhZCBh
bmQNCj4ganVzdCBkbyBpdCBldmVudHVhbGx5IGJlY2F1c2UgaXQgY291bGQgbWFrZSB0ZXN0aW5n
LCB2YWxpZGF0aW9uLCBhbmQgc2VjdXJpdHkNCj4gdXBkYXRlcyBhIGxvdCBlYXNpZXIgZnJvbSBh
biBvcGVyYXRpb25hbC9kZXBsb3ltZW50IHBvaW50IG9mIHZpZXcuDQo+IA0KPiBMaW51eGJpb3Mg
Y29udmluY2VkIG1lIHRoYXQgaWYgeW91IHdhbnQgdG8gZG8gYSByZWFsbHkgbGFyZ2UgY2x1c3Rl
ciwgeW91IGNhbg0KPiBidWlsZCwgbWFuYWdlLCBhbmQgcnVuIHN1Y2ggYSB0aGluZyB3aXRoIGZl
d2VyIHBlb3BsZSBhbmQgZW5naW5lZXJpbmcgY29zdA0KPiB0aGFuIGlmIHlvdSBoYXZlIGFsbCB0
aGVzZSBleHRyYSBsYXllcnMgb2YgYm9vdCBmaXJtd2FyZSB0aGF0IHJlcXVpcmUgc29tZQ0KPiBj
b21wYW55IHRvIGhhdmUgZmlybXdhcmUgZW5naW5lZXJzIGFuZCBsb3RzIG9mIGV4dHJhIHN5c3Rl
bSB0ZXN0aW5nIG9uIHRoZQ0KPiBmaXJtd2FyZS4NCg0KSSBkb24ndCBieSB0aGlzIGxhc3QgYXJn
dW1lbnQuIFRoZXNlIGRheXMgaXQncyBqdXN0IHZlcnkgZmV3IGZvbGtzIGRvaW5nIGZpcm13YXJl
LA0KYm9vdGxvYWRlciwgYW5kIExpbnV4IHBvcnRpbmcgZm9yIGFueSBuZXcgU09DIChhbnkgYXJj
aGl0ZWN0dXJlKS4gTW9zdCBvZg0KdGhlIHRoaW5ncyBhcmUgYWxyZWFkeSB0aGVyZSBpbiB2YXJp
b3VzIG9wZW4tc291cmNlIHByb2plY3Qgc28gc2FtZSBwZXJzb24NCmNhbiBlYXNpbHkgY29udHJp
YnV0ZSB0byB2YXJpb3VzIHByb2plY3RzLg0KDQpSZWdhcmRzLA0KQW51cA0KX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtcmlzY3YgbWFpbGluZyBs
aXN0CmxpbnV4LXJpc2N2QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yaXNjdgo=
