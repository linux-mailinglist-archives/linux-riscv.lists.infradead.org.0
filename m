Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38AFA3CEE5
	for <lists+linux-riscv@lfdr.de>; Tue, 11 Jun 2019 16:37:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mtUNe4PJyXbiQQ2kK1PnPqzOmULE5OSMZLzQeWGCoXg=; b=eSte+4W4tDssLR
	ZSj84cUrRMXHHZEZCzFi49TfJXLOv8OZJSzRwaLRoGY5Vg/T5wz6gHPqHMbjrJ7T/SDr9Y00sC6aK
	SRmkNEQ4K6TkQVImNPTfBsGhyEsMHwT8gDCMmKbEgIU9HrZBScFmGjawh/y3snnEdQCE+PzZM8jgp
	Rb2hKKtGq/4euSW2DG/YmL/i3TTI7aHLiGFUX4kXwuW7vbZwobk/UIvQgyanwrmNhCL4ExKizgceP
	kgKLcehTvm9PgiOpT/VZorv3QG70/XY+QcGsmbOFjfWwT4EHuN0pA0uuzTVogkb6HJHKdSPTTWR7z
	Z6dLNDOabI92F2teZgQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hahtc-0002mj-Uw; Tue, 11 Jun 2019 14:37:09 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hahtQ-0002dY-Il
 for linux-riscv@lists.infradead.org; Tue, 11 Jun 2019 14:36:58 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 093FC346;
 Tue, 11 Jun 2019 07:36:56 -0700 (PDT)
Received: from [10.1.29.141] (e121487-lin.cambridge.arm.com [10.1.29.141])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 187C33F557;
 Tue, 11 Jun 2019 07:36:54 -0700 (PDT)
Subject: Re: [PATCH 02/17] mm: stub out all of swapops.h for !CONFIG_MMU
To: Christoph Hellwig <hch@lst.de>
References: <20190610221621.10938-1-hch@lst.de>
 <20190610221621.10938-3-hch@lst.de>
 <516c8def-22db-027c-873d-a943454e33af@arm.com>
 <20190611141841.GA29151@lst.de>
