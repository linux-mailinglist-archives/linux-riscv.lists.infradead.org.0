Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C5101DF4EF
	for <lists+linux-riscv@lfdr.de>; Sat, 23 May 2020 07:16:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=DgJdXbICNbI8OQN4EAi512Y0oqvMzN1ZCzm5jAI6CuU=; b=RJPB2eVu3ele7lhCQMyclmyXv
	u2Vmro3vEZQDHh3gOpHtMirEA8+VZyRnjP/v6Xu9dNhaBAagVsjBhlRBdKXHRCCcwh0BX92m5vtHs
	S95bGrWjJ8ZtiR4DKFSBEnyITJP8wGZlI3P3lXOx4eGIfm9wRy9yrtujpJ3ijEDrh21PQA+NGXQRu
	GELOphpOyqCkoihlJTqaVwarsHBM1f52Dwlcj5DVazYddl5e5T+ZuNGN0KT6rwjL9wO6qWfNP94Di
	0HPg4t8nqtWq26UV6r5aOjwn4yC3bmvDX8oLma1OXGBVLL14nUmI2FeoOuPLsw5BOe9LmaCGE4mcx
	b+iE33fwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcMVw-0006CM-DO; Sat, 23 May 2020 05:16:04 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcMVs-0006Bf-1N
 for linux-riscv@lists.infradead.org; Sat, 23 May 2020 05:16:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1590210961; x=1621746961;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=DgJdXbICNbI8OQN4EAi512Y0oqvMzN1ZCzm5jAI6CuU=;
 b=jPZgH0hO/aJUEL6Sf59JdIJ/mpsKC2ldjZOcpkpEHNDOQ0Jf1mySnVXg
 Vf7B5iTiwNgRBNeBlEIfMi5NuX/KzNaBNtyPoawwGheEumso2n4VOV9yu
 d2W1TAw8/cN6xh63EL/AaXtQssVTy3tnk7Srtwwkm97NXUtvxRNUMqam8
 xmM5/wN2gdLiRZHMvrPX7/aNsoiYRpsVP9U3UJMgkz3glOBdnb5IfrLBr
 RmJWQ+fPfMc+1C0GValQ1T0oFV5NIX0jEbiR6RuingxfGr97LUVjGwQli
 9w111cznmeBSJs5QF+dtJCFgA4mIwBiMMEdoNQlnfqG9hXBGNmt4UJ8Ka Q==;
IronPort-SDR: rFYOLPe8naTa1v32NH62DQOclt1A448uVnZ9XZ0H98zxnEsVPdE/P1zs9wV029a9XxhohVXXyC
 ZJ9qMI0mpwD3nHSCFrXmlQ4fh1pRo7Njec/p621luc9Pajka85y8ConH+KiyVHxOYJo3K71G1W
 OELpg91zzWbDN2riTHatNRsZoc0vPdgIxf9vw7sQA6NDDApm/gjeCt/qHCU9fCXq9khH7VTQwT
 gFxQ1SiF77xxQJde765X/c4cvIUjwpoGdLCuwn9YaykHIAjCIeipV9NTu1lAcnfMRTyDpr3FZZ
 JA8=
