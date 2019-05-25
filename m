Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2324D2A4CF
	for <lists+linux-riscv@lfdr.de>; Sat, 25 May 2019 16:16:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y53D5sZR9hry3839p4O3bFRDFZaNoUFEyqnHFr8iFzc=; b=oWYqz07uPDjaVg
	mJCk9Vbd2XibMFXfJun+dbLkH9msasZ80orWlCqpxSiuDJ90pzRjKds2Wnj5iMewG7ytMQkebEV8u
	7RUngYDIHRLwKEIw7tgAR2tTB+F1TV0yYQRw6VZ6+YfD6Hxn++NAjwt71VDSD13r9r70Rbwm3NOlN
	1+gFZN3eOeYlLWJmcgDzLwVrEWbY+GbCv0U9Z1XZUU1GZBpgdprFrUa5LQgZWMDeLVL0X3vGCGk+p
	VvFTiFC9e+fQzhnqsRGS+ABhd137tLPeZjtfv1rhrmPmvCFxeR3lOo6K4SWAp7fo7WrcwPV2I/Q7l
	Cc8e8iKn40Y8X+IA0huw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUXTP-0001pL-7T; Sat, 25 May 2019 14:16:35 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUXTL-0001lu-4K
 for linux-riscv@lists.infradead.org; Sat, 25 May 2019 14:16:32 +0000
Received: by mail-io1-xd41.google.com with SMTP id u13so1292996iop.0
 for <linux-riscv@lists.infradead.org>; Sat, 25 May 2019 07:16:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=0/6yZjLbOx98vNAaA4Yoci41CPJOZgAmR3PImdrY61I=;
 b=DJ9i1FxlydFbVSKQ1lEXDLVZgmgpRroKEHAlKfIJmtAjBhqanwmBJqj17x4s640v4+
 Gv/NhSAEV0W/Cxpmyj2fSifQ0xhHKmjx7NwRsP/U1NQPy3obhwpLAuajF0Cb8wKy9b6z
 dZPg4bGS//4b7g79MA4ZtFy11z2Ld/agjQH0+Z0V+zKH7NxAylUKKX9MBVvR/m+jZTGE
 KHrbhdwvwau1BnHTuSPgEXD+UMz+d7V/W4d2nqKSQllwVW1YNp857ruwjoECCY3OhRBY
 +1DdRnmieyC9nuE+V/E7DKfjP+p4Z87gj6KfwsUwW2DTrQkySfjIuDg3gRb9KxswikhP
 cq8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=0/6yZjLbOx98vNAaA4Yoci41CPJOZgAmR3PImdrY61I=;
 b=FYcpUoGLmnHs/b0IehdTSGPSuU2+/S9wjk6lit9yoh8EJbcVaIKFzGmfJ0fpmDcjR5
 7EdvGBo2LDBp4/yTpU+ZcFro038iNzLFuVxihjscQzWs06fSaUcOGYLrblfvOIwp4PNB
 P9zJ8i3DY46j1/QOaikI8QHzokq2cYL2QS18246htLmFK7S//l/iIiQoQvQK0xwv/VtY
 E1bSwZO0p4rz+Yuf355cRtp8j6CsmwJUejyYKNJEMU10Sn+Jig+tno2kI4m8Fz9qT85+
 OGPxOdKTV9U3mcQpXPI75NZEm7N+uEgV2sP8XXvzJ80gQDmlYUByt/b5BktChNb9+4Ll
 Ofuw==
X-Gm-Message-State: APjAAAXnQ7zauOJMjZoDm96xhttXgm1Puh+hf8+NH4mKP32/aRbqUAHY
 w9zTchyu9bsuF2MxegG+Ra6LBw==
X-Google-Smtp-Source: APXvYqzgHUo+qfER1qSKwo/nyAqapHG8ke8JT1tn8/bhP3Z+6DWiJxeXAJ9QDBs9w2xrehucwyAy0g==
X-Received: by 2002:a6b:9306:: with SMTP id v6mr41894940iod.278.1558793788697; 
 Sat, 25 May 2019 07:16:28 -0700 (PDT)
