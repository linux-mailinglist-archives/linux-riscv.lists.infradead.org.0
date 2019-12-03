Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3109E110543
	for <lists+linux-riscv@lfdr.de>; Tue,  3 Dec 2019 20:34:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-ID:Content-Type:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/V74DBXxNPcjqx21Xsruc3vJQzwVvpucA1tBMGK50J0=; b=pS2T/5RRvKDsisQEAwOHS+0Y6
	hATe1YTSps33jE5mLqDv7cb0BOCHcSzyN/3qubYHdbG/xTLllJCDGk4ZfaHBYhmjZH7nMOAiuQPJB
	/eN6WmsWGSe4tbCqeCrLNJdj4gpHIi1ZdWr6zrMx58oJahWkVIHGcU8MOGTc+WM+kzN/27Bz38KfB
	tXyy/E3ZX5aClO4JczjucyYDXPBYYjBT9MokhUTslrjQ9kPKDkZ+KRt8hCctmHC8I31E+bC5nLKMm
	7nhfxCXAKB8CeqsfFbeCwxuvToPfXXbDmevO91IMVGhK7YA3WvpIhCb4/ySFeDoCe7ESR28hXGT+C
	aScPPf50g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icDwa-0003Bt-NT; Tue, 03 Dec 2019 19:34:44 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icDwU-00039H-Cz
 for linux-riscv@lists.infradead.org; Tue, 03 Dec 2019 19:34:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1575401678; x=1606937678;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=/V74DBXxNPcjqx21Xsruc3vJQzwVvpucA1tBMGK50J0=;
 b=jh1R/gpkH4HOOTE3Rp3IP11MEwxaodMy8gb5EoeSJqYcRCZoM8mclRoT
 kahQyZ3ctXJmJyTudM6TLJkvdfthWHM/WYGZfoltpkmmWQy7K/vcUYln7
 W6aaZoCBQwmcCmOPE4D8OT1a43WL8Q0zTbrmUhxL7/aG4T0V8iZX47yD+
 xH48kwXhfmckdHukmCo7IiBb3pplcOoRH0hobMBe1zR1556ePSfpWrgpB
 QEI0JKJS4jXF1eEn7VbyUHOXfs/dnukSeAeNdrgIF6iLMnqwyCDAs88Oe
 WbvqwFjKr3rynklZB+nVUaWivvs+FqBIcaeLlSs65H4XvMfoFUHLbY231 Q==;
IronPort-SDR: F+OSeCoyEdsN8ysDHQciqEiN3q7umv8zbfekbj2IrUSD5i+BUlJCK4FiIRGP5PE+TshLalq32h
 j5DRb5hn2CHoPVJnPXLxC5mUIYSvz/FYRBSIWn/QdllrfdEMkXBiGwtErAAjVUmPlwcN0Yg42u
 XY1GOuwk5jS84xuWksPkKSW6zxbeowyhphKADX7eDXr1zcFeqpiDK2aRNyEee3VJWRGDjyUdvR
 6OYpNKfctaMw8s7EaRVPU21WcRc4Uf7I9HbIIkLYxigiv/J6nWmcZyt+zW3pHaI6qukAIMzker
 6q8=
