Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EDCAEB4AA1
	for <lists+linux-riscv@lfdr.de>; Tue, 17 Sep 2019 11:35:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:
	In-Reply-To:Message-ID:Subject:From:To:Date:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oHx0KRU7CrbueV0AA7kJHrNJ4vWTY2ZhwWH2h3FcO7o=; b=Dpun+ErYeBu5yP
	PhTV8Y6/tDcWW0SdZ7GoEiEcwy3/8c7pCkOkAVuPAYy4g5hySFhDqdvwKbE1bkR4iADHw8FnLNaHF
	2zPgVAjam23XL7Lz7FkKb6smwONoHdtcZN/NqGQmr4ZfBSGICZw9RWB/CxwglZbbocEmn18OAzaN9
	3McjTvHM+m3YQG+IADEiIRUdJdelnHf/FQtvDUCOBuss/rsi6rm2j6qEFedf3Vjt+7H1MDPlGQex7
	KqHStq1xiwNTi0VszfSrtP4R2lExKgZSZc5fVAABpiRJCdg3/YfoE+GA0sY+xGEhWHuEKW9mlP/Yp
	dIOtDvtXXP0oQHIfNKDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iA9tQ-0004nE-QY; Tue, 17 Sep 2019 09:35:28 +0000
Received: from mail-40132.protonmail.ch ([185.70.40.132])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iA9tJ-0004lZ-PE
 for linux-riscv@lists.infradead.org; Tue, 17 Sep 2019 09:35:23 +0000
Date: Tue, 17 Sep 2019 09:35:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aurabindo.in;
 s=protonmail; t=1568712918;
 bh=7al/T7V+BY7NjSZ3yvHA/yYuZG9e2Bk22StX9CKMVk4=;
 h=Date:To:From:Cc:Reply-To:Subject:In-Reply-To:References:
 Feedback-ID:From;
 b=e4vIQB3/ek87t2wke2ANUNusBnbTVWIcoFZ38xRO+RsNAgqHQ68bwGUxW3I0+pC1U
 SMgWFisYL4+sGAEvTxGuN9NccZR0KxyyuH8QeIMgofR2/BbX3YYcCIcq9IF9iDTf6p
 kXNBD093B6RmoIhtrR97jSvg6zLsYtVf8moUxBNM=
To: Palmer Dabbelt <palmer@sifive.com>
From: Aurabindo Jayamohanan <mail@aurabindo.in>
Subject: RE: [RFC] buildtar: add case for riscv architecture
Message-ID: <lMUhcsewB9GAKeZH2cH-zl3vFME8u2z5IzCqDBFhtT2IbG71vhHnjrlHKbhyxFee5XFe1X1gRllNJBR9e9dQlC0vbIpSffL_y0pLb46VddQ=@aurabindo.in>
In-Reply-To: <mhng-4e30fb12-057c-425c-a867-ecf93e080ed9@palmer-si-x1e>
References: <mhng-4e30fb12-057c-425c-a867-ecf93e080ed9@palmer-si-x1e>
Feedback-ID: D1Wwva8zb0UdpJtanaReRLGO3iCsewpGmDn8ZDKmpao-Gnxd2qXPmwwrSQ99r5Q15lmK-D8x6vKzqhUKCgzweA==:Ext:ProtonMail
MIME-Version: 1.0
X-Spam-Status: No, score=3.8 required=7.0 tests=ALL_TRUSTED,DKIM_SIGNED,
 DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,URIBL_BLACK autolearn=no
 autolearn_force=no version=3.4.2
