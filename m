Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91E25338F5
	for <lists+linux-riscv@lfdr.de>; Mon,  3 Jun 2019 21:18:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Mime-Version:Message-ID:To:From:In-Reply-To:Subject:
	Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	 bh=NllA0eiZysouHiIx4/M/RgOf6LRuBChcrz9nktm+dvY=; b=rw9NcWFvxdz1t1Bhr3gdr/Cz7
	7bLvSkhCxCjf2wxp51hrE9/p+K2M7lE0TSIHrug/XXRY+CorznFvDc9pK8c4IEnooPspZwPp4GsA5
	a32yV7mCQopS7O+ptsK5uA2ad301ZD9S1z5jW2QeGQvxGhbVI+j2kZVqo1D8Dlg6THzdO8Kq/CR+0
	scdWA/CIF6NKZzhqzD8Og/D7xeRjcPVYR1yjLQHRHafE2JvR+DFGiRjpVOMGCDJsKvgJve96oJ2qG
	p634TqAVzIPXbNcrNy/2RTu0mAIv9X8i/hIzAhUs98n38yOSBEXtpAvraHXzEXvJPJ9HDmtgOSkns
	RdtVgAbnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXsSv-0008JT-HG; Mon, 03 Jun 2019 19:17:53 +0000
Received: from mail-pl1-f195.google.com ([209.85.214.195])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXsSq-0008J8-2H
 for linux-riscv@lists.infradead.org; Mon, 03 Jun 2019 19:17:51 +0000
Received: by mail-pl1-f195.google.com with SMTP id cl9so2239369plb.10
 for <linux-riscv@lists.infradead.org>; Mon, 03 Jun 2019 12:17:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=wggfGMSZfZ9XoneYZHdwSwE4VJv0AhhzQyhYEQIfECQ=;
 b=HeFQbM1Ze75KQ8YI/bNp7ADCN5N1mblGGIxJVaSFnBdBo5GYyf/MEKWMq5OKoZRz+D
 XVOBKl9o/x6IivTY35oHtqR4KELB6xDexz9PDmLXoGeMArmXcndV6o2F51j3tvTXi7O5
 sMB1sQu2ir5xPBpqBqJab7KWyh96L44fbX8Nx9w3Q3A9bsAHzZKrCp6+bGcgJBbOGY0Y
 fomOIBzS6CTxGsAXSBrobYO3tEcUxxjv0iks1fDe+xD8CqHWZtMMQfSXja/jwqqsn6Tn
 1SqGtijE4wF3DL+iyvDBtNDCSljP+MCEg6RF6K4enoIzgXAzMZJN7kNCtvMyUC8LHJVo
 IEIg==
X-Gm-Message-State: APjAAAVaTOE0WWjlUgQWhgWOebtzRIcwvihG1AbYDseYcspiMS5Wc50H
 3PDnvmBNnr8C4GPd2gBkxOXLBQ==
X-Google-Smtp-Source: APXvYqzo2+tR+4k9WHiovgfKMw1/WJPNVuPmvSeWJ1uUNoJGf6XOK6wp1HbrJCKeAG61/kQ6/OuO+A==
X-Received: by 2002:a17:902:b713:: with SMTP id
 d19mr32298672pls.123.1559589464562; 
 Mon, 03 Jun 2019 12:17:44 -0700 (PDT)
Received: from localhost ([12.206.222.5])
 by smtp.gmail.com with ESMTPSA id b128sm9554599pfa.165.2019.06.03.12.17.42
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 03 Jun 2019 12:17:43 -0700 (PDT)
Date: Mon, 03 Jun 2019 12:17:43 -0700 (PDT)
X-Google-Original-Date: Mon, 03 Jun 2019 12:17:31 PDT (-0700)
Subject: Re: [U-Boot] Distro bootcmd: Re: 5.2-rc1 boot on Unleashed
In-Reply-To: <20190603170257.GF7705@bill-the-cat>
From: Palmer Dabbelt <palmer@sifive.com>
To: trini@konsulko.com
Message-ID: <mhng-8c636590-653b-4675-a4a3-94d2f2950ea0@palmer-si-x1e>
Mime-Version: 1.0 (MHng)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_121748_105388_0C08D1AA 
X-CRM114-Status: GOOD (  21.02  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.195 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.195 listed in wl.mailspike.net]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Dany Nativel <dany.nativel@sifive.com>, schwab@suse.de, U-Boot@lists.denx.de, Björn Töpel <bjorn.topel@gmail.com>, Troy Benjegerdes <troy.benjegerdes@sifive.com>, linux-riscv@lists.infradead.org, merker@debian.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

