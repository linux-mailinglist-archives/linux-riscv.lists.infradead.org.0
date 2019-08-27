Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6469D9DD53
	for <lists+linux-riscv@lfdr.de>; Tue, 27 Aug 2019 07:50:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GSvFpmi6SWJWJ7E6kf2UTG8xL4qJB1xAhIzw0Swa8IY=; b=QczNgME3pffwFW
	aoSRiuxjEkflFTQ/2GTdR3Ti8Ko5dBYN9dAIYzm+wNI/IcfdUWSxo88SorYDhtVnIKeiRwUeH7tDW
	OH0D2TsLGCZ/XQp0pTuwkYO5WQiCwiO6lwKKbIT7BgUvoprcjdbFodzmVhYmaJ8cXAZD7188B8Hhx
	CupHBUmqBXXFt1k3RwzwLcR49rO1AX0WHQltJJg/lE7PPaLiNGb7rY9CQMJe4YFf1epAi3JM4epTh
	M32HE2Ot66pmUhxgrg6fsnWXQz66aJ/4UZkKRmKO2Z5Xo53htafy9fw1bF9K24CLMHg9uLKl0o+p3
	3a7S9QFTNaU/99Tal1Sw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2UNW-0005kW-Cv; Tue, 27 Aug 2019 05:50:50 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2UNS-0005jz-Ms
 for linux-riscv@lists.infradead.org; Tue, 27 Aug 2019 05:50:48 +0000
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com
 [209.85.128.41])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 52352217F5
 for <linux-riscv@lists.infradead.org>; Tue, 27 Aug 2019 05:50:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566885045;
 bh=lEHBj/Cp6miT8ilouSQBQV+Drh2QP6H67UOzw91mqwo=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=lL8wC7E1B7MGgDe++xI9cadBfd32jJKBaY969kCdvyVvo4kOUnAo+489m5uhoHWS+
 g2Bp0V+3nK8HAd/6qJDWmb3epzCBcDzO5XgZNwKdQYThPAfLwNa7BiDqs0avy6i1tw
 DPgY+OZ07gG6wANcZ/TSrJ+YNi+sq/QM28/dd5JA=
Received: by mail-wm1-f41.google.com with SMTP id p74so1648478wme.4
 for <linux-riscv@lists.infradead.org>; Mon, 26 Aug 2019 22:50:45 -0700 (PDT)
X-Gm-Message-State: APjAAAVED0Ypgp/TAsHhIvQvVfb0n2VUIb00zgCoKBpzvwPQENbexAPt
 vssdBskcmQyqawbk4imTryAV4XQGVGF5uYfBlos=
X-Google-Smtp-Source: APXvYqwNnyZZMDEOGiz8SGYVYZXNdNhhDNzfrrBN8JzCIZlhoSwkV5fBKob4EXAh2VIb2AdJGr8NL5kwPKqsobBp9lY=
X-Received: by 2002:a1c:1f4e:: with SMTP id f75mr25187337wmf.137.1566885043803; 
 Mon, 26 Aug 2019 22:50:43 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1566540652.git.han_mao@c-sky.com>
 <820d80272fc5627b8d00e684663a614470217606.1566540652.git.han_mao@c-sky.com>
 <CAEbi=3fbe9zbsLyfA=s9gHtAFJrp5Ox0jWoAqcZudQ_xODicgA@mail.gmail.com>
 <CAJF2gTS80XU=4z-_=N=oGV6GH-+8KXCa74DyhVMcRxJRBq5g4A@mail.gmail.com>
 <CAEbi=3dtDy=CMRagVrj0ihtpYqS+4NkK7eYmn6Gn=2bV9khWVg@mail.gmail.com>
