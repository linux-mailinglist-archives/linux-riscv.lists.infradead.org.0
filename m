Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 200FE7B9D4
	for <lists+linux-riscv@lfdr.de>; Wed, 31 Jul 2019 08:43:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fW6trkGNqTPkh+yF1S+RZlP3BRPFQgwLB4pi/w1md10=; b=oNW9M+O/j+DNdH
	A5gD5FpsfINZ6sD104MCYODs9wAT8GW55l6qNc0WPrpnM8g43178yc8TG+BFkKTar8zA0Xb6AuUZz
	mOqY5f1cEdq3OPSZotrKMZzpLTQLzLUYnHaD+Scbbg8rW1HxqjF9RbJabuKxIYpa3xn52fOy1xDmV
	xx9tByEmdN33kyswOr+72OebqapmNvwXmtSZHDeWzcqnCmf+pWeoy6mueXOB+ERILWrMJKRnxXxDS
	U5dR9xbo8z6vXkfPdnEYzpRL2l+ijq+8OBFLfEL/XuxymPnCAYgo+qbO9qVbJ4rz1stwp8DELtO+k
	8rKEIwA5ad9u/yWNpGxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsiKg-0000M0-I5; Wed, 31 Jul 2019 06:43:30 +0000
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsiKb-0000Lb-LJ
 for linux-riscv@lists.infradead.org; Wed, 31 Jul 2019 06:43:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1564555405; x=1596091405;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=UBe6Q3BuImQ+KfZ55sNfNwxE2rSh7IKwtPYNHVef5pg=;
 b=FeW/Nf00/a7DMeYGTK72NdZIzKAPKkwmjp0+3eQlGFYX0fBmX0aktZOb
 5jtisfxmbHxJHPj5vHolUjwtmJJTpGgvNKSxDr+jCgvnt/l+0RRxN2iv9
 qw86vXsq1uRV3DUoKDxdv6n8ESIBhErKiccV5Y5YxBYFVVBfHov8cTXG6
 qx1odK8SQnbfN6jY1cjpVesXoBqher7w83WCCPQ4r1gnqQedLiMuLwQpk
 RfF+rCnPxmM5zJwxSn7mk+/iAGRW7Dnd+PjVqYNfIpxbDIkyIxkccLTmx
 c5ZP7NioxsTuCtJDwixu7hb2/UJRBd0T+ZbzKcjuaiHdtcpIcZSIEFZiF g==;
IronPort-SDR: cen7YRYA2TkoMgqW/yyiLe1rhLDBtTV/0/cZZbkMKFKebslDzo6wZpwk3trRhG013ek1s8CUwx
 RrKVjnXyW322BSChf8iM9Rfk1/MOFyxIJ6SkQVS2sw62BjMlLXeQh7CQXHnPehqWvvrf5gXQbM
 AckxOObS0oCK1XPNBEwY/nKwfc4v6SK8XZKF9pJBViysXqUeTtbRDPWo3FTp4UU/N4dwI1OoAj
 O0WE4BDIw99E+s7JmBBhVsWHnDRGbcgvdRt9mT9BlTHSthkxMke9ANPLX0i3BckV5sJWEEyV15
 VHM=