X-Spam-Level: ***
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on mail.protonmail.ch
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_023522_135255_BA8FBBD4 
X-CRM114-Status: GOOD (  19.81  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.7 URIBL_BLACK            Contains an URL listed in the URIBL blacklist
 [URIs: aurabindo.in]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.70.40.132 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Reply-To: Aurabindo Jayamohanan <mail@aurabindo.in>
Cc: "aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>,
 "linux-kbuild@vger.kernel.org" <linux-kbuild@vger.kernel.org>,
 Anup Patel <Anup.Patel@wdc.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Troy Benjegerdes <troy.benjegerdes@sifive.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

4oCQ4oCQ4oCQ4oCQ4oCQ4oCQ4oCQIE9yaWdpbmFsIE1lc3NhZ2Ug4oCQ4oCQ4oCQ4oCQ4oCQ4oCQ
4oCQCk9uIFN1bmRheSwgU2VwdGVtYmVyIDE1LCAyMDE5IDEyOjU3IEFNLCBQYWxtZXIgRGFiYmVs
dCA8cGFsbWVyQHNpZml2ZS5jb20+IHdyb3RlOgoKPiBPbiBTYXQsIDE0IFNlcCAyMDE5IDA2OjA1
OjU5IFBEVCAoLTA3MDApLCBBbnVwIFBhdGVsIHdyb3RlOgo+Cj4gPiA+IC0tLS0tT3JpZ2luYWwg
TWVzc2FnZS0tLS0tCj4gPiA+IEZyb206IGxpbnV4LWtlcm5lbC1vd25lckB2Z2VyLmtlcm5lbC5v
cmcgPGxpbnV4LWtlcm5lbC0KPiA+ID4gb3duZXJAdmdlci5rZXJuZWwub3JnPiBPbiBCZWhhbGYg
T2YgUGFsbWVyIERhYmJlbHQKPiA+ID4gU2VudDogU2F0dXJkYXksIFNlcHRlbWJlciAxNCwgMjAx
OSA2OjMwIFBNCj4gPiA+IFRvOiBtYWlsQGF1cmFiaW5kby5pbgo+ID4gPiBDYzogVHJveSBCZW5q
ZWdlcmRlcyB0cm95LmJlbmplZ2VyZGVzQHNpZml2ZS5jb207IFBhdWwgV2FsbXNsZXkKPiA+ID4g
cGF1bC53YWxtc2xleUBzaWZpdmUuY29tOyBhb3VAZWVjcy5iZXJrZWxleS5lZHU7IGxpbnV4LQo+
ID4gPiByaXNjdkBsaXN0cy5pbmZyYWRlYWQub3JnOyBsaW51eC1rZXJuZWxAdmdlci5rZXJuZWwu
b3JnOyBsaW51eC0KPiA+ID4ga2J1aWxkQHZnZXIua2VybmVsLm9yZwo+ID4gPiBTdWJqZWN0OiBS
ZTogW1JGQ10gYnVpbGR0YXI6IGFkZCBjYXNlIGZvciByaXNjdiBhcmNoaXRlY3R1cmUKPiA+ID4g
T24gV2VkLCAxMSBTZXAgMjAxOSAwNTo1NDowNyBQRFQgKC0wNzAwKSwgbWFpbEBhdXJhYmluZG8u
aW4gd3JvdGU6Cj4gPiA+Cj4gPiA+ID4gPiBOb25lIG9mIHRoZSBhdmFpbGFibGUgUmlzY1YgcGxh
dGZvcm1zIHRoYXQgSeKAmW0gYXdhcmUgb2YgdXNlIGNvbXByZXNzZWQKPiA+ID4gPiA+IGltYWdl
cywgdW5sZXNzIHRoZXJlIGFyZSBzb21lIG5ldyBib290bG9hZGVycyBJIGhhdmVu4oCZdCBzZWVu
IHlldC4KPiA+ID4gPgo+ID4gPiA+ID4KPiA+ID4gPgo+ID4gPiA+IEkgbm90aWNlZCB0aGF0IGRl
ZmF1bHQgYnVpbGQgaW1hZ2UgaXMgSW1hZ2UuZ3osIHdoaWNoIGlzIHdoeSBJIHRob3VnaHQgaXRz
IGEKPiA+ID4gPiBnb29kIGlkZWEgdG8gY29weSBpdCBpbnRvIHRoZSB0YXJiYWxsLiBEb2VzIHN1
Y2ggYSBjb3B5IG5vdCBtYWtlIHNlbnNlIGF0IHRoaXMKPiA+ID4gPiBwb2ludCA/Cj4gPiA+Cj4g
PiA+IEltYWdlLmd6IGNhbid0IGJlIGJvb3RlZCBkaXJlY3RseTogaXQncyBqdXN0IEltYWdlIHRo
YXQncyBiZWVuIGNvbXByZXNzZWQKPiA+ID4gd2l0aCB0aGUgc3RhbmRhcmQgZ3ppcCBjb21tYW5k
LiBBIGJvb3Rsb2FkZXIgd291bGQgaGF2ZSB0byBkZWNvbXByZXNzCj4gPiA+IHRoYXQgaW1hZ2Ug
YmVmb3JlIGxvYWRpbmcgaXQgaW50byBtZW1vcnksIHdoaWNoIHJlcXVpcmVzIGV4dHJhIGJvb3Rs
b2FkZXIKPiA+ID4gc3VwcG9ydC4KPiA+ID4gQ29udHJhc3QgdGhhdCB3aXRoIHRoZSB6SW1hZ2Ug
c3R5bGUgaW1hZ2VzICh3aGljaCBhcmUgdm1saW51eiBvbiB4ODYpLCB3aGljaAo+ID4gPiBhcmUg
c2VsZi1leHRyYWN0aW5nIGFuZCB0aGVyZWZvciByZXF1aXJlIG5vIGJvb3Rsb2FkZXIgc3VwcG9y
dC4gVGhlCj4gPiA+IGV4YW1wbGVzIGZvciB1LWJvb3QgYWxsIHVzZSB0aGUgImJvb3RpIiBjb21t
YW5kLCB3aGljaCBleHBlY3RzCj4gPiA+IHVuY29tcHJlc3NlZCBpbWFnZXMuCj4gPiA+IFBva2lu
ZyBhcm91bmQgSSBjb3VsZG4ndCBmaWd1cmUgb3V0IGEgd2F5IHRvIGhhdmUgdS1ib290IGRlY29t
cHJlc3MgdGhlCj4gPiA+IGltYWdlcywgYnV0IHRoYXQgYXBwbGllcyB0byBhcm02NCBhcyB3ZWxs
IHNvIEknbSBub3Qgc3VyZSBpZiBJJ20gbWlzc2luZwo+ID4gPiBzb21ldGhpbmcuCj4gPiA+IElm
IEkgd2FzIGRvaW5nIHRoaXMsIEknZCBjb3B5IG92ZXIgYXJjaC9yaXNjdi9ib290L0ltYWdlIGFu
ZCBjYWxsIGl0Cj4gPiA+ICIvYm9vdC9pbWFnZS0ke0tFUk5FTFJFTEVBU0V9IiwgYXMgY2FsbGlu
ZyBpdCB2bWxpbnV6IGlzIGEgYml0IGNvbmZ1c2luZyB0bwo+ID4gPiBtZSBiZWNhdXNlIEknZCBl
eHBlY3Qgdm1saW51eiB0byBiZSBhIHNlbGYtZXh0cmFjdGluZyBjb21wcmVzc2VkCj4gPiA+IGV4
ZWN1dGFibGUgYW5kIG5vdCBhIHJhdyBnemlwIGZpbGUuCj4gPgo+ID4gT24gdGhlIGNvbnRyYXJ5
LCBpdCBpcyBpbmRlZWQgcG9zc2libGUgdG8gYm9vdCBJbWFnZS5neiBkaXJlY3RseSB1c2luZwo+
ID4gVS1Cb290IGJvb3RpIGNvbW1hbmQgc28gdGhpcyBwYXRjaCB3b3VsZCBiZSB1c2VmdWwuCj4g
PiBBdGlzaCBoYWQgZ290IGl0IHdvcmtpbmcgb24gVS1Cb290IGJ1dCBoZSBoYXMgZGVmZXJyZWQg
Ym9vdGkgSW1hZ2UuZ3oKPiA+IHN1cHBvcnQgZHVlIHRvIGZldyBtb3JlIGRlcGVuZGVudCBjaGFu
Z2VzLiBNYXkgYmUgaGUgY2FuIHNoYXJlCj4gPiBtb3JlIGluZm8uCj4KPiBPaCwgZ3JlYXQuIEkg
Z3Vlc3MgaXQgbWFrZXMgc2Vuc2UgdG8ganVzdCBwdXQgYm90aCBpbiB0aGUgdGFyYmFsbCwgdGhl
biwgYXMKPiB1c2VycyB3aWxsIHN0aWxsIG5lZWQgdG8gdXNlIHRoZSBJbWFnZSBmb3JtYXQgZm9y
IG5vdy4KPgoKVW5jb21wcmVzc2VkIHZtbGludXggaXMgYWxyZWFkeSBjb3BpZWQgYnkgZGVmYXVs
dC4gVGhpcyBwYXRjaCBqdXN0IGFkZHMgdGhlCkltYWdlLmd6IGludG8gdGhlIGFyY2hpdmUgYXMg
dm1saW51ei4gQnV0IGFzIHlvdSBzYWlkLCBzaW5jZSB0aGUgbmFtZSB2bWxpbnV6IGlzCnJlc2Vy
dmVkIGZvciBzZWxmIGV4dHJhY3RpbmcgYXJjaGl2ZXMsIHNob3VsZCBJIGtlZXAgdGhlIG9yaWdp
bmFsIG5hbWUgSW1hZ2UuZ3ogPwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmxpbnV4LXJpc2N2IG1haWxpbmcgbGlzdApsaW51eC1yaXNjdkBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcmlzY3YK
