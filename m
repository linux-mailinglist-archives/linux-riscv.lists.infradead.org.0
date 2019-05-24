Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B29428FC3
	for <lists+linux-riscv@lfdr.de>; Fri, 24 May 2019 05:59:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ZZf+af/iNWmVOMyth3mOlGQLsNenZ+QToBZobtRuoSQ=; b=BwHO6sGWumW08aEl8E7zfpdBB
	pezbcBlRyCx5mEAYZEuR4Z20gKKsP6FQcAaCcb1UYqmDw7ZCs5Ls07/wZishJlLTvet3B67Dko0fu
	16MHieZ4UN6CgIiWZLaN2Jx9mtZKIouolPPvDs4EU6EmGnYpSJ4Vv9wxc9ZczpejM9S4KT4DfMp4t
	uDL62whqik19Qpu4yFvHqXZhRvBQKCiSJX+i308N2Bvr1k4/TCzjw3OOGbpiJo9M4Kg0scKGaGlWk
	96gpgjhEvZ88gKnHOm0FYiLVV7ake0n4Ur7/NbaCn83f0KcWvb8t6UFhNs1SovWu24nRsZ+RnwAWF
	Qgo33UM9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hU1Mg-0006VE-Pp; Fri, 24 May 2019 03:59:30 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU1Md-0006Uf-1A
 for linux-riscv@lists.infradead.org; Fri, 24 May 2019 03:59:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1558670401; x=1590206401;
 h=subject:to:cc:references:from:message-id:date:
 mime-version:in-reply-to:content-transfer-encoding;
 bh=YeRHOw+SVRRo5BbT39UVP4i+Tv/ehZkTVHQcW95N6E4=;
 b=g6IU9t2n0wBZJGHqxYjJAM6Pz0qSgip1+UVgOUGNu9GaDGJSKzTRQupQ
 s0s5s6B+lnCYdpZbWHZPwB4Sy21CtJ5KpW5uNuf49ZXMSnevCKRdG8WOC
 vB7wFhkV+pa7gHymieXdVebF0b0qDg1LB6PKjeaglISLB86igWcKTh297
 4/vhxpL3YhhiCoDBFMtrzIphxyIPySjv6fJeojNyFIothxT1bzW8TLRTP
 Qipjje7TqXvuRXsG9G63x3zsiZfsD7wsosi2EUL0PpKMkXRQ+tf6Gs0Nt
 A7m84O2GbX7LrWBygiGqZMVV1EogHH91YXqAKVj38NdGkjwFxwmibIi0X g==;
X-IronPort-AV: E=Sophos;i="5.60,505,1549900800"; d="scan'208";a="208495997"
Received: from uls-op-cesaip02.wdc.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 24 May 2019 11:59:56 +0800
IronPort-SDR: kKu4SoFwEpqzlcZu7rWZU/dqDh7uB9fN3jokDmKltqgHsSiXUwJACQkrTAlc09gVCBXrO/J15I
 tuhjWG+KtPwy8FfNB1xbnOzkBGIrRcAo07pQQZWpEZggHaQYGY6CV2+Bu1GV4rvO2yndU4SnTq
 WW+Bn3vroFg0ebYPuPJmt4okqoePsE5B5xrZ12vB5yTz/3hWwSpu86gTuE8loHxPvlFc69YnXp
 iLvWf0lZv/PjeO+ayuNzxOO8FqHkF/3uBNEefJgH/pw/2qi+CY6RB40t9voSj34xxsMux2t/4E
 ERVOymloTHowJOzlS+yS0o19
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep02.wdc.com with ESMTP; 23 May 2019 20:37:05 -0700
IronPort-SDR: fQuYSpcQ7NBTHNraVuEpuwKn/DbSa4mhr+lsRvTnjnJmuUro1eQ4rRqcMQ7DPBZolxtnecFf7O
 WqeXxl/DXrr7VPeagIPaeCuReEeVJtlW7FlHABvzQiBil5wPk8jGMdbfJtNwtCIF98GnyW8SFE
 X7O2dtvAx4TBEu2booItOUTWSkNW/rOR/peAoCIcH3dIb/ukiOynbPq1s/Gqa7C4JqNQyKVJn7
 XIMZbQRgtQTw7qtzNpNbjdjbTfV/q3QtYxpuXVJLS3bWiXnLZj+uqxw4iCv+n3nnTUxDCmgBFu
 LC0=