X-IronPort-AV: E=Sophos;i="5.73,424,1583164800"; d="scan'208";a="241119434"
Received: from mail-sn1nam02lp2052.outbound.protection.outlook.com (HELO
 NAM02-SN1-obe.outbound.protection.outlook.com) ([104.47.36.52])
 by ob1.hgst.iphmx.com with ESMTP; 23 May 2020 13:16:07 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OLFIYWOWZmC75y+UJhmsdzP+JY6cEtEBSdIE1ow9cecBIDu7okzSXlQhj9ayJPpqkapzJELEUwxVG1Z6bdyzTBtHzspw+BOTVBj5vxU5HvgrRYCFb+UwlXXdQT5FZVhQ/3aXCSj+G1nMnaVsi/RrSczNJpSNTMQKJ7WRPvIjISdS7bA/W5QQwE6pXjt5w3i1SsNsLm7ZlfJRKx6fTGeLjLeokvHXgJCVgOEmlvkb8bL9xGnfrVPmT58VE4/Hq8p0HmSBLzkgwxtpOyRPwJt3MZSxRzDupbDyris2iEvpVZPPEmkshGTJGXqJRmmjStNrSP+aA/u7YG32FFoYT1J0pA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DgJdXbICNbI8OQN4EAi512Y0oqvMzN1ZCzm5jAI6CuU=;
 b=dKCE/JWR9dOG6diPC9o9v0QiVFJcGFzHs6wwhDtmJKwET0RWZksCuoihdG0n09Lghs5/+F0JGLiRlJqTmXHt8npnIhG+l8/GVTRHMNuyz31vTi0iDbVgC2gErftHL8rvd2v5UKxhE87AEFqtladRMZ3bG6yOKdnfrbx+yfw1U2rx0SH233tjuhVDhia8cKotORyBRzMvjtGVAMrelRFvmla7WPRCFV238+tr/KxIfUXYstF4B1KQ0jy4/byQbtjLaP95EUEyI6ot7tVxdzg0j7wdfXeMKN3s28TA41T/Mn9F9ABbXQraPcFKwCsWruL4VYmLgdGeuInaZNraSxGWDA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DgJdXbICNbI8OQN4EAi512Y0oqvMzN1ZCzm5jAI6CuU=;
 b=ok0A1NZnhPAGz7ctCG2wU81I5/u/JZcZMRwnm58TdM1AjVbdCU0iILOPWmD1bIBfSUe4T7KJOy8Pq0OKRMy8VkF40sS8tDkKLK9Cv4geHTI1sCNVNHeZl8bLzIuGyWzT2qUu05Bn7Qe+dsV+wm9+4tOzM5UZip07TiVEDSK0Cl0=
Received: from DM6PR04MB6201.namprd04.prod.outlook.com (2603:10b6:5:127::32)
 by DM6PR04MB4954.namprd04.prod.outlook.com (2603:10b6:5:19::27) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3021.24; Sat, 23 May
 2020 05:15:53 +0000
Received: from DM6PR04MB6201.namprd04.prod.outlook.com
 ([fe80::f8b3:c124:482b:52e0]) by DM6PR04MB6201.namprd04.prod.outlook.com
 ([fe80::f8b3:c124:482b:52e0%5]) with mapi id 15.20.3021.027; Sat, 23 May 2020
 05:15:53 +0000
From: Anup Patel <Anup.Patel@wdc.com>
To: Daniel Lezcano <daniel.lezcano@linaro.org>, Palmer Dabbelt
 <palmer@dabbelt.com>, Paul Walmsley <paul.walmsley@sifive.com>, Albert Ou
 <aou@eecs.berkeley.edu>, Thomas Gleixner <tglx@linutronix.de>, Jason Cooper
 <jason@lakedaemon.net>, Marc Zyngier <maz@kernel.org>
Subject: RE: [PATCH v5 4/6] clocksource/drivers/timer-riscv: Use per-CPU timer
 interrupt
Thread-Topic: [PATCH v5 4/6] clocksource/drivers/timer-riscv: Use per-CPU
 timer interrupt
Thread-Index: AQHWL3R6sYmJxZ+TeUaHloYoFyxT+Ki0FS2AgAEN0WA=
Date: Sat, 23 May 2020 05:15:53 +0000
Message-ID: <DM6PR04MB6201C6B4F6852A31E0CCDE398DB50@DM6PR04MB6201.namprd04.prod.outlook.com>
References: <20200521133301.816665-1-anup.patel@wdc.com>
 <20200521133301.816665-5-anup.patel@wdc.com>
 <af395b79-c74c-3c6d-8331-b84e37b01797@linaro.org>
In-Reply-To: <af395b79-c74c-3c6d-8331-b84e37b01797@linaro.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: linaro.org; dkim=none (message not signed)
 header.d=none;linaro.org; dmarc=none action=none header.from=wdc.com;
