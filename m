Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 132458831B
	for <lists+linux-riscv@lfdr.de>; Fri,  9 Aug 2019 21:04:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+nDCLLydIf5PXquTVCUQeSY8qGTzkcZpGNYLLQ2EIHc=; b=uo4Q3iDsg+lX2P
	jv+tEClcOKz074pvj58FBeUeV4kAzf3WPvMkQZKJ/RygEmgs+q+XzKCj3q5MUL926ieN+NgmoLVye
	nnai/F13Bh9ALT0dtkmAa70vIwEdGoEMtwgTsq+cfT95Cint/D28Jsv9ZEdU/PBxLx1bGOldXWdIL
	1B0DYErc7Tc/6rfX8/uwVlnTqOvNrWbBrr4P6BQNdAffjvZnDjQ2cHCEgNGExxKhskHr11eB86vVi
	psRbmolIzEsAg+rNfKqVZlsa4iBTLEIeRH1QAA04P4wY+XEHLZKaDgVyWTGcH+QYrXSk2BwL9NZhl
	FkGao/zgr546MJXU3hRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hwAB2-0000RX-JY; Fri, 09 Aug 2019 19:03:48 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hwAAz-0000R1-Gg
 for linux-riscv@lists.infradead.org; Fri, 09 Aug 2019 19:03:46 +0000
Received: from guinness.priv.deltatee.com ([172.16.1.162])
 by ale.deltatee.com with esmtp (Exim 4.89)
 (envelope-from <logang@deltatee.com>)
 id 1hwAAm-0003Rn-Q1; Fri, 09 Aug 2019 13:03:33 -0600
To: Greentime Hu <green.hu@gmail.com>
References: <20190109203911.7887-1-logang@deltatee.com>
 <20190109203911.7887-3-logang@deltatee.com>
 <CAEbi=3d0RNVKbDUwRL-o70O12XBV7q6n_UT-pLqFoh9omYJZKQ@mail.gmail.com>
 <c4298fdd-6fd6-fa7f-73f7-5ff016788e49@deltatee.com>
 <CAEbi=3cn4+7zk2DU1iRa45CDwTsJYfkAV8jXHf-S7Jz63eYy-A@mail.gmail.com>
 <CAEbi=3eZcgWevpX9VO9ohgxVDFVprk_t52Xbs3-TdtZ+js3NVA@mail.gmail.com>
 <0926a261-520e-4c40-f926-ddd40bb8ce44@deltatee.com>
 <CAEbi=3ebNM-t_vA4OA7KCvQUF08o6VmL1j=kMojVnYsYsN_fBw@mail.gmail.com>
From: Logan Gunthorpe <logang@deltatee.com>
Message-ID: <e2603558-7b2c-2e5f-e28c-f01782dc4e66@deltatee.com>
Date: Fri, 9 Aug 2019 13:03:30 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAEbi=3ebNM-t_vA4OA7KCvQUF08o6VmL1j=kMojVnYsYsN_fBw@mail.gmail.com>
Content-Language: en-CA
X-SA-Exim-Connect-IP: 172.16.1.162
X-SA-Exim-Rcpt-To: hch@lst.de, michaeljclark@mac.com,
 linux-riscv@lists.infradead.org, olof@lixom.net, zong@andestech.com,
 sbates@raithlin.com, linux-kernel@vger.kernel.org, palmer@sifive.com,
 andrew@sifive.com, aou@eecs.berkeley.edu, robh@kernel.org,
 paul.walmsley@sifive.com, greentime.hu@sifive.com, green.hu@gmail.com
