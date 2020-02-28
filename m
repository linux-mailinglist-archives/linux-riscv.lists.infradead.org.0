Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C7F2174014
	for <lists+linux-riscv@lfdr.de>; Fri, 28 Feb 2020 20:03:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-ID:Content-Type:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=QKFNgn/08Bf8rn8ZePMHJ0UHB3SKvgRw+Q3FGsM4I3Q=; b=Mg2Ak2HxOMKnQ7WiydNnLP3H2
	a6pH79V7HBOF9vLC1B9qnkdtivxZ8uTS/uOJ6k+m/s/TpIELr+A+Qz1es8b7fLI7WXeBUutKguudB
	S+OB8W8KRLaarh5ZIZEj2bM+kkKwhiw14ouPth9Z53QPGmJ7QFE5BbLxnj4+0dbriNiqkNRIb/m/u
	w2W+BboqEkYCuRMKICgkeLaHZPYVmSKQObxwkD/7JcRYhMSDQksdCw7aqiXoiZ0Jezdgv/hHULw8w
	//UywnrqNyM57yAudBAoF/hNU1IQ0Nxlyw/vvziadcyKnfp0gORIGxz8KSDsFC/3a0fmg1GVEIr+m
	fVSgfioPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7kuj-0000sq-HB; Fri, 28 Feb 2020 19:03:09 +0000
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7kug-0000sK-9x
 for linux-riscv@lists.infradead.org; Fri, 28 Feb 2020 19:03:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1582916586; x=1614452586;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=QKFNgn/08Bf8rn8ZePMHJ0UHB3SKvgRw+Q3FGsM4I3Q=;
 b=IqaH4d/2GFk3ETyKIf50Ickntqwp48dHymqvzRjVuqaLqyMr6RC10ORm
 58zL+w+aHS7q9BfIN34ww/qA5q5sdMR5PDbvnIu1xjcPGR5UZDsBP6ZHP
 bpwSGDUkZNEyg1ygMEuhKduJPUsOSWzXmOIzz3RQXwhmqplPUMSVysvIf
 jDdh2aN4Hb2n0W275g0i6ysbvzLeZFDpUpf7CTcT7PE6JUiMTMz6k58bl
 o6tPsQonKctKAHENz064cmYNlmmW0ngOvfgioihgcuFHtSBbA+K43Xjja
 4jFjrbEl+JqtYIHmuTJelxxJgI2RETKSjhLgc4BbGykw+L04wFdM9KrL4 A==;
IronPort-SDR: Slbb9UafPfv6qMOWOsZI39UUhvOBvORQp6183RRGkvEwWxJ3HbxZxbgPpA4MQjjWchYv2SJvdW
 j4yPlg12vuZL/AnJLY2NMlFLHs0JdM5j7fddv8kubnGrJiY08CRjnETRwAbNSXVA2O5QJ2AP1r
 RR6MhwUQdvfmv0o1CcNZlW6loZ21pUk9SsMisavVqdSOdk6euXZnr3GN1b7F8ZCzcF4SrtWAAa
 UgAVq0lmXUM5u3TC/fLWjCJ/QcIkr6/a0s1ozULbqMStuD3HNxzfiA53NoDSbBCqQME7MUbu7Q
 RiA=
X-IronPort-AV: E=Sophos;i="5.70,497,1574092800"; d="scan'208";a="131543172"
Received: from mail-sn1nam04lp2053.outbound.protection.outlook.com (HELO
 NAM04-SN1-obe.outbound.protection.outlook.com) ([104.47.44.53])
 by ob1.hgst.iphmx.com with ESMTP; 29 Feb 2020 03:03:03 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=O3WZhDMIYVfHoczFoeMdHdGM1+/p+g4nsZ2/VZt2EL82aT70PQgkXgzVgLQ8CaNiWpxXKNn4jWb6Y/7ksDhlIbI89PdNcYCUYBrTGmvjuw7h5mVr+5KM2eKUJbnoVPuETPjfAWCiN2bwbA75q45OnekQJJ0obV27Ge1SWFFgiJ1B8ezcYfg03IqGE64oJl2JpUjhMrpdI2Nqj8NXJaqPlz8VxMAUgO7tQmcNSDfjubGik3VXHcr33TKGrsHrCs73uGzCeTQK8yRyyf6cn8Y/LkFC3LjOjYp0lCvOlba7RZ8Nglbv6THSEyhphO+6eakHmW3J5HombFJINxv5E4EdLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QKFNgn/08Bf8rn8ZePMHJ0UHB3SKvgRw+Q3FGsM4I3Q=;
 b=TYTpbitUurZpLAlPMuW63560ckznyBAYd9hzdv0Baku3wd+qBfL5MCvgHGK92Y4gQZg2YeGdGrsfff2Ls+W0wK5kF3MzVxABmthiNWxdmeyU5IClaqCCbefcAdwrcp3OkDcUY+ELwnVa4YMU1jg+7wE+5JqVJcAtgVtvCw56zaIVDbVJCKWhtgosaahclF3REHj0Af7jggLqJzr7BK4lQJsQ7m9XH0/qTnSzdiIfF1QfhOyEvUUR/qoNf/F8xXp3vtuJxBS0I2W14eJT5YRMqvwNxvLr55mSnvi1xcyg12194//pcPbBIk7assXBaPfDFlUQ/sLxSE3DvDe5/cpCPQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QKFNgn/08Bf8rn8ZePMHJ0UHB3SKvgRw+Q3FGsM4I3Q=;
 b=jv712IdW61h7mrtbnowO+RYNN4x68dkpqj797P81A/ZGM5FCRFlamKyagsLaWLrexD0YUAClPMr/4CeZzkXuT+8hShPgQ228hXs+276iC7I+AAJrghhsz4YwoqNW932hNLajsdYGhGXttk56bcN6tLnuFUSHiRaE9vCIlIhGsik=
