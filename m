Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CDBED8D4D9
	for <lists+linux-riscv@lfdr.de>; Wed, 14 Aug 2019 15:36:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j9ILQHkNnzVDHN7uOiGTnf3O4yoSzjTFWc0/uhElE0k=; b=S9iTkmRmD14JcQ
	ILu7somppHLefkrVbd57qapCl2XrX9tGQBdj/+xdAuM2SywUjX9tjwCVEkBpyX9t/EJtUCZjggX8S
	VvSs8wNRmYX9cOScEbgE2d4SpbKFAwWDyDpWF94sJuSFn0QouyW5dQfEk4CsFP6qG/nznu8lEAHVI
	wCEuxu3zBolIWMSk8Y+WRUUhfGxrGP9+3BBoECd8Thu81GUtVMn2EEtkuv9eltVBiYqMN+Ct3w9wy
	5tlH1S5I+wMOjv4G0ymDTPOT+KoXGOYB2VpB7vfrZ3LjZn3o5wB+FnJ7SHpDkdGZEpmieV177c0WB
	zDExXQ/WjEiutP3/A9Iw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxtSB-00081P-M4; Wed, 14 Aug 2019 13:36:39 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxtS6-00080l-2w
 for linux-riscv@lists.infradead.org; Wed, 14 Aug 2019 13:36:36 +0000
Received: by mail-qt1-x843.google.com with SMTP id t12so21527174qtp.9
 for <linux-riscv@lists.infradead.org>; Wed, 14 Aug 2019 06:36:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=7jNFYKqok1WxQkQOs/YwyOOaIz+VbJc2j5ls/D5y77M=;
 b=HYIChDWLH9XOd9wfjAXa2QyaCp4B3PIQC2h9kbMtijVD8fN8JjLmNkYVo5F8gKLD8r
 uFBANj6AjO4uU7fc4Tq9hU3zaRgjvqB7kPtkA+V+r7UmOfmtGIznpJw8bpOoYT8G4Xk0
 +lOWbTWEV1D+evgK+d9I3asGNxYmX2M3+YBM+WwIQX2ti0voMBcQRWKwd/YO+ZxlQeGK
 GBUwdFgCAkj3/++3T2BS45+XAQwHiozVk+qmSLlCwTZxPKX48jBZuUEqPAcNXldQhxYW
 NVCIlZWHw0q2XL8UitH4s+NFIHScJPyjEk5zQDJGF6dVi4AeIqw4XcRobMMuaAY9tGil
 5Pmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=7jNFYKqok1WxQkQOs/YwyOOaIz+VbJc2j5ls/D5y77M=;
 b=hBmRzyVu055LWBO2YUJDdb9sUpAXMiPzpzKzzTpTWaPjV+fuPZIJQpqngDPrLada8N
 bEy+9YTnXFh47vv1cEAuSXTxSkHV+dtM+MYLYsson5JeGYF/EId+rqclOeUuYieFasUe
 SZJv1ZCJhRq2NUqmWXIqC5oehOVlRySJzyg+zcsKAxzSgTp1cM0SMJio1QO63XzJwTmL
 uIg8K1dJsmVURSXtowp6HnzCowqld6sRf6yINY1P1gu9paBE/Ous6ggQNwPHu4Pfe+to
 0XOKXawWvF3brIox3zqE+E36+719VRiYjemKeLAU0EtOOjaCodbtnP7PBzm0NNU1NxQB
 5JzQ==
X-Gm-Message-State: APjAAAU7kavhN201Tzv4QN1vixWH7/+O2oXxlIxhiu1rorrfdkNeSdQ1
 Hn8lqWY3MauJomIjqLE22naxJtz4WZkXlVZcR50=
X-Google-Smtp-Source: APXvYqyukeT2bAlkPamYfKTVua1D1rgoLpk3//U+glyXyZZ+Rk7w2JHmeAGXpMvKDmxUoGR5K8RXhbKOSIhnkPyDhk0=
X-Received: by 2002:ac8:2d2c:: with SMTP id n41mr37554622qta.28.1565789791477; 
 Wed, 14 Aug 2019 06:36:31 -0700 (PDT)
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
 <CAEbi=3dC86dhGdwdarS_x+6-5=WPydUBKjo613qRZxKLDAqU_g@mail.gmail.com>
 <5506c875-9387-acc9-a7fe-5b7c10036c40@deltatee.com>
 <alpine.DEB.2.21.9999.1908130921170.30024@viisi.sifive.com>
 <e1f78a33-18bb-bd6e-eede-e5e86758a4d0@deltatee.com>
