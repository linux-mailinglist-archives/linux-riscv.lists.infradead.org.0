Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 480421135F5
	for <lists+linux-riscv@lfdr.de>; Wed,  4 Dec 2019 20:51:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-ID:Content-Type:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Q/ttqgCUDIn4Ni9tIvg01TDSWBHX2UymwKb5/ZnV8fo=; b=bULI2unxZXto6i27g4nFn52JR
	2hfJoVrR6JeIopHnvWITnxPBLWpOGIGmFk+8w/DhviGmLvyXTRBIkEHN049bzl3cQ4Ux8aR9SXDi4
	N7MQBLoLcpSznrlUkbrFFMGUGZGAtt8BRWQoU1MhKM76YT7d1vYYcjgIdy+HtlAhWbpTn64Emt8Ml
	rbyLQiuZ7in7yiOmH/aS1OHNR9TtTR9x1ZW6m/5Fa53hiCDfVn634NM/YGuHhBPZFbxzX2ZR9YBos
	UYx2X565T0Jbf0CQaKm7KIhbdUHzKkjmYJhc1bu3zuOLeQ+ZxdWWaFpw516R3dDxH4hPTrAWAx8uq
	z8GOTYDIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icafs-0007EF-R8; Wed, 04 Dec 2019 19:51:00 +0000
