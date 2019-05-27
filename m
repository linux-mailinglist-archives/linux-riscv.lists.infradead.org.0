Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4079A2BBEF
	for <lists+linux-riscv@lfdr.de>; Tue, 28 May 2019 00:17:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZVg3gcwcW+PyTCTc7OJNMODBGRNoHGct9Mm2tlE1+2g=; b=DrENp2bfz21NrM
	Qa+I6A5sA+8IqxG7wdi6JhhKYsKMB6mUg/4bWCGXt5PkCWHozoS94ONxu8jW51M3TNddFTym0CA8V
	wVihPEQzyD/Q2dSBO0CnPZatGaossYiMD+hRmg9UzJkveYTy6XgOnnVY3/v95/PF6B7Ke5xq54eQs
	yjiNF3ycB39wgDEZBx2MPdNKyLB7CRWKh/9npowwzWytcsoBIuEevqv84aRaHZPL0EEGwE/6vLJLv
	NrnjZbsBshDHYccIFlQYk1dEsFpNQj+kZ1rF3HlpDmVLjRaIHMFajxI/WwBFTaAnH3PF5tTWegcL/
	w+c28eCYj4Rfk+KoLioA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVNvg-0005tr-Qs; Mon, 27 May 2019 22:17:16 +0000
Received: from mout.kundenserver.de ([212.227.126.135])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVNvX-0005pC-T8; Mon, 27 May 2019 22:17:09 +0000
Received: from excalibur.cnev.de ([194.8.209.98]) by mrelayeu.kundenserver.de
 (mreue009 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MhlCa-1h0jzV2GtE-00dknW; Tue, 28 May 2019 00:16:25 +0200
Received: from karsten by excalibur.cnev.de with local (Exim 4.89)
 (envelope-from <merker@debian.org>)
 id 1hVNul-0000rz-WA; Tue, 28 May 2019 00:16:20 +0200
Date: Tue, 28 May 2019 00:16:19 +0200
From: Karsten Merker <merker@debian.org>
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Subject: Re: [v4 PATCH] RISC-V: Add an Image header that boot loader can parse.
Message-ID: <20190527221619.fkxtzk4jpeyfoptf@excalibur.cnev.de>
References: <20190524041814.7497-1-atish.patra@wdc.com>
 <CAKv+Gu9U56b50TrfriBfRFed_1aoXg2Y624tu7v5m2y+6DVq5w@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKv+Gu9U56b50TrfriBfRFed_1aoXg2Y624tu7v5m2y+6DVq5w@mail.gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-Provags-ID: V03:K1:IggtGFZrbp9GZe50tguh26rLf9NXZcqGQm/DxENZxO6zmFTT7ar
 xrlreaf7E2MLlnT/NZ5xFEoQDP+tlltS3BsFa2S0/HZg/8G0NkmtrqFET36hPHZsHh/TnaG
 fQx3pSKdqVTG2GdS2HHMt9yleoggHD7BUyP8DqxizgvAb9A0gxVC9+Uhxs0p+PD4DgwJc1O
 rFR0o7Ab0r+BhUlhU7A6Q==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Zgr8CE5oZTc=:mCiXxlktW4T3elxbJzmy9h
 ucPcOpiaHc/ZVs8XcLqtTBDU4ftCJUM7te/CIgMrHrzALY7QwXoKjVrRZf/7uTWQYMEVKeS+B
 sT2AUUgEk5oATbyNHxOJvKOcu1Wv/mkOndeot2LBPno0YmYZPNQ0Ssw/h0Dy8GHKVoU+hibVP
 jJbNDIJW7Y7iwbmRDTE25tPMU5LZYSezxn1LwvpgIYMcnBfudy05fqYF/c0hk7Sz3HMlAjlXV
 Hyw9Rfgfum3p2rhOa024YmRdzr7XvC4Wu1192B9iU7SPaWkk1oNtCAMcP/n14ymVmrdr5Sdtp
 EZo/ToGaQU+YfRxS9WnVddpRPO4w4er0Cs/XKefQhPNw6mmHhRuWm+bsnKT9tEApZ6KZMBxbO
 nIBGw35tpBjvCmjYYWHlFxeaSplSeVyK0eW05IBRrqvNZSNPMZCP+8hYvQFssEbVcg8DtK8sx
 WqR3vNrG6goAI6AJWmm5NKXcsqjl7psS5r4BAa/VghXBYDFJZDxpn6zpWokcUg96KP+fyauQd
 +WRZxUy6lj060T4UBwydhr8qhz/HlZ7NEnWsmyphs7ecalmlxZVAuAOmD5UwMxUniArxo3j7n
 V8dY5kdr8nkNwVGk3DKny0jI6xfnWEs+YzKQx24n9ddg8FDoOQJNSdZvKx7AV/Z1xisFHTIE7
 /8wZiY9YemXFqAjlRb/jfbCiLtarGRyMdNkhV2fstxXQclS6dBmXmmrZ3ewpU97eE/KvvKtnd
 MTuk3Rf3QPxWIQ2kC4aanwsguVF2VwIH4qYUTw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_151708_242050_AD19E658 
X-CRM114-Status: GOOD (  24.51  )
X-Spam-Score: -0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.135 listed in list.dnswl.org]
 -0.3 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.135 listed in wl.mailspike.net]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Jonathan Corbet <corbet@lwn.net>, Catalin Marinas <catalin.marinas@arm.com>,
 Anup Patel <Anup.Patel@wdc.com>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Zong Li <zong@andestech.com>, Atish Patra <atish.patra@wdc.com>,
 Nick Kossifidis <mick@ics.forth.gr>, Palmer Dabbelt <palmer@sifive.com>,
 "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
 Karsten Merker <merker@debian.org>, linux-riscv@lists.infradead.org,
 "marek.vasut@gmail.com" <marek.vasut@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

