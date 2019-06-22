Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EF5D4F328
	for <lists+linux-riscv@lfdr.de>; Sat, 22 Jun 2019 03:57:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UW3tNCbcO04j66jexr7q0ZBlWrw//uNkjtJY5Bf4mWk=; b=FeKS/OLJxPh4zv
	CLG7wuCpkR0472RGLwBF0g1QS/0EsRUc41ybORc7vGk44xCQJwPZnWdLKzAqJqROxSV5SJTcAtDmZ
	A2rH7JflY/S+9i9VH/NvJH9LFUlQvDf3E0N1sWTwQ6xdvzsKLFG8wvgWHsUCQtycGO5ujttI/vpZu
	GSXPpPISw+ThVOyUp6wXZ2GGDQ4ZNKzaRPBDmx5Y0v92X3Xb5lnIWFcWBAnajFZeBfg9VicNEwYSp
	XWvxeVDH4rsF03RJXqv5N2jFgu4CgMW/sG86vWOUuTcBBDqyDz4poEu6rrkwQfB0G7yVO6YWIMrkC
	tr88J/Exn7PP2LOM3V3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heVHG-0004HQ-5S; Sat, 22 Jun 2019 01:57:14 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heVHC-0004Ge-Ay
 for linux-riscv@lists.infradead.org; Sat, 22 Jun 2019 01:57:12 +0000
Received: by mail-io1-xd43.google.com with SMTP id w25so136299ioc.8
 for <linux-riscv@lists.infradead.org>; Fri, 21 Jun 2019 18:57:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=o9ja0i0Kug7ietEVv2OfLuys7cgqJI9m6rpk9IL0EUk=;
 b=HzBR0hn4KCWwDX+Vkzot/ZKRs4r5AauGDqMQCxOAxaV/MhiHj048asHssYNjzftB7I
 9h5aJdVoZLNHz2r9RYQr71i/16oAShL61RDEor+N8QsXWGviZshG+V5b5wy4UwP79xA1
 L8ZDzvZKqbl9Yc5wv1xUIbY8Isy4EQ0M+Hx9m8sUILe17JOaqb2SBV+s63asn6lychrC
 mmJARO+etSJ5No/l0NmFlOp8LtK0Z+x1YjlU2z/EaXahD/j/vuM/0HDt3cRmOxJ6EnlD
 ivo8a8uXQoLgN0E8iduwYPXl3CwmfbyqxlvytQ2Wnf/jbHaG5IjpBexaPqZSxopFKNYE
 5e2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=o9ja0i0Kug7ietEVv2OfLuys7cgqJI9m6rpk9IL0EUk=;
 b=twwlVkfPAAzvQKE/JnB5rWYt9LQgDkB930M7Vw3JiRnSD47dWif7x1XQiONOr9wG1n
 WVp+e3hEBMXFU4wZBvqDQ4PRTV+tN3Qpsl2iXun/dVTQcAFEwkkmxO8OKdO8uEpCWgv4
 lI3yIlnT6liT6TIEVQD0083iUx9dD5Z352it7Q0Rf1/TU7265MS1fJdDWTsE7yoNbyWj
 A0Oa/08FHV4Mr3MLZjLNOEc9wM2Ki0osdBB6UExiN0e2ePq/ksBQJF9zqyi61i043gvC
 3hkXPyxMV09kuztrjed7xQquZ76mCMjfCRvIrD4mTVu+wOoWHPaRNNMsrIOZo4igfW/N
 gthQ==
X-Gm-Message-State: APjAAAWl+3tdEYjgQZS+Jpz7TFO1UCWTGRH9BnvoD0vGm1782g4lYPTa
 aB/yzp0xlV9Ox2pLCZrJwHOwOw==
X-Google-Smtp-Source: APXvYqxWrlo+p2pAdyLS/a87FUfJYGiJuj5XLuLxdQKEXX0fzdDnTOccTpu5aGPdNY0/8gKuBBUkLA==
X-Received: by 2002:a02:c88e:: with SMTP id m14mr99834292jao.69.1561168629296; 
 Fri, 21 Jun 2019 18:57:09 -0700 (PDT)
Received: from [192.168.1.196] ([216.160.37.230])
 by smtp.gmail.com with ESMTPSA id x22sm5669166iob.84.2019.06.21.18.57.08
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 21 Jun 2019 18:57:08 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
Subject: Re: [PATCH v2] riscv: dts: Add DT node for SiFive FU540 Ethernet
 controller driver
