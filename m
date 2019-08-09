Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F9A487672
	for <lists+linux-riscv@lfdr.de>; Fri,  9 Aug 2019 11:45:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=HupH2uURrZQ8/yFEG9hOVP2XYYICFPfL3W8BdTBlPgQ=; b=b27geN4byi/pMlFfkLVUViSem
	2YDNfvmag3KLlaoBdrHnBqsHmZr4uwyC/1aCXgnmRiiKOTbUQmuLUMgyLY1Z1Q4yhK466qKiiXk9Z
	rlGheXvVga8ctzd2fzA+jeS+BCdQZhjOz4LDYsurW1yj8WCS4PJ2iM4SNNHk47hIbVHhha4DPS/ya
	WZ44zja9ODp3vvHo4E1A+19K+K0AcYU4C7P8qx6S9vHVg3FOx119BnG2s+158rHz09cIEYBua3QCP
	B+/F5eBxg580HFbYik5me3/yBhcNxM8Jz2C/dfEeRNf8WpdOIES9Qk+kX6ZuQSnJwnyEjK/IrxvkQ
	0rI/6Bu4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw1SS-0004UM-IC; Fri, 09 Aug 2019 09:45:12 +0000
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hw1S7-0003Um-UP; Fri, 09 Aug 2019 09:44:54 +0000
X-Originating-IP: 81.250.144.103
Received: from [10.30.1.20] (lneuilly-657-1-5-103.w81-250.abo.wanadoo.fr
 [81.250.144.103]) (Authenticated sender: alex@ghiti.fr)
 by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id 5865C6000D;
 Fri,  9 Aug 2019 09:44:39 +0000 (UTC)
Subject: Re: [PATCH v6 09/14] mips: Properly account for stack randomization
 and stack guard gap
To: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>,
 Andrew Morton <akpm@linux-foundation.org>
References: <20190808061756.19712-1-alex@ghiti.fr>
 <20190808061756.19712-10-alex@ghiti.fr>
 <bd67507e-8a5b-34b5-1a33-5500bbb724b2@cogentembedded.com>
From: Alexandre Ghiti <alex@ghiti.fr>
Message-ID: <91e31484-b268-2c90-1dd1-98cec349af6c@ghiti.fr>
Date: Fri, 9 Aug 2019 11:44:38 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <bd67507e-8a5b-34b5-1a33-5500bbb724b2@cogentembedded.com>
Content-Language: fr
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_024452_280934_549C5A3D 
X-CRM114-Status: GOOD (  16.93  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.195 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.195 listed in wl.mailspike.net]
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

