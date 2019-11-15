Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D2A0FE778
	for <lists+linux-riscv@lfdr.de>; Fri, 15 Nov 2019 23:15:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=tOp32kMIXR8ciT7voVgjoHk7rymy/EoJI/UTwrVQzxA=; b=lJF6Z5+LX3ahRSwNFuFVzvWaC
	rD4WgX9c2ry9AftAOggm9R7bFp+4sTuEMFcVmjDRppkSByorQiut9XUqLouhanAbQz/f+8SL77AUC
	2yv+yoHOfl0l9eMgv8aKbSPny2WTQvrAaBPDhpdFOvpTpMCCRTp/U0ImNeURGidbiPbRpCvOA4JKR
	cmPSx965Dnlf1RiRZkFXufy6BjtIV4w/8PVsRqw3rkSPzenbz0PcHtgNWtyrwLp5ZtUu4wwc6IiN7
	OFU7Z7LsT7zs/+t1WMSjGtMqxRuctKkKVtrjZ5gjg8PozgGxhX9StO0f4Arw/PNe/zFrz5RTLuvgJ
	IwaK7lD2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVjsG-000241-Iq; Fri, 15 Nov 2019 22:15:28 +0000
Received: from mailgate-2.ics.forth.gr ([139.91.1.5])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVjsC-00022e-2Z
 for linux-riscv@lists.infradead.org; Fri, 15 Nov 2019 22:15:26 +0000
Received: from av3.ics.forth.gr (av3in [139.91.1.77])
 by mailgate-2.ics.forth.gr (8.14.4/ICS-FORTH/V10-1.8-GATE) with ESMTP id
 xAFMEr1p017647; Fri, 15 Nov 2019 22:14:55 GMT
X-AuditID: 8b5b014d-771ff70000003678-bf-5dcf235dc69b
Received: from enigma.ics.forth.gr (enigma.ics.forth.gr [139.91.151.35])
 by av3.ics.forth.gr (Symantec Messaging Gateway) with SMTP id
 C0.AA.13944.D532FCD5; Sat, 16 Nov 2019 00:14:53 +0200 (EET)
X-ICS-AUTH-INFO: Authenticated user:  at ics.forth.gr
MIME-Version: 1.0
Date: Sat, 16 Nov 2019 00:14:52 +0200
From: Nick Kossifidis <mick@ics.forth.gr>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: QEMU RISC-V virt machine poweroff driver
Organization: FORTH
In-Reply-To: <20191107212408.11857-1-hch@lst.de>
References: <20191107212408.11857-1-hch@lst.de>
Message-ID: <cca46a52ee91548962e2f9da4cf2202e@mailhost.ics.forth.gr>
X-Sender: mick@mailhost.ics.forth.gr
User-Agent: Roundcube Webmail/1.3.9
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrCLMWRmVeSWpSXmKPExsXSHT1dWTdW+XyswcZjPBbzj5xjtVi5+iiT
 xefeI4wW2z63sFksvX6RyeLl5R5mi7ZZ/Bate4+wW5zeXeLA6bFm3hpGjzcvX7J4bFrVyeax
 eUm9x+6bDWwel5qvs3t83iQXwB7FZZOSmpNZllqkb5fAlfHj8SPWghlsFX8mdLM1MM5g7WLk
 5JAQMJF43XGSBcQWEjjCKLHsUC1E3FRi9t5ORhCbV0BQ4uTMJ2A1zAIWElOv7GeEsOUlmrfO
 ZgaxWQRUJWZcXQFmswloSsy/dBCsXkRASeLpq7NA9VxA9TuZJDYeXQO2WBhoQUfrTTYQm19A
 WOLT3YtAcQ4OTgEDiYNvJCHu0ZeYvm8iO0iYV8BF4tlxV4jTVCQ+/H7ADmKLCihL3Dz8nH0C
 o+AsJJfOQnLpLCSXLmBkXsUokFhmrJeZXKyXll9UkqGXXrSJERwRjL47GG9vfqt3iJGJg/EQ
 owQHs5II746KE7FCvCmJlVWpRfnxRaU5qcWHGKU5WJTEefO4l8cKCaQnlqRmp6YWpBbBZJk4
 OKUamOb3XT0b8jIwkOOxa7xm1dyvE2fzTVNlcTzyIHRmrIvUgc2T7tQv+F+hlvRG52Ls7wU1
 uhIzbW18BJe9MX+4P+ljhvTU9qp1140MrLceV2ub7lzVZPq3nzeuY1VHAn9E7H1uhy9u/85d
 ufNqreyKif2i2yLlhA7wLJg6952y01nV13eSKxn/bbz09qPOIw71U2UBh14l7+GJOe6ys+WG
 +YfiiMO/7p4JmvTx9zvR0JxNoawnWWpefCtYaLqsT+bgpR1HJk7+/ED8y9WJNab/hM5uzZm0
 Zll3Ku+WtT8tVFmu923c7jvnr2msNZcVy6GeRzv3+XzZmVW9bMu7n24BtS+F/hcE2M5X+MD6
 ck3omRkHlFiKMxINtZiLihMBSll9NvcCAAA=
