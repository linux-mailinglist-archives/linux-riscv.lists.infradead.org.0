Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E23954F08
	for <lists+linux-riscv@lfdr.de>; Tue, 25 Jun 2019 14:38:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pXO0JfKVMzrDaVBHH8nUPYnsKkvREA0In4iyayW3++E=; b=gz1gnzZu9ET4Dd
	dscJ0TSzQbZH0sTh1mbRZJ+nZgMBxO550wRDC7i5AYf3rWpc+JNZWwMC6CmaXYIZX5P0I6qoEqA5b
	YgNYLZAdK8cpiTHMRm3gKg+KEdwb6P4E9CxrCVPojXGe9uvRyCm7hkc2Gl4rhexyoFcjCnET075z2
	UWK+sNYdw0WxlBCNkU3VF58jFG2sxVOuuIWa0Lv2ps5Eihxzl2R3cJkvTgZy7q6eXvPkBC0kjw0er
	vboN4HcO8sxVYITt5KoRwc91wTnaA97D15LgcxSciKCWy63hfguXsiLpQ8M+Tz1hJUkJ94fgEl1ya
	FsocAkjfcBfBUcgEZcgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfkho-0006Pe-Ty; Tue, 25 Jun 2019 12:37:48 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hfkhl-0006MI-3E
 for linux-riscv@lists.infradead.org; Tue, 25 Jun 2019 12:37:46 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BC02B2B;
 Tue, 25 Jun 2019 05:37:42 -0700 (PDT)
Received: from [70.10.37.10] (unknown [10.37.10.70])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DBE593F71E;
 Tue, 25 Jun 2019 05:37:39 -0700 (PDT)
