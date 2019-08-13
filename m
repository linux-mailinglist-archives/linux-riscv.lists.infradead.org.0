Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71CDC8AF2A
	for <lists+linux-riscv@lfdr.de>; Tue, 13 Aug 2019 08:05:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fW/+PVMBH2mEsqdrBkmpiB96XFjW0Ic7oiillBj1VNI=; b=fZrEiqu61EAZTY
	6gShay7hCceO0+za+uXvT/CQuz4X2mu5CRvMZmcwDwcySA+MrvWCnqv+JWSNZpqhoowaiRenDxTYp
	fuWV1DO8slme4JgLRxWvy2BuMgl69OZ9+m4HJRKgM+DC54PLEIk0UzmLopBoYVhi7DXvd5x41mMHW
	M5POfxi2t2aprf6GIRA6ViAOSCgXDIb3JhBIn3jNdsUu0eE7fr0G2fGol0N1mYagrxP9gS6Iqw7ib
	fFkgYGKEch4eKZpFbiqBxfyZKSSWSVzk9qfwVGeogiRHoyxnQ3Y4AHLwNy1KA8g2adsh6awIlUcrr
	912uW8wwD9asCI10JE+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxPvZ-00073K-6b; Tue, 13 Aug 2019 06:05:01 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxPvU-00072Z-19
 for linux-riscv@lists.infradead.org; Tue, 13 Aug 2019 06:04:57 +0000
Received: by mail-qk1-x743.google.com with SMTP id d23so4011135qko.3
 for <linux-riscv@lists.infradead.org>; Mon, 12 Aug 2019 23:04:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=kCmBiJ0kCEzEIDZtsH26fXgwFDBAorRDLIt0W+si88A=;
 b=AZA3B/v1Xtb9RwFK5FrEZ1HH/uPKBwg6B249Hgj8mRlr+RjXmOu31q/faX9H3fqrZk
 t4Dq0wYMAjBkvKAZLHVXKA3nUo6J3FnpxqZWgNzZaLEcOQ3kVovOmDmHR9WXXltUq42W
 Bwt0g0WvZRkXKlUvms8qz0IbkWQHlrjt+tmGMKyYfRHhEGsjityf/VCI7LXmLTQpDq6o
 WACJQi3YKIPho2UFt/ZodbCBZ/np8GkDDLWF/YMJMTARaVmCTH+lYO7ZJbv5bTRaSQGi
 Q5mh1YVkwVI3dpLzIVX7iPYvvjVIdUqQqWcVY8XvGEPkyFuLAW2T9W6yJAtEVKuBx9bv
 WPCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=kCmBiJ0kCEzEIDZtsH26fXgwFDBAorRDLIt0W+si88A=;
 b=Y4YB/klbQY3Qa6ee6S+xnATxsiYN977Zc4GJAQArpoMhtV95F135Tu+BdzIugKCHGd
 SdAV3H6x8W00rhHgG0YKXrPNemPNkBdIbcRyHX4pL/L+2ijLqKnZzAmM4ggyshmMNVuL
 5RwfE4FJz3jOGZyBvh9Q67bi9kWot26xzD/Bj1QKukwHZP1eRDCXQpx5qyyGt2Syna7j
 OhJJw8WAkN1YIP1Huvh8CxkvdV1BlmsBOWx0RHU56JmK3L+p6bP8Q31RGsH6yzUj1XcC
 3fQhsdcgb9n7Cw5OGPd+hsAVlYBE/rjA0svnKl+A2X3y1h6yIY0kkWBYLgW7zh5UrEWm
 IjPw==
X-Gm-Message-State: APjAAAX80bkzppUD57jYML+xCVhp0bSTawvkCVvYiAxQVdlx/ZQ8SYL7
 OU4103WlpSm1SZyI39iq16bDQTfqoHGxnD36858=
X-Google-Smtp-Source: APXvYqyH/NWYJDzDaG4Z8jd8TA7s5eatl7O+F/CojK+rCtjNMPsWUSL76cQZLdr0VKapFEGjXg5Wmr2rrM7SvVZmVH4=
X-Received: by 2002:a05:620a:696:: with SMTP id
 f22mr27745166qkh.232.1565676291623; 
 Mon, 12 Aug 2019 23:04:51 -0700 (PDT)
