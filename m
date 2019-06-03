Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 641C93393F
	for <lists+linux-riscv@lfdr.de>; Mon,  3 Jun 2019 21:48:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jzSun3z1/M5iz6A99vfVj9YeETqn4E5skaClyYvK820=; b=VO3cTNmAr5am+Q
	psCXlsb8UndcBlKHYmc5GYNVEep+NgrsaW0xYE0wUtQpXvNC77L27JNn+X4hcKPXlpYVGcIMRYbcd
	7S6CcOiuOCCB58eqhTKr6s7xsU5HoGYJt1E1n80IPvPF/HT7DtfN+HQKz5Kq8gRiCivhNDjrump50
	ezT/gSyKY/KbvkP+WGiVbCBcErLrMEo/kKcEEKbiD+pHl+P8UXQ0mcOfugdRNZlKRvEhwLQwGGo+9
	dE3LnBfY8X8LdVQkbQPqfXW+IgcIegTVW3+7qEXsb51EQDB1haSVODvLIODqIgfhes7lmbZaBE0z2
	okWPhwh5jzbuCQFnXVyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXsw4-0001LJ-G4; Mon, 03 Jun 2019 19:48:00 +0000
Received: from mail-it1-x143.google.com ([2607:f8b0:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXsw0-0001JR-F6
 for linux-riscv@lists.infradead.org; Mon, 03 Jun 2019 19:47:58 +0000
Received: by mail-it1-x143.google.com with SMTP id i125so760035ite.0
 for <linux-riscv@lists.infradead.org>; Mon, 03 Jun 2019 12:47:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=uW4zhKi/h07Fdk2yCbXWqiN86eI8R31sxTmjP+lrLew=;
 b=mHTYiShh5gT5l0KQoob0Chz5kZIhlYVVE7k7Cqw+l+0B3Wpae1jB3DfcEP5XJw3lpq
 H0kcXy4+UUM/To42UIQhS2OTmlmxZX+uLKSiDBVKfSvgoFuoapzVnoKdsTEe580k/1aJ
 mPGYZAM4MQzeTNh49a0mVwz8TLnHU+y7FJG83RnBwvu6fnGBkkaDkYNFwB6oZYK0NddF
 s8hcIcx9riwCqA0wp3X2KXalWRES8NLt7bNC27PfUcpofC67gKDvF9xcr8l3923OwqQK
 y1Ah0hSb2s4b1S+Dj5L97FOuvAHk/8XP2lYLdn1Tg348jHUzhgptSxOUBAxpzn5ngU4Y
 7NcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=uW4zhKi/h07Fdk2yCbXWqiN86eI8R31sxTmjP+lrLew=;
 b=VqOC6dKpG0IeCZZu/ZyEBhDEzL2gl6VK/XN/GIwWk/fTB+t05E55fy0NAOBH4CHROJ
 Pv9iGHZexVUCShr4RHkby1X9oqAsmy5SEI8ecAA6srTqsD4iTwZ24RzRG7hfECyPiERs
 sOvBd7YQjixN0vQJ8f2OO7dOlWExy2W1Y0ntiZBX+oB3N1PEHVnMHdD5xbomx6+YcJpx
 n33uPWAxQqJc3qqDeGl812VGGRytY7eRxaNf9ZdXkefwbtRG8nG7HqD0P3n/CVAxcXRk
 8IS6mTFDUtMvukgC+ib+TlvtLnKGzwMSVPFBXY4bT4kKLj0slpbuclAj89I1hc1m8bnv
 gLOQ==
X-Gm-Message-State: APjAAAU6cvd29jWDahN+r8sLSqq7AXs26Lv0FTYBzQk7I77J3Zj61EKR
 B8piDOw3S1nfCigEv5jeXEzJRw==
X-Google-Smtp-Source: APXvYqw6hWwl3y3wAzn7Fom/HTs1OjjZpTIBFTBJBAEHYMV1Pmzk9ZzV7M+wlDIVfdxEvUcPxjk6eg==
X-Received: by 2002:a24:1a51:: with SMTP id 78mr17633722iti.42.1559591272782; 
 Mon, 03 Jun 2019 12:47:52 -0700 (PDT)
Received: from [192.168.1.138] ([216.160.37.230])
 by smtp.gmail.com with ESMTPSA id u11sm5062152iot.44.2019.06.03.12.47.51
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 03 Jun 2019 12:47:52 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
Subject: Re: [U-Boot] Distro bootcmd: Re: 5.2-rc1 boot on Unleashed
From: Troy Benjegerdes <troy.benjegerdes@sifive.com>
In-Reply-To: <20190603170257.GF7705@bill-the-cat>
Date: Mon, 3 Jun 2019 14:47:51 -0500
Message-Id: <C6D03724-8EB6-4DA8-A002-5ACB2E127BF3@sifive.com>
References: <alpine.DEB.2.21.9999.1905221334460.23235@viisi.sifive.com>
 <34F7A31E-17F9-4A3C-9F42-DE7837F899CE@sifive.com>
 <CAAhSdy0R6UgxhgrU9NZegmoigjqZmx6RwoGngPdmzrzaUUxpTA@mail.gmail.com>
 <4572851B-EF46-45A1-A806-663894673EF9@sifive.com>
 <MN2PR04MB60610DD66EC6E93C25D18F5F8D1F0@MN2PR04MB6061.namprd04.prod.outlook.com>
 <mvm1s0hd5ln.fsf@suse.de> <E42C85A7-47D6-4A8E-B9C8-A5D42057A3F3@sifive.com>
 <20190529185951.5rsoozymr32xychb@excalibur.cnev.de> <mvmwoi37xlh.fsf@suse.de>
 <8D6E3ACE-7AA9-49F9-BF35-15777E7D47CF@sifive.com>
 <20190603170257.GF7705@bill-the-cat>
To: Tom Rini <trini@konsulko.com>
X-Mailer: Apple Mail (2.3445.9.1)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_124756_564896_DFF08CC5 
X-CRM114-Status: GOOD (  23.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Dany Nativel <dany.nativel@sifive.com>, Andreas Schwab <schwab@suse.de>,
 Palmer Dabbelt <palmer@sifive.com>, u-boot <U-Boot@lists.denx.de>,
 =?utf-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@gmail.com>,
 Karsten Merker <merker@debian.org>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Cgo+IE9uIEp1biAzLCAyMDE5LCBhdCAxMjowMiBQTSwgVG9tIFJpbmkgPHRyaW5pQGtvbnN1bGtv
LmNvbT4gd3JvdGU6Cj4gCj4gT24gTW9uLCBKdW4gMDMsIDIwMTkgYXQgMDk6NDQ6MjhBTSAtMDUw
MCwgVHJveSBCZW5qZWdlcmRlcyB3cm90ZToKPj4gCj4+IAo+Pj4gT24gSnVuIDMsIDIwMTksIGF0
IDU6NDkgQU0sIEFuZHJlYXMgU2Nod2FiIDxzY2h3YWJAc3VzZS5kZT4gd3JvdGU6Cj4+PiAKPj4+
IE9uIE1haSAyOSAyMDE5LCBLYXJzdGVuIE1lcmtlciA8bWVya2VyQGRlYmlhbi5vcmc+IHdyb3Rl
Ogo+Pj4gCj4+Pj4gTWFpbmxpbmUgVS1Cb290IGFscmVhZHkgdXNlcyB0aGUgZGlzdHJvIGJvb3Rj
bWQgZW52aXJvbm1lbnQgZm9yCj4+Pj4gdGhlIHFlbXUgInZpcnQiIG1hY2hpbmUgYW5kIGl0IHdv
cmtzIHdlbGwuCj4+PiAKPj4+IFRoZSBkaXN0cm9fYm9vdGNtZCBkb2Vzbid0IHdvcmsgZm9yIHRo
ZSBzaWZpdmUgcGxhdGZvcm0geWV0IGJlY2F1c2UgaXQKPj4+IGRvZXNuJ3Qgc2V0IHRoZSBjb3Jy
ZWN0IE1BQyBhZGRyZXNzIGZvciBib290aW5nLgo+Pj4gCj4+PiBBbmRyZWFzLgo+Pj4gCj4+IAo+
PiBCZWZvcmUgd2UgZ28gYW4gdXNlIGRpc3Ryb19ib290Y21kIGFuZCBkcmFnIGluIGEgYnVuY2gg
b2YgbGVnYWN5IHN0dWZmIAo+PiB3ZSByZWFsbHkgc2hvdWxkIG5vdCBiZSB1c2luZywgY2FuIHdl
IG1ha2Ugc29tZSBraW5kIG9mIGVmZm9ydCB0byBkZWNpZGUKPj4gd2hhdCB0aGUgZGVzaWduIGdv
YWxzIGFuZCBib290IGZsb3cgc2hvdWxkIGxvb2sgbGlrZSBpbnN0ZWFkIHVzaW5nIHRoZSAKPj4g
ZGVmYXVsdCBsZWdhY3kgYmVoYXZpb3Igb2YgYSBidW5jaCBvZiBoYXJkIHRvIHJlYWQgYW5kIG1h
aW50YWluIENQUAo+PiBtYWNyb3M/Cj4gCj4gSSBmZWVsIGxpa2UgeW91J3JlIGNhbGxpbmcgIndo
YXQgZXZlcnlvbmUgYWdyZWVkIG9uIGFuZCB1c2VzIHRvZGF5Igo+IGxlZ2FjeSBqdXN0IGJlY2F1
c2UgaXQgYWxyZWFkeSBleGlzdHMuICBJdCBpcyBhIGJpdCBjb21wbGV4IGJlY2F1c2UKPiBkZXZp
Y2VzIGFyZSBzbyBjb21wbGV4LCByYXRoZXIgdGhhbiBpdCBoYXZpbmcgdG8gc3VwcG9ydCBvbmUt
b2ZmCj4gc2l0dWF0aW9ucyBvciBzaW1pbGFyIHRoaW5ncyBwZW9wbGUgdXN1YWxseSBjYWxsICJs
ZWdhY3nigJ0uCgpNeSBiaWdnZXN0IGNvbXBsYWludCBpcyBhbGwgdGhlIENQUCBtYWNyb3MsIHdo
aWNoIGFyZSByZWFsbHkgaGFyZCB0bwptYWludGFpbiBhbmQgcmVhZC4KCkkgc2hvdWxkIHByb2Jh
Ymx5IGJlIG1vcmUgY2FyZWZ1bCB0byBxdWFudGlmeSDigJhsZWdhY3nigJkgbXVjaCBtb3JlCnNw
ZWNpZmljYWxseSBhcyDigJxsZWdhY3kgcHJvcHJpZXRhcnkgUk9NIGNvZGXigJ0uIE9yIG1heWJl
IHRoYXTigJlzIG5vdCAKdGhlIHJpZ2h0IHRlcm0gYXQgYWxsCgpGb3IgdGhlIGZpcnN0IHRpbWUg
SSBrbm93IG9mLCB3ZSBoYXZlIGEgKG1vc3RseSkgYmxhbmsgc2xhdGUgdG8gd3JpdGUKdGhlIFJP
TSBib290IGNvZGUgdG8gaGVscCBtYW5hZ2UgYm9vdCBjb21wbGV4aXR5LiBTbyBJ4oCZZCBsaWtl
IHRvCm1ha2Ugc3VyZSB3ZSBjYW4gdGVhc2Ugb3V0IGFsbCB0aGUgcmVhc29ucyB3ZSBoYXZlIGFs
bCB0aGlzIGltcG9ydGFudApsb2dpYyBhbmQga25vd2xlZGdlIHRpZWQgdXAgaW4gYSBzaW5nbGUg
aGVhZGVyIGZpbGUsIGFuZCBhdCBsZWFzdApyZS1leGFtaW5lIGlzIHRoZXJlIGEgYmV0dGVyIHdh
eSB0byBkbyB0aGlzIHRoYW4gYWJ1c2luZyBDUFAuCgo+IAo+PiBUaGUgZmlyc3QgdGhpbmcgSSBu
b3RpY2UgaXMgdGhhdCB0aGUgZGVmYXVsdCBkaGNwIHRhcmdldCBpcyDigJhib290LnNjci51aW1n
4oCZLgo+PiAKPj4gV2hhdCBnb29kIGRvZXMgaXQgZG8gbGludXggZGlzdHJvcyBvbiBSaXNjViB0
byBrZWVwIHVzaW5nIHRoZSBvbGQgYm9vdAo+PiBzY3JpcHQgZm9ybWF0LCByYXRoZXIgdGhhbiBq
dXN0IGxvYWQgYSB0ZXh0IGZpbGUgYW5kIHVzZSDigJhlbnYgaW1wb3J04oCZPyBJcyB0aGVyZQo+
PiBzb21lIGJlbmVmaXQgdG8gdGhpcz8gRG8gd2UgZ2FpbiBzb21ldGhpbmcgZnJvbSB0aGUgLnNj
ciBmb3JtYXQsIGxpa2UKPj4gbWF5YmUgY3J5cHRvZ3JhcGhpYyBzaWduYXR1cmUgc3VwcG9ydD8K
PiAKPiBXcml0aW5nIHRoaW5ncyBvdXQgaW4gc2NyaXB0IGZvcm1hdCBlbmRzIHVwIGJlaW5nIG1v
cmUgbmF0dXJhbCAoYW5kCj4gZWFzaWVyIHRvIHVuZGVyc3RhbmQpIHRoYW4gd3JpdGluZyB0aGlu
Z3Mgb3V0IGluIGVudmlyb25tZW50IGZvcm1hdC4KPiBUaGlzIGlzIHdoeSB3aGlsZSBJIHdpc2gg
dGhlICJ1RW52LnR4dCIgaG9vayBoYWQgYmVjb21lIG1vcmUgcG9wdWxhciBhbmQKPiB3aWRlbHkg
dXNlZCwgYXQgdGhpcyBwb2ludCBJIGFsc28gdW5kZXJzdGFuZCB3aHkgaXQgd2Fzbid0LiAgRG9p
bmcKPiBhPWZvbwo+IGI9YmFyCj4gYz1iYXoKPiBtYWdpY19uYW1lPWRvIHRoaXM7ZG8gdGhhdAo+
IAo+IFdhcyBub3QgZWFzaWVyIG5vciBtb3JlIHVuZGVyc3RhbmRhYmxlIHRoYW46Cj4gc2V0ZW52
IGEgZm9vCj4gc2V0ZW52IGIgYmFyCj4gc2V0ZW52IGMgYmF6Cj4gZG8gdGhpczsgZG8gdGhhdAoK
dUVudiBoYXMgdGhlIHNpZ25pZmljYW50IHVzZXIgZXhwZXJpZW5jZSBhZHZhbnRhZ2Ugb2YgYmVp
bmcgZWRpdGFibGUgd2l0aAphIHBsYWluIG9sZCB0ZXh0IGVkaXRvciwgd2hpY2ggaXMgd2h5IEkg
dXNlZCBpdCBpbiBmcmVlZG9tLXUtc2RrLiBJZiB3ZSBjYW4gZ2V0CmEg4oCZc2NyaXB04oCZIGZv
cm1hdCB0aGF0IGNhbiBiZSBlZGl0ZWQgYnkgYSBub24tdGVjaG5pY2FsIHVzZXIgb24gYSB3aW5k
b3dzIG9yCm1hYyBib3ggd2l0aG91dCByZXF1aXJpbmcgbWtpbWFnZSwgdGhlbiB3ZSBoYXZlIGFu
IGltcHJvdmVtZW50LiBDYW4KdGhpcyBiZSBkb25lIHdpdGggLnNjciBjdXJyZW50bHk/Cgo+IAo+
PiBIb3cgZG8gd2Ugd2FudCB0byBzdXBwb3J0IHNlY3VyZSBib290IGludG8gRGViaWFuLCBGZWRv
cmEsIGFuZCBTdXNlLAo+PiBhbmQgZG9lcyBkaXN0cm9fYm9vdGNtZCBoYXZlIGEgd2F5IHRvIGRv
IHRoaXMsIG9yIGNhbiB3ZSBjb21lIHVwIHdpdGgKPj4gc29tZSBpbXByb3ZlbWVudCB0aGF0IGRv
ZXNu4oCZdCBkZXBlbmQgb24gdHJ5aW5nIHRvIGRvIGFsbCB0aGUgd29yayBpbgo+PiBDUFAgbWFj
cm9zIGFuZCBVLWJvb3QgcnVudGltZSBzY3JpcHRzPwo+IAo+IEkgdGhpbmsgdGhlIGdlbmVyYWwg
YW5zd2VyIGFib3V0ICJzZWN1cmUgYm9vdCIgaXMgdGhhdCBkaXN0cm9zIHdhbnQKPiAiVUVGSSBz
ZWN1cmUgYm9vdCIuICBBbmQgSSB3YW50IHRvIG1ha2Ugc3VyZSB0aGF0J3MgZG9uZSBpbiBzdWNo
IGEgd2F5Cj4gdGhhdCB0aGluZ3MgbGlrZSB1c2VyLW93bmVkIHNlY3VyZSBib290IGFyZW4ndCBh
bnkgbW9yZSBkaWZmaWN1bHQgdGhhbgo+IHZlbmRvciBzZWN1cmVkIGJvb3QuICBJdCBzZWVtcyBs
aWtlIG1ha2luZyB1c2Ugb2YgZXhpc3Rpbmcgc2VjdXJlIGJvb3QKPiBtZWNoYW5pc21zIGhhcyBz
ZXQgYXNpZGUgYXMsIHdlbGwsIEkgZG9uJ3Qgd2FudCB0byB0aHJvdyBzbmFyayBhcm91bmQKPiBt
eXNlbGYsIHNvIEknbGwgcmVmcmFpbiBmcm9tIHNwZWN1bGF0aW5nLgo+IAo+IC0tIAo+IFRvbQoK
VGhlIHByb2JsZW1hdGljIGlzc3VlIHdpdGgg4oCYdXNlci1vd25lZCBzZWN1cmUgYm9vdOKAmSBp
cyBpdOKAmXMgbmV2ZXIgYmVlbiBhCm1ham9yIOKAmGJ1c2luZXNzIGNyaXRpY2Fs4oCZIG5lZWQs
IHNvIGl04oCZcyBhbHdheXMgZW5kZWQgdXAgbG93ZXIgb24gdGhlIHByaW9yaXR5Cmxpc3QgZnJv
bSBhbnlvbmUgd2hv4oCZcyBsb29raW5nIGF0IHdoYXQgdGhlaXIgY2xpZW50cyBhcmUgcGF5aW5n
IGZvci4KCk5vdyBvbiB0aGF0IG5vdGUsIEkgdGhpbmsgbWF5YmUgdGhlIGJlc3Qgd2F5IHRvIGFw
cHJvYWNoIHRoaXMgaXMgdG8gc3RhcnQKd2l0aCBhIGNsZWFyIGNvbW11bml0eSBjb25zZW5zdXMg
dGhhdCB3ZSBNVVNUIHN1cHBvcnQgYSB1c2VyIGV4cGVyaWVuY2UKd2hlcmUgYW4gZW5kLXVzZXIg
d2l0aCBhbiBvcGVuIFJpc2NWIGRldmljZSBNVVNUIGJlIGFibGUgdG8gZWRpdCB0aGUKYm9vdCBw
YXJhbWV0ZXJzIChib290IHNjcmlwdD8gdUVudi50eHQ/KSwgYW5kIHRoZW4gYmUgYWJsZSB0byBy
ZXNpZ24gdGhlCnNjcmlwdCB3aXRoIHRoZWlyIGtleShzKSwgc28gdGhlIHN5c3RlbSBjYW4gYm9v
dCBhbmQgbWFpbnRhaW4gYSBzZWN1cmVkIApzdGF0ZSB3aGVuIGl0IGdldHMgdG8gdXNlcnNwYWNl
IHdoZXJlIHdlIGFyZSBydW5uaW5nIGRpc3Ryby1zaWduZWQKYmluYXJpZXMuCgpJIGhvbmVzdGx5
IGRvbuKAmXQga25vdyBvZiBhbnlvbmUgdGhhdOKAmXMgcmVhbGx5IGxvb2tlZCBhdCB0aGlzIGlu
IGEgY29tbWVyY2lhbApzZXR0aW5nIG90aGVyIHRoYW4gbWF5YmUgcHVyaXNtLCBhbmQgdGhleSBh
cmUgYSBwcmV0dHkgbmljaGUgdmVuZG9yLCBhbmQKc3R1Y2sgd2l0aCBhIGxvdCBvZiB4ODYgbGVn
YWN5IHRvIGRlYWwgd2l0aC4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KbGludXgtcmlzY3YgbWFpbGluZyBsaXN0CmxpbnV4LXJpc2N2QGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1yaXNjdgo=
