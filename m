Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C42A2CFA1
	for <lists+linux-riscv@lfdr.de>; Tue, 28 May 2019 21:39:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UI6qv/FvtlKfBxIstYJkNC6H6ZKXqGHByBCszdMPTmc=; b=gslVWw/QuxZKq8
	gbfRhJlLXYYYXGTN0RgAIqLK8cnAlLQqQGnipPxUzYtlt+xVMGhV0mRa9XRLBMOg3iM2j7SFXBv5Y
	Lr+fK/WFdFVSFNzK+k4KtWs07vO+vRaeuShoT+c4NkZyOzKYeGLmdrcxtqKW6mHmHh3nLiiJJV3Do
	4xX4uYvBVc3vvXp4B+jAPqbQ03g4EAi+tEqavjqVtFKg5cyeTJaMf4TH+mL2QdtmHLp29/MoGq3xH
	mkXmmOa6J6d//nVg25PMW6ZN+2/lY5amyhTdGl5yetfOOcJjLnDPeMDqkKwvDPUUUc0ZSEYHJKVvc
	nig/4YBpnVJU0867N/4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVhwG-0008BU-Om; Tue, 28 May 2019 19:39:12 +0000
Received: from esa3.hgst.iphmx.com ([216.71.153.141])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVhwC-00088h-EK
 for linux-riscv@lists.infradead.org; Tue, 28 May 2019 19:39:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1559072348; x=1590608348;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=ob8sCHx72B/XvQ85bDX+Agc/1T79MhWtwsE+K9TdJuQ=;
 b=K3b33wxCzbEpc05WlaXl3RzPTa+Yf4X3tF0aE2+Wqbo8L7KvoB8TEbef
 B7JLxdPad+HgufqSlfiA1DQ0R4NjNafVp9ep//vKohmc2ZE99vuQ3WG2U
 4o1HZTkuXL3F6XmtsRFhAuwudv89hDB8BU0Vn92HMJitv12KKzv0lp0Ye
 o0CcCvSHgUM7094jwMB2mWBFi7k71L90D1nAB46A1a6H3W3maxrnD9npr
 dtIiGQKfmV7gLER5EeN6srBKg6BNourGwY8DoHI7EG4oi0cs5zTxCf5+s
 4V0JAZTupSPHqyx2aHTScudl4bIlE1kyr1MUTF5Mp5vcuEc6PfjCz6X0c Q==;
X-IronPort-AV: E=Sophos;i="5.60,524,1549900800"; d="scan'208";a="114202721"
Received: from mail-bn3nam04lp2054.outbound.protection.outlook.com (HELO
 NAM04-BN3-obe.outbound.protection.outlook.com) ([104.47.46.54])
 by ob1.hgst.iphmx.com with ESMTP; 29 May 2019 03:39:06 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ob8sCHx72B/XvQ85bDX+Agc/1T79MhWtwsE+K9TdJuQ=;
 b=khKzQpIc472E22zTfKRXQrKxmrVJTIQlqyhBZ33qnQrEdFEp1V9vi4nyh9m+xHOWBF/YUvjQBGSd+CkrAD6EnjOXZYg1zJRviVat0oI+LTPY7Y6P/eN8cxsz3sTbU+zu8rKM4HAJml3izeac4fengUQhi10qTeBriO4SrfFocw4=
Received: from BYAPR04MB3782.namprd04.prod.outlook.com (52.135.214.142) by
 BYAPR04MB5830.namprd04.prod.outlook.com (20.179.58.221) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1922.15; Tue, 28 May 2019 19:39:05 +0000
Received: from BYAPR04MB3782.namprd04.prod.outlook.com
 ([fe80::ce8:bf96:aaf8:d2b0]) by BYAPR04MB3782.namprd04.prod.outlook.com
 ([fe80::ce8:bf96:aaf8:d2b0%4]) with mapi id 15.20.1922.021; Tue, 28 May 2019
 19:39:05 +0000
From: Atish Patra <Atish.Patra@wdc.com>
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>, Anup Patel <Anup.Patel@wdc.com>
Subject: Re: [v4 PATCH] RISC-V: Add an Image header that boot loader can parse.
Thread-Topic: [v4 PATCH] RISC-V: Add an Image header that boot loader can
 parse.
