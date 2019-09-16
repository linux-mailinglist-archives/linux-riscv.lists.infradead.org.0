Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD5F8B34EB
	for <lists+linux-riscv@lfdr.de>; Mon, 16 Sep 2019 08:54:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=os7zrcomfntLyErB/z6W2fdbIdDRfRm9sTSXPSQ7Omk=; b=In59i/VjWN4VWZ
	fXBzV8S+wZCAYLpsvpbGg4xUJ6HtYfFMjFUqLzKKjRK74FJZO57/nYV8I6NGjlf5PXZPOpa5VXPdU
	4WryPf3FSIFesG1B68YOrkrCfS9GsdQ1zFBCT3uNXor666+fLE90nqjb69PvGkqZorBRTwGuV+AI4
	RmJxWQ9+b7olK+cBm6OV2tqpw9/9Q9bboTu76/TPhRzFRWQK/Cka+U3b/h1ksHLI8XQIBO1AjVYFm
	7DUN1rl+KQHhraqEIzzSRUVTSsQBcZpbZva8kbGcQhBMlY2IsZXNohN+w04r/uXSUSIRedziKMTB/
	M8zQuqt2HsOIBcYr5IsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9kuP-0001rn-Nf; Mon, 16 Sep 2019 06:54:49 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92.2 #3 (Red
 Hat Linux)) id 1i9kuM-0001r7-Cu; Mon, 16 Sep 2019 06:54:46 +0000
Date: Sun, 15 Sep 2019 23:54:46 -0700
From: "hch@infradead.org" <hch@infradead.org>
To: Palmer Dabbelt <palmer@sifive.com>
Subject: Re: [RFC PATCH 0/2] Add support for SBI version to 0.2
Message-ID: <20190916065446.GA6566@infradead.org>
References: <20190826233256.32383-1-atish.patra@wdc.com>
 <20190827144624.GA18535@infradead.org>
 <a31c39e8653bd04efe0051a5fd6f0238d33a80e7.camel@wdc.com>
 <20190829105919.GB8968@infradead.org>
 <4bd0a62ba36587661574e1bf8b094b0a28ec8941.camel@wdc.com>
 <20190903073845.GA1170@infradead.org>
 <CANs6eMmcbtJ5KTU00LpfTtXszsdi1Jem_5j6GWO+8Yo3JnvTqg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CANs6eMmcbtJ5KTU00LpfTtXszsdi1Jem_5j6GWO+8Yo3JnvTqg@mail.gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
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
 "alankao@andestech.com" <alankao@andestech.com>,
 "alexios.zavras@intel.com" <alexios.zavras@intel.com>,
 "anup@brainfault.org" <anup@brainfault.org>,
 "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "rppt@linux.ibm.com" <rppt@linux.ibm.com>,
 "hch@infradead.org" <hch@infradead.org>, Atish Patra <Atish.Patra@wdc.com>,
 "gary@garyguo.net" <gary@garyguo.net>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "tglx@linutronix.de" <tglx@linutronix.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