T24gTW9uLCBNYXkgMjcsIDIwMTkgYXQgMDQ6MzQ6NTdQTSArMDIwMCwgQXJkIEJpZXNoZXV2ZWwg
d3JvdGU6Cj4gT24gRnJpLCAyNCBNYXkgMjAxOSBhdCAwNjoxOCwgQXRpc2ggUGF0cmEgPGF0aXNo
LnBhdHJhQHdkYy5jb20+IHdyb3RlOgo+ID4gQ3VycmVudGx5LCB0aGUgbGFzdCBzdGFnZSBib290
IGxvYWRlcnMgc3VjaCBhcyBVLUJvb3QgY2FuIGFjY2VwdCBvbmx5Cj4gPiB1SW1hZ2Ugd2hpY2gg
aXMgYW4gdW5uZWNlc3NhcnkgYWRkaXRpb25hbCBzdGVwIGluIGF1dG9tYXRpbmcgYm9vdAo+ID4g
cHJvY2Vzcy4KPiA+Cj4gPiBBZGQgYW4gaW1hZ2UgaGVhZGVyIHRoYXQgYm9vdCBsb2FkZXIgdW5k
ZXJzdGFuZHMgYW5kIGJvb3QgTGludXggZnJvbQo+ID4gZmxhdCBJbWFnZSBkaXJlY3RseS4KPiA+
Cj4gPiBUaGlzIGhlYWRlciBpcyBiYXNlZCBvbiBBUk02NCBib290IGltYWdlIGhlYWRlciBhbmQg
cHJvdmlkZXMgYW4KPiA+IG9wcG9ydHVuaXR5IHRvIGNvbWJpbmUgYm90aCBBUk02NCAmIFJJU0Mt
ViBpbWFnZSBoZWFkZXJzIGluIGZ1dHVyZS4KPiA+Cj4gPiBBbHNvIG1ha2Ugc3VyZSB0aGF0IFBF
L0NPRkYgaGVhZGVyIGNhbiBjby1leGlzdCBpbiB0aGUgc2FtZSBpbWFnZSBzbwo+ID4gdGhhdCBF
Rkkgc3R1YiBjYW4gYmUgc3VwcG9ydGVkIGZvciBSSVNDLVYgaW4gZnV0dXJlLiBFRkkgc3BlY2lm
aWNhdGlvbgo+ID4gbmVlZHMgUEUvQ09GRiBpbWFnZSBoZWFkZXIgaW4gdGhlIGJlZ2lubmluZyBv
ZiB0aGUga2VybmVsIGltYWdlIGluIG9yZGVyCj4gPiB0byBsb2FkIGl0IGFzIGFuIEVGSSBhcHBs
aWNhdGlvbi4gSW4gb3JkZXIgdG8gc3VwcG9ydCBFRkkgc3R1YiwgY29kZTAKPiA+IHNob3VsZCBi
ZSByZXBsYWNlZCB3aXRoICJNWiIgbWFnaWMgc3RyaW5nIGFuZCByZXM0KGF0IG9mZnNldCAweDNj
KQo+ID4gc2hvdWxkIHBvaW50IHRvIHRoZSByZXN0IG9mIHRoZSBQRS9DT0ZGIGhlYWRlciAod2hp
Y2ggd2lsbCBiZSBhZGRlZAo+ID4gZHVyaW5nIEVGSSBzdXBwb3J0KS4KWy4uLl0KPiA+ICBEb2N1
bWVudGF0aW9uL3Jpc2N2L2Jvb3QtaW1hZ2UtaGVhZGVyLnR4dCB8IDUwICsrKysrKysrKysrKysr
KysrKwo+ID4gIGFyY2gvcmlzY3YvaW5jbHVkZS9hc20vaW1hZ2UuaCAgICAgICAgICAgIHwgNjQg
KysrKysrKysrKysrKysrKysrKysrKysKPiA+ICBhcmNoL3Jpc2N2L2tlcm5lbC9oZWFkLlMgICAg
ICAgICAgICAgICAgICB8IDMyICsrKysrKysrKysrKwo+ID4gIDMgZmlsZXMgY2hhbmdlZCwgMTQ2
IGluc2VydGlvbnMoKykKPiA+ICBjcmVhdGUgbW9kZSAxMDA2NDQgRG9jdW1lbnRhdGlvbi9yaXNj
di9ib290LWltYWdlLWhlYWRlci50eHQKPiA+ICBjcmVhdGUgbW9kZSAxMDA2NDQgYXJjaC9yaXNj
di9pbmNsdWRlL2FzbS9pbWFnZS5oCj4gPgo+ID4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24v
cmlzY3YvYm9vdC1pbWFnZS1oZWFkZXIudHh0IGIvRG9jdW1lbnRhdGlvbi9yaXNjdi9ib290LWlt
YWdlLWhlYWRlci50eHQKPiA+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4gPiBpbmRleCAwMDAwMDAw
MDAwMDAuLjY4YWJjMjM1M2NlYwo+ID4gLS0tIC9kZXYvbnVsbAo+ID4gKysrIGIvRG9jdW1lbnRh
dGlvbi9yaXNjdi9ib290LWltYWdlLWhlYWRlci50eHQKPiA+IEBAIC0wLDAgKzEsNTAgQEAKPiA+
ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgQm9vdCBpbWFnZSBoZWFkZXIgaW4gUklT
Qy1WIExpbnV4Cj4gPiArICAgICAgICAgICAgICAgICAgICAgICA9PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT0KPiA+ICsKPiA+ICtBdXRob3I6IEF0aXNoIFBhdHJh
IDxhdGlzaC5wYXRyYUB3ZGMuY29tPgo+ID4gK0RhdGUgIDogMjAgTWF5IDIwMTkKPiA+ICsKPiA+
ICtUaGlzIGRvY3VtZW50IG9ubHkgZGVzY3JpYmVzIHRoZSBib290IGltYWdlIGhlYWRlciBkZXRh
aWxzIGZvciBSSVNDLVYgTGludXguCj4gPiArVGhlIGNvbXBsZXRlIGJvb3RpbmcgZ3VpZGUgd2ls
bCBiZSBhdmFpbGFibGUgYXQgRG9jdW1lbnRhdGlvbi9yaXNjdi9ib290aW5nLnR4dC4KPiA+ICsK
PiA+ICtUaGUgZm9sbG93aW5nIDY0LWJ5dGUgaGVhZGVyIGlzIHByZXNlbnQgaW4gZGVjb21wcmVz
c2VkIExpbnV4IGtlcm5lbCBpbWFnZS4KPiA+ICsKPiA+ICsgICAgICAgdTMyIGNvZGUwOyAgICAg
ICAgICAgICAgICAvKiBFeGVjdXRhYmxlIGNvZGUgKi8KPiA+ICsgICAgICAgdTMyIGNvZGUxOyAg
ICAgICAgICAgICAgICAvKiBFeGVjdXRhYmxlIGNvZGUgKi8KPiAKPiBBcG9sb2dpZXMgZm9yIG5v
dCBtZW50aW9uaW5nIHRoaXMgaW4gbXkgcHJldmlvdXMgcmVwbHksIGJ1dCBnaXZlbiB0aGF0Cj4g
eW91IGFscmVhZHkga25vdyB0aGF0IHlvdSB3aWxsIG5lZWQgdG8gcHV0IHRoZSBtYWdpYyBzdHJp
bmcgTVogYXQKPiBvZmZzZXQgMHgwLCBpdCBtYWtlcyBtb3JlIHNlbnNlIHRvIG5vdCBwdXQgYW55
IGNvZGUgdGhlcmUgYXQgYWxsLCBidXQKPiBlZHVjYXRlIHRoZSBib290bG9hZGVyIHRoYXQgdGhl
IGZpcnN0IGV4ZWN1dGFibGUgaW5zdHJ1Y3Rpb24gaXMgYXQKPiBvZmZzZXQgMHgyMCwgYW5kIHB1
dCB0aGUgc3BhcmUgZmllbGRzIHJpZ2h0IGFmdGVyIGl0IGluIGNhc2UgeW91IGV2ZXIKPiBuZWVk
IG1vcmUgdGhhbiAyIHNsb3RzLiAoT24gYXJtNjQsIHdlIHdlcmUgbHVja3kgdG8gYmUgYWJsZSB0
byBmaW5kIGFuCj4gb3Bjb2RlIHRoYXQgaGFwcGVuZWQgdG8gY29udGFpbiB0aGUgTVogYml0IHBh
dHRlcm4gYW5kIGFjdCBhbG1vc3QgbGlrZQo+IGEgTk9QLCBidXQgaXQgc2VlbXMgc2lsbHkgdG8g
cmVseSBvbiB0aGF0IGZvciBSSVNDLVYgYXMgd2VsbCkKPiAKPiBTbyBzb21ldGhpbmcgbGlrZQo+
IAo+IHUxNiBwZV9yZXMxOyAgLyogTVogZm9yIEVGSSBib290YWJsZSBpbWFnZXMsIGRvbid0IGNh
cmUgb3RoZXJ3aXNlICovCj4gdTggbWFnaWNbNl07ICAgIC8qICJSSVNDVlwwIgo+IAo+IHU2NCB0
ZXh0X29mZnNldDsgICAgICAgICAgLyogSW1hZ2UgbG9hZCBvZmZzZXQsIGxpdHRsZSBlbmRpYW4g
Ki8KPiB1NjQgaW1hZ2Vfc2l6ZTsgICAgICAgICAgIC8qIEVmZmVjdGl2ZSBJbWFnZSBzaXplLCBs
aXR0bGUgZW5kaWFuICovCj4gdTY0IGZsYWdzOyAgICAgICAgICAgICAgICAvKiBrZXJuZWwgZmxh
Z3MsIGxpdHRsZSBlbmRpYW4gKi8KPiAKPiB1MzIgY29kZTA7ICAgICAgICAgICAgICAgIC8qIEV4
ZWN1dGFibGUgY29kZSAqLwo+IHUzMiBjb2RlMTsgICAgICAgICAgICAgICAgLyogRXhlY3V0YWJs
ZSBjb2RlICovCj4gCj4gdTY0IHJlc2VydmVkWzJdOyAgICAgLyogcmVzZXJ2ZWQgZm9yIGZ1dHVy
ZSB1c2UgKi8KPiAKPiB1MzIgdmVyc2lvbjsgICAgICAgICAgICAgIC8qIFZlcnNpb24gb2YgdGhp
cyBoZWFkZXIgKi8KPiB1MzIgcGVfcmVzMjsgICAgICAgICAgICAgICAgIC8qIFJlc2VydmVkIGZv
ciBQRSBDT0ZGIG9mZnNldCAqLwoKSGVsbG8sCgp3b3VsZG4ndCB0aGF0IGltbWVkaWF0ZWx5IGJy
ZWFrIGV4aXN0aW5nIHN5c3RlbXMgKGluY2x1ZGluZyBxZW11CndoZW4gbG9hZGluZyBrZXJuZWxz
IHdpdGggdGhlICIta2VybmVsIiBvcHRpb24pIHRoYXQgcmVseSBvbiB0aGUKZmFjdCB0aGF0IHRo
ZSBrZXJuZWwgZW50cnkgcG9pbnQgaXMgYWx3YXlzIGF0IHRoZSBrZXJuZWwgbG9hZAphZGRyZXNz
PyAgVGhlIEFSTTY0IGhlYWRlciBhbmQgQXRpc2gncyBvcmlnaW5hbCBSSVNDLVYgcHJvcG9zYWwK
YmFzZWQgb24gdGhlIEFSTTY0IGhlYWRlciBrZWVwIHRoZSBwcm9wZXJ0eSB0aGF0IGp1bXBpbmcg
dG8gdGhlCmtlcm5lbCBsb2FkIGFkZHJlc3MgYWx3YXlzIHdvcmtzLCByZWdhcmRsZXNzIG9mIHdo
YXQgdGhlCnBhcnRpY3VsYXIgaGVhZGVyIGxvb2tzIGxpa2UgYW5kIHdoaWNoIHBvdGVudGlhbCBm
dXR1cmUKZXh0ZW5zaW9ucyBpdCBpbmNsdWRlcywgYnV0IHRoZSBwcm9wb3NlZCBjaGFuZ2UgYWJv
dmUgd291bGRuJ3QgZG8KdGhhdC4KCkFsdGhvdWdoIEkgYWdyZWUgdGhhdCBoYXZpbmcgdG8gaW50
ZWdyYXRlIHRoZSAiTVoiIHN0cmluZyBhcyBhbgppbnN0cnVjdGlvbiBpc24ndCBwYXJ0aWN1bGFy
bHkgbmljZSwgSSBkb24ndCB0aGluayB0aGF0IHRoaXMgaXMgYQpzdWZmaWNpZW50IGp1c3RpZmlj
YXRpb24gZm9yIGJyZWFraW5nIGNvbXBhdGliaWxpdHkgd2l0aCBwcmlvcgprZXJuZWwgcmVsZWFz
ZXMgYW5kL29yIGV4aXN0aW5nIGJvb3QgZmlybXdhcmUuICBPbiBSSVNDLVYsIHRoZQoiTVoiIHN0
cmluZyBpcyBhIGNvbXByZXNzZWQgbG9hZCBpbW1lZGlhdGUgdG8geDIwL3M0LCBpLmUuIGFuCmlu
c3RydWN0aW9uIHRoYXQgc2hvdWxkIGJlICJoYXJtbGVzcyIgYXMgZmFyIGFzIHRoZSBrZXJuZWwg
Ym9vdApmbG93IGlzIGNvbmNlcm5lZCBhcyB0aGUgeDIwL3M0IHJlZ2lzdGVyIEFGQUlLIGRvZXNu
J3QgY29udGFpbiBhbnkKaW5mb3JtYXRpb24gdGhhdCB0aGUga2VybmVsIHdvdWxkIHVzZS4KClJl
Z2FyZHMsCkthcnN0ZW4KLS0gCkljaCB3aWRlcnNwcmVjaGUgaGllcm1pdCBhdXNkcsO8Y2tsaWNo
IGRlciBOdXR6dW5nIHNvd2llIGRlcgpXZWl0ZXJnYWJlIG1laW5lciBwZXJzb25lbmJlem9nZW5l
biBEYXRlbiBmw7xyIFp3ZWNrZSBkZXIgV2VyYnVuZwpzb3dpZSBkZXIgTWFya3QtIG9kZXIgTWVp
bnVuZ3Nmb3JzY2h1bmcuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpsaW51eC1yaXNjdiBtYWlsaW5nIGxpc3QKbGludXgtcmlzY3ZAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXJpc2N2Cg==