X-IronPort-AV: E=Sophos;i="5.69,274,1571673600"; d="scan'208";a="126140221"
Received: from mail-co1nam03lp2053.outbound.protection.outlook.com (HELO
 NAM03-CO1-obe.outbound.protection.outlook.com) ([104.47.40.53])
 by ob1.hgst.iphmx.com with ESMTP; 04 Dec 2019 03:34:35 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FPg+D+NQGZAjWATrIYzuV445OGnryYKqT8LaeLRWl+D78MTgnp2svFAVso6RT5x7nCHBCJShcXGutZ8jXukmFxsTfBf1Wcj/P9dtHAEUdSIAP4JtTycT+edrxIhELMFR1xqIEPWAxWISh+b9r5WktxwNF2y1UkeiaRj12cAZCX6+U5M1wIsdRxAoc3u1wvCdFJ/88AW5fC5LJDUHBX2MogqJZCjNWdNHp7sHSK351D3kuvVX0C+d6q4WGTB+whzLDNPT1HPhZa9uIko7ftyofq18XLzGKrQ17ej4FSEnxFmVZQ2hbp+Q7ksdWn6Tw9qjTMaI9jTKgpxVkGlGtR/E5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/V74DBXxNPcjqx21Xsruc3vJQzwVvpucA1tBMGK50J0=;
 b=c3J81YUs+DtL34FewaU6FUiPmHgvtq903j23jDnwxzt2EkcaB9I+DkSrXt5yYN81Ee+qB54oMOL3CHd32i/layFzUlm3VpDISNKd4owCGl6aMn83+j8ZomSKPDMdsvHpXBdZyEipgP+VBZ47WNLpLhZXMsGaofxzOfxPSIK3P7KGj4Y7V76j9rUU6xzIE8ZbFWVEvo1LUry2ZHh6vYlqx/U70hnh3UJRsOab2evtF1WoF5otC7AxzPfVeeIKeyFrO55+SkDbwPSAY048dW2nQ1FV1M5xWliQjxjfe5rzvYKtd1TYQZxuRwkMsKuvDnHe0mz2qb+6LI8bvER6wTA9xg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/V74DBXxNPcjqx21Xsruc3vJQzwVvpucA1tBMGK50J0=;
 b=O7q+86X/A+nxSyuvIJYvPG7O/2RpBX3vAtwZyERHV9V8PPEw1p5C0wRyu++7V5Nl6DedVWWArIcXDzkIehdXOQPIweAZtExoXIerfqs7dXCjQr/6NkIpxsTDjUSoBZlt9T/mPclJRlv6Rqp3iqDFZru0SUPh8t9xR87wsKPa8iM=
Received: from BYAPR04MB4901.namprd04.prod.outlook.com (52.135.232.206) by
 BYAPR04MB4951.namprd04.prod.outlook.com (52.135.232.220) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2495.22; Tue, 3 Dec 2019 19:34:34 +0000
Received: from BYAPR04MB4901.namprd04.prod.outlook.com
 ([fe80::112d:6934:52da:df11]) by BYAPR04MB4901.namprd04.prod.outlook.com
 ([fe80::112d:6934:52da:df11%7]) with mapi id 15.20.2495.014; Tue, 3 Dec 2019
 19:34:34 +0000
From: Alistair Francis <Alistair.Francis@wdc.com>
To: "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
 "palmer@dabbelt.com" <palmer@dabbelt.com>, Anup Patel <Anup.Patel@wdc.com>,
 "aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>
Subject: Re: [PATCH v2 3/4] RISC-V: Select SYSCON Reboot and Poweroff for QEMU
 virt machine
Thread-Topic: [PATCH v2 3/4] RISC-V: Select SYSCON Reboot and Poweroff for
 QEMU virt machine
Thread-Index: AQHVqYyvhMa6drjoTECHCLH3XL4QzqeozLuA
Date: Tue, 3 Dec 2019 19:34:34 +0000
Message-ID: <e9cc3936469d6c51a6036c5e87928bc3378cc381.camel@wdc.com>
References: <20191203034909.37385-1-anup.patel@wdc.com>
 <20191203034909.37385-4-anup.patel@wdc.com>