T24gTW9uLCAwMyBKdW4gMjAxOSAxMDowMjo1NyBQRFQgKC0wNzAwKSwgdHJpbmlAa29uc3Vsa28u
Y29tIHdyb3RlOgo+IE9uIE1vbiwgSnVuIDAzLCAyMDE5IGF0IDA5OjQ0OjI4QU0gLTA1MDAsIFRy
b3kgQmVuamVnZXJkZXMgd3JvdGU6Cj4+IAo+PiAKPj4gPiBPbiBKdW4gMywgMjAxOSwgYXQgNTo0
OSBBTSwgQW5kcmVhcyBTY2h3YWIgPHNjaHdhYkBzdXNlLmRlPiB3cm90ZToKPj4gPiAKPj4gPiBP
biBNYWkgMjkgMjAxOSwgS2Fyc3RlbiBNZXJrZXIgPG1lcmtlckBkZWJpYW4ub3JnPiB3cm90ZToK
Pj4gPiAKPj4gPj4gTWFpbmxpbmUgVS1Cb290IGFscmVhZHkgdXNlcyB0aGUgZGlzdHJvIGJvb3Rj
bWQgZW52aXJvbm1lbnQgZm9yCj4+ID4+IHRoZSBxZW11ICJ2aXJ0IiBtYWNoaW5lIGFuZCBpdCB3
b3JrcyB3ZWxsLgo+PiA+IAo+PiA+IFRoZSBkaXN0cm9fYm9vdGNtZCBkb2Vzbid0IHdvcmsgZm9y
IHRoZSBzaWZpdmUgcGxhdGZvcm0geWV0IGJlY2F1c2UgaXQKPj4gPiBkb2Vzbid0IHNldCB0aGUg
Y29ycmVjdCBNQUMgYWRkcmVzcyBmb3IgYm9vdGluZy4KPj4gPiAKPj4gPiBBbmRyZWFzLgo+PiA+
IAo+PiAKPj4gQmVmb3JlIHdlIGdvIGFuIHVzZSBkaXN0cm9fYm9vdGNtZCBhbmQgZHJhZyBpbiBh
IGJ1bmNoIG9mIGxlZ2FjeSBzdHVmZiAKPj4gd2UgcmVhbGx5IHNob3VsZCBub3QgYmUgdXNpbmcs
IGNhbiB3ZSBtYWtlIHNvbWUga2luZCBvZiBlZmZvcnQgdG8gZGVjaWRlCj4+IHdoYXQgdGhlIGRl
c2lnbiBnb2FscyBhbmQgYm9vdCBmbG93IHNob3VsZCBsb29rIGxpa2UgaW5zdGVhZCB1c2luZyB0
aGUgCj4+IGRlZmF1bHQgbGVnYWN5IGJlaGF2aW9yIG9mIGEgYnVuY2ggb2YgaGFyZCB0byByZWFk
IGFuZCBtYWludGFpbiBDUFAKPj4gbWFjcm9zPwo+Cj4gSSBmZWVsIGxpa2UgeW91J3JlIGNhbGxp
bmcgIndoYXQgZXZlcnlvbmUgYWdyZWVkIG9uIGFuZCB1c2VzIHRvZGF5Igo+IGxlZ2FjeSBqdXN0
IGJlY2F1c2UgaXQgYWxyZWFkeSBleGlzdHMuICBJdCBpcyBhIGJpdCBjb21wbGV4IGJlY2F1c2UK
PiBkZXZpY2VzIGFyZSBzbyBjb21wbGV4LCByYXRoZXIgdGhhbiBpdCBoYXZpbmcgdG8gc3VwcG9y
dCBvbmUtb2ZmCj4gc2l0dWF0aW9ucyBvciBzaW1pbGFyIHRoaW5ncyBwZW9wbGUgdXN1YWxseSBj
YWxsICJsZWdhY3kiLgoKVGhlIGdvYWwgaW4gUklTQy1WIGxhbmQgaXMgdG8gYXZvaWQgaW52ZW50
aW5nIG91ciBvd24gc3R1ZmYsIHBhcnRpY3VsYXJseSB3aGVuCnRoZXJlJ3MgYW4gYWdyZWVkIHVw
b24gd2F5IG9mIGRvaW5nIHRoaW5ncy4gIEFzIGZhciBhcyBJIGNhbiB0ZWxsIHRoZSB1c2Vycwoo
aWUsIGRpc3Ryb3MpIGFsbCB3YW50IHRoaXMgZGlzdHJvX2Jvb3RjbWQgc3R1ZmYgYmVjYXVzZSBp
dCdzIHdoYXQgYWxyZWFkeQp3b3JrcyBpbiBBUk0gbGFuZC4gIFdoaWxlIEknbSBub3QgcmVhbGx5
IGEgYm9vdGxvYWRlciBndXksIHRoZSBnZW5lcmFsCmFyZ3VtZW50cyBpbiBmYXZvciBvZiBkaXN0
cm9fYm9vdGNtZCBhcHBhZXIgdG8gYmUgIndlIHRyaWVkIGl0IHNvbWUgb3RoZXIgd2F5cwphbmQg
dGhhdCB3YXMgYSBtZXNzLCBidXQgdGhpcyB3YXkgd29ya3MiLiAgVGhhdCBpcyBhIHJlYWxseSBz
dHJvbmcgYXJndW1lbnQgdG8KbWUuCgo+PiBUaGUgZmlyc3QgdGhpbmcgSSBub3RpY2UgaXMgdGhh
dCB0aGUgZGVmYXVsdCBkaGNwIHRhcmdldCBpcyDigJhib290LnNjci51aW1n4oCZLgo+PiAKPj4g
V2hhdCBnb29kIGRvZXMgaXQgZG8gbGludXggZGlzdHJvcyBvbiBSaXNjViB0byBrZWVwIHVzaW5n
IHRoZSBvbGQgYm9vdAo+PiBzY3JpcHQgZm9ybWF0LCByYXRoZXIgdGhhbiBqdXN0IGxvYWQgYSB0
ZXh0IGZpbGUgYW5kIHVzZSDigJhlbnYgaW1wb3J04oCZPyBJcyB0aGVyZQo+PiBzb21lIGJlbmVm
aXQgdG8gdGhpcz8gRG8gd2UgZ2FpbiBzb21ldGhpbmcgZnJvbSB0aGUgLnNjciBmb3JtYXQsIGxp
a2UKPj4gbWF5YmUgY3J5cHRvZ3JhcGhpYyBzaWduYXR1cmUgc3VwcG9ydD8KPgo+IFdyaXRpbmcg
dGhpbmdzIG91dCBpbiBzY3JpcHQgZm9ybWF0IGVuZHMgdXAgYmVpbmcgbW9yZSBuYXR1cmFsIChh
bmQKPiBlYXNpZXIgdG8gdW5kZXJzdGFuZCkgdGhhbiB3cml0aW5nIHRoaW5ncyBvdXQgaW4gZW52
aXJvbm1lbnQgZm9ybWF0Lgo+IFRoaXMgaXMgd2h5IHdoaWxlIEkgd2lzaCB0aGUgInVFbnYudHh0
IiBob29rIGhhZCBiZWNvbWUgbW9yZSBwb3B1bGFyIGFuZAo+IHdpZGVseSB1c2VkLCBhdCB0aGlz
IHBvaW50IEkgYWxzbyB1bmRlcnN0YW5kIHdoeSBpdCB3YXNuJ3QuICBEb2luZwo+IGE9Zm9vCj4g
Yj1iYXIKPiBjPWJhego+IG1hZ2ljX25hbWU9ZG8gdGhpcztkbyB0aGF0Cj4KPiBXYXMgbm90IGVh
c2llciBub3IgbW9yZSB1bmRlcnN0YW5kYWJsZSB0aGFuOgo+IHNldGVudiBhIGZvbwo+IHNldGVu
diBiIGJhcgo+IHNldGVudiBjIGJhego+IGRvIHRoaXM7IGRvIHRoYXQKPgo+PiBIb3cgZG8gd2Ug
d2FudCB0byBzdXBwb3J0IHNlY3VyZSBib290IGludG8gRGViaWFuLCBGZWRvcmEsIGFuZCBTdXNl
LAo+PiBhbmQgZG9lcyBkaXN0cm9fYm9vdGNtZCBoYXZlIGEgd2F5IHRvIGRvIHRoaXMsIG9yIGNh
biB3ZSBjb21lIHVwIHdpdGgKPj4gc29tZSBpbXByb3ZlbWVudCB0aGF0IGRvZXNu4oCZdCBkZXBl
bmQgb24gdHJ5aW5nIHRvIGRvIGFsbCB0aGUgd29yayBpbgo+PiBDUFAgbWFjcm9zIGFuZCBVLWJv
b3QgcnVudGltZSBzY3JpcHRzPwo+Cj4gSSB0aGluayB0aGUgZ2VuZXJhbCBhbnN3ZXIgYWJvdXQg
InNlY3VyZSBib290IiBpcyB0aGF0IGRpc3Ryb3Mgd2FudAo+ICJVRUZJIHNlY3VyZSBib290Ii4g
IEFuZCBJIHdhbnQgdG8gbWFrZSBzdXJlIHRoYXQncyBkb25lIGluIHN1Y2ggYSB3YXkKPiB0aGF0
IHRoaW5ncyBsaWtlIHVzZXItb3duZWQgc2VjdXJlIGJvb3QgYXJlbid0IGFueSBtb3JlIGRpZmZp
Y3VsdCB0aGFuCj4gdmVuZG9yIHNlY3VyZWQgYm9vdC4gIEl0IHNlZW1zIGxpa2UgbWFraW5nIHVz
ZSBvZiBleGlzdGluZyBzZWN1cmUgYm9vdAo+IG1lY2hhbmlzbXMgaGFzIHNldCBhc2lkZSBhcywg
d2VsbCwgSSBkb24ndCB3YW50IHRvIHRocm93IHNuYXJrIGFyb3VuZAo+IG15c2VsZiwgc28gSSds
bCByZWZyYWluIGZyb20gc3BlY3VsYXRpbmcuCj4KPiAtLSAKPiBUb20KCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LXJpc2N2IG1haWxpbmcgbGlz
dApsaW51eC1yaXNjdkBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcmlzY3YK
