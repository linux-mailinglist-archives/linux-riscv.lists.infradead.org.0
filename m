Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7886548501
	for <lists+linux-riscv@lfdr.de>; Mon, 17 Jun 2019 16:14:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e0PTlr87i4LNE91LWTq2o2MqSGsEzVz46/bjcw0Z3GY=; b=C44NdGNOEylDLY
	VVKen5JZ++7UPsuk5jfrWxeG9fijDNpFjlwatJIoWrbN3tGDgkEhOTjNoYxRwtvz0YscMjtYLXpTO
	3vTopS5fRuUXRscD9YvaAII2J3e4XYxWBWa01rH5XV07WQwTzonpQh1OZF4SabglV/hRg8mUX5w9V
	3wjnRUD6uOSNrx7UCa8BfJDcBFGXdGXYtx0ycyio4hT5aFJynjYQuY4eRMHAKuOL6+ecvgwR8KDUG
	GVWWdF9xAunLWgkcEv2XNdTzIao5lGMIWDd8yczzvPXUmbtHbvu5s+/3bxPpEKp2jKx5wg/Uc+mTm
	ZoNO7QJcnxke2X88iGRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcsP4-0003Xu-6a; Mon, 17 Jun 2019 14:14:34 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcsOy-0003XE-HG
 for linux-riscv@lists.infradead.org; Mon, 17 Jun 2019 14:14:30 +0000
Received: by mail-io1-xd43.google.com with SMTP id m24so21563795ioo.2
 for <linux-riscv@lists.infradead.org>; Mon, 17 Jun 2019 07:14:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=JohzNFDqmktDG38rF4I6wEqhVEhI+kZN53amqkDtO9w=;
 b=iLTj9CW1lG44z6zG4g72qDio7OVGQ1qANRuf1odp+rHFRdGUwpC/crqtmZviZTJjha
 UtbuW0PlSUt3tPiVOOOGTLydHXo9gGuO4n6AjAd9Ui2JaV31NFPjV2LvjHM7Lc94hAj3
 2NoQNsPbAu20BCZqt728HIJTa2HSnRFbDzZ5I8vHPDybVf1pkrTRlkIQTt7rthVHXrAM
 lHS78Ey4P/EiXWCuhSzCFdoxrAgtO7jORwoA76aPcjYfK1cFsylabCMWL2k6C+IUbYR4
 GFg6aCzi53pHsNhbAN3fRtSC15Up6LfUVSf/tWR82B4diNQ+xrqBZiH+dX91u+09QU+k
 cDxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=JohzNFDqmktDG38rF4I6wEqhVEhI+kZN53amqkDtO9w=;
 b=oQv8G/KArCy03X5D5m5KgA10LkuoDEcuabhDWgY199md/JHZNYSXBxiOIO6IVUVvbO
 R8El4T2mqmqOCImC3ooBQ/ivk1iBBq7QpoL1Hn2qF0CmSgzQCyef3QEc8D3he4bJwr9h
 VbUtMa7ciVuSLahvsP4nB4AFKJdee2lmSB4doonncwxliuvDT8XP2EWD3GFE3oTI/kr8
 3X2IlpKeLFO83DtC1lPwqlfb/khFAGFcIv7is1hReojMY34o70Uabevl9yRBVgP/oONU
 SZB2kuhyWa2kM0Z9RH1JBr+PSLFox0vw6JUuhLLVI/fPjdcadqO8yifPt+Q/hziCLJKf
 n0Rw==
X-Gm-Message-State: APjAAAXvJVwjpk/E7neaeW02bptDF/VeoRO6KaUGf9XQwhJY7w9+uSkk
 FCJWLexCiX9k8Seamhazd/33RA==
X-Google-Smtp-Source: APXvYqzNuUBfwfuXW1mSryelHWlKsBM9fYoJ3JGS5e7VGKacU4dkepDULY1G4gM/fW95GIKtGZpt+Q==
X-Received: by 2002:a6b:fb02:: with SMTP id h2mr14476535iog.289.1560780867625; 
 Mon, 17 Jun 2019 07:14:27 -0700 (PDT)
