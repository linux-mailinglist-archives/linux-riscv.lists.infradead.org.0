Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 762F41840BD
	for <lists+linux-riscv@lfdr.de>; Fri, 13 Mar 2020 07:03:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-ID:Content-Type:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=QuiFzoYg3hQnDONFB1xw5IanQe1BGNPrNnG9gaf9MHE=; b=d/BV1P747C/tcrdVfJA3ZOR28
	CiXSIDoGz5J0954CvqeoGCdR52NxXzvubjEchOm5CHaUAORkt9dsVROL9xgge6cMJRwMHkLXqoy8t
	6bwAWBMnK0nKNA92e5FUXPS3hfGKpF4qK/cCalGHpf36gvEjYw6cJPwmVfzoN0bJ0L6x16WGsq+g9
	sktQCDcy5/l50XhlBp5TfyaXwHnMOiUSn695bFNjzeqI7QJoqpEfKsc1IOCWzeO7NJLFFjkDtEisE
	/Om0gz7O3JRzNd16AiolCO4Z1VsAYcm7gDdw3UmHOtvmJF9f45h6eojjluQpJpiT4UHsgDPNbWz8X
	qXxdscnGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCdQF-0001wr-5W; Fri, 13 Mar 2020 06:03:51 +0000
Received: from esa3.hgst.iphmx.com ([216.71.153.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCdQB-0001rI-Dj
 for linux-riscv@lists.infradead.org; Fri, 13 Mar 2020 06:03:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1584079428; x=1615615428;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=QuiFzoYg3hQnDONFB1xw5IanQe1BGNPrNnG9gaf9MHE=;
 b=XtPosuVZzUt1gthYJY0p3purscnEsYLBDWSF+hROF/hnorUGqBwEmdqG
 2Z1nb9tea1JfACo0uaaFTet/PrekB1gryuc/KzSXfUzkUgUjx+XoXfvPJ
 N/XZ1yjFWZMvwdgN2cSSEtAS78AIv7nCVptMSv697JVQA1aPs+F4A8Mh8
 9AEVIUQvwk9+dHAtdmpPfa6FJjp0LfLGNDg5JfFmcuJMjauK266ADdCqR
 s84Pu6027aVfmig8fUSlFcxZziMsf4tpIrHTTlMgurnd6DwwgMBePy4oj
 L36DtV+Ns3DM9hHdrG5iVuToivlBQQVK4ibo5w9MxeIEIFMBzprvqYmbX Q==;
IronPort-SDR: usVgOm43YIcR6Filzxw/8qt1ItkG4u2/HNmAXq9A4bB6f+oqxqVngCJVhSaYs7PlOTqrRKUhTo
 vstT8niynZ4/DTNGT1o14efmxQTMDFvwodeH512hxr0GzetaQu2QbhlzunJBfBGaoD+Lm/E09u
 IGA2To1ZKdYz11UGPpGggqUbJWoN0PDDt4mxSiOfY8cpyGjZAZnQDpKqEzX7Z2dUdJMjEkh7Nr
 hrBbXSJ+72Obo37yijdrG1ko15nPl/A2m958oAdx4Tx4CX1G8CfYDjbkQ1LPvd7g14iwBp9kum
 d2c=
X-IronPort-AV: E=Sophos;i="5.70,547,1574092800"; d="scan'208";a="136729369"
Received: from mail-sn1nam04lp2053.outbound.protection.outlook.com (HELO
 NAM04-SN1-obe.outbound.protection.outlook.com) ([104.47.44.53])
 by ob1.hgst.iphmx.com with ESMTP; 13 Mar 2020 14:03:46 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GDSmZpzMk1WpFNdytbyH0ScBHf97x4biwFCbq2iOeqKhYD+0uiBJtZosFS6nJQQiFOd5WDpRhrNMTW1jIGs984m4Ci7Dz33NPs++d5RVxEtlwieQcj9o0XIJ8nmOGgGqvbzuky8gv6Yhavgugc/BUzzDF9KZCM3mZwUrEqQ+HbRX1+QeSKx5g6623yslBli6uuVPmXfFDfxT1Ikf0hSmR/csnL9j2sQpdifIojqlrudrb9XK3CAR3HDiXqinLQDT6iPPDwpu/dGU9Gjz4ZtUPLX5hUQBIm/NCZr5Zr6Wcrls+vMFZajMeJKJ+wWArBdK1gLEuwKiOx7j6xYqKA9i/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QuiFzoYg3hQnDONFB1xw5IanQe1BGNPrNnG9gaf9MHE=;
 b=N5r1MXx3P0KvTnFoWHXUeW53QiNrC/me+qs5DjtegV8aue5q8hMdG6DgLPt4zIZMwOckF6y/GHm9V87HCUz8RCRbhqyRVhpRb4+rbePSQ9kMs7GSZy+GRLx6lhOn6DLxV2Bojju6nTkLv7PcmtHI99smIfWSdjUVGqpUnCKI3iKtv3txkzBYsUaTw42pO4J9TH1rQ5pXZZCh2WlHAlYXMvo/kefQOHXAml80oIRqKOrH5GvCSf80NMCE7dldYyHw3aX3U77Fuanb1XMbPrTMqjoh/PD92mkvXikkzPzjvLb6FRmNz1Ni+mAulyakglrqWfl6sialrpi3oqa71xUdlw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QuiFzoYg3hQnDONFB1xw5IanQe1BGNPrNnG9gaf9MHE=;
 b=qtsQdq7XNEwk+/Y5P2tp8JE6jRRouEEInozNaNorkWpg5GHJx90SfqoUmvtkoCCP1g+ybB54GUG+FPE8w3v7GoiouhYDAg73eix9b7tM5BX9V+hlD8DhM4buvGJggF81N3G2qdfo/GwfUhuW4xyt2ByFrk+fkBsRRvXXDnFddb0=
Received: from CO2PR04MB2343.namprd04.prod.outlook.com (2603:10b6:102:12::9)
 by CO2PR04MB2279.namprd04.prod.outlook.com (2603:10b6:102:b::25) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2793.17; Fri, 13 Mar
 2020 06:03:43 +0000
Received: from CO2PR04MB2343.namprd04.prod.outlook.com
 ([fe80::c1a:6c0f:8207:580b]) by CO2PR04MB2343.namprd04.prod.outlook.com
 ([fe80::c1a:6c0f:8207:580b%7]) with mapi id 15.20.2814.007; Fri, 13 Mar 2020
 06:03:43 +0000
From: Damien Le Moal <Damien.LeMoal@wdc.com>
To: "atishp@atishpatra.org" <atishp@atishpatra.org>, "seanga2@gmail.com"
 <seanga2@gmail.com>
Subject: Re: [PATCH v2 9/9] riscv: Do not initialize PMP on Kendryte SoC
Thread-Topic: [PATCH v2 9/9] riscv: Do not initialize PMP on Kendryte SoC
Thread-Index: AQHV+IHUMiKRGJ1DO0qq13MZgFK4D6hFQeQAgAABHgCAAARFgIAABX+AgAAGqYCAALXXgA==
Date: Fri, 13 Mar 2020 06:03:43 +0000
Message-ID: <7221c98b8268a0f3b1803ab6f31a360732dbadc8.camel@wdc.com>
References: <20200312051107.1454880-1-damien.lemoal@wdc.com>
 <20200312051107.1454880-10-damien.lemoal@wdc.com>
 <47a2207d-6c16-b007-4c35-7c1a0649ecc0@gmail.com>
 <CAOnJCUJjLB2fwW+ZAKc9nixUeJJm7pg8KxuOkqF5pvY1c0nRsw@mail.gmail.com>
 <3e2ae3be-6269-acbd-6283-16c50cd119af@gmail.com>
 <CAOnJCUK15kiMohMoqfPUNE43Yq+BTW=kY4AHYjyKkdr9Htg-ug@mail.gmail.com>
 <e7835ca3-0754-8143-33cd-bac97878a0ad@gmail.com>
 <CAOnJCUK5bY8tbPLOCdTzzNMcy2yjK7rHL4jiM=0j=waBo1y-Pw@mail.gmail.com>
In-Reply-To: <CAOnJCUK5bY8tbPLOCdTzzNMcy2yjK7rHL4jiM=0j=waBo1y-Pw@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.34.4 (3.34.4-1.fc31) 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Damien.LeMoal@wdc.com; 
x-originating-ip: [199.255.47.11]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 7591bf24-70cf-4813-d6e7-08d7c7144908
x-ms-traffictypediagnostic: CO2PR04MB2279:
x-microsoft-antispam-prvs: <CO2PR04MB2279BD8BA505A4579DD571CAE7FA0@CO2PR04MB2279.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 034119E4F6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(396003)(136003)(346002)(376002)(366004)(39860400002)(199004)(66946007)(66476007)(36756003)(76116006)(91956017)(4326008)(110136005)(54906003)(186003)(6486002)(2616005)(5660300002)(71200400001)(86362001)(478600001)(66446008)(53546011)(64756008)(6506007)(2906002)(66556008)(8936002)(316002)(81156014)(81166006)(26005)(6512007)(8676002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:CO2PR04MB2279;
 H:CO2PR04MB2343.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 4gARBu9pVKfdIPs8dHvnExde+s6m4kjl7prP0jGiKX5Pyom9+z60ul8PoANrvJ2AqUG1+E85U1FLM4z4qNNXorv9EHPtNSR2+HpMXtC8qHmiyX3RItu3YLSEYThSAC9ZatqXMrfRSM3Z0eDCVd4F50ZQ5CVvUW1YFEGmdja/3HsTw475JWw53FyVZfRRodLhFSNMhQEM0qmcyXQ4Tu1ZObT4FMSyLA4gAlX+Ze5ee6/4ERz2paao3PqbGJ9ONZQ3guk4pKKDhRPyz2kxMsUp2sTWFb7vRoNmC9TmxfSEyXbmUsG6Ole9PmevGvo+GLUkAVSDEV63JfNV7gcIYK1/RQLy23SPmTT6DWxx+6qnx2N7uotbPcM1CN4qQufgUg+bN5zny0OvsPcWBlyVQ+Q+Mp2wyqCjTFD70cjibOhZovxxylYcZilsWIbLWeu5ffPZ
x-ms-exchange-antispam-messagedata: YQbHBJvTB+GRDWyeO2UuVXxzmRR1+WyD40up3urGJzOyWRDeU/cssb7RN9/8fQA0d9SJv133SrZ/oaT8AbpsQ2f3EosUGubcGahEUi3hc4sarKGBbRPTvtvrW11T2b7AVtdNvX4ZoSRzfNwoFdjfOQ==
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="utf-8"
Content-ID: <2A25C3DCBE74CE488BBF890943123733@namprd04.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7591bf24-70cf-4813-d6e7-08d7c7144908
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Mar 2020 06:03:43.2874 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 19fwiqd48h6mDLZxsDugLEJV2Ep1ZQTq+M/Ax4OZ1kloVuTCgqxVeMF7Q0RheIDSL1vx0NWTVhlFZco6r6UW/A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO2PR04MB2279
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_230347_502485_C5056CF9 
X-CRM114-Status: GOOD (  30.05  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "palmer@dabbelt.com" <palmer@dabbelt.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

T24gVGh1LCAyMDIwLTAzLTEyIGF0IDEyOjEyIC0wNzAwLCBBdGlzaCBQYXRyYSB3cm90ZToNCj4g
T24gVGh1LCBNYXIgMTIsIDIwMjAgYXQgMTE6NDkgQU0gU2VhbiBBbmRlcnNvbiA8c2VhbmdhMkBn
bWFpbC5jb20+IHdyb3RlOg0KPiA+IE9uIDMvMTIvMjAgMjoyOSBQTSwgQXRpc2ggUGF0cmEgd3Jv
dGU6DQo+ID4gPiBPbiBUaHUsIE1hciAxMiwgMjAyMCBhdCAxMToxNCBBTSBTZWFuIEFuZGVyc29u
IDxzZWFuZ2EyQGdtYWlsLmNvbT4gd3JvdGU6DQo+ID4gPiA+IA0KPiA+ID4gPiA+IEkgZG9uJ3Qg
dGhpbmsgc3VwcG9ydGluZyBvbGQgc3BlY3MgaW4gTGludXggaXMgYSBnb29kIGlkZWEuIEFzIHBl
ciB0aGUNCj4gPiA+ID4gPiBwYXRjaCBndWlkZWxpbmUNCj4gPiA+ID4gPiBmb3IgUklTQy1WIExp
bnV4LCBwYXRjaGVzIGZvciBvbmx5ICJmcm96ZW4iIG9yICJyYXRpZmllZCINCj4gPiA+ID4gPiBz
cGVjaWZpY2F0aW9ucyBhcmUgYWxsb3dlZC4NCj4gPiA+ID4gPiANCj4gPiA+ID4gDQo+ID4gPiA+
IFdlbGwgdGhpcyBDUFUgZm9sbG93cyB0aGUgdjEuOSBzcGVjLiBJdCdzIHJlYWwgaGFyZHdhcmUs
IGlmIGl0IGlzIHRvIGJlDQo+ID4gPiA+IGJlIHN1cHBvcnRlZCwgdGhlbiB0aGUgMS45IHNwZWMg
bmVlZHMgdG8gYmUgYXMgd2VsbC4NCj4gPiA+ID4gDQo+ID4gPiANCj4gPiA+IEFzIFJJU0MtViBp
cyBhbiBvcGVuIElTQSBhbmQgaXQncyBjb250aW51b3VzbHkgZXZvbHZpbmcsIHRoZXJlIHdpbGwg
YmUNCj4gPiA+IHNvbWUgaGFyZHdhcmUNCj4gPiA+IHRoYXQgd2lsbCBpbXBsZW1lbnQgb2xkIHNw
ZWNpZmljYXRpb25zIG9yIG5vbi1iYWNrd2FyZCBjb21wYXRpYmxlIGZlYXR1cmVzLg0KPiA+ID4g
SSBmZWFyIHRoZSBudW1iZXIgb2YgaGFyZHdhcmUgd2l0aCBzdWNoIGZlYXR1cmVzL2ltcGxlbWVu
dGF0aW9ucyB3aWxsDQo+ID4gPiBncm93IGluIHRoZSBmdXR1cmUuDQo+ID4gPiBJZiBMaW51eCBp
cyBnb2luZyB0byBzdXBwb3J0IGFsbCBvZiB0aGVtLCBpdCBtYXkgYmUgYSBtYWludGVuYW5jZSBu
aWdodG1hcmUuDQo+ID4gDQo+ID4gSSBhZ3JlZS4gVGhlcmUgaXMgYWxzbyBubyBzdGFuZGFyZCB3
YXkgdG8gY29tbXVuaWNhdGUgdGhlIGltcGxlbWVudGVkDQo+ID4gcHJpdmlsZWdlZCBzcGVjIGxl
dmVsIGUuZy4gaW4gdGhlIGRldmljZSB0cmVlLiBUaGUgYmFzZSBpbnRlZ2VyDQo+ID4gaW5zdHJ1
Y3Rpb24gc2V0IHZlcnNpb24gY2FuIGJlIHNwZWNpZmllZCBpbiB0aGUgcmlzY3YsaXNhIHByb3Bl
cnR5LCBzdWNoDQo+ID4gYXMNCj4gPiANCj4gPiByaXNjdixpc2EgPSAicnY2NGkycDEuLi4iDQo+
ID4gDQo+ID4gSG93ZXZlciwgdGhlcmUgaXMgbm8gImV4dGVuc2lvbiIgZm9yIHRoZSBwcml2aWxl
Z2VkIHNwZWNpZmljYXRpb24uDQo+ID4gQSBtZXRob2QgdG8gc3BlY2lmeSB0aGlzIHdvdWxkIGJl
IGhlbHBmdWwsIGVzcGVjaWFsbHkgc2luY2UgdGhlDQo+ID4gYm9vdGxvYWRlciBtYXkgbmVlZCB0
byBlbmFibGUgdGhlIE1NVSBiZWZvcmUgbG9hZGluZyBMaW51eCBzaW5jZSB0aGVyZQ0KPiA+IGlz
IG5vIHdheSB0byBlbmFibGUgaXQgZnJvbSBTLW1vZGUgdW50aWwgdjEuMTAuDQo+ID4gDQo+ID4g
T24gdGhlIG90aGVyIGhhbmQsIHRoZXJlIGlzIHJlbGF0aXZlbHkgbGl0dGxlIGNoYW5nZWQgZnJv
bSB2MS45IHRvIHRoZQ0KPiA+IGN1cnJlbnQgcmV2aXNpb24uIFRoZSBmb2xsb3dpbmcgbGlzdCBo
YXMgdGhlIGRpZmZlcmVuY2VzIGZyb20gdGhlDQo+ID4gY3VycmVudCBzcGVjOg0KPiA+IA0KPiA+
ICogVGhlIFBNUCBoYXMgZmxpcHBlZCBwb2xhcml0eQ0KPiA+ICogVGhlIG1jb3VudGVyZW4gQ1NS
cyBhcmUgc3BsaXQNCj4gPiAqIHNmZW5jZS52bWEgaXMgc2ZlbmNlLnZtICh0aG91Z2ggdGhpcyBz
aG91bGQgYmUgaGFuZGxlZCBieSB0aGUgc2JpDQo+ID4gICBhbnl3YXkpDQo+ID4gKiBzYXRwIGhh
cyBhIGRpZmZlcmVudCBuYW1lLCBhbmQgbW9kZSBubyBsb25nZXIgZXhpc3RzIGluIHRoZSB0b3Ag
Zm91cg0KPiA+ICAgYml0cy4gU2luY2UgdGhlc2UgYml0cyB1c2VkIHRvIGJlIHBhcnQgb2YgQVNJ
RCwgaXQncyBmaW5lIHRvIHdyaXRlIHRoZQ0KPiA+ICAgbW9kZSB0byB0aG9zZSBiaXRzLiBJZiBs
aW51eCBuZXZlciBzd2l0Y2hlcyBmcm9tIChlLmcuKSBzdjM5IHRvDQo+ID4gICBzb21ldGhpbmcg
ZWxzZSwgdGhlcmUgd2lsbCBiZSBubyBvYnNlcnZlZCBkaWZmZXJlbmNlIGVpdGhlci4NCj4gPiAN
Cj4gPiBFdmVyeXRoaW5nIGVsc2UgaXMgbW9zdGx5IGZvcndhcmRzLWNvbXBhdGlibGUsIGFzIGZh
ciBhcyBJIGNhbiB0ZWxsLg0KPiA+IFRoYXQgaXMsIGFzc3VtaW5nIG5ldyBiZWhhdmlvdXIgb24g
b2xkIGhhcmR3YXJlIHdvbid0IGNhdXNlIHByb2JsZW1zLg0KPiA+IA0KPiBFdmVuIGlmIHRoZSBj
aGFuZ2VzIGFyZSBtaW5pbWFsIGFuZCB3ZSBjYW4gZWFzaWx5IGhpZGUgdW5kZXIgbWFjcm8gbWFn
aWMsDQo+IGl0IHdpbGwgY3JlYXRlIGEgYmFkIHByZWNlZGVudCBmb3IgdGhlIGZ1dHVyZS4gV2hh
dCBpZiBzb21lYm9keSBzZW5kcw0KPiBhIHBhdGNoIGZvcg0KPiBhIG5vbi1zdGFuZGFyZCBleHRl
bnNpb24gYW5kIGNpdGVzIGtlbmRyeXRlIHN1cHBvcnQgYXMgYW4gZXhhbXBsZS4NCg0KQ29tZSBv
biAhIElTQSBleHRlbnNpb25zIGFyZSBtdWNoIGJpZ2dlciBiZWFzdHMgISBBbmQgcmVmdXNpbmcg
dXBzdHJlYW0NCnN1cHBvcnQgZm9yIG5vbi1yYXRpZmllZCBleHRlbnNpb25zIGlzIGZpbmUuIFRo
aXMgY2FzZSBpcyBub3doZXJlIG5lYXINCmFzIGNvbXBsZXguIEFuZCBhcyBJIG1lbnRpb25lZCBp
biBhbiBlYXJsaWVyIGVtYWlsLCBpdCBpcyBzbyBzaW1wbGUNCnRoYXQgd2UgY291bGQgY29uc2lk
ZXIgaXQgYXMgYSBoYXJkd2FyZSBidWcgcmF0aGVyIHRoYW4gc3BlYyBkZXZpYXRpb24NCih3aGlj
aCBoYXJkd2FyZSBidWdzIGFyZSBpbiBmYWN0LCBldmVuIHRob3VnaCB0aGV5IGFyZSBub3QNCmlu
dGVudGlvbmFsKS4NCg0KPiA+IEEgc3VmZmljaWVudGx5IHNtYXJ0IGtlcm5lbCBjb3VsZCBldmVu
IGRldGVjdCB0aGUgdmVyc2lvbiBhdCBydW50aW1lIGJ5DQo+ID4gaW50ZW50aW9uYWxseSB0cmln
Z2VyaW5nIGJlaGF2aW91ciB3aGljaCBpcyBpbGxlZ2FsIGRlcGVuZGluZyBvbiB0aGUNCj4gPiBw
cml2aWxlZ2VkIHZlcnNpb24sIGFuZCB0aGVuIGNoZWNraW5nIGZvciBhbiBleGNlcHRpb24uDQo+
ID4gDQo+IFRoYXQncyB0aGUgbWFpbnRlbmFuY2UgbmlnaHRtYXJlIEkgd2FzIHRhbGtpbmcgYWJv
dXQuIEZvciBrZW5kcnl0ZSwgaXQNCj4gaXMgb25seSBmZXcgaW5jb21wYXRpYmxlIGNoYW5nZXMN
Cj4gaW4gcHJpdmlsZWdlIHNwZWNpZmljYXRpb24gYnV0IHdoYXQgaWYgc29tZSBoYXJkd2FyZSBp
bXBsZW1lbnRzIGENCj4gdmFyaWF0aW9uIG9mIGh5cGVydmlzb3Igc3BlYyBvciB2ZWN0b3IgZXh0
ZW5zaW9uLg0KDQpJZiB5b3UgYWRkICJ3aGF0IGlmIiBsaWtlIHRoYXQsIHdlIHdpbGwgbmV2ZXIg
YmUgYWJsZSB0byBtYWtlIHByb2dyZXNzDQphbmQgaW5ub3ZhdGUgd2l0aCBSSVNDLVYuIEkgZm9y
IG9uZSBkbyBub3QgZXhwZWN0IHRoZSBzcGVjcyAxLjExIHRvIGJlDQoiVEhFIiBSSVNDLVYgc3Bl
Y3MgZm9yZXZlci4gVGhlcmUgc3VyZWx5IHdpbGwgYmUgc29tZWRheSBhbiBldm9sdXRpb24NCm9m
IGl0LiBXZSBtb3N0IGxpa2VseSB3aWxsIGhhdmUgdG8gc3VwcG9ydCBzb21lZGF5IFJJU0MtViAy
LjAuIEFuZCB3ZQ0Kd2lsbCBuZWVkIHRvIGtlZXAgc3VwcG9ydCBmb3IgMS4xMSBhcyB3ZWxsIHdo
ZW4gdGhhdCBkYXkgY29tZXMuDQoNClN1cHBvcnQgbmlnaHRtYXJlIG1vc3Qgb2Z0ZW4gY29tZSBm
cm9tIGNvZGUgZ2V0dGluZyBvdXQgb2YgaGFuZCBpbg0KdGVybXMgb2YgY2xlYW5saW5lc3Mvc3Ry
dWN0dXJlIChpbiBteSBvcGluaW9uKS4gQXMgbG9uZyBhcyB0aW55IGNoYW5nZXMNCmFyZSBub3Qg
aW52YXNpdmUsIGNsZWFybHkgdmVyeSBsaW1pdGVkIGluIHNjb3BlIGFuZCBjbGVhbiwgSSBhbQ0K
cGVyZmVjdGx5IGZpbmUgd2l0aCBleGNlcHRpb25zLiBBZ2Fpbiwgd2Ugd2lsbCBoYXZlIHRvIGRl
YWwgd2l0aA0KdmFyaW91cyBoYXJkd2FyZSBidWdzIGFzIHdlIGdldCBtb3JlIEhXIGFueXdheS4g
VGhhdCB3aWxsIGJlIHRoZSBzYW1lDQpwcm9ibGVtLi4uDQoNCj4gDQo+ID4gLS1TZWFuDQo+ID4g
DQo+IA0KPiANCg0KLS0gDQpEYW1pZW4gTGUgTW9hbA0KV2VzdGVybiBEaWdpdGFsIFJlc2VhcmNo
DQo=

