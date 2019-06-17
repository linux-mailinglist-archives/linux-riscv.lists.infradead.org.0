Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C8C2483C0
	for <lists+linux-riscv@lfdr.de>; Mon, 17 Jun 2019 15:21:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LOFB+3W5h6jhwNPhZxf8Hj9+BkkGAUkDYtMwJsJimn4=; b=HAybVoKvfD9rxY
	zPV+j3hXkE3xGNb1jxS98RkOAFGhDWftax9a8qWXQryrvfh41ENWfRhLfWoFxhqGgizLAfaZQBz8P
	Xjokp+Dbx1j5hCGeGx3+VCj5nvq/v4fpGS4P03H9zfq4D2ho3X74r0UrMof1unWcF8NJhPLNp+iqX
	Hj/2PFkHZzhmzhBbELDsmV0WL4kzz4ZVo2m24F4aJYX47YqwoQMcnqjlFKI0zkTFx2XHsAaB0W/aY
	cMIJWPaVXF/8ejSdqbVn6Of9jrLlcYqPlhHm2uxo55he0+a1cz8nEC+ClZmoI1gHh68SLBLrVmb51
	xMSZ2VxnGcFMVqHhL5yA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcrZQ-0004Xm-9h; Mon, 17 Jun 2019 13:21:12 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcrZM-0004X5-QD
 for linux-riscv@lists.infradead.org; Mon, 17 Jun 2019 13:21:10 +0000
Received: by mail-io1-xd43.google.com with SMTP id e5so21112443iok.4
 for <linux-riscv@lists.infradead.org>; Mon, 17 Jun 2019 06:21:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=MAtqLLcriN/ysNepx8pHFWpBVc5BYxAvatVYFLcO8NY=;
 b=DDyLp5J9Sr2crvXO+OKj3nbynBWCiYaFIKmgTdKWpaLN/nMn3MPKkVp/LPxURO3VTp
 MCDMO2595jHI8vpWzbIH5upiWeFcOJR1et7Bi/xcriSOx2VbkmRUFzv6eujtCSAeaH9v
 RDR3yT1rpBDaldMuhkne/FsWVYqwk5n5lRFteRqBx7TWnpjaoqYyISm8bpu2PTQVZ9F+
 8sKFLWGmiDenmTN42zv9EED/n0PO4wpb/f5k3HPOFqjaGKPuSUkea6bLScgO4EQBCA0E
 amAifGoMTt8hKenJjbWckU112AMVd+hiSHCQxdYtd2cQG4GIp4GoSP8FrgUGEwyFoznj
 AiNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=MAtqLLcriN/ysNepx8pHFWpBVc5BYxAvatVYFLcO8NY=;
 b=elzAJIT2CGRR9lNeEhZkVh/AVozYPgmXyeF5GR/S6iaNIFfLmYSDamACIqU4Xz15al
 ibTBOe/ZnDmxFfkhyqF38BTHpzE+kuBfGLNdVfVgYER1/FcyJbR7UV5B6sEr8hFfsksA
 42MzgkTWbQIlOuo+3AyUTN77uoHUIsT6MRE7QZf4RUsqglWd7KGk6Q6LRSog/qSJumJW
 y9rkJqTqKo85Cqsw4pCJJuXHErn0I+AWzLmbiD2O4FKvjFKG0md1UyDSfxO6VFLmPutc
 EznyZuAdwfF0zYcigglaW1m9kd4Nq9uEB3WM4jH0AU1Np1oXw0Wj170otcRr9NuK/mtm
 Voug==
X-Gm-Message-State: APjAAAUh4BccHd6u5Sp3cxDfjUGQC1bPbFSyGJ/uHB0VfhNuGsT2Qjp3
 K+SQE6PDMice98eqCFUuS1wl8Q==
X-Google-Smtp-Source: APXvYqzMLDEVPB/hNZ7R33TM67lpigUPsZi7tyQzqnBZPgz0BloaQL4x+nhbgxhJpNGJMXTu4UeTwA==
X-Received: by 2002:a6b:f80b:: with SMTP id o11mr34291713ioh.40.1560777667067; 
 Mon, 17 Jun 2019 06:21:07 -0700 (PDT)
Received: from [192.168.1.196] ([216.160.37.230])
 by smtp.gmail.com with ESMTPSA id b6sm9100945iok.71.2019.06.17.06.21.06
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 17 Jun 2019 06:21:06 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
Subject: Re: Working device tree for the HifiveU
From: Troy Benjegerdes <troy.benjegerdes@sifive.com>
In-Reply-To: <mvm4l4o5qdd.fsf@suse.de>
Date: Mon, 17 Jun 2019 08:21:05 -0500
Message-Id: <62E04A53-803C-44AD-AAFC-EAD7D6BFE289@sifive.com>
References: <mvmlfy05xjm.fsf@suse.de>
 <alpine.DEB.2.21.9999.1906170347460.19994@viisi.sifive.com>
 <mvm8su05rqc.fsf@suse.de>
 <alpine.DEB.2.21.9999.1906170546100.4549@viisi.sifive.com>
 <mvm4l4o5qdd.fsf@suse.de>
