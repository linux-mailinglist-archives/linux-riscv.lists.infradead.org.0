Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1EEE2A68C
	for <lists+linux-riscv@lfdr.de>; Sat, 25 May 2019 20:40:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TIvHuDUicT/d01zIwh/jNGWwF8hpBrqB00E1sfmgz4U=; b=nfy05NRxdPr7V5
	/gjKY8QwLfsIUF9eSClpny/+NTEGgORaFIuk/zg4zF51ekKYvM9g5w0yFguCtyvLsFrtTl3pkc7iB
	K1J/GmFrdsOMp1JrMCbpAoP+dzP0CslwteciLs6IdCyPgTJ4a/fCIxojaHJha374Ci4ENf0GZ1V3o
	ZFzlP3zjGWcW5MEcHNl1QkhCp5I4gMZq/00eCqCUAjDdPLCDur01u1wH2IhbHGIHD/OGuvjYokUmQ
	yqMDRfn3Y3D79cGWUOjrH8YylYwNg6GfqoJTtlTq2HIIG428aN6RZuwlDSFhCHyXx8ibknPnI2e2i
	cH3TdrRGL01UzDH76ykg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUbab-0001Op-Ab; Sat, 25 May 2019 18:40:17 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUbaX-0001OC-Sm
 for linux-riscv@lists.infradead.org; Sat, 25 May 2019 18:40:15 +0000
Received: by mail-io1-xd44.google.com with SMTP id u13so1594028iop.0
 for <linux-riscv@lists.infradead.org>; Sat, 25 May 2019 11:40:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=hLlUHP4osMrsWvEdkAY3OFFVWxplt9JeSqe1AMJvWY4=;
 b=OWToO0B4JhJw/8I+QeFT/LFaKRbTW5XhHMhkdu3tSZJQy1KyrkaTKPMjNPK7vdZYQJ
 /KWMtcRuD5RDSgzp9OahfWXXGzYwzjd3SO2yjFL+qTbvuTy4R8OgJATT24pffaTw5+jL
 JGji5AeQrcygUrsGZQYvg4Cf5WnXUggAWGmA25AvqrlCmipsO60HbhCg3Ad/etBvWP8/
 dhsYGGWO+pdGCv1drl3Yx0W2eeepgBawBl/fafW04MNBvSUFGghYj3+34/S4ZeDDqq8R
 8mBdsaCjDr3kAOqKbXmMh+A2l4RSQy8/LThzDV5tOsJzgoG9jJpHueCeerFgm8JZNQUQ
 BrNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=hLlUHP4osMrsWvEdkAY3OFFVWxplt9JeSqe1AMJvWY4=;
 b=C16E0Y2GI5HATVQ0y6KIFzc69asNlrA2iXY6cNy0lhJD87lJkCrzvQaJHWkaxKPWPD
 Axedp85ZbVt8ucyQcFC+zJITocpMQS4siPa0x+PxxSAswG+aaNHQkDYr48ojCsQM2lFY
 kgGahrpdp1wYCtSSjnxAQjLBlUQPy2zpK0ZC02pCA1iFXIO7cqDcxluLlS4oeiUxlDP/
 D0792da9S1bYah1E/jcEdVlnj18PnpjihssFJai9pnprREbnJqLpZx9MPbfxgsOPxvTC
 3O5C5A31+LuWTKHP6lV3XFZ+LM5qNLN6mh2NEUS61tRyQv34uMKsGewEyuseZl6mfne9
 Doqw==
X-Gm-Message-State: APjAAAWqMJSo4OWH9uNCx7eD5XaG91C3uHjBj9Dwyon49uv64+0BYR+j
 xDJ+FGSWGm/9sK4/N3skXAaLPw==
X-Google-Smtp-Source: APXvYqxjZncJo9lVsmZTFxU43WtEw7Rno91FuOq3CRPr5L2NvtOgZ3CWFpQDrMAWG+HstwE5bkB2fA==
X-Received: by 2002:a6b:b485:: with SMTP id
 d127mr30444780iof.273.1558809610065; 
 Sat, 25 May 2019 11:40:10 -0700 (PDT)
Received: from [192.168.62.194] (71-34-182-131.desm.qwest.net. [71.34.182.131])
 by smtp.gmail.com with ESMTPSA id j81sm3018270itj.26.2019.05.25.11.40.08
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 25 May 2019 11:40:09 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
Subject: Re: 5.2-rc1 boot on Unleashed
From: Troy Benjegerdes <troy.benjegerdes@sifive.com>
In-Reply-To: <alpine.DEB.2.21.9999.1905251058100.15661@viisi.sifive.com>
Date: Sat, 25 May 2019 13:40:07 -0500
Message-Id: <AC197BDD-8A15-421E-9F99-ADFE50360982@sifive.com>
References: <5c1ffb76-b18a-dbae-d3ad-f3d2cd41ee44@wdc.com>
 <alpine.DEB.2.21.9999.1905220942040.20842@viisi.sifive.com>
 <db248e63-c0bc-7fd8-cf2d-d13c8f140036@wdc.com>
 <alpine.DEB.2.21.9999.1905221334460.23235@viisi.sifive.com>
 <8F4FB234-FD5B-4AD6-99BD-57A40A79A024@sifive.com>
 <aac8c9b2-1b8d-e87d-88a5-f13222004a88@wdc.com>
 <2818D3E3-3BDB-442B-822D-0FD221BCCA05@sifive.com>
 <alpine.DEB.2.21.9999.1905251058100.15661@viisi.sifive.com>
