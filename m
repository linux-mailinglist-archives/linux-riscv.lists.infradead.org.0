Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF8311149EB
	for <lists+linux-riscv@lfdr.de>; Fri,  6 Dec 2019 00:35:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-ID:Content-Type:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=bau6nAM9bOZKofiDnkuvnNTLKDfVGoT2oDbMyb4kya4=; b=QoqFPH/fB4QJAZ8hyrcNM+bZa
	6bgefynraEGDyddPH6nsgY5lPerZ1ThqaaUJEvktR9pdTVPkDAJvjICUBbaaMLftCWN8PhYQvEH83
	gRpalEv6yASdhGPHw+mW30NCf5+9h327RXyUy5P2PQz/PXndAUiuBm5oSE6xqF6vpGr09m+37GxLd
	qZ2LyFcQiCF1OK/0pH1G+mz3Siky3FDjl5I7bunVa44mCxmFUV8yLqWfVeigmqB9Im+w/8r8xiMTH
	Vm/ccYYee1Iy3Cz4+0ZQxwCLMt4C1oLZyWQGdjU/nIkT3suauquGfKWbnvkNNDvN7kQkSbo9YHJUX
	8/bDvHYcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1id0ea-0003d4-SU; Thu, 05 Dec 2019 23:35:24 +0000
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1id0eW-0003cU-EK
 for linux-riscv@lists.infradead.org; Thu, 05 Dec 2019 23:35:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1575588920; x=1607124920;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=bau6nAM9bOZKofiDnkuvnNTLKDfVGoT2oDbMyb4kya4=;
 b=XT7m40GkQE7xcYfYum5bZ1msZ3BG3F+XgLvmNSPw+9vWP3CuW39UoXw7
 VWmRzzDm4T5+/aZ/KLI3IaMn8x0pyHlxezdoCx6b/JfwKYAtDw1e1Vhhg
 rAge19P+mVOtv6Xr9hByD1weFgG7zLMa62G2PqirCPYbLhoCnpx+aHd3S
 jHf1/rRAYulG3Cl1JfA5JzNdzCNu2IlCGzhvSIKH98/wFw/alSaaLOpQt
 Wy+0m9pwlwBIaeaelkD77MWV/XWj7eKd9EzH4qngz2O1O4oRm63HkFU2G
 IjsFxiJWL5dan45MQdLeD3Bqqe40WaFcbMZUZM8xrViIGxEXaJjJI0zLJ A==;
IronPort-SDR: E2Xt954TnlXGd67yCNZg9GqERW+G0QQNa/qNAKtJLEWw0oxPDZ/T50/6ALwyU05dv0E0EZjWsY
 etc53oG5nA2d0Gex9wRPtb2PLAq0vKw4mnm+/apRvUx/T/L4KAhomhu72BVRxdh29TOJs5Q+k5
 C97sUu5+Nj5CMaW5UxZthpMIe9kMFJX2+QNYKr8hmOFfn0tSE/WivyEsAKu9yJacTM1qhxmrvD
 HN3lohT/9cVzpwjFzsd12xLif2DbiC4gqDRgOPCHXcEoKOneaRZpU1lOidBjV100zYoDngIJX3
 fKA=
