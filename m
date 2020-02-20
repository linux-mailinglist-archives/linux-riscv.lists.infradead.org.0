Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A9B8165410
	for <lists+linux-riscv@lfdr.de>; Thu, 20 Feb 2020 02:16:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-ID:Content-Type:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1gEmbDS+EzZGWXTjPWKWsisgraoDX1L0XoT9zNxylII=; b=jKHOucIN4k2HjmLdIHGuxcKw5
	lauZjJy0wSqO5NFegELB2h5Eud3RX1dTi/Jmb1gHxI1cXSLctnlnPYB0h/nlwNPXkf4RFy/NbG56Y
	RJrygy2f9MyJISr7WtaDKUDaoy9QO806tGCulZRW0wv8L9mJ/17XTBVV4IQ+VsceOrSiRnVLys7q9
	hfVdZ560b/qOKw6Pt5yshsMbeHxwbU60W78iywkWBCyFy3XWAntZ+yYp4TRrWReuEYQbFA3EVlU6U
	iZxD6N1Ge78dzUbcDP9wB/b8YJd+1Jlrree83jn0FuzoRO0FT+Jy9r/yDthJq4QombSEDM2/cLFeO
	wycVM//yw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4aS0-0007Pr-MM; Thu, 20 Feb 2020 01:16:24 +0000
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4aRw-0007Og-Lk
 for linux-riscv@lists.infradead.org; Thu, 20 Feb 2020 01:16:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1582161380; x=1613697380;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=1gEmbDS+EzZGWXTjPWKWsisgraoDX1L0XoT9zNxylII=;
 b=QpsxWe9SlBgzDbh1tyKHq5E9rQy4TWZaDNRPEtXyQzYBw2bLzt/ZWQ2k
 xNUxqo7vmSCF22jmfMi9gt3dmqvb/qHx6rFOCAEP0mLBZgp08v378DYSX
 UVHL+81mpWf1FV0SafXtxJyCJM2wy9PkPrqPXJGNyqnIVpNdYMdzd3MtW
 oojyrzJBD+I4VaZ3Oex2+lB1Tp3RpZfEvHfex97TEOugtYOMpf+jafqy4
 17cCPVYHZuQFBFeHnHWQIMlJcLRtMluMoHDEo25r3O9nKvC2S72UMXUNm
 WinzuV1qY+hIy9MW9weOl5VffEy7nYXfkv2yAsFmj0tpuvLht3LUamh1H g==;
IronPort-SDR: NSTaN7F3AVX+KJ+v6OoKuVYcTF7vrvfrhVJ6x0HCXkv/dbGukIYMWBY5rOI4PZI3+BXFQwaD+w
 Sgxetnn4x2oo47YD7G3JYXGquMCibPsdAVtjDRzjEBXu0PnUEeEklEs24QV3e9kgEMNe4UkkF3
 OLee21y/8SYwfbeSKF8wILYRFYJoeKzqQ/h7d7v64Vf8M82Zk7HKnUM9yRm5VCZ2ugCuHqVN/v
 tRbjUUSd4Tc7AtauM9VCFEYZGmeYn4RxHMECuSq7cwG8V63kotw4kFBVGGu9euzvIbT41Ge49t
 H6A=
