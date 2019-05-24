Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A78D529B2F
	for <lists+linux-riscv@lfdr.de>; Fri, 24 May 2019 17:36:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/ccYoUpdd4xjtxeu+vJrJeCYpknkrGq6PFXKKnrGVO8=; b=LMN2mJFGKxLR93
	Jsj51vI42HSXEbYvHtDGi4IEZ3pNG65SeHCoMaEjb846Yc4LonVioP7oe+8ILxjyqbOHXgomq5md6
	VszGy4cStsjo+ls/7N10n7lDwklA/Jwk6RmLsg/bzDGGuuZCzQa5t/URwbMChgncWQpJqu2xT6c1l
	GKDTA6L+q+JnnCY60oIu3gJJj6MJ2tIpon/9f2vSTMfR4YnD1j3mzIEuPqPwrWlYhzZbpljDggzk4
	VcIj9C/mAGrRp+aLSGzFwPo+UgLiZkPluKyT3WeheLi0Q143nSV+GKzeh4o+q4cQBRYhk+SqqAb61
	yCsXJl8G7xPb2FSS1ZnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUCEp-0007eD-9S; Fri, 24 May 2019 15:36:07 +0000
Received: from mail-edges23.fraunhofer.de ([153.97.7.23])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUCEl-0007cl-3b
 for linux-riscv@lists.infradead.org; Fri, 24 May 2019 15:36:05 +0000
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2EKAADcDuhc/xmnZsBlGgEBAQEBAgE?=
 =?us-ascii?q?BAQEHAgEBAQGBUwMBAQEBCwGBYS9pUiASKAqECYh7jB2YWBSBKzwJAQEBAQE?=
 =?us-ascii?q?BAQEBCCUKAQEChD4CF4IpIzYHDgEDAQEFAQEBAQQCAmkcDIJ0BE07MAEBAQE?=
 =?us-ascii?q?BAQEBAQEBAQEBARoCDWQBBSMRRRACAQgYAgImAgICMBUQAgQBDQWDI4IKD6Y?=
 =?us-ascii?q?JgS+EMgGGAAaBDCgBi1KBWD6BEYMSPoJIGQKBSheDCoJYBI1YLZpCAwQCAoE?=
 =?us-ascii?q?wXYYzjF8bjFaJa4xohwCPFYFWCCqBV3GDO4V/ilM/AQExjWyBIQEB?=
X-IPAS-Result: =?us-ascii?q?A2EKAADcDuhc/xmnZsBlGgEBAQEBAgEBAQEHAgEBAQGBU?=
 =?us-ascii?q?wMBAQEBCwGBYS9pUiASKAqECYh7jB2YWBSBKzwJAQEBAQEBAQEBCCUKAQECh?=
 =?us-ascii?q?D4CF4IpIzYHDgEDAQEFAQEBAQQCAmkcDIJ0BE07MAEBAQEBAQEBAQEBAQEBA?=
 =?us-ascii?q?RoCDWQBBSMRRRACAQgYAgImAgICMBUQAgQBDQWDI4IKD6YJgS+EMgGGAAaBD?=
 =?us-ascii?q?CgBi1KBWD6BEYMSPoJIGQKBSheDCoJYBI1YLZpCAwQCAoEwXYYzjF8bjFaJa?=
 =?us-ascii?q?4xohwCPFYFWCCqBV3GDO4V/ilM/AQExjWyBIQEB?=
X-IronPort-AV: E=Sophos;i="5.60,507,1549926000"; d="scan'208";a="11076076"
Received: from mail-mtadd25.fraunhofer.de ([192.102.167.25])
 by mail-edgeS23.fraunhofer.de with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 May 2019 17:35:51 +0200
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0AJAAATDuhcfRBhWMBlGgEBAQEBAgE?=
 =?us-ascii?q?BAQEHAgEBAQGBUwMBAQEBCwGBYYEYUQEgEigKhAmIe4wdmFgUgWcJAQMBAQE?=
 =?us-ascii?q?BAQglCgEBhEACF4JLNgcOAQMBAQQBAQIBBBQBARY6IwyFSwECAyMRRRACAQg?=
 =?us-ascii?q?YAgImAgICMBUQAgQBDQWDI4IKD6YGgS+EMgGGAAaBDCgBjSo+gRGDEj6CSBk?=
 =?us-ascii?q?CgUoXgwqCWASNWC2aQgMEAgKBMF2GM4xfG4xWiWuMaIcAjxWBVggogVhxgzu?=
 =?us-ascii?q?Ff4pTPwECMI1sgSEBAQ?=
