Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 035448A2AC
	for <lists+linux-riscv@lfdr.de>; Mon, 12 Aug 2019 17:52:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U0baXHvcEaCWdk7y1+sb9xjwC5Kw4ClddQMFibeLYGE=; b=kkKwxO1SZQfcz8
	0cyxhL7xjQFqmq8DaJWItFvJxretv0AjTANxBDt8HlKAur3zTM5q022vgyLKlkmkdRhDEM1paeWf1
	7G1IzNq6yQndMNow3ShCdepxWHxpgUt92HBcyZlBGAGYo3jwcPX1kWmOWbCu1moQZoveiRp4PNqP1
	82vEiHHgK/qwoh59UlBIGThhfVG4N3Qb+R9YBTm5QUrZ5XhmPU/KkWAWqYNxrZ8kNCoIqDCY05rFl
	CSrPvTcJlIZUate9FzZcTmznE2Ji0bi8qtr5Zri2q7jlFwVWpn7xLrMyGDZmNF824HdvqoCPjueCZ
	uH36Mjqmg3a/DkPKCSSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxCcA-0007Iv-8s; Mon, 12 Aug 2019 15:52:06 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxCc6-0007IY-K4
 for linux-riscv@lists.infradead.org; Mon, 12 Aug 2019 15:52:04 +0000