X-IronPort-AV: E=Sophos;i="5.64,329,1559491200"; d="scan'208";a="221028167"
Received: from mail-sn1nam04lp2058.outbound.protection.outlook.com (HELO
 NAM04-SN1-obe.outbound.protection.outlook.com) ([104.47.44.58])
 by ob1.hgst.iphmx.com with ESMTP; 31 Jul 2019 14:43:22 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OqgU2YKI8Wnc+mIEFOGI4AJVNFnrLJL6vUgdVadjZPA0WcRgYiwLhrQp+fPjpdBdh7oTxcmKbUkzxwkiY3A6VENGthAIAj9icDkIeFYNVk+1g3fBqhMoO0ijwigN6X/KnSKzedCp84+9QH1seE6NoV7W5plsqLq37mee4d6cTwOOvMbZLWLbk/YYQTwBGPxLa9LHqY9V2RqlkWLn/uRPz9FhzbZeFctusLDy+9EgJEsOKD5jBEt3iwP3AcFRS2/6G8kqFw8/qlVI7MW3D2COb9iBTgAjR5cKx13CWl9QmYP/L7xoRNpGiNFC5G0ZjL1ZCi1RG+LiVDR50ggAIKle2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UBe6Q3BuImQ+KfZ55sNfNwxE2rSh7IKwtPYNHVef5pg=;
 b=LwaU0pErjiN7CqZUlHmXiKEHccI65viFEW1TpTOfWrwp1t+c6YOsHSEXpMGkGc6UpRXFZFMxtCS9TSKiEkdngYdgWBRyF/U77xNJzjilgb/f+qXpHsxbXFcS0LYZ2uK/sXGWYCJS1KbkH5/DhZ6r33keqnkcrfbt8XZVtk1AG7nDGYL5R3L2gi2UnvJa1WfEJdDIM1a+gGtbXoCjsz/im5SoG4+hjdj+Se/yXuZhowYvackadsQOWvSp/OLL+T/gJoy5wtZuGrK974N/Y/pVwfHFFKjtYCxf8v7GOvsShZdln2DD8cGfOxrvfQXt7w5VVgOZxYW/gswLal2FSccOhQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=wdc.com;dmarc=pass action=none header.from=wdc.com;dkim=pass
 header.d=wdc.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UBe6Q3BuImQ+KfZ55sNfNwxE2rSh7IKwtPYNHVef5pg=;
 b=wfap/Xu2V9RanJfyzraveGhNpeEeunbr8h62jADLyl99PeObH4+ItjRIbi/6SkgGKa382/weOrkNe6YIEtL934gCumeF98K9ADVbciAzWlYCmpJsZJAYJ4/HazrNLtzBMAQzYJfQ3YsLzvgqQX8EV7AFRR3NvNhZJrewagPEQTY=
Received: from BYAPR04MB3782.namprd04.prod.outlook.com (52.135.214.142) by
 BYAPR04MB5400.namprd04.prod.outlook.com (20.178.50.217) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2115.15; Wed, 31 Jul 2019 06:43:21 +0000
Received: from BYAPR04MB3782.namprd04.prod.outlook.com
 ([fe80::ac9a:967e:70a5:e926]) by BYAPR04MB3782.namprd04.prod.outlook.com
 ([fe80::ac9a:967e:70a5:e926%7]) with mapi id 15.20.2115.005; Wed, 31 Jul 2019
 06:43:21 +0000
From: Atish Patra <Atish.Patra@wdc.com>
To: Paul Walmsley <paul.walmsley@sifive.com>
Subject: Re: [PATCH v2 5/5] dt-bindings: Update the isa string description
Thread-Topic: [PATCH v2 5/5] dt-bindings: Update the isa string description
Thread-Index: AQHVRz67cH/m/mfZ9kafsuzYlBZY4KbkKOSA//+pwoA=
Date: Wed, 31 Jul 2019 06:43:21 +0000
Message-ID: <5E8CC941-E519-4B4F-8F5E-253D0C797431@wdc.com>
References: <20190731012418.24565-1-atish.patra@wdc.com>
 <20190731012418.24565-6-atish.patra@wdc.com>
 <alpine.DEB.2.21.9999.1907302124010.15340@viisi.sifive.com>