T24gOC84LzE5IDExOjE2IEFNLCBTZXJnZWkgU2h0eWx5b3Ygd3JvdGU6Cj4gSGVsbG8hCj4KPiBP
biAwOC4wOC4yMDE5IDk6MTcsIEFsZXhhbmRyZSBHaGl0aSB3cm90ZToKPgo+PiBUaGlzIGNvbW1p
dCB0YWtlcyBjYXJlIG9mIHN0YWNrIHJhbmRvbWl6YXRpb24gYW5kIHN0YWNrIGd1YXJkIGdhcCB3
aGVuCj4+IGNvbXB1dGluZyBtbWFwIGJhc2UgYWRkcmVzcyBhbmQgY2hlY2tzIGlmIHRoZSB0YXNr
IGFza2VkIGZvciAKPj4gcmFuZG9taXphdGlvbi4KPj4KPj4gVGhpcyBmaXhlcyB0aGUgcHJvYmxl
bSB1bmNvdmVyZWQgYW5kIG5vdCBmaXhlZCBmb3IgYXJtIGhlcmU6Cj4+IGh0dHBzOi8vbGttbC5r
ZXJuZWwub3JnL3IvMjAxNzA2MjIyMDAwMzMuMjU3MTQtMS1yaWVsQHJlZGhhdC5jb20KPj4KPj4g
U2lnbmVkLW9mZi1ieTogQWxleGFuZHJlIEdoaXRpIDxhbGV4QGdoaXRpLmZyPgo+PiBBY2tlZC1i
eTogS2VlcyBDb29rIDxrZWVzY29va0BjaHJvbWl1bS5vcmc+Cj4+IEFja2VkLWJ5OiBQYXVsIEJ1
cnRvbiA8cGF1bC5idXJ0b25AbWlwcy5jb20+Cj4+IFJldmlld2VkLWJ5OiBMdWlzIENoYW1iZXJs
YWluIDxtY2dyb2ZAa2VybmVsLm9yZz4KPj4gLS0tCj4+IMKgIGFyY2gvbWlwcy9tbS9tbWFwLmMg
fCAxNCArKysrKysrKysrKystLQo+PiDCoCAxIGZpbGUgY2hhbmdlZCwgMTIgaW5zZXJ0aW9ucygr
KSwgMiBkZWxldGlvbnMoLSkKPj4KPj4gZGlmZiAtLWdpdCBhL2FyY2gvbWlwcy9tbS9tbWFwLmMg
Yi9hcmNoL21pcHMvbW0vbW1hcC5jCj4+IGluZGV4IGQ3OWYyYjQzMjMxOC4uZjVjNzc4MTEzMzg0
IDEwMDY0NAo+PiAtLS0gYS9hcmNoL21pcHMvbW0vbW1hcC5jCj4+ICsrKyBiL2FyY2gvbWlwcy9t
bS9tbWFwLmMKPj4gQEAgLTIxLDggKzIxLDkgQEAgdW5zaWduZWQgbG9uZyBzaG1fYWxpZ25fbWFz
ayA9IFBBR0VfU0laRSAtIDE7wqDCoMKgIC8qIAo+PiBTYW5lIGNhY2hlcyAqLwo+PiDCoCBFWFBP
UlRfU1lNQk9MKHNobV9hbGlnbl9tYXNrKTsKPj4gwqAgwqAgLyogZ2FwIGJldHdlZW4gbW1hcCBh
bmQgc3RhY2sgKi8KPj4gLSNkZWZpbmUgTUlOX0dBUCAoMTI4KjEwMjQqMTAyNFVMKQo+PiAtI2Rl
ZmluZSBNQVhfR0FQICgoVEFTS19TSVpFKS82KjUpCj4+ICsjZGVmaW5lIE1JTl9HQVDCoMKgwqDC
oMKgwqDCoCAoMTI4KjEwMjQqMTAyNFVMKQo+PiArI2RlZmluZSBNQVhfR0FQwqDCoMKgwqDCoMKg
wqAgKChUQVNLX1NJWkUpLzYqNSkKPgo+IMKgwqAgQ291bGQgYWRkIHNwYWNlcyBhcm91bmQgKiwg
d2hpbGUgdG91Y2hpbmcgdGhpcyBhbnl3YXk/IEFuZCBwYXJlbnMKPiBhcm91bmQgVEFTS19TSVpF
IHNob3VsZG4ndCBiZSBuZWVkZWQuLi4KPgoKSSBkaWQgbm90IGZpeCBjaGVja3BhdGNoIHdhcm5p
bmdzIGhlcmUgc2luY2UgdGhpcyBjb2RlIGdldHMgcmVtb3ZlZCAKYWZ0ZXJ3YXJkcy4KCgo+PiAr
I2RlZmluZSBTVEFDS19STkRfTUFTS8KgwqDCoCAoMHg3ZmYgPj4gKFBBR0VfU0hJRlQgLSAxMikp
Cj4+IMKgIMKgIHN0YXRpYyBpbnQgbW1hcF9pc19sZWdhY3koc3RydWN0IHJsaW1pdCAqcmxpbV9z
dGFjaykKPj4gwqAgewo+PiBAQCAtMzgsNiArMzksMTUgQEAgc3RhdGljIGludCBtbWFwX2lzX2xl
Z2FjeShzdHJ1Y3QgcmxpbWl0ICpybGltX3N0YWNrKQo+PiDCoCBzdGF0aWMgdW5zaWduZWQgbG9u
ZyBtbWFwX2Jhc2UodW5zaWduZWQgbG9uZyBybmQsIHN0cnVjdCBybGltaXQgCj4+ICpybGltX3N0
YWNrKQo+PiDCoCB7Cj4+IMKgwqDCoMKgwqAgdW5zaWduZWQgbG9uZyBnYXAgPSBybGltX3N0YWNr
LT5ybGltX2N1cjsKPj4gK8KgwqDCoCB1bnNpZ25lZCBsb25nIHBhZCA9IHN0YWNrX2d1YXJkX2dh
cDsKPj4gKwo+PiArwqDCoMKgIC8qIEFjY291bnQgZm9yIHN0YWNrIHJhbmRvbWl6YXRpb24gaWYg
bmVjZXNzYXJ5ICovCj4+ICvCoMKgwqAgaWYgKGN1cnJlbnQtPmZsYWdzICYgUEZfUkFORE9NSVpF
KQo+PiArwqDCoMKgwqDCoMKgwqAgcGFkICs9IChTVEFDS19STkRfTUFTSyA8PCBQQUdFX1NISUZU
KTsKPgo+IMKgwqAgUGFyZW5zIG5vdCBuZWVkZWQgaGVyZS4KCgpCZWx0IGFuZCBicmFjZXMgYXBw
cm9hY2ggaGVyZSBhcyBJJ20gbmV2ZXIgc3VyZSBhYm91dCBwcmlvcml0aWVzLgoKVGhhbmtzIGZv
ciB5b3VyIHRpbWUsCgpBbGV4CgoKPgo+PiArCj4+ICvCoMKgwqAgLyogVmFsdWVzIGNsb3NlIHRv
IFJMSU1fSU5GSU5JVFkgY2FuIG92ZXJmbG93LiAqLwo+PiArwqDCoMKgIGlmIChnYXAgKyBwYWQg
PiBnYXApCj4+ICvCoMKgwqDCoMKgwqDCoCBnYXAgKz0gcGFkOwo+PiDCoCDCoMKgwqDCoMKgIGlm
IChnYXAgPCBNSU5fR0FQKQo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgZ2FwID0gTUlOX0dBUDsKPj4K
Pgo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBs
aW51eC1yaXNjdiBtYWlsaW5nIGxpc3QKPiBsaW51eC1yaXNjdkBsaXN0cy5pbmZyYWRlYWQub3Jn
Cj4gaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yaXNj
dgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgt
cmlzY3YgbWFpbGluZyBsaXN0CmxpbnV4LXJpc2N2QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yaXNjdgo=
