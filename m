Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30BA48D889
	for <lists+linux-riscv@lfdr.de>; Wed, 14 Aug 2019 18:56:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GoudFZj6zEKAKXpj1w5LK5/tM6HUbVM5j8NEVa2ioKo=; b=qs6BASTjVx1X4K
	s2l1pcEosocQdnJK0KPxQhZsyEvzSwDaeXjOvVUUmegX3o1hGN2plK56lM9xr442vZ9ZiKFAWPjs2
	5EqFvUT92JSkYZxcdzzErV8IBVKByjN+oZnVBMX+O4JZG+1rFWCS5nMXMK8ESwtv508XAghWPYrR/
	b0rCRie9Ef+vtctrf/02BLDNEJWb8rt07eLzt6JxyqxMeMJwyuJdwAAzOAi+nlgGU3wwccW/dtu6f
	usU43xQCsGTd2nEja1GR8Tu60Pd9GvnxU2lYjFgyz7iUQHPPjF9MGFrzc8VdpmKk4QSKjO3vtDmOR
	5ieSBlymLCHEgCSlA1Tg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxwZu-0002uh-UF; Wed, 14 Aug 2019 16:56:50 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxwZr-0002uI-NX
 for linux-riscv@lists.infradead.org; Wed, 14 Aug 2019 16:56:49 +0000
Received: from s0106ac1f6bb1ecac.cg.shawcable.net ([70.73.163.230]
 helo=[192.168.11.155])
 by ale.deltatee.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <logang@deltatee.com>)
 id 1hxwZj-0007WM-Jh; Wed, 14 Aug 2019 10:56:41 -0600
To: Greentime Hu <green.hu@gmail.com>
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
 <CAEbi=3dC86dhGdwdarS_x+6-5=WPydUBKjo613qRZxKLDAqU_g@mail.gmail.com>
 <5506c875-9387-acc9-a7fe-5b7c10036c40@deltatee.com>
 <alpine.DEB.2.21.9999.1908130921170.30024@viisi.sifive.com>
 <e1f78a33-18bb-bd6e-eede-e5e86758a4d0@deltatee.com>
 <CAEbi=3f+JDywuHYspfYKuC8z2wm8inRenBz+3DYbKK3ixFjU_g@mail.gmail.com>
From: Logan Gunthorpe <logang@deltatee.com>
Message-ID: <0d81412d-73fc-fa56-6f84-dedda72b9cc6@deltatee.com>
Date: Wed, 14 Aug 2019 10:56:35 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAEbi=3f+JDywuHYspfYKuC8z2wm8inRenBz+3DYbKK3ixFjU_g@mail.gmail.com>
Content-Language: en-US
X-SA-Exim-Connect-IP: 70.73.163.230
X-SA-Exim-Rcpt-To: linux-mm@vger.kernel.org, hch@lst.de, michaeljclark@mac.com,
 linux-riscv@lists.infradead.org, greentime.hu@sifive.com, olof@lixom.net,
 sbates@raithlin.com, linux-kernel@vger.kernel.org, palmer@sifive.com,
 andrew@sifive.com, aou@eecs.berkeley.edu, robh@kernel.org,
 paul.walmsley@sifive.com, green.hu@gmail.com
X-SA-Exim-Mail-From: logang@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 GREYLIST_ISWHITE,LR_URI_NUMERIC_ENDING autolearn=ham
 autolearn_force=no version=3.4.2
