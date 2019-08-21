Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2F24970E2
	for <lists+linux-riscv@lfdr.de>; Wed, 21 Aug 2019 06:15:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BUoEJstvdysQf3yspHlz2zvP6N3dr+EjmxVogKtJspU=; b=ADAKJMS3u6sW2i
	THUZI45B/32/UqPmQ6m1iHfLbBDCGL1pbGbUqMUVXcOCX4nrY6+YgtHcsNb7SVlYQ5ODk4WlSjxFI
	wKXoCBZ7rTBVvlFgQC/GRz2vNGteTTwR/NGaPv7xTXVBkLBVyAw5sf0AZpJPL3XoAB2WRmBeHeOCi
	xUlE3Amwm8T6S8sSDpPa0FRvC6LIAETHx/LHos9So3Rx6PW/5W7IjMxwgk6a5MbN/2RbKvg6h4bhM
	jQfQvR3dTWtNWzbMtm8w6gWdCVcT5jbJljvy/JliuZurURz1dMabcVIdJ/LPqWrp0IItGP1jELN1e
	SxmW62uY89ilU/enVwjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0I1Q-00017A-V5; Wed, 21 Aug 2019 04:14:56 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0I1M-00016L-H2
 for linux-riscv@lists.infradead.org; Wed, 21 Aug 2019 04:14:54 +0000
Received: by mail-pf1-x444.google.com with SMTP id d85so539191pfd.2
 for <linux-riscv@lists.infradead.org>; Tue, 20 Aug 2019 21:14:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=Ct/vcfqX294xnImjewrmDMG+pNu8phs+mheV9IoXqXA=;
 b=DrmJcYu9mQkQ+5oXyRM9YqgXYA0IMMSiWznW5HVNzzMJ7ZV0GEzazOoMN6L5eiLmcJ
 cYAa9F/vsLCVlLq75If9r/eW75gmVC5de/ALXLQHXE5wAgEmN2+EanhC5XNg9Yyd44w7
 D5nqrXJeT1pbW9bi9iEn0ISOPHcFxNde3UV/dmGNpgE0GFhQVYQ5Y4sWjzHth8/dYrxh
 kk4jdkPx4SF+lRqREUhytqk6W6orEntQWFKrvd7DnmuGzYew2VX4icnkCrgwsKYsoXuq
 h/24DG9iI62yoeJ6AQ+P3YVuOZb5PJTUYw4y/9aQYmI+CHlmQ7qpwNFf+K1GnCvE1bZz
 LKGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=Ct/vcfqX294xnImjewrmDMG+pNu8phs+mheV9IoXqXA=;
 b=szIHnQeksLajcI79Gqj5Hhp/4tDTFbkwMVRKRwOHkXnRryhYVEMiv5j5Wd7zwnuV6k
 ya1WXBtVm9TIhvLfI9yxxIpNS0QlPXAEyBrXggR6SdHfbKJtXBd3SNaohmkf/GpJ9FrZ
 8X+k2axZ5lQeeWCT4MHh5yiPqxWGXXm72kOWn0bPjmQZ3tBzyUbT7yqf4ORgDz5unzeK
 BZcFYm0D0QEBPkPRp9UfuIg+64c7RZxShS8OFxlm6jQ35GgdNKAJUnfhIUSEqpb8eGQS
 7POiIcq7wV1W3zg4vAdHE0RyvrFfT8WB6aABIb4rPSGfMGQ6m6iwbRLXjug4i10e3vM/
 Pq7g==
X-Gm-Message-State: APjAAAU4xbmfkLq1y7USi2fcUl+qmdD68E80nshV9ZL5vVYGLDmWSMER
 pqoXZ//OYRR3iF4aVhEjS+0eVw==
X-Google-Smtp-Source: APXvYqyTnwrp6dMD25VYpFUckTpU2oPfnP6GLcw49ySJC+PsfTX2cQkXPs52ILKSDbS02wHzdCRHEw==
X-Received: by 2002:a62:dbc6:: with SMTP id f189mr4364709pfg.237.1566360885909; 
 Tue, 20 Aug 2019 21:14:45 -0700 (PDT)
Received: from [172.20.2.243] (64-71-28-71.static.wiline.com. [64.71.28.71])
 by smtp.gmail.com with ESMTPSA id p3sm1336423pjo.3.2019.08.20.21.14.44
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 20 Aug 2019 21:14:45 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
Subject: Re: [PATCH 15/15] riscv: disable the EFI PECOFF header for M-mode
From: Troy Benjegerdes <troy.benjegerdes@sifive.com>
In-Reply-To: <20190813154747.24256-16-hch@lst.de>
Date: Tue, 20 Aug 2019 21:14:41 -0700
Message-Id: <3BF39A0F-558D-40E0-880D-27829486F9F0@sifive.com>
References: <20190813154747.24256-1-hch@lst.de>
 <20190813154747.24256-16-hch@lst.de>
