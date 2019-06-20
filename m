Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 329494DB35
	for <lists+linux-riscv@lfdr.de>; Thu, 20 Jun 2019 22:26:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MDXA7gxH30lPokrjbFxHAnvkxMGxhvSFsmn9U4Ir9Uo=; b=FhsI3rLv0Qt2QT
	2h19MgQzIwMhdkN4MTwPP56iXb5UcYrnkdlLA3b+jg67gyzzwFh8DajOVCp/1W+vVt0mKvursqMLb
	apD/pX0jQOw8bt0/Olw4WGAmi7hJATlQxi13cI47YQ7oRmGt7o+OslIoC7+ick57xS16LJ4YthTAX
	Y8iiUVbnnkRcxfDmae+4lTfvXyEdZD9uo6h4Wjt/M+GRhkNvQj9NSVpo/7hOM3qgNIS3FuXVCM1hf
	clv9V/Nn3Hc2y6g610hssPXLW5P8rkdP33dJ0a2pICbjzg8iB+0yQpBXSMMZQl8KKbZThrLPmbQIJ
	NB0oBWjIbK6R6RYTkT/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1he3ds-0002FR-Sw; Thu, 20 Jun 2019 20:26:44 +0000
Received: from mail-edgeka27.fraunhofer.de ([153.96.1.27])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1he3do-0002Ej-F3
 for linux-riscv@lists.infradead.org; Thu, 20 Jun 2019 20:26:42 +0000
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2FiAABt6wtd/xmnZsBlGgEBAQEBAgE?=
 =?us-ascii?q?BAQEHAgEBAQGBZ4FtKmpUMCgKhAyIe4wKiUWQXzwJAQEBAQEBAQEBCBgLDAE?=
 =?us-ascii?q?BAoQ+AheCSCM4EwEDAQEFAQEBAQUCAmmKNwyCdARNOzABAQEBAQEBAQEBAQE?=
 =?us-ascii?q?BAQEaAg1kAQEEAQEhEToLEAIBCBgCAiYCAgIfBgEKFRACBAENBRQHgwiBagM?=
 =?us-ascii?q?dD6gNgTGEMgGDUg2CJYEMKItegVg+gRGCFFAuPoIaRwEBA4FRR4JQglgEjCK?=
 =?us-ascii?q?Bby6acj4DBAICgTRdhkqIEoERg20bgihqhiGDXoosjSGBLIV7gWuOB4FnIoF?=
 =?us-ascii?q?YcU+CbAmDXQEJgkGFFIU/PwEBMY0lgS+BIQEB?=
X-IPAS-Result: =?us-ascii?q?A2FiAABt6wtd/xmnZsBlGgEBAQEBAgEBAQEHAgEBAQGBZ?=
 =?us-ascii?q?4FtKmpUMCgKhAyIe4wKiUWQXzwJAQEBAQEBAQEBCBgLDAEBAoQ+AheCSCM4E?=
 =?us-ascii?q?wEDAQEFAQEBAQUCAmmKNwyCdARNOzABAQEBAQEBAQEBAQEBAQEaAg1kAQEEA?=
 =?us-ascii?q?QEhEToLEAIBCBgCAiYCAgIfBgEKFRACBAENBRQHgwiBagMdD6gNgTGEMgGDU?=
 =?us-ascii?q?g2CJYEMKItegVg+gRGCFFAuPoIaRwEBA4FRR4JQglgEjCKBby6acj4DBAICg?=
 =?us-ascii?q?TRdhkqIEoERg20bgihqhiGDXoosjSGBLIV7gWuOB4FnIoFYcU+CbAmDXQEJg?=
 =?us-ascii?q?kGFFIU/PwEBMY0lgS+BIQEB?=
