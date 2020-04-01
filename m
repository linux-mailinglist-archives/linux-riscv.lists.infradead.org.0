Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0663C19A30D
	for <lists+linux-riscv@lfdr.de>; Wed,  1 Apr 2020 02:47:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-ID:Content-Type:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Anm9j6keWFsdOc78n6BEos0hxNdX8bd31m27ZcruSOM=; b=AJ1DveDdwXR9PKCmAYmflZ+RE
	yVVkq5o3lQO3vM7mv0yeGgMLwlbd2bhNr36nPfrQZCIqrdyxjz1v1f3hw69zPMnvI6922/o68CjKO
	dGyvZjJZ/jFPfvrp3cM/3//go+vJwdMsPf/ci+NDBLvWKoE6mEdKzfg9J+8voP6fYug458qF7fGPC
	PRm09McpdZYSw9hoZodl+ck4gRLQDSuDb9NvZNd0lUS/tp+92Y6O8+0W3itiAQqov+FuwphotrO7a
	DMGT4k1VRjiOqR0JQxPnmmj8c11LFkA1DzMBRUR+q8pQcr+IeG4BdXwdB0kkrt/XUqLAn5R0LqIqg
	ZTvRaDZSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJRWw-0006TD-BP; Wed, 01 Apr 2020 00:46:54 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJRWs-0006SN-0M
 for linux-riscv@lists.infradead.org; Wed, 01 Apr 2020 00:46:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1585702011; x=1617238011;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=Anm9j6keWFsdOc78n6BEos0hxNdX8bd31m27ZcruSOM=;
 b=I160H2Sau0icw4XulZ9+XTSiF3jJpHqSuUxsExK1Str1s76wUGtGASkt
 391IvoBuF4N/2XkytkvHeklcwrJ8bJrRxnuzs6cFtH2FEWf3zBusMhx0C
 902xuZ1kqeKODOV9PXw0lZDN9riSzx64z4cb1e3ptjfewVZga8DsmnD3N
 +omto7k4sU58Cda4IY1lxcEdqprUtxEXuJCii9CeuiewniQtzH3dGQ49n
 3PPwgAYfbiogVO9/yW0Tw1RVzBmHFLLms7Z1PcpUGmGhkqPPN3sTudxaf
 yZd3CYroIsKi5j+ukZrL2/o2twLKrJlY+oOz+1OWX/PlbfK71264nHgIn Q==;
IronPort-SDR: 1Di2k1Ch9XUxswA1BJl55y0ZYiQguhW9/9eas792uXumqPzH51wZAwrqzRUnvPrVWpRG2uZKnd
 UrunBSNYf3CSaeycLOhR6k4Y5cnjRIi4cz2PyLBsaq8txUPy24Gp4lTVvJF9ImUe7bRIYFsR6s
 cWDU24LDzmTSVBY3S1NFcRchbr0k1RP63fU1PFFiQRzqpYA8jcygQBt40gDJzEIYgi4uJgdhY8
 h0dOPy80rUncDaeTWNPSqiV25tvJx6OdUmxP2lIKJgE7J+4vqzX0T5JgPnoorKSI1l5Y3RT5Rt
 Pdc=
