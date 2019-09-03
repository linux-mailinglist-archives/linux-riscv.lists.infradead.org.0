Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C972DA76F0
	for <lists+linux-riscv@lfdr.de>; Wed,  4 Sep 2019 00:27:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Mime-Version:Message-ID:To:From:In-Reply-To:Subject:
	Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	 bh=O6vNS1FD3PazTsAOwrRpx2ZTzFjWOhRq/QutjAMS66s=; b=ZuUmRAYgz7emoJvgCLjtX8ng+
	mpNU7KenVxQxeNubn6ypciQ/tsZvzo9JlQvOneetXUg1Y5wOn4JBn8Ut8rqxOdIadY2sxXcxxxSDW
	h9oMhLv12CxXnr5FA1fRJ5QtI7MOWY2+O8V309YJGQlquifA+FssxIyGClV52zBaEaRsUFAjLa/2T
	2TJDszBS7rmdHiv4vAIhRrOqrVuBcU2VPnjY+WKNH4pGhsnarPb7FOk2R805xeKSbLJPBQ+aBZH+B
	uP/njk5m2p29EWurc2Qc9MGfmuTA23Vhg6nIjzGuQeQ6Qw1n3vIzlkFP6dbya8LHV9Sr9tVR3r/Ji
	Kk62F+m6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5HGi-00061Q-NG; Tue, 03 Sep 2019 22:27:20 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5HGc-00060k-Dk
 for linux-riscv@lists.infradead.org; Tue, 03 Sep 2019 22:27:16 +0000
Received: by mail-pf1-x442.google.com with SMTP id b13so5157494pfo.8
 for <linux-riscv@lists.infradead.org>; Tue, 03 Sep 2019 15:27:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
 :content-transfer-encoding;
 bh=TDK0yPP3UaTvpEb1rUB8fJ3YnVhy6RuZ/98K7uw4/fc=;
 b=HJwBkM1gUIyoLQcA3L83Yg22Me5qhPjoVorl/nz2aRsANwmKCBUMbzfgJ16CFP4hjd
 w9KzoH6FxY5PhXVdf8ouJQo3hK5gmzFbLBA3jgUlRNIeB244LlwZAd8ufFP0NC+zvf+5
 50xMa0Rz4gmhtaLFhJolaToJKT5l7g6Fo+sJA04CjLzIUlDH1XYOAV0M+nCUxCrwEm4b
 lyEpWzLQ77p5Fx5/4G/74O50/aA+NrzNzMrHwyNbPu5YWtsgYQFu4IIE01A85qdvfxFK
 p+X5pydbdyeQ+Ef+aTVKt6lll+DQFvECjjd6A7is+i6ZMpSD7oEzJzFS9bgI2PCVqw0y
 CMBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=TDK0yPP3UaTvpEb1rUB8fJ3YnVhy6RuZ/98K7uw4/fc=;
 b=L5uhx/L+Ozk54xKAy9WfeZ4qMiMkAWSZuxjpqkAFTB6RSWHLdoEgCTPbWO4lGdw9ZS
 1kGPFA8xhV4aEFW1rTPFFFFWpJXtB0H4zBVu1Y3gMYSMR1ie0ooD9I5ZNCSHzUyM3fry
 eAfaBQEdXiDwFYbCBpyWmPNbZUdOmSg6a0CCqXJIeyOn3LAzAOcje82A5a0+fMudOj1h
 zvZIWzD+ueGZbDga+yfhRj+u6GFUW8AAlZx0ROV7cxBwCrldZsCEqplaHQe+YVGdQvlw
 tSpQ/pwHZG474b5b1cLgYNtlr46YGM+HoysHZZApfAaJzEBuI6WoOqHMLsPQzqRxCrH/
 45TA==
X-Gm-Message-State: APjAAAW7plQLMU65p+wQCl5dDNiO56bdfcKSaNjHaONJ6OaM4X3FKk09
 fCUU/kuUwkGMHAeoNdnOCUFuXw==
X-Google-Smtp-Source: APXvYqyCxZAyHS5bALzM5AAA/1h452WNgdmENzF8lc4UoFSzfyh0aYXJVa3SUFGrZNigtoeHcIcYLA==
X-Received: by 2002:a62:7641:: with SMTP id r62mr41163391pfc.201.1567549633023; 
 Tue, 03 Sep 2019 15:27:13 -0700 (PDT)
