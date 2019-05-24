Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 773A92A070
	for <lists+linux-riscv@lfdr.de>; Fri, 24 May 2019 23:34:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A6sihmunE8Td2lJc6Bj/lNH871y4qdMEQpsni/SASLI=; b=aOWt2IWAtCs02m
	UrFfmAmVOCFg25JoaBI7dhKG+W24hF3Lqc9/IU1kbIkNSCU7lqvx7cRdB21d3BgnYwf2BrODBKrm8
	KHgMjKaL+G3s8iMcuCbgHDhErXjyqWnJM5f/uXGP/dCC5AvOvezedKFnATn5lY8UqbDMHzFCovzHV
	TEOasBmLUU1w1575PbvuzdGiLjX2L8O4rbxohf5RMICADsj+C8cLObdrtJXFOGKCsVHgqiXLDJYJs
	rXdNXAV9MLFz2L8reYfLdShPMcSTC94Q58Bq4a3Mn8qzJbEhElBX/LQnJAMMOc3Xg6lynh5yNt8zC
	eOzh88yoxCEXsBau4IZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUHpx-0004O3-25; Fri, 24 May 2019 21:34:49 +0000
Received: from mail-edges23.fraunhofer.de ([153.97.7.23])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUHps-0004NY-DF
 for linux-riscv@lists.infradead.org; Fri, 24 May 2019 21:34:47 +0000
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2EWAABOYuhc/xoBYJllGgEBAQEBAgE?=
 =?us-ascii?q?BAQEHAgEBAQGBVAIBAQEBCwGBYS9pUgIeEigKhAmIe4oSgg2YbIErPAkBAQE?=
 =?us-ascii?q?BAQEBAQEIJQoBAQKEPgIXgikjNwYOAQMBAQUBAQEBBAICaRwMgnQETTswAQE?=
 =?us-ascii?q?BAQEBAQEBAQEBAQEBGgINYwEBAQMBIwQNQAUFCwIBCBgCAiYCAgIwFRACBAE?=
 =?us-ascii?q?NBYMjgXsOAQ+mE3wzhDIBhXgGgQwoAYtSgVg+gRGCFH4+gkgZAoFKFxeCc4J?=
 =?us-ascii?q?YBI1YLZpCAwQCAoEwXYYzjF8bjFaJa4xohwCPFYFlI4FXcYM7hX+KUz8BATE?=
 =?us-ascii?q?BjTaBIQEB?=
X-IPAS-Result: =?us-ascii?q?A2EWAABOYuhc/xoBYJllGgEBAQEBAgEBAQEHAgEBAQGBV?=
 =?us-ascii?q?AIBAQEBCwGBYS9pUgIeEigKhAmIe4oSgg2YbIErPAkBAQEBAQEBAQEIJQoBA?=
 =?us-ascii?q?QKEPgIXgikjNwYOAQMBAQUBAQEBBAICaRwMgnQETTswAQEBAQEBAQEBAQEBA?=
 =?us-ascii?q?QEBGgINYwEBAQMBIwQNQAUFCwIBCBgCAiYCAgIwFRACBAENBYMjgXsOAQ+mE?=
 =?us-ascii?q?3wzhDIBhXgGgQwoAYtSgVg+gRGCFH4+gkgZAoFKFxeCc4JYBI1YLZpCAwQCA?=
 =?us-ascii?q?oEwXYYzjF8bjFaJa4xohwCPFYFlI4FXcYM7hX+KUz8BATEBjTaBIQEB?=
X-IronPort-AV: E=Sophos;i="5.60,508,1549926000"; d="scan'208";a="11080153"
Received: from mail-mtaka26.fraunhofer.de ([153.96.1.26])
 by mail-edgeS23.fraunhofer.de with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 May 2019 23:34:40 +0200
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0AVAADIYuhcfRBhWMBlGgEBAQEBAgE?=
 =?us-ascii?q?BAQEHAgEBAQGBVAIBAQEBCwGBYYEYUQEBMSgKhAmIe4wfmGyBZwkBAwEBAQE?=
 =?us-ascii?q?BCCUKAQGEQAIXgks3Bg4BAwEBBAEBAgEEFAEBFjojDIVKAQEBAwEjBA1ABQU?=
 =?us-ascii?q?LAgEIGAICJgICAjAVEAIEAQ0FgyOBew8PphB8M4QyAYV4BoEMKAGNKj6BEYI?=
 =?us-ascii?q?Ufj6CSBkCgUoXF4JzglgEjVgtmkIDBAICgTBdhjOMXxuMVolrjGiHAI8VgWU?=
 =?us-ascii?q?hgVhxgzuFf4pTPwECMAGNNoEhAQE?=
