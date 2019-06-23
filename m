Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 704634FA90
	for <lists+linux-riscv@lfdr.de>; Sun, 23 Jun 2019 09:05:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Jko/Ys6ejcrY0JyVfeW5RhdIWiaS+zrOu286ok+zCMU=; b=sbw5Dci6kll+dSnrHsM3W0ZeP
	Ieos5qoDU2bxUQhOQndqQvmCND/2mKb9ziBb4c/ZL42NGOZ/JSbABVu0zV53tZNJ8b06K35aC2Y5X
	udliblNrqV5OiKFBrLIGUFv1PCKd+COjFE+0TRTJW0nIxm6hmDZv3NfNmahHVKyQR31Vb3QYQT/Mv
	tEmRQMmXOZrPkpq5muDJfF0vnK3LLdbEadbDUnAB12I+QZoDTs0QCoj7MekUOenOvjiZIeZ/Be75u
	nW4mT2QxuqxTCEDbqYt4ebVQiAPBJ+y8fXNvg2aWhA+HW3kRzri/LrqssvzsIiAHuL+NtQh6aW9dS
	64vERx1DQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hewYO-00019H-E2; Sun, 23 Jun 2019 07:04:44 +0000
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hewYJ-00018U-C2
 for linux-riscv@lists.infradead.org; Sun, 23 Jun 2019 07:04:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1561273479; x=1592809479;
 h=subject:to:cc:references:from:message-id:date:
 mime-version:in-reply-to:content-transfer-encoding;
 bh=/aAI0t7SceW7uN7ZHFC+JZPULVDAEYWGqO6WQts3cPk=;
 b=Lpg/06mdMwGrdpDH+tCE90SNwz9juvyjp3OEoAUAopUa09gyEVcbouza
 Hsrs6H7rs/JBxUuF5Q+I1hknRZUWJr8R44glRvcubustrqfM2QCCnhean
 tn7eLckwl5RtdDAqMQqzfio/cwFJ5XtgaMfRc6jNasvXvsvrSUCeP4nUO
 2U2ZyNRpxUKJ5b/cZyCzPoPcCWJy6+myi4+LzIInwQOn7k7h9MkqxQAr5
 8GJVkfL+XhmlHyRqYGQxxcnyclcKtKnd8T3vMYIaqq7CGQIiw9Yb4E6Tv
 XRAXd/BmxDMtGXZnbr3l3npvIXZIK8pRSzrxqAFPejSQqCTV+yfHLvmsn g==;
X-IronPort-AV: E=Sophos;i="5.63,407,1557158400"; d="scan'208";a="112495869"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 23 Jun 2019 15:04:31 +0800
IronPort-SDR: DxzD7VhxeNx/ZYfgXVpp6f5xWNMjY/DicXqjF84vrjJ/wREtwW2hqhRes6Xa4jw97VEFRBohiK
 gn96bTthC4+ajq8XmmP4p+2UcwhOahpBtpE51IedCaLeTvcfeqJ1p/PkCQEaL3bxIv7gLicO92
 F6JI29b2hMKZbyMOGNGvuU+So4rvDzleBLE3Wl9fOXJpIeEYhB2SKKAqxbE/H8bzLInJOLTg4O
 exQsDhJwwCAup3KxQZGNQJF+u4D7nrBFSqHsc4fhJhOZzPNGJN9UX+g3GR9fQc+08yv7xGaloG
 DTSIypPr1hSoiY7mDW2voaNx
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP; 23 Jun 2019 00:03:45 -0700
IronPort-SDR: DxxiGAzKwK72J6F0YPI8XyUpqJTgv4mSmHAO5J/ATvgIPhjzcl2oVQxda3RF837bGJOxqpc0Nm
 GG3M8NCgj4Fxl3/F1i2kJDS28i9no3RNsWjS8j4IlSgEPEgJ5QQnMzU7T1WdBs1Bz567jnattr
 Crb+LKfgWO/05RFiR5T7Qxvp9Y4GX2zFUATRJDxxgiHchVJTEaFqP4R8RSFDuPKXgNfLeyHkPl
 MbEvE5xcwnaf8/T4OyJDH/dGCE9iGyFxZ6z9j4zUcRiGUX4NDAk+3Q1lmBuVigDaOn3wtyu5VA
 u1U=
