Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC7A9109F32
	for <lists+linux-riscv@lfdr.de>; Tue, 26 Nov 2019 14:21:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3WtBC4frGIqky2bJrrdcERzxQ0P/B1ntTRfmrDNQDT0=; b=DUcvxKAq2sTqx5
	nnLJjX1eXvaXeobVYFPhufz2ucrYbPznBpm8SGbNJKfYQe8H+yV6WiTISnmU6yamIFug7U6RZ6vDw
	9zyV15QmLQN1p/qTw+6vOJxNU48LmbREOQ9B9PaLw2M0NxisRGAlTuRmox5aDo72GP4vvC3/6Hj+r
	uys0T/xPYc2pKTFdv2djdRQn/CbttpDPvnFUUEnwdkzPmpi5UFHiulkQM/YijfjgdmKOVSb2kw4NX
	w5qPZW+C9gB7Qf5qrQz2HKLyMcUlUOuWu5I8qUvvwBVUvqpAmjyRjc/KubvCmbIxU9/locwdFc5q6
	Oaf7ITfLPGHMD8WLJElw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZamV-0006Fk-NU; Tue, 26 Nov 2019 13:21:27 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZaft-0002yf-RG
 for linux-riscv@lists.infradead.org; Tue, 26 Nov 2019 13:14:39 +0000
Received: by mail-qt1-x844.google.com with SMTP id 14so21334052qtf.5
 for <linux-riscv@lists.infradead.org>; Tue, 26 Nov 2019 05:14:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=cpPxka1Pl27l5pcH6nCC6OburpGArFz8nhEvihO8xNg=;
 b=jTCV7l3jNyoKkSnavBxPWKG7xXbsf4keKse9VtmD0UNTC7nV5MSXLWHd0M21Su28JI
 RpeGYfG41qyscMKZaydg8jOFeUnbC8By/o4moFV0MxKGBx+nGucowfb5GB0L3APzWQyq
 9EGHVmXTkopcYKenWF9Wz3O7zkODFY1CUH9T7xHEEj6/BGMC57yPd2rGbwUYdnURqSO5
 rIStZs8MhXX+xgyXc/vzRekBA7FhIvpi4pGN5YfNBQ6vUrw4vlRJJ4OK3E8FoqJMWqBk
 BXvtjClTgFEqzClQ4/ndvqzvyxUVegh0KnhdNNxYGatBtVopF6N0lCOKbsw5MXCnn+aR
 6Y6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=cpPxka1Pl27l5pcH6nCC6OburpGArFz8nhEvihO8xNg=;
 b=qerjYhq0N8YMvmKzFxYiQ6psqnUiNiYkogOXdly2KI1W3UrNfIEHcj0UI6/CU6KjHq
 ODkRh6ejC4/WoVwKWC3Fcfyc9zKEZE71zIrORqOg3HpsjXcEprk1SKorwTUUqJqv9Spi
 EiUr0heoueGZaDzmfEUEBDgasLi15dvY7YaqQvnv1cXSbAkoQb2r2VDvEElEq4okoArc
 IjNoaM4F+AWdA1C9VCGO9RqhbKG8LqIbpruRoS5EI/UXi5sAOqQQOI8htOD2dM5Tof7B
 PYHY1TonTVDu+zbj3kb8npo2fqbYlh6v1aOUxNJ6YS3N39EZk7mBCKnl7kT55uoHRycJ
 u54w==
X-Gm-Message-State: APjAAAUlGLNpTz6NGH2gwN6apGErUuhOOrdt8KyliVm9uaO8qZIKSXzV
 GGeqyVKutJXPqKXFBr1RSnBQn0F4X1eocjl0V3I=
X-Google-Smtp-Source: APXvYqzvpjLjGloa05lw3i6I7fgHo/R4gvZ+aD1eq+3S4tCNKb5dQ6Noemh342gMN8vs6C7Xgr0E0nChjCjoOogvPVg=
X-Received: by 2002:ac8:1bed:: with SMTP id m42mr17979158qtk.359.1574774074441; 
 Tue, 26 Nov 2019 05:14:34 -0800 (PST)
MIME-Version: 1.0
References: <mhng-0a2f9574-9b23-4f26-ae76-18ed7f2c8533@palmer-si-x1c4>
 <87d0yoizv9.fsf@xps13.shealevy.com> <87zi19gjof.fsf@xps13.shealevy.com>
In-Reply-To: <87zi19gjof.fsf@xps13.shealevy.com>
From: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@gmail.com>
Date: Tue, 26 Nov 2019 14:14:22 +0100
Message-ID: <CAJ+HfNhoJnGon-L9OwSfrMbmUt1ZPBB_=A8ZFrg1CgEq3ua-Sg@mail.gmail.com>
Subject: Re: [PATCH] RISC-V: Load modules within relative jump range of the
 kernel text.
