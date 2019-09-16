Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA7CEB3E7E
	for <lists+linux-riscv@lfdr.de>; Mon, 16 Sep 2019 18:12:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Mime-Version:Message-ID:To:From:In-Reply-To:Subject:
	Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	 bh=PbgEe9emuxzYFs7m3GW5EQBYhModyZw6fREXAMHYrYM=; b=fMujMd2AyNmoI/CpO5dBWkhoY
	Y5RDRTNscCazzRHgI5YTZSbdz9nqCeTjSZxJpPVD92dnLldtn0Ub/bGO1tJqfsdsefT6ZD780UrN6
	UScL+3EFvqL4U8FJNlioclu5WT+rCJol2qE5DFACko1bboeij8lG/6Kw7jox04DkGMLwc8dPxEzlo
	mzfvwLcM9i0rWFTrVES09MYtzIAmtmILCb3gcDoODC6VPjHeodmNpWnKVDbtY0NmvxCZxM6TRAJki
	A1lEAlR1fbAyxnw3F3qYg26Fg2hkbipD3iJnBBXfPXvRjRtKYTjrd3r5/6fBbzVxsWwEEq0vCRHwu
	p+wOCc/bw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9tc0-0001W5-Ik; Mon, 16 Sep 2019 16:12:24 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9tbr-0001U3-1r
 for linux-riscv@lists.infradead.org; Mon, 16 Sep 2019 16:12:16 +0000
Received: by mail-pf1-x443.google.com with SMTP id b128so197859pfa.1
 for <linux-riscv@lists.infradead.org>; Mon, 16 Sep 2019 09:12:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
 :content-transfer-encoding;
 bh=AdVo7LJwpXxGdiKukHrvBHzKH1YWUhQ/gLti6NVZFSQ=;
 b=LZrKxyGH0/HV9YHUDl83G8YKQ+qL7o8gEtUrt64wIBPuQYhehi42JAaBkF1XZo6hK/
 wPRAk3O5gQ1lAV9maO77+23dkf09QyN/TSo8AQcATjF1N68GfcnTlGZepjG6oFz4yqR+
 ir67CrtZ5eUI23gYDOWL0CTWGeGEc/cE1abVKcbF/rRvdclNGrTYg0deZF3ZzcxBuSpz
 wR/uY0gWUfU3z0wANf7kGst5R2CrLh942DOoJdbhrYuBH1GwSpufkqMKKZgF9LG4yRTh
 354cKGjIHnbF31heviiPGw5Lkc4GDW/DstalSCbb8JC9m+XX/hXPsoJyfScsSVLKSOoB
 bFOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=AdVo7LJwpXxGdiKukHrvBHzKH1YWUhQ/gLti6NVZFSQ=;
 b=Qggu91KYE/uYCzDcMwYCaXcs9P2YfMNmp1NY84S70dJWyXbAtF6nUXCqgDO0zzbaat
 xCUNkT9Yk120pnVZ72U/Uwn9RlhQL5MVtcrSDhDhDQNGeLtt3A5yKDI59+3awZqqWXCp
 fpMBAovozfIiUmtZaeQhHm+olFcq9mMg9PcGaHzGE4AHo/WzqNTT84di/cooVZUjDvg5
 IDNktaY3NkmE4rg7wq59ppYeNdiK36s5SF6y4x2aX3mljl/fQxX7UJF/r8Nr0ozpw26z
 CW/LismxfrokSdrT9WFELK4zSJCRPXfhYuufFmlzFTYEyWdvXGMhAs0/XkBgSH/ZOsKK
 gw0w==
X-Gm-Message-State: APjAAAXhn+8rNBpeeo96QQU6AzAnMiygCpXkMunDjo+6jbxA9ApwAHbw
 eyi/JQEjBNLX0OeACgoDu/+D3A==