T24gRnJpLCBTZXAgMTMsIDIwMTkgYXQgMDg6NTQ6MjdBTSAtMDcwMCwgUGFsbWVyIERhYmJlbHQg
d3JvdGU6Cj4gT24gVHVlLCBTZXAgMywgMjAxOSBhdCAxMjozOCBBTSBoY2hAaW5mcmFkZWFkLm9y
ZyA8aGNoQGluZnJhZGVhZC5vcmc+IHdyb3RlOgo+IAo+ID4gT24gRnJpLCBBdWcgMzAsIDIwMTkg
YXQgMTE6MTM6MjVQTSArMDAwMCwgQXRpc2ggUGF0cmEgd3JvdGU6Cj4gPiA+IElmIEkgdW5kZXJz
dG9vZCB5b3UgY2xlYXJseSwgeW91IHdhbnQgdG8gY2FsbCBpdCBsZWdhY3kgaW4gdGhlIHNwZWMg
YW5kCj4gPiA+IGp1c3Qgc2F5IHYwLjEgZXh0ZW5zaW9ucy4KPiA+ID4gCj4gPiA+IFRoZSB3aG9s
ZSBpZGVhIG9mIG1hcmtpbmcgdGhlbSBhcyBsZWdhY3kgZXh0ZW5zaW9ucyB0byBpbmRpY2F0ZSB0
aGF0IGl0Cj4gPiA+IHdvdWxkIGJlIG9ic29sZXRlIGluIHRoZSBmdXR1cmUuCj4gPiA+IAo+ID4g
PiBCdXQgSSBhbSBub3QgdG9vIHdvcnJpZWQgYWJvdXQgdGhlIHNlbWFudGljcyBoZXJlLiBTbyBJ
IGFtIGZpbmUgd2l0aAo+ID4gPiBqdXN0IGNoYW5naW5nIHRoZSB0ZXh0IHRvIHYwLjEgaWYgdGhh
dCBhdm9pZHMgY29uZnVzaW9uLgo+ID4KPiA+IFNvIG15IG1haW4gcHJvYmxlbXMgaXMgdGhhdCB3
ZSBhcmUgbHVtcGluZyBhbGwgdGhlICJsZWdhY3kiIGV4dGVuc2lvbnMKPiA+IHRvZ2V0aGVyLiAg
V2hpbGUgc29tZSBvZiB0aGVtIGFyZSBzaW1wbHkgYSBiYWQgaWRlYSBhbmQgc2hvdWxkbid0Cj4g
PiByZWFsbHkgYmUgaW1wbGVtZW50ZWQgZm9yIGFueXRoaW5nIG5ldyBldmVyLCBvdGhlcnMgbGlr
ZSB0aGUgc2ZlbmNlLnZtYQo+ID4gYW5kIGlwaSBvbmVzIGFyZSBuZWVkZWQgdW50aWwgd2UgaGF2
ZSBoYXJkd2FyZSBzdXBwb3J0IHRvIGF2b2lkIHRoZW0KPiA+IGFuZCBwb3NzaWJseSBmb3JldmVy
IGZvciB2aXJ0dWFsaXphdGlvbi4KPiA+Cj4gPiBTbyBlaXRoZXIgd2UgdXNlIGRpZmZlcmVudCBt
YXJrZXJzIG9mIGxlZ2FjeSBmb3IgdGhlbSwgb3Igd2UgYXQgbGVhc3QKPiA+IGRlZmluZSBuZXcg
ZXh0ZW5zaW9ucyB0aGF0IHJlcGxhY2UgdGhlbSBhdCB0aGUgc2FtZSB0aW1lLiAgV2hhdCBJCj4g
PiB3YW50IHRvIGF2b2lkIGlzIHRoZSBwb3NzaWLRlmx5IG9mIGFuIGltcGxlbWVudGF0aW9uIHVz
aW5nIHRoZSByZWFsbHkKPiA+IGxlZ2FjeSBiaXRzIGFuZCBuZXcgZXh0ZW5zaW9ucyBhdCB0aGUg
c2FtZSB0aW1lLgo+ID4KPiAKPiBOb21pbmFsbHkgd2UndmUgZ290IHRvIHJlcGxhY2UgdGhlc2Ug
YXMgd2VsbCBiZWNhdXNlIHdlIGRpZG4ndCBpbmNsdWRlCj4gdGhlIGxlbmd0aCBvZiB0aGUgaGFy
dCBtYXNrLiAKCldlbGwsIGxldCdzIGRvIHRoYXQgYXMgcGFydCBvZiBkZWZpbmluaW5nIHRoZSBm
aXJzdCByZWFsIHBvc3QtMC4xClNCSSB0aGVuLCBhbmQgZG9uJ3QgYm90aGVyIGRlZmluaW5nIHRo
ZSBvbGQgb25lcyBhcyBsZWdhY3kgYXQgYWxsLgoKSnVzdCB0d28gZGlmZmVyZW50IHNwZWNzIHRo
YXQgZG9uJ3QgaW50ZXJhY3QgZXhjZXB0IHRoYXQgd2UgcmVzZXJ2ZQpleHRlbnNpb24gc3BhY2Ug
aW4gdGhlIG5ldyBvbmUgZm9yIHRoZSBvbGQgb25lIHNvIHRoYXQgb25lIFNCSSBzcGVjCmNhbiBp
bXBsZW1lbnQgYm90aC4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmxpbnV4LXJpc2N2IG1haWxpbmcgbGlzdApsaW51eC1yaXNjdkBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cmlzY3YK