Received: from [192.168.62.194] (71-34-182-131.desm.qwest.net. [71.34.182.131])
 by smtp.gmail.com with ESMTPSA id z198sm2473218itb.11.2019.05.25.07.16.27
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 25 May 2019 07:16:28 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
Subject: Re: 5.2-rc1 boot on Unleashed
From: Troy Benjegerdes <troy.benjegerdes@sifive.com>
In-Reply-To: <CAAhSdy0R6UgxhgrU9NZegmoigjqZmx6RwoGngPdmzrzaUUxpTA@mail.gmail.com>
Date: Sat, 25 May 2019 09:16:26 -0500
Message-Id: <4572851B-EF46-45A1-A806-663894673EF9@sifive.com>
References: <5c1ffb76-b18a-dbae-d3ad-f3d2cd41ee44@wdc.com>
 <alpine.DEB.2.21.9999.1905220942040.20842@viisi.sifive.com>
 <db248e63-c0bc-7fd8-cf2d-d13c8f140036@wdc.com>
 <alpine.DEB.2.21.9999.1905221334460.23235@viisi.sifive.com>
 <34F7A31E-17F9-4A3C-9F42-DE7837F899CE@sifive.com>
 <CAAhSdy0R6UgxhgrU9NZegmoigjqZmx6RwoGngPdmzrzaUUxpTA@mail.gmail.com>
