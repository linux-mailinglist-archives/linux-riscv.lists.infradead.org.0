Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B31993CE5B
	for <lists+linux-riscv@lfdr.de>; Tue, 11 Jun 2019 16:19:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HxTNP7DzcBpdDpTvOaWKAtRU12HpzgA7wuTttmcvCUQ=; b=YeyJPpyQhS+MWn
	EcrRx9uQKo+KmbaPoqkayOvE5Gw5WUZ9ec86BBTEocb+4OwLjoY8aj1UySGO8hYssf5uygw72//4Q
	PmZ/qSd1THdjgH/Nip76r+UB7AZD4gElMmgjaQCQ6/SC3RryqxVXghvlDC16crLsjUUbmF6mxi3e9
	+HFIn6Ye0DDcSPeLOZ1fz0xTW1PBihsMI7c+CDzftmm/38WEFPJRyGu7ks5m+QgYkbI535Aa73vHS
	5mwdgynXO0Ark/7pSqqoeOrGQUPExyC8OpjpRiFU55c+ddRO2WigiqgyfmDdysH54mo+bIGjdQ0SE
	itHjR1wGMpYLXTxoPnfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hahcI-0001BQ-Fp; Tue, 11 Jun 2019 14:19:14 +0000
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hahcE-0001B7-Qs
 for linux-riscv@lists.infradead.org; Tue, 11 Jun 2019 14:19:12 +0000
Received: by newverein.lst.de (Postfix, from userid 2407)
 id 3E91868B02; Tue, 11 Jun 2019 16:18:42 +0200 (CEST)
Date: Tue, 11 Jun 2019 16:18:41 +0200
From: Christoph Hellwig <hch@lst.de>
To: Vladimir Murzin <vladimir.murzin@arm.com>
Subject: Re: [PATCH 02/17] mm: stub out all of swapops.h for !CONFIG_MMU
Message-ID: <20190611141841.GA29151@lst.de>
References: <20190610221621.10938-1-hch@lst.de>
 <20190610221621.10938-3-hch@lst.de>
 <516c8def-22db-027c-873d-a943454e33af@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <516c8def-22db-027c-873d-a943454e33af@arm.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_071911_023584_64C13489 
