Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D44BB48421
	for <lists+linux-riscv@lfdr.de>; Mon, 17 Jun 2019 15:36:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0n1wiQi9DWSFNCrm+iKOYEg+FTRX785YE8n5M3QPC+8=; b=Hp1/XVh/pHJG+4
	8MhEnNoUjB6IXyudPbYOBzhOa55NJoh1DyWZ2xgrWV+FA49Jt81aIYQ8h11+Es8bBQIN18gSJZL7O
	EXhN+XnxFxjov/yrksYTNyJCH6VfPVOCN3xomokjyXjJ0fpqmJNnvnlP7nR0FqEhtP624l66vV4Ac
	y+yxqoOPliTaUvDY5C9oE9bPU3CSkRgwxK/ggqFnULf1ci61t+Ex1ShEVQ64IX8xVtV7ynIgyp56r
	z+Vpxn/IYDdPo970QyW8iHEGQdOHb0hTC8JaSpM7V3mUy/Rdy1GJGUAmATMJ0bJIfimPrkJnXmc02
	h3mkRJ251TCJcLQ7AAoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcrnh-0004Mc-Kp; Mon, 17 Jun 2019 13:35:57 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcrne-0004M8-C1
 for linux-riscv@lists.infradead.org; Mon, 17 Jun 2019 13:35:55 +0000
Received: by mail-io1-xd43.google.com with SMTP id u13so21277643iop.0
 for <linux-riscv@lists.infradead.org>; Mon, 17 Jun 2019 06:35:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=tb3mr7DX/gECNd5xaLXpIUod8O5qye0164DvO0JcCJ4=;
 b=DGIu4FIKOeIFf7XR5xDIjI+t4Tc0wMpp/4nSmKDFmMibrkjf3U7OGbo3muDDTvZR4f
 2x4diZR3GZkFTBrwvvmSSg5Dxd1jxGGE5pJlc6cUw9vDoftVdBGkX8KvBqjUhSlFsVNQ
 WmeiGP3Aq1WFM9jrsKsH7XKjOvWQVQ12aMjpTW9UEG/UzDQtCAm+3f79IOCHTNd31GiQ
 7YM41pqW/DhrosC8j+SDsjZI9jacRhZX8c7UKHN2yEjgJCrq3LgO9MBiotuAscYScbBV
 ZIQoSEeY0revb9HgZa5zOrZ2lRI2uSS/Chb+6cjeni/Dp9caleLVfnKsMDxUtEOZGUJ0
 f7Nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=tb3mr7DX/gECNd5xaLXpIUod8O5qye0164DvO0JcCJ4=;
 b=G9iHKSj8nETBo9Zww9yRSm8+MI+U1cHI+F3qQITxbgNl7Dn75xcdwhHqmKFVbRHMcp
 4hqE6et0zJfUJPGcUGOOwat20Zw7KR+TktPP8UnWGSnimzMZ76E0jAwjw2Ary/CmgQPB
 kvL17oVNAFSCAhZZAdPq9iMJVOGPub3UHKH3IhvsoGKTLFajvjYo0AlzmpH8ZKsnVyP7
 uwN7Nzn2HxMAj0e6zRJ7YVAlH23yfFno/tLC3w8cp91iFkdjF66g605Xx8Co+4c1PgM4
 O5rwvCCmK8xiwENE8tbI2a459tic68jc3TIxxiVSPN+8sOf7c/k4MDdr7njfWAZzw4o2
 8gbQ==
X-Gm-Message-State: APjAAAWidmqP4xiCBsl7blFWQPw0QYmMqWfre2fKyGoPGDzGFkPfQG/H
 8Ei8+avlLrCXvL8TjWu2Aleu5A==
X-Google-Smtp-Source: APXvYqyRzaszCIJ034A6jcBKqekzdOiK9QRaOhb+MzpIIo22ZLH09rv7pTZYLFn6cTRcxxxrF6ZVbg==
X-Received: by 2002:a6b:dd17:: with SMTP id f23mr123931ioc.213.1560778553564; 
 Mon, 17 Jun 2019 06:35:53 -0700 (PDT)
