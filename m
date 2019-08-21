Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07A209814D
	for <lists+linux-riscv@lfdr.de>; Wed, 21 Aug 2019 19:31:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D291unZeKhoTCmaIzk2oy31Db4il4cLwDqR6CCsaUPc=; b=ewhV41hnBZHDJk
	fKCnnCX08VeLw2MCEwUwxUVuUebsObg0/vC9VbVS3hyxxHcyNfHLwdU+gDNmGXktZt4tvwQp3D0B9
	baR3ul4dAEUjF0d/Rm/eaptfONnWkMn9YTLArpa5VxiquJ9eo/CQS9a/Rvbh7Ir5oF8XNcgPLxbO9
	NtHFlTaeI0jnEsBA6B5oDxxictLXJluvh9qADgzJqfLA1c/dGfGdBV8GWmiy3P5Q1M9zLkdOvdJkU
	oMNIvRgUxmRNhfJq9JzrzEvE/Iglr9osIIdV7KV+9gDf01Bdr0MzJj1HCpRNufQqBuAw0U3GW9JAK
	4nD3n1Btrbp9PMAglbIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0US3-0001e7-1t; Wed, 21 Aug 2019 17:31:15 +0000
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0URz-0001dO-Ae
 for linux-riscv@lists.infradead.org; Wed, 21 Aug 2019 17:31:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1566408671; x=1597944671;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=YUR9UrxKPytoxpcjS1+xmcFLhc+rYUw+IwY85gk8ufQ=;
 b=J2THmvjRUvC95D8LSQ7izBYX+NGzRjJpzcl/n1W1eOveSFdw4l6jdar4
 1QPC/MNMlU8+6CMFYra27T+4FyW2uVdO30ezNgzcE/2IqlXwDtMhfWYex
 4TeysCBB/9EmtAgKCbLFVsxNRBEVZzHKOhrbZWkgUE66Aca3nmfr7EEXp
 0eDNyFtJYy7BT1iGle/pEq7oGQScesZbCkwD7RV/OSYAdnGZlb8sjgQDz
 qEQLbIo3P/xTH2d+eDkIacL0swmZ/oGyLCeHtu8OPny1laph0+AP7jFg/
 +p/wbp1pi26+3PBBUt7ept2Jbw+kNzrmwsto1YEGuxRUztrU0CE6bghIR A==;
IronPort-SDR: m6laveUXnoFw3h2fkA1psPjXIy/WxPXP8yCw5aT8cW6K+S52vKcrlgZV5eCdUpju42gMBm+8Bt
 mVBYx18ZK1c6PhVAHFXsT+o+ZtoUYdVzFPMH5gumZsh4STehidtBB5DTr4z/bXTqAadQ1bGQFA
 RTj3n1N6iduXtR9JPrasKYIELRH3uRtTInoQKfSyCQoz5ZlSrDyvDnGg+U6OKu9UEKCdzifKq8
 mHcqrmdwgklqZLpzZfxckaXPhMTkzgtgizhBgiIlpz6VgOWxWwxgIHqFVPy8jH7tsPBbCASQzh
 MqQ=
