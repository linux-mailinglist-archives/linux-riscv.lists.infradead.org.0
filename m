Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A97A32A2A5
	for <lists+linux-riscv@lfdr.de>; Sat, 25 May 2019 05:50:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=efUuWDqk1ruA0gD4uabnQtt5FB4m2NMM0leTJncO540=; b=oHdAkd//489Lw0
	5J6KzTvVrr9oSlpMRbjm2HMa2ha6LWoCrk4mfI7e0NQcYER9vM5Xptl7JLjOCTyCesTiCS+hLXAR0
	aJDrpoEQqMdyCBATr5W3uuXkdMCbdvc5xKuM4nMv8Iprq6RlHZVNAvje26P3GCzW3LEyoBaK1sBV8
	7bwiTEbfj+HveIgSBpzwbNjw1cpGIFlb+3qZqLumHGKwg095pciGQffiV2LoUEB+KS89B/HEGc5az
	7GSs7VDxDLFKYmb3uqJvXYzcb57tnOTS6olJQW9fuL4vVwX3qZgYtcvPfTr0kHW2Haq6RBT8hsNTK
	1p0NRRc1lPTZFW4cz3dg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUNh5-0005Vl-TH; Sat, 25 May 2019 03:50:03 +0000
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUNh1-0005MR-M3
 for linux-riscv@lists.infradead.org; Sat, 25 May 2019 03:50:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1558756199; x=1590292199;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=zevrAzTY6INGQ3rCI/7XYevIMuuvigWQ4leg3lM1nY8=;
 b=PJhSt43vBdNZmDcJhIwFcF2BWELX88w5+25bP0OT1jsmFK+JlcbxtsQv
 quye3RXn9y13MuiTAcr5R3dqiMaigKDWs4e4N3MfZwoMREW0BkAcRfwNt
 o+2INvy5NqxPlNVDDYj13gbyGmTOzX9QAQdC5szxNeaH4WIG+BoiAIMab
 JTdAm38OC0jgelMFJZHA6QsnOYLNW+nNhYZQ3Ci8FY3pWT9ZHN+MYHrBf
 sYroC4ZMSA1k1OcZHJ+mGLeeIgN/Y/Ya+TfnnmDLRbpf1p6vKECUNr52M
 0rgoQLihWh0txKaA9ZpjdBaQpGb5drnD3fsfOTR1tj34SdRSNHHkNSIjo Q==;
X-IronPort-AV: E=Sophos;i="5.60,509,1549900800"; d="scan'208";a="110314395"
Received: from mail-sn1nam01lp2059.outbound.protection.outlook.com (HELO
 NAM01-SN1-obe.outbound.protection.outlook.com) ([104.47.32.59])
 by ob1.hgst.iphmx.com with ESMTP; 25 May 2019 11:49:52 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zevrAzTY6INGQ3rCI/7XYevIMuuvigWQ4leg3lM1nY8=;
 b=AOh0yUi/GgGlj8hYXbMxT5QQINjU/GDT68x9/++scQTxsoPzn9B0SQCzveTP3OUJfroabE/0ObTie5DHEMYT7j8VQqybqjjiWsJJY/vcc2Nlz5yaZPEkPZOawN9xHawNJCCN9my4GrdgMLdtnMc++kqcZW5KvzphRN/cb0EVN74=
Received: from MN2PR04MB6061.namprd04.prod.outlook.com (20.178.246.15) by
 MN2PR04MB5551.namprd04.prod.outlook.com (20.178.248.225) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1922.20; Sat, 25 May 2019 03:49:51 +0000
Received: from MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::98ab:5e60:9c5c:4e0e]) by MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::98ab:5e60:9c5c:4e0e%7]) with mapi id 15.20.1922.018; Sat, 25 May 2019
 03:49:51 +0000
From: Anup Patel <Anup.Patel@wdc.com>
To: "Auer, Lukas" <lukas.auer@aisec.fraunhofer.de>, Atish Patra
 <Atish.Patra@wdc.com>, "troy.benjegerdes@sifive.com"
 <troy.benjegerdes@sifive.com>