Received: from [192.168.1.196] ([216.160.37.230])
 by smtp.gmail.com with ESMTPSA id c2sm8811901iok.53.2019.06.17.07.14.26
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 17 Jun 2019 07:14:27 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
Subject: Re: [PATCH v2 0/2] Add macb support for SiFive FU540-C000
From: Troy Benjegerdes <troy.benjegerdes@sifive.com>
In-Reply-To: <alpine.DEB.2.21.9999.1906170419010.19994@viisi.sifive.com>
Date: Mon, 17 Jun 2019 09:14:25 -0500
Message-Id: <F48A4F7F-0B0D-4191-91AD-DC51686D1E78@sifive.com>
References: <1560745167-9866-1-git-send-email-yash.shah@sifive.com>
 <mvmtvco62k9.fsf@suse.de>
 <alpine.DEB.2.21.9999.1906170252410.19994@viisi.sifive.com>
 <mvmpnnc5y49.fsf@suse.de>
 <alpine.DEB.2.21.9999.1906170305020.19994@viisi.sifive.com>
 <mvmh88o5xi5.fsf@suse.de>
 <alpine.DEB.2.21.9999.1906170419010.19994@viisi.sifive.com>
To: Paul Walmsley <paul.walmsley@sifive.com>
X-Mailer: Apple Mail (2.3445.9.1)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_071428_637522_7BFBBF86 
X-CRM114-Status: GOOD (  13.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Albert Ou <aou@eecs.berkeley.edu>, davem@davemloft.net,
 Andreas Schwab <schwab@suse.de>, Palmer Dabbelt <palmer@sifive.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 nicolas.ferre@microchip.com, Sachin Ghadi <sachin.ghadi@sifive.com>,
 Yash Shah <yash.shah@sifive.com>, robh+dt@kernel.org,
 Jim Jacobsen <jamez@wit.com>, netdev@vger.kernel.org, ynezz@true.cz,
 linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Cgo+IE9uIEp1biAxNywgMjAxOSwgYXQgNjozNCBBTSwgUGF1bCBXYWxtc2xleSA8cGF1bC53YWxt
c2xleUBzaWZpdmUuY29tPiB3cm90ZToKPiAKPiBPbiBNb24sIDE3IEp1biAyMDE5LCBBbmRyZWFz
IFNjaHdhYiB3cm90ZToKPiAKPj4gT24gSnVuIDE3IDIwMTksIFBhdWwgV2FsbXNsZXkgPHBhdWwu
d2FsbXNsZXlAc2lmaXZlLmNvbT4gd3JvdGU6Cj4+IAo+Pj4gT24gTW9uLCAxNyBKdW4gMjAxOSwg
QW5kcmVhcyBTY2h3YWIgd3JvdGU6Cj4+PiAKPj4+PiBPbiBKdW4gMTcgMjAxOSwgUGF1bCBXYWxt
c2xleSA8cGF1bC53YWxtc2xleUBzaWZpdmUuY29tPiB3cm90ZToKPj4+PiAKPj4+Pj4gTG9va3Mg
dG8gbWUgdGhhdCBpdCBzaG91bGRuJ3QgaGF2ZSBhbiBpbXBhY3QgdW5sZXNzIHRoZSBEVCBzdHJp
bmcgaXMgCj4+Pj4+IHByZXNlbnQsIGFuZCBldmVuIHRoZW4sIHRoZSBpbXBhY3QgbWlnaHQgc2lt
cGx5IGJlIHRoYXQgdGhlIE1BQ0IgZHJpdmVyIAo+Pj4+PiBtYXkgbm90IHdvcms/Cj4+Pj4gCj4+
Pj4gSWYgdGhlIG1hY2IgZHJpdmVyIGRvZXNuJ3Qgd29yayB5b3UgaGF2ZSBhbiB1bnVzYWJsZSBz
eXN0ZW0sIG9mIGNvdXJzZS4KPj4+IAo+Pj4gV2h5Pwo+PiAKPj4gQmVjYXVzZSBhIHN5c3RlbSBp
cyB1c2VsZXNzIHdpdGhvdXQgbmV0d29yay4KPiAKPiBGcm9tIGFuIHVwc3RyZWFtIExpbnV4IHBv
aW50IG9mIHZpZXcsIFlhc2gncyBwYXRjaGVzIHNob3VsZCBiZSBhbiAKPiBpbXByb3ZlbWVudCBv
dmVyIHRoZSBjdXJyZW50IG1haW5saW5lIGtlcm5lbCBzaXR1YXRpb24sIHNpbmNlIHRoZXJlJ3Mg
Cj4gY3VycmVudGx5IG5vIHVwc3RyZWFtIHN1cHBvcnQgZm9yIHRoZSAoU2lGaXZlLXNwZWNpZmlj
KSBUWCBjbG9jayBzd2l0Y2ggCj4gcmVnaXN0ZXIuICBXaXRoIHRoZSByaWdodCBEVCBkYXRhLCBh
bmQgYSBib290bG9hZGVyIHRoYXQgaGFuZGxlcyB0aGUgUEhZIAo+IHJlc2V0LCBJIHRoaW5rIG5l
dHdvcmtpbmcgc2hvdWxkIHdvcmsgYWZ0ZXIgaGlzIHBhdGNoZXMgYXJlIHVwc3RyZWFtIC0tIAo+
IGFsdGhvdWdoIEkgbXlzZWxmIGhhdmVuJ3QgdHJpZWQgdGhpcyB5ZXQuCj4gCgpIYXZlIHdlIGRv
Y3VtZW50ZWQgdGhpcyB0eCBjbG9jayBzd2l0Y2ggcmVnaXN0ZXIgaW4gc29tZXRoaW5nIHdpdGgg
YQpkaXJlY3QgVVJMIGxpbmsgKHJhdGhlciB0aGFuIGEgUERGKT8KCknigJlkIGxpa2UgdG8gdXBk
YXRlIGZyZWVkb20tdS1zZGsgKG9yIHlvY3RvKSB0byBjcmVhdGUgYm9vdGFibGUgaW1hZ2VzCndp
dGggYSB3b3JraW5nIFUtYm9vdCAodXBzdHJlYW0gb3Igbm90LCBJIGRvbuKAmXQgY2FyZSwgYXMg
bG9uZyBhcyBpdCB3b3JrcyksCmFuZCB3aGF0IEkgaGF2ZSByaWdodCBub3cgaXMgdGhlIG9sZCBs
ZWdhY3kgSGlGaXZlIFUtYm9vdFsxXSBhbmQgYSA0LjE5Cmtlcm5lbCB3aXRoIGEgYnVuY2ggb2Yg
ZXh0cmEgcGF0Y2hlcy4KClRoZSBsZWdhY3kgTS1tb2RlIFUtYm9vdCBoYW5kbGVzIHRoZSBwaHkg
cmVzZXQgYWxyZWFkeSwgYW5kIEnigJl2ZSBiZWVuCmFibGUgdG8gbG9hZCB1cHN0cmVhbSBTLW1v
ZGUgdWJvb3QgYXMgYSBwYXlsb2FkIHZpYSBURlRQLCBhbmQgdGhlbiAKbG9hZCBhbmQgYm9vdCBh
IDQuMTkga2VybmVsLiAKCkl0IHdvdWxkIGJlIG5pY2UgdG8gZ2V0IHRoaXMgYWxsIHdvcmtpbmcg
d2l0aCA1LngsIGhvd2V2ZXIgdGhlcmUgYXJlIHN0aWxsCnNldmVyYWwgbWlzc2luZyBwaWVjZXMg
dG8gcmVhbGx5IGhhdmUgaXQgd29yayB3ZWxsLgoKClsxXSBodHRwczovL2dpdGh1Yi5jb20vc2lm
aXZlL0hpRml2ZV9VLUJvb3QKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KbGludXgtcmlzY3YgbWFpbGluZyBsaXN0CmxpbnV4LXJpc2N2QGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1yaXNjdgo=