X-IronPort-AV: E=Sophos;i="5.69,282,1571673600"; d="scan'208";a="232232140"
Received: from mail-sn1nam02lp2053.outbound.protection.outlook.com (HELO
 NAM02-SN1-obe.outbound.protection.outlook.com) ([104.47.36.53])
 by ob1.hgst.iphmx.com with ESMTP; 06 Dec 2019 07:35:14 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jFjU2aJTqSl3lxh5p9JdJEWY9jFd6IIvOVBEg4MmdCufKDG3Sh9PK8LxplFga1dPAQpFumKCJE9wPlcSsSBksuLst0VNcANv7SYRnPDiE+V5mpnACJajxnTHesk7oIGC78qOo2Vg+s065HDJgi37JXcRET56gxhfBk8INQqed5Lw2zNJf9SOAYgkqYmZITGTIWTNZRXQbv90X5zzxnFQlzLGpFlhlZaLZVtGTRksND9Gr/O/PymShgDN5K31xLLbKIU/LYVhp1UfOP5VNsusEDGeIm1VjmyYNaviFbmP1q0+92QkCp16ynos78IkY1LF5hFzBR9Ez6XPn7HIzb/mLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bau6nAM9bOZKofiDnkuvnNTLKDfVGoT2oDbMyb4kya4=;
 b=MY7VcgPhWGesu5Fu+NcdJomkPKBXGcIc45bxq0dk3GdsDVEOlxADW7GzWOB5f3y3nznTOo8vUTItSmcSSvfMlcnheEFs0yQ4Cqd0XiBoBYcnJwRseabGW/n6jnRd4jY/czIFTlzTFuRlJMffbpqZ6zrSxttYMlxMt2XyhAziBkp6PgQsJaVePzeZJYMTosrF7TEoBWPXo5HkxYRSl8khtl2t7DUzqyBGnbgt9Bfo3ZonjtoDiVQE0H48c7IJ+nK2CtRTI7RhqbBFSpaRgjVHlSXa6WmyiPmGJZ3wafq6lNDeA/84MKF43EIZlLjJC480XPObvNI3cVAfR8+C5Rrh7w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bau6nAM9bOZKofiDnkuvnNTLKDfVGoT2oDbMyb4kya4=;
 b=bwekGfegmDFd0eNSr8O3Nx2C22j9uNN1cNNHuqV1UVAHyqaQSIBwXolQiKbP7s1DGMv/PptZRWvgkc9pC8DpYygONBK53iQDi5aPQtH8ocZuJ4btM+HDXJ6Rx6zNFcWWNuPXIMfCNw393FINWNYqoddiH536ToLCbIype/lalmo=
Received: from BYAPR04MB4901.namprd04.prod.outlook.com (52.135.232.206) by
 BYAPR04MB5512.namprd04.prod.outlook.com (20.178.232.30) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2516.13; Thu, 5 Dec 2019 23:35:12 +0000
Received: from BYAPR04MB4901.namprd04.prod.outlook.com
 ([fe80::545f:1547:d48a:7fbc]) by BYAPR04MB4901.namprd04.prod.outlook.com
 ([fe80::545f:1547:d48a:7fbc%7]) with mapi id 15.20.2516.014; Thu, 5 Dec 2019
 23:35:12 +0000
From: Alistair Francis <Alistair.Francis@wdc.com>
To: "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>
Subject: Re: [GIT PULL] Second set of RISC-V updates for v5.5-rc1
Thread-Topic: [GIT PULL] Second set of RISC-V updates for v5.5-rc1
Thread-Index: AQHVqoAixayXodMShUatl8RuOOpeiKep7kMAgABfWICAABJLgIAAAdGAgAB4CACAABG3AIABQliAgAAE5oA=
Date: Thu, 5 Dec 2019 23:35:12 +0000
Message-ID: <99bbf5710da82c8b52e59ad5fc4e44471573ecd3.camel@wdc.com>
References: <alpine.DEB.2.21.9999.1912040050430.56420@viisi.sifive.com>
 <CAAhSdy2id0FoLBxWwN7WHEk5Am770BizkK=sZO0-G54MtYa6DQ@mail.gmail.com>
 <9044bad02aa6553cdb2523294500b50fccf3fd2a.camel@wdc.com>
 <alpine.DEB.2.21.9999.1912041128400.186402@viisi.sifive.com>
 <81530734312456aab8b9625d7e9bb071c43db1c5.camel@wdc.com>
 <alpine.DEB.2.21.9999.1912041644170.206929@viisi.sifive.com>
 <84c4ee600c0dd235a0fcc257115807af7207b5f6.camel@wdc.com>
 <alpine.DEB.2.21.9999.1912051435130.239155@viisi.sifive.com>
In-Reply-To: <alpine.DEB.2.21.9999.1912051435130.239155@viisi.sifive.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Alistair.Francis@wdc.com; 
x-originating-ip: [199.255.44.250]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 166f1624-9b6b-4229-8068-08d779dbc614
x-ms-traffictypediagnostic: BYAPR04MB5512:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR04MB55124C0A53D7FDA91FBF3B0E905C0@BYAPR04MB5512.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 02426D11FE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(39860400002)(396003)(136003)(366004)(346002)(376002)(199004)(189003)(5640700003)(4326008)(36756003)(478600001)(14444005)(6512007)(26005)(6506007)(76176011)(6486002)(305945005)(99286004)(316002)(15650500001)(25786009)(186003)(14454004)(64756008)(66556008)(66476007)(66946007)(54906003)(229853002)(8676002)(8936002)(81166006)(6916009)(2616005)(86362001)(11346002)(2906002)(71190400001)(71200400001)(76116006)(5660300002)(118296001)(66446008)(102836004)(81156014);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB5512;
 H:BYAPR04MB4901.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: GLLXmsr0zf7Yv1JicP+vlnBpJpHh8fgjO3J2E3U5pXZVizVhYvRSv2iEMa7e2LUJKFim+jptbXVAut9vF9qgcKjoo7RmnAmOckxEHDkgNzRZJivdeOvsiBnzezE9I4eCziyW40o82DLmJeV4UD8d2wHQqxw5XRTZ4qyrTE7HYIqw+zUhchRUkiVcL4T31NsJzAL1DXsmqchCJThJb8HwuMh5j9wr5GMtRRrCikhcAM0KBs37aLD7m8OsHxyzCt9jM4wWC0oGeR98r9D1Np6SkvxkP6S2ruQfOZAfLj62keZg0IGBneDQLm+7g12WRWDrIkk6G2a50hALm390GgdEJeTKnzzxUCi9UxfFdw2cYcqRN3pH5dNqNqniEr/jyGV8QeSITikyB1dXpHj0zwBg3xry+4/U/JFqNuneBQRR4JvDJjMC4sop6Jcy3p7PN2Dy