Subject: Re: RISC-V nommu support v2
To: Palmer Dabbelt <palmer@sifive.com>
References: <mhng-6f11ed95-e3f3-41dc-93c5-1576928b373b@palmer-si-x1e>
From: Vladimir Murzin <vladimir.murzin@arm.com>
Message-ID: <4b2ce641-1412-0e71-82be-07e3f0a6328a@arm.com>
Date: Tue, 25 Jun 2019 13:37:38 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <mhng-6f11ed95-e3f3-41dc-93c5-1576928b373b@palmer-si-x1e>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_053745_229392_0B1D0F5B 
X-CRM114-Status: GOOD (  17.17  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Damien Le Moal <Damien.LeMoal@wdc.com>, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv@lists.infradead.org, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

T24gNi8yNS8xOSA4OjMxIEFNLCBQYWxtZXIgRGFiYmVsdCB3cm90ZToKPiBPbiBNb24sIDI0IEp1
biAyMDE5IDA2OjA4OjUwIFBEVCAoLTA3MDApLCB2bGFkaW1pci5tdXJ6aW5AYXJtLmNvbSB3cm90
ZToKPj4gT24gNi8yNC8xOSAxMjo1NCBQTSwgQ2hyaXN0b3BoIEhlbGx3aWcgd3JvdGU6Cj4+PiBP
biBNb24sIEp1biAyNCwgMjAxOSBhdCAxMjo0NzowN1BNICswMTAwLCBWbGFkaW1pciBNdXJ6aW4g
d3JvdGU6Cj4+Pj4gU2luY2UgeW91IGFyZSB1c2luZyBiaW5mbXRfZmxhdCB3aGljaCBpcyBraW5k
IG9mIDMyLWJpdCBvbmx5IEkgd2FzIGV4cGVjdGluZyB0byBzZWUKPj4+PiBDT05GSUdfQ09NUEFU
IChvciBzb21ldGhpbmcgc2ltaWxhciB0byB0aGF0LCBsaWtlIElMUDMyKSBlbmFibGVkLCB5ZXQg
SSBjb3VsZCBub3QKPj4+PiBmaW5kIGl0Lgo+Pj4KPj4+IFRoZXJlIGlzIG5vIHN1Y2ggdGhpbmcg
aW4gUklTQy1WLsKgIEkgZG9uJ3Qga25vdyBvZiBhbnkgNjQtYml0IFJJU0MtVgo+Pj4gY3B1IHRo
YXQgY2FuIGFjdHVhbGx5IHJ1biAzMi1iaXQgUklTQy1WIGNvZGUsIGFsdGhvdWdoIGluIHRoZW9y
eSB0aGF0Cj4+PiBpcyBwb3NzaWJsZS7CoCBUaGVyZSBhbHNvIGlzIG5vdGhpbmcgbGlrZSB0aGUg
eDg2IHgzMiBvciBtaXBzIG4zMiBtb2RlCj4+PiBhdmFpbGFibGUgZWl0aGVyIGZvciBub3cuCj4+
Pgo+Pj4gQnV0IGl0IHR1cm5zIG91dCB0aGF0IHdpdGggYSBmZXcgZml4ZXMgdG8gYmluZm10X2Zs
YXQgaXQgY2FuIHJ1biA2NC1iaXQKPj4+IGJpbmFyaWVzIGp1c3QgZmluZS7CoCBJIHNlbnQgdGhh
dCBzZXJpZXMgb3V0IGEgd2hpbGUgYWdvLCBhbmQgSUlSQyB5b3UKPj4+IGFjdHVhbGx5IGNvbW1l
bnRlZCBvbiBpdC4KPj4+Cj4+Cj4+IFRydWUsIHlldCBteSBvYnNlcnZhdGlvbiB3YXMgdGhhdCBl
bGYyZmx0IHV0aWxpdHkgYXNzdW1lcyB0aGF0IGFkZHJlc3MKPj4gc3BhY2UgY2Fubm90IGV4Y2Vl
ZCAzMi1iaXQgKGZvciBoZWFkZXIgYW5kIGFic29sdXRlIHJlbG9jYXRpb25zKS4gU28sCj4+IGZy
b20gbXkgbGltaXRlZCBwb2ludCBvZiB2aWV3IHN0cmFpZ2h0Zm9yd2FyZCB3YXkgdG8gZ3VhcmFu
dGVlIHRoYXQgd291bGQKPj4gYmUgdG8gYnVpbGQgaW5jb21pbmcgZWxmIGluIDMyLWJpdCBtb2Rl
IChpdCBpcyB3aHkgSSBtZW50aW9uZWQgQ09NUEFUL0lMUDMyKS4KPj4KPj4gQWxzbyBvbmUgb2Yg
eW91ciBwYXRjaGVzIGV4cHJlc3NlZCBzb21ld2hhdCByZWxhdGVkIGlkZWEKPj4KPj4gImJpbmZt
dF9mbGF0IGlzbid0IHRoZSByaWdodCBiaW5hcnkgZm9ybWF0IGZvciBodWdlIGV4ZWN1dGFibGVz
IHRvCj4+IHN0YXJ0IHdpdGgiCj4+Cj4+IFNpbmNlIHlvdSBzYWlkIHRoZXJlIGlzIG5vIHN1cHBv
cnQgZm9yIGNvbXBhdC9pbHAzMiwgcHJvYmFibHkgSSdtIG1pc3Npbmcgc29tZQo+PiB0b29sY2hh
aW4gbWFnaWM/Cj4+Cj4+IENoZWVycwo+PiBWbGFkaW1pcgo+IFRvOsKgwqDCoMKgwqDCoMKgwqDC
oCBDaHJpc3RvcGggSGVsbHdpZyA8aGNoQGxzdC5kZT4KPiBDQzrCoMKgwqDCoMKgwqDCoMKgwqAg
dmxhZGltaXIubXVyemluQGFybS5jb20KPiBDQzrCoMKgwqDCoMKgwqDCoMKgwqAgQ2hyaXN0b3Bo
IEhlbGx3aWcgPGhjaEBsc3QuZGU+Cj4gQ0M6wqDCoMKgwqDCoMKgwqDCoMKgIFBhdWwgV2FsbXNs
ZXkgPHBhdWwud2FsbXNsZXlAc2lmaXZlLmNvbT4KPiBDQzrCoMKgwqDCoMKgwqDCoMKgwqAgRGFt
aWVuIExlIE1vYWwgPERhbWllbi5MZU1vYWxAd2RjLmNvbT4KPiBDQzrCoMKgwqDCoMKgwqDCoMKg
wqAgbGludXgtcmlzY3ZAbGlzdHMuaW5mcmFkZWFkLm9yZwo+IENDOsKgwqDCoMKgwqDCoMKgwqDC
oCBsaW51eC1tbUBrdmFjay5vcmcKPiBDQzrCoMKgwqDCoMKgwqDCoMKgwqAgbGludXgta2VybmVs
QHZnZXIua2VybmVsLm9yZwo+IFN1YmplY3Q6wqDCoMKgwqAgUmU6IFJJU0MtViBub21tdSBzdXBw
b3J0IHYyCj4gSW4tUmVwbHktVG86IDwyMDE5MDYyNDEzMTYzMy5HQjEwNzQ2QGxzdC5kZT4KPiAK
PiBPbiBNb24sIDI0IEp1biAyMDE5IDA2OjE2OjMzIFBEVCAoLTA3MDApLCBDaHJpc3RvcGggSGVs
bHdpZyB3cm90ZToKPj4gT24gTW9uLCBKdW4gMjQsIDIwMTkgYXQgMDI6MDg6NTBQTSArMDEwMCwg
VmxhZGltaXIgTXVyemluIHdyb3RlOgo+Pj4gVHJ1ZSwgeWV0IG15IG9ic2VydmF0aW9uIHdhcyB0
aGF0IGVsZjJmbHQgdXRpbGl0eSBhc3N1bWVzIHRoYXQgYWRkcmVzcwo+Pj4gc3BhY2UgY2Fubm90
IGV4Y2VlZCAzMi1iaXQgKGZvciBoZWFkZXIgYW5kIGFic29sdXRlIHJlbG9jYXRpb25zKS4gU28s
Cj4+PiBmcm9tIG15IGxpbWl0ZWQgcG9pbnQgb2YgdmlldyBzdHJhaWdodGZvcndhcmQgd2F5IHRv
IGd1YXJhbnRlZSB0aGF0IHdvdWxkCj4+PiBiZSB0byBidWlsZCBpbmNvbWluZyBlbGYgaW4gMzIt
Yml0IG1vZGUgKGl0IGlzIHdoeSBJIG1lbnRpb25lZCBDT01QQVQvSUxQMzIpLgo+Pj4KPj4+IEFs
c28gb25lIG9mIHlvdXIgcGF0Y2hlcyBleHByZXNzZWQgc29tZXdoYXQgcmVsYXRlZCBpZGVhCj4+
Pgo+Pj4gImJpbmZtdF9mbGF0IGlzbid0IHRoZSByaWdodCBiaW5hcnkgZm9ybWF0IGZvciBodWdl
IGV4ZWN1dGFibGVzIHRvCj4+PiBzdGFydCB3aXRoIgo+Pj4KPj4+IFNpbmNlIHlvdSBzYWlkIHRo
ZXJlIGlzIG5vIHN1cHBvcnQgZm9yIGNvbXBhdC9pbHAzMiwgcHJvYmFibHkgSSdtIG1pc3Npbmcg
c29tZQo+Pj4gdG9vbGNoYWluIG1hZ2ljPwo+Pgo+PiBUaGVyZSBpcyBubyBtYWdpYyBleGNlcHQg
Zm9yIHRoZSB0aW55IGVsZjJmbHQgcGF0Y2gsIHdoaWNoIGZvcgo+PiBub3cgaXMganVzdCBpbiB0
aGUgYnVpbGRyb290IHJlcG8gcG9pbnRlZCB0byBpbiB0aGUgY292ZXIgbGV0dGVyCj4+IChhbmQg
d2hpY2ggSSBwbGFuIHRvIHVwc3RyZWFtIG9uY2UgdGhlIGtlcm5lbCBzdXBwb3J0IGhhcyBsYW5k
ZWQKPj4gaW4gTGludXMnIHRyZWUpLsKgIFdlIG9ubHkgc3VwcG9ydCAzMi1iaXQgY29kZSBhbmQg
ZGF0YSBhZGRyZXNzIHNwYWNlcywKPj4gYnV0IHdlIG90aGVyd2lzZSB1c2UgdGhlIG5vcm1hbCBS
SVNDLVYgQUJJLCB0aGF0IGlzIDY0LWJpdCBsb25ncyBhbmQKPj4gcG9pbnRlcnMuCj4gCj4gVGhl
IG1lZGxvdyBjb2RlIG1vZGVsIG9uIFJJU0MtViBlc3NlbnRpYWxseSBlbmZvcmNlcyB0aGlzIC0t
IHRlY2huaWNhbGx5IGl0Cj4gZW5mb3JjZXMgYSAzMi1iaXQgcmVnaW9uIGNlbnRlcmVkIGFyb3Vu
ZCBhZGRyZXNzIDAsIGJ1dCBpdCdzIG5vdCB0aGF0IGhhcmQgdG8KPiBzdGF5IGF3YXkgZnJvbSBu
ZWdhdGl2ZSBhZGRyZXNzZXMuwqAgVGhhdCBzYWlkLCBhcyBsb25nIGFzIGVsZjJmbHQgZ2l2ZXMg
eW91IGFuCj4gZXJyb3IgaXQgc2hvdWxkIGJlIGZpbmUgYmVjYXVzZSBhbGwgbWVkbG93IGlzIGdv
aW5nIHRvIGRvIGlzIGdpdmUgeW91IGEKPiBkaWZmZXJlbnQgbG9va2luZyBlcnJvciBtZXNzYWdl
Lgo+IAoKVGhhbmtzIGZvciBleHBsYW5hdGlvbiEKClZsYWRpbWlyCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1yaXNjdiBtYWlsaW5nIGxpc3QK
bGludXgtcmlzY3ZAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJpc2N2Cg==