From: Troy Benjegerdes <troy.benjegerdes@sifive.com>
In-Reply-To: <A3E7D245-ABFA-4D81-87D6-3F6983AA3A93@sifive.com>
Date: Fri, 21 Jun 2019 20:57:07 -0500
Message-Id: <54493821-0155-4826-B165-B75FBB329D1A@sifive.com>
References: <1561114429-29612-1-git-send-email-yash.shah@sifive.com>
 <1561114429-29612-2-git-send-email-yash.shah@sifive.com>
 <18c7992607dd1fed062bd295ac0738a759eff078.camel@wdc.com>
 <CAF5mof3QB8C7VjOyEvCsf9NEDkJhV3cBO5sBD+8z-GrWrnrAyg@mail.gmail.com>
 <3f91c8032e113a19dcec10ca71b017af1427ef7e.camel@wdc.com>
 <43da99709709d2a480b78f25356cda9255205372.camel@wdc.com>
 <A3E7D245-ABFA-4D81-87D6-3F6983AA3A93@sifive.com>
To: Atish Patra <Atish.Patra@wdc.com>
X-Mailer: Apple Mail (2.3445.9.1)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_185710_443359_9E42BCB9 
X-CRM114-Status: GOOD (  15.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>,
 "palmer@sifive.com" <palmer@sifive.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "sachin.ghadi@sifive.com" <sachin.ghadi@sifive.com>,
 "yash.shah@sifive.com" <yash.shah@sifive.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Cgo+IE9uIEp1biAyMSwgMjAxOSwgYXQgNzozMyBQTSwgVHJveSBCZW5qZWdlcmRlcyA8dHJveS5i
ZW5qZWdlcmRlc0BzaWZpdmUuY29tPiB3cm90ZToKPiAKPiAKPiAKPj4gT24gSnVuIDIxLCAyMDE5
LCBhdCA0OjU5IFBNLCBBdGlzaCBQYXRyYSA8QXRpc2guUGF0cmFAd2RjLmNvbT4gd3JvdGU6Cj4+
IAo+PiBPbiBGcmksIDIwMTktMDYtMjEgYXQgMTQ6NDYgLTA3MDAsIEF0aXNoIFBhdHJhIHdyb3Rl
Ogo+Pj4gT24gRnJpLCAyMDE5LTA2LTIxIGF0IDE0OjE4IC0wNTAwLCBUcm95IEJlbmplZ2VyZGVz
IHdyb3RlOgo+Pj4+IENhbiB5b3UgcG9zdCB0aGUgZnNibCBhbmQgb3RoZXIgaW1hZ2VzIHlvdSB1
c2VkIHRvIGJvb3QvdGVzdCB0aGlzPwo+Pj4+IAo+Pj4gCj4+IAo+PiBSZXNlbmRpbmcgaXQgd2l0
aG91dCB0aGUgYXR0YWNobWVudC4gT2J2aW91c2x5LCB0aGUgbWFpbCBkaWQgbm90IGdvCj4+IHRo
cm91Z2ggd2l0aCB0aGUgYmluYXJ5IGJsb2IgYXR0YWNoZWQgOiggOiguIE15IGJhZC4KPj4gCj4+
IExldCBtZSBrbm93IGlmIHlvdSBzdGlsbCB3YW50IG1lIHRvIHNoYXJlIHRoZSBiaW5hcnkgd2l0
aCB5b3UuIEkgd2lsbAo+PiBwcm9iYWJseSBzaGFyZSBpdCB2aWEgc29tZSBvdGhlciBtZXRob2Qu
Cj4gCj4gVGhlIGJsIGNhbWUgdGhyb3VnaCBhcyBpdCB3YXMgc2VudCBkaXJlY3QgdG8gbWUsIGFu
ZCBJIGNhbiBkZWFsIHdpdGgKPiB0aGUgdGZ0cCBjb25maWcgbWFudWFsbHkuIEkgaGF2ZSBhIGtl
cm5lbCBpbWFnZSwgYnV0IG5vdCB0aGUgYm9vdC5zY3IudWltZwo+IHRoYXQgaXQgbG9va3MgbGlr
ZSB5b3UgYXJlIHVzaW5nLiBJcyB0aGF0IGZyb20gWW9jdG8/CgpJIGdvdCBjb25zb2xlIG91dHB1
dCwgYWZ0ZXIgZXh0cmFjdGluZyB0aGUgYm9vdCBzY3JpcHQgZnJvbSB5b2N0by4KClRoZSBpbXBv
cnRhbnQgcGFydCBzZWVtcyB0byBiZSBjYWxsaW5nCuKAmGJvb3RtICRrZXJuZWxfYWRkcl9yIC0g
JGZkdF9hZGRyX3LigJkKCldoaWNoIG1heWJlIGxlYWRzIGludG8gYSBkaXNjdXNzaW9uIG9mIHdo
YXQgY2FuIHdlIGRvIHRvIGF0CmxlYXN0IG91dHB1dCBzb21lIHNvcnQgb2YgdXNlZnVsIGRlYnVn
IGluZm9ybWF0aW9uIGlmIHRoZSBkZXZpY2UKdHJlZSBpcyBub3QgZm91bmQgb3IgaW52YWxpZD8K
CknigJlkIGFsc28gbGlrZSB0byBwcm9wb3NlIHRoYXQgb24gUmlzY1YsIHdlIHVzZSB0aGUgY2hv
c2VuIG5vZGUKZm9yIGtlcm5lbCBjb21tYW5kIGxpbmUgYW5kIGluaXRyZCBsb2NhdGlvbiAobGlr
ZSBxZW11IGRvZXMpLCBhbmQKaW4gdS1ib290LCBkZWZhdWx0IHRvIGFsd2F5cyBwYXNzaW5nIHRo
ZSBkZXZpY2UgdHJlZSBmcm9tIGJvb3RtCmFuZCBvdGhlciBjb21tYW5kcyAobGlrZSBib290ZWxm
KQoKPiAKPj4gCj4+PiBJIGhhdmUgbm90IGNoYW5nZWQgZnNibC4gSXQncyB0aGUgZGVmYXVsdCBv
bmUgY2FtZSB3aXRoIHRoZSBib2FyZC4KPj4+IEhlcmUgYXJlIHRoZSBoZWFkcyBvZiBPcGVuU0JJ
ICsgVS1Cb290ICsgTGludXggcmVwby4KPj4+IAo+Pj4gT3BlblNCSTogY2QyZGZkYzg3MGVkICht
YXN0ZXIpCj4+PiBVLWJvb3Q6IDc3ZjZlMmRkMDU1MSArIEFudXAncyBwYXRjaCBzZXJpZXMgKHY0
KQo+Pj4gaHR0cHM6Ly9naXRodWIuY29tL2F0aXNocDA0L3UtYm9vdC90cmVlL3VubGVhc2hlZF93
b3JraW5nCj4+PiAKPj4+IExpbnV4OiBiZWQzYzBkODRlN2UgKyBZYXNoJ3MgTWFjYiBTZXJpZXMg
KyB0aGlzIHBhdGNoCj4+PiBodHRwczovL2dpdGh1Yi5jb20vYXRpc2hwMDQvbGludXgvdHJlZS81
LjItcmM2LXByZQo+Pj4gCj4+PiBJIGhhdmUgYWxzbyBhdHRhY2hlZCB0aGUgT3BlblNCSSArIFUt
Ym9vdCBiaW5hcnkgYXMgd2VsbC4gQnV0IHRoaXMgaXMKPj4+IHByZS1jb25maWd1cmVkIHdpdGgg
bXkgdGZ0cGJvb3Qgc2VydmVyLiBZb3UgbmVlZCB0byBjaGFuZ2UgdGhhdC4KPj4+IAo+Pj4+IEkg
a2VlcCBydW5uaW5nIGludG8gdmFyaW91cyBmYWlsdXJlcyB3aGVuIEkgYnVpbGQgZnJvbSBzb3Vy
Y2UgYW5kIEkKPj4+PiB3YW50IHRvIHJ1bGUgb3V0IHBvdGVudGlhbCBoYXJkd2FyZSBpc3N1ZXMg
cmVsYXRlZCB0byBjbG9jayBhbmQvb3IKPj4+PiBkZHIgaW5pdGlhbGl6YXRpb24KPj4+PiAKPj4+
PiBPbiBGcmksIEp1biAyMSwgMjAxOSwgMjoxNCBQTSBBdGlzaCBQYXRyYSA8QXRpc2guUGF0cmFA
d2RjLmNvbT4KPj4+PiB3cm90ZToKPj4+Pj4gT24gRnJpLCAyMDE5LTA2LTIxIGF0IDE2OjIzICsw
NTMwLCBZYXNoIFNoYWggd3JvdGU6Cj4+Pj4+PiBEVCBub2RlIGZvciBTaUZpdmUgRlU1NDAtQzAw
MCBHRU1HWEwgRXRoZXJuZXQgY29udHJvbGxlciBkcml2ZXIKPj4+Pj4gYWRkZWQKPj4+Pj4+IFNp
Z25lZC1vZmYtYnk6IFlhc2ggU2hhaCA8eWFzaC5zaGFoQHNpZml2ZS5jb20+Cj4+Pj4+PiAtLS0K
Pj4+Pj4+IGFyY2gvcmlzY3YvYm9vdC9kdHMvc2lmaXZlL2Z1NTQwLWMwMDAuZHRzaSAgICAgICAg
ICB8IDE2Cj4+Pj4+PiArKysrKysrKysrKysrKysrCj4+Pj4+PiBhcmNoL3Jpc2N2L2Jvb3QvZHRz
L3NpZml2ZS9oaWZpdmUtdW5sZWFzaGVkLWEwMC5kdHMgfCAgOQo+Pj4+PiArKysrKysrKysKPj4+
Pj4+IDIgZmlsZXMgY2hhbmdlZCwgMjUgaW5zZXJ0aW9ucygrKQo+Pj4+Pj4gCj4+Pj4+PiBkaWZm
IC0tZ2l0IGEvYXJjaC9yaXNjdi9ib290L2R0cy9zaWZpdmUvZnU1NDAtYzAwMC5kdHNpCj4+Pj4+
PiBiL2FyY2gvcmlzY3YvYm9vdC9kdHMvc2lmaXZlL2Z1NTQwLWMwMDAuZHRzaQo+Pj4+Pj4gaW5k
ZXggNGU4ZmJkZS4uYzUzYjRlYSAxMDA2NDQKPj4+Pj4+IC0tLSBhL2FyY2gvcmlzY3YvYm9vdC9k
dHMvc2lmaXZlL2Z1NTQwLWMwMDAuZHRzaQo+Pj4+Pj4gKysrIGIvYXJjaC9yaXNjdi9ib290L2R0
cy9zaWZpdmUvZnU1NDAtYzAwMC5kdHNpCj4+Pj4+PiBAQCAtMjI1LDUgKzIyNSwyMSBAQAo+Pj4+
Pj4gICAgICAgICAgICAgICAgICAgICAjYWRkcmVzcy1jZWxscyA9IDwxPjsKPj4+Pj4+ICAgICAg
ICAgICAgICAgICAgICAgI3NpemUtY2VsbHMgPSA8MD47Cj4+Pj4+PiAgICAgICAgICAgICB9Owo+
Pj4+Pj4gKyAgICAgICAgICAgICBldGgwOiBldGhlcm5ldEAxMDA5MDAwMCB7Cj4+Pj4+PiArICAg
ICAgICAgICAgICAgICAgICAgY29tcGF0aWJsZSA9ICJzaWZpdmUsZnU1NDAtbWFjYiI7Cj4+Pj4+
PiArICAgICAgICAgICAgICAgICAgICAgaW50ZXJydXB0LXBhcmVudCA9IDwmcGxpYzA+Owo+Pj4+
Pj4gKyAgICAgICAgICAgICAgICAgICAgIGludGVycnVwdHMgPSA8NTM+Owo+Pj4+Pj4gKyAgICAg
ICAgICAgICAgICAgICAgIHJlZyA9IDwweDAgMHgxMDA5MDAwMCAweDAgMHgyMDAwCj4+Pj4+PiAr
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIDB4MCAweDEwMGEwMDAwIDB4MCAweDEwMDA+Owo+
Pj4+Pj4gKyAgICAgICAgICAgICAgICAgICAgIHJlZy1uYW1lcyA9ICJjb250cm9sIjsKPj4+Pj4+
ICsgICAgICAgICAgICAgICAgICAgICBzdGF0dXMgPSAiZGlzYWJsZWQiOwo+Pj4+Pj4gKyAgICAg
ICAgICAgICAgICAgICAgIGxvY2FsLW1hYy1hZGRyZXNzID0gWzAwIDAwIDAwIDAwIDAwIDAwXTsK
Pj4+Pj4+ICsgICAgICAgICAgICAgICAgICAgICBjbG9jay1uYW1lcyA9ICJwY2xrIiwgImhjbGsi
Owo+Pj4+Pj4gKyAgICAgICAgICAgICAgICAgICAgIGNsb2NrcyA9IDwmcHJjaSBQUkNJX0NMS19H
RU1HWExQTEw+LAo+Pj4+Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDwmcHJjaSBQ
UkNJX0NMS19HRU1HWExQTEw+Owo+Pj4+Pj4gKyAgICAgICAgICAgICAgICAgICAgICNhZGRyZXNz
LWNlbGxzID0gPDE+Owo+Pj4+Pj4gKyAgICAgICAgICAgICAgICAgICAgICNzaXplLWNlbGxzID0g
PDA+Owo+Pj4+Pj4gKyAgICAgICAgICAgICB9Owo+Pj4+Pj4gKwo+Pj4+Pj4gICAgIH07Cj4+Pj4+
PiB9Owo+Pj4+Pj4gZGlmZiAtLWdpdCBhL2FyY2gvcmlzY3YvYm9vdC9kdHMvc2lmaXZlL2hpZml2
ZS11bmxlYXNoZWQtCj4+Pj4+PiBhMDAuZHRzCj4+Pj4+PiBiL2FyY2gvcmlzY3YvYm9vdC9kdHMv
c2lmaXZlL2hpZml2ZS11bmxlYXNoZWQtYTAwLmR0cwo+Pj4+Pj4gaW5kZXggNGRhODg3MC4uZDc4
M2JmMiAxMDA2NDQKPj4+Pj4+IC0tLSBhL2FyY2gvcmlzY3YvYm9vdC9kdHMvc2lmaXZlL2hpZml2
ZS11bmxlYXNoZWQtYTAwLmR0cwo+Pj4+Pj4gKysrIGIvYXJjaC9yaXNjdi9ib290L2R0cy9zaWZp
dmUvaGlmaXZlLXVubGVhc2hlZC1hMDAuZHRzCj4+Pj4+PiBAQCAtNjMsMyArNjMsMTIgQEAKPj4+
Pj4+ICAgICAgICAgICAgIGRpc2FibGUtd3A7Cj4+Pj4+PiAgICAgfTsKPj4+Pj4+IH07Cj4+Pj4+
PiArCj4+Pj4+PiArJmV0aDAgewo+Pj4+Pj4gKyAgICAgc3RhdHVzID0gIm9rYXkiOwo+Pj4+Pj4g
KyAgICAgcGh5LW1vZGUgPSAiZ21paSI7Cj4+Pj4+PiArICAgICBwaHktaGFuZGxlID0gPCZwaHkx
PjsKPj4+Pj4+ICsgICAgIHBoeTE6IGV0aGVybmV0LXBoeUAwIHsKPj4+Pj4+ICsgICAgICAgICAg
ICAgcmVnID0gPDA+Owo+Pj4+Pj4gKyAgICAgfTsKPj4+Pj4+ICt9Owo+Pj4+PiAKPj4+Pj4gVGhh
bmtzLiBJIGFtIGFibGUgdG8gYm9vdCBVbmxlYXNoZWQgd2l0aCBuZXR3b3JraW5nIGVuYWJsZWQg
d2l0aAo+Pj4+PiB0aGlzCj4+Pj4+IHBhdGNoLgo+Pj4+PiAKPj4+Pj4gRldJVywgCj4+Pj4+IFRl
c3RlZC1ieTogQXRpc2ggUGF0cmEgPGF0aXNoLnBhdHJhQHdkYy5jb20+Cj4+Pj4+IAo+Pj4+PiBS
ZWdhcmRzLAo+Pj4+PiBBdGlzaAo+Pj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwo+Pj4+PiBsaW51eC1yaXNjdiBtYWlsaW5nIGxpc3QKPj4+Pj4gbGlu
dXgtcmlzY3ZAbGlzdHMuaW5mcmFkZWFkLm9yZwo+Pj4+PiBodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJpc2N2Cj4gCgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtcmlzY3YgbWFpbGluZyBsaXN0Cmxp
bnV4LXJpc2N2QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1yaXNjdgo=