X-IronPort-AV: E=Sophos;i="5.64,412,1559491200"; d="scan'208";a="222938015"
Received: from mail-by2nam01lp2052.outbound.protection.outlook.com (HELO
 NAM01-BY2-obe.outbound.protection.outlook.com) ([104.47.34.52])
 by ob1.hgst.iphmx.com with ESMTP; 22 Aug 2019 01:31:03 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=deu6BwurpQtjlzGGYTw5ErICG2kilEgtsZq5q4g/ncWcUWnODcbwnj+us0Tk0pJ6qQVwlRd4alWlaWyyiz9+g8x455A8/Th8ZpgC6bVqacXsrpBw+WsmVOjbfFAabc0KRoNzQSs+aLbzbaR/ipYfgggITiAdkodgNzml04y7bAESsW5HmiRgIsRdOo6XQ/hvCBqVGN9WrnazgLHwzte+1Uclbr19AmMHpTVNBe5PMFq3b1sUiOaF3LiQ0t1PeUdUVUkOLVRqZ1obTfmeQOAkRRNIbPO84EG/wIIm2R/SI8Z4daEttRqiOXpB9GQFrd+gOxNTGComcAjgvTHuFbdKUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YUR9UrxKPytoxpcjS1+xmcFLhc+rYUw+IwY85gk8ufQ=;
 b=YmhSwhVLXTPzcyRrBd9ORSKDq99575bVSxTCrZTCy7a5716cSl3bGJXWgpudAGylqyvch4maV2w7GiB3DsT6QODIv6OYZuqLyDwHwW2GfJbLirL5mQIJRIvFMAI5KYJdna22Idiv8PBhh8B/chV6SjwNOqI8hSwYPmZbIJ1U6onsILV7BesYyMt7RFIJmASHHvqZ5w2wkNLMGvt8iszJpOV/XZ2u8UuUYpLhDQ8Z9hGjnxdmkqPV8yVrk2aL22EHvYxxCJczBoJUvHDp59fkevLos+SttBCYd2Ll2kOG6Cx0SX37PF7MqfrD9HUMqEaMjSxvEPipf9wJbVVvq3obaA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YUR9UrxKPytoxpcjS1+xmcFLhc+rYUw+IwY85gk8ufQ=;
 b=Bn7SvQoJ3NFtbHo3esb6yIBtD5PGBDVbu5Z0lROS1XlMvCSLC8G1VPBL3n6dgLXmBknwPW8XNBFcqFZPl85MyTNn9QD/FJgL/KSsdBL6DbG5U07DtDIekCen4pkwy1BtbBP1+pmTog1I/Yk0XSyZaA5ROxNyD5IOt9NSbJbb2Xw=
Received: from BYAPR04MB3990.namprd04.prod.outlook.com (52.135.215.29) by
 BYAPR04MB5303.namprd04.prod.outlook.com (20.178.49.148) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.18; Wed, 21 Aug 2019 17:31:01 +0000
Received: from BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::24ca:5178:5475:9a0e]) by BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::24ca:5178:5475:9a0e%4]) with mapi id 15.20.2178.018; Wed, 21 Aug 2019
 17:31:01 +0000
From: Atish Patra <Atish.Patra@wdc.com>
To: "hch@lst.de" <hch@lst.de>, "troy.benjegerdes@sifive.com"
 <troy.benjegerdes@sifive.com>
Subject: Re: [PATCH 15/15] riscv: disable the EFI PECOFF header for M-mode
Thread-Topic: [PATCH 15/15] riscv: disable the EFI PECOFF header for M-mode
Thread-Index: AQHVUe6heiXEpXRItkaw7Sqy5taBjacFCguAgADefQA=
Date: Wed, 21 Aug 2019 17:31:00 +0000
Message-ID: <4f1677e24a5fcdfd2fda714cdd66f4dbe7817284.camel@wdc.com>
References: <20190813154747.24256-1-hch@lst.de>
 <20190813154747.24256-16-hch@lst.de>
 <3BF39A0F-558D-40E0-880D-27829486F9F0@sifive.com>
In-Reply-To: <3BF39A0F-558D-40E0-880D-27829486F9F0@sifive.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Atish.Patra@wdc.com; 
x-originating-ip: [199.255.44.175]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 596eda8c-592c-4a0e-2812-08d7265d55da
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:BYAPR04MB5303; 
x-ms-traffictypediagnostic: BYAPR04MB5303:
x-ms-exchange-purlcount: 1
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR04MB5303DD92338C9FA87278C202FAAA0@BYAPR04MB5303.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 0136C1DDA4
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(396003)(376002)(366004)(346002)(136003)(39860400002)(199004)(189003)(54906003)(53936002)(99286004)(486006)(186003)(6116002)(8676002)(2616005)(6306002)(476003)(3846002)(71200400001)(2906002)(66446008)(2501003)(64756008)(66556008)(6436002)(66946007)(5660300002)(102836004)(6486002)(446003)(66066001)(6512007)(11346002)(71190400001)(66476007)(53546011)(36756003)(305945005)(6246003)(478600001)(966005)(14444005)(86362001)(26005)(316002)(76176011)(81156014)(81166006)(4326008)(110136005)(14454004)(8936002)(118296001)(6506007)(76116006)(7736002)(256004)(229853002)(25786009);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB5303;
 H:BYAPR04MB3990.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 3u3bUpr6apSw0ZY/ASal5jO4GHoEHpxs9fg/S/VR94oZC9SsirGzbtZUtq3PWvPdnGhed18wTzz9X15j8PP7/0Tg9lscxgPk3Z/QVz9dUQdA/h9EdiOaA2t+Lv4kQ1oGP20aVxrujwUFPXbPHPPYZQYF5wEqjyw8Oyk/ndNsTiYRT+9FSdTfsUrXtG2vuOpNhfzPUUm5etleJ3xTIF/V0WUUnPf36xtmSjHndr+gRaAnIDsI3ECEye79/Zr/ppuq9vc4wfn2VpIXMlSIqRKntpNOKmjLBbuO1lFB5TCJ5ZK2iKjeEXySoaE5T2TjrSJ94LkXAsh6JVCGZck6vmDA/eM0P0daZ3bgWfk+82gWA1E8HPHryfR8+x4Gn2yJPzaxUWKbL77Hoh7mjHmIsdpDQ+bgnWcDORqJ5gSM0baHMIE=
