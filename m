Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BF642EAC3
	for <lists+linux-riscv@lfdr.de>; Thu, 30 May 2019 04:42:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Mime-Version:Message-ID:To:From:In-Reply-To:Subject:
	Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	 bh=sMvc3S/NGxuZITqA0On9IhcqT5rAOAYtsIIxNqoIuq4=; b=ri65xgIeOX7LcP23zCWoJXx6K
	p8gY9T7+RXt2ld/Zk43U7yhHRKvHLtwmla1Q0kLiYeDRbG6KV/xtZvTi8Pyr+b6fvpYP9swjiXyGy
	5rllF/02H5KcD5SQH0jNFBMnBHwXGfEMceOFZkC31GOkhwUqrKgdVx6Zoq8r/1Jdh+7dUJ9WIfnVb
	ag9MipgvPrH1u/9zQgw0/u27d4r9OR2yCdWgpnoFa2543btEr6ZjBjderZ7IhjggVj19jlK0jaHEA
	KJy19gouEN0/IkhTfGL13a4VeFcli5o16GXkkz/6lUS2RRO7Dce+UFErxnEek/ebWA67C8roXMmPU
	Erg/Eo7BQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWB1a-0004sb-B2; Thu, 30 May 2019 02:42:38 +0000
Received: from mail-pf1-f193.google.com ([209.85.210.193])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWB1X-0004sH-1g
 for linux-riscv@lists.infradead.org; Thu, 30 May 2019 02:42:36 +0000
Received: by mail-pf1-f193.google.com with SMTP id g9so2915700pfo.11
 for <linux-riscv@lists.infradead.org>; Wed, 29 May 2019 19:42:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=KpcFXbFBwLxCGyy/Jk49fis3KZuLGYD4HsSFk6V42fk=;
 b=qFdTwPfOnxcFeCt7WYfYWEqWbTtHrR4Gqru/Facfs709jzBHjo/SsIsLzcjaY7Zq69
 eAlCVIgkk/RZpxK+aZiOFKfkzNVOzA/zlyujbxjRnmTyBk5yUTOjyTANy176kTJD91p5
 egOiSVhS0ecbYo/UlSv4KGjjLZg2Yj2mYubRolq5/miJJGNxa+eVmTxI8g3GwWgkPH0f
 vCoGd/lxDrnnlcreR8esNIYui4LugHN4SL8cvN9FrEe+LNbZJIQ0GS7KlRM0ftkErIRG
 ph0aM4rnT0vzf8nGuPH8C5QZn0Y90VXFszqMF4Ll+BsmifBx31wGgZXaYOhxGuBmPvdW
 m0MQ==
X-Gm-Message-State: APjAAAUbI7c8XEQauJm88Hp4Sdq0EEkjISW4e2uu9296uX+hVtPamMXz
 Lg/2trT9G54NjTqaWjQoZZymnw==
X-Google-Smtp-Source: APXvYqyMgSr8zbcysyqaP52vbPviSt9ykqRZ6sLQ4REBy1M6NY8HNtd2bruAoXR44eoyah/GzDNUJA==
X-Received: by 2002:a62:ea0a:: with SMTP id t10mr1228321pfh.236.1559184153533; 
 Wed, 29 May 2019 19:42:33 -0700 (PDT)