From: Vladimir Murzin <vladimir.murzin@arm.com>
Message-ID: <80d01a1d-b6b0-18e8-811c-71af14cba3b9@arm.com>
Date: Tue, 11 Jun 2019 15:36:53 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190611141841.GA29151@lst.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_073656_729531_57C3374E 
X-CRM114-Status: GOOD (  13.36  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Damien Le Moal <damien.lemoal@wdc.com>, uclinux-dev@uclinux.org,
 Palmer Dabbelt <palmer@sifive.com>, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

T24gNi8xMS8xOSAzOjE4IFBNLCBDaHJpc3RvcGggSGVsbHdpZyB3cm90ZToKPiBPbiBUdWUsIEp1
biAxMSwgMjAxOSBhdCAxMToxNTo0NEFNICswMTAwLCBWbGFkaW1pciBNdXJ6aW4gd3JvdGU6Cj4+
IE9uIDYvMTAvMTkgMTE6MTYgUE0sIENocmlzdG9waCBIZWxsd2lnIHdyb3RlOgo+Pj4gVGhlIHdo
b2xlIGhlYWRlciBmaWxlIGRlYWxzIHdpdGggc3dhcCBlbnRyaWVzIGFuZCBQVEVzLCBub25lIG9m
IHdoaWNoCj4+PiBjYW4gZXhpc3QgZm9yIG5vbW11IGJ1aWxkcy4KPj4KPj4gQWx0aG91Z2ggSSBh
Z3JlZSB3aXRoIHRoZSBwYXRjaCwgSSdtIHdvbmRlcmluZyBob3cgeW91IGdldCBpbnRvIGl0Pwo+
IAo+IFdpdGhvdXQgdGhhdCB0aGUgUklTQy1WIG5vbW11IGJsb3dzIHVwIGxpa2UgdGhpczoKPiAK
PiAKPiBJbiBmaWxlIGluY2x1ZGVkIGZyb20gbW0vdm1zY2FuLmM6NTg6Cj4gLi9pbmNsdWRlL2xp
bnV4L3N3YXBvcHMuaDogSW4gZnVuY3Rpb24g4oCYcHRlX3RvX3N3cF9lbnRyeeKAmToKPiAuL2lu
Y2x1ZGUvbGludXgvc3dhcG9wcy5oOjcxOjE1OiBlcnJvcjogaW1wbGljaXQgZGVjbGFyYXRpb24g
b2YgZnVuY3Rpb24g4oCYX19wdGVfdG9fc3dwX2VudHJ54oCZOyBkaWQgeW91IG1lYW4g4oCYcHRl
X3RvX3N3cF9lbnRyeeKAmT8gWy1XZXJyb3I9aW1wbGljaXQtZnVuY3Rpb24tZGVjbGFyYXRpb25d
Cj4gICBhcmNoX2VudHJ5ID0gX19wdGVfdG9fc3dwX2VudHJ5KHB0ZSk7Cj4gICAgICAgICAgICAg
ICAgXn5+fn5+fn5+fn5+fn5+fn5+Cj4gICAgICAgICAgICAgICAgcHRlX3RvX3N3cF9lbnRyeQo+
IC4vaW5jbHVkZS9saW51eC9zd2Fwb3BzLmg6NzE6MTM6IGVycm9yOiBpbmNvbXBhdGlibGUgdHlw
ZXMgd2hlbiBhc3NpZ25pbmcgdG8gdHlwZSDigJhzd3BfZW50cnlfdOKAmSB7YWthIOKAmHN0cnVj
dCA8YW5vbnltb3VzPuKAmX0gZnJvbSB0eXBlIOKAmGludOKAmQo+ICAgYXJjaF9lbnRyeSA9IF9f
cHRlX3RvX3N3cF9lbnRyeShwdGUpOwo+ICAgICAgICAgICAgICBeCj4gLi9pbmNsdWRlL2xpbnV4
L3N3YXBvcHMuaDo3MjoxOTogZXJyb3I6IGltcGxpY2l0IGRlY2xhcmF0aW9uIG9mIGZ1bmN0aW9u
IOKAmF9fc3dwX3R5cGXigJk7IGRpZCB5b3UgbWVhbiDigJhzd3BfdHlwZeKAmT8gWy1XZXJyb3I9
aW1wbGljaXQtZnVuY3Rpb24tZGVjbGFyYXRpb25dCj4gICByZXR1cm4gc3dwX2VudHJ5KF9fc3dw
X3R5cGUoYXJjaF9lbnRyeSksIF9fc3dwX29mZnNldChhcmNoX2VudHJ5KSk7Cj4gICAgICAgICAg
ICAgICAgICAgIF5+fn5+fn5+fn4KPiAgICAgICAgICAgICAgICAgICAgc3dwX3R5cGUKPiAuL2lu
Y2x1ZGUvbGludXgvc3dhcG9wcy5oOjcyOjQzOiBlcnJvcjogaW1wbGljaXQgZGVjbGFyYXRpb24g
b2YgZnVuY3Rpb24g4oCYX19zd3Bfb2Zmc2V04oCZOyBkaWQgeW91IG1lYW4g4oCYc3dwX29mZnNl
dOKAmT8gWy1XZXJyb3I9aW1wbGljaXQtZnVuY3Rpb24tZGVjbGFyYXRpb25dCj4gICByZXR1cm4g
c3dwX2VudHJ5KF9fc3dwX3R5cGUoYXJjaF9lbnRyeSksIF9fc3dwX29mZnNldChhcmNoX2VudHJ5
KSk7Cj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIF5+fn5+fn5+
fn5+fgo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBzd3Bfb2Zm
c2V0Cj4gLi9pbmNsdWRlL2xpbnV4L3N3YXBvcHMuaDogSW4gZnVuY3Rpb24g4oCYc3dwX2VudHJ5
X3RvX3B0ZeKAmToKPiAuL2luY2x1ZGUvbGludXgvc3dhcG9wcy5oOjgzOjE1OiBlcnJvcjogaW1w
bGljaXQgZGVjbGFyYXRpb24gb2YgZnVuY3Rpb24g4oCYX19zd3BfZW50cnnigJk7IGRpZCB5b3Ug
bWVhbiDigJhzd3BfZW50cnnigJk/IFstV2Vycm9yPWltcGxpY2l0LWZ1bmN0aW9uLWRlY2xhcmF0
aW9uXQo+ICAgYXJjaF9lbnRyeSA9IF9fc3dwX2VudHJ5KHN3cF90eXBlKGVudHJ5KSwgc3dwX29m
ZnNldChlbnRyeSkpOwo+ICAgICAgICAgICAgICAgIF5+fn5+fn5+fn5+Cj4gICAgICAgICAgICAg
ICAgc3dwX2VudHJ5Cj4gLi9pbmNsdWRlL2xpbnV4L3N3YXBvcHMuaDo4MzoxMzogZXJyb3I6IGlu
Y29tcGF0aWJsZSB0eXBlcyB3aGVuIGFzc2lnbmluZyB0byB0eXBlIOKAmHN3cF9lbnRyeV904oCZ
IHtha2Eg4oCYc3RydWN0IDxhbm9ueW1vdXM+4oCZfSBmcm9tIHR5cGUg4oCYaW504oCZCj4gICBh
cmNoX2VudHJ5ID0gX19zd3BfZW50cnkoc3dwX3R5cGUoZW50cnkpLCBzd3Bfb2Zmc2V0KGVudHJ5
KSk7Cj4gICAgICAgICAgICAgIF4KPiAuL2luY2x1ZGUvbGludXgvc3dhcG9wcy5oOjg0Ojk6IGVy
cm9yOiBpbXBsaWNpdCBkZWNsYXJhdGlvbiBvZiBmdW5jdGlvbiDigJhfX3N3cF9lbnRyeV90b19w
dGXigJk7IGRpZCB5b3UgbWVhbiDigJhzd3BfZW50cnlfdG9fcHRl4oCZPyBbLVdlcnJvcj1pbXBs
aWNpdC1mdW5jdGlvbi1kZWNsYXJhdGlvbl0KPiAgIHJldHVybiBfX3N3cF9lbnRyeV90b19wdGUo
YXJjaF9lbnRyeSk7Cj4gICAgICAgICAgXn5+fn5+fn5+fn5+fn5+fn5+Cj4gICAgICAgICAgc3dw
X2VudHJ5X3RvX3B0ZQo+IC4vaW5jbHVkZS9saW51eC9zd2Fwb3BzLmg6ODQ6OTogZXJyb3I6IGlu
Y29tcGF0aWJsZSB0eXBlcyB3aGVuIHJldHVybmluZyB0eXBlIOKAmGludOKAmSBidXQg4oCYcHRl
X3TigJkge2FrYSDigJhzdHJ1Y3QgPGFub255bW91cz7igJl9IHdhcyBleHBlY3RlZAo+ICAgcmV0
dXJuIF9fc3dwX2VudHJ5X3RvX3B0ZShhcmNoX2VudHJ5KTsKPiAgICAgICAgICBefn5+fn5+fn5+
fn5+fn5+fn5+fn5+fn5+fn5+fn4KPiBjYzE6IHNvbWUgd2FybmluZ3MgYmVpbmcgdHJlYXRlZCBh
cyBlcnJvcnMKPiBtYWtlWzFdOiAqKiogW3NjcmlwdHMvTWFrZWZpbGUuYnVpbGQ6Mjc4OiBtbS92
bXNjYW4ub10gRXJyb3IgMQo+IG1ha2U6ICoqKiBbTWFrZWZpbGU6MTA3MTogbW1dIEVycm9yIDIK
PiBtYWtlOiAqKiogV2FpdGluZyBmb3IgdW5maW5pc2hlZCBqb2JzLi4uLgo+IAoKSXQgbG9va3Mg
bGlrZSBOT01NVSBwb3J0cyB0ZW5kIHRvIGRlZmluZSB0aG9zZS4gRm9yIEFSTSB0aGV5IGFyZToK
CiNkZWZpbmUgX19zd3BfdHlwZSh4KSAgICAgICAgICAgKDApCiNkZWZpbmUgX19zd3Bfb2Zmc2V0
KHgpICAgICAgICAgKDApCiNkZWZpbmUgX19zd3BfZW50cnkodHlwLG9mZikgICAgKChzd3BfZW50
cnlfdCkgeyAoKHR5cCkgfCAoKG9mZikgPDwgNykpIH0pCiNkZWZpbmUgX19wdGVfdG9fc3dwX2Vu
dHJ5KHB0ZSkgKChzd3BfZW50cnlfdCkgeyBwdGVfdmFsKHB0ZSkgfSkKI2RlZmluZSBfX3N3cF9l
bnRyeV90b19wdGUoeCkgICAoKHB0ZV90KSB7ICh4KS52YWwgfSkKCkFueXdheSwgSSBoYXZlIG5v
IHN0cm9uZyBvcGluaW9uIG9uIHdoaWNoIGlzIGJldHRlciA6KQoKQ2hlZXJzClZsYWRpbWlyCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1yaXNj
diBtYWlsaW5nIGxpc3QKbGludXgtcmlzY3ZAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJpc2N2Cg==