MIME-Version: 1.0
References: <20190109203911.7887-1-logang@deltatee.com>
 <20190109203911.7887-3-logang@deltatee.com>
 <CAEbi=3d0RNVKbDUwRL-o70O12XBV7q6n_UT-pLqFoh9omYJZKQ@mail.gmail.com>
 <c4298fdd-6fd6-fa7f-73f7-5ff016788e49@deltatee.com>
 <CAEbi=3cn4+7zk2DU1iRa45CDwTsJYfkAV8jXHf-S7Jz63eYy-A@mail.gmail.com>
 <CAEbi=3eZcgWevpX9VO9ohgxVDFVprk_t52Xbs3-TdtZ+js3NVA@mail.gmail.com>
 <0926a261-520e-4c40-f926-ddd40bb8ce44@deltatee.com>
 <CAEbi=3ebNM-t_vA4OA7KCvQUF08o6VmL1j=kMojVnYsYsN_fBw@mail.gmail.com>
 <e2603558-7b2c-2e5f-e28c-f01782dc4e66@deltatee.com>
 <CAEbi=3d7_xefYaVXEnMJW49Bzdbbmc2+UOwXWrCiBo7YkTAihg@mail.gmail.com>
 <96156909-1453-d487-ff66-a041d67c74d6@deltatee.com>
