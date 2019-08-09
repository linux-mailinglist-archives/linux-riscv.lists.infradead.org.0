Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12082880B4
	for <lists+linux-riscv@lfdr.de>; Fri,  9 Aug 2019 19:02:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JMfVIVT3+3dfRPX8V5jskM0Scqw1UgdNphUQp7Gl564=; b=I75F/DNsoscCOh
	4vt8at0QJkz0rrjDF+1oLRktlW1XKLTkWzjNrSio0+E0IR4IeA8rRd8mbEznJH53wPnji58tjIWLo
	t9MExt7DRFme3j/JqHHl/1jgRnwfodPzgbGa5tCxXvYS9i1ZKSENQklfjq9EzICIz+ePVgbiz2d38
	yBhHoj+3b8G/45P7p38g/zSCzDmkbz8mLhvhSdSH2n/dRn2/Tt9bbEtEhnRRezPQd14J9Y4GKxzv6
	tugxiJ5E1Juog/nBcpStnJnBKnAnhWenOOage6OxXVChYorXXgNk0z0/dYjcXvUXQR31c3zktX7Tv
	orBaCaNNQ+XH5vP91CMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw8Hf-0007rv-IB; Fri, 09 Aug 2019 17:02:31 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hw8Hb-0007rD-Aj
 for linux-riscv@lists.infradead.org; Fri, 09 Aug 2019 17:02:28 +0000
Received: by mail-qt1-x844.google.com with SMTP id a15so96414216qtn.7
 for <linux-riscv@lists.infradead.org>; Fri, 09 Aug 2019 10:02:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=FclrxiNVeDQRBUVrlhHeOXQhVrnasVK2qCxhjrZ+ESw=;
 b=p98Vpv2+yYXOmOjE4tNlUje0o/LvDN/IAP+Fw1/Itzh0AJJ/uEtrDzY8ClOf7M0TnO
 mN1LOwLQUEzGyxEbMGGdyJH1s/VCPwzmUZJHTwEG0MVM5qhAx11Sg4ja/z45ABcp0k1W
 aY8RKwKC44kvIKcHqscV8bEWZrvvHnu/s6pcCE4Jpz7LSWYF1xlNVt1UmxKYtSS7ZBEH
 2Dqz8S6e0VM9dFdAnDPj+PdrYisTl43RWG9JC83jwpUaEQwvqrnoQN2IO+39b8X0h4Q+
 76YB2aKWznpt4hd3SQ+cMH0iWVjxSEkSCG9iXTs6wcnPIfgd/Q328wN7GPx/P66NzMiZ
 tGLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=FclrxiNVeDQRBUVrlhHeOXQhVrnasVK2qCxhjrZ+ESw=;
 b=sPWtPGfFaGcmfoF0nomNdd043TPCRRb3C6nk5b4UU5/4CwxLInxdUeXayaUJh06a/7
 WNS8Pk1F+ve7ipn90v/U5Ih0LQPrf8yhjjKCNEE/gXYeE0jcTgqUfy+iRtg5UbD6GKYN
 dBMUphPXR2J3uDQwIwLsHJdvkr8g8j3gmDC0sE89Iu0dcjm0bjMyuECuM4BjK7w2ri1G
 WhLbSU9jpY3N9Uukd64JBZly4TAdZz6o8shSIOnGjK5A+JFubMHjzA6Ovtv9nQhYsp8z
 t/WCQyz0+ljugPI47n4tEpVpa0nkqwovG0Lbjnqvtl0z3NqUn2mZfmRb0RiqAjj6r2xV
 sGXw==
X-Gm-Message-State: APjAAAUA0s15sHP0ih8gfgRbGfZpUuVDTJsyRpgCOyiJXG5qUZWGTlU7
 YaC6gn5tNZZYaOBZa7HnbUNN+QDCXdqR53mReBM=
X-Google-Smtp-Source: APXvYqz1xhE/4o+0ZlH0Rf7lEhuFwWXCEs3E301pFyqqHmAL1WP299xrXXmTXkvNd9hsV4hnq5V09xAyO+eXSgbaQIA=
X-Received: by 2002:ad4:4423:: with SMTP id e3mr19119365qvt.145.1565370146012; 
 Fri, 09 Aug 2019 10:02:26 -0700 (PDT)
MIME-Version: 1.0
References: <20190109203911.7887-1-logang@deltatee.com>
 <20190109203911.7887-3-logang@deltatee.com>
 <CAEbi=3d0RNVKbDUwRL-o70O12XBV7q6n_UT-pLqFoh9omYJZKQ@mail.gmail.com>
 <c4298fdd-6fd6-fa7f-73f7-5ff016788e49@deltatee.com>
 <CAEbi=3cn4+7zk2DU1iRa45CDwTsJYfkAV8jXHf-S7Jz63eYy-A@mail.gmail.com>
 <CAEbi=3eZcgWevpX9VO9ohgxVDFVprk_t52Xbs3-TdtZ+js3NVA@mail.gmail.com>
 <0926a261-520e-4c40-f926-ddd40bb8ce44@deltatee.com>
