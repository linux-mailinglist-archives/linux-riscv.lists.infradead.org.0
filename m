Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DD2B1840AF
	for <lists+linux-riscv@lfdr.de>; Fri, 13 Mar 2020 06:52:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-ID:Content-Type:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=qOLDpU4FtHQBxjf0+5i/5jGDoBMD5vi3Fm9uKfGtTC4=; b=YUrcQXNt2p6RFt4GGXqMenY8S
	i81apev49I50XSJhIDFBD0/nmFhxfJn+7efzkHvhdIfEI0TJk2AWEBG7QIDXORdjYEbJHz2YMqqRc
	yC09GmVz9fbrOCqEHUSOsF5mku2d9leSiGT3cLAa4HpAlRujQp8aWXv6+2bJwJbrD6qp4FXWbPbJy
	RcVax6R6OnwhnYsdCEIS1iMyjAV6wnDNx+udeG2gQiQuahGCjK0jQzndBgRUX7F+5J9A0EVL5/KA7
	iGPdHcfnOIAVwgAWBEOQHw6Zy2RdV+d0ZlgqAOrsup4ycFEfYMctz/OjL+IhPuEw5NyaoaIDOha3Y
	up1oKJWWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCdFa-0006Dl-7p; Fri, 13 Mar 2020 05:52:50 +0000
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCdFV-0006AU-G2
 for linux-riscv@lists.infradead.org; Fri, 13 Mar 2020 05:52:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1584078765; x=1615614765;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=qOLDpU4FtHQBxjf0+5i/5jGDoBMD5vi3Fm9uKfGtTC4=;
 b=QSbSlFz3o6rDvlI0MljN42/wDzDtKKV9RmSuNZ+u6f6vEV5zJo6HmG/k
 sNm7ItkRO9vuln8OrnSv/NLrZWmfsXpF3PXiDFdb9M60WlqwpO9nOhjI4
 Zle5gU8/qwUZeXQu3IwWGvGvDpRltxE5Pb6hTZe/so5hIuw0gOylo29Ms
 ksTLZD5h7cIzCvE5JRz29VkEYDrB+YwF+gdMedCEjW5cueitFNH4+1UrU
 qQ9RwEa9gKGNbCnBhUO2GUUS7kHH4IEUipecR5upT0tb9kr2iBQQzvwme
 SKBBkBPJgjZnpE90qtE0qskkRMt47vMbGtL1jjonmNHFsnJZd83EseDOJ w==;
IronPort-SDR: c9WDFZNVb5TwUegInISqvQHMkwJ/y1TCdX0EAFq9sUWlmQu1/JFnaaql/aDRk7cn4dwjlTruUP
 5N/3xEiflJcn5SWXO7yqXj3GVHywDKq+w1jJeCCoFHGcfLtKZaAjEyDa5Os/i5o7j2nFmRpF2f
 Ib0aT5SuGMPtyLN5aFalDdoOQ9Um+W0HiDpr8yZ//aDVr6rB6e4+ScD2ksrmo9ItpX9eWbq/yd
 f7sicld7igUZKOaIQ4qYiArA7aufUqfooj3q0meVAqbUEiN+OIbSacB7KYYsd0EmMmkcNDOry7
 wj4=
X-IronPort-AV: E=Sophos;i="5.70,547,1574092800"; d="scan'208";a="240653170"
Received: from mail-dm6nam11lp2171.outbound.protection.outlook.com (HELO
 NAM11-DM6-obe.outbound.protection.outlook.com) ([104.47.57.171])
 by ob1.hgst.iphmx.com with ESMTP; 13 Mar 2020 13:52:44 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jmLaVlY7UNM9Veu17kDOYildotEj4T6+4S3wXhjcZttaBamb52Z3Kzj3denbmaS1vwLQ92XZJv5g4slsHjQ0fGZRx1aDJcPrTz3IwLW0AyqGQbtOjEb0QfpT1WW+8rPqLNHK29GfS42gsUdEbFnx1aluveG2MrePKTbSXaNBJl3HQJPDUtzdU/ZWy2ZkezM2yvGVQWt2hl8Lw6krAbZ20OzNewYYX6TxxN67bFQshfFrPUoWgcCvUL8SlSmBvFYi/7tSISBx0IlhpOtQI/YTT8iugr279Rmcsrq3b+NQYNsLL20fYMFnG/O8Xw3PIJsWikDWQkCk1r/sn2HvX9suyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qOLDpU4FtHQBxjf0+5i/5jGDoBMD5vi3Fm9uKfGtTC4=;
 b=iI7rBsllJj1+pxpLqdcxFZ8VqTkZqtV8mKAg7NAqSoEQwknBqReKO7IZA+vAarr/T62vB+zLN+/yYQp2ZrAbj5TtVbs0w5H3CcpYs5+kO2ar4YUPANcDuasJnMSx576AxqVC0NGzVMs4FQWncF56sqzTxSHy/xT/0l5pm5iF5o5hv8TJEWj08Q0TcN/MK/i7rT3IOAlaPvxqwLemjL6sOI3vogoOLMxYm1eLvrHjqyVVJrM1h0t+QcOcUaVD/46NrXrGG4ea3u8FSbTmpwuiFs+Py8RcHIByUMAkln+5O9AgDAPqTp4epkGclJPsCaC9U+eKRUea6WpJ6vykFJIUBQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qOLDpU4FtHQBxjf0+5i/5jGDoBMD5vi3Fm9uKfGtTC4=;
 b=Vsas+T3fS4KnhAIJac01kycTrdz7h1hYTtRR5U91g9kYVdrCJqprb4jjaVh4cc62skEOwkMuHN57uUshDjG5pLaZxt7Jx8wDoGAWMqQX46lxk5T73JkxNPOBGBgo4rsQSMtp5fE5prfmTJRi8dchpBg5Q1zvuosyrqezbbD+uv8=
