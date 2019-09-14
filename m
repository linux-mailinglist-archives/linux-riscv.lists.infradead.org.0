Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CF59B2CAD
	for <lists+linux-riscv@lfdr.de>; Sat, 14 Sep 2019 21:27:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Mime-Version:Message-ID:To:From:In-Reply-To:Subject:
	Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	 bh=HBXGrkR4d8MmEZPWmWmo1rcZhvNNQxIT0LcTjfKq87k=; b=V9AFxDzXK37yZeU6t0ny6u9U4
	Td+z2W/D+pIo7sYca+OtpXQHmmZ1iQ0/96WavcXiBzxTiQ0+jSqHoAkQmxF0HeiSOcE/KfJ2m7eSd
	yjiBoNgU7Ma/RSnMDSGE2TZr5aDc7GjBTYWlVfeFGH2PYIPsPj0yMxOwoQn62uoXKL/WdxXRLenpC
	DqZdgqEEZYJvfcG8Rvo60f2pqneWJnX2Ehfm37zF/s58hbfDjwggmpoSDUIePDI+QhiYaNz9u7eLC
	EwsNDRFKuHJ+npH+W6N+Al/LE+E2W8wVRnKBNHipGHLnBwGtNrDLFotMYcvNdN+Xh5JBp5+kaiYE1
	h5OCtfvfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9Di2-0004hx-NJ; Sat, 14 Sep 2019 19:27:50 +0000
