Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50FEAA501B
	for <lists+linux-riscv@lfdr.de>; Mon,  2 Sep 2019 09:43:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hMEy0meQBfaLu15Oy6etLaP3epNfMoUsl3XUygzYxjo=; b=hC9Y/rCbaK8HQj
	C/3YEm3ivldvPStHLuV4FWyXB2Szj4Hrki4Vs6lifjtdoImmfVUxzOnXuUIGpAD77ocM2QCTfxoi6
	BSZlOsOIIf3J4Nu1FTqd8fRTINpuy8IE4ao/xwCLA/DW9Y1pQLwNEYuf1FPH9uROy0sgrmEv++Tsq
	vxyhBYOOvDBk1ZGdSOVJWUMk+T783QQJ18CbsbObULT9RmYH7XSlbELGfnBpMsCF3QtWMsY+Oq9fZ
	RC9e7+W4Z40H+NAppIzumWne5L39I5jP7NdWTw0DUduo0oHlyKkQElQFstorq0Aamqtke/fgnEAzd
	jaBz2VUqZGm9MUV6hiLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4gzL-0002Ev-O2; Mon, 02 Sep 2019 07:42:59 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92 #3 (Red Hat
 Linux)) id 1i4gzI-0002Eb-6W; Mon, 02 Sep 2019 07:42:56 +0000
Date: Mon, 2 Sep 2019 00:42:56 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Subject: Re: [PATCH] riscv: add arch/riscv/Kbuild
Message-ID: <20190902074256.GA754@infradead.org>
References: <20190821092658.32764-1-yamada.masahiro@socionext.com>
 <20190826113526.GA23425@infradead.org>
 <CAK7LNAQ_5Hz_CXAdx8W0bLjMWQ08KDWK3gG2pfDZOEE+cr0KEw@mail.gmail.com>
 <20190830155322.GA30046@infradead.org>
 <CAK7LNAR2JuZkdJGxO=f2hUxmQca5d7430NC-2hiqZwkJphJ9sA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK7LNAR2JuZkdJGxO=f2hUxmQca5d7430NC-2hiqZwkJphJ9sA@mail.gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Palmer Dabbelt <palmer@sifive.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Christoph Hellwig <hch@infradead.org>,
 Paul Walmsley <paul.walmsley@sifive.com>, linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

T24gU2F0LCBBdWcgMzEsIDIwMTkgYXQgMTA6MDQ6NTNQTSArMDkwMCwgTWFzYWhpcm8gWWFtYWRh
IHdyb3RlOgo+IEtidWlsZCBzdXBwb3J0IHR3byBmaWxlIG5hbWVzLCAiTWFrZWZpbGUiIGFuZCAi
S2J1aWxkIgo+IGZvciBkZXNjcmliaW5nIG9iai15LCBvYmotbSwgZXRjLgoKPHNuaXBwaW5nIHRo
ZSBiYXNpYyBleHBsYW5hdGlvbiwgd2hpY2ggaXMgZG9jdW1lbnRlZCBwcmV0dHkgd2VsbCwKSSBJ
IHRoaW5rIEkgZnVsbCB1bmRlcnN0YW5kPgoKPiBTaW1pbGFybHksIGFyY2gvJChTUkNBUkNIKS9N
YWtlZmlsZSBpcyB2ZXJ5IHNwZWNpYWwKPiBpbiB0aGF0IGl0IGlzIGluY2x1ZGVkIGZyb20gdGhl
IHRvcC1sZXZlbCBNYWtlZmlsZSwKPiBhbmQgc3BlY2lmeSBhcmNoLXNwZWNpZmljIGNvbXBpbGVy
IGZsYWdzIGV0Yy4KPiAKPiBXZSBjYW4gdXNlIGFyY2gvJChTUkNBUkNIKS9LYnVpbGQKPiB0byBz
cGVjaWZ5IG9iai15LCBvYmotbS4KPiBUaGUgdG9wLWxldmVsIE1ha2VmaWxlIGRvZXMgbm90IG5l
ZWQgdG8ga25vdwo+IHRoZSBkaXJlY3Rvcnkgc3RydWN0dXJlIHVuZGVyIGFyY2gvJChTUkNBUkNI
KS8uCj4gCj4gVGhpcyBpcyBsb2dpY2FsIHNlcGFyYXRpb24uCgpCdXQgb25seSBpZiB3ZSBkb2N1
bWVudCB0aGlzIHNwZWNpZmljIHNwbGl0IGFuZCBldmVudHVhbGx5IHN0b3AgYWxsb3dpbmcgCnRv
IGJ1aWxkIG9iamVjdHMgZnJvbSBhcmNoLyQoU1JDQVJDSCkvTWFrZWZpbGUuICBBbmQgaW4gbXkg
cGVyZmVjdCB3b3JsZAp3ZSdkIGV2ZW50dWFsbHkgcGhhc2Ugb3V0IHRoZSBtYWdpYyBhcmNoLyQo
U1JDQVJDSCkvTWFrZWZpbGUgZW50aXJlxYB5LgpJbiBhZGRpdGlvbiB0byB0aGUgbm9ybWFsIEti
dWlsZCBmaWxlIHdlJ2QgdGhlbiBoYXZlIHNheSAobmFtZXMgZW50aXJlbHkKbWFkZSB1cCBhbmQg
cHJvYmFibHkgbm90IHRoZSBiZXN0IGlkZWEpCgogIGFyY2gvJChTUkNBUkNIKS9mbGFncy5tayB0
byBzZXQgdGhlIHZhcmlvdXMgY29tcGlsZXIgZmxhZ3MgYW5kIGNvCiAgYXJjaC8kKFNSQ0FSQ0gp
L3RhcmdldHMubWsgZm9yIGV4dHJhIGFyY2gtc3BlY2lmaWMgdGFyZ2V0cwoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtcmlzY3YgbWFpbGluZyBs
aXN0CmxpbnV4LXJpc2N2QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yaXNjdgo=
