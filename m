Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E25531CA4F9
	for <lists+linux-riscv@lfdr.de>; Fri,  8 May 2020 09:17:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=DtG5rnU+f5IjR+jUJdhoKXPoiqYYf7K6i7IKF4Sz6Cs=; b=RMy3sVmqTnQbCCLR0ypi9J7t8
	wF9HXu0quAh0AmkEoKOpGHkM0FQZGsktZNFXe0ZncUy14GKTljtB6ANKZ7i20A5s+xVS7xJW9RBx1
	bjBhocXkreEpjoJ2dh+S30VzGQrLJkdRzwK4CFXi6jLjkmf9LprR8REY2QlTiQQ3YL/XTW1A5O/pK
	+7JIvl89elBDE7OUTMIQGlRKfNroow5ToEFyuru8YfZ+FZJu1TmpCfPcT6LLYb6G0S0GWRrxKeKZz
	iDB38My9/+lTRJJ8dck9AQ/biZ0OQx2B1WiXxdyS2yW2tNsSZ1zsSUBlxe35ZibbOC1+7Qg5QnmG4
	rj3UwrDaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWxFh-0001yO-8e; Fri, 08 May 2020 07:16:57 +0000
Received: from mail-eopbgr700083.outbound.protection.outlook.com
 ([40.107.70.83] helo=NAM04-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWxFd-0001xb-Ch
 for linux-riscv@lists.infradead.org; Fri, 08 May 2020 07:16:55 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WF1YQkn+IPYsVPh4t94f3xuZbbklgAohBtCEQe36tiNI+Md6i7NBFE9LmetPV0Jnycj+E/ZtGWfHxqjtyITReN3zuE5Ypp0wRsY6kcc4C1i41JKfcyulpJz3fWFHle3p1/wa/F2GYKMOesg1e/jlFg7gScEBv0q411Dc610qxKyouJq/roijKxowwRh08sMHhRP6yLNAh6uwFCWfp+PvPF+ADaWRj+I9R7jhCoRHIJpAL6v58L6ZjYFtLt/+ZRwNcexWiI8pgy6Cx+Vj30SOz5ak6RA2N7UntIfoF+EqkT1PqiW47+el8JLwnnNq7IAwEtGe8c3HV9lh8bO7WmyA4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DtG5rnU+f5IjR+jUJdhoKXPoiqYYf7K6i7IKF4Sz6Cs=;
 b=P+QPFKCcOCSM5dijonDwsJ/pMfNwCxI82L0D3GHhUBwZYJfJQUo2wgb4DFvvzsT0j2XiaKaGowE3uFb7BQ0nAXbuKzPBSuqN9pDWH/vslmMPQtjILVsDD1HMGqEDGEI30jkiKRatEubIg/wea7lZs7C1PYVmlXFTv7pi1Xw3quJmztdc07GdYnE89Q+yWaB0c7TNhMnKS+lk5VJG+tDfK95+v1e7U5byAO5yeufYucZUh1aYnKEMv3O4255JoKc/M0EdHOZngeRscbk42a/2wWuyYhxDHNS/46UcDuQ8GbbXSI3YrWvE5tZOIjfmYzzTkyHUEJTrbLW4peSRDTe0Ng==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=sifive.com; dmarc=pass action=none header.from=sifive.com;
 dkim=pass header.d=sifive.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DtG5rnU+f5IjR+jUJdhoKXPoiqYYf7K6i7IKF4Sz6Cs=;
 b=JVLhL9N5uqvLVxI54T8wImWmtEatKjkd0ZbG/G4TaBI2oDRueg9ykIh0YUc5RI9t0ILGt7Jncfu8dD2tlnxL1tF0DU/Bge4k083YDWAuMNdl1F8S4pVzYdjwpNs3CKK1V8G5PlJv3BrmMUsiHopzh3IapB8nTd5Vk55tGZqswn0=
Received: from BN8PR13MB2611.namprd13.prod.outlook.com (2603:10b6:408:81::17)
 by BN8PR13MB2819.namprd13.prod.outlook.com (2603:10b6:408:8a::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2979.16; Fri, 8 May
 2020 07:16:49 +0000
Received: from BN8PR13MB2611.namprd13.prod.outlook.com
 ([fe80::c129:8fca:5ed:8929]) by BN8PR13MB2611.namprd13.prod.outlook.com
 ([fe80::c129:8fca:5ed:8929%6]) with mapi id 15.20.3000.011; Fri, 8 May 2020
 07:16:49 +0000
From: Sagar Kadam <sagar.kadam@sifive.com>
To: Palmer Dabbelt <palmer@dabbelt.com>, Greg KH <gregkh@linuxfoundation.org>
Subject: RE: [PATCH] tty: serial: add missing spin_lock_init for SiFive UART
Thread-Topic: [PATCH] tty: serial: add missing spin_lock_init for SiFive UART
Thread-Index: AQHWI9xT6ew1lYdCokaBOkjqOFic/qicL7kAgACzkICAANvCgA==
Date: Fri, 8 May 2020 07:16:49 +0000
Message-ID: <BN8PR13MB261199F652ECCECE68A0C33299A20@BN8PR13MB2611.namprd13.prod.outlook.com>
References: <20200507064958.GB798308@kroah.com>
 <mhng-3c2de0bd-d2fb-4b5f-be6a-accdaa1cbc7a@palmerdabbelt-glaptop1>
In-Reply-To: <mhng-3c2de0bd-d2fb-4b5f-be6a-accdaa1cbc7a@palmerdabbelt-glaptop1>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dabbelt.com; dkim=none (message not signed)
 header.d=none;dabbelt.com; dmarc=none action=none header.from=sifive.com;
x-originating-ip: [116.74.148.244]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: cf4859f8-f79b-484a-f980-08d7f31fc671
x-ms-traffictypediagnostic: BN8PR13MB2819:
x-ld-processed: 22f88e9d-ae0d-4ed9-b984-cdc9be1529f1,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BN8PR13MB281951207970D4611D63A34E99A20@BN8PR13MB2819.namprd13.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 039735BC4E
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: BVS6LAOP0lD6oZu3gjXfOabmvI7x4x8WiBT7jxjS7QWLCxxU0XRL9HmCp668RATvMFhbhX3PvGnQGYgEwaYJxesRtYf30iyeQ6Lm3gn/uFD9dyaiffm62d09BwXoBpYq+Se+7+se1dQdZjGTPN/JYu4lgJwPvY6ZdaP1qThQPmqVa7VSRpsmjkXogTPf++tvd6lNVy7vjP+A7braua30krBz9s17otDO1Ith7mTsysKKIlZcH6d4ceJB0O+OEyuiw+lPTvF3AJ8evQoc1PiCZjEXNg7jVIrk9daNiRMfiZ1lMIv1znJmRynncWcgypOaeGM/5zFQcTKaPDmjf8cHB4/g1gTLsL8vetZRMAIc006unh+UkPtQwpxupUua84FXxXVKeuZeQV20P5pSigFiFzZZL33kIruygipD9WV0fbbXq1vhWBbywSxp/vQfAentNPCpwAVHtFcQ6EqLXlW33S8bPMadlvaiwH9BHu+jQaEsASgBRFAUYliMmkNYeAQJYAcObnQZ4wV3LwnQHeOqitEZ9e7Y/7vUBNCijBo4wsDDU5pTpeFLcKBSrTjwzRuTqjZ+VZJdj/sa1nCcYe5vIaLFdDp2Pt+7eMHCktNWZfU=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR13MB2611.namprd13.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(6029001)(346002)(376002)(366004)(39850400004)(396003)(136003)(33430700001)(186003)(316002)(71200400001)(53546011)(2906002)(6506007)(5660300002)(7696005)(110136005)(4326008)(478600001)(9686003)(33440700001)(54906003)(966005)(52536014)(66476007)(44832011)(66556008)(66946007)(8936002)(55236004)(26005)(8676002)(83280400001)(83310400001)(83320400001)(83290400001)(55016002)(64756008)(33656002)(66446008)(76116006)(86362001)(83300400001);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: xHMCOzbyeaWrdqjzncK5gIDw3loqVZ+kQg5/S6DyLoAWS5GFJnLBx98+nQr5NYg7GydEEfnyGVVzTdSAt5ADfrhkILbjlReDzRXC+l0sj/s8c2RJ3UON3KgCLVKdK5vUSQONUmBRAxs62duDuQ/IuTNdDp5oXv+VgZX9EFbijoI8OTWArN/jYGjUMR5bJg4vSMNgwCZ7sB7ZPMOO0VJ961kY3z/YjvtmgFAz9yyDTfGKGjJ58PQViwLvtCsh8aSYfkvrGt3BrU78Ce2WvFymgue842+N7FHYrmMvcHf2R2NZkNxH2hAUzZcsqUSiuVNuMlfZtAdIGfCBccQCFdR7Np4KNHtmegRgJyVTurWE8hGgNEGoEbb7+uEs27sFU8iYNzFYM022dCgrWEUlv1kG02CjSRfEbHKSkbAy633jdNEatJGkWJ4xo2tju82n85aUIGCVRzGiddOBNOZdUgg1CuW7wdYqQ6jY/M/mOzrnywk9sK2KyjqqmXLZxlB8HH2i
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: sifive.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cf4859f8-f79b-484a-f980-08d7f31fc671
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 May 2020 07:16:49.4278 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 22f88e9d-ae0d-4ed9-b984-cdc9be1529f1
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: PX9poPEkLmuDYitdelfdRVURTCG8gPxeHQb5NR3/svPuV3Es1u+TGp0mLeUP0vk3tu8ijeV6uNrqvhUX0NwGcw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR13MB2819
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200508_001653_497372_3634F8DE 
X-CRM114-Status: GOOD (  24.62  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.70.83 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.70.83 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Atish Patra <Atish.Patra@wdc.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 Anup Patel <Anup.Patel@wdc.com>, Paul Walmsley <paul.walmsley@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

SGVsbG8sDQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogUGFsbWVyIERh
YmJlbHQgPHBhbG1lckBkYWJiZWx0LmNvbT4NCj4gU2VudDogVGh1cnNkYXksIE1heSA3LCAyMDIw
IDExOjAzIFBNDQo+IFRvOiBHcmVnIEtIIDxncmVna2hAbGludXhmb3VuZGF0aW9uLm9yZz4NCj4g
Q2M6IFNhZ2FyIEthZGFtIDxzYWdhci5rYWRhbUBzaWZpdmUuY29tPjsgUGF1bCBXYWxtc2xleQ0K
PiA8cGF1bC53YWxtc2xleUBzaWZpdmUuY29tPjsgbGludXgtcmlzY3ZAbGlzdHMuaW5mcmFkZWFk
Lm9yZzsgQXRpc2ggUGF0cmENCj4gPEF0aXNoLlBhdHJhQHdkYy5jb20+OyBBbnVwIFBhdGVsIDxB
bnVwLlBhdGVsQHdkYy5jb20+DQo+IFN1YmplY3Q6IFJlOiBbUEFUQ0hdIHR0eTogc2VyaWFsOiBh
ZGQgbWlzc2luZyBzcGluX2xvY2tfaW5pdCBmb3IgU2lGaXZlIFVBUlQNCj4gDQo+IFtFeHRlcm5h
bCBFbWFpbF0gRG8gbm90IGNsaWNrIGxpbmtzIG9yIGF0dGFjaG1lbnRzIHVubGVzcyB5b3UgcmVj
b2duaXplIHRoZQ0KPiBzZW5kZXIgYW5kIGtub3cgdGhlIGNvbnRlbnQgaXMgc2FmZQ0KPiANCj4g
T24gV2VkLCAwNiBNYXkgMjAyMCAyMzo0OTo1OCBQRFQgKC0wNzAwKSwgR3JlZyBLSCB3cm90ZToN
Cj4gPiBPbiBXZWQsIE1heSAwNiwgMjAyMCBhdCAxMjoyNjo1MlBNIC0wNzAwLCBTYWdhciBTaHJp
a2FudCBLYWRhbSB3cm90ZToNCj4gPj4gVW5pbml0aWFsaXNlZCBzcGluIGxvY2sgb24gc2lmaXZl
IHNlcmlhbCBwb3J0IChzc3ApIHJhaXNlZCBhIHJhY2UNCj4gPj4gY29uZGl0aW9uIGFuZCByZXN1
bHRlZCBpbiBzcGluIGxvY2sgYmFkIG1hZ2ljIGFzIHJlcG9ydGVkIGFuZA0KPiA+PiBkaXNjdXNz
ZWQgaGVyZSBbMV0gSW5pdGlhbGlzaW5nIHRoZSBzcGluIGxvY2sgcmVzb2x2ZXMgdGhlIGlzc3Vl
Lg0KPiA+Pg0KPiA+PiBUaGUgZml4IGlzIHRlc3RlZCBvbiBIaUZpdmUgVW5sZWFzaGVkIEEwMCBi
b2FyZCB3aXRoIExpbnV4IDUuNy1yYzQNCj4gPj4gYW5kIE9wZW5TQkkgdjAuNw0KPiA+Pg0KPiA+
PiBbMV0NCj4gPj4gaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvcGlwZXJtYWlsL2xpbnV4LXJp
c2N2LzIwMjAtTWF5LzAwOTcxMy5odG1sDQo+ID4NCj4gPiBJbiB0aGUgZnV0dXJlLCBjYW4geW91
IGxpbmsgdG8gbG9yZS5rZXJuZWwub3JnIGluc3RlYWQ/DQo+ID4NClRoYW5rcyBmb3Igc3VnZ2Vz
dGlvbnMsIEdyZWcuDQpZZXMsIHdpbGwgdXBkYXRlIGxpbmsgZnJvbSBsb3JlLmtlcm5lbC5vcmcN
Cj4gPj4NCj4gPj4gRml4ZXM6IDQ1YzA1NGQwODE1YiAoInR0eTogc2VyaWFsOiBhZGQgZHJpdmVy
IGZvciB0aGUgU2lGaXZlIFVBUlQiKQ0KPiA+DQo+ID4gU28gdGhpcyBzaG91bGQgYWxzbyBnbyB0
byBzdGFibGUga2VybmVscywgcmlnaHQ/DQo+ID4NClllcywgSSB3aWxsIGluY2x1ZGUgbGludXgt
a2VybmVsIGFuZCBsaW51eC1zZXJpYWwgYXMgd2VsbCBpbiBWMg0KDQo+ID4+IFJlcG9ydGVkLWJ5
OiBBdGlzaCBQYXRyYSA8QXRpc2guUGF0cmFAd2RjLmNvbT4NCj4gPj4gU2lnbmVkLW9mZi1ieTog
U2FnYXIgU2hyaWthbnQgS2FkYW0gPHNhZ2FyLmthZGFtQHNpZml2ZS5jb20+DQo+ID4+IC0tLQ0K
PiA+PiAgZHJpdmVycy90dHkvc2VyaWFsL3NpZml2ZS5jIHwgMSArDQo+ID4+ICAxIGZpbGUgY2hh
bmdlZCwgMSBpbnNlcnRpb24oKykNCj4gPj4NCj4gPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvdHR5
L3NlcmlhbC9zaWZpdmUuYw0KPiA+PiBiL2RyaXZlcnMvdHR5L3NlcmlhbC9zaWZpdmUuYyBpbmRl
eCAxM2VhZGNiLi5iMDYxYmRiIDEwMDY0NA0KPiA+PiAtLS0gYS9kcml2ZXJzL3R0eS9zZXJpYWwv
c2lmaXZlLmMNCj4gPj4gKysrIGIvZHJpdmVycy90dHkvc2VyaWFsL3NpZml2ZS5jDQo+ID4+IEBA
IC05ODksNiArOTg5LDcgQEAgc3RhdGljIGludCBzaWZpdmVfc2VyaWFsX3Byb2JlKHN0cnVjdA0K
PiBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpDQo+ID4+ICAgICAgc3NwLT5jbGsgPSBjbGs7DQo+ID4+
ICAgICAgc3NwLT5jbGtfbm90aWZpZXIubm90aWZpZXJfY2FsbCA9IHNpZml2ZV9zZXJpYWxfY2xr
X25vdGlmaWVyOw0KPiA+Pg0KPiA+PiArICAgIHNwaW5fbG9ja19pbml0KCZzc3AtPnBvcnQubG9j
ayk7DQo+ID4NCj4gPiBTaG91bGRuJ3QgdGhlIHBvcnQgbG9jayBiZSBpbml0aWFsaXplZCBieSB0
aGUgdHR5IGNvcmUgaW5zdGVhZD8gIEkNCj4gPiB0aGluayB0aGlzIGlzIHRoZSBzZWNvbmQgdGlt
ZSBJJ3ZlIHNlZW4gdGhpcyB0eXBlIG9mIGZpeCBuZWVkZWQgcmVjZW50bHkuLi4NCj4gDQo+IFlh
LCB0aGF0J3Mgd2hhdCB3YXMgYmxvY2tpbmcgbXkgcmV2aWV3ZWQtYnkuICBJdCBsb29rcyBsaWtl
IHRoZSBzcGlubG9jayBpc24ndA0KPiBpbml0aWFsaXplZCBmb3IgY29uc29sZS4gIElESyB3aHkg
dGhhdCdzIHRoZSBjYXNlLCBidXQgYXNzdW1pbmcgdGhhdCdzIHRoZSB3YXkNCj4gaXQncyBzdXBw
b3NlZCB0byB3b3JrIHdlIHNob3VsZCBvbmx5IGluaXRpYWxpemUgdGhlIHNwaW5sb2NrIGlmIHdl
IHNldCB1cCBhDQo+IGNvbnNvbGUgcG9ydCwgd2hpY2ggd2UgZG8gaW4gX19zc3BfYWRkX2NvbnNv
bGVfcG9ydCgpLiAgSW4gb3RoZXIgd29yZHMsDQo+IHNvbWV0aGluZyBsaWtlIHRoaXMNCj4gDQoN
ClRoYW5rcyBHcmVnIGFuZCBQYWxtZXIsIHlvdXIgaW5wdXRzIGFyZSB2YWx1YWJsZS4gSSBjb3Vs
ZCBzZWUgdGhhdCB0aGUgdHR5IGNvcmUgZG9lcw0KIGluaXRpYWxpc2UgdGhlIHBvcnQgc3BpbiBs
b2NrIHZpYSB0dHlfcG9ydF9pbml0IHdoaWxlIHJlZ2lzdGVyaW5nIHRoZSB1YXJ0X2RyaXZlciwg
d2hpbGUgDQp0aGVyZSBpc24ndCBhbnkgbG9jayBpbml0aWFsaXplZCBmb3IgY29uc29sZS4gIFRo
ZSBzZXJpYWxfY29yZSBlbnN1cmUgIHRoZSBzcGluIGxvY2sgZm9yIA0KY29uc29sZSBpcyBpbml0
aWFsaXNlZCAodWFydF9wb3J0X3NwaW5fbG9ja19pbml0KSAgYW5kIHNpbmNlIGl0IGlzIG1pc3Np
bmcgaW4gb3VyIGNhc2Ugd2UgDQplbmNvdW50ZXIgdGhlIHNwaW5fbG9jayBlcnJvci4gDQpJIGhh
dmUgdmVyaWZpZWQgdGhhdCBzcGluX2xvY2sgaW5pdCBmb3Igc3NwIGNvbnNvbGUgd29ya3MsIGFu
ZCB3aWxsIHN1Ym1pdCBhIHYyLg0KDQpUaGFua3MgJiBCUiwNClNhZ2FyIEthZGFtDQoNCj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvdHR5L3NlcmlhbC9zaWZpdmUuYyBiL2RyaXZlcnMvdHR5L3Nlcmlh
bC9zaWZpdmUuYyBpbmRleA0KPiAxM2VhZGNiOGFlYzQuLjBiNTExMGRhZDA1MSAxMDA2NDQNCj4g
LS0tIGEvZHJpdmVycy90dHkvc2VyaWFsL3NpZml2ZS5jDQo+ICsrKyBiL2RyaXZlcnMvdHR5L3Nl
cmlhbC9zaWZpdmUuYw0KPiBAQCAtODgzLDYgKzg4Myw3IEBAIGNvbnNvbGVfaW5pdGNhbGwoc2lm
aXZlX2NvbnNvbGVfaW5pdCk7DQo+IA0KPiAgc3RhdGljIHZvaWQgX19zc3BfYWRkX2NvbnNvbGVf
cG9ydChzdHJ1Y3Qgc2lmaXZlX3NlcmlhbF9wb3J0ICpzc3ApICB7DQo+ICsgICAgICAgc3Bpbl9s
b2NrX2luaXQoJnNzcC0+cG9ydC5sb2NrKTsNCj4gICAgICAgICBzaWZpdmVfc2VyaWFsX2NvbnNv
bGVfcG9ydHNbc3NwLT5wb3J0LmxpbmVdID0gc3NwOyAgfQ0KPiANCj4gPg0KPiA+IHRoYW5rcywN
Cj4gPg0KPiA+IGdyZWcgay1oDQo=