X-IronPort-AV: E=Sophos;i="5.63,398,1557180000"; d="scan'208";a="15701620"
Received: from mail-mtadd25.fraunhofer.de ([192.102.167.25])
 by mail-edgeKA27.fraunhofer.de with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Jun 2019 22:26:28 +0200
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0BVAADJ6gtdfRBhWMBlGgEBAQEBAgE?=
 =?us-ascii?q?BAQEHAgEBAQGBZ4FtgRRRAQEfEigKhAyIe4wKiUWRGwkBAwEBAQEBCBgLDAE?=
 =?us-ascii?q?BhEACF4JqOBMBAwEBBAEBAgEFFAEBFjqKPgyFSwEBBAEBIRE6CxACAQgYAgI?=
 =?us-ascii?q?mAgICHwYBChUQAgQBDQUUB4MIgWoDHQ+oCoExhDIBg1INgiWBDCiNNj6BEYI?=
 =?us-ascii?q?UUC4+ghpHAQEDgVFHglCCWASMIoFvLppyPgMEAgKBNF2GSogSgRGDbRuCKGq?=
 =?us-ascii?q?GIYNeiiyNIYEshXuBa44HgWcggVlxT4JsCYNdAQmCQYUUhT8/AQIwjSWBL4E?=
 =?us-ascii?q?hAQE?=
X-IronPort-AV: E=Sophos;i="5.63,398,1557180000"; d="scan'208";a="49480482"
Received: from fgdemucivp01ltm.xch.fraunhofer.de (HELO
 FGDEMUCIMP11EXC.ads.fraunhofer.de) ([192.88.97.16])
 by mail-mtaDD25.fraunhofer.de with ESMTP/TLS/AES256-SHA;
 20 Jun 2019 22:26:22 +0200
Received: from FGDEMUCIMP01EXC.ads.fraunhofer.de ([10.80.232.40]) by
 FGDEMUCIMP11EXC.ads.fraunhofer.de ([10.80.232.42]) with mapi id
 14.03.0439.000; Thu, 20 Jun 2019 22:26:16 +0200
From: "Auer, Lukas" <lukas.auer@aisec.fraunhofer.de>
To: "david.abdurachmanov@gmail.com" <david.abdurachmanov@gmail.com>,
 "troy.benjegerdes@sifive.com" <troy.benjegerdes@sifive.com>
Subject: Re: HiFive Unleashed DT problem with 5.3-rc1 upstream kernel
Thread-Topic: HiFive Unleashed DT problem with 5.3-rc1 upstream kernel
Thread-Index: AQHVJtp2Vbn1cnDTo0uy/ltEdR/PiqajvwOAgAD1NoCAAAuqAIAAB/YAgAAVt4A=
Date: Thu, 20 Jun 2019 20:26:16 +0000
Message-ID: <20dee56ac6a6e6d75bfcc433cc6dd746a6a61d03.camel@aisec.fraunhofer.de>
References: <338f944c74c7540f71c27f30f5b46405b8440de3.camel@wdc.com>
 <c4a72786b3bee65ca2d5971e42cb22edf6cf7fce.camel@wdc.com>
 <CAAhSdy2-2tQ_ToRqBcB=q6Z5biZMvfQ9ok7hW508KjJM9fMNJQ@mail.gmail.com>
 <d66f7e401e27bcc486e6cf94eab3fd2ad9c0be30.camel@wdc.com>
 <CAEn-LTq2bhbz3hJfU1Gcr1d_e=Om24S6=2f1PW0BWn7aXwPgHw@mail.gmail.com>
 <99A71EAD-A6CA-4BEC-B7C8-1711A76C5A76@sifive.com>