X-IronPort-AV: E=Sophos;i="5.70,462,1574092800"; d="scan'208";a="238342197"
Received: from mail-bn8nam11lp2168.outbound.protection.outlook.com (HELO
 NAM11-BN8-obe.outbound.protection.outlook.com) ([104.47.58.168])
 by ob1.hgst.iphmx.com with ESMTP; 20 Feb 2020 09:16:08 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IZ2muKz1LxAGNL27fXURUS9TQdYTfzeDMRZ0hhbYIsIgp6qTw6G89doIYoG88WR6pI4ROvbUcjh1ocMI6VBK/q5FzmjozIPpxWErrTZeIThx9eg8sR2YD9xdeToOyRtKzrJLTy34KvuMhK6SfL5CT0n5nxLlD9rojZFv/IKVBnekJjJuw/apwtGAuWKQlack2NfZ88nTCKlRBqPG4GKVW0uizmAyj4di21muWEeU4vcFHfSD04HZFqdsP9d9bJQtoalk5Ez4bbciY9bZoFAm6cU6pourEZkO1K32sgIrQmwsH5DP68yczVd72LPWXVL54S9fvt5p4usla4z2qNFPCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1gEmbDS+EzZGWXTjPWKWsisgraoDX1L0XoT9zNxylII=;
 b=kdKd3ja69tsKuM58DtLxBCQbYqy/gDzMqinInUlzRDu2spCOKmV59uZsIVhoSHCExqtEm09pe14FYSoP6riSRlmBL6IHZT5VPRNwKTNCrRfQPwblC0TD/YQ45+bq4DQjax73Z5fJnIggkK7FZbZOOyDL0pQn8Z9mvVMKaNYsXIX1wsHIrIYreudFXWYN5qFLx4AgPSLSoTx0HgiGvvZQmJMWAA7/9uAm6kiV/JhGyiWtA6JGyLbVcV+haPkYOM05ucuKY0M0L8ADkStr3mwBfjZFKFsmAkTwuZsXvkGbWkaD+KAgZQQtqssu4IhCke5ux7gzcba+72XsGc6dSpWdsA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1gEmbDS+EzZGWXTjPWKWsisgraoDX1L0XoT9zNxylII=;
 b=Zkh3rLENOMiadJtUiWKI18++6HB5OUmRp+BLxaYiRHRR4vBHUz9NYyb5a+b1tnbbHOUyIYTnkGi7kHEDNlNBzxZXSOhdgFK0YseLw7jFF5rEBffWIoDbGo7/qbUz1lIg2PRB1gVfddBrgkfh1z+4zeBuOUpBXjUmfnniZmcNl8s=
Received: from BYAPR04MB3990.namprd04.prod.outlook.com (2603:10b6:a02:ae::29)
 by BYAPR04MB5784.namprd04.prod.outlook.com (2603:10b6:a03:10e::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2729.26; Thu, 20 Feb
 2020 01:16:07 +0000
Received: from BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::fd01:e357:2522:2221]) by BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::fd01:e357:2522:2221%6]) with mapi id 15.20.2729.033; Thu, 20 Feb 2020
 01:16:07 +0000