X-SA-Exim-Mail-From: logang@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-8.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 GREYLIST_ISWHITE autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH v4 2/2] RISC-V: Implement sparsemem
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_120345_626451_AFF7B729 
X-CRM114-Status: GOOD (  18.71  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.54.116.67 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
 Stephen Bates <sbates@raithlin.com>, Zong Li <zong@andestech.com>,
 paul.walmsley@sifive.com, Olof Johansson <olof@lixom.net>,
 greentime.hu@sifive.com, linux-riscv@lists.infradead.org,
 Michael Clark <michaeljclark@mac.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

CgpPbiAyMDE5LTA4LTA5IDExOjAxIGEubS4sIEdyZWVudGltZSBIdSB3cm90ZToKPiBIaSBMb2dh
biwKPiAKPiBMb2dhbiBHdW50aG9ycGUgPGxvZ2FuZ0BkZWx0YXRlZS5jb20+IOaWvCAyMDE55bm0
OOaciDnml6Ug6YCx5LqUIOS4i+WNiDExOjQ35a+r6YGT77yaCj4+Cj4+Cj4+Cj4+IE9uIDIwMTkt
MDgtMDggMTA6MjMgcC5tLiwgR3JlZW50aW1lIEh1IHdyb3RlOgo+Pj4gZGlmZiAtLWdpdCBhL2Fy
Y2gvcmlzY3YvS2NvbmZpZyBiL2FyY2gvcmlzY3YvS2NvbmZpZwo+Pj4gaW5kZXggM2YxMmIwNjlh
ZjFkLi4yMDhiM2UxNGNjZDggMTAwNjQ0Cj4+PiAtLS0gYS9hcmNoL3Jpc2N2L0tjb25maWcKPj4+
ICsrKyBiL2FyY2gvcmlzY3YvS2NvbmZpZwo+Pj4gQEAgLTExNiw3ICsxMTYsOCBAQCBjb25maWcg
UEdUQUJMRV9MRVZFTFMKPj4+ICAgICAgICAgZGVmYXVsdCAyCj4+Pgo+Pj4gIGNvbmZpZyBIQVZF
X0FSQ0hfUEZOX1ZBTElECj4+PiAtICAgICAgIGRlZl9ib29sIHkKPj4+ICsgICAgICAgYm9vbAo+
Pj4gKyAgICAgICBkZWZhdWx0ICFTUEFSU0VNRU1fVk1FTU1BUAo+Pj4KPj4+ICBtZW51ICJQbGF0
Zm9ybSB0eXBlIgo+Pj4KPj4+IGRpZmYgLS1naXQgYS9hcmNoL3Jpc2N2L2luY2x1ZGUvYXNtL3Bh
Z2UuaCBiL2FyY2gvcmlzY3YvaW5jbHVkZS9hc20vcGFnZS5oCj4+PiBpbmRleCA4ZGRiNmM3ZmVk
YWMuLjY5OTFmN2E1YTRhNyAxMDA2NDQKPj4+IC0tLSBhL2FyY2gvcmlzY3YvaW5jbHVkZS9hc20v
cGFnZS5oCj4+PiArKysgYi9hcmNoL3Jpc2N2L2luY2x1ZGUvYXNtL3BhZ2UuaAo+Pj4gQEAgLTkz
LDE2ICs5MywyMCBAQCBleHRlcm4gdW5zaWduZWQgbG9uZyBtaW5fbG93X3BmbjsKPj4+ICAjZGVm
aW5lIHZpcnRfdG9fcGZuKHZhZGRyKSAgICAgKHBoeXNfdG9fcGZuKF9fcGEodmFkZHIpKSkKPj4+
ICAjZGVmaW5lIHBmbl90b192aXJ0KHBmbikgICAgICAgKF9fdmEocGZuX3RvX3BoeXMocGZuKSkp
Cj4+Pgo+Pj4gKyNpZiAhZGVmaW5lZChDT05GSUdfU1BBUlNFTUVNX1ZNRU1NQVApCj4+PiArI2Rl
ZmluZSBwZm5fdmFsaWQocGZuKSBcCj4+PiArICAgICAgICgoKHBmbikgPj0gcGZuX2Jhc2UpICYm
ICgoKHBmbiktcGZuX2Jhc2UpIDwgbWF4X21hcG5yKSkKPj4+ICAjZGVmaW5lIHZpcnRfdG9fcGFn
ZSh2YWRkcikgICAgKHBmbl90b19wYWdlKHZpcnRfdG9fcGZuKHZhZGRyKSkpCj4+PiAgI2RlZmlu
ZSBwYWdlX3RvX3ZpcnQocGFnZSkgICAgIChwZm5fdG9fdmlydChwYWdlX3RvX3BmbihwYWdlKSkp
Cj4+PiArI2Vsc2UKPj4+ICsjZGVmaW5lIHZpcnRfdG9fcGFnZSh2YWRkcikgICAgKChzdHJ1Y3Qg
cGFnZSAqKSgoKCh1NjQpdmFkZHIgLQo+Pj4gdmFfcGFfb2Zmc2V0KSAvIFBBR0VfU0laRSkgKiBz
aXplb2Yoc3RydWN0IHBhZ2UpICsgVk1FTU1BUF9TVEFSVCkpCj4+PiArI2RlZmluZSBwYWdlX3Rv
X3ZpcnQocGcpICAgICAgICgodm9pZCAqKSgoKCgodTY0KXBnIC0gVk1FTU1BUF9TVEFSVCkgLwo+
Pj4gc2l6ZW9mKHN0cnVjdCBwYWdlKSkgKiBQQUdFX1NJWkUpICsgdmFfcGFfb2Zmc2V0KSkKPj4+
ICsjZW5kaWYKPj4KPj4gVGhpcyBkb2Vzbid0IG1ha2Ugc2Vuc2UgdG8gbWUgYXQgYWxsLiBJdCBz
aG91bGQgYWx3YXlzIHVzZSBwZm5fdG9fcGFnZSgpCj4+IGZvciB2aXJ0X3RvX3BhZ2UoKSBhbmQg
dGhlIGdlbmVyaWMgcGZuX3RvX3BhZ2UoKS9wYWdlX3RvX3BmbigpCj4+IGltcGxlbWVudGF0aW9u
cyBlc3NlbnRpYWxseSBhbHJlYWR5IGRvIHdoYXQgeW91IGFyZSBkb2luZyBpbiBhIGNsZWFuZXIK
Pj4gd2F5LiBTbyBJJ2QgYmUgcmVhbGx5IHN1cnByaXNlZCBpZiB0aGlzIGRvZXMgYW55dGhpbmcg
YXQgYWxsLgo+Pgo+IAo+IFRoYW5rIHlvdSBmb3IgcG9pbnQgbWUgb3V0IHRoYXQuIEkganVzdCBj
aGVja2VkIHRoZSBnZW5lcmljCj4gaW1wbGVtZW50YXRpb24gYW5kIEkgc2hvdWxkIHVzZSB0aGF0
IG9uZS4KPiBTb3JyeSBJIGRpZG4ndCBjaGVjayB0aGUgZ2VuZXJpYyBvbmUgYW5kIGp1c3QgaW1w
bGVtZW50IGl0IGFnYWluLgo+IEkgdGhpbmsgdGhlIG9ubHkgcGF0Y2ggd2UgbmVlZCBpcyB0aGUg
Zmlyc3QgcGFydCB0byB1c2UgZ2VuZXJpYwo+IHBmbl92YWxpZCgpLiBJIGp1c3QgdGVzdGVkIGl0
IGFuZCB5ZXMgaXQgY2FuIGJvb3Qgc3VjY2Vzc2Z1bGx5IGluIGR0cwo+IHdpdGggaG9sZS4KPiAK
PiBJdCB3aWxsIGZhaWwgaW4gdGhpcyBjaGVjayAoKHBmbiktcGZuX2Jhc2UpIDwgbWF4X21hcG5y
LgoKU291bmRzIHRvIG1lIGxpa2UgbWF4X21hcG5yIGlzIG5vdCBzZXQgY29ycmVjdGx5LiBTZWUg
dGhlIGNvZGUgaW4Kc2V0dXBfYm9vdG1lbSgpLiBTZWVtcyBsaWtlICdtZW1fc2l6ZScgc2hvdWxk
IGJlIHNldCB0byB0aGUgbGFyZ2VzdAptZW1vcnkgYmxvY2ssIG5vdCBqdXN0IHRoZSBvbmUgdGhh
dCBjb250YWlucyB0aGUga2VybmVsLi4uCgoKPiBkaWZmIC0tZ2l0IGEvYXJjaC9yaXNjdi9LY29u
ZmlnIGIvYXJjaC9yaXNjdi9LY29uZmlnCj4gaW5kZXggM2YxMmIwNjlhZjFkLi4yMDhiM2UxNGNj
ZDggMTAwNjQ0Cj4gLS0tIGEvYXJjaC9yaXNjdi9LY29uZmlnCj4gKysrIGIvYXJjaC9yaXNjdi9L
Y29uZmlnCj4gQEAgLTExNiw3ICsxMTYsOCBAQCBjb25maWcgUEdUQUJMRV9MRVZFTFMKPiAgICAg
ICAgIGRlZmF1bHQgMgo+IAo+ICBjb25maWcgSEFWRV9BUkNIX1BGTl9WQUxJRAo+IC0gICAgICAg
ZGVmX2Jvb2wgeQo+ICsgICAgICAgYm9vbAo+ICsgICAgICAgZGVmYXVsdCAhU1BBUlNFTUVNX1ZN
RU1NQVAKPiAKPiAgbWVudSAiUGxhdGZvcm0gdHlwZSIKPiAKPiBkaWZmIC0tZ2l0IGEvYXJjaC9y
aXNjdi9pbmNsdWRlL2FzbS9wYWdlLmggYi9hcmNoL3Jpc2N2L2luY2x1ZGUvYXNtL3BhZ2UuaAo+
IGluZGV4IDhkZGI2YzdmZWRhYy4uODBkMjhmYTFlMmViIDEwMDY0NAo+IC0tLSBhL2FyY2gvcmlz
Y3YvaW5jbHVkZS9hc20vcGFnZS5oCj4gKysrIGIvYXJjaC9yaXNjdi9pbmNsdWRlL2FzbS9wYWdl
LmgKPiBAQCAtMTAwLDggKzEwMCwxMCBAQCBleHRlcm4gdW5zaWduZWQgbG9uZyBtaW5fbG93X3Bm
bjsKPiAgI2RlZmluZSBwYWdlX3RvX2J1cyhwYWdlKSAgICAgIChwYWdlX3RvX3BoeXMocGFnZSkp
Cj4gICNkZWZpbmUgcGh5c190b19wYWdlKHBhZGRyKSAgICAocGZuX3RvX3BhZ2UocGh5c190b19w
Zm4ocGFkZHIpKSkKPiAKPiArI2lmICFkZWZpbmVkKENPTkZJR19TUEFSU0VNRU1fVk1FTU1BUCkK
PiAgI2RlZmluZSBwZm5fdmFsaWQocGZuKSBcCj4gICAgICAgICAoKChwZm4pID49IHBmbl9iYXNl
KSAmJiAoKChwZm4pLXBmbl9iYXNlKSA8IG1heF9tYXBucikpCj4gKyNlbmRpZgo+IAo+ICAjZGVm
aW5lIEFSQ0hfUEZOX09GRlNFVCAgICAgICAgICAgICAgICAocGZuX2Jhc2UpCgoKVGhpcyBwYXRj
aCBzdGlsbCBtYWtlcyBubyBzZW5zZS4gSSdtIG5vdCBzdXJlIHdoeSB3ZSBoYXZlIGFuIGFyY2gK
c3BlY2lmaWMgcGZuX3ZhbGlkKCkgYmVjYXVzZSBpdCdzIHZlcnkgc2ltaWxhciB0byB0aGUgZ2Vu
ZXJpYyBvbmUuIEJ1dApteSBndWVzcyBpcyB0aGVyZSdzIGEgcmVhc29uIGZvciBpdCBhbmQgaXQn
cyBub3QgZG9pbmcgd2hhdCBpdCBpcwpzdXBwb3NlZCB3aGVuIHlvdSByZW1vdmUgaXQgZm9yIHRo
ZSBzcGFyc2VtZW0gY2FzZS4KCkxvZ2FuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpsaW51eC1yaXNjdiBtYWlsaW5nIGxpc3QKbGludXgtcmlzY3ZAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXJpc2N2Cg==
