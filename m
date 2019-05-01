Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 859AF10B85
	for <lists+linux-riscv@lfdr.de>; Wed,  1 May 2019 18:44:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mxv1m7l6meMrbm6DNZtCyilU8dYVbmjtj2tMSk/vfQw=; b=h5onXidZKt0Mzo
	uLDb4Viv0a++Dl77MgsGvx5V1P1VZy1D9J7jvkiBIdybwm13fO/IxdhRGnXWTdcZcG+oJNIhQ7JAd
	M6M4zhc6sK8G1tf70N2fVtpnSl7epaEaA+3jrKr7V56M1XyWUh6XWi06Y654fVojdEMU88X/YmJpi
	xN37lTm9zAaKsV2uhW2cTcdZ1tF2/Z7/6lArm3VFZasVCoOctrCkF8+tvgk6sIEJn30Hrr6wmU44P
	KExMjG5D5uB5DYNnHkhWmPB4rXJhNbuMtV8/Ebxq5aRI93f+X3xWswaq7Q8GdZ0ydwtXtxDCB5Bis
	hD9oEX/D5CAcDta4YiXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLsLA-0008RE-Rw; Wed, 01 May 2019 16:44:16 +0000
Received: from mout.kundenserver.de ([217.72.192.75])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLsL7-0008MM-4N
 for linux-riscv@lists.infradead.org; Wed, 01 May 2019 16:44:15 +0000
