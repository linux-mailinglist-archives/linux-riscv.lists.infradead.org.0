Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BDE351A8F7C
	for <lists+linux-riscv@lfdr.de>; Wed, 15 Apr 2020 02:11:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-ID:Content-Type:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=s6ep7W/HppDBO3nHh+/ZPTIouvLBfg2YTb4NfjKh+KQ=; b=gIEV7UvuwaePEfOL0TJ8YMxxS
	YGLulmuD11vEzEUzXE1RUeNcG7CqPnPTe9ibp0TeX6TAhA2UE616KX4R8GXW4zGtlF/8O7s7FH/ME
	hoyZuy1FMdPo1RzyESJjbfFgBZvcL9XlCZGs2nW2oufjeknz81xxsrQr2Q/n6HwOUQIcQtq1ZZJpo
	NjRQsmZpYkM3xGPxykGhvdEZnrqsAZXk2xC1SU5NF+BuTyKNf0k+7HzsPSmwB6IO/NPZOeOmWcxtO
	VNepjt7F66pKG7pHX9+mYtp1OmxyL44vR/p2cGR9xCyUdrsRhJifMXwIrhU22kxGvPF1lwWru5XrH
	Xd5S7iPmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOVe1-0000N4-Fp; Wed, 15 Apr 2020 00:11:09 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOVdw-0000MT-3N; Wed, 15 Apr 2020 00:11:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1586909475; x=1618445475;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=s6ep7W/HppDBO3nHh+/ZPTIouvLBfg2YTb4NfjKh+KQ=;
 b=DMx5E1UKVgkgO5Objc5ie+xfLgxXFkJPVH6w0PlUdF4P2XGqLcqYiCQ/
 QXOE3DP5YK5roE2pt2OH60CIrNUivvBw9MWDFV6S8NxjL07AqTar05AQv
 9tgJ0Uknk3r/xkIuhx/DPkszIAzds0TuupkhSxbAoxU6bg6KkpJ2czOMd
 4LjKw87Tt+ieJWW1VXPQ8Z3jiQ0KEppkFSHqaO63ZgjJGEMjz2Yp73iC8
 n3ALYEg9sVEpsTdjQmIJa/5S14+G1HaEcLwcrc4TcrXgbidPrhtXFaDte
 KXgbQudVCZzJrFyJCozggzet95GK9sXUj/4fwoR3/DVsVvlDHvD3hfezZ g==;
IronPort-SDR: /2tkpiofbu6Kam6qVT77Tb2cr6GR6ua8KtEqv6GqngALZgg2SSXwJN/gR9uEm7gaGL5L8McMGE
 Pq0bxTkHK6x/GHe+xOBXP6T3cHotqUmaLEMg1l1TxDzs2LNtg0CD6FRbPyQfF8cndAOKMooQ3h
 V5uBwc3ldKSM0kfCdpRKu+EBpN2HV4c0IU3mAjcAHUyHu8m0PbigeraJB9vB4Fy5BYHv5pTkI2
 SWdwT4+8klpNBT2fNaFCsiae9D1pO7KgQsWvh9zdM0A29H9fFTLH0gswlpokktxPr+sOHrfq+n
 Ios=
X-IronPort-AV: E=Sophos;i="5.72,384,1580745600"; d="scan'208";a="237762944"
Received: from mail-bn8nam12lp2168.outbound.protection.outlook.com (HELO
 NAM12-BN8-obe.outbound.protection.outlook.com) ([104.47.55.168])
 by ob1.hgst.iphmx.com with ESMTP; 15 Apr 2020 08:11:03 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mWWMWpWrqwH1ruNHaZZcz9uaUJgPR/kPIUTdhZntn6EHifuFEC+cy4y5jM6sAQ7yZhsOQFlIoovoub2mah+/xpsIIhZbRuyrbymhkQXeuqUhCUFzQWoVgbdlQUQBbKbbWOBdgvdaqar5FoXnMZErAznZ6ZPgug9oqRQGRzJoxfHQEcKz0ufmPaZdKJeTAPk6+w3dj/FQsgvDNAjU0sw6KoInhx6+q01/dV12fWvGTWtuBblH8hmjFm91yB+WqxauXOjcM/GH8cc+sM/FwvK+uHcdmy3HIZ3aQUS6DcLm7c2rRujLbTwP8Uz03/QYnXjTFJGx1rPAMwfIiphLLAu7AQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=s6ep7W/HppDBO3nHh+/ZPTIouvLBfg2YTb4NfjKh+KQ=;
 b=RpIIEC1gZjPSySIDe7Mdh7h2l7eM3qKDLg/L5nyQCkJ0R/UOoI3zZsaFwa9suT9XKkNgh0FNYEBNfXvW/M3AsdMHYdsze23DLryaD+27yuBzLP1oi+nDIzwJPjo+gz9lP1afR3sLQtWJx/A3pRD4vTUWJ4/1ViXkRMjlAXIYBFJmQwCyZv+mvvGh9lLCBThfU3ciYJ/2/giCikjQzquj4FvlKXQ1s8XuHrhBVYzFpGDZvpzZ0/ja6mlUz4U6xfz/7lx7KbNwivP/YoFHg3R2A0QzXWNytKosMLYKzexRQx4qc4K2QySkRLkWXa4FaH6zYSbppWEmOzbAmdnr2cPVKw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=s6ep7W/HppDBO3nHh+/ZPTIouvLBfg2YTb4NfjKh+KQ=;
 b=F9rH7Bwv7qkdQWQ5nZLvs1rmjGSknplJI7GI2fkE6LMqNd4/JKgf5sis3Ti/oZJTPQzplErk1LkheeTVLNSsV+Vn7TQycWXZ7cS/FE3NywlSywBvU2kn6mqZD75CLlGjsuyZuHxJEyI49/66TKWjhPLAT5E6jjarDepaSwQxjxM=
