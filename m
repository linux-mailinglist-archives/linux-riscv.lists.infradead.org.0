Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02B821840E6
	for <lists+linux-riscv@lfdr.de>; Fri, 13 Mar 2020 07:42:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-ID:Content-Type:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ZlScXRfbM8wGLxsybqq4Y2xNALrnqWAlFoC2An0r/n8=; b=A/j/XKANcr+ATUfYn9YyiSjom
	G58Xsrisuwgyq61eIPb8hDcIq/dNh/hIdfoNN6YLLGSQgcKxgEoCaiXzhTyyH/SoZreypXQiqVPST
	pnXvkGH8Gl3fvGpP8/Vijccvk3BT40IPY7WbczirOJkvbQAmZ9rmzCNlTDw8HmpcIs84xV/QofmNX
	FJGpG33/IrvM1SVKVcIL21qhynrngfwTcq7d6QN4q7hretZcy0QU/1ZCHxf2SMJhcNVBjYhYENnLT
	ZMIjuNMiPJMdG3KwvUJDcGY+eSzefeiNbdX9+K0656CMxxkyYlnyz9fNVS6AGScN35FYOKjS0ZpS1
	uvjrch0tg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCe1t-0007v9-SC; Fri, 13 Mar 2020 06:42:45 +0000
Received: from esa3.hgst.iphmx.com ([216.71.153.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCe1p-0007uN-A5
 for linux-riscv@lists.infradead.org; Fri, 13 Mar 2020 06:42:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1584081761; x=1615617761;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=ZlScXRfbM8wGLxsybqq4Y2xNALrnqWAlFoC2An0r/n8=;
 b=VnZJNq6ppOqIJZdRiJfuQ7xZB0hi1F5b/cheWixIVL25lUaOI7VcxNQu
 HPXLPl4eRs1zPJUh5MmnkYEFFk0+onuMle3cHX/F5y9rSEl3dTIWMaKBl
 ZmqcW6JE5/Sff85ow04MJjZth6FNM9D+vlQnsJlKWcyOS9LQRmKTUE/sh
 8wVSn6C/x3B9TmxuFIkP4JrJP97fbUhyeSyctSkn7qN99IjCiQkwo1703
 egTNI/dRu6Anm8T2nfBSx9JKhJzxCHOedSEDikWrQ7luzPaOnBVoc1oQ9
 Iqb9lE8mgbcV1BwOb20tVI+ijKy75MKXuYAh5prpWaJVQKIYNi9gMNof7 Q==;
IronPort-SDR: wJKMRV8boQshSBqOLMRQfQM5iWXMQxURON0r7bTv7c+mcQr+ecwb4xD3FyapH9HzM/IC6EUmz/
 AltABT3APm5Jo9Ui6LOKVIZgJPs/BGGZTAIFnMNrAnukUPSXICSdjHeGHM5ZcBxQQ2WnBppXI5
 iG2LDPXPLd+S6xoIkMTcNmPIkI3tUUM+JS44BmAWMkYJwHiCDCNw8CnB0mrgs+UoDzSiW8K4r+
 Dy03EzUNdQaYkK4jWYqmLidHemdna5drhO4Hz0ZO1wG6f9/kSYze6JQixvAbD3VS514F0OE5D4
 vhg=
X-IronPort-AV: E=Sophos;i="5.70,547,1574092800"; d="scan'208";a="136732108"
Received: from mail-mw2nam10lp2107.outbound.protection.outlook.com (HELO
 NAM10-MW2-obe.outbound.protection.outlook.com) ([104.47.55.107])
 by ob1.hgst.iphmx.com with ESMTP; 13 Mar 2020 14:42:39 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MkRpw8lYfX9Y5QHTtjFwDAajwGl//XGSX60vWH5HTEMVQqt0+a2yoWhxQpgL1HAFnPoHUg/rYkBdMr79Oe5hJgC4RFcZicdGB0xKkXkpxHNgi+j9l5Ulv5GdXazH8DMQ1J7kKuHGMUXz+iCrW+Fgrqvw7mikf8DbqUcYelbjOWycMTaWCLSEtc2tg+g/5wb5ohYPH8jy56RvO2UxkCRW/TzuS2IQY4lMwweVfDkLgKQrYL8yZo9ZYW44/4yy+4uyzzGptNWHcnuGnKXJcK7FxZ+uqFEDQxBw31OBZAhogw1zu5hgqyW9H8/hXhK2BABEffcudMKMeDqs2W/xRQGtFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZlScXRfbM8wGLxsybqq4Y2xNALrnqWAlFoC2An0r/n8=;
 b=Zg8F02oJzjryzThRzG6n6PUXwkEE61SwIQAIcdMc+/bgjFH+GWd+i4FivGkIoWzh5E+lw7RY2oavU1FE6/nQuIBNK78SvrHVvH8N2C2rGaGatpL8+OnySt4asz0XJjC+LmwQZPu/yJZUrNJU31GIDLy+TrEDAG18sPknq9/EhXSpnVXwGGtj0nCUEVepMutzy0DFJcpkAHNoJxQ9vp0ibLyE55//Wx2XH0wWp2bR3GeDnLjgjYgmi9ELK8ZDOQQYKt0sBS31zsO9W3Cw0gzbVaIXu4klICzhViNuOiHFVYGEuKMt9Oe6Foom0q4wy/mjnPLwHi9ti6UqIZ0FZh07rw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZlScXRfbM8wGLxsybqq4Y2xNALrnqWAlFoC2An0r/n8=;
 b=a1Gok3tsa99B7RlO+VsR999ROA++eZqGBFVE0U5NPVaT8BXySkwirlwpeoH9tLhx4mgo3mM/7AVk+3KD0fgwBr86ZziZ6w3G3u/XB5mAd+L67o2QOE2l+WO1uSOMtlxGDxXudEloxA138Ii2gnYzUUOGQrCaEaZK6tD5oOxj1WE=
Received: from CO2PR04MB2343.namprd04.prod.outlook.com (2603:10b6:102:12::9)
 by CO2PR04MB2167.namprd04.prod.outlook.com (2603:10b6:102:c::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2793.15; Fri, 13 Mar
 2020 06:42:36 +0000
Received: from CO2PR04MB2343.namprd04.prod.outlook.com
 ([fe80::c1a:6c0f:8207:580b]) by CO2PR04MB2343.namprd04.prod.outlook.com
 ([fe80::c1a:6c0f:8207:580b%7]) with mapi id 15.20.2814.007; Fri, 13 Mar 2020
 06:42:36 +0000
From: Damien Le Moal <Damien.LeMoal@wdc.com>
To: "atishp@atishpatra.org" <atishp@atishpatra.org>
Subject: Re: [PATCH v2 3/9] riscv: Add SOC early init support
Thread-Topic: [PATCH v2 3/9] riscv: Add SOC early init support
Thread-Index: AQHV+LBGs8UKHOTEo067LJD3Wn16NahGE8eA
Date: Fri, 13 Mar 2020 06:42:36 +0000
Message-ID: <2b565ad4afd7453a5b1aca6b5d8d8368d6688518.camel@wdc.com>
References: <20200312051107.1454880-1-damien.lemoal@wdc.com>
 <20200312051107.1454880-4-damien.lemoal@wdc.com>
 <CAOnJCUJ_aHi1tZ4WoMQVFctq6YMC5CbL4+XEQP0T3_zGZk8F3A@mail.gmail.com>
In-Reply-To: <CAOnJCUJ_aHi1tZ4WoMQVFctq6YMC5CbL4+XEQP0T3_zGZk8F3A@mail.gmail.com>
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
x-ms-office365-filtering-correlation-id: 2a49b5c3-cc0c-4023-abdd-08d7c719b7a0
x-ms-traffictypediagnostic: CO2PR04MB2167:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CO2PR04MB216731884A5270761258462FE7FA0@CO2PR04MB2167.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:1824;
x-forefront-prvs: 034119E4F6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(376002)(396003)(39860400002)(136003)(346002)(366004)(199004)(186003)(6916009)(2616005)(5660300002)(26005)(64756008)(6506007)(316002)(53546011)(66476007)(54906003)(66446008)(66556008)(66946007)(91956017)(76116006)(8936002)(81156014)(8676002)(81166006)(478600001)(6486002)(4326008)(36756003)(2906002)(6512007)(86362001)(71200400001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:CO2PR04MB2167;
 H:CO2PR04MB2343.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 9VVaJ1p6714mSRZR3HkHB0HlhMfAV1UiKy8FcPlJHkZoQqXLx3WsUWmssTBErRcoW0rIfGWnmJR7JLYB6jXCt8rFfvvxydTmGCC+pLefHTFXUUZvGEvFtqoCGHgfRSKhimNJU2v+JFUWX0ZVm4Z4EQMRwEjbDUUisemdfwv22Y3SXOeuV0pBG2m8YvmkRW/OtRCKjXoydTJ6KRx/jHneIK9OIoOY9teNecGN1BaqgzON9FhLtk1nFjvyZe4yg1SDEcIrdEcRU7u5RQO3fq+dU9WKYx9cZExwRKDTnBBEH8J/R/TLRDxKR3Ay4ha7aduXyMA/azNhczXbeeAC05TUpySfIuxHSz/39WTCsiSOOLSbhLs8goAtJ3PZPHmA05SA/5y64RhqbmwIX2JYyapYknGOe+jKlPNms4OEGgRVEK3X3030X/aP4HL7mIpJ0lHg
x-ms-exchange-antispam-messagedata: grDqiFWbG/UMscl2t2PY7lx4oYpYeSCSMNC6bc2MsElwJijOIv8zYrTYQCLhWnMNKV3BOkdjIA979coO1rtG/RjC8yjz+TnKUPAQcURz5IVgF6YpSpixO+IIT1UeudMe4StlqUfn8Zf8RgYw5XF7Mg==
Content-Type: text/plain; charset="utf-8"
Content-ID: <17528B093A46B54988D7313CC4C700FF@namprd04.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2a49b5c3-cc0c-4023-abdd-08d7c719b7a0
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Mar 2020 06:42:36.2295 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6kpWC9bokGKofjBnI2XQ5knHUYEmINNvGfnB2/pmWy9Zcz4qk61gBpUAgkIPd+08Ax2hcQXFmXIUGwBQirhJig==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO2PR04MB2167
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_234241_373251_882EF240 
X-CRM114-Status: GOOD (  30.71  )
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
 Anup Patel <Anup.Patel@wdc.com>, "palmer@dabbelt.com" <palmer@dabbelt.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

T24gVGh1LCAyMDIwLTAzLTEyIGF0IDEzOjUzIC0wNzAwLCBBdGlzaCBQYXRyYSB3cm90ZToNCj4g
T24gV2VkLCBNYXIgMTEsIDIwMjAgYXQgMTA6MTEgUE0gRGFtaWVuIExlIE1vYWwgPGRhbWllbi5s
ZW1vYWxAd2RjLmNvbT4gd3JvdGU6DQo+ID4gQWRkIGEgbWVjaGFuaXNtIGZvciBlYXJseSBTb0Mg
aW5pdGlhbGl6YXRpb24gZm9yIHBsYXRmb3JtcyB0aGF0IG5lZWQNCj4gPiBhZGRpdGlvbmFsIGhh
cmR3YXJlIGluaXRpYWxpemF0aW9uIG5vdCBwb3NzaWJsZSB0aHJvdWdoIHRoZSByZWd1bGFyDQo+
ID4gZGV2aWNlIHRyZWUgYW5kIGRyaXZlcnMgbWVjaGFuaXNtLiBXaXRoIHRoaXMsIGEgU29DIHNw
ZWNpZmljDQo+ID4gaW5pdGlhbGl6YXRpb24gZnVuY3Rpb24gY2FuIGJlIGNhbGxlZCB2ZXJ5IGVh
cmx5LCBiZWZvcmUgRFRCIHBhcnNpbmcNCj4gPiBpcyBkb25lIGJ5IHBhcnNlX2R0YigpIGluIExp
bnV4IFJJU0MtViBrZXJuZWwgc2V0dXAgY29kZS4NCj4gPiANCj4gPiBUaGlzIGNhbiBiZSB2ZXJ5
IHVzZWZ1bCBmb3IgZWFybHkgaGFyZHdhcmUgaW5pdGlhbGl6YXRpb24gZm9yIE5vLU1NVQ0KPiA+
IGtlcm5lbHMgYm9vdGVkIGRpcmVjdGx5IGluIE0tbW9kZSBiZWNhdXNlIGl0IGlzIHF1aXRlIGxp
a2VseSB0aGF0IG5vDQo+ID4gb3RoZXIgYm9vdGluZyBzdGFnZSBleGlzdCBwcmlvciB0byB0aGUg
Tm8tTU1VIGtlcm5lbC4NCj4gPiANCj4gPiBFeGFtcGxlIHVzZSBvZiBhIFNvQyBlYXJseSBpbml0
aWFsaXphdGlvbiBpcyBhcyBmb2xsb3dzOg0KPiA+IA0KPiA+IHN0YXRpYyB2b2lkIHZlbmRvcl9h
YmNfZWFybHlfaW5pdChjb25zdCB2b2lkICpmZHQpDQo+ID4gew0KPiA+ICAgICAgICAgLyoNCj4g
PiAgICAgICAgICAqIHNvbWUgZWFybHkgaW5pdCBjb2RlIGhlcmUgdGhhdCBjYW4gdXNlIHNpbXBs
ZSBtYXRjaGVzDQo+ID4gICAgICAgICAgKiBhZ2FpbnN0IHRoZSBmbGF0IGRldmljZSB0cmVlIGZp
bGUuDQo+ID4gICAgICAgICAgKi8NCj4gPiB9DQo+ID4gU09DX0VBUkxZX0lOSVRfREVDTEFSRSgi
dmVuZG9yLGFiYyIsIGFiY19lYXJseV9pbml0KTsNCj4gPiANCj4gPiBUaGlzIGVhcmx5IGluaXRp
YWxpemF0aW9uIGZ1bmN0aW9uIGlzIGV4ZWN1dGVkIG9ubHkgaWYgdGhlIGZsYXQgZGV2aWNlDQo+
ID4gdHJlZSBmb3IgdGhlIGJvYXJkIGhhcyBhICdjb21wYXRpYmxlID0gInZlbmRvcixhYmMiJyBl
bnRyeTsNCj4gPiANCj4gPiBTaWduZWQtb2ZmLWJ5OiBEYW1pZW4gTGUgTW9hbCA8ZGFtaWVuLmxl
bW9hbEB3ZGMuY29tPg0KPiA+IFNpZ25lZC1vZmYtYnk6IEFudXAgUGF0ZWwgPGFudXAucGF0ZWxA
d2RjLmNvbT4NCj4gPiBSZXZpZXdlZC1ieTogUGFsbWVyIERhYmJlbHQgPHBhbG1lcmRhYmJlbHRA
Z29vZ2xlLmNvbT4NCj4gPiAtLS0NCj4gPiAgYXJjaC9yaXNjdi9pbmNsdWRlL2FzbS9zb2MuaCAg
ICB8IDIzICsrKysrKysrKysrKysrKysrKysrKysrDQo+ID4gIGFyY2gvcmlzY3Yva2VybmVsL01h
a2VmaWxlICAgICAgfCAgMSArDQo+ID4gIGFyY2gvcmlzY3Yva2VybmVsL2hlYWQuUyAgICAgICAg
fCAgMSArDQo+ID4gIGFyY2gvcmlzY3Yva2VybmVsL3NvYy5jICAgICAgICAgfCAyOCArKysrKysr
KysrKysrKysrKysrKysrKysrKysrDQo+ID4gIGFyY2gvcmlzY3Yva2VybmVsL3ZtbGludXgubGRz
LlMgfCAgNiArKysrKysNCj4gPiAgNSBmaWxlcyBjaGFuZ2VkLCA1OSBpbnNlcnRpb25zKCspDQo+
ID4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBhcmNoL3Jpc2N2L2luY2x1ZGUvYXNtL3NvYy5oDQo+ID4g
IGNyZWF0ZSBtb2RlIDEwMDY0NCBhcmNoL3Jpc2N2L2tlcm5lbC9zb2MuYw0KPiA+IA0KPiA+IGRp
ZmYgLS1naXQgYS9hcmNoL3Jpc2N2L2luY2x1ZGUvYXNtL3NvYy5oIGIvYXJjaC9yaXNjdi9pbmNs
dWRlL2FzbS9zb2MuaA0KPiA+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0DQo+ID4gaW5kZXggMDAwMDAw
MDAwMDAwLi45YjhjMzMyY2JlNzYNCj4gPiAtLS0gL2Rldi9udWxsDQo+ID4gKysrIGIvYXJjaC9y
aXNjdi9pbmNsdWRlL2FzbS9zb2MuaA0KPiA+IEBAIC0wLDAgKzEsMjMgQEANCj4gPiArLyogU1BE
WC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjAtb3ItbGF0ZXIgKi8NCj4gPiArLyoNCj4gPiAr
ICogQ29weXJpZ2h0IChDKSAyMDIwIFdlc3Rlcm4gRGlnaXRhbCBDb3Jwb3JhdGlvbiBvciBpdHMg
YWZmaWxpYXRlcy4NCj4gPiArICovDQo+ID4gKw0KPiA+ICsjaWZuZGVmIF9BU01fUklTQ1ZfU09D
X0gNCj4gPiArI2RlZmluZSBfQVNNX1JJU0NWX1NPQ19IDQo+ID4gKw0KPiA+ICsjaW5jbHVkZSA8
bGludXgvb2YuaD4NCj4gPiArI2luY2x1ZGUgPGxpbnV4L2xpbmthZ2UuaD4NCj4gPiArI2luY2x1
ZGUgPGxpbnV4L3R5cGVzLmg+DQo+ID4gKw0KPiA+ICsjZGVmaW5lIFNPQ19FQVJMWV9JTklUX0RF
Q0xBUkUoY29tcGF0LCBmbikgICAgICAgICAgICAgICAgICAgICAgICAgICAgIFwNCj4gPiArICAg
ICAgIHN0YXRpYyBjb25zdCBzdHJ1Y3Qgb2ZfZGV2aWNlX2lkIF9fc29jX2Vhcmx5X2luaXQgICAg
ICAgICAgICAgICBcDQo+ID4gKyAgICAgICAgICAgICAgIF9fdXNlZCBfX3NlY3Rpb24oX19zb2Nf
ZWFybHlfaW5pdF90YWJsZSkgICAgICAgICAgICAgICAgXA0KPiA+ICsgICAgICAgICAgICAgICAg
PSB7IC5jb21wYXRpYmxlID0gY29tcGF0LCAuZGF0YSA9IGZuICB9DQo+ID4gKw0KPiANCj4gVGhl
cmUgbWF5IGJlIHNvbWUgZnV0dXJlIGtlbmRyeXRlIGJvYXJkIG9yIHNvbWUgb3RoZXIgUklTQy1W
IGJvYXJkDQo+IHdoaWNoIHdhbnQgdG8gdXNlIFNPQ19FQVJMWV9JTklUX0RFQ0xBUkUuDQo+IFRo
ZXJlIHNob3VsZCBiZSBhIG5hbWUgcGFyYW1ldGVyIGFzIHdlbGwgd2hpY2ggYWxsb3dzIG11bHRp
cGxlIHVzYWdlDQo+IG9mIFNPQ19FQVJMWV9JTklUX0RFQ0xBUkUuDQoNCkkgYW0gbm90IHN1cmUg
SSB1bmRlcnN0YW5kIHlvdXIgcG9pbnQgaGVyZS4gQ3VycmVudGx5LCB0aGUgY2FsbCB0byBhbg0K
ZWFybHkgaW5pdCBmdW5jdGlvbnMgaXMgZHJpdmVuIGJ5IHRoZSB2YWx1ZSAobmFtZSkgc3BlY2lm
aWVkIGluIHRoZSBEVA0KY29tcGF0aWJsZSBlbnRyeS4gSWYgd2hhdCBuZWVkcyB0byBiZSBkb25l
IGluIHRoZSBlYXJseSBpbml0IGZ1bmN0aW9uDQpmb3Igb25lIFNvQyBpcyBjb21tb24gd2l0aCBh
bm90aGVyLCB0aGUgc2FtZSBmdW5jdGlvbiBjYW4gYmUgdXNlZCBmb3INCmRpZmZlcmVudCBTT0Nf
RUFSTFlfSU5JVF9ERUNMQVJFKCkgd2l0aCBkaWZmZXJlbnQgY29tcGF0aWJsZSBzdHJpbmdzLA0K
b3IgdGhlIHNhbWUgY29tcGF0aWJsZSBzdHJpbmcgdXNlZCBpbiB0aGUgZGlmZmVyZW50IGJvYXJk
cyBEVC4gTm8gPyBBbQ0KSSBtaXNzaW5nIHNvbWV0aGluZyA/DQoNCj4gDQo+ID4gK3ZvaWQgc29j
X2Vhcmx5X2luaXQodm9pZCk7DQo+ID4gKw0KPiA+ICtleHRlcm4gdW5zaWduZWQgbG9uZyBfX3Nv
Y19lYXJseV9pbml0X3RhYmxlX3N0YXJ0Ow0KPiA+ICtleHRlcm4gdW5zaWduZWQgbG9uZyBfX3Nv
Y19lYXJseV9pbml0X3RhYmxlX2VuZDsNCj4gPiArDQo+ID4gKyNlbmRpZg0KPiA+IGRpZmYgLS1n
aXQgYS9hcmNoL3Jpc2N2L2tlcm5lbC9NYWtlZmlsZSBiL2FyY2gvcmlzY3Yva2VybmVsL01ha2Vm
aWxlDQo+ID4gaW5kZXggOTdkMGMzNWY4YjM3Li5lNGEyMjk5OWRiYzYgMTAwNjQ0DQo+ID4gLS0t
IGEvYXJjaC9yaXNjdi9rZXJuZWwvTWFrZWZpbGUNCj4gPiArKysgYi9hcmNoL3Jpc2N2L2tlcm5l
bC9NYWtlZmlsZQ0KPiA+IEBAIC0xMCw2ICsxMCw3IEBAIGVuZGlmDQo+ID4gIGV4dHJhLXkgKz0g
aGVhZC5vDQo+ID4gIGV4dHJhLXkgKz0gdm1saW51eC5sZHMNCj4gPiANCj4gPiArb2JqLXkgICs9
IHNvYy5vDQo+ID4gIG9iai15ICArPSBjcHUubw0KPiA+ICBvYmoteSAgKz0gY3B1ZmVhdHVyZS5v
DQo+ID4gIG9iai15ICArPSBlbnRyeS5vDQo+ID4gZGlmZiAtLWdpdCBhL2FyY2gvcmlzY3Yva2Vy
bmVsL2hlYWQuUyBiL2FyY2gvcmlzY3Yva2VybmVsL2hlYWQuUw0KPiA+IGluZGV4IDg1ZjIwNzNl
N2ZlNC4uNTJlZDExYjRmZGE2IDEwMDY0NA0KPiA+IC0tLSBhL2FyY2gvcmlzY3Yva2VybmVsL2hl
YWQuUw0KPiA+ICsrKyBiL2FyY2gvcmlzY3Yva2VybmVsL2hlYWQuUw0KPiA+IEBAIC0xMzEsNiAr
MTMxLDcgQEAgY2xlYXJfYnNzX2RvbmU6DQo+ID4gICAgICAgICBjYWxsIGthc2FuX2Vhcmx5X2lu
aXQNCj4gPiAgI2VuZGlmDQo+ID4gICAgICAgICAvKiBTdGFydCB0aGUga2VybmVsICovDQo+ID4g
KyAgICAgICBjYWxsIHNvY19lYXJseV9pbml0DQo+ID4gICAgICAgICBjYWxsIHBhcnNlX2R0Yg0K
PiA+ICAgICAgICAgdGFpbCBzdGFydF9rZXJuZWwNCj4gPiANCj4gPiBkaWZmIC0tZ2l0IGEvYXJj
aC9yaXNjdi9rZXJuZWwvc29jLmMgYi9hcmNoL3Jpc2N2L2tlcm5lbC9zb2MuYw0KPiA+IG5ldyBm
aWxlIG1vZGUgMTAwNjQ0DQo+ID4gaW5kZXggMDAwMDAwMDAwMDAwLi4wYjNiM2RjOWFkMGYNCj4g
PiAtLS0gL2Rldi9udWxsDQo+ID4gKysrIGIvYXJjaC9yaXNjdi9rZXJuZWwvc29jLmMNCj4gPiBA
QCAtMCwwICsxLDI4IEBADQo+ID4gKy8vIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4w
LW9yLWxhdGVyDQo+ID4gKy8qDQo+ID4gKyAqIENvcHlyaWdodCAoQykgMjAyMCBXZXN0ZXJuIERp
Z2l0YWwgQ29ycG9yYXRpb24gb3IgaXRzIGFmZmlsaWF0ZXMuDQo+ID4gKyAqLw0KPiA+ICsjaW5j
bHVkZSA8bGludXgvaW5pdC5oPg0KPiA+ICsjaW5jbHVkZSA8bGludXgvbGliZmR0Lmg+DQo+ID4g
KyNpbmNsdWRlIDxhc20vcGd0YWJsZS5oPg0KPiA+ICsjaW5jbHVkZSA8YXNtL3NvYy5oPg0KPiA+
ICsNCj4gPiArLyoNCj4gPiArICogVGhpcyBpcyBjYWxsZWQgZXh0cmVtbHkgZWFybHksIGJlZm9y
ZSBwYXJzZV9kdGIoKSwgdG8gYWxsb3cgaW5pdGlhbGl6aW5nDQo+ID4gKyAqIFNvQyBoYXJkd2Fy
ZSBiZWZvcmUgbWVtb3J5IG9yIGFueSBkZXZpY2UgZHJpdmVyIGluaXRpYWxpemF0aW9uLg0KPiA+
ICsgKi8NCj4gPiArdm9pZCBfX2luaXQgc29jX2Vhcmx5X2luaXQodm9pZCkNCj4gPiArew0KPiA+
ICsgICAgICAgdm9pZCAoKmVhcmx5X2ZuKShjb25zdCB2b2lkICpmZHQpOw0KPiA+ICsgICAgICAg
Y29uc3Qgc3RydWN0IG9mX2RldmljZV9pZCAqczsNCj4gPiArICAgICAgIGNvbnN0IHZvaWQgKmZk
dCA9IGR0Yl9lYXJseV92YTsNCj4gPiArDQo+ID4gKyAgICAgICBmb3IgKHMgPSAodm9pZCAqKSZf
X3NvY19lYXJseV9pbml0X3RhYmxlX3N0YXJ0Ow0KPiA+ICsgICAgICAgICAgICAodm9pZCAqKXMg
PCAodm9pZCAqKSZfX3NvY19lYXJseV9pbml0X3RhYmxlX2VuZDsgcysrKSB7DQo+ID4gKyAgICAg
ICAgICAgICAgIGlmICghZmR0X25vZGVfY2hlY2tfY29tcGF0aWJsZShmZHQsIDAsIHMtPmNvbXBh
dGlibGUpKSB7DQo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgZWFybHlfZm4gPSBzLT5kYXRh
Ow0KPiA+ICsgICAgICAgICAgICAgICAgICAgICAgIGVhcmx5X2ZuKGZkdCk7DQo+ID4gKyAgICAg
ICAgICAgICAgICAgICAgICAgcmV0dXJuOw0KPiA+ICsgICAgICAgICAgICAgICB9DQo+ID4gKyAg
ICAgICB9DQo+ID4gK30NCj4gPiBkaWZmIC0tZ2l0IGEvYXJjaC9yaXNjdi9rZXJuZWwvdm1saW51
eC5sZHMuUyBiL2FyY2gvcmlzY3Yva2VybmVsL3ZtbGludXgubGRzLlMNCj4gPiBpbmRleCAxZTAx
OTNkZWQ0MjAuLjMyYjE2MDk0MmY0MCAxMDA2NDQNCj4gPiAtLS0gYS9hcmNoL3Jpc2N2L2tlcm5l
bC92bWxpbnV4Lmxkcy5TDQo+ID4gKysrIGIvYXJjaC9yaXNjdi9rZXJuZWwvdm1saW51eC5sZHMu
Uw0KPiA+IEBAIC0yNCw2ICsyNCwxMiBAQCBTRUNUSU9OUw0KPiA+ICAgICAgICAgSEVBRF9URVhU
X1NFQ1RJT04NCj4gPiAgICAgICAgIElOSVRfVEVYVF9TRUNUSU9OKFBBR0VfU0laRSkNCj4gPiAg
ICAgICAgIElOSVRfREFUQV9TRUNUSU9OKDE2KQ0KPiA+ICsgICAgICAgLiA9IEFMSUdOKDgpOw0K
PiA+ICsgICAgICAgX19zb2NfZWFybHlfaW5pdF90YWJsZSA6IHsNCj4gPiArICAgICAgICAgICAg
ICAgX19zb2NfZWFybHlfaW5pdF90YWJsZV9zdGFydCA9IC47DQo+ID4gKyAgICAgICAgICAgICAg
IEtFRVAoKihfX3NvY19lYXJseV9pbml0X3RhYmxlKSkNCj4gPiArICAgICAgICAgICAgICAgX19z
b2NfZWFybHlfaW5pdF90YWJsZV9lbmQgPSAuOw0KPiA+ICsgICAgICAgfQ0KPiA+ICAgICAgICAg
Lyogd2UgaGF2ZSB0byBkaXNjYXJkIGV4aXQgdGV4dCBhbmQgc3VjaCBhdCBydW50aW1lLCBub3Qg
bGluayB0aW1lICovDQo+ID4gICAgICAgICAuZXhpdC50ZXh0IDoNCj4gPiAgICAgICAgIHsNCj4g
PiAtLQ0KPiA+IDIuMjQuMQ0KPiA+IA0KPiA+IA0KPiANCj4gDQoNCi0tIA0KRGFtaWVuIExlIE1v
YWwNCldlc3Rlcm4gRGlnaXRhbCBSZXNlYXJjaA0K

