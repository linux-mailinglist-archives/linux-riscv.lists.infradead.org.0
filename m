Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A461173F76
	for <lists+linux-riscv@lfdr.de>; Fri, 28 Feb 2020 19:23:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-ID:Content-Type:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=j0h3Ym/yI5RfZEB6Y+W9V8VGyNvlCJFWzzmkq15nu4w=; b=g77WBzkUI5IWawGI09YIhjE4B
	YV4kXL9sAihtkyS8+aueoN65526mOROjRLva80PJ5BqKyrusxNsbQUafJSa3XRY73+hoFDZGM072G
	AtVj/+q3fvDmIJOu2J2nSjJLpAVtUju7Li2zkHZNfiPm7ycVCvZioIwBDnMv7221E7M2yA8tDyD1V
	juEN2VYd09JKxZUUlbR3lFqFY1Ag54rCjSY0jv4SAm+cKOWUAH7cE+P767FXCuwAH37DdW4EiFedR
	raioah5aRoNwyJOCz0BK6COLsoOJ6FM3MitcqqsvzOCjimyauo7kNVjhJmEDU7jU0VF0/eE4g+s8t
	fxkMm/pHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7kIP-0003Js-HI; Fri, 28 Feb 2020 18:23:33 +0000
Received: from esa3.hgst.iphmx.com ([216.71.153.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7kIL-0003JR-AT
 for linux-riscv@lists.infradead.org; Fri, 28 Feb 2020 18:23:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1582914209; x=1614450209;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=j0h3Ym/yI5RfZEB6Y+W9V8VGyNvlCJFWzzmkq15nu4w=;
 b=Pgug1YUeE99TDwXoY7m0yxQtLIiIZ8+nGV0MTePVdZ3nxUb+lyZHy3Zx
 dWLz6/V8Z36uyLdC2SvfrNdhjjbBuPLWoOZO+coCo3cRSluyyiRad95NX
 G8stiKHF1ZgIds2xBy8LLI+QWFEAf3YZMWXtZa9McR5lQNBeH0lMjBlif
 wkPaxH+mlnmc7kgKbgXjq1t9AZ5H9j5n9+QADHIbHgsiPMmm+L2jgimIZ
 JaWT4DgrIp47gx0Ry1Ck2TH718TwpiAK8VERc1Z2AfKGXPuXV8xasO09m
 IpiamSgKAdtruAd5eNWESwTZMyQ67wvSqADHkph5Lqsv60XOnpqHGCIzz A==;
IronPort-SDR: HCG4Y8G9/kRNFMKjxZEnBcqMHtgudRij+mLBlI3AHseZyPs3A6zfiKnSvfOpJtON4Sz5KGAKQV
 7JitLOZ4b+KYABuGg90TNZ4V/q2lTCq3dHad+lJB+Pg0zJY0ayeWz+GVaRtgoY1stfBYnxxgGt
 P1LVa3b3lI9uoS00NrzBhRODuEb3H84aYBGOdqIqNJWiOVVYMsGDzKq3yQbJ/xr3onikIOdLxV
 ThFJqvBj/LWVvqwejXsFCsdVOnhZenjbCTNgUZ/4xb1OFUMix7K6IIspq+706ZzyZtTL7m0y04
 wEQ=
X-IronPort-AV: E=Sophos;i="5.70,497,1574092800"; d="scan'208";a="135422865"
Received: from mail-dm6nam10lp2109.outbound.protection.outlook.com (HELO
 NAM10-DM6-obe.outbound.protection.outlook.com) ([104.47.58.109])
 by ob1.hgst.iphmx.com with ESMTP; 29 Feb 2020 02:23:26 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jKF+HXCe1Hr3a1Ar0fWd3oWFqpgUDM6Hw13peqxTF0PLtGHY9p1si/xcuqeJR3f6RFZQFa90uTcHBXgDhzsyvKEy+EWfb893slI0Tj6iY8H6Q99mNcC76apJhdKCDtwhPq65/mGniGrRvhcNHHa9QhQacq8XgSj5jHifcA0ZSq4EkFjRTvZysJTRsDHMsvoAxaWUD9k6SR9TmafddPtYkoNQqgrB6ZdXDcDkaDLoWvvAdjbe9FJBDBxhkvrRd4/l0UTfc5xgkOfzGkY288o2OL5ROZrq4QJJneG0uAI235Blp/BnmXL+qrYwNEYq8kV0pbWBejkCfhatKWFfT2VMcw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=j0h3Ym/yI5RfZEB6Y+W9V8VGyNvlCJFWzzmkq15nu4w=;
 b=IiOEVkYyCBGZlOfG9p1pu01SHSPEu88yKQq9Tr8Bebw2yrL5q0cV5pwej96mCh8RU7cJ1Kwwh6rKIXPe1Kl4ACRi0fU3E4sVWfdt6JJ+w9jqItLy+WNpns1Q+jsYEmz5VG6lsMhIKY1v2IOd1N+2baL29wAuxDUci12nLDy8VWkV4JteEzzHu4s8e8gV6Xc2ysYKplQvbsaUEu30NIuivHvR2iqiF9BtZ/oZORulFVRv3da9gjYEfV0Twv/cARZ1mkb1LP0KyhS0rKrugpUYUCg7M6hhvhOEg5DleUmbI20voioUU/7Lghn5A/mJgEHU2Saj5eTu3GU6gQiUQGCikA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=j0h3Ym/yI5RfZEB6Y+W9V8VGyNvlCJFWzzmkq15nu4w=;
 b=HRojE8aWeCF8cbTFXTnjer06+5e8rSdBf6tfRR5516EMoZ78tcmsETHfTS6c51Y99eflrsjE3oxXSANmT1ubOpq315Vr29gpsFUj85T4OtPXVvV+FtJiDZ/OejlWroJo5UjvtpZj2zSTi1g+ugi+NSx2BaOq3Ja7E1dM6Mt0KmE=
Received: from BYAPR04MB3990.namprd04.prod.outlook.com (2603:10b6:a02:ae::29)
 by BYAPR04MB5320.namprd04.prod.outlook.com (2603:10b6:a03:c6::32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2750.21; Fri, 28 Feb
 2020 18:23:25 +0000
Received: from BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::ecfa:6b6b:1612:c46e]) by BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::ecfa:6b6b:1612:c46e%6]) with mapi id 15.20.2772.012; Fri, 28 Feb 2020
 18:23:25 +0000