Thread-Index: AQHVEefQXkO1hg4aD0W01a0W7TgOiKZ/DuaAgACA6ICAABe4gIAARqMAgABLGYCAACTqAIAAA02AgACUuYA=
Date: Tue, 28 May 2019 19:39:04 +0000
Message-ID: <92856F69-E917-44E4-AD58-D09780C48AE8@wdc.com>
References: <20190524041814.7497-1-atish.patra@wdc.com>
 <CAKv+Gu9U56b50TrfriBfRFed_1aoXg2Y624tu7v5m2y+6DVq5w@mail.gmail.com>
 <20190527221619.fkxtzk4jpeyfoptf@excalibur.cnev.de>
 <3178D175-18AD-47D0-8D51-CB2900DFA572@sifive.com>
 <MN2PR04MB60610CF4829D5251A112CF9C8D1E0@MN2PR04MB6061.namprd04.prod.outlook.com>
 <20190528082248.awjwbz44lp6ak3m3@excalibur.cnev.de>
 <MN2PR04MB6061590CE56092CB79D96AA48D1E0@MN2PR04MB6061.namprd04.prod.outlook.com>
 <CAKv+Gu_7bQaBf8+94VKHT3bYGWbTnHoTWy20pa1Bj9e1o3cAOA@mail.gmail.com>
In-Reply-To: <CAKv+Gu_7bQaBf8+94VKHT3bYGWbTnHoTWy20pa1Bj9e1o3cAOA@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Atish.Patra@wdc.com; 
x-originating-ip: [2607:fb90:9e4d:a2f5:7c7d:af93:6799:77fe]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3099ec31-a7ae-4178-8018-08d6e3a424cf
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:BYAPR04MB5830; 
x-ms-traffictypediagnostic: BYAPR04MB5830:
wdcipoutbound: EOP-TRUE
x-microsoft-antispam-prvs: <BYAPR04MB583087A8C09D1F1ED25827A6FA1E0@BYAPR04MB5830.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 00514A2FE6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(396003)(366004)(346002)(39860400002)(376002)(136003)(13464003)(189003)(199004)(51914003)(68736007)(71200400001)(71190400001)(2616005)(11346002)(446003)(14444005)(46003)(14454004)(6512007)(25786009)(476003)(256004)(82746002)(83716004)(72206003)(33656002)(6246003)(66476007)(478600001)(2906002)(66556008)(486006)(561944003)(53936002)(6116002)(6506007)(53546011)(66446008)(66946007)(8936002)(6486002)(86362001)(64756008)(5660300002)(305945005)(73956011)(4326008)(36756003)(76116006)(110136005)(91956017)(54906003)(76176011)(99286004)(8676002)(186003)(7736002)(229853002)(6436002)(102836004)(316002)(6636002)(7416002)(81156014)(81166006);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB5830;
 H:BYAPR04MB3782.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: BsGbT25NlqMgiC9+I2YXLN5JB355JBda2uIlhie8QI45OPv1d3Fa9y3DpnPSzmI3SozZK1GP+dd4ve0q24hQZXll62RCJbk1uiNm/9jJA/hX/0U4c2eA1BbnLEMNekH1ulNROArWKH8JhDJPY1u2bDa2oCgnuiGQOOcU0fDIstthl74Xr0yiwCy3uWRldyKbKstTAHEzbDTQ+1eWn7VxTtOzSwWlyZMSWt4I4ERs1wcHmw7YeGoGW9QQz+dx4mPS5Csh6mJjC92trzgcKlS9LhwpwN2mnEoLr/gEb5F2R5npbaD0x9yOcFCnxpIDYVCEcI2p3jvYcsplihz65NCzdckiAaTmIIwSe7rd0rmauU1e5X+roMLanTlhOCyHLOgfIF197dZYTwSSib2eqNTtXiyE68jGLQMpAEAMZrGxJGI=