In-Reply-To: <alpine.DEB.2.21.9999.1907302124010.15340@viisi.sifive.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Atish.Patra@wdc.com; 
x-originating-ip: [2601:646:8280:fdf0:e4f3:9b1f:f663:964b]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 48bd37a5-3f38-4119-02b3-08d71582613f
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:BYAPR04MB5400; 
x-ms-traffictypediagnostic: BYAPR04MB5400:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <BYAPR04MB5400434CA5DD799FC6B898A8FADF0@BYAPR04MB5400.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 011579F31F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(39860400002)(136003)(346002)(396003)(366004)(376002)(51444003)(189003)(199004)(25786009)(966005)(6512007)(229853002)(6916009)(14454004)(446003)(6436002)(14444005)(256004)(54906003)(7416002)(11346002)(305945005)(36756003)(316002)(478600001)(6306002)(6486002)(86362001)(476003)(2616005)(2906002)(53936002)(486006)(33656002)(6116002)(46003)(81166006)(8676002)(81156014)(5660300002)(6506007)(71190400001)(102836004)(76176011)(71200400001)(64756008)(4326008)(68736007)(76116006)(99286004)(6246003)(66476007)(186003)(8936002)(66946007)(15650500001)(66446008)(66556008)(7736002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB5400;
 H:BYAPR04MB3782.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: tNIbWqkz0yvMab/twaCebTE6SUmwrdTSqgIEcuyF8EgV0Ko5PHnnXFqJtJ9BuwrW5PAufzBXRYAZJ9mrC42fUpsVwasgR2aaNEjGVrd041k6VQqVuBfagD6AFu6yo9tY+KIpFvbXtG0d4gaoVj0Pw6D9GWWP2UhgI2IfFQTJ/loBcn+bLdhnQHPZ6sEL6PeMdZqX6myZHUYok7hMPLH+VME2fza1rKVsKW9c6IUJOXD32vGLvhMZmg5HwjF1L32OwSo3tkcU/1hGEFjSRRxRslv0DyE8RMpkjMdjX8HjzOhpDhSsk0uOw/Xjc75o4eNIuWLR7/AgfOULZ0lfk3t/d6jqqzcY1qrxNRSo9BQtH9iyHWjp8GDklIEncsEy5oJg8FyF5jj+zCCvp7Q/K0zzNuTNwjL+I7qVvN6+eiq6eDo=
Content-ID: <B5BD16E84442614AB8875400CDAB169A@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 48bd37a5-3f38-4119-02b3-08d71582613f
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jul 2019 06:43:21.7136 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Atish.Patra@wdc.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB5400
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_234325_839722_BA5552E8 
X-CRM114-Status: GOOD (  20.51  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.141.245 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Anup Patel <Anup.Patel@wdc.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Johan Hovold <johan@kernel.org>,
 Alexios Zavras <alexios.zavras@intel.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Palmer Dabbelt <palmer@sifive.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 Enrico Weigelt <info@metux.net>, Thomas Gleixner <tglx@linutronix.de>,
 Allison Randal <allison@lohutok.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

DQoNCu+7v09uIDcvMzAvMTksIDk6NTIgUE0sICJQYXVsIFdhbG1zbGV5IiA8cGF1bC53YWxtc2xl
eUBzaWZpdmUuY29tPiB3cm90ZToNCg0KICAgIE9uIFR1ZSwgMzAgSnVsIDIwMTksIEF0aXNoIFBh
dHJhIHdyb3RlOg0KICAgIA0KICAgID4gVGhlIHlhbWwgZG9jdW1lbnRhdGlvbiBkZXNjcmlwdGlv
biBvZiBpc2Egc3RyaW5ncyBzZWN0aW9uIGRvZXNuJ3QNCiAgICA+IHNwZWNpZnkgYW55dGhpbmcg
YWJvdXQgdGhlIGNhc2Ugc2Vuc2l0aXZlbmVzcyBvZiB0aGUgaXNhIHN0cmluZ3MuDQogICAgPiBU
aGUgUklTQy1WIHNwZWNpZmljYXRpb24gY2xlYXJseSBzcGVjaWZpZXMgaXQgdG8gYmUgY2FzZSBp
bnNlbnNpdGl2ZS4NCiAgICA+IEhvd2V2ZXIsIExpbnV4IGtlcm5lbCBzdXBwb3J0cyBvbmx5IGxv
d2VyIGNhc2UgaXNhIHN0cmluZ3MuDQogICAgDQogICAgVGhlIERUIGJpbmRpbmcgZG9jdW1lbnRh
dGlvbiBzcGVjaWZpZXMgYW4gaW50ZXJmYWNlLiAgQXMgc3VjaCB0aGUgYmluZGluZyANCiAgICBp
c24ndCBkZXRlcm1pbmVkIGJ5IGFueSBwYXJ0aWN1bGFyIHBpZWNlIG9mIHNvZnR3YXJlLiAgU28g
anVzdGlmeWluZyB0aGUgDQogICAgYmluZGluZyB1cGRhdGUgYnkgcmVmZXJyaW5nIHRvIHdoYXQg
dGhlIExpbnV4IGtlcm5lbCBjdXJyZW50bHkgc3VwcG9ydHMgDQogICAgaXNuJ3QgdGhhdCByZWxl
dmFudC4gIElmIHlvdSBzdGlsbCByZWFsbHkgYmVsaWV2ZSB0aGF0IHNvZnR3YXJlIHNob3VsZCBi
ZSANCiAgICByZXF1aXJlZCB0byBoYW5kbGUgbWl4ZWQtY2FzZSBEVCBJU0Egc3RyaW5ncywgdGhl
IHJpZ2h0IGFuc3dlciB3b3VsZCBiZSB0byANCiAgICBjaGFuZ2UgdGhlIHNvZnR3YXJlLCBhcyB5
b3VyIG9yaWdpbmFsIHBhdGNoZXMgcHJvcG9zZWQuICBUaGUgd2F5IHlvdSd2ZSANCiAgICB3cml0
dGVuIHRoaXMgcGF0Y2ggZGVzY3JpcHRpb24sIGl0IHNvdW5kcyBsaWtlIHlvdSBzdGlsbCBkb24n
dCBhZ3JlZSB3aXRoIA0KICAgIHRoZSBjb25jbHVzaW9uIHRoYXQgYSBzdHJpY3RseSBsb3dlcmNh
c2Ugc3RyaW5nIGlzIGEgZ29vZCBhcHByb2FjaC4NCiAgIA0KICAgIElmIEkndmUgbWlzdW5kZXJz
dG9vZCB5b3VyIGludGVudCBoZXJlLCBhbmQgeW91IGRvIHRoaW5rIHRoYXQgc3BlY2lmeWluZyAN
CiAgICBhbiBhbGwgbG93ZXJjYXNlIHN0cmluZyBpcyBzdWZmaWNpZW50LA0KDQpJIHRoaW5rIHRo
YXQgc3BlY2lmeWluZyBhbiBhbGwgbG93ZXJjYXNlIHN0cmluZyBpcyBzdWZmaWNpZW50LiBJIGRp
ZCBub3QgDQpyZWFsaXplIHRoYXQgY3VycmVudCBjb21taXQgdGV4dCBjb3VsZCBtZWFuIHNvbWV0
aGluZyBlbHNlICguDQoNCiB0aGVuIGluc3RlYWQgb2YgdGhlIHBhdGNoIA0KICAgIGRlc2NyaXB0
aW9uIGFib3ZlLCBob3cgYWJvdXQgc29tZXRoaW5nIGxpa2U6DQogICAgDQogICAgIlNpbmNlIHRo
ZSBSSVNDLVYgc3BlY2lmaWNhdGlvbiBzdGF0ZXMgdGhhdCBJU0EgZGVzY3JpcHRpb24gc3RyaW5n
cyBhcmUgDQogICAgY2FzZS1pbnNlbnNpdGl2ZSwgdGhlcmUncyBubyBmdW5jdGlvbmFsIGRpZmZl
cmVuY2UgYmV0d2VlbiBtaXhlZC1jYXNlLCANCiAgICB1cHBlci1jYXNlLCBhbmQgbG93ZXItY2Fz
ZSBJU0Egc3RyaW5ncy4gIFRodXMsIHRvIHNpbXBsaWZ5IHBhcnNpbmcsIA0KICAgIHNwZWNpZnkg
dGhhdCB0aGUgbGV0dGVycyBwcmVzZW50IG9mIHJpc2N2LGlzYSBtdXN0IGJlIGFsbCBsb3dlcmNh
c2UuIg0KICAgIA0KU291bmRzIGdvb2QgdG8gbWUuIEkgd2lsbCB1cGRhdGUgdGhlIHBhdGNoLiBU
aGFua3MgZm9yIHVwZGF0ZWQgY29tbWl0IHRleHQuDQoNCiAgICBUaGF0IHdheSBpdCdzIGNsZWFy
IHRoYXQsIHBlciB0aGUgUklTQy1WIHNwZWNpZmljYXRpb24sIHRoZXJlJ3Mgbm8gDQogICAgZnVu
Y3Rpb25hbCBkaWZmZXJlbmNlIGFzc29jaWF0ZWQgd2l0aCBjYXNlLg0KICAgIA0KICAgIEhvd2V2
ZXIsIGlmIHdoYXQgeW91J3JlIHNheWluZyBpcyB0aGF0IHlvdSBzdGlsbCBkb24ndCBsaWtlIHRo
aXMgb3V0Y29tZSwgDQogICAgbGV0IG1lIGtub3cgYW5kIEknbGwgd3JpdGUgdGhlIHBhdGNoIG15
c2VsZi4gIFRoYXQgd2F5IHlvdSBkb24ndCBoYXZlIHRvIA0KICAgIGhhdmUgeW91ciBuYW1lIGFz
c29jaWF0ZWQgd2l0aCBhIGNoYW5nZSB0aGF0IHlvdSBkb24ndCBiZWxpZXZlIGluLg0KICAgIA0K
ICAgID4gVXBkYXRlIHRoZSB5YW1sIGRvY3VtZW50YXRpb24gYWNjb3JkaW5nbHkgdG8gYXZvaWQg
YW55IGNvbmZ1c2lvbi4NCiAgICA+IA0KICAgID4gU2lnbmVkLW9mZi1ieTogQXRpc2ggUGF0cmEg
PGF0aXNoLnBhdHJhQHdkYy5jb20+DQogICAgPiAtLS0NCiAgICA+ICBEb2N1bWVudGF0aW9uL2Rl
dmljZXRyZWUvYmluZGluZ3MvcmlzY3YvY3B1cy55YW1sIHwgNiArKysrKy0NCiAgICA+ICAxIGZp
bGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pDQogICAgPiANCiAgICA+
IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcmlzY3YvY3B1
cy55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3Jpc2N2L2NwdXMueWFt
bA0KICAgID4gaW5kZXggYzg5OTExMWFhNWUzLi5lMjJhMmI3ZWJhZmEgMTAwNjQ0DQogICAgPiAt
LS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcmlzY3YvY3B1cy55YW1sDQog
ICAgPiArKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcmlzY3YvY3B1cy55
YW1sDQogICAgPiBAQCAtNDYsMTAgKzQ2LDE0IEBAIHByb3BlcnRpZXM6DQogICAgPiAgICAgICAg
ICAgIC0gcnY2NGltYWZkYw0KICAgID4gICAgICBkZXNjcmlwdGlvbjoNCiAgICA+ICAgICAgICBJ
ZGVudGlmaWVzIHRoZSBzcGVjaWZpYyBSSVNDLVYgaW5zdHJ1Y3Rpb24gc2V0IGFyY2hpdGVjdHVy
ZQ0KICAgID4gLSAgICAgIHN1cHBvcnRlZCBieSB0aGUgaGFydC4gIFRoZXNlIGFyZSBkb2N1bWVu
dGVkIGluIHRoZSBSSVNDLVYNCiAgICA+ICsgICAgICBzdXBwb3J0ZWQgYnkgdGhlIGhhcnQuIFRo
ZXNlIGFyZSBkb2N1bWVudGVkIGluIHRoZSBSSVNDLVYNCiAgICA+ICAgICAgICBVc2VyLUxldmVs
IElTQSBkb2N1bWVudCwgYXZhaWxhYmxlIGZyb20NCiAgICA+ICAgICAgICBodHRwczovL3Jpc2N2
Lm9yZy9zcGVjaWZpY2F0aW9ucy8NCiAgICA+ICANCiAgICA+ICsgICAgICBMaW51eCBrZXJuZWwg
b25seSBzdXBwb3J0cyBsb3dlciBjYXNlIGlzYSBzdHJpbmdzLiBUaHVzLA0KICAgIA0KICAgIElu
IHRoZSBwYXN0LCB0aGUgRFQgbWFpbnRhaW5lcnMgaGF2ZSBwdXNoZWQgYmFjayBhZ2FpbnN0IGV4
cGxpY2l0bHkgDQogICAgbWVudGlvbmluZyB0aGUgTGludXgga2VybmVsIGluIGJpbmRpbmcgZG9j
dW1lbnRhdGlvbiwgc2luY2UgdGhlIERUIA0KICAgIGJpbmRpbmdzIGRlZmluZSBhbiBpbnRlcmZh
Y2UgdGhhdCdzIGluZGVwZW5kZW50IG9mIHRoZSB1bmRlcmx5aW5nIHNvZnR3YXJlIA0KICAgIGlt
cGxlbWVudGF0aW9uLiAgSG93IGFib3V0IGp1c3Qgc3RhdGluZyBzb21ldGhpbmcgbGlrZSAiTGV0
dGVycyBpbiB0aGUgDQogICAgcmlzY3YsaXNhIHN0cmluZyBtdXN0IGJlIGFsbCBsb3dlcmNhc2Ui
ID8NCiAgICANClN1cmUuDQoNClJlZ2FyZHMsDQpBdGlzaA0KDQogICAgPiArICAgICAgaXNhIHN0
cmluZ3MgbXVzdCBiZSBzcGVjaWZpZWQgaW4gbG93ZXIgY2FzZSBpbiBkZXZpY2UgdHJlZQ0KICAg
ID4gKyAgICAgIGFzIHdlbGwuDQogICAgPiArDQogICAgDQogICAgLSBQYXVsDQogICAgDQoNCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LXJpc2N2
IG1haWxpbmcgbGlzdApsaW51eC1yaXNjdkBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcmlzY3YK