From: Atish Patra <Atish.Patra@wdc.com>
To: "palmer@dabbelt.com" <palmer@dabbelt.com>
Subject: Re: [PATCH v8 00/11] Add support for SBI v0.2 and CPU hotplug
Thread-Topic: [PATCH v8 00/11] Add support for SBI v0.2 and CPU hotplug
Thread-Index: AQHV4UcD+4h5UzKTQUuQxzO8TgzfuKgjGjCAgAA56AA=
Date: Thu, 20 Feb 2020 01:16:06 +0000
Message-ID: <6e13fa8c115dd6f7cf534493bbaa32f3704dffa5.camel@wdc.com>
References: <mhng-4031b042-7e16-4ff2-91a7-10747042e983@palmerdabbelt-glaptop1>
In-Reply-To: <mhng-4031b042-7e16-4ff2-91a7-10747042e983@palmerdabbelt-glaptop1>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Atish.Patra@wdc.com; 
x-originating-ip: [199.255.44.250]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 7a8c746a-0402-4f16-0cee-08d7b5a2764f
x-ms-traffictypediagnostic: BYAPR04MB5784:
x-microsoft-antispam-prvs: <BYAPR04MB5784A82554F5863F2F89B026FA130@BYAPR04MB5784.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 031996B7EF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(396003)(366004)(346002)(376002)(39860400002)(136003)(189003)(199004)(6512007)(6486002)(81156014)(8936002)(2906002)(81166006)(8676002)(2616005)(4326008)(5660300002)(54906003)(66946007)(316002)(66476007)(66556008)(64756008)(66446008)(478600001)(966005)(71200400001)(36756003)(76116006)(7416002)(6506007)(186003)(6916009)(26005)(86362001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB5784;
 H:BYAPR04MB3990.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: EMk+wiiOsgmU6FmBQLYxT4NHj5NJ2mcTyXMAfyLy0Kn4jdsZuPow0cbFg11X4FgHkNIOwnxdckXpnRbnYd/Pnzpm7nHCEyTM5yK9RW5tWtEhRB3NJ+qxsNUbbZNq9kRupvYji/hL3nRs91G7yuASnwA9/ZZRMRq4JRdDEeTpkArMtpuVnoMW1e715CLmYXKEB0+kRpc7bu9JLDjRyZeCA0g9X1vkvUdC4cyun4I8CruvC7hsNpeoY1XI6c0iOaCLVTGcBYQxZQSH8hqKdyLj713MrhgoFurZkfnzmZmJhFL8KHzIgyGVmeGswsDgHOaQhCk+dV30MoyR70RQiVM8u53tjqo/alC9/TR8sT/1gdvj7jJPpqdcGS3POi45CmF4AQ9b+qSnh9LHc2YlsC2la7sgWZp5MU15RIb7NsD0DYoVwJRcO9nCUy1j4eMC6MrEUUfBA8Xaj3CT79S+yARdICwmHiWxWhMciEwx19jfMSDrXJu/Pss0WQzl3Jl54COSwXCq3EIlCYKMUecjZ2a9Aw==
x-ms-exchange-antispam-messagedata: ptFNd/MhaUXzpeHQZk7vpQiPKYNFZWwsGnmJdl7YqyEFAab/77+3ZcLNHFo0/1N7pJrV0+fLGCPeus+0Ik+nDenc3IFCT2h5YqWIVScjCAHbEjr67QI+JEmuR1TmU67DvBeuFqHBnmMXxmfT2JFXLQ==
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="utf-8"
Content-ID: <C277C9666F803E4DA154B68A24228D78@namprd04.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7a8c746a-0402-4f16-0cee-08d7b5a2764f
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Feb 2020 01:16:06.8117 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: SQk9KDxUBsQPAV36S26iMRR5rwFzKoXr/6+IG/OxgtwfOKEDAwbVvCiAL1UmXgiJvzZ2vuIyyR/4NoDzLDD59w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB5784
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_171620_739229_1163A1B9 
X-CRM114-Status: GOOD (  28.92  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.141.245 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "ebiederm@xmission.com" <ebiederm@xmission.com>,
 "aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>,
 "keescook@chromium.org" <keescook@chromium.org>,
 "maz@kernel.org" <maz@kernel.org>, "anup@brainfault.org" <anup@brainfault.org>,
 "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
 "heiko.carstens@de.ibm.com" <heiko.carstens@de.ibm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "rppt@linux.ibm.com" <rppt@linux.ibm.com>,
 "daniel.lezcano@linaro.org" <daniel.lezcano@linaro.org>,
 "vincent.chen@sifive.com" <vincent.chen@sifive.com>,
 "geert@linux-m68k.org" <geert@linux-m68k.org>,
 "han_mao@c-sky.com" <han_mao@c-sky.com>,
 "mpe@ellerman.id.au" <mpe@ellerman.id.au>,
 "m.szyprowski@samsung.com" <m.szyprowski@samsung.com>,
 "tglx@linutronix.de" <tglx@linutronix.de>, "bp@suse.de" <bp@suse.de>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "allison@lohutok.net" <allison@lohutok.net>,
 "jason@lakedaemon.net" <jason@lakedaemon.net>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

T24gV2VkLCAyMDIwLTAyLTE5IGF0IDEzOjQ4IC0wODAwLCBQYWxtZXIgRGFiYmVsdCB3cm90ZToN
Cj4gT24gVHVlLCAxMSBGZWIgMjAyMCAxNzo0ODoxMSBQU1QgKC0wODAwKSwgQXRpc2ggUGF0cmEg
d3JvdGU6DQo+ID4gVGhlIFN1cGVydmlzb3IgQmluYXJ5IEludGVyZmFjZShTQkkpIHNwZWNpZmlj
YXRpb25bMV0gbm93IGRlZmluZXMgYQ0KPiA+IGJhc2UgZXh0ZW5zaW9uIHRoYXQgcHJvdmlkZXMg
ZXh0ZW5kYWJpbGl0eSB0byBhZGQgZnV0dXJlIGV4dGVuc2lvbnMNCj4gPiB3aGlsZSBtYWludGFp
bmluZyBiYWNrd2FyZCBjb21wYXRpYmlsaXR5IHdpdGggcHJldmlvdXMgdmVyc2lvbnMuDQo+ID4g
VGhlIG5ldyB2ZXJzaW9uIGlzIGRlZmluZWQgYXMgMC4yIGFuZCBvbGRlciB2ZXJzaW9uIGlzIG1h
cmtlZCBhcw0KPiA+IDAuMS4NCj4gPiANCj4gPiBUaGlzIHNlcmllcyBhZGRzIHN1cHBvcnQgdjAu
MiBhbmQgYSB1bmlmaWVkIGNhbGxpbmcgY29udmVudGlvbg0KPiA+IGltcGxlbWVudGF0aW9uIGJl
dHdlZW4gMC4xIGFuZCAwLjIuIEl0IGFsc28gYWRkIG90aGVyIFNCSSB2MC4yDQo+ID4gZnVuY3Rp
b25hbGl0eSBkZWZpbmVkIGluIFsyXS4gVGhlIGJhc2Ugc3VwcG9ydCBmb3IgU0JJIHYwLjIgaXMN
Cj4gPiBhbHJlYWR5DQo+ID4gYXZhaWxhYmxlIGluIE9wZW5TQkkgdjAuNS4gSXQgYWxzbyBhZGRz
IFNCSSBIU00gZXh0ZW5zaW9uIGFuZCBjcHUtDQo+ID4gaG90cGx1Zw0KPiA+IHN1cHBvcnQgZm9y
IFJJU0MtViB3aGljaCByZXF1aXJlcyBhZGRpdGlvbmFsIHBhdGNoZXNbM10gaW4gT3BlblNCSS4N
Cj4gDQo+IE5vdyB0aGF0IDAuMi1yYzEgaGFzIGJlZW4gdGFnZ2VkIHdlIHNob3VsZCByZWFsbHkg
c3RhcnQgdG8gZ2V0IHRoaXMNCj4gaW50byBzaGFwZQ0KPiB0byBtZXJnZSB0aGlzLiAgTXkgYmln
Z2VzdCB3b3JyeSBpcyBiZWluZyBhYmxlIHRvIHB1dCB0b2dldGhlciBhDQo+IGtlcm5lbCB0aGF0
DQo+IGNhbiBib290IG9uIGJvdGggMC4xIGFuZCAwLjIgU0JJcywgd2l0aCB0aGUgaGFydCBsb3R0
ZXJ5IGJlaW5nIG15DQo+IG1ham9yIHdvcnJ5DQo+IHRoZXJlLiAgSSBqdXN0IHNraW1tZWQgdGhp
cywgYnV0IEkgd2FzIGV4cGVjdGVkIHRvIHNlZSBzb21ldGhpbmcNCj4gbGlrZSANCj4gDQo+ICAg
ICBkaWZmIC0tZ2l0IGEvYXJjaC9yaXNjdi9rZXJuZWwvaGVhZC5TIGIvYXJjaC9yaXNjdi9rZXJu
ZWwvaGVhZC5TDQo+ICAgICBpbmRleCAyNzE4NjBmYzJjM2YuLjg0OWJhNzU5NTliYSAxMDA2NDQN
Cj4gICAgIC0tLSBhL2FyY2gvcmlzY3Yva2VybmVsL2hlYWQuUw0KPiAgICAgKysrIGIvYXJjaC9y
aXNjdi9rZXJuZWwvaGVhZC5TDQo+ICAgICBAQCAtMTg3LDYgKzE4Nyw3IEBAIHJlbG9jYXRlOg0K
PiAgICAgIAlsYSBhMywgLkxzZWNvbmRhcnlfcGFyaw0KPiAgICAgIAljc3J3IENTUl9UVkVDLCBh
Mw0KPiAgICAgIA0KPiAgICAgKyNpZmRlZiBDT05GSUdfU0JJX1YwMQ0KPiAgICAgIAlzbGxpIGEz
LCBhMCwgTEdSRUcNCj4gICAgICAJbGEgYTEsIF9fY3B1X3VwX3N0YWNrX3BvaW50ZXINCj4gICAg
ICAJbGEgYTIsIF9fY3B1X3VwX3Rhc2tfcG9pbnRlcg0KPiAgICAgQEAgLTIxMiw3ICsyMTMsMTAg
QEAgcmVsb2NhdGU6DQo+ICAgICAgI2VuZGlmDQo+ICAgICAgDQo+ICAgICAgCXRhaWwgc21wX2Nh
bGxpbg0KPiAgICAgLSNlbmRpZg0KPiAgICAgKyNlbHNlIC8qICFDT05GSUdfU0JJX1YwMSAqLw0K
PiAgICAgKwlwcl93YXJuKCJtdWx0aXBsZSBoYXJ0cyBib290ZWQgYW4gU0JJIHYwLjIrIG9ubHkg
a2VybmVsIik7DQo+ICAgICArI2VuZGlmIC8qIENPTkZJR19TQklfVjAxICovDQo+ICAgICArI2Vu
ZGlmIC8qIENPTkZJR19TTVAgKi8NCj4gICAgICANCj4gICAgICBFTkQoX3N0YXJ0KQ0KPiAgDQo+
IGJ1dCBJIGRvbid0LiAgSXMgdGhlcmUgc29tZXRoaW5nIGVsc2UgZG9pbmcgdGhpcz8NCj4gDQoN
Clllcy4gQ3VycmVudCBzZXJpZXMgZW5zdXJlcyB0aGF0IGl0IGJvb3RzIGJvdGggMC4xIGFuZCAw
LjIgU0JJcy4gIEl0DQppcyBkb25lIGJhc2VkIG9uIGR5bmFtaWMgZGV0ZWN0aW9uIG9mIEhTTSBl
eHRlbnNpb24gYW5kIGNwdV9vcHMuIFlvdQ0KY2FuIHRha2UgYSBsb29rIGF0IHRoZSBwYXRjaCA5
Lg0KDQorI2lmIElTX0VOQUJMRUQoQ09ORklHX1JJU0NWX1NCSSkNCisgICAgIGlmIChzYmlfcHJv
YmVfZXh0ZW5zaW9uKFNCSV9FWFRfSFNNKSA+IDApIHsNCisgICAgIGlmICghY3B1aWQpDQorICAg
ICAgICAgIHByX2luZm8oIlNCSSB2MC4yIEhTTSBleHRlbnNpb24gZGV0ZWN0ZWRcbiIpOw0KKyAg
ICAgY3B1X29wc1tjcHVpZF0gPSAmY3B1X29wc19zYmk7DQorIH0gZWxzZQ0KKyNlbmRpZg0KKyAg
ICBjcHVfb3BzW2NwdWlkXSA9ICZjcHVfb3BzX3NwaW53YWl0Ow0KDQpodHRwczovL3BhdGNod29y
ay5rZXJuZWwub3JnL3BhdGNoLzExMzc3MzU5Lw0KDQpGb3IgU0JJIHYwLjEsIHByb2Jpbmcgd2ls
bCBmYWlsIGZvciBIU00gZXh0ZW5zaW9uIGFuZCBjcHVfb3BzX3NwaW53YWl0DQp3aWxsIGJlIHNl
dCBhcyB0aCBjcHVfb3BzLg0KDQoNCj4gPiBbMV0gDQo+ID4gaHR0cHM6Ly9naXRodWIuY29tL3Jp
c2N2L3Jpc2N2LXNiaS1kb2MvYmxvYi9tYXN0ZXIvcmlzY3Ytc2JpLmFkb2MNCj4gPiBbMl0gaHR0
cHM6Ly9naXRodWIuY29tL3Jpc2N2L3Jpc2N2LXNiaS1kb2MvcHVsbC8yNw0KPiA+IFszXSANCj4g
PiBodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9waXBlcm1haWwvb3BlbnNiaS8yMDIwLUphbnVh
cnkvMDAxMDUwLmh0bWwNCj4gPiANCj4gPiBUaGUgcGF0Y2hlcyBhcmUgYWxzbyBhdmFpbGFibGUg
aW4gZm9sbG93aW5nIGdpdGh1YiByZXBvc2l0ZXJ5Lg0KPiA+IA0KPiA+IE9wZW5TQkkgICAgIDog
aHR0cHM6Ly9naXRodWIuY29tL2F0aXNocDA0L29wZW5zYmkvdHJlZS9zYmlfaHNtX3YxDQo+ID4g
TGludXggS2VybmVsOiBodHRwczovL2dpdGh1Yi5jb20vYXRpc2hwMDQvbGludXgvdHJlZS9zYmlf
djAuMl92OA0KPiA+IA0KPiA+IENoYW5nZXMgZnJvbSB2Ny0+djg6DQo+ID4gMS4gUmVmYWN0b3Jl
ZCB0byBjb2RlIHRvIGhhdmUgbW9kdWxhciBjcHVfb3BzIGNhbGxzLg0KPiA+IDIuIFJlZmFjdG9y
ZWQgSFNNIGV4dGVuc2lvbiBmcm9tIHNiaS5jIHRvIGNwdV9vcHNfc2JpLmMuDQo+ID4gMy4gRml4
IHBsaWMgZHJpdmVyIHRvIGhhbmRsZSBjcHUgaG90cGx1Zy4NCj4gPiANCj4gPiBDaGFuZ2VzIGZy
b20gdjYtPnY3Og0KPiA+IDEuIFJlYmFzZWQgb24gdjUuNQ0KPiA+IDIuIEZpeGVkIGZldyBjb21w
aWxhdGlvbiBpc3N1ZXMgZm9yICFDT05GSUdfU01QIGFuZA0KPiA+ICFDT05GSUdfUklTQ1ZfU0JJ
DQo+ID4gMy4gQWRkZWQgU0JJIEhTTSBleHRlbnNpb24NCj4gPiA0LiBBZGQgQ1BVIGhvdHBsdWcg
c3VwcG9ydA0KPiA+IA0KPiA+IENoYW5nZXMgZnJvbSB2NS0+djYNCj4gPiAxLiBGaXhlZCBmZXcg
Y29tcGlsYXRpb24gaXNzdWVzIGFyb3VuZCBjb25maWcuDQo+ID4gMi4gRml4ZWQgaGFydCBtYXNr
IGdlbmVyYXRpb24gaXNzdWVzIGZvciBSRkVOQ0UgJiBJUEkgZXh0ZW5zaW9ucy4NCj4gPiANCj4g
PiBDaGFuZ2VzIGZyb20gdjQtPnY1DQo+ID4gMS4gRml4ZWQgZmV3IG1pbm9yIGNvbW1lbnRzIHJl
bGF0ZWQgdG8gc3RhdGljICYgaW5saW5lLg0KPiA+IDIuIE1ha2Ugc3VyZSB0aGF0IGV2ZXJ5IHBh
dGNoIGlzIGJvb3QgdGVzdGVkIGluZGl2aWR1YWxseS4NCj4gPiANCj4gPiBDaGFuZ2VzIGZyb20g
djMtPnY0Lg0KPiA+IDEuIFJlYmFzZWQgb24gZm9yLW5leHQuDQo+ID4gMi4gRml4ZWQgaXNzdXNl
cyB3aXRoIGNoZWNrcGF0Y2ggLS1zdHJpY3QuDQo+ID4gMy4gVW5maWVkIGFsbCBJUEkvZmVuY2Ug
cmVsYXRlZCBmdW5jdGlvbnMuDQo+ID4gNC4gQWRkZWQgSGZlbmNlIHJlbGF0ZWQgU0JJIGNhbGxz
Lg0KPiA+IA0KPiA+IENoYW5nZXMgZnJvbSB2Mi0+djMuDQo+ID4gMS4gTW92ZWQgdjAuMSBleHRl
bnNpb25zIHRvIGEgbmV3IGNvbmZpZy4NCj4gPiAyLiBBZGRlZCBzdXBwb3J0IGZvciByZWxhY2Vt
ZW50IGV4dGVuc2lvbnMgb2YgdjAuMSBleHRlbnNpb25zLg0KPiA+IA0KPiA+IENoYW5nZXMgZnJv
bSB2MS0+djINCj4gPiAxLiBSZW1vdmVkIHRoZSBsZWdhY3kgY2FsbGluZyBjb252ZW50aW9uLg0K
PiA+IDIuIE1vdmVkIGFsbCBTQkkgcmVsYXRlZCBjYWxscyB0byBzYmkuYy4NCj4gPiAzLiBNb3Zl
ZCBhbGwgU0JJIHJlbGF0ZWQgbWFjcm9zIHRvIHVhcGkuDQo+ID4gDQo+ID4gQXRpc2ggUGF0cmEg
KDExKToNCj4gPiBSSVNDLVY6IE1hcmsgZXhpc3RpbmcgU0JJIGFzIDAuMSBTQkkuDQo+ID4gUklT
Qy1WOiBBZGQgYmFzaWMgc3VwcG9ydCBmb3IgU0JJIHYwLjINCj4gPiBSSVNDLVY6IEFkZCBTQkkg
djAuMiBleHRlbnNpb24gZGVmaW5pdGlvbnMNCj4gPiBSSVNDLVY6IEludHJvZHVjZSBhIG5ldyBj
b25maWcgZm9yIFNCSSB2MC4xDQo+ID4gUklTQy1WOiBJbXBsZW1lbnQgbmV3IFNCSSB2MC4yIGV4
dGVuc2lvbnMNCj4gPiBSSVNDLVY6IE1vdmUgcmVsb2NhdGUgYW5kIGZldyBvdGhlciBmdW5jdGlv
bnMgb3V0IG9mIF9faW5pdA0KPiA+IFJJU0MtVjogQWRkIGNwdV9vcHMgYW5kIG1vZGlmeSBkZWZh
dWx0IGJvb3RpbmcgbWV0aG9kDQo+ID4gUklTQy1WOiBBZGQgU0JJIEhTTSBleHRlbnNpb24NCj4g
PiBSSVNDLVY6IEFkZCBzdXBwb3J0ZWQgZm9yIG9yZGVyZWQgYm9vdGluZyBtZXRob2QgdXNpbmcg
SFNNDQo+ID4gaXJxY2hpcC9zaWZpdmUtcGxpYzogSW5pdGlhbGl6ZSB0aGUgcGxpYyBoYW5kbGVy
IHdoZW4gY3B1IGNvbWVzDQo+ID4gb25saW5lDQo+ID4gUklTQy1WOiBTdXBwb3J0IGNwdSBob3Rw
bHVnDQo+ID4gDQo+ID4gYXJjaC9yaXNjdi9LY29uZmlnICAgICAgICAgICAgICAgICAgIHwgIDE5
ICstDQo+ID4gYXJjaC9yaXNjdi9pbmNsdWRlL2FzbS9jcHVfb3BzLmggICAgIHwgIDQ2ICsrKw0K
PiA+IGFyY2gvcmlzY3YvaW5jbHVkZS9hc20vc2JpLmggICAgICAgICB8IDE5NCArKysrKystLS0t
DQo+ID4gYXJjaC9yaXNjdi9pbmNsdWRlL2FzbS9zbXAuaCAgICAgICAgIHwgIDI0ICsrDQo+ID4g
YXJjaC9yaXNjdi9rZXJuZWwvTWFrZWZpbGUgICAgICAgICAgIHwgICA2ICsNCj4gPiBhcmNoL3Jp
c2N2L2tlcm5lbC9jcHUtaG90cGx1Zy5jICAgICAgfCAgODcgKysrKysNCj4gPiBhcmNoL3Jpc2N2
L2tlcm5lbC9jcHVfb3BzLmMgICAgICAgICAgfCAgNDggKysrDQo+ID4gYXJjaC9yaXNjdi9rZXJu
ZWwvY3B1X29wc19zYmkuYyAgICAgIHwgMTEzICsrKysrKw0KPiA+IGFyY2gvcmlzY3Yva2VybmVs
L2NwdV9vcHNfc3BpbndhaXQuYyB8ICA0MiArKysNCj4gPiBhcmNoL3Jpc2N2L2tlcm5lbC9oZWFk
LlMgICAgICAgICAgICAgfCAxNzkgKysrKystLS0tDQo+ID4gYXJjaC9yaXNjdi9rZXJuZWwvc2Jp
LmMgICAgICAgICAgICAgIHwgNTI0DQo+ID4gKysrKysrKysrKysrKysrKysrKysrKysrKystDQo+
ID4gYXJjaC9yaXNjdi9rZXJuZWwvc2V0dXAuYyAgICAgICAgICAgIHwgIDI0ICstDQo+ID4gYXJj
aC9yaXNjdi9rZXJuZWwvc21wYm9vdC5jICAgICAgICAgIHwgIDU2ICstLQ0KPiA+IGFyY2gvcmlz
Y3Yva2VybmVsL3RyYXBzLmMgICAgICAgICAgICB8ICAgMiArLQ0KPiA+IGFyY2gvcmlzY3Yva2Vy
bmVsL3ZtbGludXgubGRzLlMgICAgICB8ICAgNSArLQ0KPiA+IGRyaXZlcnMvaXJxY2hpcC9pcnEt
c2lmaXZlLXBsaWMuYyAgICB8ICAzNCArLQ0KPiA+IGluY2x1ZGUvbGludXgvY3B1aG90cGx1Zy5o
ICAgICAgICAgICB8ICAgMSArDQo+ID4gMTcgZmlsZXMgY2hhbmdlZCwgMTIyNyBpbnNlcnRpb25z
KCspLCAxNzcgZGVsZXRpb25zKC0pDQo+ID4gY3JlYXRlIG1vZGUgMTAwNjQ0IGFyY2gvcmlzY3Yv
aW5jbHVkZS9hc20vY3B1X29wcy5oDQo+ID4gY3JlYXRlIG1vZGUgMTAwNjQ0IGFyY2gvcmlzY3Yv
a2VybmVsL2NwdS1ob3RwbHVnLmMNCj4gPiBjcmVhdGUgbW9kZSAxMDA2NDQgYXJjaC9yaXNjdi9r
ZXJuZWwvY3B1X29wcy5jDQo+ID4gY3JlYXRlIG1vZGUgMTAwNjQ0IGFyY2gvcmlzY3Yva2VybmVs
L2NwdV9vcHNfc2JpLmMNCj4gPiBjcmVhdGUgbW9kZSAxMDA2NDQgYXJjaC9yaXNjdi9rZXJuZWwv
Y3B1X29wc19zcGlud2FpdC5jDQoNCi0tIA0KUmVnYXJkcywNCkF0aXNoDQo=

