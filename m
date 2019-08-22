Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8A1099ED5
	for <lists+linux-riscv@lfdr.de>; Thu, 22 Aug 2019 20:31:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7Vvcl9zKWr09pLZVLE0dG79RCfcJsxgCFOObC/uMXTw=; b=Ri9ZX5z7B0F4Oh
	lEOtbmK2ENiuSEZ6qi96luYBH5clo5x3JEnZ8XQZ1+zwDuvmk5ngicin79IOQZXHu9r71deHMdPGi
	uJFXCHl5pGiENLWCRwjIKltafITyBXznhP9Dyq1RK4+Gi+RHWCNgCavtfpGh5456HXCUFipKR+H6E
	ZqLwEJ4/uOIeIWEPPfWLsEan1bxbIBDcat0tykMqXuWYlj0OM7xqC8TD+vdO0SZ2rkhYZg2JwumWJ
	/e0RMjlMpMYLw/ZlFpITi93CIuWsLc5wFl92bpPAFjajZw1Mzd6kun0K08GHb26fATDaYYkfCCm1m
	0EFRSPyfhVG89rwafRqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0rs5-0003Z6-Cv; Thu, 22 Aug 2019 18:31:41 +0000
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0rs2-0003YA-63
 for linux-riscv@lists.infradead.org; Thu, 22 Aug 2019 18:31:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1566498699; x=1598034699;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=0Jk2c7yUIuhxgQsOiX5/4Y8fqlVy2ksI6oH8D72P9rE=;
 b=VZ6MV+hCzEMWykifeCnSLKqQWdorAZ9zgNOCoK74pZRWMT2H00MnhkH3
 S2dqHjsoEONhAuXXER8yYFsiOxNdCfQlwNH2zdWq8CMHE4sU/JBMyb2/i
 wOBRybYII6SFL+w0T7o/1Tp3ZkSJLLOrwRvlmcCqEBk3dtgDmqTciOJ1e
 PsFC9N2zGYulAWDNLDW/qM9HCdijp0qVtZLx2qjpXuqgTEjLGj6N++Wx2
 8u4Bqb7FlGHB9xE3aN3XDBRFCZSB0GjXqtqnDghjwuNt6shM9wote0nL0
 kbfjfSNhp7hqe5ESPdkII+N+RQjald6IoQzpgLJjOqenAr6sDTlau3IIu g==;
IronPort-SDR: LQQyNtp5cOjfFGY5t+91RK1VvXKDcpFmZNa1Kt8YQLJ3x+XM9qNXZDIxSJ+QXPNg0yghP8huKA
 xK5CFmWucyPKfGsxHcUB5ZTpY+6y/18gtaPX54qXhVWrNlMCMn8PMh+B+HqIsLTeTO1FX5RgVG
 v3koeURmA3xrPhKcoEwygjcxYxptkxMmWcrai+icdRS42pXcIpEgGTGUftpK5Us/yzp6DkEbWx
 Qh/qgj+gM4mbeNZzaU0qoO2q8Ll7xHVXxIXUBOdHAroq0ydFmjKM0Cd6NkC4NUDak9744gcV3S
 acI=