X-Greylist: inspected by milter-greylist-4.6.2 (mailgate-2.ics.forth.gr
 [139.91.1.5]);
 Fri, 15 Nov 2019 22:14:55 +0000 (GMT) for IP:'139.91.1.77' DOMAIN:'av3in'
 HELO:'av3.ics.forth.gr' FROM:'mick@ics.forth.gr' RCPT:''
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mailgate-2.ics.forth.gr [139.91.1.5]); Fri, 15 Nov 2019 22:14:55 +0000 (GMT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191115_141524_484684_83BCD427 
X-CRM114-Status: GOOD (  10.56  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [139.91.1.5 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-pm@vger.kernel.org, Sebastian Reichel <sre@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, linux-riscv@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

zqPPhM65z4IgMjAxOS0xMS0wNyAyMzoyNCwgQ2hyaXN0b3BoIEhlbGx3aWcgzq3Os8+BzrHPiM61
Ogo+IEhpIGFsbCwKPiAKPiB0aGlzIHBhdGNoIGFkZCBhIGRyaXZlciBmb3IgdGhlIHRlc3QgZGV2
aWNlIGluIHRoZSBRZW11IFJJU0MtVgo+IHZpcnQgbWFjaGluZSB3aGljaCBhbGxvd3MgcHJvcGVy
bHkgc2h1dHRpbmcgZG93biB0aGUgVk0uCj4gSXQgYWxzbyBpcyBhZGRlZCB0byB0aGUgcmlzY3Yg
ZGVmY29uZmlnIGdpdmVuIHRoYXQgcWVtdS12aXJ0Cj4gaXMgdGhlIG1vc3QgcG9wdWxhciByaXNj
diBwbGF0Zm9ybS4KPiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwo+IGxpbnV4LXJpc2N2IG1haWxpbmcgbGlzdAo+IGxpbnV4LXJpc2N2QGxpc3RzLmlu
ZnJhZGVhZC5vcmcKPiBodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXJpc2N2CgpXZSBkbyB0aGlzIGFscmVhZHkgdGhyb3VnaCBPcGVuU0JJLCBJIGNvbnRy
aWJ1dGVkIGEgcGF0Y2ggZm9yIHRoaXMgc29tZSAKdGltZSBhZ28uCgpodHRwczovL2dpdGh1Yi5j
b20vcmlzY3Yvb3BlbnNiaS9jb21taXQvNTFlNTQzNTExYTc0MjVkYTFhNTM3OGUxNDlkZTBiNDU5
MjhjNzExMSNkaWZmLTM2ZWNjNDczMTNmZjEzZTQwNmM1M2I5OTQ3MWYyOTRlCgpMYXN0IHRpbWUg
SSBjaGVja2VkIEkgY291bGQganVzdCBoYWx0IGFuZCB0aGUgc3lzdGVtIHdvdWxkIHNodXQgZG93
biAKcHJvcGVybHkuCgpSZWdhcmRzLApOaWNrCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpsaW51eC1yaXNjdiBtYWlsaW5nIGxpc3QKbGludXgtcmlzY3ZA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXJpc2N2Cg==
