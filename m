Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B45828E4F
	for <lists+linux-riscv@lfdr.de>; Fri, 24 May 2019 02:23:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cqqaTca9lo+QSi7DzDRnMKhIYztEqXF8vEcq/En8WXs=; b=sorZzdy7W9qidT
	fYCEJnKFGSm2KiQJSCgxjFD8G3nX24wLl/4hOfeGV2Q8MEwFgfYj5e9Ac1r/7ToxGexLZCoN62jFH
	rN2YJU0hPgHpvS75eJVqssutO5qgYvUij85yWG456Y4r1o/aDXBSt4mfzzfefHu4YQm2ddl/xeq9O
	Ht+p2ZjFlBvpe74+6XwBc0bJmYIRCe+5v+jRv5nhVB0nOL/kD4zC9PbuNdovSVBCIYENdJZizt12g
	+3Szck4HF4MSuaTw0xrrN3sbx1DkDBpJwu4k5wbluqDUnPzZSPnDt//UQdPBtQ1W1nAxy+BkV+tqh
	A8BO/Pnf4vjNVZkRDDCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTxzv-0006hd-Bx; Fri, 24 May 2019 00:23:47 +0000
Received: from mail-it1-x144.google.com ([2607:f8b0:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTxzr-0006gr-R1
 for linux-riscv@lists.infradead.org; Fri, 24 May 2019 00:23:45 +0000
Received: by mail-it1-x144.google.com with SMTP id 9so11249150itf.4
 for <linux-riscv@lists.infradead.org>; Thu, 23 May 2019 17:23:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=dZTkEG4FGOEpbeQhoovmtT6cHjg332dZspZxAZJxW1k=;
 b=YuPPp044ILmN0y+3xu/AaRSCxmvP3sdzOnqqslRaxjUAWLkSfq0uwTMDJ2JL8Up8dH
 nHuHgbwW/AizFhSyr0AzjsPLh/u9qQbXkiOH8w4588rUegLIWutFaj24GbTMzyUTskWp
 TJgzgbh26d3J7CzMYUhDGRKATn/FG+a1ufIg90Q7CyTIb/mqQZlM44zEGK/C2yJ3T6Ei
 bLo9H6QHPmzPKnORjG4VJkep61zoyv9XSgrVnzCiEMvcYDMSCSKSX4MV11ASHabXdUIp
 LRUcpB/9xLeQGQuFXLkEEz12zQ690+fEaPaOxGz6rYuVn1NxYDIk7AapJsDQn//9ygEM
 Vzew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=dZTkEG4FGOEpbeQhoovmtT6cHjg332dZspZxAZJxW1k=;
 b=O3QA13hbtil2MKgeNstO1rZ5puC2Zt0CJxpF63b+5mWwGwdYRYY+xHjhtJhlhLWVqA
 ghgWhz9Sj/mTxQxNVyivfjyNdj4BxUTryg0FwLwwm5+swJJaGS8DgyqNCQxNV9v+DVKv
 j6Da5VePGE46/C9OfLyV8y/prlYQZhMq/xJxBnNTxLasGHTcrZtcDNJ5pzMvvCzSjvRZ
 kOOVUX8iNpL6Hnaj/ggkMzqxisV0qzkaBSyYK9E5NrT+dAFYQEBxxh1BF8l/trKC0RUv
 liXnfdf74i2vHa4lOpER3jbGNzXpO9HnqKa/ahf49F5ONuwf1uDClDLqRbDgkL/fRTSO
 WQeg==
X-Gm-Message-State: APjAAAV+GDu3PT50CKCzN2rvyqcMdeyNTRxO0HaHdMhPE509mmiWyaou
 A/yQf9Td0/MZxy/iSVJ4QugwUQ==
X-Google-Smtp-Source: APXvYqwcirXIi5Ht178F6tiUdJy81YhYG+kYxnHPYEoyWaDdGb3SsOp5ZvKULJiVQyx820kf4kkBWA==
X-Received: by 2002:a02:b79a:: with SMTP id f26mr15013392jam.135.1558657422398; 
 Thu, 23 May 2019 17:23:42 -0700 (PDT)
Received: from [192.168.1.196] ([216.160.37.230])
 by smtp.gmail.com with ESMTPSA id q10sm423588ioi.52.2019.05.23.17.23.41
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 23 May 2019 17:23:41 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
Subject: Re: 5.2-rc1 boot on Unleashed
From: Troy Benjegerdes <troy.benjegerdes@sifive.com>
In-Reply-To: <alpine.DEB.2.21.9999.1905221334460.23235@viisi.sifive.com>
Date: Thu, 23 May 2019 19:23:40 -0500
Message-Id: <8F4FB234-FD5B-4AD6-99BD-57A40A79A024@sifive.com>
References: <5c1ffb76-b18a-dbae-d3ad-f3d2cd41ee44@wdc.com>
 <alpine.DEB.2.21.9999.1905220942040.20842@viisi.sifive.com>
 <db248e63-c0bc-7fd8-cf2d-d13c8f140036@wdc.com>
 <alpine.DEB.2.21.9999.1905221334460.23235@viisi.sifive.com>
To: Paul Walmsley <paul.walmsley@sifive.com>
X-Mailer: Apple Mail (2.3445.9.1)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_172343_884950_E182C6E9 
X-CRM114-Status: GOOD (  13.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: anup.patel@wdc.com, Atish Patra <atish.patra@wdc.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 Palmer Dabbelt <palmer@sifive.com>,
 =?utf-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Cgo+IE9uIE1heSAyMiwgMjAxOSwgYXQgMzo0MyBQTSwgUGF1bCBXYWxtc2xleSA8cGF1bC53YWxt
c2xleUBzaWZpdmUuY29tPiB3cm90ZToKPiAKPiArIEFudXAsIFRyb3kKPiAKPiBPbiBXZWQsIDIy
IE1heSAyMDE5LCBBdGlzaCBQYXRyYSB3cm90ZToKPiAKPj4gT24gNS8yMi8xOSA5OjQyIEFNLCBQ
YXVsIFdhbG1zbGV5IHdyb3RlOgo+Pj4gQW0gY2hlY2tpbmcgb24gdGhpcyBub3cgYW5kIGhvcGUg
dG8gaGF2ZSBzb21lIGNvbmNsdXNpb24gb24gaXQgdGhpcyB3ZWVrLgo+PiAKPj4gVGhhbmtzLiBB
bnkgY2hhbmNlIHlvdSBjYW4gdGFrZSBhIGxvb2sgYXQgdGhlIFUtQm9vdCBjbG9jayBkcml2ZXIg
dG8gcGF0Y2ggaXQKPj4gYXMgcGVyIHRoZSBEVCBjaGFuZ2VzID8KPiAKPiBJIHByb2JhYmx5IHdv
bid0IGhhdmUgdGhlIGNoYW5jZSB0byBnZXQgdG8gaXQgZm9yIGEgd2hpbGUuICBMb29rcyBsaWtl
IAo+IEFudXAgd2FzIHRoZSBvbmUgd2hvIHBvc3RlZCB0aGUgY2xvY2sgZHJpdmVyIHRvIFUtQm9v
dCAtIGNhbiBoZSB0YWtlIGEgCj4gbG9vayBhdCBpdD8KPiAKPiBXZSd2ZSBhbHNvIGFza2VkIFRy
b3kgdG8gbG9vayBhdCB1cHN0cmVhbSBVLWJvb3QgcmVsYXRlZCBpc3N1ZXMsIGJ1dCAKPiBJJ20g
dW5zdXJlIHdoZW4gcGF0Y2hlcyB3aWxsIHN0YXJ0IGZsb3dpbmcgdXBzdHJlYW0uCj4gCj4gCj4g
LSBQYXVsCgoKSeKAmWQgcHJlZmVyIHRvIGhvbGQgb2ZmIG9uIGFueSBjaGFuZ2VzIHRvIFUtYm9v
dCB1bnRpbCB3ZSBoYXZlIGEgbW9yZSBjb21wbGV0ZSBwYXRjaCBzZXQuIEdQSU8gYW5kIGV0aGVy
bmV0IGVudHJpZXMgYXJlIG1pc3NpbmcgZnJvbSB0aG9zZSBkZXZpY2UgdHJlZXMsIGFuZCB3ZSBo
YXZlIGEgd29ya2luZyBVLWJvb3QgZGV2aWNlIHRyZWUgbm93LiBJZiB0aGUga2VybmVsIG5lZWRz
IHNvbWV0aGluZyBkaWZmZXJlbnQgd2UgY2FuIGxvYWQgdGhlIGRldmljZSB0cmVlIHRoZSBrZXJu
ZWwgbmVlZHMgZm9yIGF3aGlsZS4KClRoZSBVLWJvb3QgZGV2aWNlIHRyZWUgaXMgZ29pbmcgdG8g
aGF2ZSBzb21lIHRoaW5ncyBpbiBpdCB0aGUga2VybmVsIGRvZXNu4oCZdCBjYXJlIGFib3V0IGFu
eXdheSwgc28gd2XigJl2ZSBhbHJlYWR5IGdvdCBkaXZlcmdlbmNlIGJldHdlZW4gdGhlIHR3by4g
SWRlYWxseSB0aGUgVS1ib290IHZlcnNpb24gaXMgYSBzdXBlcnNldCBvZiB0aGUga2VybmVsIHZl
cnNpb24uIFdlIGFscmVhZHkgaGFkIG9uZSBkaXNydXB0aXZlIGNoYW5nZSB3aXRoIHRoZSBjbG9j
ayBkcml2ZXIsIHNvIHdoYXQgaXMgdG8gcHJldmVudCB0aGVyZSB0byBiZSBtb3JlIGRpc3J1cHRp
dmUgY2hhbmdlcyBpbiB0aGUgZXRoZXJuZXQvR1BJTyBkZXZpY2UgdHJlZSBlbnRyaWVzIHRoYXQg
Z28gaW4gdGhlIGtlcm5lbCB1bmxlc3Mgd2UgaGF2ZSBhIGRyYWZ0IG9mIHdoYXQgdGhvc2UgZW50
cmllcyBzaG91bGQgbG9vayBsaWtlIHRoYXQgaXMgYWNjZXB0YWJsZT8KX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtcmlzY3YgbWFpbGluZyBsaXN0
CmxpbnV4LXJpc2N2QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yaXNjdgo=