Subject: RE: 5.2-rc1 boot on Unleashed
Thread-Topic: 5.2-rc1 boot on Unleashed
Thread-Index: AQHVEL1bJqhKLWG/2kGVA89TUsD0m6Z3nHQIgAHP8ACAADxFgIAAtNuAgAANuQCAAAc1AIAAG4mAgAAS/ACAAC6IAIAAZ1Yw
Date: Sat, 25 May 2019 03:49:51 +0000
Message-ID: <MN2PR04MB606103F231BC76C345446A858D030@MN2PR04MB6061.namprd04.prod.outlook.com>
References: <5c1ffb76-b18a-dbae-d3ad-f3d2cd41ee44@wdc.com>
 <alpine.DEB.2.21.9999.1905220942040.20842@viisi.sifive.com>
 <db248e63-c0bc-7fd8-cf2d-d13c8f140036@wdc.com>
 <alpine.DEB.2.21.9999.1905221334460.23235@viisi.sifive.com>
 <8F4FB234-FD5B-4AD6-99BD-57A40A79A024@sifive.com>
 <aac8c9b2-1b8d-e87d-88a5-f13222004a88@wdc.com>
 <2818D3E3-3BDB-442B-822D-0FD221BCCA05@sifive.com>
 <b59c5bba240ef42f90ec26f8588a444391df02c2.camel@aisec.fraunhofer.de>
 <CC10BC34-0799-45D8-980F-804170CF818B@sifive.com>
 <1b70dc1f-c45f-dc04-f3af-f4a2b463d216@wdc.com>
 <CAF5mof3_PSwpsSMnjMALpfvmOPdeAgDLa2p6jp4y+Hmas83mbw@mail.gmail.com>
 <8c02365af7f3bfbb952ba298ee588dab66f71349.camel@aisec.fraunhofer.de>
In-Reply-To: <8c02365af7f3bfbb952ba298ee588dab66f71349.camel@aisec.fraunhofer.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Anup.Patel@wdc.com; 
x-originating-ip: [150.107.238.8]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 91fa765d-df87-43ed-8122-08d6e0c40a91
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:MN2PR04MB5551; 
x-ms-traffictypediagnostic: MN2PR04MB5551:
x-ms-exchange-purlcount: 1
wdcipoutbound: EOP-TRUE
x-microsoft-antispam-prvs: <MN2PR04MB555171F36C59009232BBA5D48D030@MN2PR04MB5551.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0048BCF4DA
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(396003)(39850400004)(346002)(136003)(376002)(366004)(52314003)(189003)(13464003)(199004)(8936002)(73956011)(4326008)(76116006)(305945005)(229853002)(7736002)(6246003)(99286004)(316002)(71190400001)(14454004)(71200400001)(86362001)(26005)(74316002)(53546011)(6506007)(76176011)(110136005)(54906003)(53936002)(102836004)(66946007)(8676002)(66476007)(66446008)(64756008)(66556008)(81156014)(81166006)(25786009)(7696005)(52536014)(5660300002)(6306002)(9686003)(3846002)(55016002)(486006)(11346002)(966005)(446003)(6436002)(476003)(72206003)(2501003)(66066001)(478600001)(256004)(186003)(2906002)(6116002)(68736007)(33656002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB5551;
 H:MN2PR04MB6061.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: XtKQUL0wYvUOVHyXAUp8QciHf5FZCCVTKWvtG5cdNcyzIBRYWPDhkrKQ7L22c8j7eJ2AiK8NqmU5UMprcWPeAdphvQ0P0Sl9kI2gs/4XBKOc8riM5cGDEKkKP9cCnnF6ai23QHrlu1gQrdjKjhDCtSe6+5nCoPDT+LXD2Zu53JZETqD0aoG4hBd4Vos8FIpEd1DoF2DHydxO7Skyj2TWWQIcYA56dTsTWXNs6VzTj4jGfZtVO1Mn6FPolLRVx/olHvS3+OqwSwfCJetUr91QpAjjkfhoAPC/zTk1jrQ64jkhsoSNE2jHgvkfXkmJwXcdJ0R7xWOq/ovdk6zRIRA0M1bWdJjYyQ0m/AE3/pSVGbJfvhSTco+HOiXQUn87nrGNax3D+E6Xjbql3IPZq8Hlw3XTAsM1ERuGsYU4UXHzlwk=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 91fa765d-df87-43ed-8122-08d6e0c40a91
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 May 2019 03:49:51.3284 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Anup.Patel@wdc.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB5551
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_204959_945298_616FC83E 
X-CRM114-Status: GOOD (  42.73  )
X-Spam-Score: -1.0 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.0 points)
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
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [150.107.238.8 listed in dnsbl.sorbs.net]
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
Cc: "jamez@wit.com" <jamez@wit.com>, "palmer@sifive.com" <palmer@sifive.com>,
 "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
 "bjorn.topel@gmail.com" <bjorn.topel@gmail.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "jcarr@wit.com" <jcarr@wit.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogQXVlciwgTHVrYXMgPGx1
a2FzLmF1ZXJAYWlzZWMuZnJhdW5ob2Zlci5kZT4NCj4gU2VudDogU2F0dXJkYXksIE1heSAyNSwg
MjAxOSAzOjA1IEFNDQo+IFRvOiBBdGlzaCBQYXRyYSA8QXRpc2guUGF0cmFAd2RjLmNvbT47IHRy
b3kuYmVuamVnZXJkZXNAc2lmaXZlLmNvbQ0KPiBDYzogcGF1bC53YWxtc2xleUBzaWZpdmUuY29t
OyBsaW51eC1yaXNjdkBsaXN0cy5pbmZyYWRlYWQub3JnOw0KPiBqYW1lekB3aXQuY29tOyBwYWxt
ZXJAc2lmaXZlLmNvbTsgQW51cCBQYXRlbCA8QW51cC5QYXRlbEB3ZGMuY29tPjsNCj4gYmpvcm4u
dG9wZWxAZ21haWwuY29tOyBqY2FyckB3aXQuY29tDQo+IFN1YmplY3Q6IFJlOiA1LjItcmMxIGJv
b3Qgb24gVW5sZWFzaGVkDQo+IA0KPiBPbiBGcmksIDIwMTktMDUtMjQgYXQgMTM6NDggLTA1MDAs
IFRyb3kgQmVuamVnZXJkZXMgd3JvdGU6DQo+ID4gV291bGQgYSByZWFzb25hYmxlIGFuc3dlciBi
ZSB0d28gZGV2aWNlIHRyZWVzLCBvbmUgZm9yIE0tbW9kZSBhbmQNCj4gYW5vdGhlciBmb3IgUy1t
b2RlPw0KPiA+DQo+ID4gVGhpcyB3b3VsZCBsZXQgdXMgZWFzaWx5IGtlZXAgc3luY2VkIHdpdGgg
dGhlIGtlcm5lbCB2ZXJzaW9uDQo+ID4NCj4gDQo+IFRoYXQgbWFrZXMgc2Vuc2UsIEkgd2Fzbid0
IGF3YXJlIG9mIHRoZSBERFIgaW5pdCBkYXRhIGluIHRoZSBkZXZpY2UgdHJlZS4gSXQncw0KPiBn
cmVhdCB0byBzZWUgdGhhdCB5b3UgYXJlIHdvcmtpbmcgb24gYWRkaW5nIHN1cHBvcnQgZm9yIHRo
ZSBERFIgY29udHJvbGxlciB0bw0KPiBVLUJvb3QhDQo+IA0KPiBUaGF0IHdvdWxkIHdvcmssIGJ1
dCBwcm9iYWJseSB0YWtlcyBtb3JlIGVmZm9ydCB0byBtYWludGFpbiB0aGFuIGlzIG5lZWRlZC4N
Cj4gRm9yIHNpdHVhdGlvbnMgbGlrZSB0aGlzLCB3aGVyZSB0aGUgVS1Cb290IGRldmljZSB0cmVl
IHJlcXVpcmVzIGEgZmV3DQo+IGFkZGl0aW9uYWwgZW50cmllcyBjb21wYXJlZCB3aXRoIHRoZSBr
ZXJuZWwgZGV2aWNlIHRyZWUsIFUtQm9vdCBwcm92aWRlcyBhDQo+IHVzZWZ1bCBmdW5jdGlvbi4g
SXQgYXV0b21hdGljYWxseSBpbmNsdWRlcyBbYm9hcmQtZHRzXS11LSBib290LmR0c2kgaW4gdGhl
DQo+IGNvbXBpbGVkIGRldmljZSB0cmVlLCB3aGVyZSBbYm9hcmQtZHRzXS5kdHMgaXMgc3BlY2lm
aWVkIGluIHRoZSBkZWZjb25maWcuIEluDQo+IHRoaXMgY2FzZSwgd2UgY2FuIGRpcmVjdGx5IHVz
ZSBoaWZpdmUtIHVubGVhc2hlZC1hMDAtZnU1NDAuZHRzIGZyb20gdGhlDQo+IGtlcm5lbCBhbmQg
YWRkIGEgaGlmaXZlLXVubGVhc2hlZC1hMDAtIGZ1NTQwLXUtYm9vdC5kdHNpIHdpdGggdGhlIERE
Ug0KPiBjb250cm9sbGVyIGVudHJpZXMuIFNpbmNlIHRoZXkgYXJlIG9ubHkgbmVlZGVkIGluIG1h
Y2hpbmUgbW9kZSwgd2UgY2FuIHVzZQ0KPiBpZmRlZnMgdG8gcmVtb3ZlIHRoZW0gaW4gc3VwZXJ2
aXNvciBtb2RlIGJ1aWxkcy4NCg0KQmFzZWQgb24gb3VyIHByZXZpb3VzIGRpc2N1c3Npb24gb24g
VS1Cb290IG1haWxpbmcgbGlzdCwgTHVrYXMgaGFkIHN1Z2dlc3QNCnZlcnkgbmljZSBib290LWZs
b3cgZm9yIFUtQm9vdCB3aGljaCBpcyBhcyBmb2xsb3dzOg0KDQpaU0JMIC0+IFUtQm9vdCBTUEwg
KE0tTW9kZSktPk9wZW5TQkkvQkJMLT5VLUJvb3QoUy1Nb2RlKS0+TGludXguDQoNClRoZSBVLUJv
b3QgU1BMIGFib3ZlIHdpbGw6DQoxLiBSdW4gZnJvbSBpbnRlcm5hbCBTUkFNDQoyLiBXaWxsIGRv
IEREUiBpbml0DQozLiBFdGhlcm5ldCBQSFkgcmVzZXQgdXNpbmcgR1BJTw0KNC4gT3RoZXIgc3lz
dGVtIGxldmVsIGluaXQuDQo1LiBMb2FkIE9wZW5TQkkgRldfRFlOQU1JQy9GV19KVU1QL0ZXX1BB
WUxPQUQNCjYuIExvYWQgVS1Cb290IFMtbW9kZQ0KNy4gSnVtcCB0byBPcGVuU0JJIEZXX0RZTkFN
SUMvRldfRlVNUC9GV19QQVlMT0FEDQoNClRoZSByZWd1bGFyIFMtbW9kZSBVLUJvb3QgY2FuIGJl
IHJlLXVzZWQgYXMtaXMgd2l0aG91dCBtdWNoIGNoYW5nZXMuDQoNCk92ZXJhbGwgdXNpbmcgVS1C
b290IFNQTCAoTS1tb2RlKSBhcy1wZXIgYWJvdmUgd2lsbCBiZSBhIG5hdHVyYWwgZXh0ZW5zaW9u
DQpvZiBjdXJyZW50IFUtQm9vdCBmb3IgU2lGaXZlIFVubGVhc2hlZC4NCg0KUmVnYXJkcywNCkFu
dXANCg0KPiANCj4gVGhhbmtzLA0KPiBMdWthcw0KPiANCj4gPiBPbiBGcmksIE1heSAyNCwgMjAx
OSwgMTI6NDAgUE0gQXRpc2ggUGF0cmEgPGF0aXNoLnBhdHJhQHdkYy5jb20+IHdyb3RlOg0KPiA+
ID4gT24gNS8yNC8xOSA5OjAxIEFNLCBUcm95IEJlbmplZ2VyZGVzIHdyb3RlOg0KPiA+ID4gPg0K
PiA+ID4gPg0KPiA+ID4gPj4gT24gTWF5IDI0LCAyMDE5LCBhdCAxMDozNSBBTSwgQXVlciwgTHVr
YXMNCj4gPGx1a2FzLmF1ZXJAYWlzZWMuZnJhdW5ob2Zlci5kZT4gd3JvdGU6DQo+ID4gPiA+Pg0K
PiA+ID4gPj4gT24gRnJpLCAyMDE5LTA1LTI0IGF0IDA5OjQ2IC0wNTAwLCBUcm95IEJlbmplZ2Vy
ZGVzIHdyb3RlOg0KPiA+ID4gPj4+PiBPbiBNYXkgMjMsIDIwMTksIGF0IDEwOjU5IFBNLCBBdGlz
aCBQYXRyYSA8YXRpc2gucGF0cmFAd2RjLmNvbT4NCj4gd3JvdGU6DQo+ID4gPiA+Pj4+DQo+ID4g
PiA+Pj4+IE9uIDUvMjMvMTkgNToyMyBQTSwgVHJveSBCZW5qZWdlcmRlcyB3cm90ZToNCj4gPiA+
ID4+Pj4+PiBPbiBNYXkgMjIsIDIwMTksIGF0IDM6NDMgUE0sIFBhdWwgV2FsbXNsZXkNCj4gPHBh
dWwud2FsbXNsZXlAc2lmaXZlLmNvbT4gd3JvdGU6DQo+ID4gPiA+Pj4+Pj4NCj4gPiA+ID4+Pj4+
PiArIEFudXAsIFRyb3kNCj4gPiA+ID4+Pj4+Pg0KPiA+ID4gPj4+Pj4+IE9uIFdlZCwgMjIgTWF5
IDIwMTksIEF0aXNoIFBhdHJhIHdyb3RlOg0KPiA+ID4gPj4+Pj4+DQo+ID4gPiA+Pj4+Pj4+IE9u
IDUvMjIvMTkgOTo0MiBBTSwgUGF1bCBXYWxtc2xleSB3cm90ZToNCj4gPiA+ID4+Pj4+Pj4+IEFt
IGNoZWNraW5nIG9uIHRoaXMgbm93IGFuZCBob3BlIHRvIGhhdmUgc29tZSBjb25jbHVzaW9uDQo+
IG9uIGl0IHRoaXMgd2Vlay4NCj4gPiA+ID4+Pj4+Pj4NCj4gPiA+ID4+Pj4+Pj4gVGhhbmtzLiBB
bnkgY2hhbmNlIHlvdSBjYW4gdGFrZSBhIGxvb2sgYXQgdGhlIFUtQm9vdCBjbG9jaw0KPiA+ID4g
Pj4+Pj4+PiBkcml2ZXIgdG8gcGF0Y2ggaXQgYXMgcGVyIHRoZSBEVCBjaGFuZ2VzID8NCj4gPiA+
ID4+Pj4+Pg0KPiA+ID4gPj4+Pj4+IEkgcHJvYmFibHkgd29uJ3QgaGF2ZSB0aGUgY2hhbmNlIHRv
IGdldCB0byBpdCBmb3IgYSB3aGlsZS4NCj4gPiA+ID4+Pj4+PiBMb29rcyBsaWtlIEFudXAgd2Fz
IHRoZSBvbmUgd2hvIHBvc3RlZCB0aGUgY2xvY2sgZHJpdmVyIHRvDQo+ID4gPiA+Pj4+Pj4gVS1C
b290IC0gY2FuIGhlIHRha2UgYSBsb29rIGF0IGl0Pw0KPiA+ID4gPj4+Pj4+DQo+ID4gPiA+Pj4+
Pj4gV2UndmUgYWxzbyBhc2tlZCBUcm95IHRvIGxvb2sgYXQgdXBzdHJlYW0gVS1ib290IHJlbGF0
ZWQNCj4gPiA+ID4+Pj4+PiBpc3N1ZXMsIGJ1dCBJJ20gdW5zdXJlIHdoZW4gcGF0Y2hlcyB3aWxs
IHN0YXJ0IGZsb3dpbmcgdXBzdHJlYW0uDQo+ID4gPiA+Pj4+Pj4NCj4gPiA+ID4+Pj4+Pg0KPiA+
ID4gPj4+Pj4+IC0gUGF1bA0KPiA+ID4gPj4+Pj4gSeKAmWQgcHJlZmVyIHRvIGhvbGQgb2ZmIG9u
IGFueSBjaGFuZ2VzIHRvIFUtYm9vdCB1bnRpbCB3ZSBoYXZlIGENCj4gbW9yZSBjb21wbGV0ZSBw
YXRjaCBzZXQuIEdQSU8gYW5kIGV0aGVybmV0IGVudHJpZXMgYXJlIG1pc3NpbmcgZnJvbSB0aG9z
ZQ0KPiBkZXZpY2UgdHJlZXMsIGFuZCB3ZSBoYXZlIGEgd29ya2luZyBVLWJvb3QgZGV2aWNlIHRy
ZWUgbm93LiBJZiB0aGUga2VybmVsDQo+IG5lZWRzIHNvbWV0aGluZyBkaWZmZXJlbnQgd2UgY2Fu
IGxvYWQgdGhlIGRldmljZSB0cmVlIHRoZSBrZXJuZWwgbmVlZHMgZm9yDQo+IGF3aGlsZS4NCj4g
PiA+ID4+Pj4NCj4gPiA+ID4+Pj4gSSBkb24ndCB0aGluayB0aGF0J3MgYSBnb29kIGlkZWEuIEl0
IHdpbGwgdW5uZWNlc3NhcmlseSBibG9jaw0KPiBldmVyeWJvZHkncyBzZXR1cCB0aGF0IGlzIHN1
cHBvc2VkIHRvIHdvcmsgd2l0aCBVLUJvb3QuIEkgcHJlZmVyIGlmIHdlIGNhbg0KPiBwYXRjaCBV
LUJvb3QgYW5kIHVuYmxvY2sgZXZlcnlib2R5IHNvb25lciB0aGFuIGxhdGVyLg0KPiA+ID4gPj4+
Pg0KPiA+ID4gPj4+Pj4gVGhlIFUtYm9vdCBkZXZpY2UgdHJlZSBpcyBnb2luZyB0byBoYXZlIHNv
bWUgdGhpbmdzIGluIGl0IHRoZQ0KPiBrZXJuZWwgZG9lc27igJl0IGNhcmUgYWJvdXQgYW55d2F5
LCBzbyB3ZeKAmXZlIGFscmVhZHkgZ290IGRpdmVyZ2VuY2UgYmV0d2Vlbg0KPiB0aGUgdHdvLiBJ
ZGVhbGx5IHRoZSBVLWJvb3QgdmVyc2lvbiBpcyBhIHN1cGVyc2V0IG9mIHRoZSBrZXJuZWwgdmVy
c2lvbi4gV2UNCj4gYWxyZWFkeSBoYWQgb25lIGRpc3J1cHRpdmUgY2hhbmdlIHdpdGggdGhlIGNs
b2NrIGRyaXZlciwgc28gd2hhdCBpcyB0byBwcmV2ZW50DQo+IHRoZXJlIHRvIGJlIG1vcmUgZGlz
cnVwdGl2ZSBjaGFuZ2VzIGluIHRoZSBldGhlcm5ldC9HUElPIGRldmljZSB0cmVlDQo+IGVudHJp
ZXMgdGhhdCBnbyBpbiB0aGUga2VybmVsIHVubGVzcyB3ZSBoYXZlIGEgZHJhZnQgb2Ygd2hhdCB0
aG9zZSBlbnRyaWVzDQo+IHNob3VsZCBsb29rIGxpa2UgdGhhdCBpcyBhY2NlcHRhYmxlPw0KPiA+
ID4gPj4+PiBJSVJDLCBjdXJyZW50IFUtQm9vdCBTIG1vZGUgcG9ydCBkb2Vzbid0IG5lZWQgYSBH
UElPIGRyaXZlciBhbmQNCj4gZXRoZXJuZXQgZHJpdmVyIGlzIHByb3ZpZGVkIGJ5IHRoZSBjb21t
b24gbWFjYiBkcml2ZXIuIElmIHRoZXJlIGFyZSBhbnkgRFQNCj4gY2hhbmdlcyBzdWdnZXN0ZWQg
Ynkga2VybmVsLCB3ZSBjYW4gYWx3YXlzIHBhdGNoIFUtQm9vdC4NCj4gPiA+ID4+Pg0KPiA+ID4g
Pj4+IFRoZSBNLW1vZGUgcG9ydCB3aWxsIG5lZWQgYSBHUElPIGRyaXZlciwgYXMgdGhlIG1hY2Ig
ZHJpdmVyIG5lZWRzDQo+IHByb3BlciBhIHByb3BlciBHUElPIGRyaXZlciB0byByZXNldCB0aGUg
cGh5Lg0KPiA+ID4gPj4+DQo+ID4gPiA+Pj4gSSBoYXZlIG5vIGlzc3VlcyB1cGRhdGluZyB0aGUg
UFJDSSBkcml2ZXIgRFQgZm9ybWF0IGlmIHdlIGFsc28NCj4gPiA+ID4+PiBoYXZlIHRoZSByZXN0
IG9mIHRoZSBEVCBlbnRyaWVzIG5lZWRlZCB0byBib290IGEgd29ya2luZyBzeXN0ZW0sDQo+ID4g
PiA+Pj4gSSBqdXN0IGhhdmUgbm90IHNlZW4gYW4gZXhhbXBsZSBvZiB0aGF0IG90aGVyIHRoYW4g
d2hhdCBJIGhhdmUNCj4gPiA+ID4+PiBhdA0KPiA+ID4gPj4+IGh0dHBzOi8vZ2l0aHViLmNvbS9z
aWZpdmUvSGlGaXZlX1UtQm9vdC9ibG9iL3JlZ3Jlc3Npb24vYXJjaC9yaXMNCj4gPiA+ID4+PiBj
di9kdHMvaGlmaXZlX3U1NDAuZHRzDQo+ID4gPiA+Pg0KPiA+ID4gPj4gTXkgcGxhbiB3YXMgdG8g
YWRkIHRoZSBTaUZpdmUgSGlGaXZlIFVubGVhc2hlZCBkZXZpY2UgdHJlZSB0bw0KPiA+ID4gPj4g
VS1Cb290LCBvbmNlIHRoZSByZWxldmFudCBrZXJuZWwgcGF0Y2hlcyB3aXRoIHRoZSBkZXZpY2Ug
dHJlZSBnZXQNCj4gPiA+ID4+IG1lcmdlZC4gSSB3b3VsZCBrZWVwIGJvdGggaWRlbnRpY2FsIHRv
IG1ha2UgaXQgZWFzaWVyIHRvIHN5bmMNCj4gPiA+ID4+IGNoYW5nZXMgZnJvbSB0aGUga2VybmVs
IHdpdGggVS1Cb290Lg0KPiA+ID4gPj4NCj4gPiA+DQo+ID4gPiBUaGF0IG1ha2VzIHNlbnNlLg0K
PiA+ID4NCj4gPiA+ID4+IFRoYW5rcywNCj4gPiA+ID4+IEx1a2FzDQo+ID4gPiA+DQo+ID4gPiA+
IFdlIG5lZWQgdG8gc3VwcG9ydCBVYm9vdCBpbiBNLW1vZGUgYXMgdGhlIGZpcnN0LXN0YWdlIGJv
b3Rsb2FkZXIsDQo+ID4gPg0KPiA+ID4gR3JlYXQuIFdlIHdpbGwgaGF2ZSBmb2xsb3dpbmcgYm9v
dCBmbG93IGluIHRoYXQgY2FzZS4NCj4gPiA+DQo+ID4gPiBVLUJvb3QgKE0tTW9kZSktPk9wZW5T
QkkvQkJMLT5VLUJvb3QoUy1Nb2RlKS0+TGludXguDQo+ID4gPg0KPiA+ID4gSSBhbSBtb3JlIGNv
bmNlcm5lZCBhYm91dCBicmVha2FnZSBhbmQgcGF0Y2hpbmcgb2YgVS1Cb290IFMgbW9kZSBhdA0K
PiA+ID4gdGhpcyBwb2ludC4NCj4gPiA+DQo+ID4gPiBhbmQgdGhpcyB3aWxsIHJlcXVpcmUgRERS
IGluaXQgY29kZS4gVGhlIGJlc3Qgd2F5IHRvIGRvIHRoYXQgc2VlbXMNCj4gPiA+IHRvIGJlIGZv
bGxvdyB0aGUgZXhhbXBsZSB0aGF0IHdhcyB1c2VkIGZvciBhIFJvY2tjaGlwIHBhcnQgd2l0aCBh
DQo+ID4gPiBzaW1pbGlhciBERFIgY29udHJvbGxlciBJUC4gVGhlIEREUiBpbml0IGNvZGUgdXNl
cyBib2FyZC1zcGVjaWZpYw0KPiA+ID4gZGF0YSBmcm9tIHRoZSBkZXZpY2UgdHJlZSB0byBwcm9n
cmFtIHRoZSBjb250cm9sbGVyLCBzbyB0aGUgTS1tb2RlDQo+ID4gPiBVYm9vdCB3aWxsIG5lZWQg
dG8gaGF2ZSBlbnRyaWVzIHRoZSBrZXJuZWwgZG9lc27igJl0IGNhcmUgYWJvdXQuDQo+ID4gPiA+
DQo+ID4gPiA+IElmIHdlIGFyZSBnb2luZyB0byBrZWVwIGJvdGggVS1ib290IGFuZCBLZXJuZWwg
ZGV2aWNlIHRyZWVzIGlkZW50aWNhbA0KPiB0aGVuIHdlIG5lZWQgc29tZSBidXktaW4gYW5kIGFn
cmVlbWVudCBmcm9tIGtlcm5lbCBkZXZlbG9wZXJzIG9uIGhvdw0KPiB0aGF0IGRhdGEgZ29lcyBp
biB0aGUga2VybmVsLg0KPiA+ID4gPg0KPiA+ID4gPiBJdCBzZWVtcyBhIGxvdCBlYXNpZXIgaWYg
d2UgdXNlIGluY2x1ZGUgZmlsZXMgYW5kIHRoZSBVLWJvb3QgZGV2aWNlIHRyZWUNCj4gaGFzIGEg
ZmV3IGV4dHJhIGluY2x1ZGVzIGZvciBERFIgaW5pdCBhbmQgb3RoZXIgdGhpbmdzIHRoYXQgYXJl
IG5vdCByZWxldmFudCB0bw0KPiB0aGUga2VybmVsLg0KPiA+ID4gPg0KPiA+ID4NCj4gPiA+DQpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1yaXNj
diBtYWlsaW5nIGxpc3QKbGludXgtcmlzY3ZAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJpc2N2Cg==