Received: from localhost ([12.206.222.5])
 by smtp.gmail.com with ESMTPSA id w10sm490850pjv.23.2019.09.03.15.27.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Sep 2019 15:27:12 -0700 (PDT)
Date: Tue, 03 Sep 2019 15:27:12 -0700 (PDT)
X-Google-Original-Date: Tue, 03 Sep 2019 15:24:39 PDT (-0700)
Subject: Re: [PATCH v2] riscv: add support for SECCOMP and SECCOMP_FILTER
In-Reply-To: <419CB0D1-E51C-49D5-9745-7771C863462F@amacapital.net>
From: Palmer Dabbelt <palmer@sifive.com>
To: luto@amacapital.net
Message-ID: <mhng-c8a768f7-1a90-4228-b654-be9e879c92ec@palmer-si-x1c4>
Mime-Version: 1.0 (MHng)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_152714_525686_162B4FF2 
X-CRM114-Status: GOOD (  15.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: songliubraving@fb.com, alankao@andestech.com, ast@kernel.org,
 oleg@redhat.com, linux-kselftest@vger.kernel.org,
 linux-riscv@lists.infradead.org, shuah@kernel.org, daniel@iogearbox.net,
 yhs@fb.com, me@carlosedp.com, aou@eecs.berkeley.edu, keescook@chromium.org,
 alexios.zavras@intel.com, Paul Walmsley <paul.walmsley@sifive.com>,
 tglx@linutronix.de, allison@lohutok.net, wad@chromium.org,
 david.abdurachmanov@gmail.com,
 David Abdurachmanov <david.abdurachmanov@sifive.com>, netdev@vger.kernel.org,
 Anup Patel <Anup.Patel@wdc.com>, linux-kernel@vger.kernel.org,
 vincentc@andestech.com, bpf@vger.kernel.org, kafai@fb.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

T24gV2VkLCAyOCBBdWcgMjAxOSAxMDo1MjowNSBQRFQgKC0wNzAwKSwgbHV0b0BhbWFjYXBpdGFs
Lm5ldCB3cm90ZToKPgo+Cj4+IE9uIEF1ZyAyNSwgMjAxOSwgYXQgMjo1OSBQTSwgS2VlcyBDb29r
IDxrZWVzY29va0BjaHJvbWl1bS5vcmc+IHdyb3RlOgo+PiAKPj4+IE9uIFRodSwgQXVnIDIyLCAy
MDE5IGF0IDAxOjU1OjIyUE0gLTA3MDAsIERhdmlkIEFiZHVyYWNobWFub3Ygd3JvdGU6Cj4+PiBU
aGlzIHBhdGNoIHdhcyBleHRlbnNpdmVseSB0ZXN0ZWQgb24gRmVkb3JhL1JJU0NWIChhcHBsaWVk
IGJ5IGRlZmF1bHQgb24KPj4+IHRvcCBvZiA1LjItcmM3IGtlcm5lbCBmb3IgPDIgbW9udGhzKS4g
VGhlIHBhdGNoIHdhcyBhbHNvIHRlc3RlZCB3aXRoIDUuMy1yYwo+Pj4gb24gUUVNVSBhbmQgU2lG
aXZlIFVubGVhc2hlZCBib2FyZC4KPj4gCj4+IE9vcHMsIEkgc2VlIHRoZSBtZW50aW9uIG9mIFFF
TVUgaGVyZS4gV2hlcmUncyB0aGUgYmVzdCBwbGFjZSB0byBmaW5kCj4+IGluc3RydWN0aW9ucyBv
biBjcmVhdGluZyBhIHFlbXUgcmlzY3YgaW1hZ2UvZW52aXJvbm1lbnQ/Cj4KPiBJIGRvbuKAmXQg
c3VwcG9zZSBvbmUgb2YgeW91IHJpc2N2IGZvbGtzIHdvdWxkIGxpa2UgdG8gY29udHJpYnV0ZSBy
aXNjdiBzdXBwb3J0IHRvIHZpcnRtZT8gIHZpcnRtZS1ydW4g4oCUYXJjaD1yaXNjdiB3b3VsZCBi
ZSBxdWl0ZSBuaWNlLCBhbmQgdGhlIHRvdGFsIHBhdGNoIHNob3VsZCBiZSBqdXN0IGEgY291cGxl
IGxpbmVzLiAgVW5mb3J0dW5hdGVseSwgaXQgaGVscHMgYSBsb3QgdG8gdW5kZXJzdGFuZCB0aGUg
c3VidGxldGllcyBvZiBib290aW5nIHRoZSBhcmNoaXRlY3R1cmUgdG8gd3JpdGUgdGhvc2UgY291
cGxlIGxpbmVzIDopCgpXaGF0IG1haWxpbmcgbGlzdCBzaG91bGQgSSBzZW50IHRoaXMgdG8/ICBZ
b3UgbmVlZCB0byB1c2UgdGhlICJ2aXJ0bWUiIGJyYW5jaCAKb2Yga2VybmVsLm9yZy9wYWxtZXIv
bGludXguZ2l0IHVudGlsIEkgc2VuZCB0aGUgZGVmY29uZmlnIHBhdGNoZXMuCgpjb21taXQgYThi
ZDdiMzE4NjkxODkxOTkxY2FlYTI5OGY5YTVlZDBmODE1YzMyMgpncGc6IFNpZ25hdHVyZSBtYWRl
IFR1ZSAwMyBTZXAgMjAxOSAwMzoyMjo0NSBQTSBQRFQKZ3BnOiAgICAgICAgICAgICAgICB1c2lu
ZyBSU0Ega2V5IDAwQ0U3NkQxODM0OTYwREZDRTg4NkRGOEVGNENBMTUwMkNDQkFCNDEKZ3BnOiAg
ICAgICAgICAgICAgICBpc3N1ZXIgInBhbG1lckBkYWJiZWx0LmNvbSIKZ3BnOiBHb29kIHNpZ25h
dHVyZSBmcm9tICJQYWxtZXIgRGFiYmVsdCA8cGFsbWVyQGRhYmJlbHQuY29tPiIgW3VsdGltYXRl
XQpncGc6ICAgICAgICAgICAgICAgICBha2EgIlBhbG1lciBEYWJiZWx0IDxwYWxtZXJAc2lmaXZl
LmNvbT4iIFt1bHRpbWF0ZV0KQXV0aG9yOiBQYWxtZXIgRGFiYmVsdCA8cGFsbWVyQHNpZml2ZS5j
b20+CkRhdGU6ICAgVHVlIFNlcCAzIDE0OjM5OjM5IDIwMTkgLTA3MDAKCiAgICBBZGQgUklTQy1W
IHN1cHBvcnQKCiAgICBUaGlzIGV4cGVjdHMgYSBrZXJuZWwgd2l0aCB0aGUgcGxhbiA5IHN0dWZm
IHN1cHBvcnRlZCAobm90IHlldCBpbgogICAgZGVmY29uZmlnKSBhbmQgYSBuZXcgUUVNVSAoYXMg
ZGVzY3JpYmVkIGluIHRoZSBSRUFETUUpLiAgSSdtIGFsc28gbm90CiAgICAxMDAlIHN1cmUgaXQn
cyB3b3JraW5nLCBhcyBJJ20gZ2V0dGluZwoKICAgICAgICAvYmluL3NoOiBleGVjOiBsaW5lIDE6
IC9ydW4vdmlydG1lL2d1ZXN0dG9vbHMvdmlydG1lLWluaXQ6IG5vdCBmb3VuZAoKICAgIFNpZ25l
ZC1vZmYtYnk6IFBhbG1lciBEYWJiZWx0IDxwYWxtZXJAc2lmaXZlLmNvbT4KCmRpZmYgLS1naXQg
YS9SRUFETUUubWQgYi9SRUFETUUubWQKaW5kZXggNTFiNjU4My4uZDUzYTQ1NiAxMDA2NDQKLS0t
IGEvUkVBRE1FLm1kCisrKyBiL1JFQURNRS5tZApAQCAtMTEyLDYgKzExMiwxNCBAQCBQUEM2NAoK
IFBQQzY0IGFwcGVhcnMgdG8gYmUgcmVhc29uYWJseSBmdW5jdGlvbmFsLgoKK1JJU0MtVgorLS0t
LS0tCisKK3Jpc2N2NjQgd29ya3Mgb3V0IG9mIHRoZSBib3gsIGJ1dCB5b3UnbGwgbmVldCBhdCBs
ZWFzdCBRRU1VLTQuMS4wIHRvIGJlCithYmxlIHRvIHJ1biBgdm1saW51eGAtc3R5bGUga2VybmVs
cy4gIHJpc2N2MzIgaXMgbm90IHN1cHBvcnRlZCBiZWNhdXNlCit0aGVyZSBhcmUgbm8gZXhpc3Rp
bmcgdXNlcnNwYWNlIGltYWdlcyBmb3IgaXQuICBTdXBwb3J0IGlzIHByb3ZpZGVkIHZpYQorUUVN
VSdzIGB2aXJ0YCBtYWNoaW5lIHdpdGggT3BlblNCSSBmb3IgZmlybXdhcmUuCisKIE90aGVycwog
LS0tLS0tCgpkaWZmIC0tZ2l0IGEvdmlydG1lL2FyY2hpdGVjdHVyZXMucHkgYi92aXJ0bWUvYXJj
aGl0ZWN0dXJlcy5weQppbmRleCA5ODcxZWE0Li5lZTg0NDk0IDEwMDY0NAotLS0gYS92aXJ0bWUv
YXJjaGl0ZWN0dXJlcy5weQorKysgYi92aXJ0bWUvYXJjaGl0ZWN0dXJlcy5weQpAQCAtMjA3LDYg
KzIwNywzMCBAQCBjbGFzcyBBcmNoX3BwYzY0KEFyY2gpOgogICAgICAgICAjIEFwcGFyZW50bHkg
U0xPRiAoUUVNVSdzIGJ1bmRsZWQgZmlybXdhcmU/KSBjYW4ndCBib290IGEgekltYWdlLgogICAg
ICAgICByZXR1cm4gJ3ZtbGludXgnCgorY2xhc3MgQXJjaF9yaXNjdjY0KEFyY2gpOgorICAgIGRl
ZiBfX2luaXRfXyhzZWxmLCBuYW1lKToKKyAgICAgICAgQXJjaC5fX2luaXRfXyhzZWxmLCBuYW1l
KQorCisgICAgICAgIHNlbGYuZGVmY29uZmlnX3RhcmdldCA9ICdyaXNjdjY0X2RlZmNvbmZpZycK
KyAgICAgICAgc2VsZi5xZW11bmFtZSA9ICdyaXNjdjY0JworICAgICAgICBzZWxmLmxpbnV4bmFt
ZSA9ICdyaXNjdicKKyAgICAgICAgc2VsZi5nY2NuYW1lID0gJ3Jpc2N2NjQnCisKKyAgICBkZWYg
cWVtdWFyZ3Moc2VsZiwgaXNfbmF0aXZlKToKKyAgICAgICAgcmV0ID0gQXJjaC5xZW11YXJncyhp
c19uYXRpdmUpCisKKyAgICAgICAgcmV0LmV4dGVuZChbJy1tYWNoaW5lJywgJ3ZpcnQnXSkKKyAg
ICAgICAgcmV0LmV4dGVuZChbJy1iaW9zJywgJ2RlZmF1bHQnXSkKKworICAgICAgICByZXR1cm4g
cmV0CisKKyAgICBAc3RhdGljbWV0aG9kCisgICAgZGVmIHNlcmlhbF9jb25zb2xlX2FyZ3MoKToK
KyAgICAgICAgcmV0dXJuIFsnY29uc29sZT10dHlTMCddCisKKyAgICBkZWYga2ltZ19wYXRoKHNl
bGYpOgorICAgICAgICByZXR1cm4gJ2FyY2gvcmlzY3YvYm9vdC9JbWFnZScKKwogY2xhc3MgQXJj
aF9zcGFyYzY0KEFyY2gpOgogICAgIGRlZiBfX2luaXRfXyhzZWxmLCBuYW1lKToKICAgICAgICAg
QXJjaC5fX2luaXRfXyhzZWxmLCBuYW1lKQpAQCAtMjY0LDYgKzI4OCw3IEBAIEFSQ0hFUyA9IHsK
ICAgICAnYXJtJzogQXJjaF9hcm0sCiAgICAgJ2FhcmNoNjQnOiBBcmNoX2FhcmNoNjQsCiAgICAg
J3BwYzY0JzogQXJjaF9wcGM2NCwKKyAgICAncmlzY3Y2NCc6IEFyY2hfcmlzY3Y2NCwKICAgICAn
c3BhcmM2NCc6IEFyY2hfc3BhcmM2NCwKICAgICAnczM5MHgnOiBBcmNoX3MzOTB4LAogfQoKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LXJpc2N2
IG1haWxpbmcgbGlzdApsaW51eC1yaXNjdkBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcmlzY3YK