Received: from CO2PR04MB2343.namprd04.prod.outlook.com (2603:10b6:102:12::9)
 by CO2PR04MB2216.namprd04.prod.outlook.com (2603:10b6:102:d::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2814.18; Fri, 13 Mar
 2020 05:52:43 +0000
Received: from CO2PR04MB2343.namprd04.prod.outlook.com
 ([fe80::c1a:6c0f:8207:580b]) by CO2PR04MB2343.namprd04.prod.outlook.com
 ([fe80::c1a:6c0f:8207:580b%7]) with mapi id 15.20.2814.007; Fri, 13 Mar 2020
 05:52:43 +0000
From: Damien Le Moal <Damien.LeMoal@wdc.com>
To: "atishp@atishpatra.org" <atishp@atishpatra.org>
Subject: Re: [PATCH v2 7/9] riscv: Kendryte K210 default config
Thread-Topic: [PATCH v2 7/9] riscv: Kendryte K210 default config
Thread-Index: AQHV+KD2WJHquimP4U6p10GnSjyNu6hGBfYA
Date: Fri, 13 Mar 2020 05:52:43 +0000
Message-ID: <35457143bfab033d5807d0c189ff64404e9a99bf.camel@wdc.com>
References: <20200312051107.1454880-1-damien.lemoal@wdc.com>
 <20200312051107.1454880-8-damien.lemoal@wdc.com>
 <CAOnJCUKqfQ7qvWUpEsPWPH9ViXD6xrNpR2Gq9=0idPoWwvGx7Q@mail.gmail.com>
In-Reply-To: <CAOnJCUKqfQ7qvWUpEsPWPH9ViXD6xrNpR2Gq9=0idPoWwvGx7Q@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.34.4 (3.34.4-1.fc31) 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Damien.LeMoal@wdc.com; 
x-originating-ip: [199.255.47.11]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: f5953a5b-4f17-4526-0ea3-08d7c712bfe0
x-ms-traffictypediagnostic: CO2PR04MB2216:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CO2PR04MB221685832A3428DC1FAFA9B2E7FA0@CO2PR04MB2216.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 034119E4F6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(346002)(136003)(39860400002)(376002)(366004)(396003)(199004)(8936002)(8676002)(4326008)(36756003)(316002)(6486002)(81166006)(81156014)(54906003)(2616005)(53546011)(478600001)(2906002)(5660300002)(6916009)(6512007)(76116006)(91956017)(186003)(71200400001)(66446008)(64756008)(66556008)(66946007)(86362001)(66476007)(26005)(6506007);
 DIR:OUT; SFP:1102; SCL:1; SRVR:CO2PR04MB2216;
 H:CO2PR04MB2343.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: JiBSrDPN4IfftQ11d+2ceJJ5px8rx0rnGD9Lyqxqn5n+RjqVBCuco8gmKg1G0HBQWm6Oq0JDervKW2acSaTJliil2DLnodIvw2MEtO/dhbyoNI0SE7EzTjcng8ylSx+MtCESA08YWYrPpRo392WHL7sjfqbj+kkBhT1FuTmrcx1skr/+ZdyvOJnbMqsm23ahjaBn60AgwEdhDmt8RO3fTwC7OQMmjUdoh4FVskzbrlTKAcKKeQuKw8yKfZ2nA5ST5agh1YYcENZZ2ZQXQwj2YOEqs2XN6AoKJATuKExjTcLpoUZINGwHTEkVrH8q3zQgF13nQAzVtR8xo2iTba0gLSz3Dy6qDjh1eC1YDvuvidSBvsy+0ZUINtdEr9Hiw6T4QbR/M86fuRgeUMM8iIMCBVwkVbqJNfbRAZ12g49uD3V1gIXKTPSMt/vjrm9x13hT
x-ms-exchange-antispam-messagedata: Nw2csZKrLzNHl5L5GtMCTvFvPlf3G0duxvgRHB5OJ11zmMtQPmqdHyZttF/iaphLyGFom2HGQJn9mrLd3FMPvKBBWTMMHlD9NQ+U+IjuJfiy5FORkGaU3Qi7CRFk7BS+9rYBSh2xjRW3HYhKTzJT+g==
Content-Type: text/plain; charset="utf-8"
Content-ID: <EDCA838906BEE54EBC2E33B32922A58F@namprd04.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f5953a5b-4f17-4526-0ea3-08d7c712bfe0
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Mar 2020 05:52:43.6636 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: KAMl41P1GvDVNWgk/SGEytfSXaGiw1NSMs8IWc3Tg9+uf5DXNVTtr4CYTiFGvk6Gxrllz7fPwqFhc/KMUP9zQA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO2PR04MB2216
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_225245_622143_8840A795 
X-CRM114-Status: GOOD (  20.88  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.141.245 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 Anup Patel <Anup.Patel@wdc.com>, "palmer@dabbelt.com" <palmer@dabbelt.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

T24gVGh1LCAyMDIwLTAzLTEyIGF0IDEyOjAzIC0wNzAwLCBBdGlzaCBQYXRyYSB3cm90ZToNCj4g
T24gV2VkLCBNYXIgMTEsIDIwMjAgYXQgMTA6MTEgUE0gRGFtaWVuIExlIE1vYWwgPGRhbWllbi5s
ZW1vYWxAd2RjLmNvbT4gd3JvdGU6DQo+ID4gVGhpcyBwYXRjaCBhZGRzIGEgZGVmY29uZmlnIGZp
bGUgdG8gYnVpbGQgTm8tTU1VIGtlcm5lbHMgbWVhbnQgZm9yDQo+ID4gYm9hcmRzIGJhc2VkIG9u
IHRoZSBLZW5kcnl0ZSBLMjEwIFNvQy4NCj4gPiANCj4gPiBTaWduZWQtb2ZmLWJ5OiBEYW1pZW4g
TGUgTW9hbCA8ZGFtaWVuLmxlbW9hbEB3ZGMuY29tPg0KPiA+IFJldmlld2VkLWJ5OiBBbnVwIFBh
dGVsIDxhbnVwQGJyYWluZmF1bHQub3JnPg0KPiA+IFJldmlld2VkLWJ5OiBQYWxtZXIgRGFiYmVs
dCA8cGFsbWVyZGFiYmVsdEBnb29nbGUuY29tPg0KPiA+IC0tLQ0KPiA+ICBhcmNoL3Jpc2N2L2Nv
bmZpZ3Mvbm9tbXVfazIxMF9kZWZjb25maWcgfCA2OCArKysrKysrKysrKysrKysrKysrKysrKysr
DQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCA2OCBpbnNlcnRpb25zKCspDQo+ID4gIGNyZWF0ZSBtb2Rl
IDEwMDY0NCBhcmNoL3Jpc2N2L2NvbmZpZ3Mvbm9tbXVfazIxMF9kZWZjb25maWcNCj4gPiANCj4g
PiBkaWZmIC0tZ2l0IGEvYXJjaC9yaXNjdi9jb25maWdzL25vbW11X2syMTBfZGVmY29uZmlnIGIv
YXJjaC9yaXNjdi9jb25maWdzL25vbW11X2syMTBfZGVmY29uZmlnDQo+ID4gbmV3IGZpbGUgbW9k
ZSAxMDA2NDQNCj4gPiBpbmRleCAwMDAwMDAwMDAwMDAuLjAwZGVkOGYwYmM1NQ0KPiA+IC0tLSAv
ZGV2L251bGwNCj4gPiArKysgYi9hcmNoL3Jpc2N2L2NvbmZpZ3Mvbm9tbXVfazIxMF9kZWZjb25m
aWcNCj4gPiBAQCAtMCwwICsxLDY4IEBADQo+ID4gKyMgQ09ORklHX0NQVV9JU09MQVRJT04gaXMg
bm90IHNldA0KPiA+ICtDT05GSUdfTE9HX0JVRl9TSElGVD0xNQ0KPiA+ICtDT05GSUdfUFJJTlRL
X1NBRkVfTE9HX0JVRl9TSElGVD0xMg0KPiA+ICtDT05GSUdfQkxLX0RFVl9JTklUUkQ9eQ0KPiA+
ICtDT05GSUdfSU5JVFJBTUZTX1NPVVJDRT0iazIxMC5jcGlvIg0KPiANCj4gSSBkb24ndCB0aGlu
ayBpdCBpcyBhIGNvbW1vbiBwcmFjdGljZSB0byBwcm92aWRlIGEgZGVmYXVsdCByb290ZnMgZmls
ZQ0KPiBpbiBkZWZjb25maWcgaWYgaXQgaXMgbm90DQo+IHBhcnQgb2YgdGhlIGtlcm5lbC4gSSBt
YXkgYmUgd3JvbmcgYnV0IEkgaGF2ZSBub3Qgc2VlbiBhbiBleGFtcGxlIGJlZm9yZS4NCj4gSXQg
aXMgZXhwZWN0ZWQgdGhhdCBkZXZlbG9wZXJzIHdpbGwgZ2VuZXJhdGUgdGhlaXIgb3duIHJvb3Rm
cyBhbmQNCj4gbW9kaWZ5IGl0IGhlcmUuDQo+IA0KPiBJdCBtYXkgYWxzbyByYWlzZSBjb21waWxl
ciBlcnJvcnMgZm9yIGF1dG8gYnVpbGRlcnMgaW4gYWJzZW5jZSBvZiBrMjEwLmNwaW8uDQoNCkdv
b2QgcG9pbnQuIFdpbGwgcmVtb3ZlIGl0Lg0KDQo+IA0KPiA+ICtDT05GSUdfSU5JVFJBTUZTX0ZP
UkNFPXkNCj4gPiArIyBDT05GSUdfUkRfQlpJUDIgaXMgbm90IHNldA0KPiA+ICsjIENPTkZJR19S
RF9MWk1BIGlzIG5vdCBzZXQNCj4gPiArIyBDT05GSUdfUkRfWFogaXMgbm90IHNldA0KPiA+ICsj
IENPTkZJR19SRF9MWk8gaXMgbm90IHNldA0KPiA+ICsjIENPTkZJR19SRF9MWjQgaXMgbm90IHNl
dA0KPiA+ICsjIENPTkZJR19CT09UX0NPTkZJRyBpcyBub3Qgc2V0DQo+ID4gK0NPTkZJR19DQ19P
UFRJTUlaRV9GT1JfU0laRT15DQo+ID4gKyMgQ09ORklHX1NZU0ZTX1NZU0NBTEwgaXMgbm90IHNl
dA0KPiA+ICsjIENPTkZJR19GSEFORExFIGlzIG5vdCBzZXQNCj4gPiArIyBDT05GSUdfQkFTRV9G
VUxMIGlzIG5vdCBzZXQNCj4gPiArIyBDT05GSUdfRVBPTEwgaXMgbm90IHNldA0KPiA+ICsjIENP
TkZJR19TSUdOQUxGRCBpcyBub3Qgc2V0DQo+ID4gKyMgQ09ORklHX1RJTUVSRkQgaXMgbm90IHNl
dA0KPiA+ICsjIENPTkZJR19FVkVOVEZEIGlzIG5vdCBzZXQNCj4gPiArIyBDT05GSUdfQUlPIGlz
IG5vdCBzZXQNCj4gPiArIyBDT05GSUdfSU9fVVJJTkcgaXMgbm90IHNldA0KPiA+ICsjIENPTkZJ
R19BRFZJU0VfU1lTQ0FMTFMgaXMgbm90IHNldA0KPiA+ICsjIENPTkZJR19NRU1CQVJSSUVSIGlz
IG5vdCBzZXQNCj4gPiArIyBDT05GSUdfS0FMTFNZTVMgaXMgbm90IHNldA0KPiA+ICtDT05GSUdf
RU1CRURERUQ9eQ0KPiA+ICsjIENPTkZJR19WTV9FVkVOVF9DT1VOVEVSUyBpcyBub3Qgc2V0DQo+
ID4gKyMgQ09ORklHX0NPTVBBVF9CUksgaXMgbm90IHNldA0KPiA+ICtDT05GSUdfU0xPQj15DQo+
ID4gKyMgQ09ORklHX1NMQUJfTUVSR0VfREVGQVVMVCBpcyBub3Qgc2V0DQo+ID4gKyMgQ09ORklH
X01NVSBpcyBub3Qgc2V0DQo+ID4gK0NPTkZJR19TT0NfS0VORFJZVEU9eQ0KPiA+ICtDT05GSUdf
TUFYUEhZU01FTV8yR0I9eQ0KPiA+ICtDT05GSUdfU01QPXkNCj4gPiArQ09ORklHX05SX0NQVVM9
Mg0KPiA+ICtDT05GSUdfQ01ETElORT0iZWFybHljb24gY29uc29sZT10dHlTSUYwIg0KPiA+ICtD
T05GSUdfQ01ETElORV9GT1JDRT15DQo+ID4gK0NPTkZJR19VU0VfQlVJTFRJTl9EVEI9eQ0KPiA+
ICtDT05GSUdfQlVJTFRJTl9EVEJfU09VUkNFPSJrZW5kcnl0ZS9rMjEwIg0KPiA+ICsjIENPTkZJ
R19CTE9DSyBpcyBub3Qgc2V0DQo+ID4gK0NPTkZJR19CSU5GTVRfRkxBVD15DQo+ID4gKyMgQ09O
RklHX0NPUkVEVU1QIGlzIG5vdCBzZXQNCj4gPiArQ09ORklHX0RFVlRNUEZTPXkNCj4gPiArQ09O
RklHX0RFVlRNUEZTX01PVU5UPXkNCj4gPiArIyBDT05GSUdfRldfTE9BREVSIGlzIG5vdCBzZXQN
Cj4gPiArIyBDT05GSUdfQUxMT1dfREVWX0NPUkVEVU1QIGlzIG5vdCBzZXQNCj4gPiArIyBDT05G
SUdfSU5QVVRfS0VZQk9BUkQgaXMgbm90IHNldA0KPiA+ICsjIENPTkZJR19JTlBVVF9NT1VTRSBp
cyBub3Qgc2V0DQo+ID4gKyMgQ09ORklHX1NFUklPIGlzIG5vdCBzZXQNCj4gPiArIyBDT05GSUdf
TEVHQUNZX1BUWVMgaXMgbm90IHNldA0KPiA+ICsjIENPTkZJR19MRElTQ19BVVRPTE9BRCBpcyBu
b3Qgc2V0DQo+ID4gKyMgQ09ORklHX0RFVk1FTSBpcyBub3Qgc2V0DQo+ID4gKyMgQ09ORklHX0hX
X1JBTkRPTSBpcyBub3Qgc2V0DQo+ID4gKyMgQ09ORklHX0hXTU9OIGlzIG5vdCBzZXQNCj4gPiAr
IyBDT05GSUdfVkdBX0NPTlNPTEUgaXMgbm90IHNldA0KPiA+ICsjIENPTkZJR19ISUQgaXMgbm90
IHNldA0KPiA+ICsjIENPTkZJR19VU0JfU1VQUE9SVCBpcyBub3Qgc2V0DQo+ID4gKyMgQ09ORklH
X1ZJUlRJT19NRU5VIGlzIG5vdCBzZXQNCj4gPiArIyBDT05GSUdfRE5PVElGWSBpcyBub3Qgc2V0
DQo+ID4gKyMgQ09ORklHX0lOT1RJRllfVVNFUiBpcyBub3Qgc2V0DQo+ID4gKyMgQ09ORklHX01J
U0NfRklMRVNZU1RFTVMgaXMgbm90IHNldA0KPiA+ICtDT05GSUdfTFNNPSJbXSINCj4gPiArQ09O
RklHX1BSSU5US19USU1FPXkNCj4gPiArIyBDT05GSUdfREVCVUdfTUlTQyBpcyBub3Qgc2V0DQo+
ID4gKyMgQ09ORklHX1NDSEVEX0RFQlVHIGlzIG5vdCBzZXQNCj4gPiArIyBDT05GSUdfUkNVX1RS
QUNFIGlzIG5vdCBzZXQNCj4gPiArIyBDT05GSUdfRlRSQUNFIGlzIG5vdCBzZXQNCj4gPiArIyBD
T05GSUdfUlVOVElNRV9URVNUSU5HX01FTlUgaXMgbm90IHNldA0KPiA+IC0tDQo+ID4gMi4yNC4x
DQo+ID4gDQo+ID4gDQo+IA0KPiANCg0KLS0gDQpEYW1pZW4gTGUgTW9hbA0KV2VzdGVybiBEaWdp
dGFsIFJlc2VhcmNoDQo=

