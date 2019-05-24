Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DA3829A3E
	for <lists+linux-riscv@lfdr.de>; Fri, 24 May 2019 16:46:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DbIBos1gSaRFJV3sCSpAcX9Ua4bPEfWkfAPldUeVaXk=; b=ZYrUQ2/9Aiudsp
	Crp7s3FTGXRtSsmbE/pfhqnwUdZjnNbmfLd5IMxaFyyC6OBnU8xYIfuFqPwX2d37jMECvOtFMlUke
	D4/Q7SoWwfQa+zvUS+VlChlrXJZO+LgNR6Ux+5/84rBhgZRz3nY4w9WoPSk6VHmQlFtug2VBiUpop
	b1K2ro3dEaJglFFF6ey5Y4UqzUZR6Z6H96qkC0FIaSHcogXgysdemxBMDqsjETilXpZBL5ZtSnuYd
	xFYMCG9aTXlHwf0amBpgvotRuF92HRGaMtp00t4Jdyfq+y+V5NLTcuso4LwZc5vUvIGTtxjYLuukV
	7LacGtCFLHYqYMfb26Mg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUBT6-00063h-GJ; Fri, 24 May 2019 14:46:48 +0000
Received: from mail-it1-x141.google.com ([2607:f8b0:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUBT2-000620-4B
 for linux-riscv@lists.infradead.org; Fri, 24 May 2019 14:46:46 +0000
Received: by mail-it1-x141.google.com with SMTP id i63so14175583ita.3
 for <linux-riscv@lists.infradead.org>; Fri, 24 May 2019 07:46:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=vqC+oSMqnlkGP5YPOZnTxBC5trmZtNg7vqxF2FflN30=;
 b=TQZQAIxGgi/Kdtq44Fp6dQFTT25dbcAjKAOWP3go/S9jeLWMKz6I4aPhfQmGh1enX0
 77uvB0UQ/+ZVdLszK6jGb5QpcL0rStlEwHRLlMyF4Q9Jx29H3YHCTLQ8X/T/tGxJ/mYj
 Q4kyp/9yAW44A1F5uVh9mcnMPtDUwng7NGRLGzQKIkFBViVhLfeIG4eFFcfEwoNKF9WQ
 z3lB1rXOhGTTOVmr+QyqnzFlgYlmt3u+Bfh77OZW2kAepl2oXTibEKje2zGXkvG3h2x3
 T1lLyK2A93QF2qP3GwWqNTV46UYblrrBmej8vR/OV5r+7MpnzdD8RLqgAeRQIP+Ptj9h
 b3cA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=vqC+oSMqnlkGP5YPOZnTxBC5trmZtNg7vqxF2FflN30=;
 b=RBpFsKDvXCIlvq4sYQAaZyOjXibleYsT0kKjKV7m5/92bQGCol3rPjTLFNh2QDOCbB
 svPPI8PQUz0FPrvQSyfnqmORcsKJC5lnV0zuGtXFSuGQllMLL/i3xIsBB7/ZiSHJTBlw
 r2Yh3kkzrC4xeERQ3jZoTGktWpjPkFIP7BUJVTTndM6j0sKVI8qfeaFh8p/7MDw5L+TO
 c9xTlhE4Vpe0sUJQLBDrWZGUXrE/AXBpTifEQIfksdWMD6vQZ4O5uWK/vzhl27n6aSUr
 QAsg2v3OMJTb05hWnnCemnuW+/EHr9+jotkjB0bGyD+B1KpLaHaeLofWm8Ucsrs53cxT
 me6Q==
X-Gm-Message-State: APjAAAWT8WmwR087ub92pxbwdeUSIHn8MJ2AJTE/lf3AFR/j9Vaqn/G4
 RNAc+1grt4ETbgFupJxtges7Ag==
X-Google-Smtp-Source: APXvYqyeUX6lT49fDv6B47cLhP+xXXjPSxfSg0g9T5qARtHAPDme1QRzEX8ptAJPl1fMMLm+hcU+FQ==
X-Received: by 2002:a24:1711:: with SMTP id 17mr19721378ith.70.1558709202991; 
 Fri, 24 May 2019 07:46:42 -0700 (PDT)
Received: from [192.168.1.196] ([216.160.37.230])
 by smtp.gmail.com with ESMTPSA id n17sm1015667ioa.0.2019.05.24.07.46.42
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 24 May 2019 07:46:42 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
Subject: Re: 5.2-rc1 boot on Unleashed
From: Troy Benjegerdes <troy.benjegerdes@sifive.com>
In-Reply-To: <aac8c9b2-1b8d-e87d-88a5-f13222004a88@wdc.com>
Date: Fri, 24 May 2019 09:46:41 -0500
Message-Id: <2818D3E3-3BDB-442B-822D-0FD221BCCA05@sifive.com>
References: <5c1ffb76-b18a-dbae-d3ad-f3d2cd41ee44@wdc.com>
 <alpine.DEB.2.21.9999.1905220942040.20842@viisi.sifive.com>
 <db248e63-c0bc-7fd8-cf2d-d13c8f140036@wdc.com>
 <alpine.DEB.2.21.9999.1905221334460.23235@viisi.sifive.com>
 <8F4FB234-FD5B-4AD6-99BD-57A40A79A024@sifive.com>
 <aac8c9b2-1b8d-e87d-88a5-f13222004a88@wdc.com>
To: Atish Patra <atish.patra@wdc.com>
X-Mailer: Apple Mail (2.3445.9.1)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_074644_300603_4EDD9290 
X-CRM114-Status: GOOD (  15.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Anup Patel <Anup.Patel@wdc.com>,
 =?utf-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@gmail.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 Palmer Dabbelt <palmer@sifive.com>, Paul Walmsley <paul.walmsley@sifive.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Cgo+IE9uIE1heSAyMywgMjAxOSwgYXQgMTA6NTkgUE0sIEF0aXNoIFBhdHJhIDxhdGlzaC5wYXRy
YUB3ZGMuY29tPiB3cm90ZToKPiAKPiBPbiA1LzIzLzE5IDU6MjMgUE0sIFRyb3kgQmVuamVnZXJk
ZXMgd3JvdGU6Cj4+PiBPbiBNYXkgMjIsIDIwMTksIGF0IDM6NDMgUE0sIFBhdWwgV2FsbXNsZXkg
PHBhdWwud2FsbXNsZXlAc2lmaXZlLmNvbT4gd3JvdGU6Cj4+PiAKPj4+ICsgQW51cCwgVHJveQo+
Pj4gCj4+PiBPbiBXZWQsIDIyIE1heSAyMDE5LCBBdGlzaCBQYXRyYSB3cm90ZToKPj4+IAo+Pj4+
IE9uIDUvMjIvMTkgOTo0MiBBTSwgUGF1bCBXYWxtc2xleSB3cm90ZToKPj4+Pj4gQW0gY2hlY2tp
bmcgb24gdGhpcyBub3cgYW5kIGhvcGUgdG8gaGF2ZSBzb21lIGNvbmNsdXNpb24gb24gaXQgdGhp
cyB3ZWVrLgo+Pj4+IAo+Pj4+IFRoYW5rcy4gQW55IGNoYW5jZSB5b3UgY2FuIHRha2UgYSBsb29r
IGF0IHRoZSBVLUJvb3QgY2xvY2sgZHJpdmVyIHRvIHBhdGNoIGl0Cj4+Pj4gYXMgcGVyIHRoZSBE
VCBjaGFuZ2VzID8KPj4+IAo+Pj4gSSBwcm9iYWJseSB3b24ndCBoYXZlIHRoZSBjaGFuY2UgdG8g
Z2V0IHRvIGl0IGZvciBhIHdoaWxlLiAgTG9va3MgbGlrZQo+Pj4gQW51cCB3YXMgdGhlIG9uZSB3
aG8gcG9zdGVkIHRoZSBjbG9jayBkcml2ZXIgdG8gVS1Cb290IC0gY2FuIGhlIHRha2UgYQo+Pj4g
bG9vayBhdCBpdD8KPj4+IAo+Pj4gV2UndmUgYWxzbyBhc2tlZCBUcm95IHRvIGxvb2sgYXQgdXBz
dHJlYW0gVS1ib290IHJlbGF0ZWQgaXNzdWVzLCBidXQKPj4+IEknbSB1bnN1cmUgd2hlbiBwYXRj
aGVzIHdpbGwgc3RhcnQgZmxvd2luZyB1cHN0cmVhbS4KPj4+IAo+Pj4gCj4+PiAtIFBhdWwKPj4g
SeKAmWQgcHJlZmVyIHRvIGhvbGQgb2ZmIG9uIGFueSBjaGFuZ2VzIHRvIFUtYm9vdCB1bnRpbCB3
ZSBoYXZlIGEgbW9yZSBjb21wbGV0ZSBwYXRjaCBzZXQuIEdQSU8gYW5kIGV0aGVybmV0IGVudHJp
ZXMgYXJlIG1pc3NpbmcgZnJvbSB0aG9zZSBkZXZpY2UgdHJlZXMsIGFuZCB3ZSBoYXZlIGEgd29y
a2luZyBVLWJvb3QgZGV2aWNlIHRyZWUgbm93LiBJZiB0aGUga2VybmVsIG5lZWRzIHNvbWV0aGlu
ZyBkaWZmZXJlbnQgd2UgY2FuIGxvYWQgdGhlIGRldmljZSB0cmVlIHRoZSBrZXJuZWwgbmVlZHMg
Zm9yIGF3aGlsZS4KPiAKPiBJIGRvbid0IHRoaW5rIHRoYXQncyBhIGdvb2QgaWRlYS4gSXQgd2ls
bCB1bm5lY2Vzc2FyaWx5IGJsb2NrIGV2ZXJ5Ym9keSdzIHNldHVwIHRoYXQgaXMgc3VwcG9zZWQg
dG8gd29yayB3aXRoIFUtQm9vdC4gSSBwcmVmZXIgaWYgd2UgY2FuIHBhdGNoIFUtQm9vdCBhbmQg
dW5ibG9jayBldmVyeWJvZHkgc29vbmVyIHRoYW4gbGF0ZXIuCj4gCj4+IFRoZSBVLWJvb3QgZGV2
aWNlIHRyZWUgaXMgZ29pbmcgdG8gaGF2ZSBzb21lIHRoaW5ncyBpbiBpdCB0aGUga2VybmVsIGRv
ZXNu4oCZdCBjYXJlIGFib3V0IGFueXdheSwgc28gd2XigJl2ZSBhbHJlYWR5IGdvdCBkaXZlcmdl
bmNlIGJldHdlZW4gdGhlIHR3by4gSWRlYWxseSB0aGUgVS1ib290IHZlcnNpb24gaXMgYSBzdXBl
cnNldCBvZiB0aGUga2VybmVsIHZlcnNpb24uIFdlIGFscmVhZHkgaGFkIG9uZSBkaXNydXB0aXZl
IGNoYW5nZSB3aXRoIHRoZSBjbG9jayBkcml2ZXIsIHNvIHdoYXQgaXMgdG8gcHJldmVudCB0aGVy
ZSB0byBiZSBtb3JlIGRpc3J1cHRpdmUgY2hhbmdlcyBpbiB0aGUgZXRoZXJuZXQvR1BJTyBkZXZp
Y2UgdHJlZSBlbnRyaWVzIHRoYXQgZ28gaW4gdGhlIGtlcm5lbCB1bmxlc3Mgd2UgaGF2ZSBhIGRy
YWZ0IG9mIHdoYXQgdGhvc2UgZW50cmllcyBzaG91bGQgbG9vayBsaWtlIHRoYXQgaXMgYWNjZXB0
YWJsZT8KPiBJSVJDLCBjdXJyZW50IFUtQm9vdCBTIG1vZGUgcG9ydCBkb2Vzbid0IG5lZWQgYSBH
UElPIGRyaXZlciBhbmQgZXRoZXJuZXQgZHJpdmVyIGlzIHByb3ZpZGVkIGJ5IHRoZSBjb21tb24g
bWFjYiBkcml2ZXIuIElmIHRoZXJlIGFyZSBhbnkgRFQgY2hhbmdlcyBzdWdnZXN0ZWQgYnkga2Vy
bmVsLCB3ZSBjYW4gYWx3YXlzIHBhdGNoIFUtQm9vdC4KClRoZSBNLW1vZGUgcG9ydCB3aWxsIG5l
ZWQgYSBHUElPIGRyaXZlciwgYXMgdGhlIG1hY2IgZHJpdmVyIG5lZWRzIHByb3BlciBhIHByb3Bl
ciBHUElPIGRyaXZlciB0byByZXNldCB0aGUgcGh5LgoKSSBoYXZlIG5vIGlzc3VlcyB1cGRhdGlu
ZyB0aGUgUFJDSSBkcml2ZXIgRFQgZm9ybWF0IGlmIHdlIGFsc28gaGF2ZSB0aGUgcmVzdCBvZiB0
aGUgRFQgZW50cmllcyBuZWVkZWQgdG8gYm9vdCBhIHdvcmtpbmcgc3lzdGVtLCBJIGp1c3QgaGF2
ZSBub3Qgc2VlbiBhbiBleGFtcGxlIG9mIHRoYXQgb3RoZXIgdGhhbiB3aGF0IEkgaGF2ZSBhdCBo
dHRwczovL2dpdGh1Yi5jb20vc2lmaXZlL0hpRml2ZV9VLUJvb3QvYmxvYi9yZWdyZXNzaW9uL2Fy
Y2gvcmlzY3YvZHRzL2hpZml2ZV91NTQwLmR0cwpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpsaW51eC1yaXNjdiBtYWlsaW5nIGxpc3QKbGludXgtcmlzY3ZA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXJpc2N2Cg==