In-Reply-To: <99A71EAD-A6CA-4BEC-B7C8-1711A76C5A76@sifive.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.80.233.50]
x-tm-as-product-ver: SMEX-11.0.0.4179-8.200.1013-24692.001
x-tm-as-result: No--17.534400-8.000000-31
x-tm-as-user-approved-sender: No
x-tm-as-user-blocked-sender: No
Content-ID: <1048AB857662914B8A13C964458D22C1@xch.fraunhofer.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_132640_806805_4E9E603B 
X-CRM114-Status: GOOD (  35.03  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [153.96.1.27 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: "Damien.LeMoal@wdc.com" <Damien.LeMoal@wdc.com>,
 "mafm@debian.org" <mafm@debian.org>,
 "abner.chang@hpe.com" <abner.chang@hpe.com>, "wxjstz@126.com" <wxjstz@126.com>,
 "jamez@wit.com" <jamez@wit.com>,
 "mark.corbin@embecosm.com" <mark.corbin@embecosm.com>,
 "palmer@sifive.com" <palmer@sifive.com>,
 "rjones@redhat.com" <rjones@redhat.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "Anup.Patel@wdc.com" <Anup.Patel@wdc.com>,
 "Atish.Patra@wdc.com" <Atish.Patra@wdc.com>,
 "yash.shah@sifive.com" <yash.shah@sifive.com>,
 "Alistair.Francis@wdc.com" <Alistair.Francis@wdc.com>,
 "khilman@baylibre.com" <khilman@baylibre.com>,
 "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
 "merker@debian.org" <merker@debian.org>,
 "schwab@linux-m68k.org" <schwab@linux-m68k.org>,
 "anup@brainfault.org" <anup@brainfault.org>, "hch@lst.de" <hch@lst.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

T24gVGh1LCAyMDE5LTA2LTIwIGF0IDE0OjA4IC0wNTAwLCBUcm95IEJlbmplZ2VyZGVzIHdyb3Rl
Og0KPiA+IE9uIEp1biAyMCwgMjAxOSwgYXQgMTozOSBQTSwgRGF2aWQgQWJkdXJhY2htYW5vdiA8
ZGF2aWQuYWJkdXJhY2htYW5vdkBnbWFpbC5jb20+IHdyb3RlOg0KPiA+IA0KPiA+IE9uIFRodSwg
SnVuIDIwLCAyMDE5IGF0IDg6NTggUE0gQXRpc2ggUGF0cmEgPEF0aXNoLlBhdHJhQHdkYy5jb20+
IHdyb3RlOg0KPiA+ID4gT24gVGh1LCAyMDE5LTA2LTIwIGF0IDA4OjUwICswNTMwLCBBbnVwIFBh
dGVsIHdyb3RlOg0KPiA+ID4gPiBPbiBUaHUsIEp1biAyMCwgMjAxOSBhdCAxOjM2IEFNIEF0aXNo
IFBhdHJhIDxBdGlzaC5QYXRyYUB3ZGMuY29tPg0KPiA+ID4gPiB3cm90ZToNCj4gPiA+ID4gPiBP
biBXZWQsIDIwMTktMDYtMTkgYXQgMTM6MDIgLTA3MDAsIEF0aXNoIFBhdHJhIHdyb3RlOg0KPiA+
ID4gPiA+ID4gSGkgQWxsLA0KPiA+ID4gPiA+ID4gDQo+ID4gPiA+ID4gPiBXZSBoYXZlIGJlZW4g
d2FpdGluZyBmb3IgdXBzdHJlYW0ga2VybmVsIHRvIGJvb3Qgb24gSGlGaXZlDQo+ID4gPiA+ID4g
PiBVbmxlYXNoZWQNCj4gPiA+ID4gPiA+IGZvciBzb21lIHRpbWUuIEZpbmFsbHksIGFsbCB0aGUg
cmVxdWlyZWQgZHJpdmVycyB3aWxsIGJlDQo+ID4gPiA+ID4gPiBhdmFpbGFibGUgaW4NCj4gPiA+
ID4gPiA+IDUuMy1yYzEgYXMgWWFzaFsxXSAmIFBhdWwnc1syXSBwYXRjaGVzIGFyZSBxdWV1ZWQg
Zm9yIG1lcmdpbmcuDQo+ID4gPiA+ID4gPiBZYXkhIQ0KPiA+ID4gPiA+ID4gDQo+ID4gPiA+ID4g
PiBIb3dldmVyLCB0aGUgRFQvZHJpdmVycyBpbiBrZXJuZWwgYXJlIG5vdCBiYWNrd2FyZCBjb21w
YXRpYmxlDQo+ID4gPiA+ID4gPiB3aXRoDQo+ID4gPiA+ID4gPiB0aGUNCj4gPiA+ID4gPiA+IERU
IHByb3ZpZGVkIGJ5IEZTQkwuIFRoYXQgbWVhbnMsIGV2ZXJ5Ym9keSBuZWVkIHRvIHVwZ3JhZGUg
dG8gdGhlDQo+ID4gPiA+ID4gPiBuZXcNCj4gPiA+ID4gPiA+IERUIGlmIHRoZXkgd2FudCB0byB1
c2UgdXBzdHJlYW0ga2VybmVsLiBIZXJlIGFyZSBzb21lIHBvc3NpYmxlDQo+ID4gPiA+ID4gPiBh
cHByb2FjaGVzIHRvIGFsbG93IGEgc21vb3RoIHRyYW5zaXRpb24uDQo+ID4gPiA+ID4gPiANCj4g
PiA+ID4gPiA+IDEuIEVtYmVkZCB0aGUgRFQgaW4gT3BlblNCSSBkaXJlY3RseSBhbmQgYnVpbGQg
aXQgYnkgZGVmYXVsdCBmb3INCj4gPiA+ID4gPiA+IHVubGVhc2hlZCBwbGF0Zm9ybS4gKGRpc2N1
c3NlZCBpbiBPcGVuU0JJIG1haWxpbmcgbGlzdCBbM10pDQo+ID4gPiA+ID4gPiANCj4gPiA+ID4g
PiA+IFByb3M6IE5vIGNoYW5nZSBpbiBhbnlib2R5J3MgYnVpbGQgc3lzdGVtIGFzIGxvbmcgYXMg
dGhleSB1c2UNCj4gPiA+ID4gPiA+IGxhdGVzdA0KPiA+ID4gPiA+ID4gT3BlblNCSS4NCj4gPiA+
ID4gPiA+IA0KPiA+ID4gPiA+ID4gQ29uczogVGhpcyBzZXRzIGEgYmFkIHByZWNlZGVudCBmb3Ig
ZnV0dXJlIHBsYXRmb3JtcyBhcyBPcGVuU0JJDQo+ID4gPiA+ID4gPiBzaG91bGQNCj4gPiA+ID4g
PiA+IG5vdCBiZSB0aGUgcGxhY2UgdG8ga2VlcC9tYWludGFpbiBkZXZpY2UgdHJlc3MuDQo+ID4g
PiA+ID4gPiANCj4gPiA+ID4gPiA+IEl0IHdpbGwgYWxzbyBicmVhayBub24tTGludXggT1MgdGhh
dCBoYXZlIG5vdCB1cGdyYWRlZCB0aGVpciBEVA0KPiA+ID4gPiA+ID4gdG8NCj4gPiA+ID4gPiA+
IG1hdGNoIHdpdGgga2VybmVsLg0KPiA+ID4gPiA+ID4gDQo+ID4gPiA+ID4gPiAyLiBMaW5rIHRo
ZSB1cGRhdGVkIERUQiBtYWludGFpbmVkIGJ5IGtlcm5lbCB1c2luZw0KPiA+ID4gPiA+ID4gRldf
UEFZTE9BRF9GRFRfUEFUSA0KPiA+ID4gPiA+ID4gaW4gT3BlblNCSS4NCj4gPiA+ID4gPiA+IA0K
PiA+ID4gPiA+ID4gUHJvczogRFQgaXMgbWFpbnRhaW5lZCBieSBrZXJuZWwgYW5kIE9wZW5TQkkg
anVzdCB1c2UgdGhlIGFscmVhZHkNCj4gPiA+ID4gPiA+IGJ1aWx0DQo+ID4gPiA+ID4gPiBEVEIu
DQo+ID4gPiA+ID4gPiANCj4gPiA+ID4gPiA+IENvbnM6IENyZWF0ZXMgYSBkZXBlbmRhbmN5IG9u
IExpbnV4IGJ1aWxkIHN5c3RlbS4NCj4gPiA+ID4gPiA+IEFsbCBMaW51eCBkaXN0cm8gbWFpbnRh
aW5lcnMgbm93IGhhdmUgdG8gdXBkYXRlIHRoZWlyIGJ1aWxkDQo+ID4gPiA+ID4gPiBzY3JpcHQg
dG8NCj4gPiA+ID4gPiA+IGFkZCB0aGF0IG9wdGlvbiBhbmQgYWxsIGRvY3VtZW50YXRpb24gbmVl
ZCB0byBiZSB1cGRhdGVkLg0KPiA+ID4gPiA+ID4gDQo+ID4gPiA+ID4gPiAzLiBVcGRhdGUgRlNC
TDoNCj4gPiA+ID4gPiA+IA0KPiA+ID4gPiA+ID4gUHJvczogQ2xlYW5lc3QgYXBwcm9hY2guDQo+
ID4gPiA+ID4gPiANCj4gPiA+ID4gPiA+IENvbnM6IEV2ZXJ5Ym9keSBoYXMgdG8gdXBncmFkZSB0
aGUgRlNCTCB3aGljaCBpcyBub3QgYSBzaW1wbGUgYXNrDQo+ID4gPiA+ID4gPiBmb3INCj4gPiA+
ID4gPiA+IGV2ZXJ5b25lLiBUaGVyZSBpcyBubyBGU0JMIGJpbmFyeSBhdmFpbGFibGUgcHVibGlj
bHkgYXMgd2VsbC4gU28NCj4gPiA+ID4gPiA+IGV2ZXJ5Ym9keSBoYXMgdG8gYnVpbGQgRlNCTCBm
aXJzdC4NCj4gPiA+ID4gPiA+IA0KPiA+ID4gPiA+ID4gQW55IG90aGVyIHBvc3NpYmxlIHNvbHV0
aW9ucz8NCj4gPiA+ID4gPiA+IA0KPiA+ID4gPiA+ID4gVGlsbCBub3csIDIgc2VlbXMgdG8gYmUg
dGhlIHByZWZlcnJlZCBjaG9pY2UgZm9yIG5vdy4gQXBwcm9hY2ggMw0KPiA+ID4gPiA+ID4gaXMN
Cj4gPiA+ID4gPiA+IGFsc28gb2theSBmb3IgbG9uZ2VyIHRlcm0gc29sdXRpb24gKGdpdmVuIHRo
YXQgRlNCTCBiaW5hcnkgYW5kDQo+ID4gPiA+ID4gPiBpbnN0cnVjdGlvbnMgYXJlIGF2YWlsYWJs
ZSB0aW1lbHkpLiBCdXQgYXBwcm9hY2ggMiByZXF1aXJlcyBleHRyYQ0KPiA+ID4gPiA+ID4gd29y
aw0KPiA+ID4gPiA+ID4gb24gZGlzdHJvIG1haW50YWluZXJzLiBUaGF0J3Mgd2h5IHdlIHdhbnQg
dG8gZ2V0IGFuIGFncmVlbWVudA0KPiA+ID4gPiA+ID4gd2l0aA0KPiA+ID4gPiA+ID4gdGhlbQ0K
PiA+ID4gPiA+ID4gYmVmb3JlIHJlY29tbW9uZGluZyBhbnkgc3BlY2lmaWMgYXBwcm9hY2ggdG8g
YW55Ym9keSBpbiB0aGUNCj4gPiA+ID4gPiA+IGNvbW11bml0eS4NCj4gPiA+ID4gPiA+IA0KPiA+
ID4gPiA+ID4gVGhvdWdodHMgPw0KPiA+ID4gPiA+ID4gDQo+ID4gPiA+ID4gDQo+ID4gPiA+ID4g
QXJnaC4gSSBtZXNzZWQgdXAgdGhlIHN1YmplY3QgbGluZSBmaXJzdCB0aW1lLg0KPiA+ID4gPiA+
IFNvcnJ5IGZvciB0aGUgbm9pc2UuDQo+ID4gPiA+IA0KPiA+ID4gPiBJIGhhdmUgNHRoIG9wdGlv
biB3aGljaCBpcyBldmVuIGNsZWFuZXIgdGhhdCAzcmQgb3B0aW9uDQo+ID4gPiA+IA0KPiA+ID4g
PiA0LiBVLUJvb3RfU1BML0NvcmVib290IHJlcGxhY2UgRlNCTA0KPiA+ID4gPiBUaGUgVS1Cb290
X1NQTC9Db3JlYm9vdCB3aWxsIHJlcGxhY2UgRlNCTCBhbmQgbG9hZCBPcGVuU0JJDQo+ID4gPiA+
IEZXX0RZTkFNSUMsIFBsYXRmb3JtIERUQiwgYW5kIFUtQm9vdF9TX21vZGUgZnJvbSBib290DQo+
ID4gPiA+IGRldmljZSAoTU1DL0ZsYXNoKS4gV2UgY2FuIHVwZGF0ZSBPcGVuU0JJIEZXX0RZTkFN
SUMsDQo+ID4gPiA+IFBsYXRmb3JtIERUQiwgb3IgVS1Cb290X1NfbW9kZSBzZXBhcmF0ZWx5IGFu
eXRpbWUgd2l0aG91dA0KPiA+ID4gPiB1cGRhdGluZyBvdGhlciBpbWFnZXMuDQo+ID4gPiA+IA0K
PiA+ID4gPiBQcm9zOiBCZXR0ZXIgdGhhbiBvcHRpb24gMw0KPiA+ID4gPiANCj4gPiA+ID4gQ29u
czogTm9uZSB0aGF0IEkgY2FuIHRoaW5rIG9mLg0KPiA+ID4gPiANCj4gPiA+ID4gSU1ITywgaXQn
cyByaWdodCB0aW1lIHJlcGxhY2UgRlNCTCB3aXRoIFUtQm9vdF9TUEwvQ29yZWJvb3QNCj4gPiA+
ID4gb25jZSBhbmQgZm9yIGFsbC4NCj4gPiA+IA0KPiA+ID4gK0x1a2FzLCArIFhpYW5nDQo+ID4g
PiANCj4gPiA+IEkgY29tcGxldGVseSBhZ3JlZSB0aGF0IHJlcGxhY2luZyBGU0JMIHdpdGggVS1C
b290IFNQTC9jb3JlYm9vdCBpcyB0aGUNCj4gPiA+IGJlc3QgcG9zc2libGUgc29sdXRpb24uIEhv
d2V2ZXIsIHRoZSBpbXBsZW1lbnRhdGlvbiBvZiBlaXRoZXIgb25lIGlzDQo+ID4gPiBub3QgYXZh
aWxhYmxlIHVwc3RyZWFtLiBQbGVhc2UgY29ycmVjdCBtZSBpZiBJIGFtIHdyb25nLg0KPiA+ID4g
DQo+ID4gPiBTbyB3ZSBuZWVkIGFuIGludGVybWVkaWF0ZSBzb2x1dGlvbiB1bnRpbCB0aGF0IGhh
cHBlbnMuIEl0IHNlZW1zIHRoYXQNCj4gPiA+IGFwcHJvYWNoIDIgaXMgb2theSB3aXRoIG1ham9y
aXR5LiBXZSBoYXZlIG5vdCBoZWFyZCBhbnl0aGluZyBmcm9tDQo+ID4gPiBGZWRvcmEvZGViaWFu
IGZvbGtzIHRob3VnaC4NCj4gPiA+IA0KPiA+IA0KPiA+IEhlcmUgaXMgbXkgb3BpbmlvbiBmcm9t
IEZlZG9yYSBjYW1wLg0KPiA+IA0KPiA+IFRoZSBwcmVmZXJyZWQgb3B0aW9uIHdvdWxkIGJlIFUt
Qm9vdCBTUEwgZm9yIGFscmVhZHkgbWVudGlvbmVkDQo+ID4gcmVhc29uOg0KPiA+ICIuLi4gZm9y
IHRoZSByZWFzb24gb2YgdXNpbmcgdGhlIHNhbWUgYm9vdGxvYWRlciB0ZWNobm9sb2d5IHN0YWNr
LiINCj4gPiANCj4gPiBXZSBhbHJlYWR5IHNoaXAgVS1Cb290IFNQTCBiaW5hcmllcyBmb3IgYSBo
aWdoIG51bWJlciBvZiBBQXJjaDY0DQo+ID4gYW5kIEFSTXY3IGJvYXJkcy4gSWRlYWxseSB3ZSBk
b24ndCB3YW50IHRvIGRlcGVuZCBvbiBleHRlcm5hbCBEVEJzDQo+ID4gc3RvcmVkIGluIC9ib290
IChsaWtlIGl0J3MgZG9uZSBpbiBGZWRvcmEgQVJNdjcpLiBUaGUgZGVmYXVsdCBEVEIgc2hvdWxk
DQo+ID4gYmUgYnVpbHQgaW50byB0aGUgZmlybXdhcmUgKEZTQkwtc3R5bGUpLCBidXQgdGhlcmUg
bWlnaHQgYmUgYW4gb3B0aW9uDQo+ID4gdG8gcGFzcyBleHRlcm5hbCBvbmUgZm9yIGRldmVsb3Bt
ZW50L2RlYnVnZ2luZyByZWFzb25zIChpLmUuIG92ZXJyaWRlDQo+ID4gdGhlIGRlZmF1bHQgb25l
IGluIGZpcm13YXJlKS4NCj4gPiANCj4gPiBGb3IgbWUgZmlybXdhcmUgKGluY2wuIERUQikgaXMg
cGFydCBvZiBoYXJkd2FyZS4NCj4gPiANCj4gPiBTaUZpdmUgVW5sZWFzaGVkIGlzIGEgZGV2ZWxv
cG1lbnQgYm9hcmQgd2l0aCBhIHRlc3QgY2hpcCwgYW5kIGl0IHNoaXBzDQo+ID4gaW4gYSBsb3cg
dm9sdW1lcyB0aHVzIHJpZ2h0IG5vdyBJIHdvdWxkIGp1c3QgcmVidWlsZCBGU0JMIHdpdGggbmV3
IERUQg0KPiA+IGFuZCBwcm92aWRlIGluc3RydWN0aW9ucyBob3cgdG8gZmxhc2ggaXQuDQo+IA0K
PiBJ4oCZdmUgYmVlbiBydW5uaW5nIChhbmQgc3VwcG9ydGluZyBjdXN0b21lcnMpIHdpdGggdGhl
IEhpRml2ZV9VbmxlYXNoZWQNCj4gVS1ib290ICggaHR0cHM6Ly9naXRodWIuY29tL3NpZml2ZS9I
aUZpdmVfVS1Cb290KSBmb3IgYXQgbGVhc3QgNiBtb250aHMgbm93LA0KPiBhbmQgSSB3b3VsZCBt
dWNoIHJhdGhlciBoYXZlIGFuIGludGVyaW0gc29sdXRpb24gYmUgdGhhdCB3ZSBwdXQgdGhlIG5l
dyANCj4gRFRCIGludG8gdGhhdCBjb2RlYmFzZS4NCj4gDQo+IFdoZW4gd2UgZmluYWxseSBnZXQg
TS1tb2RlIHUtYm9vdCB3b3JraW5nIGluIHVwc3RyZWFtLCB0aGVuIGl04oCZcyBhIG1vc3RseQ0K
PiBkcm9wLWluIHJlcGxhY2VtZW50IGZvciB0aGUgb2xkIG9uZS4NCj4gDQo+IE5vdyB0aGF0IHRo
ZSBEVFMgc2VlbXMgdG8gaGF2ZSBzdGFiaWxpemVkIGluIHRoZSB1cHN0cmVhbSBrZXJuZWwsIGlm
IEkgY2FuDQo+IGZpZ3VyZSBvdXQgd2h5IHRoZSBzYW5kYm94L2RldmVsIGNvZGUgKGJhc2VkIG9u
IHVwc3RyZWFtKSB0aGF0IEkgaGF2ZSBhdA0KPiBodHRwczovL2dpdGh1Yi5jb20vc2lmaXZlL3Ut
Ym9vdCBpcyBnZXR0aW5nIFRYIHRpbWVvdXRzLCB3ZSBjb3VsZCBwcm9iYWJseQ0KPiBtb3ZlIHRv
IHRoYXQgcHJldHR5IHF1aWNrbHkgYXMgYSBmdWxsIHJlcGxhY2VtZW50IGZvciBGU0JMIHRoYXQg
aXMgZ29pbmcNCj4gdG8gYmUgY2xvc2UgdG8gdXBzdHJlYW0gVS1ib290Lg0KPiANCg0KVS1Cb290
IGN1cnJlbnRseSBkb2VzIG5vdCBoYXZlIGFsbCB0aGUgZHJpdmVycyBuZWNlc3NhcnkgdG8gcmVw
bGljYXRlDQp0aGUgRlNCTCBmdW5jdGlvbmFsaXR5IChUcm95IHNlZW1zIHRvIGJlIG1ha2luZyBn
b29kIHByb2dyZXNzDQp0aG91Z2gpLiBVbnRpbCB0aGUgZHJpdmVycyBhcmUgYXZhaWxhYmxlLCB3
ZSBjb3VsZCBhbHJlYWR5IHN3aXRjaCB0byANClUtQm9vdCBTUEwgdG8gbWFuYWdlIHRoZSBkZXZp
Y2UgdHJlZSBhbmQgY29udGludWUgdG8gdXNlIHRoZSBGU0JMIGZvcg0KaGFyZHdhcmUgaW5pdGlh
bGl6YXRpb24uIFRoZSBtYWluIHBhcnQgbWlzc2luZyBmb3IgdGhpcyBvcHRpb24gaXMgYQ0KZHJp
dmVyIGZvciB0aGUgU0QgY2FyZC4gSSBoYXZlIFUtQm9vdCBTUEwgcnVubmluZyBvbiBRRU1VIGFu
ZCB3aWxsIHRyeQ0KdG8gc3VibWl0IHBhdGNoZXMgZm9yIHRoaXMgc29vbi4NCg0KRm9yIG5vdywg
SSB3b3VsZCBhZ3JlZSB0aGF0IGFwcHJvYWNoIDIgc2VlbXMgdG8gd29yayBiZXN0Lg0KDQpUaGFu
a3MsDQpMdWthcw0KDQo+ID4gPiA+IEFsc28sIHJ1bm5pbmcgZW50aXJlIFUtQm9vdCBpbiBNLW1v
ZGUgaXMganVzdA0KPiA+ID4gPiBhbiBvdmVya2lsbC4NCj4gPiA+ID4gDQo+ID4gPiANCj4gPiA+
IA0KPiA+ID4gPiBSZWdhcmRzLA0KPiA+ID4gPiBBbnVwDQo+ID4gPiAtLQ0KPiA+ID4gUmVnYXJk
cywNCj4gPiA+IEF0aXNoDQo+ID4gDQo+ID4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18NCj4gPiBsaW51eC1yaXNjdiBtYWlsaW5nIGxpc3QNCj4gPiBsaW51
eC1yaXNjdkBsaXN0cy5pbmZyYWRlYWQub3JnDQo+ID4gaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yaXNjdg0KX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KbGludXgtcmlzY3YgbWFpbGluZyBsaXN0CmxpbnV4LXJp
c2N2QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1yaXNjdgo=