X-IronPort-AV: E=Sophos;i="5.64,417,1559491200"; d="scan'208";a="117378618"
Received: from mail-co1nam05lp2058.outbound.protection.outlook.com (HELO
 NAM05-CO1-obe.outbound.protection.outlook.com) ([104.47.48.58])
 by ob1.hgst.iphmx.com with ESMTP; 23 Aug 2019 02:31:31 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KC04pYJp2VCsNneJIC/iUgL4TGhMAycCmcVQxMwK0mjb9HFXuZeFuVkcIIZ+4ng6ifuJ7eERJu6VwE9ilUTcgxPkCwUI1n1kyZp7KedmCWb95r8snBJFWSRzcjoCy/UKPHN6xyGWuon3Nsb3KFkUN5zkFJhCsDCiisK8F+qdjP2DHei795SVA9XHpFM8kng4bKadHglrp6Hoid/fVOYRb0T4EBZHaCWqRz3wzb8jUdonmlsEgEa6z/pJ/A8dCxSqGpg31VWIJMIWNHpSeje2Anfm+3Yc1/RMRYDdKAR9ITvkf4GxzSdbmD7DrACyfn6ZUeDeHEJDufNGsmA7H0JlcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0Jk2c7yUIuhxgQsOiX5/4Y8fqlVy2ksI6oH8D72P9rE=;
 b=FmHOvmIESv5x/7m89kKqmC4p47YXcYnyMV+/eFb9lRosBHlRi/B9lBkqHQlO/mOUg6No/NJnhBRLkX4HLVwb4f7jNmBeIoxHdZIWjsSDtO5HB0sPMXnkDFBEi9FaVGZBdyUNSiMQG85/1XKZowtJpbppDIiB4BCSKW20pzUTBztXdjeSaPmQtZQmcsanePGmZ5UDCfpEC/k4uH3lLzfA1aI1PBT7Pv9LkLVUGN2ul0taCr8vOj6QvppUZqPr8m2PpxwMB+r2Mz72MFvq+MDeaFIO7JUA571CFk34dzT3NWjL+4nMJBQlgXBjeLdmqQDwM1WZexYKO/CysnNNWeaVMQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0Jk2c7yUIuhxgQsOiX5/4Y8fqlVy2ksI6oH8D72P9rE=;
 b=YvWu6dwZ1McuZh0rUQsGZAcElcAf5hazwU0Yso2yCevBlYR6/SLUH+LZWS39x0o47ZV7NurGBBVB4SYd7g/6aSpuBOXSW32u+hv7uJFz5CKsrgD60sOaa/6DN1fE0TaFNryS+TPpl530XHDAIiAJGp5tsG5K9zPfyyHBBtj3y0Q=
Received: from BYAPR04MB3990.namprd04.prod.outlook.com (52.135.215.29) by
 BYAPR04MB5896.namprd04.prod.outlook.com (20.179.59.142) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.16; Thu, 22 Aug 2019 18:31:29 +0000
Received: from BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::24ca:5178:5475:9a0e]) by BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::24ca:5178:5475:9a0e%4]) with mapi id 15.20.2178.020; Thu, 22 Aug 2019
 18:31:29 +0000
From: Atish Patra <Atish.Patra@wdc.com>
To: "hch@lst.de" <hch@lst.de>
Subject: Re: [PATCH v4 3/3] RISC-V: Issue a tlb page flush if possible
Thread-Topic: [PATCH v4 3/3] RISC-V: Issue a tlb page flush if possible
Thread-Index: AQHVWL95e6LZrQt6lE6f3WVrn/k0WqcG0QSAgACtHAA=
Date: Thu, 22 Aug 2019 18:31:29 +0000
Message-ID: <ab8e3417e7949390ce256fc4afb5d6e82e4f91da.camel@wdc.com>
References: <20190822075151.24838-1-atish.patra@wdc.com>
 <20190822075151.24838-4-atish.patra@wdc.com>
 <20190822081153.GC17573@lst.de>