To: Shea Levy <shea@shealevy.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191126_051437_936156_6179BC4D 
X-CRM114-Status: GOOD (  21.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (bjorn.topel[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Netdev <netdev@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
 Palmer Dabbelt <palmer@dabbelt.com>, albert@sifive.com,
 Paul Walmsley <paul.walmsley@sifive.com>, linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

T24gV2VkLCA5IE1heSAyMDE4IGF0IDEzOjIyLCBTaGVhIExldnkgPHNoZWFAc2hlYWxldnkuY29t
PiB3cm90ZToKPgo+IEhpIFBhbG1lciwKPgo+IFNoZWEgTGV2eSA8c2hlYUBzaGVhbGV2eS5jb20+
IHdyaXRlczoKPgo+ID4gSGkgUGFsbWVyLAo+ID4KPiA+IFBhbG1lciBEYWJiZWx0IDxwYWxtZXJA
c2lmaXZlLmNvbT4gd3JpdGVzOgo+ID4KPiA+PiBPbiBTdW4sIDIyIEFwciAyMDE4IDA1OjUzOjU2
IFBEVCAoLTA3MDApLCBzaGVhQHNoZWFsZXZ5LmNvbSB3cm90ZToKPiA+Pj4gSGkgUGFsbWVyLAo+
ID4+Pgo+ID4+PiBTaGVhIExldnkgPHNoZWFAc2hlYWxldnkuY29tPiB3cml0ZXM6Cj4gPj4+Cj4g
Pj4+PiBTaWduZWQtb2ZmLWJ5OiBTaGVhIExldnkgPHNoZWFAc2hlYWxldnkuY29tPgo+ID4+Pj4g
LS0tCj4gPj4+Pgo+ID4+Pj4gTm90ZSB0aGF0IHRoaXMgcGF0Y2ggd29ya2VkIGluIG15IG9sZCBt
b2R1bGVzIHBhdGNoc2V0IGFuZCBzZWVtcyB0byBiZQo+ID4+Pj4gd29ya2luZyBub3csIGJ1dCBt
eSBrZXJuZWwgYm9vdCBsb2NrcyB1cCBvbiB0b3Agb2YKPiA+Pj4+IHJpc2N2LWZvci1saW51cy00
LjE3LW13MCBhbmQgSSBkb24ndCBrbm93IGlmIGl0J3MgZHVlIHRvIHRoaXMgcGF0Y2ggb3IKPiA+
Pj4+IHNvbWV0aGluZyBlbHNlIHRoYXQncyBjaGFuZ2VkIGluIHRoZSBtZWFuIHRpbWUuCj4gPj4+
Pgo+ID4+Pj4gLS0tCj4gPj4+PiAgYXJjaC9yaXNjdi9pbmNsdWRlL2FzbS9wZ3RhYmxlLmggfCAg
OSArKysrKysrKysKPiA+Pj4+ICBhcmNoL3Jpc2N2L2tlcm5lbC9tb2R1bGUuYyAgICAgICB8IDEx
ICsrKysrKysrKysrCj4gPj4+PiAgMiBmaWxlcyBjaGFuZ2VkLCAyMCBpbnNlcnRpb25zKCspCj4g
Pj4+Pgo+ID4+Pj4gZGlmZiAtLWdpdCBhL2FyY2gvcmlzY3YvaW5jbHVkZS9hc20vcGd0YWJsZS5o
IGIvYXJjaC9yaXNjdi9pbmNsdWRlL2FzbS9wZ3RhYmxlLmgKPiA+Pj4+IGluZGV4IDE2MzAxOTY2
ZDY1Yi4uYjA4ZGVkMTMzNjRhIDEwMDY0NAo+ID4+Pj4gLS0tIGEvYXJjaC9yaXNjdi9pbmNsdWRl
L2FzbS9wZ3RhYmxlLmgKPiA+Pj4+ICsrKyBiL2FyY2gvcmlzY3YvaW5jbHVkZS9hc20vcGd0YWJs
ZS5oCj4gPj4+PiBAQCAtMjUsNiArMjUsNyBAQAo+ID4+Pj4gICNpbmNsdWRlIDxhc20vcGFnZS5o
Pgo+ID4+Pj4gICNpbmNsdWRlIDxhc20vdGxiZmx1c2guaD4KPiA+Pj4+ICAjaW5jbHVkZSA8bGlu
dXgvbW1fdHlwZXMuaD4KPiA+Pj4+ICsjaW5jbHVkZSA8bGludXgvc2l6ZXMuaD4KPiA+Pj4+Cj4g
Pj4+PiAgI2lmZGVmIENPTkZJR182NEJJVAo+ID4+Pj4gICNpbmNsdWRlIDxhc20vcGd0YWJsZS02
NC5oPgo+ID4+Pj4gQEAgLTQyNSw2ICs0MjYsMTQgQEAgc3RhdGljIGlubGluZSB2b2lkIHBndGFi
bGVfY2FjaGVfaW5pdCh2b2lkKQo+ID4+Pj4gICNkZWZpbmUgVEFTS19TSVpFIFZNQUxMT0NfU1RB
UlQKPiA+Pj4+ICAjZW5kaWYKPiA+Pj4+Cj4gPj4+PiArLyoKPiA+Pj4+ICsgKiBUaGUgbW9kdWxl
IHNwYWNlIGxpdmVzIGJldHdlZW4gdGhlIGFkZHJlc3NlcyBnaXZlbiBieSBUQVNLX1NJWkUKPiA+
Pj4+ICsgKiBhbmQgUEFHRV9PRkZTRVQgLSBpdCBtdXN0IGJlIHdpdGhpbiAyRyBvZiB0aGUga2Vy
bmVsIHRleHQuCj4gPj4+PiArICovCj4gPj4+PiArI2RlZmluZSBNT0RVTEVTX1NJWkUgICAgICAg
ICAgICAgIChTWl8xMjhNKQo+ID4+Pj4gKyNkZWZpbmUgTU9EVUxFU19WQUREUiAgICAgICAgICAg
ICAoUEFHRV9PRkZTRVQgLSBNT0RVTEVTX1NJWkUpCj4gPj4+PiArI2RlZmluZSBNT0RVTEVTX0VO
RCAgICAgICAgICAgICAgIChWTUFMTE9DX0VORCkKPiA+Pj4+ICsKPiA+Pj4+ICAjaW5jbHVkZSA8
YXNtLWdlbmVyaWMvcGd0YWJsZS5oPgo+ID4+Pj4KPiA+Pj4+ICAjZW5kaWYgLyogIV9fQVNTRU1C
TFlfXyAqLwo+ID4+Pj4gZGlmZiAtLWdpdCBhL2FyY2gvcmlzY3Yva2VybmVsL21vZHVsZS5jIGIv
YXJjaC9yaXNjdi9rZXJuZWwvbW9kdWxlLmMKPiA+Pj4+IGluZGV4IDVkZGRiYTMwMWQwYS4uMWIz
ODJjN2RlMDk1IDEwMDY0NAo+ID4+Pj4gLS0tIGEvYXJjaC9yaXNjdi9rZXJuZWwvbW9kdWxlLmMK
PiA+Pj4+ICsrKyBiL2FyY2gvcmlzY3Yva2VybmVsL21vZHVsZS5jCj4gPj4+PiBAQCAtMTYsNiAr
MTYsOCBAQAo+ID4+Pj4gICNpbmNsdWRlIDxsaW51eC9lcnIuaD4KPiA+Pj4+ICAjaW5jbHVkZSA8
bGludXgvZXJybm8uaD4KPiA+Pj4+ICAjaW5jbHVkZSA8bGludXgvbW9kdWxlbG9hZGVyLmg+Cj4g
Pj4+PiArI2luY2x1ZGUgPGxpbnV4L3ZtYWxsb2MuaD4KPiA+Pj4+ICsjaW5jbHVkZSA8YXNtL3Bn
dGFibGUuaD4KPiA+Pj4+Cj4gPj4+PiAgc3RhdGljIGludCBhcHBseV9yX3Jpc2N2XzY0X3JlbGEo
c3RydWN0IG1vZHVsZSAqbWUsIHUzMiAqbG9jYXRpb24sIEVsZl9BZGRyIHYpCj4gPj4+PiAgewo+
ID4+Pj4gQEAgLTM4MiwzICszODQsMTIgQEAgaW50IGFwcGx5X3JlbG9jYXRlX2FkZChFbGZfU2hk
ciAqc2VjaGRycywgY29uc3QgY2hhciAqc3RydGFiLAo+ID4+Pj4KPiA+Pj4+ICAgIHJldHVybiAw
Owo+ID4+Pj4gIH0KPiA+Pj4+ICsKPiA+Pj4+ICt2b2lkICptb2R1bGVfYWxsb2ModW5zaWduZWQg
bG9uZyBzaXplKQo+ID4+Pj4gK3sKPiA+Pj4+ICsgIHJldHVybiBfX3ZtYWxsb2Nfbm9kZV9yYW5n
ZShzaXplLCAxLCBNT0RVTEVTX1ZBRERSLAo+ID4+Pj4gKyAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIE1PRFVMRVNfRU5ELCBHRlBfS0VSTkVMLAo+ID4+Pj4gKyAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIFBBR0VfS0VSTkVMX0VYRUMsIDAsCj4gPj4+PiArICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgTlVNQV9OT19OT0RFLAo+ID4+Pj4gKyAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIF9fYnVpbHRpbl9yZXR1cm5fYWRkcmVzcygwKSk7Cj4gPj4+PiArfQo+ID4+Pj4g
LS0KPiA+Pj4+IDIuMTYuMgo+ID4+Pgo+ID4+PiBBbnkgdGhvdWdodHMgb24gdGhpcz8KPiA+Pgo+
ID4+IFRoZSBjb25jZXB0IGxvb2tzIGdvb2QsIGJ1dCBkb2VzIHRoaXMgYWN0dWFsbHkga2VlcCB0
aGUgbW9kdWxlcyB3aXRoaW4gMkdpQiBvZgo+ID4+IHRoZSB0ZXh0IGlmIFBBR0VfT0ZGU0VUIGlz
IGxhcmdlPwo+ID4KPiA+IEl0J3MgYmVlbiBzb21lIHRpbWUgc2luY2UgSSB3cm90ZSB0aGlzLCBi
dXQgSSB0aG91Z2h0IFBBR0VfT0ZGU0VUIHdhcwo+ID4gd2hlcmUgdGhlIGtlcm5lbCB0ZXh0ICpz
dGFydGVkKj8gU28gdW5sZXNzIHRoZSB0ZXh0IGl0c2VsZiBpcyBiaWdnZXIKPiA+IHRoYW4gMkcg
LSAxMjggTSwgaW4gd2hpY2ggY2FzZSB3ZSdyZSBTT0wgYW55d2F5LCBpdCBzZWVtcyBsaWtlIHRo
aXMKPiA+IHNob3VsZCB3b3JrLiBJcyB0aGVyZSBzb21ldGhpbmcgYmV0dGVyIHdlIGNhbiBkbywg
d2l0aG91dCBhIGxhcmdlIG1lbW9yeQo+ID4gbW9kZWw/Cj4gPgo+ID4gVGhhbmtzLAo+ID4gU2hl
YQo+Cj4gQW55IGZ1cnRoZXIgdGhvdWdodHMgb24gdGhpcz8KPgo+IFRoYW5rcywKPiBTaGVhCgpT
aGVhLAoKV2FraW5nIHVwIHRoZSBkZWFkICh0aHJlYWRzKSEKCkknbSBoYWNraW5nIG9uIGNhbGwg
aW1wcm92ZW1lbnRzIGZvciB0aGUgUklTQy1WIEJQRiBKSVQuCm1vZHVsZV9hbGxvYygpIGlzIHVz
ZWQgdW5kZXIgdGhlIGhvb2Qgb2YgYnBmX2ppdF9iaW5hcnlfYWxsb2MoKSwgd2hpY2gKaW4gdHVy
biBpcyB1c2VkIHRvIGFsbG9jYXRlIHRoZSBKSVQgaW1hZ2UuIFRoZSBjdXJyZW50IEpJVAppbXBs
ZW1lbnRhdGlvbiBoYXMgdG8gdG8gImxvYWQgaW1tNjQgKyBqYWxyIiB0byBjYWxsIGtlcm5lbCBz
eW1zLApzaW5jZSB0aGUgcmVsYXRpdmUgb2Zmc2V0IGlzID4zMmIuIFdpdGggeW91ciBwYXRjaCwg
SSBjYW4gdXNlIHJlZ3VsYXIKamFsL2F1aXBjK2phbHIgaW5zdGVhZC4gSU9XLCBpdCB3b3VsZCBi
ZSBncmVhdCBpZiBpdCBjb3VsZCBiZSBtZXJnZWQuCjstKSBJJ2QgcHJlZmVyIG5vdCBoYXZpbmcg
dGhlIHBhdGNoIGluIG15IEJQRiBKSVQgc2VyaWVzLCBzaW5jZSB0aGF0CndpbGwgZ28gdGhyb3Vn
aCBhIGRpZmZlcmVudCB0cmVlIHRoYW4gUGF1bCdzIFJWIG9uZS4KCldkeXQgYWJvdXQgYnJ1c2hp
bmcgb2YgdGhlIGR1c3Qgb2YgdGhlIHBhdGNoLCBhbmQgcmUtc2VuZCBpdD8KCgpUaGFua3MhCkJq
w7ZybgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGlu
dXgtcmlzY3YgbWFpbGluZyBsaXN0CmxpbnV4LXJpc2N2QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yaXNjdgo=