X-URL-LookUp-ScanningError: 1
X-IronPort-AV: E=Sophos;i="5.72,329,1580745600"; d="scan'208";a="236445696"
Received: from mail-bn8nam12lp2177.outbound.protection.outlook.com (HELO
 NAM12-BN8-obe.outbound.protection.outlook.com) ([104.47.55.177])
 by ob1.hgst.iphmx.com with ESMTP; 01 Apr 2020 08:44:57 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=W1FxV2sSfLfK5wns0Tf3NQx1gRm/Mb5X2sULWc4cMYy6x6jv/niqYdoEhR1XMrn+dGR9qxRWlFBjqFAqu+utM+Ywtxbt3jomNB8sEy4bPHgAlQY6WoSW+QhhucF8UNhUdB+Vu0wAc5f/90KX0oRA/syxryp6pvav9bYiZD1OQCtERyn332XxCo+vSCXPwsbOy1MqBm2N4G2PpXSTi/WHwPbzI96NqqVKxKGOARsafsT9/Vt+YdpLuipdV8VKUpeDNzSYjjAX0PU1Ugjb+MjDJ1NiuLKbYHn1OXgsRvPd7OkHwTFjcKWdkKVmuDFYjg/rsC82FV4UreiuMZvZelVzcw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Anm9j6keWFsdOc78n6BEos0hxNdX8bd31m27ZcruSOM=;
 b=LkDrfRGwtBhVbgtycroJ66BtqRh++RlA2CInuCEPcpK0VlZNuModOOF6dA5nF/kHpqKv54c9heRO5IaJgL1uHEd0Bwh2GDwZ71FcCoVvwIQewk2NX51jAwgK4plfNWLp/2E26vp1rvOKawNReIqEW0sA3u7M+eWSyaPZNJuAQFqV1SeDfZpA8kfnavY87OQjDSSF2kz7kuqN5B2mkkirlFQwiQiixzkcELloM6t2IAocR54g/wuE4rhBjl3wQyrcRgJQLcpQxecQzcQ4e6Hk0X4lWuoqMMDFse8D/JGVZJOxxe8ysglfolZwtGlqLeXuifytmIK4nyG8j/L9coqhAA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Anm9j6keWFsdOc78n6BEos0hxNdX8bd31m27ZcruSOM=;
 b=xDoYRpsFh8aKJ6Wt2A7lgvg57ZZjCWxg14FC6oTNeL7+2Icw0W+K68tbUmWMyIuytqmBHzAzGZ5KvztHwmDQmsKjbLFUvW1OybmPd0WzRSoMPdZUeFyMHuKWphe954Q6/XvIvESoeXw8j3L+Gto7ff7aPy3OdyLaIP+GoxUXMYE=