To: Anup Patel <anup@brainfault.org>
X-Mailer: Apple Mail (2.3445.9.1)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190525_071631_314924_725A2523 
X-CRM114-Status: GOOD (  15.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Palmer Dabbelt <palmer@sifive.com>,
 =?utf-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@gmail.com>,
 Anup Patel <anup.patel@wdc.com>, Atish Patra <atish.patra@wdc.com>,
 Lukas Auer <lukas.auer@aisec.fraunhofer.de>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 Bin Meng <bmeng.cn@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Cgo+IE9uIE1heSAyNSwgMjAxOSwgYXQgMzowNiBBTSwgQW51cCBQYXRlbCA8YW51cEBicmFpbmZh
dWx0Lm9yZz4gd3JvdGU6Cj4gCj4gSGkgVHJveSwKPiAKPiBPbiBUaHUsIE1heSAyMywgMjAxOSBh
dCAzOjQ1IEFNIFRyb3kgQmVuamVnZXJkZXMKPiA8dHJveS5iZW5qZWdlcmRlc0BzaWZpdmUuY29t
PiB3cm90ZToKPj4gCj4+IAo+Pj4gT24gTWF5IDIyLCAyMDE5LCBhdCAzOjQzIFBNLCBQYXVsIFdh
bG1zbGV5IDxwYXVsLndhbG1zbGV5QHNpZml2ZS5jb20+IHdyb3RlOgo+Pj4gCj4+PiArIEFudXAs
IFRyb3kKPj4+IAo+Pj4gT24gV2VkLCAyMiBNYXkgMjAxOSwgQXRpc2ggUGF0cmEgd3JvdGU6Cj4+
PiAKPj4+PiBPbiA1LzIyLzE5IDk6NDIgQU0sIFBhdWwgV2FsbXNsZXkgd3JvdGU6Cj4+Pj4+IEFt
IGNoZWNraW5nIG9uIHRoaXMgbm93IGFuZCBob3BlIHRvIGhhdmUgc29tZSBjb25jbHVzaW9uIG9u
IGl0IHRoaXMgd2Vlay4KPj4+PiAKPj4+PiBUaGFua3MuIEFueSBjaGFuY2UgeW91IGNhbiB0YWtl
IGEgbG9vayBhdCB0aGUgVS1Cb290IGNsb2NrIGRyaXZlciB0byBwYXRjaCBpdAo+Pj4+IGFzIHBl
ciB0aGUgRFQgY2hhbmdlcyA/Cj4+PiAKPj4+IEkgcHJvYmFibHkgd29uJ3QgaGF2ZSB0aGUgY2hh
bmNlIHRvIGdldCB0byBpdCBmb3IgYSB3aGlsZS4gIExvb2tzIGxpa2UKPj4+IEFudXAgd2FzIHRo
ZSBvbmUgd2hvIHBvc3RlZCB0aGUgY2xvY2sgZHJpdmVyIHRvIFUtQm9vdCAtIGNhbiBoZSB0YWtl
IGEKPj4+IGxvb2sgYXQgaXQ/Cj4+PiAKPj4+IFdlJ3ZlIGFsc28gYXNrZWQgVHJveSB0byBsb29r
IGF0IHVwc3RyZWFtIFUtYm9vdCByZWxhdGVkIGlzc3VlcywgYnV0Cj4+PiBJJ20gdW5zdXJlIHdo
ZW4gcGF0Y2hlcyB3aWxsIHN0YXJ0IGZsb3dpbmcgdXBzdHJlYW0uCj4+PiAKPj4+IAo+Pj4gLSBQ
YXVsCj4+IAo+PiBPbmNlIEkgZmlndXJlIG91dCB3aHkgSeKAmW0gZ2V0dGluZyBUWCB0aW1lb3V0
cyBvbiB0aGUgbWFjYiBkcml2ZXIgYW5kIGhhdmUgc29tZXRoaW5nIHdvcmtpbmcgSSBjYW4gc3Rh
cnQgdXBzdHJlYW1pbmcgdGhlIHUtYm9vdCBwYXRjaGVzLgo+PiAKPj4gRm9yIG5vdywgdGhlIHdv
cmstaW4tcHJvZ3Jlc3MgaXMgYXQgaHR0cHM6Ly9naXRodWIuY29tL3NpZml2ZS91LWJvb3QvdHJl
ZS9zYW5kYm94Cj4gCj4gQmFzZWQgb24geW91ciBjb21taXRzIGluIGFib3ZlIEdpdFJlcG8sIGl0
IHNlZW1zIHlvdSBhcmUgdHJ5aW5nIGVudGlyZQo+IFUtQm9vdCBpbiBNLW1vZGUuCj4gCj4gQ3Vy
cmVudCBib290LWZsb3cgb2YgUy1tb2RlIFUtQm9vdCBpczoKPiBaU0JMIChNLW1vZGUpIC0+IEZT
QkwgKE0tbW9kZSkgLT4gT3BlblNCSS9CQkwgKE0tbW9kZSkgLT4gVS1Cb290IChTLW1vZGUpCj4g
Cj4gVGhlIFUtQm9vdCBTUEwgY2FuIHBlcmZlY3RseSByZXBsYWNlIFNpRml2ZSBGU0JMIHRvIGhh
dmUgZm9sbG93aW5nCj4gYm9vdC1mbG93Ogo+IFpTQkwgKE0tbW9kZSkgLT4gVS1Cb290IFNQTCAo
TS1tb2RlKSAtPiBPcGVuU0JJL0JCTCAoTS1tb2RlKSAtPiBVLUJvb3QgKFMtbW9kZSkKPiAKPiBD
YW4geW91IGV4cGxhaW4gYWR2YW50YWdlcyBvZiB1c2luZyBmdWxsIFUtQm9vdCBNLW1vZGUgdG8g
cmVwbGFjZQo+IEZTQkwgYXMgY29tcGFyZWQgdG8gVS1Cb290IFNQTCBNLW1vZGUgcmVwbGFjaW5n
IEZTQkwgPwo+IAo+IFJlZ2FyZHMsCj4gQW51cAoKVGhlIGN1cnJlbnQgZmxvdyBpbiBGcmVlZG9t
LXUtc2RrICh3aXRoIGh0dHBzOi8vZ2l0aHViLmNvbS9zaWZpdmUvSGlGaXZlX1UtQm9vdCkgaXMg
dGhpczoKWlNCTCAoTS1tb2RlKSAtPiBVLUJvb3QgKE0tbW9kZSkgLT4gQkJMIC0+IExpbnV4IGtl
cm5lbAoKVGhlIG1ham9yIGRyaXZlciBmb3IgZnVsbCBVLUJvb3QgTS1tb2RlIGlzIGF1dG9tYXRl
ZCByZWdyZXNzaW9uIHRlc3RpbmcgYW5kIGJlaW5nIGFibGUKdG8gbG9hZCB0aGUgU0JJIGludGVy
ZmFjZSAoQkJMIG9yIE9wZW5TQkkpIGFuZCBsaW51eCBrZXJuZWwgdmlhIFRGVFAuCgpJIGRvIGFn
cmVlIFUtQm9vdCBTUEwgaXMgYSB2ZXJ5IGdvb2QgaWRlYSwgSSBoYXZlIGJlZW4gd29ya2luZyBv
biByZXBsaWNhdGluZyB0aGUKZnVuY3Rpb25hbGl0eSBvZiB0aGUgb2xkIEhpRml2ZSBVLWJvb3Qg
Zmlyc3QgYW5kIHRoZW4gb25jZSB0aGF0IHdvcmtzIEkgdGhpbmsgaXQgd2lsbCBiZSBhCmxvdCBl
YXNpZXIgdG8gd29yayBvdXQgdGhlIFNQTCBvcHRpb24uCgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtcmlzY3YgbWFpbGluZyBsaXN0CmxpbnV4
LXJpc2N2QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1yaXNjdgo=