Content-ID: <1F40EAE8682A4C44B318CB12D3FAB364@sharedspace.onmicrosoft.com>
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3099ec31-a7ae-4178-8018-08d6e3a424cf
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 May 2019 19:39:04.9724 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Atish.Patra@wdc.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB5830
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_123908_708925_9A400273 
X-CRM114-Status: GOOD (  23.24  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.141 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-riscv@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-riscv.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-riscv/>
List-Post: <mailto:linux-riscv@lists.infradead.org>
List-Help: <mailto:linux-riscv-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=subscribe>
Cc: Albert Ou <aou@eecs.berkeley.edu>, Jonathan Corbet <corbet@lwn.net>,
 Palmer Dabbelt <palmer@sifive.com>,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 Zong Li <zong@andestech.com>, Troy Benjegerdes <troy.benjegerdes@sifive.com>,
 Nick Kossifidis <mick@ics.forth.gr>,
 "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
 Karsten Merker <merker@debian.org>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "marek.vasut@gmail.com" <marek.vasut@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

PiBPbiA1LzI4LzE5IDM6NDcgQU0sIEFyZCBCaWVzaGV1dmVsIHdyb3RlOg0KPj4gT24gVHVlLCAy
OCBNYXkgMjAxOSBhdCAxMjozNCwgQW51cCBQYXRlbCA8QW51cC5QYXRlbEB3ZGMuY29tPiB3cm90
ZToNCj4+IA0KPj4gDQo+PiANCj4+PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPj4+IEZy
b206IEthcnN0ZW4gTWVya2VyIDxtZXJrZXJAZGViaWFuLm9yZz4NCj4+PiBTZW50OiBUdWVzZGF5
LCBNYXkgMjgsIDIwMTkgMTo1MyBQTQ0KPj4+IFRvOiBBbnVwIFBhdGVsIDxBbnVwLlBhdGVsQHdk
Yy5jb20+DQo+Pj4gQ2M6IFRyb3kgQmVuamVnZXJkZXMgPHRyb3kuYmVuamVnZXJkZXNAc2lmaXZl
LmNvbT47IEthcnN0ZW4gTWVya2VyDQo+Pj4gPG1lcmtlckBkZWJpYW4ub3JnPjsgQWxiZXJ0IE91
IDxhb3VAZWVjcy5iZXJrZWxleS5lZHU+OyBKb25hdGhhbg0KPj4+IENvcmJldCA8Y29yYmV0QGx3
bi5uZXQ+OyBBcmQgQmllc2hldXZlbCA8YXJkLmJpZXNoZXV2ZWxAbGluYXJvLm9yZz47DQo+Pj4g
bGludXgta2VybmVsQHZnZXIua2VybmVsLm9yZyBMaXN0IDxsaW51eC1rZXJuZWxAdmdlci5rZXJu
ZWwub3JnPjsgWm9uZyBMaQ0KPj4+IDx6b25nQGFuZGVzdGVjaC5jb20+OyBBdGlzaCBQYXRyYSA8
QXRpc2guUGF0cmFAd2RjLmNvbT47IFBhbG1lcg0KPj4+IERhYmJlbHQgPHBhbG1lckBzaWZpdmUu
Y29tPjsgcGF1bC53YWxtc2xleUBzaWZpdmUuY29tOyBOaWNrIEtvc3NpZmlkaXMNCj4+PiA8bWlj
a0BpY3MuZm9ydGguZ3I+OyBsaW51eC1yaXNjdkBsaXN0cy5pbmZyYWRlYWQub3JnOw0KPj4+IG1h
cmVrLnZhc3V0QGdtYWlsLmNvbQ0KPj4+IFN1YmplY3Q6IFJlOiBbdjQgUEFUQ0hdIFJJU0MtVjog
QWRkIGFuIEltYWdlIGhlYWRlciB0aGF0IGJvb3QgbG9hZGVyIGNhbg0KPj4+IHBhcnNlLg0KPj4+
IA0KPj4+PiBPbiBUdWUsIE1heSAyOCwgMjAxOSBhdCAwMzo1NDowMkFNICswMDAwLCBBbnVwIFBh
dGVsIHdyb3RlOg0KPj4+Pj4+IEZyb206IFRyb3kgQmVuamVnZXJkZXMgPHRyb3kuYmVuamVnZXJk
ZXNAc2lmaXZlLmNvbT4NCj4+Pj4+Pj4gT24gTWF5IDI3LCAyMDE5LCBhdCA1OjE2IFBNLCBLYXJz
dGVuIE1lcmtlciA8bWVya2VyQGRlYmlhbi5vcmc+DQo+Pj4+Pj4gd3JvdGU6DQo+Pj4+Pj4gDQo+
Pj4+Pj4+IE9uIE1vbiwgTWF5IDI3LCAyMDE5IGF0IDA0OjM0OjU3UE0gKzAyMDAsIEFyZCBCaWVz
aGV1dmVsIHdyb3RlOg0KPj4+Pj4+PiBPbiBGcmksIDI0IE1heSAyMDE5IGF0IDA2OjE4LCBBdGlz
aCBQYXRyYSA8YXRpc2gucGF0cmFAd2RjLmNvbT4NCj4+PiB3cm90ZToNCj4+Pj4+Pj4+IEN1cnJl
bnRseSwgdGhlIGxhc3Qgc3RhZ2UgYm9vdCBsb2FkZXJzIHN1Y2ggYXMgVS1Cb290IGNhbiBhY2Nl
cHQNCj4+Pj4+Pj4+IG9ubHkgdUltYWdlIHdoaWNoIGlzIGFuIHVubmVjZXNzYXJ5IGFkZGl0aW9u
YWwgc3RlcCBpbg0KPj4+Pj4+Pj4gYXV0b21hdGluZyBib290IHByb2Nlc3MuDQo+Pj4+Pj4+PiAN
Cj4+Pj4+Pj4+IEFkZCBhbiBpbWFnZSBoZWFkZXIgdGhhdCBib290IGxvYWRlciB1bmRlcnN0YW5k
cyBhbmQgYm9vdCBMaW51eA0KPj4+Pj4+Pj4gZnJvbSBmbGF0IEltYWdlIGRpcmVjdGx5Lg0KPj4+
Pj4+Pj4gDQo+Pj4+Pj4+PiBUaGlzIGhlYWRlciBpcyBiYXNlZCBvbiBBUk02NCBib290IGltYWdl
IGhlYWRlciBhbmQgcHJvdmlkZXMgYW4NCj4+Pj4+Pj4+IG9wcG9ydHVuaXR5IHRvIGNvbWJpbmUg
Ym90aCBBUk02NCAmIFJJU0MtViBpbWFnZSBoZWFkZXJzIGluDQo+Pj4gZnV0dXJlLg0KPj4+Pj4+
Pj4gDQo+Pj4+Pj4+PiBBbHNvIG1ha2Ugc3VyZSB0aGF0IFBFL0NPRkYgaGVhZGVyIGNhbiBjby1l
eGlzdCBpbiB0aGUgc2FtZQ0KPj4+Pj4+Pj4gaW1hZ2Ugc28gdGhhdCBFRkkgc3R1YiBjYW4gYmUg
c3VwcG9ydGVkIGZvciBSSVNDLVYgaW4gZnV0dXJlLg0KPj4+Pj4+Pj4gRUZJIHNwZWNpZmljYXRp
b24gbmVlZHMgUEUvQ09GRiBpbWFnZSBoZWFkZXIgaW4gdGhlIGJlZ2lubmluZyBvZg0KPj4+Pj4+
Pj4gdGhlIGtlcm5lbCBpbWFnZSBpbiBvcmRlciB0byBsb2FkIGl0IGFzIGFuIEVGSSBhcHBsaWNh
dGlvbi4gSW4NCj4+Pj4+Pj4+IG9yZGVyIHRvIHN1cHBvcnQgRUZJIHN0dWIsIGNvZGUwIHNob3Vs
ZCBiZSByZXBsYWNlZCB3aXRoICJNWiINCj4+Pj4+Pj4+IG1hZ2ljIHN0cmluZyBhbmQgcmVzNChh
dCBvZmZzZXQgMHgzYykgc2hvdWxkIHBvaW50IHRvIHRoZSByZXN0DQo+Pj4+Pj4+PiBvZiB0aGUg
UEUvQ09GRiBoZWFkZXIgKHdoaWNoIHdpbGwgYmUgYWRkZWQgZHVyaW5nIEVGSSBzdXBwb3J0KS4N
Cj4+Pj4+PiBbLi4uXQ0KPj4+Pj4+Pj4gRG9jdW1lbnRhdGlvbi9yaXNjdi9ib290LWltYWdlLWhl
YWRlci50eHQgfCA1MA0KPj4+Pj4gKysrKysrKysrKysrKysrKysrDQo+Pj4+Pj4+PiBhcmNoL3Jp
c2N2L2luY2x1ZGUvYXNtL2ltYWdlLmggICAgICAgICAgICB8IDY0DQo+Pj4gKysrKysrKysrKysr
KysrKysrKysrKysNCj4+Pj4+Pj4+IGFyY2gvcmlzY3Yva2VybmVsL2hlYWQuUyAgICAgICAgICAg
ICAgICAgIHwgMzIgKysrKysrKysrKysrDQo+Pj4+Pj4+PiAzIGZpbGVzIGNoYW5nZWQsIDE0NiBp
bnNlcnRpb25zKCspIGNyZWF0ZSBtb2RlIDEwMDY0NA0KPj4+Pj4+Pj4gRG9jdW1lbnRhdGlvbi9y
aXNjdi9ib290LWltYWdlLWhlYWRlci50eHQNCj4+Pj4+Pj4+IGNyZWF0ZSBtb2RlIDEwMDY0NCBh
cmNoL3Jpc2N2L2luY2x1ZGUvYXNtL2ltYWdlLmgNCj4+Pj4+Pj4+IA0KPj4+Pj4+Pj4gZGlmZiAt
LWdpdCBhL0RvY3VtZW50YXRpb24vcmlzY3YvYm9vdC1pbWFnZS1oZWFkZXIudHh0DQo+Pj4+Pj4+
PiBiL0RvY3VtZW50YXRpb24vcmlzY3YvYm9vdC1pbWFnZS1oZWFkZXIudHh0DQo+Pj4+Pj4+PiBu
ZXcgZmlsZSBtb2RlIDEwMDY0NA0KPj4+Pj4+Pj4gaW5kZXggMDAwMDAwMDAwMDAwLi42OGFiYzIz
NTNjZWMNCj4+Pj4+Pj4+IC0tLSAvZGV2L251bGwNCj4+Pj4+Pj4+ICsrKyBiL0RvY3VtZW50YXRp
b24vcmlzY3YvYm9vdC1pbWFnZS1oZWFkZXIudHh0DQo+Pj4+Pj4+PiBAQCAtMCwwICsxLDUwIEBA
DQo+Pj4+Pj4+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIEJvb3QgaW1hZ2UgaGVh
ZGVyIGluIFJJU0MtVg0KPj4+Pj4+Pj4gKyBMaW51eA0KPj4+Pj4+Pj4gKw0KPj4+Pj4+Pj4gKyA9
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT0NCj4+Pj4+Pj4+ICsN
Cj4+Pj4+Pj4+ICtBdXRob3I6IEF0aXNoIFBhdHJhIDxhdGlzaC5wYXRyYUB3ZGMuY29tPiBEYXRl
ICA6IDIwIE1heSAyMDE5DQo+Pj4+Pj4+PiArDQo+Pj4+Pj4+PiArVGhpcyBkb2N1bWVudCBvbmx5
IGRlc2NyaWJlcyB0aGUgYm9vdCBpbWFnZSBoZWFkZXIgZGV0YWlscyBmb3INCj4+Pj4+Pj4+ICtS
SVNDLVYNCj4+Pj4+IExpbnV4Lg0KPj4+Pj4+Pj4gK1RoZSBjb21wbGV0ZSBib290aW5nIGd1aWRl
IHdpbGwgYmUgYXZhaWxhYmxlIGF0DQo+Pj4+PiBEb2N1bWVudGF0aW9uL3Jpc2N2L2Jvb3Rpbmcu
dHh0Lg0KPj4+Pj4+Pj4gKw0KPj4+Pj4+Pj4gK1RoZSBmb2xsb3dpbmcgNjQtYnl0ZSBoZWFkZXIg
aXMgcHJlc2VudCBpbiBkZWNvbXByZXNzZWQgTGludXgNCj4+Pj4+Pj4+ICtrZXJuZWwNCj4+Pj4+
IGltYWdlLg0KPj4+Pj4+Pj4gKw0KPj4+Pj4+Pj4gKyAgICAgICB1MzIgY29kZTA7ICAgICAgICAg
ICAgICAgIC8qIEV4ZWN1dGFibGUgY29kZSAqLw0KPj4+Pj4+Pj4gKyAgICAgICB1MzIgY29kZTE7
ICAgICAgICAgICAgICAgIC8qIEV4ZWN1dGFibGUgY29kZSAqLw0KPj4+Pj4+PiANCj4+Pj4+Pj4g
QXBvbG9naWVzIGZvciBub3QgbWVudGlvbmluZyB0aGlzIGluIG15IHByZXZpb3VzIHJlcGx5LCBi
dXQgZ2l2ZW4NCj4+Pj4+Pj4gdGhhdCB5b3UgYWxyZWFkeSBrbm93IHRoYXQgeW91IHdpbGwgbmVl
ZCB0byBwdXQgdGhlIG1hZ2ljIHN0cmluZw0KPj4+Pj4+PiBNWiBhdCBvZmZzZXQgMHgwLCBpdCBt
YWtlcyBtb3JlIHNlbnNlIHRvIG5vdCBwdXQgYW55IGNvZGUgdGhlcmUNCj4+Pj4+Pj4gYXQgYWxs
LCBidXQgZWR1Y2F0ZSB0aGUgYm9vdGxvYWRlciB0aGF0IHRoZSBmaXJzdCBleGVjdXRhYmxlDQo+
Pj4+Pj4+IGluc3RydWN0aW9uIGlzIGF0IG9mZnNldCAweDIwLCBhbmQgcHV0IHRoZSBzcGFyZSBm
aWVsZHMgcmlnaHQNCj4+Pj4+Pj4gYWZ0ZXIgaXQgaW4gY2FzZSB5b3UgZXZlciBuZWVkIG1vcmUg
dGhhbiAyIHNsb3RzLiAoT24gYXJtNjQsIHdlDQo+Pj4+Pj4+IHdlcmUgbHVja3kgdG8gYmUgYWJs
ZSB0byBmaW5kIGFuIG9wY29kZSB0aGF0IGhhcHBlbmVkIHRvIGNvbnRhaW4NCj4+Pj4+Pj4gdGhl
IE1aIGJpdCBwYXR0ZXJuIGFuZCBhY3QgYWxtb3N0IGxpa2UgYSBOT1AsIGJ1dCBpdCBzZWVtcyBz
aWxseQ0KPj4+Pj4+PiB0byByZWx5IG9uIHRoYXQgZm9yIFJJU0MtViBhcw0KPj4+Pj4+PiB3ZWxs
KQ0KPj4+Pj4+PiANCj4+Pj4+Pj4gU28gc29tZXRoaW5nIGxpa2UNCj4+Pj4+Pj4gDQo+Pj4+Pj4+
IHUxNiBwZV9yZXMxOyAgLyogTVogZm9yIEVGSSBib290YWJsZSBpbWFnZXMsIGRvbid0IGNhcmUg
b3RoZXJ3aXNlICovDQo+Pj4+Pj4+IHU4IG1hZ2ljWzZdOyAgICAvKiAiUklTQ1ZcMCINCj4+Pj4+
Pj4gDQo+Pj4+Pj4+IHU2NCB0ZXh0X29mZnNldDsgICAgICAgICAgLyogSW1hZ2UgbG9hZCBvZmZz
ZXQsIGxpdHRsZSBlbmRpYW4gKi8NCj4+Pj4+Pj4gdTY0IGltYWdlX3NpemU7ICAgICAgICAgICAv
KiBFZmZlY3RpdmUgSW1hZ2Ugc2l6ZSwgbGl0dGxlIGVuZGlhbiAqLw0KPj4+Pj4+PiB1NjQgZmxh
Z3M7ICAgICAgICAgICAgICAgIC8qIGtlcm5lbCBmbGFncywgbGl0dGxlIGVuZGlhbiAqLw0KPj4+
Pj4+PiANCj4+Pj4+Pj4gdTMyIGNvZGUwOyAgICAgICAgICAgICAgICAvKiBFeGVjdXRhYmxlIGNv
ZGUgKi8NCj4+Pj4+Pj4gdTMyIGNvZGUxOyAgICAgICAgICAgICAgICAvKiBFeGVjdXRhYmxlIGNv
ZGUgKi8NCj4+Pj4+Pj4gDQo+Pj4+Pj4+IHU2NCByZXNlcnZlZFsyXTsgICAgIC8qIHJlc2VydmVk
IGZvciBmdXR1cmUgdXNlICovDQo+Pj4+Pj4+IA0KPj4+Pj4+PiB1MzIgdmVyc2lvbjsgICAgICAg
ICAgICAgIC8qIFZlcnNpb24gb2YgdGhpcyBoZWFkZXIgKi8NCj4+Pj4+Pj4gdTMyIHBlX3JlczI7
ICAgICAgICAgICAgICAgICAvKiBSZXNlcnZlZCBmb3IgUEUgQ09GRiBvZmZzZXQgKi8NCj4+Pj4+
PiANCj4+Pj4+PiBIZWxsbywNCj4+Pj4+PiANCj4+Pj4+PiB3b3VsZG4ndCB0aGF0IGltbWVkaWF0
ZWx5IGJyZWFrIGV4aXN0aW5nIHN5c3RlbXMgKGluY2x1ZGluZyBxZW11DQo+Pj4+Pj4gd2hlbiBs
b2FkaW5nIGtlcm5lbHMgd2l0aCB0aGUgIi1rZXJuZWwiIG9wdGlvbikgdGhhdCByZWx5IG9uIHRo
ZQ0KPj4+Pj4+IGZhY3QgdGhhdCB0aGUga2VybmVsIGVudHJ5IHBvaW50IGlzIGFsd2F5cyBhdCB0
aGUga2VybmVsIGxvYWQNCj4+Pj4+PiBhZGRyZXNzPyAgVGhlDQo+Pj4+Pj4gQVJNNjQgaGVhZGVy
IGFuZCBBdGlzaCdzIG9yaWdpbmFsIFJJU0MtViBwcm9wb3NhbCBiYXNlZCBvbiB0aGUNCj4+Pj4+
PiBBUk02NCBoZWFkZXIga2VlcCB0aGUgcHJvcGVydHkgdGhhdCBqdW1waW5nIHRvIHRoZSBrZXJu
ZWwgbG9hZA0KPj4+Pj4+IGFkZHJlc3MgYWx3YXlzIHdvcmtzLCByZWdhcmRsZXNzIG9mIHdoYXQg
dGhlIHBhcnRpY3VsYXIgaGVhZGVyDQo+Pj4+Pj4gbG9va3MgbGlrZSBhbmQgd2hpY2ggcG90ZW50
aWFsIGZ1dHVyZSBleHRlbnNpb25zIGl0IGluY2x1ZGVzLCBidXQNCj4+Pj4+PiB0aGUgcHJvcG9z
ZWQgY2hhbmdlIGFib3ZlIHdvdWxkbid0IGRvIHRoYXQuDQo+Pj4+Pj4gDQo+Pj4+Pj4gQWx0aG91
Z2ggSSBhZ3JlZSB0aGF0IGhhdmluZyB0byBpbnRlZ3JhdGUgdGhlICJNWiIgc3RyaW5nIGFzIGFu
DQo+Pj4+Pj4gaW5zdHJ1Y3Rpb24gaXNuJ3QgcGFydGljdWxhcmx5IG5pY2UsIEkgZG9uJ3QgdGhp
bmsgdGhhdCB0aGlzIGlzIGENCj4+Pj4+PiBzdWZmaWNpZW50IGp1c3RpZmljYXRpb24gZm9yIGJy
ZWFraW5nIGNvbXBhdGliaWxpdHkgd2l0aCBwcmlvcg0KPj4+Pj4+IGtlcm5lbCByZWxlYXNlcyBh
bmQvb3IgZXhpc3RpbmcgYm9vdCBmaXJtd2FyZS4gIE9uIFJJU0MtViwgdGhlDQo+Pj4+Pj4gIk1a
IiBzdHJpbmcgaXMgYSBjb21wcmVzc2VkIGxvYWQgaW1tZWRpYXRlIHRvIHgyMC9zNCwgaS5lLiBh
bg0KPj4+Pj4+IGluc3RydWN0aW9uIHRoYXQgc2hvdWxkIGJlICJoYXJtbGVzcyIgYXMgZmFyIGFz
IHRoZSBrZXJuZWwgYm9vdA0KPj4+Pj4+IGZsb3cgaXMgY29uY2VybmVkIGFzIHRoZQ0KPj4+Pj4+
IHgyMC9zNCByZWdpc3RlciBBRkFJSyBkb2Vzbid0IGNvbnRhaW4gYW55IGluZm9ybWF0aW9uIHRo
YXQgdGhlDQo+Pj4+Pj4ga2VybmVsIHdvdWxkIHVzZS4NCj4+Pj4+PiANCj4+Pj4+PiBSZWdhcmRz
LA0KPj4+Pj4+IEthcnN0ZW4NCj4+Pj4+IA0KPj4+Pj4gWWVzLCB0aGF0IHdvdWxkIGJyZWFrIGV4
aXN0aW5nIHN5c3RlbXMuIEJlc2lkZXMsIHRoZSBxZW11IC1rZXJuZWwNCj4+Pj4+IG9wdGlvbiB1
c2VzIHRoZSB2bWxpbnV4IGVsZiBmaWxlLCBhbmQgSSB0aGluayBhIGJldHRlciBzb2x1dGlvbiBp
cw0KPj4+Pj4gbWFrZSDigJhsb2FkZWxm4oCZIHdvcmssIGFuZCBpbmNsdWRlIGEgc2Vjb25kIG1l
dGhvZCBmb3IgRUZJLg0KPj4+Pj4gDQo+Pj4+PiAodW5mb3J0dW5hdGVseSwgSSBoYWQgdG8gZHJv
cCBzb21lIGxpc3RzIGFzIEnigJltIGhhdmluZyB0cm91YmxlDQo+Pj4+PiBzZW5kaW5nIHRvIHRo
ZW0gdmlhIGdtYWlsLCBzbyB0aGUgQ0MgbGlzdCBvbiBteSByZXNwb25zZSBoYXMgYmVlbg0KPj4+
Pj4gbGltaXRlZCkNCj4+Pj4gDQo+Pj4+IE5vcGVzLCBpdCB3b3JrcyBwZXJmZWN0bHkgZmluZSBv
biBRRU1VIFJJU0MtVi4NCj4+Pj4gDQo+Pj4+IEp1c3QgbGlrZSBBUk02NCwgd2UgYXJlIGx1Y2t5
IGZvciBSSVNDLVYgYXMgd2VsbC4gVGhlICJNWiIgc3RyaW5nIGlzIGENCj4+Pj4gaGFybWxlc3Mg
bG9hZCBpbnN0cnVjdGlvbiBpbiBSSVNDLVYgc28gd2UgZG9uJ3QgbmVlZCBhbnkgY2hhbmdlcyBp
biBRRU1VLg0KPj4+IA0KPj4+IEhlbGxvLA0KPj4+IA0KPj4+IGp1c3QgdG8gYXZvaWQgbWlzdW5k
ZXJzdGFuZGluZ3M6IEF0aXNoLCBkb2VzIHlvdXIgIk5vcGVzLCBpdCB3b3JrcyBwZXJmZWN0bHkN
Cj4+PiBmaW5lIG9uIFFFTVUgUklTQy1WIiByZWZlciB0byB5b3VyIG9yaWdpbmFsIGhlYWRlciBw
cm9wb3NhbCBvciB0byBBcmQncw0KPj4+IG1vZGlmaWVkIGhlYWRlciBwcm9wb3NhbD8gIEZvciB5
b3VyIHByb3Bvc2FsIEkgYWdyZWUgdGhhdCBpdCB3b3JrcyB3aXRob3V0DQo+PiANCj4+IFNvcnJ5
IGZvciB0aGUgY29uZnVzaW9uLiBJIG1lYW50IGhlcmUgdGhhdCBhZGRpbmcgIk1aIiBhdCBzdGFy
dCBpbiBBdGlzaCdzDQo+PiBwcm9wb3NlZCBoZWFkZXIgd29ya3MgZmluZSBvbiBRRU1VLg0KPj4g
DQo+Pj4gcHJvYmxlbXMgaW4gYWxsIGNhc2VzIHRoYXQgaGF2ZSB3b3JrZWQgYmVmb3JlIGludHJv
ZHVjdGlvbiBvZiB0aGUgaGVhZGVyLA0KPj4+IGkuZS4gYWRkaW5nIHlvdXIgcHJvcG9zZWQgaGVh
ZGVyIGlzIGNvbXBsZXRlbHkgdHJhbnNwYXJlbnQsIGJ1dCBhcyBkZXNjcmliZWQNCj4+PiBhYm92
ZSBJIGhhdmUgZG91YnRzIHRoYXQgdGhlIHNhbWUgaXMgdHJ1ZSBmb3IgdGhlIChkaWZmZXJlbnQp
IGhlYWRlciBmb3JtYXQNCj4+PiB0aGF0IEFyZCBoYXMgcHJvcG9zZWQgYWJvdmUuDQo+PiANCj4+
IFllcywgQXJkJ3MgcHJvcG9zZWQgaGVhZGVyIHdpbGwgYnJlYWsgYm9vdGluZyBvbiBjdXJyZW50
IFFFTVUgYW5kDQo+PiBleGlzdGluZyBIVy4gSSB0aGluayBBcmQncyBwcm9wb3NlZCBoZWFkZXIg
d2FzIHRvIGFkZHJlc3MgdGhlIGNhc2UgaWYNCj4+ICJNWiIgd2FzIG5vdCBhIHZhbGlkIGFuZCBo
YXJtbGVzcyBpbnN0cnVjdGlvbiBpbiBSSVNDLVYuIE90aGVyIHRoYW4NCj4+IHRoYXQgQXJkJ3Mg
cHJvcG9zYWwgaXMgc2ltaWxhciB0byBBdGlzaCdzIHByb3Bvc2FsIGJ1dCBvcmdhbml6ZWQgZGlm
ZmVyZW50bHkuDQo+PiANCj4+IEZvciBBdGlzaCdzIHByb3Bvc2VkIGhlYWRlciwgd2UgYXJlIGNl
cnRhaW5seSByZWx5aW5nIG9uIHRoZSBmYWN0IHRoYXQNCj4+ICJNWiIgcmVwcmVzZW50cyBhIHZh
bGlkIGFuZCBoYXJtbGVzcyBpbnN0cnVjdGlvbiAoanVzdCBsaWtlIEFSTTY0KSBidXQNCj4+IHRo
aXMgYXBwcm9hY2ggaXMgYWxsb3dpbmcgdXMgdG8gYm9vdCBMaW51eCBSSVNDLVYga2VybmVsIHdp
dGhvdXQgYnJlYWtpbmcNCj4+IGV4aXN0aW5nIGJvb3RpbmcgbWV0aG9kcy4NCj4gRmFpciBlbm91
Z2guIElmIHlvdSBndXlzIGNhbiBsaXZlIHdpdGggaXQsIHRoZW4gc28gY2FuIEkgOi0pDQoNClRo
YW5rcyBmb3IgdGhlIHJldmlldyAmIGZlZWRiYWNrISEgSXQgZ290IGFsbCByZXNvbHZlZCBiZWZv
cmUgSSBoYWQgYSBjaGFuY2UgdG8gdGFrZSBsb29rIDopIDopLg0KDQpAUGF1bDogQ2FuIHlvdSBx
dWV1ZSB0aGlzIGZvciBuZXh0IFBSID8NCg0KLS0gDQpSZWdhcmRzLA0KQXRpc2gNCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LXJpc2N2IG1haWxp
bmcgbGlzdApsaW51eC1yaXNjdkBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcmlzY3YK