Received: from esa3.hgst.iphmx.com ([216.71.153.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icafo-0007Dj-NK
 for linux-riscv@lists.infradead.org; Wed, 04 Dec 2019 19:50:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1575489057; x=1607025057;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=Q/ttqgCUDIn4Ni9tIvg01TDSWBHX2UymwKb5/ZnV8fo=;
 b=I4StuuMFmTHKOuQLbC3h4KE4025UWZFlBdmPN9vqecHTH15xpLP/Yjoe
 RCJCX0KHQOglroKozOmgjvdbojdHumwHoB14daEolN45XdS943ToUnEa2
 +44EEp3qrGfmb+7BqLyCUN9yFN2FKULkp6EcR2kfXM6ssHzHMHrf/EjNt
 9VFJnwbX4jBO3RTrjeuUdu2m0Zlyx5MosxCYjI+yMuwleKyk6V5L2JNzF
 vKrXfhGP7SXd9caS2QJQMjKS2o/adOqZW59rN9xNffbYix9IwV/VltCjd
 NgkOa2IMIDs1FhgaE0e4zJ/U6x2rVxY+6tlqzGNeXccdRzNKoIsjzhRLx A==;
IronPort-SDR: k7rl46+rpN5tDmhLVmG1YaHwX0y4cfnqs9IiciAbQhacScPvcx/RV7nZtJ7rqbbHsBcNYb9o2b
 G3yN+OPu7Yqf9Up4Aq5GMx8qQDhpgOt+FjQFFQn1391JVUP2fW08HbLmB/ETBpngy8kraTGpWr
 0timV2EotBICgn7H1gWv06zkcnJaRA25ZJJaiTNPF5RVJvpD/2bZekvm5YnQHRMwgMN2skfPju
 VmPfc2owSAd7ceHFDxCkAoXon9Gk+UKfxpuuvz0DEwb6PntI8DNP3wtnr/Prj2FxUORevEv/Xw
 xhE=
X-IronPort-AV: E=Sophos;i="5.69,278,1571673600"; d="scan'208";a="129065465"
Received: from mail-sn1nam02lp2056.outbound.protection.outlook.com (HELO
 NAM02-SN1-obe.outbound.protection.outlook.com) ([104.47.36.56])
 by ob1.hgst.iphmx.com with ESMTP; 05 Dec 2019 03:50:55 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=az4T0wcJNiPJRGok+NQpK10T+cuDsp2rDhW2aB54NJTIP7ANCZt6SO1qYG+EoS1FRFg0jede176czJFn8/XcnZaN+xbCCNS3Wn/d+9s/xRIxMWaqPGPge5xMPKdajfy4KIAUSasIPbeJlb+VVNyyzYGwJrziLAj+yxBHCP8cR/fKROhHKa3Tzhzc5v0MFdswarSEsdimMurYAithp2ez/lNnB5bC1JnjOpmsMc66ZKcB+fICXyxZ4r2IjqIexJdiY4REE4mszrQE6vFJH91P7343CXP51xQTpK32rJs/kDs642DnEylYnlgBiIyYo9147v2SMjbzqefy9NFVRrQGsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Q/ttqgCUDIn4Ni9tIvg01TDSWBHX2UymwKb5/ZnV8fo=;
 b=kpmTK8lFKlPCMfCn8P+2KBm8sbpbAeYK14akg+lbw8xwos2A4o9hjteg3G3NyEFHWkoHKIuF3D5GH0Gja1Cd4xYxFeykmQyftl56TO/B4UmbJERCJgzK/9aMWQguuTimDKSbaQvg6iJ4JKTHSR2FpcFvQCgK8M7hcMNCqrPrDR4wHQbWQI3xtOTSDdr/vGZW0QnM2jyibp3FxJrkSf3tvgI3qNtd6xGWrbN3odDH88frwrJC4Te+H/77xvovjkaYXjyqPJ8mKmt/Jks2Rtrdkq482pE6EOxHEq0xVjGZEjzPXuMlsIiAqBfLiWRPtfy6dgJhVsA0xaBeFi6U0+IMWw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Q/ttqgCUDIn4Ni9tIvg01TDSWBHX2UymwKb5/ZnV8fo=;
 b=oOzRu0CxgHIvwtaS7jlgyiq8HUJUg9K0XEZ+vR/aTSmSz/xy+htBpl4Bf90uJW5SiRuHAq4LlSo43gLnIuL49PlhZ4qKswa2KgAs1ylnPFExSti0yFIYuSxZWFx8/tQ4oGwMloo8IwWDuGYQD3kPGZldSO2zT7SbGzxny1wXwD8=
Received: from BYAPR04MB4901.namprd04.prod.outlook.com (52.135.232.206) by
 BYAPR04MB5815.namprd04.prod.outlook.com (20.179.56.213) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2516.12; Wed, 4 Dec 2019 19:50:53 +0000
Received: from BYAPR04MB4901.namprd04.prod.outlook.com
 ([fe80::545f:1547:d48a:7fbc]) by BYAPR04MB4901.namprd04.prod.outlook.com
 ([fe80::545f:1547:d48a:7fbc%7]) with mapi id 15.20.2516.014; Wed, 4 Dec 2019
 19:50:53 +0000
From: Alistair Francis <Alistair.Francis@wdc.com>
To: "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>
Subject: Re: [GIT PULL] Second set of RISC-V updates for v5.5-rc1
Thread-Topic: [GIT PULL] Second set of RISC-V updates for v5.5-rc1
Thread-Index: AQHVqoAixayXodMShUatl8RuOOpeiKep7kMAgABfWICAABJLgIAAAdGA
Date: Wed, 4 Dec 2019 19:50:53 +0000
Message-ID: <81530734312456aab8b9625d7e9bb071c43db1c5.camel@wdc.com>
References: <alpine.DEB.2.21.9999.1912040050430.56420@viisi.sifive.com>
 <CAAhSdy2id0FoLBxWwN7WHEk5Am770BizkK=sZO0-G54MtYa6DQ@mail.gmail.com>
 <9044bad02aa6553cdb2523294500b50fccf3fd2a.camel@wdc.com>
 <alpine.DEB.2.21.9999.1912041128400.186402@viisi.sifive.com>
In-Reply-To: <alpine.DEB.2.21.9999.1912041128400.186402@viisi.sifive.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Alistair.Francis@wdc.com; 
x-originating-ip: [199.255.44.250]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 6365b276-9260-4a24-9af1-08d778f3459c
x-ms-traffictypediagnostic: BYAPR04MB5815:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR04MB581588FF345E2B9F134D08C8905D0@BYAPR04MB5815.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0241D5F98C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(346002)(376002)(136003)(39860400002)(366004)(396003)(189003)(199004)(64756008)(71200400001)(66446008)(71190400001)(14444005)(66556008)(99286004)(316002)(86362001)(6506007)(11346002)(2501003)(186003)(81156014)(7736002)(66476007)(76176011)(102836004)(26005)(81166006)(76116006)(8676002)(66946007)(2616005)(478600001)(25786009)(118296001)(6246003)(6916009)(2351001)(4326008)(8936002)(6512007)(5660300002)(54906003)(36756003)(6116002)(14454004)(6436002)(305945005)(2906002)(6486002)(5640700003)(229853002)(3846002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB5815;
 H:BYAPR04MB4901.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: dH7ljEH/CafHCGWz/ltJYwEAdfct4YA33srSPcqxB/LIx8dXFnoy5a0K1T+jB//IcpkiWsRJb+WKHhrgNS5/ACjl5jv7+ccoL6qL/3Zi495nXxVwwIoAVIIx7EzpYgA8F9H9t1ND+JIdEQnUyNbyMYU3eUG1kZNCPoWIDCjhNRdAvP89aQsGs+ETa4l8dvgvIu5CzpBO9RLmY5lSG4ArHbdXA7uuu1/r+2Mx0fCNv5c7BHZRDkB2BxjtvB/wMrTN2+hsLffGSrEx++QhInIuY0ojR9RCjBaByYh4zJIeRWtf5hEJGyg5t+1mutO/g0ZMV59/ZB28886zhTn6s0o9qgnJ0Kna+tYhW7/cxvLrV2VLSTSy+iF/DiYo4VxLNsG6bIf5exASIEPJAjP7qI/ouXppuMpysCMTCI25n0QBQ07TISf/SnoRqK7qXcN2SfXi
Content-Type: text/plain; charset="utf-8"
Content-ID: <0E72D48725C1C04D857943A42497ADE1@namprd04.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6365b276-9260-4a24-9af1-08d778f3459c
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Dec 2019 19:50:53.5202 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: txiXHKOcnmQBEiWHOqB65246N2tuPF7FSwdDf1zCNTl0mtS1gokC9RNyqN0hdx/gqeRdDqvOZSloJ8Ux2hDOZ+RGzGckUSDXtbit/1Ox/0k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB5815
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_115056_829346_8C7B99AB 
X-CRM114-Status: GOOD (  17.86  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.141 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "anup@brainfault.org" <anup@brainfault.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Atish Patra <Atish.Patra@wdc.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "torvalds@linux-foundation.org" <torvalds@linux-foundation.org>,
 "hch@lst.de" <hch@lst.de>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

T24gV2VkLCAyMDE5LTEyLTA0IGF0IDExOjM4IC0wODAwLCBQYXVsIFdhbG1zbGV5IHdyb3RlOg0K
PiBBbGlzdGFpciwgQW51cCwNCj4gDQo+IE9uIFdlZCwgNCBEZWMgMjAxOSwgQWxpc3RhaXIgRnJh
bmNpcyB3cm90ZToNCj4gDQo+ID4gT24gV2VkLCAyMDE5LTEyLTA0IGF0IDE4OjIyICswNTMwLCBB
bnVwIFBhdGVsIHdyb3RlOg0KPiA+IA0KPiA+ID4gSSBoYWQgY29tbWVudGVkIG9uIHlvdXIgcGF0
Y2ggYnV0IG15IGNvbW1lbnRzIGFyZSBzdGlsbA0KPiA+ID4gbm90IGFkZHJlc3NlZC4NCj4gPiA+
IA0KPiA+ID4gVmFyaW91cyBkZWJ1ZyBvcHRpb25zIGVuYWJsZWQgYnkgdGhpcyBwYXRjaCBoYXZl
IHBlcmZvcm1hbmNlDQo+ID4gPiBpbXBhY3QuIEluc3RlYWQgb2YgZW5hYmxpbmcgdGhlc2UgZGVi
dWcgb3B0aW9ucyBpbiBwcmltYXJ5DQo+ID4gPiBkZWZjb25maWdzLCBJIHN1Z2dlc3QgdG8gaGF2
ZSBzZXBhcmF0ZSBkZWJ1ZyBkZWZjb25maWdzIHdpdGgNCj4gPiA+IHRoZXNlIG9wdGlvbnMgZW5h
YmxlZC4NCj4gPiANCj4gPiArMQ0KPiA+IA0KPiA+IE9FIHVzZXMgdGhlIGRlZmNvbmZpZyAoYXMg
SSdtIHN1cmUgb3RoZXIgZGlzdHJvcyBkbykgYW5kIHNsb3dpbmcNCj4gPiBkb3duDQo+ID4gdXNl
cnMgc2VlbXMgbGlrZSBhIGJhZCBpZGVhLg0KPiANCj4gV2hpbGUgSSByZXNwZWN0IHlvdXIgcG9p
bnRzIG9mIHZpZXcsIG91ciBkZWZjb25maWdzIGFyZSBvcmllbnRlZA0KPiB0b3dhcmRzIA0KPiBr
ZXJuZWwgZGV2ZWxvcGVycy4gIFRoaXMgaXMgcGFydGljdWxhcmx5IGltcG9ydGFudCB3aGVuIHJp
Z2h0IG5vdyB0aGUNCj4gb25seSANCg0KVGhhdCBpcyBqdXN0IG5vdCB3aGF0IGhhcHBlbnMgdGhv
dWdoLg0KDQpJdCBpcyB0b28gbXVjaCB0byBleHBlY3QgZXZlcnkgZGlzdHJvIHRvIG1haW50YWlu
IGEgZGVmY29uZmlnIGZvciBSSVNDLQ0KVi4gVGhlcmUgYXJlIGNvbnN0YW50bHkgbmV3IGZlYXR1
cmVzIHRoYXQgbmVlZCB0byBiZSBlbmFibGVkL2Rpc2FibGVkDQppbiB0aGUgY29uZmlncyBhbmQg
aXQgaXNuJ3QgYWx3YXlzIGNsZWFyIHRvIG91dHNpZGVycy4gV2hpY2ggaXMgd2h5IHdlDQpjdXJy
ZW50bHkgdXNlIHRoZSBkZWZjb25maWcgYXMgYSBiYXNlIGFuZCBhcHBseSBleHRyYSBmZWF0dXJl
cyB0aGF0DQpkaXN0cm8gd2FudCBvbiB0b3AuDQoNCkV4cGVjdGluZyBldmVyeSBkaXN0cm8gdG8g
aGF2ZSBhIGtlcm5lbCBkZXZlbG9wZXJzIGxldmVsIG9mIGtub3dsZWRnZQ0KYWJvdXQgY29uZmln
dXJpbmcgS2NvbmZpZ3MgaXMganVzdCB1bnJlYWxpc3RpYy4NCg0KPiBSSVNDLVYgaGFyZHdhcmUg
b24gdGhlIG1hcmtldCBhcmUgdGVzdCBjaGlwcy4gIE91ciBleHBlY3RhdGlvbiBpcw0KPiB0aGF0
IA0KDQpUcmVhdGluZyBSSVNDLVYgYXMgYSB0ZXN0IGFyY2hpdGVjdHVyZSBzZWVtcyBsaWtlIGEg
Z29vZCB3YXkgdG8gbWFrZQ0Kc3VyZSB0aGF0IGlzIGFsbCBpdCBldmVyIGlzLg0KDQo+IGRpc3Ry
b3MgYW5kIGJlbmNobWFya2VycyB3aWxsIGNyZWF0ZSB0aGVpciBvd24gS2NvbmZpZ3MgZm9yIHRo
ZWlyDQo+IG5lZWRzLg0KDQpMaWtlIEkgc2FpZCwgdGhhdCBpc24ndCB0cnVlLiBBZnRlciB0aGlz
IHBhdGNoIGlzIGFwcGxpZWQgKGFuZCBpdCBtYWtlcw0KaXQgdG8gYSByZWxlYXNlKSBhbGwgT0Ug
dXNlcnMgd2lsbCBub3cgaGF2ZSBhIHNsb3dlciBSSVNDLVYga2VybmVsLg0KVGhpcyBhbHNvIGFw
cGxpZXMgdG8gYnVpbGRyb290IGFuZCBwcm9iYWJseSBvdGhlciBkaXN0b3MuDQoNCk5vdyBpbWFn
ZSBzb21lIGNvbXBhbnkgd2FudHMgdG8gaW52ZXN0aWdhdGUgdXNpbmcgYSBSSVNDLVYgY2hpcCBm
b3INCnRoZWlyIGVtYmVkZGVkIHByb2plY3QuIFRoZXkgdXNlIE9FL2J1aWxkcm9vdCB0byBidWls
ZCBhIHF1aWNrIHRlc3QNCnNldHVwIGFuZCBib290IExpbnV4LiBJdCBub3cgcnVucyBzaWduaWZp
Y2FudGx5IHNsb3dlciB0aGVuIHNvbWUgb3RoZXINCmFyY2hpdGVjdHVyZSBhbmQgdGhleSBkb24n
dCBjaG9vc2UgUklTQy1WLg0KDQpTbG93aW5nIGRvd24gYWxsIHVzZXJzIHRvIGhlbHAga2VybmVs
IGRldmVsb3BlcnMgZGVidWcgc2VlbXMgbGlrZSB0aGUNCndyb25nIGRpcmVjdGlvbi4gS2VybmVs
IGRldmVsb3BlcnMgc2hvdWxkIGtub3cgZW5vdWdoIHRvIGJlIGFibGUgdG8NCnR1cm4gb24gdGhl
IHJlcXVpcmVkIGNvbmZpZ3MsIHdoeSBkb2VzIHRoaXMgbmVlZCB0byBiZSB0aGUgZGVmYXVsdD8N
Cg0KQWxpc3RhaXINCg0KPiANCj4gR29pbmcgZm9yd2FyZCwgd2UnbGwgcHJvYmFibHkgYWRkIGEg
ZmV3IG1vcmUgdmFsaWRhdGlvbiBhbmQgZGVidWcNCj4gb3B0aW9ucywgDQo+IGFzIFBhbG1lciBz
dWdnZXN0ZWQgZHVyaW5nIHRoZSBwYXRjaCBkaXNjdXNzaW9uLg0KPiANCj4gDQo+IC0gUGF1bA0K