From: Atish Patra <Atish.Patra@wdc.com>
To: "anup@brainfault.org" <anup@brainfault.org>, "palmerdabbelt@google.com"
 <palmerdabbelt@google.com>
Subject: Re: [PATCH] RISC-V: Move all address space definition macros to one
 place
Thread-Topic: [PATCH] RISC-V: Move all address space definition macros to one
 place
Thread-Index: AQHV60l1Ynmf//GryEGHQr4gb9XCAagwAtyAgADu5AA=
Date: Fri, 28 Feb 2020 18:23:24 +0000
Message-ID: <95cd92ce598762402d7da9262060148f0055ca92.camel@wdc.com>
References: <20200224193436.26860-1-atish.patra@wdc.com>
 <CAAhSdy0FH_89dQhWbLJmLsMQV6Lyd8+WE=Ks13Nx88j_dy_b7g@mail.gmail.com>
In-Reply-To: <CAAhSdy0FH_89dQhWbLJmLsMQV6Lyd8+WE=Ks13Nx88j_dy_b7g@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Atish.Patra@wdc.com; 
x-originating-ip: [98.248.240.128]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 12548262-8a12-4992-57b5-08d7bc7b4ccc
x-ms-traffictypediagnostic: BYAPR04MB5320:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR04MB5320788D658D9BB58D5A6C4DFAE80@BYAPR04MB5320.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:4714;
x-forefront-prvs: 0327618309
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(396003)(346002)(366004)(39860400002)(376002)(136003)(189003)(199004)(7416002)(5660300002)(53546011)(66556008)(86362001)(66946007)(76116006)(66476007)(64756008)(6506007)(2616005)(66446008)(26005)(186003)(2906002)(110136005)(54906003)(71200400001)(4326008)(8676002)(36756003)(8936002)(6512007)(6486002)(478600001)(81166006)(81156014)(316002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB5320;
 H:BYAPR04MB3990.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: YfbMBl8CNjCpxHI5rHvRJPEj7V5V+wSI0gWr5FuxJeflprDMjINGDkbniii5trEdZ7HSaFkrVt3QVCFPcctQp8oopTpWdMAXZOSPyVuHTzz392BEohaiPLYthDgwzbOlSWs8aeDa3seeekrcd2wd0tolCMFUL9dB1QmjMlwYVOIKtBSKUaVSRqVKvWFfU+0tHwK0WbhNWXsQEV9c0Rox8Croi7QVto38GtrWrrz0GrbUm2SBsYxfvEEbBt5p7IuwiAwtb22FIP/GI+1DANFhPgFW5tbE8DLzIF6OeHkgK8MuTdf8CPzUcqRyFcRPmPzCrz2uRugif3fml8Oz7QpKx4KW0FJFHS4PS5atis6YYK/bkI5KWcQMznkjxXN0ioIC7Pa0dmOovwWmEk382303LJDmU67sfsFEbBy9HZjnpgfTQ3rj2GsOORRV6JsPfd/8
x-ms-exchange-antispam-messagedata: NhzZPdLaNN6QPa8YXUHuIZilSLgC58+YWNBHI5Cl1neOgg7DsrWix7HdMje4ItLNPwGCjf+vaDm49dJZJRWnj8d7BpqTTOp+a9VQtf6J/YDqjCfodxFBaJuQfpkToQq7w/0skNMPvyuj72P/Huyxmw==
Content-Type: text/plain; charset="utf-8"
Content-ID: <4CCEBDB3F634AD4C917EB1D6B3996845@namprd04.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 12548262-8a12-4992-57b5-08d7bc7b4ccc
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Feb 2020 18:23:25.0004 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Dxw11HfKyDe/bidne5cySAhHEnsA/xHDXmsEUI1TxRbT/GpfGMn4922o8tZro/6LjiIXiVwil2ayXdsizJr93g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB5320
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_102329_476337_F3EF040F 
X-CRM114-Status: GOOD (  24.68  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.141 listed in list.dnswl.org]
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
Cc: "aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>,
 "nickhu@andestech.com" <nickhu@andestech.com>,
 "david.abdurachmanov@gmail.com" <david.abdurachmanov@gmail.com>,
 "bjorn.topel@gmail.com" <bjorn.topel@gmail.com>,
 Anup Patel <Anup.Patel@wdc.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>,
 "rppt@linux.ibm.com" <rppt@linux.ibm.com>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
 "greentime.hu@sifive.com" <greentime.hu@sifive.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "akpm@linux-foundation.org" <akpm@linux-foundation.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

T24gRnJpLCAyMDIwLTAyLTI4IGF0IDA5OjM4ICswNTMwLCBBbnVwIFBhdGVsIHdyb3RlOg0KPiBP
biBUdWUsIEZlYiAyNSwgMjAyMCBhdCAxOjA0IEFNIEF0aXNoIFBhdHJhIDxhdGlzaC5wYXRyYUB3
ZGMuY29tPg0KPiB3cm90ZToNCj4gPiBJZiBib3RoIENPTkZJR19LQVNBTiBhbmQgQ09ORklHX1NQ
QVJTRU1FTV9WTUVNTUFQIGFyZSBzZXQsIHdlIGdldA0KPiA+IHRoZQ0KPiA+IGZvbGxvd2luZyBj
b21waWxhdGlvbiBlcnJvci4NCj4gPiANCj4gPiAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0NCj4gPiAuL2FyY2gvcmlzY3YvaW5j
bHVkZS9hc20vcGd0YWJsZS02NC5oOiBJbiBmdW5jdGlvbiDigJhwdWRfcGFnZeKAmToNCj4gPiAu
L2luY2x1ZGUvYXNtLWdlbmVyaWMvbWVtb3J5X21vZGVsLmg6NTQ6Mjk6IGVycm9yOiDigJh2bWVt
bWFw4oCZDQo+ID4gdW5kZWNsYXJlZA0KPiA+IChmaXJzdCB1c2UgaW4gdGhpcyBmdW5jdGlvbik7
IGRpZCB5b3UgbWVhbiDigJhtZW1fbWFw4oCZPw0KPiA+ICAjZGVmaW5lIF9fcGZuX3RvX3BhZ2Uo
cGZuKSAodm1lbW1hcCArIChwZm4pKQ0KPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
Xn5+fn5+fg0KPiA+IC4vaW5jbHVkZS9hc20tZ2VuZXJpYy9tZW1vcnlfbW9kZWwuaDo4MjoyMTog
bm90ZTogaW4gZXhwYW5zaW9uIG9mDQo+ID4gbWFjcm8g4oCYX19wZm5fdG9fcGFnZeKAmQ0KPiA+
IA0KPiA+ICAjZGVmaW5lIHBmbl90b19wYWdlIF9fcGZuX3RvX3BhZ2UNCj4gPiAgICAgICAgICAg
ICAgICAgICAgICBefn5+fn5+fn5+fn5+DQo+ID4gLi9hcmNoL3Jpc2N2L2luY2x1ZGUvYXNtL3Bn
dGFibGUtNjQuaDo3MDo5OiBub3RlOiBpbiBleHBhbnNpb24gb2YNCj4gPiBtYWNybw0KPiA+IOKA
mHBmbl90b19wYWdl4oCZDQo+ID4gICByZXR1cm4gcGZuX3RvX3BhZ2UocHVkX3ZhbChwdWQpID4+
IF9QQUdFX1BGTl9TSElGVCk7DQo+ID4gLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tDQo+ID4gDQo+ID4gRml4IHRoZSBjb21wbGlh
dGlvbiBlcnJvcnMgYnkgbW92aW5nIGFsbCB0aGUgYWRkcmVzcyBzcGFjZQ0KPiA+IGRlZmluaXRp
b24NCj4gPiBtYWNyb3MgYmVmb3JlIGluY2x1ZGluZyBwZ3RhYmxlLTY0LmguDQo+ID4gDQo+ID4g
Q2M6IHN0YWJsZUB2Z2VyLmtlcm5lbC5vcmcNCj4gPiBGaXhlczogOGFkOGI3MjcyMWQwIChyaXNj
djogQWRkIEtBU0FOIHN1cHBvcnQpDQo+ID4gDQo+ID4gU2lnbmVkLW9mZi1ieTogQXRpc2ggUGF0
cmEgPGF0aXNoLnBhdHJhQHdkYy5jb20+DQo+ID4gLS0tDQo+ID4gIGFyY2gvcmlzY3YvaW5jbHVk
ZS9hc20vcGd0YWJsZS5oIHwgNzggKysrKysrKysrKysrKysrKystLS0tLS0tLS0tLQ0KPiA+IC0t
LS0NCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDQxIGluc2VydGlvbnMoKyksIDM3IGRlbGV0aW9ucygt
KQ0KPiA+IA0KPiA+IGRpZmYgLS1naXQgYS9hcmNoL3Jpc2N2L2luY2x1ZGUvYXNtL3BndGFibGUu
aA0KPiA+IGIvYXJjaC9yaXNjdi9pbmNsdWRlL2FzbS9wZ3RhYmxlLmgNCj4gPiBpbmRleCA0NTNh
ZmIwYTU3MGEuLjRmNmVlNDhhNDJlOCAxMDA2NDQNCj4gPiAtLS0gYS9hcmNoL3Jpc2N2L2luY2x1
ZGUvYXNtL3BndGFibGUuaA0KPiA+ICsrKyBiL2FyY2gvcmlzY3YvaW5jbHVkZS9hc20vcGd0YWJs
ZS5oDQo+ID4gQEAgLTE5LDYgKzE5LDQ3IEBADQo+ID4gICNpbmNsdWRlIDxhc20vdGxiZmx1c2gu
aD4NCj4gPiAgI2luY2x1ZGUgPGxpbnV4L21tX3R5cGVzLmg+DQo+ID4gDQo+ID4gKyNpZmRlZiBD
T05GSUdfTU1VDQo+ID4gKw0KPiA+ICsjZGVmaW5lIFZNQUxMT0NfU0laRSAgICAgKEtFUk5fVklS
VF9TSVpFID4+IDEpDQo+ID4gKyNkZWZpbmUgVk1BTExPQ19FTkQgICAgICAoUEFHRV9PRkZTRVQg
LSAxKQ0KPiA+ICsjZGVmaW5lIFZNQUxMT0NfU1RBUlQgICAgKFBBR0VfT0ZGU0VUIC0gVk1BTExP
Q19TSVpFKQ0KPiA+ICsNCj4gPiArI2RlZmluZSBCUEZfSklUX1JFR0lPTl9TSVpFICAgIChTWl8x
MjhNKQ0KPiA+ICsjZGVmaW5lIEJQRl9KSVRfUkVHSU9OX1NUQVJUICAgKFBBR0VfT0ZGU0VUIC0g
QlBGX0pJVF9SRUdJT05fU0laRSkNCj4gPiArI2RlZmluZSBCUEZfSklUX1JFR0lPTl9FTkQgICAg
IChWTUFMTE9DX0VORCkNCj4gPiArDQo+ID4gKy8qDQo+ID4gKyAqIFJvdWdobHkgc2l6ZSB0aGUg
dm1lbW1hcCBzcGFjZSB0byBiZSBsYXJnZSBlbm91Z2ggdG8gZml0IGVub3VnaA0KPiA+ICsgKiBz
dHJ1Y3QgcGFnZXMgdG8gbWFwIGhhbGYgdGhlIHZpcnR1YWwgYWRkcmVzcyBzcGFjZS4gVGhlbg0K
PiA+ICsgKiBwb3NpdGlvbiB2bWVtbWFwIGRpcmVjdGx5IGJlbG93IHRoZSBWTUFMTE9DIHJlZ2lv
bi4NCj4gPiArICovDQo+ID4gKyNkZWZpbmUgVk1FTU1BUF9TSElGVCBcDQo+ID4gKyAgICAgICAo
Q09ORklHX1ZBX0JJVFMgLSBQQUdFX1NISUZUIC0gMSArIFNUUlVDVF9QQUdFX01BWF9TSElGVCkN
Cj4gPiArI2RlZmluZSBWTUVNTUFQX1NJWkUgICBCSVQoVk1FTU1BUF9TSElGVCkNCj4gPiArI2Rl
ZmluZSBWTUVNTUFQX0VORCAgICAoVk1BTExPQ19TVEFSVCAtIDEpDQo+ID4gKyNkZWZpbmUgVk1F
TU1BUF9TVEFSVCAgKFZNQUxMT0NfU1RBUlQgLSBWTUVNTUFQX1NJWkUpDQo+ID4gKw0KPiA+ICsv
Kg0KPiA+ICsgKiBEZWZpbmUgdm1lbW1hcCBmb3IgcGZuX3RvX3BhZ2UgJiBwYWdlX3RvX3BmbiBj
YWxscy4gTmVlZGVkIGlmDQo+ID4ga2VybmVsDQo+ID4gKyAqIGlzIGNvbmZpZ3VyZWQgd2l0aCBD
T05GSUdfU1BBUlNFTUVNX1ZNRU1NQVAgZW5hYmxlZC4NCj4gPiArICovDQo+ID4gKyNkZWZpbmUg
dm1lbW1hcCAgICAgICAgICAgICAgICAoKHN0cnVjdCBwYWdlICopVk1FTU1BUF9TVEFSVCkNCj4g
PiArDQo+ID4gKyNkZWZpbmUgUENJX0lPX1NJWkUgICAgICBTWl8xNk0NCj4gPiArI2RlZmluZSBQ
Q0lfSU9fRU5EICAgICAgIFZNRU1NQVBfU1RBUlQNCj4gPiArI2RlZmluZSBQQ0lfSU9fU1RBUlQg
ICAgIChQQ0lfSU9fRU5EIC0gUENJX0lPX1NJWkUpDQo+ID4gKw0KPiA+ICsjZGVmaW5lIEZJWEFE
RFJfVE9QICAgICAgUENJX0lPX1NUQVJUDQo+ID4gKyNpZmRlZiBDT05GSUdfNjRCSVQNCj4gPiAr
I2RlZmluZSBGSVhBRERSX1NJWkUgICAgIFBNRF9TSVpFDQo+ID4gKyNlbHNlDQo+ID4gKyNkZWZp
bmUgRklYQUREUl9TSVpFICAgICBQR0RJUl9TSVpFDQo+ID4gKyNlbmRpZg0KPiA+ICsjZGVmaW5l
IEZJWEFERFJfU1RBUlQgICAgKEZJWEFERFJfVE9QIC0gRklYQUREUl9TSVpFKQ0KPiA+ICsNCj4g
PiArI2VuZGlmDQo+ID4gKw0KPiA+ICAjaWZkZWYgQ09ORklHXzY0QklUDQo+ID4gICNpbmNsdWRl
IDxhc20vcGd0YWJsZS02NC5oPg0KPiA+ICAjZWxzZQ0KPiA+IEBAIC05MCwzMSArMTMxLDYgQEAg
ZXh0ZXJuIHBnZF90IHN3YXBwZXJfcGdfZGlyW107DQo+ID4gICNkZWZpbmUgX19TMTEwIFBBR0Vf
U0hBUkVEX0VYRUMNCj4gPiAgI2RlZmluZSBfX1MxMTEgUEFHRV9TSEFSRURfRVhFQw0KPiA+IA0K
PiA+IC0jZGVmaW5lIFZNQUxMT0NfU0laRSAgICAgKEtFUk5fVklSVF9TSVpFID4+IDEpDQo+ID4g
LSNkZWZpbmUgVk1BTExPQ19FTkQgICAgICAoUEFHRV9PRkZTRVQgLSAxKQ0KPiA+IC0jZGVmaW5l
IFZNQUxMT0NfU1RBUlQgICAgKFBBR0VfT0ZGU0VUIC0gVk1BTExPQ19TSVpFKQ0KPiA+IC0NCj4g
PiAtI2RlZmluZSBCUEZfSklUX1JFR0lPTl9TSVpFICAgIChTWl8xMjhNKQ0KPiA+IC0jZGVmaW5l
IEJQRl9KSVRfUkVHSU9OX1NUQVJUICAgKFBBR0VfT0ZGU0VUIC0gQlBGX0pJVF9SRUdJT05fU0la
RSkNCj4gPiAtI2RlZmluZSBCUEZfSklUX1JFR0lPTl9FTkQgICAgIChWTUFMTE9DX0VORCkNCj4g
PiAtDQo+ID4gLS8qDQo+ID4gLSAqIFJvdWdobHkgc2l6ZSB0aGUgdm1lbW1hcCBzcGFjZSB0byBi
ZSBsYXJnZSBlbm91Z2ggdG8gZml0IGVub3VnaA0KPiA+IC0gKiBzdHJ1Y3QgcGFnZXMgdG8gbWFw
IGhhbGYgdGhlIHZpcnR1YWwgYWRkcmVzcyBzcGFjZS4gVGhlbg0KPiA+IC0gKiBwb3NpdGlvbiB2
bWVtbWFwIGRpcmVjdGx5IGJlbG93IHRoZSBWTUFMTE9DIHJlZ2lvbi4NCj4gPiAtICovDQo+ID4g
LSNkZWZpbmUgVk1FTU1BUF9TSElGVCBcDQo+ID4gLSAgICAgICAoQ09ORklHX1ZBX0JJVFMgLSBQ
QUdFX1NISUZUIC0gMSArIFNUUlVDVF9QQUdFX01BWF9TSElGVCkNCj4gPiAtI2RlZmluZSBWTUVN
TUFQX1NJWkUgICBCSVQoVk1FTU1BUF9TSElGVCkNCj4gPiAtI2RlZmluZSBWTUVNTUFQX0VORCAg
ICAoVk1BTExPQ19TVEFSVCAtIDEpDQo+ID4gLSNkZWZpbmUgVk1FTU1BUF9TVEFSVCAgKFZNQUxM
T0NfU1RBUlQgLSBWTUVNTUFQX1NJWkUpDQo+ID4gLQ0KPiA+IC0vKg0KPiA+IC0gKiBEZWZpbmUg
dm1lbW1hcCBmb3IgcGZuX3RvX3BhZ2UgJiBwYWdlX3RvX3BmbiBjYWxscy4gTmVlZGVkIGlmDQo+
ID4ga2VybmVsDQo+ID4gLSAqIGlzIGNvbmZpZ3VyZWQgd2l0aCBDT05GSUdfU1BBUlNFTUVNX1ZN
RU1NQVAgZW5hYmxlZC4NCj4gPiAtICovDQo+ID4gLSNkZWZpbmUgdm1lbW1hcCAgICAgICAgICAg
ICAgICAoKHN0cnVjdCBwYWdlICopVk1FTU1BUF9TVEFSVCkNCj4gPiAtDQo+ID4gIHN0YXRpYyBp
bmxpbmUgaW50IHBtZF9wcmVzZW50KHBtZF90IHBtZCkNCj4gPiAgew0KPiA+ICAgICAgICAgcmV0
dXJuIChwbWRfdmFsKHBtZCkgJiAoX1BBR0VfUFJFU0VOVCB8IF9QQUdFX1BST1RfTk9ORSkpOw0K
PiA+IEBAIC00NTIsMTggKzQ2OCw2IEBAIHN0YXRpYyBpbmxpbmUgaW50DQo+ID4gcHRlcF9jbGVh
cl9mbHVzaF95b3VuZyhzdHJ1Y3Qgdm1fYXJlYV9zdHJ1Y3QgKnZtYSwNCj4gPiAgI2RlZmluZSBf
X3B0ZV90b19zd3BfZW50cnkocHRlKSAgICAgICAgKChzd3BfZW50cnlfdCkgew0KPiA+IHB0ZV92
YWwocHRlKSB9KQ0KPiA+ICAjZGVmaW5lIF9fc3dwX2VudHJ5X3RvX3B0ZSh4KSAgKChwdGVfdCkg
eyAoeCkudmFsIH0pDQo+ID4gDQo+ID4gLSNkZWZpbmUgUENJX0lPX1NJWkUgICAgICBTWl8xNk0N
Cj4gPiAtI2RlZmluZSBQQ0lfSU9fRU5EICAgICAgIFZNRU1NQVBfU1RBUlQNCj4gPiAtI2RlZmlu
ZSBQQ0lfSU9fU1RBUlQgICAgIChQQ0lfSU9fRU5EIC0gUENJX0lPX1NJWkUpDQo+ID4gLQ0KPiA+
IC0jZGVmaW5lIEZJWEFERFJfVE9QICAgICAgUENJX0lPX1NUQVJUDQo+ID4gLSNpZmRlZiBDT05G
SUdfNjRCSVQNCj4gPiAtI2RlZmluZSBGSVhBRERSX1NJWkUgICAgIFBNRF9TSVpFDQo+ID4gLSNl
bHNlDQo+ID4gLSNkZWZpbmUgRklYQUREUl9TSVpFICAgICBQR0RJUl9TSVpFDQo+ID4gLSNlbmRp
Zg0KPiA+IC0jZGVmaW5lIEZJWEFERFJfU1RBUlQgICAgKEZJWEFERFJfVE9QIC0gRklYQUREUl9T
SVpFKQ0KPiA+IC0NCj4gPiAgLyoNCj4gPiAgICogVGFzayBzaXplIGlzIDB4NDAwMDAwMDAwMCBm
b3IgUlY2NCBvciAweDlmYzAwMDAwIGZvciBSVjMyLg0KPiA+ICAgKiBOb3RlIHRoYXQgUEdESVJf
U0laRSBtdXN0IGV2ZW5seSBkaXZpZGUgVEFTS19TSVpFLg0KPiA+IC0tDQo+ID4gMi4yNS4wDQo+
ID4gDQo+IA0KPiBMb29rcyBnb29kIHRvIG1lLiBBdCBsZWFzdCBub3cgYWxsIHZpcnR1YWwgbWVt
b3J5IGxheW91dCByZWxhdGVkDQo+IGRlZmluZXMgYXJlIGluIG9uZSBwbGFjZS4NCj4gDQo+IFJl
dmlld2VkLWJ5OiBBbnVwIFBhdGVsIDxhbnVwQGJyYWluZmF1bHQub3JnPg0KPiANCj4gUmVnYXJk
cywNCj4gQW51cA0KPiANCg0KSGkgUGFsbWVyLA0KSSB0aGluayB0aGlzIHBhdGNoIGlzIGEgUkMg
Y2FuZGlkYXRlLiBDYW4gdGhpcyBiZSBpbmNsdWRlZCBpbiBuZXh0IFBSID8NCg0KLS0gDQpSZWdh
cmRzLA0KQXRpc2gNCg==

