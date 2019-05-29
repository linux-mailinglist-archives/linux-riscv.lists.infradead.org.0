Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54F352E32B
	for <lists+linux-riscv@lfdr.de>; Wed, 29 May 2019 19:25:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=31Piw8XC1KtyWnsf9ageblmC+fU0TdElI0k21nYa+qE=; b=sEEeydkiPImV1W
	etcUGSC3gZCPOm+yO3eLvcfqp2Vn8H6kUaCqdvfUAFDyeYynQlBOKo6eivNxzybckaOsI4k3BeLi5
	iVW8NWe35elYHWqcE6uM7sp3pWH+IejMCSi1b2VnTfydoPa9SLx1u4pdUuuM/Oip3xOs5mQT4rey8
	vOMK7Rze9ZhLI5teuiRtlK6tEQl6FktG/0xXD+5sGmWlCCnF7m2CO/TPe+b87OZ8o8FXOvx/4txge
	Uaa+w6v3ZKhuoe3BMX/YYR3zxD6IgrgGGNLxXrzBSg/aPCmER6ISmUMWmzky0sVHIRoao7dd+1p8o
	XbsepU3xxY+ilCJajq5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hW2KF-0001HH-7U; Wed, 29 May 2019 17:25:19 +0000
Received: from mail-it1-x142.google.com ([2607:f8b0:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hW2K9-00013K-HD
 for linux-riscv@lists.infradead.org; Wed, 29 May 2019 17:25:16 +0000
Received: by mail-it1-x142.google.com with SMTP id e184so4878687ite.1
 for <linux-riscv@lists.infradead.org>; Wed, 29 May 2019 10:25:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=05/fn13tWdkuP2jbzLdgGVw/WPVOyHa3JR8tLqwyzyg=;
 b=Wp8okvQG49treFUvGf307mQ1udyHalrmXpAQuVspFNU50zTFPafRYWLfO5nwUiqLaz
 Oun3HWQHuyee5LnlISk6joiiD3rAlhIvQp3djdac3Lwo7wSKovbpPyU6nqNjQg2A1hu+
 YA83HwvXibsJ/e0fJcWwegfNwyMzIFWvLd4bhcbKQgPH88L+gEjdS7VNvapKmWzC+LzZ
 seulKXe0qOyWe5hJD6IwPJqGLzMRAQ8FjrdzehcqkmS7LDoqfWet0tBBcNoAOqC32EZG
 Fs8gtwLZGivn8GKBEJiybu97uGZOvP2r8JrgMlKtg5tmZSUfi3fOomiK/aD7OiHbQZFO
 hvkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=05/fn13tWdkuP2jbzLdgGVw/WPVOyHa3JR8tLqwyzyg=;
 b=i4OAi7BfSRbKJ1vWkdgsT/Bz6zLi6x3hRbyjmW0Y6DQVuPBi3yKEOW8aRs1DDFr8E1
 5rU1TSxhuLxj6RVExjBzcVQhmnXyeUQ2PS5dLFOURWLmEcjtS/v4+c+KnAqO7iNLa0A/
 rC0K2izBkYC0toLLK0tS+SIq/5G1Nl1M90pSARCv97DcGZ2lgU9sX0TOaYlM8xMFTegA
 JFDXaOk58H7gNgOg2bZW7nDN+m7TUKI2VpdoNifoAEwmW85D0f4np4/CwxbsMJjKt53N
 bvID3IzU8O3zDN5KqlsQEQnDhEE8A+Sfpf6EDj9wfeOeLU5sT5doJaQLEy01lQ0W7KkF
 pD6A==
X-Gm-Message-State: APjAAAUDFrZx8DmNieU/0zTPe8xyGzbLbKB/RBsTNBDguzN748oqq310
 7skqVbtzXCLV8LnBil3tyOStNA==
X-Google-Smtp-Source: APXvYqyJcEh6gRkxs2XmEjUhT7WtpVbEXsThoueWrn+2AeABP7BMNTr46Xt4OseylbuSsPp92cCbEQ==
X-Received: by 2002:a24:29cd:: with SMTP id p196mr8834303itp.116.1559150711673; 
 Wed, 29 May 2019 10:25:11 -0700 (PDT)
Received: from [192.168.1.196] ([216.160.37.230])
 by smtp.gmail.com with ESMTPSA id k18sm1255341itb.0.2019.05.29.10.25.10
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 29 May 2019 10:25:10 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
Subject: Re: Testing the recent RISC-V DT patchsets
From: Troy Benjegerdes <troy.benjegerdes@sifive.com>
In-Reply-To: <86woi94lvs.fsf@baylibre.com>
Date: Wed, 29 May 2019 12:25:09 -0500
Message-Id: <BC002AAE-7EE6-404D-9204-D10263BEA5C9@sifive.com>
References: <alpine.DEB.2.21.9999.1904221705170.18377@viisi.sifive.com>
 <alpine.DEB.2.21.9999.1905280105110.20842@viisi.sifive.com>
 <86o93mpqbx.fsf@baylibre.com>
 <20190528153542.jfkkwycyc3vu6hld@excalibur.cnev.de>
 <081611ea-a0d3-b0c9-3e08-8946513f2174@wdc.com> <86woi94lvs.fsf@baylibre.com>
To: Loys Ollivier <lollivier@baylibre.com>
X-Mailer: Apple Mail (2.3445.9.1)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_102513_770539_2D86533D 
X-CRM114-Status: GOOD (  20.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Karsten Merker <merker@debian.org>, Atish Patra <atish.patra@wdc.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Paul Walmsley <paul.walmsley@sifive.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Cgo+IE9uIE1heSAyOSwgMjAxOSwgYXQgNTowNCBBTSwgTG95cyBPbGxpdmllciA8bG9sbGl2aWVy
QGJheWxpYnJlLmNvbT4gd3JvdGU6Cj4gCj4gT24gV2VkIDI5IE1heSAyMDE5IGF0IDAwOjUwLCBB
dGlzaCBQYXRyYSA8YXRpc2gucGF0cmFAd2RjLmNvbT4gd3JvdGU6Cj4gCj4+IE9uIDUvMjgvMTkg
ODozNiBBTSwgS2Fyc3RlbiBNZXJrZXIgd3JvdGU6Cj4+PiBPbiBUdWUsIE1heSAyOCwgMjAxOSBh
dCAwNToxMDo0MlBNICswMjAwLCBMb3lzIE9sbGl2aWVyIHdyb3RlOgo+Pj4+IE9uIFR1ZSAyOCBN
YXkgMjAxOSBhdCAwMTozMiwgUGF1bCBXYWxtc2xleSA8cGF1bC53YWxtc2xleUBzaWZpdmUuY29t
PiB3cm90ZToKPj4+PiAKPj4+Pj4gQW4gdXBkYXRlIGZvciB0aG9zZSB0ZXN0aW5nIFJJU0MtViBw
YXRjaGVzOiBoZXJlJ3MgYSBuZXcgYnJhbmNoIG9mCj4+Pj4+IHJpc2N2LXBrL2JibCB0aGF0IGRv
ZXNuJ3QgdHJ5IHRvIHJlYWQgb3IgbW9kaWZ5IHRoZSBEVCBkYXRhIGF0IGFsbCwgd2hpY2gKPj4+
Pj4gc2hvdWxkIGJlIHVzZWZ1bCB1bnRpbCBVLUJvb3Qgc2V0dGxlcyBkb3duLgo+Pj4gWy4uLl0K
Pj4+Pj4gSGVyZSBpcyBhbiBMaW51eCBrZXJuZWwgYnJhbmNoIHdpdGggdXBkYXRlZCBEVCBkYXRh
IHRoYXQgY2FuIGJlIGJvb3RlZAo+Pj4+PiB3aXRoIHRoZSBhYm92ZSBib290bG9hZGVyOgo+Pj4+
PiAKPj4+Pj4gICAgaHR0cHM6Ly9naXRodWIuY29tL3NpZml2ZS9yaXNjdi1saW51eC90cmVlL2Rl
di9wYXVsdy9kdHMtdjUuMi1yYzEtZXhwZXJpbWVudGFsCj4+Pj4+IAo+Pj4+PiBBIHNhbXBsZSBi
b290IGxvZyBmb2xsb3dzLCB1c2luZyBhICdkZWZjb25maWcnIGJ1aWxkIGZyb20gdGhhdCBicmFu
Y2guCj4+Pj4gCj4+Pj4gVGhhbmtzIFBhdWwsIEkgY2FuIGNvbmZpcm0gdGhhdCBpdCB3b3Jrcy4K
Pj4+PiAKPj4+PiBTb21ldGhpbmcgaXMgc3RpbGwgdW5jbGVhciB0byBteXNlbGYuCj4+Pj4gVXNp
bmcgRlNCTCArIHJpc2N2LXBrL2JibCB0aGUgbGludXgga2VybmVsICsgZGV2aWNlIHRyZWUgYm9v
dHMuCj4+Pj4gTmVpdGhlciBGU0JMIG5vciByaXNjdi1way9iYmwgYXJlIG1vZGlmeWluZyB0aGUg
RFQuCj4+Pj4gCj4+Pj4gVXNpbmcgRlNCTCArIE9wZW5TQkkgKyBVLUJvb3QgdGhlIHNhbWUga2Vy
bmVsICsgZGV2aWNlIHRyZWUgaGFuZ3Mgb24KPj4+PiBydW5uaW5nIC9pbml0Lgo+Pj4+IAo+Pj4+
IFdvdWxkIHlvdSBoYXZlIGFueSBwb2ludGVyIG9uIHdoYXQgcmlzY3YtcGsgZG9lcyB0aGF0IE9w
ZW5TQkkvVS1ib290IGRvZXNuJ3QgPwo+Pj4+IE9yIG1heWJlIGl0IGlzIHRoZSBvdGhlciB3YXkg
YXJvdW5kIC0gT3BlblNCSS9VLWJvb3QgZG9lcyBzb21ldGhpbmcgdGhhdAo+Pj4+IGV4dHJhIHRo
YXQgc2hvdWxkIG5vdCBoYXBwZW4uCj4+PiAKPj4+IEhlbGxvLAo+Pj4gCj4+PiBJIGRvbid0IGtu
b3cgd2hpY2ggdmVyc2lvbiBvZiBPcGVuU0JJIHlvdSBhcmUgdXNpbmcsIGJ1dCB0aGVyZSBpcwo+
Pj4gYSBwcm9ibGVtIHdpdGggdGhlIGNvbWJpbmF0aW9uIG9mIGtlcm5lbCA1LjItcmMxIGFuZCBP
cGVuU0JJCj4+PiB2ZXJzaW9ucyBiZWZvcmUgY29tbWl0Cj4+PiAKPj4+ICAgaHR0cHM6Ly9naXRo
dWIuY29tL3Jpc2N2L29wZW5zYmkvY29tbWl0LzRlMmNkNDc4MjA4NTMxYzQ3MzQzMjkwZjE1YjU3
N2Q0MGM4MjY0OWMKPj4+IAo+Pj4gdGhhdCBjYW4gcmVzdWx0IGluIGEgaGFuZyBvbiBleGVjdXRp
bmcgaW5pdCwgc28gaW4gY2FzZSB5b3UKPj4+IHNob3VsZCBiZSB1c2luZyBhbiBvbGRlciBPcGVu
U0JJIGJ1aWxkIHRoYXQgbWlnaHQgYmUgdGhlIHNvdXJjZQo+Pj4gb2YgdGhlIHByb2JsZW0gdGhh
dCB5b3UgYXJlIGV4cGVyaWVuY2luZy4KPj4+IAo+Pj4gUmVnYXJkcywKPj4+IEthcnN0ZW4KPj4+
IAo+PiAKPj4gSSB2ZXJpZmllZCB0aGUgdXBkYXRlZCBEVCB3aXRoIHVwc3RyZWFtIGtlcm5lbCBm
b3IgdGhlIGJvb3QgZmxvdyBPcGVuU0JJIAo+PiArIFUtQm9vdCArIExpbnV4IG9yIE9wZW5TQkkg
KyBMaW51eC4KPj4gCj4+IE9wZW5TQkkgc2hvdWxkIGJlIGNvbXBpbGVkIGZvciBzaWZpdmUgcGxh
dGZvcm0gd2l0aCBmb2xsb3dpbmcgYWRkaXRpb25hbCAKPj4gYXJndW1lbnQKPj4gCj4+IEZXX1BB
WUxPQURfRkRUX1BBVEg9PGxpbnV4IGtlcm5lbCAKPj4gc291cmNlPi9hcmNoL3Jpc2N2L2Jvb3Qv
ZHRzL3NpZml2ZS9oaWZpdmUtdW5sZWFzaGVkLWEwMC5kdGIKPj4gCj4+IEZZSTogSXQgd2lsbCBv
bmx5IHdvcmsgd2hlbiBrZXJuZWwgaXMgZ2l2ZW4gYSBwYXlsb2FkIHRvIFUtQm9vdC9PcGVuU0JJ
IAo+PiBkaXJlY3RseS4KPj4gCj4gCj4gSHVtLCBJIGFtIHN1cnByaXNlZCBieSB0aGlzIHN0YXRl
bWVudC4KPiBJIHdhcyBhYmxlIHRvIHZlcmlmeSB0aGUgbGF0ZXN0IERUIHBhdGNoIHNlcmllIGZy
b20gUGF1bCB3aXRoOgo+IE9wZW5TQkkgKyBVLUJvb3QgKyBMaW51eCAmIERULgo+IAo+IEZvbGxv
d2luZyB0aGUgT3BlblNCSSBkb2N1bWVudGF0aW9uIFswXSB3aXRoIFUtQm9vdCBwYXlsb2FkOgo+
IEZXX1BBWUxPQURfUEFUSD08dS1ib290X2J1aWxkX2Rpcj4vdS1ib290LmJpbgo+IAo+IEkgZ2V0
IGFuIFUtQm9vdCBwcm9tcHQgYW5kIHRoZW4gSSBjYW4ganVzdCBsb2FkIHRoZSBsaW51eCBrZXJu
ZWwgYW5kCj4gZGV2aWNlIHRyZWUgZnJvbSB0aGUgbmV0d29yay4KPiAKPiBbMF06IGh0dHBzOi8v
Z2l0aHViLmNvbS9yaXNjdi9vcGVuc2JpL2Jsb2IvbWFzdGVyL2RvY3MvcGxhdGZvcm0vc2lmaXZl
X2Z1NTQwLm1kI2J1aWxkaW5nLXNpZml2ZS1mdTU0MC1wbGF0Zm9ybQo+IAoKQ291bGQgeW91IGNv
bmZpcm0gd2hpY2ggZ2l0IGhhc2ggb2YgVS1ib290IHlvdSBhcmUgYnVpbGRpbmcsIGFuZCB0aGF0
IHRoZSAuY29uZmlnIG1hdGNoZXMKdGhlIGRlZmNvbmZpZyAob3Igc2VuZCBtZSB0aGUgLmNvbmZp
ZyB5b3UgdXNlZCk/CgpJ4oCZZCBsaWtlIHRvIGdldCBldmVyeXRoaW5nIHRoYXTigJlzIHdvcmtp
bmcgaW50ZWdyYXRlZCBpbiBvbmUgcGxhY2UgaW50byBhIGZyZWVkb20tdS1zZGsgdGVzdCBicmFu
Y2guCgoKPj4gTmV0d29yayBib290aW5nIGlzIHN0aWxsIG5vdCB3b3JraW5nIGFzIHRoZSBjbG9j
ayBkcml2ZXIgcHJvYmUgZG9lc24ndCAKPj4gaGFwcGVuIGJlY2F1c2Ugb2YgdGhlIHVwZGF0ZWQg
RFQuCj4+IAo+PiAtLSAKPj4gUmVnYXJkcywKPj4gQXRpc2gKPiAKPiBfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IGxpbnV4LXJpc2N2IG1haWxpbmcgbGlz
dAo+IGxpbnV4LXJpc2N2QGxpc3RzLmluZnJhZGVhZC5vcmcKPiBodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJpc2N2CgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtcmlzY3YgbWFpbGluZyBsaXN0Cmxp
bnV4LXJpc2N2QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1yaXNjdgo=