In-Reply-To: <96156909-1453-d487-ff66-a041d67c74d6@deltatee.com>
From: Greentime Hu <green.hu@gmail.com>
Date: Tue, 13 Aug 2019 14:04:14 +0800
Message-ID: <CAEbi=3dC86dhGdwdarS_x+6-5=WPydUBKjo613qRZxKLDAqU_g@mail.gmail.com>
Subject: Re: [PATCH v4 2/2] RISC-V: Implement sparsemem
To: Logan Gunthorpe <logang@deltatee.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_230456_102927_5FB1ED58 
X-CRM114-Status: GOOD (  24.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (green.hu[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Rob Herring <robh@kernel.org>, Albert Ou <aou@eecs.berkeley.edu>,
 Andrew Waterman <andrew@sifive.com>, Palmer Dabbelt <palmer@sifive.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Stephen Bates <sbates@raithlin.com>, paul.walmsley@sifive.com,
 Olof Johansson <olof@lixom.net>, greentime.hu@sifive.com,
 linux-riscv@lists.infradead.org, Michael Clark <michaeljclark@mac.com>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

SGkgTG9nYW4sCgpMb2dhbiBHdW50aG9ycGUgPGxvZ2FuZ0BkZWx0YXRlZS5jb20+IOaWvCAyMDE5
5bm0OOaciDEy5pelIOmAseS4gCDkuIvljYgxMTo1MuWvq+mBk++8mgo+Cj4KPgo+IE9uIDIwMTkt
MDgtMTEgMTA6MDEgcC5tLiwgR3JlZW50aW1lIEh1IHdyb3RlOgo+ID4gSGkgTG9nYW4sCj4gPgo+
ID4gTG9nYW4gR3VudGhvcnBlIDxsb2dhbmdAZGVsdGF0ZWUuY29tPiDmlrwgMjAxOeW5tDjmnIgx
MOaXpSDpgLHlha0g5LiK5Y2IMzowM+Wvq+mBk++8mgo+ID4+Cj4gPj4KPiA+Pgo+ID4+IE9uIDIw
MTktMDgtMDkgMTE6MDEgYS5tLiwgR3JlZW50aW1lIEh1IHdyb3RlOgo+ID4+PiBIaSBMb2dhbiwK
PiA+Pj4KPiA+Pj4gTG9nYW4gR3VudGhvcnBlIDxsb2dhbmdAZGVsdGF0ZWUuY29tPiDmlrwgMjAx
OeW5tDjmnIg55pelIOmAseS6lCDkuIvljYgxMTo0N+Wvq+mBk++8mgo+ID4+Pj4KPiA+Pj4+Cj4g
Pj4+Pgo+ID4+Pj4gT24gMjAxOS0wOC0wOCAxMDoyMyBwLm0uLCBHcmVlbnRpbWUgSHUgd3JvdGU6
Cj4gPj4+Pj4gZGlmZiAtLWdpdCBhL2FyY2gvcmlzY3YvS2NvbmZpZyBiL2FyY2gvcmlzY3YvS2Nv
bmZpZwo+ID4+Pj4+IGluZGV4IDNmMTJiMDY5YWYxZC4uMjA4YjNlMTRjY2Q4IDEwMDY0NAo+ID4+
Pj4+IC0tLSBhL2FyY2gvcmlzY3YvS2NvbmZpZwo+ID4+Pj4+ICsrKyBiL2FyY2gvcmlzY3YvS2Nv
bmZpZwo+ID4+Pj4+IEBAIC0xMTYsNyArMTE2LDggQEAgY29uZmlnIFBHVEFCTEVfTEVWRUxTCj4g
Pj4+Pj4gICAgICAgICBkZWZhdWx0IDIKPiA+Pj4+Pgo+ID4+Pj4+ICBjb25maWcgSEFWRV9BUkNI
X1BGTl9WQUxJRAo+ID4+Pj4+IC0gICAgICAgZGVmX2Jvb2wgeQo+ID4+Pj4+ICsgICAgICAgYm9v
bAo+ID4+Pj4+ICsgICAgICAgZGVmYXVsdCAhU1BBUlNFTUVNX1ZNRU1NQVAKPiA+Pj4+Pgo+ID4+
Pj4+ICBtZW51ICJQbGF0Zm9ybSB0eXBlIgo+ID4+Pj4+Cj4gPj4+Pj4gZGlmZiAtLWdpdCBhL2Fy
Y2gvcmlzY3YvaW5jbHVkZS9hc20vcGFnZS5oIGIvYXJjaC9yaXNjdi9pbmNsdWRlL2FzbS9wYWdl
LmgKPiA+Pj4+PiBpbmRleCA4ZGRiNmM3ZmVkYWMuLjY5OTFmN2E1YTRhNyAxMDA2NDQKPiA+Pj4+
PiAtLS0gYS9hcmNoL3Jpc2N2L2luY2x1ZGUvYXNtL3BhZ2UuaAo+ID4+Pj4+ICsrKyBiL2FyY2gv
cmlzY3YvaW5jbHVkZS9hc20vcGFnZS5oCj4gPj4+Pj4gQEAgLTkzLDE2ICs5MywyMCBAQCBleHRl
cm4gdW5zaWduZWQgbG9uZyBtaW5fbG93X3BmbjsKPiA+Pj4+PiAgI2RlZmluZSB2aXJ0X3RvX3Bm
bih2YWRkcikgICAgIChwaHlzX3RvX3BmbihfX3BhKHZhZGRyKSkpCj4gPj4+Pj4gICNkZWZpbmUg
cGZuX3RvX3ZpcnQocGZuKSAgICAgICAoX192YShwZm5fdG9fcGh5cyhwZm4pKSkKPiA+Pj4+Pgo+
ID4+Pj4+ICsjaWYgIWRlZmluZWQoQ09ORklHX1NQQVJTRU1FTV9WTUVNTUFQKQo+ID4+Pj4+ICsj
ZGVmaW5lIHBmbl92YWxpZChwZm4pIFwKPiA+Pj4+PiArICAgICAgICgoKHBmbikgPj0gcGZuX2Jh
c2UpICYmICgoKHBmbiktcGZuX2Jhc2UpIDwgbWF4X21hcG5yKSkKPiA+Pj4+PiAgI2RlZmluZSB2
aXJ0X3RvX3BhZ2UodmFkZHIpICAgIChwZm5fdG9fcGFnZSh2aXJ0X3RvX3Bmbih2YWRkcikpKQo+
ID4+Pj4+ICAjZGVmaW5lIHBhZ2VfdG9fdmlydChwYWdlKSAgICAgKHBmbl90b192aXJ0KHBhZ2Vf
dG9fcGZuKHBhZ2UpKSkKPiA+Pj4+PiArI2Vsc2UKPiA+Pj4+PiArI2RlZmluZSB2aXJ0X3RvX3Bh
Z2UodmFkZHIpICAgICgoc3RydWN0IHBhZ2UgKikoKCgodTY0KXZhZGRyIC0KPiA+Pj4+PiB2YV9w
YV9vZmZzZXQpIC8gUEFHRV9TSVpFKSAqIHNpemVvZihzdHJ1Y3QgcGFnZSkgKyBWTUVNTUFQX1NU
QVJUKSkKPiA+Pj4+PiArI2RlZmluZSBwYWdlX3RvX3ZpcnQocGcpICAgICAgICgodm9pZCAqKSgo
KCgodTY0KXBnIC0gVk1FTU1BUF9TVEFSVCkgLwo+ID4+Pj4+IHNpemVvZihzdHJ1Y3QgcGFnZSkp
ICogUEFHRV9TSVpFKSArIHZhX3BhX29mZnNldCkpCj4gPj4+Pj4gKyNlbmRpZgo+ID4+Pj4KPiA+
Pj4+IFRoaXMgZG9lc24ndCBtYWtlIHNlbnNlIHRvIG1lIGF0IGFsbC4gSXQgc2hvdWxkIGFsd2F5
cyB1c2UgcGZuX3RvX3BhZ2UoKQo+ID4+Pj4gZm9yIHZpcnRfdG9fcGFnZSgpIGFuZCB0aGUgZ2Vu
ZXJpYyBwZm5fdG9fcGFnZSgpL3BhZ2VfdG9fcGZuKCkKPiA+Pj4+IGltcGxlbWVudGF0aW9ucyBl
c3NlbnRpYWxseSBhbHJlYWR5IGRvIHdoYXQgeW91IGFyZSBkb2luZyBpbiBhIGNsZWFuZXIKPiA+
Pj4+IHdheS4gU28gSSdkIGJlIHJlYWxseSBzdXJwcmlzZWQgaWYgdGhpcyBkb2VzIGFueXRoaW5n
IGF0IGFsbC4KPiA+Pj4+Cj4gPj4+Cj4gPj4+IFRoYW5rIHlvdSBmb3IgcG9pbnQgbWUgb3V0IHRo
YXQuIEkganVzdCBjaGVja2VkIHRoZSBnZW5lcmljCj4gPj4+IGltcGxlbWVudGF0aW9uIGFuZCBJ
IHNob3VsZCB1c2UgdGhhdCBvbmUuCj4gPj4+IFNvcnJ5IEkgZGlkbid0IGNoZWNrIHRoZSBnZW5l
cmljIG9uZSBhbmQganVzdCBpbXBsZW1lbnQgaXQgYWdhaW4uCj4gPj4+IEkgdGhpbmsgdGhlIG9u
bHkgcGF0Y2ggd2UgbmVlZCBpcyB0aGUgZmlyc3QgcGFydCB0byB1c2UgZ2VuZXJpYwo+ID4+PiBw
Zm5fdmFsaWQoKS4gSSBqdXN0IHRlc3RlZCBpdCBhbmQgeWVzIGl0IGNhbiBib290IHN1Y2Nlc3Nm
dWxseSBpbiBkdHMKPiA+Pj4gd2l0aCBob2xlLgo+ID4+Pgo+ID4+PiBJdCB3aWxsIGZhaWwgaW4g
dGhpcyBjaGVjayAoKHBmbiktcGZuX2Jhc2UpIDwgbWF4X21hcG5yLgo+ID4+Cj4gPj4gU291bmRz
IHRvIG1lIGxpa2UgbWF4X21hcG5yIGlzIG5vdCBzZXQgY29ycmVjdGx5LiBTZWUgdGhlIGNvZGUg
aW4KPiA+PiBzZXR1cF9ib290bWVtKCkuIFNlZW1zIGxpa2UgJ21lbV9zaXplJyBzaG91bGQgYmUg
c2V0IHRvIHRoZSBsYXJnZXN0Cj4gPj4gbWVtb3J5IGJsb2NrLCBub3QganVzdCB0aGUgb25lIHRo
YXQgY29udGFpbnMgdGhlIGtlcm5lbC4uLgo+ID4+Cj4gPj4KPiA+Pj4gZGlmZiAtLWdpdCBhL2Fy
Y2gvcmlzY3YvS2NvbmZpZyBiL2FyY2gvcmlzY3YvS2NvbmZpZwo+ID4+PiBpbmRleCAzZjEyYjA2
OWFmMWQuLjIwOGIzZTE0Y2NkOCAxMDA2NDQKPiA+Pj4gLS0tIGEvYXJjaC9yaXNjdi9LY29uZmln
Cj4gPj4+ICsrKyBiL2FyY2gvcmlzY3YvS2NvbmZpZwo+ID4+PiBAQCAtMTE2LDcgKzExNiw4IEBA
IGNvbmZpZyBQR1RBQkxFX0xFVkVMUwo+ID4+PiAgICAgICAgIGRlZmF1bHQgMgo+ID4+Pgo+ID4+
PiAgY29uZmlnIEhBVkVfQVJDSF9QRk5fVkFMSUQKPiA+Pj4gLSAgICAgICBkZWZfYm9vbCB5Cj4g
Pj4+ICsgICAgICAgYm9vbAo+ID4+PiArICAgICAgIGRlZmF1bHQgIVNQQVJTRU1FTV9WTUVNTUFQ
Cj4gPj4+Cj4gPj4+ICBtZW51ICJQbGF0Zm9ybSB0eXBlIgo+ID4+Pgo+ID4+PiBkaWZmIC0tZ2l0
IGEvYXJjaC9yaXNjdi9pbmNsdWRlL2FzbS9wYWdlLmggYi9hcmNoL3Jpc2N2L2luY2x1ZGUvYXNt
L3BhZ2UuaAo+ID4+PiBpbmRleCA4ZGRiNmM3ZmVkYWMuLjgwZDI4ZmExZTJlYiAxMDA2NDQKPiA+
Pj4gLS0tIGEvYXJjaC9yaXNjdi9pbmNsdWRlL2FzbS9wYWdlLmgKPiA+Pj4gKysrIGIvYXJjaC9y
aXNjdi9pbmNsdWRlL2FzbS9wYWdlLmgKPiA+Pj4gQEAgLTEwMCw4ICsxMDAsMTAgQEAgZXh0ZXJu
IHVuc2lnbmVkIGxvbmcgbWluX2xvd19wZm47Cj4gPj4+ICAjZGVmaW5lIHBhZ2VfdG9fYnVzKHBh
Z2UpICAgICAgKHBhZ2VfdG9fcGh5cyhwYWdlKSkKPiA+Pj4gICNkZWZpbmUgcGh5c190b19wYWdl
KHBhZGRyKSAgICAocGZuX3RvX3BhZ2UocGh5c190b19wZm4ocGFkZHIpKSkKPiA+Pj4KPiA+Pj4g
KyNpZiAhZGVmaW5lZChDT05GSUdfU1BBUlNFTUVNX1ZNRU1NQVApCj4gPj4+ICAjZGVmaW5lIHBm
bl92YWxpZChwZm4pIFwKPiA+Pj4gICAgICAgICAoKChwZm4pID49IHBmbl9iYXNlKSAmJiAoKChw
Zm4pLXBmbl9iYXNlKSA8IG1heF9tYXBucikpCj4gPj4+ICsjZW5kaWYKPiA+Pj4KPiA+Pj4gICNk
ZWZpbmUgQVJDSF9QRk5fT0ZGU0VUICAgICAgICAgICAgICAgIChwZm5fYmFzZSkKPiA+Pgo+ID4+
Cj4gPj4gVGhpcyBwYXRjaCBzdGlsbCBtYWtlcyBubyBzZW5zZS4gSSdtIG5vdCBzdXJlIHdoeSB3
ZSBoYXZlIGFuIGFyY2gKPiA+PiBzcGVjaWZpYyBwZm5fdmFsaWQoKSBiZWNhdXNlIGl0J3MgdmVy
eSBzaW1pbGFyIHRvIHRoZSBnZW5lcmljIG9uZS4gQnV0Cj4gPj4gbXkgZ3Vlc3MgaXMgdGhlcmUn
cyBhIHJlYXNvbiBmb3IgaXQgYW5kIGl0J3Mgbm90IGRvaW5nIHdoYXQgaXQgaXMKPiA+PiBzdXBw
b3NlZCB3aGVuIHlvdSByZW1vdmUgaXQgZm9yIHRoZSBzcGFyc2VtZW0gY2FzZS4KPiA+Cj4gPiBJ
dCB3aWxsIHVzZSBhbm90aGVyIHBmbl92YWxpZCgpIGltcGxlbWVudGF0aW9uIGluCj4gPiBpbmNs
dWRlL2xpbnV4L21tem9uZS5oIGlmIENPTkZJR19TUEFSU0VNRU0gYW5kCj4gPiAhQ09ORklHX0hB
VkVfQVJDSF9QRk5fVkFMSUQKPiA+IEl0IHdpbGwgYmUgdGhpcyBvbmUuCj4gPgo+ID4gc3RhdGlj
IGlubGluZSBpbnQgcGZuX3ZhbGlkKHVuc2lnbmVkIGxvbmcgcGZuKQo+ID4gewo+ID4gICAgICAg
ICBpZiAocGZuX3RvX3NlY3Rpb25fbnIocGZuKSA+PSBOUl9NRU1fU0VDVElPTlMpCj4gPiAgICAg
ICAgICAgICAgICAgcmV0dXJuIDA7Cj4gPiAgICAgICAgIHJldHVybiB2YWxpZF9zZWN0aW9uKF9f
bnJfdG9fc2VjdGlvbihwZm5fdG9fc2VjdGlvbl9ucihwZm4pKSk7Cj4gPiB9Cj4KPiBBaCwgb2sg
SSBzZWUuICJwYWdlLmgiIGlzIG9ubHkgaW5jbHVkZWQgaW4gbm8tbW11IGFyY2hlcy4gV2hpY2gg
ZXhwbGFpbnMKPiB3aHkgcmlzY3YgcmUtaW1wbGVtZW50cyB0aGF0IG1hY3JvLiBDb3VwbGUgZm9s
bG93IHVwIHF1ZXN0aW9ucyB0aGVuOgo+Cj4gKiBEaWQgeW91IHRlc3QgdGhlIG1lbW9yeS13aXRo
LWhvbGUgc2NlbmFyaW8gd2l0aG91dCB0aGUgc3BhcnNlbWVtCj4gcGF0Y2hlcz8gSXQgc2VlbXMg
cGZuX3ZhbGlkKCkgd2lsbCBiZSB3cm9uZyByZWdhcmRsZXNzIG9mIHNwYXJzZS9mbGF0IG1lbS4K
Pgo+ICogQW55IGNoYW5jZSB3ZSBjYW4ganVzdCB1c2UgdGhlIGdlbmVyaWMgcGZuX3ZhbGlkKCkg
ZnVuY3Rpb24gaW4gYWxsCj4gY2FzZXMgbm90IGp1c3Qgc3BhcnNlbWVtPyBDYW4geW91IHRlc3Qg
dGhhdD8KPgoKSSB0aGluayAgZmxhdCBtZW0gZG9lc24ndCBzdXBwb3J0IG1lbW9yeS13aXRoLWhv
bGUgc2NlbmFyaW8uCkluIG1tL0tjb25maWcsIGl0IHNheXMKIgogICAgICAgICAgRm9yIHN5c3Rl
bXMgdGhhdCBoYXZlIGhvbGVzIGluIHRoZWlyIHBoeXNpY2FsIGFkZHJlc3MKICAgICAgICAgIHNw
YWNlcyBhbmQgZm9yIGZlYXR1cmVzIGxpa2UgTlVNQSBhbmQgbWVtb3J5IGhvdHBsdWcsCiAgICAg
ICAgICBjaG9vc2UgIlNwYXJzZSBNZW1vcnkiCiIKSU1ITywgdGhlIG1lbW9yeS13aXRoLWhvbGUg
c2NlbmFyaW8gc2hvdWxkIG9ubHkgYmUgdGVzdGVkIGZvciBzcGFyc2UKbWVtIGJ1dCBmbGF0IG1l
bS4KClRoZSBnZW5lcmljIHBmbl92YWxpZCgpIGlzIGp1c3QgZm9yIG5vbi1tbXUgYXJjaGVzLiBF
dmVyeSBhcmNoaXRlY3R1cmUKd2l0aCBtbXUgZGVmaW5lcyB0aGVpciBvd24gcGZuX3ZhbGlkKCku
ClRoaXMgaXMgc3VwcG9zZWQgdG8gYmUgYW5vdGhlciBzZXBhcmF0ZSBwYXRjaCB0aGF0IGRvIHdl
IG5lZWQgdG8KaW1wbGVtZW50IGEgZ2VuZXJpYyBwZm5fdmFsaWQoKS4KCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LXJpc2N2IG1haWxpbmcgbGlz
dApsaW51eC1yaXNjdkBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcmlzY3YK