To: Andreas Schwab <schwab@suse.de>, Paul Walmsley <paul.walmsley@sifive.com>,
 Yash Shah <yash.shah@sifive.com>
X-Mailer: Apple Mail (2.3445.9.1)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_062108_881071_7357338A 
X-CRM114-Status: UNSURE (   9.47  )
X-CRM114-Notice: Please train this message.
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
Cc: linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Cgo+IE9uIEp1biAxNywgMjAxOSwgYXQgNzo0OSBBTSwgQW5kcmVhcyBTY2h3YWIgPHNjaHdhYkBz
dXNlLmRlPiB3cm90ZToKPiAKPiBPbiBKdW4gMTcgMjAxOSwgUGF1bCBXYWxtc2xleSA8cGF1bC53
YWxtc2xleUBzaWZpdmUuY29tPiB3cm90ZToKPiAKPj4gT24gTW9uLCAxNyBKdW4gMjAxOSwgQW5k
cmVhcyBTY2h3YWIgd3JvdGU6Cj4+IAo+Pj4gT24gSnVuIDE3IDIwMTksIFBhdWwgV2FsbXNsZXkg
PHBhdWwud2FsbXNsZXlAc2lmaXZlLmNvbT4gd3JvdGU6Cj4+PiAKPj4+PiBPbiBNb24sIDE3IEp1
biAyMDE5LCBBbmRyZWFzIFNjaHdhYiB3cm90ZToKPj4+PiAKPj4+Pj4gV2hhdCBpcyB0aGUgY29y
cmVjdCBkZXZpY2UgdHJlZSBmb3IgdGhlIEhpZml2ZVUgdGhhdCB3b3JrcyBib3RoIHdpdGgKPj4+
Pj4gNS4yKyBhbmQgVS1Cb290Pwo+Pj4+IAo+Pj4+IFUtQm9vdCBzaG91bGQgZm9sbG93IHRoZSBr
ZXJuZWwncyBEVCBkYXRhOgo+Pj4+IAo+Pj4+IGh0dHA6Ly9naXQuZGVueC5kZS8/cD11LWJvb3Qu
Z2l0O2E9YmxvYjtmPWRvYy9kZXZpY2UtdHJlZS1iaW5kaW5ncy9SRUFETUU7aD0yZWEzNDM5YTE3
MDIzNmJkOTEyOTMwOTkxYWQ3MGVlNzI4OWRjZDI5O2hiPUhFQUQKPj4+PiAKPj4+PiBUaHVzIHRo
ZSB1cHN0cmVhbS1ib3VuZCBkYXRhIGlzIGN1cnJlbnRseSBoZXJlOgo+Pj4+IAo+Pj4+IGh0dHBz
Oi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L3Jpc2N2L2xpbnV4Lmdp
dC9sb2cvP2g9Zml4ZXMKPj4+IAo+Pj4gVGhhdCBpcyBjb21wbGV0ZWx5IHVzZWxlc3MuCj4+IAo+
PiBJZiB5b3UgaGF2ZSBzcGVjaWZpYyBxdWVzdGlvbnMgb3IgY29tbWVudHMsIEkgb3Igc29tZW9u
ZSBlbHNlIHdvdWxkIGJlIAo+PiBoYXBweSB0byB0cnkgdG8gaGVscCB5b3Ugb3V0LiAgT3RoZXJ3
aXNlLCB0aGVyZSdzIG5vdCBtdWNoIHRoYXQgd2UgY2FuIGRvLgo+IAo+IEl0IGRvZXNuJ3QgZXZl
biBoYXZlIGV0aGVybmV0LCBzbyBob3cgY2FuIGl0IGJlIG9mIGFueSB1c2U/Cj4gCj4gQW5kcmVh
cy4KPiAKCkNvdWxkIHdlIHBsZWFzZSBpbmNsdWRlIFlhc2jigJlzIG1hY2IgcGF0Y2hlcyAoYW5k
CmFzc29jaWF0ZWQgZGV2aWNlIHRyZWUgY2hhbmdlcykgaW4gdGhlIOKAmGZpeGVz4oCZIGJyYW5j
aCBvbiAKaHR0cHM6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvcmlz
Y3YvbGludXguZ2l0Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmxpbnV4LXJpc2N2IG1haWxpbmcgbGlzdApsaW51eC1yaXNjdkBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcmlz
Y3YK