In-Reply-To: <e1f78a33-18bb-bd6e-eede-e5e86758a4d0@deltatee.com>
From: Greentime Hu <green.hu@gmail.com>
Date: Wed, 14 Aug 2019 21:35:55 +0800
Message-ID: <CAEbi=3f+JDywuHYspfYKuC8z2wm8inRenBz+3DYbKK3ixFjU_g@mail.gmail.com>
Subject: Re: [PATCH v4 2/2] RISC-V: Implement sparsemem
To: Logan Gunthorpe <logang@deltatee.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_063634_132578_DA7FFA99 
X-CRM114-Status: GOOD (  12.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (green.hu[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Stephen Bates <sbates@raithlin.com>, linux-mm@vger.kernel.org,
 Paul Walmsley <paul.walmsley@sifive.com>, Olof Johansson <olof@lixom.net>,
 greentime.hu@sifive.com, linux-riscv@lists.infradead.org,
 Michael Clark <michaeljclark@mac.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

TG9nYW4gR3VudGhvcnBlIDxsb2dhbmdAZGVsdGF0ZWUuY29tPiDmlrwgMjAxOeW5tDjmnIgxNOaX
pSDpgLHkuIkg5LiK5Y2IMTI6NTDlr6vpgZPvvJoKPgo+IE9uIDIwMTktMDgtMTMgMTA6MzkgYS5t
LiwgUGF1bCBXYWxtc2xleSB3cm90ZToKPiA+IE9uIFR1ZSwgMTMgQXVnIDIwMTksIExvZ2FuIEd1
bnRob3JwZSB3cm90ZToKPiA+Cj4gPj4gT24gMjAxOS0wOC0xMyAxMjowNCBhLm0uLCBHcmVlbnRp
bWUgSHUgd3JvdGU6Cj4gPj4KPiA+Pj4gRXZlcnkgYXJjaGl0ZWN0dXJlIHdpdGggbW11IGRlZmlu
ZXMgdGhlaXIgb3duIHBmbl92YWxpZCgpLgo+ID4+Cj4gPj4gTm90IHRydWUuIEFybTY0LCBmb3Ig
ZXhhbXBsZSBqdXN0IHVzZXMgdGhlIGdlbmVyaWMgaW1wbGVtZW50YXRpb24gaW4KPiA+PiBtbXpv
bmUuaC4KPiA+Cj4gPiBhcm02NCBzZWVtcyB0byBkZWZpbmUgdGhlaXIgb3duOgo+ID4KPiA+IGh0
dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L3RvcnZhbGRzL2xp
bnV4LmdpdC90cmVlL2FyY2gvYXJtNjQvS2NvbmZpZyNuODk5Cj4KPiBPaCwgeXVwLiBNeSBtaXN0
YWtlLgo+Cj4gPiBodHRwczovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dp
dC90b3J2YWxkcy9saW51eC5naXQvdHJlZS9hcmNoL2FybTY0L21tL2luaXQuYyNuMjM1Cj4gPgo+
ID4gV2hpbGUgdGhlcmUgYXJlIG1hbnkgYXJjaGl0ZWN0dXJlcyB3aGljaCBoYXZlIHRoZWlyIG93
biBwZm5fdmFsaWQoKTsKPiA+IG9kZGx5LCBhbG1vc3Qgbm9uZSBvZiB0aGVtIHNldCBIQVZFX0FS
Q0hfUEZOX1ZBTElEID8KPgo+IFllcywgbXVjaCBvZiB0aGlzIGlzIHN1cGVyIGNvbmZ1c2luZy4g
U2VlbXMgSEFWRV9BUkNIX1BGTl9WQUxJRCBvbmx5Cj4gbWF0dGVycyBpZiBTUEFSU0VNRU0gaXMg
c2V0LiBTbyByaXNjLXYgcHJvYmFibHkgZG9lc24ndCBuZWVkIHRvIHNldCBpdAo+IGFuZCB3ZSBq
dXN0IG5lZWQgYSAjaWZkZWYgIUNPTkZJR19GTEFUTUVNIGFyb3VuZCB0aGUgcGZuX3ZhbGlkCj4g
ZGVmaW5pdGlvbiBsaWtlIG90aGVyIGFyY2hlcy4KPgoKTWF5YmUgdGhpcyBjb21taXQgZXhwbGFp
bnMgd2h5IGl0IHVzZWQgSEFWRV9BUkNIX1BGTl9WQUxJRCBpbnN0ZWFkIG9mIFNQQVJTRU1FTS4K
aHR0cHM6Ly9naXRodWIuY29tL3RvcnZhbGRzL2xpbnV4L2NvbW1pdC83YjdiZjQ5OWY3OWRlM2Y2
Yzg1YTM0MGM4NDUzYTc4Nzg5NTIzZjg1CgpCVFcsIEkgZm91bmQgYW5vdGhlciBpc3N1ZSBoZXJl
LgojZGVmaW5lIEZJWEFERFJfVE9QICAgICAgICAgICAgKFZNQUxMT0NfU1RBUlQpCiNkZWZpbmUg
RklYQUREUl9TVEFSVCAgICAgICAgICAgKEZJWEFERFJfVE9QIC0gRklYQUREUl9TSVpFKQojZGVm
aW5lIFZNRU1NQVBfRU5EICAgIChWTUFMTE9DX1NUQVJUIC0gMSkKI2RlZmluZSBWTUVNTUFQX1NU
QVJUICAoVk1BTExPQ19TVEFSVCAtIFZNRU1NQVBfU0laRSkKVGhlc2UgMiByZWdpb25zIGFyZSBv
dmVybGFwcGVkLgoKSG93IGFib3V0IHRoaXMgZml4PyBOb3Qgc3VyZSBpZiBpdCBpcyBnb29kIGZv
ciBldmVyeW9uZS4KCmRpZmYgLS1naXQgYS9hcmNoL3Jpc2N2L0tjb25maWcgYi9hcmNoL3Jpc2N2
L0tjb25maWcKaW5kZXggM2YxMmIwNjlhZjFkLi4zYzRkMzk0Njc5ZDAgMTAwNjQ0Ci0tLSBhL2Fy
Y2gvcmlzY3YvS2NvbmZpZworKysgYi9hcmNoL3Jpc2N2L0tjb25maWcKQEAgLTExNSw5ICsxMTUs
NiBAQCBjb25maWcgUEdUQUJMRV9MRVZFTFMKICAgICAgICBkZWZhdWx0IDMgaWYgNjRCSVQKICAg
ICAgICBkZWZhdWx0IDIKCi1jb25maWcgSEFWRV9BUkNIX1BGTl9WQUxJRAotICAgICAgIGRlZl9i
b29sIHkKLQogbWVudSAiUGxhdGZvcm0gdHlwZSIKCiBjaG9pY2UKZGlmZiAtLWdpdCBhL2FyY2gv
cmlzY3YvaW5jbHVkZS9hc20vZml4bWFwLmggYi9hcmNoL3Jpc2N2L2luY2x1ZGUvYXNtL2ZpeG1h
cC5oCmluZGV4IGMyMDdmNjYzNGI5MS4uNzJlMTA2YjYwYmM1IDEwMDY0NAotLS0gYS9hcmNoL3Jp
c2N2L2luY2x1ZGUvYXNtL2ZpeG1hcC5oCisrKyBiL2FyY2gvcmlzY3YvaW5jbHVkZS9hc20vZml4
bWFwLmgKQEAgLTI2LDcgKzI2LDcgQEAgZW51bSBmaXhlZF9hZGRyZXNzZXMgewogfTsKCiAjZGVm
aW5lIEZJWEFERFJfU0laRSAgICAgICAgICAgKF9fZW5kX29mX2ZpeGVkX2FkZHJlc3NlcyAqIFBB
R0VfU0laRSkKLSNkZWZpbmUgRklYQUREUl9UT1AgICAgICAgICAgICAoVk1BTExPQ19TVEFSVCkK
KyNkZWZpbmUgRklYQUREUl9UT1AgICAgICAgICAgICAoVk1FTU1BUF9TVEFSVCkKICNkZWZpbmUg
RklYQUREUl9TVEFSVCAgICAgICAgICAoRklYQUREUl9UT1AgLSBGSVhBRERSX1NJWkUpCgogI2Rl
ZmluZSBGSVhNQVBfUEFHRV9JTyAgICAgICAgIFBBR0VfS0VSTkVMCmRpZmYgLS1naXQgYS9hcmNo
L3Jpc2N2L2luY2x1ZGUvYXNtL3BhZ2UuaCBiL2FyY2gvcmlzY3YvaW5jbHVkZS9hc20vcGFnZS5o
CmluZGV4IDhkZGI2YzdmZWRhYy4uODM4MzA5OTdkY2U2IDEwMDY0NAotLS0gYS9hcmNoL3Jpc2N2
L2luY2x1ZGUvYXNtL3BhZ2UuaAorKysgYi9hcmNoL3Jpc2N2L2luY2x1ZGUvYXNtL3BhZ2UuaApA
QCAtMTAwLDggKzEwMCwxMCBAQCBleHRlcm4gdW5zaWduZWQgbG9uZyBtaW5fbG93X3BmbjsKICNk
ZWZpbmUgcGFnZV90b19idXMocGFnZSkgICAgICAocGFnZV90b19waHlzKHBhZ2UpKQogI2RlZmlu
ZSBwaHlzX3RvX3BhZ2UocGFkZHIpICAgIChwZm5fdG9fcGFnZShwaHlzX3RvX3BmbihwYWRkcikp
KQoKKyNpZiBkZWZpbmVkKENPTkZJR19GTEFUTUVNKQogI2RlZmluZSBwZm5fdmFsaWQocGZuKSBc
CiAgICAgICAgKCgocGZuKSA+PSBwZm5fYmFzZSkgJiYgKCgocGZuKS1wZm5fYmFzZSkgPCBtYXhf
bWFwbnIpKQorI2VuZGlmCgogI2RlZmluZSBBUkNIX1BGTl9PRkZTRVQgICAgICAgICAgICAgICAg
KHBmbl9iYXNlKQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KbGludXgtcmlzY3YgbWFpbGluZyBsaXN0CmxpbnV4LXJpc2N2QGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yaXNj
dgo=
