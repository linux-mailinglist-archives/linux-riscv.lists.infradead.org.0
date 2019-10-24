Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05AFCE3383
	for <lists+linux-riscv@lfdr.de>; Thu, 24 Oct 2019 15:09:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5ACeFpLl/HUNAFbf0ZZTBB1+0f/t/mBvCpnkQxpeWHs=; b=L+Gb7iM4WsVac1
	0PktIcLVCnEPu+NuQRAPlJDXWIuFtUZ4TL6+ON4nzrVx+prAdxNZ4XjnHWOr4AwlmUIdDzNstCZjr
	TY759MoaeoAkBTmQLBtHNlhWFIpd0crX0Xhit7D9a/SksLAkAG0lrh5/NG68SQG/nEwn0Z1uMjcGT
	DcJLlBcc2UeNGCcqmv2tLAA5DzGlLVD9FqlJtSwUpGw1bLV2rDIVvpwmS6/MYrXxoJsjP/B9sP4QU
	GbJ0Szx7UhPtAdcjpDPg07DERmIqqzYm/gn+CfhiW7XVMqaZ3AyagDYFVttv0rxeEEpOKlAerhYlj
	V7/VlFdQdnAZZXUdj+2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNcrf-0002ok-E1; Thu, 24 Oct 2019 13:09:19 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNcrc-0002oB-3C; Thu, 24 Oct 2019 13:09:17 +0000
Received: by mail-lf1-x141.google.com with SMTP id y127so19135629lfc.0;
 Thu, 24 Oct 2019 06:09:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=UcBPcAPMYq3ql7XZolJWjM40KQcfZi7nEuSg4RQDIuc=;
 b=Ouz4PbLg3SeM/SRzKwbpYWtMvLrdJ6nOXnWQL0oUQhHWeGv2Mw58FeTuy/DJXAzYZ3
 +CGlc91Gh/uDfemb2YnBDYRG4mREUzJ26nWAuYs1id0BVvBF4PKggM4GaRcnWpVoGpVT
 41TqNQx9bbMIK7CxLzbB9PwKXWq4IIEx/oy8U3BBUTeO0s+Tw+7S7QsaJfQfcpzbSC8N
 PSSgzAXE5chQDW2RsAPMrmAsBSXpM/9+FyW7vIYG9iQXXiUTn+9EzpNJ0f3jbj/dZk51
 h+c6HNv46YaTCOw1eXDjFT1HqVBIGHAtTqYVqJTmv/Gk2l2Ao9PUPU7+S4jvenhE/Tzg
 8xUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=UcBPcAPMYq3ql7XZolJWjM40KQcfZi7nEuSg4RQDIuc=;
 b=SNAdL1HP0Fp+3Y88FU3reqAmbIAkJrV3U/+9vis3TjAWnUMzNCs8pdokSedLW3OCyD
 iewHmIhgCxOAp9afELQGCdqo2FSKK0e8iViIa0qaqtuqzT7nabackhd255M1kPZlbmx3
 Bu7Gtifs01DMGD+QaFuZo2u4NmoFZkP/eJYVWd5fX4nL8D4lsMwe4yhFVvIGuXfbGl6i
 AWWSFw2UuG+hafdnGSFAKwsFyzj4VSJeuYJHJH/GJ5r0BKXMb0IFXGZJg+Wu8u/eEkeL
 eZEU7fi3/fmBt/1jiKo8Ordj5JCV0uMMN6W5HcoV1qfaA5A17XU9Uy/Sj20Zu6gb2ETc
 KSRw==
X-Gm-Message-State: APjAAAWi+RneYHYvTG1O5qj7V3UkhjVMi8ikVKZYTwGxSpX5+rZcHWt7
 1USCKc42ivkjH7f311wno7qDaR/ZKvbRkmKWxyQ=
X-Google-Smtp-Source: APXvYqw7AnXk46JAKtrvbMSXREq+EburX1Xswn3NrPh+gx0SKQjxDmlCifTtUoCo+f45tE5PxMdIHbGV2ouTvaD2BAI=
X-Received: by 2002:ac2:4345:: with SMTP id o5mr11786215lfl.60.1571922554635; 
 Thu, 24 Oct 2019 06:09:14 -0700 (PDT)
MIME-Version: 1.0
References: <20191024093716.49420-1-steven.price@arm.com>
 <20191024093716.49420-8-steven.price@arm.com>
