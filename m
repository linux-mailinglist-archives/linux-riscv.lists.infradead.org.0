Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37D822BC62
	for <lists+linux-riscv@lfdr.de>; Tue, 28 May 2019 01:41:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vydNsa59WqA/w2Wjlm1zzvpB4clq+ncpiy7enpP38Sk=; b=CSuRYfLrwhrCyX
	KE/bDAGjlBM+FFs/BJesvjpLnWA+XqjxWTbqQq/iH2UU3PRBXBqCJiChfEPWc++yQzfpaLLURKJax
	fcGYY9SfJFO/OFKCfPrh3GsbOHOPyvyR9QErtQTjRHOibXnPSDTkdkkVJUw6zQcNfUkhK/Uv2HUzz
	Rh7eftuklWlIox1YvVjpiAXWfVbqW8DhqUZrTewg1E89+xgrbbiEhUUcCEXr2x+nD79E9XkGnFkgT
	1httjbsJxgMy4jQGef662ZTsj6MJJwUjId/MMhk2k3QTaxd049aJFNF6Y5SuXZG8cBTl7GmQn3Kpy
	TJ12Ang3ulkDaLrb53EA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVPF5-0008Kt-DH; Mon, 27 May 2019 23:41:23 +0000
Received: from mail-it1-x144.google.com ([2607:f8b0:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVPF1-00089j-DS
 for linux-riscv@lists.infradead.org; Mon, 27 May 2019 23:41:21 +0000
Received: by mail-it1-x144.google.com with SMTP id e184so1267018ite.1
 for <linux-riscv@lists.infradead.org>; Mon, 27 May 2019 16:41:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=A2J+s8BqAZQAfK9r5ChT6V/C5Z8JJs5HjLWwE29ilto=;
 b=B9CUWIZDzGNIIuCPjQ1wXYfYkJAPQvv/TqcM5DkwCaAEZNJB6QyE9SlOdVfT9/emJy
 VTN6ams0W9DHxqCP+ZyPYZO/izz77F74kKv9O/8eRHb7Vl2ZpRTIDlTqtxBm6OWYG46R
 VWrgDQ5K/Fm8fWwLW0oVdKsvoNiOb9aBC+wbHIYxmr27gjpHiP1EFP+3rWcJL1iQZUX6
 C1SiO3+OllhtCMv8m/gcuKJAdF3datvTt5pZWhKLNpFmWqHJ/XUaj//BHZGyukDSsq0p
 WCpcSasR6l3lHUkIZzhXubWsQmQ+pFIjV40R1kS2AmudNTP3mgaFt1ZePeuNULqsKInQ
 nv7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=A2J+s8BqAZQAfK9r5ChT6V/C5Z8JJs5HjLWwE29ilto=;
 b=eBaLd6a/qCVS5QitH7AVx7+jaC7woTfER6tTezFaR4nfhfiWi9gNVx9e3ECXf3Yiqi
 pwTxT9bfuoA6c1NZ9LflXIQA/NDWMY9g0PmxBGxQFLkgdDgB/Cngj671aQxsbr272clt
 +kVI1IYsDQeh34b3Myg4vs/awWZ2gtogqdgyNgRlVzYIXHujiraE8l2pvEVsJrzfVJJf
 H8hP4OgZddWmPzMwWEIHL5ZAgmjSjHbLDfIAVv2IhbgJwVkRyopvXyNyVfWMtdm1/fV2
 QKYeRVwWpYnUx6jszjz+ew80XLxQCYaS4anDj/ghaILGSc3n34RtSkSQyIccpnoyjAsT
 hL/g==
X-Gm-Message-State: APjAAAVfW6xQ5xHRpTx5vKXljcFB1NYOSz805jTcux2kLspmbwgvhROe
 h/TZsxJCG6FEwqTR8/aHZiyDzA==
X-Google-Smtp-Source: APXvYqwkt4rsMsQSgapSKoc0CVajeauqmovQuciFVnsRGkfkd+r2aMjejt+5bo2OI9Iyjn7+3Y6RAw==
X-Received: by 2002:a24:97d2:: with SMTP id k201mr1031087ite.151.1559000477923; 
 Mon, 27 May 2019 16:41:17 -0700 (PDT)
Received: from ?IPv6:2604:2d80:4416:8120:746c:649:1263:a4a5?
 ([2604:2d80:4416:8120:746c:649:1263:a4a5])
 by smtp.gmail.com with ESMTPSA id f24sm3987584ioj.50.2019.05.27.16.41.16
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 27 May 2019 16:41:17 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
Subject: Re: [v4 PATCH] RISC-V: Add an Image header that boot loader can parse.
From: Troy Benjegerdes <troy.benjegerdes@sifive.com>
In-Reply-To: <20190527221619.fkxtzk4jpeyfoptf@excalibur.cnev.de>
Date: Mon, 27 May 2019 18:41:13 -0500
Message-Id: <3178D175-18AD-47D0-8D51-CB2900DFA572@sifive.com>
References: <20190524041814.7497-1-atish.patra@wdc.com>
 <CAKv+Gu9U56b50TrfriBfRFed_1aoXg2Y624tu7v5m2y+6DVq5w@mail.gmail.com>
 <20190527221619.fkxtzk4jpeyfoptf@excalibur.cnev.de>
To: Karsten Merker <merker@debian.org>
X-Mailer: Apple Mail (2.3445.9.1)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_164119_540118_B5A588DD 
X-CRM114-Status: GOOD (  23.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Jonathan Corbet <corbet@lwn.net>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, Anup Patel <Anup.Patel@wdc.com>,
 Zong Li <zong@andestech.com>, Atish Patra <atish.patra@wdc.com>,
 Palmer Dabbelt <palmer@sifive.com>,
 "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
 Nick Kossifidis <mick@ics.forth.gr>, linux-riscv@lists.infradead.org,
 "marek.vasut@gmail.com" <marek.vasut@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Cgo+IE9uIE1heSAyNywgMjAxOSwgYXQgNToxNiBQTSwgS2Fyc3RlbiBNZXJrZXIgPG1lcmtlckBk
ZWJpYW4ub3JnPiB3cm90ZToKPiAKPiBPbiBNb24sIE1heSAyNywgMjAxOSBhdCAwNDozNDo1N1BN
ICswMjAwLCBBcmQgQmllc2hldXZlbCB3cm90ZToKPj4gT24gRnJpLCAyNCBNYXkgMjAxOSBhdCAw
NjoxOCwgQXRpc2ggUGF0cmEgPGF0aXNoLnBhdHJhQHdkYy5jb20+IHdyb3RlOgo+Pj4gQ3VycmVu
dGx5LCB0aGUgbGFzdCBzdGFnZSBib290IGxvYWRlcnMgc3VjaCBhcyBVLUJvb3QgY2FuIGFjY2Vw
dCBvbmx5Cj4+PiB1SW1hZ2Ugd2hpY2ggaXMgYW4gdW5uZWNlc3NhcnkgYWRkaXRpb25hbCBzdGVw
IGluIGF1dG9tYXRpbmcgYm9vdAo+Pj4gcHJvY2Vzcy4KPj4+IAo+Pj4gQWRkIGFuIGltYWdlIGhl
YWRlciB0aGF0IGJvb3QgbG9hZGVyIHVuZGVyc3RhbmRzIGFuZCBib290IExpbnV4IGZyb20KPj4+
IGZsYXQgSW1hZ2UgZGlyZWN0bHkuCj4+PiAKPj4+IFRoaXMgaGVhZGVyIGlzIGJhc2VkIG9uIEFS
TTY0IGJvb3QgaW1hZ2UgaGVhZGVyIGFuZCBwcm92aWRlcyBhbgo+Pj4gb3Bwb3J0dW5pdHkgdG8g
Y29tYmluZSBib3RoIEFSTTY0ICYgUklTQy1WIGltYWdlIGhlYWRlcnMgaW4gZnV0dXJlLgo+Pj4g
Cj4+PiBBbHNvIG1ha2Ugc3VyZSB0aGF0IFBFL0NPRkYgaGVhZGVyIGNhbiBjby1leGlzdCBpbiB0
aGUgc2FtZSBpbWFnZSBzbwo+Pj4gdGhhdCBFRkkgc3R1YiBjYW4gYmUgc3VwcG9ydGVkIGZvciBS
SVNDLVYgaW4gZnV0dXJlLiBFRkkgc3BlY2lmaWNhdGlvbgo+Pj4gbmVlZHMgUEUvQ09GRiBpbWFn
ZSBoZWFkZXIgaW4gdGhlIGJlZ2lubmluZyBvZiB0aGUga2VybmVsIGltYWdlIGluIG9yZGVyCj4+
PiB0byBsb2FkIGl0IGFzIGFuIEVGSSBhcHBsaWNhdGlvbi4gSW4gb3JkZXIgdG8gc3VwcG9ydCBF
Rkkgc3R1YiwgY29kZTAKPj4+IHNob3VsZCBiZSByZXBsYWNlZCB3aXRoICJNWiIgbWFnaWMgc3Ry
aW5nIGFuZCByZXM0KGF0IG9mZnNldCAweDNjKQo+Pj4gc2hvdWxkIHBvaW50IHRvIHRoZSByZXN0
IG9mIHRoZSBQRS9DT0ZGIGhlYWRlciAod2hpY2ggd2lsbCBiZSBhZGRlZAo+Pj4gZHVyaW5nIEVG
SSBzdXBwb3J0KS4KPiBbLi4uXQo+Pj4gRG9jdW1lbnRhdGlvbi9yaXNjdi9ib290LWltYWdlLWhl
YWRlci50eHQgfCA1MCArKysrKysrKysrKysrKysrKysKPj4+IGFyY2gvcmlzY3YvaW5jbHVkZS9h
c20vaW1hZ2UuaCAgICAgICAgICAgIHwgNjQgKysrKysrKysrKysrKysrKysrKysrKysKPj4+IGFy
Y2gvcmlzY3Yva2VybmVsL2hlYWQuUyAgICAgICAgICAgICAgICAgIHwgMzIgKysrKysrKysrKysr
Cj4+PiAzIGZpbGVzIGNoYW5nZWQsIDE0NiBpbnNlcnRpb25zKCspCj4+PiBjcmVhdGUgbW9kZSAx
MDA2NDQgRG9jdW1lbnRhdGlvbi9yaXNjdi9ib290LWltYWdlLWhlYWRlci50eHQKPj4+IGNyZWF0
ZSBtb2RlIDEwMDY0NCBhcmNoL3Jpc2N2L2luY2x1ZGUvYXNtL2ltYWdlLmgKPj4+IAo+Pj4gZGlm
ZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vcmlzY3YvYm9vdC1pbWFnZS1oZWFkZXIudHh0IGIvRG9j
dW1lbnRhdGlvbi9yaXNjdi9ib290LWltYWdlLWhlYWRlci50eHQKPj4+IG5ldyBmaWxlIG1vZGUg
MTAwNjQ0Cj4+PiBpbmRleCAwMDAwMDAwMDAwMDAuLjY4YWJjMjM1M2NlYwo+Pj4gLS0tIC9kZXYv
bnVsbAo+Pj4gKysrIGIvRG9jdW1lbnRhdGlvbi9yaXNjdi9ib290LWltYWdlLWhlYWRlci50eHQK
Pj4+IEBAIC0wLDAgKzEsNTAgQEAKPj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
Qm9vdCBpbWFnZSBoZWFkZXIgaW4gUklTQy1WIExpbnV4Cj4+PiArICAgICAgICAgICAgICAgICAg
ICAgICA9PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT0KPj4+ICsK
Pj4+ICtBdXRob3I6IEF0aXNoIFBhdHJhIDxhdGlzaC5wYXRyYUB3ZGMuY29tPgo+Pj4gK0RhdGUg
IDogMjAgTWF5IDIwMTkKPj4+ICsKPj4+ICtUaGlzIGRvY3VtZW50IG9ubHkgZGVzY3JpYmVzIHRo
ZSBib290IGltYWdlIGhlYWRlciBkZXRhaWxzIGZvciBSSVNDLVYgTGludXguCj4+PiArVGhlIGNv
bXBsZXRlIGJvb3RpbmcgZ3VpZGUgd2lsbCBiZSBhdmFpbGFibGUgYXQgRG9jdW1lbnRhdGlvbi9y
aXNjdi9ib290aW5nLnR4dC4KPj4+ICsKPj4+ICtUaGUgZm9sbG93aW5nIDY0LWJ5dGUgaGVhZGVy
IGlzIHByZXNlbnQgaW4gZGVjb21wcmVzc2VkIExpbnV4IGtlcm5lbCBpbWFnZS4KPj4+ICsKPj4+
ICsgICAgICAgdTMyIGNvZGUwOyAgICAgICAgICAgICAgICAvKiBFeGVjdXRhYmxlIGNvZGUgKi8K
Pj4+ICsgICAgICAgdTMyIGNvZGUxOyAgICAgICAgICAgICAgICAvKiBFeGVjdXRhYmxlIGNvZGUg
Ki8KPj4gCj4+IEFwb2xvZ2llcyBmb3Igbm90IG1lbnRpb25pbmcgdGhpcyBpbiBteSBwcmV2aW91
cyByZXBseSwgYnV0IGdpdmVuIHRoYXQKPj4geW91IGFscmVhZHkga25vdyB0aGF0IHlvdSB3aWxs
IG5lZWQgdG8gcHV0IHRoZSBtYWdpYyBzdHJpbmcgTVogYXQKPj4gb2Zmc2V0IDB4MCwgaXQgbWFr
ZXMgbW9yZSBzZW5zZSB0byBub3QgcHV0IGFueSBjb2RlIHRoZXJlIGF0IGFsbCwgYnV0Cj4+IGVk
dWNhdGUgdGhlIGJvb3Rsb2FkZXIgdGhhdCB0aGUgZmlyc3QgZXhlY3V0YWJsZSBpbnN0cnVjdGlv
biBpcyBhdAo+PiBvZmZzZXQgMHgyMCwgYW5kIHB1dCB0aGUgc3BhcmUgZmllbGRzIHJpZ2h0IGFm
dGVyIGl0IGluIGNhc2UgeW91IGV2ZXIKPj4gbmVlZCBtb3JlIHRoYW4gMiBzbG90cy4gKE9uIGFy
bTY0LCB3ZSB3ZXJlIGx1Y2t5IHRvIGJlIGFibGUgdG8gZmluZCBhbgo+PiBvcGNvZGUgdGhhdCBo
YXBwZW5lZCB0byBjb250YWluIHRoZSBNWiBiaXQgcGF0dGVybiBhbmQgYWN0IGFsbW9zdCBsaWtl
Cj4+IGEgTk9QLCBidXQgaXQgc2VlbXMgc2lsbHkgdG8gcmVseSBvbiB0aGF0IGZvciBSSVNDLVYg
YXMgd2VsbCkKPj4gCj4+IFNvIHNvbWV0aGluZyBsaWtlCj4+IAo+PiB1MTYgcGVfcmVzMTsgIC8q
IE1aIGZvciBFRkkgYm9vdGFibGUgaW1hZ2VzLCBkb24ndCBjYXJlIG90aGVyd2lzZSAqLwo+PiB1
OCBtYWdpY1s2XTsgICAgLyogIlJJU0NWXDAiCj4+IAo+PiB1NjQgdGV4dF9vZmZzZXQ7ICAgICAg
ICAgIC8qIEltYWdlIGxvYWQgb2Zmc2V0LCBsaXR0bGUgZW5kaWFuICovCj4+IHU2NCBpbWFnZV9z
aXplOyAgICAgICAgICAgLyogRWZmZWN0aXZlIEltYWdlIHNpemUsIGxpdHRsZSBlbmRpYW4gKi8K
Pj4gdTY0IGZsYWdzOyAgICAgICAgICAgICAgICAvKiBrZXJuZWwgZmxhZ3MsIGxpdHRsZSBlbmRp
YW4gKi8KPj4gCj4+IHUzMiBjb2RlMDsgICAgICAgICAgICAgICAgLyogRXhlY3V0YWJsZSBjb2Rl
ICovCj4+IHUzMiBjb2RlMTsgICAgICAgICAgICAgICAgLyogRXhlY3V0YWJsZSBjb2RlICovCj4+
IAo+PiB1NjQgcmVzZXJ2ZWRbMl07ICAgICAvKiByZXNlcnZlZCBmb3IgZnV0dXJlIHVzZSAqLwo+
PiAKPj4gdTMyIHZlcnNpb247ICAgICAgICAgICAgICAvKiBWZXJzaW9uIG9mIHRoaXMgaGVhZGVy
ICovCj4+IHUzMiBwZV9yZXMyOyAgICAgICAgICAgICAgICAgLyogUmVzZXJ2ZWQgZm9yIFBFIENP
RkYgb2Zmc2V0ICovCj4gCj4gSGVsbG8sCj4gCj4gd291bGRuJ3QgdGhhdCBpbW1lZGlhdGVseSBi
cmVhayBleGlzdGluZyBzeXN0ZW1zIChpbmNsdWRpbmcgcWVtdQo+IHdoZW4gbG9hZGluZyBrZXJu
ZWxzIHdpdGggdGhlICIta2VybmVsIiBvcHRpb24pIHRoYXQgcmVseSBvbiB0aGUKPiBmYWN0IHRo
YXQgdGhlIGtlcm5lbCBlbnRyeSBwb2ludCBpcyBhbHdheXMgYXQgdGhlIGtlcm5lbCBsb2FkCj4g
YWRkcmVzcz8gIFRoZSBBUk02NCBoZWFkZXIgYW5kIEF0aXNoJ3Mgb3JpZ2luYWwgUklTQy1WIHBy
b3Bvc2FsCj4gYmFzZWQgb24gdGhlIEFSTTY0IGhlYWRlciBrZWVwIHRoZSBwcm9wZXJ0eSB0aGF0
IGp1bXBpbmcgdG8gdGhlCj4ga2VybmVsIGxvYWQgYWRkcmVzcyBhbHdheXMgd29ya3MsIHJlZ2Fy
ZGxlc3Mgb2Ygd2hhdCB0aGUKPiBwYXJ0aWN1bGFyIGhlYWRlciBsb29rcyBsaWtlIGFuZCB3aGlj
aCBwb3RlbnRpYWwgZnV0dXJlCj4gZXh0ZW5zaW9ucyBpdCBpbmNsdWRlcywgYnV0IHRoZSBwcm9w
b3NlZCBjaGFuZ2UgYWJvdmUgd291bGRuJ3QgZG8KPiB0aGF0Lgo+IAo+IEFsdGhvdWdoIEkgYWdy
ZWUgdGhhdCBoYXZpbmcgdG8gaW50ZWdyYXRlIHRoZSAiTVoiIHN0cmluZyBhcyBhbgo+IGluc3Ry
dWN0aW9uIGlzbid0IHBhcnRpY3VsYXJseSBuaWNlLCBJIGRvbid0IHRoaW5rIHRoYXQgdGhpcyBp
cyBhCj4gc3VmZmljaWVudCBqdXN0aWZpY2F0aW9uIGZvciBicmVha2luZyBjb21wYXRpYmlsaXR5
IHdpdGggcHJpb3IKPiBrZXJuZWwgcmVsZWFzZXMgYW5kL29yIGV4aXN0aW5nIGJvb3QgZmlybXdh
cmUuICBPbiBSSVNDLVYsIHRoZQo+ICJNWiIgc3RyaW5nIGlzIGEgY29tcHJlc3NlZCBsb2FkIGlt
bWVkaWF0ZSB0byB4MjAvczQsIGkuZS4gYW4KPiBpbnN0cnVjdGlvbiB0aGF0IHNob3VsZCBiZSAi
aGFybWxlc3MiIGFzIGZhciBhcyB0aGUga2VybmVsIGJvb3QKPiBmbG93IGlzIGNvbmNlcm5lZCBh
cyB0aGUgeDIwL3M0IHJlZ2lzdGVyIEFGQUlLIGRvZXNuJ3QgY29udGFpbiBhbnkKPiBpbmZvcm1h
dGlvbiB0aGF0IHRoZSBrZXJuZWwgd291bGQgdXNlLgo+IAo+IFJlZ2FyZHMsCj4gS2Fyc3Rlbgo+
IAoKWWVzLCB0aGF0IHdvdWxkIGJyZWFrIGV4aXN0aW5nIHN5c3RlbXMuIEJlc2lkZXMsIHRoZSBx
ZW11IC1rZXJuZWwgb3B0aW9uCnVzZXMgdGhlIHZtbGludXggZWxmIGZpbGUsIGFuZCBJIHRoaW5r
IGEgYmV0dGVyIHNvbHV0aW9uIGlzIG1ha2Ug4oCYbG9hZGVsZuKAmSB3b3JrLAphbmQgaW5jbHVk
ZSBhIHNlY29uZCBtZXRob2QgZm9yIEVGSS4KCih1bmZvcnR1bmF0ZWx5LCBJIGhhZCB0byBkcm9w
IHNvbWUgbGlzdHMgYXMgSeKAmW0gaGF2aW5nIHRyb3VibGUgc2VuZGluZyB0bwp0aGVtIHZpYSBn
bWFpbCwgc28gdGhlIENDIGxpc3Qgb24gbXkgcmVzcG9uc2UgaGFzIGJlZW4gbGltaXRlZCkKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtcmlzY3Yg
bWFpbGluZyBsaXN0CmxpbnV4LXJpc2N2QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yaXNjdgo=