Received: from localhost ([12.206.222.5])
 by smtp.gmail.com with ESMTPSA id b90sm363054pjc.0.2019.05.29.19.42.32
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 29 May 2019 19:42:32 -0700 (PDT)
Date: Wed, 29 May 2019 19:42:32 -0700 (PDT)
X-Google-Original-Date: Wed, 29 May 2019 19:42:12 PDT (-0700)
Subject: Re: [PATCH 2/2] net: macb: Add support for SiFive FU540-C000
In-Reply-To: <20190524134847.GF2979@lunn.ch>
From: Palmer Dabbelt <palmer@sifive.com>
To: andrew@lunn.ch
Message-ID: <mhng-c7fba225-8035-4808-bdd6-bc05da5d2674@palmer-si-x1e>
Mime-Version: 1.0 (MHng)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_194235_081930_03FF2363 
X-CRM114-Status: GOOD (  15.29  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.193 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.193 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, aou@eecs.berkeley.edu,
 davem@davemloft.net, netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 nicolas.ferre@microchip.com, Sachin Ghadi <sachin.ghadi@sifive.com>,
 yash.shah@sifive.com, robh+dt@kernel.org,
 Paul Walmsley <paul.walmsley@sifive.com>, ynezz@true.cz,
 linux-riscv@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

T24gRnJpLCAyNCBNYXkgMjAxOSAwNjo0ODo0NyBQRFQgKC0wNzAwKSwgYW5kcmV3QGx1bm4uY2gg
d3JvdGU6Cj4gT24gRnJpLCBNYXkgMjQsIDIwMTkgYXQgMTA6MjI6MDZBTSArMDUzMCwgWWFzaCBT
aGFoIHdyb3RlOgo+PiBPbiBUaHUsIE1heSAyMywgMjAxOSBhdCA4OjI0IFBNIEFuZHJldyBMdW5u
IDxhbmRyZXdAbHVubi5jaD4gd3JvdGU6Cj4+ID4KPj4gPiA+ICtzdGF0aWMgaW50IGZ1NTQwX21h
Y2JfdHhfc2V0X3JhdGUoc3RydWN0IGNsa19odyAqaHcsIHVuc2lnbmVkIGxvbmcgcmF0ZSwKPj4g
PiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgdW5zaWduZWQgbG9uZyBwYXJlbnRf
cmF0ZSkKPj4gPiA+ICt7Cj4+ID4gPiArICAgICByYXRlID0gZnU1NDBfbWFjYl90eF9yb3VuZF9y
YXRlKGh3LCByYXRlLCAmcGFyZW50X3JhdGUpOwo+PiA+ID4gKyAgICAgaW93cml0ZTMyKHJhdGUg
IT0gMTI1MDAwMDAwLCBtZ210LT5yZWcpOwo+PiA+Cj4+ID4gVGhhdCBsb29rcyBvZGQuIFdyaXRp
bmcgdGhlIHJlc3VsdCBvZiBhIGNvbXBhcmlzb24gdG8gYSByZWdpc3Rlcj8KPj4KPj4gVGhlIGlk
ZWEgd2FzIHRvIHdyaXRlICIxIiB0byB0aGUgcmVnaXN0ZXIgaWYgdGhlIHZhbHVlIG9mIHJhdGUg
aXMKPj4gYW55dGhpbmcgZWxzZSB0aGFuIDEyNTAwMDAwMC4KPgo+IEknbSBub3QgYSBsYW5ndWFn
ZSBsYXd5ZXIuIElzIGl0IGd1YXJhbnRlZWQgdGhhdCBhbiBleHByZXNzaW9uIGxpa2UKPiB0aGlz
IHJldHVybnMgMT8gQW55IHZhbHVlICEwIGlzIHRydWUsIHNvIG1heWJlIGl0IGFjdHVhbGx5IHJl
dHVybnMgNDI/CgpGcm9tIFN0YWNrIE92ZXJmbG93OiBodHRwczovL3N0YWNrb3ZlcmZsb3cuY29t
L3F1ZXN0aW9ucy8xODA5NzkyMi9yZXR1cm4tdmFsdWUtb2Ytb3BlcmF0b3ItaW4tYwoKIkMxMShJ
U08vSUVDIDk4OTk6MjAxeCkgwqc2LjUuOCBSZWxhdGlvbmFsIG9wZXJhdG9ycwoKRWFjaCBvZiB0
aGUgb3BlcmF0b3JzIDwgKGxlc3MgdGhhbiksID4gKGdyZWF0ZXIgdGhhbiksIDw9IChsZXNzIHRo
YW4gb3IgZXF1YWwKdG8pLCBhbmQgPj0gKGdyZWF0ZXIgdGhhbiBvciBlcXVhbCB0bykgc2hhbGwg
eWllbGQgMSBpZiB0aGUgc3BlY2lmaWVkIHJlbGF0aW9uCmlzIHRydWUgYW5kIDAgaWYgaXQgaXMg
ZmFsc2UuIFRoZSByZXN1bHQgaGFzIHR5cGUgaW50LiIKCj4+IFRvIG1ha2UgaXQgZWFzaWVyIHRv
IHJlYWQsIEkgd2lsbCBjaGFuZ2UgdGhpcyB0byBiZWxvdzoKPj4gICAgIC0gaW93cml0ZTMyKHJh
dGUgIT0gMTI1MDAwMDAwLCBtZ210LT5yZWcpOwo+PiAgICAgKyBpZiAocmF0ZSAhPSAxMjUwMDAw
MDApCj4+ICAgICArICAgICBpb3dyaXRlMzIoMSwgbWdtdC0+cmVnKTsKPj4gICAgICsgZWxzZQo+
PiAgICAgKyAgICAgaW93cml0ZTMyKDAsIG1nbXQtPnJlZyk7Cj4+Cj4+IEhvcGUgdGhhdCdzIGZp
bmUuIFRoYW5rcyBmb3IgeW91ciBjb21tZW50Cj4KPiBZZXMsIHRoYXQgaXMgZ29vZC4KPgo+ICAg
ICAgQW5kcmV3CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpsaW51eC1yaXNjdiBtYWlsaW5nIGxpc3QKbGludXgtcmlzY3ZAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJpc2N2
Cg==
