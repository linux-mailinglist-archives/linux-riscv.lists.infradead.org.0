Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00E3487685
	for <lists+linux-riscv@lfdr.de>; Fri,  9 Aug 2019 11:46:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=n7TpUlOQ5imF8oiFXkzKNM0QJd9tcU9oysGKTMM8Nr0=; b=nAaDWbxRKwfLYqmhxgLWEtJk+
	PFB0YpkFtVs8KdqLkV5q60HfQxhl/2PZGxie+PqdbU1KN1ztcQIpYYDeTsZZMgygYgSS7rcRuFGE5
	UMri26T6DZ0EKDCFHUTio7RhB2PMHKrzzth9NnOlMYnjEBSPhRxZTDhc0r36NVpmUy8MvC7VmHOgb
	v+pK7U3Rp4pMK3zg68JEU5wlI75ctag1DTekbLgRL5w9CJS3BJ9iOlF+8vegkbkvOjZBWA+q+Pk+N
	QT1yBtkw+ZWBACqjcVOAG+ZekhCNT68uo+r9Uw0Z8AV0ic+rJohG7XNc0JPnmvZAn9Doq+chr6Wcx
	rhT9Rq2/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw1TW-0005SK-J8; Fri, 09 Aug 2019 09:46:18 +0000
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hw1TA-0005Bj-FM; Fri, 09 Aug 2019 09:45:58 +0000
X-Originating-IP: 81.250.144.103
Received: from [10.30.1.20] (lneuilly-657-1-5-103.w81-250.abo.wanadoo.fr
 [81.250.144.103]) (Authenticated sender: alex@ghiti.fr)
 by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id 732B46000D;
 Fri,  9 Aug 2019 09:45:51 +0000 (UTC)
Subject: Re: [PATCH v6 11/14] mips: Adjust brk randomization offset to fit
 generic version
To: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>,
 Andrew Morton <akpm@linux-foundation.org>
References: <20190808061756.19712-1-alex@ghiti.fr>
 <20190808061756.19712-12-alex@ghiti.fr>
 <68ec5cf6-6ba3-68ab-aa01-668b701c642f@cogentembedded.com>
From: Alexandre Ghiti <alex@ghiti.fr>
Message-ID: <7b7e256d-5106-3022-9ded-0af4193b6b8b@ghiti.fr>
Date: Fri, 9 Aug 2019 11:45:51 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <68ec5cf6-6ba3-68ab-aa01-668b701c642f@cogentembedded.com>
Content-Language: fr
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_024556_841570_176424BB 
X-CRM114-Status: GOOD (  15.29  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.195 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.195 listed in wl.mailspike.net]
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Kees Cook <keescook@chromium.org>,
 James Hogan <jhogan@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>,
 Palmer Dabbelt <palmer@sifive.com>, Will Deacon <will.deacon@arm.com>,
 Russell King <linux@armlinux.org.uk>, Ralf Baechle <ralf@linux-mips.org>,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 Luis Chamberlain <mcgrof@kernel.org>, Paul Burton <paul.burton@mips.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, linux-fsdevel@vger.kernel.org,
 linux-riscv@lists.infradead.org, linux-mips@vger.kernel.org,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org,
 Alexander Viro <viro@zeniv.linux.org.uk>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