Received: from usa003128.ad.shared (HELO [10.225.97.206]) ([10.225.97.206])
 by uls-op-cesaip02.wdc.com with ESMTP; 23 Jun 2019 00:04:30 -0700
Subject: Re: [PATCH v2] riscv: dts: Add DT node for SiFive FU540 Ethernet
 controller driver
To: Troy Benjegerdes <troy.benjegerdes@sifive.com>
References: <1561114429-29612-1-git-send-email-yash.shah@sifive.com>
 <1561114429-29612-2-git-send-email-yash.shah@sifive.com>
 <18c7992607dd1fed062bd295ac0738a759eff078.camel@wdc.com>
 <CAF5mof3QB8C7VjOyEvCsf9NEDkJhV3cBO5sBD+8z-GrWrnrAyg@mail.gmail.com>
 <3f91c8032e113a19dcec10ca71b017af1427ef7e.camel@wdc.com>
 <43da99709709d2a480b78f25356cda9255205372.camel@wdc.com>
 <A3E7D245-ABFA-4D81-87D6-3F6983AA3A93@sifive.com>
 <54493821-0155-4826-B165-B75FBB329D1A@sifive.com>
From: Atish Patra <atish.patra@wdc.com>
Message-ID: <da45c3aa-d8c1-137c-d0f8-2ba5641293bf@wdc.com>
Date: Sun, 23 Jun 2019 00:04:29 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <54493821-0155-4826-B165-B75FBB329D1A@sifive.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190623_000439_695886_5460B57D 
X-CRM114-Status: GOOD (  24.04  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.144 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>,
 "palmer@sifive.com" <palmer@sifive.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "sachin.ghadi@sifive.com" <sachin.ghadi@sifive.com>,
 "yash.shah@sifive.com" <yash.shah@sifive.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

T24gNi8yMS8xOSA2OjU3IFBNLCBUcm95IEJlbmplZ2VyZGVzIHdyb3RlOgo+IAo+IAo+PiBPbiBK
dW4gMjEsIDIwMTksIGF0IDc6MzMgUE0sIFRyb3kgQmVuamVnZXJkZXMgPHRyb3kuYmVuamVnZXJk
ZXNAc2lmaXZlLmNvbT4gd3JvdGU6Cj4+Cj4+Cj4+Cj4+PiBPbiBKdW4gMjEsIDIwMTksIGF0IDQ6
NTkgUE0sIEF0aXNoIFBhdHJhIDxBdGlzaC5QYXRyYUB3ZGMuY29tPiB3cm90ZToKPj4+Cj4+PiBP
biBGcmksIDIwMTktMDYtMjEgYXQgMTQ6NDYgLTA3MDAsIEF0aXNoIFBhdHJhIHdyb3RlOgo+Pj4+
IE9uIEZyaSwgMjAxOS0wNi0yMSBhdCAxNDoxOCAtMDUwMCwgVHJveSBCZW5qZWdlcmRlcyB3cm90
ZToKPj4+Pj4gQ2FuIHlvdSBwb3N0IHRoZSBmc2JsIGFuZCBvdGhlciBpbWFnZXMgeW91IHVzZWQg
dG8gYm9vdC90ZXN0IHRoaXM/Cj4+Pj4+Cj4+Pj4KPj4+Cj4+PiBSZXNlbmRpbmcgaXQgd2l0aG91
dCB0aGUgYXR0YWNobWVudC4gT2J2aW91c2x5LCB0aGUgbWFpbCBkaWQgbm90IGdvCj4+PiB0aHJv
dWdoIHdpdGggdGhlIGJpbmFyeSBibG9iIGF0dGFjaGVkIDooIDooLiBNeSBiYWQuCj4+Pgo+Pj4g
TGV0IG1lIGtub3cgaWYgeW91IHN0aWxsIHdhbnQgbWUgdG8gc2hhcmUgdGhlIGJpbmFyeSB3aXRo
IHlvdS4gSSB3aWxsCj4+PiBwcm9iYWJseSBzaGFyZSBpdCB2aWEgc29tZSBvdGhlciBtZXRob2Qu
Cj4+Cj4+IFRoZSBibCBjYW1lIHRocm91Z2ggYXMgaXQgd2FzIHNlbnQgZGlyZWN0IHRvIG1lLCBh
bmQgSSBjYW4gZGVhbCB3aXRoCj4+IHRoZSB0ZnRwIGNvbmZpZyBtYW51YWxseS4gSSBoYXZlIGEg
a2VybmVsIGltYWdlLCBidXQgbm90IHRoZSBib290LnNjci51aW1nCj4+IHRoYXQgaXQgbG9va3Mg
bGlrZSB5b3UgYXJlIHVzaW5nLiBJcyB0aGF0IGZyb20gWW9jdG8/Cj4gCj4gSSBnb3QgY29uc29s
ZSBvdXRwdXQsIGFmdGVyIGV4dHJhY3RpbmcgdGhlIGJvb3Qgc2NyaXB0IGZyb20geW9jdG8uCj4g
CgpHbGFkIGl0IHdvcmtlZCBmb3IgeW91Lgo+IFRoZSBpbXBvcnRhbnQgcGFydCBzZWVtcyB0byBi
ZSBjYWxsaW5nCj4g4oCYYm9vdG0gJGtlcm5lbF9hZGRyX3IgLSAkZmR0X2FkZHJfcuKAmQo+IAo+
IFdoaWNoIG1heWJlIGxlYWRzIGludG8gYSBkaXNjdXNzaW9uIG9mIHdoYXQgY2FuIHdlIGRvIHRv
IGF0Cj4gbGVhc3Qgb3V0cHV0IHNvbWUgc29ydCBvZiB1c2VmdWwgZGVidWcgaW5mb3JtYXRpb24g
aWYgdGhlIGRldmljZQo+IHRyZWUgaXMgbm90IGZvdW5kIG9yIGludmFsaWQ/Cj4gCkF0IGxlYXN0
IHNlcmlhbCAmIGNsb2NrIG5lZWRzIHRvIGJlIGNvcnJlY3QgZm9yIHVhcnQgdG8gd29yayBzbyB0
aGF0IAp1c2VmdWwgZGVidWcgaW5mb3JtYXRpb24gY2FuIGJlIGRpc3BsYXllZC4KCj4gSeKAmWQg
YWxzbyBsaWtlIHRvIHByb3Bvc2UgdGhhdCBvbiBSaXNjViwgd2UgdXNlIHRoZSBjaG9zZW4gbm9k
ZQo+IGZvciBrZXJuZWwgY29tbWFuZCBsaW5lCmFuZCBpbml0cmQgbG9jYXRpb24gKGxpa2UgcWVt
dSBkb2VzKSwgYW5kCj4gaW4gdS1ib290LCBkZWZhdWx0IHRvIGFsd2F5cyBwYXNzaW5nIHRoZSBk
ZXZpY2UgdHJlZSBmcm9tIGJvb3RtCj4gYW5kIG90aGVyIGNvbW1hbmRzIChsaWtlIGJvb3RlbGYp
Cj4gCgpJZiBJIHVuZGVyc3RhbmQgeW91IGNvcnJlY3RseSwgeW91IHdhbnQgYSBrZXJuZWwgY29t
bWFuZCBsaW5lIHdpdGggZml4ZWQgCmluaXRyZCBsb2NhdGlvbiBzZXQgaW4gY2hvc2VuIG5vZGUg
dGhhdCBVLUJvb3QgY2FuIHBhc3Mgb24gdG8ga2VybmVsID8KCklmIHRoYXQncyB0aGUgY2FzZSwg
dGhhdCdzIG5vdCBmZWFzaWJsZSBhcyBldmVyeWJvZHkncyBrZXJuZWwgY29tbWFuZCAKbGluZSBt
YXkgbm90IGJlIHNhbWUgYW5kIHdpbGwgcHJvYmFibHkgb3ZlcnJpZGUgaXQgdXNpbmcgQ09ORklH
X0NNRExJTkUuCgpTbyBJIGRvbid0IHNlZSB0aGUgcG9pbnQgaW50IHNldHRpbmcgYSBmaXhlZCBv
bmUuIFdoYXQncyB0aGUgYWR2YW50YWdlIAppbiBkb2luZyB0aGF0ID8KCj4+Cj4+Pgo+Pj4+IEkg
aGF2ZSBub3QgY2hhbmdlZCBmc2JsLiBJdCdzIHRoZSBkZWZhdWx0IG9uZSBjYW1lIHdpdGggdGhl
IGJvYXJkLgo+Pj4+IEhlcmUgYXJlIHRoZSBoZWFkcyBvZiBPcGVuU0JJICsgVS1Cb290ICsgTGlu
dXggcmVwby4KPj4+Pgo+Pj4+IE9wZW5TQkk6IGNkMmRmZGM4NzBlZCAobWFzdGVyKQo+Pj4+IFUt
Ym9vdDogNzdmNmUyZGQwNTUxICsgQW51cCdzIHBhdGNoIHNlcmllcyAodjQpCj4+Pj4gaHR0cHM6
Ly9naXRodWIuY29tL2F0aXNocDA0L3UtYm9vdC90cmVlL3VubGVhc2hlZF93b3JraW5nCj4+Pj4K
Pj4+PiBMaW51eDogYmVkM2MwZDg0ZTdlICsgWWFzaCdzIE1hY2IgU2VyaWVzICsgdGhpcyBwYXRj
aAo+Pj4+IGh0dHBzOi8vZ2l0aHViLmNvbS9hdGlzaHAwNC9saW51eC90cmVlLzUuMi1yYzYtcHJl
Cj4+Pj4KPj4+PiBJIGhhdmUgYWxzbyBhdHRhY2hlZCB0aGUgT3BlblNCSSArIFUtYm9vdCBiaW5h
cnkgYXMgd2VsbC4gQnV0IHRoaXMgaXMKPj4+PiBwcmUtY29uZmlndXJlZCB3aXRoIG15IHRmdHBi
b290IHNlcnZlci4gWW91IG5lZWQgdG8gY2hhbmdlIHRoYXQuCj4+Pj4KPj4+Pj4gSSBrZWVwIHJ1
bm5pbmcgaW50byB2YXJpb3VzIGZhaWx1cmVzIHdoZW4gSSBidWlsZCBmcm9tIHNvdXJjZSBhbmQg
SQo+Pj4+PiB3YW50IHRvIHJ1bGUgb3V0IHBvdGVudGlhbCBoYXJkd2FyZSBpc3N1ZXMgcmVsYXRl
ZCB0byBjbG9jayBhbmQvb3IKPj4+Pj4gZGRyIGluaXRpYWxpemF0aW9uCj4+Pj4+Cj4+Pj4+IE9u
IEZyaSwgSnVuIDIxLCAyMDE5LCAyOjE0IFBNIEF0aXNoIFBhdHJhIDxBdGlzaC5QYXRyYUB3ZGMu
Y29tPgo+Pj4+PiB3cm90ZToKPj4+Pj4+IE9uIEZyaSwgMjAxOS0wNi0yMSBhdCAxNjoyMyArMDUz
MCwgWWFzaCBTaGFoIHdyb3RlOgo+Pj4+Pj4+IERUIG5vZGUgZm9yIFNpRml2ZSBGVTU0MC1DMDAw
IEdFTUdYTCBFdGhlcm5ldCBjb250cm9sbGVyIGRyaXZlcgo+Pj4+Pj4gYWRkZWQKPj4+Pj4+PiBT
aWduZWQtb2ZmLWJ5OiBZYXNoIFNoYWggPHlhc2guc2hhaEBzaWZpdmUuY29tPgo+Pj4+Pj4+IC0t
LQo+Pj4+Pj4+IGFyY2gvcmlzY3YvYm9vdC9kdHMvc2lmaXZlL2Z1NTQwLWMwMDAuZHRzaSAgICAg
ICAgICB8IDE2Cj4+Pj4+Pj4gKysrKysrKysrKysrKysrKwo+Pj4+Pj4+IGFyY2gvcmlzY3YvYm9v
dC9kdHMvc2lmaXZlL2hpZml2ZS11bmxlYXNoZWQtYTAwLmR0cyB8ICA5Cj4+Pj4+PiArKysrKysr
KysKPj4+Pj4+PiAyIGZpbGVzIGNoYW5nZWQsIDI1IGluc2VydGlvbnMoKykKPj4+Pj4+Pgo+Pj4+
Pj4+IGRpZmYgLS1naXQgYS9hcmNoL3Jpc2N2L2Jvb3QvZHRzL3NpZml2ZS9mdTU0MC1jMDAwLmR0
c2kKPj4+Pj4+PiBiL2FyY2gvcmlzY3YvYm9vdC9kdHMvc2lmaXZlL2Z1NTQwLWMwMDAuZHRzaQo+
Pj4+Pj4+IGluZGV4IDRlOGZiZGUuLmM1M2I0ZWEgMTAwNjQ0Cj4+Pj4+Pj4gLS0tIGEvYXJjaC9y
aXNjdi9ib290L2R0cy9zaWZpdmUvZnU1NDAtYzAwMC5kdHNpCj4+Pj4+Pj4gKysrIGIvYXJjaC9y
aXNjdi9ib290L2R0cy9zaWZpdmUvZnU1NDAtYzAwMC5kdHNpCj4+Pj4+Pj4gQEAgLTIyNSw1ICsy
MjUsMjEgQEAKPj4+Pj4+PiAgICAgICAgICAgICAgICAgICAgICAjYWRkcmVzcy1jZWxscyA9IDwx
PjsKPj4+Pj4+PiAgICAgICAgICAgICAgICAgICAgICAjc2l6ZS1jZWxscyA9IDwwPjsKPj4+Pj4+
PiAgICAgICAgICAgICAgfTsKPj4+Pj4+PiArICAgICAgICAgICAgIGV0aDA6IGV0aGVybmV0QDEw
MDkwMDAwIHsKPj4+Pj4+PiArICAgICAgICAgICAgICAgICAgICAgY29tcGF0aWJsZSA9ICJzaWZp
dmUsZnU1NDAtbWFjYiI7Cj4+Pj4+Pj4gKyAgICAgICAgICAgICAgICAgICAgIGludGVycnVwdC1w
YXJlbnQgPSA8JnBsaWMwPjsKPj4+Pj4+PiArICAgICAgICAgICAgICAgICAgICAgaW50ZXJydXB0
cyA9IDw1Mz47Cj4+Pj4+Pj4gKyAgICAgICAgICAgICAgICAgICAgIHJlZyA9IDwweDAgMHgxMDA5
MDAwMCAweDAgMHgyMDAwCj4+Pj4+Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAweDAg
MHgxMDBhMDAwMCAweDAgMHgxMDAwPjsKPj4+Pj4+PiArICAgICAgICAgICAgICAgICAgICAgcmVn
LW5hbWVzID0gImNvbnRyb2wiOwo+Pj4+Pj4+ICsgICAgICAgICAgICAgICAgICAgICBzdGF0dXMg
PSAiZGlzYWJsZWQiOwo+Pj4+Pj4+ICsgICAgICAgICAgICAgICAgICAgICBsb2NhbC1tYWMtYWRk
cmVzcyA9IFswMCAwMCAwMCAwMCAwMCAwMF07Cj4+Pj4+Pj4gKyAgICAgICAgICAgICAgICAgICAg
IGNsb2NrLW5hbWVzID0gInBjbGsiLCAiaGNsayI7Cj4+Pj4+Pj4gKyAgICAgICAgICAgICAgICAg
ICAgIGNsb2NrcyA9IDwmcHJjaSBQUkNJX0NMS19HRU1HWExQTEw+LAo+Pj4+Pj4+ICsgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICA8JnByY2kgUFJDSV9DTEtfR0VNR1hMUExMPjsKPj4+Pj4+
PiArICAgICAgICAgICAgICAgICAgICAgI2FkZHJlc3MtY2VsbHMgPSA8MT47Cj4+Pj4+Pj4gKyAg
ICAgICAgICAgICAgICAgICAgICNzaXplLWNlbGxzID0gPDA+Owo+Pj4+Pj4+ICsgICAgICAgICAg
ICAgfTsKPj4+Pj4+PiArCj4+Pj4+Pj4gICAgICB9Owo+Pj4+Pj4+IH07Cj4+Pj4+Pj4gZGlmZiAt
LWdpdCBhL2FyY2gvcmlzY3YvYm9vdC9kdHMvc2lmaXZlL2hpZml2ZS11bmxlYXNoZWQtCj4+Pj4+
Pj4gYTAwLmR0cwo+Pj4+Pj4+IGIvYXJjaC9yaXNjdi9ib290L2R0cy9zaWZpdmUvaGlmaXZlLXVu
bGVhc2hlZC1hMDAuZHRzCj4+Pj4+Pj4gaW5kZXggNGRhODg3MC4uZDc4M2JmMiAxMDA2NDQKPj4+
Pj4+PiAtLS0gYS9hcmNoL3Jpc2N2L2Jvb3QvZHRzL3NpZml2ZS9oaWZpdmUtdW5sZWFzaGVkLWEw
MC5kdHMKPj4+Pj4+PiArKysgYi9hcmNoL3Jpc2N2L2Jvb3QvZHRzL3NpZml2ZS9oaWZpdmUtdW5s
ZWFzaGVkLWEwMC5kdHMKPj4+Pj4+PiBAQCAtNjMsMyArNjMsMTIgQEAKPj4+Pj4+PiAgICAgICAg
ICAgICAgZGlzYWJsZS13cDsKPj4+Pj4+PiAgICAgIH07Cj4+Pj4+Pj4gfTsKPj4+Pj4+PiArCj4+
Pj4+Pj4gKyZldGgwIHsKPj4+Pj4+PiArICAgICBzdGF0dXMgPSAib2theSI7Cj4+Pj4+Pj4gKyAg
ICAgcGh5LW1vZGUgPSAiZ21paSI7Cj4+Pj4+Pj4gKyAgICAgcGh5LWhhbmRsZSA9IDwmcGh5MT47
Cj4+Pj4+Pj4gKyAgICAgcGh5MTogZXRoZXJuZXQtcGh5QDAgewo+Pj4+Pj4+ICsgICAgICAgICAg
ICAgcmVnID0gPDA+Owo+Pj4+Pj4+ICsgICAgIH07Cj4+Pj4+Pj4gK307Cj4+Pj4+Pgo+Pj4+Pj4g
VGhhbmtzLiBJIGFtIGFibGUgdG8gYm9vdCBVbmxlYXNoZWQgd2l0aCBuZXR3b3JraW5nIGVuYWJs
ZWQgd2l0aAo+Pj4+Pj4gdGhpcwo+Pj4+Pj4gcGF0Y2guCj4+Pj4+Pgo+Pj4+Pj4gRldJVywKPj4+
Pj4+IFRlc3RlZC1ieTogQXRpc2ggUGF0cmEgPGF0aXNoLnBhdHJhQHdkYy5jb20+Cj4+Pj4+Pgo+
Pj4+Pj4gUmVnYXJkcywKPj4+Pj4+IEF0aXNoCj4+Pj4+PiBfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwo+Pj4+Pj4gbGludXgtcmlzY3YgbWFpbGluZyBsaXN0
Cj4+Pj4+PiBsaW51eC1yaXNjdkBsaXN0cy5pbmZyYWRlYWQub3JnCj4+Pj4+PiBodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJpc2N2Cj4+Cj4gCj4gCgoK
LS0gClJlZ2FyZHMsCkF0aXNoCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpsaW51eC1yaXNjdiBtYWlsaW5nIGxpc3QKbGludXgtcmlzY3ZAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXJpc2N2Cg==