In-Reply-To: <20191024093716.49420-8-steven.price@arm.com>
From: Zong Li <zongbox@gmail.com>
Date: Thu, 24 Oct 2019 21:09:03 +0800
Message-ID: <CA+ZOyajoTagPdMA=WaQVLZ+aPzKmdX=j+apRVUsvpbVF_HtnQw@mail.gmail.com>
Subject: Re: [PATCH v13 07/22] riscv: mm: Add p?d_leaf() definitions
To: Steven Price <steven.price@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_060916_143945_BEC5BB1B 
X-CRM114-Status: GOOD (  16.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (zongbox[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <Mark.Rutland@arm.com>, Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Dave Hansen <dave.hansen@linux.intel.com>, linux-mm@kvack.org,
 Albert Ou <aou@eecs.berkeley.edu>, "H. Peter Anvin" <hpa@zytor.com>,
 linux-riscv@lists.infradead.org, Will Deacon <will@kernel.org>, "Liang,
 Kan" <kan.liang@linux.intel.com>, Alexandre Ghiti <alex@ghiti.fr>,
 x86@kernel.org, Ingo Molnar <mingo@redhat.com>,
 Palmer Dabbelt <palmer@sifive.com>, Arnd Bergmann <arnd@arndb.de>,
 =?UTF-8?B?SsOpcsO0bWUgR2xpc3Nl?= <jglisse@redhat.com>,
 Borislav Petkov <bp@alien8.de>, Andy Lutomirski <luto@kernel.org>,
 Paul Walmsley <paul.walmsley@sifive.com>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 James Morse <james.morse@arm.com>, Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

U3RldmVuIFByaWNlIDxzdGV2ZW4ucHJpY2VAYXJtLmNvbT4g5pa8IDIwMTnlubQxMOaciDI05pel
IOmAseWbmyDkuIvljYg1OjQw5a+r6YGT77yaCj4KPiB3YWxrX3BhZ2VfcmFuZ2UoKSBpcyBnb2lu
ZyB0byBiZSBhbGxvd2VkIHRvIHdhbGsgcGFnZSB0YWJsZXMgb3RoZXIgdGhhbgo+IHRob3NlIG9m
IHVzZXIgc3BhY2UuIEZvciB0aGlzIGl0IG5lZWRzIHRvIGtub3cgd2hlbiBpdCBoYXMgcmVhY2hl
ZCBhCj4gJ2xlYWYnIGVudHJ5IGluIHRoZSBwYWdlIHRhYmxlcy4gVGhpcyBpbmZvcm1hdGlvbiBp
cyBwcm92aWRlZCBieSB0aGUKPiBwP2RfbGVhZigpIGZ1bmN0aW9ucy9tYWNyb3MuCj4KPiBGb3Ig
cmlzY3YgYSBwYWdlIGlzIGEgbGVhZiBwYWdlIHdoZW4gaXQgaGFzIGEgcmVhZCwgd3JpdGUgb3Ig
ZXhlY3V0ZSBiaXQKPiBzZXQgb24gaXQuCj4KPiBDQzogUGFsbWVyIERhYmJlbHQgPHBhbG1lckBz
aWZpdmUuY29tPgo+IENDOiBBbGJlcnQgT3UgPGFvdUBlZWNzLmJlcmtlbGV5LmVkdT4KPiBDQzog
bGludXgtcmlzY3ZAbGlzdHMuaW5mcmFkZWFkLm9yZwo+IFJldmlld2VkLWJ5OiBBbGV4YW5kcmUg
R2hpdGkgPGFsZXhAZ2hpdGkuZnI+Cj4gQWNrZWQtYnk6IFBhdWwgV2FsbXNsZXkgPHBhdWwud2Fs
bXNsZXlAc2lmaXZlLmNvbT4gIyBmb3IgYXJjaC9yaXNjdgo+IFNpZ25lZC1vZmYtYnk6IFN0ZXZl
biBQcmljZSA8c3RldmVuLnByaWNlQGFybS5jb20+Cj4gLS0tCj4gIGFyY2gvcmlzY3YvaW5jbHVk
ZS9hc20vcGd0YWJsZS02NC5oIHwgNyArKysrKysrCj4gIGFyY2gvcmlzY3YvaW5jbHVkZS9hc20v
cGd0YWJsZS5oICAgIHwgNyArKysrKysrCj4gIDIgZmlsZXMgY2hhbmdlZCwgMTQgaW5zZXJ0aW9u
cygrKQo+Cj4gZGlmZiAtLWdpdCBhL2FyY2gvcmlzY3YvaW5jbHVkZS9hc20vcGd0YWJsZS02NC5o
IGIvYXJjaC9yaXNjdi9pbmNsdWRlL2FzbS9wZ3RhYmxlLTY0LmgKPiBpbmRleCA3NDYzMDk4OTAw
NmQuLjRjNGQyYzY1YmE2YyAxMDA2NDQKPiAtLS0gYS9hcmNoL3Jpc2N2L2luY2x1ZGUvYXNtL3Bn
dGFibGUtNjQuaAo+ICsrKyBiL2FyY2gvcmlzY3YvaW5jbHVkZS9hc20vcGd0YWJsZS02NC5oCj4g
QEAgLTQzLDYgKzQzLDEzIEBAIHN0YXRpYyBpbmxpbmUgaW50IHB1ZF9iYWQocHVkX3QgcHVkKQo+
ICAgICAgICAgcmV0dXJuICFwdWRfcHJlc2VudChwdWQpOwo+ICB9Cj4KPiArI2RlZmluZSBwdWRf
bGVhZiAgICAgICBwdWRfbGVhZgo+ICtzdGF0aWMgaW5saW5lIGludCBwdWRfbGVhZihwdWRfdCBw
dWQpCj4gK3sKPiArICAgICAgIHJldHVybiBwdWRfcHJlc2VudChwdWQpICYmCj4gKyAgICAgICAg
ICAgICAgKHB1ZF92YWwocHVkKSAmIChfUEFHRV9SRUFEIHwgX1BBR0VfV1JJVEUgfCBfUEFHRV9F
WEVDKSk7Cj4gK30KPiArCj4gIHN0YXRpYyBpbmxpbmUgdm9pZCBzZXRfcHVkKHB1ZF90ICpwdWRw
LCBwdWRfdCBwdWQpCj4gIHsKPiAgICAgICAgICpwdWRwID0gcHVkOwo+IGRpZmYgLS1naXQgYS9h
cmNoL3Jpc2N2L2luY2x1ZGUvYXNtL3BndGFibGUuaCBiL2FyY2gvcmlzY3YvaW5jbHVkZS9hc20v
cGd0YWJsZS5oCj4gaW5kZXggNzI1NWYyZDgzOTViLi4zYWE5NzJkZGE3NWEgMTAwNjQ0Cj4gLS0t
IGEvYXJjaC9yaXNjdi9pbmNsdWRlL2FzbS9wZ3RhYmxlLmgKPiArKysgYi9hcmNoL3Jpc2N2L2lu
Y2x1ZGUvYXNtL3BndGFibGUuaAo+IEBAIC0xMzAsNiArMTMwLDEzIEBAIHN0YXRpYyBpbmxpbmUg
aW50IHBtZF9iYWQocG1kX3QgcG1kKQo+ICAgICAgICAgcmV0dXJuICFwbWRfcHJlc2VudChwbWQp
Owo+ICB9Cj4KPiArI2RlZmluZSBwbWRfbGVhZiAgICAgICBwbWRfbGVhZgo+ICtzdGF0aWMgaW5s
aW5lIGludCBwbWRfbGVhZihwbWRfdCBwbWQpCj4gK3sKPiArICAgICAgIHJldHVybiBwbWRfcHJl
c2VudChwbWQpICYmCj4gKyAgICAgICAgICAgICAgKHBtZF92YWwocG1kKSAmIChfUEFHRV9SRUFE
IHwgX1BBR0VfV1JJVEUgfCBfUEFHRV9FWEVDKSk7Cj4gK30KPiArCj4gIHN0YXRpYyBpbmxpbmUg
dm9pZCBzZXRfcG1kKHBtZF90ICpwbWRwLCBwbWRfdCBwbWQpCj4gIHsKPiAgICAgICAgICpwbWRw
ID0gcG1kOwo+IC0tCj4gMi4yMC4xCj4KPgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCj4gbGludXgtcmlzY3YgbWFpbGluZyBsaXN0Cj4gbGludXgtcmlz
Y3ZAbGlzdHMuaW5mcmFkZWFkLm9yZwo+IGh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcmlzY3YKCkl0J3MgZ29vZCB0byBtZS4KClJldmlld2VkLWJ5OiBa
b25nIExpIDx6b25nLmxpQHNpZml2ZS5jb20+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpsaW51eC1yaXNjdiBtYWlsaW5nIGxpc3QKbGludXgtcmlzY3ZA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXJpc2N2Cg==