Received: from [192.168.1.196] ([216.160.37.230])
 by smtp.gmail.com with ESMTPSA id e5sm12422771ioq.22.2019.06.17.06.35.51
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 17 Jun 2019 06:35:52 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
Subject: Re: Working device tree for the HifiveU
From: Troy Benjegerdes <troy.benjegerdes@sifive.com>
In-Reply-To: <alpine.DEB.2.21.9999.1906170626460.32654@viisi.sifive.com>
Date: Mon, 17 Jun 2019 08:35:51 -0500
Message-Id: <5D137BB6-2955-4D48-A18F-F06562AE502C@sifive.com>
References: <mvmlfy05xjm.fsf@suse.de>
 <alpine.DEB.2.21.9999.1906170347460.19994@viisi.sifive.com>
 <mvm8su05rqc.fsf@suse.de>
 <alpine.DEB.2.21.9999.1906170546100.4549@viisi.sifive.com>
 <mvm4l4o5qdd.fsf@suse.de> <62E04A53-803C-44AD-AAFC-EAD7D6BFE289@sifive.com>
 <alpine.DEB.2.21.9999.1906170626460.32654@viisi.sifive.com>
To: Paul Walmsley <paul.walmsley@sifive.com>
X-Mailer: Apple Mail (2.3445.9.1)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_063554_413887_A573D9C5 
X-CRM114-Status: GOOD (  11.94  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Andreas Schwab <schwab@suse.de>, Yash Shah <yash.shah@sifive.com>,
 linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Cgo+IE9uIEp1biAxNywgMjAxOSwgYXQgODozMSBBTSwgUGF1bCBXYWxtc2xleSA8cGF1bC53YWxt
c2xleUBzaWZpdmUuY29tPiB3cm90ZToKPiAKPiBPbiBNb24sIDE3IEp1biAyMDE5LCBUcm95IEJl
bmplZ2VyZGVzIHdyb3RlOgo+IAo+Pj4gT24gSnVuIDE3LCAyMDE5LCBhdCA3OjQ5IEFNLCBBbmRy
ZWFzIFNjaHdhYiA8c2Nod2FiQHN1c2UuZGU+IHdyb3RlOgo+Pj4gCj4+PiBPbiBKdW4gMTcgMjAx
OSwgUGF1bCBXYWxtc2xleSA8cGF1bC53YWxtc2xleUBzaWZpdmUuY29tPiB3cm90ZToKPj4+IAo+
Pj4+IE9uIE1vbiwgMTcgSnVuIDIwMTksIEFuZHJlYXMgU2Nod2FiIHdyb3RlOgo+Pj4+IAo+Pj4+
PiBPbiBKdW4gMTcgMjAxOSwgUGF1bCBXYWxtc2xleSA8cGF1bC53YWxtc2xleUBzaWZpdmUuY29t
PiB3cm90ZToKPj4+Pj4gCj4+Pj4+PiBPbiBNb24sIDE3IEp1biAyMDE5LCBBbmRyZWFzIFNjaHdh
YiB3cm90ZToKPj4+Pj4+IAo+Pj4+Pj4+IFdoYXQgaXMgdGhlIGNvcnJlY3QgZGV2aWNlIHRyZWUg
Zm9yIHRoZSBIaWZpdmVVIHRoYXQgd29ya3MgYm90aCB3aXRoCj4+Pj4+Pj4gNS4yKyBhbmQgVS1C
b290Pwo+Pj4+Pj4gCj4+Pj4+PiBVLUJvb3Qgc2hvdWxkIGZvbGxvdyB0aGUga2VybmVsJ3MgRFQg
ZGF0YToKPj4+Pj4+IAo+Pj4+Pj4gaHR0cDovL2dpdC5kZW54LmRlLz9wPXUtYm9vdC5naXQ7YT1i
bG9iO2Y9ZG9jL2RldmljZS10cmVlLWJpbmRpbmdzL1JFQURNRTtoPTJlYTM0MzlhMTcwMjM2YmQ5
MTI5MzA5OTFhZDcwZWU3Mjg5ZGNkMjk7aGI9SEVBRAo+Pj4+Pj4gCj4+Pj4+PiBUaHVzIHRoZSB1
cHN0cmVhbS1ib3VuZCBkYXRhIGlzIGN1cnJlbnRseSBoZXJlOgo+Pj4+Pj4gCj4+Pj4+PiBodHRw
czovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC9yaXNjdi9saW51eC5n
aXQvbG9nLz9oPWZpeGVzCj4+Pj4+IAo+Pj4+PiBUaGF0IGlzIGNvbXBsZXRlbHkgdXNlbGVzcy4K
Pj4+PiAKPj4+PiBJZiB5b3UgaGF2ZSBzcGVjaWZpYyBxdWVzdGlvbnMgb3IgY29tbWVudHMsIEkg
b3Igc29tZW9uZSBlbHNlIHdvdWxkIGJlIAo+Pj4+IGhhcHB5IHRvIHRyeSB0byBoZWxwIHlvdSBv
dXQuICBPdGhlcndpc2UsIHRoZXJlJ3Mgbm90IG11Y2ggdGhhdCB3ZSBjYW4gZG8uCj4+PiAKPj4+
IEl0IGRvZXNuJ3QgZXZlbiBoYXZlIGV0aGVybmV0LCBzbyBob3cgY2FuIGl0IGJlIG9mIGFueSB1
c2U/Cj4+PiAKPj4+IEFuZHJlYXMuCj4+PiAKPj4gCj4+IENvdWxkIHdlIHBsZWFzZSBpbmNsdWRl
IFlhc2jigJlzIG1hY2IgcGF0Y2hlcyAoYW5kCj4+IGFzc29jaWF0ZWQgZGV2aWNlIHRyZWUgY2hh
bmdlcykgaW4gdGhlIOKAmGZpeGVz4oCZIGJyYW5jaCBvbiAKPj4gaHR0cHM6Ly9naXQua2VybmVs
Lm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvcmlzY3YvbGludXguZ2l0Cj4gCj4gWWFzaCdz
IERUIGJpbmRpbmcgbmVlZCB0byBiZSBhcHByb3ZlZCBieSB0aGUgRFQgbWFpbnRhaW5lcnMgZmly
c3QuICBBbmQgCj4gaWRlYWxseSwgaGlzIE1BQ0IgZHJpdmVyIGNoYW5nZSBuZWVkcyB0byBiZSBt
ZXJnZWQgZmlyc3QgYnkgdGhlIG5ldHdvcmtpbmcgCj4gbWFpbnRhaW5lcnMuCj4gCj4gT25jZSB0
aGF0IGhhcHBlbnMsIHdlJ2xsIGJlIGFibGUgdG8gYWRkIEV0aGVybmV0IHN1cHBvcnQgdG8gdGhl
IHVwc3RyZWFtIAo+IEZVNTQwIGFuZCBIaUZpdmUgVW5sZWFzaGVkIGRldmljZSB0cmVlIGRhdGEg
ZmlsZXMuCj4gCj4gCj4gLSBQYXVsCgpDYW4gd2UgYXQgbGVhc3QgcHV0IGl0IGluIHNvbWUga2lu
ZCBvZiDigJh1bmRlciByZXZpZXfigJkgYnJhbmNoIG9uIHRoZSBzaGFyZWQgZ2l0CnRyZWUgc28g
ZXZlcnl0aGluZyB3ZSBuZWVkIChpbmNsdWRpbmcgb3RoZXIgc3R1ZmYgbGlrZSBHUElPIGRyaXZl
cnMpIGlzIGFsbCBpbiBvbmUKcGxhY2U/CgpXZSB1c2VkIHRvIGRvIHRoaXMgd2l0aCBzb21lIG9m
IHRoZSBnaXRodWIgcmlzY3YtbGludXggdHJlZXMuCgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KbGludXgtcmlzY3YgbWFpbGluZyBsaXN0CmxpbnV4LXJp
c2N2QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1yaXNjdgo=
