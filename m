Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9894C97316
	for <lists+linux-riscv@lfdr.de>; Wed, 21 Aug 2019 09:12:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=11FSDNHInCiashh09ViPSVkinfpwkyb9FVEoQV9xELs=; b=enHBwhKEq+R8Tf
	7Epl8aWmUENYVW3PuOcCBSnD7LWsHqdT464aZiPYdS7MGXzR2PD05Wk2jpjU0HeMoK6TlRdFEJLLg
	NCnwH9O3qEuFIGlt+oR+I4zqCWA6gU+pSga+IGXTmeAnAwzahrYi7kfUpReyq7Z5iQvpWYUl0jB+U
	bXomSTVa112sMwcnRZTyK7gXeVDDWxmr/JHzUbZTQko3eH13iL5ovD9Cz/t6oG1I/AeESSYzITRqi
	P1Pbiglto4bQcv+e34M5P7JqU0dtKpKAbFGNQmzs4KykFCz+bh9SjPo95L0d7I2/o1bmvgqWgqbNB
	xuTO+LNcE2SFPB3MKfpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0KnM-0005sC-Nz; Wed, 21 Aug 2019 07:12:37 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0Kmx-0005ct-9d
 for linux-riscv@lists.infradead.org; Wed, 21 Aug 2019 07:12:14 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id D162968C7B; Wed, 21 Aug 2019 09:12:04 +0200 (CEST)
Date: Wed, 21 Aug 2019 09:12:04 +0200
From: Christoph Hellwig <hch@lst.de>
To: Troy Benjegerdes <troy.benjegerdes@sifive.com>
Subject: Re: [PATCH 15/15] riscv: disable the EFI PECOFF header for M-mode
Message-ID: <20190821071204.GA25836@lst.de>
References: <20190813154747.24256-1-hch@lst.de>
 <20190813154747.24256-16-hch@lst.de>
 <3BF39A0F-558D-40E0-880D-27829486F9F0@sifive.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3BF39A0F-558D-40E0-880D-27829486F9F0@sifive.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_001211_490238_61C47262 
X-CRM114-Status: GOOD (  14.04  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Damien Le Moal <damien.lemoal@wdc.com>, Palmer Dabbelt <palmer@sifive.com>,
 linux-kernel@vger.kernel.org, Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv@lists.infradead.org, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

T24gVHVlLCBBdWcgMjAsIDIwMTkgYXQgMDk6MTQ6NDFQTSAtMDcwMCwgVHJveSBCZW5qZWdlcmRl
cyB3cm90ZToKPiAKPiAKPiA+IE9uIEF1ZyAxMywgMjAxOSwgYXQgODo0NyBBTSwgQ2hyaXN0b3Bo
IEhlbGx3aWcgPGhjaEBsc3QuZGU+IHdyb3RlOgo+ID4gCj4gPiBObyBwb2ludCBpbiBibG9hdGlu
ZyB0aGUga2VybmVsIGltYWdlIHdpdGggYSBib290bG9hZGVyIGhlYWRlciBpZgo+ID4gd2UgcnVu
IGJhcmUgbWV0YWwuCj4gCj4gSSB3b3VsZCBzYXkgdGhlIHNhbWUgZm9yIFMtbW9kZS4gRUZJIGJv
b3Rpbmcgc2hvdWxkIGJlIGFuIG9wdGlvbiwgbm90Cj4gYSByZXF1aXJlbWVudC4gSSBoYXZlIE0t
bW9kZSBVLWJvb3Qgd29ya2luZyB3aXRoIGJvb3RlbGYgdG8gc3RhcnQgQkJMLAo+IGFuZCBhdCBz
b21lIHBvaW50LCBJ4oCZbSBob3Bpbmcgd2UgY2FuIGhhdmUgYSBNLW1vZGUgbGludXgga2VybmVs
IGJlCj4gdGhlIFNCSSBwcm92aWRlciBmb3IgUy1tb2RlIGtlcm5lbHMsIHdoaWNoIHNlZW0gbW9z
dCBsb2dpY2FsIHRvIG1lCj4gdG8gc3RhcnQgdXNpbmcgdGhlIHZtbGludXggZWxmIGJpbmFyaWVz
IHVzaW5nIHNvbWV0aGluZyBsaWtlIGtleGVjKCkKClN0cmljdGx5IHNwZWFraW5nIHdlIGNvdWxk
IGp1c3QgYWRkIGFub3RoZXIgb3B0aW9uIGZvciB0aGUgaGVhZGVyIHNvCnRoYXQgeW91IGNvdWxk
IGFsc28gZGlzYWJsZSBpdCBmb3IgUy1tb2RlLiAgQnV0IHRoZW4gYWdhaW4gdGhlIGhlYWRlcgpp
cyBub3QgdmVyeSBoYXJtZnVsLCBhcyB5b3UgZG9uJ3QgaGF2ZSB0byB1c2UgaXQuICBJdCBqdXN0
IGVhdHMgdXAKYSBsaXR0bGUgbW9yZSBrZXJuZWwgc3BhY2UuICBBbmQgYXMgdGhhdCBhc3BhY2Ug
aXMgdmVyeSB0aWdodCBmb3IgbXkKTS1tb2RlIHRhcmdldCAodGhlIEtlbmRyeXRlIEtEMjEwKSBh
bmQgaXQgaXMgdG90YWxseSBwb2ludGxlc3MgZm9yCk0tbW9kZSBJIGp1c3QgcmVtb3ZlIGl0IHRo
ZXJlLgoKVGhlIGlkZWEgb2YgdXNpbmcgTS1tb2RlIExpbnV4IGFzIHRoZSBTQkkgc291bmRzIGNv
b2wuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51
eC1yaXNjdiBtYWlsaW5nIGxpc3QKbGludXgtcmlzY3ZAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJpc2N2Cg==
