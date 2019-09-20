Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A9D2B99BE
	for <lists+linux-riscv@lfdr.de>; Sat, 21 Sep 2019 00:40:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Mime-Version:Message-ID:To:From:In-Reply-To:Subject:
	Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	 bh=+a+rx93VGiwDyWdx4z3PDmC6o1MMuAnwcEzMguxipcA=; b=tDdUlYwkWoexYAwLSBg1XOhAJ
	t0S0WTXLEH5pX5Pl5CHZ1nCTceEX9G1zo0JsOJvZtcz2URYcSbdNc23vAPccepTvs+cU3rPACH45j
	zDppka7m4ZaWbcYU2nLu3xN3Ku66/s4pGNeG92GnHnj9pqx8Ofk+LPdHrEjqgnPjN2uFpV5nYDOPP
	F9Bl7vPFu8ImXnseLql3JKSTvBikXoEUtoYgxVdLixMhgNAiNC7AEY3LT7wam3W1egaD1LI3pY5cL
	hI/lT8IqoY00hYpbijzEk/JLbGK1LCMYvRJfMzU6mNZxrA6s4V3Mn4NNc4kXbsVMvEPQlX1gBVtr7
	46Bdcp9Jw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBRZs-0008WG-Kb; Fri, 20 Sep 2019 22:40:36 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBRZq-0008VH-2H
 for linux-riscv@lists.infradead.org; Fri, 20 Sep 2019 22:40:35 +0000
Received: by mail-pg1-x543.google.com with SMTP id n190so4650103pgn.0
 for <linux-riscv@lists.infradead.org>; Fri, 20 Sep 2019 15:40:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
 :content-transfer-encoding;
 bh=qpo1CPqc73MCadVo8iRju2Ls/5Qlein+jmhvtvLiZqY=;
 b=OHCOK+V0HKEyBFqOJ32B3ABP50mz0poRDGAM4/FfFIrfiImdUTCHk+RaUb6ter2Yl5
 +Et1oYNNUkR+uOTJkaKKY0IEaojK2nUTV1L+l60d4hWIc/lqSm9GVJEkoHnfUvQyPi5M
 juollKtqCpYuPTpDCLlLKy0M/AmdwOSAHC1qg7bfTt+sxiwTWkJGxvx3SLVAPFsedxq4
 EHXXoib7FuHxCyHCiAQ/xfZ8Ds7AMkJAtSbplkIfzN58pf74LUcPaguQeSs024cUPimZ
 Wzwg+bhFvXToTKCTuDJFkglFJfP4lH2p5Z7JOIFNLQe9AKKIrsXMrt6SqN9a+3288815
 m55A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=qpo1CPqc73MCadVo8iRju2Ls/5Qlein+jmhvtvLiZqY=;
 b=ESKGHdKUuZeHtqcqPrVVSQHRVrp3iIrHt0WHvlQOg18toTT3MdU4HfEWH+I1tMG6ST
 oMnE57Q/rkwc81om7zoBYmvMk3+9nQPp2ed8QWs5LwzYKpsTk7BS1FrKbK5ygkHCy5q3
 Sa+A8qxrnFiA2IoPDJeInxhL+3lhdmQGPcBoxVxcrNv07MNvBSuVE3oebKO6kmG05DaX
 YoLwWNH5u6eFjX0rXqN/ReaX4ffPmJW7pREi5QKsg4LqbTJAjctBbFs844l1sRtMHDp/
 MdAQ1VHy6n1uEU2XTE/Y77P34QG+ey8LVKLtekqvgPvi6LAqnY35V+cePji8oOin/cAu
 Xfkg==
X-Gm-Message-State: APjAAAV+JLfqew65+OzmrYFusypQ7Y5IWtqM6d/FgqUhAJZtAsl3po6H
 vDh9/pYvCs69j0I25pAzv5bezw==
X-Google-Smtp-Source: APXvYqxBLLCCHEO/jL8pLzoAfxhjW5ynBcF9ZKHvN1WdzOpo7zRbplvUWd30cWCyGZsTMoCFuQrFOg==
X-Received: by 2002:a62:fc46:: with SMTP id e67mr20195478pfh.153.1569019230813; 
 Fri, 20 Sep 2019 15:40:30 -0700 (PDT)
