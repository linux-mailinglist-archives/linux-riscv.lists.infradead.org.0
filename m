Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 934F12721C
	for <lists+linux-riscv@lfdr.de>; Thu, 23 May 2019 00:15:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QxAybZojzcWwdxq5ynLVXyeCRSvaHOStDtlw10rwXSU=; b=exqJZa0nJpXxJZ
	d4hJ2TpLEdSrlubwfavU/3MpxcYG/hP0LuoiYQOu2AFL0rAZj0jVYG0f+BezLG1OaYAwVodaaNNY0
	vFHtV+Hu8DMUqiDIMY3Qv5hz7N715fRNvDMW78mEE8UsWPiNgkKdGJHE0ehrFIYZRgTLJvcfBVPya
	XkxRv2pPZIueluEbAnxG9hOBHg5RDYeFIU0jKADXwRd9qwdRYjoOVKVu0alFaaAukK46kVEL4SMLH
	CvImfG4v//F7fSBJzRw9ELXSuOLyWR8VU5IvrY4Sh2FC3L0ZbBh9rsLnee0k5xfyusI6yAFBOUpmi
	vnKlJ/BjbXEERXbDuDFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTZVf-0006ie-EN; Wed, 22 May 2019 22:14:55 +0000
Received: from mail-io1-xd29.google.com ([2607:f8b0:4864:20::d29])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTZVb-0006iB-Er
 for linux-riscv@lists.infradead.org; Wed, 22 May 2019 22:14:52 +0000
Received: by mail-io1-xd29.google.com with SMTP id p2so3219304iol.2
 for <linux-riscv@lists.infradead.org>; Wed, 22 May 2019 15:14:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=4fQWfhecR+arMMeF7J2jaMPYVtQOEpKiwZC7q5+ccCs=;
 b=OuFdGZNDi/h7G6bR+/IawnRVxCTkzvd7NphPoWBBT9DbDszSTBPYwSrA33gFTLpnrI
 iHl5W+mLpEmJOVcn3+hzA4sQzT/F8wIgXz1X5I58gTbmnmZOLM0aeZJvZ0N0/Zr0Dd7s
 j4zKjr8EcZAzlDDvAyGVLK9IEC4FfQyD2pNc/WZudzru9/r2FYkNBwnYqOAMwgQLTg2g
 CJo7CrtqqgNcO/EKGcXmVy0ZiPWs2aeEkMThTZUxyYDasmqNR8rIhgMZrdCrR9fmmTcf
 xZPelqWWFG8OV7948wwdELXFd1GJh5IFwYXnOdqpyQkZudDMnpe861/UclK5JIaNXqV+
 gj4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=4fQWfhecR+arMMeF7J2jaMPYVtQOEpKiwZC7q5+ccCs=;
 b=gUBtX62IbwoGVt9kBIc24iTyVMGp7JdO824i7882ziXOW7VyDTMdkkteyDEQnFSZ8B
 A40HxefQE01MYwQ02oMAaBujtapNwXIxWfPDa7P5SFCgIhCi1XGnPR6+PuhNDa9iH8aQ
 MsTvaljxa9naSIN0TUn6K7t8XVpCkiH2zYO1ZEJ7QvibCtwZtMPhCtR9P/nlA2/WfbTH
 NN7ny97/gQjN+HSrg1sWuloOmasHuLxXG0ucHaMMo8hg4JhnVwoizH+gEvHTXXzi/Ifx
 eVRgnlCIVhc2Lq0S39hEOkUuOkAvr0n+BQUL27hRgJOSJ+V54aYuz46tXZya2NhGQwsk
 o3FA==
X-Gm-Message-State: APjAAAXwpFZM0ZCkEjjonsILyk3ZmvcEW+YUUvVg+j2LkZLF7rrytzrr
 KkTcUw5bGoYMq6QDp/Njz/UCFw==
X-Google-Smtp-Source: APXvYqz5KaQx23AjfFLMvdLllqkTd4cIh3k4njNlBGgtjcdM7Nb8bCUz/ntH9KplPbKZiMyvH/qdbA==
X-Received: by 2002:a6b:9257:: with SMTP id u84mr10951777iod.55.1558563285962; 
 Wed, 22 May 2019 15:14:45 -0700 (PDT)