To: Paul Walmsley <paul.walmsley@sifive.com>, Yash Shah <yash.shah@sifive.com>
X-Mailer: Apple Mail (2.3445.9.1)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190525_114013_997709_CEC54D1B 
X-CRM114-Status: GOOD (  14.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Anup Patel <Anup.Patel@wdc.com>, Atish Patra <atish.patra@wdc.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 Palmer Dabbelt <palmer@sifive.com>,
 =?utf-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Cgo+IE9uIE1heSAyNSwgMjAxOSwgYXQgMTowOSBQTSwgUGF1bCBXYWxtc2xleSA8cGF1bC53YWxt
c2xleUBzaWZpdmUuY29tPiB3cm90ZToKPiAKPiBPbiBGcmksIDI0IE1heSAyMDE5LCBUcm95IEJl
bmplZ2VyZGVzIHdyb3RlOgo+IAo+PiBJIGhhdmUgbm8gaXNzdWVzIHVwZGF0aW5nIHRoZSBQUkNJ
IGRyaXZlciBEVCBmb3JtYXQgaWYgd2UgYWxzbyBoYXZlIHRoZSAKPj4gcmVzdCBvZiB0aGUgRFQg
ZW50cmllcyBuZWVkZWQgdG8gYm9vdCBhIHdvcmtpbmcgc3lzdGVtCj4gCj4gTm93IGlzIHRoZSB0
aW1lIHRvIGZpeCB0aGUgVS1ib290IFBSQ0kgaXNzdWUgdXBzdHJlYW0uICBGaXhpbmcgdGhhdCBz
aG91bGQgCj4gYmUgc3RyYWlnaHRmb3J3YXJkLCBhbmQgc2hvdWxkIGJlIGVub3VnaCB0byBib290
IHRoZSBzeXN0ZW0gd2l0aCBpbml0cmFtZnMgCj4gYW5kIGEgc2VyaWFsIGNvbnNvbGUuICBUaGUg
bWlzc2luZyBwYXRjaCBpcyBjdXJyZW50bHkgYmxvY2tpbmcgb3RoZXJzIGZyb20gCj4gdXNpbmcg
VS1ib290LWJhc2VkIGJvb3QgZmxvd3Mgb24gQWxvZS4KCkkgc3VwcG9zZSB3ZSBoYXZlIGRpZmZl
cmVudCBvcGluaW9ucyBvbiB3aGF04oCZcyBibG9ja2luZyB3aGF0LiAKCklmIGh0dHBzOi8vZ2l0
aHViLmNvbS9zaWZpdmUvSGlGaXZlX1UtQm9vdCBpcyBub3Qgc3VmZmljaWVudCBmb3IgVS1ib290
IGJhc2VkCmRldmVsb3BtZW50IGZsb3dzLCBJ4oCZZCBsaWtlIHRvIGhlYXIgd2hhdCBpdCB3b3Vs
ZCBuZWVkIHRvIGJlIHVzZWZ1bCB1bnRpbCBJCmhhdmUgYSBmdWxsIHBhdGNoIHNldCBmb3IgdXBz
dHJlYW0gVS1ib290IHRoYXQgaW5jbHVkZXMgbWFpbmxpbmUtYm91bmQgRFRTCmVudHJpZXMgdGhh
dCBjYW4gcmVwbGljYXRlIHRoZSBmdW5jdGlvbmFsaXR5IHRoZSBleGlzdGluZyBsZWdhY3kgdS1i
b290IHBvcnQKaGFzLgoKPj4gSSBqdXN0IGhhdmUgbm90IHNlZW4gYW4gZXhhbXBsZSBvZiB0aGF0
IG90aGVyIHRoYW4gd2hhdCBJIGhhdmUgYXQgCj4+IGh0dHBzOi8vZ2l0aHViLmNvbS9zaWZpdmUv
SGlGaXZlX1UtQm9vdC9ibG9iL3JlZ3Jlc3Npb24vYXJjaC9yaXNjdi9kdHMvaGlmaXZlX3U1NDAu
ZHRzCj4gCj4gSSBzZW50IHlvdSBhIHBvaW50ZXIgdG8gYSBicmFuY2ggYSBmZXcgZGF5cyBhZ28g
dGhhdCBjb250YWlucyB0aGUgbW9zdCAKPiByZWNlbnQgbWFpbmxpbmUtYm91bmQgRFRTIGRhdGEu
ICBUaGF0IHNob3VsZCBiZSBlbm91Z2ggdG8gdmVyaWZ5IHRoYXQgdGhlIAo+IGJhc2ljIGJvb3Qg
d29ya3MuICBJZiB5b3Ugd2FudCB0byBrZWVwIHVwIHdpdGggdGhlIG9uZ29pbmcgZGV2ZWxvcG1l
bnQgb2YgCj4gdGhhdCBkYXRhLCB0aGUgYmVzdCBiZXQgaXMgdG8gc3Vic2NyaWJlIHRvIHRoZSBs
aW51eC1yaXNjdiBtYWlsaW5nIGxpc3QuCj4gCj4gCj4gLSBQYXVsCgpJIGNvbnNpZGVyIOKAmGJh
c2ljIGJvb3TigJkgdG8gaW5jbHVkZSBhIGJvb3Rsb2FkZXIgdGhhdCBjYW4gbG9hZCBCQkwvU0JJ
IGFuZAphbiBwYXlsb2FkIChTLW1vZGUgdWJvb3QsIG9yIGEga2VybmVsL3JhbWRpc2svZHRiL2V0
YykgdmlhIHRoZSBuZXR3b3JrLgoKU28gdGhpcyB3b3VsZCBiZSB0aGUgdGltZSB0byBhZ3JlZSBv
biB3aGF0IHRoZSBnZW1neGwvZXRoZXJuZXQgZW50cmllcyAKc2hvdWxkIGxvb2sgbGlrZSwgYW5k
IGFsbCBvZiB0aGlzIGNhbiBnZXQgdW5ibG9ja2VkLiBXaGF0IEkgaGF2ZSBub3cgdGhhdApJIGtu
b3cgd29ya3MgKHdpdGggdGhlIGxlZ2FjeSB1LWJvb3QpIGlzIHRoaXM6CgogICAgICAgICAgICAg
ICAgTDUxOiBjYWRlbmNlLWdlbWd4bC1tZ210QDEwMGEwMDAwIHsKICAgICAgICAgICAgICAgICAg
ICAgICAgY29tcGF0aWJsZSA9ICJzaWZpdmUsY2FkZW5jZWdlbWd4bG1nbXQwIjsKICAgICAgICAg
ICAgICAgICAgICAgICAgcmVnID0gPDB4MCAweDEwMGEwMDAwIDB4MCAweDEwMDA+OwogICAgICAg
ICAgICAgICAgICAgICAgICByZWctbmFtZXMgPSAiY29udHJvbCI7CiAgICAgICAgICAgICAgICAg
ICAgICAgICNjbG9jay1jZWxscyA9IDwwPjsKICAgICAgICAgICAgICAgIH07CiAgICAgICAgICAg
ICAgICBMNTI6IGV0aGVybmV0QDEwMDkwMDAwIHsKICAgICAgICAgICAgICAgICAgICAgICAgY29t
cGF0aWJsZSA9ICJjZG5zLG1hY2IiOwogICAgICAgICAgICAgICAgICAgICAgICBpbnRlcnJ1cHQt
cGFyZW50ID0gPCZMND47CiAgICAgICAgICAgICAgICAgICAgICAgIGludGVycnVwdHMgPSA8NTM+
OwogICAgICAgICAgICAgICAgICAgICAgICByZWcgPSA8MHgwIDB4MTAwOTAwMDAgMHgwIDB4MjAw
MD47CiAgICAgICAgICAgICAgICAgICAgICAgIHJlZy1uYW1lcyA9ICJjb250cm9sIjsKCiAgICAg
ICAgICAgICAgICAgICAgICAgIGxvY2FsLW1hYy1hZGRyZXNzID0gWzAwIDAwIDAwIDAwIDAwIDAw
XTsKICAgICAgICAgICAgICAgICAgICAgICAgcGh5LW1vZGUgPSAiZ21paSI7CiAgICAgICAgICAg
ICAgICAgICAgICAgIGNsb2NrLW5hbWVzID0gInBjbGsiLCAiaGNsayIsICJ0eF9jbGsiOwogICAg
ICAgICAgICAgICAgICAgICAgICBjbG9ja3MgPSA8JnByY2kgMT4sIDwmcHJjaSAxPiwgPCZMNTE+
OwogICAgICAgICAgICAgICAgICAgICAgICAjYWRkcmVzcy1jZWxscyA9IDwxPjsKICAgICAgICAg
ICAgICAgICAgICAgICAgI3NpemUtY2VsbHMgPSA8MD47CiAgICAgICAgICAgICAgICAgICAgICAg
IHBoeTE6IGV0aGVybmV0LXBoeUAwIHsKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBy
ZWcgPSA8MD47CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcmVzZXQtZ3Bpb3MgPSA8
JkwzMSAxMiAxPjsKICAgICAgICAgICAgICAgICAgICAgICAgfTsKICAgICAgICAgICAgICAgIH07
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LXJp
c2N2IG1haWxpbmcgbGlzdApsaW51eC1yaXNjdkBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcmlzY3YK