To: Christoph Hellwig <hch@lst.de>
X-Mailer: Apple Mail (2.3445.9.1)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_211452_569372_A5C59263 
X-CRM114-Status: GOOD (  15.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
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
Cc: linux-kernel@vger.kernel.org, Damien Le Moal <damien.lemoal@wdc.com>,
 Palmer Dabbelt <palmer@sifive.com>, linux-riscv@lists.infradead.org,
 Paul Walmsley <paul.walmsley@sifive.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Cgo+IE9uIEF1ZyAxMywgMjAxOSwgYXQgODo0NyBBTSwgQ2hyaXN0b3BoIEhlbGx3aWcgPGhjaEBs
c3QuZGU+IHdyb3RlOgo+IAo+IE5vIHBvaW50IGluIGJsb2F0aW5nIHRoZSBrZXJuZWwgaW1hZ2Ug
d2l0aCBhIGJvb3Rsb2FkZXIgaGVhZGVyIGlmCj4gd2UgcnVuIGJhcmUgbWV0YWwuCgpJIHdvdWxk
IHNheSB0aGUgc2FtZSBmb3IgUy1tb2RlLiBFRkkgYm9vdGluZyBzaG91bGQgYmUgYW4gb3B0aW9u
LCBub3QKYSByZXF1aXJlbWVudC4gSSBoYXZlIE0tbW9kZSBVLWJvb3Qgd29ya2luZyB3aXRoIGJv
b3RlbGYgdG8gc3RhcnQgQkJMLAphbmQgYXQgc29tZSBwb2ludCwgSeKAmW0gaG9waW5nIHdlIGNh
biBoYXZlIGEgTS1tb2RlIGxpbnV4IGtlcm5lbCBiZQp0aGUgU0JJIHByb3ZpZGVyIGZvciBTLW1v
ZGUga2VybmVscywgd2hpY2ggc2VlbSBtb3N0IGxvZ2ljYWwgdG8gbWUKdG8gc3RhcnQgdXNpbmcg
dGhlIHZtbGludXggZWxmIGJpbmFyaWVzIHVzaW5nIHNvbWV0aGluZyBsaWtlIGtleGVjKCkKCj4g
Cj4gU2lnbmVkLW9mZi1ieTogQ2hyaXN0b3BoIEhlbGx3aWcgPGhjaEBsc3QuZGU+Cj4gLS0tCj4g
YXJjaC9yaXNjdi9rZXJuZWwvaGVhZC5TIHwgMiArKwo+IDEgZmlsZSBjaGFuZ2VkLCAyIGluc2Vy
dGlvbnMoKykKPiAKPiBkaWZmIC0tZ2l0IGEvYXJjaC9yaXNjdi9rZXJuZWwvaGVhZC5TIGIvYXJj
aC9yaXNjdi9rZXJuZWwvaGVhZC5TCj4gaW5kZXggNjcwZTVjYWNiMjRlLi4wOWZjZjNkMDAwYzAg
MTAwNjQ0Cj4gLS0tIGEvYXJjaC9yaXNjdi9rZXJuZWwvaGVhZC5TCj4gKysrIGIvYXJjaC9yaXNj
di9rZXJuZWwvaGVhZC5TCj4gQEAgLTE2LDYgKzE2LDcgQEAKPiAKPiBfX0lOSVQKPiBFTlRSWShf
c3RhcnQpCj4gKyNpZm5kZWYgQ09ORklHX01fTU9ERQo+IAkvKgo+IAkgKiBJbWFnZSBoZWFkZXIg
ZXhwZWN0ZWQgYnkgTGludXggYm9vdC1sb2FkZXJzLiBUaGUgaW1hZ2UgaGVhZGVyIGRhdGEKPiAJ
ICogc3RydWN0dXJlIGlzIGRlc2NyaWJlZCBpbiBhc20vaW1hZ2UuaC4KPiBAQCAtNDcsNiArNDgs
NyBAQCBFTlRSWShfc3RhcnQpCj4gCj4gLmdsb2JhbCBfc3RhcnRfa2VybmVsCj4gX3N0YXJ0X2tl
cm5lbDoKPiArI2VuZGlmIC8qIENPTkZJR19NX01PREUgKi8KPiAJLyogTWFzayBhbGwgaW50ZXJy
dXB0cyAqLwo+IAljc3J3IENTUl9YSUUsIHplcm8KPiAJY3NydyBDU1JfWElQLCB6ZXJvCj4gLS0g
Cj4gMi4yMC4xCj4gCj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KPiBsaW51eC1yaXNjdiBtYWlsaW5nIGxpc3QKPiBsaW51eC1yaXNjdkBsaXN0cy5p
bmZyYWRlYWQub3JnCj4gaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1yaXNjdgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmxpbnV4LXJpc2N2IG1haWxpbmcgbGlzdApsaW51eC1yaXNjdkBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cmlzY3YK
