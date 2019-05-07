Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C956215ECD
	for <lists+linux-riscv@lfdr.de>; Tue,  7 May 2019 10:05:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Lp3fvX8uCLzSiPRO/wEMBYBv3Ws5DbQkIPJViV/Qy7s=; b=mcc3tMNWe9HrI/
	TlIPfRHOgBbV2eyoMI6gDeJUe7CXNawaot5D+gsyuMJlwOWZgOIMZjAS9RObiSbttwIniBZoQcTJ9
	X4K3eNVRxwJBLLXvmO9LyRpTALSDPNUXDDctcKoHVj50Ubqixt1KTKA+ANdU2Fv3TQCIiwv2PZvol
	vG9Mcy1CIsuoY5OAkEAQaKuhJso0aiI044urJmehkFujQ3Ls5MAFiTSWw38+CJOFBDa9/yN8XQEf3
	NbaSMWNAD3M//vXzm0FFerJ2eoogWleA/Bi1Zz66M8SMeRlvAo2AJMTH/A6xHhCj4ICz1vJRzRYHB
	cP3KsttBYlx/bOIjM7zw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNv64-0000gr-PR; Tue, 07 May 2019 08:05:08 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNv5y-00008F-Af
 for linux-riscv@lists.infradead.org; Tue, 07 May 2019 08:05:05 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 67009AE52;
 Tue,  7 May 2019 08:04:59 +0000 (UTC)
Subject: Re: [PATCH] riscv: fix locking violation in page fault handler
To: Andreas Schwab <schwab@suse.de>, linux-riscv@lists.infradead.org
References: <mvm5zqmu35d.fsf@suse.de>
From: Nikolay Borisov <nborisov@suse.com>
Openpgp: preference=signencrypt
Autocrypt: addr=nborisov@suse.com; prefer-encrypt=mutual; keydata=
 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
Message-ID: <b2030f8c-010e-7088-271e-e2398f7d37db@suse.com>
Date: Tue, 7 May 2019 11:04:58 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <mvm5zqmu35d.fsf@suse.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_010502_692697_721B254C 
X-CRM114-Status: GOOD (  18.47  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

CgpPbiA3LjA1LjE5INCzLiAxMDozNiDRhy4sIEFuZHJlYXMgU2Nod2FiIHdyb3RlOgo+IFdoZW4g
YSB1c2VyIG1vZGUgcHJvY2VzcyBhY2Nlc3NlcyBhbiBhZGRyZXNzIGluIHRoZSB2bWFsbG9jIGFy
ZWEKPiBkb19wYWdlX2ZhdWx0IHRyaWVzIHRvIHVubG9jayB0aGUgbW1hcCBzZW1hcGhvcmUgd2hl
biBpdCBpc24ndCBsb2NrZWQuCj4gCj4gU2lnbmVkLW9mZi1ieTogQW5kcmVhcyBTY2h3YWIgPHNj
aHdhYkBzdXNlLmRlPgo+IC0tLQo+ICBhcmNoL3Jpc2N2L21tL2ZhdWx0LmMgfCAzICsrLQo+ICAx
IGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4gCj4gZGlmZiAt
LWdpdCBhL2FyY2gvcmlzY3YvbW0vZmF1bHQuYyBiL2FyY2gvcmlzY3YvbW0vZmF1bHQuYwo+IGlu
ZGV4IDg4NDAxZDUxMjViYy4uYzUxODc4ZTVhNjZhIDEwMDY0NAo+IC0tLSBhL2FyY2gvcmlzY3Yv
bW0vZmF1bHQuYwo+ICsrKyBiL2FyY2gvcmlzY3YvbW0vZmF1bHQuYwo+IEBAIC0xODEsNiArMTgx
LDcgQEAgYXNtbGlua2FnZSB2b2lkIGRvX3BhZ2VfZmF1bHQoc3RydWN0IHB0X3JlZ3MgKnJlZ3Mp
Cj4gIAl1cF9yZWFkKCZtbS0+bW1hcF9zZW0pOwo+ICAJLyogVXNlciBtb2RlIGFjY2Vzc2VzIGp1
c3QgY2F1c2UgYSBTSUdTRUdWICovCj4gIAlpZiAodXNlcl9tb2RlKHJlZ3MpKSB7Cj4gK2JhZF9h
cmVhX2RvX3RyYXA6Cj4gIAkJZG9fdHJhcChyZWdzLCBTSUdTRUdWLCBjb2RlLCBhZGRyLCB0c2sp
Owo+ICAJCXJldHVybjsKPiAgCX0KPiBAQCAtMjMwLDcgKzIzMSw3IEBAIGFzbWxpbmthZ2Ugdm9p
ZCBkb19wYWdlX2ZhdWx0KHN0cnVjdCBwdF9yZWdzICpyZWdzKQo+ICAJCWludCBpbmRleDsKPiAg
Cj4gIAkJaWYgKHVzZXJfbW9kZShyZWdzKSkKPiAtCQkJZ290byBiYWRfYXJlYTsKPiArCQkJZ290
byBiYWRfYXJlYV9kb190cmFwOwo+ICAKPiAgCQkvKgo+ICAJCSAqIFN5bmNocm9uaXplIHRoaXMg
dGFzaydzIHRvcCBsZXZlbCBwYWdlLXRhYmxlCj4gCgpJbiB0aGlzIGNhc2UgSSB0aGluayBpdCB3
aWxsIGJlIGEgbG90IGNsZWFuZXIgaWYgeW91IGp1c3QgZHVwbGljYXRlZCB0aGUKZG9fdHJhcCBj
YWxsLiBPbiBhIHNsaWdodGx5IGRpZmZlcmVudCBub3RlIC0gaXMgdGhlcmUgYW55IHJlYXNvbiB3
aHkKZG9fcGFnZV9mYXVsdCBpcyBzdWNoIGEgc3BhZ2hldHRpIG1lc3M/IEF0IHRoZSB2ZXJ5IGxl
YXN0IHRoZSBjb2RlIHVuZGVyCm5vX2NvbnRleHQgbGFiZWwgY291bGQgZ28gaW50byBpdCdzIG93
biBmdW5jdGlvbiBzaW5jZSBpdCBqdXN0IGtpbGxzIHRoZQpwcm9jZXNzIGFuZCBuZXZlciByZXR1
cm5zPyBGdXJ0aGVybW9yZSB0aGUgd2hvbGUgdm1hbGxvY19mYXVsdCBqdXN0CmNyaWVzIGZvciBi
ZWluZyBmYWN0b3JlZCAgb3V0IGluIGEgZnVuY3Rpb24sIGl0J3MgZXhwbGljaXRseSBpbiBpdCdz
IG93bgogYmxvY2suCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpsaW51eC1yaXNjdiBtYWlsaW5nIGxpc3QKbGludXgtcmlzY3ZAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJp
c2N2Cg==