Received: from mail-pg1-f195.google.com ([209.85.215.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9Dhz-0004hZ-12
 for linux-riscv@lists.infradead.org; Sat, 14 Sep 2019 19:27:48 +0000
Received: by mail-pg1-f195.google.com with SMTP id 4so17008965pgm.12
 for <linux-riscv@lists.infradead.org>; Sat, 14 Sep 2019 12:27:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=v6C3ZvAydqGC3rFSdN2T0p9SAevh8Gx6OJqDWauOVmw=;
 b=mFKM5ayntSbOUf2WtLXumyJXBmN6n9Om9GiUv2HPNYDJ0AJj6qyLuIbYolz/HpZ5Xq
 2QOW7+3xaBo6pxxn4vT/a7U9Id6MN3oTgd+BKZd/NWUqrr/YDN3bb5AFhuDpk/5pMq85
 ZS/d5izyuRZNBtrM8ZO3PxEhYqcDVYee/JYzrMgzOLEbBVJb/1pN89sfjmOb3kt4TMnP
 ELsAj9JqvytVxHgRU96WZxvmYHKEMDfW7GffMYnuQeuHWhhYyndG+FPdcR3wTbw5g9sb
 3rzc8tNfe6AsLADdrtYGv0KN5OBC7DyQ9BUm8vPqHeUBAioBYlShkhCeCNo1UctxKmuY
 3CbA==
X-Gm-Message-State: APjAAAVu2kspMjvgIOvzVaziqsI/TaJfod0UMdZDNV0PwhATc2PqLgLz
 nBPJaA33ZDKMhhLRJgE3+BFj6A==
X-Google-Smtp-Source: APXvYqwB+1DyOesfa/VZYXSB3dOHrrPdtntsVeSHhLZiOjHp6dYnW9FtU1z/2J6MMNFbasmlhtdtFQ==
X-Received: by 2002:a17:90a:ba93:: with SMTP id
 t19mr2903492pjr.141.1568489265106; 
 Sat, 14 Sep 2019 12:27:45 -0700 (PDT)
Received: from localhost (amx-tls3.starhub.net.sg. [203.116.164.13])
 by smtp.gmail.com with ESMTPSA id i1sm4105089pfe.136.2019.09.14.12.27.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 14 Sep 2019 12:27:44 -0700 (PDT)
Date: Sat, 14 Sep 2019 12:27:44 -0700 (PDT)
X-Google-Original-Date: Sat, 14 Sep 2019 12:25:33 PDT (-0700)
Subject: RE: [RFC] buildtar: add case for riscv architecture
In-Reply-To: <MN2PR04MB60613FADCF3482C14F29F4558DB20@MN2PR04MB6061.namprd04.prod.outlook.com>
From: Palmer Dabbelt <palmer@sifive.com>
To: Anup Patel <Anup.Patel@wdc.com>
Message-ID: <mhng-4e30fb12-057c-425c-a867-ecf93e080ed9@palmer-si-x1e>
Mime-Version: 1.0 (MHng)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190914_122747_074310_E35A9C7B 
X-CRM114-Status: GOOD (  14.82  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.215.195 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.195 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: aou@eecs.berkeley.edu, linux-kbuild@vger.kernel.org, mail@aurabindo.in,
 linux-kernel@vger.kernel.org, Paul Walmsley <paul.walmsley@sifive.com>,
 Troy Benjegerdes <troy.benjegerdes@sifive.com>,
 linux-riscv@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

T24gU2F0LCAxNCBTZXAgMjAxOSAwNjowNTo1OSBQRFQgKC0wNzAwKSwgQW51cCBQYXRlbCB3cm90
ZToKPiAKPiAKPj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0KPj4gRnJvbTogbGludXgta2Vy
bmVsLW93bmVyQHZnZXIua2VybmVsLm9yZyA8bGludXgta2VybmVsLQo+PiBvd25lckB2Z2VyLmtl
cm5lbC5vcmc+IE9uIEJlaGFsZiBPZiBQYWxtZXIgRGFiYmVsdAo+PiBTZW50OiBTYXR1cmRheSwg
U2VwdGVtYmVyIDE0LCAyMDE5IDY6MzAgUE0KPj4gVG86IG1haWxAYXVyYWJpbmRvLmluCj4+IENj
OiBUcm95IEJlbmplZ2VyZGVzIDx0cm95LmJlbmplZ2VyZGVzQHNpZml2ZS5jb20+OyBQYXVsIFdh
bG1zbGV5Cj4+IDxwYXVsLndhbG1zbGV5QHNpZml2ZS5jb20+OyBhb3VAZWVjcy5iZXJrZWxleS5l
ZHU7IGxpbnV4LQo+PiByaXNjdkBsaXN0cy5pbmZyYWRlYWQub3JnOyBsaW51eC1rZXJuZWxAdmdl
ci5rZXJuZWwub3JnOyBsaW51eC0KPj4ga2J1aWxkQHZnZXIua2VybmVsLm9yZwo+PiBTdWJqZWN0
OiBSZTogW1JGQ10gYnVpbGR0YXI6IGFkZCBjYXNlIGZvciByaXNjdiBhcmNoaXRlY3R1cmUKPj4g
Cj4+IE9uIFdlZCwgMTEgU2VwIDIwMTkgMDU6NTQ6MDcgUERUICgtMDcwMCksIG1haWxAYXVyYWJp
bmRvLmluIHdyb3RlOgo+PiA+Cj4+ID4KPj4gPj4gTm9uZSBvZiB0aGUgYXZhaWxhYmxlIFJpc2NW
IHBsYXRmb3JtcyB0aGF0IEnigJltIGF3YXJlIG9mIHVzZSBjb21wcmVzc2VkCj4+IGltYWdlcywg
dW5sZXNzIHRoZXJlIGFyZSBzb21lIG5ldyBib290bG9hZGVycyBJIGhhdmVu4oCZdCBzZWVuIHll
dC4KPj4gPj4KPj4gPgo+PiA+IEkgbm90aWNlZCB0aGF0IGRlZmF1bHQgYnVpbGQgaW1hZ2UgaXMg
SW1hZ2UuZ3osIHdoaWNoIGlzIHdoeSBJIHRob3VnaHQgaXRzIGEKPj4gZ29vZCBpZGVhIHRvIGNv
cHkgaXQgaW50byB0aGUgdGFyYmFsbC4gRG9lcyBzdWNoIGEgY29weSBub3QgbWFrZSBzZW5zZSBh
dCB0aGlzCj4+IHBvaW50ID8KPj4gCj4+IEltYWdlLmd6IGNhbid0IGJlIGJvb3RlZCBkaXJlY3Rs
eTogaXQncyBqdXN0IEltYWdlIHRoYXQncyBiZWVuIGNvbXByZXNzZWQKPj4gd2l0aCB0aGUgc3Rh
bmRhcmQgZ3ppcCBjb21tYW5kLiAgQSBib290bG9hZGVyIHdvdWxkIGhhdmUgdG8gZGVjb21wcmVz
cwo+PiB0aGF0IGltYWdlIGJlZm9yZSBsb2FkaW5nIGl0IGludG8gbWVtb3J5LCB3aGljaCByZXF1
aXJlcyBleHRyYSBib290bG9hZGVyCj4+IHN1cHBvcnQuCj4+IENvbnRyYXN0IHRoYXQgd2l0aCB0
aGUgekltYWdlIHN0eWxlIGltYWdlcyAod2hpY2ggYXJlIHZtbGludXogb24geDg2KSwgd2hpY2gK
Pj4gYXJlIHNlbGYtZXh0cmFjdGluZyBhbmQgdGhlcmVmb3IgcmVxdWlyZSBubyBib290bG9hZGVy
IHN1cHBvcnQuICBUaGUKPj4gZXhhbXBsZXMgZm9yIHUtYm9vdCBhbGwgdXNlIHRoZSAiYm9vdGki
IGNvbW1hbmQsIHdoaWNoIGV4cGVjdHMKPj4gdW5jb21wcmVzc2VkIGltYWdlcy4KPj4gUG9raW5n
IGFyb3VuZCBJIGNvdWxkbid0IGZpZ3VyZSBvdXQgYSB3YXkgdG8gaGF2ZSB1LWJvb3QgZGVjb21w
cmVzcyB0aGUKPj4gaW1hZ2VzLCBidXQgdGhhdCBhcHBsaWVzIHRvIGFybTY0IGFzIHdlbGwgc28g
SSdtIG5vdCBzdXJlIGlmIEknbSBtaXNzaW5nCj4+IHNvbWV0aGluZy4KPj4gCj4+IElmIEkgd2Fz
IGRvaW5nIHRoaXMsIEknZCBjb3B5IG92ZXIgYXJjaC9yaXNjdi9ib290L0ltYWdlIGFuZCBjYWxs
IGl0Cj4+ICIvYm9vdC9pbWFnZS0ke0tFUk5FTFJFTEVBU0V9IiwgYXMgY2FsbGluZyBpdCB2bWxp
bnV6IGlzIGEgYml0IGNvbmZ1c2luZyB0bwo+PiBtZSBiZWNhdXNlIEknZCBleHBlY3Qgdm1saW51
eiB0byBiZSBhIHNlbGYtZXh0cmFjdGluZyBjb21wcmVzc2VkCj4+IGV4ZWN1dGFibGUgYW5kIG5v
dCBhIHJhdyBnemlwIGZpbGUuCj4gCj4gT24gdGhlIGNvbnRyYXJ5LCBpdCBpcyBpbmRlZWQgcG9z
c2libGUgdG8gYm9vdCBJbWFnZS5neiBkaXJlY3RseSB1c2luZwo+IFUtQm9vdCBib290aSBjb21t
YW5kIHNvIHRoaXMgcGF0Y2ggd291bGQgYmUgdXNlZnVsLgo+IAo+IEF0aXNoIGhhZCBnb3QgaXQg
d29ya2luZyBvbiBVLUJvb3QgYnV0IGhlIGhhcyBkZWZlcnJlZCBib290aSBJbWFnZS5nego+IHN1
cHBvcnQgZHVlIHRvIGZldyBtb3JlIGRlcGVuZGVudCBjaGFuZ2VzLiBNYXkgYmUgaGUgY2FuIHNo
YXJlCj4gbW9yZSBpbmZvLgoKT2gsIGdyZWF0LiAgSSBndWVzcyBpdCBtYWtlcyBzZW5zZSB0byBq
dXN0IHB1dCBib3RoIGluIHRoZSB0YXJiYWxsLCB0aGVuLCBhcyAKdXNlcnMgd2lsbCBzdGlsbCBu
ZWVkIHRvIHVzZSB0aGUgSW1hZ2UgZm9ybWF0IGZvciBub3cuCgo+IAo+IFJlZ2FyZHMsCj4gQW51
cAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgt
cmlzY3YgbWFpbGluZyBsaXN0CmxpbnV4LXJpc2N2QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yaXNjdgo=