Content-ID: <703EC2B9EBFEEC4AA0058578F38D94C9@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 596eda8c-592c-4a0e-2812-08d7265d55da
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Aug 2019 17:31:00.8270 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fIOtE138Pck9C44Yey3SxiDXdFIYVl1bjzQZum83Sbz6HPQixhNZbVYWh9XxkGCfFBFKyAliqC0RWqXaq2PXgQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB5303
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_103111_489177_CC0B8733 
X-CRM114-Status: GOOD (  23.80  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.141.245 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "palmer@sifive.com" <palmer@sifive.com>,
 Damien Le Moal <Damien.LeMoal@wdc.com>,
 "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

T24gVHVlLCAyMDE5LTA4LTIwIGF0IDIxOjE0IC0wNzAwLCBUcm95IEJlbmplZ2VyZGVzIHdyb3Rl
Og0KPiA+IE9uIEF1ZyAxMywgMjAxOSwgYXQgODo0NyBBTSwgQ2hyaXN0b3BoIEhlbGx3aWcgPGhj
aEBsc3QuZGU+IHdyb3RlOg0KPiA+IA0KPiA+IE5vIHBvaW50IGluIGJsb2F0aW5nIHRoZSBrZXJu
ZWwgaW1hZ2Ugd2l0aCBhIGJvb3Rsb2FkZXIgaGVhZGVyIGlmDQo+ID4gd2UgcnVuIGJhcmUgbWV0
YWwuDQo+IA0KPiBJIHdvdWxkIHNheSB0aGUgc2FtZSBmb3IgUy1tb2RlLiBFRkkgYm9vdGluZyBz
aG91bGQgYmUgYW4gb3B0aW9uLCBub3QNCj4gYSByZXF1aXJlbWVudC4gDQoNCkVGSSBib290aW5n
IGlzIG5ldmVyIGEgcmVxdWlyZW1lbnQgb24gYW55IGJvYXJkLiBXaGVuIEVGSSBzdHViIHdpbGwg
YmUNCmFkZGVkIGZvciBrZXJuZWwsIGl0IHdpbGwgYmUgZW5hYmxlZCB3aXRoIENPTkZJR19FRklf
U1RVQiBvbmx5LiANCg0KVGhlIGN1cnJlbnQgYWRkaXRpb25hbCBoZWFkZXIgaXMgb25seSA2NCBi
eXRlcyBhbmQgYWxzbyByZXF1aXJlZCBmb3INCmJvb3RpIGluIFUtYm9vdC4gU28gaXQgc2hvdWxk
bid0IGRpc2FibGVkIGZvciBTLW1vZGUuDQogDQpEaXNhYmxpbmcgaXQgZm9yIE0tTW9kZSBMaW51
eCBpcyBva2F5IGJlY2F1c2Ugb2YgbWVtb3J5IGNvbnN0cmFpbnQgYW5kDQpNLU1vZGUgbGludXgg
d29uJ3QgdXNlIFUtYm9vdCBhbnl3YXlzLg0KDQo+IEkgaGF2ZSBNLW1vZGUgVS1ib290IHdvcmtp
bmcgd2l0aCBib290ZWxmIHRvIHN0YXJ0IEJCTCwNCj4gYW5kIGF0IHNvbWUgcG9pbnQsIEnigJlt
IGhvcGluZyB3ZSBjYW4gaGF2ZSBhIE0tbW9kZSBsaW51eCBrZXJuZWwgYmUNCj4gdGhlIFNCSSBw
cm92aWRlciBmb3IgUy1tb2RlIGtlcm5lbHMsIA0KDQpXaHkgZG8geW91IHdhbnQgYmxvYXQgYSBN
LU1vZGUgc29mdHdhcmUgd2l0aCBMaW51eCBqdXN0IGZvciBTQkkNCmltcGxlbWVudGF0aW9uPw0K
DQpVc2luZyBMaW51eCBhcyBhIGxhc3Qgc3RhZ2UgYm9vdCBsb2FkZXIgaS5lLiBMaW51eEJvb3Qg
bWF5IG1ha2Ugc2Vuc2UNCnRob3VnaC4NCg0KPiB3aGljaCBzZWVtIG1vc3QgbG9naWNhbCB0byBt
ZQ0KPiB0byBzdGFydCB1c2luZyB0aGUgdm1saW51eCBlbGYgYmluYXJpZXMgdXNpbmcgc29tZXRo
aW5nIGxpa2Uga2V4ZWMoKQ0KPiANCj4gPiBTaWduZWQtb2ZmLWJ5OiBDaHJpc3RvcGggSGVsbHdp
ZyA8aGNoQGxzdC5kZT4NCj4gPiAtLS0NCj4gPiBhcmNoL3Jpc2N2L2tlcm5lbC9oZWFkLlMgfCAy
ICsrDQo+ID4gMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKQ0KPiA+IA0KPiA+IGRpZmYg
LS1naXQgYS9hcmNoL3Jpc2N2L2tlcm5lbC9oZWFkLlMgYi9hcmNoL3Jpc2N2L2tlcm5lbC9oZWFk
LlMNCj4gPiBpbmRleCA2NzBlNWNhY2IyNGUuLjA5ZmNmM2QwMDBjMCAxMDA2NDQNCj4gPiAtLS0g
YS9hcmNoL3Jpc2N2L2tlcm5lbC9oZWFkLlMNCj4gPiArKysgYi9hcmNoL3Jpc2N2L2tlcm5lbC9o
ZWFkLlMNCj4gPiBAQCAtMTYsNiArMTYsNyBAQA0KPiA+IA0KPiA+IF9fSU5JVA0KPiA+IEVOVFJZ
KF9zdGFydCkNCj4gPiArI2lmbmRlZiBDT05GSUdfTV9NT0RFDQo+ID4gCS8qDQo+ID4gCSAqIElt
YWdlIGhlYWRlciBleHBlY3RlZCBieSBMaW51eCBib290LWxvYWRlcnMuIFRoZSBpbWFnZQ0KPiA+
IGhlYWRlciBkYXRhDQo+ID4gCSAqIHN0cnVjdHVyZSBpcyBkZXNjcmliZWQgaW4gYXNtL2ltYWdl
LmguDQo+ID4gQEAgLTQ3LDYgKzQ4LDcgQEAgRU5UUlkoX3N0YXJ0KQ0KPiA+IA0KPiA+IC5nbG9i
YWwgX3N0YXJ0X2tlcm5lbA0KPiA+IF9zdGFydF9rZXJuZWw6DQo+ID4gKyNlbmRpZiAvKiBDT05G
SUdfTV9NT0RFICovDQo+ID4gCS8qIE1hc2sgYWxsIGludGVycnVwdHMgKi8NCj4gPiAJY3NydyBD
U1JfWElFLCB6ZXJvDQo+ID4gCWNzcncgQ1NSX1hJUCwgemVybw0KPiA+IC0tIA0KPiA+IDIuMjAu
MQ0KPiA+IA0KPiA+IA0KPiA+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fDQo+ID4gbGludXgtcmlzY3YgbWFpbGluZyBsaXN0DQo+ID4gbGludXgtcmlzY3ZA
bGlzdHMuaW5mcmFkZWFkLm9yZw0KPiA+IGh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcmlzY3YNCj4gDQo+IF9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fDQo+IGxpbnV4LXJpc2N2IG1haWxpbmcgbGlzdA0KPiBsaW51
eC1yaXNjdkBsaXN0cy5pbmZyYWRlYWQub3JnDQo+IGh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcmlzY3YNCg0KLS0gDQpSZWdhcmRzLA0KQXRpc2gNCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LXJpc2N2
IG1haWxpbmcgbGlzdApsaW51eC1yaXNjdkBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcmlzY3YK