In-Reply-To: <20191203034909.37385-4-anup.patel@wdc.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Alistair.Francis@wdc.com; 
x-originating-ip: [199.255.44.250]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 03f84f1d-3396-4771-6a40-08d77827d3c9
x-ms-traffictypediagnostic: BYAPR04MB4951:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR04MB4951252E12ECB9B612AA322A90420@BYAPR04MB4951.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 02408926C4
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(396003)(39860400002)(376002)(346002)(366004)(136003)(199004)(189003)(8676002)(86362001)(8936002)(6506007)(76176011)(2501003)(81166006)(81156014)(26005)(2616005)(118296001)(229853002)(102836004)(11346002)(36756003)(478600001)(6486002)(446003)(14454004)(316002)(6512007)(66476007)(66946007)(76116006)(2906002)(7736002)(6246003)(54906003)(71200400001)(110136005)(66556008)(6436002)(71190400001)(66446008)(5660300002)(64756008)(2171002)(186003)(6116002)(4326008)(3846002)(25786009)(99286004)(256004)(305945005);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB4951;
 H:BYAPR04MB4901.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: hlfAN1zooOTkziHRqo+qLTTCpVbSXEq+7xwQ745/F5qbUUvyy3s9xeD/8KfxS1IlAEH02bgvLns50B5ugCN22yaVqH64TYadIo9Rb1XGRljhbzV/W+otWEIJwE0jia4H6fCesF3d2fyBKtgi38iHMKwi/VlcShHWpTQJ2V2bnhqutrbH1JlIYufutC+otqcESf6apdoU3XZ/0T8ZhTIyxm6gtfbXiLGNzdM1xx5CUmkvBoGxZ4kcR21c8SIw3AamMI6t4VJSXFut9lA1wsg17C90xT+DtAfyjaCMpFzcZ8oxpzC6ZSHAAjuRg1BrMPqGdCi0crN2Bz/lSTz7RXUix1/xvgkc/F8lQ5EWdj8PacfozWsEd/NFgSFe6zmZIU+QrDhUz0S9NjDTZ8JUvlK06C3bAukSIQx0B/d18sW13tRfQIHvczxuEl8V52jwyArI