Content-Type: text/plain; charset="utf-8"
Content-ID: <64763BAF4D3D4D4C9A9F90D19EFF8105@namprd04.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 166f1624-9b6b-4229-8068-08d779dbc614
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Dec 2019 23:35:12.2666 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 11jmKKsHXrsbBvWiVqcYKALbajfR/N4bdliVChM8iY6xWSXgCgHcOYbX0Ce31Io24M/6x+bUm4lftvLSJKY/e47kLBXmNNGcSXSzIgo5MaQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB5512
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_153520_544664_17651B57 
X-CRM114-Status: GOOD (  36.14  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.141.245 listed in list.dnswl.org]
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

T24gVGh1LCAyMDE5LTEyLTA1IGF0IDE1OjEyIC0wODAwLCBQYXVsIFdhbG1zbGV5IHdyb3RlOg0K
PiBPbiBUaHUsIDUgRGVjIDIwMTksIEFsaXN0YWlyIEZyYW5jaXMgd3JvdGU6DQo+IA0KPiA+IE9u
IFdlZCwgMjAxOS0xMi0wNCBhdCAxODo1NCAtMDgwMCwgUGF1bCBXYWxtc2xleSB3cm90ZToNCj4g
PiA+IE9uIFdlZCwgNCBEZWMgMjAxOSwgQWxpc3RhaXIgRnJhbmNpcyB3cm90ZToNCj4gPiA+IA0K
PiA+ID4gPiBJdCBpcyB0b28gbXVjaCB0byBleHBlY3QgZXZlcnkgZGlzdHJvIHRvIG1haW50YWlu
IGEgZGVmY29uZmlnDQo+ID4gPiA+IGZvciANCj4gPiA+ID4gUklTQy1WLg0KPiA+ID4gDQo+ID4g
PiBUaGUgbWFqb3IgTGludXggZGlzdHJpYnV0aW9ucyBtYWludGFpbiB0aGVpciBvd24ga2VybmVs
DQo+ID4gPiBjb25maWd1cmF0aW9uIA0KPiA+ID4gZmlsZXMsIGNvbXBsZXRlbHkgaWdub3Jpbmcg
a2VybmVsIGRlZmNvbmZpZ3MuICBUaGlzIGhhcyBiZWVuIHNvDQo+ID4gPiBmb3IgYSANCj4gPiA+
IGxvbmcgdGltZS4NCj4gPiANCj4gPiBUaGF0IG1pZ2h0IGJlIHRydWUgZm9yIHRoZSB0cmFkaXRp
b25hbCAiZGVza3RvcCIgZGlzdHJvcywgYnV0DQo+ID4gZW1iZWRkZWQNCj4gPiBkaXN0cm9zICh0
aGUgbWFpbiB0YXJnZXQgZm9yIFJJU0MtViBhdCB0aGUgbW9tZW50KSBkb24ndCBnZW5lcmFsbHkN
Cj4gPiBkbw0KPiA+IHRoaXMuDQo+IA0KPiBNYXliZSBpbiB0aGlzIGRpc2N1c3Npb24gd2UgY2Fu
IGFncmVlIHRvIHVzZSB0aGUgY29tbW9uIGRpc3RpbmN0aW9uIA0KPiBiZXR3ZWVuIGRpc3RyaWJ1
dGlvbnMgYW5kIGRpc3RyaWJ1dGlvbiBidWlsZCBmcmFtZXdvcmtzLCB3aGVyZSB1c2Vycw0KPiBv
ZiANCj4gdGhlIGxhdHRlciBuZWVkIHRvIGJlIG1vcmUgdGVjaG5pY2FsbHkgc29waGlzdGljYXRl
ZCAtIGFzIG9wcG9zZWQgdG8gDQo+IGRvd25sb2FkaW5nIGEgZGlzayBpbWFnZS4NCg0KV2h5IGlz
IHRoZXJlIGEgZGlzdGluY3Rpb24/DQoNClRoZXJlIGFyZSBsb3RzIG9mIGRpc2sgaW1hZ2VzIHRo
YXQgeW91IGNhbiBqdXN0IGRvd25sb2FkIHdoaWNoIGFyZQ0KYmFzZWQgb24gT0Ugb3IgYnVpbGRy
b290LiBMb3RzIG9mIHBlb3BsZSB1c2UgT0UgaW1hZ2VzIGFuZCBuZXZlcg0KcmVhbGlzZSBpdC4N
Cg0KSW4gdGhlIHNhbWUgd2F5IHRoYXQgdGhlcmUgYXJlIGJ1aWxkIGVudmlyb21lbnRzIGJhc2Vk
IG9uIHRoZSBzdGFuZGFyZA0KImRlc2t0b3AiIGRpc3Ryb3MuIEluIGJvdGggY2FzZXMgdGhlc2Ug
YXJlIGRpc3Ryb3MuDQoNCj4gDQo+ID4gPiA+IFdoaWNoIGlzIHdoeSB3ZSBjdXJyZW50bHkgdXNl
IHRoZSBkZWZjb25maWcgYXMgYSBiYXNlIGFuZA0KPiA+ID4gPiBhcHBseSANCj4gPiA+ID4gZXh0
cmEgZmVhdHVyZXMgdGhhdCBkaXN0cm8gd2FudCBvbiB0b3AuDQo+ID4gPiANCj4gPiA+IEFzIHlv
dSBrbm93LCBzaW5jZSB5b3UndmUgd29ya2VkIG9uIHNvbWUgb2YgdGhlIGRpc3RyaWJ1dGlvbg0K
PiA+ID4gYnVpbGRlciANCj4gPiA+IGZyYW1ld29ya3MgKG5vdCBkaXN0cmlidXRpb25zKSBsaWtl
IE9FIGFuZCBCdWlsZHJvb3QsIHRob3NlDQo+ID4gPiBidWlsZCANCj4gPiA+IHN5c3RlbXMgaGF2
ZSBzb3BoaXN0aWNhdGVkIGtlcm5lbCBjb25maWd1cmF0aW9uIHBhdGNoaW5nIGFuZA0KPiA+ID4g
b3ZlcnJpZGUgDQo+ID4gPiBzeXN0ZW1zIHRoYXQgY2FuIGRpc2FibGUgdGhlIGRlYnVnIG9wdGlv
bnMgaWYgdGhlIG1haW50YWluZXJzDQo+ID4gPiB0aGluayANCj4gPiA+IGl0J3MgYSBnb29kIGlk
ZWEgdG8gZG8gdGhhdC4NCj4gPiANCj4gPiBZZXMgdGhleSBkby4gQXMgSSBzYWlkLCB3ZSBzdGFy
dCB3aXRoIHRoZSBkZWZjb25maWcgYW5kIHRoZW4gYXBwbHkNCj4gPiBjb25maWcgY2hhbmdlcyBv
biB0b3AuIEV2ZXJ5IGRpdmVyc2lvbiBpcyBhIG1haW50YWluZW5jZSBidXJkZW4gc28NCj4gPiB3
aGVyZSBwb3NzaWJsZSB3ZSBkb24ndCBtYWtlIGFueSBjaGFuZ2VkLiBBbGwgb2YgdGhlIFFFTVUg
bWFjaGluZXMNCj4gPiBjdXJyZW50bHkgZG9uJ3QgaGF2ZSBjb25maWcgY2hhbmdlcyAoYW5kIGhv
cGVmdWxseSBuZXZlciB3aWxsKSBhcw0KPiA+IGl0J3MNCj4gPiBhIHBhaW4gdG8gbWFpbnRhaW4u
DQo+IA0KPiBJJ20gb3BlbiB0byB5b3VyIGNvbmNlcm5zIGhlcmUuICBDYW4geW91IGhlbHAgbWUg
dW5kZXJzdGFuZCB3aHkNCj4gYWRkaW5nIGEgDQo+IGZldyBsaW5lcyB0byB0aGUga2VybmVsIGNv
bmZpZ3VyYXRpb24gZnJhZ21lbnRzIHRvIGRpc2FibGUgdGhlIGRlYnVnIA0KPiBvcHRpb25zIGNy
ZWF0ZXMgbWFpbnRlbmFuY2UgcGFpbj8gIElzbid0IGl0IGp1c3QgYSBtYXR0ZXIgb2YgYWRkaW5n
IGENCg0KRm9yIG9uZSwgd2UgaGF2ZSB0aGUgc2FtZSBidXJkZW4gYXMgeW91IGRvLg0KDQpZb3Ug
ZmVlbCB0aGF0IGl0J3MgdG9vIG11Y2ggb2YgYSBidXJkZW4gdG8gaGF2ZSBhIGNvbmZpZyBmcmFn
bWVudCBpbg0KdHJlZSB0byBlbmFibGUgZGVidWcuIFlvdSBjbGVhcmx5IGZlZWwgdGhhdCBoYXZp
bmcgYQ0KYGV4dHJhX2RlYnVnLmNvbmZpZ2AgZnJhZ21lbnQgZm9yIHlvdSBpcyB0b28gbXVjaCBv
ZiBhIGJ1cmRlbiwgd2h5IGlzDQppdCBub3QgYSBidXJkZW4gZm9yIGRpc3Ryb3M/DQoNCj4gZmV3
IA0KPiBsaW5lcyB0byBkaXNhYmxlIHRoZSBkZWJ1ZyBvcHRpb25zLCBhbmQgLS0gc2luY2UgeW91
IGNsZWFybHkgZG9uJ3QNCj4gd2FudCANCj4gdGhlbSBlbmFibGVkIGZvciBhbnkgcGxhdGZvcm0g
LS0ganVzdCBsZWF2aW5nIHRoZW0gaW4gdGhlcmU/DQoNCkxlYXZlIHRoZW0gaW4gd2hlcmU/DQoN
Ck5vIG90aGVyIGFyY2hpdGVjdHVyZSBkb2VzIHRoaXMuIE5vdyB3ZSBoYXZlIHRvIGhhdmUgYSBz
cGVjaWFsIGNvbmZpZw0KZnJhZ21lbnQgYWRkZWQganVzdCBmb3IgUklTQy1WLiBXaHkgaXMgUklT
Qy1WIHNvIHNwZWNpYWwgdGhhdCBpdCBuZWVkcw0KaXQncyBvd24gZnJhZ21lbnQgdGhhdCBvdGhl
ciBhcmNoZXMgZG9uJ3QgaGF2ZT8NCg0KPiANCj4gPiA+ID4gPiBkaXN0cm9zIGFuZCBiZW5jaG1h
cmtlcnMgd2lsbCBjcmVhdGUgdGhlaXIgb3duIEtjb25maWdzIGZvcg0KPiA+ID4gPiA+IHRoZWly
DQo+ID4gPiA+ID4gbmVlZHMuDQo+ID4gPiA+IA0KPiA+ID4gPiBMaWtlIEkgc2FpZCwgdGhhdCBp
c24ndCB0cnVlLiBBZnRlciB0aGlzIHBhdGNoIGlzIGFwcGxpZWQgKGFuZA0KPiA+ID4gPiBpdCAN
Cj4gPiA+ID4gbWFrZXMgaXQgdG8gYSByZWxlYXNlKSBhbGwgT0UgdXNlcnMgd2lsbCBub3cgaGF2
ZSBhIHNsb3dlcg0KPiA+ID4gPiBSSVNDLVYgDQo+ID4gPiA+IGtlcm5lbC4NCj4gPiA+IA0KPiA+
ID4gT0UgZG9lc24ndCBoYXZlIGFueSBSSVNDLVYgc3VwcG9ydCB1cHN0cmVhbSwgc28gcHVyZSBP
RSB1c2Vycw0KPiA+ID4gd29uJ3QNCj4gPiA+IG5vdGljZSANCj4gPiANCj4gPiBUaGF0IGlzIGp1
c3Qgbm90IHRydWUuIA0KPiANCj4gQWZ0ZXIgZ2V0dGluZyB5b3VyIHJlc3BvbnNlLCBJIHJldmll
d2VkIHRoZSBPRS1jb3JlIHRyZWUgdGhhdCBJIGhhdmUNCj4gaGVyZSwgDQo+IHdoaWNoIGlzIGJh
c2VkIG9uIGZvbGxvd2luZyB0aGUgT0UtY29yZSAiZ2V0dGluZyBzdGFydGVkIg0KPiBpbnN0cnVj
dGlvbnMuIA0KPiBUaGUgcmVzdWx0IGlzIGEgdHJlZSB3aXRoIG5vIFJJU0MtViBtYWNoaW5lIHN1
cHBvcnQuICBMb29raW5nIGFnYWluDQo+IGF0IA0KPiB0aG9zZSBpbnN0cnVjdGlvbnMsIEkgc2Vl
IHRoYXQgdGhleSBjaGVjayBvdXQgdGhlIGxhc3QgcmVsZWFzZSwNCj4gcmF0aGVyIA0KPiB0aGFu
IHRoZSBjdXJyZW50IHRvcCBvZiB0aGUgdHJlZTsgYW5kIHRoZSBjdXJyZW50IHRvcCBvZiB0cmVl
IGRvZXMNCj4gaGF2ZSBhIA0KPiBRRU1VIFJJU0MtViBtYWNoaW5lLiAgU28gdGhpcyBzdGF0ZW1l
bnQgb2YgeW91cnMgaXMgY29ycmVjdCwgYW5kIEkNCj4gd2FzIGluIA0KPiBlcnJvciBhYm91dCB0
aGUgY3VycmVudCB0b3Atb2YtdHJlZSBPRS1jb3JlIHN1cHBvcnQuDQoNClRoZSBsYXN0IHJlbGVh
c2UgKFpldXMpIGFsc28gaGFzIFJJU0MtViBzdXBwb3J0Li4uLg0KDQo+IA0KPiA+IFlvdSB0YWxr
IGxhdGVyIGFib3V0IG1pc2luZm9ybWF0aW9uIGJ1dCB0aGlzIGlzIGEgYmxhdGVudCBsaWUuDQo+
IA0KPiBUaGlzIGlzbid0IGFjY2VwdGFibGUuICBXZSd2ZSBtZXQgZWFjaCBvdGhlciBpbiBwZXJz
b24sIGFuZCBJJ3ZlIA0KPiBjb25zaWRlcmVkIHlvdSBhbiBlbmpveWFibGUgYW5kIHRydXN0d29y
dGh5IHBlcnNvbiB0byBkaXNjdXNzDQo+IHRlY2huaWNhbCANCj4gaXNzdWVzIHdpdGguICBUaGlz
IGlzIHRoZSBmaXJzdCB0aW1lIHRoYXQgeW91J3ZlIGV2ZXIgcHVibGljbHkNCj4gYWNjdXNlZCBt
ZSANCj4gb2YgbWlzcmVwcmVzZW50aW5nIGFuIGlzc3VlIHdpdGggaW50ZW50IHRvIGRlY2VpdmUu
ICBUaGVyZSdzIGEgYmlnIA0KPiBkaWZmZXJlbmNlIGJldHdlZW4gc3RhdGluZyB0aGF0IHNvbWVv
bmUgaXMgcXVvdGluZyBtaXNpbmZvcm1hdGlvbg0KPiBhbmQgDQo+IGFjY3VzaW5nIHNvbWVvbmUg
b2YgYmFkIGludGVudGlvbnMuICBJIGV4cGVjdCBhbiBhcG9sb2d5IGZyb20geW91Lg0KDQpJIGRp
ZG4ndCBzYXkgeW91IGhhZCBiYWQgaW50ZW50aW9ucy4gSSB3YXMganVzdCBwb2ludGluZyBvdXQg
dGhhdCB5b3UNCnNwZW50IHRoZSB0aW1lIHJlc2VhcmNoaW5nIHBvaW50cyB0aGF0IG1hdGNoIHlv
dXIgYXJndW1lbnQsIGJ1dCBkaWRuJ3QNCmNoZWNrIHRvIHNlZSB3aGF0IGN1cnJlbnQgUklTQy1W
IHN1cHBvcnQgaXMuDQoNCkkgZG9uJ3Qgc2VlIGEgZGlmZmVyZW5jZSBiZXR3ZWVuIHNheWluZyBz
b21lb25lIGlzIHNwcmVhZGluZw0KbWlzaW5mb3JtYXRpb24gYW5kIGx5aW5nLCBidXQgSSBhbSBz
b3JyeSBpZiBpdCB1cHNldCB5b3UuDQoNCj4gDQo+ID4gPiA+IFNsb3dpbmcgZG93biBhbGwgdXNl
cnMgdG8gaGVscCBrZXJuZWwgZGV2ZWxvcGVycyBkZWJ1ZyBzZWVtcw0KPiA+ID4gPiBsaWtlIA0K
PiA+ID4gPiB0aGUgd3JvbmcgZGlyZWN0aW9uLiBLZXJuZWwgZGV2ZWxvcGVycyBzaG91bGQga25v
dyBlbm91Z2ggdG8gYmUNCj4gPiA+ID4gYWJsZSANCj4gPiA+ID4gdG8gdHVybiBvbiB0aGUgcmVx
dWlyZWQgY29uZmlncywgd2h5IGRvZXMgdGhpcyBuZWVkIHRvIGJlIHRoZSANCj4gPiA+ID4gZGVm
YXVsdD8NCj4gPiA+IA0KPiA+ID4gSXQncyBjbGVhciB5b3Ugc3Ryb25nbHkgZGlzYWdyZWUgd2l0
aCB0aGUgZGVjaXNpb24gdG8gZG8NCj4gPiA+IHRoaXMuICBJdCdzIA0KPiA+ID4gY2VydGFpbmx5
IHlvdXIgcmlnaHQgdG8gZG8gc28uICBCdXQgaXQncyBub3QgZ29vZCB0byBzcHJlYWQgDQo+ID4g
PiBtaXNpbmZvcm1hdGlvbiBhYm91dCBob3cgY2hhbmdpbmcgdGhlIGRlZmNvbmZpZ3MgInNsb3db
c10gZG93bg0KPiA+ID4gYWxsIA0KPiA+ID4gdXNlcnMsIiBvcg0KPiA+IA0KPiA+IFdoYXQgbWlz
aW5mb3JtYXRpb24/DQoNClNvbWVob3cgaXQgbG9va3MgbGlrZSB5b3UgZHJvcHBlZCB0aGlzIHBh
cmFncmFwaCBmcm9tIG15IHJlc3BvbnNlLCBJJ2xsDQpqdXN0IGFkZCBpdCBiYWNrIGluOg0KDQoq
KioqKioNCkFudXAgc2hhcmVkIGJlbmNobWFya2luZyByZXN1bHRzIGluZGljYXRpbmcgdGhhdCB0
aGlzIGNoYW5nZSBoYXMgYSAxMiUNCnBlcmZvcm1hbmNlIGRlY3JlYXNlIGZvciBldmVyeW9uZSB3
aG8gdXNlcyB0aGUgZGVmY29uZmlnIHdpdGhvdXQNCnJlbW92aW5nIHRoaXMgY2hhbmdlLg0KKioq
KioqDQoNCj4gDQo+IFlvdSd2ZSBhbHJlYWR5IGFja25vd2xlZGdlZCBpbiB5b3VyIHJlc3BvbnNl
IHRoYXQgdGhlIG1ham9yIExpbnV4IA0KPiBkaXN0cmlidXRpb25zIGRvbid0IHVzZSBkZWZjb25m
aWdzLiAgU28gaXQncyBjbGVhciB0aGF0IHlvdXIgDQoNCldoYXQgZG8geW91IG1lYW4gbWFqb3I/
DQoNCkFGQUlLIE9FIGFuZCBidWlsZHJvb3QgYXJlIHRoZSBvbmx5IGRpc3Ryb3MgdGhhdCBoYXZl
IGZpcnN0IGNsYXNzIFJJU0MtDQpWIHN1cHBvcnQuIFRoYXQgc2VlbXMgcHJldHR5IG1ham9yIHRv
IG1lLg0KDQo+IHN0YXRlbWVudCBpcyANCj4gZmFsc2UsIGFuZCByYXRoZXIgdGhhbiBhZG1pdHRp
bmcgdGhhdCB5b3UncmUgd3JvbmcsIHlvdSdyZSBkb3VibGluZw0KPiBkb3duLg0KDQpEb3VibGlu
ZyBkb3duIG9uIHdoYXQ/IEkgbmV2ZXIgY2xhaW1lZCBhbGwgZGlzdHJvcyB1c2UgZGVmY29uZmln
cy4NCg0KPiANCj4gPiA+IGV4YWdnZXJhdGluZyB0aGUgZGlmZmljdWx0eSBmb3IgZG93bnN0cmVh
bSBzb2Z0d2FyZSBlbnZpcm9ubWVudHMNCj4gPiA+IHRvIA0KPiA+ID4gYmFjayB0aGlzIGNoYW5n
ZSBvdXQgaWYgdGhleSB3aXNoLg0KPiA+IA0KPiA+IElmIHlvdSB0aGluayBpdCBpcyB0aGF0IGVh
c3kgY2FuIHlvdSBwbGVhc2Ugc3VibWl0IHRoZSBwYXRjaGVzPw0KPiANCj4gRm9yIG15IHBhcnQs
IEknZCBiZSBoYXBweSBpZiB0aGUgY3VycmVudCBSSVNDLVYgT0UgYW5kIEJ1aWxkcm9vdA0KPiB1
c2VycyB3aG8gDQo+IGRvbid0IGNoYW5nZSB0aGUga2VybmVsIGNvbmZpZ3MgcnVuIHdpdGggdGhl
IGRlZmNvbmZpZyBkZWJ1ZyBvcHRpb25zIA0KPiBlbmFibGVkIHJpZ2h0IG5vdy4gICBTbywgSSBk
b24ndCBwbGFuIHRvIHNlbmQgcGF0Y2hlcyBmb3IgdGhlbS4NCg0KVGhhdCBpcyB3aGF0IHdpbGwg
Y29udGludWUgdG8gaGFwcGVuLiBBbGwgdXNlcnMgd2lsbCBiZSBleHBlY3RlZCB0bw0KbGl2ZSB3
aXRoIGEgMTIlIHBlcmZvcm1hbmNlIGltcGFjdC4NCg0KPiANCj4gPiBJIHVuZGVyc3RhbmQgaXQn
cyBlYXN5IHRvIG1ha2UgZGVjaXNpb25zIHRoYXQgc2ltcGxmeSB5b3VyIGZsb3csDQo+ID4gYnV0
DQo+ID4gdGhpcyBoYXMgcmVhbCBuZWdhdGl2ZSBjb25zZXF1ZW5jZXMgaW4gdGVybXMgb2YgcGVy
Zm9ybWFuY2UgZm9yDQo+ID4gdXNlcnMNCj4gPiBvciBjb21wbGV4aXR5IGZvciBtYWludGFpbmVy
cy4gSXQgd291bGQgYmUgbmljZSBpZiB5b3UgdGFrZSBvdGhlcg0KPiA+IHVzZXJzDQo+ID4gL2Rl
dmVsb3BlcnMgaW50byBhY2NvdW50IGJlZm9yZSBtZXJnaW5nIGNoYW5nZXMuDQo+IA0KPiBBcyBz
dGF0ZWQgZWFybGllciwgSSdtIG9wZW4gdG8gcmVjb25zaWRlcmluZyBpZiBpdCBpbmRlZWQgaXMg
b25lcm91cywNCj4gYW5kIA0KPiBub3QganVzdCBhIG1hdHRlciBvZiBwYXRjaGluZyBhIGZldyBs
aW5lcyBvZiBrZXJuZWwgY29uZmlndXJhdGlvbiANCj4gZnJhZ21lbnRzIGluIE9FIGFuZCBCdWls
ZHJvb3Qgb25jZS4NCg0KSSBkb24ndCB1bmRlcnN0YW5kLCBpZiBwYXRjaGluZyBhIGNvbmZpZyBp
cyBzbyBlYXN5IHdoeSBub3QganVzdCBoYXZlIGENCmZyYWdtZW50IGluIHRoZSBrZXJuZWwgdHJl
ZSBhbmQgeW91IGNhbiB1c2UgdGhhdCB3aGVuIHlvdSBidWlsZCBhDQprZXJuZWw/IFRoaXMgaXMg
d2hhdCBEYW5pZWwgVGhvbXBzb24gcG9pbnRlZCBvdXQuIFRoYXQgd291bGQgYXZvaWQgdGhpcw0K
aXNzdWUgYW5kIGhhdmUgaXQgZWFzeSBmb3IgeW91IHRvIGJ1aWxkIGEga2VybmVsIHdpdGggZGVi
dWcgc3VwcG9ydC4NCkhvdyBpcyB0aGF0IG5vdCB0aGUgYmVzdCBzb2x1dGlvbj8NCg0KQUZJQUsg
bm8gb3RoZXIgYXJjaGl0ZWN0dXJlIGhhcyBhbGwgdGhlc2UgZGVidWcgb3B0aW9ucyBlbmFibGVk
IGluIHRoZQ0KZGVmY29uZmksIHdoeSBpcyBSSVNDLVYgc28gc3BlY2lhbD8NCg0KQWxpc3RhaXIN
Cg0KPiANCj4gDQo+IC0gUGF1bA0K

