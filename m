Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2A2F895E9
	for <lists+linux-riscv@lfdr.de>; Mon, 12 Aug 2019 06:02:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZAkCHGgzOIuYlV5fRExDCrNrLW0g3tMiSrvBcwhptMs=; b=mtvMKMe6RHZ77D
	z9H8UY2BS8P3ltpkhew3sxrHGSdXEbrY55vXICMB0jT/ZJJxKUcukKbPo67C47dH9RYFxQFYtXIZC
	MCxQBwYXCHJL+0udVKTHsA9TcWs2/wHHCnUY1sjN+quHo8CQQPVEaGgh58LXkEJjQ2NT7sz+2jSzi
	JSwenj6S+Ny5A/2oIh+xEJ+26Dc9Taj+TAV5ekNkFResb353DzIogYsBne17EDApmGE98C8kRtp03
	HlehcgW52N0JOLD5Gp2eP4UKEFvMBlVppSniHzcwLb09DDtonRwWSrULWR0F77pgB0B0IvfiGfp5E
	3aSz0Axq3jNshNpCcE4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hx1XR-0006wW-J9; Mon, 12 Aug 2019 04:02:29 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hx1XM-0006vu-0l
 for linux-riscv@lists.infradead.org; Mon, 12 Aug 2019 04:02:25 +0000
Received: by mail-qt1-x843.google.com with SMTP id k13so4342933qtm.12
 for <linux-riscv@lists.infradead.org>; Sun, 11 Aug 2019 21:02:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=/4YnpQhIEZcscEz7uCIGbe6A/Kj16Z9K3vN8c7z419g=;
 b=tBT5gyj2w+9S3FzzabYm9eqPL/FRGIHVoK3/HO/QuWUaZr2kcDDZ4PTHdPfSFK2BGd
 OPVNfb0CdADvleEhQK7qYnWZhBlS6N01jYodJMPEaY9s4O85dU66TtdjkvGXPnMnmP8e
 KdOq7qwnG51CB8dBZaamlmltv11JADM8xxcNDLGboLTy+9X8mxXFdmoohJIWm1W4Wha+
 KwyOwJMvZsX1vhUdyq3eomCKblJuZ/jIK+crYjLS2IHI73fMiAHben/v69hZ8nm19LEs
 kQgP9z68SWRdxqsLzWCFc3PV6gwWakf4rODe3wI+oXMjPbZSjqvo3AABFSgvbaZGlxu9
 Xx/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=/4YnpQhIEZcscEz7uCIGbe6A/Kj16Z9K3vN8c7z419g=;
 b=ckEOrWCs2j4D8hgn7yFzEkRKqgKmql4VqkIuv26zcjT2RkKrgEZZs9/PYC0PvRhn/U
 wooTBMYoA9l7Eg86ynBreWtk1qXwQHquNQ/QbaPzwaNBij1KajZ3OwYcB63em7hARVy8
 TStd8KDiq3BQQ187qgGL9a8Y4Ldt/vToNk2mqhvzALyFxRxAsgimyo5oYYGynChpjebP
 6BbVAtQ2KOaRhuiRpv9cD5pTznYQ9K37f96C9Xx2wFB32FmlfkFv5Q7vREDRqKeyoezv
 2yBkfde9J4eIfKMxcbdJX1unpCF9qNR6IdqM/Jlmt2/W0sch6ZekzU+j223UQw8/b54o
 Jg8Q==
X-Gm-Message-State: APjAAAXkaQ5Mw9UfN3IvHl1x+GdtUGGd0wflGbXGbl06y4Sxo+sE1+tx
 3zK2wuGVHj8U/VTUSzHQMX9bE3vqR2klm/SHLJo=