In-Reply-To: <20190822081153.GC17573@lst.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Atish.Patra@wdc.com; 
x-originating-ip: [2601:646:8280:fdf0:69be:1cca:a557:65ea]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: aac10f71-62bf-4031-593d-08d7272ef2e9
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600166)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:BYAPR04MB5896; 
x-ms-traffictypediagnostic: BYAPR04MB5896:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR04MB58964DE80B3D48F67EDFDDE1FAA50@BYAPR04MB5896.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:5516;
x-forefront-prvs: 01371B902F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(39860400002)(136003)(366004)(376002)(346002)(396003)(51914003)(199004)(189003)(51444003)(6246003)(76176011)(2501003)(25786009)(6916009)(6116002)(7736002)(4326008)(86362001)(53936002)(4744005)(6506007)(229853002)(8936002)(6436002)(66946007)(6486002)(5640700003)(478600001)(71200400001)(71190400001)(2351001)(81166006)(76116006)(2906002)(66476007)(66556008)(81156014)(305945005)(118296001)(1730700003)(66446008)(5660300002)(54906003)(46003)(14454004)(6512007)(102836004)(446003)(486006)(99286004)(186003)(14444005)(2616005)(64756008)(316002)(36756003)(11346002)(476003)(66574012)(256004)(8676002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB5896;
 H:BYAPR04MB3990.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 3WcSdkPW652FHwl64/VtpB+Ac9Jg7YyyjipQxCi2kUKOXGH426zUUwoK+hMSZJegvBNqBjQWLji1TuY3W54/0Vwlp8RdZQQH5aQBFNDtudzC3aYTVvkplGCsN8x6BR46Qf8w0XfKQwaUyX8g23KElZUK+mOl0inptQk551G74sXcVwatRzmpYkXag7gPY2tJT96TErm7YRrZ8AQVM5LhhemXTAdRp41Dy5h+wZgM+Mjhf2dEs8VofDAIIq7zoSzoT6JOz9dCsQ8O3j3MMlSGvOA/1rDN1ByBc8KO6gBDSnpho3RFM5BDSWBIWTqzFRQlZm/tlO+lA+wBxUQu9fWiNcc5O8LKxCEgIefSRwfb57wSl0V0yDWN2fXFBnS2oDIkgn1KKZhRrQJR+dcUxQMO8QxGh5IvBXTAzne+57CQ13Q=
Content-ID: <F8695B9941D48D4DB50C08E0C3B3715F@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: aac10f71-62bf-4031-593d-08d7272ef2e9
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Aug 2019 18:31:29.1223 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Ai+Dli4t/JVNsnwmMa6X61LzgXFbn0/biI5aO2JMnSmZoSeYygrpykwnO/QznneZ8iEs0ILn/FkwupsHLbZhMQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB5896
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_113138_337622_B4E2D302 
X-CRM114-Status: GOOD (  13.87  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "palmer@sifive.com" <palmer@sifive.com>, Anup Patel <Anup.Patel@wdc.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>,
 "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

T24gVGh1LCAyMDE5LTA4LTIyIGF0IDEwOjExICswMjAwLCBDaHJpc3RvcGggSGVsbHdpZyB3cm90
ZToNCj4gT24gVGh1LCBBdWcgMjIsIDIwMTkgYXQgMTI6NTE6NTFBTSAtMDcwMCwgQXRpc2ggUGF0
cmEgd3JvdGU6DQo+ID4gSWYgdGxiZmx1c2ggcmVxdWVzdCBpcyBmb3IgcGFnZSBvbmx5LCB0aGVy
ZSBpcyBubyBuZWVkIHRvIGRvIGENCj4gPiBjb21wbGV0ZSBsb2NhbCB0bGIgc2hvb3Rkb3duLg0K
PiA+IA0KPiA+IEp1c3QgZG8gYSBsb2NhbCB0bGIgZmx1c2ggZm9yIHRoZSBnaXZlbiBhZGRyZXNz
Lg0KPiANCj4gTG9va3MgZ29vZCwgYWx0aG91Z2ggSSBzdXNwZWN0IGluIG1hbnkgY2FzZXMgZXZl
biBkb2luZyBtdWx0aXBsZQ0KPiBzaW5nbGUtcGFnZSBzZmVuY2Uudm1hIGNhbGxzIG1pZ2h0IGJl
IGNoZWFwZXIgdGhhbiB0aGUgZ2xvYmFsIG9uZS4NCj4gDQo+IEJ1dCBJIHRoaW5rIHRoYXQgaXMg
d29ydGggYSDRlWVwYXJhdGUgZGlzY3Vzc2lvbiwgcHJlZmVyYWJseSB3aXRoDQo+IGFjdHVhbA0K
PiBudW1iZXJzLg0KPiANCg0KWXVwLiBGaW5kaW5nIGEgZ29vZCB0aHJlYXNob2xkIGlzIGFsd2F5
cyB0cmlja3kgd2l0aG91dCByZWFsDQpiZW5jaG1hcmtzLg0KDQo+IFJldmlld2VkLWJ5OiBDaHJp
c3RvcGggSGVsbHdpZyA8aGNoQGxzdC5kZT4NCg0KVGhhbmtzIGZvciB0aGUgcmV2aWV3Lg0KDQot
LSANClJlZ2FyZHMsDQpBdGlzaA0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KbGludXgtcmlzY3YgbWFpbGluZyBsaXN0CmxpbnV4LXJpc2N2QGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1yaXNjdgo=