X-IronPort-AV: E=Sophos;i="5.60,507,1549926000"; d="scan'208";a="46108436"
Received: from fgdemucivp01ltm.xch.fraunhofer.de (HELO
 FGDEMUCIMP12EXC.ads.fraunhofer.de) ([192.88.97.16])
 by mail-mtaDD25.fraunhofer.de with ESMTP/TLS/AES256-SHA;
 24 May 2019 17:35:48 +0200
Received: from FGDEMUCIMP01EXC.ads.fraunhofer.de ([10.80.232.40]) by
 FGDEMUCIMP12EXC.ads.fraunhofer.de ([10.80.232.43]) with mapi id
 14.03.0439.000; Fri, 24 May 2019 17:35:48 +0200
From: "Auer, Lukas" <lukas.auer@aisec.fraunhofer.de>
To: "atish.patra@wdc.com" <atish.patra@wdc.com>, "troy.benjegerdes@sifive.com"
 <troy.benjegerdes@sifive.com>
Subject: Re: 5.2-rc1 boot on Unleashed
Thread-Topic: 5.2-rc1 boot on Unleashed
Thread-Index: AQHVD2R0uxmIG8Hqw0GqPL8wYnLPmKZ3OmYAgAAPh4CAADOsgIABz/YAgAA8RYCAALTbgIAADbiA
Date: Fri, 24 May 2019 15:35:48 +0000
Message-ID: <b59c5bba240ef42f90ec26f8588a444391df02c2.camel@aisec.fraunhofer.de>
References: <5c1ffb76-b18a-dbae-d3ad-f3d2cd41ee44@wdc.com>
 <alpine.DEB.2.21.9999.1905220942040.20842@viisi.sifive.com>
 <db248e63-c0bc-7fd8-cf2d-d13c8f140036@wdc.com>
 <alpine.DEB.2.21.9999.1905221334460.23235@viisi.sifive.com>
 <8F4FB234-FD5B-4AD6-99BD-57A40A79A024@sifive.com>
 <aac8c9b2-1b8d-e87d-88a5-f13222004a88@wdc.com>
 <2818D3E3-3BDB-442B-822D-0FD221BCCA05@sifive.com>
In-Reply-To: <2818D3E3-3BDB-442B-822D-0FD221BCCA05@sifive.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.80.233.50]
x-tm-as-product-ver: SMEX-11.0.0.4179-8.200.1013-24634.002
x-tm-as-result: No--15.986100-8.000000-31
x-tm-as-user-approved-sender: No
x-tm-as-user-blocked-sender: No
Content-ID: <07066489519B454793CB0DAC94E4B6B7@xch.fraunhofer.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_083603_449848_1ED2371F 
X-CRM114-Status: GOOD (  23.19  )
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
Cc: "Anup.Patel@wdc.com" <Anup.Patel@wdc.com>,
 "bjorn.topel@gmail.com" <bjorn.topel@gmail.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "palmer@sifive.com" <palmer@sifive.com>,
 "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

