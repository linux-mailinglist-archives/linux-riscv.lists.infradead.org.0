Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6599BF8B21
	for <lists+linux-riscv@lfdr.de>; Tue, 12 Nov 2019 09:52:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AIg7m9NZ8wjSYUu9y8sZMN4Hz6bA9T92nOaxHYj5igc=; b=P5uGdMgUA7H5D9
	yvWGNHjDzx8/t9W5Uw+7AbxWilECmR/aCkEIvcpT8ucCgGX1BE22MtGYGzqePOu7InlcVCX9IdrCH
	YTiL81YejuwRWVu2ty6qWZN5IaCqDllDpLeeYYeBzwgBeY1KP4/sq3QJkplJN5IVe6AJRHjRay30N
	CKOzVGgiXhbSuMVOW9BNBLmOM15z6fIwz+H9g67MQ5gt3wwDXbVc8qTzkV2z/ZMJ6Rcoc1cYSMW67
	/ydYd1IvBfINueF4mGc0l4yf1EhoMEktNlQP/Sxy0F/1dFVBzbuB2YcOEDT/915DWarc5vQClVfu7
	0i8ddgpNrCXS7smKWAlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iURur-0004QZ-4F; Tue, 12 Nov 2019 08:52:49 +0000
Received: from mail-qv1-xf43.google.com ([2607:f8b0:4864:20::f43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iURuD-0003dc-N2; Tue, 12 Nov 2019 08:52:11 +0000
Received: by mail-qv1-xf43.google.com with SMTP id v16so6048099qvq.6;
 Tue, 12 Nov 2019 00:52:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=cROzNmdYxisqWoueYc9W+eIG2Mx3qlHP7NfXN3GI/FQ=;
 b=PF/S6iWT4CYos5f/Qxiyrj819yA9DztoVnQngjCM7ST0A6/xHzOKuFza6aEAOEIHFD
 IRs3g/sDkmOZsVUg5BfLLNbhxSMsVVb1DEnttjxKmX81P3vu2Wx0WRs/PKqDolQ/IqMK
 uPtjTNahNUl/KH+yjsZZF+CoOeh+jZqwG7uXGo3nhOFae7Ampy0721WlrVLudKDpbQ6w
 Ne05cDDAK3nINRCW8InLefN68zNgFYrAuL9YQ5NnpKcJktjb30Vy1+p0A29rUFLtn67e
 CyPwRK92ARrt+aagj3u2Ed/rcJMFZLBJNDyZ8A+QOoxqRdIwXIhdl4nE8zBZgMbMWl9y
 KZDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=cROzNmdYxisqWoueYc9W+eIG2Mx3qlHP7NfXN3GI/FQ=;
 b=FoZPTe1/fJKzTQKyt7hvjnb0HkVEAGPHcRiVOkUl5azh8cml+THgWs8R2MXKAba825
 BSNtNLIO3ggNbJ/IZpmmCQ6puN23Ah3P4zmbj0TCdDNVaTBy3Dv7RLmcF6cgnZqjZ3rl
 y+SMDbCt0zKXcFac5BJ30KQbzJTpca3A0Yp+C0vX6mQYVJL3rMRcKIDWcdyH3jtAb49V
 cmeo+x16bhSs62oMpJkN9clE0IBgnxQFj6+az5vyqxeI4EcNMj8bd8rPudGw8iA9/R5I
 A73smyIeeTKwxj5w7OdmH9jlB7P4egtud/40xg2m0CdjiQfEWTEPZiVu2/2Ysa8ZCanr
 2ESg==
X-Gm-Message-State: APjAAAWdZf3CeelhGeQwovEbO2GvJMm6KkXOB3C8MvOwzFT48WuksGPJ
 01mOXn2COM0DkRb8TwkSlx6VHsXTjZi5l6mY8/U=
X-Google-Smtp-Source: APXvYqx6NKc2ScCo7khfKTbduCZ3tXXPnpOsLDXFoJ5p/wlTm7Nj9aXW2BAPakV8QIjz95Uh9EuSyoZxwk73743by2g=
X-Received: by 2002:a0c:d0e1:: with SMTP id b30mr27967066qvh.197.1573548727413; 
 Tue, 12 Nov 2019 00:52:07 -0800 (PST)
MIME-Version: 1.0
References: <20191029064834.23438-1-hch@lst.de>
 <20191029064834.23438-20-hch@lst.de>
In-Reply-To: <20191029064834.23438-20-hch@lst.de>
From: Greentime Hu <green.hu@gmail.com>
Date: Tue, 12 Nov 2019 16:51:29 +0800
Message-ID: <CAEbi=3c58Pb=Q3BqeTLhEK8OsdTpbD5tAe6VcGOC7JBWbTjetQ@mail.gmail.com>
Subject: Re: [PATCH 19/21] nds32: use generic ioremap
To: Christoph Hellwig <hch@lst.de>, Nickhu <nickhu@andestech.com>,
 alankao@andestech.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_005209_769779_B33D4431 
X-CRM114-Status: GOOD (  18.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (green.hu[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-ia64@vger.kernel.org, linux-sh@vger.kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Guo Ren <guoren@kernel.org>, sparclinux <sparclinux@vger.kernel.org>,
 linux-riscv@lists.infradead.org, Vincent Chen <deanbo422@gmail.com>,
 linux-arch <linux-arch@vger.kernel.org>,
 linux-s390 <linux-s390@vger.kernel.org>, linux-hexagon@vger.kernel.org,
 x86@kernel.org, linux-snps-arc@lists.infradead.org,
 linux-xtensa@linux-xtensa.org, Arnd Bergmann <arnd@arndb.de>,
 linux-m68k@lists.linux-m68k.org, openrisc@lists.librecores.org,
 nios2-dev@lists.rocketboards.org, Guan Xuetao <gxt@pku.edu.cn>,
 linux-arm-kernel@lists.infradead.org, Michal Simek <monstr@monstr.eu>,
 linux-parisc@vger.kernel.org, linux-mips@vger.kernel.org,
 linux-alpha@vger.kernel.org, linux-mtd@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

SGksCgpDaHJpc3RvcGggSGVsbHdpZyA8aGNoQGxzdC5kZT4g5pa8IDIwMTnlubQxMOaciDI55pel
IOmAseS6jCDkuIvljYgyOjQ55a+r6YGT77yaCj4KPiBVc2UgdGhlIGdlbmVyaWMgaW9yZW1hcF9w
cm90IGFuZCBpb3VubWFwIGhlbHBlcnMuCj4KPiBOb3RlIHRoYXQgdGhlIGlvLmggaW5jbHVkZSBp
biBwZ3RhYmxlLmggaGFkIHRvIGJlIHJlbW92ZWQgdG8gbm90IGNyZWF0ZQo+IGFuIGluY2x1ZGUg
bG9vcC4gIEFzIGZhciBhcyBJIGNhbiB0ZWxsIHRoZXJlIHdhcyBubyBuZWVkIGZvciBpdCB0bwo+
IHN0YXJ0IHdpdGguCj4KPiBTaWduZWQtb2ZmLWJ5OiBDaHJpc3RvcGggSGVsbHdpZyA8aGNoQGxz
dC5kZT4KPiAtLS0KPiAgYXJjaC9uZHMzMi9LY29uZmlnICAgICAgICAgICAgICAgfCAgMSArCj4g
IGFyY2gvbmRzMzIvaW5jbHVkZS9hc20vaW8uaCAgICAgIHwgIDMgKy0KPiAgYXJjaC9uZHMzMi9p
bmNsdWRlL2FzbS9wZ3RhYmxlLmggfCAgNCArKy0KPiAgYXJjaC9uZHMzMi9tbS9NYWtlZmlsZSAg
ICAgICAgICAgfCAgMyArLQo+ICBhcmNoL25kczMyL21tL2lvcmVtYXAuYyAgICAgICAgICB8IDYy
IC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCj4gIDUgZmlsZXMgY2hhbmdlZCwgNiBp
bnNlcnRpb25zKCspLCA2NyBkZWxldGlvbnMoLSkKPiAgZGVsZXRlIG1vZGUgMTAwNjQ0IGFyY2gv
bmRzMzIvbW0vaW9yZW1hcC5jCj4KPiBkaWZmIC0tZ2l0IGEvYXJjaC9uZHMzMi9LY29uZmlnIGIv
YXJjaC9uZHMzMi9LY29uZmlnCj4gaW5kZXggZmJkNjgzMjk3MzdmLi4xMmMwNmE4MzNiN2MgMTAw
NjQ0Cj4gLS0tIGEvYXJjaC9uZHMzMi9LY29uZmlnCj4gKysrIGIvYXJjaC9uZHMzMi9LY29uZmln
Cj4gQEAgLTIwLDYgKzIwLDcgQEAgY29uZmlnIE5EUzMyCj4gICAgICAgICBzZWxlY3QgR0VORVJJ
Q19DTE9DS0VWRU5UUwo+ICAgICAgICAgc2VsZWN0IEdFTkVSSUNfSVJRX0NISVAKPiAgICAgICAg
IHNlbGVjdCBHRU5FUklDX0lSUV9TSE9XCj4gKyAgICAgICBzZWxlY3QgR0VORVJJQ19JT1JFTUFQ
Cj4gICAgICAgICBzZWxlY3QgR0VORVJJQ19MSUJfQVNITERJMwo+ICAgICAgICAgc2VsZWN0IEdF
TkVSSUNfTElCX0FTSFJESTMKPiAgICAgICAgIHNlbGVjdCBHRU5FUklDX0xJQl9DTVBESTIKPiBk
aWZmIC0tZ2l0IGEvYXJjaC9uZHMzMi9pbmNsdWRlL2FzbS9pby5oIGIvYXJjaC9uZHMzMi9pbmNs
dWRlL2FzbS9pby5oCj4gaW5kZXggZmIwZThhMjRjN2FmLi5lNTczNzhkMDQwMDYgMTAwNjQ0Cj4g
LS0tIGEvYXJjaC9uZHMzMi9pbmNsdWRlL2FzbS9pby5oCj4gKysrIGIvYXJjaC9uZHMzMi9pbmNs
dWRlL2FzbS9pby5oCj4gQEAgLTYsOCArNiw2IEBACj4KPiAgI2luY2x1ZGUgPGxpbnV4L3R5cGVz
Lmg+Cj4KPiAtdm9pZCBfX2lvbWVtICppb3JlbWFwKHBoeXNfYWRkcl90IHBoeXNfYWRkciwgc2l6
ZV90IHNpemUpOwo+IC1leHRlcm4gdm9pZCBpb3VubWFwKHZvbGF0aWxlIHZvaWQgX19pb21lbSAq
YWRkcik7Cj4gICNkZWZpbmUgX19yYXdfd3JpdGViIF9fcmF3X3dyaXRlYgo+ICBzdGF0aWMgaW5s
aW5lIHZvaWQgX19yYXdfd3JpdGViKHU4IHZhbCwgdm9sYXRpbGUgdm9pZCBfX2lvbWVtICphZGRy
KQo+ICB7Cj4gQEAgLTgwLDYgKzc4LDcgQEAgc3RhdGljIGlubGluZSB1MzIgX19yYXdfcmVhZGwo
Y29uc3Qgdm9sYXRpbGUgdm9pZCBfX2lvbWVtICphZGRyKQo+ICAjZGVmaW5lIHdyaXRlYih2LGMp
ICAgICh7IF9faW93bWIoKTsgd3JpdGViX3JlbGF4ZWQoKHYpLChjKSk7IH0pCj4gICNkZWZpbmUg
d3JpdGV3KHYsYykgICAgKHsgX19pb3dtYigpOyB3cml0ZXdfcmVsYXhlZCgodiksKGMpKTsgfSkK
PiAgI2RlZmluZSB3cml0ZWwodixjKSAgICAoeyBfX2lvd21iKCk7IHdyaXRlbF9yZWxheGVkKCh2
KSwoYykpOyB9KQo+ICsKPiAgI2luY2x1ZGUgPGFzbS1nZW5lcmljL2lvLmg+Cj4KPiAgI2VuZGlm
IC8qIF9fQVNNX05EUzMyX0lPX0ggKi8KPiBkaWZmIC0tZ2l0IGEvYXJjaC9uZHMzMi9pbmNsdWRl
L2FzbS9wZ3RhYmxlLmggYi9hcmNoL25kczMyL2luY2x1ZGUvYXNtL3BndGFibGUuaAo+IGluZGV4
IDA1ODhlYzk5NzI1Yy4uNmZiZjI1MWNmYzI2IDEwMDY0NAo+IC0tLSBhL2FyY2gvbmRzMzIvaW5j
bHVkZS9hc20vcGd0YWJsZS5oCj4gKysrIGIvYXJjaC9uZHMzMi9pbmNsdWRlL2FzbS9wZ3RhYmxl
LmgKPiBAQCAtMTIsNyArMTIsNiBAQAo+ICAjaW5jbHVkZSA8YXNtL25kczMyLmg+Cj4gICNpZm5k
ZWYgX19BU1NFTUJMWV9fCj4gICNpbmNsdWRlIDxhc20vZml4bWFwLmg+Cj4gLSNpbmNsdWRlIDxh
c20vaW8uaD4KPiAgI2luY2x1ZGUgPG5kczMyX2ludHJpbnNpYy5oPgo+ICAjZW5kaWYKPgo+IEBA
IC0xMzAsNiArMTI5LDkgQEAgZXh0ZXJuIHZvaWQgX19wZ2RfZXJyb3IoY29uc3QgY2hhciAqZmls
ZSwgaW50IGxpbmUsIHVuc2lnbmVkIGxvbmcgdmFsKTsKPiAgI2RlZmluZSBfUEFHRV9DQUNIRSAg
ICAgICAgICAgIF9QQUdFX0NfTUVNX1dCCj4gICNlbmRpZgo+Cj4gKyNkZWZpbmUgX1BBR0VfSU9S
RU1BUCBcCj4gKyAgICAgICAoX1BBR0VfViB8IF9QQUdFX01fS1JXIHwgX1BBR0VfRCB8IF9QQUdF
X0cgfCBfUEFHRV9DX0RFVikKPiArCj4gIC8qCj4gICAqICsgTGV2ZWwgMSBkZXNjcmlwdG9yIChQ
TUQpCj4gICAqLwo+IGRpZmYgLS1naXQgYS9hcmNoL25kczMyL21tL01ha2VmaWxlIGIvYXJjaC9u
ZHMzMi9tbS9NYWtlZmlsZQo+IGluZGV4IGJkMzYwZTQ1ODNiNS4uODk3ZWNhZjVjZjU0IDEwMDY0
NAo+IC0tLSBhL2FyY2gvbmRzMzIvbW0vTWFrZWZpbGUKPiArKysgYi9hcmNoL25kczMyL21tL01h
a2VmaWxlCj4gQEAgLTEsNiArMSw1IEBACj4gICMgU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQ
TC0yLjAtb25seQo+IC1vYmoteSAgICAgICAgICAgICAgICAgICAgICAgICAgOj0gZXh0YWJsZS5v
IHRsYi5vIFwKPiAtICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGZhdWx0Lm8gaW5p
dC5vIGlvcmVtYXAubyBtbWFwLm8gXAo+ICtvYmoteSAgICAgICAgICAgICAgICAgICAgICAgICAg
Oj0gZXh0YWJsZS5vIHRsYi5vIGZhdWx0Lm8gaW5pdC5vIG1tYXAubyBcCj4gICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgbW0tbmRzMzIubyBjYWNoZWZsdXNoLm8gcHJvYy5vCj4K
PiAgb2JqLSQoQ09ORklHX0FMSUdOTUVOVF9UUkFQKSAgICs9IGFsaWdubWVudC5vCj4gZGlmZiAt
LWdpdCBhL2FyY2gvbmRzMzIvbW0vaW9yZW1hcC5jIGIvYXJjaC9uZHMzMi9tbS9pb3JlbWFwLmMK
PiBkZWxldGVkIGZpbGUgbW9kZSAxMDA2NDQKPiBpbmRleCA2OTAxNDBiYjIzYTIuLjAwMDAwMDAw
MDAwMAo+IC0tLSBhL2FyY2gvbmRzMzIvbW0vaW9yZW1hcC5jCj4gKysrIC9kZXYvbnVsbAo+IEBA
IC0xLDYyICswLDAgQEAKPiAtLy8gU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjAKPiAt
Ly8gQ29weXJpZ2h0IChDKSAyMDA1LTIwMTcgQW5kZXMgVGVjaG5vbG9neSBDb3Jwb3JhdGlvbgo+
IC0KPiAtI2luY2x1ZGUgPGxpbnV4L3ZtYWxsb2MuaD4KPiAtI2luY2x1ZGUgPGxpbnV4L2lvLmg+
Cj4gLSNpbmNsdWRlIDxsaW51eC9tbS5oPgo+IC0jaW5jbHVkZSA8YXNtL3BndGFibGUuaD4KPiAt
Cj4gLXZvaWQgX19pb21lbSAqaW9yZW1hcChwaHlzX2FkZHJfdCBwaHlzX2FkZHIsIHNpemVfdCBz
aXplKTsKPiAtCj4gLXN0YXRpYyB2b2lkIF9faW9tZW0gKl9faW9yZW1hcF9jYWxsZXIocGh5c19h
ZGRyX3QgcGh5c19hZGRyLCBzaXplX3Qgc2l6ZSwKPiAtICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIHZvaWQgKmNhbGxlcikKPiAtewo+IC0gICAgICAgc3RydWN0IHZtX3N0cnVj
dCAqYXJlYTsKPiAtICAgICAgIHVuc2lnbmVkIGxvbmcgYWRkciwgb2Zmc2V0LCBsYXN0X2FkZHI7
Cj4gLSAgICAgICBwZ3Byb3RfdCBwcm90Owo+IC0KPiAtICAgICAgIC8qIERvbid0IGFsbG93IHdy
YXBhcm91bmQgb3IgemVybyBzaXplICovCj4gLSAgICAgICBsYXN0X2FkZHIgPSBwaHlzX2FkZHIg
KyBzaXplIC0gMTsKPiAtICAgICAgIGlmICghc2l6ZSB8fCBsYXN0X2FkZHIgPCBwaHlzX2FkZHIp
Cj4gLSAgICAgICAgICAgICAgIHJldHVybiBOVUxMOwo+IC0KPiAtICAgICAgIC8qCj4gLSAgICAg
ICAgKiBNYXBwaW5ncyBoYXZlIHRvIGJlIHBhZ2UtYWxpZ25lZAo+IC0gICAgICAgICovCj4gLSAg
ICAgICBvZmZzZXQgPSBwaHlzX2FkZHIgJiB+UEFHRV9NQVNLOwo+IC0gICAgICAgcGh5c19hZGRy
ICY9IFBBR0VfTUFTSzsKPiAtICAgICAgIHNpemUgPSBQQUdFX0FMSUdOKGxhc3RfYWRkciArIDEp
IC0gcGh5c19hZGRyOwo+IC0KPiAtICAgICAgIC8qCj4gLSAgICAgICAgKiBPaywgZ28gZm9yIGl0
Li4KPiAtICAgICAgICAqLwo+IC0gICAgICAgYXJlYSA9IGdldF92bV9hcmVhX2NhbGxlcihzaXpl
LCBWTV9JT1JFTUFQLCBjYWxsZXIpOwo+IC0gICAgICAgaWYgKCFhcmVhKQo+IC0gICAgICAgICAg
ICAgICByZXR1cm4gTlVMTDsKPiAtCj4gLSAgICAgICBhcmVhLT5waHlzX2FkZHIgPSBwaHlzX2Fk
ZHI7Cj4gLSAgICAgICBhZGRyID0gKHVuc2lnbmVkIGxvbmcpYXJlYS0+YWRkcjsKPiAtICAgICAg
IHByb3QgPSBfX3BncHJvdChfUEFHRV9WIHwgX1BBR0VfTV9LUlcgfCBfUEFHRV9EIHwKPiAtICAg
ICAgICAgICAgICAgICAgICAgICBfUEFHRV9HIHwgX1BBR0VfQ19ERVYpOwo+IC0gICAgICAgaWYg
KGlvcmVtYXBfcGFnZV9yYW5nZShhZGRyLCBhZGRyICsgc2l6ZSwgcGh5c19hZGRyLCBwcm90KSkg
ewo+IC0gICAgICAgICAgICAgICB2dW5tYXAoKHZvaWQgKilhZGRyKTsKPiAtICAgICAgICAgICAg
ICAgcmV0dXJuIE5VTEw7Cj4gLSAgICAgICB9Cj4gLSAgICAgICByZXR1cm4gKF9fZm9yY2Ugdm9p
ZCBfX2lvbWVtICopKG9mZnNldCArIChjaGFyICopYWRkcik7Cj4gLQo+IC19Cj4gLQo+IC12b2lk
IF9faW9tZW0gKmlvcmVtYXAocGh5c19hZGRyX3QgcGh5c19hZGRyLCBzaXplX3Qgc2l6ZSkKPiAt
ewo+IC0gICAgICAgcmV0dXJuIF9faW9yZW1hcF9jYWxsZXIocGh5c19hZGRyLCBzaXplLAo+IC0g
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgX19idWlsdGluX3JldHVybl9hZGRyZXNzKDAp
KTsKPiAtfQo+IC0KPiAtRVhQT1JUX1NZTUJPTChpb3JlbWFwKTsKPiAtCj4gLXZvaWQgaW91bm1h
cCh2b2xhdGlsZSB2b2lkIF9faW9tZW0gKiBhZGRyKQo+IC17Cj4gLSAgICAgICB2dW5tYXAoKHZv
aWQgKikoUEFHRV9NQVNLICYgKHVuc2lnbmVkIGxvbmcpYWRkcikpOwo+IC19Cj4gLQo+IC1FWFBP
UlRfU1lNQk9MKGlvdW5tYXApOwoKQWNrZWQtYnk6IEdyZWVudGltZSBIdSA8Z3JlZW4uaHVAZ21h
aWwuY29tPgpMb29rcyBnb29kIHRvIG1lLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KbGludXgtcmlzY3YgbWFpbGluZyBsaXN0CmxpbnV4LXJpc2N2QGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1yaXNjdgo=