Received: from BY5PR04MB6724.namprd04.prod.outlook.com (2603:10b6:a03:219::15)
 by BY5PR04MB7026.namprd04.prod.outlook.com (2603:10b6:a03:223::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2856.20; Wed, 1 Apr
 2020 00:43:40 +0000
Received: from BY5PR04MB6724.namprd04.prod.outlook.com
 ([fe80::5591:a2e7:4fad:6b0c]) by BY5PR04MB6724.namprd04.prod.outlook.com
 ([fe80::5591:a2e7:4fad:6b0c%6]) with mapi id 15.20.2856.019; Wed, 1 Apr 2020
 00:43:40 +0000
From: Atish Patra <Atish.Patra@wdc.com>
To: "palmer@dabbelt.com" <palmer@dabbelt.com>
Subject: Re: [PATCH v11 00/11] Add support for SBI v0.2 and CPU hotplug
Thread-Topic: [PATCH v11 00/11] Add support for SBI v0.2 and CPU hotplug
Thread-Index: AQHV/MI9ing+5NLhjE22VV3BRi9JOahjHN6AgABmyIA=
Date: Wed, 1 Apr 2020 00:43:40 +0000
Message-ID: <c9202832f87e757b96b529c2557a9bfefb34c3eb.camel@wdc.com>
References: <mhng-c3553b26-6593-4b77-9531-b8be7668adee@palmerdabbelt-glaptop1>
In-Reply-To: <mhng-c3553b26-6593-4b77-9531-b8be7668adee@palmerdabbelt-glaptop1>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.34.4 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Atish.Patra@wdc.com; 
x-originating-ip: [98.248.240.128]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 8b07bd7b-32bf-4105-8149-08d7d5d5b8d3
x-ms-traffictypediagnostic: BY5PR04MB7026:
x-microsoft-antispam-prvs: <BY5PR04MB7026002987BB2BD675FB9B60FAC90@BY5PR04MB7026.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-forefront-prvs: 03607C04F0
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR04MB6724.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10019020)(4636009)(39860400002)(136003)(366004)(346002)(376002)(396003)(64756008)(8676002)(7416002)(81156014)(5660300002)(6916009)(4326008)(8936002)(71200400001)(2616005)(81166006)(966005)(86362001)(478600001)(316002)(66446008)(54906003)(66946007)(76116006)(186003)(26005)(6486002)(66556008)(66574012)(6512007)(36756003)(2906002)(66476007)(6506007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: jKgCYUURWUdNanIFKBRvwbTNRwUQ0Jvm/12E69VePZ1WIKCSMR6KQ8wbwpH02nFwP9XziOXBydrU5yr/mQGClqYQxJhGs6ZCYOOEEjdk+ghGWrPQkgnU3INp88y7by33TLz5PuAVxyR+WMENhYhMyCmbEKHojUp8DtTlnE4eW2CFwaUHRlRFRYIRqYHT7jSsyE8N1hSBe8Rx7iNGWnB3SCehRILFqQLuTKi3qCrdYnE8nUvAiL1Xi1DP+QcqXV0IkTEHJdRa+2N2q92wEXIWwA+BHaVQUMe0nQP5SOEG9eTuSE5AI4Vd3NNeZliKhhSUjFNrt618n2wBorpwu+9FBSFMDgWnXIG3FS+zL41/8KuFojkgE73q+p0yEDVSqc0DlMbw8pobYsKQ5Zmm02g1br/gkU0Cnn++eizuU9qFNGKLCDFIuOo0ufPvZEtJVe9sS7HSasvYh7MH1Lh9jIjMITWxy8FYJqk8xBMPFYIuIK09IV6CA7G012GMi9nE8x0J6sfn8jZYBXL/43hibmsgyQ==
x-ms-exchange-antispam-messagedata: EbNrFOZtzUJgRCJy3gE6IJdjN3Bybw5Gpj/uvHSpw/NkwuafY5A+US0himKiIyKqgFj/AOzFABI3q2MqMDKbiu11oVMXw8Z2oSYWwQWvLQzZ7pNnOvyUxp5F/87BnWB+hxjYfVcjYsOiaZVWGF3mLg==
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="utf-8"
Content-ID: <D3F8D0F2A5B8614692E1AAEAAE72DF83@namprd04.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8b07bd7b-32bf-4105-8149-08d7d5d5b8d3
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Apr 2020 00:43:40.0907 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wVQzKOoPc4sEPN0BEkDn8kxvTXpyXBCYx6IJaEYl+mqZsR4O1r01MVX9sLvHezMEX8WsdwfHiryxzzxdARKDHQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR04MB7026
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_174650_094274_99537EA8 
X-CRM114-Status: GOOD (  26.73  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.143.124 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>,
 "zong.li@sifive.com" <zong.li@sifive.com>,
 "nickhu@andestech.com" <nickhu@andestech.com>,
 "anup@brainfault.org" <anup@brainfault.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "rppt@linux.ibm.com" <rppt@linux.ibm.com>,
 "vincent.chen@sifive.com" <vincent.chen@sifive.com>,
 "gary@garyguo.net" <gary@garyguo.net>,
 "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
 "greentime.hu@sifive.com" <greentime.hu@sifive.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "bmeng.cn@gmail.com" <bmeng.cn@gmail.com>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 "han_mao@c-sky.com" <han_mao@c-sky.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

T24gVHVlLCAyMDIwLTAzLTMxIGF0IDExOjM1IC0wNzAwLCBQYWxtZXIgRGFiYmVsdCB3cm90ZToN
Cj4gT24gVHVlLCAxNyBNYXIgMjAyMCAxODoxMTozMyBQRFQgKC0wNzAwKSwgQXRpc2ggUGF0cmEg
d3JvdGU6DQo+ID4gVGhlIFN1cGVydmlzb3IgQmluYXJ5IEludGVyZmFjZShTQkkpIHNwZWNpZmlj
YXRpb25bMV0gbm93IGRlZmluZXMgYQ0KPiA+IGJhc2UgZXh0ZW5zaW9uIHRoYXQgcHJvdmlkZXMg
ZXh0ZW5kYWJpbGl0eSB0byBhZGQgZnV0dXJlIGV4dGVuc2lvbnMNCj4gPiB3aGlsZSBtYWludGFp
bmluZyBiYWNrd2FyZCBjb21wYXRpYmlsaXR5IHdpdGggcHJldmlvdXMgdmVyc2lvbnMuDQo+ID4g
VGhlIG5ldyB2ZXJzaW9uIGlzIGRlZmluZWQgYXMgMC4yIGFuZCBvbGRlciB2ZXJzaW9uIGlzIG1h
cmtlZCBhcw0KPiA+IDAuMS4NCj4gDQo+IFdoaWxlIDAuMiBpc24ndCBvZmZpY2lhbCwgSSBkb24n
dCB0aGluayB3ZSBnb3QgYW55IGNvbW1lbnRzIG9uIDAuMi0NCj4gcmMxIHNvIGxldCdzDQo+IGp1
c3QgZ28gYWhlYWQgYW5kIHJlbGVhc2UgaXQuICBJJ20gaG9waW5nIHRvIHNlbmQgbXkgUFIgYXQg
dGhlIGVuZCBvZg0KPiB0aGUgd2VlaywNCj4gSSdsbCBiZSBzdXJlIHRvIHRhZyAwLjIgYmVmb3Jl
IHRoZW4gLS0gdGhpbmdzIGFyZSBzdGlsbCBhIGJpdCBvZiBhDQo+IG1lc3MgaGVyZQ0KPiBkdWUg
dG8gdGhlIGludGVybmV0IGlzc3VlcywgYnV0IEkndmUgZ290IGEgYnVuY2ggb2YgbmV0d29ya2lu
ZyBnZWFyDQo+IGNvbWluZyB0aGlzDQo+IHdlZWsgc28gaG9wZWZ1bGx5IGl0J2xsIGdldCBiZXR0
ZXIuLi4NCj4gDQoNCkF3ZXNvbWUuIFRoYW5rcyENCg0KPiBUaGFua3MgZm9yIHRoaXMhDQo+IA0K
PiA+IFRoaXMgc2VyaWVzIGFkZHMgZm9sbG93aW5nIGZlYXR1cmVzIHRvIFJJU0MtViBMaW51eC4N
Cj4gPiAxLiBBZGRzIHN1cHBvcnQgZm9yIFNCSSB2MC4yDQo+ID4gMi4gQSBVbmlmaWVkIGNhbGxp
bmcgY29udmVudGlvbiBpbXBsZW1lbnRhdGlvbiBiZXR3ZWVuIDAuMSBhbmQgMC4yLg0KPiA+IDMu
IFNCSSBIYXJ0IHN0YXRlIG1hbmFnZW1lbnQgZXh0ZW5zaW9uIChIU00pDQo+ID4gNC4gT3JkZXJl
ZCBib290aW5nIG9mIGhhcnRzDQo+ID4gNC4gQ1BVIGhvdHBsdWcNCj4gPiANCj4gPiBEZXBlbmRl
bmNpZXM6DQo+ID4gVGhlIHN1cHBvcnQgZm9yIFNCSSB2MC4yIGFuZCBIU00gZXh0ZW5zaW9uIGlz
IGFscmVhZHkgYXZhaWxhYmxlIGluDQo+ID4gT3BlblNCSQ0KPiA+IG1hc3Rlci4NCj4gPiANCj4g
PiBbMV0gDQo+ID4gaHR0cHM6Ly9naXRodWIuY29tL3Jpc2N2L3Jpc2N2LXNiaS1kb2MvYmxvYi9t
YXN0ZXIvcmlzY3Ytc2JpLmFkb2MNCj4gPiANCj4gPiBUaGUgcGF0Y2hlcyBhcmUgYWxzbyBhdmFp
bGFibGUgaW4gZm9sbG93aW5nIGdpdGh1YiByZXBvc2l0ZXJ5Lg0KPiA+IA0KPiA+IExpbnV4IEtl
cm5lbDogaHR0cHM6Ly9naXRodWIuY29tL2F0aXNocDA0L2xpbnV4L3RyZWUvc2JpX3YwLjJfdjEx
DQo+ID4gDQo+ID4gUGF0Y2hlcyAxLTUgaW1wbGVtZW50cyB0aGUgU0JJIHYwLjIgYW5kIHVuaWZp
ZWQgY2FsbGluZyBjb252ZW50aW9uLg0KPiA+IFBhdGNoZXMgNi03IGFkZHMgYSBjcHVfb3BzIG1l
dGhvZCB0aGF0IGFsbG93cyBkaWZmZXJlbnQgYm9vdGluZw0KPiA+IHByb3RvY29scw0KPiA+IGR5
bmFtaWNhbGx5Lg0KPiA+IFBhdGNoZXMgOS0xMCBhZGRzIEhTTSBleHRlbnNpb24gYW5kIG9yZGVy
ZWQgaGFydCBib290aW5nIHN1cHBvcnQuDQo+ID4gUGF0Y2hlICAxMSBhZGRzIGNwdSBob3RwbHVn
IHN1cHBvcnQuDQo+ID4gDQo+ID4gQ2hhbmdlcyB2MTAtPnYxMToNCj4gPiAxLiBBZGRyZXNzZWQg
ZmV3IG5pdHBpY2sgY29tbWVudHMuDQo+ID4gMi4gRHJvcHBlZCBwbGljIHBhdGNoIGFzIGl0IGlz
IHRha2VuIHRocm91Z2ggSVJRIHRyZWUuDQo+ID4gDQo+ID4gQ2hhbmdlcyBmcm9tIHY5LT4xMDoN
Cj4gPiAxLiBNaW5vciBjb3B5cmlnaHQgZml4ZXMuDQo+ID4gMi4gUmVuYW1pbmcgb2YgSFNNIGV4
dGVuc2lvbiBkZWZpbml0aW9ucyB0byBtYXRjaCB0aGUgc3BlYy4NCj4gPiANCj4gPiBDaGFuZ2Vz
IGZyb20gdjgtPnY5Og0KPiA+IDEuIEFkZGVkIGEgc2xpZGluZyB3aW5kb3cgaGFydCBiYXNlIG1l
dGhvZCB0byBzdXBwb3J0IGxhcmdlciBoYXJ0DQo+ID4gbWFza3MuDQo+ID4gMi4gQWRkZWQgYSBj
YWxsYmFjayB0byBkaXNhYmxlIGludGVycnVwdHMgd2hlbiBjcHUgZ28gb2ZmbGluZS4NCj4gPiAz
LiBNYWRlIHRoZSBIU00gZXh0ZW5zaW9uIHNlcmllcyBtb3JlIG1vZHVsYXIuDQo+ID4gDQo+ID4g
Q2hhbmdlcyBmcm9tIHY3LXY4Og0KPiA+IDEuIFJlZmFjdG9yZWQgdG8gY29kZSB0byBoYXZlIG1v
ZHVsYXIgY3B1X29wcyBjYWxscy4NCj4gPiAyLiBSZWZhY3RvcmVkIEhTTSBleHRlbnNpb24gZnJv
bSBzYmkuYyB0byBjcHVfb3BzX3NiaS5jLg0KPiA+IDMuIEZpeCBwbGljIGRyaXZlciB0byBoYW5k
bGUgY3B1IGhvdHBsdWcuDQo+ID4gDQo+ID4gQ2hhbmdlcyBmcm9tIHY2LXY3Og0KPiA+IDEuIFJl
YmFzZWQgb24gdjUuNQ0KPiA+IDIuIEZpeGVkIGZldyBjb21waWxhdGlvbiBpc3N1ZXMgZm9yICFD
T05GSUdfU01QIGFuZA0KPiA+ICFDT05GSUdfUklTQ1ZfU0JJDQo+ID4gMy4gQWRkZWQgU0JJIEhT
TSBleHRlbnNpb24NCj4gPiA0LiBBZGQgQ1BVIGhvdHBsdWcgc3VwcG9ydA0KPiA+IA0KPiA+IENo
YW5nZXMgZnJvbSB2NS0+djYNCj4gPiAxLiBGaXhlZCBmZXcgY29tcGlsYXRpb24gaXNzdWVzIGFy
b3VuZCBjb25maWcuDQo+ID4gMi4gRml4ZWQgaGFydCBtYXNrIGdlbmVyYXRpb24gaXNzdWVzIGZv
ciBSRkVOQ0UgJiBJUEkgZXh0ZW5zaW9ucy4NCj4gPiANCj4gPiBDaGFuZ2VzIGZyb20gdjQtPnY1
DQo+ID4gMS4gRml4ZWQgZmV3IG1pbm9yIGNvbW1lbnRzIHJlbGF0ZWQgdG8gc3RhdGljICYgaW5s
aW5lLg0KPiA+IDIuIE1ha2Ugc3VyZSB0aGF0IGV2ZXJ5IHBhdGNoIGlzIGJvb3QgdGVzdGVkIGlu
ZGl2aWR1YWxseS4NCj4gPiANCj4gPiBDaGFuZ2VzIGZyb20gdjMtPnY0Lg0KPiA+IDEuIFJlYmFz
ZWQgb24gZm9yLW5leHQuDQo+ID4gMi4gRml4ZWQgaXNzdXNlcyB3aXRoIGNoZWNrcGF0Y2ggLS1z
dHJpY3QuDQo+ID4gMy4gVW5maWVkIGFsbCBJUEkvZmVuY2UgcmVsYXRlZCBmdW5jdGlvbnMuDQo+
ID4gNC4gQWRkZWQgSGZlbmNlIHJlbGF0ZWQgU0JJIGNhbGxzLg0KPiA+IA0KPiA+IENoYW5nZXMg
ZnJvbSB2Mi0+djMuDQo+ID4gMS4gTW92ZWQgdjAuMSBleHRlbnNpb25zIHRvIGEgbmV3IGNvbmZp
Zy4NCj4gPiAyLiBBZGRlZCBzdXBwb3J0IGZvciByZWxhY2VtZW50IGV4dGVuc2lvbnMgb2YgdjAu
MSBleHRlbnNpb25zLg0KPiA+IA0KPiA+IENoYW5nZXMgZnJvbSB2MS0+djINCj4gPiAxLiBSZW1v
dmVkIHRoZSBsZWdhY3kgY2FsbGluZyBjb252ZW50aW9uLg0KPiA+IDIuIE1vdmVkIGFsbCBTQkkg
cmVsYXRlZCBjYWxscyB0byBzYmkuYy4NCj4gPiAzLiBNb3ZlZCBhbGwgU0JJIHJlbGF0ZWQgbWFj
cm9zIHRvIHVhcGkuDQo+ID4gDQo+ID4gQXRpc2ggUGF0cmEgKDExKToNCj4gPiBSSVNDLVY6IE1h
cmsgZXhpc3RpbmcgU0JJIGFzIDAuMSBTQkkuDQo+ID4gUklTQy1WOiBBZGQgYmFzaWMgc3VwcG9y
dCBmb3IgU0JJIHYwLjINCj4gPiBSSVNDLVY6IEFkZCBTQkkgdjAuMiBleHRlbnNpb24gZGVmaW5p
dGlvbnMNCj4gPiBSSVNDLVY6IEludHJvZHVjZSBhIG5ldyBjb25maWcgZm9yIFNCSSB2MC4xDQo+
ID4gUklTQy1WOiBJbXBsZW1lbnQgbmV3IFNCSSB2MC4yIGV4dGVuc2lvbnMNCj4gPiBSSVNDLVY6
IE1vdmUgcmVsb2NhdGUgYW5kIGZldyBvdGhlciBmdW5jdGlvbnMgb3V0IG9mIF9faW5pdA0KPiA+
IFJJU0MtVjogQWRkIGNwdV9vcHMgYW5kIG1vZGlmeSBkZWZhdWx0IGJvb3RpbmcgbWV0aG9kDQo+
ID4gUklTQy1WOiBFeHBvcnQgU0JJIGVycm9yIHRvIGxpbnV4IGVycm9yIG1hcHBpbmcgZnVuY3Rp
b24NCj4gPiBSSVNDLVY6IEFkZCBTQkkgSFNNIGV4dGVuc2lvbiBkZWZpbml0aW9ucw0KPiA+IFJJ
U0MtVjogQWRkIHN1cHBvcnRlZCBmb3Igb3JkZXJlZCBib290aW5nIG1ldGhvZCB1c2luZyBIU00N
Cj4gPiBSSVNDLVY6IFN1cHBvcnQgY3B1IGhvdHBsdWcNCj4gPiANCj4gPiBhcmNoL3Jpc2N2L0tj
b25maWcgICAgICAgICAgICAgICAgICAgfCAgMTkgKy0NCj4gPiBhcmNoL3Jpc2N2L2luY2x1ZGUv
YXNtL2NwdV9vcHMuaCAgICAgfCAgNDYgKysrDQo+ID4gYXJjaC9yaXNjdi9pbmNsdWRlL2FzbS9z
YmkuaCAgICAgICAgIHwgMTk1ICsrKysrLS0tLQ0KPiA+IGFyY2gvcmlzY3YvaW5jbHVkZS9hc20v
c21wLmggICAgICAgICB8ICAyNCArKw0KPiA+IGFyY2gvcmlzY3Yva2VybmVsL01ha2VmaWxlICAg
ICAgICAgICB8ICAgNiArDQo+ID4gYXJjaC9yaXNjdi9rZXJuZWwvY3B1LWhvdHBsdWcuYyAgICAg
IHwgIDg3ICsrKysNCj4gPiBhcmNoL3Jpc2N2L2tlcm5lbC9jcHVfb3BzLmMgICAgICAgICAgfCAg
NDYgKysrDQo+ID4gYXJjaC9yaXNjdi9rZXJuZWwvY3B1X29wc19zYmkuYyAgICAgIHwgMTE1ICsr
KysrKw0KPiA+IGFyY2gvcmlzY3Yva2VybmVsL2NwdV9vcHNfc3BpbndhaXQuYyB8ICA0MyArKw0K
PiA+IGFyY2gvcmlzY3Yva2VybmVsL2hlYWQuUyAgICAgICAgICAgICB8IDE3OSArKysrKy0tLS0N
Cj4gPiBhcmNoL3Jpc2N2L2tlcm5lbC9zYmkuYyAgICAgICAgICAgICAgfCA1NzUNCj4gPiArKysr
KysrKysrKysrKysrKysrKysrKysrKy0NCj4gPiBhcmNoL3Jpc2N2L2tlcm5lbC9zZXR1cC5jICAg
ICAgICAgICAgfCAgMjQgKy0NCj4gPiBhcmNoL3Jpc2N2L2tlcm5lbC9zbXBib290LmMgICAgICAg
ICAgfCAgNTMgKystDQo+ID4gYXJjaC9yaXNjdi9rZXJuZWwvdHJhcHMuYyAgICAgICAgICAgIHwg
ICAyICstDQo+ID4gYXJjaC9yaXNjdi9rZXJuZWwvdm1saW51eC5sZHMuUyAgICAgIHwgICA1ICst
DQo+ID4gMTUgZmlsZXMgY2hhbmdlZCwgMTI0OSBpbnNlcnRpb25zKCspLCAxNzAgZGVsZXRpb25z
KC0pDQo+ID4gY3JlYXRlIG1vZGUgMTAwNjQ0IGFyY2gvcmlzY3YvaW5jbHVkZS9hc20vY3B1X29w
cy5oDQo+ID4gY3JlYXRlIG1vZGUgMTAwNjQ0IGFyY2gvcmlzY3Yva2VybmVsL2NwdS1ob3RwbHVn
LmMNCj4gPiBjcmVhdGUgbW9kZSAxMDA2NDQgYXJjaC9yaXNjdi9rZXJuZWwvY3B1X29wcy5jDQo+
ID4gY3JlYXRlIG1vZGUgMTAwNjQ0IGFyY2gvcmlzY3Yva2VybmVsL2NwdV9vcHNfc2JpLmMNCj4g
PiBjcmVhdGUgbW9kZSAxMDA2NDQgYXJjaC9yaXNjdi9rZXJuZWwvY3B1X29wc19zcGlud2FpdC5j
DQoNCi0tIA0KUmVnYXJkcywNCkF0aXNoDQo=