T24gRnJpLCAyMDE5LTA1LTI0IGF0IDA5OjQ2IC0wNTAwLCBUcm95IEJlbmplZ2VyZGVzIHdyb3Rl
Og0KPiA+IE9uIE1heSAyMywgMjAxOSwgYXQgMTA6NTkgUE0sIEF0aXNoIFBhdHJhIDxhdGlzaC5w
YXRyYUB3ZGMuY29tPiB3cm90ZToNCj4gPiANCj4gPiBPbiA1LzIzLzE5IDU6MjMgUE0sIFRyb3kg
QmVuamVnZXJkZXMgd3JvdGU6DQo+ID4gPiA+IE9uIE1heSAyMiwgMjAxOSwgYXQgMzo0MyBQTSwg
UGF1bCBXYWxtc2xleSA8cGF1bC53YWxtc2xleUBzaWZpdmUuY29tPiB3cm90ZToNCj4gPiA+ID4g
DQo+ID4gPiA+ICsgQW51cCwgVHJveQ0KPiA+ID4gPiANCj4gPiA+ID4gT24gV2VkLCAyMiBNYXkg
MjAxOSwgQXRpc2ggUGF0cmEgd3JvdGU6DQo+ID4gPiA+IA0KPiA+ID4gPiA+IE9uIDUvMjIvMTkg
OTo0MiBBTSwgUGF1bCBXYWxtc2xleSB3cm90ZToNCj4gPiA+ID4gPiA+IEFtIGNoZWNraW5nIG9u
IHRoaXMgbm93IGFuZCBob3BlIHRvIGhhdmUgc29tZSBjb25jbHVzaW9uIG9uIGl0IHRoaXMgd2Vl
ay4NCj4gPiA+ID4gPiANCj4gPiA+ID4gPiBUaGFua3MuIEFueSBjaGFuY2UgeW91IGNhbiB0YWtl
IGEgbG9vayBhdCB0aGUgVS1Cb290IGNsb2NrIGRyaXZlciB0byBwYXRjaCBpdA0KPiA+ID4gPiA+
IGFzIHBlciB0aGUgRFQgY2hhbmdlcyA/DQo+ID4gPiA+IA0KPiA+ID4gPiBJIHByb2JhYmx5IHdv
bid0IGhhdmUgdGhlIGNoYW5jZSB0byBnZXQgdG8gaXQgZm9yIGEgd2hpbGUuICBMb29rcyBsaWtl
DQo+ID4gPiA+IEFudXAgd2FzIHRoZSBvbmUgd2hvIHBvc3RlZCB0aGUgY2xvY2sgZHJpdmVyIHRv
IFUtQm9vdCAtIGNhbiBoZSB0YWtlIGENCj4gPiA+ID4gbG9vayBhdCBpdD8NCj4gPiA+ID4gDQo+
ID4gPiA+IFdlJ3ZlIGFsc28gYXNrZWQgVHJveSB0byBsb29rIGF0IHVwc3RyZWFtIFUtYm9vdCBy
ZWxhdGVkIGlzc3VlcywgYnV0DQo+ID4gPiA+IEknbSB1bnN1cmUgd2hlbiBwYXRjaGVzIHdpbGwg
c3RhcnQgZmxvd2luZyB1cHN0cmVhbS4NCj4gPiA+ID4gDQo+ID4gPiA+IA0KPiA+ID4gPiAtIFBh
dWwNCj4gPiA+IEnigJlkIHByZWZlciB0byBob2xkIG9mZiBvbiBhbnkgY2hhbmdlcyB0byBVLWJv
b3QgdW50aWwgd2UgaGF2ZSBhIG1vcmUgY29tcGxldGUgcGF0Y2ggc2V0LiBHUElPIGFuZCBldGhl
cm5ldCBlbnRyaWVzIGFyZSBtaXNzaW5nIGZyb20gdGhvc2UgZGV2aWNlIHRyZWVzLCBhbmQgd2Ug
aGF2ZSBhIHdvcmtpbmcgVS1ib290IGRldmljZSB0cmVlIG5vdy4gSWYgdGhlIGtlcm5lbCBuZWVk
cyBzb21ldGhpbmcgZGlmZmVyZW50IHdlIGNhbiBsb2FkIHRoZSBkZXZpY2UgdHJlZSB0aGUga2Vy
bmVsIG5lZWRzIGZvciBhd2hpbGUuDQo+ID4gDQo+ID4gSSBkb24ndCB0aGluayB0aGF0J3MgYSBn
b29kIGlkZWEuIEl0IHdpbGwgdW5uZWNlc3NhcmlseSBibG9jayBldmVyeWJvZHkncyBzZXR1cCB0
aGF0IGlzIHN1cHBvc2VkIHRvIHdvcmsgd2l0aCBVLUJvb3QuIEkgcHJlZmVyIGlmIHdlIGNhbiBw
YXRjaCBVLUJvb3QgYW5kIHVuYmxvY2sgZXZlcnlib2R5IHNvb25lciB0aGFuIGxhdGVyLg0KPiA+
IA0KPiA+ID4gVGhlIFUtYm9vdCBkZXZpY2UgdHJlZSBpcyBnb2luZyB0byBoYXZlIHNvbWUgdGhp
bmdzIGluIGl0IHRoZSBrZXJuZWwgZG9lc27igJl0IGNhcmUgYWJvdXQgYW55d2F5LCBzbyB3ZeKA
mXZlIGFscmVhZHkgZ290IGRpdmVyZ2VuY2UgYmV0d2VlbiB0aGUgdHdvLiBJZGVhbGx5IHRoZSBV
LWJvb3QgdmVyc2lvbiBpcyBhIHN1cGVyc2V0IG9mIHRoZSBrZXJuZWwgdmVyc2lvbi4gV2UgYWxy
ZWFkeSBoYWQgb25lIGRpc3J1cHRpdmUgY2hhbmdlIHdpdGggdGhlIGNsb2NrIGRyaXZlciwgc28g
d2hhdCBpcyB0byBwcmV2ZW50IHRoZXJlIHRvIGJlIG1vcmUgZGlzcnVwdGl2ZSBjaGFuZ2VzIGlu
IHRoZSBldGhlcm5ldC9HUElPIGRldmljZSB0cmVlIGVudHJpZXMgdGhhdCBnbyBpbiB0aGUga2Vy
bmVsIHVubGVzcyB3ZSBoYXZlIGEgZHJhZnQgb2Ygd2hhdCB0aG9zZSBlbnRyaWVzIHNob3VsZCBs
b29rIGxpa2UgdGhhdCBpcyBhY2NlcHRhYmxlPw0KPiA+IElJUkMsIGN1cnJlbnQgVS1Cb290IFMg
bW9kZSBwb3J0IGRvZXNuJ3QgbmVlZCBhIEdQSU8gZHJpdmVyIGFuZCBldGhlcm5ldCBkcml2ZXIg
aXMgcHJvdmlkZWQgYnkgdGhlIGNvbW1vbiBtYWNiIGRyaXZlci4gSWYgdGhlcmUgYXJlIGFueSBE
VCBjaGFuZ2VzIHN1Z2dlc3RlZCBieSBrZXJuZWwsIHdlIGNhbiBhbHdheXMgcGF0Y2ggVS1Cb290
Lg0KPiANCj4gVGhlIE0tbW9kZSBwb3J0IHdpbGwgbmVlZCBhIEdQSU8gZHJpdmVyLCBhcyB0aGUg
bWFjYiBkcml2ZXIgbmVlZHMgcHJvcGVyIGEgcHJvcGVyIEdQSU8gZHJpdmVyIHRvIHJlc2V0IHRo
ZSBwaHkuDQo+IA0KPiBJIGhhdmUgbm8gaXNzdWVzIHVwZGF0aW5nIHRoZSBQUkNJIGRyaXZlciBE
VCBmb3JtYXQgaWYgd2UgYWxzbyBoYXZlIHRoZSByZXN0IG9mIHRoZSBEVCBlbnRyaWVzIG5lZWRl
ZCB0byBib290IGEgd29ya2luZyBzeXN0ZW0sIEkganVzdCBoYXZlIG5vdCBzZWVuIGFuIGV4YW1w
bGUgb2YgdGhhdCBvdGhlciB0aGFuIHdoYXQgSSBoYXZlIGF0IGh0dHBzOi8vZ2l0aHViLmNvbS9z
aWZpdmUvSGlGaXZlX1UtQm9vdC9ibG9iL3JlZ3Jlc3Npb24vYXJjaC9yaXNjdi9kdHMvaGlmaXZl
X3U1NDAuZHRzDQoNCk15IHBsYW4gd2FzIHRvIGFkZCB0aGUgU2lGaXZlIEhpRml2ZSBVbmxlYXNo
ZWQgZGV2aWNlIHRyZWUgdG8gVS1Cb290LA0Kb25jZSB0aGUgcmVsZXZhbnQga2VybmVsIHBhdGNo
ZXMgd2l0aCB0aGUgZGV2aWNlIHRyZWUgZ2V0IG1lcmdlZC4gSQ0Kd291bGQga2VlcCBib3RoIGlk
ZW50aWNhbCB0byBtYWtlIGl0IGVhc2llciB0byBzeW5jIGNoYW5nZXMgZnJvbSB0aGUNCmtlcm5l
bCB3aXRoIFUtQm9vdC4NCg0KVGhhbmtzLA0KTHVrYXMNCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LXJpc2N2IG1haWxpbmcgbGlzdApsaW51eC1y
aXNjdkBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcmlzY3YK