Subject: Re: [PATCH v4 2/2] RISC-V: Implement sparsemem
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_095647_819991_683514E2 
X-CRM114-Status: GOOD (  14.47  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.54.116.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Stephen Bates <sbates@raithlin.com>, linux-mm@vger.kernel.org,
 Paul Walmsley <paul.walmsley@sifive.com>, Olof Johansson <olof@lixom.net>,
 greentime.hu@sifive.com, linux-riscv@lists.infradead.org,
 Michael Clark <michaeljclark@mac.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

CgpPbiAyMDE5LTA4LTE0IDc6MzUgYS5tLiwgR3JlZW50aW1lIEh1IHdyb3RlOgo+IExvZ2FuIEd1
bnRob3JwZSA8bG9nYW5nQGRlbHRhdGVlLmNvbT4g5pa8IDIwMTnlubQ45pyIMTTml6Ug6YCx5LiJ
IOS4iuWNiDEyOjUw5a+r6YGT77yaCj4+Cj4+IE9uIDIwMTktMDgtMTMgMTA6MzkgYS5tLiwgUGF1
bCBXYWxtc2xleSB3cm90ZToKPj4+IE9uIFR1ZSwgMTMgQXVnIDIwMTksIExvZ2FuIEd1bnRob3Jw
ZSB3cm90ZToKPj4+Cj4+Pj4gT24gMjAxOS0wOC0xMyAxMjowNCBhLm0uLCBHcmVlbnRpbWUgSHUg
d3JvdGU6Cj4+Pj4KPj4+Pj4gRXZlcnkgYXJjaGl0ZWN0dXJlIHdpdGggbW11IGRlZmluZXMgdGhl
aXIgb3duIHBmbl92YWxpZCgpLgo+Pj4+Cj4+Pj4gTm90IHRydWUuIEFybTY0LCBmb3IgZXhhbXBs
ZSBqdXN0IHVzZXMgdGhlIGdlbmVyaWMgaW1wbGVtZW50YXRpb24gaW4KPj4+PiBtbXpvbmUuaC4K
Pj4+Cj4+PiBhcm02NCBzZWVtcyB0byBkZWZpbmUgdGhlaXIgb3duOgo+Pj4KPj4+IGh0dHBzOi8v
Z2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L3RvcnZhbGRzL2xpbnV4Lmdp
dC90cmVlL2FyY2gvYXJtNjQvS2NvbmZpZyNuODk5Cj4+Cj4+IE9oLCB5dXAuIE15IG1pc3Rha2Uu
Cj4+Cj4+PiBodHRwczovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC90
b3J2YWxkcy9saW51eC5naXQvdHJlZS9hcmNoL2FybTY0L21tL2luaXQuYyNuMjM1Cj4+Pgo+Pj4g
V2hpbGUgdGhlcmUgYXJlIG1hbnkgYXJjaGl0ZWN0dXJlcyB3aGljaCBoYXZlIHRoZWlyIG93biBw
Zm5fdmFsaWQoKTsKPj4+IG9kZGx5LCBhbG1vc3Qgbm9uZSBvZiB0aGVtIHNldCBIQVZFX0FSQ0hf
UEZOX1ZBTElEID8KPj4KPj4gWWVzLCBtdWNoIG9mIHRoaXMgaXMgc3VwZXIgY29uZnVzaW5nLiBT
ZWVtcyBIQVZFX0FSQ0hfUEZOX1ZBTElEIG9ubHkKPj4gbWF0dGVycyBpZiBTUEFSU0VNRU0gaXMg
c2V0LiBTbyByaXNjLXYgcHJvYmFibHkgZG9lc24ndCBuZWVkIHRvIHNldCBpdAo+PiBhbmQgd2Ug
anVzdCBuZWVkIGEgI2lmZGVmICFDT05GSUdfRkxBVE1FTSBhcm91bmQgdGhlIHBmbl92YWxpZAo+
PiBkZWZpbml0aW9uIGxpa2Ugb3RoZXIgYXJjaGVzLgo+Pgo+IAo+IE1heWJlIHRoaXMgY29tbWl0
IGV4cGxhaW5zIHdoeSBpdCB1c2VkIEhBVkVfQVJDSF9QRk5fVkFMSUQgaW5zdGVhZCBvZiBTUEFS
U0VNRU0uCj4gaHR0cHM6Ly9naXRodWIuY29tL3RvcnZhbGRzL2xpbnV4L2NvbW1pdC83YjdiZjQ5
OWY3OWRlM2Y2Yzg1YTM0MGM4NDUzYTc4Nzg5NTIzZjg1Cj4gCj4gQlRXLCBJIGZvdW5kIGFub3Ro
ZXIgaXNzdWUgaGVyZS4KPiAjZGVmaW5lIEZJWEFERFJfVE9QICAgICAgICAgICAgKFZNQUxMT0Nf
U1RBUlQpCj4gI2RlZmluZSBGSVhBRERSX1NUQVJUICAgICAgICAgICAoRklYQUREUl9UT1AgLSBG
SVhBRERSX1NJWkUpCj4gI2RlZmluZSBWTUVNTUFQX0VORCAgICAoVk1BTExPQ19TVEFSVCAtIDEp
Cj4gI2RlZmluZSBWTUVNTUFQX1NUQVJUICAoVk1BTExPQ19TVEFSVCAtIFZNRU1NQVBfU0laRSkK
PiBUaGVzZSAyIHJlZ2lvbnMgYXJlIG92ZXJsYXBwZWQuCj4gCj4gSG93IGFib3V0IHRoaXMgZml4
PyBOb3Qgc3VyZSBpZiBpdCBpcyBnb29kIGZvciBldmVyeW9uZS4KClllcywgdGhpcyBsb29rcyBn
b29kIHRvIG1lLiBJIGNhbiBmb2xkIHRoZXNlIGNoYW5nZXMgaW50byBteSBwYXRjaCBhbmQKc2Vu
ZCBhIHY1IHRvIHRoZSBsaXN0LgoKVGhhbmtzIQoKTG9nYW4KCgo+IGRpZmYgLS1naXQgYS9hcmNo
L3Jpc2N2L0tjb25maWcgYi9hcmNoL3Jpc2N2L0tjb25maWcKPiBpbmRleCAzZjEyYjA2OWFmMWQu
LjNjNGQzOTQ2NzlkMCAxMDA2NDQKPiAtLS0gYS9hcmNoL3Jpc2N2L0tjb25maWcKPiArKysgYi9h
cmNoL3Jpc2N2L0tjb25maWcKPiBAQCAtMTE1LDkgKzExNSw2IEBAIGNvbmZpZyBQR1RBQkxFX0xF
VkVMUwo+ICAgICAgICAgZGVmYXVsdCAzIGlmIDY0QklUCj4gICAgICAgICBkZWZhdWx0IDIKPiAK
PiAtY29uZmlnIEhBVkVfQVJDSF9QRk5fVkFMSUQKPiAtICAgICAgIGRlZl9ib29sIHkKPiAtCj4g
IG1lbnUgIlBsYXRmb3JtIHR5cGUiCj4gCj4gIGNob2ljZQo+IGRpZmYgLS1naXQgYS9hcmNoL3Jp
c2N2L2luY2x1ZGUvYXNtL2ZpeG1hcC5oIGIvYXJjaC9yaXNjdi9pbmNsdWRlL2FzbS9maXhtYXAu
aAo+IGluZGV4IGMyMDdmNjYzNGI5MS4uNzJlMTA2YjYwYmM1IDEwMDY0NAo+IC0tLSBhL2FyY2gv
cmlzY3YvaW5jbHVkZS9hc20vZml4bWFwLmgKPiArKysgYi9hcmNoL3Jpc2N2L2luY2x1ZGUvYXNt
L2ZpeG1hcC5oCj4gQEAgLTI2LDcgKzI2LDcgQEAgZW51bSBmaXhlZF9hZGRyZXNzZXMgewo+ICB9
Owo+IAo+ICAjZGVmaW5lIEZJWEFERFJfU0laRSAgICAgICAgICAgKF9fZW5kX29mX2ZpeGVkX2Fk
ZHJlc3NlcyAqIFBBR0VfU0laRSkKPiAtI2RlZmluZSBGSVhBRERSX1RPUCAgICAgICAgICAgIChW
TUFMTE9DX1NUQVJUKQo+ICsjZGVmaW5lIEZJWEFERFJfVE9QICAgICAgICAgICAgKFZNRU1NQVBf
U1RBUlQpCj4gICNkZWZpbmUgRklYQUREUl9TVEFSVCAgICAgICAgICAoRklYQUREUl9UT1AgLSBG
SVhBRERSX1NJWkUpCj4gCj4gICNkZWZpbmUgRklYTUFQX1BBR0VfSU8gICAgICAgICBQQUdFX0tF
Uk5FTAo+IGRpZmYgLS1naXQgYS9hcmNoL3Jpc2N2L2luY2x1ZGUvYXNtL3BhZ2UuaCBiL2FyY2gv
cmlzY3YvaW5jbHVkZS9hc20vcGFnZS5oCj4gaW5kZXggOGRkYjZjN2ZlZGFjLi44MzgzMDk5N2Rj
ZTYgMTAwNjQ0Cj4gLS0tIGEvYXJjaC9yaXNjdi9pbmNsdWRlL2FzbS9wYWdlLmgKPiArKysgYi9h
cmNoL3Jpc2N2L2luY2x1ZGUvYXNtL3BhZ2UuaAo+IEBAIC0xMDAsOCArMTAwLDEwIEBAIGV4dGVy
biB1bnNpZ25lZCBsb25nIG1pbl9sb3dfcGZuOwo+ICAjZGVmaW5lIHBhZ2VfdG9fYnVzKHBhZ2Up
ICAgICAgKHBhZ2VfdG9fcGh5cyhwYWdlKSkKPiAgI2RlZmluZSBwaHlzX3RvX3BhZ2UocGFkZHIp
ICAgIChwZm5fdG9fcGFnZShwaHlzX3RvX3BmbihwYWRkcikpKQo+IAo+ICsjaWYgZGVmaW5lZChD
T05GSUdfRkxBVE1FTSkKPiAgI2RlZmluZSBwZm5fdmFsaWQocGZuKSBcCj4gICAgICAgICAoKChw
Zm4pID49IHBmbl9iYXNlKSAmJiAoKChwZm4pLXBmbl9iYXNlKSA8IG1heF9tYXBucikpCj4gKyNl
bmRpZgo+IAo+ICAjZGVmaW5lIEFSQ0hfUEZOX09GRlNFVCAgICAgICAgICAgICAgICAocGZuX2Jh
c2UpCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGlu
dXgtcmlzY3YgbWFpbGluZyBsaXN0CmxpbnV4LXJpc2N2QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yaXNjdgo=