x-originating-ip: [106.51.30.72]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 65af5d2e-64eb-4a96-8fdd-08d7fed85daf
x-ms-traffictypediagnostic: DM6PR04MB4954:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR04MB4954E807B4AA60B70CD687CA8DB50@DM6PR04MB4954.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:4303;
x-forefront-prvs: 0412A98A59
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: w4bov3ylliCT55RmFX+t+VuUH6QushHwoIxbuTYfTj56bH78sFxvSvbCAg7ppovfljFdMEMuUfVAY9TM6KUfCvmvXIN6LQvEl08L0ng0NyUGYhXRX01pQf/iV2yvgou49NPQKRCEi34AJtYG8bD9yOsEita3hF/2OLk5EfXXDEpPAW7dEWQ1eMetBpfQz2CUu4SM40amENxjurvEQjWIdvxhGuD1557Atx2s1hZKjIxhORQcHnitDDfzbUP5ERHnqzmb5nvQvJ+KyAjQ2nYrZMuduRzE0fUFOn0kD5RQkVCSJ3JoJ5XHVa6oIOw2bZ9thZ1SzbCIL4R9W+LGqgG309qEUo3SaxkEQR7tpRjvRwAsq3Npc8xqhOz75x7JDVPPUkaNbhbBcJoabbSE2gjB6A==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR04MB6201.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(136003)(396003)(376002)(366004)(39860400002)(346002)(110136005)(5660300002)(7416002)(6506007)(316002)(8936002)(54906003)(478600001)(2906002)(8676002)(9686003)(33656002)(55016002)(86362001)(26005)(55236004)(7696005)(76116006)(53546011)(66446008)(71200400001)(52536014)(66476007)(186003)(4326008)(66946007)(64756008)(66556008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: 1Q+ZoYx022wI5Oav/fk+GscAVOPZQX7+BoNpndMVFFOAXNx1o69kx4u4lHOMg6ITeNIsMh/7dmfUwczb63k9ug3cwtcjtzSEGtttiY7OAsGOJs48E7BwvFPhU/2ChH1EzyQeZq29y9+myncRl7JxIyHZEOJD2tNZZbstqezpp196zGxqI2zVBxeYChXMIuLzwD/gCYhlKqdM2veJujICn5iDcRaIbjzHBBo76c5bl0WGPD0X4dVdqRtcUOGcs3OOzYagRZahKecHjW+ZwZsyXQTr4MjoMb0Hnc9ZhEVKXZdDKGzBsmKvM8JwO2IGXw6xQh0hHA7DBd8e1DioHzjn0JY0po/7eHagDSr+MdID0maFuJHTyNj8UxP4+cYUqlTLFGleBWxqgb97PngGmw54EeQgeHrGJkugZh2wIxskhmZzBzkrsH0L5nuKOsbJTZCbHwa8KWb2LLMA98iPU9O02x56xU+gy3ITgzU0REK1VC0=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 65af5d2e-64eb-4a96-8fdd-08d7fed85daf
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 May 2020 05:15:53.1364 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yc+8y83WvnmDutQeVZOWXwppIvm25Nre2i7mzJSsbA5Bobd0elfuXrp63bUIYBrMg0ab6R0Wt4iytl4fbVVDLg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR04MB4954
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_221600_252780_2383C4E8 
X-CRM114-Status: GOOD (  20.29  )
X-Spam-Score: -1.0 (-)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [106.51.30.72 listed in dnsbl.sorbs.net]
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.143.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Alistair Francis <Alistair.Francis@wdc.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Anup Patel <anup@brainfault.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogRGFuaWVsIExlemNhbm8g
PGRhbmllbC5sZXpjYW5vQGxpbmFyby5vcmc+DQo+IFNlbnQ6IDIyIE1heSAyMDIwIDE4OjM4DQo+
IFRvOiBBbnVwIFBhdGVsIDxBbnVwLlBhdGVsQHdkYy5jb20+OyBQYWxtZXIgRGFiYmVsdA0KPiA8
cGFsbWVyQGRhYmJlbHQuY29tPjsgUGF1bCBXYWxtc2xleSA8cGF1bC53YWxtc2xleUBzaWZpdmUu
Y29tPjsgQWxiZXJ0DQo+IE91IDxhb3VAZWVjcy5iZXJrZWxleS5lZHU+OyBUaG9tYXMgR2xlaXhu
ZXIgPHRnbHhAbGludXRyb25peC5kZT47IEphc29uDQo+IENvb3BlciA8amFzb25AbGFrZWRhZW1v
bi5uZXQ+OyBNYXJjIFp5bmdpZXIgPG1hekBrZXJuZWwub3JnPg0KPiBDYzogQXRpc2ggUGF0cmEg
PEF0aXNoLlBhdHJhQHdkYy5jb20+OyBBbGlzdGFpciBGcmFuY2lzDQo+IDxBbGlzdGFpci5GcmFu
Y2lzQHdkYy5jb20+OyBBbnVwIFBhdGVsIDxhbnVwQGJyYWluZmF1bHQub3JnPjsgbGludXgtDQo+
IHJpc2N2QGxpc3RzLmluZnJhZGVhZC5vcmc7IGxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5vcmcN
Cj4gU3ViamVjdDogUmU6IFtQQVRDSCB2NSA0LzZdIGNsb2Nrc291cmNlL2RyaXZlcnMvdGltZXIt
cmlzY3Y6IFVzZSBwZXItQ1BVIHRpbWVyDQo+IGludGVycnVwdA0KPiANCj4gT24gMjEvMDUvMjAy
MCAxNTozMiwgQW51cCBQYXRlbCB3cm90ZToNCj4gPiBJbnN0ZWFkIG9mIGRpcmVjdGx5IGNhbGxp
bmcgUklTQy1WIHRpbWVyIGludGVycnVwdCBoYW5kbGVyIGZyb20gUklTQy1WDQo+ID4gbG9jYWwg
aW50ZXJydXB0IGNvbm50cm9sbGVyIGRyaXZlciwgdGhpcyBwYXRjaCBpbXBsZW1lbnRzIFJJU0Mt
ViB0aW1lcg0KPiA+IGludGVycnVwdCBhcyBhIHBlci1DUFUgaW50ZXJydXB0IHVzaW5nIHBlci1D
UFUgQVBJcyBvZiBMaW51eCBJUlENCj4gPiBzdWJzeXN0ZW0uDQo+ID4NCj4gPiBTaWduZWQtb2Zm
LWJ5OiBBbnVwIFBhdGVsIDxhbnVwLnBhdGVsQHdkYy5jb20+DQo+IA0KPiB2aWEgd2hpY2ggdHJl
ZSBkbyB5b3Ugd2FudCB0aGlzIHBhdGNoIHRvIGJlIG1lcmdlZCA/DQoNCldoYXQgaXMgeW91ciBz
dWdnZXN0aW9uID8NCg0KVGhpcyBzZXJpZXMgaXMgcHJpbWFyaWx5IGNoYW5nZSBpbiBhcmNoL3Jp
c2N2IGFuZCBkcml2ZXJzL2lycWNoaXAuDQoNClJlZ2FyZHMsDQpBbnVwDQoNCj4gDQo+ID4gLS0t
DQo+ID4gIGFyY2gvcmlzY3YvaW5jbHVkZS9hc20vaXJxLmggICAgICB8ICAyIC0tDQo+ID4gIGRy
aXZlcnMvY2xvY2tzb3VyY2UvdGltZXItcmlzY3YuYyB8IDMwICsrKysrKysrKysrKysrKysrKysr
KysrKysrKy0tLQ0KPiA+IGRyaXZlcnMvaXJxY2hpcC9pcnEtcmlzY3YtaW50Yy5jICB8ICA4IC0t
LS0tLS0tDQo+ID4gIDMgZmlsZXMgY2hhbmdlZCwgMjcgaW5zZXJ0aW9ucygrKSwgMTMgZGVsZXRp
b25zKC0pDQo+ID4NCj4gPiBkaWZmIC0tZ2l0IGEvYXJjaC9yaXNjdi9pbmNsdWRlL2FzbS9pcnEu
aA0KPiA+IGIvYXJjaC9yaXNjdi9pbmNsdWRlL2FzbS9pcnEuaCBpbmRleCBhOWU1ZjA3YTdlOWMu
Ljk4MDdhZDE2NDAxNSAxMDA2NDQNCj4gPiAtLS0gYS9hcmNoL3Jpc2N2L2luY2x1ZGUvYXNtL2ly
cS5oDQo+ID4gKysrIGIvYXJjaC9yaXNjdi9pbmNsdWRlL2FzbS9pcnEuaA0KPiA+IEBAIC0xMCw4
ICsxMCw2IEBADQo+ID4gICNpbmNsdWRlIDxsaW51eC9pbnRlcnJ1cHQuaD4NCj4gPiAgI2luY2x1
ZGUgPGxpbnV4L2xpbmthZ2UuaD4NCj4gPg0KPiA+IC12b2lkIHJpc2N2X3RpbWVyX2ludGVycnVw
dCh2b2lkKTsNCj4gPiAtDQo+ID4gICNpbmNsdWRlIDxhc20tZ2VuZXJpYy9pcnEuaD4NCj4gPg0K
PiA+ICAjZW5kaWYgLyogX0FTTV9SSVNDVl9JUlFfSCAqLw0KPiA+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2Nsb2Nrc291cmNlL3RpbWVyLXJpc2N2LmMNCj4gPiBiL2RyaXZlcnMvY2xvY2tzb3VyY2Uv
dGltZXItcmlzY3YuYw0KPiA+IGluZGV4IGM0ZjE1YzQwNjhjMC4uNWZiN2M1YmE1YzkxIDEwMDY0
NA0KPiA+IC0tLSBhL2RyaXZlcnMvY2xvY2tzb3VyY2UvdGltZXItcmlzY3YuYw0KPiA+ICsrKyBi
L2RyaXZlcnMvY2xvY2tzb3VyY2UvdGltZXItcmlzY3YuYw0KPiA+IEBAIC0xNCw2ICsxNCw5IEBA
DQo+ID4gICNpbmNsdWRlIDxsaW51eC9pcnEuaD4NCj4gPiAgI2luY2x1ZGUgPGxpbnV4L3NjaGVk
X2Nsb2NrLmg+DQo+ID4gICNpbmNsdWRlIDxsaW51eC9pby02NC1ub25hdG9taWMtbG8taGkuaD4N
Cj4gPiArI2luY2x1ZGUgPGxpbnV4L2lycWNoaXAvaXJxLXJpc2N2LWludGMuaD4gI2luY2x1ZGUN
Cj4gPiArPGxpbnV4L2ludGVycnVwdC5oPiAjaW5jbHVkZSA8bGludXgvb2ZfaXJxLmg+DQo+ID4g
ICNpbmNsdWRlIDxhc20vc21wLmg+DQo+ID4gICNpbmNsdWRlIDxhc20vc2JpLmg+DQo+ID4NCj4g
PiBAQCAtMzksNiArNDIsNyBAQCBzdGF0aWMgaW50IHJpc2N2X2Nsb2NrX25leHRfZXZlbnQodW5z
aWduZWQgbG9uZyBkZWx0YSwNCj4gPiAgCXJldHVybiAwOw0KPiA+ICB9DQo+ID4NCj4gPiArc3Rh
dGljIHVuc2lnbmVkIGludCByaXNjdl9jbG9ja19ldmVudF9pcnE7DQo+ID4gIHN0YXRpYyBERUZJ
TkVfUEVSX0NQVShzdHJ1Y3QgY2xvY2tfZXZlbnRfZGV2aWNlLCByaXNjdl9jbG9ja19ldmVudCkg
PSB7DQo+ID4gIAkubmFtZQkJCT0gInJpc2N2X3RpbWVyX2Nsb2NrZXZlbnQiLA0KPiA+ICAJLmZl
YXR1cmVzCQk9IENMT0NLX0VWVF9GRUFUX09ORVNIT1QsDQo+ID4gQEAgLTc0LDMwICs3OCwzNSBA
QCBzdGF0aWMgaW50IHJpc2N2X3RpbWVyX3N0YXJ0aW5nX2NwdSh1bnNpZ25lZCBpbnQgY3B1KQ0K
PiA+ICAJc3RydWN0IGNsb2NrX2V2ZW50X2RldmljZSAqY2UgPSBwZXJfY3B1X3B0cigmcmlzY3Zf
Y2xvY2tfZXZlbnQsDQo+ID4gY3B1KTsNCj4gPg0KPiA+ICAJY2UtPmNwdW1hc2sgPSBjcHVtYXNr
X29mKGNwdSk7DQo+ID4gKwljZS0+aXJxID0gcmlzY3ZfY2xvY2tfZXZlbnRfaXJxOw0KPiA+ICAJ
Y2xvY2tldmVudHNfY29uZmlnX2FuZF9yZWdpc3RlcihjZSwgcmlzY3ZfdGltZWJhc2UsIDEwMCwN
Cj4gPiAweDdmZmZmZmZmKTsNCj4gPg0KPiA+IC0JY3NyX3NldChDU1JfSUUsIElFX1RJRSk7DQo+
ID4gKwllbmFibGVfcGVyY3B1X2lycShyaXNjdl9jbG9ja19ldmVudF9pcnEsDQo+ID4gKwkJCSAg
aXJxX2dldF90cmlnZ2VyX3R5cGUocmlzY3ZfY2xvY2tfZXZlbnRfaXJxKSk7DQo+ID4gIAlyZXR1
cm4gMDsNCj4gPiAgfQ0KPiA+DQo+ID4gIHN0YXRpYyBpbnQgcmlzY3ZfdGltZXJfZHlpbmdfY3B1
KHVuc2lnbmVkIGludCBjcHUpICB7DQo+ID4gLQljc3JfY2xlYXIoQ1NSX0lFLCBJRV9USUUpOw0K
PiA+ICsJZGlzYWJsZV9wZXJjcHVfaXJxKHJpc2N2X2Nsb2NrX2V2ZW50X2lycSk7DQo+ID4gIAly
ZXR1cm4gMDsNCj4gPiAgfQ0KPiA+DQo+ID4gIC8qIGNhbGxlZCBkaXJlY3RseSBmcm9tIHRoZSBs
b3ctbGV2ZWwgaW50ZXJydXB0IGhhbmRsZXIgKi8gLXZvaWQNCj4gPiByaXNjdl90aW1lcl9pbnRl
cnJ1cHQodm9pZCkNCj4gPiArc3RhdGljIGlycXJldHVybl90IHJpc2N2X3RpbWVyX2ludGVycnVw
dChpbnQgaXJxLCB2b2lkICpkZXZfaWQpDQo+ID4gIHsNCj4gPiAgCXN0cnVjdCBjbG9ja19ldmVu
dF9kZXZpY2UgKmV2ZGV2ID0gdGhpc19jcHVfcHRyKCZyaXNjdl9jbG9ja19ldmVudCk7DQo+ID4N
Cj4gPiAgCWNzcl9jbGVhcihDU1JfSUUsIElFX1RJRSk7DQo+ID4gIAlldmRldi0+ZXZlbnRfaGFu
ZGxlcihldmRldik7DQo+ID4gKw0KPiA+ICsJcmV0dXJuIElSUV9IQU5ETEVEOw0KPiA+ICB9DQo+
ID4NCj4gPiAgc3RhdGljIGludCBfX2luaXQgcmlzY3ZfdGltZXJfaW5pdF9kdChzdHJ1Y3QgZGV2
aWNlX25vZGUgKm4pICB7DQo+ID4gIAlpbnQgY3B1aWQsIGhhcnRpZCwgZXJyb3I7DQo+ID4gKwlz
dHJ1Y3Qgb2ZfcGhhbmRsZV9hcmdzIG9pcnE7DQo+ID4NCj4gPiAgCWhhcnRpZCA9IHJpc2N2X29m
X3Byb2Nlc3Nvcl9oYXJ0aWQobik7DQo+ID4gIAlpZiAoaGFydGlkIDwgMCkgew0KPiA+IEBAIC0x
MTUsNiArMTI0LDEzIEBAIHN0YXRpYyBpbnQgX19pbml0IHJpc2N2X3RpbWVyX2luaXRfZHQoc3Ry
dWN0DQo+IGRldmljZV9ub2RlICpuKQ0KPiA+ICAJaWYgKGNwdWlkICE9IHNtcF9wcm9jZXNzb3Jf
aWQoKSkNCj4gPiAgCQlyZXR1cm4gMDsNCj4gPg0KPiA+ICsJb2lycS5ucCA9IHJpc2N2X29mX2lu
dGNfZG9tYWluX25vZGUoKTsNCj4gPiArCW9pcnEuYXJnc19jb3VudCA9IDE7DQo+ID4gKwlvaXJx
LmFyZ3NbMF0gPSBSVl9JUlFfVElNRVI7DQo+ID4gKwlyaXNjdl9jbG9ja19ldmVudF9pcnEgPSBp
cnFfY3JlYXRlX29mX21hcHBpbmcoJm9pcnEpOw0KPiA+ICsJaWYgKCFyaXNjdl9jbG9ja19ldmVu
dF9pcnEpDQo+ID4gKwkJcmV0dXJuIC1FTk9ERVY7DQo+ID4gKw0KPiA+ICAJcHJfaW5mbygiJXM6
IFJlZ2lzdGVyaW5nIGNsb2Nrc291cmNlIGNwdWlkIFslZF0gaGFydGlkIFslZF1cbiIsDQo+ID4g
IAkgICAgICAgX19mdW5jX18sIGNwdWlkLCBoYXJ0aWQpOw0KPiA+ICAJZXJyb3IgPSBjbG9ja3Nv
dXJjZV9yZWdpc3Rlcl9oeigmcmlzY3ZfY2xvY2tzb3VyY2UsIHJpc2N2X3RpbWViYXNlKTsNCj4g
PiBAQCAtMTI2LDYgKzE0MiwxNCBAQCBzdGF0aWMgaW50IF9faW5pdCByaXNjdl90aW1lcl9pbml0
X2R0KHN0cnVjdA0KPiA+IGRldmljZV9ub2RlICpuKQ0KPiA+DQo+ID4gIAlzY2hlZF9jbG9ja19y
ZWdpc3RlcihyaXNjdl9zY2hlZF9jbG9jaywgNjQsIHJpc2N2X3RpbWViYXNlKTsNCj4gPg0KPiA+
ICsJZXJyb3IgPSByZXF1ZXN0X3BlcmNwdV9pcnEocmlzY3ZfY2xvY2tfZXZlbnRfaXJxLA0KPiA+
ICsJCQkJICAgIHJpc2N2X3RpbWVyX2ludGVycnVwdCwNCj4gPiArCQkJCSAgICAicmlzY3YtdGlt
ZXIiLCAmcmlzY3ZfY2xvY2tfZXZlbnQpOw0KPiA+ICsJaWYgKGVycm9yKSB7DQo+ID4gKwkJcHJf
ZXJyKCJyZWdpc3RlcmluZyBwZXJjcHUgaXJxIGZhaWxlZCBbJWRdXG4iLCBlcnJvcik7DQo+ID4g
KwkJcmV0dXJuIGVycm9yOw0KPiA+ICsJfQ0KPiA+ICsNCj4gPiAgCWVycm9yID0gY3B1aHBfc2V0
dXBfc3RhdGUoQ1BVSFBfQVBfUklTQ1ZfVElNRVJfU1RBUlRJTkcsDQo+ID4gIAkJCSAiY2xvY2tl
dmVudHMvcmlzY3YvdGltZXI6c3RhcnRpbmciLA0KPiA+ICAJCQkgcmlzY3ZfdGltZXJfc3RhcnRp
bmdfY3B1LCByaXNjdl90aW1lcl9keWluZ19jcHUpOyBkaWZmDQo+IC0tZ2l0DQo+ID4gYS9kcml2
ZXJzL2lycWNoaXAvaXJxLXJpc2N2LWludGMuYyBiL2RyaXZlcnMvaXJxY2hpcC9pcnEtcmlzY3Yt
aW50Yy5jDQo+ID4gaW5kZXggMmYzNjRlNmE4N2Y5Li5kNGZiYzM1NDM0NTkgMTAwNjQ0DQo+ID4g
LS0tIGEvZHJpdmVycy9pcnFjaGlwL2lycS1yaXNjdi1pbnRjLmMNCj4gPiArKysgYi9kcml2ZXJz
L2lycWNoaXAvaXJxLXJpc2N2LWludGMuYw0KPiA+IEBAIC0yMywyMCArMjMsMTIgQEAgc3RhdGlj
IHN0cnVjdCBpcnFfZG9tYWluICppbnRjX2RvbWFpbjsNCj4gPg0KPiA+ICBzdGF0aWMgYXNtbGlu
a2FnZSB2b2lkIHJpc2N2X2ludGNfaXJxKHN0cnVjdCBwdF9yZWdzICpyZWdzKSAgew0KPiA+IC0J
c3RydWN0IHB0X3JlZ3MgKm9sZF9yZWdzOw0KPiA+ICAJdW5zaWduZWQgbG9uZyBjYXVzZSA9IHJl
Z3MtPmNhdXNlICYgfkNBVVNFX0lSUV9GTEFHOw0KPiA+DQo+ID4gIAlpZiAodW5saWtlbHkoY2F1
c2UgPj0gQklUU19QRVJfTE9ORykpDQo+ID4gIAkJcGFuaWMoInVuZXhwZWN0ZWQgaW50ZXJydXB0
IGNhdXNlIik7DQo+ID4NCj4gPiAgCXN3aXRjaCAoY2F1c2UpIHsNCj4gPiAtCWNhc2UgUlZfSVJR
X1RJTUVSOg0KPiA+IC0JCW9sZF9yZWdzID0gc2V0X2lycV9yZWdzKHJlZ3MpOw0KPiA+IC0JCWly
cV9lbnRlcigpOw0KPiA+IC0JCXJpc2N2X3RpbWVyX2ludGVycnVwdCgpOw0KPiA+IC0JCWlycV9l
eGl0KCk7DQo+ID4gLQkJc2V0X2lycV9yZWdzKG9sZF9yZWdzKTsNCj4gPiAtCQlicmVhazsNCj4g
PiAgI2lmZGVmIENPTkZJR19TTVANCj4gPiAgCWNhc2UgUlZfSVJRX1NPRlQ6DQo+ID4gIAkJLyoN
Cj4gPg0KPiANCj4gDQo+IC0tDQo+IDxodHRwOi8vd3d3LmxpbmFyby5vcmcvPiBMaW5hcm8ub3Jn
IOKUgiBPcGVuIHNvdXJjZSBzb2Z0d2FyZSBmb3IgQVJNIFNvQ3MNCj4gDQo+IEZvbGxvdyBMaW5h
cm86ICA8aHR0cDovL3d3dy5mYWNlYm9vay5jb20vcGFnZXMvTGluYXJvPiBGYWNlYm9vayB8DQo+
IDxodHRwOi8vdHdpdHRlci5jb20vIyEvbGluYXJvb3JnPiBUd2l0dGVyIHwgPGh0dHA6Ly93d3cu
bGluYXJvLm9yZy9saW5hcm8tDQo+IGJsb2cvPiBCbG9nDQo=