X-Google-Smtp-Source: APXvYqy82tkkqyfVTz7Lzc3fjlQBwNpIeUPh/f1EWx9Rgi2zxlU7Xv8ESFqJq6gFk3zAewd/MJn57g==
X-Received: by 2002:a17:90a:cc13:: with SMTP id
 b19mr483247pju.112.1568650334279; 
 Mon, 16 Sep 2019 09:12:14 -0700 (PDT)
Received: from localhost ([12.206.222.5])
 by smtp.gmail.com with ESMTPSA id c64sm53631983pfc.19.2019.09.16.09.12.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Sep 2019 09:12:12 -0700 (PDT)
Date: Mon, 16 Sep 2019 09:12:12 -0700 (PDT)
X-Google-Original-Date: Mon, 16 Sep 2019 08:35:07 PDT (-0700)
Subject: Re: [RFC PATCH 0/2] Add support for SBI version to 0.2
In-Reply-To: <20190916065446.GA6566@infradead.org>
From: Palmer Dabbelt <palmer@sifive.com>
To: Christoph Hellwig <hch@infradead.org>
Message-ID: <mhng-d7823725-b118-4588-bcec-e85354e52283@palmer-si-x1c4>
Mime-Version: 1.0 (MHng)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_091215_094349_D9CD55F8 
X-CRM114-Status: GOOD (  19.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: aou@eecs.berkeley.edu, alankao@andestech.com,
 Atish Patra <Atish.Patra@wdc.com>, anup@brainfault.org,
 linux-kernel@vger.kernel.org, rppt@linux.ibm.com,
 Christoph Hellwig <hch@infradead.org>, alexios.zavras@intel.com,
 Greg KH <gregkh@linuxfoundation.org>, gary@garyguo.net,
 Paul Walmsley <paul.walmsley@sifive.com>, linux-riscv@lists.infradead.org,
 tglx@linutronix.de
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

T24gU3VuLCAxNSBTZXAgMjAxOSAyMzo1NDo0NiBQRFQgKC0wNzAwKSwgQ2hyaXN0b3BoIEhlbGx3
aWcgd3JvdGU6Cj4gT24gRnJpLCBTZXAgMTMsIDIwMTkgYXQgMDg6NTQ6MjdBTSAtMDcwMCwgUGFs
bWVyIERhYmJlbHQgd3JvdGU6Cj4+IE9uIFR1ZSwgU2VwIDMsIDIwMTkgYXQgMTI6MzggQU0gaGNo
QGluZnJhZGVhZC5vcmcgPGhjaEBpbmZyYWRlYWQub3JnPiB3cm90ZToKPj4gCj4+ID4gT24gRnJp
LCBBdWcgMzAsIDIwMTkgYXQgMTE6MTM6MjVQTSArMDAwMCwgQXRpc2ggUGF0cmEgd3JvdGU6Cj4+
ID4gPiBJZiBJIHVuZGVyc3Rvb2QgeW91IGNsZWFybHksIHlvdSB3YW50IHRvIGNhbGwgaXQgbGVn
YWN5IGluIHRoZSBzcGVjIGFuZAo+PiA+ID4ganVzdCBzYXkgdjAuMSBleHRlbnNpb25zLgo+PiA+
ID4gCj4+ID4gPiBUaGUgd2hvbGUgaWRlYSBvZiBtYXJraW5nIHRoZW0gYXMgbGVnYWN5IGV4dGVu
c2lvbnMgdG8gaW5kaWNhdGUgdGhhdCBpdAo+PiA+ID4gd291bGQgYmUgb2Jzb2xldGUgaW4gdGhl
IGZ1dHVyZS4KPj4gPiA+IAo+PiA+ID4gQnV0IEkgYW0gbm90IHRvbyB3b3JyaWVkIGFib3V0IHRo
ZSBzZW1hbnRpY3MgaGVyZS4gU28gSSBhbSBmaW5lIHdpdGgKPj4gPiA+IGp1c3QgY2hhbmdpbmcg
dGhlIHRleHQgdG8gdjAuMSBpZiB0aGF0IGF2b2lkcyBjb25mdXNpb24uCj4+ID4KPj4gPiBTbyBt
eSBtYWluIHByb2JsZW1zIGlzIHRoYXQgd2UgYXJlIGx1bXBpbmcgYWxsIHRoZSAibGVnYWN5IiBl
eHRlbnNpb25zCj4+ID4gdG9nZXRoZXIuICBXaGlsZSBzb21lIG9mIHRoZW0gYXJlIHNpbXBseSBh
IGJhZCBpZGVhIGFuZCBzaG91bGRuJ3QKPj4gPiByZWFsbHkgYmUgaW1wbGVtZW50ZWQgZm9yIGFu
eXRoaW5nIG5ldyBldmVyLCBvdGhlcnMgbGlrZSB0aGUgc2ZlbmNlLnZtYQo+PiA+IGFuZCBpcGkg
b25lcyBhcmUgbmVlZGVkIHVudGlsIHdlIGhhdmUgaGFyZHdhcmUgc3VwcG9ydCB0byBhdm9pZCB0
aGVtCj4+ID4gYW5kIHBvc3NpYmx5IGZvcmV2ZXIgZm9yIHZpcnR1YWxpemF0aW9uLgo+PiA+Cj4+
ID4gU28gZWl0aGVyIHdlIHVzZSBkaWZmZXJlbnQgbWFya2VycyBvZiBsZWdhY3kgZm9yIHRoZW0s
IG9yIHdlIGF0IGxlYXN0Cj4+ID4gZGVmaW5lIG5ldyBleHRlbnNpb25zIHRoYXQgcmVwbGFjZSB0
aGVtIGF0IHRoZSBzYW1lIHRpbWUuICBXaGF0IEkKPj4gPiB3YW50IHRvIGF2b2lkIGlzIHRoZSBw
b3NzaWLRlmx5IG9mIGFuIGltcGxlbWVudGF0aW9uIHVzaW5nIHRoZSByZWFsbHkKPj4gPiBsZWdh
Y3kgYml0cyBhbmQgbmV3IGV4dGVuc2lvbnMgYXQgdGhlIHNhbWUgdGltZS4KPj4gPgo+PiAKPj4g
Tm9taW5hbGx5IHdlJ3ZlIGdvdCB0byByZXBsYWNlIHRoZXNlIGFzIHdlbGwgYmVjYXVzZSB3ZSBk
aWRuJ3QgaW5jbHVkZQo+PiB0aGUgbGVuZ3RoIG9mIHRoZSBoYXJ0IG1hc2suIAo+Cj4gV2VsbCwg
bGV0J3MgZG8gdGhhdCBhcyBwYXJ0IG9mIGRlZmluaW5pbmcgdGhlIGZpcnN0IHJlYWwgcG9zdC0w
LjEKPiBTQkkgdGhlbiwgYW5kIGRvbid0IGJvdGhlciBkZWZpbmluZyB0aGUgb2xkIG9uZXMgYXMg
bGVnYWN5IGF0IGFsbC4KPgo+IEp1c3QgdHdvIGRpZmZlcmVudCBzcGVjcyB0aGF0IGRvbid0IGlu
dGVyYWN0IGV4Y2VwdCB0aGF0IHdlIHJlc2VydmUKPiBleHRlbnNpb24gc3BhY2UgaW4gdGhlIG5l
dyBvbmUgZm9yIHRoZSBvbGQgb25lIHNvIHRoYXQgb25lIFNCSSBzcGVjCj4gY2FuIGltcGxlbWVu
dCBib3RoLgoKTWFrZXMgc2Vuc2UuICBXZSdyZSBnZXR0aW5nIGZpbmlzaCB3aXRoIHRoaXMgImp1
c3QgZ28gd3JpdGUgZXZlcnl0aGluZyBkb3duIiAKZXhlcmNpc2UsIHNvIHdlIGNhbiBzdGFydCBh
Y3R1YWxseSBkb2luZyB0aGluZ3Mgbm93IDopLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KbGludXgtcmlzY3YgbWFpbGluZyBsaXN0CmxpbnV4LXJpc2N2
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1yaXNjdgo=