Received: from unknown (HELO [10.225.100.40]) ([10.225.100.40])
 by uls-op-cesaip02.wdc.com with ESMTP; 23 May 2019 20:59:24 -0700
Subject: Re: 5.2-rc1 boot on Unleashed
To: Troy Benjegerdes <troy.benjegerdes@sifive.com>,
 Paul Walmsley <paul.walmsley@sifive.com>
References: <5c1ffb76-b18a-dbae-d3ad-f3d2cd41ee44@wdc.com>
 <alpine.DEB.2.21.9999.1905220942040.20842@viisi.sifive.com>
 <db248e63-c0bc-7fd8-cf2d-d13c8f140036@wdc.com>
 <alpine.DEB.2.21.9999.1905221334460.23235@viisi.sifive.com>
 <8F4FB234-FD5B-4AD6-99BD-57A40A79A024@sifive.com>
From: Atish Patra <atish.patra@wdc.com>
Message-ID: <aac8c9b2-1b8d-e87d-88a5-f13222004a88@wdc.com>
Date: Thu, 23 May 2019 20:59:23 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <8F4FB234-FD5B-4AD6-99BD-57A40A79A024@sifive.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_205927_117846_E505276D 
X-CRM114-Status: GOOD (  18.96  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.143.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Anup Patel <Anup.Patel@wdc.com>,
 =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@gmail.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 Palmer Dabbelt <palmer@sifive.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

T24gNS8yMy8xOSA1OjIzIFBNLCBUcm95IEJlbmplZ2VyZGVzIHdyb3RlOgo+IAo+IAo+PiBPbiBN
YXkgMjIsIDIwMTksIGF0IDM6NDMgUE0sIFBhdWwgV2FsbXNsZXkgPHBhdWwud2FsbXNsZXlAc2lm
aXZlLmNvbT4gd3JvdGU6Cj4+Cj4+ICsgQW51cCwgVHJveQo+Pgo+PiBPbiBXZWQsIDIyIE1heSAy
MDE5LCBBdGlzaCBQYXRyYSB3cm90ZToKPj4KPj4+IE9uIDUvMjIvMTkgOTo0MiBBTSwgUGF1bCBX
YWxtc2xleSB3cm90ZToKPj4+PiBBbSBjaGVja2luZyBvbiB0aGlzIG5vdyBhbmQgaG9wZSB0byBo
YXZlIHNvbWUgY29uY2x1c2lvbiBvbiBpdCB0aGlzIHdlZWsuCj4+Pgo+Pj4gVGhhbmtzLiBBbnkg
Y2hhbmNlIHlvdSBjYW4gdGFrZSBhIGxvb2sgYXQgdGhlIFUtQm9vdCBjbG9jayBkcml2ZXIgdG8g
cGF0Y2ggaXQKPj4+IGFzIHBlciB0aGUgRFQgY2hhbmdlcyA/Cj4+Cj4+IEkgcHJvYmFibHkgd29u
J3QgaGF2ZSB0aGUgY2hhbmNlIHRvIGdldCB0byBpdCBmb3IgYSB3aGlsZS4gIExvb2tzIGxpa2UK
Pj4gQW51cCB3YXMgdGhlIG9uZSB3aG8gcG9zdGVkIHRoZSBjbG9jayBkcml2ZXIgdG8gVS1Cb290
IC0gY2FuIGhlIHRha2UgYQo+PiBsb29rIGF0IGl0Pwo+Pgo+PiBXZSd2ZSBhbHNvIGFza2VkIFRy
b3kgdG8gbG9vayBhdCB1cHN0cmVhbSBVLWJvb3QgcmVsYXRlZCBpc3N1ZXMsIGJ1dAo+PiBJJ20g
dW5zdXJlIHdoZW4gcGF0Y2hlcyB3aWxsIHN0YXJ0IGZsb3dpbmcgdXBzdHJlYW0uCj4+Cj4+Cj4+
IC0gUGF1bAo+IAo+IAo+IEnigJlkIHByZWZlciB0byBob2xkIG9mZiBvbiBhbnkgY2hhbmdlcyB0
byBVLWJvb3QgdW50aWwgd2UgaGF2ZSBhIG1vcmUgY29tcGxldGUgcGF0Y2ggc2V0LiBHUElPIGFu
ZCBldGhlcm5ldCBlbnRyaWVzIGFyZSBtaXNzaW5nIGZyb20gdGhvc2UgZGV2aWNlIHRyZWVzLCBh
bmQgd2UgaGF2ZSBhIHdvcmtpbmcgVS1ib290IGRldmljZSB0cmVlIG5vdy4gSWYgdGhlIGtlcm5l
bCBuZWVkcyBzb21ldGhpbmcgZGlmZmVyZW50IHdlIGNhbiBsb2FkIHRoZSBkZXZpY2UgdHJlZSB0
aGUga2VybmVsIG5lZWRzIGZvciBhd2hpbGUuCj4gCgpJIGRvbid0IHRoaW5rIHRoYXQncyBhIGdv
b2QgaWRlYS4gSXQgd2lsbCB1bm5lY2Vzc2FyaWx5IGJsb2NrIApldmVyeWJvZHkncyBzZXR1cCB0
aGF0IGlzIHN1cHBvc2VkIHRvIHdvcmsgd2l0aCBVLUJvb3QuIEkgcHJlZmVyIGlmIHdlIApjYW4g
cGF0Y2ggVS1Cb290IGFuZCB1bmJsb2NrIGV2ZXJ5Ym9keSBzb29uZXIgdGhhbiBsYXRlci4KCj4g
VGhlIFUtYm9vdCBkZXZpY2UgdHJlZSBpcyBnb2luZyB0byBoYXZlIHNvbWUgdGhpbmdzIGluIGl0
IHRoZSBrZXJuZWwgZG9lc27igJl0IGNhcmUgYWJvdXQgYW55d2F5LCBzbyB3ZeKAmXZlIGFscmVh
ZHkgZ290IGRpdmVyZ2VuY2UgYmV0d2VlbiB0aGUgdHdvLiBJZGVhbGx5IHRoZSBVLWJvb3QgdmVy
c2lvbiBpcyBhIHN1cGVyc2V0IG9mIHRoZSBrZXJuZWwgdmVyc2lvbi4gV2UgYWxyZWFkeSBoYWQg
b25lIGRpc3J1cHRpdmUgY2hhbmdlIHdpdGggdGhlIGNsb2NrIGRyaXZlciwgc28gd2hhdCBpcyB0
byBwcmV2ZW50IHRoZXJlIHRvIGJlIG1vcmUgZGlzcnVwdGl2ZSBjaGFuZ2VzIGluIHRoZSBldGhl
cm5ldC9HUElPIGRldmljZSB0cmVlIGVudHJpZXMgdGhhdCBnbyBpbiB0aGUga2VybmVsIHVubGVz
cyB3ZSBoYXZlIGEgZHJhZnQgb2Ygd2hhdCB0aG9zZSBlbnRyaWVzIHNob3VsZCBsb29rIGxpa2Ug
dGhhdCBpcyBhY2NlcHRhYmxlPwo+IApJSVJDLCBjdXJyZW50IFUtQm9vdCBTIG1vZGUgcG9ydCBk
b2Vzbid0IG5lZWQgYSBHUElPIGRyaXZlciBhbmQgZXRoZXJuZXQgCmRyaXZlciBpcyBwcm92aWRl
ZCBieSB0aGUgY29tbW9uIG1hY2IgZHJpdmVyLiBJZiB0aGVyZSBhcmUgYW55IERUIApjaGFuZ2Vz
IHN1Z2dlc3RlZCBieSBrZXJuZWwsIHdlIGNhbiBhbHdheXMgcGF0Y2ggVS1Cb290LgoKLS0gClJl
Z2FyZHMsCkF0aXNoCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpsaW51eC1yaXNjdiBtYWlsaW5nIGxpc3QKbGludXgtcmlzY3ZAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJp
c2N2Cg==