Received: from BYAPR04MB3990.namprd04.prod.outlook.com (2603:10b6:a02:ae::29)
 by BYAPR04MB3894.namprd04.prod.outlook.com (2603:10b6:a02:b4::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2772.18; Fri, 28 Feb
 2020 19:03:00 +0000
Received: from BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::ecfa:6b6b:1612:c46e]) by BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::ecfa:6b6b:1612:c46e%6]) with mapi id 15.20.2772.012; Fri, 28 Feb 2020
 19:03:00 +0000
From: Atish Patra <Atish.Patra@wdc.com>
To: "maz@kernel.org" <maz@kernel.org>
Subject: Re: [v2 PATCH] irqchip/sifive-plic: Add support for multiple PLICs
Thread-Topic: [v2 PATCH] irqchip/sifive-plic: Add support for multiple PLICs
Thread-Index: AQHV6Q3tn8hvurxLp0+iAdxe4kYX3Kgw/rKAgAAClIA=
Date: Fri, 28 Feb 2020 19:03:00 +0000
Message-ID: <39c1cd2c80d67b8b39fe6e2f867e65fd2d42f6d6.camel@wdc.com>
References: <20200221232246.9176-1-atish.patra@wdc.com>
 <6a1320aed9609788ccb61d6c66d670bb@kernel.org>
In-Reply-To: <6a1320aed9609788ccb61d6c66d670bb@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Atish.Patra@wdc.com; 
x-originating-ip: [199.255.44.250]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 1ce6b8ce-ec5f-49c5-8c7b-08d7bc80d4af
x-ms-traffictypediagnostic: BYAPR04MB3894:
x-microsoft-antispam-prvs: <BYAPR04MB38945682FB9ACE23F7A3C8E9FAE80@BYAPR04MB3894.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0327618309
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(39860400002)(136003)(376002)(346002)(396003)(366004)(189003)(199004)(2906002)(6916009)(71200400001)(5660300002)(186003)(81156014)(4326008)(6512007)(8936002)(81166006)(8676002)(26005)(86362001)(6486002)(36756003)(316002)(478600001)(966005)(66946007)(53546011)(6506007)(66556008)(64756008)(66446008)(66476007)(2616005)(54906003)(76116006);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB3894;
 H:BYAPR04MB3990.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:3; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: QMEPp1WU+dS+HuxLzXz0yxFr+skMfFiUBKQa4+qqyP1S7+tPVqmbYmVXb6kcADzBauwjuzTA18uikZnxALFJuxSOnPQJ/FIMOzFKsGM3iBID/O58qco0nZ95FDWq4RlDlKCQDXV0b/qMFkC/JSkJYjLnGC77EIwRZ+4oPCXtoX/dwi6X7lIFbOyTkMNY8xWhKR53nGWna18WoKE/5XiOu80HjNqup/W1i8PlNOXE3YIpqsbMRy+pqbu6cJhprohjc1tcL987QtGkMXcUIRJV84qC2XWCliGnJGkYebvDlZsswoiGZvDEyA5/3HbouI3wnk7P/f7wifshA0h8ehEVOuhLYpi2t1+4TykxJjK2/ZDEq2gzfv1HuBnY4KDEpdLWPGUsO4sFmiSEgovBkqcQAzgOe4RhovRDeuxGCFX5DJ/RDpB7Y4405eiUpPyMiew0zPVo6TUgcjH3n47hhZdYgOWkBzX9vynDawdoAh6f2BaGytRHDPxkLdSwmht+4LMvifYgeyOhwRqZPeNxEcn/Ag==
