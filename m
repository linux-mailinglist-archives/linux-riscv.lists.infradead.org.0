Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D10C42A550
	for <lists+linux-riscv@lfdr.de>; Sat, 25 May 2019 18:25:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I98+AAjXCOFsADBDoeltKzyrOz4D7vSkOUdj/y3otpc=; b=r9mTGQHM90uWww
	txcuY/L9z8hgEk00/54cQCDSk/M9f/Le0ha/FRH5spfAKVvgcmDWpSOpgA/iq7p/9+SFwlM9QfooG
	IxeGzhnLMw/OFNU+c2ZiygC+XLcsKBgqvlw9+Ua0COhvbPZ0MVmdXrI9U+GM997VTzbslMZcrHPxs
	uXOE+c+6/oURLjekijnR8/P9bjvqxJJqMq6O1HeWUjEGn6NBbcINi4dXnC/EPxhyX1U+6+oCJOxUS
	x24oun8eTh996qdsqTJOiIUGxeahC1dZxk+qZqEH9DQ3R/lR+135oVHoYkLP+UivtOHLckPIL1b2a
	mlrRdkrkgRmJiqUlfnuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUZTh-0007n5-F0; Sat, 25 May 2019 16:25:01 +0000
Received: from mail-it1-x141.google.com ([2607:f8b0:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUZSS-00063P-Cu
 for linux-riscv@lists.infradead.org; Sat, 25 May 2019 16:23:46 +0000
Received: by mail-it1-x141.google.com with SMTP id 9so18283132itf.4
 for <linux-riscv@lists.infradead.org>; Sat, 25 May 2019 09:23:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=eDdJn4g0MINmWk3y54ApYJhJcgvIb7PoBWFOAa3eXVI=;
 b=iuaWj/1dkJwqq6lEZY/8laaZix00RSsaFzITMpdOXSz9LkyWzwnD1nApzlLF0YD1f5
 o52eYs5lwbc36aPfKHHZRlFd0jriX5QOmgzsdn7u8O6cyOytJg7ef4bVIVy44tdFnblC
 xN98X4pR9D4z+XhpnqSiWOVpsuVsT2As4yFZUVNPoi8IhZMH6J6OkVX/17XZHqIAxJFv
 cU4fz/mmDEZcPItUXsZVhAzL1TTxoj+gQYpaIpEONXEAv3vzMwOTNETImX/fkK6gr+pX
 GeSjixytzPJ13sPReVhIR6IHNVaPg+184S9zkfL+hXcZIToUYJL7XnKoRmiDunv2UWjq
 E/3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=eDdJn4g0MINmWk3y54ApYJhJcgvIb7PoBWFOAa3eXVI=;
 b=o9i7Qkuftxt+6tpGp8rKMUJu/n7z74hXtcr6VvQSbkieogwy/Q8mc1HgR4A6Hhi60l
 i/KhnzxkvHEwJTHX7tvLYX6Imb//S3f5ojN1kWc80OzvHE+PhI4P/v7MK0xAiXYYAf1L
 3it1GjTvdyXndP/I5yweDHeT2qX80GTuSN7ZTnNsI0ysB+F92toQvYSNTmCfute0UGkC
 9A7Q8a657RK1lrbjBXOLiz2Fp0pKhJuMbvA8gCMEBP/gBGSYul6M8Nq0kQWlNhW+zwtf
 0/VXIsedefwbLhp3nVDWvaneqaXuTvsvk9NqwUDXI6eSms342AFLsz7i+Taly4OTVb5G
 RYiw==
X-Gm-Message-State: APjAAAV6h5BMCneZcoagI/1GlIVz7fPd1jGq2MXE1UKRgQhVqfEb79vT
 UD8oUBhPKIlbjWWqN83400+/VaKBK9w=
X-Google-Smtp-Source: APXvYqx4bR+YkLSXGdltdvaFZLEz/m0cys+/o+sOxollNgpOIOA66jbk3hMv2hqzURH4L2jesXfc5Q==
X-Received: by 2002:a02:228f:: with SMTP id o137mr71514059jao.39.1558801423243; 
 Sat, 25 May 2019 09:23:43 -0700 (PDT)
Received: from [192.168.62.194] (71-34-182-131.desm.qwest.net. [71.34.182.131])
 by smtp.gmail.com with ESMTPSA id k78sm2737751itb.10.2019.05.25.09.23.42
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 25 May 2019 09:23:42 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
Subject: Re: 5.2-rc1 boot on Unleashed
From: Troy Benjegerdes <troy.benjegerdes@sifive.com>
In-Reply-To: <MN2PR04MB606103F231BC76C345446A858D030@MN2PR04MB6061.namprd04.prod.outlook.com>
Date: Sat, 25 May 2019 11:23:40 -0500
Message-Id: <E5768027-0690-449C-91E7-BD9CBC78B0B2@sifive.com>
References: <5c1ffb76-b18a-dbae-d3ad-f3d2cd41ee44@wdc.com>
 <alpine.DEB.2.21.9999.1905220942040.20842@viisi.sifive.com>
 <db248e63-c0bc-7fd8-cf2d-d13c8f140036@wdc.com>
 <alpine.DEB.2.21.9999.1905221334460.23235@viisi.sifive.com>
 <8F4FB234-FD5B-4AD6-99BD-57A40A79A024@sifive.com>
 <aac8c9b2-1b8d-e87d-88a5-f13222004a88@wdc.com>
 <2818D3E3-3BDB-442B-822D-0FD221BCCA05@sifive.com>
 <b59c5bba240ef42f90ec26f8588a444391df02c2.camel@aisec.fraunhofer.de>
 <CC10BC34-0799-45D8-980F-804170CF818B@sifive.com>
 <1b70dc1f-c45f-dc04-f3af-f4a2b463d216@wdc.com>
 <CAF5mof3_PSwpsSMnjMALpfvmOPdeAgDLa2p6jp4y+Hmas83mbw@mail.gmail.com>
 <8c02365af7f3bfbb952ba298ee588dab66f71349.camel@aisec.fraunhofer.de>
 <MN2PR04MB606103F231BC76C345446A858D030@MN2PR04MB6061.namprd04.prod.outlook.com>
To: Anup Patel <Anup.Patel@wdc.com>
X-Mailer: Apple Mail (2.3445.9.1)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190525_092344_742517_5B201ACE 
X-CRM114-Status: GOOD (  13.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "jamez@wit.com" <jamez@wit.com>, "palmer@sifive.com" <palmer@sifive.com>,
 Atish Patra <Atish.Patra@wdc.com>, "Auer,
 Lukas" <lukas.auer@aisec.fraunhofer.de>,
 "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "jcarr@wit.com" <jcarr@wit.com>,
 "bjorn.topel@gmail.com" <bjorn.topel@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Cgo+IE9uIE1heSAyNCwgMjAxOSwgYXQgMTA6NDkgUE0sIEFudXAgUGF0ZWwgPEFudXAuUGF0ZWxA
d2RjLmNvbT4gd3JvdGU6Cj4gCj4gCj4gCj4+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tCj4+
IEZyb206IEF1ZXIsIEx1a2FzIDxsdWthcy5hdWVyQGFpc2VjLmZyYXVuaG9mZXIuZGU+Cj4+IFNl
bnQ6IFNhdHVyZGF5LCBNYXkgMjUsIDIwMTkgMzowNSBBTQo+PiBUbzogQXRpc2ggUGF0cmEgPEF0
aXNoLlBhdHJhQHdkYy5jb20+OyB0cm95LmJlbmplZ2VyZGVzQHNpZml2ZS5jb20KPj4gQ2M6IHBh
dWwud2FsbXNsZXlAc2lmaXZlLmNvbTsgbGludXgtcmlzY3ZAbGlzdHMuaW5mcmFkZWFkLm9yZzsK
Pj4gamFtZXpAd2l0LmNvbTsgcGFsbWVyQHNpZml2ZS5jb207IEFudXAgUGF0ZWwgPEFudXAuUGF0
ZWxAd2RjLmNvbT47Cj4+IGJqb3JuLnRvcGVsQGdtYWlsLmNvbTsgamNhcnJAd2l0LmNvbQo+PiBT
dWJqZWN0OiBSZTogNS4yLXJjMSBib290IG9uIFVubGVhc2hlZAo+PiAKPj4gT24gRnJpLCAyMDE5
LTA1LTI0IGF0IDEzOjQ4IC0wNTAwLCBUcm95IEJlbmplZ2VyZGVzIHdyb3RlOgo+Pj4gV291bGQg
YSByZWFzb25hYmxlIGFuc3dlciBiZSB0d28gZGV2aWNlIHRyZWVzLCBvbmUgZm9yIE0tbW9kZSBh
bmQKPj4gYW5vdGhlciBmb3IgUy1tb2RlPwo+Pj4gCj4+PiBUaGlzIHdvdWxkIGxldCB1cyBlYXNp
bHkga2VlcCBzeW5jZWQgd2l0aCB0aGUga2VybmVsIHZlcnNpb24KPj4+IAo+PiAKPj4gVGhhdCBt
YWtlcyBzZW5zZSwgSSB3YXNuJ3QgYXdhcmUgb2YgdGhlIEREUiBpbml0IGRhdGEgaW4gdGhlIGRl
dmljZSB0cmVlLiBJdCdzCj4+IGdyZWF0IHRvIHNlZSB0aGF0IHlvdSBhcmUgd29ya2luZyBvbiBh
ZGRpbmcgc3VwcG9ydCBmb3IgdGhlIEREUiBjb250cm9sbGVyIHRvCj4+IFUtQm9vdCEKPj4gCj4+
IFRoYXQgd291bGQgd29yaywgYnV0IHByb2JhYmx5IHRha2VzIG1vcmUgZWZmb3J0IHRvIG1haW50
YWluIHRoYW4gaXMgbmVlZGVkLgo+PiBGb3Igc2l0dWF0aW9ucyBsaWtlIHRoaXMsIHdoZXJlIHRo
ZSBVLUJvb3QgZGV2aWNlIHRyZWUgcmVxdWlyZXMgYSBmZXcKPj4gYWRkaXRpb25hbCBlbnRyaWVz
IGNvbXBhcmVkIHdpdGggdGhlIGtlcm5lbCBkZXZpY2UgdHJlZSwgVS1Cb290IHByb3ZpZGVzIGEK
Pj4gdXNlZnVsIGZ1bmN0aW9uLiBJdCBhdXRvbWF0aWNhbGx5IGluY2x1ZGVzIFtib2FyZC1kdHNd
LXUtIGJvb3QuZHRzaSBpbiB0aGUKPj4gY29tcGlsZWQgZGV2aWNlIHRyZWUsIHdoZXJlIFtib2Fy
ZC1kdHNdLmR0cyBpcyBzcGVjaWZpZWQgaW4gdGhlIGRlZmNvbmZpZy4gSW4KPj4gdGhpcyBjYXNl
LCB3ZSBjYW4gZGlyZWN0bHkgdXNlIGhpZml2ZS0gdW5sZWFzaGVkLWEwMC1mdTU0MC5kdHMgZnJv
bSB0aGUKPj4ga2VybmVsIGFuZCBhZGQgYSBoaWZpdmUtdW5sZWFzaGVkLWEwMC0gZnU1NDAtdS1i
b290LmR0c2kgd2l0aCB0aGUgRERSCj4+IGNvbnRyb2xsZXIgZW50cmllcy4gU2luY2UgdGhleSBh
cmUgb25seSBuZWVkZWQgaW4gbWFjaGluZSBtb2RlLCB3ZSBjYW4gdXNlCj4+IGlmZGVmcyB0byBy
ZW1vdmUgdGhlbSBpbiBzdXBlcnZpc29yIG1vZGUgYnVpbGRzLgo+IAo+IEJhc2VkIG9uIG91ciBw
cmV2aW91cyBkaXNjdXNzaW9uIG9uIFUtQm9vdCBtYWlsaW5nIGxpc3QsIEx1a2FzIGhhZCBzdWdn
ZXN0Cj4gdmVyeSBuaWNlIGJvb3QtZmxvdyBmb3IgVS1Cb290IHdoaWNoIGlzIGFzIGZvbGxvd3M6
Cj4gCj4gWlNCTCAtPiBVLUJvb3QgU1BMIChNLU1vZGUpLT5PcGVuU0JJL0JCTC0+VS1Cb290KFMt
TW9kZSktPkxpbnV4Lgo+IAo+IFRoZSBVLUJvb3QgU1BMIGFib3ZlIHdpbGw6Cj4gMS4gUnVuIGZy
b20gaW50ZXJuYWwgU1JBTQo+IDIuIFdpbGwgZG8gRERSIGluaXQKPiAzLiBFdGhlcm5ldCBQSFkg
cmVzZXQgdXNpbmcgR1BJTwoKUmlnaHQgbm93IEkgYW0gYWJsZSBkbyBhbGwgb2YgdGhlIGFib3Zl
IChhbHRob3VnaCB3aXRob3V0IGEgcHJvcGVyIEdQSU8gZHJpdmVyKSAKCldoYXQgSeKAmWQgbGlr
ZSB0byBnZXQgd29ya2luZyBiZWZvcmUgc3VibWl0dGluZyBwYXRjaGVzIGlzIGxvYWRpbmcgQkJM
L09wZW5TQkkgYW5kIGEgcGF5bG9hZAooZWl0aGVyIHRoZSBrZXJuZWwgZGlyZWN0bHksIG9yIFUt
Ym9vdChTLU1vZGUpIHZpYSBURlRQLiBJIHN1c3BlY3Qgc29tZSBraW5kIG9mIGlzc3VlIHdpdGgK
dGhlIHJpbmcgYnVmZmVyIGJlaW5nIGluIFNSQU0gYW5kL29yIGEgY2xvY2tpbmcgaW5pdCBwcm9i
bGVtLCBhcyB0aGlzIGlzIHdoYXQgSSBnZXQ6CgpVLUJvb3QgMjAxOS4wNy1yYzItMDAyMDItZzgx
NGJmZGE5YTYgKE1heSAyNCAyMDE5IC0gMTA6MjQ6MjYgLTA1MDApCgpDUFU6ICAgcnY2NGltYWMK
RFJBTTogIGRyYW1faW5pdCgpIHN0YXJ0CmRyYW1faW5pdCgpIGVuZAo4IEdpQgpNTUM6ICAgCklu
OiAgICBzZXJpYWwKT3V0OiAgIHNlcmlhbApFcnI6ICAgc2VyaWFsCk5ldDogICBldGgwOiBldGhl
cm5ldEAxMDA5MDAwMApIaXQgYW55IGtleSB0byBzdG9wIGF1dG9ib290OiAgMCAKZXRoZXJuZXRA
MTAwOTAwMDA6IFBIWSBwcmVzZW50IGF0IDAKZXRoZXJuZXRAMTAwOTAwMDA6IFN0YXJ0aW5nIGF1
dG9uZWdvdGlhdGlvbi4uLgpldGhlcm5ldEAxMDA5MDAwMDogQXV0b25lZ290aWF0aW9uIGNvbXBs
ZXRlCmV0aGVybmV0QDEwMDkwMDAwOiBsaW5rIHVwLCAxMDAwTWJwcyBmdWxsLWR1cGxleCAobHBh
OiAweDc4MDApCkJPT1RQIGJyb2FkY2FzdCAxCmV0aGVybmV0QDEwMDkwMDAwOiBUWCB0aW1lb3V0
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgt
cmlzY3YgbWFpbGluZyBsaXN0CmxpbnV4LXJpc2N2QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yaXNjdgo=