X-CRM114-Status: UNSURE (   7.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Damien Le Moal <damien.lemoal@wdc.com>, uclinux-dev@uclinux.org,
 Palmer Dabbelt <palmer@sifive.com>, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, linux-riscv@lists.infradead.org,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

T24gVHVlLCBKdW4gMTEsIDIwMTkgYXQgMTE6MTU6NDRBTSArMDEwMCwgVmxhZGltaXIgTXVyemlu
IHdyb3RlOgo+IE9uIDYvMTAvMTkgMTE6MTYgUE0sIENocmlzdG9waCBIZWxsd2lnIHdyb3RlOgo+
ID4gVGhlIHdob2xlIGhlYWRlciBmaWxlIGRlYWxzIHdpdGggc3dhcCBlbnRyaWVzIGFuZCBQVEVz
LCBub25lIG9mIHdoaWNoCj4gPiBjYW4gZXhpc3QgZm9yIG5vbW11IGJ1aWxkcy4KPiAKPiBBbHRo
b3VnaCBJIGFncmVlIHdpdGggdGhlIHBhdGNoLCBJJ20gd29uZGVyaW5nIGhvdyB5b3UgZ2V0IGlu
dG8gaXQ/CgpXaXRob3V0IHRoYXQgdGhlIFJJU0MtViBub21tdSBibG93cyB1cCBsaWtlIHRoaXM6
CgoKSW4gZmlsZSBpbmNsdWRlZCBmcm9tIG1tL3Ztc2Nhbi5jOjU4OgouL2luY2x1ZGUvbGludXgv
c3dhcG9wcy5oOiBJbiBmdW5jdGlvbiDigJhwdGVfdG9fc3dwX2VudHJ54oCZOgouL2luY2x1ZGUv
bGludXgvc3dhcG9wcy5oOjcxOjE1OiBlcnJvcjogaW1wbGljaXQgZGVjbGFyYXRpb24gb2YgZnVu
Y3Rpb24g4oCYX19wdGVfdG9fc3dwX2VudHJ54oCZOyBkaWQgeW91IG1lYW4g4oCYcHRlX3RvX3N3
cF9lbnRyeeKAmT8gWy1XZXJyb3I9aW1wbGljaXQtZnVuY3Rpb24tZGVjbGFyYXRpb25dCiAgYXJj
aF9lbnRyeSA9IF9fcHRlX3RvX3N3cF9lbnRyeShwdGUpOwogICAgICAgICAgICAgICBefn5+fn5+
fn5+fn5+fn5+fn4KICAgICAgICAgICAgICAgcHRlX3RvX3N3cF9lbnRyeQouL2luY2x1ZGUvbGlu
dXgvc3dhcG9wcy5oOjcxOjEzOiBlcnJvcjogaW5jb21wYXRpYmxlIHR5cGVzIHdoZW4gYXNzaWdu
aW5nIHRvIHR5cGUg4oCYc3dwX2VudHJ5X3TigJkge2FrYSDigJhzdHJ1Y3QgPGFub255bW91cz7i
gJl9IGZyb20gdHlwZSDigJhpbnTigJkKICBhcmNoX2VudHJ5ID0gX19wdGVfdG9fc3dwX2VudHJ5
KHB0ZSk7CiAgICAgICAgICAgICBeCi4vaW5jbHVkZS9saW51eC9zd2Fwb3BzLmg6NzI6MTk6IGVy
cm9yOiBpbXBsaWNpdCBkZWNsYXJhdGlvbiBvZiBmdW5jdGlvbiDigJhfX3N3cF90eXBl4oCZOyBk
aWQgeW91IG1lYW4g4oCYc3dwX3R5cGXigJk/IFstV2Vycm9yPWltcGxpY2l0LWZ1bmN0aW9uLWRl
Y2xhcmF0aW9uXQogIHJldHVybiBzd3BfZW50cnkoX19zd3BfdHlwZShhcmNoX2VudHJ5KSwgX19z
d3Bfb2Zmc2V0KGFyY2hfZW50cnkpKTsKICAgICAgICAgICAgICAgICAgIF5+fn5+fn5+fn4KICAg
ICAgICAgICAgICAgICAgIHN3cF90eXBlCi4vaW5jbHVkZS9saW51eC9zd2Fwb3BzLmg6NzI6NDM6
IGVycm9yOiBpbXBsaWNpdCBkZWNsYXJhdGlvbiBvZiBmdW5jdGlvbiDigJhfX3N3cF9vZmZzZXTi
gJk7IGRpZCB5b3UgbWVhbiDigJhzd3Bfb2Zmc2V04oCZPyBbLVdlcnJvcj1pbXBsaWNpdC1mdW5j
dGlvbi1kZWNsYXJhdGlvbl0KICByZXR1cm4gc3dwX2VudHJ5KF9fc3dwX3R5cGUoYXJjaF9lbnRy
eSksIF9fc3dwX29mZnNldChhcmNoX2VudHJ5KSk7CiAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICBefn5+fn5+fn5+fn4KICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIHN3cF9vZmZzZXQKLi9pbmNsdWRlL2xpbnV4L3N3YXBvcHMuaDogSW4g
ZnVuY3Rpb24g4oCYc3dwX2VudHJ5X3RvX3B0ZeKAmToKLi9pbmNsdWRlL2xpbnV4L3N3YXBvcHMu
aDo4MzoxNTogZXJyb3I6IGltcGxpY2l0IGRlY2xhcmF0aW9uIG9mIGZ1bmN0aW9uIOKAmF9fc3dw
X2VudHJ54oCZOyBkaWQgeW91IG1lYW4g4oCYc3dwX2VudHJ54oCZPyBbLVdlcnJvcj1pbXBsaWNp
dC1mdW5jdGlvbi1kZWNsYXJhdGlvbl0KICBhcmNoX2VudHJ5ID0gX19zd3BfZW50cnkoc3dwX3R5
cGUoZW50cnkpLCBzd3Bfb2Zmc2V0KGVudHJ5KSk7CiAgICAgICAgICAgICAgIF5+fn5+fn5+fn5+
CiAgICAgICAgICAgICAgIHN3cF9lbnRyeQouL2luY2x1ZGUvbGludXgvc3dhcG9wcy5oOjgzOjEz
OiBlcnJvcjogaW5jb21wYXRpYmxlIHR5cGVzIHdoZW4gYXNzaWduaW5nIHRvIHR5cGUg4oCYc3dw
X2VudHJ5X3TigJkge2FrYSDigJhzdHJ1Y3QgPGFub255bW91cz7igJl9IGZyb20gdHlwZSDigJhp
bnTigJkKICBhcmNoX2VudHJ5ID0gX19zd3BfZW50cnkoc3dwX3R5cGUoZW50cnkpLCBzd3Bfb2Zm
c2V0KGVudHJ5KSk7CiAgICAgICAgICAgICBeCi4vaW5jbHVkZS9saW51eC9zd2Fwb3BzLmg6ODQ6
OTogZXJyb3I6IGltcGxpY2l0IGRlY2xhcmF0aW9uIG9mIGZ1bmN0aW9uIOKAmF9fc3dwX2VudHJ5
X3RvX3B0ZeKAmTsgZGlkIHlvdSBtZWFuIOKAmHN3cF9lbnRyeV90b19wdGXigJk/IFstV2Vycm9y
PWltcGxpY2l0LWZ1bmN0aW9uLWRlY2xhcmF0aW9uXQogIHJldHVybiBfX3N3cF9lbnRyeV90b19w
dGUoYXJjaF9lbnRyeSk7CiAgICAgICAgIF5+fn5+fn5+fn5+fn5+fn5+fgogICAgICAgICBzd3Bf
ZW50cnlfdG9fcHRlCi4vaW5jbHVkZS9saW51eC9zd2Fwb3BzLmg6ODQ6OTogZXJyb3I6IGluY29t
cGF0aWJsZSB0eXBlcyB3aGVuIHJldHVybmluZyB0eXBlIOKAmGludOKAmSBidXQg4oCYcHRlX3Ti
gJkge2FrYSDigJhzdHJ1Y3QgPGFub255bW91cz7igJl9IHdhcyBleHBlY3RlZAogIHJldHVybiBf
X3N3cF9lbnRyeV90b19wdGUoYXJjaF9lbnRyeSk7CiAgICAgICAgIF5+fn5+fn5+fn5+fn5+fn5+
fn5+fn5+fn5+fn5+fgpjYzE6IHNvbWUgd2FybmluZ3MgYmVpbmcgdHJlYXRlZCBhcyBlcnJvcnMK
bWFrZVsxXTogKioqIFtzY3JpcHRzL01ha2VmaWxlLmJ1aWxkOjI3ODogbW0vdm1zY2FuLm9dIEVy
cm9yIDEKbWFrZTogKioqIFtNYWtlZmlsZToxMDcxOiBtbV0gRXJyb3IgMgptYWtlOiAqKiogV2Fp
dGluZyBmb3IgdW5maW5pc2hlZCBqb2JzLi4uLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KbGludXgtcmlzY3YgbWFpbGluZyBsaXN0CmxpbnV4LXJpc2N2
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1yaXNjdgo=