In-Reply-To: <CAEbi=3dtDy=CMRagVrj0ihtpYqS+4NkK7eYmn6Gn=2bV9khWVg@mail.gmail.com>
From: Guo Ren <guoren@kernel.org>
Date: Tue, 27 Aug 2019 13:50:32 +0800
X-Gmail-Original-Message-ID: <CAJF2gTRePr9SbTv=1w80pHvWpywEQXaikO_TTAEPr2Brk6L3-A@mail.gmail.com>
Message-ID: <CAJF2gTRePr9SbTv=1w80pHvWpywEQXaikO_TTAEPr2Brk6L3-A@mail.gmail.com>
Subject: Re: [PATCH V5 1/3] riscv: Add perf callchain support
To: Greentime Hu <green.hu@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_225046_795073_9E86C192 
X-CRM114-Status: GOOD (  19.60  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-arch <linux-arch@vger.kernel.org>, Palmer Dabbelt <palmer@sifive.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Paul Walmsley <paul.walmsley@sifive.com>, greentime.hu@sifive.com,
 linux-riscv@lists.infradead.org, Christoph Hellwig <hch@lst.de>,
 Mao Han <han_mao@c-sky.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

V2UgbmVlZCBrbm93IHRoZSB2YWx1ZXMgb2YgKnJlZ3MsIGVnOiByZWdzLT5zZXBjLCByZWdzLT5y
YSwgcmVncy0+ZnAsCnJlZ3MtPnNwLCByZWdzLT50cAoKdm9pZCBwZXJmX2NhbGxjaGFpbl9rZXJu
ZWwoc3RydWN0IHBlcmZfY2FsbGNoYWluX2VudHJ5X2N0eCAqZW50cnksCiAgIHN0cnVjdCBwdF9y
ZWdzICpyZWdzKQp7Ci4uLgogd2Fsa19zdGFja2ZyYW1lKCZmciwgZW50cnkpOwoKLy8gTWF5IGJl
IHdlIGNvdWxkIGRldGVjdCBlcnJvciBoZXJlIGFuZCBwcmludCB0aGUgcmVncycgdmFsdWUKfQoK
T24gTW9uLCBBdWcgMjYsIDIwMTkgYXQgNDowMyBQTSBHcmVlbnRpbWUgSHUgPGdyZWVuLmh1QGdt
YWlsLmNvbT4gd3JvdGU6Cj4KPiBIaSBHdW8sCj4KPiBHdW8gUmVuIDxndW9yZW5Aa2VybmVsLm9y
Zz4g5pa8IDIwMTnlubQ45pyIMjTml6Ug6YCx5YWtIOS4iuWNiDg6NTTlr6vpgZPvvJoKPiA+Cj4g
PiBQbGVhc2UgY2hlY2sgQ09ORklHX0ZSQU1FX1BPSU5URVIKPiA+Cj4gPiAxICpmcmFtZSA9ICoo
KHN0cnVjdCBzdGFja2ZyYW1lICopZnJhbWUtPmZwIC0gMSk7Cj4gPiBUaGlzIGNvZGUgaXMgb3Jp
Z2lvbmFsbHkgZnJvbSByaXNjdi9rZXJuZWwvc3RhY2t0cmFjZS5jOiB3YWxrX3N0YWNrZnJhbWUK
PiA+Cj4gPiBJbiBsaW51eC9NYWtlZmlsZSBpdCdsbCBpbnZvbHZlIHRoZSBvcHRpb25zIGZvciBn
Y2MgdG8gZGVmaW5pdGVseQo+ID4gc3RvcmUgcmEgJiBwcmV2X2ZwIGluIGZwIHBvaW50ZXIuCj4g
PiBpZmRlZiBDT05GSUdfRlJBTUVfUE9JTlRFUgo+ID4gS0JVSUxEX0NGTEFHUyArPSAtZm5vLW9t
aXQtZnJhbWUtcG9pbnRlciAtZm5vLW9wdGltaXplLXNpYmxpbmctY2FsbHMKPiA+Cj4gPiBTbyAt
LWNhbGwtZ3JhcGggZnAgbmVlZCBkZXBlbmRzIG9uIENPTkZJR19GUkFNRV9QT0lOVEVSLgo+ID4K
Pgo+IEkgYW0gcHJldHR5IHN1cmUgQ09ORklHX0ZSQU1FX1BPSU5URVIgaXMgWQo+ICMgemNhdCAv
cHJvYy9jb25maWcuZ3ogfGdyZXAgQ09ORklHX0ZSQU1FX1BPSU5URVIKPiBDT05GSUdfRlJBTUVf
UE9JTlRFUj15Cj4KPiBUaGlzIGlzIG5vdCBnb2luZyB0byBnbyB3cm9uZyBldmVyeSB0aW1lLCB0
aGUgcHJvYmFiaWxpdHkgb2YgZXJyb3IgaXMKPiBhYm91dCBvbmUgdGVudGggb3Igb25lIHF1YXJ0
ZXIuIHJhbmRvbWx5Cj4gVGhlcmUgbWF5IGJlIHNvbWUgY29uZGl0aW9ucyB0aGF0IHdlIGhhdmUg
bm90IGNvbnNpZGVyZWQuCj4KPiBJIGFkZCBvbmUgbW9yZSBjb25kaXRpb24gdG8gY2hlY2sgaWYg
aXQgaXMgYSB2YWxpZCB2aXJ0dWFsIGFkZHJlc3MgYW5kCj4gaXQoIC4vcGVyZiByZWNvcmQgLWUg
Y3B1LWNsb2NrIC0tY2FsbC1ncmFwaCBmcCBscykgcGFzc2VzIDEwMDAgdGltZXMKPiB3aXRob3V0
IGZhaWx1cmUgaW4gVW5sZWFzaGVkIGJvYXJkIGJhc2VkIG9uIDUuMy1yYzUuCj4gSGVyZSBpcyBt
eSBwYXRjaC4gUGxlYXNlIGhhdmUgIGEgbG9vayBhdCBpdC4gSSBhbSBub3Qgc3VyZSBpZiBpdCBp
cyBhCj4gZ29vZCBzb2x1dGlvbi4KPgo+IGRpZmYgLS1naXQgYS9hcmNoL3Jpc2N2L2tlcm5lbC9w
ZXJmX2NhbGxjaGFpbi5jCj4gYi9hcmNoL3Jpc2N2L2tlcm5lbC9wZXJmX2NhbGxjaGFpbi5jCj4g
aW5kZXggZDc1ZDE1YzEzZGM3Li40NzE3OTQyNDM1ZGYgMTAwNjQ0Cj4gLS0tIGEvYXJjaC9yaXNj
di9rZXJuZWwvcGVyZl9jYWxsY2hhaW4uYwo+ICsrKyBiL2FyY2gvcmlzY3Yva2VybmVsL3BlcmZf
Y2FsbGNoYWluLmMKPiBAQCAtMTgsNiArMTgsOCBAQCBzdGF0aWMgaW50IHVud2luZF9mcmFtZV9r
ZXJuZWwoc3RydWN0IHN0YWNrZnJhbWUgKmZyYW1lKQo+ICAgICAgICAgICAgICAgICByZXR1cm4g
LUVQRVJNOwo+ICAgICAgICAgaWYgKGZyYW1lLT5mcCA8IENPTkZJR19QQUdFX09GRlNFVCkKPiAg
ICAgICAgICAgICAgICAgcmV0dXJuIC1FUEVSTTsKPiArICAgICAgIGlmICghdmlydF9hZGRyX3Zh
bGlkKGZyYW1lLT5mcCkpCj4gKyAgICAgICAgICAgICAgIHJldHVybiAtRVBFUk07Cj4KPiAgICAg
ICAgICpmcmFtZSA9ICooKHN0cnVjdCBzdGFja2ZyYW1lICopZnJhbWUtPmZwIC0gMSk7Cj4gICAg
ICAgICBpZiAoX19rZXJuZWxfdGV4dF9hZGRyZXNzKGZyYW1lLT5yYSkpIHsKPgo+IEl0IGNvdWxk
IGNhdGNoIGNhc2VzIGNhbGxlZCBpbiB0aGlzIHdheS4KPgo+IFsgMTM4MS45MzY1ODZdIGZyYW1l
LT5mcD06ZmZmZmZmZmYwMDU0NzU1MAo+IFsgMTM4Mi4wMzg1NDJdIENQVTogMSBQSUQ6IDEzNSBD
b21tOiBscyBOb3QgdGFpbnRlZAo+IDUuMy4wLXJjNS0wMDAwMy1nYjAwOGY2YmNkNjdjLWRpcnR5
ICMxNAo+IFsgMTM4Mi4zMDc0NDBdIENhbGwgVHJhY2U6Cj4gWyAxMzgyLjM4ODk0N10gWzxmZmZm
ZmZlMDAwMmEyZDhlPl0gd2Fsa19zdGFja2ZyYW1lKzB4MC8weDlhCj4gWyAxMzgyLjU2ODA1M10g
WzxmZmZmZmZlMDAwMmEyZjVhPl0gc2hvd19zdGFjaysweDJhLzB4MzQKPiBbIDEzODIuNzM1OTYw
XSBbPGZmZmZmZmUwMDA4M2RjZDY+XSBkdW1wX3N0YWNrKzB4NjIvMHg3Ywo+IFsgMTM4Mi45MDM4
NjNdIFs8ZmZmZmZmZTAwMDJhNDllMD5dIHBlcmZfY2FsbGNoYWluX2tlcm5lbCsweGQ4LzB4MTAy
Cj4gWyAxMzgzLjEwNjU1OF0gWzxmZmZmZmZlMDAwMzQwYTZlPl0gZ2V0X3BlcmZfY2FsbGNoYWlu
KzB4MTM2LzB4MWYyCj4gWyAxMzgzLjMwMzEyOF0gWzxmZmZmZmZlMDAwMzNkNDgwPl0gcGVyZl9j
YWxsY2hhaW4rMHg1Mi8weDZlCj4gWyAxMzgzLjQ4MjU1M10gWzxmZmZmZmZlMDAwMzNkNTBhPl0g
cGVyZl9wcmVwYXJlX3NhbXBsZSsweDZlLzB4NDc2Cj4gWyAxMzgzLjY3OTM1N10gWzxmZmZmZmZl
MDAwMzNkOTJlPl0gcGVyZl9ldmVudF9vdXRwdXRfZm9yd2FyZCsweDFjLzB4NTAKPiBbIDEzODMu
ODkwNjMzXSBbPGZmZmZmZmUwMDAzMzhiNGM+XSBfX3BlcmZfZXZlbnRfb3ZlcmZsb3crMHg2YS8w
eGE0Cj4gWyAxMzg0LjA5MDI3OV0gWzxmZmZmZmZlMDAwMzM4YzQwPl0gcGVyZl9zd2V2ZW50X2hy
dGltZXIrMHhiYS8weDEwNgo+IFsgMTM4NC4yOTAwOTRdIFs8ZmZmZmZmZTAwMDJmMzA3Yz5dIF9f
aHJ0aW1lcl9ydW5fcXVldWVzKzB4ODQvMHgxMDgKPiBbIDEzODQuNDg5Njk0XSBbPGZmZmZmZmUw
MDAyZjM2Yjg+XSBocnRpbWVyX2ludGVycnVwdCsweGNhLzB4MWNlCj4gWyAxMzg0LjY4MDk3NF0g
WzxmZmZmZmZlMDAwNzJmNTcyPl0gcmlzY3ZfdGltZXJfaW50ZXJydXB0KzB4MzIvMHgzYQo+IFsg
MTM4NC44ODA0NDldIFs8ZmZmZmZmZTAwMDg1NGIzND5dIGRvX0lSUSsweDY0LzB4YmUKPiBbIDEz
ODUuMDM2Njk4XSBbPGZmZmZmZmUwMDAyYTFjNWM+XSByZXRfZnJvbV9leGNlcHRpb24rMHgwLzB4
Ywo+Cj4gWzEzOTE1LjY5Nzk4OV0gZnJhbWUtPmZwPTpmZmZmZmZmZmZmZmZmMDAwCj4gWzEzOTE1
Ljc5OTkzN10gQ1BVOiAyIFBJRDogNjYzIENvbW06IGxzIE5vdCB0YWludGVkCj4gNS4zLjAtcmM1
LTAwMDAzLWdiMDA4ZjZiY2Q2N2MtZGlydHkgIzE0Cj4gWzEzOTE2LjA2ODgzMl0gQ2FsbCBUcmFj
ZToKPiBbMTM5MTYuMTUwMzgwXSBbPGZmZmZmZmUwMDAyYTJkOGU+XSB3YWxrX3N0YWNrZnJhbWUr
MHgwLzB4OWEKPiBbMTM5MTYuMzI5NDUwXSBbPGZmZmZmZmUwMDAyYTJmNWE+XSBzaG93X3N0YWNr
KzB4MmEvMHgzNAo+IFsxMzkxNi40OTczNjBdIFs8ZmZmZmZmZTAwMDgzZGNkNj5dIGR1bXBfc3Rh
Y2srMHg2Mi8weDdjCj4gWzEzOTE2LjY2NTI2NV0gWzxmZmZmZmZlMDAwMmE0OWUwPl0gcGVyZl9j
YWxsY2hhaW5fa2VybmVsKzB4ZDgvMHgxMDIKPiBbMTM5MTYuODY3OTQ5XSBbPGZmZmZmZmUwMDAz
NDBhNmU+XSBnZXRfcGVyZl9jYWxsY2hhaW4rMHgxMzYvMHgxZjIKPiBbMTM5MTcuMDY0NTI2XSBb
PGZmZmZmZmUwMDAzM2Q0ODA+XSBwZXJmX2NhbGxjaGFpbisweDUyLzB4NmUKPiBbMTM5MTcuMjQz
OTUwXSBbPGZmZmZmZmUwMDAzM2Q1MGE+XSBwZXJmX3ByZXBhcmVfc2FtcGxlKzB4NmUvMHg0NzYK
PiBbMTM5MTcuNDQwNzU5XSBbPGZmZmZmZmUwMDAzM2Q5MmU+XSBwZXJmX2V2ZW50X291dHB1dF9m
b3J3YXJkKzB4MWMvMHg1MAo+IFsxMzkxNy42NTIwMjFdIFs8ZmZmZmZmZTAwMDMzOGI0Yz5dIF9f
cGVyZl9ldmVudF9vdmVyZmxvdysweDZhLzB4YTQKPiBbMTM5MTcuODUxNjgzXSBbPGZmZmZmZmUw
MDAzMzhjNDA+XSBwZXJmX3N3ZXZlbnRfaHJ0aW1lcisweGJhLzB4MTA2Cj4gWzEzOTE4LjA1MTQ5
NF0gWzxmZmZmZmZlMDAwMmYzMDdjPl0gX19ocnRpbWVyX3J1bl9xdWV1ZXMrMHg4NC8weDEwOAo+
IFsxMzkxOC4yNTEwOTRdIFs8ZmZmZmZmZTAwMDJmMzZiOD5dIGhydGltZXJfaW50ZXJydXB0KzB4
Y2EvMHgxY2UKPiBbMTM5MTguNDQyMzc5XSBbPGZmZmZmZmUwMDA3MmY1NzI+XSByaXNjdl90aW1l
cl9pbnRlcnJ1cHQrMHgzMi8weDNhCj4gWzEzOTE4LjY0MTg0MF0gWzxmZmZmZmZlMDAwODU0YjM0
Pl0gZG9fSVJRKzB4NjQvMHhiZQo+IFsxMzkxOC43OTgwODJdIFs8ZmZmZmZmZTAwMDJhMWM1Yz5d
IHJldF9mcm9tX2V4Y2VwdGlvbisweDAvMHhjCgoKCi0tIApCZXN0IFJlZ2FyZHMKIEd1byBSZW4K
Ck1MOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9saW51eC1jc2t5LwoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtcmlzY3YgbWFpbGluZyBsaXN0
CmxpbnV4LXJpc2N2QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yaXNjdgo=