Received: from localhost ([2607:fb90:5de:df7b:9794:c3bf:6169:a06c])
 by smtp.gmail.com with ESMTPSA id b16sm5242640pfb.54.2019.09.20.15.40.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 20 Sep 2019 15:40:29 -0700 (PDT)
Date: Fri, 20 Sep 2019 15:40:29 -0700 (PDT)
X-Google-Original-Date: Fri, 20 Sep 2019 15:35:11 PDT (-0700)
Subject: RE: [RFC] buildtar: add case for riscv architecture
In-Reply-To: <lMUhcsewB9GAKeZH2cH-zl3vFME8u2z5IzCqDBFhtT2IbG71vhHnjrlHKbhyxFee5XFe1X1gRllNJBR9e9dQlC0vbIpSffL_y0pLb46VddQ=@aurabindo.in>
From: Palmer Dabbelt <palmer@sifive.com>
To: mail@aurabindo.in
Message-ID: <mhng-79e5204f-e7b6-43d0-94cb-815d3be314ae@palmer-si-x1c4>
Mime-Version: 1.0 (MHng)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_154034_120358_522EEE37 
X-CRM114-Status: GOOD (  22.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: aou@eecs.berkeley.edu, linux-kbuild@vger.kernel.org,
 Anup Patel <Anup.Patel@wdc.com>, linux-kernel@vger.kernel.org,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Troy Benjegerdes <troy.benjegerdes@sifive.com>,
 linux-riscv@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

T24gVHVlLCAxNyBTZXAgMjAxOSAwMjozNToxMCBQRFQgKC0wNzAwKSwgbWFpbEBhdXJhYmluZG8u
aW4gd3JvdGU6Cj4g4oCQ4oCQ4oCQ4oCQ4oCQ4oCQ4oCQIE9yaWdpbmFsIE1lc3NhZ2Ug4oCQ4oCQ
4oCQ4oCQ4oCQ4oCQ4oCQCj4gT24gU3VuZGF5LCBTZXB0ZW1iZXIgMTUsIDIwMTkgMTI6NTcgQU0s
IFBhbG1lciBEYWJiZWx0IDxwYWxtZXJAc2lmaXZlLmNvbT4gd3JvdGU6Cj4KPj4gT24gU2F0LCAx
NCBTZXAgMjAxOSAwNjowNTo1OSBQRFQgKC0wNzAwKSwgQW51cCBQYXRlbCB3cm90ZToKPj4KPj4g
PiA+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tCj4+ID4gPiBGcm9tOiBsaW51eC1rZXJuZWwt
b3duZXJAdmdlci5rZXJuZWwub3JnIDxsaW51eC1rZXJuZWwtCj4+ID4gPiBvd25lckB2Z2VyLmtl
cm5lbC5vcmc+IE9uIEJlaGFsZiBPZiBQYWxtZXIgRGFiYmVsdAo+PiA+ID4gU2VudDogU2F0dXJk
YXksIFNlcHRlbWJlciAxNCwgMjAxOSA2OjMwIFBNCj4+ID4gPiBUbzogbWFpbEBhdXJhYmluZG8u
aW4KPj4gPiA+IENjOiBUcm95IEJlbmplZ2VyZGVzIHRyb3kuYmVuamVnZXJkZXNAc2lmaXZlLmNv
bTsgUGF1bCBXYWxtc2xleQo+PiA+ID4gcGF1bC53YWxtc2xleUBzaWZpdmUuY29tOyBhb3VAZWVj
cy5iZXJrZWxleS5lZHU7IGxpbnV4LQo+PiA+ID4gcmlzY3ZAbGlzdHMuaW5mcmFkZWFkLm9yZzsg
bGludXgta2VybmVsQHZnZXIua2VybmVsLm9yZzsgbGludXgtCj4+ID4gPiBrYnVpbGRAdmdlci5r
ZXJuZWwub3JnCj4+ID4gPiBTdWJqZWN0OiBSZTogW1JGQ10gYnVpbGR0YXI6IGFkZCBjYXNlIGZv
ciByaXNjdiBhcmNoaXRlY3R1cmUKPj4gPiA+IE9uIFdlZCwgMTEgU2VwIDIwMTkgMDU6NTQ6MDcg
UERUICgtMDcwMCksIG1haWxAYXVyYWJpbmRvLmluIHdyb3RlOgo+PiA+ID4KPj4gPiA+ID4gPiBO
b25lIG9mIHRoZSBhdmFpbGFibGUgUmlzY1YgcGxhdGZvcm1zIHRoYXQgSeKAmW0gYXdhcmUgb2Yg
dXNlIGNvbXByZXNzZWQKPj4gPiA+ID4gPiBpbWFnZXMsIHVubGVzcyB0aGVyZSBhcmUgc29tZSBu
ZXcgYm9vdGxvYWRlcnMgSSBoYXZlbuKAmXQgc2VlbiB5ZXQuCj4+ID4gPiA+Cj4+ID4gPiA+ID4K
Pj4gPiA+ID4KPj4gPiA+ID4gSSBub3RpY2VkIHRoYXQgZGVmYXVsdCBidWlsZCBpbWFnZSBpcyBJ
bWFnZS5neiwgd2hpY2ggaXMgd2h5IEkgdGhvdWdodCBpdHMgYQo+PiA+ID4gPiBnb29kIGlkZWEg
dG8gY29weSBpdCBpbnRvIHRoZSB0YXJiYWxsLiBEb2VzIHN1Y2ggYSBjb3B5IG5vdCBtYWtlIHNl
bnNlIGF0IHRoaXMKPj4gPiA+ID4gcG9pbnQgPwo+PiA+ID4KPj4gPiA+IEltYWdlLmd6IGNhbid0
IGJlIGJvb3RlZCBkaXJlY3RseTogaXQncyBqdXN0IEltYWdlIHRoYXQncyBiZWVuIGNvbXByZXNz
ZWQKPj4gPiA+IHdpdGggdGhlIHN0YW5kYXJkIGd6aXAgY29tbWFuZC4gQSBib290bG9hZGVyIHdv
dWxkIGhhdmUgdG8gZGVjb21wcmVzcwo+PiA+ID4gdGhhdCBpbWFnZSBiZWZvcmUgbG9hZGluZyBp
dCBpbnRvIG1lbW9yeSwgd2hpY2ggcmVxdWlyZXMgZXh0cmEgYm9vdGxvYWRlcgo+PiA+ID4gc3Vw
cG9ydC4KPj4gPiA+IENvbnRyYXN0IHRoYXQgd2l0aCB0aGUgekltYWdlIHN0eWxlIGltYWdlcyAo
d2hpY2ggYXJlIHZtbGludXogb24geDg2KSwgd2hpY2gKPj4gPiA+IGFyZSBzZWxmLWV4dHJhY3Rp
bmcgYW5kIHRoZXJlZm9yIHJlcXVpcmUgbm8gYm9vdGxvYWRlciBzdXBwb3J0LiBUaGUKPj4gPiA+
IGV4YW1wbGVzIGZvciB1LWJvb3QgYWxsIHVzZSB0aGUgImJvb3RpIiBjb21tYW5kLCB3aGljaCBl
eHBlY3RzCj4+ID4gPiB1bmNvbXByZXNzZWQgaW1hZ2VzLgo+PiA+ID4gUG9raW5nIGFyb3VuZCBJ
IGNvdWxkbid0IGZpZ3VyZSBvdXQgYSB3YXkgdG8gaGF2ZSB1LWJvb3QgZGVjb21wcmVzcyB0aGUK
Pj4gPiA+IGltYWdlcywgYnV0IHRoYXQgYXBwbGllcyB0byBhcm02NCBhcyB3ZWxsIHNvIEknbSBu
b3Qgc3VyZSBpZiBJJ20gbWlzc2luZwo+PiA+ID4gc29tZXRoaW5nLgo+PiA+ID4gSWYgSSB3YXMg
ZG9pbmcgdGhpcywgSSdkIGNvcHkgb3ZlciBhcmNoL3Jpc2N2L2Jvb3QvSW1hZ2UgYW5kIGNhbGwg
aXQKPj4gPiA+ICIvYm9vdC9pbWFnZS0ke0tFUk5FTFJFTEVBU0V9IiwgYXMgY2FsbGluZyBpdCB2
bWxpbnV6IGlzIGEgYml0IGNvbmZ1c2luZyB0bwo+PiA+ID4gbWUgYmVjYXVzZSBJJ2QgZXhwZWN0
IHZtbGludXogdG8gYmUgYSBzZWxmLWV4dHJhY3RpbmcgY29tcHJlc3NlZAo+PiA+ID4gZXhlY3V0
YWJsZSBhbmQgbm90IGEgcmF3IGd6aXAgZmlsZS4KPj4gPgo+PiA+IE9uIHRoZSBjb250cmFyeSwg
aXQgaXMgaW5kZWVkIHBvc3NpYmxlIHRvIGJvb3QgSW1hZ2UuZ3ogZGlyZWN0bHkgdXNpbmcKPj4g
PiBVLUJvb3QgYm9vdGkgY29tbWFuZCBzbyB0aGlzIHBhdGNoIHdvdWxkIGJlIHVzZWZ1bC4KPj4g
PiBBdGlzaCBoYWQgZ290IGl0IHdvcmtpbmcgb24gVS1Cb290IGJ1dCBoZSBoYXMgZGVmZXJyZWQg
Ym9vdGkgSW1hZ2UuZ3oKPj4gPiBzdXBwb3J0IGR1ZSB0byBmZXcgbW9yZSBkZXBlbmRlbnQgY2hh
bmdlcy4gTWF5IGJlIGhlIGNhbiBzaGFyZQo+PiA+IG1vcmUgaW5mby4KPj4KPj4gT2gsIGdyZWF0
LiBJIGd1ZXNzIGl0IG1ha2VzIHNlbnNlIHRvIGp1c3QgcHV0IGJvdGggaW4gdGhlIHRhcmJhbGws
IHRoZW4sIGFzCj4+IHVzZXJzIHdpbGwgc3RpbGwgbmVlZCB0byB1c2UgdGhlIEltYWdlIGZvcm1h
dCBmb3Igbm93Lgo+Pgo+Cj4gVW5jb21wcmVzc2VkIHZtbGludXggaXMgYWxyZWFkeSBjb3BpZWQg
YnkgZGVmYXVsdC4gVGhpcyBwYXRjaCBqdXN0IGFkZHMgdGhlCj4gSW1hZ2UuZ3ogaW50byB0aGUg
YXJjaGl2ZSBhcyB2bWxpbnV6LiBCdXQgYXMgeW91IHNhaWQsIHNpbmNlIHRoZSBuYW1lIHZtbGlu
dXogaXMKPiByZXNlcnZlZCBmb3Igc2VsZiBleHRyYWN0aW5nIGFyY2hpdmVzLCBzaG91bGQgSSBr
ZWVwIHRoZSBvcmlnaW5hbCBuYW1lIEltYWdlLmd6ID8KCnZtbGludXggaXMgbm90IHRoZSBzYW1l
IGFzIEltYWdlOiB2bWxpbnV4IGlzIGFuIEVMRiBmaWxlIHRoYXQgY2FuJ3QgYmUgbG9hZGVkIApk
aXJlY3RseSBieSBtb3N0IGJvb3Rsb2FkZXJzLCBJbWFnZSBpcyBhIG1vc3RseS1mbGF0IGJpbmFy
eSB3aXRoIGEgc21hbGwgaGVhZGVyIAp0aGF0IHdlJ3JlIGV4cGVjdGluZyBjYW4gYmUgYm9vdGVk
IGJ5IG1vc3QgYm9vdGxvYWRlcnMuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpsaW51eC1yaXNjdiBtYWlsaW5nIGxpc3QKbGludXgtcmlzY3ZAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXJpc2N2Cg==