Received: from [192.168.1.196] ([216.160.37.230])
 by smtp.gmail.com with ESMTPSA id 3sm3468967itu.29.2019.05.22.15.14.45
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 22 May 2019 15:14:45 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
Subject: Re: 5.2-rc1 boot on Unleashed
From: Troy Benjegerdes <troy.benjegerdes@sifive.com>
In-Reply-To: <alpine.DEB.2.21.9999.1905221334460.23235@viisi.sifive.com>
Date: Wed, 22 May 2019 17:14:44 -0500
Message-Id: <34F7A31E-17F9-4A3C-9F42-DE7837F899CE@sifive.com>
References: <5c1ffb76-b18a-dbae-d3ad-f3d2cd41ee44@wdc.com>
 <alpine.DEB.2.21.9999.1905220942040.20842@viisi.sifive.com>
 <db248e63-c0bc-7fd8-cf2d-d13c8f140036@wdc.com>
 <alpine.DEB.2.21.9999.1905221334460.23235@viisi.sifive.com>
To: Paul Walmsley <paul.walmsley@sifive.com>
X-Mailer: Apple Mail (2.3445.9.1)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_151451_510388_DD513B70 
X-CRM114-Status: GOOD (  10.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d29 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: anup.patel@wdc.com, Atish Patra <atish.patra@wdc.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 Palmer Dabbelt <palmer@sifive.com>,
 =?utf-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Cj4gT24gTWF5IDIyLCAyMDE5LCBhdCAzOjQzIFBNLCBQYXVsIFdhbG1zbGV5IDxwYXVsLndhbG1z
bGV5QHNpZml2ZS5jb20+IHdyb3RlOgo+IAo+ICsgQW51cCwgVHJveQo+IAo+IE9uIFdlZCwgMjIg
TWF5IDIwMTksIEF0aXNoIFBhdHJhIHdyb3RlOgo+IAo+PiBPbiA1LzIyLzE5IDk6NDIgQU0sIFBh
dWwgV2FsbXNsZXkgd3JvdGU6Cj4+PiBBbSBjaGVja2luZyBvbiB0aGlzIG5vdyBhbmQgaG9wZSB0
byBoYXZlIHNvbWUgY29uY2x1c2lvbiBvbiBpdCB0aGlzIHdlZWsuCj4+IAo+PiBUaGFua3MuIEFu
eSBjaGFuY2UgeW91IGNhbiB0YWtlIGEgbG9vayBhdCB0aGUgVS1Cb290IGNsb2NrIGRyaXZlciB0
byBwYXRjaCBpdAo+PiBhcyBwZXIgdGhlIERUIGNoYW5nZXMgPwo+IAo+IEkgcHJvYmFibHkgd29u
J3QgaGF2ZSB0aGUgY2hhbmNlIHRvIGdldCB0byBpdCBmb3IgYSB3aGlsZS4gIExvb2tzIGxpa2Ug
Cj4gQW51cCB3YXMgdGhlIG9uZSB3aG8gcG9zdGVkIHRoZSBjbG9jayBkcml2ZXIgdG8gVS1Cb290
IC0gY2FuIGhlIHRha2UgYSAKPiBsb29rIGF0IGl0Pwo+IAo+IFdlJ3ZlIGFsc28gYXNrZWQgVHJv
eSB0byBsb29rIGF0IHVwc3RyZWFtIFUtYm9vdCByZWxhdGVkIGlzc3VlcywgYnV0IAo+IEknbSB1
bnN1cmUgd2hlbiBwYXRjaGVzIHdpbGwgc3RhcnQgZmxvd2luZyB1cHN0cmVhbS4KPiAKPiAKPiAt
IFBhdWwKCk9uY2UgSSBmaWd1cmUgb3V0IHdoeSBJ4oCZbSBnZXR0aW5nIFRYIHRpbWVvdXRzIG9u
IHRoZSBtYWNiIGRyaXZlciBhbmQgaGF2ZSBzb21ldGhpbmcgd29ya2luZyBJIGNhbiBzdGFydCB1
cHN0cmVhbWluZyB0aGUgdS1ib290IHBhdGNoZXMuCgpGb3Igbm93LCB0aGUgd29yay1pbi1wcm9n
cmVzcyBpcyBhdCBodHRwczovL2dpdGh1Yi5jb20vc2lmaXZlL3UtYm9vdC90cmVlL3NhbmRib3gK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtcmlz
Y3YgbWFpbGluZyBsaXN0CmxpbnV4LXJpc2N2QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yaXNjdgo=