T24gOC84LzE5IDExOjE5IEFNLCBTZXJnZWkgU2h0eWx5b3Ygd3JvdGU6Cj4gSGVsbG8hCj4KPiBP
biAwOC4wOC4yMDE5IDk6MTcsIEFsZXhhbmRyZSBHaGl0aSB3cm90ZToKPgo+PiBUaGlzIGNvbW1p
dCBzaW1wbHkgYnVtcHMgdXAgdG8gMzJNQiBhbmQgMUdCIHRoZSByYW5kb20gb2Zmc2V0Cj4+IG9m
IGJyaywgY29tcGFyZWQgdG8gOE1CIGFuZCAyNTZNQiwgZm9yIDMyYml0IGFuZCA2NGJpdCByZXNw
ZWN0aXZlbHkuCj4+Cj4+IFN1Z2dlc3RlZC1ieTogS2VlcyBDb29rIDxrZWVzY29va0BjaHJvbWl1
bS5vcmc+Cj4+IFNpZ25lZC1vZmYtYnk6IEFsZXhhbmRyZSBHaGl0aSA8YWxleEBnaGl0aS5mcj4K
Pj4gQWNrZWQtYnk6IFBhdWwgQnVydG9uIDxwYXVsLmJ1cnRvbkBtaXBzLmNvbT4KPj4gUmV2aWV3
ZWQtYnk6IEtlZXMgQ29vayA8a2Vlc2Nvb2tAY2hyb21pdW0ub3JnPgo+PiBSZXZpZXdlZC1ieTog
THVpcyBDaGFtYmVybGFpbiA8bWNncm9mQGtlcm5lbC5vcmc+Cj4+IC0tLQo+PiDCoCBhcmNoL21p
cHMvbW0vbW1hcC5jIHwgNyArKysrLS0tCj4+IMKgIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlv
bnMoKyksIDMgZGVsZXRpb25zKC0pCj4+Cj4+IGRpZmYgLS1naXQgYS9hcmNoL21pcHMvbW0vbW1h
cC5jIGIvYXJjaC9taXBzL21tL21tYXAuYwo+PiBpbmRleCBhN2U4NGIyZTcxZDcuLmZmNmFiODdl
OWM1NiAxMDA2NDQKPj4gLS0tIGEvYXJjaC9taXBzL21tL21tYXAuYwo+PiArKysgYi9hcmNoL21p
cHMvbW0vbW1hcC5jCj4gWy4uLl0KPj4gQEAgLTE4OSwxMSArMTkwLDExIEBAIHN0YXRpYyBpbmxp
bmUgdW5zaWduZWQgbG9uZyBicmtfcm5kKHZvaWQpCj4+IMKgwqDCoMKgwqAgdW5zaWduZWQgbG9u
ZyBybmQgPSBnZXRfcmFuZG9tX2xvbmcoKTsKPj4gwqAgwqDCoMKgwqDCoCBybmQgPSBybmQgPDwg
UEFHRV9TSElGVDsKPj4gLcKgwqDCoCAvKiA4TUIgZm9yIDMyYml0LCAyNTZNQiBmb3IgNjRiaXQg
Ki8KPj4gK8KgwqDCoCAvKiAzMk1CIGZvciAzMmJpdCwgMUdCIGZvciA2NGJpdCAqLwo+PiDCoMKg
wqDCoMKgIGlmIChUQVNLX0lTXzMyQklUX0FERFIpCj4+IC3CoMKgwqDCoMKgwqDCoCBybmQgPSBy
bmQgJiAweDdmZmZmZnVsOwo+PiArwqDCoMKgwqDCoMKgwqAgcm5kID0gcm5kICYgKFNaXzMyTSAt
IDEpOwo+PiDCoMKgwqDCoMKgIGVsc2UKPj4gLcKgwqDCoMKgwqDCoMKgIHJuZCA9IHJuZCAmIDB4
ZmZmZmZmZnVsOwo+PiArwqDCoMKgwqDCoMKgwqAgcm5kID0gcm5kICYgKFNaXzFHIC0gMSk7Cj4K
PiDCoMKgIFdoeSBub3QgbWFrZSB0aGVzZSAncm5kICY9IFNaXyogLSAxJywgd2hpbGUgYXQgaXQg
YW55d2F5cz8KCgpZb3UncmUgcmlnaHQsIEkgY291bGQgaGF2ZS4gQWdhaW4sIHRoaXMgY29kZSBn
ZXRzIHJlbW92ZWQgYWZ0ZXJ3YXJkcywgc28gCkkgdGhpbmsgaXQncyBvawp0byBsZWF2ZSBpdCBh
cyBpcy4KCkFueXdheSwgdGhhbmtzIGZvciB5b3VyIHJlbWFya3MgU2VyZ2VpICEKCkFsZXgKCgo+
Cj4gWy4uLl0KPgo+IE1CUiwgU2VyZ2VpCj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwo+IGxpbnV4LXJpc2N2IG1haWxpbmcgbGlzdAo+IGxpbnV4LXJp
c2N2QGxpc3RzLmluZnJhZGVhZC5vcmcKPiBodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXJpc2N2CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpsaW51eC1yaXNjdiBtYWlsaW5nIGxpc3QKbGludXgtcmlzY3ZAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXJpc2N2Cg==