Content-Type: text/plain; charset="utf-8"
Content-ID: <51E15D47CFF97F468B738685D63EAA5F@namprd04.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 03f84f1d-3396-4771-6a40-08d77827d3c9
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Dec 2019 19:34:34.6166 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qqAnYAmgmok7cPGe7WQVfMxFTLL1iRZjd7txC2UOahcl5nhtxc22ZCUgCnOqtkoFBm6M/qx+VycLcpf6Pgx4e5MBg27H/Qf/+HyO4ypPcIo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB4951
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_113438_486632_A9E2E635 
X-CRM114-Status: GOOD (  17.54  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.45 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "anup@brainfault.org" <anup@brainfault.org>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "hch@lst.de" <hch@lst.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Atish Patra <Atish.Patra@wdc.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

T24gVHVlLCAyMDE5LTEyLTAzIGF0IDAzOjQ5ICswMDAwLCBBbnVwIFBhdGVsIHdyb3RlOg0KPiBU
aGUgU1lTQ09OIFJlYm9vdCBhbmQgUG93ZXJvZmYgZHJpdmVycyBjYW4gYmUgdXNlZCBvbiBRRU1V
IHZpcnQNCj4gbWFjaGluZQ0KPiB0byByZWJvb3Qgb3IgcG93ZXJvZmYgdGhlIHN5c3RlbSBoZW5j
ZSB3ZSBzZWxlY3QgdGhlc2UgZHJpdmVycyB1c2luZw0KPiBRRU1VIHZpcnQgbWFjaGluZSBrY29u
ZmlnIG9wdGlvbi4NCj4gDQo+IFNpZ25lZC1vZmYtYnk6IEFudXAgUGF0ZWwgPGFudXAucGF0ZWxA
d2RjLmNvbT4NCj4gUmV2aWV3ZWQtYnk6IFBhbG1lciBEYWJiZWx0IDxwYWxtZXJkYWJiZWx0QGdv
b2dsZS5jb20+DQoNClJldmlld2VkLWJ5OiBBbGlzdGFpciBGcmFuY2lzIDxhbGlzdGFpci5mcmFu
Y2lzQHdkYy5jb20+DQoNCkFsaXN0YWlyDQoNCj4gLS0tDQo+ICBhcmNoL3Jpc2N2L0tjb25maWcu
c29jcyAgICAgICAgICAgfCAyICsrDQo+ICBhcmNoL3Jpc2N2L2NvbmZpZ3MvZGVmY29uZmlnICAg
ICAgfCAxICsNCj4gIGFyY2gvcmlzY3YvY29uZmlncy9ydjMyX2RlZmNvbmZpZyB8IDEgKw0KPiAg
MyBmaWxlcyBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKykNCj4gDQo+IGRpZmYgLS1naXQgYS9hcmNo
L3Jpc2N2L0tjb25maWcuc29jcyBiL2FyY2gvcmlzY3YvS2NvbmZpZy5zb2NzDQo+IGluZGV4IDYy
MzgzOTUxYmYyZS4uYmFlNDkwN2I0ODgwIDEwMDY0NA0KPiAtLS0gYS9hcmNoL3Jpc2N2L0tjb25m
aWcuc29jcw0KPiArKysgYi9hcmNoL3Jpc2N2L0tjb25maWcuc29jcw0KPiBAQCAtMjYsNiArMjYs
OCBAQCBjb25maWcgU09DX1ZJUlQNCj4gICAgICAgICBzZWxlY3QgUlBNU0dfVklSVElPDQo+ICAg
ICAgICAgc2VsZWN0IENSWVBUT19ERVZfVklSVElPDQo+ICAgICAgICAgc2VsZWN0IFZJUlRJT19J
TlBVVA0KPiArICAgICAgIHNlbGVjdCBQT1dFUl9SRVNFVF9TWVNDT04NCj4gKyAgICAgICBzZWxl
Y3QgUE9XRVJfUkVTRVRfU1lTQ09OX1BPV0VST0ZGDQo+ICAgICAgICAgc2VsZWN0IFNJRklWRV9Q
TElDDQo+ICAgICAgICAgaGVscA0KPiAgICAgICAgICAgVGhpcyBlbmFibGVzIHN1cHBvcnQgZm9y
IFFFTVUgVmlydCBNYWNoaW5lLg0KPiBkaWZmIC0tZ2l0IGEvYXJjaC9yaXNjdi9jb25maWdzL2Rl
ZmNvbmZpZw0KPiBiL2FyY2gvcmlzY3YvY29uZmlncy9kZWZjb25maWcNCj4gaW5kZXggMjUxNWZl
NjQxN2UxLi5iZjMzYmQ0MGVlMDcgMTAwNjQ0DQo+IC0tLSBhL2FyY2gvcmlzY3YvY29uZmlncy9k
ZWZjb25maWcNCj4gKysrIGIvYXJjaC9yaXNjdi9jb25maWdzL2RlZmNvbmZpZw0KPiBAQCAtNTgs
NiArNTgsNyBAQCBDT05GSUdfSFdfUkFORE9NPXkNCj4gIENPTkZJR19TUEk9eQ0KPiAgQ09ORklH
X1NQSV9TSUZJVkU9eQ0KPiAgIyBDT05GSUdfUFRQXzE1ODhfQ0xPQ0sgaXMgbm90IHNldA0KPiAr
Q09ORklHX1BPV0VSX1JFU0VUPXkNCj4gIENPTkZJR19EUk09eQ0KPiAgQ09ORklHX0RSTV9SQURF
T049eQ0KPiAgQ09ORklHX0ZSQU1FQlVGRkVSX0NPTlNPTEU9eQ0KPiBkaWZmIC0tZ2l0IGEvYXJj
aC9yaXNjdi9jb25maWdzL3J2MzJfZGVmY29uZmlnDQo+IGIvYXJjaC9yaXNjdi9jb25maWdzL3J2
MzJfZGVmY29uZmlnDQo+IGluZGV4IGJiY2YxNGZkNmY0MC4uMjM0MjEzYjRlYTc0IDEwMDY0NA0K
PiAtLS0gYS9hcmNoL3Jpc2N2L2NvbmZpZ3MvcnYzMl9kZWZjb25maWcNCj4gKysrIGIvYXJjaC9y
aXNjdi9jb25maWdzL3J2MzJfZGVmY29uZmlnDQo+IEBAIC01Niw2ICs1Niw3IEBAIENPTkZJR19T
RVJJQUxfRUFSTFlDT05fUklTQ1ZfU0JJPXkNCj4gIENPTkZJR19IVkNfUklTQ1ZfU0JJPXkNCj4g
IENPTkZJR19IV19SQU5ET009eQ0KPiAgIyBDT05GSUdfUFRQXzE1ODhfQ0xPQ0sgaXMgbm90IHNl
dA0KPiArQ09ORklHX1BPV0VSX1JFU0VUPXkNCj4gIENPTkZJR19EUk09eQ0KPiAgQ09ORklHX0RS
TV9SQURFT049eQ0KPiAgQ09ORklHX0ZSQU1FQlVGRkVSX0NPTlNPTEU9eQ0K