X-IronPort-AV: E=Sophos;i="5.60,508,1549926000"; d="scan'208";a="44653158"
Received: from fgdemucivp01ltm.xch.fraunhofer.de (HELO
 FGDEMUCIMP12EXC.ads.fraunhofer.de) ([192.88.97.16])
 by mail-mtaKA26.fraunhofer.de with ESMTP/TLS/AES256-SHA;
 24 May 2019 23:34:39 +0200
Received: from FGDEMUCIMP01EXC.ads.fraunhofer.de ([10.80.232.40]) by
 FGDEMUCIMP12EXC.ads.fraunhofer.de ([10.80.232.43]) with mapi id
 14.03.0439.000; Fri, 24 May 2019 23:36:57 +0200
From: "Auer, Lukas" <lukas.auer@aisec.fraunhofer.de>
To: "Atish.Patra@wdc.com" <Atish.Patra@wdc.com>, "troy.benjegerdes@sifive.com"
 <troy.benjegerdes@sifive.com>
Subject: Re: 5.2-rc1 boot on Unleashed
Thread-Topic: 5.2-rc1 boot on Unleashed
Thread-Index: AQHVD2R0uxmIG8Hqw0GqPL8wYnLPmKZ3OmYAgAAPh4CAADOsgIABz/YAgAA8RYCAALTbgIAADbiAgAAHNgCAABuJgIAAEvwAgAAuiAA=
Date: Fri, 24 May 2019 21:34:38 +0000
Message-ID: <8c02365af7f3bfbb952ba298ee588dab66f71349.camel@aisec.fraunhofer.de>
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
In-Reply-To: <CAF5mof3_PSwpsSMnjMALpfvmOPdeAgDLa2p6jp4y+Hmas83mbw@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.80.233.51]
x-tm-as-product-ver: SMEX-11.0.0.4179-8.200.1013-24634.002
x-tm-as-result: No--20.074400-8.000000-31
x-tm-as-user-approved-sender: No
x-tm-as-user-blocked-sender: No
Content-ID: <467B0F603D7EB1478D3F81426B05D6DC@xch.fraunhofer.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_143444_742219_243DEB67 
X-CRM114-Status: GOOD (  34.03  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [153.97.7.23 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: "palmer@sifive.com" <palmer@sifive.com>, "jamez@wit.com" <jamez@wit.com>,
 "Anup.Patel@wdc.com" <Anup.Patel@wdc.com>,
 "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
 "bjorn.topel@gmail.com" <bjorn.topel@gmail.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "jcarr@wit.com" <jcarr@wit.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

T24gRnJpLCAyMDE5LTA1LTI0IGF0IDEzOjQ4IC0wNTAwLCBUcm95IEJlbmplZ2VyZGVzIHdyb3Rl
Og0KPiBXb3VsZCBhIHJlYXNvbmFibGUgYW5zd2VyIGJlIHR3byBkZXZpY2UgdHJlZXMsIG9uZSBm
b3IgTS1tb2RlIGFuZCBhbm90aGVyIGZvciBTLW1vZGU/DQo+IA0KPiBUaGlzIHdvdWxkIGxldCB1
cyBlYXNpbHkga2VlcCBzeW5jZWQgd2l0aCB0aGUga2VybmVsIHZlcnNpb24NCj4gDQoNClRoYXQg
bWFrZXMgc2Vuc2UsIEkgd2Fzbid0IGF3YXJlIG9mIHRoZSBERFIgaW5pdCBkYXRhIGluIHRoZSBk
ZXZpY2UNCnRyZWUuIEl0J3MgZ3JlYXQgdG8gc2VlIHRoYXQgeW91IGFyZSB3b3JraW5nIG9uIGFk
ZGluZyBzdXBwb3J0IGZvciB0aGUNCkREUiBjb250cm9sbGVyIHRvIFUtQm9vdCENCg0KVGhhdCB3
b3VsZCB3b3JrLCBidXQgcHJvYmFibHkgdGFrZXMgbW9yZSBlZmZvcnQgdG8gbWFpbnRhaW4gdGhh
biBpcw0KbmVlZGVkLiBGb3Igc2l0dWF0aW9ucyBsaWtlIHRoaXMsIHdoZXJlIHRoZSBVLUJvb3Qg
ZGV2aWNlIHRyZWUgcmVxdWlyZXMNCmEgZmV3IGFkZGl0aW9uYWwgZW50cmllcyBjb21wYXJlZCB3
aXRoIHRoZSBrZXJuZWwgZGV2aWNlIHRyZWUsIFUtQm9vdA0KcHJvdmlkZXMgYSB1c2VmdWwgZnVu
Y3Rpb24uIEl0IGF1dG9tYXRpY2FsbHkgaW5jbHVkZXMgW2JvYXJkLWR0c10tdS0NCmJvb3QuZHRz
aSBpbiB0aGUgY29tcGlsZWQgZGV2aWNlIHRyZWUsIHdoZXJlIFtib2FyZC1kdHNdLmR0cyBpcw0K
c3BlY2lmaWVkIGluIHRoZSBkZWZjb25maWcuIEluIHRoaXMgY2FzZSwgd2UgY2FuIGRpcmVjdGx5
IHVzZSBoaWZpdmUtDQp1bmxlYXNoZWQtYTAwLWZ1NTQwLmR0cyBmcm9tIHRoZSBrZXJuZWwgYW5k
IGFkZCBhIGhpZml2ZS11bmxlYXNoZWQtYTAwLQ0KZnU1NDAtdS1ib290LmR0c2kgd2l0aCB0aGUg
RERSIGNvbnRyb2xsZXIgZW50cmllcy4gU2luY2UgdGhleSBhcmUgb25seQ0KbmVlZGVkIGluIG1h
Y2hpbmUgbW9kZSwgd2UgY2FuIHVzZSBpZmRlZnMgdG8gcmVtb3ZlIHRoZW0gaW4gc3VwZXJ2aXNv
cg0KbW9kZSBidWlsZHMuDQoNClRoYW5rcywNCkx1a2FzDQoNCj4gT24gRnJpLCBNYXkgMjQsIDIw
MTksIDEyOjQwIFBNIEF0aXNoIFBhdHJhIDxhdGlzaC5wYXRyYUB3ZGMuY29tPiB3cm90ZToNCj4g
PiBPbiA1LzI0LzE5IDk6MDEgQU0sIFRyb3kgQmVuamVnZXJkZXMgd3JvdGU6DQo+ID4gPiANCj4g
PiA+IA0KPiA+ID4+IE9uIE1heSAyNCwgMjAxOSwgYXQgMTA6MzUgQU0sIEF1ZXIsIEx1a2FzIDxs
dWthcy5hdWVyQGFpc2VjLmZyYXVuaG9mZXIuZGU+IHdyb3RlOg0KPiA+ID4+DQo+ID4gPj4gT24g
RnJpLCAyMDE5LTA1LTI0IGF0IDA5OjQ2IC0wNTAwLCBUcm95IEJlbmplZ2VyZGVzIHdyb3RlOg0K
PiA+ID4+Pj4gT24gTWF5IDIzLCAyMDE5LCBhdCAxMDo1OSBQTSwgQXRpc2ggUGF0cmEgPGF0aXNo
LnBhdHJhQHdkYy5jb20+IHdyb3RlOg0KPiA+ID4+Pj4NCj4gPiA+Pj4+IE9uIDUvMjMvMTkgNToy
MyBQTSwgVHJveSBCZW5qZWdlcmRlcyB3cm90ZToNCj4gPiA+Pj4+Pj4gT24gTWF5IDIyLCAyMDE5
LCBhdCAzOjQzIFBNLCBQYXVsIFdhbG1zbGV5IDxwYXVsLndhbG1zbGV5QHNpZml2ZS5jb20+IHdy
b3RlOg0KPiA+ID4+Pj4+Pg0KPiA+ID4+Pj4+PiArIEFudXAsIFRyb3kNCj4gPiA+Pj4+Pj4NCj4g
PiA+Pj4+Pj4gT24gV2VkLCAyMiBNYXkgMjAxOSwgQXRpc2ggUGF0cmEgd3JvdGU6DQo+ID4gPj4+
Pj4+DQo+ID4gPj4+Pj4+PiBPbiA1LzIyLzE5IDk6NDIgQU0sIFBhdWwgV2FsbXNsZXkgd3JvdGU6
DQo+ID4gPj4+Pj4+Pj4gQW0gY2hlY2tpbmcgb24gdGhpcyBub3cgYW5kIGhvcGUgdG8gaGF2ZSBz
b21lIGNvbmNsdXNpb24gb24gaXQgdGhpcyB3ZWVrLg0KPiA+ID4+Pj4+Pj4NCj4gPiA+Pj4+Pj4+
IFRoYW5rcy4gQW55IGNoYW5jZSB5b3UgY2FuIHRha2UgYSBsb29rIGF0IHRoZSBVLUJvb3QgY2xv
Y2sgZHJpdmVyIHRvIHBhdGNoIGl0DQo+ID4gPj4+Pj4+PiBhcyBwZXIgdGhlIERUIGNoYW5nZXMg
Pw0KPiA+ID4+Pj4+Pg0KPiA+ID4+Pj4+PiBJIHByb2JhYmx5IHdvbid0IGhhdmUgdGhlIGNoYW5j
ZSB0byBnZXQgdG8gaXQgZm9yIGEgd2hpbGUuICBMb29rcyBsaWtlDQo+ID4gPj4+Pj4+IEFudXAg
d2FzIHRoZSBvbmUgd2hvIHBvc3RlZCB0aGUgY2xvY2sgZHJpdmVyIHRvIFUtQm9vdCAtIGNhbiBo
ZSB0YWtlIGENCj4gPiA+Pj4+Pj4gbG9vayBhdCBpdD8NCj4gPiA+Pj4+Pj4NCj4gPiA+Pj4+Pj4g
V2UndmUgYWxzbyBhc2tlZCBUcm95IHRvIGxvb2sgYXQgdXBzdHJlYW0gVS1ib290IHJlbGF0ZWQg
aXNzdWVzLCBidXQNCj4gPiA+Pj4+Pj4gSSdtIHVuc3VyZSB3aGVuIHBhdGNoZXMgd2lsbCBzdGFy
dCBmbG93aW5nIHVwc3RyZWFtLg0KPiA+ID4+Pj4+Pg0KPiA+ID4+Pj4+Pg0KPiA+ID4+Pj4+PiAt
IFBhdWwNCj4gPiA+Pj4+PiBJ4oCZZCBwcmVmZXIgdG8gaG9sZCBvZmYgb24gYW55IGNoYW5nZXMg
dG8gVS1ib290IHVudGlsIHdlIGhhdmUgYSBtb3JlIGNvbXBsZXRlIHBhdGNoIHNldC4gR1BJTyBh
bmQgZXRoZXJuZXQgZW50cmllcyBhcmUgbWlzc2luZyBmcm9tIHRob3NlIGRldmljZSB0cmVlcywg
YW5kIHdlIGhhdmUgYSB3b3JraW5nIFUtYm9vdCBkZXZpY2UgdHJlZSBub3cuIElmIHRoZSBrZXJu
ZWwgbmVlZHMgc29tZXRoaW5nIGRpZmZlcmVudCB3ZSBjYW4gbG9hZCB0aGUgZGV2aWNlIHRyZWUg
dGhlIGtlcm5lbCBuZWVkcyBmb3IgYXdoaWxlLg0KPiA+ID4+Pj4NCj4gPiA+Pj4+IEkgZG9uJ3Qg
dGhpbmsgdGhhdCdzIGEgZ29vZCBpZGVhLiBJdCB3aWxsIHVubmVjZXNzYXJpbHkgYmxvY2sgZXZl
cnlib2R5J3Mgc2V0dXAgdGhhdCBpcyBzdXBwb3NlZCB0byB3b3JrIHdpdGggVS1Cb290LiBJIHBy
ZWZlciBpZiB3ZSBjYW4gcGF0Y2ggVS1Cb290IGFuZCB1bmJsb2NrIGV2ZXJ5Ym9keSBzb29uZXIg
dGhhbiBsYXRlci4NCj4gPiA+Pj4+DQo+ID4gPj4+Pj4gVGhlIFUtYm9vdCBkZXZpY2UgdHJlZSBp
cyBnb2luZyB0byBoYXZlIHNvbWUgdGhpbmdzIGluIGl0IHRoZSBrZXJuZWwgZG9lc27igJl0IGNh
cmUgYWJvdXQgYW55d2F5LCBzbyB3ZeKAmXZlIGFscmVhZHkgZ290IGRpdmVyZ2VuY2UgYmV0d2Vl
biB0aGUgdHdvLiBJZGVhbGx5IHRoZSBVLWJvb3QgdmVyc2lvbiBpcyBhIHN1cGVyc2V0IG9mIHRo
ZSBrZXJuZWwgdmVyc2lvbi4gV2UgYWxyZWFkeSBoYWQgb25lIGRpc3J1cHRpdmUgY2hhbmdlIHdp
dGggdGhlIGNsb2NrIGRyaXZlciwgc28gd2hhdCBpcyB0byBwcmV2ZW50IHRoZXJlIHRvIGJlIG1v
cmUgZGlzcnVwdGl2ZSBjaGFuZ2VzIGluIHRoZSBldGhlcm5ldC9HUElPIGRldmljZSB0cmVlIGVu
dHJpZXMgdGhhdCBnbyBpbiB0aGUga2VybmVsIHVubGVzcyB3ZSBoYXZlIGEgZHJhZnQgb2Ygd2hh
dCB0aG9zZSBlbnRyaWVzIHNob3VsZCBsb29rIGxpa2UgdGhhdCBpcyBhY2NlcHRhYmxlPw0KPiA+
ID4+Pj4gSUlSQywgY3VycmVudCBVLUJvb3QgUyBtb2RlIHBvcnQgZG9lc24ndCBuZWVkIGEgR1BJ
TyBkcml2ZXIgYW5kIGV0aGVybmV0IGRyaXZlciBpcyBwcm92aWRlZCBieSB0aGUgY29tbW9uIG1h
Y2IgZHJpdmVyLiBJZiB0aGVyZSBhcmUgYW55IERUIGNoYW5nZXMgc3VnZ2VzdGVkIGJ5IGtlcm5l
bCwgd2UgY2FuIGFsd2F5cyBwYXRjaCBVLUJvb3QuDQo+ID4gPj4+DQo+ID4gPj4+IFRoZSBNLW1v
ZGUgcG9ydCB3aWxsIG5lZWQgYSBHUElPIGRyaXZlciwgYXMgdGhlIG1hY2IgZHJpdmVyIG5lZWRz
IHByb3BlciBhIHByb3BlciBHUElPIGRyaXZlciB0byByZXNldCB0aGUgcGh5Lg0KPiA+ID4+Pg0K
PiA+ID4+PiBJIGhhdmUgbm8gaXNzdWVzIHVwZGF0aW5nIHRoZSBQUkNJIGRyaXZlciBEVCBmb3Jt
YXQgaWYgd2UgYWxzbyBoYXZlIHRoZSByZXN0IG9mIHRoZSBEVCBlbnRyaWVzIG5lZWRlZCB0byBi
b290IGEgd29ya2luZyBzeXN0ZW0sIEkganVzdCBoYXZlIG5vdCBzZWVuIGFuIGV4YW1wbGUgb2Yg
dGhhdCBvdGhlciB0aGFuIHdoYXQgSSBoYXZlIGF0IGh0dHBzOi8vZ2l0aHViLmNvbS9zaWZpdmUv
SGlGaXZlX1UtQm9vdC9ibG9iL3JlZ3Jlc3Npb24vYXJjaC9yaXNjdi9kdHMvaGlmaXZlX3U1NDAu
ZHRzDQo+ID4gPj4NCj4gPiA+PiBNeSBwbGFuIHdhcyB0byBhZGQgdGhlIFNpRml2ZSBIaUZpdmUg
VW5sZWFzaGVkIGRldmljZSB0cmVlIHRvIFUtQm9vdCwNCj4gPiA+PiBvbmNlIHRoZSByZWxldmFu
dCBrZXJuZWwgcGF0Y2hlcyB3aXRoIHRoZSBkZXZpY2UgdHJlZSBnZXQgbWVyZ2VkLiBJDQo+ID4g
Pj4gd291bGQga2VlcCBib3RoIGlkZW50aWNhbCB0byBtYWtlIGl0IGVhc2llciB0byBzeW5jIGNo
YW5nZXMgZnJvbSB0aGUNCj4gPiA+PiBrZXJuZWwgd2l0aCBVLUJvb3QuDQo+ID4gPj4NCj4gPiAN
Cj4gPiBUaGF0IG1ha2VzIHNlbnNlLg0KPiA+IA0KPiA+ID4+IFRoYW5rcywNCj4gPiA+PiBMdWth
cw0KPiA+ID4gDQo+ID4gPiBXZSBuZWVkIHRvIHN1cHBvcnQgVWJvb3QgaW4gTS1tb2RlIGFzIHRo
ZSBmaXJzdC1zdGFnZSBib290bG9hZGVyLCANCj4gPiANCj4gPiBHcmVhdC4gV2Ugd2lsbCBoYXZl
IGZvbGxvd2luZyBib290IGZsb3cgaW4gdGhhdCBjYXNlLg0KPiA+IA0KPiA+IFUtQm9vdCAoTS1N
b2RlKS0+T3BlblNCSS9CQkwtPlUtQm9vdChTLU1vZGUpLT5MaW51eC4NCj4gPiANCj4gPiBJIGFt
IG1vcmUgY29uY2VybmVkIGFib3V0IGJyZWFrYWdlIGFuZCBwYXRjaGluZyBvZiBVLUJvb3QgUyBt
b2RlIGF0IHRoaXMgDQo+ID4gcG9pbnQuDQo+ID4gDQo+ID4gYW5kIHRoaXMgd2lsbCByZXF1aXJl
IEREUiBpbml0IGNvZGUuIFRoZSBiZXN0IHdheSB0byBkbyB0aGF0IHNlZW1zIHRvIGJlIA0KPiA+
IGZvbGxvdyB0aGUgZXhhbXBsZSB0aGF0IHdhcyB1c2VkIGZvciBhIFJvY2tjaGlwIHBhcnQgd2l0
aCBhIHNpbWlsaWFyIEREUiANCj4gPiBjb250cm9sbGVyIElQLiBUaGUgRERSIGluaXQgY29kZSB1
c2VzIGJvYXJkLXNwZWNpZmljIGRhdGEgZnJvbSB0aGUgDQo+ID4gZGV2aWNlIHRyZWUgdG8gcHJv
Z3JhbSB0aGUgY29udHJvbGxlciwgc28gdGhlIE0tbW9kZSBVYm9vdCB3aWxsIG5lZWQgdG8gDQo+
ID4gaGF2ZSBlbnRyaWVzIHRoZSBrZXJuZWwgZG9lc27igJl0IGNhcmUgYWJvdXQuDQo+ID4gPiAN
Cj4gPiA+IElmIHdlIGFyZSBnb2luZyB0byBrZWVwIGJvdGggVS1ib290IGFuZCBLZXJuZWwgZGV2
aWNlIHRyZWVzIGlkZW50aWNhbCB0aGVuIHdlIG5lZWQgc29tZSBidXktaW4gYW5kIGFncmVlbWVu
dCBmcm9tIGtlcm5lbCBkZXZlbG9wZXJzIG9uIGhvdyB0aGF0IGRhdGEgZ29lcyBpbiB0aGUga2Vy
bmVsLg0KPiA+ID4gDQo+ID4gPiBJdCBzZWVtcyBhIGxvdCBlYXNpZXIgaWYgd2UgdXNlIGluY2x1
ZGUgZmlsZXMgYW5kIHRoZSBVLWJvb3QgZGV2aWNlIHRyZWUgaGFzIGEgZmV3IGV4dHJhIGluY2x1
ZGVzIGZvciBERFIgaW5pdCBhbmQgb3RoZXIgdGhpbmdzIHRoYXQgYXJlIG5vdCByZWxldmFudCB0
byB0aGUga2VybmVsLg0KPiA+ID4gDQo+ID4gDQo+ID4gDQpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1yaXNjdiBtYWlsaW5nIGxpc3QKbGludXgt
cmlzY3ZAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXJpc2N2Cg==
