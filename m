Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8204F12935A
	for <lists+linux-riscv@lfdr.de>; Mon, 23 Dec 2019 09:53:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=oQ/dDLtt0d1WvYIfZFppn7oKq+7G/ziJEWJHyyPzQig=; b=XS3fuksT+uQR1KMnWdbNxS0cw
	Bm/tm1QdEbhVkKNz4GzE6VojbweMeiHcY27cqnydEwA47NAJmRwmqHFgI5Rw31wB7vm93iHvMha6t
	MJGenqPKH64YDpAZikkD9DYpyP2t/GkGlZDjvjbJHZTL6+Pylhued5R6IlwkXiCF9TAGYvMhMFRea
	npSbhUj0GRP5QfxI0oiU2A9syRztjgc0ElSpEJP5S9mQ1PTCvMcXkh/ehikF4MmkEex9YKNQ/IrB8
	NtPEKjAEXaQra4OdABxJ+n/833CeHQe/THAjP/gWcUqJOBSB5Rj5odJvcHYgSzLrCZSRrPe0nkXuI
	Y2qxPo/ng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijJSy-0003z4-CS; Mon, 23 Dec 2019 08:53:28 +0000
Received: from mail-mw2nam10on2075.outbound.protection.outlook.com
 ([40.107.94.75] helo=NAM10-MW2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijJSu-0003yL-IL
 for linux-riscv@lists.infradead.org; Mon, 23 Dec 2019 08:53:26 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=St/rLMCjmcXMhLj0ZNGomJBnr02l1T9tPJ1SpSsO5MZhX4Ez+H76d+TgVRurbt3jw1w6OsDD8OkfLW72rXHeik0EY+RH21dC9iDM5AkaAwXQkUNoaZnNkbC8PimVGQxMim48uXpjmFUw0YRdPAAQ1V0Dyl7fhWJFf9rJgxwZixnW81uQZwtbQpp4u2DgtaWExMYSGHbEt9+wBLNisXWXAuSlSffmURgaEaqCJLiyD3vGtwIDRZ6WlNLzMM5M81TbSjjUR8GvpPBfFlKgZR1xrlk2jw5ls4Jpt4Po/12kQD2zsFV2vRlpGt9utGxuwZgSgQI0u6EgfLgRlzTA/dyWBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oQ/dDLtt0d1WvYIfZFppn7oKq+7G/ziJEWJHyyPzQig=;
 b=MxrO+zQ6n20o8pBKt2sGzPqBsPUsmpbA15L+d3ieIeChGUhHAOPIeHg1+jht6tnUv9PEdqHElyl06eLCaSHWAp1Ea6q7Gy1+VgHn3dDneGyWhqTJVs0WV35FdYOhlmiEHwwSTL8dVgBP4wOrNleW8uQ3WVJRRXsYu4/NtiImRKDQ7dkWaDpbqWx7Of2E5T9LirZUvxhe3ncwTnyyhZ5zliS/Z364hC9qQehccHvo47S1FSJrz51kkOLZjuOyhJRNeURs7BUDIyNMFTzxB/dRbje52MfdFoUKkVyGHuETuShIZyVVPmBdT1ZlNzobJR1akaxqurPliy7M3yIdeXO5iQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=sifive.com; dmarc=pass action=none header.from=sifive.com;
 dkim=pass header.d=sifive.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oQ/dDLtt0d1WvYIfZFppn7oKq+7G/ziJEWJHyyPzQig=;
 b=pS8B7ty9KDtsH80K1xhIiyaKX/nhxOus7ADtwdO2YFn7RfGroIuXw7ycG/WpP0YRkEBuUqF41LFQIFxFwU2FlhCMR7EgH7yg6QhAlR+dvNmm6/c1bBvZFhPkJUaLEL/2/3+WYTz9IqaUio1e8UEmQhEuY/OCxhDDvyP33VAdQ10=
Received: from CH2PR13MB3368.namprd13.prod.outlook.com (52.132.246.90) by
 CH2PR13MB3605.namprd13.prod.outlook.com (52.132.246.89) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2581.6; Mon, 23 Dec 2019 08:53:20 +0000
Received: from CH2PR13MB3368.namprd13.prod.outlook.com
 ([fe80::eccb:16ac:e897:85d5]) by CH2PR13MB3368.namprd13.prod.outlook.com
 ([fe80::eccb:16ac:e897:85d5%3]) with mapi id 15.20.2581.007; Mon, 23 Dec 2019
 08:53:20 +0000
From: Yash Shah <yash.shah@sifive.com>
To: Palmer Dabbelt <palmerdabbelt@google.com>
Subject: RE: [PATCH 2/2] riscv: cacheinfo: Add support to determine no. of L2
 cache way enabled
Thread-Topic: [PATCH 2/2] riscv: cacheinfo: Add support to determine no. of L2
 cache way enabled
Thread-Index: AQHVroNnDfRRIpnH4Ei8kimblaIK3qe46uMAgA6T+RA=
Date: Mon, 23 Dec 2019 08:53:20 +0000
Message-ID: <CH2PR13MB3368B844DB765AE9166C1F1A8C2E0@CH2PR13MB3368.namprd13.prod.outlook.com>
References: <1575890706-36162-3-git-send-email-yash.shah@sifive.com>
 <1575890706-36162-1-git-send-email-yash.shah@sifive.com>
 <mhng-a1ba4b8a-4c6a-43e9-a87a-f8bbbe3555d8@palmerdabbelt-glaptop>
In-Reply-To: <mhng-a1ba4b8a-4c6a-43e9-a87a-f8bbbe3555d8@palmerdabbelt-glaptop>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=yash.shah@sifive.com; 
x-originating-ip: [114.143.65.226]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 68da9839-2fbb-4bfa-fcde-08d787858f80
x-ms-traffictypediagnostic: CH2PR13MB3605:
x-ld-processed: 22f88e9d-ae0d-4ed9-b984-cdc9be1529f1,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CH2PR13MB36057327B6A3BFF1EF40FE028C2E0@CH2PR13MB3605.namprd13.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4714;
x-forefront-prvs: 0260457E99
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(346002)(136003)(376002)(39840400004)(366004)(189003)(199004)(13464003)(33656002)(8676002)(7696005)(76116006)(9686003)(6916009)(478600001)(6506007)(81166006)(53546011)(81156014)(8936002)(71200400001)(5660300002)(26005)(66946007)(86362001)(66446008)(54906003)(66476007)(66556008)(64756008)(4326008)(2906002)(316002)(44832011)(7416002)(52536014)(186003)(55016002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR13MB3605;
 H:CH2PR13MB3368.namprd13.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: sifive.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: X3jpY3J5oaLiIeYht4LaVfv4CgVaxh5aAVkbTKK6TQnlEdSm6OuSH+pj/H7tGx8L+tiwtBd1RZuFR1ULgplPUwIRmvofAZU7FQpm3HBorkzrdq9eOqrhJGD7FP995i/NsQegR2JC/t1KX9Loabf5OOXhLnOjI8gXaeUHa/RoZPlIhIxTfJzjVxccWrmf4R+NjTsWX655sR/DhY5oPc1d5q3illOOAmT8RMwXmf6F1xKn9jWFiM0izfY65rNgKn/29nxGSJNtV/Qh2+VKHkdK39ODC+aH2ZZg/cLnyAjLWykN1hG1wODRv7x3QXKg6WAbSyMwJj7c4rlIuSgIMp+ozggdNbrCsdnW63arsggdkjoNmVlUET91J0Nhwv3RiUp9HmbbOL4y0dPiFGj0UCpeeynhNUYk374zNYhBl66K2XghBzOKJ9OepQ5+GjgUilSKL1uSfXaYZC99SsaE/OubKrKtpXa2hVBfYafJvgOh5XlaP58m+zZu+JfbQvOxEeKv
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: sifive.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 68da9839-2fbb-4bfa-fcde-08d787858f80
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Dec 2019 08:53:20.2850 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 22f88e9d-ae0d-4ed9-b984-cdc9be1529f1
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +7wXTjDqoEN7hHJb+aF6xf5xfy6pK6sLRGW4e4A6bUpzdsb6/E04B+RdBd9Zx4oIRaNB5Rygq/uHNyNrhUgamQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR13MB3605
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191223_005324_706561_00500B7D 
X-CRM114-Status: GOOD (  12.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.94.75 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Atish Patra <Atish.Patra@wdc.com>, Greg KH <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "alexios.zavras@intel.com" <alexios.zavras@intel.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "Paul Walmsley \( Sifive\)" <paul.walmsley@sifive.com>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 "bmeng.cn@gmail.com" <bmeng.cn@gmail.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "allison@lohutok.net" <allison@lohutok.net>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBQYWxtZXIgRGFiYmVsdCA8cGFs
bWVyZGFiYmVsdEBnb29nbGUuY29tPg0KPiBTZW50OiAxNCBEZWNlbWJlciAyMDE5IDA3OjQzDQo+
IFRvOiBZYXNoIFNoYWggPHlhc2guc2hhaEBzaWZpdmUuY29tPg0KPiBDYzogcm9iaCtkdEBrZXJu
ZWwub3JnOyBtYXJrLnJ1dGxhbmRAYXJtLmNvbTsgUGF1bCBXYWxtc2xleSAoIFNpZml2ZSkNCj4g
PHBhdWwud2FsbXNsZXlAc2lmaXZlLmNvbT47IGFvdUBlZWNzLmJlcmtlbGV5LmVkdTsNCj4gYm1l
bmcuY25AZ21haWwuY29tOyBhbGxpc29uQGxvaHV0b2submV0OyBhbGV4aW9zLnphdnJhc0BpbnRl
bC5jb207IEF0aXNoDQo+IFBhdHJhIDxBdGlzaC5QYXRyYUB3ZGMuY29tPjsgdGdseEBsaW51dHJv
bml4LmRlOyBHcmVnIEtIDQo+IDxncmVna2hAbGludXhmb3VuZGF0aW9uLm9yZz47IGRldmljZXRy
ZWVAdmdlci5rZXJuZWwub3JnOyBsaW51eC0NCj4gcmlzY3ZAbGlzdHMuaW5mcmFkZWFkLm9yZzsg
bGludXgta2VybmVsQHZnZXIua2VybmVsLm9yZzsgWWFzaCBTaGFoDQo+IDx5YXNoLnNoYWhAc2lm
aXZlLmNvbT4NCj4gU3ViamVjdDogUmU6IFtQQVRDSCAyLzJdIHJpc2N2OiBjYWNoZWluZm86IEFk
ZCBzdXBwb3J0IHRvIGRldGVybWluZSBuby4gb2YgTDINCj4gY2FjaGUgd2F5IGVuYWJsZWQNCj4g
DQo+IE9uIE1vbiwgMDkgRGVjIDIwMTkgMDM6MjU6MDYgUFNUICgtMDgwMCksIHlhc2guc2hhaEBz
aWZpdmUuY29tIHdyb3RlOg0KPiA+IEluIG9yZGVyIHRvIGRldGVybWluZSB0aGUgbnVtYmVyIG9m
IEwyIGNhY2hlIHdheXMgZW5hYmxlZCBhdCBydW50aW1lLA0KPiA+IGltcGxlbWVudCBhIHByaXZh
dGUgYXR0cmlidXRlIHVzaW5nIGNhY2hlX2dldF9wcml2X2dyb3VwKCkgaW4NCj4gPiBjYWNoZWlu
Zm8gZnJhbWV3b3JrLiBSZWFkaW5nIHRoaXMgYXR0cmlidXRlDQo+ICgibnVtYmVyX29mX3dheXNf
ZW5hYmxlZCIpDQo+ID4gd2lsbCByZXR1cm4gdGhlIG51bWJlciBvZiBlbmFibGVkIEwyIGNhY2hl
IHdheXMgYXQgcnVudGltZS4NCj4gPg0KPiA+IFNpZ25lZC1vZmYtYnk6IFlhc2ggU2hhaCA8eWFz
aC5zaGFoQHNpZml2ZS5jb20+DQo+ID4gLS0tDQo+ID4gIGFyY2gvcmlzY3YvaW5jbHVkZS9hc20v
c2lmaXZlX2wyX2NhY2hlLmggfCAgMiArKw0KPiA+ICBhcmNoL3Jpc2N2L2tlcm5lbC9jYWNoZWlu
Zm8uYyAgICAgICAgICAgIHwgMzENCj4gKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKw0K
PiA+ICBkcml2ZXJzL3NvYy9zaWZpdmUvc2lmaXZlX2wyX2NhY2hlLmMgICAgIHwgIDUgKysrKysN
Cj4gPiAgMyBmaWxlcyBjaGFuZ2VkLCAzOCBpbnNlcnRpb25zKCspDQo+ID4NCj4gPiBkaWZmIC0t
Z2l0IGEvYXJjaC9yaXNjdi9pbmNsdWRlL2FzbS9zaWZpdmVfbDJfY2FjaGUuaA0KPiA+IGIvYXJj
aC9yaXNjdi9pbmNsdWRlL2FzbS9zaWZpdmVfbDJfY2FjaGUuaA0KPiA+IGluZGV4IDA0ZjY3NDgu
LjIxN2E0MmYgMTAwNjQ0DQo+ID4gLS0tIGEvYXJjaC9yaXNjdi9pbmNsdWRlL2FzbS9zaWZpdmVf
bDJfY2FjaGUuaA0KPiA+ICsrKyBiL2FyY2gvcmlzY3YvaW5jbHVkZS9hc20vc2lmaXZlX2wyX2Nh
Y2hlLmgNCj4gPiBAQCAtMTAsNiArMTAsOCBAQA0KPiA+ICBleHRlcm4gaW50IHJlZ2lzdGVyX3Np
Zml2ZV9sMl9lcnJvcl9ub3RpZmllcihzdHJ1Y3Qgbm90aWZpZXJfYmxvY2sNCj4gPiAqbmIpOyAg
ZXh0ZXJuIGludCB1bnJlZ2lzdGVyX3NpZml2ZV9sMl9lcnJvcl9ub3RpZmllcihzdHJ1Y3QNCj4g
PiBub3RpZmllcl9ibG9jayAqbmIpOw0KPiA+DQo+ID4gK2ludCBzaWZpdmVfbDJfbGFyZ2VzdF93
YXllbmFibGVkKHZvaWQpOw0KPiANCj4gSSB0aG91Z2h0IHRoZSBwbGFuIHdhcyB0byBnZXQgdGhp
cyBzdHVmZiBvdXQgb2YgYXJjaC9yaXNjdj8gIEl0IGxvb2tzIGxpa2UgaXQgb25seQ0KPiBnb3Qg
aGFsZi13YXkgZG9uZS4NCg0KQXJlIHlvdSBzdWdnZXN0aW5nIHRvIG1vdmUgdGhpcyBoZWFkZXIg
ZmlsZSBvdXQgb2YgIi9hcmNoL3Jpc2N2L2luY2x1ZGUvYXNtLyIgdG8gbWF5YmUgImluY2x1ZGUv
c29jL3NpZml2ZS8iPw0KDQotIFlhc2gNCg0K