Received: from BY5PR04MB6724.namprd04.prod.outlook.com (2603:10b6:a03:219::15)
 by BY5PR04MB6977.namprd04.prod.outlook.com (2603:10b6:a03:22e::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2900.28; Wed, 15 Apr
 2020 00:10:54 +0000
Received: from BY5PR04MB6724.namprd04.prod.outlook.com
 ([fe80::5591:a2e7:4fad:6b0c]) by BY5PR04MB6724.namprd04.prod.outlook.com
 ([fe80::5591:a2e7:4fad:6b0c%6]) with mapi id 15.20.2900.028; Wed, 15 Apr 2020
 00:10:54 +0000
From: Atish Patra <Atish.Patra@wdc.com>
To: "ardb@kernel.org" <ardb@kernel.org>
Subject: Re: [v2 PATCH 5/5] RISC-V: Add EFI stub support.
Thread-Topic: [v2 PATCH 5/5] RISC-V: Add EFI stub support.
Thread-Index: AQHWEdqivWpOyR7aBU6t3f1dB6NUcah4PKIAgAEUT4A=
Date: Wed, 15 Apr 2020 00:10:53 +0000
Message-ID: <092b7101d0a72700435f64581e4356fe92d9ece8.camel@wdc.com>
References: <20200413212907.29244-1-atish.patra@wdc.com>
 <20200413212907.29244-6-atish.patra@wdc.com>
 <CAMj1kXEiQRORXMe4s_-iqmOefv-mbsPCtMT9ivJPvnkja+v0oQ@mail.gmail.com>
In-Reply-To: <CAMj1kXEiQRORXMe4s_-iqmOefv-mbsPCtMT9ivJPvnkja+v0oQ@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.34.4 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Atish.Patra@wdc.com; 
x-originating-ip: [98.248.240.128]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 9cb3d845-3df5-45d3-1c8e-08d7e0d176c1
x-ms-traffictypediagnostic: BY5PR04MB6977:
x-microsoft-antispam-prvs: <BY5PR04MB6977CA5AB9A6E5D97B41AE20FADB0@BY5PR04MB6977.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0374433C81
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR04MB6724.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10019020)(4636009)(39860400002)(346002)(366004)(376002)(396003)(136003)(186003)(6916009)(81156014)(26005)(71200400001)(66556008)(66946007)(478600001)(76116006)(66446008)(36756003)(64756008)(5660300002)(66476007)(30864003)(54906003)(4326008)(6506007)(8676002)(7416002)(6512007)(2616005)(6486002)(316002)(86362001)(8936002)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: NBJ94+71X2bOMaljTLSyRRNDPyp8gfognTGDJUhzKI8+u9AUpgTf0v2Nrr1MNCnl+BJ9IGPuxGnGe81pR6+SK5vJ3mqqvokYi6U/TlITtBq+8Da2ZLLqERRjH0nWd2vt3GsGh7Q4oHSn9DTdiwwIzJbFd6K+Cg+iJWM7uJlPVvsXn7a8XpzfPnQ6oo7jCajEKGm43d7tM6Spvxmdfa6Pz6bWyW7zZL2ZNsNHr48OEngJ+KJEnrpd06nrzaEt5ZcHjhrG77NiO7bJOBBEEWKgf6kszdzDg55z2HU4GrHgPBSmsWyX+vpxf4jAQaS2Akte+RcdO4hwPQrmTeQmfbmvusyBa0DRX5Kzt/yaU9FlGd+NinZkgXMEjuD9AM5vuZNaZKSC9vh9rKkbGJ7F89Sj1C4JDrPvZ1QiXk9lkdTzfydyUtDHx64Zl+3dW/5QQsyO
x-ms-exchange-antispam-messagedata: GSlxGTWqczS+NS9ujjOMzbKjMsnRC/Bcy83VhY8VcUG1ilzeUcFYExBs2MUxReseet5FBUXGGjPmXIfTnUUAeo3aw4xiQGlgXJ7cB8ZOCRJgf1bX7vAZB4pkv+z+8HimKwPIOn9p5YBYPkleYEtLZw==
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="utf-8"
Content-ID: <202BFF1CAC490A458D371180EE332A7C@namprd04.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9cb3d845-3df5-45d3-1c8e-08d7e0d176c1
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Apr 2020 00:10:53.9914 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lh9Lp0Z0s3cdzJgSFwjj9jan+JI/Cst7WWymD7IUx7hSjHs9EGgyo0pdiS1CI/0s8ZACVkzPunDzKxGNyedfeA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR04MB6977
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_171104_320052_EC936789 
X-CRM114-Status: GOOD (  27.19  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.143.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "linux-efi@vger.kernel.org" <linux-efi@vger.kernel.org>,
 "arnd@arndb.de" <arnd@arndb.de>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "masahiroy@kernel.org" <masahiroy@kernel.org>,
 "linux@armlinux.org.uk" <linux@armlinux.org.uk>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "palmer@dabbelt.com" <palmer@dabbelt.com>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "will@kernel.org" <will@kernel.org>, "mingo@kernel.org" <mingo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

T24gVHVlLCAyMDIwLTA0LTE0IGF0IDA5OjQxICswMjAwLCBBcmQgQmllc2hldXZlbCB3cm90ZToN
Cj4gT24gTW9uLCAxMyBBcHIgMjAyMCBhdCAyMzoyOSwgQXRpc2ggUGF0cmEgPGF0aXNoLnBhdHJh
QHdkYy5jb20+DQo+IHdyb3RlOg0KPiA+IEFkZCBhIFJJU0MtViBhcmNoaXRlY3R1cmUgc3BlY2lm
aWMgc3R1YiBjb2RlIHRoYXQgYWN0dWFsbHkgY29waWVzDQo+ID4gdGhlDQo+ID4gYWN0dWFsIGtl
cm5lbCBpbWFnZSB0byBhIHZhbGlkIGFkZHJlc3MgYW5kIGp1bXAgdG8gaXQgYWZ0ZXIgYm9vdA0K
PiA+IHNlcnZpY2VzDQo+ID4gYXJlIHRlcm1pbmF0ZWQuIEVuYWJsZSBVRUZJIHJlbGF0ZWQga2Vy
bmVsIGNvbmZpZ3MgYXMgd2VsbCBmb3INCj4gPiBSSVNDLVYuDQo+ID4gDQo+ID4gU2lnbmVkLW9m
Zi1ieTogQXRpc2ggUGF0cmEgPGF0aXNoLnBhdHJhQHdkYy5jb20+DQo+ID4gLS0tDQo+ID4gIGFy
Y2gvcmlzY3YvS2NvbmZpZyAgICAgICAgICAgICAgICAgICAgICAgIHwgIDIwICsrKysNCj4gPiAg
YXJjaC9yaXNjdi9NYWtlZmlsZSAgICAgICAgICAgICAgICAgICAgICAgfCAgIDEgKw0KPiA+ICBh
cmNoL3Jpc2N2L2NvbmZpZ3MvZGVmY29uZmlnICAgICAgICAgICAgICB8ICAgMSArDQo+ID4gIGFy
Y2gvcmlzY3YvaW5jbHVkZS9hc20vZWZpLmggICAgICAgICAgICAgIHwgIDQ1ICsrKysrKysrDQo+
ID4gIGRyaXZlcnMvZmlybXdhcmUvZWZpL0tjb25maWcgICAgICAgICAgICAgIHwgICAyICstDQo+
ID4gIGRyaXZlcnMvZmlybXdhcmUvZWZpL2xpYnN0dWIvTWFrZWZpbGUgICAgIHwgICA4ICsrDQo+
ID4gIGRyaXZlcnMvZmlybXdhcmUvZWZpL2xpYnN0dWIvcmlzY3Ytc3R1Yi5jIHwgMTMxDQo+ID4g
KysrKysrKysrKysrKysrKysrKysrKw0KPiA+ICA3IGZpbGVzIGNoYW5nZWQsIDIwNyBpbnNlcnRp
b25zKCspLCAxIGRlbGV0aW9uKC0pDQo+ID4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBhcmNoL3Jpc2N2
L2luY2x1ZGUvYXNtL2VmaS5oDQo+ID4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL2Zpcm13
YXJlL2VmaS9saWJzdHViL3Jpc2N2LXN0dWIuYw0KPiA+IA0KPiA+IGRpZmYgLS1naXQgYS9hcmNo
L3Jpc2N2L0tjb25maWcgYi9hcmNoL3Jpc2N2L0tjb25maWcNCj4gPiBpbmRleCBmMzllMzI2YTdh
NDIuLmViNGY0MWM4ZjNjZSAxMDA2NDQNCj4gPiAtLS0gYS9hcmNoL3Jpc2N2L0tjb25maWcNCj4g
PiArKysgYi9hcmNoL3Jpc2N2L0tjb25maWcNCj4gPiBAQCAtMzc5LDEwICszNzksMzAgQEAgY29u
ZmlnIENNRExJTkVfRk9SQ0UNCj4gPiANCj4gPiAgZW5kY2hvaWNlDQo+ID4gDQo+ID4gK2NvbmZp
ZyBFRklfU1RVQg0KPiA+ICsgICAgICAgYm9vbA0KPiA+ICsNCj4gPiArY29uZmlnIEVGSQ0KPiA+
ICsgICAgICAgYm9vbCAiVUVGSSBydW50aW1lIHN1cHBvcnQiDQo+ID4gKyAgICAgICBkZXBlbmRz
IG9uIE9GDQo+ID4gKyAgICAgICBzZWxlY3QgTElCRkRUDQo+ID4gKyAgICAgICBzZWxlY3QgVUNT
Ml9TVFJJTkcNCj4gPiArICAgICAgIHNlbGVjdCBFRklfUEFSQU1TX0ZST01fRkRUDQo+ID4gKyAg
ICAgICBzZWxlY3QgRUZJX1NUVUINCj4gPiArICAgICAgIHNlbGVjdCBFRklfR0VORVJJQ19TVFVC
DQo+ID4gKyAgICAgICBkZWZhdWx0IHkNCj4gPiArICAgICAgIGhlbHANCj4gPiArICAgICAgICAg
VGhpcyBvcHRpb24gcHJvdmlkZXMgc3VwcG9ydCBmb3IgcnVudGltZSBzZXJ2aWNlcw0KPiA+IHBy
b3ZpZGVkDQo+ID4gKyAgICAgICAgIGJ5IFVFRkkgZmlybXdhcmUgKHN1Y2ggYXMgbm9uLXZvbGF0
aWxlIHZhcmlhYmxlcywNCj4gPiByZWFsdGltZQ0KPiA+ICsgICAgICAgICAgY2xvY2ssIGFuZCBw
bGF0Zm9ybSByZXNldCkuIEEgVUVGSSBzdHViIGlzIGFsc28gcHJvdmlkZWQNCj4gPiB0bw0KPiA+
ICsgICAgICAgICBhbGxvdyB0aGUga2VybmVsIHRvIGJlIGJvb3RlZCBhcyBhbiBFRkkgYXBwbGlj
YXRpb24uIFRoaXMNCj4gPiArICAgICAgICAgaXMgb25seSB1c2VmdWwgb24gc3lzdGVtcyB0aGF0
IGhhdmUgVUVGSSBmaXJtd2FyZS4NCj4gPiArDQo+ID4gIGVuZG1lbnUNCj4gPiANCj4gPiAgbWVu
dSAiUG93ZXIgbWFuYWdlbWVudCBvcHRpb25zIg0KPiA+IA0KPiA+ICBzb3VyY2UgImtlcm5lbC9w
b3dlci9LY29uZmlnIg0KPiA+ICtzb3VyY2UgImRyaXZlcnMvZmlybXdhcmUvS2NvbmZpZyINCj4g
PiANCj4gPiAgZW5kbWVudQ0KPiA+IGRpZmYgLS1naXQgYS9hcmNoL3Jpc2N2L01ha2VmaWxlIGIv
YXJjaC9yaXNjdi9NYWtlZmlsZQ0KPiA+IGluZGV4IGZiNmUzN2RiODM2ZC4uMDc5NDM1ODA0ZDZk
IDEwMDY0NA0KPiA+IC0tLSBhL2FyY2gvcmlzY3YvTWFrZWZpbGUNCj4gPiArKysgYi9hcmNoL3Jp
c2N2L01ha2VmaWxlDQo+ID4gQEAgLTgwLDYgKzgwLDcgQEAgaGVhZC15IDo9IGFyY2gvcmlzY3Yv
a2VybmVsL2hlYWQubw0KPiA+ICBjb3JlLXkgKz0gYXJjaC9yaXNjdi8NCj4gPiANCj4gPiAgbGli
cy15ICs9IGFyY2gvcmlzY3YvbGliLw0KPiA+ICtjb3JlLSQoQ09ORklHX0VGSV9TVFVCKSArPQ0K
PiA+ICQob2JqdHJlZSkvZHJpdmVycy9maXJtd2FyZS9lZmkvbGlic3R1Yi9saWIuYQ0KPiA+IA0K
PiA+ICBQSE9OWSArPSB2ZHNvX2luc3RhbGwNCj4gPiAgdmRzb19pbnN0YWxsOg0KPiA+IGRpZmYg
LS1naXQgYS9hcmNoL3Jpc2N2L2NvbmZpZ3MvZGVmY29uZmlnDQo+ID4gYi9hcmNoL3Jpc2N2L2Nv
bmZpZ3MvZGVmY29uZmlnDQo+ID4gaW5kZXggNGRhNDg4NjI0NmE0Li5hZTY5ZTEyZDMwNmEgMTAw
NjQ0DQo+ID4gLS0tIGEvYXJjaC9yaXNjdi9jb25maWdzL2RlZmNvbmZpZw0KPiA+ICsrKyBiL2Fy
Y2gvcmlzY3YvY29uZmlncy9kZWZjb25maWcNCj4gPiBAQCAtMTI5LDMgKzEyOSw0IEBAIENPTkZJ
R19ERUJVR19CTE9DS19FWFRfREVWVD15DQo+ID4gICMgQ09ORklHX1JVTlRJTUVfVEVTVElOR19N
RU5VIGlzIG5vdCBzZXQNCj4gPiAgQ09ORklHX01FTVRFU1Q9eQ0KPiA+ICAjIENPTkZJR19TWVNG
U19TWVNDQUxMIGlzIG5vdCBzZXQNCj4gPiArQ09ORklHX0VGST15DQo+ID4gZGlmZiAtLWdpdCBh
L2FyY2gvcmlzY3YvaW5jbHVkZS9hc20vZWZpLmgNCj4gPiBiL2FyY2gvcmlzY3YvaW5jbHVkZS9h
c20vZWZpLmgNCj4gPiBuZXcgZmlsZSBtb2RlIDEwMDY0NA0KPiA+IGluZGV4IDAwMDAwMDAwMDAw
MC4uYmEwYTZkMzVjYzE1DQo+ID4gLS0tIC9kZXYvbnVsbA0KPiA+ICsrKyBiL2FyY2gvcmlzY3Yv
aW5jbHVkZS9hc20vZWZpLmgNCj4gPiBAQCAtMCwwICsxLDQ1IEBADQo+ID4gKy8qIFNQRFgtTGlj
ZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wICovDQo+ID4gKy8qDQo+ID4gKyAqIENvcHlyaWdodCAo
QykgMjAyMCBXZXN0ZXJuIERpZ2l0YWwgQ29ycG9yYXRpb24gb3IgaXRzDQo+ID4gYWZmaWxpYXRl
cy4NCj4gPiArICogQmFzZWQgb24gYXJjaC9hcm02NC9pbmNsdWRlL2FzbS9lZmkuaA0KPiA+ICsg
Ki8NCj4gPiArI2lmbmRlZiBfQVNNX0VGSV9IDQo+ID4gKyNkZWZpbmUgX0FTTV9FRklfSA0KPiA+
ICsNCj4gPiArI2luY2x1ZGUgPGFzbS9pby5oPg0KPiA+ICsjaW5jbHVkZSA8YXNtL21tdV9jb250
ZXh0Lmg+DQo+ID4gKyNpbmNsdWRlIDxhc20vcHRyYWNlLmg+DQo+ID4gKyNpbmNsdWRlIDxhc20v
dGxiZmx1c2guaD4NCj4gPiArDQo+ID4gKyNkZWZpbmUgVkFfQklUU19NSU4gMzkNCj4gPiArDQo+
ID4gKy8qIG9uIFJJU0MtViwgdGhlIEZEVCBtYXkgYmUgbG9jYXRlZCBhbnl3aGVyZSBpbiBzeXN0
ZW0gUkFNICovDQo+ID4gK3N0YXRpYyBpbmxpbmUgdW5zaWduZWQgbG9uZyBlZmlfZ2V0X21heF9m
ZHRfYWRkcih1bnNpZ25lZCBsb25nDQo+ID4gZHJhbV9iYXNlKQ0KPiA+ICt7DQo+ID4gKyAgICAg
ICByZXR1cm4gVUxPTkdfTUFYOw0KPiA+ICt9DQo+ID4gKw0KPiA+ICsvKiBMb2FkIGluaXRyZCBh
dCBlbm91Z2ggZGlzdGFuY2UgZnJvbSBEUkFNIHN0YXJ0ICovDQo+ID4gK3N0YXRpYyBpbmxpbmUg
dW5zaWduZWQgbG9uZyBlZmlfZ2V0X21heF9pbml0cmRfYWRkcih1bnNpZ25lZCBsb25nDQo+ID4g
ZHJhbV9iYXNlLA0KPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICB1bnNpZ25lZCBsb25nDQo+ID4gaW1hZ2VfYWRkcikNCj4gPiArew0KPiA+ICsg
ICAgICAgcmV0dXJuIGRyYW1fYmFzZSArIFNaXzI1Nk07DQo+ID4gK30NCj4gPiArDQo+ID4gKyNk
ZWZpbmUgZWZpX2JzX2NhbGwoZnVuYywgLi4uKSBlZmlfc3lzdGVtX3RhYmxlKCktPmJvb3R0aW1l
LQ0KPiA+ID5mdW5jKF9fVkFfQVJHU19fKQ0KPiA+ICsjZGVmaW5lIGVmaV9ydF9jYWxsKGZ1bmMs
IC4uLikgZWZpX3N5c3RlbV90YWJsZSgpLT5ydW50aW1lLQ0KPiA+ID5mdW5jKF9fVkFfQVJHU19f
KQ0KPiA+ICsjZGVmaW5lIGVmaV9pc19uYXRpdmUoKSAgICAgICAgICAgICAgICAodHJ1ZSkNCj4g
PiArDQo+ID4gKyNkZWZpbmUgZWZpX3RhYmxlX2F0dHIoaW5zdCwgYXR0cikgICAgIChpbnN0LT5h
dHRyKQ0KPiA+ICsNCj4gPiArI2RlZmluZSBlZmlfY2FsbF9wcm90byhpbnN0LCBmdW5jLCAuLi4p
IGluc3QtPmZ1bmMoaW5zdCwNCj4gPiAjI19fVkFfQVJHU19fKQ0KPiA+ICsNCj4gPiArI2RlZmlu
ZSBhbGxvY19zY3JlZW5faW5mbyh4Li4uKSAgICAgICAgICAgICAgICAoJnNjcmVlbl9pbmZvKQ0K
PiA+ICtleHRlcm4gY2hhciBzdGV4dF9vZmZzZXRbXTsNCj4gPiArDQo+ID4gK3N0YXRpYyBpbmxp
bmUgdm9pZCBmcmVlX3NjcmVlbl9pbmZvKHN0cnVjdCBzY3JlZW5faW5mbyAqc2kpDQo+ID4gK3sN
Cj4gPiArfQ0KPiA+ICsjZGVmaW5lIEVGSV9BTExPQ19BTElHTiAgICAgICAgICAgICAgICBTWl82
NEsNCj4gPiArDQo+ID4gKyNlbmRpZiAvKiBfQVNNX0VGSV9IICovDQo+ID4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZmlybXdhcmUvZWZpL0tjb25maWcNCj4gPiBiL2RyaXZlcnMvZmlybXdhcmUvZWZp
L0tjb25maWcNCj4gPiBpbmRleCAyYTJiMmI5NmExZGMuLmZjZGM3ODlkM2Y4NyAxMDA2NDQNCj4g
PiAtLS0gYS9kcml2ZXJzL2Zpcm13YXJlL2VmaS9LY29uZmlnDQo+ID4gKysrIGIvZHJpdmVycy9m
aXJtd2FyZS9lZmkvS2NvbmZpZw0KPiA+IEBAIC0xMTEsNyArMTExLDcgQEAgY29uZmlnIEVGSV9H
RU5FUklDX1NUVUINCj4gPiANCj4gPiAgY29uZmlnIEVGSV9BUk1TVFVCX0RUQl9MT0FERVINCj4g
PiAgICAgICAgIGJvb2wgIkVuYWJsZSB0aGUgRFRCIGxvYWRlciINCj4gPiAtICAgICAgIGRlcGVu
ZHMgb24gRUZJX0dFTkVSSUNfU1RVQg0KPiA+ICsgICAgICAgZGVwZW5kcyBvbiBFRklfR0VORVJJ
Q19TVFVCICYmICFSSVNDVg0KPiA+ICAgICAgICAgZGVmYXVsdCB5DQo+ID4gICAgICAgICBoZWxw
DQo+ID4gICAgICAgICAgIFNlbGVjdCB0aGlzIGNvbmZpZyBvcHRpb24gdG8gYWRkIHN1cHBvcnQg
Zm9yIHRoZSBkdGI9DQo+ID4gY29tbWFuZA0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2Zpcm13
YXJlL2VmaS9saWJzdHViL01ha2VmaWxlDQo+ID4gYi9kcml2ZXJzL2Zpcm13YXJlL2VmaS9saWJz
dHViL01ha2VmaWxlDQo+ID4gaW5kZXggZDU5MDUwNDU0MWY2Li5iMWRiM2E3OTNjNDMgMTAwNjQ0
DQo+ID4gLS0tIGEvZHJpdmVycy9maXJtd2FyZS9lZmkvbGlic3R1Yi9NYWtlZmlsZQ0KPiA+ICsr
KyBiL2RyaXZlcnMvZmlybXdhcmUvZWZpL2xpYnN0dWIvTWFrZWZpbGUNCj4gPiBAQCAtMjIsNiAr
MjIsOCBAQCBjZmxhZ3MtJChDT05GSUdfQVJNNjQpICAgICAgICAgICAgICAgIDo9ICQoc3Vic3QN
Cj4gPiAkKENDX0ZMQUdTX0ZUUkFDRSksLCQoS0JVSUxEX0NGTEFHUykpIFwNCj4gPiAgY2ZsYWdz
LSQoQ09ORklHX0FSTSkgICAgICAgICAgIDo9ICQoc3Vic3QNCj4gPiAkKENDX0ZMQUdTX0ZUUkFD
RSksLCQoS0JVSUxEX0NGTEFHUykpIFwNCj4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIC1mbm8tYnVpbHRpbiAtZnBpYyBcDQo+ID4gICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAkKGNhbGwgY2Mtb3B0aW9uLC1tbm8tc2luZ2xlLQ0KPiA+IHBpYy1iYXNlKQ0K
PiA+ICtjZmxhZ3MtJChDT05GSUdfUklTQ1YpICAgICAgICAgOj0gJChzdWJzdA0KPiA+ICQoQ0Nf
RkxBR1NfRlRSQUNFKSwsJChLQlVJTERfQ0ZMQUdTKSkgXA0KPiA+ICsgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgLWZwaWMNCj4gPiANCj4gPiAgY2ZsYWdzLSQoQ09ORklHX0VGSV9H
RU5FUklDX1NUVUIpICAgICAgKz0NCj4gPiAtSSQoc3JjdHJlZSkvc2NyaXB0cy9kdGMvbGliZmR0
DQo+ID4gDQo+ID4gQEAgLTU2LDYgKzU4LDcgQEAgbGliLSQoQ09ORklHX0VGSV9HRU5FUklDX1NU
VUIpICAgICAgICAgICAgICAgICs9DQo+ID4gZWZpLXN0dWIubyBmZHQubyBzdHJpbmcubyBcDQo+
ID4gIGxpYi0kKENPTkZJR19BUk0pICAgICAgICAgICAgICArPSBhcm0zMi1zdHViLm8NCj4gPiAg
bGliLSQoQ09ORklHX0FSTTY0KSAgICAgICAgICAgICs9IGFybTY0LXN0dWIubw0KPiA+ICBsaWIt
JChDT05GSUdfWDg2KSAgICAgICAgICAgICAgKz0geDg2LXN0dWIubw0KPiA+ICtsaWItJChDT05G
SUdfUklTQ1YpICAgICAgICAgICAgKz0gcmlzY3Ytc3R1Yi5vDQo+ID4gIENGTEFHU19hcm0zMi1z
dHViLm8gICAgICAgICAgICA6PSAtRFRFWFRfT0ZGU0VUPSQoVEVYVF9PRkZTRVQpDQo+ID4gIENG
TEFHU19hcm02NC1zdHViLm8gICAgICAgICAgICA6PSAtRFRFWFRfT0ZGU0VUPSQoVEVYVF9PRkZT
RVQpDQo+ID4gDQo+ID4gQEAgLTgwLDYgKzgzLDExIEBAIFNUVUJDT1BZX0ZMQUdTLSQoQ09ORklH
X0FSTTY0KSAgICAgICArPSAtLQ0KPiA+IHByZWZpeC1hbGxvYy1zZWN0aW9ucz0uaW5pdCBcDQo+
ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAtLXByZWZpeC1zeW1ib2xzPV9f
ZWZpc3R1Yl8NCj4gPiAgU1RVQkNPUFlfUkVMT0MtJChDT05GSUdfQVJNNjQpIDo9IFJfQUFSQ0g2
NF9BQlMNCj4gPiANCj4gPiArU1RVQkNPUFlfRkxBR1MtJChDT05GSUdfUklTQ1YpICs9IC0tcHJl
Zml4LWFsbG9jLXNlY3Rpb25zPS5pbml0IFwNCj4gPiArICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIC0tcHJlZml4LXN5bWJvbHM9X19lZmlzdHViXw0KPiA+ICtTVFVCQ09QWV9SRUxP
Qy0kKENPTkZJR19SSVNDVikgOj0gUl9SSVNDVl9ISTIwDQo+ID4gKw0KPiA+ICsNCj4gPiAgJChv
YmopLyUuc3R1Yi5vOiAkKG9iaikvJS5vIEZPUkNFDQo+ID4gICAgICAgICAkKGNhbGwgaWZfY2hh
bmdlZCxzdHViY29weSkNCj4gPiANCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9maXJtd2FyZS9l
ZmkvbGlic3R1Yi9yaXNjdi1zdHViLmMNCj4gPiBiL2RyaXZlcnMvZmlybXdhcmUvZWZpL2xpYnN0
dWIvcmlzY3Ytc3R1Yi5jDQo+ID4gbmV3IGZpbGUgbW9kZSAxMDA2NDQNCj4gPiBpbmRleCAwMDAw
MDAwMDAwMDAuLmFjYjY5ZWFlMTg3YQ0KPiA+IC0tLSAvZGV2L251bGwNCj4gPiArKysgYi9kcml2
ZXJzL2Zpcm13YXJlL2VmaS9saWJzdHViL3Jpc2N2LXN0dWIuYw0KPiA+IEBAIC0wLDAgKzEsMTMx
IEBADQo+ID4gKy8vIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wDQo+ID4gKy8qDQo+
ID4gKyAqIENvcHlyaWdodCAoQykgMjAxMywgMjAxNCBMaW5hcm8gTHRkOyAgPHJveS5mcmFuekBs
aW5hcm8ub3JnPg0KPiA+ICsgKiBDb3B5cmlnaHQgKEMpIDIwMjAgV2VzdGVybiBEaWdpdGFsIENv
cnBvcmF0aW9uIG9yIGl0cw0KPiA+IGFmZmlsaWF0ZXMuDQo+ID4gKyAqDQo+ID4gKyAqIFRoaXMg
ZmlsZSBpbXBsZW1lbnRzIHRoZSBFRkkgYm9vdCBzdHViIGZvciB0aGUgUklTQy1WIGtlcm5lbC4N
Cj4gPiArICogQWRhcHRlZCBmcm9tIEFSTTY0IHZlcnNpb24gYXQNCj4gPiBkcml2ZXJzL2Zpcm13
YXJlL2VmaS9saWJzdHViL2FybTY0LXN0dWIuYy4NCj4gPiArICovDQo+ID4gKw0KPiA+ICsjaW5j
bHVkZSA8bGludXgvZWZpLmg+DQo+ID4gKyNpbmNsdWRlIDxsaW51eC9saWJmZHQuaD4NCj4gPiAr
I2luY2x1ZGUgPGxpbnV4L2xpYmZkdF9lbnYuaD4NCj4gPiArI2luY2x1ZGUgPGFzbS9lZmkuaD4N
Cj4gPiArI2luY2x1ZGUgPGFzbS9zZWN0aW9ucy5oPg0KPiA+ICsNCj4gPiArI2luY2x1ZGUgImVm
aXN0dWIuaCINCj4gPiArLyoNCj4gPiArICogUklTQ1YgcmVxdWlyZXMgdGhlIGtlcm5lbCBpbWFn
ZSB0byBwbGFjZWQgVEVYVF9PRkZTRVQgYnl0ZXMNCj4gPiBiZXlvbmQgYSAyIE1CDQo+ID4gKyAq
IGFsaWduZWQgYmFzZSBmb3IgNjQgYml0IGFuZCA0TUIgZm9yIDMyIGJpdC4NCj4gPiArICovDQo+
ID4gKyNpZmRlZiBDT05GSUdfNjRCSVQNCj4gPiArI2RlZmluZSBNSU5fS0lNR19BTElHTiBTWl8y
TQ0KPiA+ICsjZWxzZQ0KPiA+ICsjZGVmaW5lIE1JTl9LSU1HX0FMSUdOIFNaXzRNDQo+ID4gKyNl
bmRpZg0KPiA+ICsvKg0KPiA+ICsgKiBURVhUX09GRlNFVCBlbnN1cmVzIHRoYXQgd2UgZG9uJ3Qg
b3ZlcndyaXRlIHRoZSBmaXJtd2FyZSB0aGF0DQo+ID4gcHJvYmFibHkgc2l0cw0KPiA+ICsgKiBh
dCB0aGUgYmVnaW5uaW5nIG9mIHRoZSBEUkFNLg0KPiA+ICsgKi8NCj4gPiArI2RlZmluZSBURVhU
X09GRlNFVCBNSU5fS0lNR19BTElHTg0KPiA+ICsNCj4gDQo+IEFnYWluLCB0aGlzIGlzIG5vdCB0
aGUgcmlnaHQgYXBwcm9hY2guIElmIHRoZXJlIGFyZSBhbnkgYWxsb2NhdGlvbnMNCj4gaW4NCj4g
bWVtb3J5IHRoYXQgRUZJIGNhbm5vdCB0b3VjaCwgeW91IGhhdmUgdG8gbWFyayB0aGVtIGFzIHJl
c2VydmVkIGluDQo+IHRoZQ0KPiBFRkkgbWVtb3J5IG1hcC4gT3RoZXJ3aXNlLCBhbnl0aGluZyBy
dW5uaW5nIGluIHRoZSBFRkkgY29udGV4dCAoR1JVQiwNCj4gc3lzdGVtZC1ib290LCBzaGltLCBl
dGMpIGNvdWxkIHN0ZXAgb24gaXQsIG5vdCBqdXN0IHRoZSBrZXJuZWwuDQo+IA0KDQpDb3JyZWN0
LiBUaGF0J3Mgd2h5IEkgYWRkZWQgdGhlIFUtQm9vdCBzZXJpZXMgd2hpY2ggdGFrZXMgY2FyZSBv
Zg0KbW9kaWZ5aW5nIHRoZSBEVCB0byBhZGQgdGhlIHJlc2VydmVkIG1lbW9yeSByZWdpb25zLiBX
aXRoIHRob3NlDQpjaGFuZ2VzLCBhbnkgbWVtb3J5IG1hcmtlZCByZXNlcnZlZCBieSB0aGUgZmly
bXdhcmUgd2lsbCBiZSBtYXJrZWQNCnJlc2VydmVkIGluIHRoZSBFRkkgbWVtb3J5IG1hcC4gVGhl
IHByb3BlciBrZXJuZWwgd2lsbA0KYWxzbyBuZXZlciBtYXAgdGhvc2UgbWVtb3J5IHJlZ2lvbnMg
aWYgIm5vbWFwIiBpcyBzZXQuDQoNClRvIGJlIGhvbmVzdCwgSSBmb3Jnb3QgdG8gcmVtb3ZlIHRo
ZSBURVhUX09GRlNFVCBpbiB0aGlzIHNlcmllcy4gSQ0KaGF2ZSByZW1vdmVkIGl0IGluIHRoZSBu
ZXh0IHZlcnNpb24uDQoNCj4gPiArdHlwZWRlZiBfX2F0dHJpYnV0ZV9fKChub3JldHVybikpIHZv
aWQNCj4gPiAoKmp1bXBfa2VybmVsX2Z1bmMpKHVuc2lnbmVkIGludCwNCj4gPiArICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHVuc2lnbmVk
DQo+ID4gbG9uZyk7DQo+ID4gK2VmaV9zdGF0dXNfdCBjaGVja19wbGF0Zm9ybV9mZWF0dXJlcyh2
b2lkKQ0KPiA+ICt7DQo+ID4gKyAgICAgICByZXR1cm4gRUZJX1NVQ0NFU1M7DQo+ID4gK30NCj4g
PiArDQo+ID4gK3N0YXRpYyB1MzIgZ2V0X2Jvb3RfaGFydGlkX2Zyb21fZmR0KHVuc2lnbmVkIGxv
bmcgZmR0KQ0KPiA+ICt7DQo+ID4gKyAgICAgICBpbnQgY2hvc2VuX25vZGUsIGxlbjsNCj4gPiAr
ICAgICAgIGNvbnN0IGZkdDMyX3QgKnByb3A7DQo+ID4gKw0KPiA+ICsgICAgICAgY2hvc2VuX25v
ZGUgPSBmZHRfcGF0aF9vZmZzZXQoKHZvaWQgKilmZHQsICIvY2hvc2VuIik7DQo+ID4gKyAgICAg
ICBpZiAoY2hvc2VuX25vZGUgPCAwKQ0KPiA+ICsgICAgICAgICAgICAgICByZXR1cm4gVTMyX01B
WDsNCj4gPiArICAgICAgIHByb3AgPSBmZHRfZ2V0cHJvcCgodm9pZCAqKWZkdCwgY2hvc2VuX25v
ZGUsICJib290LWhhcnRpZCIsIA0KPiA+ICZsZW4pOw0KPiA+ICsgICAgICAgaWYgKCFwcm9wIHx8
IGxlbiAhPSBzaXplb2YodTMyKSkNCj4gPiArICAgICAgICAgICAgICAgcmV0dXJuIFUzMl9NQVg7
DQo+ID4gKw0KPiA+ICsgICAgICAgcmV0dXJuIGZkdDMyX3RvX2NwdSgqcHJvcCk7DQo+ID4gK30N
Cj4gPiArDQo+ID4gKy8qDQo+ID4gKyAqIEp1bXAgdG8gcmVhbCBrZXJuZWwgaGVyZSB3aXRoIGZv
bGxvd2luZyBjb25zdHJhaW50cy4NCj4gPiArICogMS4gTU1VIHNob3VsZCBiZSBkaXNhYmxlZC4N
Cj4gPiArICogMi4gYTAgc2hvdWxkIGNvbnRhaW4gaGFydGlkDQo+ID4gKyAqIDMuIGExIHNob3Vs
ZCBEVCBhZGRyZXNzDQo+ID4gKyAqLw0KPiA+ICt2b2lkIF9fbm9yZXR1cm4gZWZpX2VudGVyX2tl
cm5lbCh1bnNpZ25lZCBsb25nIGVudHJ5cG9pbnQsDQo+ID4gdW5zaWduZWQgbG9uZyBmZHQsDQo+
ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgdW5zaWduZWQgbG9uZyBmZHRfc2l6
ZSkNCj4gPiArew0KPiA+ICsgICAgICAgdW5zaWduZWQgbG9uZyBrZXJuZWxfZW50cnkgPSBlbnRy
eXBvaW50ICsgKHVuc2lnbmVkDQo+ID4gbG9uZylzdGV4dF9vZmZzZXQ7DQo+ID4gKyAgICAgICBq
dW1wX2tlcm5lbF9mdW5jIGp1bXBfa2VybmVsID0gKHZvaWQgKCopKHVuc2lnbmVkIGludCwNCj4g
PiB1bnNpZ25lZCBsb25nKSlrZXJuZWxfZW50cnk7DQo+ID4gKyAgICAgICB1MzIgaGFydGlkID0g
Z2V0X2Jvb3RfaGFydGlkX2Zyb21fZmR0KGZkdCk7DQo+ID4gKw0KPiA+ICsgICAgICAgaWYgKGhh
cnRpZCA9PSBVMzJfTUFYKQ0KPiA+ICsgICAgICAgICAgICAgICAvKiBXZSBjYW4gbm90IHVzZSBw
YW5pYyBvciBCVUcgYXQgdGhpcyBwb2ludCAqLw0KPiA+ICsgICAgICAgICAgICAgICBfX2FzbV9f
IF9fdm9sYXRpbGVfXyAoImVicmVhayIpOw0KPiA+ICsgICAgICAgLyogRGlzYWJsZSBNTVUgKi8N
Cj4gPiArICAgICAgIGNzcl93cml0ZShDU1JfU0FUUCwgMCk7DQo+ID4gKyAgICAgICBqdW1wX2tl
cm5lbChoYXJ0aWQsIGZkdCk7DQo+ID4gK30NCj4gPiArDQo+ID4gK2VmaV9zdGF0dXNfdCBoYW5k
bGVfa2VybmVsX2ltYWdlKHVuc2lnbmVkIGxvbmcgKmltYWdlX2FkZHIsDQo+ID4gKyAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgdW5zaWduZWQgbG9uZyAqaW1hZ2Vfc2l6ZSwNCj4gPiAr
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB1bnNpZ25lZCBsb25nICpyZXNlcnZlX2Fk
ZHIsDQo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgdW5zaWduZWQgbG9uZyAq
cmVzZXJ2ZV9zaXplLA0KPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHVuc2ln
bmVkIGxvbmcgZHJhbV9iYXNlLA0KPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IGVmaV9sb2FkZWRfaW1hZ2VfdCAqaW1hZ2UpDQo+ID4gK3sNCj4gPiArICAgICAgIGVmaV9zdGF0
dXNfdCBzdGF0dXM7DQo+ID4gKyAgICAgICB1bnNpZ25lZCBsb25nIGtlcm5lbF9zaXplLCBrZXJu
ZWxfbWVtc2l6ZSA9IDA7DQo+ID4gKyAgICAgICB1bnNpZ25lZCBsb25nIHByZWZlcnJlZF9vZmZz
ZXQ7DQo+ID4gKw0KPiA+ICsgICAgICAgLyoNCj4gPiArICAgICAgICAqIFRoZSBwcmVmZXJyZWQg
b2Zmc2V0IG9mIHRoZSBrZXJuZWwgSW1hZ2UgaXMgVEVYVF9PRkZTRVQNCj4gPiBieXRlcyBiZXlv
bmQNCj4gPiArICAgICAgICAqIGEgS0lNR19BTElHTiBhbGlnbmVkIGJhc2UuDQo+IA0KPiBNSU5f
S0lNR19BTElHTg0KPiANCj4gPiArICAgICAgICAqLw0KPiA+ICsgICAgICAgcHJlZmVycmVkX29m
ZnNldCA9IHJvdW5kX3VwKGRyYW1fYmFzZSwgTUlOX0tJTUdfQUxJR04pICsNCj4gPiBURVhUX09G
RlNFVDsNCj4gPiArDQo+ID4gKyAgICAgICBrZXJuZWxfc2l6ZSA9IF9lZGF0YSAtIF9zdGFydDsN
Cj4gPiArICAgICAgIGtlcm5lbF9tZW1zaXplID0ga2VybmVsX3NpemUgKyAoX2VuZCAtIF9lZGF0
YSk7DQo+ID4gKw0KPiA+ICsgICAgICAgLyoNCj4gPiArICAgICAgICAqIFRyeSBhIHN0cmFpZ2h0
IGFsbG9jYXRpb24gYXQgdGhlIHByZWZlcnJlZCBvZmZzZXQuIEl0DQo+ID4gd2lsbCBhbHNvDQo+
ID4gKyAgICAgICAgKiBlbnN1cmUgdGhhdCwgb24gcGxhdGZvcm1zIHdoZXJlIHRoZSBbZHJhbV9i
YXNlLA0KPiA+IGRyYW1fYmFzZSArIFRFWFRfT0ZGU0VUKQ0KPiA+ICsgICAgICAgICogaW50ZXJ2
YWwgaXMgcGFydGlhbGx5IG9jY3VwaWVkIGJ5IHRoZSBmaXJtd2FyZSB3ZSBjYW4NCj4gPiBzdGls
bCBwbGFjZQ0KPiA+ICsgICAgICAgICogdGhlIGtlcm5lbCBhdCB0aGUgYWRkcmVzcyAnZHJhbV9i
YXNlICsgVEVYVF9PRkZTRVQnLiBJZg0KPiA+IHRoZSBzdHJhaWdodA0KPiA+ICsgICAgICAgICog
YWxsb2NhdGlvbiBmYWlscywgZWZpX2xvd19hbGxvYyB0cmllcyBhbGxvY2F0ZSBtZW1vcnkNCj4g
PiBmcm9tIHRoZSBsb3dlc3QNCj4gPiArICAgICAgICAqIGF2YWlsYWJsZSBMT0FERVJfREFUQSBt
YXBwZWQgbWVtb3J5IGFzIGxvbmcgYXMgYWRkcmVzcw0KPiA+IGFuZCBzaXplIG1lZXQNCj4gPiAr
ICAgICAgICAqIHRoZSBhbGlnbm1lbnQgY29uc3RyYWludHMuDQo+ID4gKyAgICAgICAgKi8NCj4g
PiArICAgICAgIGlmICgqaW1hZ2VfYWRkciA9PSBwcmVmZXJyZWRfb2Zmc2V0KQ0KPiA+ICsgICAg
ICAgICAgICAgICByZXR1cm4gRUZJX1NVQ0NFU1M7DQo+ID4gKw0KPiA+ICsgICAgICAgKmltYWdl
X2FkZHIgPSAqcmVzZXJ2ZV9hZGRyID0gcHJlZmVycmVkX29mZnNldDsNCj4gPiArICAgICAgICpy
ZXNlcnZlX3NpemUgPSByb3VuZF91cChrZXJuZWxfbWVtc2l6ZSwgRUZJX0FMTE9DX0FMSUdOKTsN
Cj4gPiArDQo+ID4gKyAgICAgICBzdGF0dXMgPSBlZmlfYnNfY2FsbChhbGxvY2F0ZV9wYWdlcywg
RUZJX0FMTE9DQVRFX0FERFJFU1MsDQo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICBFRklfTE9BREVSX0RBVEEsDQo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAq
cmVzZXJ2ZV9zaXplIC8gRUZJX1BBR0VfU0laRSwNCj4gPiArICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIChlZmlfcGh5c2ljYWxfYWRkcl90DQo+ID4gKilyZXNlcnZlX2FkZHIpOw0KPiA+
ICsNCj4gPiArICAgICAgIGlmIChzdGF0dXMgIT0gRUZJX1NVQ0NFU1MpIHsNCj4gPiArICAgICAg
ICAgICAgICAgcHJfZWZpKCJzdHJhaWdodCBhbGxvY2F0aW9uIGZhaWxlZCBkbyBhIGxvdw0KPiA+
IGFsbG9jXG4iKTsNCj4gPiArICAgICAgICAgICAgICAgKnJlc2VydmVfc2l6ZSA9IGtlcm5lbF9t
ZW1zaXplICsgVEVYVF9PRkZTRVQ7DQo+ID4gKyAgICAgICAgICAgICAgIHN0YXR1cyA9IGVmaV9s
b3dfYWxsb2MoKnJlc2VydmVfc2l6ZSwNCj4gPiBNSU5fS0lNR19BTElHTiwNCj4gPiArICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICByZXNlcnZlX2FkZHIpOw0KPiA+ICsNCj4g
DQo+IFNvLCBpbnN0ZWFkIG9mIHRoZSBhYm92ZSwgY291bGQgd2Ugc2ltcGx5IGFsbG9jYXRlIGtl
cm5lbF9tZW1zaXplDQo+IGJ5dGVzIHVzaW5nIGVmaV9hbGxvY2F0ZV9wYWdlcygpLCB3aXRoIHRo
ZSBtYXggYWRkcmVzcyBzZXQgdG8NCj4gJ3JvdW5kX3VwKGRyYW1fYmFzZSwgTUlOX0tJTUdfQUxJ
R04pICsga2VybmVsX21lbXNpemUgKyBURVhUX09GRlNFVCAtDQo+IDEnPyBUaGlzIHNob3VsZCB3
b3JrIGluIHRoZSBtYWpvcml0eSBvZiBjYXNlcywgYW5kIG5vdCB0cmFtcGxlIG9uIHRoZQ0KPiBU
RVhUX09GRlNFVCBieXRlcyBhdCB0aGUgc3RhcnQsIHJlZ2FyZGxlc3Mgb2Ygd2hldGhlciB0aGV5
IGFyZQ0KPiByZXNlcnZlZCBvciBub3QuDQo+IA0KDQpBcyBwZXIgbXkgdW5kZXJzdGFuZGluZywg
ZWZpX2FsbG9jYXRlX3BhZ2VzIGFsaWducyBhcyBwZXINCkVGSV9BTExPQ19BTElHTi4gQnV0IHRo
ZSBrZXJuZWwgbmVlZHMgdG8gYmUgcGxhY2VkIGF0IGEgbWVtb3J5IGFsaWduZWQNCnRvIE1JTl9L
SU1HX0FMSUdOLiBUaGF0J3Mgd2h5IGVmaV9hbGxvY2F0ZV9wYWdlcyBtYXkgbm90IHdvcmsuDQoN
Cj4gSW4gdGhlIGZ1dHVyZSwgSSBpbWFnaW5lIHlvdSBtYXkgd2FudCB0byByZWxheCB0aGUgcmVx
dWlyZW1lbnRzDQo+IHJlZ2FyZGluZyB0aGUgcGh5c2ljYWwgcGxhY2VtZW50IG9mIHRoZSBrZXJu
ZWwsIGluIHdoaWNoIGNhc2UgeW91IGNhbg0KPiBzdGFydCBmYWxsaW5nIGJhY2sgdG8gYSBzdWl0
YWJseSBhbGlnbmVkIGFsbG9jYXRpb24gYW55d2hlcmUgaW4NCj4gbWVtb3J5Lg0KPiANCj4gDQo+
IA0KPiA+ICsgICAgICAgICAgICAgICBpZiAoc3RhdHVzICE9IEVGSV9TVUNDRVNTKSB7DQo+ID4g
KyAgICAgICAgICAgICAgICAgICAgICAgcHJfZWZpX2VycigiRmFpbGVkIHRvIHJlbG9jYXRlIGtl
cm5lbFxuIik7DQo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgKnJlc2VydmVfc2l6ZSA9IDA7
DQo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgcmV0dXJuIHN0YXR1czsNCj4gPiArICAgICAg
ICAgICAgICAgfQ0KPiA+ICsgICAgICAgICAgICAgICAqaW1hZ2VfYWRkciA9ICpyZXNlcnZlX2Fk
ZHIgKyBURVhUX09GRlNFVDsNCj4gPiArICAgICAgIH0NCj4gPiArICAgICAgIG1lbWNweSgodm9p
ZCAqKSppbWFnZV9hZGRyLCBpbWFnZS0+aW1hZ2VfYmFzZSwNCj4gPiBrZXJuZWxfc2l6ZSk7DQo+
ID4gKw0KPiA+ICsgICAgICAgcmV0dXJuIEVGSV9TVUNDRVNTOw0KPiA+ICt9DQo+ID4gLS0NCj4g
PiAyLjI0LjANCj4gPiANCg0KQWN0dWFsbHksIHdlIGRvbid0IGhhdmUgYW55IGtlcm5lbCBwbGFj
ZW1lbnQgcmVzdHJpY3Rpb24gb3RoZXIgdGhhbg0KMk1CLzRNQiBhbGlnbm1lbnQuDQooY29uc2lk
ZXJpbmcgdGhhdCBmaXJtd2FyZSBub3cgbWFya3MgYWxsIHRoZSByZXNlcnZlZCBtZW1vcnkgaW4g
RFQpLg0KDQpDYW4gd2UganVzdCB1c2UgZWZpX2FsbG9jYXRlX3BhZ2VzX2FsaWduZWQgc2ltaWxh
ciB0byBhcm02NCA/IEl0IHNlZW1zDQp0byB3b3JrIGR1cmluZyBteSB0ZXN0aW5nLiBCdXQgSSB3
YW50ZWQgdG8gbWFrZSBzdXJlIHRoYXQgSSBkaWRuJ3QNCm1pc3VuZGVyc3RhbmQgYW55dGhpbmcu
DQoNCi0tIA0KUmVnYXJkcywNCkF0aXNoDQo=