In-Reply-To: <0926a261-520e-4c40-f926-ddd40bb8ce44@deltatee.com>
From: Greentime Hu <green.hu@gmail.com>
Date: Sat, 10 Aug 2019 01:01:50 +0800
Message-ID: <CAEbi=3ebNM-t_vA4OA7KCvQUF08o6VmL1j=kMojVnYsYsN_fBw@mail.gmail.com>
Subject: Re: [PATCH v4 2/2] RISC-V: Implement sparsemem
To: Logan Gunthorpe <logang@deltatee.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_100227_401981_7B6B8A01 
X-CRM114-Status: GOOD (  15.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (green.hu[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
5bm0OOaciDnml6Ug6YCx5LqUIOS4i+WNiDExOjQ35a+r6YGT77yaCj4KPgo+Cj4gT24gMjAxOS0w
OC0wOCAxMDoyMyBwLm0uLCBHcmVlbnRpbWUgSHUgd3JvdGU6Cj4gPiBkaWZmIC0tZ2l0IGEvYXJj
aC9yaXNjdi9LY29uZmlnIGIvYXJjaC9yaXNjdi9LY29uZmlnCj4gPiBpbmRleCAzZjEyYjA2OWFm
MWQuLjIwOGIzZTE0Y2NkOCAxMDA2NDQKPiA+IC0tLSBhL2FyY2gvcmlzY3YvS2NvbmZpZwo+ID4g
KysrIGIvYXJjaC9yaXNjdi9LY29uZmlnCj4gPiBAQCAtMTE2LDcgKzExNiw4IEBAIGNvbmZpZyBQ
R1RBQkxFX0xFVkVMUwo+ID4gICAgICAgICBkZWZhdWx0IDIKPiA+Cj4gPiAgY29uZmlnIEhBVkVf
QVJDSF9QRk5fVkFMSUQKPiA+IC0gICAgICAgZGVmX2Jvb2wgeQo+ID4gKyAgICAgICBib29sCj4g
PiArICAgICAgIGRlZmF1bHQgIVNQQVJTRU1FTV9WTUVNTUFQCj4gPgo+ID4gIG1lbnUgIlBsYXRm
b3JtIHR5cGUiCj4gPgo+ID4gZGlmZiAtLWdpdCBhL2FyY2gvcmlzY3YvaW5jbHVkZS9hc20vcGFn
ZS5oIGIvYXJjaC9yaXNjdi9pbmNsdWRlL2FzbS9wYWdlLmgKPiA+IGluZGV4IDhkZGI2YzdmZWRh
Yy4uNjk5MWY3YTVhNGE3IDEwMDY0NAo+ID4gLS0tIGEvYXJjaC9yaXNjdi9pbmNsdWRlL2FzbS9w
YWdlLmgKPiA+ICsrKyBiL2FyY2gvcmlzY3YvaW5jbHVkZS9hc20vcGFnZS5oCj4gPiBAQCAtOTMs
MTYgKzkzLDIwIEBAIGV4dGVybiB1bnNpZ25lZCBsb25nIG1pbl9sb3dfcGZuOwo+ID4gICNkZWZp
bmUgdmlydF90b19wZm4odmFkZHIpICAgICAocGh5c190b19wZm4oX19wYSh2YWRkcikpKQo+ID4g
ICNkZWZpbmUgcGZuX3RvX3ZpcnQocGZuKSAgICAgICAoX192YShwZm5fdG9fcGh5cyhwZm4pKSkK
PiA+Cj4gPiArI2lmICFkZWZpbmVkKENPTkZJR19TUEFSU0VNRU1fVk1FTU1BUCkKPiA+ICsjZGVm
aW5lIHBmbl92YWxpZChwZm4pIFwKPiA+ICsgICAgICAgKCgocGZuKSA+PSBwZm5fYmFzZSkgJiYg
KCgocGZuKS1wZm5fYmFzZSkgPCBtYXhfbWFwbnIpKQo+ID4gICNkZWZpbmUgdmlydF90b19wYWdl
KHZhZGRyKSAgICAocGZuX3RvX3BhZ2UodmlydF90b19wZm4odmFkZHIpKSkKPiA+ICAjZGVmaW5l
IHBhZ2VfdG9fdmlydChwYWdlKSAgICAgKHBmbl90b192aXJ0KHBhZ2VfdG9fcGZuKHBhZ2UpKSkK
PiA+ICsjZWxzZQo+ID4gKyNkZWZpbmUgdmlydF90b19wYWdlKHZhZGRyKSAgICAoKHN0cnVjdCBw
YWdlICopKCgoKHU2NCl2YWRkciAtCj4gPiB2YV9wYV9vZmZzZXQpIC8gUEFHRV9TSVpFKSAqIHNp
emVvZihzdHJ1Y3QgcGFnZSkgKyBWTUVNTUFQX1NUQVJUKSkKPiA+ICsjZGVmaW5lIHBhZ2VfdG9f
dmlydChwZykgICAgICAgKCh2b2lkICopKCgoKCh1NjQpcGcgLSBWTUVNTUFQX1NUQVJUKSAvCj4g
PiBzaXplb2Yoc3RydWN0IHBhZ2UpKSAqIFBBR0VfU0laRSkgKyB2YV9wYV9vZmZzZXQpKQo+ID4g
KyNlbmRpZgo+Cj4gVGhpcyBkb2Vzbid0IG1ha2Ugc2Vuc2UgdG8gbWUgYXQgYWxsLiBJdCBzaG91
bGQgYWx3YXlzIHVzZSBwZm5fdG9fcGFnZSgpCj4gZm9yIHZpcnRfdG9fcGFnZSgpIGFuZCB0aGUg
Z2VuZXJpYyBwZm5fdG9fcGFnZSgpL3BhZ2VfdG9fcGZuKCkKPiBpbXBsZW1lbnRhdGlvbnMgZXNz
ZW50aWFsbHkgYWxyZWFkeSBkbyB3aGF0IHlvdSBhcmUgZG9pbmcgaW4gYSBjbGVhbmVyCj4gd2F5
LiBTbyBJJ2QgYmUgcmVhbGx5IHN1cnByaXNlZCBpZiB0aGlzIGRvZXMgYW55dGhpbmcgYXQgYWxs
Lgo+CgpUaGFuayB5b3UgZm9yIHBvaW50IG1lIG91dCB0aGF0LiBJIGp1c3QgY2hlY2tlZCB0aGUg
Z2VuZXJpYwppbXBsZW1lbnRhdGlvbiBhbmQgSSBzaG91bGQgdXNlIHRoYXQgb25lLgpTb3JyeSBJ
IGRpZG4ndCBjaGVjayB0aGUgZ2VuZXJpYyBvbmUgYW5kIGp1c3QgaW1wbGVtZW50IGl0IGFnYWlu
LgpJIHRoaW5rIHRoZSBvbmx5IHBhdGNoIHdlIG5lZWQgaXMgdGhlIGZpcnN0IHBhcnQgdG8gdXNl
IGdlbmVyaWMKcGZuX3ZhbGlkKCkuIEkganVzdCB0ZXN0ZWQgaXQgYW5kIHllcyBpdCBjYW4gYm9v
dCBzdWNjZXNzZnVsbHkgaW4gZHRzCndpdGggaG9sZS4KCkl0IHdpbGwgZmFpbCBpbiB0aGlzIGNo
ZWNrICgocGZuKS1wZm5fYmFzZSkgPCBtYXhfbWFwbnIuCkluIG15IHRlc3QgY2FzZSBpdCB3aWxs
IGJlCigoNkdCPj5QQUdFX1NISUZUKS0oMkdCPj5QQUdFX1NISUZUKT0oNEdCPj5QQUdFX1NISUZU
KSA8CigzR0I+PlBBR0VfU0hJRlQpIHRvIHJldHVybiBmYWxzZS4KIG1lbW9yeUA4MDAwMDAwMCB7
CiAgICAgICAgIGRldmljZV90eXBlID0gIm1lbW9yeSI7CiAgICAgICAgIHJlZyA9IDwweDAgMHg4
MDAwMDAwMCAweDAgMHg4MDAwMDAwMD47CiB9OwogbWVtb3J5QDE4MDAwMDAwMCB7CiAgICAgICAg
IGRldmljZV90eXBlID0gIm1lbW9yeSI7CiAgICAgICAgIHJlZyA9IDwweDEgMHg4MDAwMDAwMCAw
eDAgMHg0MDAwMDAwMD47CiB9OwoKVG8gY2F1c2UgdGhlIGNoZWNrIGhlcmUgZmFpbGVkIHRvIGlu
aXRpYWxpemUgcGFnZSBzdHJ1Y3QuCgpmb3IgKHBmbiA9IHN0YXJ0X3BmbjsgcGZuIDwgZW5kX3Bm
bjsgcGZuKyspIHsKICAgICAgICAvKgogICAgICAgICAqIFRoZXJlIGNhbiBiZSBob2xlcyBpbiBi
b290LXRpbWUgbWVtX21hcFtdcyBoYW5kZWQgdG8gdGhpcwogICAgICAgICAqIGZ1bmN0aW9uLiAg
VGhleSBkbyBub3QgZXhpc3Qgb24gaG90cGx1Z2dlZCBtZW1vcnkuCiAgICAgICAgICovCiAgICAg
ICAgaWYgKGNvbnRleHQgPT0gTUVNTUFQX0VBUkxZKSB7CiAgICAgICAgICAgICAgICBpZiAoIWVh
cmx5X3Bmbl92YWxpZChwZm4pKQogICAgICAgICAgICAgICAgICAgICAgICBjb250aW51ZTsKICAg
ICAgICAgICAgICAgIGlmICghZWFybHlfcGZuX2luX25pZChwZm4sIG5pZCkpCiAgICAgICAgICAg
ICAgICAgICAgICAgIGNvbnRpbnVlOwogICAgICAgICAgICAgICAgaWYgKG92ZXJsYXBfbWVtbWFw
X2luaXQoem9uZSwgJnBmbikpCiAgICAgICAgICAgICAgICAgICAgICAgIGNvbnRpbnVlOwogICAg
ICAgICAgICAgICAgaWYgKGRlZmVyX2luaXQobmlkLCBwZm4sIGVuZF9wZm4pKQogICAgICAgICAg
ICAgICAgICAgICAgICBicmVhazsKICAgICAgICB9CgogICAgICAgIHBhZ2UgPSBwZm5fdG9fcGFn
ZShwZm4pOwogICAgICAgIF9faW5pdF9zaW5nbGVfcGFnZShwYWdlLCBwZm4sIHpvbmUsIG5pZCk7
CgoKLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCgpkaWZmIC0tZ2l0IGEvYXJjaC9yaXNjdi9LY29uZmln
IGIvYXJjaC9yaXNjdi9LY29uZmlnCmluZGV4IDNmMTJiMDY5YWYxZC4uMjA4YjNlMTRjY2Q4IDEw
MDY0NAotLS0gYS9hcmNoL3Jpc2N2L0tjb25maWcKKysrIGIvYXJjaC9yaXNjdi9LY29uZmlnCkBA
IC0xMTYsNyArMTE2LDggQEAgY29uZmlnIFBHVEFCTEVfTEVWRUxTCiAgICAgICAgZGVmYXVsdCAy
CgogY29uZmlnIEhBVkVfQVJDSF9QRk5fVkFMSUQKLSAgICAgICBkZWZfYm9vbCB5CisgICAgICAg
Ym9vbAorICAgICAgIGRlZmF1bHQgIVNQQVJTRU1FTV9WTUVNTUFQCgogbWVudSAiUGxhdGZvcm0g
dHlwZSIKCmRpZmYgLS1naXQgYS9hcmNoL3Jpc2N2L2luY2x1ZGUvYXNtL3BhZ2UuaCBiL2FyY2gv
cmlzY3YvaW5jbHVkZS9hc20vcGFnZS5oCmluZGV4IDhkZGI2YzdmZWRhYy4uODBkMjhmYTFlMmVi
IDEwMDY0NAotLS0gYS9hcmNoL3Jpc2N2L2luY2x1ZGUvYXNtL3BhZ2UuaAorKysgYi9hcmNoL3Jp
c2N2L2luY2x1ZGUvYXNtL3BhZ2UuaApAQCAtMTAwLDggKzEwMCwxMCBAQCBleHRlcm4gdW5zaWdu
ZWQgbG9uZyBtaW5fbG93X3BmbjsKICNkZWZpbmUgcGFnZV90b19idXMocGFnZSkgICAgICAocGFn
ZV90b19waHlzKHBhZ2UpKQogI2RlZmluZSBwaHlzX3RvX3BhZ2UocGFkZHIpICAgIChwZm5fdG9f
cGFnZShwaHlzX3RvX3BmbihwYWRkcikpKQoKKyNpZiAhZGVmaW5lZChDT05GSUdfU1BBUlNFTUVN
X1ZNRU1NQVApCiAjZGVmaW5lIHBmbl92YWxpZChwZm4pIFwKICAgICAgICAoKChwZm4pID49IHBm
bl9iYXNlKSAmJiAoKChwZm4pLXBmbl9iYXNlKSA8IG1heF9tYXBucikpCisjZW5kaWYKCiAjZGVm
aW5lIEFSQ0hfUEZOX09GRlNFVCAgICAgICAgICAgICAgICAocGZuX2Jhc2UpCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1yaXNjdiBtYWlsaW5n
IGxpc3QKbGludXgtcmlzY3ZAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJpc2N2Cg==