x-ms-exchange-antispam-messagedata: ekg3Ra3t/FSEzJiDeYTjqLEIRNZZqPvLTrgsene6ErI8eEbDLt/zQwHwT2l16D/v13HkYQ3dhkhzF15OS1MxyYOQJ/uhWi3rTQwRw9KDeqHHTnikqezbCk2iN4iqmzqXWUg2rcduOYY7jGKxIRmdLQ==
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="utf-8"
Content-ID: <9D5AC372C6297F43917DE3076CECA168@namprd04.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1ce6b8ce-ec5f-49c5-8c7b-08d7bc80d4af
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Feb 2020 19:03:00.4915 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9lYOcDvXA2H8bKHf0TnYWZMqUxM9AFajEFay1Ifdt0hhz5Z2JzyVDoePHXHHz2uJ2wd3rrmOaOI2eD3l8leXLA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB3894
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_110306_361388_B5FD6D5F 
X-CRM114-Status: GOOD (  16.43  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.144 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "jason@lakedaemon.net" <jason@lakedaemon.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "palmer@dabbelt.com" <palmer@dabbelt.com>,
 "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "tglx@linutronix.de" <tglx@linutronix.de>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

T24gRnJpLCAyMDIwLTAyLTI4IGF0IDE4OjUzICswMDAwLCBNYXJjIFp5bmdpZXIgd3JvdGU6DQo+
IE9uIDIwMjAtMDItMjEgMjM6MjIsIEF0aXNoIFBhdHJhIHdyb3RlOg0KPiA+IEN1cnJlbnQsIFBM
SUMgZHJpdmVyIGNhbiBzdXBwb3J0IG9ubHkgMSBQTElDIG9uIHRoZSBib2FyZC4gSG93ZXZlciwN
Cj4gPiB0aGVyZSBjYW4gYmUgbXVsdGlwbGUgUExJQ3MgcHJlc2VudCBvbiBhIHR3byBzb2NrZXQg
c3lzdGVtcyBpbg0KPiA+IFJJU0MtVi4NCj4gPiANCj4gPiBNb2RpZnkgdGhlIGRyaXZlciBzbyB0
aGF0IGVhY2ggUExJQyBoYW5kbGVyIGNhbiBoYXZlIGEgaW5mb3JtYXRpb24NCj4gPiBhYm91dCBp
bmRpdmlkdWFsIFBMSUMgcmVnaXN0ZXJzIGFuZCBhbiBpcnFkb21haW4gYXNzb2NpYXRlZCB3aXRo
DQo+ID4gaXQuDQo+ID4gDQo+ID4gVGVzdGVkIG9uIHR3byBzb2NrZXQgUklTQy1WIHN5c3RlbSBi
YXNlZCBvbiBWQ1UxMTggRlBHQSBjb25uZWN0ZWQNCj4gPiB2aWENCj4gPiBPbW5pWHRlbmQgcHJv
dG9jb2wuDQo+ID4gDQo+ID4gU2lnbmVkLW9mZi1ieTogQXRpc2ggUGF0cmEgPGF0aXNoLnBhdHJh
QHdkYy5jb20+DQo+ID4gLS0tDQo+ID4gVGhpcyBwYXRjaCBpcyByZWJhc2VkIG9uIHRvcCBvZiA1
LjYtcmMyIGFuZCBmb2xsb3dpbmcgcGxpYyBmaXggZnJvbQ0KPiA+IGhvdHBsdWcgc2VyaWVzLg0K
PiA+IA0KPiA+IGh0dHBzOi8vbGttbC5vcmcvbGttbC8yMDIwLzIvMjAvMTIyMA0KPiANCj4gSG93
IGRvIHlvdSB3YW50IHRoaXMgdG8gYmUgbWVyZ2VkPyBJIGhhdmVuJ3QgcmVhbGx5IGZvbGxvd2Vk
IHRoZQ0KPiBob3RwbHVnDQo+IHNlcmllcywgYnV0IGdpdmVuIHRoYXQgdGhpcyBpcyBhIHByZXR0
eSBzaW1wbGUgcGF0Y2gsIEknZCByYXRoZXINCj4gaGF2ZSANCj4gdGhpbmdzDQo+IGJhc2VkIHRo
ZSBvdGhlciB3YXkgYXJvdW5kIHNvIHRoYXQgaXQgY2FuIGJlIG1lcmdlZCBpbmRlcGVuZGVudGx5
Lg0KPiANCkkgYW0gZmluZSB3aXRoIHRoYXQgb3INCg0KSSBjYW4gcmVtb3ZlIHRoZSBQTElDIHBh
dGNoIGZyb20gdGhlIGhvdHBsdWcgc2VyaWVzIGFuZCBpbmNsdWRlIHRoaXMNCnNlcmllcyBhcyB0
aGF0IHBhdGNoIGlzIG5vdCByZWFsbHkgZGVwZW5kYW50IG9uIGhvdHBsdWcgY29kZS4NCg0KaHR0
cHM6Ly9wYXRjaHdvcmsua2VybmVsLm9yZy9wYXRjaC8xMTQwNzM3OS8NCg0KTGV0IG1lIGtub3cg
d2hhdCBkbyB5b3UgcHJlZmVyLg0KDQo+IFRoYW5rcywNCj4gDQo+ICAgICAgICAgIE0uDQoNCi0t
IA0KUmVnYXJkcywNCkF0aXNoDQo=