Received: from [172.16.1.162] by ale.deltatee.com with esmtp (Exim 4.89)
 (envelope-from <logang@deltatee.com>)
 id 1hxCbx-0006Ga-2Z; Mon, 12 Aug 2019 09:51:54 -0600
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
From: Logan Gunthorpe <logang@deltatee.com>
Message-ID: <96156909-1453-d487-ff66-a041d67c74d6@deltatee.com>
Date: Mon, 12 Aug 2019 09:51:50 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAEbi=3d7_xefYaVXEnMJW49Bzdbbmc2+UOwXWrCiBo7YkTAihg@mail.gmail.com>
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
X-CRM114-CacheID: sfid-20190812_085202_707520_C1380BD5 
X-CRM114-Status: GOOD (  19.31  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.54.116.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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

CgpPbiAyMDE5LTA4LTExIDEwOjAxIHAubS4sIEdyZWVudGltZSBIdSB3cm90ZToKPiBIaSBMb2dh
biwKPiAKPiBMb2dhbiBHdW50aG9ycGUgPGxvZ2FuZ0BkZWx0YXRlZS5jb20+IOaWvCAyMDE55bm0
OOaciDEw5pelIOmAseWFrSDkuIrljYgzOjAz5a+r6YGT77yaCj4+Cj4+Cj4+Cj4+IE9uIDIwMTkt
MDgtMDkgMTE6MDEgYS5tLiwgR3JlZW50aW1lIEh1IHdyb3RlOgo+Pj4gSGkgTG9nYW4sCj4+Pgo+
Pj4gTG9nYW4gR3VudGhvcnBlIDxsb2dhbmdAZGVsdGF0ZWUuY29tPiDmlrwgMjAxOeW5tDjmnIg5
5pelIOmAseS6lCDkuIvljYgxMTo0N+Wvq+mBk++8mgo+Pj4+Cj4+Pj4KPj4+Pgo+Pj4+IE9uIDIw
MTktMDgtMDggMTA6MjMgcC5tLiwgR3JlZW50aW1lIEh1IHdyb3RlOgo+Pj4+PiBkaWZmIC0tZ2l0
IGEvYXJjaC9yaXNjdi9LY29uZmlnIGIvYXJjaC9yaXNjdi9LY29uZmlnCj4+Pj4+IGluZGV4IDNm
MTJiMDY5YWYxZC4uMjA4YjNlMTRjY2Q4IDEwMDY0NAo+Pj4+PiAtLS0gYS9hcmNoL3Jpc2N2L0tj
b25maWcKPj4+Pj4gKysrIGIvYXJjaC9yaXNjdi9LY29uZmlnCj4+Pj4+IEBAIC0xMTYsNyArMTE2
LDggQEAgY29uZmlnIFBHVEFCTEVfTEVWRUxTCj4+Pj4+ICAgICAgICAgZGVmYXVsdCAyCj4+Pj4+
Cj4+Pj4+ICBjb25maWcgSEFWRV9BUkNIX1BGTl9WQUxJRAo+Pj4+PiAtICAgICAgIGRlZl9ib29s
IHkKPj4+Pj4gKyAgICAgICBib29sCj4+Pj4+ICsgICAgICAgZGVmYXVsdCAhU1BBUlNFTUVNX1ZN
RU1NQVAKPj4+Pj4KPj4+Pj4gIG1lbnUgIlBsYXRmb3JtIHR5cGUiCj4+Pj4+Cj4+Pj4+IGRpZmYg
LS1naXQgYS9hcmNoL3Jpc2N2L2luY2x1ZGUvYXNtL3BhZ2UuaCBiL2FyY2gvcmlzY3YvaW5jbHVk
ZS9hc20vcGFnZS5oCj4+Pj4+IGluZGV4IDhkZGI2YzdmZWRhYy4uNjk5MWY3YTVhNGE3IDEwMDY0
NAo+Pj4+PiAtLS0gYS9hcmNoL3Jpc2N2L2luY2x1ZGUvYXNtL3BhZ2UuaAo+Pj4+PiArKysgYi9h
cmNoL3Jpc2N2L2luY2x1ZGUvYXNtL3BhZ2UuaAo+Pj4+PiBAQCAtOTMsMTYgKzkzLDIwIEBAIGV4
dGVybiB1bnNpZ25lZCBsb25nIG1pbl9sb3dfcGZuOwo+Pj4+PiAgI2RlZmluZSB2aXJ0X3RvX3Bm
bih2YWRkcikgICAgIChwaHlzX3RvX3BmbihfX3BhKHZhZGRyKSkpCj4+Pj4+ICAjZGVmaW5lIHBm
bl90b192aXJ0KHBmbikgICAgICAgKF9fdmEocGZuX3RvX3BoeXMocGZuKSkpCj4+Pj4+Cj4+Pj4+
ICsjaWYgIWRlZmluZWQoQ09ORklHX1NQQVJTRU1FTV9WTUVNTUFQKQo+Pj4+PiArI2RlZmluZSBw
Zm5fdmFsaWQocGZuKSBcCj4+Pj4+ICsgICAgICAgKCgocGZuKSA+PSBwZm5fYmFzZSkgJiYgKCgo
cGZuKS1wZm5fYmFzZSkgPCBtYXhfbWFwbnIpKQo+Pj4+PiAgI2RlZmluZSB2aXJ0X3RvX3BhZ2Uo
dmFkZHIpICAgIChwZm5fdG9fcGFnZSh2aXJ0X3RvX3Bmbih2YWRkcikpKQo+Pj4+PiAgI2RlZmlu
ZSBwYWdlX3RvX3ZpcnQocGFnZSkgICAgIChwZm5fdG9fdmlydChwYWdlX3RvX3BmbihwYWdlKSkp
Cj4+Pj4+ICsjZWxzZQo+Pj4+PiArI2RlZmluZSB2aXJ0X3RvX3BhZ2UodmFkZHIpICAgICgoc3Ry
dWN0IHBhZ2UgKikoKCgodTY0KXZhZGRyIC0KPj4+Pj4gdmFfcGFfb2Zmc2V0KSAvIFBBR0VfU0la
RSkgKiBzaXplb2Yoc3RydWN0IHBhZ2UpICsgVk1FTU1BUF9TVEFSVCkpCj4+Pj4+ICsjZGVmaW5l
IHBhZ2VfdG9fdmlydChwZykgICAgICAgKCh2b2lkICopKCgoKCh1NjQpcGcgLSBWTUVNTUFQX1NU
QVJUKSAvCj4+Pj4+IHNpemVvZihzdHJ1Y3QgcGFnZSkpICogUEFHRV9TSVpFKSArIHZhX3BhX29m
ZnNldCkpCj4+Pj4+ICsjZW5kaWYKPj4+Pgo+Pj4+IFRoaXMgZG9lc24ndCBtYWtlIHNlbnNlIHRv
IG1lIGF0IGFsbC4gSXQgc2hvdWxkIGFsd2F5cyB1c2UgcGZuX3RvX3BhZ2UoKQo+Pj4+IGZvciB2
aXJ0X3RvX3BhZ2UoKSBhbmQgdGhlIGdlbmVyaWMgcGZuX3RvX3BhZ2UoKS9wYWdlX3RvX3Bmbigp
Cj4+Pj4gaW1wbGVtZW50YXRpb25zIGVzc2VudGlhbGx5IGFscmVhZHkgZG8gd2hhdCB5b3UgYXJl
IGRvaW5nIGluIGEgY2xlYW5lcgo+Pj4+IHdheS4gU28gSSdkIGJlIHJlYWxseSBzdXJwcmlzZWQg
aWYgdGhpcyBkb2VzIGFueXRoaW5nIGF0IGFsbC4KPj4+Pgo+Pj4KPj4+IFRoYW5rIHlvdSBmb3Ig
cG9pbnQgbWUgb3V0IHRoYXQuIEkganVzdCBjaGVja2VkIHRoZSBnZW5lcmljCj4+PiBpbXBsZW1l
bnRhdGlvbiBhbmQgSSBzaG91bGQgdXNlIHRoYXQgb25lLgo+Pj4gU29ycnkgSSBkaWRuJ3QgY2hl
Y2sgdGhlIGdlbmVyaWMgb25lIGFuZCBqdXN0IGltcGxlbWVudCBpdCBhZ2Fpbi4KPj4+IEkgdGhp
bmsgdGhlIG9ubHkgcGF0Y2ggd2UgbmVlZCBpcyB0aGUgZmlyc3QgcGFydCB0byB1c2UgZ2VuZXJp
Ywo+Pj4gcGZuX3ZhbGlkKCkuIEkganVzdCB0ZXN0ZWQgaXQgYW5kIHllcyBpdCBjYW4gYm9vdCBz
dWNjZXNzZnVsbHkgaW4gZHRzCj4+PiB3aXRoIGhvbGUuCj4+Pgo+Pj4gSXQgd2lsbCBmYWlsIGlu
IHRoaXMgY2hlY2sgKChwZm4pLXBmbl9iYXNlKSA8IG1heF9tYXBuci4KPj4KPj4gU291bmRzIHRv
IG1lIGxpa2UgbWF4X21hcG5yIGlzIG5vdCBzZXQgY29ycmVjdGx5LiBTZWUgdGhlIGNvZGUgaW4K
Pj4gc2V0dXBfYm9vdG1lbSgpLiBTZWVtcyBsaWtlICdtZW1fc2l6ZScgc2hvdWxkIGJlIHNldCB0
byB0aGUgbGFyZ2VzdAo+PiBtZW1vcnkgYmxvY2ssIG5vdCBqdXN0IHRoZSBvbmUgdGhhdCBjb250
YWlucyB0aGUga2VybmVsLi4uCj4+Cj4+Cj4+PiBkaWZmIC0tZ2l0IGEvYXJjaC9yaXNjdi9LY29u
ZmlnIGIvYXJjaC9yaXNjdi9LY29uZmlnCj4+PiBpbmRleCAzZjEyYjA2OWFmMWQuLjIwOGIzZTE0
Y2NkOCAxMDA2NDQKPj4+IC0tLSBhL2FyY2gvcmlzY3YvS2NvbmZpZwo+Pj4gKysrIGIvYXJjaC9y
aXNjdi9LY29uZmlnCj4+PiBAQCAtMTE2LDcgKzExNiw4IEBAIGNvbmZpZyBQR1RBQkxFX0xFVkVM
Uwo+Pj4gICAgICAgICBkZWZhdWx0IDIKPj4+Cj4+PiAgY29uZmlnIEhBVkVfQVJDSF9QRk5fVkFM
SUQKPj4+IC0gICAgICAgZGVmX2Jvb2wgeQo+Pj4gKyAgICAgICBib29sCj4+PiArICAgICAgIGRl
ZmF1bHQgIVNQQVJTRU1FTV9WTUVNTUFQCj4+Pgo+Pj4gIG1lbnUgIlBsYXRmb3JtIHR5cGUiCj4+
Pgo+Pj4gZGlmZiAtLWdpdCBhL2FyY2gvcmlzY3YvaW5jbHVkZS9hc20vcGFnZS5oIGIvYXJjaC9y
aXNjdi9pbmNsdWRlL2FzbS9wYWdlLmgKPj4+IGluZGV4IDhkZGI2YzdmZWRhYy4uODBkMjhmYTFl
MmViIDEwMDY0NAo+Pj4gLS0tIGEvYXJjaC9yaXNjdi9pbmNsdWRlL2FzbS9wYWdlLmgKPj4+ICsr
KyBiL2FyY2gvcmlzY3YvaW5jbHVkZS9hc20vcGFnZS5oCj4+PiBAQCAtMTAwLDggKzEwMCwxMCBA
QCBleHRlcm4gdW5zaWduZWQgbG9uZyBtaW5fbG93X3BmbjsKPj4+ICAjZGVmaW5lIHBhZ2VfdG9f
YnVzKHBhZ2UpICAgICAgKHBhZ2VfdG9fcGh5cyhwYWdlKSkKPj4+ICAjZGVmaW5lIHBoeXNfdG9f
cGFnZShwYWRkcikgICAgKHBmbl90b19wYWdlKHBoeXNfdG9fcGZuKHBhZGRyKSkpCj4+Pgo+Pj4g
KyNpZiAhZGVmaW5lZChDT05GSUdfU1BBUlNFTUVNX1ZNRU1NQVApCj4+PiAgI2RlZmluZSBwZm5f
dmFsaWQocGZuKSBcCj4+PiAgICAgICAgICgoKHBmbikgPj0gcGZuX2Jhc2UpICYmICgoKHBmbikt
cGZuX2Jhc2UpIDwgbWF4X21hcG5yKSkKPj4+ICsjZW5kaWYKPj4+Cj4+PiAgI2RlZmluZSBBUkNI
X1BGTl9PRkZTRVQgICAgICAgICAgICAgICAgKHBmbl9iYXNlKQo+Pgo+Pgo+PiBUaGlzIHBhdGNo
IHN0aWxsIG1ha2VzIG5vIHNlbnNlLiBJJ20gbm90IHN1cmUgd2h5IHdlIGhhdmUgYW4gYXJjaAo+
PiBzcGVjaWZpYyBwZm5fdmFsaWQoKSBiZWNhdXNlIGl0J3MgdmVyeSBzaW1pbGFyIHRvIHRoZSBn
ZW5lcmljIG9uZS4gQnV0Cj4+IG15IGd1ZXNzIGlzIHRoZXJlJ3MgYSByZWFzb24gZm9yIGl0IGFu
ZCBpdCdzIG5vdCBkb2luZyB3aGF0IGl0IGlzCj4+IHN1cHBvc2VkIHdoZW4geW91IHJlbW92ZSBp
dCBmb3IgdGhlIHNwYXJzZW1lbSBjYXNlLgo+IAo+IEl0IHdpbGwgdXNlIGFub3RoZXIgcGZuX3Zh
bGlkKCkgaW1wbGVtZW50YXRpb24gaW4KPiBpbmNsdWRlL2xpbnV4L21tem9uZS5oIGlmIENPTkZJ
R19TUEFSU0VNRU0gYW5kCj4gIUNPTkZJR19IQVZFX0FSQ0hfUEZOX1ZBTElECj4gSXQgd2lsbCBi
ZSB0aGlzIG9uZS4KPiAKPiBzdGF0aWMgaW5saW5lIGludCBwZm5fdmFsaWQodW5zaWduZWQgbG9u
ZyBwZm4pCj4gewo+ICAgICAgICAgaWYgKHBmbl90b19zZWN0aW9uX25yKHBmbikgPj0gTlJfTUVN
X1NFQ1RJT05TKQo+ICAgICAgICAgICAgICAgICByZXR1cm4gMDsKPiAgICAgICAgIHJldHVybiB2
YWxpZF9zZWN0aW9uKF9fbnJfdG9fc2VjdGlvbihwZm5fdG9fc2VjdGlvbl9ucihwZm4pKSk7Cj4g
fQoKQWgsIG9rIEkgc2VlLiAicGFnZS5oIiBpcyBvbmx5IGluY2x1ZGVkIGluIG5vLW1tdSBhcmNo
ZXMuIFdoaWNoIGV4cGxhaW5zCndoeSByaXNjdiByZS1pbXBsZW1lbnRzIHRoYXQgbWFjcm8uIENv
dXBsZSBmb2xsb3cgdXAgcXVlc3Rpb25zIHRoZW46CgoqIERpZCB5b3UgdGVzdCB0aGUgbWVtb3J5
LXdpdGgtaG9sZSBzY2VuYXJpbyB3aXRob3V0IHRoZSBzcGFyc2VtZW0KcGF0Y2hlcz8gSXQgc2Vl
bXMgcGZuX3ZhbGlkKCkgd2lsbCBiZSB3cm9uZyByZWdhcmRsZXNzIG9mIHNwYXJzZS9mbGF0IG1l
bS4KCiogQW55IGNoYW5jZSB3ZSBjYW4ganVzdCB1c2UgdGhlIGdlbmVyaWMgcGZuX3ZhbGlkKCkg
ZnVuY3Rpb24gaW4gYWxsCmNhc2VzIG5vdCBqdXN0IHNwYXJzZW1lbT8gQ2FuIHlvdSB0ZXN0IHRo
YXQ/CgpUaGFua3MsCgpMb2dhbgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KbGludXgtcmlzY3YgbWFpbGluZyBsaXN0CmxpbnV4LXJpc2N2QGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1yaXNjdgo=