Received: from excalibur.cnev.de ([213.196.200.188]) by
 mrelayeu.kundenserver.de (mreue109 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MKKd7-1h3NB22Z3P-00Lomo; Wed, 01 May 2019 18:43:59 +0200
Received: from karsten by excalibur.cnev.de with local (Exim 4.89)
 (envelope-from <merker@debian.org>)
 id 1hLsKq-0008J7-9P; Wed, 01 May 2019 18:43:56 +0200
Date: Wed, 1 May 2019 18:43:56 +0200
From: Karsten Merker <merker@debian.org>
To: Atish Patra <atish.patra@wdc.com>
Subject: Re: [PATCH] RISC-V: Add an Image header that boot loader can parse.
Message-ID: <20190501164355.ce76wjmq6sszrf5g@excalibur.cnev.de>
References: <mhng-cab2c6b9-f623-4286-99a4-61e4b3a58761@palmer-si-x1e>
 <e801ca8b-c8e2-d8b1-d55a-744414db77e3@wdc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e801ca8b-c8e2-d8b1-d55a-744414db77e3@wdc.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-Provags-ID: V03:K1:gQfgRV52/wutLP5y4mCshUvfjXUXinHlk5dmAqDo68cRBMaQlCw
 rMRY/Jx6izGcZPqiRMaSb8TjWhuJqrPuMAF0Fn/0Q/dASGB8KEcGrzvbkC+MlFBwE54km/c
 LZJ1xJzk3KnHcCEUwGyz6l354+2IcaYV8khYD6vipm2Ux7lPy8qoDldT2oEghZd9pVZgYD2
 OhOx/c3oYlexeVwooxJig==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:sDbHHpX80m8=:h9K1eA/AIbnevYg/2MjTYp
 Cz/vGhw0jx6Rtn/drvlUS4qRjpysjAndbHb5S4rgGxjUqadjr1dy+r9xhlyZWbbwA6RKLJny5
 emXj7SB+er8B30aMNeU3UcEihU4EIWklCWilbUa/o7Bl26x1Kf6324T20osihtUq9FmczgszF
 NFIA1iwxmHl7UyjYRhZkb3XACeDAy0AWaR4kt+i1D2HVNvyIi54/jSWxQ1zP8mT2Bajnpt15Q
 XcTx7h9QCZ14U/tu1wk6zNUv5gb6Op+CUFu0MhEjC8OC8fHC6ASrWsCYxFABGcr0+b1VY0A4D
 dmxex9febOQEt0kVFfq0NI9ixcip3RnfWZE4cB703e1InyKGO5UtBwL5g01yvpFF+wzfI/1Rm
 /H9uyaas5JfiNXvDeomTsrk6woMDxLpsLmEZ4duR+4kezNpd06/WxhdMRQq79JPoA1HQ67F45
 NRzR9IgW8blSJxg2NztAfcPNKdKGMJly6CFS+IcTA6X+40vRpTgxpfVu272dPmJHhArZCtO7R
 drHt+61Yw0fxHjMQ2kzmIzYKyqPtSYvPCWXMZwSF2zUarFd6mZgUeKgOHkIGvYNOpmnuwLK2c
 pgNe+urP0WZJAVHX6dJYvhz+FBS4Iv6Mjq0S0c3Y7ZZaQ2ET9QOfYgYeAC4reeYns4n81Vaxn
 KqSesOAjZMMUfmCBvYcvG465EHdp0+aCokXMRLZnY7SOwfMubkmjT5H7IxPaSUAClpaFL/wGW
 JzYKAewCRpDa/VDw2M5qPtv0Nq4XfZXi+kMutg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_094413_475053_966143C7 
X-CRM114-Status: GOOD (  22.00  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.75 listed in list.dnswl.org]
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
Cc: "aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>,
 "anup@brainfault.org" <anup@brainfault.org>,
 Palmer Dabbelt <palmer@sifive.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "zong@andestech.com" <zong@andestech.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

T24gTW9uLCBBcHIgMjksIDIwMTkgYXQgMTA6NDI6NDBQTSAtMDcwMCwgQXRpc2ggUGF0cmEgd3Jv
dGU6Cj4gT24gNC8yOS8xOSA0OjQwIFBNLCBQYWxtZXIgRGFiYmVsdCB3cm90ZToKPiA+IE9uIFR1
ZSwgMjMgQXByIDIwMTkgMTY6MjU6MDYgUERUICgtMDcwMCksIGF0aXNoLnBhdHJhQHdkYy5jb20g
d3JvdGU6Cj4gPiA+IEN1cnJlbnRseSwgbGFzdCBzdGFnZSBib290IGxvYWRlcnMgc3VjaCBhcyBV
LUJvb3QgY2FuIGFjY2VwdCBvbmx5Cj4gPiA+IHVJbWFnZSB3aGljaCBpcyBhbiB1bm5lY2Vzc2Fy
eSBhZGRpdGlvbmFsIHN0ZXAgaW4gYXV0b21hdGluZyBib290IGZsb3dzLgo+ID4gPiAKPiA+ID4g
QWRkIGEgc2ltcGxlIGltYWdlIGhlYWRlciB0aGF0IGJvb3QgbG9hZGVycyBjYW4gcGFyc2UgYW5k
IGRpcmVjdGx5Cj4gPiA+IGxvYWQga2VybmVsIGZsYXQgSW1hZ2UuIFRoZSBleGlzdGluZyBib290
aW5nIG1ldGhvZHMgd2lsbCBjb250aW51ZSB0bwo+ID4gPiB3b3JrIGFzIGl0IGlzLgo+ID4gPiAK
PiA+ID4gVGVzdGVkIG9uIGJvdGggUUVNVSBhbmQgSGlGaXZlIFVubGVhc2hlZCB1c2luZyBPcGVu
U0JJICsgVS1Cb290ICsgTGludXguCj4gPiA+IAo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBBdGlzaCBQ
YXRyYSA8YXRpc2gucGF0cmFAd2RjLmNvbT4KPiA+ID4gLS0tCj4gPiA+ICAgYXJjaC9yaXNjdi9p
bmNsdWRlL2FzbS9pbWFnZS5oIHwgMzIgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysK
PiA+ID4gICBhcmNoL3Jpc2N2L2tlcm5lbC9oZWFkLlMgICAgICAgfCAyOCArKysrKysrKysrKysr
KysrKysrKysrKysrKysrCj4gPiA+ICAgMiBmaWxlcyBjaGFuZ2VkLCA2MCBpbnNlcnRpb25zKCsp
Cj4gPiA+ICAgY3JlYXRlIG1vZGUgMTAwNjQ0IGFyY2gvcmlzY3YvaW5jbHVkZS9hc20vaW1hZ2Uu
aAo+ID4gPiAKPiA+ID4gZGlmZiAtLWdpdCBhL2FyY2gvcmlzY3YvaW5jbHVkZS9hc20vaW1hZ2Uu
aCBiL2FyY2gvcmlzY3YvaW5jbHVkZS9hc20vaW1hZ2UuaAo+ID4gPiBuZXcgZmlsZSBtb2RlIDEw
MDY0NAo+ID4gPiBpbmRleCAwMDAwMDAwMDAwMDAuLjc2YTdlMGQ0MDY4YQo+ID4gPiAtLS0gL2Rl
di9udWxsCj4gPiA+ICsrKyBiL2FyY2gvcmlzY3YvaW5jbHVkZS9hc20vaW1hZ2UuaAo+ID4gPiBA
QCAtMCwwICsxLDMyIEBACj4gPiA+ICsvKiBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIu
MCAqLwo+ID4gPiArCj4gPiA+ICsjaWZuZGVmIF9fQVNNX0lNQUdFX0gKPiA+ID4gKyNkZWZpbmUg
X19BU01fSU1BR0VfSAo+ID4gPiArCj4gPiA+ICsjZGVmaW5lIFJJU0NWX0lNQUdFX01BR0lDCSJS
SVNDViIKPiA+ID4gKwo+ID4gPiArI2lmbmRlZiBfX0FTU0VNQkxZX18KPiA+ID4gKy8qCj4gPiA+
ICsgKiBzdHJ1Y3QgcmlzY3ZfaW1hZ2VfaGVhZGVyIC0gcmlzY3Yga2VybmVsIGltYWdlIGhlYWRl
cgo+ID4gPiArICoKPiA+ID4gKyAqIEBjb2RlMDoJCUV4ZWN1dGFibGUgY29kZQo+ID4gPiArICog
QGNvZGUxOgkJRXhlY3V0YWJsZSBjb2RlCj4gPiA+ICsgKiBAdGV4dF9vZmZzZXQ6CUltYWdlIGxv
YWQgb2Zmc2V0Cj4gPiA+ICsgKiBAaW1hZ2Vfc2l6ZToJCUVmZmVjdGl2ZSBJbWFnZSBzaXplCj4g
PiA+ICsgKiBAcmVzZXJ2ZWQ6CQlyZXNlcnZlZAo+ID4gPiArICogQG1hZ2ljOgkJTWFnaWMgbnVt
YmVyCj4gPiA+ICsgKiBAcmVzZXJ2ZWQ6CQlyZXNlcnZlZAo+ID4gPiArICovCj4gPiA+ICsKPiA+
ID4gK3N0cnVjdCByaXNjdl9pbWFnZV9oZWFkZXIgewo+ID4gPiArCXUzMiBjb2RlMDsKPiA+ID4g
Kwl1MzIgY29kZTE7Cj4gPiA+ICsJdTY0IHRleHRfb2Zmc2V0Owo+ID4gPiArCXU2NCBpbWFnZV9z
aXplOwo+ID4gPiArCXU2NCByZXMxOwo+ID4gPiArCXU2NCBtYWdpYzsKPiA+ID4gKwl1MzIgcmVz
MjsKPiA+ID4gKwl1MzIgcmVzMzsKPiA+ID4gK307Cj4gPiAKPiA+IEkgZG9uJ3Qgd2FudCB0byBp
bnZlbnQgb3VyIG93biBmaWxlIGZvcm1hdC4gIElzIHRoZXJlIGEgcmVhc29uIHdlIGNhbid0IGp1
c3QKPiA+IHVzZSBzb21ldGhpbmcgc3RhbmRhcmQ/ICBPZmYgdGhlIHRvcCBvZiBteSBoZWFkIEkg
Y2FuIHRoaW5rIG9mIEVMRiBmaWxlcyBhbmQKPiA+IG11bHRpYm9vdC4KPiAKPiBBZGRpdGlvbmFs
IGhlYWRlciBpcyByZXF1aXJlZCB0byBhY2NvbW1vZGF0ZSBQRSBoZWFkZXIgZm9ybWF0LiBDdXJy
ZW50bHksCj4gdGhpcyBpcyBvbmx5IHVzZWQgZm9yIGJvb3RpIGNvbW1hbmQgYnV0IGl0IHdpbGwg
YmUgcmV1c2VkIGZvciBFRkkgaGVhZGVycyBhcwo+IHdlbGwuIExpbnV4IGtlcm5lbCBJbWFnZSBj
YW4gcHJldGVuZCBhcyBhbiBFRkkgYXBwbGljYXRpb24gaWYgUEUvQ09GRiBoZWFkZXIKPiBpcyBw
cmVzZW50LiBUaGlzIHJlbW92ZXMgdGhlIG5lZWQgb2YgYW4gZXhwbGljaXQgRUZJIGJvb3QgbG9h
ZGVyIGFuZCBFRkkKPiBmaXJtd2FyZSBjYW4gZGlyZWN0bHkgbG9hZCBMaW51eCAob2J2aW91c2x5
IGFmdGVyIEVGSSBzdHViIGltcGxlbWVudGF0aW9uCj4gZm9yIFJJU0MtVikuCj4gCj4gQVJNNjQg
Zm9sbG93cyB0aGUgc2ltaWxhciBoZWFkZXIgZm9ybWF0IGFzIHdlbGwuCj4gaHR0cHM6Ly93d3cu
a2VybmVsLm9yZy9kb2MvRG9jdW1lbnRhdGlvbi9hcm02NC9ib290aW5nLnR4dAoKSGVsbG8gQXRp
c2gsCgp0aGUgYXJtNjQgaGVhZGVyIGxvb2tzIGEgYml0IGRpZmZlcmVudCAocXVvdGVkIGZyb20g
dGhlCmFmb3JlbWVudGlvbmVkIFVSTCk6CgogIHUzMiBjb2RlMDsgICAgICAgICAgICAgICAgICAg
IC8qIEV4ZWN1dGFibGUgY29kZSAqLwogIHUzMiBjb2RlMTsgICAgICAgICAgICAgICAgICAgIC8q
IEV4ZWN1dGFibGUgY29kZSAqLwogIHU2NCB0ZXh0X29mZnNldDsgICAgICAgICAgICAgIC8qIElt
YWdlIGxvYWQgb2Zmc2V0LCBsaXR0bGUgZW5kaWFuICovCiAgdTY0IGltYWdlX3NpemU7ICAgICAg
ICAgICAgICAgLyogRWZmZWN0aXZlIEltYWdlIHNpemUsIGxpdHRsZSBlbmRpYW4gKi8KICB1NjQg
ZmxhZ3M7ICAgICAgICAgICAgICAgICAgICAvKiBrZXJuZWwgZmxhZ3MsIGxpdHRsZSBlbmRpYW4g
Ki8KICB1NjQgcmVzMiAgICAgID0gMDsgICAgICAgICAgICAvKiByZXNlcnZlZCAqLwogIHU2NCBy
ZXMzICAgICAgPSAwOyAgICAgICAgICAgIC8qIHJlc2VydmVkICovCiAgdTY0IHJlczQgICAgICA9
IDA7ICAgICAgICAgICAgLyogcmVzZXJ2ZWQgKi8KICB1MzIgbWFnaWMgICAgID0gMHg2NDRkNTI0
MTsgICAvKiBNYWdpYyBudW1iZXIsIGxpdHRsZSBlbmRpYW4sICJBUk1ceDY0IiAqLwogIHUzMiBy
ZXM1OyAgICAgICAgICAgICAgICAgICAgIC8qIHJlc2VydmVkICh1c2VkIGZvciBQRSBDT0ZGIG9m
ZnNldCkgKi8KCldoYXQgSSBhbSB1bmNsZWFyIGFib3V0IGlzIGluIHdoaWNoIHdheXMgYSBSSVND
LVYgUEUvQ09GRiBoZWFkZXIKZGlmZmVycyBmcm9tIGFuIGFybTY0IG9uZSBhcyB0aGUgYXJtNjQg
c3RydWN0IGlzIGxvbmdlciB0aGFuIHlvdXIKUklTQy1WIGhlYWRlciBhbmQgZm9yIGFybTY0IHRo
ZSBQRSBvZmZzZXQgZmllbGQgaXMgaW4gdGhlIGxhc3QKZmllbGQsIGkuZS4gb3V0c2lkZSBvZiB0
aGUgYXJlYSBjb3ZlcmVkIGJ5IHlvdXIgUklTQy1WIHN0cnVjdHVyZQpkZWZpbml0aW9uLiAgQ2Fu
IHlvdSBwZXJoYXBzIGV4cGxhaW4gdGhpcyBwYXJ0IGluIGEgYml0IG1vcmUKZGV0YWlsIG9yIGRv
ZXMgYW55Ym9keSBlbHNlIGhhdmUgYSBwb2ludGVyIHRvIGEgc3BlY2lmaWNhdGlvbiBvZgp0aGUg
UklTQy1WIFBFL0NPRkYgaGVhZGVyIGZvcm1hdCAoSSBoYXZlIGZvdW5kIGEgbG90IG9mIGRvY3Vt
ZW50cwphYm91dCBDT0ZGIGluIGdlbmVyYWwsIGJ1dCBub3RoaW5nIHNwZWNpZmljIHRvIFJJU0Mt
VikuCgpSZWdhcmRzLApLYXJzdGVuCi0tIApJY2ggd2lkZXJzcHJlY2hlIGhpZXJtaXQgYXVzZHLD
vGNrbGljaCBkZXIgTnV0enVuZyBzb3dpZSBkZXIKV2VpdGVyZ2FiZSBtZWluZXIgcGVyc29uZW5i
ZXpvZ2VuZW4gRGF0ZW4gZsO8ciBad2Vja2UgZGVyIFdlcmJ1bmcKc293aWUgZGVyIE1hcmt0LSBv
ZGVyIE1laW51bmdzZm9yc2NodW5nLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KbGludXgtcmlzY3YgbWFpbGluZyBsaXN0CmxpbnV4LXJpc2N2QGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1yaXNjdgo=