X-Google-Smtp-Source: APXvYqwrc3cIWWpJ+2sSHHUY3ZXmH5XJfdi0QRJLtjR4lCzkyeuDx29O7pJKAB3qqLP2XAo7s222Z635R/yrBMWckY0=
X-Received: by 2002:ac8:2d2c:: with SMTP id n41mr28162850qta.28.1565582542296; 
 Sun, 11 Aug 2019 21:02:22 -0700 (PDT)
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
In-Reply-To: <e2603558-7b2c-2e5f-e28c-f01782dc4e66@deltatee.com>
From: Greentime Hu <green.hu@gmail.com>
Date: Mon, 12 Aug 2019 12:01:49 +0800
Message-ID: <CAEbi=3d7_xefYaVXEnMJW49Bzdbbmc2+UOwXWrCiBo7YkTAihg@mail.gmail.com>
Subject: Re: [PATCH v4 2/2] RISC-V: Implement sparsemem
To: Logan Gunthorpe <logang@deltatee.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190811_210224_067707_064226D6 
X-CRM114-Status: GOOD (  23.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (green.hu[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Stephen Bates <sbates@raithlin.com>, Zong Li <zong@andestech.com>,
 paul.walmsley@sifive.com, Olof Johansson <olof@lixom.net>,
 greentime.hu@sifive.com, linux-riscv@lists.infradead.org,
 Michael Clark <michaeljclark@mac.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

SGkgTG9nYW4sCgpMb2dhbiBHdW50aG9ycGUgPGxvZ2FuZ0BkZWx0YXRlZS5jb20+IOaWvCAyMDE5
5bm0OOaciDEw5pelIOmAseWFrSDkuIrljYgzOjAz5a+r6YGT77yaCj4KPgo+Cj4gT24gMjAxOS0w
OC0wOSAxMTowMSBhLm0uLCBHcmVlbnRpbWUgSHUgd3JvdGU6Cj4gPiBIaSBMb2dhbiwKPiA+Cj4g
PiBMb2dhbiBHdW50aG9ycGUgPGxvZ2FuZ0BkZWx0YXRlZS5jb20+IOaWvCAyMDE55bm0OOaciDnm
l6Ug6YCx5LqUIOS4i+WNiDExOjQ35a+r6YGT77yaCj4gPj4KPiA+Pgo+ID4+Cj4gPj4gT24gMjAx
OS0wOC0wOCAxMDoyMyBwLm0uLCBHcmVlbnRpbWUgSHUgd3JvdGU6Cj4gPj4+IGRpZmYgLS1naXQg
YS9hcmNoL3Jpc2N2L0tjb25maWcgYi9hcmNoL3Jpc2N2L0tjb25maWcKPiA+Pj4gaW5kZXggM2Yx
MmIwNjlhZjFkLi4yMDhiM2UxNGNjZDggMTAwNjQ0Cj4gPj4+IC0tLSBhL2FyY2gvcmlzY3YvS2Nv
bmZpZwo+ID4+PiArKysgYi9hcmNoL3Jpc2N2L0tjb25maWcKPiA+Pj4gQEAgLTExNiw3ICsxMTYs
OCBAQCBjb25maWcgUEdUQUJMRV9MRVZFTFMKPiA+Pj4gICAgICAgICBkZWZhdWx0IDIKPiA+Pj4K
PiA+Pj4gIGNvbmZpZyBIQVZFX0FSQ0hfUEZOX1ZBTElECj4gPj4+IC0gICAgICAgZGVmX2Jvb2wg
eQo+ID4+PiArICAgICAgIGJvb2wKPiA+Pj4gKyAgICAgICBkZWZhdWx0ICFTUEFSU0VNRU1fVk1F
TU1BUAo+ID4+Pgo+ID4+PiAgbWVudSAiUGxhdGZvcm0gdHlwZSIKPiA+Pj4KPiA+Pj4gZGlmZiAt
LWdpdCBhL2FyY2gvcmlzY3YvaW5jbHVkZS9hc20vcGFnZS5oIGIvYXJjaC9yaXNjdi9pbmNsdWRl
L2FzbS9wYWdlLmgKPiA+Pj4gaW5kZXggOGRkYjZjN2ZlZGFjLi42OTkxZjdhNWE0YTcgMTAwNjQ0
Cj4gPj4+IC0tLSBhL2FyY2gvcmlzY3YvaW5jbHVkZS9hc20vcGFnZS5oCj4gPj4+ICsrKyBiL2Fy
Y2gvcmlzY3YvaW5jbHVkZS9hc20vcGFnZS5oCj4gPj4+IEBAIC05MywxNiArOTMsMjAgQEAgZXh0
ZXJuIHVuc2lnbmVkIGxvbmcgbWluX2xvd19wZm47Cj4gPj4+ICAjZGVmaW5lIHZpcnRfdG9fcGZu
KHZhZGRyKSAgICAgKHBoeXNfdG9fcGZuKF9fcGEodmFkZHIpKSkKPiA+Pj4gICNkZWZpbmUgcGZu
X3RvX3ZpcnQocGZuKSAgICAgICAoX192YShwZm5fdG9fcGh5cyhwZm4pKSkKPiA+Pj4KPiA+Pj4g
KyNpZiAhZGVmaW5lZChDT05GSUdfU1BBUlNFTUVNX1ZNRU1NQVApCj4gPj4+ICsjZGVmaW5lIHBm
bl92YWxpZChwZm4pIFwKPiA+Pj4gKyAgICAgICAoKChwZm4pID49IHBmbl9iYXNlKSAmJiAoKChw
Zm4pLXBmbl9iYXNlKSA8IG1heF9tYXBucikpCj4gPj4+ICAjZGVmaW5lIHZpcnRfdG9fcGFnZSh2
YWRkcikgICAgKHBmbl90b19wYWdlKHZpcnRfdG9fcGZuKHZhZGRyKSkpCj4gPj4+ICAjZGVmaW5l
IHBhZ2VfdG9fdmlydChwYWdlKSAgICAgKHBmbl90b192aXJ0KHBhZ2VfdG9fcGZuKHBhZ2UpKSkK
PiA+Pj4gKyNlbHNlCj4gPj4+ICsjZGVmaW5lIHZpcnRfdG9fcGFnZSh2YWRkcikgICAgKChzdHJ1
Y3QgcGFnZSAqKSgoKCh1NjQpdmFkZHIgLQo+ID4+PiB2YV9wYV9vZmZzZXQpIC8gUEFHRV9TSVpF
KSAqIHNpemVvZihzdHJ1Y3QgcGFnZSkgKyBWTUVNTUFQX1NUQVJUKSkKPiA+Pj4gKyNkZWZpbmUg
cGFnZV90b192aXJ0KHBnKSAgICAgICAoKHZvaWQgKikoKCgoKHU2NClwZyAtIFZNRU1NQVBfU1RB
UlQpIC8KPiA+Pj4gc2l6ZW9mKHN0cnVjdCBwYWdlKSkgKiBQQUdFX1NJWkUpICsgdmFfcGFfb2Zm
c2V0KSkKPiA+Pj4gKyNlbmRpZgo+ID4+Cj4gPj4gVGhpcyBkb2Vzbid0IG1ha2Ugc2Vuc2UgdG8g
bWUgYXQgYWxsLiBJdCBzaG91bGQgYWx3YXlzIHVzZSBwZm5fdG9fcGFnZSgpCj4gPj4gZm9yIHZp
cnRfdG9fcGFnZSgpIGFuZCB0aGUgZ2VuZXJpYyBwZm5fdG9fcGFnZSgpL3BhZ2VfdG9fcGZuKCkK
PiA+PiBpbXBsZW1lbnRhdGlvbnMgZXNzZW50aWFsbHkgYWxyZWFkeSBkbyB3aGF0IHlvdSBhcmUg
ZG9pbmcgaW4gYSBjbGVhbmVyCj4gPj4gd2F5LiBTbyBJJ2QgYmUgcmVhbGx5IHN1cnByaXNlZCBp
ZiB0aGlzIGRvZXMgYW55dGhpbmcgYXQgYWxsLgo+ID4+Cj4gPgo+ID4gVGhhbmsgeW91IGZvciBw
b2ludCBtZSBvdXQgdGhhdC4gSSBqdXN0IGNoZWNrZWQgdGhlIGdlbmVyaWMKPiA+IGltcGxlbWVu
dGF0aW9uIGFuZCBJIHNob3VsZCB1c2UgdGhhdCBvbmUuCj4gPiBTb3JyeSBJIGRpZG4ndCBjaGVj
ayB0aGUgZ2VuZXJpYyBvbmUgYW5kIGp1c3QgaW1wbGVtZW50IGl0IGFnYWluLgo+ID4gSSB0aGlu
ayB0aGUgb25seSBwYXRjaCB3ZSBuZWVkIGlzIHRoZSBmaXJzdCBwYXJ0IHRvIHVzZSBnZW5lcmlj
Cj4gPiBwZm5fdmFsaWQoKS4gSSBqdXN0IHRlc3RlZCBpdCBhbmQgeWVzIGl0IGNhbiBib290IHN1
Y2Nlc3NmdWxseSBpbiBkdHMKPiA+IHdpdGggaG9sZS4KPiA+Cj4gPiBJdCB3aWxsIGZhaWwgaW4g
dGhpcyBjaGVjayAoKHBmbiktcGZuX2Jhc2UpIDwgbWF4X21hcG5yLgo+Cj4gU291bmRzIHRvIG1l
IGxpa2UgbWF4X21hcG5yIGlzIG5vdCBzZXQgY29ycmVjdGx5LiBTZWUgdGhlIGNvZGUgaW4KPiBz
ZXR1cF9ib290bWVtKCkuIFNlZW1zIGxpa2UgJ21lbV9zaXplJyBzaG91bGQgYmUgc2V0IHRvIHRo
ZSBsYXJnZXN0Cj4gbWVtb3J5IGJsb2NrLCBub3QganVzdCB0aGUgb25lIHRoYXQgY29udGFpbnMg
dGhlIGtlcm5lbC4uLgo+Cj4KPiA+IGRpZmYgLS1naXQgYS9hcmNoL3Jpc2N2L0tjb25maWcgYi9h
cmNoL3Jpc2N2L0tjb25maWcKPiA+IGluZGV4IDNmMTJiMDY5YWYxZC4uMjA4YjNlMTRjY2Q4IDEw
MDY0NAo+ID4gLS0tIGEvYXJjaC9yaXNjdi9LY29uZmlnCj4gPiArKysgYi9hcmNoL3Jpc2N2L0tj
b25maWcKPiA+IEBAIC0xMTYsNyArMTE2LDggQEAgY29uZmlnIFBHVEFCTEVfTEVWRUxTCj4gPiAg
ICAgICAgIGRlZmF1bHQgMgo+ID4KPiA+ICBjb25maWcgSEFWRV9BUkNIX1BGTl9WQUxJRAo+ID4g
LSAgICAgICBkZWZfYm9vbCB5Cj4gPiArICAgICAgIGJvb2wKPiA+ICsgICAgICAgZGVmYXVsdCAh
U1BBUlNFTUVNX1ZNRU1NQVAKPiA+Cj4gPiAgbWVudSAiUGxhdGZvcm0gdHlwZSIKPiA+Cj4gPiBk
aWZmIC0tZ2l0IGEvYXJjaC9yaXNjdi9pbmNsdWRlL2FzbS9wYWdlLmggYi9hcmNoL3Jpc2N2L2lu
Y2x1ZGUvYXNtL3BhZ2UuaAo+ID4gaW5kZXggOGRkYjZjN2ZlZGFjLi44MGQyOGZhMWUyZWIgMTAw
NjQ0Cj4gPiAtLS0gYS9hcmNoL3Jpc2N2L2luY2x1ZGUvYXNtL3BhZ2UuaAo+ID4gKysrIGIvYXJj
aC9yaXNjdi9pbmNsdWRlL2FzbS9wYWdlLmgKPiA+IEBAIC0xMDAsOCArMTAwLDEwIEBAIGV4dGVy
biB1bnNpZ25lZCBsb25nIG1pbl9sb3dfcGZuOwo+ID4gICNkZWZpbmUgcGFnZV90b19idXMocGFn
ZSkgICAgICAocGFnZV90b19waHlzKHBhZ2UpKQo+ID4gICNkZWZpbmUgcGh5c190b19wYWdlKHBh
ZGRyKSAgICAocGZuX3RvX3BhZ2UocGh5c190b19wZm4ocGFkZHIpKSkKPiA+Cj4gPiArI2lmICFk
ZWZpbmVkKENPTkZJR19TUEFSU0VNRU1fVk1FTU1BUCkKPiA+ICAjZGVmaW5lIHBmbl92YWxpZChw
Zm4pIFwKPiA+ICAgICAgICAgKCgocGZuKSA+PSBwZm5fYmFzZSkgJiYgKCgocGZuKS1wZm5fYmFz
ZSkgPCBtYXhfbWFwbnIpKQo+ID4gKyNlbmRpZgo+ID4KPiA+ICAjZGVmaW5lIEFSQ0hfUEZOX09G
RlNFVCAgICAgICAgICAgICAgICAocGZuX2Jhc2UpCj4KPgo+IFRoaXMgcGF0Y2ggc3RpbGwgbWFr
ZXMgbm8gc2Vuc2UuIEknbSBub3Qgc3VyZSB3aHkgd2UgaGF2ZSBhbiBhcmNoCj4gc3BlY2lmaWMg
cGZuX3ZhbGlkKCkgYmVjYXVzZSBpdCdzIHZlcnkgc2ltaWxhciB0byB0aGUgZ2VuZXJpYyBvbmUu
IEJ1dAo+IG15IGd1ZXNzIGlzIHRoZXJlJ3MgYSByZWFzb24gZm9yIGl0IGFuZCBpdCdzIG5vdCBk
b2luZyB3aGF0IGl0IGlzCj4gc3VwcG9zZWQgd2hlbiB5b3UgcmVtb3ZlIGl0IGZvciB0aGUgc3Bh
cnNlbWVtIGNhc2UuCgpJdCB3aWxsIHVzZSBhbm90aGVyIHBmbl92YWxpZCgpIGltcGxlbWVudGF0
aW9uIGluCmluY2x1ZGUvbGludXgvbW16b25lLmggaWYgQ09ORklHX1NQQVJTRU1FTSBhbmQKIUNP
TkZJR19IQVZFX0FSQ0hfUEZOX1ZBTElECkl0IHdpbGwgYmUgdGhpcyBvbmUuCgpzdGF0aWMgaW5s
aW5lIGludCBwZm5fdmFsaWQodW5zaWduZWQgbG9uZyBwZm4pCnsKICAgICAgICBpZiAocGZuX3Rv
X3NlY3Rpb25fbnIocGZuKSA+PSBOUl9NRU1fU0VDVElPTlMpCiAgICAgICAgICAgICAgICByZXR1
cm4gMDsKICAgICAgICByZXR1cm4gdmFsaWRfc2VjdGlvbihfX25yX3RvX3NlY3Rpb24ocGZuX3Rv
X3NlY3Rpb25fbnIocGZuKSkpOwp9CgpUaGlzIGdlbmVyaWMgcGZuX3ZhbGlkKCkgQVBJIGNhbiBj
aGVjayB0aGUgcGZuIGlzIHZhbGlkIG9yIG5vdCBldmVuIGlmCnRoZXJlIGEgaG9sZSBpbiB0aGUg
bWVtb3J5LgpGb3IgZXhhbXBsZToKQSBob2xlIGlzIGJldHdlZW4gMHgxMDAwMDAwMDAgdG8gMHgx
ODAwMDAwMDAgKDRHQi02R0IpIGluIG15IGR0cyB0ZXN0IGNhc2UuCgpbICAgIDAuMDAwMDAwXSBJ
biBzZXR1cF9ib290bWVtLCBwZm5fdmFsaWQoMHgxODAwMDApPTEKWyAgICAwLjAwMDAwMF0gSW4g
c2V0dXBfYm9vdG1lbSwgcGZuX3ZhbGlkKDB4ODAwMDApPTEKWyAgICAwLjAwMDAwMF0gSW4gc2V0
dXBfYm9vdG1lbSwgcGZuX3ZhbGlkKDB4ODAyMDApPTEKWyAgICAwLjAwMDAwMF0gSW4gc2V0dXBf
Ym9vdG1lbSwgcGZuX3ZhbGlkKDB4ODAzMDApPTEKWyAgICAwLjAwMDAwMF0gSW4gc2V0dXBfYm9v
dG1lbSwgcGZuX3ZhbGlkKDB4MTYwMDAwKT0wClsgICAgMC4wMDAwMDBdIEluIHNldHVwX2Jvb3Rt
ZW0sIHBmbl92YWxpZCgweDE3ZmZmZik9MApbICAgIDAuMDAwMDAwXSBJbiBzZXR1cF9ib290bWVt
LCBwZm5fdmFsaWQoMHgxMjAwMDApPTAKWyAgICAwLjAwMDAwMF0gSW4gc2V0dXBfYm9vdG1lbSwg
cGZuX3ZhbGlkKDB4MTAwMDAwKT0wClsgICAgMC4wMDAwMDBdIEluIHNldHVwX2Jvb3RtZW0sIHBm
bl92YWxpZCgweGZmZmZmKT0xCgpUaGlzIGdlbmVyaWMgcGZuX3ZhbGlkKCkgY291bGQgdGVsbCB0
aGUgcGZuIGlzIHZhbGlkIG9yIG5vdC4KCgpJIHRoaW5rIHRoaXMgb25lIGlzIG9ubHkgYXZhaWxh
YmxlIGZvciBmbGF0bWVtLgojZGVmaW5lIHBmbl92YWxpZChwZm4pICAoKChwZm4pID49IHBmbl9i
YXNlKSAmJiAoKChwZm4pLXBmbl9iYXNlKSA8IG1heF9tYXBucikpCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1yaXNjdiBtYWlsaW5nIGxpc3QK
bGludXgtcmlzY3ZAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJpc2N2Cg==
